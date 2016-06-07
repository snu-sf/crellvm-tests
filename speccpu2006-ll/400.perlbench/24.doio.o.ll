; ModuleID = 'doio.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
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
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.xpv = type { i8*, i64, i64 }
%struct.xpvuv = type { i8*, i64, i64, i64 }
%struct.xpviv = type { i8*, i64, i64, i64 }
%struct.xpvnv = type { i8*, i64, i64, i64, double }
%struct.svop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.sv* }
%struct.xrv = type { %struct.sv* }

@PL_forkprocess = external global i32, align 4
@PL_op = external global %struct.op*, align 8
@PL_maxsysfd = external global i32, align 4
@PL_stderrgv = external global %struct.gv*, align 8
@.str = private unnamed_addr constant [50 x i8] c"Warning: unable to close filehandle %s properly.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"panic: sysopen with multiple args\00", align 1
@PL_tainting = external global i8, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sysopen\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Unknown open() mode '%.*s'\00", align 1
@PL_curcop = external global %struct.cop*, align 8
@PL_dowarn = external global i8, align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Missing command in piped open\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"piped open\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Can't open bidirectional pipe\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"More than one argument to '%c&' open\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"More than one argument to '>%c' open\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"More than one argument to '<%c' open\00", align 1
@PL_warn_nl = external constant [0 x i8], align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"Filehandle STD%s reopened as %s only for input\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"Filehandle STDIN reopened as %s only for output\00", align 1
@PL_statbuf = external global %struct.stat, align 8
@PL_fdpid = external global %struct.av*, align 8
@PL_argvoutgv = external global %struct.gv*, align 8
@.str.18 = private unnamed_addr constant [8 x i8] c"ARGVOUT\00", align 1
@PL_inplace = external global i8*, align 8
@PL_argvout_stack = external global %struct.av*, align 8
@PL_defoutgv = external global %struct.gv*, align 8
@PL_Sv = external global %struct.sv*, align 8
@PL_filemode = external global i32, align 4
@PL_oldname = external global i8*, align 8
@PL_lastfd = external global i32, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"inplace open\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"STDOUT\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"Can't do inplace edit: %s is not a regular file\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"Can't rename %s to %_: %s, skipping file\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"Can't remove %s: %s, skipping file\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"Can't do inplace edit on %s: %s\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Can't open %s: %s\00", align 1
@PL_argvgv = external global %struct.gv*, align 8
@PL_statusvalue = external global i32, align 4
@.str.27 = private unnamed_addr constant [5 x i8] c":raw\00", align 1
@PL_ofmt = external global i8*, align 8
@.str.28 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"Wide character in print\00", align 1
@PL_stack_sp = external global %struct.sv**, align 8
@PL_stack_max = external global %struct.sv**, align 8
@PL_statgv = external global %struct.gv*, align 8
@PL_statname = external global %struct.sv*, align 8
@PL_laststype = external global i32, align 4
@PL_statcache = external global %struct.stat, align 8
@PL_laststatval = external global i32, align 4
@PL_defgv = external global %struct.gv*, align 8
@.str.31 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"The stat preceding -l _ wasn't an lstat\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"Use of -l on filehandle %s\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"lstat\00", align 1
@PL_Argv = external global i8**, align 8
@.str.35 = private unnamed_addr constant [20 x i8] c"Can't exec \22%s\22: %s\00", align 1
@PL_Cmd = external global i8*, align 8
@PL_cshname = external global i8*, align 8
@PL_cshlen = external global i32, align 4
@.str.36 = private unnamed_addr constant [4 x i8] c" -c\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"csh\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"$&*(){}[]'\22;\5C|?<>~`\0A\00", align 1
@PL_sh_path = external global i8*, align 8
@.str.42 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@PL_tainted = external global i8, align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"chmod\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@PL_euid = external global i32, align 4
@PL_unsafe = external global i8, align 1
@PL_uid = external global i32, align 4
@PL_egid = external global i32, align 4
@PL_gid = external global i32, align 4
@.str.45 = private unnamed_addr constant [27 x i8] c" -cf 'set nonomatch; glob \00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"' 2>/dev/null |\00", align 1
@PL_last_in_gv = external global %struct.gv*, align 8

; Function Attrs: nounwind uwtable
define signext i8 @Perl_do_open(%struct.gv* %gv, i8* %name, i32 %len, i32 %as_raw, i32 %rawmode, i32 %rawperm, %struct._PerlIO** %supplied_fp) #0 {
entry:
  %gv.addr = alloca %struct.gv*, align 8
  %name.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %as_raw.addr = alloca i32, align 4
  %rawmode.addr = alloca i32, align 4
  %rawperm.addr = alloca i32, align 4
  %supplied_fp.addr = alloca %struct._PerlIO**, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %as_raw, i32* %as_raw.addr, align 4
  store i32 %rawmode, i32* %rawmode.addr, align 4
  store i32 %rawperm, i32* %rawperm.addr, align 4
  store %struct._PerlIO** %supplied_fp, %struct._PerlIO*** %supplied_fp.addr, align 8
  %0 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i32, i32* %len.addr, align 4
  %3 = load i32, i32* %as_raw.addr, align 4
  %4 = load i32, i32* %rawmode.addr, align 4
  %5 = load i32, i32* %rawperm.addr, align 4
  %6 = load %struct._PerlIO**, %struct._PerlIO*** %supplied_fp.addr, align 8
  %call = call signext i8 @Perl_do_openn(%struct.gv* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct._PerlIO** %6, %struct.sv** null, i32 0)
  ret i8 %call
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_do_openn(%struct.gv* %gv, i8* %name, i32 %len, i32 %as_raw, i32 %rawmode, i32 %rawperm, %struct._PerlIO** %supplied_fp, %struct.sv** %svp, i32 %num_svs) #0 {
entry:
  %retval = alloca i8, align 1
  %gv.addr = alloca %struct.gv*, align 8
  %name.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %as_raw.addr = alloca i32, align 4
  %rawmode.addr = alloca i32, align 4
  %rawperm.addr = alloca i32, align 4
  %supplied_fp.addr = alloca %struct._PerlIO**, align 8
  %svp.addr = alloca %struct.sv**, align 8
  %num_svs.addr = alloca i32, align 4
  %io = alloca %struct.io*, align 8
  %saveifp = alloca %struct._PerlIO**, align 8
  %saveofp = alloca %struct._PerlIO**, align 8
  %savefd = alloca i32, align 4
  %savetype = alloca i8, align 1
  %writing = alloca i32, align 4
  %fp = alloca %struct._PerlIO**, align 8
  %fd = alloca i32, align 4
  %result = alloca i32, align 4
  %was_fdopen = alloca i8, align 1
  %in_raw = alloca i8, align 1
  %in_crlf = alloca i8, align 1
  %out_raw = alloca i8, align 1
  %out_crlf = alloca i8, align 1
  %type = alloca i8*, align 8
  %mode = alloca [8 x i8], align 1
  %namesv = alloca %struct.sv*, align 8
  %flags = alloca i8, align 1
  %ix = alloca i64, align 8
  %appendtrunc = alloca i32, align 4
  %modifyingmode = alloca i32, align 4
  %ismodifying = alloca i32, align 4
  %oname = alloca i8*, align 8
  %olen = alloca i64, align 8
  %tend = alloca i8*, align 8
  %dodup = alloca i32, align 4
  %that_fp = alloca %struct._PerlIO**, align 8
  %thatio = alloca %struct.io*, align 8
  %thatgv = alloca %struct.gv*, align 8
  %pid = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %ofd = alloca i32, align 4
  %dupfd = alloca i32, align 4
  %coe = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %s = alloca i8*, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %as_raw, i32* %as_raw.addr, align 4
  store i32 %rawmode, i32* %rawmode.addr, align 4
  store i32 %rawperm, i32* %rawperm.addr, align 4
  store %struct._PerlIO** %supplied_fp, %struct._PerlIO*** %supplied_fp.addr, align 8
  store %struct.sv** %svp, %struct.sv*** %svp.addr, align 8
  store i32 %num_svs, i32* %num_svs.addr, align 4
  %0 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool = icmp ne %struct.gv* %0, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %2 = bitcast %struct.gv* %1 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags, align 4
  %and = and i32 %3, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true.1, label %cond.false

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %4 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %4, i32 0, i32 0
  %5 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %5, i32 0, i32 7
  %6 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool2 = icmp ne %struct.gp* %6, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.1
  %7 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any3 = getelementptr inbounds %struct.gv, %struct.gv* %7, i32 0, i32 0
  %8 = load %struct.xpvgv*, %struct.xpvgv** %sv_any3, align 8
  %xgv_gp4 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %8, i32 0, i32 7
  %9 = load %struct.gp*, %struct.gp** %xgv_gp4, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %9, i32 0, i32 2
  %10 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool5 = icmp ne %struct.io* %10, null
  br i1 %tobool5, label %cond.true.6, label %cond.false.10

cond.false:                                       ; preds = %land.lhs.true.1, %land.lhs.true, %entry
  br i1 false, label %cond.true.6, label %cond.false.10

cond.true.6:                                      ; preds = %cond.false, %cond.true
  %11 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any7 = getelementptr inbounds %struct.gv, %struct.gv* %11, i32 0, i32 0
  %12 = load %struct.xpvgv*, %struct.xpvgv** %sv_any7, align 8
  %xgv_gp8 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %12, i32 0, i32 7
  %13 = load %struct.gp*, %struct.gp** %xgv_gp8, align 8
  %gp_io9 = getelementptr inbounds %struct.gp, %struct.gp* %13, i32 0, i32 2
  %14 = load %struct.io*, %struct.io** %gp_io9, align 8
  br label %cond.end

cond.false.10:                                    ; preds = %cond.false, %cond.true
  %15 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %call = call %struct.gv* @Perl_gv_IOadd(%struct.gv* %15)
  %sv_any11 = getelementptr inbounds %struct.gv, %struct.gv* %call, i32 0, i32 0
  %16 = load %struct.xpvgv*, %struct.xpvgv** %sv_any11, align 8
  %xgv_gp12 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %16, i32 0, i32 7
  %17 = load %struct.gp*, %struct.gp** %xgv_gp12, align 8
  %gp_io13 = getelementptr inbounds %struct.gp, %struct.gp* %17, i32 0, i32 2
  %18 = load %struct.io*, %struct.io** %gp_io13, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.10, %cond.true.6
  %cond = phi %struct.io* [ %14, %cond.true.6 ], [ %18, %cond.false.10 ]
  store %struct.io* %cond, %struct.io** %io, align 8
  store %struct._PerlIO** null, %struct._PerlIO*** %saveifp, align 8
  store %struct._PerlIO** null, %struct._PerlIO*** %saveofp, align 8
  store i32 -1, i32* %savefd, align 4
  store i8 32, i8* %savetype, align 1
  store i32 0, i32* %writing, align 4
  store i8 0, i8* %was_fdopen, align 1
  store i8 0, i8* %in_raw, align 1
  store i8 0, i8* %in_crlf, align 1
  store i8 0, i8* %out_raw, align 1
  store i8 0, i8* %out_crlf, align 1
  store i8* null, i8** %type, align 8
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %arraydecay, i8 0, i64 8, i32 1, i1 false)
  store i32 1, i32* @PL_forkprocess, align 4
  %19 = load %struct.op*, %struct.op** @PL_op, align 8
  %tobool14 = icmp ne %struct.op* %19, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.end

land.lhs.true.15:                                 ; preds = %cond.end
  %20 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %20, i32 0, i32 4
  %21 = load i16, i16* %op_type, align 2
  %conv = zext i16 %21 to i32
  %cmp16 = icmp eq i32 %conv, 191
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.15
  %22 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %22, i32 0, i32 7
  %23 = load i8, i8* %op_private, align 1
  store i8 %23, i8* %flags, align 1
  %24 = load i8, i8* %flags, align 1
  %conv18 = zext i8 %24 to i32
  %and19 = and i32 %conv18, 16
  %conv20 = trunc i32 %and19 to i8
  store i8 %conv20, i8* %in_raw, align 1
  %25 = load i8, i8* %flags, align 1
  %conv21 = zext i8 %25 to i32
  %and22 = and i32 %conv21, 32
  %conv23 = trunc i32 %and22 to i8
  store i8 %conv23, i8* %in_crlf, align 1
  %26 = load i8, i8* %flags, align 1
  %conv24 = zext i8 %26 to i32
  %and25 = and i32 %conv24, 64
  %conv26 = trunc i32 %and25 to i8
  store i8 %conv26, i8* %out_raw, align 1
  %27 = load i8, i8* %flags, align 1
  %conv27 = zext i8 %27 to i32
  %and28 = and i32 %conv27, 128
  %conv29 = trunc i32 %and28 to i8
  store i8 %conv29, i8* %out_crlf, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.15, %cond.end
  %28 = load %struct.io*, %struct.io** %io, align 8
  %sv_any30 = getelementptr inbounds %struct.io, %struct.io* %28, i32 0, i32 0
  %29 = load %struct.xpvio*, %struct.xpvio** %sv_any30, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %29, i32 0, i32 7
  %30 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  %tobool31 = icmp ne %struct._PerlIO** %30, null
  br i1 %tobool31, label %if.then.32, label %if.end.144

if.then.32:                                       ; preds = %if.end
  %31 = load %struct.io*, %struct.io** %io, align 8
  %sv_any33 = getelementptr inbounds %struct.io, %struct.io* %31, i32 0, i32 0
  %32 = load %struct.xpvio*, %struct.xpvio** %sv_any33, align 8
  %xio_ifp34 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %32, i32 0, i32 7
  %33 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp34, align 8
  %call35 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %33)
  store i32 %call35, i32* %fd, align 4
  %34 = load %struct.io*, %struct.io** %io, align 8
  %sv_any36 = getelementptr inbounds %struct.io, %struct.io* %34, i32 0, i32 0
  %35 = load %struct.xpvio*, %struct.xpvio** %sv_any36, align 8
  %xio_type = getelementptr inbounds %struct.xpvio, %struct.xpvio* %35, i32 0, i32 21
  %36 = load i8, i8* %xio_type, align 1
  %conv37 = sext i8 %36 to i32
  %cmp38 = icmp eq i32 %conv37, 45
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %if.then.32
  store i32 0, i32* %result, align 4
  br label %if.end.92

if.else:                                          ; preds = %if.then.32
  %37 = load i32, i32* %fd, align 4
  %cmp41 = icmp sge i32 %37, 0
  br i1 %cmp41, label %land.lhs.true.43, label %if.else.52

land.lhs.true.43:                                 ; preds = %if.else
  %38 = load i32, i32* %fd, align 4
  %39 = load i32, i32* @PL_maxsysfd, align 4
  %cmp44 = icmp sle i32 %38, %39
  br i1 %cmp44, label %if.then.46, label %if.else.52

if.then.46:                                       ; preds = %land.lhs.true.43
  %40 = load %struct.io*, %struct.io** %io, align 8
  %sv_any47 = getelementptr inbounds %struct.io, %struct.io* %40, i32 0, i32 0
  %41 = load %struct.xpvio*, %struct.xpvio** %sv_any47, align 8
  %xio_ifp48 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %41, i32 0, i32 7
  %42 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp48, align 8
  store %struct._PerlIO** %42, %struct._PerlIO*** %saveifp, align 8
  %43 = load %struct.io*, %struct.io** %io, align 8
  %sv_any49 = getelementptr inbounds %struct.io, %struct.io* %43, i32 0, i32 0
  %44 = load %struct.xpvio*, %struct.xpvio** %sv_any49, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %44, i32 0, i32 8
  %45 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  store %struct._PerlIO** %45, %struct._PerlIO*** %saveofp, align 8
  %46 = load %struct.io*, %struct.io** %io, align 8
  %sv_any50 = getelementptr inbounds %struct.io, %struct.io* %46, i32 0, i32 0
  %47 = load %struct.xpvio*, %struct.xpvio** %sv_any50, align 8
  %xio_type51 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %47, i32 0, i32 21
  %48 = load i8, i8* %xio_type51, align 1
  store i8 %48, i8* %savetype, align 1
  %49 = load i32, i32* %fd, align 4
  store i32 %49, i32* %savefd, align 4
  store i32 0, i32* %result, align 4
  br label %if.end.91

if.else.52:                                       ; preds = %land.lhs.true.43, %if.else
  %50 = load %struct.io*, %struct.io** %io, align 8
  %sv_any53 = getelementptr inbounds %struct.io, %struct.io* %50, i32 0, i32 0
  %51 = load %struct.xpvio*, %struct.xpvio** %sv_any53, align 8
  %xio_type54 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %51, i32 0, i32 21
  %52 = load i8, i8* %xio_type54, align 1
  %conv55 = sext i8 %52 to i32
  %cmp56 = icmp eq i32 %conv55, 124
  br i1 %cmp56, label %if.then.58, label %if.else.62

if.then.58:                                       ; preds = %if.else.52
  %53 = load %struct.io*, %struct.io** %io, align 8
  %sv_any59 = getelementptr inbounds %struct.io, %struct.io* %53, i32 0, i32 0
  %54 = load %struct.xpvio*, %struct.xpvio** %sv_any59, align 8
  %xio_ifp60 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %54, i32 0, i32 7
  %55 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp60, align 8
  %call61 = call i32 @Perl_my_pclose(%struct._PerlIO** %55)
  store i32 %call61, i32* %result, align 4
  br label %if.end.90

if.else.62:                                       ; preds = %if.else.52
  %56 = load %struct.io*, %struct.io** %io, align 8
  %sv_any63 = getelementptr inbounds %struct.io, %struct.io* %56, i32 0, i32 0
  %57 = load %struct.xpvio*, %struct.xpvio** %sv_any63, align 8
  %xio_ifp64 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %57, i32 0, i32 7
  %58 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp64, align 8
  %59 = load %struct.io*, %struct.io** %io, align 8
  %sv_any65 = getelementptr inbounds %struct.io, %struct.io* %59, i32 0, i32 0
  %60 = load %struct.xpvio*, %struct.xpvio** %sv_any65, align 8
  %xio_ofp66 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %60, i32 0, i32 8
  %61 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp66, align 8
  %cmp67 = icmp ne %struct._PerlIO** %58, %61
  br i1 %cmp67, label %if.then.69, label %if.else.85

if.then.69:                                       ; preds = %if.else.62
  %62 = load %struct.io*, %struct.io** %io, align 8
  %sv_any70 = getelementptr inbounds %struct.io, %struct.io* %62, i32 0, i32 0
  %63 = load %struct.xpvio*, %struct.xpvio** %sv_any70, align 8
  %xio_ofp71 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %63, i32 0, i32 8
  %64 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp71, align 8
  %tobool72 = icmp ne %struct._PerlIO** %64, null
  br i1 %tobool72, label %if.then.73, label %if.else.80

if.then.73:                                       ; preds = %if.then.69
  %65 = load %struct.io*, %struct.io** %io, align 8
  %sv_any74 = getelementptr inbounds %struct.io, %struct.io* %65, i32 0, i32 0
  %66 = load %struct.xpvio*, %struct.xpvio** %sv_any74, align 8
  %xio_ofp75 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %66, i32 0, i32 8
  %67 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp75, align 8
  %call76 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %67)
  store i32 %call76, i32* %result, align 4
  %68 = load %struct.io*, %struct.io** %io, align 8
  %sv_any77 = getelementptr inbounds %struct.io, %struct.io* %68, i32 0, i32 0
  %69 = load %struct.xpvio*, %struct.xpvio** %sv_any77, align 8
  %xio_ifp78 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %69, i32 0, i32 7
  %70 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp78, align 8
  %call79 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %70)
  br label %if.end.84

if.else.80:                                       ; preds = %if.then.69
  %71 = load %struct.io*, %struct.io** %io, align 8
  %sv_any81 = getelementptr inbounds %struct.io, %struct.io* %71, i32 0, i32 0
  %72 = load %struct.xpvio*, %struct.xpvio** %sv_any81, align 8
  %xio_ifp82 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %72, i32 0, i32 7
  %73 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp82, align 8
  %call83 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %73)
  store i32 %call83, i32* %result, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.80, %if.then.73
  br label %if.end.89

if.else.85:                                       ; preds = %if.else.62
  %74 = load %struct.io*, %struct.io** %io, align 8
  %sv_any86 = getelementptr inbounds %struct.io, %struct.io* %74, i32 0, i32 0
  %75 = load %struct.xpvio*, %struct.xpvio** %sv_any86, align 8
  %xio_ifp87 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %75, i32 0, i32 7
  %76 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp87, align 8
  %call88 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %76)
  store i32 %call88, i32* %result, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.85, %if.end.84
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.58
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.46
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.40
  %77 = load i32, i32* %result, align 4
  %cmp93 = icmp eq i32 %77, -1
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.139

land.lhs.true.95:                                 ; preds = %if.end.92
  %78 = load i32, i32* %fd, align 4
  %79 = load i32, i32* @PL_maxsysfd, align 4
  %cmp96 = icmp sgt i32 %78, %79
  br i1 %cmp96, label %if.then.98, label %if.end.139

if.then.98:                                       ; preds = %land.lhs.true.95
  %80 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool99 = icmp ne %struct.gv* %80, null
  br i1 %tobool99, label %land.lhs.true.100, label %cond.false.123

land.lhs.true.100:                                ; preds = %if.then.98
  %81 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags101 = getelementptr inbounds %struct.gv, %struct.gv* %81, i32 0, i32 2
  %82 = load i32, i32* %sv_flags101, align 4
  %and102 = and i32 %82, 255
  %cmp103 = icmp eq i32 %and102, 13
  br i1 %cmp103, label %land.lhs.true.105, label %cond.false.123

land.lhs.true.105:                                ; preds = %land.lhs.true.100
  %83 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any106 = getelementptr inbounds %struct.gv, %struct.gv* %83, i32 0, i32 0
  %84 = load %struct.xpvgv*, %struct.xpvgv** %sv_any106, align 8
  %xgv_gp107 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %84, i32 0, i32 7
  %85 = load %struct.gp*, %struct.gp** %xgv_gp107, align 8
  %gp_io108 = getelementptr inbounds %struct.gp, %struct.gp* %85, i32 0, i32 2
  %86 = load %struct.io*, %struct.io** %gp_io108, align 8
  %tobool109 = icmp ne %struct.io* %86, null
  br i1 %tobool109, label %land.lhs.true.110, label %cond.false.123

land.lhs.true.110:                                ; preds = %land.lhs.true.105
  %87 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any111 = getelementptr inbounds %struct.gv, %struct.gv* %87, i32 0, i32 0
  %88 = load %struct.xpvgv*, %struct.xpvgv** %sv_any111, align 8
  %xgv_gp112 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %88, i32 0, i32 7
  %89 = load %struct.gp*, %struct.gp** %xgv_gp112, align 8
  %gp_io113 = getelementptr inbounds %struct.gp, %struct.gp* %89, i32 0, i32 2
  %90 = load %struct.io*, %struct.io** %gp_io113, align 8
  %sv_any114 = getelementptr inbounds %struct.io, %struct.io* %90, i32 0, i32 0
  %91 = load %struct.xpvio*, %struct.xpvio** %sv_any114, align 8
  %xio_ofp115 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %91, i32 0, i32 8
  %92 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp115, align 8
  %tobool116 = icmp ne %struct._PerlIO** %92, null
  br i1 %tobool116, label %cond.true.117, label %cond.false.123

cond.true.117:                                    ; preds = %land.lhs.true.110
  %93 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any118 = getelementptr inbounds %struct.gv, %struct.gv* %93, i32 0, i32 0
  %94 = load %struct.xpvgv*, %struct.xpvgv** %sv_any118, align 8
  %xgv_gp119 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %94, i32 0, i32 7
  %95 = load %struct.gp*, %struct.gp** %xgv_gp119, align 8
  %gp_io120 = getelementptr inbounds %struct.gp, %struct.gp* %95, i32 0, i32 2
  %96 = load %struct.io*, %struct.io** %gp_io120, align 8
  %sv_any121 = getelementptr inbounds %struct.io, %struct.io* %96, i32 0, i32 0
  %97 = load %struct.xpvio*, %struct.xpvio** %sv_any121, align 8
  %xio_ofp122 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %97, i32 0, i32 8
  %98 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp122, align 8
  br label %cond.end.125

cond.false.123:                                   ; preds = %land.lhs.true.110, %land.lhs.true.105, %land.lhs.true.100, %if.then.98
  %call124 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.123, %cond.true.117
  %cond126 = phi %struct._PerlIO** [ %98, %cond.true.117 ], [ %call124, %cond.false.123 ]
  %99 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any127 = getelementptr inbounds %struct.gv, %struct.gv* %99, i32 0, i32 0
  %100 = load %struct.xpvgv*, %struct.xpvgv** %sv_any127, align 8
  %xgv_gp128 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %100, i32 0, i32 7
  %101 = load %struct.gp*, %struct.gp** %xgv_gp128, align 8
  %gp_egv = getelementptr inbounds %struct.gp, %struct.gp* %101, i32 0, i32 6
  %102 = load %struct.gv*, %struct.gv** %gp_egv, align 8
  %tobool129 = icmp ne %struct.gv* %102, null
  br i1 %tobool129, label %cond.true.130, label %cond.false.134

cond.true.130:                                    ; preds = %cond.end.125
  %103 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any131 = getelementptr inbounds %struct.gv, %struct.gv* %103, i32 0, i32 0
  %104 = load %struct.xpvgv*, %struct.xpvgv** %sv_any131, align 8
  %xgv_gp132 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %104, i32 0, i32 7
  %105 = load %struct.gp*, %struct.gp** %xgv_gp132, align 8
  %gp_egv133 = getelementptr inbounds %struct.gp, %struct.gp* %105, i32 0, i32 6
  %106 = load %struct.gv*, %struct.gv** %gp_egv133, align 8
  br label %cond.end.135

cond.false.134:                                   ; preds = %cond.end.125
  %107 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.134, %cond.true.130
  %cond136 = phi %struct.gv* [ %106, %cond.true.130 ], [ %107, %cond.false.134 ]
  %sv_any137 = getelementptr inbounds %struct.gv, %struct.gv* %cond136, i32 0, i32 0
  %108 = load %struct.xpvgv*, %struct.xpvgv** %sv_any137, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %108, i32 0, i32 8
  %109 = load i8*, i8** %xgv_name, align 8
  %call138 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond126, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i8* %109)
  br label %if.end.139

if.end.139:                                       ; preds = %cond.end.135, %land.lhs.true.95, %if.end.92
  %110 = load %struct.io*, %struct.io** %io, align 8
  %sv_any140 = getelementptr inbounds %struct.io, %struct.io* %110, i32 0, i32 0
  %111 = load %struct.xpvio*, %struct.xpvio** %sv_any140, align 8
  %xio_ifp141 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %111, i32 0, i32 7
  store %struct._PerlIO** null, %struct._PerlIO*** %xio_ifp141, align 8
  %112 = load %struct.io*, %struct.io** %io, align 8
  %sv_any142 = getelementptr inbounds %struct.io, %struct.io* %112, i32 0, i32 0
  %113 = load %struct.xpvio*, %struct.xpvio** %sv_any142, align 8
  %xio_ofp143 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %113, i32 0, i32 8
  store %struct._PerlIO** null, %struct._PerlIO*** %xio_ofp143, align 8
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.139, %if.end
  %114 = load i32, i32* %as_raw.addr, align 4
  %tobool145 = icmp ne i32 %114, 0
  br i1 %tobool145, label %if.then.146, label %if.else.180

if.then.146:                                      ; preds = %if.end.144
  store i64 0, i64* %ix, align 8
  store i32 1536, i32* %appendtrunc, align 4
  %115 = load i32, i32* %appendtrunc, align 4
  %or = or i32 67, %115
  store i32 %or, i32* %modifyingmode, align 4
  %116 = load i32, i32* %num_svs.addr, align 4
  %cmp147 = icmp ne i32 %116, 0
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.then.146
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.149, %if.then.146
  %117 = load i32, i32* %rawmode.addr, align 4
  %118 = load i32, i32* %modifyingmode, align 4
  %and151 = and i32 %117, %118
  store i32 %and151, i32* %ismodifying, align 4
  %tobool152 = icmp ne i32 %and151, 0
  br i1 %tobool152, label %if.then.153, label %if.end.169

if.then.153:                                      ; preds = %if.end.150
  %119 = load i32, i32* %ismodifying, align 4
  %and154 = and i32 %119, 1
  %cmp155 = icmp eq i32 %and154, 1
  br i1 %cmp155, label %if.then.164, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.153
  %120 = load i32, i32* %ismodifying, align 4
  %and157 = and i32 %120, 2
  %cmp158 = icmp eq i32 %and157, 2
  br i1 %cmp158, label %if.then.164, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %lor.lhs.false
  %121 = load i32, i32* %ismodifying, align 4
  %122 = load i32, i32* %appendtrunc, align 4
  %or161 = or i32 64, %122
  %and162 = and i32 %121, %or161
  %tobool163 = icmp ne i32 %and162, 0
  br i1 %tobool163, label %if.then.164, label %if.end.168

if.then.164:                                      ; preds = %lor.lhs.false.160, %lor.lhs.false, %if.then.153
  %123 = load i8, i8* @PL_tainting, align 1
  %tobool165 = icmp ne i8 %123, 0
  br i1 %tobool165, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.then.164
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.166, %if.then.164
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %lor.lhs.false.160
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.end.150
  %124 = load i64, i64* %ix, align 8
  %inc = add i64 %124, 1
  store i64 %inc, i64* %ix, align 8
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i64 %124
  store i8 35, i8* %arrayidx, align 1
  %125 = load i32, i32* %rawmode.addr, align 4
  %126 = load i64, i64* %ix, align 8
  %arrayidx170 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i64 %126
  %call171 = call i32 @PerlIO_intmode2str(i32 %125, i8* %arrayidx170, i32* %writing)
  %conv172 = trunc i32 %call171 to i8
  %127 = load %struct.io*, %struct.io** %io, align 8
  %sv_any173 = getelementptr inbounds %struct.io, %struct.io* %127, i32 0, i32 0
  %128 = load %struct.xpvio*, %struct.xpvio** %sv_any173, align 8
  %xio_type174 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %128, i32 0, i32 21
  store i8 %conv172, i8* %xio_type174, align 1
  %129 = load i8*, i8** %name.addr, align 8
  %130 = load i8*, i8** %name.addr, align 8
  %call175 = call i64 @strlen(i8* %130)
  %call176 = call %struct.sv* @Perl_newSVpvn(i8* %129, i64 %call175)
  %call177 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call176)
  store %struct.sv* %call177, %struct.sv** %namesv, align 8
  store i32 1, i32* %num_svs.addr, align 4
  store %struct.sv** %namesv, %struct.sv*** %svp.addr, align 8
  store i8* null, i8** %type, align 8
  %131 = load i8*, i8** %type, align 8
  %arraydecay178 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %132 = load i32, i32* %rawmode.addr, align 4
  %133 = load i32, i32* %rawperm.addr, align 4
  %134 = load i32, i32* %num_svs.addr, align 4
  %135 = load %struct.sv**, %struct.sv*** %svp.addr, align 8
  %call179 = call %struct._PerlIO** @PerlIO_openn(i8* %131, i8* %arraydecay178, i32 -1, i32 %132, i32 %133, %struct._PerlIO** null, i32 %134, %struct.sv** %135)
  store %struct._PerlIO** %call179, %struct._PerlIO*** %fp, align 8
  br label %if.end.1174

if.else.180:                                      ; preds = %if.end.144
  %136 = load i8*, i8** %name.addr, align 8
  store i8* %136, i8** %oname, align 8
  %137 = load i32, i32* %len.addr, align 4
  %conv181 = sext i32 %137 to i64
  store i64 %conv181, i64* %olen, align 8
  store i32 0, i32* %dodup, align 4
  store %struct._PerlIO** null, %struct._PerlIO*** %that_fp, align 8
  %138 = load i8*, i8** %name.addr, align 8
  %139 = load i32, i32* %len.addr, align 4
  %call182 = call i8* @Perl_savepvn(i8* %138, i32 %139)
  store i8* %call182, i8** %type, align 8
  %140 = load i8*, i8** %type, align 8
  %141 = load i32, i32* %len.addr, align 4
  %idx.ext = sext i32 %141 to i64
  %add.ptr = getelementptr inbounds i8, i8* %140, i64 %idx.ext
  store i8* %add.ptr, i8** %tend, align 8
  %142 = load i8*, i8** %type, align 8
  call void @Perl_save_freepv(i8* %142)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.180
  %143 = load i8*, i8** %type, align 8
  %144 = load i8, i8* %143, align 1
  %conv183 = sext i8 %144 to i32
  %cmp184 = icmp eq i32 %conv183, 32
  br i1 %cmp184, label %lor.end, label %lor.lhs.false.186

lor.lhs.false.186:                                ; preds = %for.cond
  %145 = load i8*, i8** %type, align 8
  %146 = load i8, i8* %145, align 1
  %conv187 = sext i8 %146 to i32
  %cmp188 = icmp eq i32 %conv187, 9
  br i1 %cmp188, label %lor.end, label %lor.lhs.false.190

lor.lhs.false.190:                                ; preds = %lor.lhs.false.186
  %147 = load i8*, i8** %type, align 8
  %148 = load i8, i8* %147, align 1
  %conv191 = sext i8 %148 to i32
  %cmp192 = icmp eq i32 %conv191, 10
  br i1 %cmp192, label %lor.end, label %lor.lhs.false.194

lor.lhs.false.194:                                ; preds = %lor.lhs.false.190
  %149 = load i8*, i8** %type, align 8
  %150 = load i8, i8* %149, align 1
  %conv195 = sext i8 %150 to i32
  %cmp196 = icmp eq i32 %conv195, 13
  br i1 %cmp196, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.194
  %151 = load i8*, i8** %type, align 8
  %152 = load i8, i8* %151, align 1
  %conv198 = sext i8 %152 to i32
  %cmp199 = icmp eq i32 %conv198, 12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.194, %lor.lhs.false.190, %lor.lhs.false.186, %for.cond
  %153 = phi i1 [ true, %lor.lhs.false.194 ], [ true, %lor.lhs.false.190 ], [ true, %lor.lhs.false.186 ], [ true, %for.cond ], [ %cmp199, %lor.rhs ]
  br i1 %153, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %154 = load i8*, i8** %type, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %incdec.ptr, i8** %type, align 8
  br label %for.cond

for.end:                                          ; preds = %lor.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %155 = load i8*, i8** %tend, align 8
  %156 = load i8*, i8** %type, align 8
  %cmp201 = icmp ugt i8* %155, %156
  br i1 %cmp201, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %157 = load i8*, i8** %tend, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %157, i64 -1
  %158 = load i8, i8* %arrayidx203, align 1
  %conv204 = sext i8 %158 to i32
  %cmp205 = icmp eq i32 %conv204, 32
  br i1 %cmp205, label %lor.end.227, label %lor.lhs.false.207

lor.lhs.false.207:                                ; preds = %land.rhs
  %159 = load i8*, i8** %tend, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %159, i64 -1
  %160 = load i8, i8* %arrayidx208, align 1
  %conv209 = sext i8 %160 to i32
  %cmp210 = icmp eq i32 %conv209, 9
  br i1 %cmp210, label %lor.end.227, label %lor.lhs.false.212

lor.lhs.false.212:                                ; preds = %lor.lhs.false.207
  %161 = load i8*, i8** %tend, align 8
  %arrayidx213 = getelementptr inbounds i8, i8* %161, i64 -1
  %162 = load i8, i8* %arrayidx213, align 1
  %conv214 = sext i8 %162 to i32
  %cmp215 = icmp eq i32 %conv214, 10
  br i1 %cmp215, label %lor.end.227, label %lor.lhs.false.217

lor.lhs.false.217:                                ; preds = %lor.lhs.false.212
  %163 = load i8*, i8** %tend, align 8
  %arrayidx218 = getelementptr inbounds i8, i8* %163, i64 -1
  %164 = load i8, i8* %arrayidx218, align 1
  %conv219 = sext i8 %164 to i32
  %cmp220 = icmp eq i32 %conv219, 13
  br i1 %cmp220, label %lor.end.227, label %lor.rhs.222

lor.rhs.222:                                      ; preds = %lor.lhs.false.217
  %165 = load i8*, i8** %tend, align 8
  %arrayidx223 = getelementptr inbounds i8, i8* %165, i64 -1
  %166 = load i8, i8* %arrayidx223, align 1
  %conv224 = sext i8 %166 to i32
  %cmp225 = icmp eq i32 %conv224, 12
  br label %lor.end.227

lor.end.227:                                      ; preds = %lor.rhs.222, %lor.lhs.false.217, %lor.lhs.false.212, %lor.lhs.false.207, %land.rhs
  %167 = phi i1 [ true, %lor.lhs.false.217 ], [ true, %lor.lhs.false.212 ], [ true, %lor.lhs.false.207 ], [ true, %land.rhs ], [ %cmp225, %lor.rhs.222 ]
  br label %land.end

land.end:                                         ; preds = %lor.end.227, %while.cond
  %168 = phi i1 [ false, %while.cond ], [ %167, %lor.end.227 ]
  br i1 %168, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %169 = load i8*, i8** %tend, align 8
  %incdec.ptr228 = getelementptr inbounds i8, i8* %169, i32 -1
  store i8* %incdec.ptr228, i8** %tend, align 8
  store i8 0, i8* %incdec.ptr228, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %170 = load i32, i32* %num_svs.addr, align 4
  %tobool229 = icmp ne i32 %170, 0
  br i1 %tobool229, label %if.then.230, label %if.else.240

if.then.230:                                      ; preds = %while.end
  %171 = load %struct.sv**, %struct.sv*** %svp.addr, align 8
  %172 = load %struct.sv*, %struct.sv** %171, align 8
  %sv_flags231 = getelementptr inbounds %struct.sv, %struct.sv* %172, i32 0, i32 2
  %173 = load i32, i32* %sv_flags231, align 4
  %and232 = and i32 %173, 118423552
  %tobool233 = icmp ne i32 %and232, 0
  br i1 %tobool233, label %cond.true.234, label %cond.false.236

cond.true.234:                                    ; preds = %if.then.230
  %174 = load %struct.sv**, %struct.sv*** %svp.addr, align 8
  %175 = load %struct.sv*, %struct.sv** %174, align 8
  %call235 = call i8* @Perl_savesvpv(%struct.sv* %175)
  br label %cond.end.238

cond.false.236:                                   ; preds = %if.then.230
  %call237 = call i8* @Perl_savepvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i32 0)
  br label %cond.end.238

cond.end.238:                                     ; preds = %cond.false.236, %cond.true.234
  %cond239 = phi i8* [ %call235, %cond.true.234 ], [ %call237, %cond.false.236 ]
  store i8* %cond239, i8** %name.addr, align 8
  %176 = load i8*, i8** %name.addr, align 8
  call void @Perl_save_freepv(i8* %176)
  br label %if.end.242

if.else.240:                                      ; preds = %while.end
  %177 = load i8*, i8** %type, align 8
  store i8* %177, i8** %name.addr, align 8
  %178 = load i8*, i8** %tend, align 8
  %179 = load i8*, i8** %type, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %178 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %179 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv241 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv241, i32* %len.addr, align 4
  br label %if.end.242

if.end.242:                                       ; preds = %if.else.240, %cond.end.238
  %180 = load i8*, i8** %type, align 8
  %181 = load i8, i8* %180, align 1
  %182 = load %struct.io*, %struct.io** %io, align 8
  %sv_any243 = getelementptr inbounds %struct.io, %struct.io* %182, i32 0, i32 0
  %183 = load %struct.xpvio*, %struct.xpvio** %sv_any243, align 8
  %xio_type244 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %183, i32 0, i32 21
  store i8 %181, i8* %xio_type244, align 1
  %184 = load i8*, i8** %type, align 8
  %185 = load i8, i8* %184, align 1
  %conv245 = sext i8 %185 to i32
  %cmp246 = icmp eq i32 %conv245, 43
  br i1 %cmp246, label %land.lhs.true.248, label %if.end.275

land.lhs.true.248:                                ; preds = %if.end.242
  %186 = load i8*, i8** %type, align 8
  %add.ptr249 = getelementptr inbounds i8, i8* %186, i64 1
  %187 = load i8, i8* %add.ptr249, align 1
  %conv250 = sext i8 %187 to i32
  %cmp251 = icmp eq i32 %conv250, 60
  br i1 %cmp251, label %land.lhs.true.258, label %lor.lhs.false.253

lor.lhs.false.253:                                ; preds = %land.lhs.true.248
  %188 = load i8*, i8** %type, align 8
  %add.ptr254 = getelementptr inbounds i8, i8* %188, i64 1
  %189 = load i8, i8* %add.ptr254, align 1
  %conv255 = sext i8 %189 to i32
  %cmp256 = icmp eq i32 %conv255, 62
  br i1 %cmp256, label %land.lhs.true.258, label %if.end.275

land.lhs.true.258:                                ; preds = %lor.lhs.false.253, %land.lhs.true.248
  %190 = load i32, i32* %num_svs.addr, align 4
  %tobool259 = icmp ne i32 %190, 0
  br i1 %tobool259, label %lor.lhs.false.260, label %if.then.269

lor.lhs.false.260:                                ; preds = %land.lhs.true.258
  %191 = load i8*, i8** %tend, align 8
  %192 = load i8*, i8** %type, align 8
  %add.ptr261 = getelementptr inbounds i8, i8* %192, i64 1
  %cmp262 = icmp ugt i8* %191, %add.ptr261
  br i1 %cmp262, label %land.lhs.true.264, label %if.end.275

land.lhs.true.264:                                ; preds = %lor.lhs.false.260
  %193 = load i8*, i8** %tend, align 8
  %arrayidx265 = getelementptr inbounds i8, i8* %193, i64 -1
  %194 = load i8, i8* %arrayidx265, align 1
  %conv266 = sext i8 %194 to i32
  %cmp267 = icmp ne i32 %conv266, 124
  br i1 %cmp267, label %if.then.269, label %if.end.275

if.then.269:                                      ; preds = %land.lhs.true.264, %land.lhs.true.258
  %195 = load i8, i8* @PL_tainting, align 1
  %tobool270 = icmp ne i8 %195, 0
  br i1 %tobool270, label %if.then.271, label %if.end.272

if.then.271:                                      ; preds = %if.then.269
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.271, %if.then.269
  %196 = load i8*, i8** %type, align 8
  %incdec.ptr273 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %incdec.ptr273, i8** %type, align 8
  %197 = load i8, i8* %196, align 1
  %arrayidx274 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i64 1
  store i8 %197, i8* %arrayidx274, align 1
  store i32 1, i32* %writing, align 4
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.272, %land.lhs.true.264, %lor.lhs.false.260, %lor.lhs.false.253, %if.end.242
  %198 = load i8*, i8** %type, align 8
  %199 = load i8, i8* %198, align 1
  %conv276 = sext i8 %199 to i32
  %cmp277 = icmp eq i32 %conv276, 124
  br i1 %cmp277, label %if.then.279, label %if.else.447

if.then.279:                                      ; preds = %if.end.275
  %200 = load i32, i32* %num_svs.addr, align 4
  %tobool280 = icmp ne i32 %200, 0
  br i1 %tobool280, label %if.then.281, label %if.end.290

if.then.281:                                      ; preds = %if.then.279
  %201 = load i8*, i8** %type, align 8
  %arrayidx282 = getelementptr inbounds i8, i8* %201, i64 1
  %202 = load i8, i8* %arrayidx282, align 1
  %conv283 = sext i8 %202 to i32
  %cmp284 = icmp ne i32 %conv283, 45
  br i1 %cmp284, label %if.then.286, label %if.end.288

if.then.286:                                      ; preds = %if.then.281
  br label %unknown_open_mode

unknown_open_mode:                                ; preds = %if.then.1107, %if.then.898, %if.then.763, %if.then.286
  %203 = load i64, i64* %olen, align 8
  %conv287 = trunc i64 %203 to i32
  %204 = load i8*, i8** %oname, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i32 %conv287, i8* %204)
  br label %if.end.288

if.end.288:                                       ; preds = %unknown_open_mode, %if.then.281
  %205 = load i8*, i8** %type, align 8
  %incdec.ptr289 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %incdec.ptr289, i8** %type, align 8
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.288, %if.then.279
  %206 = load i8*, i8** %type, align 8
  %incdec.ptr291 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %incdec.ptr291, i8** %type, align 8
  br label %for.cond.292

for.cond.292:                                     ; preds = %for.inc.314, %if.end.290
  %207 = load i8*, i8** %type, align 8
  %208 = load i8, i8* %207, align 1
  %conv293 = sext i8 %208 to i32
  %cmp294 = icmp eq i32 %conv293, 32
  br i1 %cmp294, label %lor.end.312, label %lor.lhs.false.296

lor.lhs.false.296:                                ; preds = %for.cond.292
  %209 = load i8*, i8** %type, align 8
  %210 = load i8, i8* %209, align 1
  %conv297 = sext i8 %210 to i32
  %cmp298 = icmp eq i32 %conv297, 9
  br i1 %cmp298, label %lor.end.312, label %lor.lhs.false.300

lor.lhs.false.300:                                ; preds = %lor.lhs.false.296
  %211 = load i8*, i8** %type, align 8
  %212 = load i8, i8* %211, align 1
  %conv301 = sext i8 %212 to i32
  %cmp302 = icmp eq i32 %conv301, 10
  br i1 %cmp302, label %lor.end.312, label %lor.lhs.false.304

lor.lhs.false.304:                                ; preds = %lor.lhs.false.300
  %213 = load i8*, i8** %type, align 8
  %214 = load i8, i8* %213, align 1
  %conv305 = sext i8 %214 to i32
  %cmp306 = icmp eq i32 %conv305, 13
  br i1 %cmp306, label %lor.end.312, label %lor.rhs.308

lor.rhs.308:                                      ; preds = %lor.lhs.false.304
  %215 = load i8*, i8** %type, align 8
  %216 = load i8, i8* %215, align 1
  %conv309 = sext i8 %216 to i32
  %cmp310 = icmp eq i32 %conv309, 12
  br label %lor.end.312

lor.end.312:                                      ; preds = %lor.rhs.308, %lor.lhs.false.304, %lor.lhs.false.300, %lor.lhs.false.296, %for.cond.292
  %217 = phi i1 [ true, %lor.lhs.false.304 ], [ true, %lor.lhs.false.300 ], [ true, %lor.lhs.false.296 ], [ true, %for.cond.292 ], [ %cmp310, %lor.rhs.308 ]
  br i1 %217, label %for.body.313, label %for.end.316

for.body.313:                                     ; preds = %lor.end.312
  br label %for.inc.314

for.inc.314:                                      ; preds = %for.body.313
  %218 = load i8*, i8** %type, align 8
  %incdec.ptr315 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %incdec.ptr315, i8** %type, align 8
  br label %for.cond.292

for.end.316:                                      ; preds = %lor.end.312
  %219 = load i32, i32* %num_svs.addr, align 4
  %tobool317 = icmp ne i32 %219, 0
  br i1 %tobool317, label %if.end.323, label %if.then.318

if.then.318:                                      ; preds = %for.end.316
  %220 = load i8*, i8** %type, align 8
  store i8* %220, i8** %name.addr, align 8
  %221 = load i8*, i8** %tend, align 8
  %222 = load i8*, i8** %type, align 8
  %sub.ptr.lhs.cast319 = ptrtoint i8* %221 to i64
  %sub.ptr.rhs.cast320 = ptrtoint i8* %222 to i64
  %sub.ptr.sub321 = sub i64 %sub.ptr.lhs.cast319, %sub.ptr.rhs.cast320
  %conv322 = trunc i64 %sub.ptr.sub321 to i32
  store i32 %conv322, i32* %len.addr, align 4
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.318, %for.end.316
  %223 = load i8*, i8** %name.addr, align 8
  %224 = load i8, i8* %223, align 1
  %conv324 = sext i8 %224 to i32
  %cmp325 = icmp eq i32 %conv324, 0
  br i1 %cmp325, label %if.then.327, label %if.end.356

if.then.327:                                      ; preds = %if.end.323
  %225 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %225, i32 0, i32 14
  %226 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp328 = icmp ne %struct.sv* %226, null
  br i1 %cmp328, label %land.lhs.true.330, label %lor.lhs.false.345

land.lhs.true.330:                                ; preds = %if.then.327
  %227 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings331 = getelementptr inbounds %struct.cop, %struct.cop* %227, i32 0, i32 14
  %228 = load %struct.sv*, %struct.sv** %cop_warnings331, align 8
  %cmp332 = icmp ne %struct.sv* %228, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp332, label %land.lhs.true.334, label %lor.lhs.false.345

land.lhs.true.334:                                ; preds = %land.lhs.true.330
  %229 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings335 = getelementptr inbounds %struct.cop, %struct.cop* %229, i32 0, i32 14
  %230 = load %struct.sv*, %struct.sv** %cop_warnings335, align 8
  %cmp336 = icmp eq %struct.sv* %230, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp336, label %if.then.353, label %lor.lhs.false.338

lor.lhs.false.338:                                ; preds = %land.lhs.true.334
  %231 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings339 = getelementptr inbounds %struct.cop, %struct.cop* %231, i32 0, i32 14
  %232 = load %struct.sv*, %struct.sv** %cop_warnings339, align 8
  %sv_any340 = getelementptr inbounds %struct.sv, %struct.sv* %232, i32 0, i32 0
  %233 = load i8*, i8** %sv_any340, align 8
  %234 = bitcast i8* %233 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %234, i32 0, i32 0
  %235 = load i8*, i8** %xpv_pv, align 8
  %arrayidx341 = getelementptr inbounds i8, i8* %235, i64 2
  %236 = load i8, i8* %arrayidx341, align 1
  %conv342 = sext i8 %236 to i32
  %and343 = and i32 %conv342, 16
  %tobool344 = icmp ne i32 %and343, 0
  br i1 %tobool344, label %if.then.353, label %lor.lhs.false.345

lor.lhs.false.345:                                ; preds = %lor.lhs.false.338, %land.lhs.true.330, %if.then.327
  %237 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings346 = getelementptr inbounds %struct.cop, %struct.cop* %237, i32 0, i32 14
  %238 = load %struct.sv*, %struct.sv** %cop_warnings346, align 8
  %cmp347 = icmp eq %struct.sv* %238, null
  br i1 %cmp347, label %land.lhs.true.349, label %if.end.354

land.lhs.true.349:                                ; preds = %lor.lhs.false.345
  %239 = load i8, i8* @PL_dowarn, align 1
  %conv350 = zext i8 %239 to i32
  %and351 = and i32 %conv350, 1
  %tobool352 = icmp ne i32 %and351, 0
  br i1 %tobool352, label %if.then.353, label %if.end.354

if.then.353:                                      ; preds = %land.lhs.true.349, %lor.lhs.false.338, %land.lhs.true.334
  call void (i32, i8*, ...) @Perl_warner(i32 10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.354

if.end.354:                                       ; preds = %if.then.353, %land.lhs.true.349, %lor.lhs.false.345
  %call355 = call i32* @__errno_location()
  store i32 32, i32* %call355, align 4
  br label %say_false

if.end.356:                                       ; preds = %if.end.323
  %240 = load i8*, i8** %name.addr, align 8
  %241 = load i8, i8* %240, align 1
  %conv357 = sext i8 %241 to i32
  %cmp358 = icmp eq i32 %conv357, 45
  br i1 %cmp358, label %land.lhs.true.360, label %lor.lhs.false.365

land.lhs.true.360:                                ; preds = %if.end.356
  %242 = load i8*, i8** %name.addr, align 8
  %arrayidx361 = getelementptr inbounds i8, i8* %242, i64 1
  %243 = load i8, i8* %arrayidx361, align 1
  %conv362 = sext i8 %243 to i32
  %cmp363 = icmp eq i32 %conv362, 0
  br i1 %cmp363, label %if.then.367, label %lor.lhs.false.365

lor.lhs.false.365:                                ; preds = %land.lhs.true.360, %if.end.356
  %244 = load i32, i32* %num_svs.addr, align 4
  %tobool366 = icmp ne i32 %244, 0
  br i1 %tobool366, label %if.then.367, label %if.end.371

if.then.367:                                      ; preds = %lor.lhs.false.365, %land.lhs.true.360
  %245 = load i8, i8* @PL_tainting, align 1
  %tobool368 = icmp ne i8 %245, 0
  br i1 %tobool368, label %if.then.369, label %if.end.370

if.then.369:                                      ; preds = %if.then.367
  call void @Perl_taint_env()
  br label %if.end.370

if.end.370:                                       ; preds = %if.then.369, %if.then.367
  br label %if.end.371

if.end.371:                                       ; preds = %if.end.370, %lor.lhs.false.365
  %246 = load i8, i8* @PL_tainting, align 1
  %tobool372 = icmp ne i8 %246, 0
  br i1 %tobool372, label %if.then.373, label %if.end.374

if.then.373:                                      ; preds = %if.end.371
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.374

if.end.374:                                       ; preds = %if.then.373, %if.end.371
  %247 = load i32, i32* %num_svs.addr, align 4
  %tobool375 = icmp ne i32 %247, 0
  br i1 %tobool375, label %if.end.413, label %land.lhs.true.376

land.lhs.true.376:                                ; preds = %if.end.374
  %248 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 %248, 1
  %idxprom = sext i32 %sub to i64
  %249 = load i8*, i8** %name.addr, align 8
  %arrayidx377 = getelementptr inbounds i8, i8* %249, i64 %idxprom
  %250 = load i8, i8* %arrayidx377, align 1
  %conv378 = sext i8 %250 to i32
  %cmp379 = icmp eq i32 %conv378, 124
  br i1 %cmp379, label %if.then.381, label %if.end.413

if.then.381:                                      ; preds = %land.lhs.true.376
  %251 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %251, -1
  store i32 %dec, i32* %len.addr, align 4
  %idxprom382 = sext i32 %dec to i64
  %252 = load i8*, i8** %name.addr, align 8
  %arrayidx383 = getelementptr inbounds i8, i8* %252, i64 %idxprom382
  store i8 0, i8* %arrayidx383, align 1
  %253 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings384 = getelementptr inbounds %struct.cop, %struct.cop* %253, i32 0, i32 14
  %254 = load %struct.sv*, %struct.sv** %cop_warnings384, align 8
  %cmp385 = icmp ne %struct.sv* %254, null
  br i1 %cmp385, label %land.lhs.true.387, label %lor.lhs.false.403

land.lhs.true.387:                                ; preds = %if.then.381
  %255 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings388 = getelementptr inbounds %struct.cop, %struct.cop* %255, i32 0, i32 14
  %256 = load %struct.sv*, %struct.sv** %cop_warnings388, align 8
  %cmp389 = icmp ne %struct.sv* %256, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp389, label %land.lhs.true.391, label %lor.lhs.false.403

land.lhs.true.391:                                ; preds = %land.lhs.true.387
  %257 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings392 = getelementptr inbounds %struct.cop, %struct.cop* %257, i32 0, i32 14
  %258 = load %struct.sv*, %struct.sv** %cop_warnings392, align 8
  %cmp393 = icmp eq %struct.sv* %258, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp393, label %if.then.411, label %lor.lhs.false.395

lor.lhs.false.395:                                ; preds = %land.lhs.true.391
  %259 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings396 = getelementptr inbounds %struct.cop, %struct.cop* %259, i32 0, i32 14
  %260 = load %struct.sv*, %struct.sv** %cop_warnings396, align 8
  %sv_any397 = getelementptr inbounds %struct.sv, %struct.sv* %260, i32 0, i32 0
  %261 = load i8*, i8** %sv_any397, align 8
  %262 = bitcast i8* %261 to %struct.xpv*
  %xpv_pv398 = getelementptr inbounds %struct.xpv, %struct.xpv* %262, i32 0, i32 0
  %263 = load i8*, i8** %xpv_pv398, align 8
  %arrayidx399 = getelementptr inbounds i8, i8* %263, i64 2
  %264 = load i8, i8* %arrayidx399, align 1
  %conv400 = sext i8 %264 to i32
  %and401 = and i32 %conv400, 16
  %tobool402 = icmp ne i32 %and401, 0
  br i1 %tobool402, label %if.then.411, label %lor.lhs.false.403

lor.lhs.false.403:                                ; preds = %lor.lhs.false.395, %land.lhs.true.387, %if.then.381
  %265 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings404 = getelementptr inbounds %struct.cop, %struct.cop* %265, i32 0, i32 14
  %266 = load %struct.sv*, %struct.sv** %cop_warnings404, align 8
  %cmp405 = icmp eq %struct.sv* %266, null
  br i1 %cmp405, label %land.lhs.true.407, label %if.end.412

land.lhs.true.407:                                ; preds = %lor.lhs.false.403
  %267 = load i8, i8* @PL_dowarn, align 1
  %conv408 = zext i8 %267 to i32
  %and409 = and i32 %conv408, 1
  %tobool410 = icmp ne i32 %and409, 0
  br i1 %tobool410, label %if.then.411, label %if.end.412

if.then.411:                                      ; preds = %land.lhs.true.407, %lor.lhs.false.395, %land.lhs.true.391
  call void (i32, i8*, ...) @Perl_warner(i32 10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.412

if.end.412:                                       ; preds = %if.then.411, %land.lhs.true.407, %lor.lhs.false.403
  br label %if.end.413

if.end.413:                                       ; preds = %if.end.412, %land.lhs.true.376, %if.end.374
  %arrayidx414 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i64 0
  store i8 119, i8* %arrayidx414, align 1
  store i32 1, i32* %writing, align 4
  %268 = load i8, i8* %out_raw, align 1
  %tobool415 = icmp ne i8 %268, 0
  br i1 %tobool415, label %if.then.416, label %if.else.419

if.then.416:                                      ; preds = %if.end.413
  %arraydecay417 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %call418 = call i8* @strcat(i8* %arraydecay417, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.425

if.else.419:                                      ; preds = %if.end.413
  %269 = load i8, i8* %out_crlf, align 1
  %tobool420 = icmp ne i8 %269, 0
  br i1 %tobool420, label %if.then.421, label %if.end.424

if.then.421:                                      ; preds = %if.else.419
  %arraydecay422 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %call423 = call i8* @strcat(i8* %arraydecay422, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.424

if.end.424:                                       ; preds = %if.then.421, %if.else.419
  br label %if.end.425

if.end.425:                                       ; preds = %if.end.424, %if.then.416
  %270 = load i32, i32* %num_svs.addr, align 4
  %cmp426 = icmp sgt i32 %270, 1
  br i1 %cmp426, label %if.then.428, label %if.else.431

if.then.428:                                      ; preds = %if.end.425
  %arraydecay429 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %271 = load i32, i32* %num_svs.addr, align 4
  %272 = load %struct.sv**, %struct.sv*** %svp.addr, align 8
  %call430 = call %struct._PerlIO** @Perl_my_popen_list(i8* %arraydecay429, i32 %271, %struct.sv** %272)
  store %struct._PerlIO** %call430, %struct._PerlIO*** %fp, align 8
  br label %if.end.434

if.else.431:                                      ; preds = %if.end.425
  %273 = load i8*, i8** %name.addr, align 8
  %arraydecay432 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %call433 = call %struct._PerlIO** @Perl_my_popen(i8* %273, i8* %arraydecay432)
  store %struct._PerlIO** %call433, %struct._PerlIO*** %fp, align 8
  br label %if.end.434

if.end.434:                                       ; preds = %if.else.431, %if.then.428
  %274 = load i32, i32* %num_svs.addr, align 4
  %tobool435 = icmp ne i32 %274, 0
  br i1 %tobool435, label %if.then.436, label %if.end.446

if.then.436:                                      ; preds = %if.end.434
  %275 = load i8*, i8** %type, align 8
  %276 = load i8, i8* %275, align 1
  %tobool437 = icmp ne i8 %276, 0
  br i1 %tobool437, label %if.then.438, label %if.end.445

if.then.438:                                      ; preds = %if.then.436
  %277 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %arraydecay439 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %278 = load i8*, i8** %type, align 8
  %call440 = call i32 @PerlIO_apply_layers(%struct._PerlIO** %277, i8* %arraydecay439, i8* %278)
  %cmp441 = icmp ne i32 %call440, 0
  br i1 %cmp441, label %if.then.443, label %if.end.444

if.then.443:                                      ; preds = %if.then.438
  br label %say_false

if.end.444:                                       ; preds = %if.then.438
  br label %if.end.445

if.end.445:                                       ; preds = %if.end.444, %if.then.436
  br label %if.end.446

if.end.446:                                       ; preds = %if.end.445, %if.end.434
  br label %if.end.1173

if.else.447:                                      ; preds = %if.end.275
  %279 = load i8*, i8** %type, align 8
  %280 = load i8, i8* %279, align 1
  %conv448 = sext i8 %280 to i32
  %cmp449 = icmp eq i32 %conv448, 62
  br i1 %cmp449, label %if.then.451, label %if.else.765

if.then.451:                                      ; preds = %if.else.447
  %281 = load i8, i8* @PL_tainting, align 1
  %tobool452 = icmp ne i8 %281, 0
  br i1 %tobool452, label %if.then.453, label %if.end.454

if.then.453:                                      ; preds = %if.then.451
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.454

if.end.454:                                       ; preds = %if.then.453, %if.then.451
  %282 = load i8*, i8** %type, align 8
  %incdec.ptr455 = getelementptr inbounds i8, i8* %282, i32 1
  store i8* %incdec.ptr455, i8** %type, align 8
  %283 = load i8*, i8** %type, align 8
  %284 = load i8, i8* %283, align 1
  %conv456 = sext i8 %284 to i32
  %cmp457 = icmp eq i32 %conv456, 62
  br i1 %cmp457, label %if.then.459, label %if.else.464

if.then.459:                                      ; preds = %if.end.454
  %285 = load %struct.io*, %struct.io** %io, align 8
  %sv_any460 = getelementptr inbounds %struct.io, %struct.io* %285, i32 0, i32 0
  %286 = load %struct.xpvio*, %struct.xpvio** %sv_any460, align 8
  %xio_type461 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %286, i32 0, i32 21
  store i8 97, i8* %xio_type461, align 1
  %arrayidx462 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i64 0
  store i8 97, i8* %arrayidx462, align 1
  %287 = load i8*, i8** %type, align 8
  %incdec.ptr463 = getelementptr inbounds i8, i8* %287, i32 1
  store i8* %incdec.ptr463, i8** %type, align 8
  br label %if.end.466

if.else.464:                                      ; preds = %if.end.454
  %arrayidx465 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i64 0
  store i8 119, i8* %arrayidx465, align 1
  br label %if.end.466

if.end.466:                                       ; preds = %if.else.464, %if.then.459
  store i32 1, i32* %writing, align 4
  %288 = load i8, i8* %out_raw, align 1
  %tobool467 = icmp ne i8 %288, 0
  br i1 %tobool467, label %if.then.468, label %if.else.471

if.then.468:                                      ; preds = %if.end.466
  %arraydecay469 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %call470 = call i8* @strcat(i8* %arraydecay469, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.477

if.else.471:                                      ; preds = %if.end.466
  %289 = load i8, i8* %out_crlf, align 1
  %tobool472 = icmp ne i8 %289, 0
  br i1 %tobool472, label %if.then.473, label %if.end.476

if.then.473:                                      ; preds = %if.else.471
  %arraydecay474 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %call475 = call i8* @strcat(i8* %arraydecay474, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.476

if.end.476:                                       ; preds = %if.then.473, %if.else.471
  br label %if.end.477

if.end.477:                                       ; preds = %if.end.476, %if.then.468
  %290 = load i8*, i8** %type, align 8
  %291 = load i8, i8* %290, align 1
  %conv478 = sext i8 %291 to i32
  %cmp479 = icmp eq i32 %conv478, 38
  br i1 %cmp479, label %if.then.481, label %if.else.651

if.then.481:                                      ; preds = %if.end.477
  br label %duplicity

duplicity:                                        ; preds = %if.then.811, %if.then.481
  store i32 2, i32* %dodup, align 4
  %292 = load i8*, i8** %type, align 8
  %incdec.ptr482 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %incdec.ptr482, i8** %type, align 8
  %293 = load i8*, i8** %type, align 8
  %294 = load i8, i8* %293, align 1
  %conv483 = sext i8 %294 to i32
  %cmp484 = icmp eq i32 %conv483, 61
  br i1 %cmp484, label %if.then.486, label %if.end.488

if.then.486:                                      ; preds = %duplicity
  store i32 0, i32* %dodup, align 4
  %295 = load i8*, i8** %type, align 8
  %incdec.ptr487 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %incdec.ptr487, i8** %type, align 8
  br label %if.end.488

if.end.488:                                       ; preds = %if.then.486, %duplicity
  %296 = load i32, i32* %num_svs.addr, align 4
  %tobool489 = icmp ne i32 %296, 0
  br i1 %tobool489, label %if.else.495, label %land.lhs.true.490

land.lhs.true.490:                                ; preds = %if.end.488
  %297 = load i8*, i8** %type, align 8
  %298 = load i8, i8* %297, align 1
  %tobool491 = icmp ne i8 %298, 0
  br i1 %tobool491, label %if.else.495, label %land.lhs.true.492

land.lhs.true.492:                                ; preds = %land.lhs.true.490
  %299 = load %struct._PerlIO**, %struct._PerlIO*** %supplied_fp.addr, align 8
  %tobool493 = icmp ne %struct._PerlIO** %299, null
  br i1 %tobool493, label %if.then.494, label %if.else.495

if.then.494:                                      ; preds = %land.lhs.true.492
  %300 = load %struct._PerlIO**, %struct._PerlIO*** %supplied_fp.addr, align 8
  store %struct._PerlIO** %300, %struct._PerlIO*** %fp, align 8
  br label %if.end.650

if.else.495:                                      ; preds = %land.lhs.true.492, %land.lhs.true.490, %if.end.488
  %301 = load i32, i32* %num_svs.addr, align 4
  %cmp496 = icmp sgt i32 %301, 1
  br i1 %cmp496, label %if.then.498, label %if.end.502

if.then.498:                                      ; preds = %if.else.495
  %302 = load %struct.io*, %struct.io** %io, align 8
  %sv_any499 = getelementptr inbounds %struct.io, %struct.io* %302, i32 0, i32 0
  %303 = load %struct.xpvio*, %struct.xpvio** %sv_any499, align 8
  %xio_type500 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %303, i32 0, i32 21
  %304 = load i8, i8* %xio_type500, align 1
  %conv501 = sext i8 %304 to i32
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0), i32 %conv501)
  br label %if.end.502

if.end.502:                                       ; preds = %if.then.498, %if.else.495
  br label %for.cond.503

for.cond.503:                                     ; preds = %for.inc.525, %if.end.502
  %305 = load i8*, i8** %type, align 8
  %306 = load i8, i8* %305, align 1
  %conv504 = sext i8 %306 to i32
  %cmp505 = icmp eq i32 %conv504, 32
  br i1 %cmp505, label %lor.end.523, label %lor.lhs.false.507

lor.lhs.false.507:                                ; preds = %for.cond.503
  %307 = load i8*, i8** %type, align 8
  %308 = load i8, i8* %307, align 1
  %conv508 = sext i8 %308 to i32
  %cmp509 = icmp eq i32 %conv508, 9
  br i1 %cmp509, label %lor.end.523, label %lor.lhs.false.511

lor.lhs.false.511:                                ; preds = %lor.lhs.false.507
  %309 = load i8*, i8** %type, align 8
  %310 = load i8, i8* %309, align 1
  %conv512 = sext i8 %310 to i32
  %cmp513 = icmp eq i32 %conv512, 10
  br i1 %cmp513, label %lor.end.523, label %lor.lhs.false.515

lor.lhs.false.515:                                ; preds = %lor.lhs.false.511
  %311 = load i8*, i8** %type, align 8
  %312 = load i8, i8* %311, align 1
  %conv516 = sext i8 %312 to i32
  %cmp517 = icmp eq i32 %conv516, 13
  br i1 %cmp517, label %lor.end.523, label %lor.rhs.519

lor.rhs.519:                                      ; preds = %lor.lhs.false.515
  %313 = load i8*, i8** %type, align 8
  %314 = load i8, i8* %313, align 1
  %conv520 = sext i8 %314 to i32
  %cmp521 = icmp eq i32 %conv520, 12
  br label %lor.end.523

lor.end.523:                                      ; preds = %lor.rhs.519, %lor.lhs.false.515, %lor.lhs.false.511, %lor.lhs.false.507, %for.cond.503
  %315 = phi i1 [ true, %lor.lhs.false.515 ], [ true, %lor.lhs.false.511 ], [ true, %lor.lhs.false.507 ], [ true, %for.cond.503 ], [ %cmp521, %lor.rhs.519 ]
  br i1 %315, label %for.body.524, label %for.end.527

for.body.524:                                     ; preds = %lor.end.523
  br label %for.inc.525

for.inc.525:                                      ; preds = %for.body.524
  %316 = load i8*, i8** %type, align 8
  %incdec.ptr526 = getelementptr inbounds i8, i8* %316, i32 1
  store i8* %incdec.ptr526, i8** %type, align 8
  br label %for.cond.503

for.end.527:                                      ; preds = %lor.end.523
  %317 = load i32, i32* %num_svs.addr, align 4
  %tobool528 = icmp ne i32 %317, 0
  br i1 %tobool528, label %land.lhs.true.529, label %if.else.551

land.lhs.true.529:                                ; preds = %for.end.527
  %318 = load %struct.sv**, %struct.sv*** %svp.addr, align 8
  %319 = load %struct.sv*, %struct.sv** %318, align 8
  %sv_flags530 = getelementptr inbounds %struct.sv, %struct.sv* %319, i32 0, i32 2
  %320 = load i32, i32* %sv_flags530, align 4
  %and531 = and i32 %320, 65536
  %tobool532 = icmp ne i32 %and531, 0
  br i1 %tobool532, label %if.then.540, label %lor.lhs.false.533

lor.lhs.false.533:                                ; preds = %land.lhs.true.529
  %321 = load %struct.sv**, %struct.sv*** %svp.addr, align 8
  %322 = load %struct.sv*, %struct.sv** %321, align 8
  %sv_flags534 = getelementptr inbounds %struct.sv, %struct.sv* %322, i32 0, i32 2
  %323 = load i32, i32* %sv_flags534, align 4
  %and535 = and i32 %323, 262144
  %tobool536 = icmp ne i32 %and535, 0
  br i1 %tobool536, label %land.lhs.true.537, label %if.else.551

land.lhs.true.537:                                ; preds = %lor.lhs.false.533
  %324 = load %struct.sv**, %struct.sv*** %svp.addr, align 8
  %325 = load %struct.sv*, %struct.sv** %324, align 8
  %call538 = call i32 @Perl_looks_like_number(%struct.sv* %325)
  %tobool539 = icmp ne i32 %call538, 0
  br i1 %tobool539, label %if.then.540, label %if.else.551

if.then.540:                                      ; preds = %land.lhs.true.537, %land.lhs.true.529
  %326 = load %struct.sv**, %struct.sv*** %svp.addr, align 8
  %327 = load %struct.sv*, %struct.sv** %326, align 8
  %sv_flags541 = getelementptr inbounds %struct.sv, %struct.sv* %327, i32 0, i32 2
  %328 = load i32, i32* %sv_flags541, align 4
  %and542 = and i32 %328, 65536
  %tobool543 = icmp ne i32 %and542, 0
  br i1 %tobool543, label %cond.true.544, label %cond.false.546

cond.true.544:                                    ; preds = %if.then.540
  %329 = load %struct.sv**, %struct.sv*** %svp.addr, align 8
  %330 = load %struct.sv*, %struct.sv** %329, align 8
  %sv_any545 = getelementptr inbounds %struct.sv, %struct.sv* %330, i32 0, i32 0
  %331 = load i8*, i8** %sv_any545, align 8
  %332 = bitcast i8* %331 to %struct.xpvuv*
  %xuv_uv = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %332, i32 0, i32 3
  %333 = load i64, i64* %xuv_uv, align 8
  br label %cond.end.548

cond.false.546:                                   ; preds = %if.then.540
  %334 = load %struct.sv**, %struct.sv*** %svp.addr, align 8
  %335 = load %struct.sv*, %struct.sv** %334, align 8
  %call547 = call i64 @Perl_sv_2uv(%struct.sv* %335)
  br label %cond.end.548

cond.end.548:                                     ; preds = %cond.false.546, %cond.true.544
  %cond549 = phi i64 [ %333, %cond.true.544 ], [ %call547, %cond.false.546 ]
  %conv550 = trunc i64 %cond549 to i32
  store i32 %conv550, i32* %fd, align 4
  store i32 0, i32* %num_svs.addr, align 4
  br label %if.end.627

if.else.551:                                      ; preds = %land.lhs.true.537, %lor.lhs.false.533, %for.end.527
  %336 = load i8*, i8** %type, align 8
  %337 = load i8, i8* %336, align 1
  %conv552 = sext i8 %337 to i32
  %cmp553 = icmp sge i32 %conv552, 48
  br i1 %cmp553, label %land.lhs.true.555, label %if.else.561

land.lhs.true.555:                                ; preds = %if.else.551
  %338 = load i8*, i8** %type, align 8
  %339 = load i8, i8* %338, align 1
  %conv556 = sext i8 %339 to i32
  %cmp557 = icmp sle i32 %conv556, 57
  br i1 %cmp557, label %if.then.559, label %if.else.561

if.then.559:                                      ; preds = %land.lhs.true.555
  %340 = load i8*, i8** %type, align 8
  %call560 = call i32 @atoi(i8* %340)
  store i32 %call560, i32* %fd, align 4
  br label %if.end.626

if.else.561:                                      ; preds = %land.lhs.true.555, %if.else.551
  %341 = load i32, i32* %num_svs.addr, align 4
  %tobool562 = icmp ne i32 %341, 0
  br i1 %tobool562, label %if.then.563, label %if.else.565

if.then.563:                                      ; preds = %if.else.561
  %342 = load %struct.sv**, %struct.sv*** %svp.addr, align 8
  %343 = load %struct.sv*, %struct.sv** %342, align 8
  %call564 = call %struct.io* @Perl_sv_2io(%struct.sv* %343)
  store %struct.io* %call564, %struct.io** %thatio, align 8
  br label %if.end.584

if.else.565:                                      ; preds = %if.else.561
  %344 = load i8*, i8** %type, align 8
  %call566 = call %struct.gv* @Perl_gv_fetchpv(i8* %344, i32 0, i32 15)
  store %struct.gv* %call566, %struct.gv** %thatgv, align 8
  %345 = load %struct.gv*, %struct.gv** %thatgv, align 8
  %tobool567 = icmp ne %struct.gv* %345, null
  br i1 %tobool567, label %land.lhs.true.568, label %cond.false.581

land.lhs.true.568:                                ; preds = %if.else.565
  %346 = load %struct.gv*, %struct.gv** %thatgv, align 8
  %347 = bitcast %struct.gv* %346 to %struct.sv*
  %sv_flags569 = getelementptr inbounds %struct.sv, %struct.sv* %347, i32 0, i32 2
  %348 = load i32, i32* %sv_flags569, align 4
  %and570 = and i32 %348, 255
  %cmp571 = icmp eq i32 %and570, 13
  br i1 %cmp571, label %land.lhs.true.573, label %cond.false.581

land.lhs.true.573:                                ; preds = %land.lhs.true.568
  %349 = load %struct.gv*, %struct.gv** %thatgv, align 8
  %sv_any574 = getelementptr inbounds %struct.gv, %struct.gv* %349, i32 0, i32 0
  %350 = load %struct.xpvgv*, %struct.xpvgv** %sv_any574, align 8
  %xgv_gp575 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %350, i32 0, i32 7
  %351 = load %struct.gp*, %struct.gp** %xgv_gp575, align 8
  %tobool576 = icmp ne %struct.gp* %351, null
  br i1 %tobool576, label %cond.true.577, label %cond.false.581

cond.true.577:                                    ; preds = %land.lhs.true.573
  %352 = load %struct.gv*, %struct.gv** %thatgv, align 8
  %sv_any578 = getelementptr inbounds %struct.gv, %struct.gv* %352, i32 0, i32 0
  %353 = load %struct.xpvgv*, %struct.xpvgv** %sv_any578, align 8
  %xgv_gp579 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %353, i32 0, i32 7
  %354 = load %struct.gp*, %struct.gp** %xgv_gp579, align 8
  %gp_io580 = getelementptr inbounds %struct.gp, %struct.gp* %354, i32 0, i32 2
  %355 = load %struct.io*, %struct.io** %gp_io580, align 8
  br label %cond.end.582

cond.false.581:                                   ; preds = %land.lhs.true.573, %land.lhs.true.568, %if.else.565
  br label %cond.end.582

cond.end.582:                                     ; preds = %cond.false.581, %cond.true.577
  %cond583 = phi %struct.io* [ %355, %cond.true.577 ], [ null, %cond.false.581 ]
  store %struct.io* %cond583, %struct.io** %thatio, align 8
  br label %if.end.584

if.end.584:                                       ; preds = %cond.end.582, %if.then.563
  %356 = load %struct.io*, %struct.io** %thatio, align 8
  %tobool585 = icmp ne %struct.io* %356, null
  br i1 %tobool585, label %if.end.588, label %if.then.586

if.then.586:                                      ; preds = %if.end.584
  %call587 = call i32* @__errno_location()
  store i32 22, i32* %call587, align 4
  br label %say_false

if.end.588:                                       ; preds = %if.end.584
  %357 = load %struct.io*, %struct.io** %thatio, align 8
  %sv_any589 = getelementptr inbounds %struct.io, %struct.io* %357, i32 0, i32 0
  %358 = load %struct.xpvio*, %struct.xpvio** %sv_any589, align 8
  %xio_ifp590 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %358, i32 0, i32 7
  %359 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp590, align 8
  store %struct._PerlIO** %359, %struct._PerlIO*** %that_fp, align 8
  %tobool591 = icmp ne %struct._PerlIO** %359, null
  br i1 %tobool591, label %if.then.592, label %if.else.624

if.then.592:                                      ; preds = %if.end.588
  %360 = load %struct._PerlIO**, %struct._PerlIO*** %that_fp, align 8
  %call593 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %360)
  %361 = load %struct._PerlIO**, %struct._PerlIO*** %that_fp, align 8
  %call594 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %361)
  store i32 %call594, i32* %fd, align 4
  %362 = load %struct._PerlIO**, %struct._PerlIO*** %that_fp, align 8
  %call595 = call %struct._PerlIO** @Perl_PerlIO_stdout()
  %cmp596 = icmp eq %struct._PerlIO** %362, %call595
  br i1 %cmp596, label %if.then.602, label %lor.lhs.false.598

lor.lhs.false.598:                                ; preds = %if.then.592
  %363 = load %struct._PerlIO**, %struct._PerlIO*** %that_fp, align 8
  %call599 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %cmp600 = icmp eq %struct._PerlIO** %363, %call599
  br i1 %cmp600, label %if.then.602, label %if.else.605

if.then.602:                                      ; preds = %lor.lhs.false.598, %if.then.592
  %364 = load %struct.io*, %struct.io** %io, align 8
  %sv_any603 = getelementptr inbounds %struct.io, %struct.io* %364, i32 0, i32 0
  %365 = load %struct.xpvio*, %struct.xpvio** %sv_any603, align 8
  %xio_type604 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %365, i32 0, i32 21
  store i8 62, i8* %xio_type604, align 1
  br label %if.end.623

if.else.605:                                      ; preds = %lor.lhs.false.598
  %366 = load %struct._PerlIO**, %struct._PerlIO*** %that_fp, align 8
  %call606 = call %struct._PerlIO** @Perl_PerlIO_stdin()
  %cmp607 = icmp eq %struct._PerlIO** %366, %call606
  br i1 %cmp607, label %if.then.609, label %if.else.612

if.then.609:                                      ; preds = %if.else.605
  %367 = load %struct.io*, %struct.io** %io, align 8
  %sv_any610 = getelementptr inbounds %struct.io, %struct.io* %367, i32 0, i32 0
  %368 = load %struct.xpvio*, %struct.xpvio** %sv_any610, align 8
  %xio_type611 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %368, i32 0, i32 21
  store i8 60, i8* %xio_type611, align 1
  br label %if.end.622

if.else.612:                                      ; preds = %if.else.605
  %369 = load %struct.io*, %struct.io** %thatio, align 8
  %sv_any613 = getelementptr inbounds %struct.io, %struct.io* %369, i32 0, i32 0
  %370 = load %struct.xpvio*, %struct.xpvio** %sv_any613, align 8
  %xio_type614 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %370, i32 0, i32 21
  %371 = load i8, i8* %xio_type614, align 1
  %conv615 = sext i8 %371 to i32
  %cmp616 = icmp eq i32 %conv615, 115
  br i1 %cmp616, label %if.then.618, label %if.end.621

if.then.618:                                      ; preds = %if.else.612
  %372 = load %struct.io*, %struct.io** %io, align 8
  %sv_any619 = getelementptr inbounds %struct.io, %struct.io* %372, i32 0, i32 0
  %373 = load %struct.xpvio*, %struct.xpvio** %sv_any619, align 8
  %xio_type620 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %373, i32 0, i32 21
  store i8 115, i8* %xio_type620, align 1
  br label %if.end.621

if.end.621:                                       ; preds = %if.then.618, %if.else.612
  br label %if.end.622

if.end.622:                                       ; preds = %if.end.621, %if.then.609
  br label %if.end.623

if.end.623:                                       ; preds = %if.end.622, %if.then.602
  br label %if.end.625

if.else.624:                                      ; preds = %if.end.588
  store i32 -1, i32* %fd, align 4
  br label %if.end.625

if.end.625:                                       ; preds = %if.else.624, %if.end.623
  br label %if.end.626

if.end.626:                                       ; preds = %if.end.625, %if.then.559
  br label %if.end.627

if.end.627:                                       ; preds = %if.end.626, %cond.end.548
  %374 = load i32, i32* %num_svs.addr, align 4
  %tobool628 = icmp ne i32 %374, 0
  br i1 %tobool628, label %if.end.630, label %if.then.629

if.then.629:                                      ; preds = %if.end.627
  store i8* null, i8** %type, align 8
  br label %if.end.630

if.end.630:                                       ; preds = %if.then.629, %if.end.627
  %375 = load %struct._PerlIO**, %struct._PerlIO*** %that_fp, align 8
  %tobool631 = icmp ne %struct._PerlIO** %375, null
  br i1 %tobool631, label %if.then.632, label %if.else.634

if.then.632:                                      ; preds = %if.end.630
  %376 = load %struct._PerlIO**, %struct._PerlIO*** %that_fp, align 8
  %377 = load i32, i32* %dodup, align 4
  %call633 = call %struct._PerlIO** @PerlIO_fdupopen(%struct._PerlIO** %376, %struct.clone_params* null, i32 %377)
  store %struct._PerlIO** %call633, %struct._PerlIO*** %fp, align 8
  br label %if.end.649

if.else.634:                                      ; preds = %if.end.630
  %378 = load i32, i32* %dodup, align 4
  %tobool635 = icmp ne i32 %378, 0
  br i1 %tobool635, label %if.then.636, label %if.else.638

if.then.636:                                      ; preds = %if.else.634
  %379 = load i32, i32* %fd, align 4
  %call637 = call i32 @dup(i32 %379)
  store i32 %call637, i32* %fd, align 4
  br label %if.end.639

if.else.638:                                      ; preds = %if.else.634
  store i8 1, i8* %was_fdopen, align 1
  br label %if.end.639

if.end.639:                                       ; preds = %if.else.638, %if.then.636
  %380 = load i8*, i8** %type, align 8
  %arraydecay640 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %381 = load i32, i32* %fd, align 4
  %382 = load i32, i32* %num_svs.addr, align 4
  %383 = load %struct.sv**, %struct.sv*** %svp.addr, align 8
  %call641 = call %struct._PerlIO** @PerlIO_openn(i8* %380, i8* %arraydecay640, i32 %381, i32 0, i32 0, %struct._PerlIO** null, i32 %382, %struct.sv** %383)
  store %struct._PerlIO** %call641, %struct._PerlIO*** %fp, align 8
  %tobool642 = icmp ne %struct._PerlIO** %call641, null
  br i1 %tobool642, label %if.end.648, label %if.then.643

if.then.643:                                      ; preds = %if.end.639
  %384 = load i32, i32* %dodup, align 4
  %tobool644 = icmp ne i32 %384, 0
  br i1 %tobool644, label %if.then.645, label %if.end.647

if.then.645:                                      ; preds = %if.then.643
  %385 = load i32, i32* %fd, align 4
  %call646 = call i32 @close(i32 %385)
  br label %if.end.647

if.end.647:                                       ; preds = %if.then.645, %if.then.643
  br label %if.end.648

if.end.648:                                       ; preds = %if.end.647, %if.end.639
  br label %if.end.649

if.end.649:                                       ; preds = %if.end.648, %if.then.632
  br label %if.end.650

if.end.650:                                       ; preds = %if.end.649, %if.then.494
  br label %if.end.732

if.else.651:                                      ; preds = %if.end.477
  br label %for.cond.652

for.cond.652:                                     ; preds = %for.inc.674, %if.else.651
  %386 = load i8*, i8** %type, align 8
  %387 = load i8, i8* %386, align 1
  %conv653 = sext i8 %387 to i32
  %cmp654 = icmp eq i32 %conv653, 32
  br i1 %cmp654, label %lor.end.672, label %lor.lhs.false.656

lor.lhs.false.656:                                ; preds = %for.cond.652
  %388 = load i8*, i8** %type, align 8
  %389 = load i8, i8* %388, align 1
  %conv657 = sext i8 %389 to i32
  %cmp658 = icmp eq i32 %conv657, 9
  br i1 %cmp658, label %lor.end.672, label %lor.lhs.false.660

lor.lhs.false.660:                                ; preds = %lor.lhs.false.656
  %390 = load i8*, i8** %type, align 8
  %391 = load i8, i8* %390, align 1
  %conv661 = sext i8 %391 to i32
  %cmp662 = icmp eq i32 %conv661, 10
  br i1 %cmp662, label %lor.end.672, label %lor.lhs.false.664

lor.lhs.false.664:                                ; preds = %lor.lhs.false.660
  %392 = load i8*, i8** %type, align 8
  %393 = load i8, i8* %392, align 1
  %conv665 = sext i8 %393 to i32
  %cmp666 = icmp eq i32 %conv665, 13
  br i1 %cmp666, label %lor.end.672, label %lor.rhs.668

lor.rhs.668:                                      ; preds = %lor.lhs.false.664
  %394 = load i8*, i8** %type, align 8
  %395 = load i8, i8* %394, align 1
  %conv669 = sext i8 %395 to i32
  %cmp670 = icmp eq i32 %conv669, 12
  br label %lor.end.672

lor.end.672:                                      ; preds = %lor.rhs.668, %lor.lhs.false.664, %lor.lhs.false.660, %lor.lhs.false.656, %for.cond.652
  %396 = phi i1 [ true, %lor.lhs.false.664 ], [ true, %lor.lhs.false.660 ], [ true, %lor.lhs.false.656 ], [ true, %for.cond.652 ], [ %cmp670, %lor.rhs.668 ]
  br i1 %396, label %for.body.673, label %for.end.676

for.body.673:                                     ; preds = %lor.end.672
  br label %for.inc.674

for.inc.674:                                      ; preds = %for.body.673
  %397 = load i8*, i8** %type, align 8
  %incdec.ptr675 = getelementptr inbounds i8, i8* %397, i32 1
  store i8* %incdec.ptr675, i8** %type, align 8
  br label %for.cond.652

for.end.676:                                      ; preds = %lor.end.672
  %398 = load i8*, i8** %type, align 8
  %399 = load i8, i8* %398, align 1
  %conv677 = sext i8 %399 to i32
  %cmp678 = icmp eq i32 %conv677, 45
  br i1 %cmp678, label %land.lhs.true.680, label %if.else.722

land.lhs.true.680:                                ; preds = %for.end.676
  %400 = load i8*, i8** %type, align 8
  %arrayidx681 = getelementptr inbounds i8, i8* %400, i64 1
  %401 = load i8, i8* %arrayidx681, align 1
  %tobool682 = icmp ne i8 %401, 0
  br i1 %tobool682, label %lor.lhs.false.683, label %if.then.713

lor.lhs.false.683:                                ; preds = %land.lhs.true.680
  %402 = load i8*, i8** %type, align 8
  %arrayidx684 = getelementptr inbounds i8, i8* %402, i64 1
  %403 = load i8, i8* %arrayidx684, align 1
  %conv685 = sext i8 %403 to i32
  %cmp686 = icmp eq i32 %conv685, 32
  br i1 %cmp686, label %if.then.713, label %lor.lhs.false.688

lor.lhs.false.688:                                ; preds = %lor.lhs.false.683
  %404 = load i8*, i8** %type, align 8
  %arrayidx689 = getelementptr inbounds i8, i8* %404, i64 1
  %405 = load i8, i8* %arrayidx689, align 1
  %conv690 = sext i8 %405 to i32
  %cmp691 = icmp eq i32 %conv690, 9
  br i1 %cmp691, label %if.then.713, label %lor.lhs.false.693

lor.lhs.false.693:                                ; preds = %lor.lhs.false.688
  %406 = load i8*, i8** %type, align 8
  %arrayidx694 = getelementptr inbounds i8, i8* %406, i64 1
  %407 = load i8, i8* %arrayidx694, align 1
  %conv695 = sext i8 %407 to i32
  %cmp696 = icmp eq i32 %conv695, 10
  br i1 %cmp696, label %if.then.713, label %lor.lhs.false.698

lor.lhs.false.698:                                ; preds = %lor.lhs.false.693
  %408 = load i8*, i8** %type, align 8
  %arrayidx699 = getelementptr inbounds i8, i8* %408, i64 1
  %409 = load i8, i8* %arrayidx699, align 1
  %conv700 = sext i8 %409 to i32
  %cmp701 = icmp eq i32 %conv700, 13
  br i1 %cmp701, label %if.then.713, label %lor.lhs.false.703

lor.lhs.false.703:                                ; preds = %lor.lhs.false.698
  %410 = load i8*, i8** %type, align 8
  %arrayidx704 = getelementptr inbounds i8, i8* %410, i64 1
  %411 = load i8, i8* %arrayidx704, align 1
  %conv705 = sext i8 %411 to i32
  %cmp706 = icmp eq i32 %conv705, 12
  br i1 %cmp706, label %if.then.713, label %lor.lhs.false.708

lor.lhs.false.708:                                ; preds = %lor.lhs.false.703
  %412 = load i8*, i8** %type, align 8
  %arrayidx709 = getelementptr inbounds i8, i8* %412, i64 1
  %413 = load i8, i8* %arrayidx709, align 1
  %conv710 = sext i8 %413 to i32
  %cmp711 = icmp eq i32 %conv710, 58
  br i1 %cmp711, label %if.then.713, label %if.else.722

if.then.713:                                      ; preds = %lor.lhs.false.708, %lor.lhs.false.703, %lor.lhs.false.698, %lor.lhs.false.693, %lor.lhs.false.688, %lor.lhs.false.683, %land.lhs.true.680
  %414 = load i8*, i8** %type, align 8
  %incdec.ptr714 = getelementptr inbounds i8, i8* %414, i32 1
  store i8* %incdec.ptr714, i8** %type, align 8
  %call715 = call %struct._PerlIO** @Perl_PerlIO_stdout()
  store %struct._PerlIO** %call715, %struct._PerlIO*** %fp, align 8
  %415 = load %struct.io*, %struct.io** %io, align 8
  %sv_any716 = getelementptr inbounds %struct.io, %struct.io* %415, i32 0, i32 0
  %416 = load %struct.xpvio*, %struct.xpvio** %sv_any716, align 8
  %xio_type717 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %416, i32 0, i32 21
  store i8 45, i8* %xio_type717, align 1
  %417 = load i32, i32* %num_svs.addr, align 4
  %cmp718 = icmp sgt i32 %417, 1
  br i1 %cmp718, label %if.then.720, label %if.end.721

if.then.720:                                      ; preds = %if.then.713
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0), i32 45)
  br label %if.end.721

if.end.721:                                       ; preds = %if.then.720, %if.then.713
  br label %if.end.731

if.else.722:                                      ; preds = %lor.lhs.false.708, %for.end.676
  %418 = load i32, i32* %num_svs.addr, align 4
  %tobool723 = icmp ne i32 %418, 0
  br i1 %tobool723, label %if.end.728, label %if.then.724

if.then.724:                                      ; preds = %if.else.722
  %419 = load i8*, i8** %type, align 8
  %420 = load i8*, i8** %type, align 8
  %call725 = call i64 @strlen(i8* %420)
  %call726 = call %struct.sv* @Perl_newSVpvn(i8* %419, i64 %call725)
  %call727 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call726)
  store %struct.sv* %call727, %struct.sv** %namesv, align 8
  store i32 1, i32* %num_svs.addr, align 4
  store %struct.sv** %namesv, %struct.sv*** %svp.addr, align 8
  store i8* null, i8** %type, align 8
  br label %if.end.728

if.end.728:                                       ; preds = %if.then.724, %if.else.722
  %421 = load i8*, i8** %type, align 8
  %arraydecay729 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %422 = load i32, i32* %num_svs.addr, align 4
  %423 = load %struct.sv**, %struct.sv*** %svp.addr, align 8
  %call730 = call %struct._PerlIO** @PerlIO_openn(i8* %421, i8* %arraydecay729, i32 -1, i32 0, i32 0, %struct._PerlIO** null, i32 %422, %struct.sv** %423)
  store %struct._PerlIO** %call730, %struct._PerlIO*** %fp, align 8
  br label %if.end.731

if.end.731:                                       ; preds = %if.end.728, %if.end.721
  br label %if.end.732

if.end.732:                                       ; preds = %if.end.731, %if.end.650
  %424 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %tobool733 = icmp ne %struct._PerlIO** %424, null
  br i1 %tobool733, label %if.end.764, label %land.lhs.true.734

land.lhs.true.734:                                ; preds = %if.end.732
  %425 = load i8*, i8** %type, align 8
  %tobool735 = icmp ne i8* %425, null
  br i1 %tobool735, label %land.lhs.true.736, label %if.end.764

land.lhs.true.736:                                ; preds = %land.lhs.true.734
  %426 = load i8*, i8** %type, align 8
  %427 = load i8, i8* %426, align 1
  %conv737 = sext i8 %427 to i32
  %tobool738 = icmp ne i32 %conv737, 0
  br i1 %tobool738, label %land.lhs.true.739, label %if.end.764

land.lhs.true.739:                                ; preds = %land.lhs.true.736
  %428 = load i8*, i8** %type, align 8
  %429 = load i8, i8* %428, align 1
  %conv740 = sext i8 %429 to i32
  %cmp741 = icmp ne i32 %conv740, 58
  br i1 %cmp741, label %land.lhs.true.743, label %if.end.764

land.lhs.true.743:                                ; preds = %land.lhs.true.739
  %430 = load i8*, i8** %type, align 8
  %431 = load i8, i8* %430, align 1
  %conv744 = sext i8 %431 to i32
  %cmp745 = icmp sge i32 %conv744, 65
  br i1 %cmp745, label %land.lhs.true.747, label %lor.lhs.false.751

land.lhs.true.747:                                ; preds = %land.lhs.true.743
  %432 = load i8*, i8** %type, align 8
  %433 = load i8, i8* %432, align 1
  %conv748 = sext i8 %433 to i32
  %cmp749 = icmp sle i32 %conv748, 90
  br i1 %cmp749, label %if.end.764, label %lor.lhs.false.751

lor.lhs.false.751:                                ; preds = %land.lhs.true.747, %land.lhs.true.743
  %434 = load i8*, i8** %type, align 8
  %435 = load i8, i8* %434, align 1
  %conv752 = sext i8 %435 to i32
  %cmp753 = icmp sge i32 %conv752, 97
  br i1 %cmp753, label %land.lhs.true.755, label %lor.lhs.false.759

land.lhs.true.755:                                ; preds = %lor.lhs.false.751
  %436 = load i8*, i8** %type, align 8
  %437 = load i8, i8* %436, align 1
  %conv756 = sext i8 %437 to i32
  %cmp757 = icmp sle i32 %conv756, 122
  br i1 %cmp757, label %if.end.764, label %lor.lhs.false.759

lor.lhs.false.759:                                ; preds = %land.lhs.true.755, %lor.lhs.false.751
  %438 = load i8*, i8** %type, align 8
  %439 = load i8, i8* %438, align 1
  %conv760 = sext i8 %439 to i32
  %cmp761 = icmp eq i32 %conv760, 95
  br i1 %cmp761, label %if.end.764, label %if.then.763

if.then.763:                                      ; preds = %lor.lhs.false.759
  br label %unknown_open_mode

if.end.764:                                       ; preds = %lor.lhs.false.759, %land.lhs.true.755, %land.lhs.true.747, %land.lhs.true.739, %land.lhs.true.736, %land.lhs.true.734, %if.end.732
  br label %if.end.1172

if.else.765:                                      ; preds = %if.else.447
  %440 = load i8*, i8** %type, align 8
  %441 = load i8, i8* %440, align 1
  %conv766 = sext i8 %441 to i32
  %cmp767 = icmp eq i32 %conv766, 60
  br i1 %cmp767, label %if.then.769, label %if.else.900

if.then.769:                                      ; preds = %if.else.765
  %442 = load i8*, i8** %type, align 8
  %incdec.ptr770 = getelementptr inbounds i8, i8* %442, i32 1
  store i8* %incdec.ptr770, i8** %type, align 8
  br label %for.cond.771

for.cond.771:                                     ; preds = %for.inc.793, %if.then.769
  %443 = load i8*, i8** %type, align 8
  %444 = load i8, i8* %443, align 1
  %conv772 = sext i8 %444 to i32
  %cmp773 = icmp eq i32 %conv772, 32
  br i1 %cmp773, label %lor.end.791, label %lor.lhs.false.775

lor.lhs.false.775:                                ; preds = %for.cond.771
  %445 = load i8*, i8** %type, align 8
  %446 = load i8, i8* %445, align 1
  %conv776 = sext i8 %446 to i32
  %cmp777 = icmp eq i32 %conv776, 9
  br i1 %cmp777, label %lor.end.791, label %lor.lhs.false.779

lor.lhs.false.779:                                ; preds = %lor.lhs.false.775
  %447 = load i8*, i8** %type, align 8
  %448 = load i8, i8* %447, align 1
  %conv780 = sext i8 %448 to i32
  %cmp781 = icmp eq i32 %conv780, 10
  br i1 %cmp781, label %lor.end.791, label %lor.lhs.false.783

lor.lhs.false.783:                                ; preds = %lor.lhs.false.779
  %449 = load i8*, i8** %type, align 8
  %450 = load i8, i8* %449, align 1
  %conv784 = sext i8 %450 to i32
  %cmp785 = icmp eq i32 %conv784, 13
  br i1 %cmp785, label %lor.end.791, label %lor.rhs.787

lor.rhs.787:                                      ; preds = %lor.lhs.false.783
  %451 = load i8*, i8** %type, align 8
  %452 = load i8, i8* %451, align 1
  %conv788 = sext i8 %452 to i32
  %cmp789 = icmp eq i32 %conv788, 12
  br label %lor.end.791

lor.end.791:                                      ; preds = %lor.rhs.787, %lor.lhs.false.783, %lor.lhs.false.779, %lor.lhs.false.775, %for.cond.771
  %453 = phi i1 [ true, %lor.lhs.false.783 ], [ true, %lor.lhs.false.779 ], [ true, %lor.lhs.false.775 ], [ true, %for.cond.771 ], [ %cmp789, %lor.rhs.787 ]
  br i1 %453, label %for.body.792, label %for.end.795

for.body.792:                                     ; preds = %lor.end.791
  br label %for.inc.793

for.inc.793:                                      ; preds = %for.body.792
  %454 = load i8*, i8** %type, align 8
  %incdec.ptr794 = getelementptr inbounds i8, i8* %454, i32 1
  store i8* %incdec.ptr794, i8** %type, align 8
  br label %for.cond.771

for.end.795:                                      ; preds = %lor.end.791
  %arrayidx796 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i64 0
  store i8 114, i8* %arrayidx796, align 1
  %455 = load i8, i8* %in_raw, align 1
  %tobool797 = icmp ne i8 %455, 0
  br i1 %tobool797, label %if.then.798, label %if.else.801

if.then.798:                                      ; preds = %for.end.795
  %arraydecay799 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %call800 = call i8* @strcat(i8* %arraydecay799, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.807

if.else.801:                                      ; preds = %for.end.795
  %456 = load i8, i8* %in_crlf, align 1
  %tobool802 = icmp ne i8 %456, 0
  br i1 %tobool802, label %if.then.803, label %if.end.806

if.then.803:                                      ; preds = %if.else.801
  %arraydecay804 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %call805 = call i8* @strcat(i8* %arraydecay804, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.806

if.end.806:                                       ; preds = %if.then.803, %if.else.801
  br label %if.end.807

if.end.807:                                       ; preds = %if.end.806, %if.then.798
  %457 = load i8*, i8** %type, align 8
  %458 = load i8, i8* %457, align 1
  %conv808 = sext i8 %458 to i32
  %cmp809 = icmp eq i32 %conv808, 38
  br i1 %cmp809, label %if.then.811, label %if.end.812

if.then.811:                                      ; preds = %if.end.807
  br label %duplicity

if.end.812:                                       ; preds = %if.end.807
  %459 = load i8*, i8** %type, align 8
  %460 = load i8, i8* %459, align 1
  %conv813 = sext i8 %460 to i32
  %cmp814 = icmp eq i32 %conv813, 45
  br i1 %cmp814, label %land.lhs.true.816, label %if.else.858

land.lhs.true.816:                                ; preds = %if.end.812
  %461 = load i8*, i8** %type, align 8
  %arrayidx817 = getelementptr inbounds i8, i8* %461, i64 1
  %462 = load i8, i8* %arrayidx817, align 1
  %tobool818 = icmp ne i8 %462, 0
  br i1 %tobool818, label %lor.lhs.false.819, label %if.then.849

lor.lhs.false.819:                                ; preds = %land.lhs.true.816
  %463 = load i8*, i8** %type, align 8
  %arrayidx820 = getelementptr inbounds i8, i8* %463, i64 1
  %464 = load i8, i8* %arrayidx820, align 1
  %conv821 = sext i8 %464 to i32
  %cmp822 = icmp eq i32 %conv821, 32
  br i1 %cmp822, label %if.then.849, label %lor.lhs.false.824

lor.lhs.false.824:                                ; preds = %lor.lhs.false.819
  %465 = load i8*, i8** %type, align 8
  %arrayidx825 = getelementptr inbounds i8, i8* %465, i64 1
  %466 = load i8, i8* %arrayidx825, align 1
  %conv826 = sext i8 %466 to i32
  %cmp827 = icmp eq i32 %conv826, 9
  br i1 %cmp827, label %if.then.849, label %lor.lhs.false.829

lor.lhs.false.829:                                ; preds = %lor.lhs.false.824
  %467 = load i8*, i8** %type, align 8
  %arrayidx830 = getelementptr inbounds i8, i8* %467, i64 1
  %468 = load i8, i8* %arrayidx830, align 1
  %conv831 = sext i8 %468 to i32
  %cmp832 = icmp eq i32 %conv831, 10
  br i1 %cmp832, label %if.then.849, label %lor.lhs.false.834

lor.lhs.false.834:                                ; preds = %lor.lhs.false.829
  %469 = load i8*, i8** %type, align 8
  %arrayidx835 = getelementptr inbounds i8, i8* %469, i64 1
  %470 = load i8, i8* %arrayidx835, align 1
  %conv836 = sext i8 %470 to i32
  %cmp837 = icmp eq i32 %conv836, 13
  br i1 %cmp837, label %if.then.849, label %lor.lhs.false.839

lor.lhs.false.839:                                ; preds = %lor.lhs.false.834
  %471 = load i8*, i8** %type, align 8
  %arrayidx840 = getelementptr inbounds i8, i8* %471, i64 1
  %472 = load i8, i8* %arrayidx840, align 1
  %conv841 = sext i8 %472 to i32
  %cmp842 = icmp eq i32 %conv841, 12
  br i1 %cmp842, label %if.then.849, label %lor.lhs.false.844

lor.lhs.false.844:                                ; preds = %lor.lhs.false.839
  %473 = load i8*, i8** %type, align 8
  %arrayidx845 = getelementptr inbounds i8, i8* %473, i64 1
  %474 = load i8, i8* %arrayidx845, align 1
  %conv846 = sext i8 %474 to i32
  %cmp847 = icmp eq i32 %conv846, 58
  br i1 %cmp847, label %if.then.849, label %if.else.858

if.then.849:                                      ; preds = %lor.lhs.false.844, %lor.lhs.false.839, %lor.lhs.false.834, %lor.lhs.false.829, %lor.lhs.false.824, %lor.lhs.false.819, %land.lhs.true.816
  %475 = load i8*, i8** %type, align 8
  %incdec.ptr850 = getelementptr inbounds i8, i8* %475, i32 1
  store i8* %incdec.ptr850, i8** %type, align 8
  %call851 = call %struct._PerlIO** @Perl_PerlIO_stdin()
  store %struct._PerlIO** %call851, %struct._PerlIO*** %fp, align 8
  %476 = load %struct.io*, %struct.io** %io, align 8
  %sv_any852 = getelementptr inbounds %struct.io, %struct.io* %476, i32 0, i32 0
  %477 = load %struct.xpvio*, %struct.xpvio** %sv_any852, align 8
  %xio_type853 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %477, i32 0, i32 21
  store i8 45, i8* %xio_type853, align 1
  %478 = load i32, i32* %num_svs.addr, align 4
  %cmp854 = icmp sgt i32 %478, 1
  br i1 %cmp854, label %if.then.856, label %if.end.857

if.then.856:                                      ; preds = %if.then.849
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0), i32 45)
  br label %if.end.857

if.end.857:                                       ; preds = %if.then.856, %if.then.849
  br label %if.end.867

if.else.858:                                      ; preds = %lor.lhs.false.844, %if.end.812
  %479 = load i32, i32* %num_svs.addr, align 4
  %tobool859 = icmp ne i32 %479, 0
  br i1 %tobool859, label %if.end.864, label %if.then.860

if.then.860:                                      ; preds = %if.else.858
  %480 = load i8*, i8** %type, align 8
  %481 = load i8*, i8** %type, align 8
  %call861 = call i64 @strlen(i8* %481)
  %call862 = call %struct.sv* @Perl_newSVpvn(i8* %480, i64 %call861)
  %call863 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call862)
  store %struct.sv* %call863, %struct.sv** %namesv, align 8
  store i32 1, i32* %num_svs.addr, align 4
  store %struct.sv** %namesv, %struct.sv*** %svp.addr, align 8
  store i8* null, i8** %type, align 8
  br label %if.end.864

if.end.864:                                       ; preds = %if.then.860, %if.else.858
  %482 = load i8*, i8** %type, align 8
  %arraydecay865 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %483 = load i32, i32* %num_svs.addr, align 4
  %484 = load %struct.sv**, %struct.sv*** %svp.addr, align 8
  %call866 = call %struct._PerlIO** @PerlIO_openn(i8* %482, i8* %arraydecay865, i32 -1, i32 0, i32 0, %struct._PerlIO** null, i32 %483, %struct.sv** %484)
  store %struct._PerlIO** %call866, %struct._PerlIO*** %fp, align 8
  br label %if.end.867

if.end.867:                                       ; preds = %if.end.864, %if.end.857
  %485 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %tobool868 = icmp ne %struct._PerlIO** %485, null
  br i1 %tobool868, label %if.end.899, label %land.lhs.true.869

land.lhs.true.869:                                ; preds = %if.end.867
  %486 = load i8*, i8** %type, align 8
  %tobool870 = icmp ne i8* %486, null
  br i1 %tobool870, label %land.lhs.true.871, label %if.end.899

land.lhs.true.871:                                ; preds = %land.lhs.true.869
  %487 = load i8*, i8** %type, align 8
  %488 = load i8, i8* %487, align 1
  %conv872 = sext i8 %488 to i32
  %tobool873 = icmp ne i32 %conv872, 0
  br i1 %tobool873, label %land.lhs.true.874, label %if.end.899

land.lhs.true.874:                                ; preds = %land.lhs.true.871
  %489 = load i8*, i8** %type, align 8
  %490 = load i8, i8* %489, align 1
  %conv875 = sext i8 %490 to i32
  %cmp876 = icmp ne i32 %conv875, 58
  br i1 %cmp876, label %land.lhs.true.878, label %if.end.899

land.lhs.true.878:                                ; preds = %land.lhs.true.874
  %491 = load i8*, i8** %type, align 8
  %492 = load i8, i8* %491, align 1
  %conv879 = sext i8 %492 to i32
  %cmp880 = icmp sge i32 %conv879, 65
  br i1 %cmp880, label %land.lhs.true.882, label %lor.lhs.false.886

land.lhs.true.882:                                ; preds = %land.lhs.true.878
  %493 = load i8*, i8** %type, align 8
  %494 = load i8, i8* %493, align 1
  %conv883 = sext i8 %494 to i32
  %cmp884 = icmp sle i32 %conv883, 90
  br i1 %cmp884, label %if.end.899, label %lor.lhs.false.886

lor.lhs.false.886:                                ; preds = %land.lhs.true.882, %land.lhs.true.878
  %495 = load i8*, i8** %type, align 8
  %496 = load i8, i8* %495, align 1
  %conv887 = sext i8 %496 to i32
  %cmp888 = icmp sge i32 %conv887, 97
  br i1 %cmp888, label %land.lhs.true.890, label %lor.lhs.false.894

land.lhs.true.890:                                ; preds = %lor.lhs.false.886
  %497 = load i8*, i8** %type, align 8
  %498 = load i8, i8* %497, align 1
  %conv891 = sext i8 %498 to i32
  %cmp892 = icmp sle i32 %conv891, 122
  br i1 %cmp892, label %if.end.899, label %lor.lhs.false.894

lor.lhs.false.894:                                ; preds = %land.lhs.true.890, %lor.lhs.false.886
  %499 = load i8*, i8** %type, align 8
  %500 = load i8, i8* %499, align 1
  %conv895 = sext i8 %500 to i32
  %cmp896 = icmp eq i32 %conv895, 95
  br i1 %cmp896, label %if.end.899, label %if.then.898

if.then.898:                                      ; preds = %lor.lhs.false.894
  br label %unknown_open_mode

if.end.899:                                       ; preds = %lor.lhs.false.894, %land.lhs.true.890, %land.lhs.true.882, %land.lhs.true.874, %land.lhs.true.871, %land.lhs.true.869, %if.end.867
  br label %if.end.1171

if.else.900:                                      ; preds = %if.else.765
  %501 = load i32, i32* %num_svs.addr, align 4
  %tobool901 = icmp ne i32 %501, 0
  br i1 %tobool901, label %land.lhs.true.902, label %lor.lhs.false.912

land.lhs.true.902:                                ; preds = %if.else.900
  %502 = load i8*, i8** %type, align 8
  %arrayidx903 = getelementptr inbounds i8, i8* %502, i64 0
  %503 = load i8, i8* %arrayidx903, align 1
  %conv904 = sext i8 %503 to i32
  %cmp905 = icmp eq i32 %conv904, 45
  br i1 %cmp905, label %land.lhs.true.907, label %lor.lhs.false.912

land.lhs.true.907:                                ; preds = %land.lhs.true.902
  %504 = load i8*, i8** %type, align 8
  %arrayidx908 = getelementptr inbounds i8, i8* %504, i64 1
  %505 = load i8, i8* %arrayidx908, align 1
  %conv909 = sext i8 %505 to i32
  %cmp910 = icmp eq i32 %conv909, 124
  br i1 %cmp910, label %if.then.923, label %lor.lhs.false.912

lor.lhs.false.912:                                ; preds = %land.lhs.true.907, %land.lhs.true.902, %if.else.900
  %506 = load i32, i32* %num_svs.addr, align 4
  %tobool913 = icmp ne i32 %506, 0
  br i1 %tobool913, label %if.else.1105, label %land.lhs.true.914

land.lhs.true.914:                                ; preds = %lor.lhs.false.912
  %507 = load i8*, i8** %tend, align 8
  %508 = load i8*, i8** %type, align 8
  %add.ptr915 = getelementptr inbounds i8, i8* %508, i64 1
  %cmp916 = icmp ugt i8* %507, %add.ptr915
  br i1 %cmp916, label %land.lhs.true.918, label %if.else.1105

land.lhs.true.918:                                ; preds = %land.lhs.true.914
  %509 = load i8*, i8** %tend, align 8
  %arrayidx919 = getelementptr inbounds i8, i8* %509, i64 -1
  %510 = load i8, i8* %arrayidx919, align 1
  %conv920 = sext i8 %510 to i32
  %cmp921 = icmp eq i32 %conv920, 124
  br i1 %cmp921, label %if.then.923, label %if.else.1105

if.then.923:                                      ; preds = %land.lhs.true.918, %land.lhs.true.907
  %511 = load i32, i32* %num_svs.addr, align 4
  %tobool924 = icmp ne i32 %511, 0
  br i1 %tobool924, label %if.then.925, label %if.else.927

if.then.925:                                      ; preds = %if.then.923
  %512 = load i8*, i8** %type, align 8
  %add.ptr926 = getelementptr inbounds i8, i8* %512, i64 2
  store i8* %add.ptr926, i8** %type, align 8
  br label %if.end.991

if.else.927:                                      ; preds = %if.then.923
  %513 = load i8*, i8** %tend, align 8
  %incdec.ptr928 = getelementptr inbounds i8, i8* %513, i32 -1
  store i8* %incdec.ptr928, i8** %tend, align 8
  store i8 0, i8* %incdec.ptr928, align 1
  br label %while.cond.929

while.cond.929:                                   ; preds = %while.body.959, %if.else.927
  %514 = load i8*, i8** %tend, align 8
  %515 = load i8*, i8** %type, align 8
  %cmp930 = icmp ugt i8* %514, %515
  br i1 %cmp930, label %land.rhs.932, label %land.end.958

land.rhs.932:                                     ; preds = %while.cond.929
  %516 = load i8*, i8** %tend, align 8
  %arrayidx933 = getelementptr inbounds i8, i8* %516, i64 -1
  %517 = load i8, i8* %arrayidx933, align 1
  %conv934 = sext i8 %517 to i32
  %cmp935 = icmp eq i32 %conv934, 32
  br i1 %cmp935, label %lor.end.957, label %lor.lhs.false.937

lor.lhs.false.937:                                ; preds = %land.rhs.932
  %518 = load i8*, i8** %tend, align 8
  %arrayidx938 = getelementptr inbounds i8, i8* %518, i64 -1
  %519 = load i8, i8* %arrayidx938, align 1
  %conv939 = sext i8 %519 to i32
  %cmp940 = icmp eq i32 %conv939, 9
  br i1 %cmp940, label %lor.end.957, label %lor.lhs.false.942

lor.lhs.false.942:                                ; preds = %lor.lhs.false.937
  %520 = load i8*, i8** %tend, align 8
  %arrayidx943 = getelementptr inbounds i8, i8* %520, i64 -1
  %521 = load i8, i8* %arrayidx943, align 1
  %conv944 = sext i8 %521 to i32
  %cmp945 = icmp eq i32 %conv944, 10
  br i1 %cmp945, label %lor.end.957, label %lor.lhs.false.947

lor.lhs.false.947:                                ; preds = %lor.lhs.false.942
  %522 = load i8*, i8** %tend, align 8
  %arrayidx948 = getelementptr inbounds i8, i8* %522, i64 -1
  %523 = load i8, i8* %arrayidx948, align 1
  %conv949 = sext i8 %523 to i32
  %cmp950 = icmp eq i32 %conv949, 13
  br i1 %cmp950, label %lor.end.957, label %lor.rhs.952

lor.rhs.952:                                      ; preds = %lor.lhs.false.947
  %524 = load i8*, i8** %tend, align 8
  %arrayidx953 = getelementptr inbounds i8, i8* %524, i64 -1
  %525 = load i8, i8* %arrayidx953, align 1
  %conv954 = sext i8 %525 to i32
  %cmp955 = icmp eq i32 %conv954, 12
  br label %lor.end.957

lor.end.957:                                      ; preds = %lor.rhs.952, %lor.lhs.false.947, %lor.lhs.false.942, %lor.lhs.false.937, %land.rhs.932
  %526 = phi i1 [ true, %lor.lhs.false.947 ], [ true, %lor.lhs.false.942 ], [ true, %lor.lhs.false.937 ], [ true, %land.rhs.932 ], [ %cmp955, %lor.rhs.952 ]
  br label %land.end.958

land.end.958:                                     ; preds = %lor.end.957, %while.cond.929
  %527 = phi i1 [ false, %while.cond.929 ], [ %526, %lor.end.957 ]
  br i1 %527, label %while.body.959, label %while.end.961

while.body.959:                                   ; preds = %land.end.958
  %528 = load i8*, i8** %tend, align 8
  %incdec.ptr960 = getelementptr inbounds i8, i8* %528, i32 -1
  store i8* %incdec.ptr960, i8** %tend, align 8
  store i8 0, i8* %incdec.ptr960, align 1
  br label %while.cond.929

while.end.961:                                    ; preds = %land.end.958
  br label %for.cond.962

for.cond.962:                                     ; preds = %for.inc.984, %while.end.961
  %529 = load i8*, i8** %type, align 8
  %530 = load i8, i8* %529, align 1
  %conv963 = sext i8 %530 to i32
  %cmp964 = icmp eq i32 %conv963, 32
  br i1 %cmp964, label %lor.end.982, label %lor.lhs.false.966

lor.lhs.false.966:                                ; preds = %for.cond.962
  %531 = load i8*, i8** %type, align 8
  %532 = load i8, i8* %531, align 1
  %conv967 = sext i8 %532 to i32
  %cmp968 = icmp eq i32 %conv967, 9
  br i1 %cmp968, label %lor.end.982, label %lor.lhs.false.970

lor.lhs.false.970:                                ; preds = %lor.lhs.false.966
  %533 = load i8*, i8** %type, align 8
  %534 = load i8, i8* %533, align 1
  %conv971 = sext i8 %534 to i32
  %cmp972 = icmp eq i32 %conv971, 10
  br i1 %cmp972, label %lor.end.982, label %lor.lhs.false.974

lor.lhs.false.974:                                ; preds = %lor.lhs.false.970
  %535 = load i8*, i8** %type, align 8
  %536 = load i8, i8* %535, align 1
  %conv975 = sext i8 %536 to i32
  %cmp976 = icmp eq i32 %conv975, 13
  br i1 %cmp976, label %lor.end.982, label %lor.rhs.978

lor.rhs.978:                                      ; preds = %lor.lhs.false.974
  %537 = load i8*, i8** %type, align 8
  %538 = load i8, i8* %537, align 1
  %conv979 = sext i8 %538 to i32
  %cmp980 = icmp eq i32 %conv979, 12
  br label %lor.end.982

lor.end.982:                                      ; preds = %lor.rhs.978, %lor.lhs.false.974, %lor.lhs.false.970, %lor.lhs.false.966, %for.cond.962
  %539 = phi i1 [ true, %lor.lhs.false.974 ], [ true, %lor.lhs.false.970 ], [ true, %lor.lhs.false.966 ], [ true, %for.cond.962 ], [ %cmp980, %lor.rhs.978 ]
  br i1 %539, label %for.body.983, label %for.end.986

for.body.983:                                     ; preds = %lor.end.982
  br label %for.inc.984

for.inc.984:                                      ; preds = %for.body.983
  %540 = load i8*, i8** %type, align 8
  %incdec.ptr985 = getelementptr inbounds i8, i8* %540, i32 1
  store i8* %incdec.ptr985, i8** %type, align 8
  br label %for.cond.962

for.end.986:                                      ; preds = %lor.end.982
  %541 = load i8*, i8** %type, align 8
  store i8* %541, i8** %name.addr, align 8
  %542 = load i8*, i8** %tend, align 8
  %543 = load i8*, i8** %type, align 8
  %sub.ptr.lhs.cast987 = ptrtoint i8* %542 to i64
  %sub.ptr.rhs.cast988 = ptrtoint i8* %543 to i64
  %sub.ptr.sub989 = sub i64 %sub.ptr.lhs.cast987, %sub.ptr.rhs.cast988
  %conv990 = trunc i64 %sub.ptr.sub989 to i32
  store i32 %conv990, i32* %len.addr, align 4
  br label %if.end.991

if.end.991:                                       ; preds = %for.end.986, %if.then.925
  %544 = load i8*, i8** %name.addr, align 8
  %545 = load i8, i8* %544, align 1
  %conv992 = sext i8 %545 to i32
  %cmp993 = icmp eq i32 %conv992, 0
  br i1 %cmp993, label %if.then.995, label %if.end.1026

if.then.995:                                      ; preds = %if.end.991
  %546 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings996 = getelementptr inbounds %struct.cop, %struct.cop* %546, i32 0, i32 14
  %547 = load %struct.sv*, %struct.sv** %cop_warnings996, align 8
  %cmp997 = icmp ne %struct.sv* %547, null
  br i1 %cmp997, label %land.lhs.true.999, label %lor.lhs.false.1015

land.lhs.true.999:                                ; preds = %if.then.995
  %548 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1000 = getelementptr inbounds %struct.cop, %struct.cop* %548, i32 0, i32 14
  %549 = load %struct.sv*, %struct.sv** %cop_warnings1000, align 8
  %cmp1001 = icmp ne %struct.sv* %549, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp1001, label %land.lhs.true.1003, label %lor.lhs.false.1015

land.lhs.true.1003:                               ; preds = %land.lhs.true.999
  %550 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1004 = getelementptr inbounds %struct.cop, %struct.cop* %550, i32 0, i32 14
  %551 = load %struct.sv*, %struct.sv** %cop_warnings1004, align 8
  %cmp1005 = icmp eq %struct.sv* %551, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp1005, label %if.then.1023, label %lor.lhs.false.1007

lor.lhs.false.1007:                               ; preds = %land.lhs.true.1003
  %552 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1008 = getelementptr inbounds %struct.cop, %struct.cop* %552, i32 0, i32 14
  %553 = load %struct.sv*, %struct.sv** %cop_warnings1008, align 8
  %sv_any1009 = getelementptr inbounds %struct.sv, %struct.sv* %553, i32 0, i32 0
  %554 = load i8*, i8** %sv_any1009, align 8
  %555 = bitcast i8* %554 to %struct.xpv*
  %xpv_pv1010 = getelementptr inbounds %struct.xpv, %struct.xpv* %555, i32 0, i32 0
  %556 = load i8*, i8** %xpv_pv1010, align 8
  %arrayidx1011 = getelementptr inbounds i8, i8* %556, i64 2
  %557 = load i8, i8* %arrayidx1011, align 1
  %conv1012 = sext i8 %557 to i32
  %and1013 = and i32 %conv1012, 16
  %tobool1014 = icmp ne i32 %and1013, 0
  br i1 %tobool1014, label %if.then.1023, label %lor.lhs.false.1015

lor.lhs.false.1015:                               ; preds = %lor.lhs.false.1007, %land.lhs.true.999, %if.then.995
  %558 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1016 = getelementptr inbounds %struct.cop, %struct.cop* %558, i32 0, i32 14
  %559 = load %struct.sv*, %struct.sv** %cop_warnings1016, align 8
  %cmp1017 = icmp eq %struct.sv* %559, null
  br i1 %cmp1017, label %land.lhs.true.1019, label %if.end.1024

land.lhs.true.1019:                               ; preds = %lor.lhs.false.1015
  %560 = load i8, i8* @PL_dowarn, align 1
  %conv1020 = zext i8 %560 to i32
  %and1021 = and i32 %conv1020, 1
  %tobool1022 = icmp ne i32 %and1021, 0
  br i1 %tobool1022, label %if.then.1023, label %if.end.1024

if.then.1023:                                     ; preds = %land.lhs.true.1019, %lor.lhs.false.1007, %land.lhs.true.1003
  call void (i32, i8*, ...) @Perl_warner(i32 10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.1024

if.end.1024:                                      ; preds = %if.then.1023, %land.lhs.true.1019, %lor.lhs.false.1015
  %call1025 = call i32* @__errno_location()
  store i32 32, i32* %call1025, align 4
  br label %say_false

if.end.1026:                                      ; preds = %if.end.991
  %561 = load i8*, i8** %name.addr, align 8
  %562 = load i8, i8* %561, align 1
  %conv1027 = sext i8 %562 to i32
  %cmp1028 = icmp eq i32 %conv1027, 45
  br i1 %cmp1028, label %land.lhs.true.1030, label %if.then.1037

land.lhs.true.1030:                               ; preds = %if.end.1026
  %563 = load i8*, i8** %name.addr, align 8
  %arrayidx1031 = getelementptr inbounds i8, i8* %563, i64 1
  %564 = load i8, i8* %arrayidx1031, align 1
  %conv1032 = sext i8 %564 to i32
  %cmp1033 = icmp eq i32 %conv1032, 0
  br i1 %cmp1033, label %lor.lhs.false.1035, label %if.then.1037

lor.lhs.false.1035:                               ; preds = %land.lhs.true.1030
  %565 = load i32, i32* %num_svs.addr, align 4
  %tobool1036 = icmp ne i32 %565, 0
  br i1 %tobool1036, label %if.then.1037, label %if.end.1041

if.then.1037:                                     ; preds = %lor.lhs.false.1035, %land.lhs.true.1030, %if.end.1026
  %566 = load i8, i8* @PL_tainting, align 1
  %tobool1038 = icmp ne i8 %566, 0
  br i1 %tobool1038, label %if.then.1039, label %if.end.1040

if.then.1039:                                     ; preds = %if.then.1037
  call void @Perl_taint_env()
  br label %if.end.1040

if.end.1040:                                      ; preds = %if.then.1039, %if.then.1037
  br label %if.end.1041

if.end.1041:                                      ; preds = %if.end.1040, %lor.lhs.false.1035
  %567 = load i8, i8* @PL_tainting, align 1
  %tobool1042 = icmp ne i8 %567, 0
  br i1 %tobool1042, label %if.then.1043, label %if.end.1044

if.then.1043:                                     ; preds = %if.end.1041
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.1044

if.end.1044:                                      ; preds = %if.then.1043, %if.end.1041
  %arrayidx1045 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i64 0
  store i8 114, i8* %arrayidx1045, align 1
  %568 = load i8, i8* %in_raw, align 1
  %tobool1046 = icmp ne i8 %568, 0
  br i1 %tobool1046, label %if.then.1047, label %if.else.1050

if.then.1047:                                     ; preds = %if.end.1044
  %arraydecay1048 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %call1049 = call i8* @strcat(i8* %arraydecay1048, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.1056

if.else.1050:                                     ; preds = %if.end.1044
  %569 = load i8, i8* %in_crlf, align 1
  %tobool1051 = icmp ne i8 %569, 0
  br i1 %tobool1051, label %if.then.1052, label %if.end.1055

if.then.1052:                                     ; preds = %if.else.1050
  %arraydecay1053 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %call1054 = call i8* @strcat(i8* %arraydecay1053, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.1055

if.end.1055:                                      ; preds = %if.then.1052, %if.else.1050
  br label %if.end.1056

if.end.1056:                                      ; preds = %if.end.1055, %if.then.1047
  %570 = load i32, i32* %num_svs.addr, align 4
  %cmp1057 = icmp sgt i32 %570, 1
  br i1 %cmp1057, label %if.then.1059, label %if.else.1062

if.then.1059:                                     ; preds = %if.end.1056
  %arraydecay1060 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %571 = load i32, i32* %num_svs.addr, align 4
  %572 = load %struct.sv**, %struct.sv*** %svp.addr, align 8
  %call1061 = call %struct._PerlIO** @Perl_my_popen_list(i8* %arraydecay1060, i32 %571, %struct.sv** %572)
  store %struct._PerlIO** %call1061, %struct._PerlIO*** %fp, align 8
  br label %if.end.1065

if.else.1062:                                     ; preds = %if.end.1056
  %573 = load i8*, i8** %name.addr, align 8
  %arraydecay1063 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %call1064 = call %struct._PerlIO** @Perl_my_popen(i8* %573, i8* %arraydecay1063)
  store %struct._PerlIO** %call1064, %struct._PerlIO*** %fp, align 8
  br label %if.end.1065

if.end.1065:                                      ; preds = %if.else.1062, %if.then.1059
  %574 = load %struct.io*, %struct.io** %io, align 8
  %sv_any1066 = getelementptr inbounds %struct.io, %struct.io* %574, i32 0, i32 0
  %575 = load %struct.xpvio*, %struct.xpvio** %sv_any1066, align 8
  %xio_type1067 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %575, i32 0, i32 21
  store i8 124, i8* %xio_type1067, align 1
  %576 = load i32, i32* %num_svs.addr, align 4
  %tobool1068 = icmp ne i32 %576, 0
  br i1 %tobool1068, label %if.then.1069, label %if.end.1104

if.then.1069:                                     ; preds = %if.end.1065
  br label %for.cond.1070

for.cond.1070:                                    ; preds = %for.inc.1092, %if.then.1069
  %577 = load i8*, i8** %type, align 8
  %578 = load i8, i8* %577, align 1
  %conv1071 = sext i8 %578 to i32
  %cmp1072 = icmp eq i32 %conv1071, 32
  br i1 %cmp1072, label %lor.end.1090, label %lor.lhs.false.1074

lor.lhs.false.1074:                               ; preds = %for.cond.1070
  %579 = load i8*, i8** %type, align 8
  %580 = load i8, i8* %579, align 1
  %conv1075 = sext i8 %580 to i32
  %cmp1076 = icmp eq i32 %conv1075, 9
  br i1 %cmp1076, label %lor.end.1090, label %lor.lhs.false.1078

lor.lhs.false.1078:                               ; preds = %lor.lhs.false.1074
  %581 = load i8*, i8** %type, align 8
  %582 = load i8, i8* %581, align 1
  %conv1079 = sext i8 %582 to i32
  %cmp1080 = icmp eq i32 %conv1079, 10
  br i1 %cmp1080, label %lor.end.1090, label %lor.lhs.false.1082

lor.lhs.false.1082:                               ; preds = %lor.lhs.false.1078
  %583 = load i8*, i8** %type, align 8
  %584 = load i8, i8* %583, align 1
  %conv1083 = sext i8 %584 to i32
  %cmp1084 = icmp eq i32 %conv1083, 13
  br i1 %cmp1084, label %lor.end.1090, label %lor.rhs.1086

lor.rhs.1086:                                     ; preds = %lor.lhs.false.1082
  %585 = load i8*, i8** %type, align 8
  %586 = load i8, i8* %585, align 1
  %conv1087 = sext i8 %586 to i32
  %cmp1088 = icmp eq i32 %conv1087, 12
  br label %lor.end.1090

lor.end.1090:                                     ; preds = %lor.rhs.1086, %lor.lhs.false.1082, %lor.lhs.false.1078, %lor.lhs.false.1074, %for.cond.1070
  %587 = phi i1 [ true, %lor.lhs.false.1082 ], [ true, %lor.lhs.false.1078 ], [ true, %lor.lhs.false.1074 ], [ true, %for.cond.1070 ], [ %cmp1088, %lor.rhs.1086 ]
  br i1 %587, label %for.body.1091, label %for.end.1094

for.body.1091:                                    ; preds = %lor.end.1090
  br label %for.inc.1092

for.inc.1092:                                     ; preds = %for.body.1091
  %588 = load i8*, i8** %type, align 8
  %incdec.ptr1093 = getelementptr inbounds i8, i8* %588, i32 1
  store i8* %incdec.ptr1093, i8** %type, align 8
  br label %for.cond.1070

for.end.1094:                                     ; preds = %lor.end.1090
  %589 = load i8*, i8** %type, align 8
  %590 = load i8, i8* %589, align 1
  %tobool1095 = icmp ne i8 %590, 0
  br i1 %tobool1095, label %if.then.1096, label %if.end.1103

if.then.1096:                                     ; preds = %for.end.1094
  %591 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %arraydecay1097 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %592 = load i8*, i8** %type, align 8
  %call1098 = call i32 @PerlIO_apply_layers(%struct._PerlIO** %591, i8* %arraydecay1097, i8* %592)
  %cmp1099 = icmp ne i32 %call1098, 0
  br i1 %cmp1099, label %if.then.1101, label %if.end.1102

if.then.1101:                                     ; preds = %if.then.1096
  br label %say_false

if.end.1102:                                      ; preds = %if.then.1096
  br label %if.end.1103

if.end.1103:                                      ; preds = %if.end.1102, %for.end.1094
  br label %if.end.1104

if.end.1104:                                      ; preds = %if.end.1103, %if.end.1065
  br label %if.end.1170

if.else.1105:                                     ; preds = %land.lhs.true.918, %land.lhs.true.914, %lor.lhs.false.912
  %593 = load i32, i32* %num_svs.addr, align 4
  %tobool1106 = icmp ne i32 %593, 0
  br i1 %tobool1106, label %if.then.1107, label %if.end.1108

if.then.1107:                                     ; preds = %if.else.1105
  br label %unknown_open_mode

if.end.1108:                                      ; preds = %if.else.1105
  %594 = load i8*, i8** %type, align 8
  store i8* %594, i8** %name.addr, align 8
  %595 = load %struct.io*, %struct.io** %io, align 8
  %sv_any1109 = getelementptr inbounds %struct.io, %struct.io* %595, i32 0, i32 0
  %596 = load %struct.xpvio*, %struct.xpvio** %sv_any1109, align 8
  %xio_type1110 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %596, i32 0, i32 21
  store i8 60, i8* %xio_type1110, align 1
  br label %for.cond.1111

for.cond.1111:                                    ; preds = %for.inc.1133, %if.end.1108
  %597 = load i8*, i8** %name.addr, align 8
  %598 = load i8, i8* %597, align 1
  %conv1112 = sext i8 %598 to i32
  %cmp1113 = icmp eq i32 %conv1112, 32
  br i1 %cmp1113, label %lor.end.1131, label %lor.lhs.false.1115

lor.lhs.false.1115:                               ; preds = %for.cond.1111
  %599 = load i8*, i8** %name.addr, align 8
  %600 = load i8, i8* %599, align 1
  %conv1116 = sext i8 %600 to i32
  %cmp1117 = icmp eq i32 %conv1116, 9
  br i1 %cmp1117, label %lor.end.1131, label %lor.lhs.false.1119

lor.lhs.false.1119:                               ; preds = %lor.lhs.false.1115
  %601 = load i8*, i8** %name.addr, align 8
  %602 = load i8, i8* %601, align 1
  %conv1120 = sext i8 %602 to i32
  %cmp1121 = icmp eq i32 %conv1120, 10
  br i1 %cmp1121, label %lor.end.1131, label %lor.lhs.false.1123

lor.lhs.false.1123:                               ; preds = %lor.lhs.false.1119
  %603 = load i8*, i8** %name.addr, align 8
  %604 = load i8, i8* %603, align 1
  %conv1124 = sext i8 %604 to i32
  %cmp1125 = icmp eq i32 %conv1124, 13
  br i1 %cmp1125, label %lor.end.1131, label %lor.rhs.1127

lor.rhs.1127:                                     ; preds = %lor.lhs.false.1123
  %605 = load i8*, i8** %name.addr, align 8
  %606 = load i8, i8* %605, align 1
  %conv1128 = sext i8 %606 to i32
  %cmp1129 = icmp eq i32 %conv1128, 12
  br label %lor.end.1131

lor.end.1131:                                     ; preds = %lor.rhs.1127, %lor.lhs.false.1123, %lor.lhs.false.1119, %lor.lhs.false.1115, %for.cond.1111
  %607 = phi i1 [ true, %lor.lhs.false.1123 ], [ true, %lor.lhs.false.1119 ], [ true, %lor.lhs.false.1115 ], [ true, %for.cond.1111 ], [ %cmp1129, %lor.rhs.1127 ]
  br i1 %607, label %for.body.1132, label %for.end.1135

for.body.1132:                                    ; preds = %lor.end.1131
  br label %for.inc.1133

for.inc.1133:                                     ; preds = %for.body.1132
  %608 = load i8*, i8** %name.addr, align 8
  %incdec.ptr1134 = getelementptr inbounds i8, i8* %608, i32 1
  store i8* %incdec.ptr1134, i8** %name.addr, align 8
  br label %for.cond.1111

for.end.1135:                                     ; preds = %lor.end.1131
  %arrayidx1136 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i64 0
  store i8 114, i8* %arrayidx1136, align 1
  %609 = load i8, i8* %in_raw, align 1
  %tobool1137 = icmp ne i8 %609, 0
  br i1 %tobool1137, label %if.then.1138, label %if.else.1141

if.then.1138:                                     ; preds = %for.end.1135
  %arraydecay1139 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %call1140 = call i8* @strcat(i8* %arraydecay1139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.1147

if.else.1141:                                     ; preds = %for.end.1135
  %610 = load i8, i8* %in_crlf, align 1
  %tobool1142 = icmp ne i8 %610, 0
  br i1 %tobool1142, label %if.then.1143, label %if.end.1146

if.then.1143:                                     ; preds = %if.else.1141
  %arraydecay1144 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %call1145 = call i8* @strcat(i8* %arraydecay1144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.1146

if.end.1146:                                      ; preds = %if.then.1143, %if.else.1141
  br label %if.end.1147

if.end.1147:                                      ; preds = %if.end.1146, %if.then.1138
  %611 = load i8*, i8** %name.addr, align 8
  %612 = load i8, i8* %611, align 1
  %conv1148 = sext i8 %612 to i32
  %cmp1149 = icmp eq i32 %conv1148, 45
  br i1 %cmp1149, label %land.lhs.true.1151, label %if.else.1160

land.lhs.true.1151:                               ; preds = %if.end.1147
  %613 = load i8*, i8** %name.addr, align 8
  %arrayidx1152 = getelementptr inbounds i8, i8* %613, i64 1
  %614 = load i8, i8* %arrayidx1152, align 1
  %conv1153 = sext i8 %614 to i32
  %cmp1154 = icmp eq i32 %conv1153, 0
  br i1 %cmp1154, label %if.then.1156, label %if.else.1160

if.then.1156:                                     ; preds = %land.lhs.true.1151
  %call1157 = call %struct._PerlIO** @Perl_PerlIO_stdin()
  store %struct._PerlIO** %call1157, %struct._PerlIO*** %fp, align 8
  %615 = load %struct.io*, %struct.io** %io, align 8
  %sv_any1158 = getelementptr inbounds %struct.io, %struct.io* %615, i32 0, i32 0
  %616 = load %struct.xpvio*, %struct.xpvio** %sv_any1158, align 8
  %xio_type1159 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %616, i32 0, i32 21
  store i8 45, i8* %xio_type1159, align 1
  br label %if.end.1169

if.else.1160:                                     ; preds = %land.lhs.true.1151, %if.end.1147
  %617 = load i32, i32* %num_svs.addr, align 4
  %tobool1161 = icmp ne i32 %617, 0
  br i1 %tobool1161, label %if.end.1166, label %if.then.1162

if.then.1162:                                     ; preds = %if.else.1160
  %618 = load i8*, i8** %type, align 8
  %619 = load i8*, i8** %type, align 8
  %call1163 = call i64 @strlen(i8* %619)
  %call1164 = call %struct.sv* @Perl_newSVpvn(i8* %618, i64 %call1163)
  %call1165 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call1164)
  store %struct.sv* %call1165, %struct.sv** %namesv, align 8
  store i32 1, i32* %num_svs.addr, align 4
  store %struct.sv** %namesv, %struct.sv*** %svp.addr, align 8
  store i8* null, i8** %type, align 8
  br label %if.end.1166

if.end.1166:                                      ; preds = %if.then.1162, %if.else.1160
  %620 = load i8*, i8** %type, align 8
  %arraydecay1167 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  %621 = load i32, i32* %num_svs.addr, align 4
  %622 = load %struct.sv**, %struct.sv*** %svp.addr, align 8
  %call1168 = call %struct._PerlIO** @PerlIO_openn(i8* %620, i8* %arraydecay1167, i32 -1, i32 0, i32 0, %struct._PerlIO** null, i32 %621, %struct.sv** %622)
  store %struct._PerlIO** %call1168, %struct._PerlIO*** %fp, align 8
  br label %if.end.1169

if.end.1169:                                      ; preds = %if.end.1166, %if.then.1156
  br label %if.end.1170

if.end.1170:                                      ; preds = %if.end.1169, %if.end.1104
  br label %if.end.1171

if.end.1171:                                      ; preds = %if.end.1170, %if.end.899
  br label %if.end.1172

if.end.1172:                                      ; preds = %if.end.1171, %if.end.764
  br label %if.end.1173

if.end.1173:                                      ; preds = %if.end.1172, %if.end.446
  br label %if.end.1174

if.end.1174:                                      ; preds = %if.end.1173, %if.end.169
  %623 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %tobool1175 = icmp ne %struct._PerlIO** %623, null
  br i1 %tobool1175, label %if.end.1215, label %if.then.1176

if.then.1176:                                     ; preds = %if.end.1174
  %624 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1177 = getelementptr inbounds %struct.cop, %struct.cop* %624, i32 0, i32 14
  %625 = load %struct.sv*, %struct.sv** %cop_warnings1177, align 8
  %cmp1178 = icmp ne %struct.sv* %625, null
  br i1 %cmp1178, label %land.lhs.true.1180, label %lor.lhs.false.1196

land.lhs.true.1180:                               ; preds = %if.then.1176
  %626 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1181 = getelementptr inbounds %struct.cop, %struct.cop* %626, i32 0, i32 14
  %627 = load %struct.sv*, %struct.sv** %cop_warnings1181, align 8
  %cmp1182 = icmp ne %struct.sv* %627, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp1182, label %land.lhs.true.1184, label %lor.lhs.false.1196

land.lhs.true.1184:                               ; preds = %land.lhs.true.1180
  %628 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1185 = getelementptr inbounds %struct.cop, %struct.cop* %628, i32 0, i32 14
  %629 = load %struct.sv*, %struct.sv** %cop_warnings1185, align 8
  %cmp1186 = icmp eq %struct.sv* %629, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp1186, label %land.lhs.true.1204, label %lor.lhs.false.1188

lor.lhs.false.1188:                               ; preds = %land.lhs.true.1184
  %630 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1189 = getelementptr inbounds %struct.cop, %struct.cop* %630, i32 0, i32 14
  %631 = load %struct.sv*, %struct.sv** %cop_warnings1189, align 8
  %sv_any1190 = getelementptr inbounds %struct.sv, %struct.sv* %631, i32 0, i32 0
  %632 = load i8*, i8** %sv_any1190, align 8
  %633 = bitcast i8* %632 to %struct.xpv*
  %xpv_pv1191 = getelementptr inbounds %struct.xpv, %struct.xpv* %633, i32 0, i32 0
  %634 = load i8*, i8** %xpv_pv1191, align 8
  %arrayidx1192 = getelementptr inbounds i8, i8* %634, i64 2
  %635 = load i8, i8* %arrayidx1192, align 1
  %conv1193 = sext i8 %635 to i32
  %and1194 = and i32 %conv1193, 4
  %tobool1195 = icmp ne i32 %and1194, 0
  br i1 %tobool1195, label %land.lhs.true.1204, label %lor.lhs.false.1196

lor.lhs.false.1196:                               ; preds = %lor.lhs.false.1188, %land.lhs.true.1180, %if.then.1176
  %636 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1197 = getelementptr inbounds %struct.cop, %struct.cop* %636, i32 0, i32 14
  %637 = load %struct.sv*, %struct.sv** %cop_warnings1197, align 8
  %cmp1198 = icmp eq %struct.sv* %637, null
  br i1 %cmp1198, label %land.lhs.true.1200, label %if.end.1214

land.lhs.true.1200:                               ; preds = %lor.lhs.false.1196
  %638 = load i8, i8* @PL_dowarn, align 1
  %conv1201 = zext i8 %638 to i32
  %and1202 = and i32 %conv1201, 1
  %tobool1203 = icmp ne i32 %and1202, 0
  br i1 %tobool1203, label %land.lhs.true.1204, label %if.end.1214

land.lhs.true.1204:                               ; preds = %land.lhs.true.1200, %lor.lhs.false.1188, %land.lhs.true.1184
  %639 = load %struct.io*, %struct.io** %io, align 8
  %sv_any1205 = getelementptr inbounds %struct.io, %struct.io* %639, i32 0, i32 0
  %640 = load %struct.xpvio*, %struct.xpvio** %sv_any1205, align 8
  %xio_type1206 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %640, i32 0, i32 21
  %641 = load i8, i8* %xio_type1206, align 1
  %conv1207 = sext i8 %641 to i32
  %cmp1208 = icmp eq i32 %conv1207, 60
  br i1 %cmp1208, label %land.lhs.true.1210, label %if.end.1214

land.lhs.true.1210:                               ; preds = %land.lhs.true.1204
  %642 = load i8*, i8** %name.addr, align 8
  %call1211 = call i8* @strchr(i8* %642, i32 10)
  %tobool1212 = icmp ne i8* %call1211, null
  br i1 %tobool1212, label %if.then.1213, label %if.end.1214

if.then.1213:                                     ; preds = %land.lhs.true.1210
  call void (i32, i8*, ...) @Perl_warner(i32 9, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_warn_nl, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.1214

if.end.1214:                                      ; preds = %if.then.1213, %land.lhs.true.1210, %land.lhs.true.1204, %land.lhs.true.1200, %lor.lhs.false.1196
  br label %say_false

if.end.1215:                                      ; preds = %if.end.1174
  %643 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1216 = getelementptr inbounds %struct.cop, %struct.cop* %643, i32 0, i32 14
  %644 = load %struct.sv*, %struct.sv** %cop_warnings1216, align 8
  %cmp1217 = icmp ne %struct.sv* %644, null
  br i1 %cmp1217, label %land.lhs.true.1219, label %lor.lhs.false.1235

land.lhs.true.1219:                               ; preds = %if.end.1215
  %645 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1220 = getelementptr inbounds %struct.cop, %struct.cop* %645, i32 0, i32 14
  %646 = load %struct.sv*, %struct.sv** %cop_warnings1220, align 8
  %cmp1221 = icmp ne %struct.sv* %646, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp1221, label %land.lhs.true.1223, label %lor.lhs.false.1235

land.lhs.true.1223:                               ; preds = %land.lhs.true.1219
  %647 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1224 = getelementptr inbounds %struct.cop, %struct.cop* %647, i32 0, i32 14
  %648 = load %struct.sv*, %struct.sv** %cop_warnings1224, align 8
  %cmp1225 = icmp eq %struct.sv* %648, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp1225, label %if.then.1243, label %lor.lhs.false.1227

lor.lhs.false.1227:                               ; preds = %land.lhs.true.1223
  %649 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1228 = getelementptr inbounds %struct.cop, %struct.cop* %649, i32 0, i32 14
  %650 = load %struct.sv*, %struct.sv** %cop_warnings1228, align 8
  %sv_any1229 = getelementptr inbounds %struct.sv, %struct.sv* %650, i32 0, i32 0
  %651 = load i8*, i8** %sv_any1229, align 8
  %652 = bitcast i8* %651 to %struct.xpv*
  %xpv_pv1230 = getelementptr inbounds %struct.xpv, %struct.xpv* %652, i32 0, i32 0
  %653 = load i8*, i8** %xpv_pv1230, align 8
  %arrayidx1231 = getelementptr inbounds i8, i8* %653, i64 1
  %654 = load i8, i8* %arrayidx1231, align 1
  %conv1232 = sext i8 %654 to i32
  %and1233 = and i32 %conv1232, 4
  %tobool1234 = icmp ne i32 %and1233, 0
  br i1 %tobool1234, label %if.then.1243, label %lor.lhs.false.1235

lor.lhs.false.1235:                               ; preds = %lor.lhs.false.1227, %land.lhs.true.1219, %if.end.1215
  %655 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1236 = getelementptr inbounds %struct.cop, %struct.cop* %655, i32 0, i32 14
  %656 = load %struct.sv*, %struct.sv** %cop_warnings1236, align 8
  %cmp1237 = icmp eq %struct.sv* %656, null
  br i1 %cmp1237, label %land.lhs.true.1239, label %if.end.1301

land.lhs.true.1239:                               ; preds = %lor.lhs.false.1235
  %657 = load i8, i8* @PL_dowarn, align 1
  %conv1240 = zext i8 %657 to i32
  %and1241 = and i32 %conv1240, 1
  %tobool1242 = icmp ne i32 %and1241, 0
  br i1 %tobool1242, label %if.then.1243, label %if.end.1301

if.then.1243:                                     ; preds = %land.lhs.true.1239, %lor.lhs.false.1227, %land.lhs.true.1223
  %658 = load %struct.io*, %struct.io** %io, align 8
  %sv_any1244 = getelementptr inbounds %struct.io, %struct.io* %658, i32 0, i32 0
  %659 = load %struct.xpvio*, %struct.xpvio** %sv_any1244, align 8
  %xio_type1245 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %659, i32 0, i32 21
  %660 = load i8, i8* %xio_type1245, align 1
  %conv1246 = sext i8 %660 to i32
  %cmp1247 = icmp eq i32 %conv1246, 60
  br i1 %cmp1247, label %land.lhs.true.1249, label %if.else.1275

land.lhs.true.1249:                               ; preds = %if.then.1243
  %661 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call1250 = call %struct._PerlIO** @Perl_PerlIO_stdout()
  %cmp1251 = icmp eq %struct._PerlIO** %661, %call1250
  br i1 %cmp1251, label %if.then.1257, label %lor.lhs.false.1253

lor.lhs.false.1253:                               ; preds = %land.lhs.true.1249
  %662 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call1254 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %cmp1255 = icmp eq %struct._PerlIO** %662, %call1254
  br i1 %cmp1255, label %if.then.1257, label %if.else.1275

if.then.1257:                                     ; preds = %lor.lhs.false.1253, %land.lhs.true.1249
  %663 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call1258 = call %struct._PerlIO** @Perl_PerlIO_stdout()
  %cmp1259 = icmp eq %struct._PerlIO** %663, %call1258
  %cond1261 = select i1 %cmp1259, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)
  %664 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any1262 = getelementptr inbounds %struct.gv, %struct.gv* %664, i32 0, i32 0
  %665 = load %struct.xpvgv*, %struct.xpvgv** %sv_any1262, align 8
  %xgv_gp1263 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %665, i32 0, i32 7
  %666 = load %struct.gp*, %struct.gp** %xgv_gp1263, align 8
  %gp_egv1264 = getelementptr inbounds %struct.gp, %struct.gp* %666, i32 0, i32 6
  %667 = load %struct.gv*, %struct.gv** %gp_egv1264, align 8
  %tobool1265 = icmp ne %struct.gv* %667, null
  br i1 %tobool1265, label %cond.true.1266, label %cond.false.1270

cond.true.1266:                                   ; preds = %if.then.1257
  %668 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any1267 = getelementptr inbounds %struct.gv, %struct.gv* %668, i32 0, i32 0
  %669 = load %struct.xpvgv*, %struct.xpvgv** %sv_any1267, align 8
  %xgv_gp1268 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %669, i32 0, i32 7
  %670 = load %struct.gp*, %struct.gp** %xgv_gp1268, align 8
  %gp_egv1269 = getelementptr inbounds %struct.gp, %struct.gp* %670, i32 0, i32 6
  %671 = load %struct.gv*, %struct.gv** %gp_egv1269, align 8
  br label %cond.end.1271

cond.false.1270:                                  ; preds = %if.then.1257
  %672 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  br label %cond.end.1271

cond.end.1271:                                    ; preds = %cond.false.1270, %cond.true.1266
  %cond1272 = phi %struct.gv* [ %671, %cond.true.1266 ], [ %672, %cond.false.1270 ]
  %sv_any1273 = getelementptr inbounds %struct.gv, %struct.gv* %cond1272, i32 0, i32 0
  %673 = load %struct.xpvgv*, %struct.xpvgv** %sv_any1273, align 8
  %xgv_name1274 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %673, i32 0, i32 8
  %674 = load i8*, i8** %xgv_name1274, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 5, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i32 0, i32 0), i8* %cond1261, i8* %674)
  br label %if.end.1300

if.else.1275:                                     ; preds = %lor.lhs.false.1253, %if.then.1243
  %675 = load %struct.io*, %struct.io** %io, align 8
  %sv_any1276 = getelementptr inbounds %struct.io, %struct.io* %675, i32 0, i32 0
  %676 = load %struct.xpvio*, %struct.xpvio** %sv_any1276, align 8
  %xio_type1277 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %676, i32 0, i32 21
  %677 = load i8, i8* %xio_type1277, align 1
  %conv1278 = sext i8 %677 to i32
  %cmp1279 = icmp eq i32 %conv1278, 62
  br i1 %cmp1279, label %land.lhs.true.1281, label %if.end.1299

land.lhs.true.1281:                               ; preds = %if.else.1275
  %678 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call1282 = call %struct._PerlIO** @Perl_PerlIO_stdin()
  %cmp1283 = icmp eq %struct._PerlIO** %678, %call1282
  br i1 %cmp1283, label %if.then.1285, label %if.end.1299

if.then.1285:                                     ; preds = %land.lhs.true.1281
  %679 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any1286 = getelementptr inbounds %struct.gv, %struct.gv* %679, i32 0, i32 0
  %680 = load %struct.xpvgv*, %struct.xpvgv** %sv_any1286, align 8
  %xgv_gp1287 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %680, i32 0, i32 7
  %681 = load %struct.gp*, %struct.gp** %xgv_gp1287, align 8
  %gp_egv1288 = getelementptr inbounds %struct.gp, %struct.gp* %681, i32 0, i32 6
  %682 = load %struct.gv*, %struct.gv** %gp_egv1288, align 8
  %tobool1289 = icmp ne %struct.gv* %682, null
  br i1 %tobool1289, label %cond.true.1290, label %cond.false.1294

cond.true.1290:                                   ; preds = %if.then.1285
  %683 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any1291 = getelementptr inbounds %struct.gv, %struct.gv* %683, i32 0, i32 0
  %684 = load %struct.xpvgv*, %struct.xpvgv** %sv_any1291, align 8
  %xgv_gp1292 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %684, i32 0, i32 7
  %685 = load %struct.gp*, %struct.gp** %xgv_gp1292, align 8
  %gp_egv1293 = getelementptr inbounds %struct.gp, %struct.gp* %685, i32 0, i32 6
  %686 = load %struct.gv*, %struct.gv** %gp_egv1293, align 8
  br label %cond.end.1295

cond.false.1294:                                  ; preds = %if.then.1285
  %687 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  br label %cond.end.1295

cond.end.1295:                                    ; preds = %cond.false.1294, %cond.true.1290
  %cond1296 = phi %struct.gv* [ %686, %cond.true.1290 ], [ %687, %cond.false.1294 ]
  %sv_any1297 = getelementptr inbounds %struct.gv, %struct.gv* %cond1296, i32 0, i32 0
  %688 = load %struct.xpvgv*, %struct.xpvgv** %sv_any1297, align 8
  %xgv_name1298 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %688, i32 0, i32 8
  %689 = load i8*, i8** %xgv_name1298, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 5, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i32 0, i32 0), i8* %689)
  br label %if.end.1299

if.end.1299:                                      ; preds = %cond.end.1295, %land.lhs.true.1281, %if.else.1275
  br label %if.end.1300

if.end.1300:                                      ; preds = %if.end.1299, %cond.end.1271
  br label %if.end.1301

if.end.1301:                                      ; preds = %if.end.1300, %land.lhs.true.1239, %lor.lhs.false.1235
  %690 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call1302 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %690)
  store i32 %call1302, i32* %fd, align 4
  %691 = load %struct.io*, %struct.io** %io, align 8
  %sv_any1303 = getelementptr inbounds %struct.io, %struct.io* %691, i32 0, i32 0
  %692 = load %struct.xpvio*, %struct.xpvio** %sv_any1303, align 8
  %xio_type1304 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %692, i32 0, i32 21
  %693 = load i8, i8* %xio_type1304, align 1
  %conv1305 = sext i8 %693 to i32
  %tobool1306 = icmp ne i32 %conv1305, 0
  br i1 %tobool1306, label %land.lhs.true.1307, label %if.end.1336

land.lhs.true.1307:                               ; preds = %if.end.1301
  %694 = load %struct.io*, %struct.io** %io, align 8
  %sv_any1308 = getelementptr inbounds %struct.io, %struct.io* %694, i32 0, i32 0
  %695 = load %struct.xpvio*, %struct.xpvio** %sv_any1308, align 8
  %xio_type1309 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %695, i32 0, i32 21
  %696 = load i8, i8* %xio_type1309, align 1
  %conv1310 = sext i8 %696 to i32
  %cmp1311 = icmp ne i32 %conv1310, 124
  br i1 %cmp1311, label %land.lhs.true.1313, label %if.end.1336

land.lhs.true.1313:                               ; preds = %land.lhs.true.1307
  %697 = load %struct.io*, %struct.io** %io, align 8
  %sv_any1314 = getelementptr inbounds %struct.io, %struct.io* %697, i32 0, i32 0
  %698 = load %struct.xpvio*, %struct.xpvio** %sv_any1314, align 8
  %xio_type1315 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %698, i32 0, i32 21
  %699 = load i8, i8* %xio_type1315, align 1
  %conv1316 = sext i8 %699 to i32
  %cmp1317 = icmp ne i32 %conv1316, 45
  br i1 %cmp1317, label %land.lhs.true.1319, label %if.end.1336

land.lhs.true.1319:                               ; preds = %land.lhs.true.1313
  %700 = load i32, i32* %fd, align 4
  %cmp1320 = icmp sge i32 %700, 0
  br i1 %cmp1320, label %if.then.1322, label %if.end.1336

if.then.1322:                                     ; preds = %land.lhs.true.1319
  %701 = load i32, i32* %fd, align 4
  %call1323 = call i32 @fstat(i32 %701, %struct.stat* @PL_statbuf)
  %cmp1324 = icmp slt i32 %call1323, 0
  br i1 %cmp1324, label %if.then.1326, label %if.end.1328

if.then.1326:                                     ; preds = %if.then.1322
  %702 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call1327 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %702)
  br label %say_false

if.end.1328:                                      ; preds = %if.then.1322
  %703 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statbuf, i32 0, i32 3), align 4
  %and1329 = and i32 %703, 61440
  %cmp1330 = icmp eq i32 %and1329, 49152
  br i1 %cmp1330, label %if.then.1332, label %if.end.1335

if.then.1332:                                     ; preds = %if.end.1328
  %704 = load %struct.io*, %struct.io** %io, align 8
  %sv_any1333 = getelementptr inbounds %struct.io, %struct.io* %704, i32 0, i32 0
  %705 = load %struct.xpvio*, %struct.xpvio** %sv_any1333, align 8
  %xio_type1334 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %705, i32 0, i32 21
  store i8 115, i8* %xio_type1334, align 1
  br label %if.end.1335

if.end.1335:                                      ; preds = %if.then.1332, %if.end.1328
  br label %if.end.1336

if.end.1336:                                      ; preds = %if.end.1335, %land.lhs.true.1319, %land.lhs.true.1313, %land.lhs.true.1307, %if.end.1301
  %706 = load %struct._PerlIO**, %struct._PerlIO*** %saveifp, align 8
  %tobool1337 = icmp ne %struct._PerlIO** %706, null
  br i1 %tobool1337, label %if.then.1338, label %if.end.1399

if.then.1338:                                     ; preds = %if.end.1336
  %707 = load %struct._PerlIO**, %struct._PerlIO*** %saveofp, align 8
  %tobool1339 = icmp ne %struct._PerlIO** %707, null
  br i1 %tobool1339, label %if.then.1340, label %if.end.1347

if.then.1340:                                     ; preds = %if.then.1338
  %708 = load %struct._PerlIO**, %struct._PerlIO*** %saveofp, align 8
  %call1341 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %708)
  %709 = load %struct._PerlIO**, %struct._PerlIO*** %saveofp, align 8
  %710 = load %struct._PerlIO**, %struct._PerlIO*** %saveifp, align 8
  %cmp1342 = icmp ne %struct._PerlIO** %709, %710
  br i1 %cmp1342, label %if.then.1344, label %if.end.1346

if.then.1344:                                     ; preds = %if.then.1340
  %711 = load %struct._PerlIO**, %struct._PerlIO*** %saveofp, align 8
  %call1345 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %711)
  br label %if.end.1346

if.end.1346:                                      ; preds = %if.then.1344, %if.then.1340
  br label %if.end.1347

if.end.1347:                                      ; preds = %if.end.1346, %if.then.1338
  %712 = load i32, i32* %savefd, align 4
  %713 = load i32, i32* %fd, align 4
  %cmp1348 = icmp ne i32 %712, %713
  br i1 %cmp1348, label %if.then.1350, label %if.end.1397

if.then.1350:                                     ; preds = %if.end.1347
  %714 = load i32, i32* %fd, align 4
  %715 = load i32, i32* %savefd, align 4
  %call1351 = call i32 @dup2(i32 %714, i32 %715)
  %cmp1352 = icmp slt i32 %call1351, 0
  br i1 %cmp1352, label %if.then.1354, label %if.end.1356

if.then.1354:                                     ; preds = %if.then.1350
  %716 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call1355 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %716)
  br label %say_false

if.end.1356:                                      ; preds = %if.then.1350
  %717 = load %struct.av*, %struct.av** @PL_fdpid, align 8
  %718 = load i32, i32* %fd, align 4
  %call1357 = call %struct.sv** @Perl_av_fetch(%struct.av* %717, i32 %718, i32 1)
  %719 = load %struct.sv*, %struct.sv** %call1357, align 8
  store %struct.sv* %719, %struct.sv** %sv, align 8
  %720 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags1358 = getelementptr inbounds %struct.sv, %struct.sv* %720, i32 0, i32 2
  %721 = load i32, i32* %sv_flags1358, align 4
  %and1359 = and i32 %721, 255
  %cmp1360 = icmp uge i32 %and1359, 1
  br i1 %cmp1360, label %lor.end.1366, label %lor.rhs.1362

lor.rhs.1362:                                     ; preds = %if.end.1356
  %722 = load %struct.sv*, %struct.sv** %sv, align 8
  %call1363 = call signext i8 @Perl_sv_upgrade(%struct.sv* %722, i32 1)
  %conv1364 = sext i8 %call1363 to i32
  %tobool1365 = icmp ne i32 %conv1364, 0
  br label %lor.end.1366

lor.end.1366:                                     ; preds = %lor.rhs.1362, %if.end.1356
  %723 = phi i1 [ true, %if.end.1356 ], [ %tobool1365, %lor.rhs.1362 ]
  %lor.ext = zext i1 %723 to i32
  %724 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any1367 = getelementptr inbounds %struct.sv, %struct.sv* %724, i32 0, i32 0
  %725 = load i8*, i8** %sv_any1367, align 8
  %726 = bitcast i8* %725 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %726, i32 0, i32 3
  %727 = load i64, i64* %xiv_iv, align 8
  %conv1368 = trunc i64 %727 to i32
  store i32 %conv1368, i32* %pid, align 4
  %728 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any1369 = getelementptr inbounds %struct.sv, %struct.sv* %728, i32 0, i32 0
  %729 = load i8*, i8** %sv_any1369, align 8
  %730 = bitcast i8* %729 to %struct.xpviv*
  %xiv_iv1370 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %730, i32 0, i32 3
  store i64 0, i64* %xiv_iv1370, align 8
  %731 = load %struct.av*, %struct.av** @PL_fdpid, align 8
  %732 = load i32, i32* %savefd, align 4
  %call1371 = call %struct.sv** @Perl_av_fetch(%struct.av* %731, i32 %732, i32 1)
  %733 = load %struct.sv*, %struct.sv** %call1371, align 8
  store %struct.sv* %733, %struct.sv** %sv, align 8
  %734 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags1372 = getelementptr inbounds %struct.sv, %struct.sv* %734, i32 0, i32 2
  %735 = load i32, i32* %sv_flags1372, align 4
  %and1373 = and i32 %735, 255
  %cmp1374 = icmp uge i32 %and1373, 1
  br i1 %cmp1374, label %lor.end.1380, label %lor.rhs.1376

lor.rhs.1376:                                     ; preds = %lor.end.1366
  %736 = load %struct.sv*, %struct.sv** %sv, align 8
  %call1377 = call signext i8 @Perl_sv_upgrade(%struct.sv* %736, i32 1)
  %conv1378 = sext i8 %call1377 to i32
  %tobool1379 = icmp ne i32 %conv1378, 0
  br label %lor.end.1380

lor.end.1380:                                     ; preds = %lor.rhs.1376, %lor.end.1366
  %737 = phi i1 [ true, %lor.end.1366 ], [ %tobool1379, %lor.rhs.1376 ]
  %lor.ext1381 = zext i1 %737 to i32
  %738 = load i32, i32* %pid, align 4
  %conv1382 = sext i32 %738 to i64
  %739 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any1383 = getelementptr inbounds %struct.sv, %struct.sv* %739, i32 0, i32 0
  %740 = load i8*, i8** %sv_any1383, align 8
  %741 = bitcast i8* %740 to %struct.xpviv*
  %xiv_iv1384 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %741, i32 0, i32 3
  store i64 %conv1382, i64* %xiv_iv1384, align 8
  %742 = load i8, i8* %was_fdopen, align 1
  %tobool1385 = icmp ne i8 %742, 0
  br i1 %tobool1385, label %if.then.1386, label %if.else.1394

if.then.1386:                                     ; preds = %lor.end.1380
  %743 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call1387 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %743)
  store i32 %call1387, i32* %ofd, align 4
  %744 = load i32, i32* %ofd, align 4
  %call1388 = call i32 @dup(i32 %744)
  store i32 %call1388, i32* %dupfd, align 4
  %745 = load i32, i32* %ofd, align 4
  %call1389 = call i32 (i32, i32, ...) @fcntl(i32 %745, i32 1)
  store i32 %call1389, i32* %coe, align 4
  %746 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call1390 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %746)
  %747 = load i32, i32* %dupfd, align 4
  %748 = load i32, i32* %ofd, align 4
  %call1391 = call i32 @dup2(i32 %747, i32 %748)
  %749 = load i32, i32* %ofd, align 4
  %750 = load i32, i32* %coe, align 4
  %call1392 = call i32 (i32, i32, ...) @fcntl(i32 %749, i32 2, i32 %750)
  %751 = load i32, i32* %dupfd, align 4
  %call1393 = call i32 @close(i32 %751)
  br label %if.end.1396

if.else.1394:                                     ; preds = %lor.end.1380
  %752 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call1395 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %752)
  br label %if.end.1396

if.end.1396:                                      ; preds = %if.else.1394, %if.then.1386
  br label %if.end.1397

if.end.1397:                                      ; preds = %if.end.1396, %if.end.1347
  %753 = load %struct._PerlIO**, %struct._PerlIO*** %saveifp, align 8
  store %struct._PerlIO** %753, %struct._PerlIO*** %fp, align 8
  %754 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  call void @Perl_PerlIO_clearerr(%struct._PerlIO** %754)
  %755 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call1398 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %755)
  store i32 %call1398, i32* %fd, align 4
  br label %if.end.1399

if.end.1399:                                      ; preds = %if.end.1397, %if.end.1336
  %756 = load i32, i32* %fd, align 4
  %cmp1400 = icmp sge i32 %756, 0
  br i1 %cmp1400, label %if.then.1402, label %if.end.1408

if.then.1402:                                     ; preds = %if.end.1399
  %call1403 = call i32* @__errno_location()
  %757 = load i32, i32* %call1403, align 4
  store i32 %757, i32* %save_errno, align 4
  %758 = load i32, i32* %fd, align 4
  %759 = load i32, i32* %fd, align 4
  %760 = load i32, i32* @PL_maxsysfd, align 4
  %cmp1404 = icmp sgt i32 %759, %760
  %conv1405 = zext i1 %cmp1404 to i32
  %call1406 = call i32 (i32, i32, ...) @fcntl(i32 %758, i32 2, i32 %conv1405)
  %761 = load i32, i32* %save_errno, align 4
  %call1407 = call i32* @__errno_location()
  store i32 %761, i32* %call1407, align 4
  br label %if.end.1408

if.end.1408:                                      ; preds = %if.then.1402, %if.end.1399
  %762 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %763 = load %struct.io*, %struct.io** %io, align 8
  %sv_any1409 = getelementptr inbounds %struct.io, %struct.io* %763, i32 0, i32 0
  %764 = load %struct.xpvio*, %struct.xpvio** %sv_any1409, align 8
  %xio_ifp1410 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %764, i32 0, i32 7
  store %struct._PerlIO** %762, %struct._PerlIO*** %xio_ifp1410, align 8
  %765 = load %struct.io*, %struct.io** %io, align 8
  %sv_any1411 = getelementptr inbounds %struct.io, %struct.io* %765, i32 0, i32 0
  %766 = load %struct.xpvio*, %struct.xpvio** %sv_any1411, align 8
  %xio_flags = getelementptr inbounds %struct.xpvio, %struct.xpvio* %766, i32 0, i32 22
  %767 = load i8, i8* %xio_flags, align 1
  %conv1412 = sext i8 %767 to i32
  %and1413 = and i32 %conv1412, -33
  %conv1414 = trunc i32 %and1413 to i8
  store i8 %conv1414, i8* %xio_flags, align 1
  %768 = load i32, i32* %writing, align 4
  %tobool1415 = icmp ne i32 %768, 0
  br i1 %tobool1415, label %if.then.1416, label %if.end.1460

if.then.1416:                                     ; preds = %if.end.1408
  %769 = load %struct.io*, %struct.io** %io, align 8
  %sv_any1417 = getelementptr inbounds %struct.io, %struct.io* %769, i32 0, i32 0
  %770 = load %struct.xpvio*, %struct.xpvio** %sv_any1417, align 8
  %xio_type1418 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %770, i32 0, i32 21
  %771 = load i8, i8* %xio_type1418, align 1
  %conv1419 = sext i8 %771 to i32
  %cmp1420 = icmp eq i32 %conv1419, 115
  br i1 %cmp1420, label %if.then.1435, label %lor.lhs.false.1422

lor.lhs.false.1422:                               ; preds = %if.then.1416
  %772 = load %struct.io*, %struct.io** %io, align 8
  %sv_any1423 = getelementptr inbounds %struct.io, %struct.io* %772, i32 0, i32 0
  %773 = load %struct.xpvio*, %struct.xpvio** %sv_any1423, align 8
  %xio_type1424 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %773, i32 0, i32 21
  %774 = load i8, i8* %xio_type1424, align 1
  %conv1425 = sext i8 %774 to i32
  %cmp1426 = icmp eq i32 %conv1425, 62
  br i1 %cmp1426, label %land.lhs.true.1428, label %if.else.1456

land.lhs.true.1428:                               ; preds = %lor.lhs.false.1422
  %775 = load i32, i32* %fd, align 4
  %cmp1429 = icmp sge i32 %775, 0
  br i1 %cmp1429, label %land.lhs.true.1431, label %if.else.1456

land.lhs.true.1431:                               ; preds = %land.lhs.true.1428
  %776 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statbuf, i32 0, i32 3), align 4
  %and1432 = and i32 %776, 61440
  %cmp1433 = icmp eq i32 %and1432, 8192
  br i1 %cmp1433, label %if.then.1435, label %if.else.1456

if.then.1435:                                     ; preds = %land.lhs.true.1431, %if.then.1416
  %arraydecay1436 = getelementptr inbounds [8 x i8], [8 x i8]* %mode, i32 0, i32 0
  store i8* %arraydecay1436, i8** %s, align 8
  %777 = load i8*, i8** %s, align 8
  %778 = load i8, i8* %777, align 1
  %conv1437 = sext i8 %778 to i32
  %cmp1438 = icmp eq i32 %conv1437, 73
  br i1 %cmp1438, label %if.then.1444, label %lor.lhs.false.1440

lor.lhs.false.1440:                               ; preds = %if.then.1435
  %779 = load i8*, i8** %s, align 8
  %780 = load i8, i8* %779, align 1
  %conv1441 = sext i8 %780 to i32
  %cmp1442 = icmp eq i32 %conv1441, 35
  br i1 %cmp1442, label %if.then.1444, label %if.end.1446

if.then.1444:                                     ; preds = %lor.lhs.false.1440, %if.then.1435
  %781 = load i8*, i8** %s, align 8
  %incdec.ptr1445 = getelementptr inbounds i8, i8* %781, i32 1
  store i8* %incdec.ptr1445, i8** %s, align 8
  br label %if.end.1446

if.end.1446:                                      ; preds = %if.then.1444, %lor.lhs.false.1440
  %782 = load i8*, i8** %s, align 8
  store i8 119, i8* %782, align 1
  %783 = load i8*, i8** %type, align 8
  %784 = load i8*, i8** %s, align 8
  %785 = load i32, i32* %fd, align 4
  %786 = load %struct.sv**, %struct.sv*** %svp.addr, align 8
  %call1447 = call %struct._PerlIO** @PerlIO_openn(i8* %783, i8* %784, i32 %785, i32 0, i32 0, %struct._PerlIO** null, i32 0, %struct.sv** %786)
  %787 = load %struct.io*, %struct.io** %io, align 8
  %sv_any1448 = getelementptr inbounds %struct.io, %struct.io* %787, i32 0, i32 0
  %788 = load %struct.xpvio*, %struct.xpvio** %sv_any1448, align 8
  %xio_ofp1449 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %788, i32 0, i32 8
  store %struct._PerlIO** %call1447, %struct._PerlIO*** %xio_ofp1449, align 8
  %tobool1450 = icmp ne %struct._PerlIO** %call1447, null
  br i1 %tobool1450, label %if.end.1455, label %if.then.1451

if.then.1451:                                     ; preds = %if.end.1446
  %789 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call1452 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %789)
  %790 = load %struct.io*, %struct.io** %io, align 8
  %sv_any1453 = getelementptr inbounds %struct.io, %struct.io* %790, i32 0, i32 0
  %791 = load %struct.xpvio*, %struct.xpvio** %sv_any1453, align 8
  %xio_ifp1454 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %791, i32 0, i32 7
  store %struct._PerlIO** null, %struct._PerlIO*** %xio_ifp1454, align 8
  br label %say_false

if.end.1455:                                      ; preds = %if.end.1446
  br label %if.end.1459

if.else.1456:                                     ; preds = %land.lhs.true.1431, %land.lhs.true.1428, %lor.lhs.false.1422
  %792 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %793 = load %struct.io*, %struct.io** %io, align 8
  %sv_any1457 = getelementptr inbounds %struct.io, %struct.io* %793, i32 0, i32 0
  %794 = load %struct.xpvio*, %struct.xpvio** %sv_any1457, align 8
  %xio_ofp1458 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %794, i32 0, i32 8
  store %struct._PerlIO** %792, %struct._PerlIO*** %xio_ofp1458, align 8
  br label %if.end.1459

if.end.1459:                                      ; preds = %if.else.1456, %if.end.1455
  br label %if.end.1460

if.end.1460:                                      ; preds = %if.end.1459, %if.end.1408
  store i8 1, i8* %retval
  br label %return

say_false:                                        ; preds = %if.then.1451, %if.then.1354, %if.then.1326, %if.end.1214, %if.then.1101, %if.end.1024, %if.then.586, %if.then.443, %if.end.354
  %795 = load %struct._PerlIO**, %struct._PerlIO*** %saveifp, align 8
  %796 = load %struct.io*, %struct.io** %io, align 8
  %sv_any1461 = getelementptr inbounds %struct.io, %struct.io* %796, i32 0, i32 0
  %797 = load %struct.xpvio*, %struct.xpvio** %sv_any1461, align 8
  %xio_ifp1462 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %797, i32 0, i32 7
  store %struct._PerlIO** %795, %struct._PerlIO*** %xio_ifp1462, align 8
  %798 = load %struct._PerlIO**, %struct._PerlIO*** %saveofp, align 8
  %799 = load %struct.io*, %struct.io** %io, align 8
  %sv_any1463 = getelementptr inbounds %struct.io, %struct.io* %799, i32 0, i32 0
  %800 = load %struct.xpvio*, %struct.xpvio** %sv_any1463, align 8
  %xio_ofp1464 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %800, i32 0, i32 8
  store %struct._PerlIO** %798, %struct._PerlIO*** %xio_ofp1464, align 8
  %801 = load i8, i8* %savetype, align 1
  %802 = load %struct.io*, %struct.io** %io, align 8
  %sv_any1465 = getelementptr inbounds %struct.io, %struct.io* %802, i32 0, i32 0
  %803 = load %struct.xpvio*, %struct.xpvio** %sv_any1465, align 8
  %xio_type1466 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %803, i32 0, i32 21
  store i8 %801, i8* %xio_type1466, align 1
  store i8 0, i8* %retval
  br label %return

return:                                           ; preds = %say_false, %if.end.1460
  %804 = load i8, i8* %retval
  ret i8 %804
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_do_open9(%struct.gv* %gv, i8* %name, i32 %len, i32 %as_raw, i32 %rawmode, i32 %rawperm, %struct._PerlIO** %supplied_fp, %struct.sv* %svs, i32 %num_svs) #0 {
entry:
  %gv.addr = alloca %struct.gv*, align 8
  %name.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %as_raw.addr = alloca i32, align 4
  %rawmode.addr = alloca i32, align 4
  %rawperm.addr = alloca i32, align 4
  %supplied_fp.addr = alloca %struct._PerlIO**, align 8
  %svs.addr = alloca %struct.sv*, align 8
  %num_svs.addr = alloca i32, align 4
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %as_raw, i32* %as_raw.addr, align 4
  store i32 %rawmode, i32* %rawmode.addr, align 4
  store i32 %rawperm, i32* %rawperm.addr, align 4
  store %struct._PerlIO** %supplied_fp, %struct._PerlIO*** %supplied_fp.addr, align 8
  store %struct.sv* %svs, %struct.sv** %svs.addr, align 8
  store i32 %num_svs, i32* %num_svs.addr, align 4
  %0 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i32, i32* %len.addr, align 4
  %3 = load i32, i32* %as_raw.addr, align 4
  %4 = load i32, i32* %rawmode.addr, align 4
  %5 = load i32, i32* %rawperm.addr, align 4
  %6 = load %struct._PerlIO**, %struct._PerlIO*** %supplied_fp.addr, align 8
  %call = call signext i8 @Perl_do_openn(%struct.gv* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct._PerlIO** %6, %struct.sv** %svs.addr, i32 1)
  ret i8 %call
}

declare %struct.gv* @Perl_gv_IOadd(%struct.gv*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @Perl_PerlIO_fileno(%struct._PerlIO**) #1

declare i32 @Perl_my_pclose(%struct._PerlIO**) #1

declare i32 @Perl_PerlIO_close(%struct._PerlIO**) #1

declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #1

declare %struct._PerlIO** @Perl_PerlIO_stderr() #1

declare void @Perl_croak(i8*, ...) #1

declare void @Perl_taint_proper(i8*, i8*) #1

declare i32 @PerlIO_intmode2str(i32, i8*, i32*) #1

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

declare i64 @strlen(i8*) #1

declare %struct._PerlIO** @PerlIO_openn(i8*, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**) #1

declare i8* @Perl_savepvn(i8*, i32) #1

declare void @Perl_save_freepv(i8*) #1

declare i8* @Perl_savesvpv(%struct.sv*) #1

declare void @Perl_warner(i32, i8*, ...) #1

declare i32* @__errno_location() #1

declare void @Perl_taint_env() #1

declare i8* @strcat(i8*, i8*) #1

declare %struct._PerlIO** @Perl_my_popen_list(i8*, i32, %struct.sv**) #1

declare %struct._PerlIO** @Perl_my_popen(i8*, i8*) #1

declare i32 @PerlIO_apply_layers(%struct._PerlIO**, i8*, i8*) #1

declare i32 @Perl_looks_like_number(%struct.sv*) #1

declare i64 @Perl_sv_2uv(%struct.sv*) #1

declare i32 @atoi(i8*) #1

declare %struct.io* @Perl_sv_2io(%struct.sv*) #1

declare %struct.gv* @Perl_gv_fetchpv(i8*, i32, i32) #1

declare i32 @Perl_PerlIO_flush(%struct._PerlIO**) #1

declare %struct._PerlIO** @Perl_PerlIO_stdout() #1

declare %struct._PerlIO** @Perl_PerlIO_stdin() #1

declare %struct._PerlIO** @PerlIO_fdupopen(%struct._PerlIO**, %struct.clone_params*, i32) #1

declare i32 @dup(i32) #1

declare i32 @close(i32) #1

declare i8* @strchr(i8*, i32) #1

declare i32 @fstat(i32, %struct.stat*) #1

declare i32 @dup2(i32, i32) #1

declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #1

declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

declare i32 @fcntl(i32, i32, ...) #1

declare void @Perl_PerlIO_clearerr(%struct._PerlIO**) #1

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @Perl_nextargv(%struct.gv* %gv) #0 {
entry:
  %retval = alloca %struct._PerlIO**, align 8
  %gv.addr = alloca %struct.gv*, align 8
  %sv = alloca %struct.sv*, align 8
  %fileuid = alloca i32, align 4
  %filegid = alloca i32, align 4
  %io = alloca %struct.io*, align 8
  %oldlen = alloca i64, align 8
  %star = alloca i8*, align 8
  %begin = alloca i8*, align 8
  %eno = alloca i32, align 4
  %oldout = alloca %struct.gv*, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  %0 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %0, i32 0, i32 0
  %1 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %1, i32 0, i32 7
  %2 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %2, i32 0, i32 2
  %3 = load %struct.io*, %struct.io** %gp_io, align 8
  store %struct.io* %3, %struct.io** %io, align 8
  %4 = load %struct.gv*, %struct.gv** @PL_argvoutgv, align 8
  %tobool = icmp ne %struct.gv* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 1, i32 15)
  store %struct.gv* %call, %struct.gv** @PL_argvoutgv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.io*, %struct.io** %io, align 8
  %tobool1 = icmp ne %struct.io* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.io*, %struct.io** %io, align 8
  %sv_any2 = getelementptr inbounds %struct.io, %struct.io* %6, i32 0, i32 0
  %7 = load %struct.xpvio*, %struct.xpvio** %sv_any2, align 8
  %xio_flags = getelementptr inbounds %struct.xpvio, %struct.xpvio* %7, i32 0, i32 22
  %8 = load i8, i8* %xio_flags, align 1
  %conv = sext i8 %8 to i32
  %and = and i32 %conv, 1
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %land.lhs.true.4, label %if.end.25

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %9 = load %struct.io*, %struct.io** %io, align 8
  %sv_any5 = getelementptr inbounds %struct.io, %struct.io* %9, i32 0, i32 0
  %10 = load %struct.xpvio*, %struct.xpvio** %sv_any5, align 8
  %xio_flags6 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %10, i32 0, i32 22
  %11 = load i8, i8* %xio_flags6, align 1
  %conv7 = sext i8 %11 to i32
  %and8 = and i32 %conv7, 2
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.25

if.then.10:                                       ; preds = %land.lhs.true.4
  %12 = load %struct.io*, %struct.io** %io, align 8
  %sv_any11 = getelementptr inbounds %struct.io, %struct.io* %12, i32 0, i32 0
  %13 = load %struct.xpvio*, %struct.xpvio** %sv_any11, align 8
  %xio_flags12 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %13, i32 0, i32 22
  %14 = load i8, i8* %xio_flags12, align 1
  %conv13 = sext i8 %14 to i32
  %and14 = and i32 %conv13, -3
  %conv15 = trunc i32 %and14 to i8
  store i8 %conv15, i8* %xio_flags12, align 1
  %15 = load i8*, i8** @PL_inplace, align 8
  %tobool16 = icmp ne i8* %15, null
  br i1 %tobool16, label %if.then.17, label %if.end.24

if.then.17:                                       ; preds = %if.then.10
  %16 = load %struct.av*, %struct.av** @PL_argvout_stack, align 8
  %tobool18 = icmp ne %struct.av* %16, null
  br i1 %tobool18, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %if.then.17
  %call20 = call %struct.av* @Perl_newAV()
  store %struct.av* %call20, %struct.av** @PL_argvout_stack, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.then.17
  %17 = load %struct.av*, %struct.av** @PL_argvout_stack, align 8
  %18 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %19 = bitcast %struct.gv* %18 to %struct.sv*
  store %struct.sv* %19, %struct.sv** @PL_Sv, align 8
  %20 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool22 = icmp ne %struct.sv* %20, null
  br i1 %tobool22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.21
  %21 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 1
  %22 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool23 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.21
  %23 = phi i1 [ false, %if.end.21 ], [ %tobool23, %land.rhs ]
  %land.ext = zext i1 %23 to i32
  %24 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  call void @Perl_av_push(%struct.av* %17, %struct.sv* %24)
  br label %if.end.24

if.end.24:                                        ; preds = %land.end, %if.then.10
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %land.lhs.true.4, %land.lhs.true, %if.end
  %25 = load i32, i32* @PL_filemode, align 4
  %and26 = and i32 %25, 3072
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.53

if.then.28:                                       ; preds = %if.end.25
  %26 = load %struct.gv*, %struct.gv** @PL_argvoutgv, align 8
  %tobool29 = icmp ne %struct.gv* %26, null
  br i1 %tobool29, label %land.lhs.true.30, label %cond.false

land.lhs.true.30:                                 ; preds = %if.then.28
  %27 = load %struct.gv*, %struct.gv** @PL_argvoutgv, align 8
  %28 = bitcast %struct.gv* %27 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %28, i32 0, i32 2
  %29 = load i32, i32* %sv_flags, align 4
  %and31 = and i32 %29, 255
  %cmp = icmp eq i32 %and31, 13
  br i1 %cmp, label %land.lhs.true.33, label %cond.false

land.lhs.true.33:                                 ; preds = %land.lhs.true.30
  %30 = load %struct.gv*, %struct.gv** @PL_argvoutgv, align 8
  %sv_any34 = getelementptr inbounds %struct.gv, %struct.gv* %30, i32 0, i32 0
  %31 = load %struct.xpvgv*, %struct.xpvgv** %sv_any34, align 8
  %xgv_gp35 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %31, i32 0, i32 7
  %32 = load %struct.gp*, %struct.gp** %xgv_gp35, align 8
  %tobool36 = icmp ne %struct.gp* %32, null
  br i1 %tobool36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.33
  %33 = load %struct.gv*, %struct.gv** @PL_argvoutgv, align 8
  %sv_any37 = getelementptr inbounds %struct.gv, %struct.gv* %33, i32 0, i32 0
  %34 = load %struct.xpvgv*, %struct.xpvgv** %sv_any37, align 8
  %xgv_gp38 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %34, i32 0, i32 7
  %35 = load %struct.gp*, %struct.gp** %xgv_gp38, align 8
  %gp_io39 = getelementptr inbounds %struct.gp, %struct.gp* %35, i32 0, i32 2
  %36 = load %struct.io*, %struct.io** %gp_io39, align 8
  %tobool40 = icmp ne %struct.io* %36, null
  br i1 %tobool40, label %cond.true.41, label %cond.false.45

cond.false:                                       ; preds = %land.lhs.true.33, %land.lhs.true.30, %if.then.28
  br i1 false, label %cond.true.41, label %cond.false.45

cond.true.41:                                     ; preds = %cond.false, %cond.true
  %37 = load %struct.gv*, %struct.gv** @PL_argvoutgv, align 8
  %sv_any42 = getelementptr inbounds %struct.gv, %struct.gv* %37, i32 0, i32 0
  %38 = load %struct.xpvgv*, %struct.xpvgv** %sv_any42, align 8
  %xgv_gp43 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %38, i32 0, i32 7
  %39 = load %struct.gp*, %struct.gp** %xgv_gp43, align 8
  %gp_io44 = getelementptr inbounds %struct.gp, %struct.gp* %39, i32 0, i32 2
  %40 = load %struct.io*, %struct.io** %gp_io44, align 8
  br label %cond.end

cond.false.45:                                    ; preds = %cond.false, %cond.true
  %41 = load %struct.gv*, %struct.gv** @PL_argvoutgv, align 8
  %call46 = call %struct.gv* @Perl_gv_IOadd(%struct.gv* %41)
  %sv_any47 = getelementptr inbounds %struct.gv, %struct.gv* %call46, i32 0, i32 0
  %42 = load %struct.xpvgv*, %struct.xpvgv** %sv_any47, align 8
  %xgv_gp48 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %42, i32 0, i32 7
  %43 = load %struct.gp*, %struct.gp** %xgv_gp48, align 8
  %gp_io49 = getelementptr inbounds %struct.gp, %struct.gp* %43, i32 0, i32 2
  %44 = load %struct.io*, %struct.io** %gp_io49, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.45, %cond.true.41
  %cond = phi %struct.io* [ %40, %cond.true.41 ], [ %44, %cond.false.45 ]
  %sv_any50 = getelementptr inbounds %struct.io, %struct.io* %cond, i32 0, i32 0
  %45 = load %struct.xpvio*, %struct.xpvio** %sv_any50, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %45, i32 0, i32 7
  %46 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  %call51 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %46)
  %47 = load i8*, i8** @PL_oldname, align 8
  %48 = load i32, i32* @PL_filemode, align 4
  %call52 = call i32 @chmod(i8* %47, i32 %48)
  br label %if.end.53

if.end.53:                                        ; preds = %cond.end, %if.end.25
  store i32 -1, i32* @PL_lastfd, align 4
  store i32 0, i32* @PL_filemode, align 4
  %49 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any54 = getelementptr inbounds %struct.gv, %struct.gv* %49, i32 0, i32 0
  %50 = load %struct.xpvgv*, %struct.xpvgv** %sv_any54, align 8
  %xgv_gp55 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %50, i32 0, i32 7
  %51 = load %struct.gp*, %struct.gp** %xgv_gp55, align 8
  %gp_av = getelementptr inbounds %struct.gp, %struct.gp* %51, i32 0, i32 4
  %52 = load %struct.av*, %struct.av** %gp_av, align 8
  %tobool56 = icmp ne %struct.av* %52, null
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.end.53
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

if.end.58:                                        ; preds = %if.end.53
  br label %while.cond

while.cond:                                       ; preds = %if.end.316, %if.end.258, %if.end.219, %if.end.188, %if.end.143, %if.end.58
  %53 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any59 = getelementptr inbounds %struct.gv, %struct.gv* %53, i32 0, i32 0
  %54 = load %struct.xpvgv*, %struct.xpvgv** %sv_any59, align 8
  %xgv_gp60 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %54, i32 0, i32 7
  %55 = load %struct.gp*, %struct.gp** %xgv_gp60, align 8
  %gp_av61 = getelementptr inbounds %struct.gp, %struct.gp* %55, i32 0, i32 4
  %56 = load %struct.av*, %struct.av** %gp_av61, align 8
  %call62 = call i32 @Perl_av_len(%struct.av* %56)
  %cmp63 = icmp sge i32 %call62, 0
  br i1 %cmp63, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %57 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any65 = getelementptr inbounds %struct.gv, %struct.gv* %57, i32 0, i32 0
  %58 = load %struct.xpvgv*, %struct.xpvgv** %sv_any65, align 8
  %xgv_gp66 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %58, i32 0, i32 7
  %59 = load %struct.gp*, %struct.gp** %xgv_gp66, align 8
  %gp_av67 = getelementptr inbounds %struct.gp, %struct.gp* %59, i32 0, i32 4
  %60 = load %struct.av*, %struct.av** %gp_av67, align 8
  %call68 = call %struct.sv* @Perl_av_shift(%struct.av* %60)
  store %struct.sv* %call68, %struct.sv** %sv, align 8
  %61 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_save_freesv(%struct.sv* %61)
  %62 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any69 = getelementptr inbounds %struct.gv, %struct.gv* %62, i32 0, i32 0
  %63 = load %struct.xpvgv*, %struct.xpvgv** %sv_any69, align 8
  %xgv_gp70 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %63, i32 0, i32 7
  %64 = load %struct.gp*, %struct.gp** %xgv_gp70, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %64, i32 0, i32 0
  %65 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %66 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %65, %struct.sv* %66, i32 2)
  %67 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any71 = getelementptr inbounds %struct.gv, %struct.gv* %67, i32 0, i32 0
  %68 = load %struct.xpvgv*, %struct.xpvgv** %sv_any71, align 8
  %xgv_gp72 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %68, i32 0, i32 7
  %69 = load %struct.gp*, %struct.gp** %xgv_gp72, align 8
  %gp_sv73 = getelementptr inbounds %struct.gp, %struct.gp* %69, i32 0, i32 0
  %70 = load %struct.sv*, %struct.sv** %gp_sv73, align 8
  %sv_flags74 = getelementptr inbounds %struct.sv, %struct.sv* %70, i32 0, i32 2
  %71 = load i32, i32* %sv_flags74, align 4
  %and75 = and i32 %71, 16384
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.82

if.then.77:                                       ; preds = %while.body
  %72 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any78 = getelementptr inbounds %struct.gv, %struct.gv* %72, i32 0, i32 0
  %73 = load %struct.xpvgv*, %struct.xpvgv** %sv_any78, align 8
  %xgv_gp79 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %73, i32 0, i32 7
  %74 = load %struct.gp*, %struct.gp** %xgv_gp79, align 8
  %gp_sv80 = getelementptr inbounds %struct.gp, %struct.gp* %74, i32 0, i32 0
  %75 = load %struct.sv*, %struct.sv** %gp_sv80, align 8
  %call81 = call i32 @Perl_mg_set(%struct.sv* %75)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.77, %while.body
  %76 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any83 = getelementptr inbounds %struct.gv, %struct.gv* %76, i32 0, i32 0
  %77 = load %struct.xpvgv*, %struct.xpvgv** %sv_any83, align 8
  %xgv_gp84 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %77, i32 0, i32 7
  %78 = load %struct.gp*, %struct.gp** %xgv_gp84, align 8
  %gp_sv85 = getelementptr inbounds %struct.gp, %struct.gp* %78, i32 0, i32 0
  %79 = load %struct.sv*, %struct.sv** %gp_sv85, align 8
  store %struct.sv* %79, %struct.sv** @PL_Sv, align 8
  %80 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags86 = getelementptr inbounds %struct.sv, %struct.sv* %80, i32 0, i32 2
  %81 = load i32, i32* %sv_flags86, align 4
  %and87 = and i32 %81, 262144
  %cmp88 = icmp eq i32 %and87, 262144
  br i1 %cmp88, label %cond.true.90, label %cond.false.93

cond.true.90:                                     ; preds = %if.end.82
  %82 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any91 = getelementptr inbounds %struct.sv, %struct.sv* %82, i32 0, i32 0
  %83 = load i8*, i8** %sv_any91, align 8
  %84 = bitcast i8* %83 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %84, i32 0, i32 1
  %85 = load i64, i64* %xpv_cur, align 8
  store i64 %85, i64* %oldlen, align 8
  %86 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any92 = getelementptr inbounds %struct.sv, %struct.sv* %86, i32 0, i32 0
  %87 = load i8*, i8** %sv_any92, align 8
  %88 = bitcast i8* %87 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %88, i32 0, i32 0
  %89 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.95

cond.false.93:                                    ; preds = %if.end.82
  %90 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call94 = call i8* @Perl_sv_2pv_flags(%struct.sv* %90, i64* %oldlen, i32 2)
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.93, %cond.true.90
  %cond96 = phi i8* [ %89, %cond.true.90 ], [ %call94, %cond.false.93 ]
  store i8* %cond96, i8** @PL_oldname, align 8
  %91 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %92 = load i8*, i8** @PL_oldname, align 8
  %93 = load i64, i64* %oldlen, align 8
  %conv97 = trunc i64 %93 to i32
  %94 = load i8*, i8** @PL_inplace, align 8
  %cmp98 = icmp ne i8* %94, null
  %conv99 = zext i1 %cmp98 to i32
  %call100 = call signext i8 @Perl_do_open(%struct.gv* %91, i8* %92, i32 %conv97, i32 %conv99, i32 0, i32 0, %struct._PerlIO** null)
  %tobool101 = icmp ne i8 %call100, 0
  br i1 %tobool101, label %if.then.102, label %if.else.282

if.then.102:                                      ; preds = %cond.end.95
  %95 = load i8*, i8** @PL_inplace, align 8
  %tobool103 = icmp ne i8* %95, null
  br i1 %tobool103, label %if.then.104, label %if.end.276

if.then.104:                                      ; preds = %if.then.102
  %96 = load i8, i8* @PL_tainting, align 1
  %tobool105 = icmp ne i8 %96, 0
  br i1 %tobool105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.then.104
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.then.104
  %97 = load i64, i64* %oldlen, align 8
  %cmp108 = icmp eq i64 %97, 1
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.121

land.lhs.true.110:                                ; preds = %if.end.107
  %98 = load i8*, i8** @PL_oldname, align 8
  %99 = load i8, i8* %98, align 1
  %conv111 = sext i8 %99 to i32
  %cmp112 = icmp eq i32 %conv111, 45
  br i1 %cmp112, label %if.then.114, label %if.end.121

if.then.114:                                      ; preds = %land.lhs.true.110
  %call115 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 1, i32 15)
  call void @Perl_setdefout(%struct.gv* %call115)
  %100 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any116 = getelementptr inbounds %struct.gv, %struct.gv* %100, i32 0, i32 0
  %101 = load %struct.xpvgv*, %struct.xpvgv** %sv_any116, align 8
  %xgv_gp117 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %101, i32 0, i32 7
  %102 = load %struct.gp*, %struct.gp** %xgv_gp117, align 8
  %gp_io118 = getelementptr inbounds %struct.gp, %struct.gp* %102, i32 0, i32 2
  %103 = load %struct.io*, %struct.io** %gp_io118, align 8
  %sv_any119 = getelementptr inbounds %struct.io, %struct.io* %103, i32 0, i32 0
  %104 = load %struct.xpvio*, %struct.xpvio** %sv_any119, align 8
  %xio_ifp120 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %104, i32 0, i32 7
  %105 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp120, align 8
  store %struct._PerlIO** %105, %struct._PerlIO*** %retval
  br label %return

if.end.121:                                       ; preds = %land.lhs.true.110, %if.end.107
  %106 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statbuf, i32 0, i32 3), align 4
  store i32 %106, i32* @PL_filemode, align 4
  %107 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statbuf, i32 0, i32 4), align 4
  store i32 %107, i32* %fileuid, align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statbuf, i32 0, i32 5), align 4
  store i32 %108, i32* %filegid, align 4
  %109 = load i32, i32* @PL_filemode, align 4
  %and122 = and i32 %109, 61440
  %cmp123 = icmp eq i32 %and122, 32768
  br i1 %cmp123, label %if.end.145, label %if.then.125

if.then.125:                                      ; preds = %if.end.121
  %110 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %110, i32 0, i32 14
  %111 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp126 = icmp eq %struct.sv* %111, null
  br i1 %cmp126, label %if.then.142, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.125
  %112 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings128 = getelementptr inbounds %struct.cop, %struct.cop* %112, i32 0, i32 14
  %113 = load %struct.sv*, %struct.sv** %cop_warnings128, align 8
  %cmp129 = icmp eq %struct.sv* %113, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp129, label %if.then.142, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %lor.lhs.false
  %114 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings132 = getelementptr inbounds %struct.cop, %struct.cop* %114, i32 0, i32 14
  %115 = load %struct.sv*, %struct.sv** %cop_warnings132, align 8
  %cmp133 = icmp ne %struct.sv* %115, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp133, label %land.lhs.true.135, label %if.end.143

land.lhs.true.135:                                ; preds = %lor.lhs.false.131
  %116 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings136 = getelementptr inbounds %struct.cop, %struct.cop* %116, i32 0, i32 14
  %117 = load %struct.sv*, %struct.sv** %cop_warnings136, align 8
  %sv_any137 = getelementptr inbounds %struct.sv, %struct.sv* %117, i32 0, i32 0
  %118 = load i8*, i8** %sv_any137, align 8
  %119 = bitcast i8* %118 to %struct.xpv*
  %xpv_pv138 = getelementptr inbounds %struct.xpv, %struct.xpv* %119, i32 0, i32 0
  %120 = load i8*, i8** %xpv_pv138, align 8
  %arrayidx = getelementptr inbounds i8, i8* %120, i64 5
  %121 = load i8, i8* %arrayidx, align 1
  %conv139 = sext i8 %121 to i32
  %and140 = and i32 %conv139, 64
  %tobool141 = icmp ne i32 %and140, 0
  br i1 %tobool141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %land.lhs.true.135, %lor.lhs.false, %if.then.125
  %122 = load i8*, i8** @PL_oldname, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 23, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i32 0, i32 0), i8* %122)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %land.lhs.true.135, %lor.lhs.false.131
  %123 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %call144 = call signext i8 @Perl_do_close(%struct.gv* %123, i8 signext 0)
  br label %while.cond

if.end.145:                                       ; preds = %if.end.121
  %124 = load i8*, i8** @PL_inplace, align 8
  %125 = load i8, i8* %124, align 1
  %tobool146 = icmp ne i8 %125, 0
  br i1 %tobool146, label %if.then.147, label %if.else.192

if.then.147:                                      ; preds = %if.end.145
  %126 = load i8*, i8** @PL_inplace, align 8
  %call148 = call i8* @strchr(i8* %126, i32 42)
  store i8* %call148, i8** %star, align 8
  %127 = load i8*, i8** %star, align 8
  %tobool149 = icmp ne i8* %127, null
  br i1 %tobool149, label %if.then.150, label %if.else

if.then.150:                                      ; preds = %if.then.147
  %128 = load i8*, i8** @PL_inplace, align 8
  store i8* %128, i8** %begin, align 8
  %129 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_setpvn(%struct.sv* %129, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i64 0)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.150
  %130 = load %struct.sv*, %struct.sv** %sv, align 8
  %131 = load i8*, i8** %begin, align 8
  %132 = load i8*, i8** %star, align 8
  %133 = load i8*, i8** %begin, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %132 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %133 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @Perl_sv_catpvn_flags(%struct.sv* %130, i8* %131, i64 %sub.ptr.sub, i32 2)
  %134 = load %struct.sv*, %struct.sv** %sv, align 8
  %135 = load i8*, i8** @PL_oldname, align 8
  %136 = load i64, i64* %oldlen, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %134, i8* %135, i64 %136, i32 2)
  %137 = load i8*, i8** %star, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %incdec.ptr, i8** %star, align 8
  store i8* %incdec.ptr, i8** %begin, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %138 = load i8*, i8** %begin, align 8
  %call151 = call i8* @strchr(i8* %138, i32 42)
  store i8* %call151, i8** %star, align 8
  %tobool152 = icmp ne i8* %call151, null
  br i1 %tobool152, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %139 = load i8*, i8** %begin, align 8
  %140 = load i8, i8* %139, align 1
  %tobool153 = icmp ne i8 %140, 0
  br i1 %tobool153, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %do.end
  %141 = load %struct.sv*, %struct.sv** %sv, align 8
  %142 = load i8*, i8** %begin, align 8
  call void @Perl_sv_catpv(%struct.sv* %141, i8* %142)
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %do.end
  br label %if.end.156

if.else:                                          ; preds = %if.then.147
  %143 = load %struct.sv*, %struct.sv** %sv, align 8
  %144 = load i8*, i8** @PL_inplace, align 8
  call void @Perl_sv_catpv(%struct.sv* %143, i8* %144)
  br label %if.end.156

if.end.156:                                       ; preds = %if.else, %if.end.155
  %145 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any157 = getelementptr inbounds %struct.sv, %struct.sv* %145, i32 0, i32 0
  %146 = load i8*, i8** %sv_any157, align 8
  %147 = bitcast i8* %146 to %struct.xpv*
  %xpv_pv158 = getelementptr inbounds %struct.xpv, %struct.xpv* %147, i32 0, i32 0
  %148 = load i8*, i8** %xpv_pv158, align 8
  %call159 = call i32 @unlink(i8* %148)
  %149 = load i8*, i8** @PL_oldname, align 8
  %150 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any160 = getelementptr inbounds %struct.sv, %struct.sv* %150, i32 0, i32 0
  %151 = load i8*, i8** %sv_any160, align 8
  %152 = bitcast i8* %151 to %struct.xpv*
  %xpv_pv161 = getelementptr inbounds %struct.xpv, %struct.xpv* %152, i32 0, i32 0
  %153 = load i8*, i8** %xpv_pv161, align 8
  %call162 = call i32 @link(i8* %149, i8* %153)
  %cmp163 = icmp slt i32 %call162, 0
  br i1 %cmp163, label %if.then.165, label %if.end.190

if.then.165:                                      ; preds = %if.end.156
  %154 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings166 = getelementptr inbounds %struct.cop, %struct.cop* %154, i32 0, i32 14
  %155 = load %struct.sv*, %struct.sv** %cop_warnings166, align 8
  %cmp167 = icmp eq %struct.sv* %155, null
  br i1 %cmp167, label %if.then.185, label %lor.lhs.false.169

lor.lhs.false.169:                                ; preds = %if.then.165
  %156 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings170 = getelementptr inbounds %struct.cop, %struct.cop* %156, i32 0, i32 14
  %157 = load %struct.sv*, %struct.sv** %cop_warnings170, align 8
  %cmp171 = icmp eq %struct.sv* %157, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp171, label %if.then.185, label %lor.lhs.false.173

lor.lhs.false.173:                                ; preds = %lor.lhs.false.169
  %158 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings174 = getelementptr inbounds %struct.cop, %struct.cop* %158, i32 0, i32 14
  %159 = load %struct.sv*, %struct.sv** %cop_warnings174, align 8
  %cmp175 = icmp ne %struct.sv* %159, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp175, label %land.lhs.true.177, label %if.end.188

land.lhs.true.177:                                ; preds = %lor.lhs.false.173
  %160 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings178 = getelementptr inbounds %struct.cop, %struct.cop* %160, i32 0, i32 14
  %161 = load %struct.sv*, %struct.sv** %cop_warnings178, align 8
  %sv_any179 = getelementptr inbounds %struct.sv, %struct.sv* %161, i32 0, i32 0
  %162 = load i8*, i8** %sv_any179, align 8
  %163 = bitcast i8* %162 to %struct.xpv*
  %xpv_pv180 = getelementptr inbounds %struct.xpv, %struct.xpv* %163, i32 0, i32 0
  %164 = load i8*, i8** %xpv_pv180, align 8
  %arrayidx181 = getelementptr inbounds i8, i8* %164, i64 5
  %165 = load i8, i8* %arrayidx181, align 1
  %conv182 = sext i8 %165 to i32
  %and183 = and i32 %conv182, 64
  %tobool184 = icmp ne i32 %and183, 0
  br i1 %tobool184, label %if.then.185, label %if.end.188

if.then.185:                                      ; preds = %land.lhs.true.177, %lor.lhs.false.169, %if.then.165
  %166 = load i8*, i8** @PL_oldname, align 8
  %167 = load %struct.sv*, %struct.sv** %sv, align 8
  %call186 = call i32* @__errno_location()
  %168 = load i32, i32* %call186, align 4
  %call187 = call i8* @strerror(i32 %168)
  call void (i32, i8*, ...) @Perl_warner(i32 23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i32 0, i32 0), i8* %166, %struct.sv* %167, i8* %call187)
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.185, %land.lhs.true.177, %lor.lhs.false.173
  %169 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %call189 = call signext i8 @Perl_do_close(%struct.gv* %169, i8 signext 0)
  br label %while.cond

if.end.190:                                       ; preds = %if.end.156
  %170 = load i8*, i8** @PL_oldname, align 8
  %call191 = call i32 @unlink(i8* %170)
  br label %if.end.222

if.else.192:                                      ; preds = %if.end.145
  %171 = load i8*, i8** @PL_oldname, align 8
  %call193 = call i32 @unlink(i8* %171)
  %cmp194 = icmp slt i32 %call193, 0
  br i1 %cmp194, label %if.then.196, label %if.end.221

if.then.196:                                      ; preds = %if.else.192
  %172 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings197 = getelementptr inbounds %struct.cop, %struct.cop* %172, i32 0, i32 14
  %173 = load %struct.sv*, %struct.sv** %cop_warnings197, align 8
  %cmp198 = icmp eq %struct.sv* %173, null
  br i1 %cmp198, label %if.then.216, label %lor.lhs.false.200

lor.lhs.false.200:                                ; preds = %if.then.196
  %174 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings201 = getelementptr inbounds %struct.cop, %struct.cop* %174, i32 0, i32 14
  %175 = load %struct.sv*, %struct.sv** %cop_warnings201, align 8
  %cmp202 = icmp eq %struct.sv* %175, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp202, label %if.then.216, label %lor.lhs.false.204

lor.lhs.false.204:                                ; preds = %lor.lhs.false.200
  %176 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings205 = getelementptr inbounds %struct.cop, %struct.cop* %176, i32 0, i32 14
  %177 = load %struct.sv*, %struct.sv** %cop_warnings205, align 8
  %cmp206 = icmp ne %struct.sv* %177, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp206, label %land.lhs.true.208, label %if.end.219

land.lhs.true.208:                                ; preds = %lor.lhs.false.204
  %178 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings209 = getelementptr inbounds %struct.cop, %struct.cop* %178, i32 0, i32 14
  %179 = load %struct.sv*, %struct.sv** %cop_warnings209, align 8
  %sv_any210 = getelementptr inbounds %struct.sv, %struct.sv* %179, i32 0, i32 0
  %180 = load i8*, i8** %sv_any210, align 8
  %181 = bitcast i8* %180 to %struct.xpv*
  %xpv_pv211 = getelementptr inbounds %struct.xpv, %struct.xpv* %181, i32 0, i32 0
  %182 = load i8*, i8** %xpv_pv211, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %182, i64 5
  %183 = load i8, i8* %arrayidx212, align 1
  %conv213 = sext i8 %183 to i32
  %and214 = and i32 %conv213, 64
  %tobool215 = icmp ne i32 %and214, 0
  br i1 %tobool215, label %if.then.216, label %if.end.219

if.then.216:                                      ; preds = %land.lhs.true.208, %lor.lhs.false.200, %if.then.196
  %184 = load i8*, i8** @PL_oldname, align 8
  %call217 = call i32* @__errno_location()
  %185 = load i32, i32* %call217, align 4
  %call218 = call i8* @strerror(i32 %185)
  call void (i32, i8*, ...) @Perl_warner(i32 23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i32 0, i32 0), i8* %184, i8* %call218)
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.216, %land.lhs.true.208, %lor.lhs.false.204
  %186 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %call220 = call signext i8 @Perl_do_close(%struct.gv* %186, i8 signext 0)
  br label %while.cond

if.end.221:                                       ; preds = %if.else.192
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %if.end.190
  %187 = load %struct.sv*, %struct.sv** %sv, align 8
  %188 = load i8*, i8** @PL_inplace, align 8
  %tobool223 = icmp ne i8* %188, null
  %lnot = xor i1 %tobool223, true
  %lnot.ext = zext i1 %lnot to i32
  %conv224 = sext i32 %lnot.ext to i64
  call void @Perl_sv_setpvn(%struct.sv* %187, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i64 %conv224)
  %189 = load %struct.sv*, %struct.sv** %sv, align 8
  %190 = load i8*, i8** @PL_oldname, align 8
  %191 = load i64, i64* %oldlen, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %189, i8* %190, i64 %191, i32 2)
  %call225 = call i32* @__errno_location()
  store i32 0, i32* %call225, align 4
  %192 = load %struct.gv*, %struct.gv** @PL_argvoutgv, align 8
  %193 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any226 = getelementptr inbounds %struct.sv, %struct.sv* %193, i32 0, i32 0
  %194 = load i8*, i8** %sv_any226, align 8
  %195 = bitcast i8* %194 to %struct.xpv*
  %xpv_pv227 = getelementptr inbounds %struct.xpv, %struct.xpv* %195, i32 0, i32 0
  %196 = load i8*, i8** %xpv_pv227, align 8
  %197 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any228 = getelementptr inbounds %struct.sv, %struct.sv* %197, i32 0, i32 0
  %198 = load i8*, i8** %sv_any228, align 8
  %199 = bitcast i8* %198 to %struct.xpv*
  %xpv_cur229 = getelementptr inbounds %struct.xpv, %struct.xpv* %199, i32 0, i32 1
  %200 = load i64, i64* %xpv_cur229, align 8
  %conv230 = trunc i64 %200 to i32
  %201 = load i8*, i8** @PL_inplace, align 8
  %cmp231 = icmp ne i8* %201, null
  %conv232 = zext i1 %cmp231 to i32
  %call233 = call signext i8 @Perl_do_open(%struct.gv* %192, i8* %196, i32 %conv230, i32 %conv232, i32 193, i32 438, %struct._PerlIO** null)
  %tobool234 = icmp ne i8 %call233, 0
  br i1 %tobool234, label %if.end.260, label %if.then.235

if.then.235:                                      ; preds = %if.end.222
  %202 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings236 = getelementptr inbounds %struct.cop, %struct.cop* %202, i32 0, i32 14
  %203 = load %struct.sv*, %struct.sv** %cop_warnings236, align 8
  %cmp237 = icmp eq %struct.sv* %203, null
  br i1 %cmp237, label %if.then.255, label %lor.lhs.false.239

lor.lhs.false.239:                                ; preds = %if.then.235
  %204 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings240 = getelementptr inbounds %struct.cop, %struct.cop* %204, i32 0, i32 14
  %205 = load %struct.sv*, %struct.sv** %cop_warnings240, align 8
  %cmp241 = icmp eq %struct.sv* %205, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp241, label %if.then.255, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %lor.lhs.false.239
  %206 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings244 = getelementptr inbounds %struct.cop, %struct.cop* %206, i32 0, i32 14
  %207 = load %struct.sv*, %struct.sv** %cop_warnings244, align 8
  %cmp245 = icmp ne %struct.sv* %207, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp245, label %land.lhs.true.247, label %if.end.258

land.lhs.true.247:                                ; preds = %lor.lhs.false.243
  %208 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings248 = getelementptr inbounds %struct.cop, %struct.cop* %208, i32 0, i32 14
  %209 = load %struct.sv*, %struct.sv** %cop_warnings248, align 8
  %sv_any249 = getelementptr inbounds %struct.sv, %struct.sv* %209, i32 0, i32 0
  %210 = load i8*, i8** %sv_any249, align 8
  %211 = bitcast i8* %210 to %struct.xpv*
  %xpv_pv250 = getelementptr inbounds %struct.xpv, %struct.xpv* %211, i32 0, i32 0
  %212 = load i8*, i8** %xpv_pv250, align 8
  %arrayidx251 = getelementptr inbounds i8, i8* %212, i64 5
  %213 = load i8, i8* %arrayidx251, align 1
  %conv252 = sext i8 %213 to i32
  %and253 = and i32 %conv252, 64
  %tobool254 = icmp ne i32 %and253, 0
  br i1 %tobool254, label %if.then.255, label %if.end.258

if.then.255:                                      ; preds = %land.lhs.true.247, %lor.lhs.false.239, %if.then.235
  %214 = load i8*, i8** @PL_oldname, align 8
  %call256 = call i32* @__errno_location()
  %215 = load i32, i32* %call256, align 4
  %call257 = call i8* @strerror(i32 %215)
  call void (i32, i8*, ...) @Perl_warner(i32 23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0), i8* %214, i8* %call257)
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.255, %land.lhs.true.247, %lor.lhs.false.243
  %216 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %call259 = call signext i8 @Perl_do_close(%struct.gv* %216, i8 signext 0)
  br label %while.cond

if.end.260:                                       ; preds = %if.end.222
  %217 = load %struct.gv*, %struct.gv** @PL_argvoutgv, align 8
  call void @Perl_setdefout(%struct.gv* %217)
  %218 = load %struct.gv*, %struct.gv** @PL_argvoutgv, align 8
  %sv_any261 = getelementptr inbounds %struct.gv, %struct.gv* %218, i32 0, i32 0
  %219 = load %struct.xpvgv*, %struct.xpvgv** %sv_any261, align 8
  %xgv_gp262 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %219, i32 0, i32 7
  %220 = load %struct.gp*, %struct.gp** %xgv_gp262, align 8
  %gp_io263 = getelementptr inbounds %struct.gp, %struct.gp* %220, i32 0, i32 2
  %221 = load %struct.io*, %struct.io** %gp_io263, align 8
  %sv_any264 = getelementptr inbounds %struct.io, %struct.io* %221, i32 0, i32 0
  %222 = load %struct.xpvio*, %struct.xpvio** %sv_any264, align 8
  %xio_ifp265 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %222, i32 0, i32 7
  %223 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp265, align 8
  %call266 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %223)
  store i32 %call266, i32* @PL_lastfd, align 4
  %224 = load i32, i32* @PL_lastfd, align 4
  %call267 = call i32 @fstat(i32 %224, %struct.stat* @PL_statbuf)
  %225 = load i8*, i8** @PL_oldname, align 8
  %226 = load i32, i32* @PL_filemode, align 4
  %call268 = call i32 @chmod(i8* %225, i32 %226)
  %227 = load i32, i32* %fileuid, align 4
  %228 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statbuf, i32 0, i32 4), align 4
  %cmp269 = icmp ne i32 %227, %228
  br i1 %cmp269, label %if.then.274, label %lor.lhs.false.271

lor.lhs.false.271:                                ; preds = %if.end.260
  %229 = load i32, i32* %filegid, align 4
  %230 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statbuf, i32 0, i32 5), align 4
  %cmp272 = icmp ne i32 %229, %230
  br i1 %cmp272, label %if.then.274, label %if.end.275

if.then.274:                                      ; preds = %lor.lhs.false.271, %if.end.260
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.274, %lor.lhs.false.271
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %if.then.102
  %231 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any277 = getelementptr inbounds %struct.gv, %struct.gv* %231, i32 0, i32 0
  %232 = load %struct.xpvgv*, %struct.xpvgv** %sv_any277, align 8
  %xgv_gp278 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %232, i32 0, i32 7
  %233 = load %struct.gp*, %struct.gp** %xgv_gp278, align 8
  %gp_io279 = getelementptr inbounds %struct.gp, %struct.gp* %233, i32 0, i32 2
  %234 = load %struct.io*, %struct.io** %gp_io279, align 8
  %sv_any280 = getelementptr inbounds %struct.io, %struct.io* %234, i32 0, i32 0
  %235 = load %struct.xpvio*, %struct.xpvio** %sv_any280, align 8
  %xio_ifp281 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %235, i32 0, i32 7
  %236 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp281, align 8
  store %struct._PerlIO** %236, %struct._PerlIO*** %retval
  br label %return

if.else.282:                                      ; preds = %cond.end.95
  %237 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings283 = getelementptr inbounds %struct.cop, %struct.cop* %237, i32 0, i32 14
  %238 = load %struct.sv*, %struct.sv** %cop_warnings283, align 8
  %cmp284 = icmp eq %struct.sv* %238, null
  br i1 %cmp284, label %if.then.302, label %lor.lhs.false.286

lor.lhs.false.286:                                ; preds = %if.else.282
  %239 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings287 = getelementptr inbounds %struct.cop, %struct.cop* %239, i32 0, i32 14
  %240 = load %struct.sv*, %struct.sv** %cop_warnings287, align 8
  %cmp288 = icmp eq %struct.sv* %240, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp288, label %if.then.302, label %lor.lhs.false.290

lor.lhs.false.290:                                ; preds = %lor.lhs.false.286
  %241 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings291 = getelementptr inbounds %struct.cop, %struct.cop* %241, i32 0, i32 14
  %242 = load %struct.sv*, %struct.sv** %cop_warnings291, align 8
  %cmp292 = icmp ne %struct.sv* %242, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp292, label %land.lhs.true.294, label %if.end.315

land.lhs.true.294:                                ; preds = %lor.lhs.false.290
  %243 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings295 = getelementptr inbounds %struct.cop, %struct.cop* %243, i32 0, i32 14
  %244 = load %struct.sv*, %struct.sv** %cop_warnings295, align 8
  %sv_any296 = getelementptr inbounds %struct.sv, %struct.sv* %244, i32 0, i32 0
  %245 = load i8*, i8** %sv_any296, align 8
  %246 = bitcast i8* %245 to %struct.xpv*
  %xpv_pv297 = getelementptr inbounds %struct.xpv, %struct.xpv* %246, i32 0, i32 0
  %247 = load i8*, i8** %xpv_pv297, align 8
  %arrayidx298 = getelementptr inbounds i8, i8* %247, i64 5
  %248 = load i8, i8* %arrayidx298, align 1
  %conv299 = sext i8 %248 to i32
  %and300 = and i32 %conv299, 64
  %tobool301 = icmp ne i32 %and300, 0
  br i1 %tobool301, label %if.then.302, label %if.end.315

if.then.302:                                      ; preds = %land.lhs.true.294, %lor.lhs.false.286, %if.else.282
  %call303 = call i32* @__errno_location()
  %249 = load i32, i32* %call303, align 4
  store i32 %249, i32* %eno, align 4
  %250 = load i8*, i8** @PL_oldname, align 8
  %call304 = call i32 @stat(i8* %250, %struct.stat* @PL_statbuf)
  %cmp305 = icmp sge i32 %call304, 0
  br i1 %cmp305, label %land.lhs.true.307, label %if.else.312

land.lhs.true.307:                                ; preds = %if.then.302
  %251 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statbuf, i32 0, i32 3), align 4
  %and308 = and i32 %251, 61440
  %cmp309 = icmp eq i32 %and308, 32768
  br i1 %cmp309, label %if.else.312, label %if.then.311

if.then.311:                                      ; preds = %land.lhs.true.307
  %252 = load i8*, i8** @PL_oldname, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 23, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i32 0, i32 0), i8* %252)
  br label %if.end.314

if.else.312:                                      ; preds = %land.lhs.true.307, %if.then.302
  %253 = load i8*, i8** @PL_oldname, align 8
  %254 = load i32, i32* %eno, align 4
  %call313 = call i8* @strerror(i32 %254)
  call void (i32, i8*, ...) @Perl_warner(i32 23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8* %253, i8* %call313)
  br label %if.end.314

if.end.314:                                       ; preds = %if.else.312, %if.then.311
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.314, %land.lhs.true.294, %lor.lhs.false.290
  br label %if.end.316

if.end.316:                                       ; preds = %if.end.315
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %255 = load %struct.io*, %struct.io** %io, align 8
  %tobool317 = icmp ne %struct.io* %255, null
  br i1 %tobool317, label %land.lhs.true.318, label %if.end.329

land.lhs.true.318:                                ; preds = %while.end
  %256 = load %struct.io*, %struct.io** %io, align 8
  %sv_any319 = getelementptr inbounds %struct.io, %struct.io* %256, i32 0, i32 0
  %257 = load %struct.xpvio*, %struct.xpvio** %sv_any319, align 8
  %xio_flags320 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %257, i32 0, i32 22
  %258 = load i8, i8* %xio_flags320, align 1
  %conv321 = sext i8 %258 to i32
  %and322 = and i32 %conv321, 1
  %tobool323 = icmp ne i32 %and322, 0
  br i1 %tobool323, label %if.then.324, label %if.end.329

if.then.324:                                      ; preds = %land.lhs.true.318
  %259 = load %struct.io*, %struct.io** %io, align 8
  %sv_any325 = getelementptr inbounds %struct.io, %struct.io* %259, i32 0, i32 0
  %260 = load %struct.xpvio*, %struct.xpvio** %sv_any325, align 8
  %xio_flags326 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %260, i32 0, i32 22
  %261 = load i8, i8* %xio_flags326, align 1
  %conv327 = sext i8 %261 to i32
  %or = or i32 %conv327, 2
  %conv328 = trunc i32 %or to i8
  store i8 %conv328, i8* %xio_flags326, align 1
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.324, %land.lhs.true.318, %while.end
  %262 = load i8*, i8** @PL_inplace, align 8
  %tobool330 = icmp ne i8* %262, null
  br i1 %tobool330, label %if.then.331, label %if.end.350

if.then.331:                                      ; preds = %if.end.329
  %263 = load %struct.gv*, %struct.gv** @PL_argvoutgv, align 8
  %call332 = call signext i8 @Perl_do_close(%struct.gv* %263, i8 signext 0)
  %264 = load %struct.io*, %struct.io** %io, align 8
  %tobool333 = icmp ne %struct.io* %264, null
  br i1 %tobool333, label %land.lhs.true.334, label %if.end.348

land.lhs.true.334:                                ; preds = %if.then.331
  %265 = load %struct.io*, %struct.io** %io, align 8
  %sv_any335 = getelementptr inbounds %struct.io, %struct.io* %265, i32 0, i32 0
  %266 = load %struct.xpvio*, %struct.xpvio** %sv_any335, align 8
  %xio_flags336 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %266, i32 0, i32 22
  %267 = load i8, i8* %xio_flags336, align 1
  %conv337 = sext i8 %267 to i32
  %and338 = and i32 %conv337, 1
  %tobool339 = icmp ne i32 %and338, 0
  br i1 %tobool339, label %land.lhs.true.340, label %if.end.348

land.lhs.true.340:                                ; preds = %land.lhs.true.334
  %268 = load %struct.av*, %struct.av** @PL_argvout_stack, align 8
  %tobool341 = icmp ne %struct.av* %268, null
  br i1 %tobool341, label %land.lhs.true.342, label %if.end.348

land.lhs.true.342:                                ; preds = %land.lhs.true.340
  %269 = load %struct.av*, %struct.av** @PL_argvout_stack, align 8
  %sv_any343 = getelementptr inbounds %struct.av, %struct.av* %269, i32 0, i32 0
  %270 = load %struct.xpvav*, %struct.xpvav** %sv_any343, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %270, i32 0, i32 1
  %271 = load i64, i64* %xav_fill, align 8
  %cmp344 = icmp sge i64 %271, 0
  br i1 %cmp344, label %if.then.346, label %if.end.348

if.then.346:                                      ; preds = %land.lhs.true.342
  %272 = load %struct.av*, %struct.av** @PL_argvout_stack, align 8
  %call347 = call %struct.sv* @Perl_av_pop(%struct.av* %272)
  %273 = bitcast %struct.sv* %call347 to %struct.gv*
  store %struct.gv* %273, %struct.gv** %oldout, align 8
  %274 = load %struct.gv*, %struct.gv** %oldout, align 8
  call void @Perl_setdefout(%struct.gv* %274)
  %275 = load %struct.gv*, %struct.gv** %oldout, align 8
  %276 = bitcast %struct.gv* %275 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %276)
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

if.end.348:                                       ; preds = %land.lhs.true.342, %land.lhs.true.340, %land.lhs.true.334, %if.then.331
  %call349 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 1, i32 15)
  call void @Perl_setdefout(%struct.gv* %call349)
  br label %if.end.350

if.end.350:                                       ; preds = %if.end.348, %if.end.329
  store %struct._PerlIO** null, %struct._PerlIO*** %retval
  br label %return

return:                                           ; preds = %if.end.350, %if.then.346, %if.end.276, %if.then.114, %if.then.57
  %277 = load %struct._PerlIO**, %struct._PerlIO*** %retval
  ret %struct._PerlIO** %277
}

declare %struct.av* @Perl_newAV() #1

declare void @Perl_av_push(%struct.av*, %struct.sv*) #1

declare i32 @chmod(i8*, i32) #1

declare i32 @Perl_av_len(%struct.av*) #1

declare %struct.sv* @Perl_av_shift(%struct.av*) #1

declare void @Perl_save_freesv(%struct.sv*) #1

declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

declare i32 @Perl_mg_set(%struct.sv*) #1

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

declare void @Perl_setdefout(%struct.gv*) #1

; Function Attrs: nounwind uwtable
define signext i8 @Perl_do_close(%struct.gv* %gv, i8 signext %not_implicit) #0 {
entry:
  %retval = alloca i8, align 1
  %gv.addr = alloca %struct.gv*, align 8
  %not_implicit.addr = alloca i8, align 1
  %retval1 = alloca i8, align 1
  %io = alloca %struct.io*, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  store i8 %not_implicit, i8* %not_implicit.addr, align 1
  %0 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool = icmp ne %struct.gv* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.gv*, %struct.gv** @PL_argvgv, align 8
  store %struct.gv* %1, %struct.gv** %gv.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool2 = icmp ne %struct.gv* %2, null
  br i1 %tobool2, label %lor.lhs.false, label %if.then.3

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and = and i32 %4, 255
  %cmp = icmp ne i32 %and, 13
  br i1 %cmp, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %5 = load i8, i8* %not_implicit.addr, align 1
  %tobool4 = icmp ne i8 %5, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  %call = call i32* @__errno_location()
  store i32 9, i32* %call, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  store i8 0, i8* %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  %6 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool8 = icmp ne %struct.gv* %6, null
  br i1 %tobool8, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end.7
  %7 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %8 = bitcast %struct.gv* %7 to %struct.sv*
  %sv_flags9 = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 2
  %9 = load i32, i32* %sv_flags9, align 4
  %and10 = and i32 %9, 255
  %cmp11 = icmp eq i32 %and10, 13
  br i1 %cmp11, label %land.lhs.true.12, label %cond.false

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %10 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %10, i32 0, i32 0
  %11 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %11, i32 0, i32 7
  %12 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool13 = icmp ne %struct.gp* %12, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.12
  %13 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any14 = getelementptr inbounds %struct.gv, %struct.gv* %13, i32 0, i32 0
  %14 = load %struct.xpvgv*, %struct.xpvgv** %sv_any14, align 8
  %xgv_gp15 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %14, i32 0, i32 7
  %15 = load %struct.gp*, %struct.gp** %xgv_gp15, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %15, i32 0, i32 2
  %16 = load %struct.io*, %struct.io** %gp_io, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.12, %land.lhs.true, %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.io* [ %16, %cond.true ], [ null, %cond.false ]
  store %struct.io* %cond, %struct.io** %io, align 8
  %17 = load %struct.io*, %struct.io** %io, align 8
  %tobool16 = icmp ne %struct.io* %17, null
  br i1 %tobool16, label %if.end.45, label %if.then.17

if.then.17:                                       ; preds = %cond.end
  %18 = load i8, i8* %not_implicit.addr, align 1
  %tobool18 = icmp ne i8 %18, 0
  br i1 %tobool18, label %if.then.19, label %if.end.44

if.then.19:                                       ; preds = %if.then.17
  %19 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %19, i32 0, i32 14
  %20 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp20 = icmp ne %struct.sv* %20, null
  br i1 %cmp20, label %land.lhs.true.21, label %lor.lhs.false.32

land.lhs.true.21:                                 ; preds = %if.then.19
  %21 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings22 = getelementptr inbounds %struct.cop, %struct.cop* %21, i32 0, i32 14
  %22 = load %struct.sv*, %struct.sv** %cop_warnings22, align 8
  %cmp23 = icmp ne %struct.sv* %22, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp23, label %land.lhs.true.24, label %lor.lhs.false.32

land.lhs.true.24:                                 ; preds = %land.lhs.true.21
  %23 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings25 = getelementptr inbounds %struct.cop, %struct.cop* %23, i32 0, i32 14
  %24 = load %struct.sv*, %struct.sv** %cop_warnings25, align 8
  %cmp26 = icmp eq %struct.sv* %24, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp26, label %if.then.40, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %land.lhs.true.24
  %25 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings28 = getelementptr inbounds %struct.cop, %struct.cop* %25, i32 0, i32 14
  %26 = load %struct.sv*, %struct.sv** %cop_warnings28, align 8
  %sv_any29 = getelementptr inbounds %struct.sv, %struct.sv* %26, i32 0, i32 0
  %27 = load i8*, i8** %sv_any29, align 8
  %28 = bitcast i8* %27 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %28, i32 0, i32 0
  %29 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %29, i64 2
  %30 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %30 to i32
  %and30 = and i32 %conv, 64
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then.40, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.27, %land.lhs.true.21, %if.then.19
  %31 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings33 = getelementptr inbounds %struct.cop, %struct.cop* %31, i32 0, i32 14
  %32 = load %struct.sv*, %struct.sv** %cop_warnings33, align 8
  %cmp34 = icmp eq %struct.sv* %32, null
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.42

land.lhs.true.36:                                 ; preds = %lor.lhs.false.32
  %33 = load i8, i8* @PL_dowarn, align 1
  %conv37 = zext i8 %33 to i32
  %and38 = and i32 %conv37, 1
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %land.lhs.true.36, %lor.lhs.false.27, %land.lhs.true.24
  %34 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %35 = load %struct.io*, %struct.io** %io, align 8
  %36 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %36, i32 0, i32 4
  %37 = load i16, i16* %op_type, align 2
  %conv41 = zext i16 %37 to i32
  call void @Perl_report_evil_fh(%struct.gv* %34, %struct.io* %35, i32 %conv41)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %land.lhs.true.36, %lor.lhs.false.32
  %call43 = call i32* @__errno_location()
  store i32 9, i32* %call43, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.42, %if.then.17
  store i8 0, i8* %retval
  br label %return

if.end.45:                                        ; preds = %cond.end
  %38 = load %struct.io*, %struct.io** %io, align 8
  %39 = load i8, i8* %not_implicit.addr, align 1
  %call46 = call signext i8 @Perl_io_close(%struct.io* %38, i8 signext %39)
  store i8 %call46, i8* %retval1, align 1
  %40 = load i8, i8* %not_implicit.addr, align 1
  %tobool47 = icmp ne i8 %40, 0
  br i1 %tobool47, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %if.end.45
  %41 = load %struct.io*, %struct.io** %io, align 8
  %sv_any49 = getelementptr inbounds %struct.io, %struct.io* %41, i32 0, i32 0
  %42 = load %struct.xpvio*, %struct.xpvio** %sv_any49, align 8
  %xio_lines = getelementptr inbounds %struct.xpvio, %struct.xpvio* %42, i32 0, i32 10
  store i64 0, i64* %xio_lines, align 8
  %43 = load %struct.io*, %struct.io** %io, align 8
  %sv_any50 = getelementptr inbounds %struct.io, %struct.io* %43, i32 0, i32 0
  %44 = load %struct.xpvio*, %struct.xpvio** %sv_any50, align 8
  %xio_page = getelementptr inbounds %struct.xpvio, %struct.xpvio* %44, i32 0, i32 11
  store i64 0, i64* %xio_page, align 8
  %45 = load %struct.io*, %struct.io** %io, align 8
  %sv_any51 = getelementptr inbounds %struct.io, %struct.io* %45, i32 0, i32 0
  %46 = load %struct.xpvio*, %struct.xpvio** %sv_any51, align 8
  %xio_page_len = getelementptr inbounds %struct.xpvio, %struct.xpvio* %46, i32 0, i32 12
  %47 = load i64, i64* %xio_page_len, align 8
  %48 = load %struct.io*, %struct.io** %io, align 8
  %sv_any52 = getelementptr inbounds %struct.io, %struct.io* %48, i32 0, i32 0
  %49 = load %struct.xpvio*, %struct.xpvio** %sv_any52, align 8
  %xio_lines_left = getelementptr inbounds %struct.xpvio, %struct.xpvio* %49, i32 0, i32 13
  store i64 %47, i64* %xio_lines_left, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.48, %if.end.45
  %50 = load %struct.io*, %struct.io** %io, align 8
  %sv_any54 = getelementptr inbounds %struct.io, %struct.io* %50, i32 0, i32 0
  %51 = load %struct.xpvio*, %struct.xpvio** %sv_any54, align 8
  %xio_type = getelementptr inbounds %struct.xpvio, %struct.xpvio* %51, i32 0, i32 21
  store i8 32, i8* %xio_type, align 1
  %52 = load i8, i8* %retval1, align 1
  store i8 %52, i8* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.end.44, %if.end.6
  %53 = load i8, i8* %retval
  ret i8 %53
}

declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #1

declare void @Perl_sv_catpv(%struct.sv*, i8*) #1

declare i32 @unlink(i8*) #1

declare i32 @link(i8*, i8*) #1

declare i8* @strerror(i32) #1

declare i32 @stat(i8*, %struct.stat*) #1

declare %struct.sv* @Perl_av_pop(%struct.av*) #1

declare void @Perl_sv_free(%struct.sv*) #1

declare void @Perl_report_evil_fh(%struct.gv*, %struct.io*, i32) #1

; Function Attrs: nounwind uwtable
define signext i8 @Perl_io_close(%struct.io* %io, i8 signext %not_implicit) #0 {
entry:
  %io.addr = alloca %struct.io*, align 8
  %not_implicit.addr = alloca i8, align 1
  %retval1 = alloca i8, align 1
  %status = alloca i32, align 4
  %prev_err = alloca i8, align 1
  %prev_err51 = alloca i8, align 1
  store %struct.io* %io, %struct.io** %io.addr, align 8
  store i8 %not_implicit, i8* %not_implicit.addr, align 1
  store i8 0, i8* %retval1, align 1
  %0 = load %struct.io*, %struct.io** %io.addr, align 8
  %sv_any = getelementptr inbounds %struct.io, %struct.io* %0, i32 0, i32 0
  %1 = load %struct.xpvio*, %struct.xpvio** %sv_any, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %1, i32 0, i32 7
  %2 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  %tobool = icmp ne %struct._PerlIO** %2, null
  br i1 %tobool, label %if.then, label %if.else.74

if.then:                                          ; preds = %entry
  %3 = load %struct.io*, %struct.io** %io.addr, align 8
  %sv_any2 = getelementptr inbounds %struct.io, %struct.io* %3, i32 0, i32 0
  %4 = load %struct.xpvio*, %struct.xpvio** %sv_any2, align 8
  %xio_type = getelementptr inbounds %struct.xpvio, %struct.xpvio* %4, i32 0, i32 21
  %5 = load i8, i8* %xio_type, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 124
  br i1 %cmp, label %if.then.4, label %if.else.19

if.then.4:                                        ; preds = %if.then
  %6 = load %struct.io*, %struct.io** %io.addr, align 8
  %sv_any5 = getelementptr inbounds %struct.io, %struct.io* %6, i32 0, i32 0
  %7 = load %struct.xpvio*, %struct.xpvio** %sv_any5, align 8
  %xio_ifp6 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %7, i32 0, i32 7
  %8 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp6, align 8
  %call = call i32 @Perl_my_pclose(%struct._PerlIO** %8)
  store i32 %call, i32* %status, align 4
  %9 = load i8, i8* %not_implicit.addr, align 1
  %tobool7 = icmp ne i8 %9, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.4
  %10 = load i32, i32* %status, align 4
  store i32 %10, i32* @PL_statusvalue, align 4
  %11 = load i32, i32* @PL_statusvalue, align 4
  %cmp9 = icmp ne i32 %11, -1
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then.8
  %12 = load i32, i32* @PL_statusvalue, align 4
  %and = and i32 %12, 65535
  store i32 %and, i32* @PL_statusvalue, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then.8
  %13 = load i32, i32* @PL_statusvalue, align 4
  %cmp12 = icmp eq i32 %13, 0
  %conv13 = zext i1 %cmp12 to i32
  %conv14 = trunc i32 %conv13 to i8
  store i8 %conv14, i8* %retval1, align 1
  br label %if.end.18

if.else:                                          ; preds = %if.then.4
  %14 = load i32, i32* %status, align 4
  %cmp15 = icmp ne i32 %14, -1
  %conv16 = zext i1 %cmp15 to i32
  %conv17 = trunc i32 %conv16 to i8
  store i8 %conv17, i8* %retval1, align 1
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.end
  br label %if.end.69

if.else.19:                                       ; preds = %if.then
  %15 = load %struct.io*, %struct.io** %io.addr, align 8
  %sv_any20 = getelementptr inbounds %struct.io, %struct.io* %15, i32 0, i32 0
  %16 = load %struct.xpvio*, %struct.xpvio** %sv_any20, align 8
  %xio_type21 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %16, i32 0, i32 21
  %17 = load i8, i8* %xio_type21, align 1
  %conv22 = sext i8 %17 to i32
  %cmp23 = icmp eq i32 %conv22, 45
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.else.19
  store i8 1, i8* %retval1, align 1
  br label %if.end.68

if.else.26:                                       ; preds = %if.else.19
  %18 = load %struct.io*, %struct.io** %io.addr, align 8
  %sv_any27 = getelementptr inbounds %struct.io, %struct.io* %18, i32 0, i32 0
  %19 = load %struct.xpvio*, %struct.xpvio** %sv_any27, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %19, i32 0, i32 8
  %20 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool28 = icmp ne %struct._PerlIO** %20, null
  br i1 %tobool28, label %land.lhs.true, label %if.else.50

land.lhs.true:                                    ; preds = %if.else.26
  %21 = load %struct.io*, %struct.io** %io.addr, align 8
  %sv_any29 = getelementptr inbounds %struct.io, %struct.io* %21, i32 0, i32 0
  %22 = load %struct.xpvio*, %struct.xpvio** %sv_any29, align 8
  %xio_ofp30 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %22, i32 0, i32 8
  %23 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp30, align 8
  %24 = load %struct.io*, %struct.io** %io.addr, align 8
  %sv_any31 = getelementptr inbounds %struct.io, %struct.io* %24, i32 0, i32 0
  %25 = load %struct.xpvio*, %struct.xpvio** %sv_any31, align 8
  %xio_ifp32 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %25, i32 0, i32 7
  %26 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp32, align 8
  %cmp33 = icmp ne %struct._PerlIO** %23, %26
  br i1 %cmp33, label %if.then.35, label %if.else.50

if.then.35:                                       ; preds = %land.lhs.true
  %27 = load %struct.io*, %struct.io** %io.addr, align 8
  %sv_any36 = getelementptr inbounds %struct.io, %struct.io* %27, i32 0, i32 0
  %28 = load %struct.xpvio*, %struct.xpvio** %sv_any36, align 8
  %xio_ofp37 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %28, i32 0, i32 8
  %29 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp37, align 8
  %call38 = call i32 @Perl_PerlIO_error(%struct._PerlIO** %29)
  %conv39 = trunc i32 %call38 to i8
  store i8 %conv39, i8* %prev_err, align 1
  %30 = load %struct.io*, %struct.io** %io.addr, align 8
  %sv_any40 = getelementptr inbounds %struct.io, %struct.io* %30, i32 0, i32 0
  %31 = load %struct.xpvio*, %struct.xpvio** %sv_any40, align 8
  %xio_ofp41 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %31, i32 0, i32 8
  %32 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp41, align 8
  %call42 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %32)
  %cmp43 = icmp ne i32 %call42, -1
  br i1 %cmp43, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.35
  %33 = load i8, i8* %prev_err, align 1
  %tobool45 = icmp ne i8 %33, 0
  %lnot = xor i1 %tobool45, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.35
  %34 = phi i1 [ false, %if.then.35 ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %34 to i32
  %conv46 = trunc i32 %land.ext to i8
  store i8 %conv46, i8* %retval1, align 1
  %35 = load %struct.io*, %struct.io** %io.addr, align 8
  %sv_any47 = getelementptr inbounds %struct.io, %struct.io* %35, i32 0, i32 0
  %36 = load %struct.xpvio*, %struct.xpvio** %sv_any47, align 8
  %xio_ifp48 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %36, i32 0, i32 7
  %37 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp48, align 8
  %call49 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %37)
  br label %if.end.67

if.else.50:                                       ; preds = %land.lhs.true, %if.else.26
  %38 = load %struct.io*, %struct.io** %io.addr, align 8
  %sv_any52 = getelementptr inbounds %struct.io, %struct.io* %38, i32 0, i32 0
  %39 = load %struct.xpvio*, %struct.xpvio** %sv_any52, align 8
  %xio_ifp53 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %39, i32 0, i32 7
  %40 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp53, align 8
  %call54 = call i32 @Perl_PerlIO_error(%struct._PerlIO** %40)
  %conv55 = trunc i32 %call54 to i8
  store i8 %conv55, i8* %prev_err51, align 1
  %41 = load %struct.io*, %struct.io** %io.addr, align 8
  %sv_any56 = getelementptr inbounds %struct.io, %struct.io* %41, i32 0, i32 0
  %42 = load %struct.xpvio*, %struct.xpvio** %sv_any56, align 8
  %xio_ifp57 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %42, i32 0, i32 7
  %43 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp57, align 8
  %call58 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %43)
  %cmp59 = icmp ne i32 %call58, -1
  br i1 %cmp59, label %land.rhs.61, label %land.end.64

land.rhs.61:                                      ; preds = %if.else.50
  %44 = load i8, i8* %prev_err51, align 1
  %tobool62 = icmp ne i8 %44, 0
  %lnot63 = xor i1 %tobool62, true
  br label %land.end.64

land.end.64:                                      ; preds = %land.rhs.61, %if.else.50
  %45 = phi i1 [ false, %if.else.50 ], [ %lnot63, %land.rhs.61 ]
  %land.ext65 = zext i1 %45 to i32
  %conv66 = trunc i32 %land.ext65 to i8
  store i8 %conv66, i8* %retval1, align 1
  br label %if.end.67

if.end.67:                                        ; preds = %land.end.64, %land.end
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.25
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.18
  %46 = load %struct.io*, %struct.io** %io.addr, align 8
  %sv_any70 = getelementptr inbounds %struct.io, %struct.io* %46, i32 0, i32 0
  %47 = load %struct.xpvio*, %struct.xpvio** %sv_any70, align 8
  %xio_ifp71 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %47, i32 0, i32 7
  store %struct._PerlIO** null, %struct._PerlIO*** %xio_ifp71, align 8
  %48 = load %struct.io*, %struct.io** %io.addr, align 8
  %sv_any72 = getelementptr inbounds %struct.io, %struct.io* %48, i32 0, i32 0
  %49 = load %struct.xpvio*, %struct.xpvio** %sv_any72, align 8
  %xio_ofp73 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %49, i32 0, i32 8
  store %struct._PerlIO** null, %struct._PerlIO*** %xio_ofp73, align 8
  br label %if.end.79

if.else.74:                                       ; preds = %entry
  %50 = load i8, i8* %not_implicit.addr, align 1
  %tobool75 = icmp ne i8 %50, 0
  br i1 %tobool75, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.else.74
  %call77 = call i32* @__errno_location()
  store i32 9, i32* %call77, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %if.else.74
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.69
  %51 = load i8, i8* %retval1, align 1
  ret i8 %51
}

declare i32 @Perl_PerlIO_error(%struct._PerlIO**) #1

; Function Attrs: nounwind uwtable
define signext i8 @Perl_do_eof(%struct.gv* %gv) #0 {
entry:
  %retval = alloca i8, align 1
  %gv.addr = alloca %struct.gv*, align 8
  %io = alloca %struct.io*, align 8
  %ch = alloca i32, align 4
  %saverrno = alloca i32, align 4
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  %0 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool = icmp ne %struct.gv* %0, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %2 = bitcast %struct.gv* %1 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags, align 4
  %and = and i32 %3, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true.1, label %cond.false

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %4 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %4, i32 0, i32 0
  %5 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %5, i32 0, i32 7
  %6 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool2 = icmp ne %struct.gp* %6, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.1
  %7 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any3 = getelementptr inbounds %struct.gv, %struct.gv* %7, i32 0, i32 0
  %8 = load %struct.xpvgv*, %struct.xpvgv** %sv_any3, align 8
  %xgv_gp4 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %8, i32 0, i32 7
  %9 = load %struct.gp*, %struct.gp** %xgv_gp4, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %9, i32 0, i32 2
  %10 = load %struct.io*, %struct.io** %gp_io, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.1, %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.io* [ %10, %cond.true ], [ null, %cond.false ]
  store %struct.io* %cond, %struct.io** %io, align 8
  %11 = load %struct.io*, %struct.io** %io, align 8
  %tobool5 = icmp ne %struct.io* %11, null
  br i1 %tobool5, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  store i8 1, i8* %retval
  br label %return

if.else:                                          ; preds = %cond.end
  %12 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %12, i32 0, i32 14
  %13 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp6 = icmp ne %struct.sv* %13, null
  br i1 %cmp6, label %land.lhs.true.7, label %lor.lhs.false.17

land.lhs.true.7:                                  ; preds = %if.else
  %14 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings8 = getelementptr inbounds %struct.cop, %struct.cop* %14, i32 0, i32 14
  %15 = load %struct.sv*, %struct.sv** %cop_warnings8, align 8
  %cmp9 = icmp ne %struct.sv* %15, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp9, label %land.lhs.true.10, label %lor.lhs.false.17

land.lhs.true.10:                                 ; preds = %land.lhs.true.7
  %16 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings11 = getelementptr inbounds %struct.cop, %struct.cop* %16, i32 0, i32 14
  %17 = load %struct.sv*, %struct.sv** %cop_warnings11, align 8
  %cmp12 = icmp eq %struct.sv* %17, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp12, label %land.lhs.true.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.10
  %18 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings13 = getelementptr inbounds %struct.cop, %struct.cop* %18, i32 0, i32 14
  %19 = load %struct.sv*, %struct.sv** %cop_warnings13, align 8
  %sv_any14 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 0
  %20 = load i8*, i8** %sv_any14, align 8
  %21 = bitcast i8* %20 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %21, i32 0, i32 0
  %22 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %23 to i32
  %and15 = and i32 %conv, 4
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %land.lhs.true.25, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false, %land.lhs.true.7, %if.else
  %24 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings18 = getelementptr inbounds %struct.cop, %struct.cop* %24, i32 0, i32 14
  %25 = load %struct.sv*, %struct.sv** %cop_warnings18, align 8
  %cmp19 = icmp eq %struct.sv* %25, null
  br i1 %cmp19, label %land.lhs.true.21, label %if.end

land.lhs.true.21:                                 ; preds = %lor.lhs.false.17
  %26 = load i8, i8* @PL_dowarn, align 1
  %conv22 = zext i8 %26 to i32
  %and23 = and i32 %conv22, 1
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %land.lhs.true.25, label %if.end

land.lhs.true.25:                                 ; preds = %land.lhs.true.21, %lor.lhs.false, %land.lhs.true.10
  %27 = load %struct.io*, %struct.io** %io, align 8
  %sv_any26 = getelementptr inbounds %struct.io, %struct.io* %27, i32 0, i32 0
  %28 = load %struct.xpvio*, %struct.xpvio** %sv_any26, align 8
  %xio_type = getelementptr inbounds %struct.xpvio, %struct.xpvio* %28, i32 0, i32 21
  %29 = load i8, i8* %xio_type, align 1
  %conv27 = sext i8 %29 to i32
  %cmp28 = icmp eq i32 %conv27, 62
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %land.lhs.true.25
  %30 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %31 = load %struct.io*, %struct.io** %io, align 8
  call void @Perl_report_evil_fh(%struct.gv* %30, %struct.io* %31, i32 -2)
  br label %if.end

if.end:                                           ; preds = %if.then.30, %land.lhs.true.25, %land.lhs.true.21, %lor.lhs.false.17
  br label %if.end.31

if.end.31:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.91, %if.end.31
  %32 = load %struct.io*, %struct.io** %io, align 8
  %sv_any32 = getelementptr inbounds %struct.io, %struct.io* %32, i32 0, i32 0
  %33 = load %struct.xpvio*, %struct.xpvio** %sv_any32, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %33, i32 0, i32 7
  %34 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  %tobool33 = icmp ne %struct._PerlIO** %34, null
  br i1 %tobool33, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load %struct.io*, %struct.io** %io, align 8
  %sv_any34 = getelementptr inbounds %struct.io, %struct.io* %35, i32 0, i32 0
  %36 = load %struct.xpvio*, %struct.xpvio** %sv_any34, align 8
  %xio_ifp35 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %36, i32 0, i32 7
  %37 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp35, align 8
  %call = call i32 @PerlIO_has_cntptr(%struct._PerlIO** %37)
  %tobool36 = icmp ne i32 %call, 0
  br i1 %tobool36, label %if.then.37, label %if.end.45

if.then.37:                                       ; preds = %while.body
  %38 = load %struct.io*, %struct.io** %io, align 8
  %sv_any38 = getelementptr inbounds %struct.io, %struct.io* %38, i32 0, i32 0
  %39 = load %struct.xpvio*, %struct.xpvio** %sv_any38, align 8
  %xio_ifp39 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %39, i32 0, i32 7
  %40 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp39, align 8
  %call40 = call i32 @Perl_PerlIO_get_cnt(%struct._PerlIO** %40)
  %cmp41 = icmp sgt i32 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.37
  store i8 0, i8* %retval
  br label %return

if.end.44:                                        ; preds = %if.then.37
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %while.body
  %call46 = call i32* @__errno_location()
  %41 = load i32, i32* %call46, align 4
  store i32 %41, i32* %saverrno, align 4
  %42 = load %struct.io*, %struct.io** %io, align 8
  %sv_any47 = getelementptr inbounds %struct.io, %struct.io* %42, i32 0, i32 0
  %43 = load %struct.xpvio*, %struct.xpvio** %sv_any47, align 8
  %xio_ifp48 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %43, i32 0, i32 7
  %44 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp48, align 8
  %call49 = call i32 @PerlIO_getc(%struct._PerlIO** %44)
  store i32 %call49, i32* %ch, align 4
  %45 = load i32, i32* %ch, align 4
  %cmp50 = icmp ne i32 %45, -1
  br i1 %cmp50, label %if.then.52, label %if.end.57

if.then.52:                                       ; preds = %if.end.45
  %46 = load %struct.io*, %struct.io** %io, align 8
  %sv_any53 = getelementptr inbounds %struct.io, %struct.io* %46, i32 0, i32 0
  %47 = load %struct.xpvio*, %struct.xpvio** %sv_any53, align 8
  %xio_ifp54 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %47, i32 0, i32 7
  %48 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp54, align 8
  %49 = load i32, i32* %ch, align 4
  %call55 = call i32 @PerlIO_ungetc(%struct._PerlIO** %48, i32 %49)
  %50 = load i32, i32* %saverrno, align 4
  %call56 = call i32* @__errno_location()
  store i32 %50, i32* %call56, align 4
  store i8 0, i8* %retval
  br label %return

if.end.57:                                        ; preds = %if.end.45
  %51 = load i32, i32* %saverrno, align 4
  %call58 = call i32* @__errno_location()
  store i32 %51, i32* %call58, align 4
  %52 = load %struct.io*, %struct.io** %io, align 8
  %sv_any59 = getelementptr inbounds %struct.io, %struct.io* %52, i32 0, i32 0
  %53 = load %struct.xpvio*, %struct.xpvio** %sv_any59, align 8
  %xio_ifp60 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %53, i32 0, i32 7
  %54 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp60, align 8
  %call61 = call i32 @PerlIO_has_cntptr(%struct._PerlIO** %54)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %land.lhs.true.63, label %if.end.78

land.lhs.true.63:                                 ; preds = %if.end.57
  %55 = load %struct.io*, %struct.io** %io, align 8
  %sv_any64 = getelementptr inbounds %struct.io, %struct.io* %55, i32 0, i32 0
  %56 = load %struct.xpvio*, %struct.xpvio** %sv_any64, align 8
  %xio_ifp65 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %56, i32 0, i32 7
  %57 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp65, align 8
  %call66 = call i32 @PerlIO_canset_cnt(%struct._PerlIO** %57)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.78

if.then.68:                                       ; preds = %land.lhs.true.63
  %58 = load %struct.io*, %struct.io** %io, align 8
  %sv_any69 = getelementptr inbounds %struct.io, %struct.io* %58, i32 0, i32 0
  %59 = load %struct.xpvio*, %struct.xpvio** %sv_any69, align 8
  %xio_ifp70 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %59, i32 0, i32 7
  %60 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp70, align 8
  %call71 = call i32 @Perl_PerlIO_get_cnt(%struct._PerlIO** %60)
  %cmp72 = icmp slt i32 %call71, -1
  br i1 %cmp72, label %if.then.74, label %if.end.77

if.then.74:                                       ; preds = %if.then.68
  %61 = load %struct.io*, %struct.io** %io, align 8
  %sv_any75 = getelementptr inbounds %struct.io, %struct.io* %61, i32 0, i32 0
  %62 = load %struct.xpvio*, %struct.xpvio** %sv_any75, align 8
  %xio_ifp76 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %62, i32 0, i32 7
  %63 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp76, align 8
  call void @Perl_PerlIO_set_cnt(%struct._PerlIO** %63, i32 -1)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.74, %if.then.68
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %land.lhs.true.63, %if.end.57
  %64 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %64, i32 0, i32 6
  %65 = load i8, i8* %op_flags, align 1
  %conv79 = zext i8 %65 to i32
  %and80 = and i32 %conv79, 128
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.then.82, label %if.else.90

if.then.82:                                       ; preds = %if.end.78
  %66 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %67 = load %struct.gv*, %struct.gv** @PL_argvgv, align 8
  %cmp83 = icmp ne %struct.gv* %66, %67
  br i1 %cmp83, label %if.then.88, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %if.then.82
  %68 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %call86 = call %struct._PerlIO** @Perl_nextargv(%struct.gv* %68)
  %tobool87 = icmp ne %struct._PerlIO** %call86, null
  br i1 %tobool87, label %if.end.89, label %if.then.88

if.then.88:                                       ; preds = %lor.lhs.false.85, %if.then.82
  store i8 1, i8* %retval
  br label %return

if.end.89:                                        ; preds = %lor.lhs.false.85
  br label %if.end.91

if.else.90:                                       ; preds = %if.end.78
  store i8 1, i8* %retval
  br label %return

if.end.91:                                        ; preds = %if.end.89
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8 1, i8* %retval
  br label %return

return:                                           ; preds = %while.end, %if.else.90, %if.then.88, %if.then.52, %if.then.43, %if.then
  %69 = load i8, i8* %retval
  ret i8 %69
}

declare i32 @PerlIO_has_cntptr(%struct._PerlIO**) #1

declare i32 @Perl_PerlIO_get_cnt(%struct._PerlIO**) #1

declare i32 @PerlIO_getc(%struct._PerlIO**) #1

declare i32 @PerlIO_ungetc(%struct._PerlIO**, i32) #1

declare i32 @PerlIO_canset_cnt(%struct._PerlIO**) #1

declare void @Perl_PerlIO_set_cnt(%struct._PerlIO**, i32) #1

; Function Attrs: nounwind uwtable
define i64 @Perl_do_tell(%struct.gv* %gv) #0 {
entry:
  %retval = alloca i64, align 8
  %gv.addr = alloca %struct.gv*, align 8
  %io = alloca %struct.io*, align 8
  %fp = alloca %struct._PerlIO**, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  store %struct.io* null, %struct.io** %io, align 8
  %0 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool = icmp ne %struct.gv* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool1 = icmp ne %struct.gv* %1, null
  br i1 %tobool1, label %land.lhs.true.2, label %cond.false

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %3 = bitcast %struct.gv* %2 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and = and i32 %4, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true.3, label %cond.false

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  %5 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %5, i32 0, i32 0
  %6 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %6, i32 0, i32 7
  %7 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool4 = icmp ne %struct.gp* %7, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.3
  %8 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any5 = getelementptr inbounds %struct.gv, %struct.gv* %8, i32 0, i32 0
  %9 = load %struct.xpvgv*, %struct.xpvgv** %sv_any5, align 8
  %xgv_gp6 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %9, i32 0, i32 7
  %10 = load %struct.gp*, %struct.gp** %xgv_gp6, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %10, i32 0, i32 2
  %11 = load %struct.io*, %struct.io** %gp_io, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.3, %land.lhs.true.2, %land.lhs.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.io* [ %11, %cond.true ], [ null, %cond.false ]
  store %struct.io* %cond, %struct.io** %io, align 8
  %tobool7 = icmp ne %struct.io* %cond, null
  br i1 %tobool7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %cond.end
  %12 = load %struct.io*, %struct.io** %io, align 8
  %sv_any9 = getelementptr inbounds %struct.io, %struct.io* %12, i32 0, i32 0
  %13 = load %struct.xpvio*, %struct.xpvio** %sv_any9, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %13, i32 0, i32 7
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  store %struct._PerlIO** %14, %struct._PerlIO*** %fp, align 8
  %tobool10 = icmp ne %struct._PerlIO** %14, null
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.8
  %15 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call = call i64 @Perl_PerlIO_tell(%struct._PerlIO** %15)
  store i64 %call, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.8, %cond.end, %entry
  %16 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %16, i32 0, i32 14
  %17 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp11 = icmp ne %struct.sv* %17, null
  br i1 %cmp11, label %land.lhs.true.12, label %lor.lhs.false.30

land.lhs.true.12:                                 ; preds = %if.end
  %18 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings13 = getelementptr inbounds %struct.cop, %struct.cop* %18, i32 0, i32 14
  %19 = load %struct.sv*, %struct.sv** %cop_warnings13, align 8
  %cmp14 = icmp ne %struct.sv* %19, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp14, label %land.lhs.true.15, label %lor.lhs.false.30

land.lhs.true.15:                                 ; preds = %land.lhs.true.12
  %20 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings16 = getelementptr inbounds %struct.cop, %struct.cop* %20, i32 0, i32 14
  %21 = load %struct.sv*, %struct.sv** %cop_warnings16, align 8
  %cmp17 = icmp eq %struct.sv* %21, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp17, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.15
  %22 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings18 = getelementptr inbounds %struct.cop, %struct.cop* %22, i32 0, i32 14
  %23 = load %struct.sv*, %struct.sv** %cop_warnings18, align 8
  %sv_any19 = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 0
  %24 = load i8*, i8** %sv_any19, align 8
  %25 = bitcast i8* %24 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %25, i32 0, i32 0
  %26 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 2
  %27 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %27 to i32
  %and20 = and i32 %conv, 64
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.38, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false
  %28 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings23 = getelementptr inbounds %struct.cop, %struct.cop* %28, i32 0, i32 14
  %29 = load %struct.sv*, %struct.sv** %cop_warnings23, align 8
  %sv_any24 = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 0
  %30 = load i8*, i8** %sv_any24, align 8
  %31 = bitcast i8* %30 to %struct.xpv*
  %xpv_pv25 = getelementptr inbounds %struct.xpv, %struct.xpv* %31, i32 0, i32 0
  %32 = load i8*, i8** %xpv_pv25, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %33 to i32
  %and28 = and i32 %conv27, 16
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then.38, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.22, %land.lhs.true.12, %if.end
  %34 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings31 = getelementptr inbounds %struct.cop, %struct.cop* %34, i32 0, i32 14
  %35 = load %struct.sv*, %struct.sv** %cop_warnings31, align 8
  %cmp32 = icmp eq %struct.sv* %35, null
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.40

land.lhs.true.34:                                 ; preds = %lor.lhs.false.30
  %36 = load i8, i8* @PL_dowarn, align 1
  %conv35 = zext i8 %36 to i32
  %and36 = and i32 %conv35, 1
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %land.lhs.true.34, %lor.lhs.false.22, %lor.lhs.false, %land.lhs.true.15
  %37 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %38 = load %struct.io*, %struct.io** %io, align 8
  %39 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %39, i32 0, i32 4
  %40 = load i16, i16* %op_type, align 2
  %conv39 = zext i16 %40 to i32
  call void @Perl_report_evil_fh(%struct.gv* %37, %struct.io* %38, i32 %conv39)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %land.lhs.true.34, %lor.lhs.false.30
  %call41 = call i32* @__errno_location()
  store i32 9, i32* %call41, align 4
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then
  %41 = load i64, i64* %retval
  ret i64 %41
}

declare i64 @Perl_PerlIO_tell(%struct._PerlIO**) #1

; Function Attrs: nounwind uwtable
define signext i8 @Perl_do_seek(%struct.gv* %gv, i64 %pos, i32 %whence) #0 {
entry:
  %retval = alloca i8, align 1
  %gv.addr = alloca %struct.gv*, align 8
  %pos.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  %io = alloca %struct.io*, align 8
  %fp = alloca %struct._PerlIO**, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i32 %whence, i32* %whence.addr, align 4
  store %struct.io* null, %struct.io** %io, align 8
  %0 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool = icmp ne %struct.gv* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool1 = icmp ne %struct.gv* %1, null
  br i1 %tobool1, label %land.lhs.true.2, label %cond.false

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %3 = bitcast %struct.gv* %2 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and = and i32 %4, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true.3, label %cond.false

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  %5 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %5, i32 0, i32 0
  %6 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %6, i32 0, i32 7
  %7 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool4 = icmp ne %struct.gp* %7, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.3
  %8 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any5 = getelementptr inbounds %struct.gv, %struct.gv* %8, i32 0, i32 0
  %9 = load %struct.xpvgv*, %struct.xpvgv** %sv_any5, align 8
  %xgv_gp6 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %9, i32 0, i32 7
  %10 = load %struct.gp*, %struct.gp** %xgv_gp6, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %10, i32 0, i32 2
  %11 = load %struct.io*, %struct.io** %gp_io, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.3, %land.lhs.true.2, %land.lhs.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.io* [ %11, %cond.true ], [ null, %cond.false ]
  store %struct.io* %cond, %struct.io** %io, align 8
  %tobool7 = icmp ne %struct.io* %cond, null
  br i1 %tobool7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %cond.end
  %12 = load %struct.io*, %struct.io** %io, align 8
  %sv_any9 = getelementptr inbounds %struct.io, %struct.io* %12, i32 0, i32 0
  %13 = load %struct.xpvio*, %struct.xpvio** %sv_any9, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %13, i32 0, i32 7
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  store %struct._PerlIO** %14, %struct._PerlIO*** %fp, align 8
  %tobool10 = icmp ne %struct._PerlIO** %14, null
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.8
  %15 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %16 = load i64, i64* %pos.addr, align 8
  %17 = load i32, i32* %whence.addr, align 4
  %call = call i32 @Perl_PerlIO_seek(%struct._PerlIO** %15, i64 %16, i32 %17)
  %cmp11 = icmp sge i32 %call, 0
  %conv = zext i1 %cmp11 to i32
  %conv12 = trunc i32 %conv to i8
  store i8 %conv12, i8* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.8, %cond.end, %entry
  %18 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %18, i32 0, i32 14
  %19 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp13 = icmp ne %struct.sv* %19, null
  br i1 %cmp13, label %land.lhs.true.15, label %lor.lhs.false.36

land.lhs.true.15:                                 ; preds = %if.end
  %20 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings16 = getelementptr inbounds %struct.cop, %struct.cop* %20, i32 0, i32 14
  %21 = load %struct.sv*, %struct.sv** %cop_warnings16, align 8
  %cmp17 = icmp ne %struct.sv* %21, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp17, label %land.lhs.true.19, label %lor.lhs.false.36

land.lhs.true.19:                                 ; preds = %land.lhs.true.15
  %22 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings20 = getelementptr inbounds %struct.cop, %struct.cop* %22, i32 0, i32 14
  %23 = load %struct.sv*, %struct.sv** %cop_warnings20, align 8
  %cmp21 = icmp eq %struct.sv* %23, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp21, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.19
  %24 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings23 = getelementptr inbounds %struct.cop, %struct.cop* %24, i32 0, i32 14
  %25 = load %struct.sv*, %struct.sv** %cop_warnings23, align 8
  %sv_any24 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 0
  %26 = load i8*, i8** %sv_any24, align 8
  %27 = bitcast i8* %26 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %27, i32 0, i32 0
  %28 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 2
  %29 = load i8, i8* %arrayidx, align 1
  %conv25 = sext i8 %29 to i32
  %and26 = and i32 %conv25, 64
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then.44, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false
  %30 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings29 = getelementptr inbounds %struct.cop, %struct.cop* %30, i32 0, i32 14
  %31 = load %struct.sv*, %struct.sv** %cop_warnings29, align 8
  %sv_any30 = getelementptr inbounds %struct.sv, %struct.sv* %31, i32 0, i32 0
  %32 = load i8*, i8** %sv_any30, align 8
  %33 = bitcast i8* %32 to %struct.xpv*
  %xpv_pv31 = getelementptr inbounds %struct.xpv, %struct.xpv* %33, i32 0, i32 0
  %34 = load i8*, i8** %xpv_pv31, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %35 to i32
  %and34 = and i32 %conv33, 16
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then.44, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.28, %land.lhs.true.15, %if.end
  %36 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings37 = getelementptr inbounds %struct.cop, %struct.cop* %36, i32 0, i32 14
  %37 = load %struct.sv*, %struct.sv** %cop_warnings37, align 8
  %cmp38 = icmp eq %struct.sv* %37, null
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.46

land.lhs.true.40:                                 ; preds = %lor.lhs.false.36
  %38 = load i8, i8* @PL_dowarn, align 1
  %conv41 = zext i8 %38 to i32
  %and42 = and i32 %conv41, 1
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %land.lhs.true.40, %lor.lhs.false.28, %lor.lhs.false, %land.lhs.true.19
  %39 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %40 = load %struct.io*, %struct.io** %io, align 8
  %41 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %41, i32 0, i32 4
  %42 = load i16, i16* %op_type, align 2
  %conv45 = zext i16 %42 to i32
  call void @Perl_report_evil_fh(%struct.gv* %39, %struct.io* %40, i32 %conv45)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %land.lhs.true.40, %lor.lhs.false.36
  %call47 = call i32* @__errno_location()
  store i32 9, i32* %call47, align 4
  store i8 0, i8* %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then
  %43 = load i8, i8* %retval
  ret i8 %43
}

declare i32 @Perl_PerlIO_seek(%struct._PerlIO**, i64, i32) #1

; Function Attrs: nounwind uwtable
define i64 @Perl_do_sysseek(%struct.gv* %gv, i64 %pos, i32 %whence) #0 {
entry:
  %retval = alloca i64, align 8
  %gv.addr = alloca %struct.gv*, align 8
  %pos.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  %io = alloca %struct.io*, align 8
  %fp = alloca %struct._PerlIO**, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i32 %whence, i32* %whence.addr, align 4
  store %struct.io* null, %struct.io** %io, align 8
  %0 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool = icmp ne %struct.gv* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool1 = icmp ne %struct.gv* %1, null
  br i1 %tobool1, label %land.lhs.true.2, label %cond.false

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %3 = bitcast %struct.gv* %2 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and = and i32 %4, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true.3, label %cond.false

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  %5 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %5, i32 0, i32 0
  %6 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %6, i32 0, i32 7
  %7 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool4 = icmp ne %struct.gp* %7, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.3
  %8 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any5 = getelementptr inbounds %struct.gv, %struct.gv* %8, i32 0, i32 0
  %9 = load %struct.xpvgv*, %struct.xpvgv** %sv_any5, align 8
  %xgv_gp6 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %9, i32 0, i32 7
  %10 = load %struct.gp*, %struct.gp** %xgv_gp6, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %10, i32 0, i32 2
  %11 = load %struct.io*, %struct.io** %gp_io, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.3, %land.lhs.true.2, %land.lhs.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.io* [ %11, %cond.true ], [ null, %cond.false ]
  store %struct.io* %cond, %struct.io** %io, align 8
  %tobool7 = icmp ne %struct.io* %cond, null
  br i1 %tobool7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %cond.end
  %12 = load %struct.io*, %struct.io** %io, align 8
  %sv_any9 = getelementptr inbounds %struct.io, %struct.io* %12, i32 0, i32 0
  %13 = load %struct.xpvio*, %struct.xpvio** %sv_any9, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %13, i32 0, i32 7
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  store %struct._PerlIO** %14, %struct._PerlIO*** %fp, align 8
  %tobool10 = icmp ne %struct._PerlIO** %14, null
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.8
  %15 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %15)
  %16 = load i64, i64* %pos.addr, align 8
  %17 = load i32, i32* %whence.addr, align 4
  %call11 = call i64 @lseek(i32 %call, i64 %16, i32 %17)
  store i64 %call11, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.8, %cond.end, %entry
  %18 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %18, i32 0, i32 14
  %19 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp12 = icmp ne %struct.sv* %19, null
  br i1 %cmp12, label %land.lhs.true.13, label %lor.lhs.false.31

land.lhs.true.13:                                 ; preds = %if.end
  %20 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings14 = getelementptr inbounds %struct.cop, %struct.cop* %20, i32 0, i32 14
  %21 = load %struct.sv*, %struct.sv** %cop_warnings14, align 8
  %cmp15 = icmp ne %struct.sv* %21, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp15, label %land.lhs.true.16, label %lor.lhs.false.31

land.lhs.true.16:                                 ; preds = %land.lhs.true.13
  %22 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings17 = getelementptr inbounds %struct.cop, %struct.cop* %22, i32 0, i32 14
  %23 = load %struct.sv*, %struct.sv** %cop_warnings17, align 8
  %cmp18 = icmp eq %struct.sv* %23, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp18, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.16
  %24 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings19 = getelementptr inbounds %struct.cop, %struct.cop* %24, i32 0, i32 14
  %25 = load %struct.sv*, %struct.sv** %cop_warnings19, align 8
  %sv_any20 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 0
  %26 = load i8*, i8** %sv_any20, align 8
  %27 = bitcast i8* %26 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %27, i32 0, i32 0
  %28 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 2
  %29 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %29 to i32
  %and21 = and i32 %conv, 64
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.39, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false
  %30 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings24 = getelementptr inbounds %struct.cop, %struct.cop* %30, i32 0, i32 14
  %31 = load %struct.sv*, %struct.sv** %cop_warnings24, align 8
  %sv_any25 = getelementptr inbounds %struct.sv, %struct.sv* %31, i32 0, i32 0
  %32 = load i8*, i8** %sv_any25, align 8
  %33 = bitcast i8* %32 to %struct.xpv*
  %xpv_pv26 = getelementptr inbounds %struct.xpv, %struct.xpv* %33, i32 0, i32 0
  %34 = load i8*, i8** %xpv_pv26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %35 to i32
  %and29 = and i32 %conv28, 16
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then.39, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.23, %land.lhs.true.13, %if.end
  %36 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings32 = getelementptr inbounds %struct.cop, %struct.cop* %36, i32 0, i32 14
  %37 = load %struct.sv*, %struct.sv** %cop_warnings32, align 8
  %cmp33 = icmp eq %struct.sv* %37, null
  br i1 %cmp33, label %land.lhs.true.35, label %if.end.41

land.lhs.true.35:                                 ; preds = %lor.lhs.false.31
  %38 = load i8, i8* @PL_dowarn, align 1
  %conv36 = zext i8 %38 to i32
  %and37 = and i32 %conv36, 1
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %land.lhs.true.35, %lor.lhs.false.23, %lor.lhs.false, %land.lhs.true.16
  %39 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %40 = load %struct.io*, %struct.io** %io, align 8
  %41 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %41, i32 0, i32 4
  %42 = load i16, i16* %op_type, align 2
  %conv40 = zext i16 %42 to i32
  call void @Perl_report_evil_fh(%struct.gv* %39, %struct.io* %40, i32 %conv40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %land.lhs.true.35, %lor.lhs.false.31
  %call42 = call i32* @__errno_location()
  store i32 9, i32* %call42, align 4
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.then
  %43 = load i64, i64* %retval
  ret i64 %43
}

declare i64 @lseek(i32, i64, i32) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_mode_from_discipline(%struct.sv* %discp) #0 {
entry:
  %discp.addr = alloca %struct.sv*, align 8
  %mode = alloca i32, align 4
  %len = alloca i64, align 8
  %s = alloca i8*, align 8
  %end = alloca i8*, align 8
  store %struct.sv* %discp, %struct.sv** %discp.addr, align 8
  store i32 0, i32* %mode, align 4
  %0 = load %struct.sv*, %struct.sv** %discp.addr, align 8
  %tobool = icmp ne %struct.sv* %0, null
  br i1 %tobool, label %if.then, label %if.end.130

if.then:                                          ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** %discp.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %1, i32 0, i32 2
  %2 = load i32, i32* %sv_flags, align 4
  %and = and i32 %2, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %3 = load %struct.sv*, %struct.sv** %discp.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 0
  %4 = load i8*, i8** %sv_any, align 8
  %5 = bitcast i8* %4 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %5, i32 0, i32 1
  %6 = load i64, i64* %xpv_cur, align 8
  store i64 %6, i64* %len, align 8
  %7 = load %struct.sv*, %struct.sv** %discp.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 0
  %8 = load i8*, i8** %sv_any1, align 8
  %9 = bitcast i8* %8 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %9, i32 0, i32 0
  %10 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %11 = load %struct.sv*, %struct.sv** %discp.addr, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %11, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %10, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.129, %cond.end
  %12 = load i8*, i8** %s, align 8
  %13 = load i8, i8* %12, align 1
  %tobool2 = icmp ne i8 %13, 0
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i8*, i8** %s, align 8
  %15 = load i8, i8* %14, align 1
  %conv = sext i8 %15 to i32
  %cmp3 = icmp eq i32 %conv, 58
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %while.body
  %16 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx, align 1
  %conv6 = sext i8 %17 to i32
  switch i32 %conv6, label %sw.default [
    i32 114, label %sw.bb
    i32 99, label %sw.bb.48
  ]

sw.bb:                                            ; preds = %if.then.5
  %18 = load i8*, i8** %s, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %18, i64 2
  %19 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %19 to i32
  %cmp9 = icmp eq i32 %conv8, 97
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %20 = load i8*, i8** %s, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %20, i64 3
  %21 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %21 to i32
  %cmp13 = icmp eq i32 %conv12, 119
  br i1 %cmp13, label %land.lhs.true.15, label %if.end

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %22 = load i8*, i8** %s, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %22, i64 4
  %23 = load i8, i8* %arrayidx16, align 1
  %tobool17 = icmp ne i8 %23, 0
  br i1 %tobool17, label %lor.lhs.false, label %if.then.47

lor.lhs.false:                                    ; preds = %land.lhs.true.15
  %24 = load i8*, i8** %s, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %24, i64 4
  %25 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %25 to i32
  %cmp20 = icmp eq i32 %conv19, 58
  br i1 %cmp20, label %if.then.47, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false
  %26 = load i8*, i8** %s, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %26, i64 4
  %27 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %27 to i32
  %cmp25 = icmp eq i32 %conv24, 32
  br i1 %cmp25, label %if.then.47, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.22
  %28 = load i8*, i8** %s, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %28, i64 4
  %29 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %29 to i32
  %cmp30 = icmp eq i32 %conv29, 9
  br i1 %cmp30, label %if.then.47, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.27
  %30 = load i8*, i8** %s, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %30, i64 4
  %31 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %31 to i32
  %cmp35 = icmp eq i32 %conv34, 10
  br i1 %cmp35, label %if.then.47, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.32
  %32 = load i8*, i8** %s, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %32, i64 4
  %33 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %33 to i32
  %cmp40 = icmp eq i32 %conv39, 13
  br i1 %cmp40, label %if.then.47, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.37
  %34 = load i8*, i8** %s, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %34, i64 4
  %35 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %35 to i32
  %cmp45 = icmp eq i32 %conv44, 12
  br i1 %cmp45, label %if.then.47, label %if.end

if.then.47:                                       ; preds = %lor.lhs.false.42, %lor.lhs.false.37, %lor.lhs.false.32, %lor.lhs.false.27, %lor.lhs.false.22, %lor.lhs.false, %land.lhs.true.15
  store i32 0, i32* %mode, align 4
  %36 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 4
  store i8* %add.ptr, i8** %s, align 8
  %37 = load i64, i64* %len, align 8
  %sub = sub i64 %37, 4
  store i64 %sub, i64* %len, align 8
  br label %sw.epilog

if.end:                                           ; preds = %lor.lhs.false.42, %land.lhs.true, %sw.bb
  br label %sw.bb.48

sw.bb.48:                                         ; preds = %if.then.5, %if.end
  %38 = load i8*, i8** %s, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %38, i64 2
  %39 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %39 to i32
  %cmp51 = icmp eq i32 %conv50, 114
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.99

land.lhs.true.53:                                 ; preds = %sw.bb.48
  %40 = load i8*, i8** %s, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %40, i64 3
  %41 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %41 to i32
  %cmp56 = icmp eq i32 %conv55, 108
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.99

land.lhs.true.58:                                 ; preds = %land.lhs.true.53
  %42 = load i8*, i8** %s, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %42, i64 4
  %43 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %43 to i32
  %cmp61 = icmp eq i32 %conv60, 102
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.99

land.lhs.true.63:                                 ; preds = %land.lhs.true.58
  %44 = load i8*, i8** %s, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %44, i64 5
  %45 = load i8, i8* %arrayidx64, align 1
  %tobool65 = icmp ne i8 %45, 0
  br i1 %tobool65, label %lor.lhs.false.66, label %if.then.96

lor.lhs.false.66:                                 ; preds = %land.lhs.true.63
  %46 = load i8*, i8** %s, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %46, i64 5
  %47 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %47 to i32
  %cmp69 = icmp eq i32 %conv68, 58
  br i1 %cmp69, label %if.then.96, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %lor.lhs.false.66
  %48 = load i8*, i8** %s, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %48, i64 5
  %49 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %49 to i32
  %cmp74 = icmp eq i32 %conv73, 32
  br i1 %cmp74, label %if.then.96, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %lor.lhs.false.71
  %50 = load i8*, i8** %s, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %50, i64 5
  %51 = load i8, i8* %arrayidx77, align 1
  %conv78 = sext i8 %51 to i32
  %cmp79 = icmp eq i32 %conv78, 9
  br i1 %cmp79, label %if.then.96, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %lor.lhs.false.76
  %52 = load i8*, i8** %s, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %52, i64 5
  %53 = load i8, i8* %arrayidx82, align 1
  %conv83 = sext i8 %53 to i32
  %cmp84 = icmp eq i32 %conv83, 10
  br i1 %cmp84, label %if.then.96, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %lor.lhs.false.81
  %54 = load i8*, i8** %s, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %54, i64 5
  %55 = load i8, i8* %arrayidx87, align 1
  %conv88 = sext i8 %55 to i32
  %cmp89 = icmp eq i32 %conv88, 13
  br i1 %cmp89, label %if.then.96, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %lor.lhs.false.86
  %56 = load i8*, i8** %s, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %56, i64 5
  %57 = load i8, i8* %arrayidx92, align 1
  %conv93 = sext i8 %57 to i32
  %cmp94 = icmp eq i32 %conv93, 12
  br i1 %cmp94, label %if.then.96, label %if.end.99

if.then.96:                                       ; preds = %lor.lhs.false.91, %lor.lhs.false.86, %lor.lhs.false.81, %lor.lhs.false.76, %lor.lhs.false.71, %lor.lhs.false.66, %land.lhs.true.63
  store i32 0, i32* %mode, align 4
  %58 = load i8*, i8** %s, align 8
  %add.ptr97 = getelementptr inbounds i8, i8* %58, i64 5
  store i8* %add.ptr97, i8** %s, align 8
  %59 = load i64, i64* %len, align 8
  %sub98 = sub i64 %59, 5
  store i64 %sub98, i64* %len, align 8
  br label %sw.epilog

if.end.99:                                        ; preds = %lor.lhs.false.91, %land.lhs.true.58, %land.lhs.true.53, %sw.bb.48
  br label %sw.default

sw.default:                                       ; preds = %if.then.5, %if.end.99
  br label %fail_discipline

sw.epilog:                                        ; preds = %if.then.96, %if.then.47
  br label %if.end.129

if.else:                                          ; preds = %while.body
  %60 = load i8*, i8** %s, align 8
  %61 = load i8, i8* %60, align 1
  %conv100 = sext i8 %61 to i32
  %cmp101 = icmp eq i32 %conv100, 32
  br i1 %cmp101, label %if.then.119, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %if.else
  %62 = load i8*, i8** %s, align 8
  %63 = load i8, i8* %62, align 1
  %conv104 = sext i8 %63 to i32
  %cmp105 = icmp eq i32 %conv104, 9
  br i1 %cmp105, label %if.then.119, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %lor.lhs.false.103
  %64 = load i8*, i8** %s, align 8
  %65 = load i8, i8* %64, align 1
  %conv108 = sext i8 %65 to i32
  %cmp109 = icmp eq i32 %conv108, 10
  br i1 %cmp109, label %if.then.119, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %lor.lhs.false.107
  %66 = load i8*, i8** %s, align 8
  %67 = load i8, i8* %66, align 1
  %conv112 = sext i8 %67 to i32
  %cmp113 = icmp eq i32 %conv112, 13
  br i1 %cmp113, label %if.then.119, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %lor.lhs.false.111
  %68 = load i8*, i8** %s, align 8
  %69 = load i8, i8* %68, align 1
  %conv116 = sext i8 %69 to i32
  %cmp117 = icmp eq i32 %conv116, 12
  br i1 %cmp117, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %lor.lhs.false.115, %lor.lhs.false.111, %lor.lhs.false.107, %lor.lhs.false.103, %if.else
  %70 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %71 = load i64, i64* %len, align 8
  %dec = add i64 %71, -1
  store i64 %dec, i64* %len, align 8
  br label %if.end.128

if.else.120:                                      ; preds = %lor.lhs.false.115
  br label %fail_discipline

fail_discipline:                                  ; preds = %if.else.120, %sw.default
  %72 = load i8*, i8** %s, align 8
  %add.ptr121 = getelementptr inbounds i8, i8* %72, i64 1
  %call122 = call i8* @strchr(i8* %add.ptr121, i32 58)
  store i8* %call122, i8** %end, align 8
  %73 = load i8*, i8** %end, align 8
  %tobool123 = icmp ne i8* %73, null
  br i1 %tobool123, label %if.end.126, label %if.then.124

if.then.124:                                      ; preds = %fail_discipline
  %74 = load i8*, i8** %s, align 8
  %75 = load i64, i64* %len, align 8
  %add.ptr125 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %add.ptr125, i8** %end, align 8
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.124, %fail_discipline
  %76 = load i8*, i8** %end, align 8
  %77 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %76 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %77 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %78 = load i64, i64* %len, align 8
  %sub127 = sub i64 %78, %sub.ptr.sub
  store i64 %sub127, i64* %len, align 8
  %79 = load i8*, i8** %end, align 8
  store i8* %79, i8** %s, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.126, %if.then.119
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %sw.epilog
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.130

if.end.130:                                       ; preds = %while.end, %entry
  %80 = load i32, i32* %mode, align 4
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define i32 @Perl_do_binmode(%struct._PerlIO** %fp, i32 %iotype, i32 %mode) #0 {
entry:
  %fp.addr = alloca %struct._PerlIO**, align 8
  %iotype.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  store %struct._PerlIO** %fp, %struct._PerlIO*** %fp.addr, align 8
  store i32 %iotype, i32* %iotype.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8** %name, align 8
  %0 = load %struct._PerlIO**, %struct._PerlIO*** %fp.addr, align 8
  %1 = load i32, i32* %iotype.addr, align 4
  %2 = load i32, i32* %mode.addr, align 4
  %3 = load i8*, i8** %name, align 8
  %call = call i32 @PerlIO_binmode(%struct._PerlIO** %0, i32 %1, i32 %2, i8* %3)
  ret i32 %call
}

declare i32 @PerlIO_binmode(%struct._PerlIO**, i32, i32, i8*) #1

; Function Attrs: nounwind uwtable
define signext i8 @Perl_do_print(%struct.sv* %sv, %struct._PerlIO** %fp) #0 {
entry:
  %retval = alloca i8, align 1
  %sv.addr = alloca %struct.sv*, align 8
  %fp.addr = alloca %struct._PerlIO**, align 8
  %tmps = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct._PerlIO** %fp, %struct._PerlIO*** %fp.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %tobool = icmp ne %struct.sv* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @PL_ofmt, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end.40

if.then.2:                                        ; preds = %if.end
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags, align 4
  %and = and i32 %3, 8192
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  %4 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i32 @Perl_mg_get(%struct.sv* %4)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.then.2
  %5 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags6 = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 2
  %6 = load i32, i32* %sv_flags6, align 4
  %and7 = and i32 %6, 65536
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end.5
  %7 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 0
  %8 = load i8*, i8** %sv_any, align 8
  %9 = bitcast i8* %8 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %9, i32 0, i32 3
  %10 = load i64, i64* %xiv_iv, align 8
  %cmp = icmp ne i64 %10, 0
  br i1 %cmp, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %land.lhs.true
  %11 = load %struct._PerlIO**, %struct._PerlIO*** %fp.addr, align 8
  %12 = load i8*, i8** @PL_ofmt, align 8
  %13 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any10 = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 0
  %14 = load i8*, i8** %sv_any10, align 8
  %15 = bitcast i8* %14 to %struct.xpviv*
  %xiv_iv11 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %15, i32 0, i32 3
  %16 = load i64, i64* %xiv_iv11, align 8
  %conv = sitofp i64 %16 to double
  %call12 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %11, i8* %12, double %conv)
  %17 = load %struct._PerlIO**, %struct._PerlIO*** %fp.addr, align 8
  %call13 = call i32 @Perl_PerlIO_error(%struct._PerlIO** %17)
  %tobool14 = icmp ne i32 %call13, 0
  %lnot = xor i1 %tobool14, true
  %lnot.ext = zext i1 %lnot to i32
  %conv15 = trunc i32 %lnot.ext to i8
  store i8 %conv15, i8* %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true, %if.end.5
  %18 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 2
  %19 = load i32, i32* %sv_flags17, align 4
  %and18 = and i32 %19, 131072
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true.20, label %lor.lhs.false

land.lhs.true.20:                                 ; preds = %if.end.16
  %20 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any21 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 0
  %21 = load i8*, i8** %sv_any21, align 8
  %22 = bitcast i8* %21 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %22, i32 0, i32 4
  %23 = load double, double* %xnv_nv, align 8
  %cmp22 = fcmp une double %23, 0.000000e+00
  br i1 %cmp22, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.20, %if.end.16
  %24 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call24 = call i32 @Perl_looks_like_number(%struct.sv* %24)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.39

land.lhs.true.26:                                 ; preds = %lor.lhs.false
  %25 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call27 = call double @Perl_sv_2nv(%struct.sv* %25)
  %cmp28 = fcmp une double %call27, 0.000000e+00
  br i1 %cmp28, label %if.then.30, label %if.end.39

if.then.30:                                       ; preds = %land.lhs.true.26, %land.lhs.true.20
  %26 = load %struct._PerlIO**, %struct._PerlIO*** %fp.addr, align 8
  %27 = load i8*, i8** @PL_ofmt, align 8
  %28 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any31 = getelementptr inbounds %struct.sv, %struct.sv* %28, i32 0, i32 0
  %29 = load i8*, i8** %sv_any31, align 8
  %30 = bitcast i8* %29 to %struct.xpvnv*
  %xnv_nv32 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %30, i32 0, i32 4
  %31 = load double, double* %xnv_nv32, align 8
  %call33 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %26, i8* %27, double %31)
  %32 = load %struct._PerlIO**, %struct._PerlIO*** %fp.addr, align 8
  %call34 = call i32 @Perl_PerlIO_error(%struct._PerlIO** %32)
  %tobool35 = icmp ne i32 %call34, 0
  %lnot36 = xor i1 %tobool35, true
  %lnot.ext37 = zext i1 %lnot36 to i32
  %conv38 = trunc i32 %lnot.ext37 to i8
  store i8 %conv38, i8* %retval
  br label %return

if.end.39:                                        ; preds = %land.lhs.true.26, %lor.lhs.false
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end
  %33 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags41 = getelementptr inbounds %struct.sv, %struct.sv* %33, i32 0, i32 2
  %34 = load i32, i32* %sv_flags41, align 4
  %and42 = and i32 %34, 255
  switch i32 %and42, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.69
  ]

sw.bb:                                            ; preds = %if.end.40
  %35 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %35, i32 0, i32 14
  %36 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp43 = icmp ne %struct.sv* %36, null
  br i1 %cmp43, label %land.lhs.true.45, label %lor.lhs.false.59

land.lhs.true.45:                                 ; preds = %sw.bb
  %37 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings46 = getelementptr inbounds %struct.cop, %struct.cop* %37, i32 0, i32 14
  %38 = load %struct.sv*, %struct.sv** %cop_warnings46, align 8
  %cmp47 = icmp ne %struct.sv* %38, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp47, label %land.lhs.true.49, label %lor.lhs.false.59

land.lhs.true.49:                                 ; preds = %land.lhs.true.45
  %39 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings50 = getelementptr inbounds %struct.cop, %struct.cop* %39, i32 0, i32 14
  %40 = load %struct.sv*, %struct.sv** %cop_warnings50, align 8
  %cmp51 = icmp eq %struct.sv* %40, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp51, label %if.then.67, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %land.lhs.true.49
  %41 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings54 = getelementptr inbounds %struct.cop, %struct.cop* %41, i32 0, i32 14
  %42 = load %struct.sv*, %struct.sv** %cop_warnings54, align 8
  %sv_any55 = getelementptr inbounds %struct.sv, %struct.sv* %42, i32 0, i32 0
  %43 = load i8*, i8** %sv_any55, align 8
  %44 = bitcast i8* %43 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %44, i32 0, i32 0
  %45 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %45, i64 10
  %46 = load i8, i8* %arrayidx, align 1
  %conv56 = sext i8 %46 to i32
  %and57 = and i32 %conv56, 4
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then.67, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false.53, %land.lhs.true.45, %sw.bb
  %47 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings60 = getelementptr inbounds %struct.cop, %struct.cop* %47, i32 0, i32 14
  %48 = load %struct.sv*, %struct.sv** %cop_warnings60, align 8
  %cmp61 = icmp eq %struct.sv* %48, null
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.68

land.lhs.true.63:                                 ; preds = %lor.lhs.false.59
  %49 = load i8, i8* @PL_dowarn, align 1
  %conv64 = zext i8 %49 to i32
  %and65 = and i32 %conv64, 1
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %land.lhs.true.63, %lor.lhs.false.53, %land.lhs.true.49
  call void @Perl_report_uninit()
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %land.lhs.true.63, %lor.lhs.false.59
  store i8 1, i8* %retval
  br label %return

sw.bb.69:                                         ; preds = %if.end.40
  %50 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags70 = getelementptr inbounds %struct.sv, %struct.sv* %50, i32 0, i32 2
  %51 = load i32, i32* %sv_flags70, align 4
  %and71 = and i32 %51, 65536
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.then.73, label %if.end.95

if.then.73:                                       ; preds = %sw.bb.69
  %52 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags74 = getelementptr inbounds %struct.sv, %struct.sv* %52, i32 0, i32 2
  %53 = load i32, i32* %sv_flags74, align 4
  %and75 = and i32 %53, 8192
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %if.then.73
  %54 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call78 = call i32 @Perl_mg_get(%struct.sv* %54)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %if.then.73
  %55 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags80 = getelementptr inbounds %struct.sv, %struct.sv* %55, i32 0, i32 2
  %56 = load i32, i32* %sv_flags80, align 4
  %and81 = and i32 %56, -2147483648
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %if.then.83, label %if.else

if.then.83:                                       ; preds = %if.end.79
  %57 = load %struct._PerlIO**, %struct._PerlIO*** %fp.addr, align 8
  %58 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any84 = getelementptr inbounds %struct.sv, %struct.sv* %58, i32 0, i32 0
  %59 = load i8*, i8** %sv_any84, align 8
  %60 = bitcast i8* %59 to %struct.xpvuv*
  %xuv_uv = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %60, i32 0, i32 3
  %61 = load i64, i64* %xuv_uv, align 8
  %call85 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i64 %61)
  br label %if.end.89

if.else:                                          ; preds = %if.end.79
  %62 = load %struct._PerlIO**, %struct._PerlIO*** %fp.addr, align 8
  %63 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any86 = getelementptr inbounds %struct.sv, %struct.sv* %63, i32 0, i32 0
  %64 = load i8*, i8** %sv_any86, align 8
  %65 = bitcast i8* %64 to %struct.xpviv*
  %xiv_iv87 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %65, i32 0, i32 3
  %66 = load i64, i64* %xiv_iv87, align 8
  %call88 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i64 %66)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else, %if.then.83
  %67 = load %struct._PerlIO**, %struct._PerlIO*** %fp.addr, align 8
  %call90 = call i32 @Perl_PerlIO_error(%struct._PerlIO** %67)
  %tobool91 = icmp ne i32 %call90, 0
  %lnot92 = xor i1 %tobool91, true
  %lnot.ext93 = zext i1 %lnot92 to i32
  %conv94 = trunc i32 %lnot.ext93 to i8
  store i8 %conv94, i8* %retval
  br label %return

if.end.95:                                        ; preds = %sw.bb.69
  br label %sw.default

sw.default:                                       ; preds = %if.end.40, %if.end.95
  %68 = load %struct._PerlIO**, %struct._PerlIO*** %fp.addr, align 8
  %call96 = call i32 @PerlIO_isutf8(%struct._PerlIO** %68)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.then.98, label %if.else.106

if.then.98:                                       ; preds = %sw.default
  %69 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags99 = getelementptr inbounds %struct.sv, %struct.sv* %69, i32 0, i32 2
  %70 = load i32, i32* %sv_flags99, align 4
  %and100 = and i32 %70, 536870912
  %tobool101 = icmp ne i32 %and100, 0
  br i1 %tobool101, label %if.end.105, label %if.then.102

if.then.102:                                      ; preds = %if.then.98
  %71 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call103 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %71)
  store %struct.sv* %call103, %struct.sv** %sv.addr, align 8
  %call104 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %call103, i32 10)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.102, %if.then.98
  br label %if.end.141

if.else.106:                                      ; preds = %sw.default
  %72 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags107 = getelementptr inbounds %struct.sv, %struct.sv* %72, i32 0, i32 2
  %73 = load i32, i32* %sv_flags107, align 4
  %and108 = and i32 %73, 536870912
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %land.lhs.true.110, label %if.end.140

land.lhs.true.110:                                ; preds = %if.else.106
  %74 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private = getelementptr inbounds %struct.cop, %struct.cop* %74, i32 0, i32 7
  %75 = load i8, i8* %op_private, align 1
  %conv111 = zext i8 %75 to i32
  %and112 = and i32 %conv111, 8
  %tobool113 = icmp ne i32 %and112, 0
  br i1 %tobool113, label %if.end.140, label %if.then.114

if.then.114:                                      ; preds = %land.lhs.true.110
  %76 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call115 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %76)
  store %struct.sv* %call115, %struct.sv** %sv.addr, align 8
  %call116 = call signext i8 @Perl_sv_utf8_downgrade(%struct.sv* %call115, i8 signext 1)
  %tobool117 = icmp ne i8 %call116, 0
  br i1 %tobool117, label %if.end.139, label %land.lhs.true.118

land.lhs.true.118:                                ; preds = %if.then.114
  %77 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings119 = getelementptr inbounds %struct.cop, %struct.cop* %77, i32 0, i32 14
  %78 = load %struct.sv*, %struct.sv** %cop_warnings119, align 8
  %cmp120 = icmp eq %struct.sv* %78, null
  br i1 %cmp120, label %if.then.138, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %land.lhs.true.118
  %79 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings123 = getelementptr inbounds %struct.cop, %struct.cop* %79, i32 0, i32 14
  %80 = load %struct.sv*, %struct.sv** %cop_warnings123, align 8
  %cmp124 = icmp eq %struct.sv* %80, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp124, label %if.then.138, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %lor.lhs.false.122
  %81 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings127 = getelementptr inbounds %struct.cop, %struct.cop* %81, i32 0, i32 14
  %82 = load %struct.sv*, %struct.sv** %cop_warnings127, align 8
  %cmp128 = icmp ne %struct.sv* %82, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.139

land.lhs.true.130:                                ; preds = %lor.lhs.false.126
  %83 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings131 = getelementptr inbounds %struct.cop, %struct.cop* %83, i32 0, i32 14
  %84 = load %struct.sv*, %struct.sv** %cop_warnings131, align 8
  %sv_any132 = getelementptr inbounds %struct.sv, %struct.sv* %84, i32 0, i32 0
  %85 = load i8*, i8** %sv_any132, align 8
  %86 = bitcast i8* %85 to %struct.xpv*
  %xpv_pv133 = getelementptr inbounds %struct.xpv, %struct.xpv* %86, i32 0, i32 0
  %87 = load i8*, i8** %xpv_pv133, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %87, i64 11
  %88 = load i8, i8* %arrayidx134, align 1
  %conv135 = sext i8 %88 to i32
  %and136 = and i32 %conv135, 1
  %tobool137 = icmp ne i32 %and136, 0
  br i1 %tobool137, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %land.lhs.true.130, %lor.lhs.false.122, %land.lhs.true.118
  call void (i32, i8*, ...) @Perl_warner(i32 44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.138, %land.lhs.true.130, %lor.lhs.false.126, %if.then.114
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %land.lhs.true.110, %if.else.106
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.end.105
  %89 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags142 = getelementptr inbounds %struct.sv, %struct.sv* %89, i32 0, i32 2
  %90 = load i32, i32* %sv_flags142, align 4
  %and143 = and i32 %90, 262144
  %cmp144 = icmp eq i32 %and143, 262144
  br i1 %cmp144, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.141
  %91 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any146 = getelementptr inbounds %struct.sv, %struct.sv* %91, i32 0, i32 0
  %92 = load i8*, i8** %sv_any146, align 8
  %93 = bitcast i8* %92 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %93, i32 0, i32 1
  %94 = load i64, i64* %xpv_cur, align 8
  store i64 %94, i64* %len, align 8
  %95 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any147 = getelementptr inbounds %struct.sv, %struct.sv* %95, i32 0, i32 0
  %96 = load i8*, i8** %sv_any147, align 8
  %97 = bitcast i8* %96 to %struct.xpv*
  %xpv_pv148 = getelementptr inbounds %struct.xpv, %struct.xpv* %97, i32 0, i32 0
  %98 = load i8*, i8** %xpv_pv148, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.141
  %99 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call149 = call i8* @Perl_sv_2pv_flags(%struct.sv* %99, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %98, %cond.true ], [ %call149, %cond.false ]
  store i8* %cond, i8** %tmps, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end
  %100 = load i64, i64* %len, align 8
  %tobool150 = icmp ne i64 %100, 0
  br i1 %tobool150, label %land.lhs.true.151, label %if.end.156

land.lhs.true.151:                                ; preds = %sw.epilog
  %101 = load %struct._PerlIO**, %struct._PerlIO*** %fp.addr, align 8
  %102 = load i8*, i8** %tmps, align 8
  %103 = load i64, i64* %len, align 8
  %call152 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %101, i8* %102, i64 %103)
  %cmp153 = icmp eq i64 %call152, 0
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %land.lhs.true.151
  store i8 0, i8* %retval
  br label %return

if.end.156:                                       ; preds = %land.lhs.true.151, %sw.epilog
  %104 = load %struct._PerlIO**, %struct._PerlIO*** %fp.addr, align 8
  %call157 = call i32 @Perl_PerlIO_error(%struct._PerlIO** %104)
  %tobool158 = icmp ne i32 %call157, 0
  %lnot159 = xor i1 %tobool158, true
  %lnot.ext160 = zext i1 %lnot159 to i32
  %conv161 = trunc i32 %lnot.ext160 to i8
  store i8 %conv161, i8* %retval
  br label %return

return:                                           ; preds = %if.end.156, %if.then.155, %if.end.89, %if.end.68, %if.then.30, %if.then.9, %if.then
  %105 = load i8, i8* %retval
  ret i8 %105
}

declare i32 @Perl_mg_get(%struct.sv*) #1

declare double @Perl_sv_2nv(%struct.sv*) #1

declare void @Perl_report_uninit() #1

declare i32 @PerlIO_isutf8(%struct._PerlIO**) #1

declare i64 @Perl_sv_utf8_upgrade_flags(%struct.sv*, i32) #1

declare %struct.sv* @Perl_sv_mortalcopy(%struct.sv*) #1

declare signext i8 @Perl_sv_utf8_downgrade(%struct.sv*, i8 signext) #1

declare i64 @Perl_PerlIO_write(%struct._PerlIO**, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_my_stat() #0 {
entry:
  %retval = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %io = alloca %struct.io*, align 8
  %gv = alloca %struct.gv*, align 8
  %sv = alloca %struct.sv*, align 8
  %s = alloca i8*, align 8
  %len = alloca i64, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 6
  %2 = load i8, i8* %op_flags, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else.58

if.then:                                          ; preds = %entry
  %3 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %4 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %3 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp = icmp slt i64 %sub.ptr.div, 1
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.sv**, %struct.sv*** %sp, align 8
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %5, %struct.sv** %6, i32 1)
  store %struct.sv** %call, %struct.sv*** %sp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %7 = load %struct.op*, %struct.op** @PL_op, align 8
  %8 = bitcast %struct.op* %7 to %struct.svop*
  %op_sv = getelementptr inbounds %struct.svop, %struct.svop* %8, i32 0, i32 8
  %9 = load %struct.sv*, %struct.sv** %op_sv, align 8
  %10 = bitcast %struct.sv* %9 to %struct.gv*
  store %struct.gv* %10, %struct.gv** %gv, align 8
  br label %do_fstat

do_fstat:                                         ; preds = %if.then.74, %if.then.63, %if.end
  %11 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool3 = icmp ne %struct.gv* %11, null
  br i1 %tobool3, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %do_fstat
  %12 = load %struct.gv*, %struct.gv** %gv, align 8
  %13 = bitcast %struct.gv* %12 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 2
  %14 = load i32, i32* %sv_flags, align 4
  %and4 = and i32 %14, 255
  %cmp5 = icmp eq i32 %and4, 13
  br i1 %cmp5, label %land.lhs.true.7, label %cond.false

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %15 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %15, i32 0, i32 0
  %16 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %16, i32 0, i32 7
  %17 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool8 = icmp ne %struct.gp* %17, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.7
  %18 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any9 = getelementptr inbounds %struct.gv, %struct.gv* %18, i32 0, i32 0
  %19 = load %struct.xpvgv*, %struct.xpvgv** %sv_any9, align 8
  %xgv_gp10 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %19, i32 0, i32 7
  %20 = load %struct.gp*, %struct.gp** %xgv_gp10, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %20, i32 0, i32 2
  %21 = load %struct.io*, %struct.io** %gp_io, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.7, %land.lhs.true, %do_fstat
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.io* [ %21, %cond.true ], [ null, %cond.false ]
  store %struct.io* %cond, %struct.io** %io, align 8
  %22 = load %struct.io*, %struct.io** %io, align 8
  %tobool11 = icmp ne %struct.io* %22, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.else

land.lhs.true.12:                                 ; preds = %cond.end
  %23 = load %struct.io*, %struct.io** %io, align 8
  %sv_any13 = getelementptr inbounds %struct.io, %struct.io* %23, i32 0, i32 0
  %24 = load %struct.xpvio*, %struct.xpvio** %sv_any13, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %24, i32 0, i32 7
  %25 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  %tobool14 = icmp ne %struct._PerlIO** %25, null
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %land.lhs.true.12
  %26 = load %struct.gv*, %struct.gv** %gv, align 8
  store %struct.gv* %26, %struct.gv** @PL_statgv, align 8
  %27 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  call void @Perl_sv_setpv(%struct.sv* %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0))
  store i32 235, i32* @PL_laststype, align 4
  %28 = load %struct.io*, %struct.io** %io, align 8
  %sv_any16 = getelementptr inbounds %struct.io, %struct.io* %28, i32 0, i32 0
  %29 = load %struct.xpvio*, %struct.xpvio** %sv_any16, align 8
  %xio_ifp17 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %29, i32 0, i32 7
  %30 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp17, align 8
  %call18 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %30)
  %call19 = call i32 @fstat(i32 %call18, %struct.stat* @PL_statcache)
  store i32 %call19, i32* @PL_laststatval, align 4
  store i32 %call19, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.12, %cond.end
  %31 = load %struct.gv*, %struct.gv** %gv, align 8
  %32 = load %struct.gv*, %struct.gv** @PL_defgv, align 8
  %cmp20 = icmp eq %struct.gv* %31, %32
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.else
  %33 = load i32, i32* @PL_laststatval, align 4
  store i32 %33, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.else
  %34 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %34, i32 0, i32 14
  %35 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp24 = icmp ne %struct.sv* %35, null
  br i1 %cmp24, label %land.lhs.true.26, label %lor.lhs.false.47

land.lhs.true.26:                                 ; preds = %if.end.23
  %36 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings27 = getelementptr inbounds %struct.cop, %struct.cop* %36, i32 0, i32 14
  %37 = load %struct.sv*, %struct.sv** %cop_warnings27, align 8
  %cmp28 = icmp ne %struct.sv* %37, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp28, label %land.lhs.true.30, label %lor.lhs.false.47

land.lhs.true.30:                                 ; preds = %land.lhs.true.26
  %38 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings31 = getelementptr inbounds %struct.cop, %struct.cop* %38, i32 0, i32 14
  %39 = load %struct.sv*, %struct.sv** %cop_warnings31, align 8
  %cmp32 = icmp eq %struct.sv* %39, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp32, label %if.then.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.30
  %40 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings34 = getelementptr inbounds %struct.cop, %struct.cop* %40, i32 0, i32 14
  %41 = load %struct.sv*, %struct.sv** %cop_warnings34, align 8
  %sv_any35 = getelementptr inbounds %struct.sv, %struct.sv* %41, i32 0, i32 0
  %42 = load i8*, i8** %sv_any35, align 8
  %43 = bitcast i8* %42 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %43, i32 0, i32 0
  %44 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %44, i64 2
  %45 = load i8, i8* %arrayidx, align 1
  %conv36 = sext i8 %45 to i32
  %and37 = and i32 %conv36, 64
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then.55, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false
  %46 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings40 = getelementptr inbounds %struct.cop, %struct.cop* %46, i32 0, i32 14
  %47 = load %struct.sv*, %struct.sv** %cop_warnings40, align 8
  %sv_any41 = getelementptr inbounds %struct.sv, %struct.sv* %47, i32 0, i32 0
  %48 = load i8*, i8** %sv_any41, align 8
  %49 = bitcast i8* %48 to %struct.xpv*
  %xpv_pv42 = getelementptr inbounds %struct.xpv, %struct.xpv* %49, i32 0, i32 0
  %50 = load i8*, i8** %xpv_pv42, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %50, i64 1
  %51 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %51 to i32
  %and45 = and i32 %conv44, 16
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then.55, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.39, %land.lhs.true.26, %if.end.23
  %52 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings48 = getelementptr inbounds %struct.cop, %struct.cop* %52, i32 0, i32 14
  %53 = load %struct.sv*, %struct.sv** %cop_warnings48, align 8
  %cmp49 = icmp eq %struct.sv* %53, null
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.57

land.lhs.true.51:                                 ; preds = %lor.lhs.false.47
  %54 = load i8, i8* @PL_dowarn, align 1
  %conv52 = zext i8 %54 to i32
  %and53 = and i32 %conv52, 1
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %land.lhs.true.51, %lor.lhs.false.39, %lor.lhs.false, %land.lhs.true.30
  %55 = load %struct.gv*, %struct.gv** %gv, align 8
  %56 = load %struct.io*, %struct.io** %io, align 8
  %57 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %57, i32 0, i32 4
  %58 = load i16, i16* %op_type, align 2
  %conv56 = zext i16 %58 to i32
  call void @Perl_report_evil_fh(%struct.gv* %55, %struct.io* %56, i32 %conv56)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %land.lhs.true.51, %lor.lhs.false.47
  store %struct.gv* null, %struct.gv** @PL_statgv, align 8
  %59 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  call void @Perl_sv_setpv(%struct.sv* %59, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0))
  store i32 -1, i32* @PL_laststatval, align 4
  store i32 -1, i32* %retval
  br label %return

if.else.58:                                       ; preds = %entry
  %60 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %60, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %61 = load %struct.sv*, %struct.sv** %60, align 8
  store %struct.sv* %61, %struct.sv** %sv, align 8
  %62 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %62, %struct.sv*** @PL_stack_sp, align 8
  %63 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags59 = getelementptr inbounds %struct.sv, %struct.sv* %63, i32 0, i32 2
  %64 = load i32, i32* %sv_flags59, align 4
  %and60 = and i32 %64, 255
  %cmp61 = icmp eq i32 %and60, 13
  br i1 %cmp61, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.else.58
  %65 = load %struct.sv*, %struct.sv** %sv, align 8
  %66 = bitcast %struct.sv* %65 to %struct.gv*
  store %struct.gv* %66, %struct.gv** %gv, align 8
  br label %do_fstat

if.else.64:                                       ; preds = %if.else.58
  %67 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags65 = getelementptr inbounds %struct.sv, %struct.sv* %67, i32 0, i32 2
  %68 = load i32, i32* %sv_flags65, align 4
  %and66 = and i32 %68, 524288
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.lhs.true.68, label %if.end.77

land.lhs.true.68:                                 ; preds = %if.else.64
  %69 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any69 = getelementptr inbounds %struct.sv, %struct.sv* %69, i32 0, i32 0
  %70 = load i8*, i8** %sv_any69, align 8
  %71 = bitcast i8* %70 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %71, i32 0, i32 0
  %72 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_flags70 = getelementptr inbounds %struct.sv, %struct.sv* %72, i32 0, i32 2
  %73 = load i32, i32* %sv_flags70, align 4
  %and71 = and i32 %73, 255
  %cmp72 = icmp eq i32 %and71, 13
  br i1 %cmp72, label %if.then.74, label %if.end.77

if.then.74:                                       ; preds = %land.lhs.true.68
  %74 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any75 = getelementptr inbounds %struct.sv, %struct.sv* %74, i32 0, i32 0
  %75 = load i8*, i8** %sv_any75, align 8
  %76 = bitcast i8* %75 to %struct.xrv*
  %xrv_rv76 = getelementptr inbounds %struct.xrv, %struct.xrv* %76, i32 0, i32 0
  %77 = load %struct.sv*, %struct.sv** %xrv_rv76, align 8
  %78 = bitcast %struct.sv* %77 to %struct.gv*
  store %struct.gv* %78, %struct.gv** %gv, align 8
  br label %do_fstat

if.end.77:                                        ; preds = %land.lhs.true.68, %if.else.64
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77
  %79 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags79 = getelementptr inbounds %struct.sv, %struct.sv* %79, i32 0, i32 2
  %80 = load i32, i32* %sv_flags79, align 4
  %and80 = and i32 %80, 262144
  %cmp81 = icmp eq i32 %and80, 262144
  br i1 %cmp81, label %cond.true.83, label %cond.false.87

cond.true.83:                                     ; preds = %if.end.78
  %81 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any84 = getelementptr inbounds %struct.sv, %struct.sv* %81, i32 0, i32 0
  %82 = load i8*, i8** %sv_any84, align 8
  %83 = bitcast i8* %82 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %83, i32 0, i32 1
  %84 = load i64, i64* %xpv_cur, align 8
  store i64 %84, i64* %len, align 8
  %85 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any85 = getelementptr inbounds %struct.sv, %struct.sv* %85, i32 0, i32 0
  %86 = load i8*, i8** %sv_any85, align 8
  %87 = bitcast i8* %86 to %struct.xpv*
  %xpv_pv86 = getelementptr inbounds %struct.xpv, %struct.xpv* %87, i32 0, i32 0
  %88 = load i8*, i8** %xpv_pv86, align 8
  br label %cond.end.89

cond.false.87:                                    ; preds = %if.end.78
  %89 = load %struct.sv*, %struct.sv** %sv, align 8
  %call88 = call i8* @Perl_sv_2pv_flags(%struct.sv* %89, i64* %len, i32 2)
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.87, %cond.true.83
  %cond90 = phi i8* [ %88, %cond.true.83 ], [ %call88, %cond.false.87 ]
  store i8* %cond90, i8** %s, align 8
  store %struct.gv* null, %struct.gv** @PL_statgv, align 8
  %90 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %91 = load i8*, i8** %s, align 8
  %92 = load i64, i64* %len, align 8
  call void @Perl_sv_setpvn(%struct.sv* %90, i8* %91, i64 %92)
  %93 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %sv_any91 = getelementptr inbounds %struct.sv, %struct.sv* %93, i32 0, i32 0
  %94 = load i8*, i8** %sv_any91, align 8
  %95 = bitcast i8* %94 to %struct.xpv*
  %xpv_pv92 = getelementptr inbounds %struct.xpv, %struct.xpv* %95, i32 0, i32 0
  %96 = load i8*, i8** %xpv_pv92, align 8
  store i8* %96, i8** %s, align 8
  store i32 235, i32* @PL_laststype, align 4
  %97 = load i8*, i8** %s, align 8
  %call93 = call i32 @stat(i8* %97, %struct.stat* @PL_statcache)
  store i32 %call93, i32* @PL_laststatval, align 4
  %98 = load i32, i32* @PL_laststatval, align 4
  %cmp94 = icmp slt i32 %98, 0
  br i1 %cmp94, label %land.lhs.true.96, label %if.end.128

land.lhs.true.96:                                 ; preds = %cond.end.89
  %99 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings97 = getelementptr inbounds %struct.cop, %struct.cop* %99, i32 0, i32 14
  %100 = load %struct.sv*, %struct.sv** %cop_warnings97, align 8
  %cmp98 = icmp ne %struct.sv* %100, null
  br i1 %cmp98, label %land.lhs.true.100, label %lor.lhs.false.116

land.lhs.true.100:                                ; preds = %land.lhs.true.96
  %101 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings101 = getelementptr inbounds %struct.cop, %struct.cop* %101, i32 0, i32 14
  %102 = load %struct.sv*, %struct.sv** %cop_warnings101, align 8
  %cmp102 = icmp ne %struct.sv* %102, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp102, label %land.lhs.true.104, label %lor.lhs.false.116

land.lhs.true.104:                                ; preds = %land.lhs.true.100
  %103 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings105 = getelementptr inbounds %struct.cop, %struct.cop* %103, i32 0, i32 14
  %104 = load %struct.sv*, %struct.sv** %cop_warnings105, align 8
  %cmp106 = icmp eq %struct.sv* %104, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp106, label %land.lhs.true.124, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %land.lhs.true.104
  %105 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings109 = getelementptr inbounds %struct.cop, %struct.cop* %105, i32 0, i32 14
  %106 = load %struct.sv*, %struct.sv** %cop_warnings109, align 8
  %sv_any110 = getelementptr inbounds %struct.sv, %struct.sv* %106, i32 0, i32 0
  %107 = load i8*, i8** %sv_any110, align 8
  %108 = bitcast i8* %107 to %struct.xpv*
  %xpv_pv111 = getelementptr inbounds %struct.xpv, %struct.xpv* %108, i32 0, i32 0
  %109 = load i8*, i8** %xpv_pv111, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %109, i64 2
  %110 = load i8, i8* %arrayidx112, align 1
  %conv113 = sext i8 %110 to i32
  %and114 = and i32 %conv113, 4
  %tobool115 = icmp ne i32 %and114, 0
  br i1 %tobool115, label %land.lhs.true.124, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %lor.lhs.false.108, %land.lhs.true.100, %land.lhs.true.96
  %111 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings117 = getelementptr inbounds %struct.cop, %struct.cop* %111, i32 0, i32 14
  %112 = load %struct.sv*, %struct.sv** %cop_warnings117, align 8
  %cmp118 = icmp eq %struct.sv* %112, null
  br i1 %cmp118, label %land.lhs.true.120, label %if.end.128

land.lhs.true.120:                                ; preds = %lor.lhs.false.116
  %113 = load i8, i8* @PL_dowarn, align 1
  %conv121 = zext i8 %113 to i32
  %and122 = and i32 %conv121, 1
  %tobool123 = icmp ne i32 %and122, 0
  br i1 %tobool123, label %land.lhs.true.124, label %if.end.128

land.lhs.true.124:                                ; preds = %land.lhs.true.120, %lor.lhs.false.108, %land.lhs.true.104
  %114 = load i8*, i8** %s, align 8
  %call125 = call i8* @strchr(i8* %114, i32 10)
  %tobool126 = icmp ne i8* %call125, null
  br i1 %tobool126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %land.lhs.true.124
  call void (i32, i8*, ...) @Perl_warner(i32 9, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_warn_nl, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %land.lhs.true.124, %land.lhs.true.120, %lor.lhs.false.116, %cond.end.89
  %115 = load i32, i32* @PL_laststatval, align 4
  store i32 %115, i32* %retval
  br label %return

return:                                           ; preds = %if.end.128, %if.end.57, %if.then.22, %if.then.15
  %116 = load i32, i32* %retval
  ret i32 %116
}

declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_my_lstat() #0 {
entry:
  %retval = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %sv = alloca %struct.sv*, align 8
  %n_a = alloca i64, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 6
  %2 = load i8, i8* %op_flags, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.43

if.then:                                          ; preds = %entry
  %3 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %4 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %3 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp = icmp slt i64 %sub.ptr.div, 1
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.sv**, %struct.sv*** %sp, align 8
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %5, %struct.sv** %6, i32 1)
  store %struct.sv** %call, %struct.sv*** %sp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %7 = load %struct.op*, %struct.op** @PL_op, align 8
  %8 = bitcast %struct.op* %7 to %struct.svop*
  %op_sv = getelementptr inbounds %struct.svop, %struct.svop* %8, i32 0, i32 8
  %9 = load %struct.sv*, %struct.sv** %op_sv, align 8
  %10 = bitcast %struct.sv* %9 to %struct.gv*
  %11 = load %struct.gv*, %struct.gv** @PL_defgv, align 8
  %cmp3 = icmp eq %struct.gv* %10, %11
  br i1 %cmp3, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end
  %12 = load i32, i32* @PL_laststype, align 4
  %cmp6 = icmp ne i32 %12, 234
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.then.5
  %13 = load i32, i32* @PL_laststatval, align 4
  store i32 %13, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %14 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %14, i32 0, i32 14
  %15 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp11 = icmp ne %struct.sv* %15, null
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false.24

land.lhs.true:                                    ; preds = %if.end.10
  %16 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings13 = getelementptr inbounds %struct.cop, %struct.cop* %16, i32 0, i32 14
  %17 = load %struct.sv*, %struct.sv** %cop_warnings13, align 8
  %cmp14 = icmp ne %struct.sv* %17, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp14, label %land.lhs.true.16, label %lor.lhs.false.24

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %18 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings17 = getelementptr inbounds %struct.cop, %struct.cop* %18, i32 0, i32 14
  %19 = load %struct.sv*, %struct.sv** %cop_warnings17, align 8
  %cmp18 = icmp eq %struct.sv* %19, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp18, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.16
  %20 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings20 = getelementptr inbounds %struct.cop, %struct.cop* %20, i32 0, i32 14
  %21 = load %struct.sv*, %struct.sv** %cop_warnings20, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 0
  %22 = load i8*, i8** %sv_any, align 8
  %23 = bitcast i8* %22 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %23, i32 0, i32 0
  %24 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx, align 1
  %conv21 = sext i8 %25 to i32
  %and22 = and i32 %conv21, 4
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then.32, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false, %land.lhs.true, %if.end.10
  %26 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings25 = getelementptr inbounds %struct.cop, %struct.cop* %26, i32 0, i32 14
  %27 = load %struct.sv*, %struct.sv** %cop_warnings25, align 8
  %cmp26 = icmp eq %struct.sv* %27, null
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.42

land.lhs.true.28:                                 ; preds = %lor.lhs.false.24
  %28 = load i8, i8* @PL_dowarn, align 1
  %conv29 = zext i8 %28 to i32
  %and30 = and i32 %conv29, 1
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.42

if.then.32:                                       ; preds = %land.lhs.true.28, %lor.lhs.false, %land.lhs.true.16
  %29 = load %struct.op*, %struct.op** @PL_op, align 8
  %30 = bitcast %struct.op* %29 to %struct.svop*
  %op_sv33 = getelementptr inbounds %struct.svop, %struct.svop* %30, i32 0, i32 8
  %31 = load %struct.sv*, %struct.sv** %op_sv33, align 8
  %32 = bitcast %struct.sv* %31 to %struct.gv*
  %sv_any34 = getelementptr inbounds %struct.gv, %struct.gv* %32, i32 0, i32 0
  %33 = load %struct.xpvgv*, %struct.xpvgv** %sv_any34, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %33, i32 0, i32 7
  %34 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_egv = getelementptr inbounds %struct.gp, %struct.gp* %34, i32 0, i32 6
  %35 = load %struct.gv*, %struct.gv** %gp_egv, align 8
  %tobool35 = icmp ne %struct.gv* %35, null
  br i1 %tobool35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.32
  %36 = load %struct.op*, %struct.op** @PL_op, align 8
  %37 = bitcast %struct.op* %36 to %struct.svop*
  %op_sv36 = getelementptr inbounds %struct.svop, %struct.svop* %37, i32 0, i32 8
  %38 = load %struct.sv*, %struct.sv** %op_sv36, align 8
  %39 = bitcast %struct.sv* %38 to %struct.gv*
  %sv_any37 = getelementptr inbounds %struct.gv, %struct.gv* %39, i32 0, i32 0
  %40 = load %struct.xpvgv*, %struct.xpvgv** %sv_any37, align 8
  %xgv_gp38 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %40, i32 0, i32 7
  %41 = load %struct.gp*, %struct.gp** %xgv_gp38, align 8
  %gp_egv39 = getelementptr inbounds %struct.gp, %struct.gp* %41, i32 0, i32 6
  %42 = load %struct.gv*, %struct.gv** %gp_egv39, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.32
  %43 = load %struct.op*, %struct.op** @PL_op, align 8
  %44 = bitcast %struct.op* %43 to %struct.svop*
  %op_sv40 = getelementptr inbounds %struct.svop, %struct.svop* %44, i32 0, i32 8
  %45 = load %struct.sv*, %struct.sv** %op_sv40, align 8
  %46 = bitcast %struct.sv* %45 to %struct.gv*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gv* [ %42, %cond.true ], [ %46, %cond.false ]
  %sv_any41 = getelementptr inbounds %struct.gv, %struct.gv* %cond, i32 0, i32 0
  %47 = load %struct.xpvgv*, %struct.xpvgv** %sv_any41, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %47, i32 0, i32 8
  %48 = load i8*, i8** %xgv_name, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i32 0, i32 0), i8* %48)
  store i32 -1, i32* @PL_laststatval, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %land.lhs.true.28, %lor.lhs.false.24
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %entry
  store i32 234, i32* @PL_laststype, align 4
  store %struct.gv* null, %struct.gv** @PL_statgv, align 8
  %49 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %49, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %50 = load %struct.sv*, %struct.sv** %49, align 8
  store %struct.sv* %50, %struct.sv** %sv, align 8
  %51 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %51, %struct.sv*** @PL_stack_sp, align 8
  %52 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %52, i32 0, i32 2
  %53 = load i32, i32* %sv_flags, align 4
  %and44 = and i32 %53, 524288
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %land.lhs.true.46, label %if.end.100

land.lhs.true.46:                                 ; preds = %if.end.43
  %54 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any47 = getelementptr inbounds %struct.sv, %struct.sv* %54, i32 0, i32 0
  %55 = load i8*, i8** %sv_any47, align 8
  %56 = bitcast i8* %55 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %56, i32 0, i32 0
  %57 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_flags48 = getelementptr inbounds %struct.sv, %struct.sv* %57, i32 0, i32 2
  %58 = load i32, i32* %sv_flags48, align 4
  %and49 = and i32 %58, 255
  %cmp50 = icmp eq i32 %and49, 13
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.100

land.lhs.true.52:                                 ; preds = %land.lhs.true.46
  %59 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings53 = getelementptr inbounds %struct.cop, %struct.cop* %59, i32 0, i32 14
  %60 = load %struct.sv*, %struct.sv** %cop_warnings53, align 8
  %cmp54 = icmp ne %struct.sv* %60, null
  br i1 %cmp54, label %land.lhs.true.56, label %lor.lhs.false.72

land.lhs.true.56:                                 ; preds = %land.lhs.true.52
  %61 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings57 = getelementptr inbounds %struct.cop, %struct.cop* %61, i32 0, i32 14
  %62 = load %struct.sv*, %struct.sv** %cop_warnings57, align 8
  %cmp58 = icmp ne %struct.sv* %62, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp58, label %land.lhs.true.60, label %lor.lhs.false.72

land.lhs.true.60:                                 ; preds = %land.lhs.true.56
  %63 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings61 = getelementptr inbounds %struct.cop, %struct.cop* %63, i32 0, i32 14
  %64 = load %struct.sv*, %struct.sv** %cop_warnings61, align 8
  %cmp62 = icmp eq %struct.sv* %64, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp62, label %if.then.80, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %land.lhs.true.60
  %65 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings65 = getelementptr inbounds %struct.cop, %struct.cop* %65, i32 0, i32 14
  %66 = load %struct.sv*, %struct.sv** %cop_warnings65, align 8
  %sv_any66 = getelementptr inbounds %struct.sv, %struct.sv* %66, i32 0, i32 0
  %67 = load i8*, i8** %sv_any66, align 8
  %68 = bitcast i8* %67 to %struct.xpv*
  %xpv_pv67 = getelementptr inbounds %struct.xpv, %struct.xpv* %68, i32 0, i32 0
  %69 = load i8*, i8** %xpv_pv67, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %69, i64 1
  %70 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %70 to i32
  %and70 = and i32 %conv69, 4
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %if.then.80, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %lor.lhs.false.64, %land.lhs.true.56, %land.lhs.true.52
  %71 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings73 = getelementptr inbounds %struct.cop, %struct.cop* %71, i32 0, i32 14
  %72 = load %struct.sv*, %struct.sv** %cop_warnings73, align 8
  %cmp74 = icmp eq %struct.sv* %72, null
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.100

land.lhs.true.76:                                 ; preds = %lor.lhs.false.72
  %73 = load i8, i8* @PL_dowarn, align 1
  %conv77 = zext i8 %73 to i32
  %and78 = and i32 %conv77, 1
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.100

if.then.80:                                       ; preds = %land.lhs.true.76, %lor.lhs.false.64, %land.lhs.true.60
  %74 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any81 = getelementptr inbounds %struct.sv, %struct.sv* %74, i32 0, i32 0
  %75 = load i8*, i8** %sv_any81, align 8
  %76 = bitcast i8* %75 to %struct.xrv*
  %xrv_rv82 = getelementptr inbounds %struct.xrv, %struct.xrv* %76, i32 0, i32 0
  %77 = load %struct.sv*, %struct.sv** %xrv_rv82, align 8
  %78 = bitcast %struct.sv* %77 to %struct.gv*
  %sv_any83 = getelementptr inbounds %struct.gv, %struct.gv* %78, i32 0, i32 0
  %79 = load %struct.xpvgv*, %struct.xpvgv** %sv_any83, align 8
  %xgv_gp84 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %79, i32 0, i32 7
  %80 = load %struct.gp*, %struct.gp** %xgv_gp84, align 8
  %gp_egv85 = getelementptr inbounds %struct.gp, %struct.gp* %80, i32 0, i32 6
  %81 = load %struct.gv*, %struct.gv** %gp_egv85, align 8
  %tobool86 = icmp ne %struct.gv* %81, null
  br i1 %tobool86, label %cond.true.87, label %cond.false.93

cond.true.87:                                     ; preds = %if.then.80
  %82 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any88 = getelementptr inbounds %struct.sv, %struct.sv* %82, i32 0, i32 0
  %83 = load i8*, i8** %sv_any88, align 8
  %84 = bitcast i8* %83 to %struct.xrv*
  %xrv_rv89 = getelementptr inbounds %struct.xrv, %struct.xrv* %84, i32 0, i32 0
  %85 = load %struct.sv*, %struct.sv** %xrv_rv89, align 8
  %86 = bitcast %struct.sv* %85 to %struct.gv*
  %sv_any90 = getelementptr inbounds %struct.gv, %struct.gv* %86, i32 0, i32 0
  %87 = load %struct.xpvgv*, %struct.xpvgv** %sv_any90, align 8
  %xgv_gp91 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %87, i32 0, i32 7
  %88 = load %struct.gp*, %struct.gp** %xgv_gp91, align 8
  %gp_egv92 = getelementptr inbounds %struct.gp, %struct.gp* %88, i32 0, i32 6
  %89 = load %struct.gv*, %struct.gv** %gp_egv92, align 8
  br label %cond.end.96

cond.false.93:                                    ; preds = %if.then.80
  %90 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any94 = getelementptr inbounds %struct.sv, %struct.sv* %90, i32 0, i32 0
  %91 = load i8*, i8** %sv_any94, align 8
  %92 = bitcast i8* %91 to %struct.xrv*
  %xrv_rv95 = getelementptr inbounds %struct.xrv, %struct.xrv* %92, i32 0, i32 0
  %93 = load %struct.sv*, %struct.sv** %xrv_rv95, align 8
  %94 = bitcast %struct.sv* %93 to %struct.gv*
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.93, %cond.true.87
  %cond97 = phi %struct.gv* [ %89, %cond.true.87 ], [ %94, %cond.false.93 ]
  %sv_any98 = getelementptr inbounds %struct.gv, %struct.gv* %cond97, i32 0, i32 0
  %95 = load %struct.xpvgv*, %struct.xpvgv** %sv_any98, align 8
  %xgv_name99 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %95, i32 0, i32 8
  %96 = load i8*, i8** %xgv_name99, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i32 0, i32 0), i8* %96)
  store i32 -1, i32* @PL_laststatval, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.100:                                       ; preds = %land.lhs.true.76, %lor.lhs.false.72, %land.lhs.true.46, %if.end.43
  %97 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %98 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags101 = getelementptr inbounds %struct.sv, %struct.sv* %98, i32 0, i32 2
  %99 = load i32, i32* %sv_flags101, align 4
  %and102 = and i32 %99, 262144
  %cmp103 = icmp eq i32 %and102, 262144
  br i1 %cmp103, label %cond.true.105, label %cond.false.109

cond.true.105:                                    ; preds = %if.end.100
  %100 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any106 = getelementptr inbounds %struct.sv, %struct.sv* %100, i32 0, i32 0
  %101 = load i8*, i8** %sv_any106, align 8
  %102 = bitcast i8* %101 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %102, i32 0, i32 1
  %103 = load i64, i64* %xpv_cur, align 8
  store i64 %103, i64* %n_a, align 8
  %104 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any107 = getelementptr inbounds %struct.sv, %struct.sv* %104, i32 0, i32 0
  %105 = load i8*, i8** %sv_any107, align 8
  %106 = bitcast i8* %105 to %struct.xpv*
  %xpv_pv108 = getelementptr inbounds %struct.xpv, %struct.xpv* %106, i32 0, i32 0
  %107 = load i8*, i8** %xpv_pv108, align 8
  br label %cond.end.111

cond.false.109:                                   ; preds = %if.end.100
  %108 = load %struct.sv*, %struct.sv** %sv, align 8
  %call110 = call i8* @Perl_sv_2pv_flags(%struct.sv* %108, i64* %n_a, i32 2)
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.109, %cond.true.105
  %cond112 = phi i8* [ %107, %cond.true.105 ], [ %call110, %cond.false.109 ]
  call void @Perl_sv_setpv(%struct.sv* %97, i8* %cond112)
  %109 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags113 = getelementptr inbounds %struct.sv, %struct.sv* %109, i32 0, i32 2
  %110 = load i32, i32* %sv_flags113, align 4
  %and114 = and i32 %110, 262144
  %cmp115 = icmp eq i32 %and114, 262144
  br i1 %cmp115, label %cond.true.117, label %cond.false.122

cond.true.117:                                    ; preds = %cond.end.111
  %111 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any118 = getelementptr inbounds %struct.sv, %struct.sv* %111, i32 0, i32 0
  %112 = load i8*, i8** %sv_any118, align 8
  %113 = bitcast i8* %112 to %struct.xpv*
  %xpv_cur119 = getelementptr inbounds %struct.xpv, %struct.xpv* %113, i32 0, i32 1
  %114 = load i64, i64* %xpv_cur119, align 8
  store i64 %114, i64* %n_a, align 8
  %115 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any120 = getelementptr inbounds %struct.sv, %struct.sv* %115, i32 0, i32 0
  %116 = load i8*, i8** %sv_any120, align 8
  %117 = bitcast i8* %116 to %struct.xpv*
  %xpv_pv121 = getelementptr inbounds %struct.xpv, %struct.xpv* %117, i32 0, i32 0
  %118 = load i8*, i8** %xpv_pv121, align 8
  br label %cond.end.124

cond.false.122:                                   ; preds = %cond.end.111
  %119 = load %struct.sv*, %struct.sv** %sv, align 8
  %call123 = call i8* @Perl_sv_2pv_flags(%struct.sv* %119, i64* %n_a, i32 2)
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.122, %cond.true.117
  %cond125 = phi i8* [ %118, %cond.true.117 ], [ %call123, %cond.false.122 ]
  %call126 = call i32 @stat(i8* %cond125, %struct.stat* @PL_statcache)
  store i32 %call126, i32* @PL_laststatval, align 4
  %120 = load i32, i32* @PL_laststatval, align 4
  %cmp127 = icmp slt i32 %120, 0
  br i1 %cmp127, label %land.lhs.true.129, label %if.end.174

land.lhs.true.129:                                ; preds = %cond.end.124
  %121 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings130 = getelementptr inbounds %struct.cop, %struct.cop* %121, i32 0, i32 14
  %122 = load %struct.sv*, %struct.sv** %cop_warnings130, align 8
  %cmp131 = icmp ne %struct.sv* %122, null
  br i1 %cmp131, label %land.lhs.true.133, label %lor.lhs.false.149

land.lhs.true.133:                                ; preds = %land.lhs.true.129
  %123 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings134 = getelementptr inbounds %struct.cop, %struct.cop* %123, i32 0, i32 14
  %124 = load %struct.sv*, %struct.sv** %cop_warnings134, align 8
  %cmp135 = icmp ne %struct.sv* %124, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp135, label %land.lhs.true.137, label %lor.lhs.false.149

land.lhs.true.137:                                ; preds = %land.lhs.true.133
  %125 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings138 = getelementptr inbounds %struct.cop, %struct.cop* %125, i32 0, i32 14
  %126 = load %struct.sv*, %struct.sv** %cop_warnings138, align 8
  %cmp139 = icmp eq %struct.sv* %126, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp139, label %land.lhs.true.157, label %lor.lhs.false.141

lor.lhs.false.141:                                ; preds = %land.lhs.true.137
  %127 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings142 = getelementptr inbounds %struct.cop, %struct.cop* %127, i32 0, i32 14
  %128 = load %struct.sv*, %struct.sv** %cop_warnings142, align 8
  %sv_any143 = getelementptr inbounds %struct.sv, %struct.sv* %128, i32 0, i32 0
  %129 = load i8*, i8** %sv_any143, align 8
  %130 = bitcast i8* %129 to %struct.xpv*
  %xpv_pv144 = getelementptr inbounds %struct.xpv, %struct.xpv* %130, i32 0, i32 0
  %131 = load i8*, i8** %xpv_pv144, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %131, i64 2
  %132 = load i8, i8* %arrayidx145, align 1
  %conv146 = sext i8 %132 to i32
  %and147 = and i32 %conv146, 4
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %land.lhs.true.157, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %lor.lhs.false.141, %land.lhs.true.133, %land.lhs.true.129
  %133 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings150 = getelementptr inbounds %struct.cop, %struct.cop* %133, i32 0, i32 14
  %134 = load %struct.sv*, %struct.sv** %cop_warnings150, align 8
  %cmp151 = icmp eq %struct.sv* %134, null
  br i1 %cmp151, label %land.lhs.true.153, label %if.end.174

land.lhs.true.153:                                ; preds = %lor.lhs.false.149
  %135 = load i8, i8* @PL_dowarn, align 1
  %conv154 = zext i8 %135 to i32
  %and155 = and i32 %conv154, 1
  %tobool156 = icmp ne i32 %and155, 0
  br i1 %tobool156, label %land.lhs.true.157, label %if.end.174

land.lhs.true.157:                                ; preds = %land.lhs.true.153, %lor.lhs.false.141, %land.lhs.true.137
  %136 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags158 = getelementptr inbounds %struct.sv, %struct.sv* %136, i32 0, i32 2
  %137 = load i32, i32* %sv_flags158, align 4
  %and159 = and i32 %137, 262144
  %cmp160 = icmp eq i32 %and159, 262144
  br i1 %cmp160, label %cond.true.162, label %cond.false.167

cond.true.162:                                    ; preds = %land.lhs.true.157
  %138 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any163 = getelementptr inbounds %struct.sv, %struct.sv* %138, i32 0, i32 0
  %139 = load i8*, i8** %sv_any163, align 8
  %140 = bitcast i8* %139 to %struct.xpv*
  %xpv_cur164 = getelementptr inbounds %struct.xpv, %struct.xpv* %140, i32 0, i32 1
  %141 = load i64, i64* %xpv_cur164, align 8
  store i64 %141, i64* %n_a, align 8
  %142 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any165 = getelementptr inbounds %struct.sv, %struct.sv* %142, i32 0, i32 0
  %143 = load i8*, i8** %sv_any165, align 8
  %144 = bitcast i8* %143 to %struct.xpv*
  %xpv_pv166 = getelementptr inbounds %struct.xpv, %struct.xpv* %144, i32 0, i32 0
  %145 = load i8*, i8** %xpv_pv166, align 8
  br label %cond.end.169

cond.false.167:                                   ; preds = %land.lhs.true.157
  %146 = load %struct.sv*, %struct.sv** %sv, align 8
  %call168 = call i8* @Perl_sv_2pv_flags(%struct.sv* %146, i64* %n_a, i32 2)
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.false.167, %cond.true.162
  %cond170 = phi i8* [ %145, %cond.true.162 ], [ %call168, %cond.false.167 ]
  %call171 = call i8* @strchr(i8* %cond170, i32 10)
  %tobool172 = icmp ne i8* %call171, null
  br i1 %tobool172, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %cond.end.169
  call void (i32, i8*, ...) @Perl_warner(i32 9, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_warn_nl, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.173, %cond.end.169, %land.lhs.true.153, %lor.lhs.false.149, %cond.end.124
  %147 = load i32, i32* @PL_laststatval, align 4
  store i32 %147, i32* %retval
  br label %return

return:                                           ; preds = %if.end.174, %cond.end.96, %cond.end, %if.end.9
  %148 = load i32, i32* %retval
  ret i32 %148
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_do_aexec(%struct.sv* %really, %struct.sv** %mark, %struct.sv** %sp) #0 {
entry:
  %really.addr = alloca %struct.sv*, align 8
  %mark.addr = alloca %struct.sv**, align 8
  %sp.addr = alloca %struct.sv**, align 8
  store %struct.sv* %really, %struct.sv** %really.addr, align 8
  store %struct.sv** %mark, %struct.sv*** %mark.addr, align 8
  store %struct.sv** %sp, %struct.sv*** %sp.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %really.addr, align 8
  %1 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %2 = load %struct.sv**, %struct.sv*** %sp.addr, align 8
  %call = call signext i8 @Perl_do_aexec5(%struct.sv* %0, %struct.sv** %1, %struct.sv** %2, i32 0, i32 0)
  ret i8 %call
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_do_aexec5(%struct.sv* %really, %struct.sv** %mark, %struct.sv** %sp, i32 %fd, i32 %do_report) #0 {
entry:
  %really.addr = alloca %struct.sv*, align 8
  %mark.addr = alloca %struct.sv**, align 8
  %sp.addr = alloca %struct.sv**, align 8
  %fd.addr = alloca i32, align 4
  %do_report.addr = alloca i32, align 4
  %a = alloca i8**, align 8
  %tmps = alloca i8*, align 8
  %n_a = alloca i64, align 8
  %e = alloca i32, align 4
  store %struct.sv* %really, %struct.sv** %really.addr, align 8
  store %struct.sv** %mark, %struct.sv*** %mark.addr, align 8
  store %struct.sv** %sp, %struct.sv*** %sp.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %do_report, i32* %do_report.addr, align 4
  store i8* null, i8** %tmps, align 8
  %0 = load %struct.sv**, %struct.sv*** %sp.addr, align 8
  %1 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %cmp = icmp ugt %struct.sv** %0, %1
  br i1 %cmp, label %if.then, label %if.end.88

if.then:                                          ; preds = %entry
  %2 = load %struct.sv**, %struct.sv*** %sp.addr, align 8
  %3 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %2 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %mul = mul i64 %add, 8
  %call = call i8* @Perl_safesysmalloc(i64 %mul)
  %4 = bitcast i8* %call to i8**
  store i8** %4, i8*** @PL_Argv, align 8
  %5 = load i8**, i8*** @PL_Argv, align 8
  store i8** %5, i8*** %a, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %6 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %6, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %mark.addr, align 8
  %7 = load %struct.sv**, %struct.sv*** %sp.addr, align 8
  %cmp1 = icmp ule %struct.sv** %incdec.ptr, %7
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %9 = load %struct.sv*, %struct.sv** %8, align 8
  %tobool = icmp ne %struct.sv* %9, null
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %while.body
  %10 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %11 = load %struct.sv*, %struct.sv** %10, align 8
  store %struct.sv* %11, %struct.sv** @PL_Sv, align 8
  %12 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 2
  %13 = load i32, i32* %sv_flags, align 4
  %and = and i32 %13, 262144
  %cmp3 = icmp eq i32 %and, 262144
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  %14 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any, align 8
  %16 = bitcast i8* %15 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %16, i32 0, i32 1
  %17 = load i64, i64* %xpv_cur, align 8
  store i64 %17, i64* %n_a, align 8
  %18 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any4 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 0
  %19 = load i8*, i8** %sv_any4, align 8
  %20 = bitcast i8* %19 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %20, i32 0, i32 0
  %21 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  %22 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call5 = call i8* @Perl_sv_2pv_flags(%struct.sv* %22, i64* %n_a, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %21, %cond.true ], [ %call5, %cond.false ]
  %23 = load i8**, i8*** %a, align 8
  %incdec.ptr6 = getelementptr inbounds i8*, i8** %23, i32 1
  store i8** %incdec.ptr6, i8*** %a, align 8
  store i8* %cond, i8** %23, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %24 = load i8**, i8*** %a, align 8
  %incdec.ptr7 = getelementptr inbounds i8*, i8** %24, i32 1
  store i8** %incdec.ptr7, i8*** %a, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** %24, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load i8**, i8*** %a, align 8
  store i8* null, i8** %25, align 8
  %26 = load %struct.sv*, %struct.sv** %really.addr, align 8
  %tobool8 = icmp ne %struct.sv* %26, null
  br i1 %tobool8, label %if.then.9, label %if.end.22

if.then.9:                                        ; preds = %while.end
  %27 = load %struct.sv*, %struct.sv** %really.addr, align 8
  %sv_flags10 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 2
  %28 = load i32, i32* %sv_flags10, align 4
  %and11 = and i32 %28, 262144
  %cmp12 = icmp eq i32 %and11, 262144
  br i1 %cmp12, label %cond.true.13, label %cond.false.18

cond.true.13:                                     ; preds = %if.then.9
  %29 = load %struct.sv*, %struct.sv** %really.addr, align 8
  %sv_any14 = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 0
  %30 = load i8*, i8** %sv_any14, align 8
  %31 = bitcast i8* %30 to %struct.xpv*
  %xpv_cur15 = getelementptr inbounds %struct.xpv, %struct.xpv* %31, i32 0, i32 1
  %32 = load i64, i64* %xpv_cur15, align 8
  store i64 %32, i64* %n_a, align 8
  %33 = load %struct.sv*, %struct.sv** %really.addr, align 8
  %sv_any16 = getelementptr inbounds %struct.sv, %struct.sv* %33, i32 0, i32 0
  %34 = load i8*, i8** %sv_any16, align 8
  %35 = bitcast i8* %34 to %struct.xpv*
  %xpv_pv17 = getelementptr inbounds %struct.xpv, %struct.xpv* %35, i32 0, i32 0
  %36 = load i8*, i8** %xpv_pv17, align 8
  br label %cond.end.20

cond.false.18:                                    ; preds = %if.then.9
  %37 = load %struct.sv*, %struct.sv** %really.addr, align 8
  %call19 = call i8* @Perl_sv_2pv_flags(%struct.sv* %37, i64* %n_a, i32 2)
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.18, %cond.true.13
  %cond21 = phi i8* [ %36, %cond.true.13 ], [ %call19, %cond.false.18 ]
  store i8* %cond21, i8** %tmps, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %cond.end.20, %while.end
  %38 = load %struct.sv*, %struct.sv** %really.addr, align 8
  %tobool23 = icmp ne %struct.sv* %38, null
  br i1 %tobool23, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.22
  %39 = load i8**, i8*** @PL_Argv, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %39, i64 0
  %40 = load i8*, i8** %arrayidx, align 8
  %41 = load i8, i8* %40, align 1
  %conv = sext i8 %41 to i32
  %cmp24 = icmp ne i32 %conv, 47
  br i1 %cmp24, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.22
  %42 = load %struct.sv*, %struct.sv** %really.addr, align 8
  %tobool26 = icmp ne %struct.sv* %42, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.end.35

land.lhs.true.27:                                 ; preds = %lor.lhs.false
  %43 = load i8*, i8** %tmps, align 8
  %44 = load i8, i8* %43, align 1
  %conv28 = sext i8 %44 to i32
  %cmp29 = icmp ne i32 %conv28, 47
  br i1 %cmp29, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %land.lhs.true.27, %land.lhs.true
  %45 = load i8, i8* @PL_tainting, align 1
  %tobool32 = icmp ne i8 %45, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.31
  call void @Perl_taint_env()
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true.27, %lor.lhs.false
  %46 = load %struct.sv*, %struct.sv** %really.addr, align 8
  %tobool36 = icmp ne %struct.sv* %46, null
  br i1 %tobool36, label %land.lhs.true.37, label %if.else.42

land.lhs.true.37:                                 ; preds = %if.end.35
  %47 = load i8*, i8** %tmps, align 8
  %48 = load i8, i8* %47, align 1
  %conv38 = sext i8 %48 to i32
  %tobool39 = icmp ne i32 %conv38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %land.lhs.true.37
  %49 = load i8*, i8** %tmps, align 8
  %50 = load i8**, i8*** @PL_Argv, align 8
  %call41 = call i32 @execvp(i8* %49, i8** %50)
  br label %if.end.45

if.else.42:                                       ; preds = %land.lhs.true.37, %if.end.35
  %51 = load i8**, i8*** @PL_Argv, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %51, i64 0
  %52 = load i8*, i8** %arrayidx43, align 8
  %53 = load i8**, i8*** @PL_Argv, align 8
  %call44 = call i32 @execvp(i8* %52, i8** %53)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.40
  %54 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %54, i32 0, i32 14
  %55 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp46 = icmp ne %struct.sv* %55, null
  br i1 %cmp46, label %land.lhs.true.48, label %lor.lhs.false.64

land.lhs.true.48:                                 ; preds = %if.end.45
  %56 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings49 = getelementptr inbounds %struct.cop, %struct.cop* %56, i32 0, i32 14
  %57 = load %struct.sv*, %struct.sv** %cop_warnings49, align 8
  %cmp50 = icmp ne %struct.sv* %57, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp50, label %land.lhs.true.52, label %lor.lhs.false.64

land.lhs.true.52:                                 ; preds = %land.lhs.true.48
  %58 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings53 = getelementptr inbounds %struct.cop, %struct.cop* %58, i32 0, i32 14
  %59 = load %struct.sv*, %struct.sv** %cop_warnings53, align 8
  %cmp54 = icmp eq %struct.sv* %59, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp54, label %if.then.72, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %land.lhs.true.52
  %60 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings57 = getelementptr inbounds %struct.cop, %struct.cop* %60, i32 0, i32 14
  %61 = load %struct.sv*, %struct.sv** %cop_warnings57, align 8
  %sv_any58 = getelementptr inbounds %struct.sv, %struct.sv* %61, i32 0, i32 0
  %62 = load i8*, i8** %sv_any58, align 8
  %63 = bitcast i8* %62 to %struct.xpv*
  %xpv_pv59 = getelementptr inbounds %struct.xpv, %struct.xpv* %63, i32 0, i32 0
  %64 = load i8*, i8** %xpv_pv59, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %64, i64 1
  %65 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %65 to i32
  %and62 = and i32 %conv61, 64
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %if.then.72, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %lor.lhs.false.56, %land.lhs.true.48, %if.end.45
  %66 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings65 = getelementptr inbounds %struct.cop, %struct.cop* %66, i32 0, i32 14
  %67 = load %struct.sv*, %struct.sv** %cop_warnings65, align 8
  %cmp66 = icmp eq %struct.sv* %67, null
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.81

land.lhs.true.68:                                 ; preds = %lor.lhs.false.64
  %68 = load i8, i8* @PL_dowarn, align 1
  %conv69 = zext i8 %68 to i32
  %and70 = and i32 %conv69, 1
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.81

if.then.72:                                       ; preds = %land.lhs.true.68, %lor.lhs.false.56, %land.lhs.true.52
  %69 = load %struct.sv*, %struct.sv** %really.addr, align 8
  %tobool73 = icmp ne %struct.sv* %69, null
  br i1 %tobool73, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %if.then.72
  %70 = load i8*, i8** %tmps, align 8
  br label %cond.end.77

cond.false.75:                                    ; preds = %if.then.72
  %71 = load i8**, i8*** @PL_Argv, align 8
  %arrayidx76 = getelementptr inbounds i8*, i8** %71, i64 0
  %72 = load i8*, i8** %arrayidx76, align 8
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.75, %cond.true.74
  %cond78 = phi i8* [ %70, %cond.true.74 ], [ %72, %cond.false.75 ]
  %call79 = call i32* @__errno_location()
  %73 = load i32, i32* %call79, align 4
  %call80 = call i8* @strerror(i32 %73)
  call void (i32, i8*, ...) @Perl_warner(i32 7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i8* %cond78, i8* %call80)
  br label %if.end.81

if.end.81:                                        ; preds = %cond.end.77, %land.lhs.true.68, %lor.lhs.false.64
  %74 = load i32, i32* %do_report.addr, align 4
  %tobool82 = icmp ne i32 %74, 0
  br i1 %tobool82, label %if.then.83, label %if.end.87

if.then.83:                                       ; preds = %if.end.81
  %call84 = call i32* @__errno_location()
  %75 = load i32, i32* %call84, align 4
  store i32 %75, i32* %e, align 4
  %76 = load i32, i32* %fd.addr, align 4
  %77 = bitcast i32* %e to i8*
  %call85 = call i64 @write(i32 %76, i8* %77, i64 4)
  %78 = load i32, i32* %fd.addr, align 4
  %call86 = call i32 @close(i32 %78)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.83, %if.end.81
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %entry
  call void @Perl_do_execfree()
  ret i8 0
}

declare i8* @Perl_safesysmalloc(i64) #1

declare i32 @execvp(i8*, i8**) #1

declare i64 @write(i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @Perl_do_execfree() #0 {
entry:
  %0 = load i8**, i8*** @PL_Argv, align 8
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** @PL_Argv, align 8
  %2 = bitcast i8** %1 to i8*
  call void @Perl_safesysfree(i8* %2)
  store i8** null, i8*** @PL_Argv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** @PL_Cmd, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i8*, i8** @PL_Cmd, align 8
  call void @Perl_safesysfree(i8* %4)
  store i8* null, i8** @PL_Cmd, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  ret void
}

declare void @Perl_safesysfree(i8*) #1

; Function Attrs: nounwind uwtable
define signext i8 @Perl_do_exec(i8* %cmd) #0 {
entry:
  %cmd.addr = alloca i8*, align 8
  store i8* %cmd, i8** %cmd.addr, align 8
  %0 = load i8*, i8** %cmd.addr, align 8
  %call = call signext i8 @Perl_do_exec3(i8* %0, i32 0, i32 0)
  ret i8 %call
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_do_exec3(i8* %cmd, i32 %fd, i32 %do_report) #0 {
entry:
  %retval = alloca i8, align 1
  %cmd.addr = alloca i8*, align 8
  %fd.addr = alloca i32, align 4
  %do_report.addr = alloca i32, align 4
  %a = alloca i8**, align 8
  %s = alloca i8*, align 8
  %flags = alloca [10 x i8], align 1
  %ncmd = alloca i8*, align 8
  %t = alloca i8*, align 8
  %e = alloca i32, align 4
  store i8* %cmd, i8** %cmd.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %do_report, i32* %do_report.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %cmd.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %cmd.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv1, 32
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %4 = load i8*, i8** %cmd.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 9
  br i1 %cmp4, label %lor.end, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %6 = load i8*, i8** %cmd.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 10
  br i1 %cmp8, label %lor.end, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.6
  %8 = load i8*, i8** %cmd.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv11 = sext i8 %9 to i32
  %cmp12 = icmp eq i32 %conv11, 13
  br i1 %cmp12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.10
  %10 = load i8*, i8** %cmd.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv14 = sext i8 %11 to i32
  %cmp15 = icmp eq i32 %conv14, 12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.10, %lor.lhs.false.6, %lor.lhs.false, %land.rhs
  %12 = phi i1 [ true, %lor.lhs.false.10 ], [ true, %lor.lhs.false.6 ], [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %cmp15, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %12, %lor.end ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load i8*, i8** %cmd.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %cmd.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load i8*, i8** %cmd.addr, align 8
  %16 = load i8*, i8** @PL_cshname, align 8
  %17 = load i32, i32* @PL_cshlen, align 4
  %conv17 = sext i32 %17 to i64
  %call = call i32 @strncmp(i8* %15, i8* %16, i64 %conv17)
  %tobool18 = icmp ne i32 %call, 0
  br i1 %tobool18, label %if.end.64, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end
  %18 = load i8*, i8** %cmd.addr, align 8
  %19 = load i32, i32* @PL_cshlen, align 4
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  %call19 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i64 3)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.64, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %flags, i32 0, i32 0
  %call21 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0))
  %20 = load i8*, i8** %cmd.addr, align 8
  %21 = load i32, i32* @PL_cshlen, align 4
  %idx.ext22 = sext i32 %21 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %20, i64 %idx.ext22
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr23, i64 3
  store i8* %add.ptr24, i8** %s, align 8
  %22 = load i8*, i8** %s, align 8
  %23 = load i8, i8* %22, align 1
  %conv25 = sext i8 %23 to i32
  %cmp26 = icmp eq i32 %conv25, 102
  br i1 %cmp26, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %if.then
  %24 = load i8*, i8** %s, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr29, i8** %s, align 8
  %arraydecay30 = getelementptr inbounds [10 x i8], [10 x i8]* %flags, i32 0, i32 0
  %call31 = call i8* @strcat(i8* %arraydecay30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.28, %if.then
  %25 = load i8*, i8** %s, align 8
  %26 = load i8, i8* %25, align 1
  %conv32 = sext i8 %26 to i32
  %cmp33 = icmp eq i32 %conv32, 32
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end
  %27 = load i8*, i8** %s, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr36, i8** %s, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end
  %28 = load i8*, i8** %s, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr38, i8** %s, align 8
  %29 = load i8, i8* %28, align 1
  %conv39 = sext i8 %29 to i32
  %cmp40 = icmp eq i32 %conv39, 39
  br i1 %cmp40, label %if.then.42, label %if.end.63

if.then.42:                                       ; preds = %if.end.37
  %30 = load i8*, i8** %s, align 8
  store i8* %30, i8** %ncmd, align 8
  br label %while.cond.43

while.cond.43:                                    ; preds = %while.body.45, %if.then.42
  %31 = load i8*, i8** %s, align 8
  %32 = load i8, i8* %31, align 1
  %tobool44 = icmp ne i8 %32, 0
  br i1 %tobool44, label %while.body.45, label %while.end.47

while.body.45:                                    ; preds = %while.cond.43
  %33 = load i8*, i8** %s, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr46, i8** %s, align 8
  br label %while.cond.43

while.end.47:                                     ; preds = %while.cond.43
  %34 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %34, i64 -1
  %35 = load i8, i8* %arrayidx, align 1
  %conv48 = sext i8 %35 to i32
  %cmp49 = icmp eq i32 %conv48, 10
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %while.end.47
  %36 = load i8*, i8** %s, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %36, i32 -1
  store i8* %incdec.ptr52, i8** %s, align 8
  store i8 0, i8* %incdec.ptr52, align 1
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %while.end.47
  %37 = load i8*, i8** %s, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %37, i64 -1
  %38 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %38 to i32
  %cmp56 = icmp eq i32 %conv55, 39
  br i1 %cmp56, label %if.then.58, label %if.end.62

if.then.58:                                       ; preds = %if.end.53
  %39 = load i8*, i8** %s, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %39, i32 -1
  store i8* %incdec.ptr59, i8** %s, align 8
  store i8 0, i8* %incdec.ptr59, align 1
  %40 = load i8*, i8** @PL_cshname, align 8
  %arraydecay60 = getelementptr inbounds [10 x i8], [10 x i8]* %flags, i32 0, i32 0
  %41 = load i8*, i8** %ncmd, align 8
  %call61 = call i32 (i8*, i8*, ...) @execl(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i8* %arraydecay60, i8* %41, i8* null)
  %42 = load i8*, i8** %s, align 8
  store i8 39, i8* %42, align 1
  store i8 0, i8* %retval
  br label %return

if.end.62:                                        ; preds = %if.end.53
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.37
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %land.lhs.true, %while.end
  %43 = load i8*, i8** %cmd.addr, align 8
  %44 = load i8, i8* %43, align 1
  %conv65 = sext i8 %44 to i32
  %cmp66 = icmp eq i32 %conv65, 46
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.94

land.lhs.true.68:                                 ; preds = %if.end.64
  %45 = load i8*, i8** %cmd.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load i8, i8* %arrayidx69, align 1
  %conv70 = sext i8 %46 to i32
  %cmp71 = icmp eq i32 %conv70, 32
  br i1 %cmp71, label %if.then.93, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %land.lhs.true.68
  %47 = load i8*, i8** %cmd.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %47, i64 1
  %48 = load i8, i8* %arrayidx74, align 1
  %conv75 = sext i8 %48 to i32
  %cmp76 = icmp eq i32 %conv75, 9
  br i1 %cmp76, label %if.then.93, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %lor.lhs.false.73
  %49 = load i8*, i8** %cmd.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %49, i64 1
  %50 = load i8, i8* %arrayidx79, align 1
  %conv80 = sext i8 %50 to i32
  %cmp81 = icmp eq i32 %conv80, 10
  br i1 %cmp81, label %if.then.93, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %lor.lhs.false.78
  %51 = load i8*, i8** %cmd.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %51, i64 1
  %52 = load i8, i8* %arrayidx84, align 1
  %conv85 = sext i8 %52 to i32
  %cmp86 = icmp eq i32 %conv85, 13
  br i1 %cmp86, label %if.then.93, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %lor.lhs.false.83
  %53 = load i8*, i8** %cmd.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %53, i64 1
  %54 = load i8, i8* %arrayidx89, align 1
  %conv90 = sext i8 %54 to i32
  %cmp91 = icmp eq i32 %conv90, 12
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %lor.lhs.false.88, %lor.lhs.false.83, %lor.lhs.false.78, %lor.lhs.false.73, %land.lhs.true.68
  br label %doshell

if.end.94:                                        ; preds = %lor.lhs.false.88, %if.end.64
  %55 = load i8*, i8** %cmd.addr, align 8
  %call95 = call i32 @strncmp(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i64 4)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.end.123, label %land.lhs.true.97

land.lhs.true.97:                                 ; preds = %if.end.94
  %56 = load i8*, i8** %cmd.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %56, i64 4
  %57 = load i8, i8* %arrayidx98, align 1
  %conv99 = sext i8 %57 to i32
  %cmp100 = icmp eq i32 %conv99, 32
  br i1 %cmp100, label %if.then.122, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %land.lhs.true.97
  %58 = load i8*, i8** %cmd.addr, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %58, i64 4
  %59 = load i8, i8* %arrayidx103, align 1
  %conv104 = sext i8 %59 to i32
  %cmp105 = icmp eq i32 %conv104, 9
  br i1 %cmp105, label %if.then.122, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %lor.lhs.false.102
  %60 = load i8*, i8** %cmd.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %60, i64 4
  %61 = load i8, i8* %arrayidx108, align 1
  %conv109 = sext i8 %61 to i32
  %cmp110 = icmp eq i32 %conv109, 10
  br i1 %cmp110, label %if.then.122, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %lor.lhs.false.107
  %62 = load i8*, i8** %cmd.addr, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %62, i64 4
  %63 = load i8, i8* %arrayidx113, align 1
  %conv114 = sext i8 %63 to i32
  %cmp115 = icmp eq i32 %conv114, 13
  br i1 %cmp115, label %if.then.122, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %lor.lhs.false.112
  %64 = load i8*, i8** %cmd.addr, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %64, i64 4
  %65 = load i8, i8* %arrayidx118, align 1
  %conv119 = sext i8 %65 to i32
  %cmp120 = icmp eq i32 %conv119, 12
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %lor.lhs.false.117, %lor.lhs.false.112, %lor.lhs.false.107, %lor.lhs.false.102, %land.lhs.true.97
  br label %doshell

if.end.123:                                       ; preds = %lor.lhs.false.117, %if.end.94
  %66 = load i8*, i8** %cmd.addr, align 8
  store i8* %66, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.123
  %67 = load i8*, i8** %s, align 8
  %68 = load i8, i8* %67, align 1
  %conv124 = sext i8 %68 to i32
  %tobool125 = icmp ne i32 %conv124, 0
  br i1 %tobool125, label %land.rhs.126, label %land.end.155

land.rhs.126:                                     ; preds = %for.cond
  %69 = load i8*, i8** %s, align 8
  %70 = load i8, i8* %69, align 1
  %conv127 = sext i8 %70 to i32
  %cmp128 = icmp sge i32 %conv127, 65
  br i1 %cmp128, label %land.lhs.true.130, label %lor.lhs.false.134

land.lhs.true.130:                                ; preds = %land.rhs.126
  %71 = load i8*, i8** %s, align 8
  %72 = load i8, i8* %71, align 1
  %conv131 = sext i8 %72 to i32
  %cmp132 = icmp sle i32 %conv131, 90
  br i1 %cmp132, label %lor.end.154, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %land.lhs.true.130, %land.rhs.126
  %73 = load i8*, i8** %s, align 8
  %74 = load i8, i8* %73, align 1
  %conv135 = sext i8 %74 to i32
  %cmp136 = icmp sge i32 %conv135, 97
  br i1 %cmp136, label %land.lhs.true.138, label %lor.lhs.false.142

land.lhs.true.138:                                ; preds = %lor.lhs.false.134
  %75 = load i8*, i8** %s, align 8
  %76 = load i8, i8* %75, align 1
  %conv139 = sext i8 %76 to i32
  %cmp140 = icmp sle i32 %conv139, 122
  br i1 %cmp140, label %lor.end.154, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %land.lhs.true.138, %lor.lhs.false.134
  %77 = load i8*, i8** %s, align 8
  %78 = load i8, i8* %77, align 1
  %conv143 = sext i8 %78 to i32
  %cmp144 = icmp sge i32 %conv143, 48
  br i1 %cmp144, label %land.lhs.true.146, label %lor.rhs.150

land.lhs.true.146:                                ; preds = %lor.lhs.false.142
  %79 = load i8*, i8** %s, align 8
  %80 = load i8, i8* %79, align 1
  %conv147 = sext i8 %80 to i32
  %cmp148 = icmp sle i32 %conv147, 57
  br i1 %cmp148, label %lor.end.154, label %lor.rhs.150

lor.rhs.150:                                      ; preds = %land.lhs.true.146, %lor.lhs.false.142
  %81 = load i8*, i8** %s, align 8
  %82 = load i8, i8* %81, align 1
  %conv151 = sext i8 %82 to i32
  %cmp152 = icmp eq i32 %conv151, 95
  br label %lor.end.154

lor.end.154:                                      ; preds = %lor.rhs.150, %land.lhs.true.146, %land.lhs.true.138, %land.lhs.true.130
  %83 = phi i1 [ true, %land.lhs.true.146 ], [ true, %land.lhs.true.138 ], [ true, %land.lhs.true.130 ], [ %cmp152, %lor.rhs.150 ]
  br label %land.end.155

land.end.155:                                     ; preds = %lor.end.154, %for.cond
  %84 = phi i1 [ false, %for.cond ], [ %83, %lor.end.154 ]
  br i1 %84, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.155
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %85 = load i8*, i8** %s, align 8
  %incdec.ptr156 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr156, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end.155
  %86 = load i8*, i8** %s, align 8
  %87 = load i8, i8* %86, align 1
  %conv157 = sext i8 %87 to i32
  %cmp158 = icmp eq i32 %conv157, 61
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %for.end
  br label %doshell

if.end.161:                                       ; preds = %for.end
  %88 = load i8*, i8** %cmd.addr, align 8
  store i8* %88, i8** %s, align 8
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.313, %if.end.161
  %89 = load i8*, i8** %s, align 8
  %90 = load i8, i8* %89, align 1
  %tobool163 = icmp ne i8 %90, 0
  br i1 %tobool163, label %for.body.164, label %for.end.315

for.body.164:                                     ; preds = %for.cond.162
  %91 = load i8*, i8** %s, align 8
  %92 = load i8, i8* %91, align 1
  %conv165 = sext i8 %92 to i32
  %cmp166 = icmp ne i32 %conv165, 32
  br i1 %cmp166, label %land.lhs.true.168, label %if.end.312

land.lhs.true.168:                                ; preds = %for.body.164
  %93 = load i8*, i8** %s, align 8
  %94 = load i8, i8* %93, align 1
  %conv169 = sext i8 %94 to i32
  %cmp170 = icmp sge i32 %conv169, 65
  br i1 %cmp170, label %land.lhs.true.172, label %lor.lhs.false.176

land.lhs.true.172:                                ; preds = %land.lhs.true.168
  %95 = load i8*, i8** %s, align 8
  %96 = load i8, i8* %95, align 1
  %conv173 = sext i8 %96 to i32
  %cmp174 = icmp sle i32 %conv173, 90
  br i1 %cmp174, label %if.end.312, label %lor.lhs.false.176

lor.lhs.false.176:                                ; preds = %land.lhs.true.172, %land.lhs.true.168
  %97 = load i8*, i8** %s, align 8
  %98 = load i8, i8* %97, align 1
  %conv177 = sext i8 %98 to i32
  %cmp178 = icmp sge i32 %conv177, 97
  br i1 %cmp178, label %land.lhs.true.180, label %land.lhs.true.184

land.lhs.true.180:                                ; preds = %lor.lhs.false.176
  %99 = load i8*, i8** %s, align 8
  %100 = load i8, i8* %99, align 1
  %conv181 = sext i8 %100 to i32
  %cmp182 = icmp sle i32 %conv181, 122
  br i1 %cmp182, label %if.end.312, label %land.lhs.true.184

land.lhs.true.184:                                ; preds = %land.lhs.true.180, %lor.lhs.false.176
  %101 = load i8*, i8** %s, align 8
  %102 = load i8, i8* %101, align 1
  %conv185 = sext i8 %102 to i32
  %call186 = call i8* @strchr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0), i32 %conv185)
  %tobool187 = icmp ne i8* %call186, null
  br i1 %tobool187, label %if.then.188, label %if.end.312

if.then.188:                                      ; preds = %land.lhs.true.184
  %103 = load i8*, i8** %s, align 8
  %104 = load i8, i8* %103, align 1
  %conv189 = sext i8 %104 to i32
  %cmp190 = icmp eq i32 %conv189, 10
  br i1 %cmp190, label %land.lhs.true.192, label %if.end.196

land.lhs.true.192:                                ; preds = %if.then.188
  %105 = load i8*, i8** %s, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %105, i64 1
  %106 = load i8, i8* %arrayidx193, align 1
  %tobool194 = icmp ne i8 %106, 0
  br i1 %tobool194, label %if.end.196, label %if.then.195

if.then.195:                                      ; preds = %land.lhs.true.192
  %107 = load i8*, i8** %s, align 8
  store i8 0, i8* %107, align 1
  br label %for.end.315

if.end.196:                                       ; preds = %land.lhs.true.192, %if.then.188
  %108 = load i8*, i8** %s, align 8
  %109 = load i8, i8* %108, align 1
  %conv197 = sext i8 %109 to i32
  %cmp198 = icmp eq i32 %conv197, 62
  br i1 %cmp198, label %land.lhs.true.200, label %if.end.310

land.lhs.true.200:                                ; preds = %if.end.196
  %110 = load i8*, i8** %s, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %110, i64 1
  %111 = load i8, i8* %arrayidx201, align 1
  %conv202 = sext i8 %111 to i32
  %cmp203 = icmp eq i32 %conv202, 38
  br i1 %cmp203, label %land.lhs.true.205, label %if.end.310

land.lhs.true.205:                                ; preds = %land.lhs.true.200
  %112 = load i8*, i8** %s, align 8
  %arrayidx206 = getelementptr inbounds i8, i8* %112, i64 2
  %113 = load i8, i8* %arrayidx206, align 1
  %conv207 = sext i8 %113 to i32
  %cmp208 = icmp eq i32 %conv207, 49
  br i1 %cmp208, label %land.lhs.true.210, label %if.end.310

land.lhs.true.210:                                ; preds = %land.lhs.true.205
  %114 = load i8*, i8** %s, align 8
  %115 = load i8*, i8** %cmd.addr, align 8
  %add.ptr211 = getelementptr inbounds i8, i8* %115, i64 1
  %cmp212 = icmp ugt i8* %114, %add.ptr211
  br i1 %cmp212, label %land.lhs.true.214, label %if.end.310

land.lhs.true.214:                                ; preds = %land.lhs.true.210
  %116 = load i8*, i8** %s, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %116, i64 -1
  %117 = load i8, i8* %arrayidx215, align 1
  %conv216 = sext i8 %117 to i32
  %cmp217 = icmp eq i32 %conv216, 50
  br i1 %cmp217, label %land.lhs.true.219, label %if.end.310

land.lhs.true.219:                                ; preds = %land.lhs.true.214
  %118 = load i8*, i8** %s, align 8
  %arrayidx220 = getelementptr inbounds i8, i8* %118, i64 -2
  %119 = load i8, i8* %arrayidx220, align 1
  %conv221 = sext i8 %119 to i32
  %cmp222 = icmp eq i32 %conv221, 32
  br i1 %cmp222, label %land.lhs.true.244, label %lor.lhs.false.224

lor.lhs.false.224:                                ; preds = %land.lhs.true.219
  %120 = load i8*, i8** %s, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %120, i64 -2
  %121 = load i8, i8* %arrayidx225, align 1
  %conv226 = sext i8 %121 to i32
  %cmp227 = icmp eq i32 %conv226, 9
  br i1 %cmp227, label %land.lhs.true.244, label %lor.lhs.false.229

lor.lhs.false.229:                                ; preds = %lor.lhs.false.224
  %122 = load i8*, i8** %s, align 8
  %arrayidx230 = getelementptr inbounds i8, i8* %122, i64 -2
  %123 = load i8, i8* %arrayidx230, align 1
  %conv231 = sext i8 %123 to i32
  %cmp232 = icmp eq i32 %conv231, 10
  br i1 %cmp232, label %land.lhs.true.244, label %lor.lhs.false.234

lor.lhs.false.234:                                ; preds = %lor.lhs.false.229
  %124 = load i8*, i8** %s, align 8
  %arrayidx235 = getelementptr inbounds i8, i8* %124, i64 -2
  %125 = load i8, i8* %arrayidx235, align 1
  %conv236 = sext i8 %125 to i32
  %cmp237 = icmp eq i32 %conv236, 13
  br i1 %cmp237, label %land.lhs.true.244, label %lor.lhs.false.239

lor.lhs.false.239:                                ; preds = %lor.lhs.false.234
  %126 = load i8*, i8** %s, align 8
  %arrayidx240 = getelementptr inbounds i8, i8* %126, i64 -2
  %127 = load i8, i8* %arrayidx240, align 1
  %conv241 = sext i8 %127 to i32
  %cmp242 = icmp eq i32 %conv241, 12
  br i1 %cmp242, label %land.lhs.true.244, label %if.end.310

land.lhs.true.244:                                ; preds = %lor.lhs.false.239, %lor.lhs.false.234, %lor.lhs.false.229, %lor.lhs.false.224, %land.lhs.true.219
  %128 = load i8*, i8** %s, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %128, i64 3
  %129 = load i8, i8* %arrayidx245, align 1
  %tobool246 = icmp ne i8 %129, 0
  br i1 %tobool246, label %lor.lhs.false.247, label %if.then.272

lor.lhs.false.247:                                ; preds = %land.lhs.true.244
  %130 = load i8*, i8** %s, align 8
  %arrayidx248 = getelementptr inbounds i8, i8* %130, i64 3
  %131 = load i8, i8* %arrayidx248, align 1
  %conv249 = sext i8 %131 to i32
  %cmp250 = icmp eq i32 %conv249, 32
  br i1 %cmp250, label %if.then.272, label %lor.lhs.false.252

lor.lhs.false.252:                                ; preds = %lor.lhs.false.247
  %132 = load i8*, i8** %s, align 8
  %arrayidx253 = getelementptr inbounds i8, i8* %132, i64 3
  %133 = load i8, i8* %arrayidx253, align 1
  %conv254 = sext i8 %133 to i32
  %cmp255 = icmp eq i32 %conv254, 9
  br i1 %cmp255, label %if.then.272, label %lor.lhs.false.257

lor.lhs.false.257:                                ; preds = %lor.lhs.false.252
  %134 = load i8*, i8** %s, align 8
  %arrayidx258 = getelementptr inbounds i8, i8* %134, i64 3
  %135 = load i8, i8* %arrayidx258, align 1
  %conv259 = sext i8 %135 to i32
  %cmp260 = icmp eq i32 %conv259, 10
  br i1 %cmp260, label %if.then.272, label %lor.lhs.false.262

lor.lhs.false.262:                                ; preds = %lor.lhs.false.257
  %136 = load i8*, i8** %s, align 8
  %arrayidx263 = getelementptr inbounds i8, i8* %136, i64 3
  %137 = load i8, i8* %arrayidx263, align 1
  %conv264 = sext i8 %137 to i32
  %cmp265 = icmp eq i32 %conv264, 13
  br i1 %cmp265, label %if.then.272, label %lor.lhs.false.267

lor.lhs.false.267:                                ; preds = %lor.lhs.false.262
  %138 = load i8*, i8** %s, align 8
  %arrayidx268 = getelementptr inbounds i8, i8* %138, i64 3
  %139 = load i8, i8* %arrayidx268, align 1
  %conv269 = sext i8 %139 to i32
  %cmp270 = icmp eq i32 %conv269, 12
  br i1 %cmp270, label %if.then.272, label %if.end.310

if.then.272:                                      ; preds = %lor.lhs.false.267, %lor.lhs.false.262, %lor.lhs.false.257, %lor.lhs.false.252, %lor.lhs.false.247, %land.lhs.true.244
  %140 = load i8*, i8** %s, align 8
  %add.ptr273 = getelementptr inbounds i8, i8* %140, i64 3
  store i8* %add.ptr273, i8** %t, align 8
  br label %while.cond.274

while.cond.274:                                   ; preds = %while.body.299, %if.then.272
  %141 = load i8*, i8** %t, align 8
  %142 = load i8, i8* %141, align 1
  %conv275 = sext i8 %142 to i32
  %tobool276 = icmp ne i32 %conv275, 0
  br i1 %tobool276, label %land.rhs.277, label %land.end.298

land.rhs.277:                                     ; preds = %while.cond.274
  %143 = load i8*, i8** %t, align 8
  %144 = load i8, i8* %143, align 1
  %conv278 = sext i8 %144 to i32
  %cmp279 = icmp eq i32 %conv278, 32
  br i1 %cmp279, label %lor.end.297, label %lor.lhs.false.281

lor.lhs.false.281:                                ; preds = %land.rhs.277
  %145 = load i8*, i8** %t, align 8
  %146 = load i8, i8* %145, align 1
  %conv282 = sext i8 %146 to i32
  %cmp283 = icmp eq i32 %conv282, 9
  br i1 %cmp283, label %lor.end.297, label %lor.lhs.false.285

lor.lhs.false.285:                                ; preds = %lor.lhs.false.281
  %147 = load i8*, i8** %t, align 8
  %148 = load i8, i8* %147, align 1
  %conv286 = sext i8 %148 to i32
  %cmp287 = icmp eq i32 %conv286, 10
  br i1 %cmp287, label %lor.end.297, label %lor.lhs.false.289

lor.lhs.false.289:                                ; preds = %lor.lhs.false.285
  %149 = load i8*, i8** %t, align 8
  %150 = load i8, i8* %149, align 1
  %conv290 = sext i8 %150 to i32
  %cmp291 = icmp eq i32 %conv290, 13
  br i1 %cmp291, label %lor.end.297, label %lor.rhs.293

lor.rhs.293:                                      ; preds = %lor.lhs.false.289
  %151 = load i8*, i8** %t, align 8
  %152 = load i8, i8* %151, align 1
  %conv294 = sext i8 %152 to i32
  %cmp295 = icmp eq i32 %conv294, 12
  br label %lor.end.297

lor.end.297:                                      ; preds = %lor.rhs.293, %lor.lhs.false.289, %lor.lhs.false.285, %lor.lhs.false.281, %land.rhs.277
  %153 = phi i1 [ true, %lor.lhs.false.289 ], [ true, %lor.lhs.false.285 ], [ true, %lor.lhs.false.281 ], [ true, %land.rhs.277 ], [ %cmp295, %lor.rhs.293 ]
  br label %land.end.298

land.end.298:                                     ; preds = %lor.end.297, %while.cond.274
  %154 = phi i1 [ false, %while.cond.274 ], [ %153, %lor.end.297 ]
  br i1 %154, label %while.body.299, label %while.end.301

while.body.299:                                   ; preds = %land.end.298
  %155 = load i8*, i8** %t, align 8
  %incdec.ptr300 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %incdec.ptr300, i8** %t, align 8
  br label %while.cond.274

while.end.301:                                    ; preds = %land.end.298
  %156 = load i8*, i8** %t, align 8
  %157 = load i8, i8* %156, align 1
  %tobool302 = icmp ne i8 %157, 0
  br i1 %tobool302, label %if.end.309, label %land.lhs.true.303

land.lhs.true.303:                                ; preds = %while.end.301
  %call304 = call i32 @dup2(i32 1, i32 2)
  %cmp305 = icmp ne i32 %call304, -1
  br i1 %cmp305, label %if.then.307, label %if.end.309

if.then.307:                                      ; preds = %land.lhs.true.303
  %158 = load i8*, i8** %s, align 8
  %arrayidx308 = getelementptr inbounds i8, i8* %158, i64 -2
  store i8 0, i8* %arrayidx308, align 1
  br label %for.end.315

if.end.309:                                       ; preds = %land.lhs.true.303, %while.end.301
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %lor.lhs.false.267, %lor.lhs.false.239, %land.lhs.true.214, %land.lhs.true.210, %land.lhs.true.205, %land.lhs.true.200, %if.end.196
  br label %doshell

doshell:                                          ; preds = %if.then.398, %if.end.310, %if.then.160, %if.then.122, %if.then.93
  %159 = load i8*, i8** @PL_sh_path, align 8
  %160 = load i8*, i8** %cmd.addr, align 8
  %call311 = call i32 (i8*, i8*, ...) @execl(i8* %159, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i8* %160, i8* null)
  store i8 0, i8* %retval
  br label %return

if.end.312:                                       ; preds = %land.lhs.true.184, %land.lhs.true.180, %land.lhs.true.172, %for.body.164
  br label %for.inc.313

for.inc.313:                                      ; preds = %if.end.312
  %161 = load i8*, i8** %s, align 8
  %incdec.ptr314 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %incdec.ptr314, i8** %s, align 8
  br label %for.cond.162

for.end.315:                                      ; preds = %if.then.307, %if.then.195, %for.cond.162
  %162 = load i8*, i8** %s, align 8
  %163 = load i8*, i8** %cmd.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %162 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %163 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %div = sdiv i64 %sub.ptr.sub, 2
  %add = add nsw i64 %div, 2
  %mul = mul i64 %add, 8
  %call316 = call i8* @Perl_safesysmalloc(i64 %mul)
  %164 = bitcast i8* %call316 to i8**
  store i8** %164, i8*** @PL_Argv, align 8
  %165 = load i8*, i8** %cmd.addr, align 8
  %166 = load i8*, i8** %s, align 8
  %167 = load i8*, i8** %cmd.addr, align 8
  %sub.ptr.lhs.cast317 = ptrtoint i8* %166 to i64
  %sub.ptr.rhs.cast318 = ptrtoint i8* %167 to i64
  %sub.ptr.sub319 = sub i64 %sub.ptr.lhs.cast317, %sub.ptr.rhs.cast318
  %conv320 = trunc i64 %sub.ptr.sub319 to i32
  %call321 = call i8* @Perl_savepvn(i8* %165, i32 %conv320)
  store i8* %call321, i8** @PL_Cmd, align 8
  %168 = load i8**, i8*** @PL_Argv, align 8
  store i8** %168, i8*** %a, align 8
  %169 = load i8*, i8** @PL_Cmd, align 8
  store i8* %169, i8** %s, align 8
  br label %for.cond.322

for.cond.322:                                     ; preds = %if.end.388, %for.end.315
  %170 = load i8*, i8** %s, align 8
  %171 = load i8, i8* %170, align 1
  %tobool323 = icmp ne i8 %171, 0
  br i1 %tobool323, label %for.body.324, label %for.end.389

for.body.324:                                     ; preds = %for.cond.322
  br label %while.cond.325

while.cond.325:                                   ; preds = %while.body.350, %for.body.324
  %172 = load i8*, i8** %s, align 8
  %173 = load i8, i8* %172, align 1
  %conv326 = sext i8 %173 to i32
  %tobool327 = icmp ne i32 %conv326, 0
  br i1 %tobool327, label %land.rhs.328, label %land.end.349

land.rhs.328:                                     ; preds = %while.cond.325
  %174 = load i8*, i8** %s, align 8
  %175 = load i8, i8* %174, align 1
  %conv329 = sext i8 %175 to i32
  %cmp330 = icmp eq i32 %conv329, 32
  br i1 %cmp330, label %lor.end.348, label %lor.lhs.false.332

lor.lhs.false.332:                                ; preds = %land.rhs.328
  %176 = load i8*, i8** %s, align 8
  %177 = load i8, i8* %176, align 1
  %conv333 = sext i8 %177 to i32
  %cmp334 = icmp eq i32 %conv333, 9
  br i1 %cmp334, label %lor.end.348, label %lor.lhs.false.336

lor.lhs.false.336:                                ; preds = %lor.lhs.false.332
  %178 = load i8*, i8** %s, align 8
  %179 = load i8, i8* %178, align 1
  %conv337 = sext i8 %179 to i32
  %cmp338 = icmp eq i32 %conv337, 10
  br i1 %cmp338, label %lor.end.348, label %lor.lhs.false.340

lor.lhs.false.340:                                ; preds = %lor.lhs.false.336
  %180 = load i8*, i8** %s, align 8
  %181 = load i8, i8* %180, align 1
  %conv341 = sext i8 %181 to i32
  %cmp342 = icmp eq i32 %conv341, 13
  br i1 %cmp342, label %lor.end.348, label %lor.rhs.344

lor.rhs.344:                                      ; preds = %lor.lhs.false.340
  %182 = load i8*, i8** %s, align 8
  %183 = load i8, i8* %182, align 1
  %conv345 = sext i8 %183 to i32
  %cmp346 = icmp eq i32 %conv345, 12
  br label %lor.end.348

lor.end.348:                                      ; preds = %lor.rhs.344, %lor.lhs.false.340, %lor.lhs.false.336, %lor.lhs.false.332, %land.rhs.328
  %184 = phi i1 [ true, %lor.lhs.false.340 ], [ true, %lor.lhs.false.336 ], [ true, %lor.lhs.false.332 ], [ true, %land.rhs.328 ], [ %cmp346, %lor.rhs.344 ]
  br label %land.end.349

land.end.349:                                     ; preds = %lor.end.348, %while.cond.325
  %185 = phi i1 [ false, %while.cond.325 ], [ %184, %lor.end.348 ]
  br i1 %185, label %while.body.350, label %while.end.352

while.body.350:                                   ; preds = %land.end.349
  %186 = load i8*, i8** %s, align 8
  %incdec.ptr351 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %incdec.ptr351, i8** %s, align 8
  br label %while.cond.325

while.end.352:                                    ; preds = %land.end.349
  %187 = load i8*, i8** %s, align 8
  %188 = load i8, i8* %187, align 1
  %tobool353 = icmp ne i8 %188, 0
  br i1 %tobool353, label %if.then.354, label %if.end.356

if.then.354:                                      ; preds = %while.end.352
  %189 = load i8*, i8** %s, align 8
  %190 = load i8**, i8*** %a, align 8
  %incdec.ptr355 = getelementptr inbounds i8*, i8** %190, i32 1
  store i8** %incdec.ptr355, i8*** %a, align 8
  store i8* %189, i8** %190, align 8
  br label %if.end.356

if.end.356:                                       ; preds = %if.then.354, %while.end.352
  br label %while.cond.357

while.cond.357:                                   ; preds = %while.body.382, %if.end.356
  %191 = load i8*, i8** %s, align 8
  %192 = load i8, i8* %191, align 1
  %conv358 = sext i8 %192 to i32
  %tobool359 = icmp ne i32 %conv358, 0
  br i1 %tobool359, label %land.rhs.360, label %land.end.381

land.rhs.360:                                     ; preds = %while.cond.357
  %193 = load i8*, i8** %s, align 8
  %194 = load i8, i8* %193, align 1
  %conv361 = sext i8 %194 to i32
  %cmp362 = icmp eq i32 %conv361, 32
  br i1 %cmp362, label %lor.end.380, label %lor.lhs.false.364

lor.lhs.false.364:                                ; preds = %land.rhs.360
  %195 = load i8*, i8** %s, align 8
  %196 = load i8, i8* %195, align 1
  %conv365 = sext i8 %196 to i32
  %cmp366 = icmp eq i32 %conv365, 9
  br i1 %cmp366, label %lor.end.380, label %lor.lhs.false.368

lor.lhs.false.368:                                ; preds = %lor.lhs.false.364
  %197 = load i8*, i8** %s, align 8
  %198 = load i8, i8* %197, align 1
  %conv369 = sext i8 %198 to i32
  %cmp370 = icmp eq i32 %conv369, 10
  br i1 %cmp370, label %lor.end.380, label %lor.lhs.false.372

lor.lhs.false.372:                                ; preds = %lor.lhs.false.368
  %199 = load i8*, i8** %s, align 8
  %200 = load i8, i8* %199, align 1
  %conv373 = sext i8 %200 to i32
  %cmp374 = icmp eq i32 %conv373, 13
  br i1 %cmp374, label %lor.end.380, label %lor.rhs.376

lor.rhs.376:                                      ; preds = %lor.lhs.false.372
  %201 = load i8*, i8** %s, align 8
  %202 = load i8, i8* %201, align 1
  %conv377 = sext i8 %202 to i32
  %cmp378 = icmp eq i32 %conv377, 12
  br label %lor.end.380

lor.end.380:                                      ; preds = %lor.rhs.376, %lor.lhs.false.372, %lor.lhs.false.368, %lor.lhs.false.364, %land.rhs.360
  %203 = phi i1 [ true, %lor.lhs.false.372 ], [ true, %lor.lhs.false.368 ], [ true, %lor.lhs.false.364 ], [ true, %land.rhs.360 ], [ %cmp378, %lor.rhs.376 ]
  %lnot = xor i1 %203, true
  br label %land.end.381

land.end.381:                                     ; preds = %lor.end.380, %while.cond.357
  %204 = phi i1 [ false, %while.cond.357 ], [ %lnot, %lor.end.380 ]
  br i1 %204, label %while.body.382, label %while.end.384

while.body.382:                                   ; preds = %land.end.381
  %205 = load i8*, i8** %s, align 8
  %incdec.ptr383 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %incdec.ptr383, i8** %s, align 8
  br label %while.cond.357

while.end.384:                                    ; preds = %land.end.381
  %206 = load i8*, i8** %s, align 8
  %207 = load i8, i8* %206, align 1
  %tobool385 = icmp ne i8 %207, 0
  br i1 %tobool385, label %if.then.386, label %if.end.388

if.then.386:                                      ; preds = %while.end.384
  %208 = load i8*, i8** %s, align 8
  %incdec.ptr387 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %incdec.ptr387, i8** %s, align 8
  store i8 0, i8* %208, align 1
  br label %if.end.388

if.end.388:                                       ; preds = %if.then.386, %while.end.384
  br label %for.cond.322

for.end.389:                                      ; preds = %for.cond.322
  %209 = load i8**, i8*** %a, align 8
  store i8* null, i8** %209, align 8
  %210 = load i8**, i8*** @PL_Argv, align 8
  %arrayidx390 = getelementptr inbounds i8*, i8** %210, i64 0
  %211 = load i8*, i8** %arrayidx390, align 8
  %tobool391 = icmp ne i8* %211, null
  br i1 %tobool391, label %if.then.392, label %if.end.434

if.then.392:                                      ; preds = %for.end.389
  %212 = load i8**, i8*** @PL_Argv, align 8
  %arrayidx393 = getelementptr inbounds i8*, i8** %212, i64 0
  %213 = load i8*, i8** %arrayidx393, align 8
  %214 = load i8**, i8*** @PL_Argv, align 8
  %call394 = call i32 @execvp(i8* %213, i8** %214)
  %call395 = call i32* @__errno_location()
  %215 = load i32, i32* %call395, align 4
  %cmp396 = icmp eq i32 %215, 8
  br i1 %cmp396, label %if.then.398, label %if.end.399

if.then.398:                                      ; preds = %if.then.392
  call void @Perl_do_execfree()
  br label %doshell

if.end.399:                                       ; preds = %if.then.392
  %call400 = call i32* @__errno_location()
  %216 = load i32, i32* %call400, align 4
  store i32 %216, i32* %e, align 4
  %217 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %217, i32 0, i32 14
  %218 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp401 = icmp ne %struct.sv* %218, null
  br i1 %cmp401, label %land.lhs.true.403, label %lor.lhs.false.416

land.lhs.true.403:                                ; preds = %if.end.399
  %219 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings404 = getelementptr inbounds %struct.cop, %struct.cop* %219, i32 0, i32 14
  %220 = load %struct.sv*, %struct.sv** %cop_warnings404, align 8
  %cmp405 = icmp ne %struct.sv* %220, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp405, label %land.lhs.true.407, label %lor.lhs.false.416

land.lhs.true.407:                                ; preds = %land.lhs.true.403
  %221 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings408 = getelementptr inbounds %struct.cop, %struct.cop* %221, i32 0, i32 14
  %222 = load %struct.sv*, %struct.sv** %cop_warnings408, align 8
  %cmp409 = icmp eq %struct.sv* %222, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp409, label %if.then.424, label %lor.lhs.false.411

lor.lhs.false.411:                                ; preds = %land.lhs.true.407
  %223 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings412 = getelementptr inbounds %struct.cop, %struct.cop* %223, i32 0, i32 14
  %224 = load %struct.sv*, %struct.sv** %cop_warnings412, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %224, i32 0, i32 0
  %225 = load i8*, i8** %sv_any, align 8
  %226 = bitcast i8* %225 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %226, i32 0, i32 0
  %227 = load i8*, i8** %xpv_pv, align 8
  %arrayidx413 = getelementptr inbounds i8, i8* %227, i64 1
  %228 = load i8, i8* %arrayidx413, align 1
  %conv414 = sext i8 %228 to i32
  %and = and i32 %conv414, 64
  %tobool415 = icmp ne i32 %and, 0
  br i1 %tobool415, label %if.then.424, label %lor.lhs.false.416

lor.lhs.false.416:                                ; preds = %lor.lhs.false.411, %land.lhs.true.403, %if.end.399
  %229 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings417 = getelementptr inbounds %struct.cop, %struct.cop* %229, i32 0, i32 14
  %230 = load %struct.sv*, %struct.sv** %cop_warnings417, align 8
  %cmp418 = icmp eq %struct.sv* %230, null
  br i1 %cmp418, label %land.lhs.true.420, label %if.end.428

land.lhs.true.420:                                ; preds = %lor.lhs.false.416
  %231 = load i8, i8* @PL_dowarn, align 1
  %conv421 = zext i8 %231 to i32
  %and422 = and i32 %conv421, 1
  %tobool423 = icmp ne i32 %and422, 0
  br i1 %tobool423, label %if.then.424, label %if.end.428

if.then.424:                                      ; preds = %land.lhs.true.420, %lor.lhs.false.411, %land.lhs.true.407
  %232 = load i8**, i8*** @PL_Argv, align 8
  %arrayidx425 = getelementptr inbounds i8*, i8** %232, i64 0
  %233 = load i8*, i8** %arrayidx425, align 8
  %call426 = call i32* @__errno_location()
  %234 = load i32, i32* %call426, align 4
  %call427 = call i8* @strerror(i32 %234)
  call void (i32, i8*, ...) @Perl_warner(i32 7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i8* %233, i8* %call427)
  br label %if.end.428

if.end.428:                                       ; preds = %if.then.424, %land.lhs.true.420, %lor.lhs.false.416
  %235 = load i32, i32* %do_report.addr, align 4
  %tobool429 = icmp ne i32 %235, 0
  br i1 %tobool429, label %if.then.430, label %if.end.433

if.then.430:                                      ; preds = %if.end.428
  %236 = load i32, i32* %fd.addr, align 4
  %237 = bitcast i32* %e to i8*
  %call431 = call i64 @write(i32 %236, i8* %237, i64 4)
  %238 = load i32, i32* %fd.addr, align 4
  %call432 = call i32 @close(i32 %238)
  br label %if.end.433

if.end.433:                                       ; preds = %if.then.430, %if.end.428
  br label %if.end.434

if.end.434:                                       ; preds = %if.end.433, %for.end.389
  call void @Perl_do_execfree()
  store i8 0, i8* %retval
  br label %return

return:                                           ; preds = %if.end.434, %doshell, %if.then.58
  %239 = load i8, i8* %retval
  ret i8 %239
}

declare i32 @strncmp(i8*, i8*, i64) #1

declare i8* @strcpy(i8*, i8*) #1

declare i32 @execl(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_apply(i32 %type, %struct.sv** %mark, %struct.sv** %sp) #0 {
entry:
  %type.addr = alloca i32, align 4
  %mark.addr = alloca %struct.sv**, align 8
  %sp.addr = alloca %struct.sv**, align 8
  %val = alloca i32, align 4
  %val2 = alloca i32, align 4
  %tot = alloca i32, align 4
  %what = alloca i8*, align 8
  %s = alloca i8*, align 8
  %oldmark = alloca %struct.sv**, align 8
  %n_a = alloca i64, align 8
  %name = alloca i8*, align 8
  store i32 %type, i32* %type.addr, align 4
  store %struct.sv** %mark, %struct.sv*** %mark.addr, align 8
  store %struct.sv** %sp, %struct.sv*** %sp.addr, align 8
  store i32 0, i32* %tot, align 4
  %0 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  store %struct.sv** %0, %struct.sv*** %oldmark, align 8
  %1 = load i8, i8* @PL_tainting, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %2 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %2, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %mark.addr, align 8
  %3 = load %struct.sv**, %struct.sv*** %sp.addr, align 8
  %cmp = icmp ule %struct.sv** %incdec.ptr, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %5 = load %struct.sv*, %struct.sv** %4, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 2
  %6 = load i32, i32* %sv_flags, align 4
  %and = and i32 %6, 57344
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %7 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %8 = load %struct.sv*, %struct.sv** %7, align 8
  %call = call signext i8 @Perl_sv_tainted(%struct.sv* %8)
  %conv = sext i8 %call to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %land.lhs.true
  store i8 1, i8* @PL_tainted, align 1
  br label %while.end

if.end:                                           ; preds = %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.3, %while.cond
  %9 = load %struct.sv**, %struct.sv*** %oldmark, align 8
  store %struct.sv** %9, %struct.sv*** %mark.addr, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %while.end, %entry
  %10 = load i32, i32* %type.addr, align 4
  switch i32 %10, label %sw.epilog [
    i32 267, label %sw.bb
    i32 266, label %sw.bb.55
  ]

sw.bb:                                            ; preds = %if.end.4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8** %what, align 8
  %11 = load i8, i8* @PL_tainted, align 1
  %tobool5 = icmp ne i8 %11, 0
  br i1 %tobool5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %sw.bb
  %12 = load i8, i8* @PL_tainting, align 1
  %tobool7 = icmp ne i8 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.6
  %13 = load i8*, i8** %what, align 8
  call void @Perl_taint_proper(i8* null, i8* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %sw.bb
  %14 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %incdec.ptr11 = getelementptr inbounds %struct.sv*, %struct.sv** %14, i32 1
  store %struct.sv** %incdec.ptr11, %struct.sv*** %mark.addr, align 8
  %15 = load %struct.sv**, %struct.sv*** %sp.addr, align 8
  %cmp12 = icmp ule %struct.sv** %incdec.ptr11, %15
  br i1 %cmp12, label %if.then.14, label %if.end.54

if.then.14:                                       ; preds = %if.end.10
  %16 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %17 = load %struct.sv*, %struct.sv** %16, align 8
  store %struct.sv* %17, %struct.sv** @PL_Sv, align 8
  %18 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags15 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 2
  %19 = load i32, i32* %sv_flags15, align 4
  %and16 = and i32 %19, 65536
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  %20 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 0
  %21 = load i8*, i8** %sv_any, align 8
  %22 = bitcast i8* %21 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %22, i32 0, i32 3
  %23 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  %24 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call18 = call i64 @Perl_sv_2iv(%struct.sv* %24)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %23, %cond.true ], [ %call18, %cond.false ]
  %conv19 = trunc i64 %cond to i32
  store i32 %conv19, i32* %val, align 4
  %25 = load i8, i8* @PL_tainted, align 1
  %tobool20 = icmp ne i8 %25, 0
  br i1 %tobool20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %cond.end
  %26 = load i8, i8* @PL_tainting, align 1
  %tobool22 = icmp ne i8 %26, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.21
  %27 = load i8*, i8** %what, align 8
  call void @Perl_taint_proper(i8* null, i8* %27)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.then.21
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %cond.end
  %28 = load %struct.sv**, %struct.sv*** %sp.addr, align 8
  %29 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %28 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv26 = trunc i64 %sub.ptr.div to i32
  store i32 %conv26, i32* %tot, align 4
  br label %while.cond.27

while.cond.27:                                    ; preds = %if.end.52, %if.end.25
  %30 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %incdec.ptr28 = getelementptr inbounds %struct.sv*, %struct.sv** %30, i32 1
  store %struct.sv** %incdec.ptr28, %struct.sv*** %mark.addr, align 8
  %31 = load %struct.sv**, %struct.sv*** %sp.addr, align 8
  %cmp29 = icmp ule %struct.sv** %incdec.ptr28, %31
  br i1 %cmp29, label %while.body.31, label %while.end.53

while.body.31:                                    ; preds = %while.cond.27
  %32 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %33 = load %struct.sv*, %struct.sv** %32, align 8
  store %struct.sv* %33, %struct.sv** @PL_Sv, align 8
  %34 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags32 = getelementptr inbounds %struct.sv, %struct.sv* %34, i32 0, i32 2
  %35 = load i32, i32* %sv_flags32, align 4
  %and33 = and i32 %35, 262144
  %cmp34 = icmp eq i32 %and33, 262144
  br i1 %cmp34, label %cond.true.36, label %cond.false.39

cond.true.36:                                     ; preds = %while.body.31
  %36 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any37 = getelementptr inbounds %struct.sv, %struct.sv* %36, i32 0, i32 0
  %37 = load i8*, i8** %sv_any37, align 8
  %38 = bitcast i8* %37 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %38, i32 0, i32 1
  %39 = load i64, i64* %xpv_cur, align 8
  store i64 %39, i64* %n_a, align 8
  %40 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any38 = getelementptr inbounds %struct.sv, %struct.sv* %40, i32 0, i32 0
  %41 = load i8*, i8** %sv_any38, align 8
  %42 = bitcast i8* %41 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %42, i32 0, i32 0
  %43 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.41

cond.false.39:                                    ; preds = %while.body.31
  %44 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call40 = call i8* @Perl_sv_2pv_flags(%struct.sv* %44, i64* %n_a, i32 2)
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.39, %cond.true.36
  %cond42 = phi i8* [ %43, %cond.true.36 ], [ %call40, %cond.false.39 ]
  store i8* %cond42, i8** %name, align 8
  %45 = load i8, i8* @PL_tainted, align 1
  %tobool43 = icmp ne i8 %45, 0
  br i1 %tobool43, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %cond.end.41
  %46 = load i8, i8* @PL_tainting, align 1
  %tobool45 = icmp ne i8 %46, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.44
  %47 = load i8*, i8** %what, align 8
  call void @Perl_taint_proper(i8* null, i8* %47)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.then.44
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %cond.end.41
  %48 = load i8*, i8** %name, align 8
  %49 = load i32, i32* %val, align 4
  %call49 = call i32 @chmod(i8* %48, i32 %49)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  %50 = load i32, i32* %tot, align 4
  %dec = add nsw i32 %50, -1
  store i32 %dec, i32* %tot, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.end.48
  br label %while.cond.27

while.end.53:                                     ; preds = %while.cond.27
  br label %if.end.54

if.end.54:                                        ; preds = %while.end.53, %if.end.10
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end.4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i8** %what, align 8
  %51 = load i8, i8* @PL_tainted, align 1
  %tobool56 = icmp ne i8 %51, 0
  br i1 %tobool56, label %if.then.57, label %if.end.61

if.then.57:                                       ; preds = %sw.bb.55
  %52 = load i8, i8* @PL_tainting, align 1
  %tobool58 = icmp ne i8 %52, 0
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.then.57
  %53 = load i8*, i8** %what, align 8
  call void @Perl_taint_proper(i8* null, i8* %53)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %sw.bb.55
  %54 = load %struct.sv**, %struct.sv*** %sp.addr, align 8
  %55 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %sub.ptr.lhs.cast62 = ptrtoint %struct.sv** %54 to i64
  %sub.ptr.rhs.cast63 = ptrtoint %struct.sv** %55 to i64
  %sub.ptr.sub64 = sub i64 %sub.ptr.lhs.cast62, %sub.ptr.rhs.cast63
  %sub.ptr.div65 = sdiv exact i64 %sub.ptr.sub64, 8
  %conv66 = trunc i64 %sub.ptr.div65 to i32
  store i32 %conv66, i32* %tot, align 4
  br label %while.cond.67

while.cond.67:                                    ; preds = %if.end.116, %if.end.61
  %56 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %incdec.ptr68 = getelementptr inbounds %struct.sv*, %struct.sv** %56, i32 1
  store %struct.sv** %incdec.ptr68, %struct.sv*** %mark.addr, align 8
  %57 = load %struct.sv**, %struct.sv*** %sp.addr, align 8
  %cmp69 = icmp ule %struct.sv** %incdec.ptr68, %57
  br i1 %cmp69, label %while.body.71, label %while.end.117

while.body.71:                                    ; preds = %while.cond.67
  %58 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %59 = load %struct.sv*, %struct.sv** %58, align 8
  store %struct.sv* %59, %struct.sv** @PL_Sv, align 8
  %60 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags72 = getelementptr inbounds %struct.sv, %struct.sv* %60, i32 0, i32 2
  %61 = load i32, i32* %sv_flags72, align 4
  %and73 = and i32 %61, 262144
  %cmp74 = icmp eq i32 %and73, 262144
  br i1 %cmp74, label %cond.true.76, label %cond.false.81

cond.true.76:                                     ; preds = %while.body.71
  %62 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any77 = getelementptr inbounds %struct.sv, %struct.sv* %62, i32 0, i32 0
  %63 = load i8*, i8** %sv_any77, align 8
  %64 = bitcast i8* %63 to %struct.xpv*
  %xpv_cur78 = getelementptr inbounds %struct.xpv, %struct.xpv* %64, i32 0, i32 1
  %65 = load i64, i64* %xpv_cur78, align 8
  store i64 %65, i64* %n_a, align 8
  %66 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any79 = getelementptr inbounds %struct.sv, %struct.sv* %66, i32 0, i32 0
  %67 = load i8*, i8** %sv_any79, align 8
  %68 = bitcast i8* %67 to %struct.xpv*
  %xpv_pv80 = getelementptr inbounds %struct.xpv, %struct.xpv* %68, i32 0, i32 0
  %69 = load i8*, i8** %xpv_pv80, align 8
  br label %cond.end.83

cond.false.81:                                    ; preds = %while.body.71
  %70 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call82 = call i8* @Perl_sv_2pv_flags(%struct.sv* %70, i64* %n_a, i32 2)
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.81, %cond.true.76
  %cond84 = phi i8* [ %69, %cond.true.76 ], [ %call82, %cond.false.81 ]
  store i8* %cond84, i8** %s, align 8
  %71 = load i8, i8* @PL_tainted, align 1
  %tobool85 = icmp ne i8 %71, 0
  br i1 %tobool85, label %if.then.86, label %if.end.90

if.then.86:                                       ; preds = %cond.end.83
  %72 = load i8, i8* @PL_tainting, align 1
  %tobool87 = icmp ne i8 %72, 0
  br i1 %tobool87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.then.86
  %73 = load i8*, i8** %what, align 8
  call void @Perl_taint_proper(i8* null, i8* %73)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %if.then.86
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %cond.end.83
  %74 = load i32, i32* @PL_euid, align 4
  %tobool91 = icmp ne i32 %74, 0
  br i1 %tobool91, label %if.then.94, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.90
  %75 = load i8, i8* @PL_unsafe, align 1
  %conv92 = sext i8 %75 to i32
  %tobool93 = icmp ne i32 %conv92, 0
  br i1 %tobool93, label %if.then.94, label %if.else

if.then.94:                                       ; preds = %lor.lhs.false, %if.end.90
  %76 = load i8*, i8** %s, align 8
  %call95 = call i32 @unlink(i8* %76)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %if.then.94
  %77 = load i32, i32* %tot, align 4
  %dec98 = add nsw i32 %77, -1
  store i32 %dec98, i32* %tot, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.97, %if.then.94
  br label %if.end.116

if.else:                                          ; preds = %lor.lhs.false
  %78 = load i8*, i8** %s, align 8
  %call100 = call i32 @stat(i8* %78, %struct.stat* @PL_statbuf)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.then.107, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %if.else
  %79 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statbuf, i32 0, i32 3), align 4
  %and104 = and i32 %79, 61440
  %cmp105 = icmp eq i32 %and104, 16384
  br i1 %cmp105, label %if.then.107, label %if.else.109

if.then.107:                                      ; preds = %lor.lhs.false.103, %if.else
  %80 = load i32, i32* %tot, align 4
  %dec108 = add nsw i32 %80, -1
  store i32 %dec108, i32* %tot, align 4
  br label %if.end.115

if.else.109:                                      ; preds = %lor.lhs.false.103
  %81 = load i8*, i8** %s, align 8
  %call110 = call i32 @unlink(i8* %81)
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.else.109
  %82 = load i32, i32* %tot, align 4
  %dec113 = add nsw i32 %82, -1
  store i32 %dec113, i32* %tot, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.else.109
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.then.107
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.end.99
  br label %while.cond.67

while.end.117:                                    ; preds = %while.cond.67
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.4, %while.end.117, %if.end.54
  %83 = load i32, i32* %tot, align 4
  ret i32 %83
}

declare signext i8 @Perl_sv_tainted(%struct.sv*) #1

declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define signext i8 @Perl_cando(i32 %mode, i32 %effective, %struct.stat* %statbufp) #0 {
entry:
  %retval = alloca i8, align 1
  %mode.addr = alloca i32, align 4
  %effective.addr = alloca i32, align 4
  %statbufp.addr = alloca %struct.stat*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %effective, i32* %effective.addr, align 4
  store %struct.stat* %statbufp, %struct.stat** %statbufp.addr, align 8
  %0 = load i32, i32* %effective.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* @PL_euid, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* @PL_uid, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %2, %cond.false ]
  %cmp = icmp eq i32 %cond, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %cond.end
  %3 = load i32, i32* %mode.addr, align 4
  %cmp1 = icmp eq i32 %3, 64
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.stat*, %struct.stat** %statbufp.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %5 = load i32, i32* %st_mode, align 4
  %and = and i32 %5, 73
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.2
  %6 = load %struct.stat*, %struct.stat** %statbufp.addr, align 8
  %st_mode4 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3
  %7 = load i32, i32* %st_mode4, align 4
  %and5 = and i32 %7, 61440
  %cmp6 = icmp eq i32 %and5, 16384
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %lor.lhs.false, %if.then.2
  store i8 1, i8* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.8

if.else:                                          ; preds = %if.then
  store i8 1, i8* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  store i8 0, i8* %retval
  br label %return

if.end.9:                                         ; preds = %cond.end
  %8 = load %struct.stat*, %struct.stat** %statbufp.addr, align 8
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 4
  %9 = load i32, i32* %st_uid, align 4
  %10 = load i32, i32* %effective.addr, align 4
  %tobool10 = icmp ne i32 %10, 0
  br i1 %tobool10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %if.end.9
  %11 = load i32, i32* @PL_euid, align 4
  br label %cond.end.13

cond.false.12:                                    ; preds = %if.end.9
  %12 = load i32, i32* @PL_uid, align 4
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.11
  %cond14 = phi i32 [ %11, %cond.true.11 ], [ %12, %cond.false.12 ]
  %cmp15 = icmp eq i32 %9, %cond14
  br i1 %cmp15, label %if.then.16, label %if.else.22

if.then.16:                                       ; preds = %cond.end.13
  %13 = load %struct.stat*, %struct.stat** %statbufp.addr, align 8
  %st_mode17 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 3
  %14 = load i32, i32* %st_mode17, align 4
  %15 = load i32, i32* %mode.addr, align 4
  %and18 = and i32 %14, %15
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.16
  store i8 1, i8* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.16
  br label %if.end.38

if.else.22:                                       ; preds = %cond.end.13
  %16 = load %struct.stat*, %struct.stat** %statbufp.addr, align 8
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 5
  %17 = load i32, i32* %st_gid, align 4
  %18 = load i32, i32* %effective.addr, align 4
  %call = call signext i8 @Perl_ingroup(i32 %17, i32 %18)
  %tobool23 = icmp ne i8 %call, 0
  br i1 %tobool23, label %if.then.24, label %if.else.30

if.then.24:                                       ; preds = %if.else.22
  %19 = load %struct.stat*, %struct.stat** %statbufp.addr, align 8
  %st_mode25 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 3
  %20 = load i32, i32* %st_mode25, align 4
  %21 = load i32, i32* %mode.addr, align 4
  %shr = lshr i32 %21, 3
  %and26 = and i32 %20, %shr
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.24
  store i8 1, i8* %retval
  br label %return

if.end.29:                                        ; preds = %if.then.24
  br label %if.end.37

if.else.30:                                       ; preds = %if.else.22
  %22 = load %struct.stat*, %struct.stat** %statbufp.addr, align 8
  %st_mode31 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 3
  %23 = load i32, i32* %st_mode31, align 4
  %24 = load i32, i32* %mode.addr, align 4
  %shr32 = lshr i32 %24, 6
  %and33 = and i32 %23, %shr32
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.else.30
  store i8 1, i8* %retval
  br label %return

if.end.36:                                        ; preds = %if.else.30
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.29
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.21
  store i8 0, i8* %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.then.35, %if.then.28, %if.then.20, %if.end.8, %if.else, %if.then.7
  %25 = load i8, i8* %retval
  ret i8 %25
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_ingroup(i32 %testgid, i32 %effective) #0 {
entry:
  %retval = alloca i8, align 1
  %testgid.addr = alloca i32, align 4
  %effective.addr = alloca i32, align 4
  store i32 %testgid, i32* %testgid.addr, align 4
  store i32 %effective, i32* %effective.addr, align 4
  %0 = load i32, i32* %testgid.addr, align 4
  %1 = load i32, i32* %effective.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* @PL_egid, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* @PL_gid, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  %cmp = icmp eq i32 %0, %cond
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i8 1, i8* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  store i8 0, i8* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8, i8* %retval
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define %struct._PerlIO** @Perl_start_glob(%struct.sv* %tmpglob, %struct.io* %io) #0 {
entry:
  %tmpglob.addr = alloca %struct.sv*, align 8
  %io.addr = alloca %struct.io*, align 8
  %tmpcmd = alloca %struct.sv*, align 8
  %fp = alloca %struct._PerlIO**, align 8
  store %struct.sv* %tmpglob, %struct.sv** %tmpglob.addr, align 8
  store %struct.io* %io, %struct.io** %io.addr, align 8
  %call = call %struct.sv* @Perl_newSV(i64 0)
  store %struct.sv* %call, %struct.sv** %tmpcmd, align 8
  call void @Perl_push_scope()
  %0 = load %struct.sv*, %struct.sv** %tmpcmd, align 8
  call void @Perl_save_freesv(%struct.sv* %0)
  %1 = load %struct.sv*, %struct.sv** %tmpcmd, align 8
  %2 = load i8*, i8** @PL_cshname, align 8
  %3 = load i32, i32* @PL_cshlen, align 4
  %conv = sext i32 %3 to i64
  call void @Perl_sv_setpvn(%struct.sv* %1, i8* %2, i64 %conv)
  %4 = load %struct.sv*, %struct.sv** %tmpcmd, align 8
  call void @Perl_sv_catpv(%struct.sv* %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0))
  %5 = load %struct.sv*, %struct.sv** %tmpcmd, align 8
  %6 = load %struct.sv*, %struct.sv** %tmpglob.addr, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %5, %struct.sv* %6, i32 2)
  %7 = load %struct.sv*, %struct.sv** %tmpcmd, align 8
  call void @Perl_sv_catpv(%struct.sv* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0))
  %8 = load %struct.gv*, %struct.gv** @PL_last_in_gv, align 8
  %9 = load %struct.sv*, %struct.sv** %tmpcmd, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 0
  %10 = load i8*, i8** %sv_any, align 8
  %11 = bitcast i8* %10 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %11, i32 0, i32 0
  %12 = load i8*, i8** %xpv_pv, align 8
  %13 = load %struct.sv*, %struct.sv** %tmpcmd, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 0
  %14 = load i8*, i8** %sv_any1, align 8
  %15 = bitcast i8* %14 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %15, i32 0, i32 1
  %16 = load i64, i64* %xpv_cur, align 8
  %conv2 = trunc i64 %16 to i32
  %call3 = call signext i8 @Perl_do_open(%struct.gv* %8, i8* %12, i32 %conv2, i32 0, i32 0, i32 0, %struct._PerlIO** null)
  %17 = load %struct.io*, %struct.io** %io.addr, align 8
  %sv_any4 = getelementptr inbounds %struct.io, %struct.io* %17, i32 0, i32 0
  %18 = load %struct.xpvio*, %struct.xpvio** %sv_any4, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %18, i32 0, i32 7
  %19 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  store %struct._PerlIO** %19, %struct._PerlIO*** %fp, align 8
  call void @Perl_pop_scope()
  %20 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  ret %struct._PerlIO** %20
}

declare %struct.sv* @Perl_newSV(i64) #1

declare void @Perl_push_scope() #1

declare void @Perl_sv_catsv_flags(%struct.sv*, %struct.sv*, i32) #1

declare void @Perl_pop_scope() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
