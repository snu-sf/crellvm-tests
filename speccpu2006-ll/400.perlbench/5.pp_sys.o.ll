; ModuleID = 'pp_sys.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.op = type { %struct.op*, %struct.op*, {}*, i64, i16, i16, i8, i8 }
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
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
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.context = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.xpv = type { i8*, i64, i64 }
%struct.svop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.sv* }
%struct.xrv = type { %struct.sv* }
%struct.xpvmg = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv* }
%struct.xpviv = type { i8*, i64, i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.xpvnv = type { i8*, i64, i64, i64, double }
%struct.fd_set = type { [16 x i64] }
%struct.block_sub = type { %struct.cv*, %struct.gv*, %struct.gv*, %struct.av*, %struct.av*, i64, i8, i8, %struct.av* }
%struct.xpvfm = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32, i64 }
%struct.xpvuv = type { i8*, i64, i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@PL_stack_sp = external global %struct.sv**, align 8
@PL_op = external global %struct.op*, align 8
@PL_curpad = external global %struct.sv**, align 8
@PL_Sv = external global %struct.sv*, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@PL_tainting = external global i8, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"``\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@PL_curcop = external global %struct.cop*, align 8
@PL_rs = external global %struct.sv*, align 8
@PL_sv_undef = external global %struct.sv, align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_stack_max = external global %struct.sv**, align 8
@PL_statusvalue = external global i32, align 4
@PL_tainted = external global i8, align 1
@PL_amagic_generation = external global i64, align 8
@PL_no_security = external constant [0 x i8], align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"glob\00", align 1
@PL_last_in_gv = external global %struct.gv*, align 8
@.str.6 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@PL_stack_base = external global %struct.sv**, align 8
@PL_markstack_ptr = external global i32*, align 8
@PL_sv_no = external global %struct.sv, align 8
@PL_errgv = external global %struct.gv*, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"\09...caught\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Warning: something's wrong\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%_\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"PROPAGATE\00", align 1
@PL_markstack_max = external global i32*, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"\09...propagated\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Died\00", align 1
@PL_no_usym = external constant [0 x i8], align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"filehandle\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@PL_forkprocess = external global i32, align 4
@PL_defoutgv = external global %struct.gv*, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"CLOSE\00", align 1
@PL_no_func = external constant [0 x i8], align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"FILENO\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"umask not implemented\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"BINMODE\00", align 1
@PL_dowarn = external global i8, align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"TIEHASH\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"TIEARRAY\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"TIEHANDLE\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"TIESCALAR\00", align 1
@PL_curstackinfo = external global %struct.stackinfo*, align 8
@PL_curstack = external global %struct.av*, align 8
@.str.24 = private unnamed_addr constant [49 x i8] c"Can't locate object method \22%s\22 via package \22%_\22\00", align 1
@PL_stderrgv = external global %struct.gv*, align 8
@.str.25 = private unnamed_addr constant [17 x i8] c"panic: POPSTACK\0A\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"Self-ties of arrays and hashes are not supported\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"UNTIE\00", align 1
@.str.28 = private unnamed_addr constant [55 x i8] c"untie attempted while %lu inner references still exist\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"AnyDBM_File\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"AnyDBM_File.pm\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"No dbm on this machine\00", align 1
@PL_stdingv = external global %struct.gv*, align 8
@.str.32 = private unnamed_addr constant [5 x i8] c"GETC\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c" \00", align 1
@PL_utf8skip = external constant [0 x i8], align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"Undefined format \22%s\22 called\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"Not a format reference\00", align 1
@PL_formtarget = external global %struct.sv*, align 8
@PL_toptarget = external global %struct.sv*, align 8
@.str.36 = private unnamed_addr constant [7 x i8] c"%s_TOP\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@PL_formfeed = external global %struct.sv*, align 8
@.str.38 = private unnamed_addr constant [25 x i8] c"bad top format reference\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"Undefined top format \22%s\22 called\00", align 1
@PL_markstack = external global i32*, align 8
@PL_scopestack_ix = external global i32, align 4
@PL_retstack_ix = external global i32, align 4
@PL_curpm = external global %struct.pmop*, align 8
@.str.40 = private unnamed_addr constant [14 x i8] c"page overflow\00", align 1
@PL_bodytarget = external global %struct.sv*, align 8
@.str.41 = private unnamed_addr constant [7 x i8] c"PRINTF\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"Negative length\00", align 1
@PL_no_sock_func = external constant [0 x i8], align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"Offset outside string\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@PL_argvgv = external global %struct.gv*, align 8
@.str.48 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"TELL\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"SEEK\00", align 1
@zero_but_true = internal global [11 x i8] c"0 but true\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.55 = private unnamed_addr constant [55 x i8] c"Possible memory corruption: %s overflowed 3rd argument\00", align 1
@PL_op_name = external global [0 x i8*], align 8
@.str.56 = private unnamed_addr constant [8 x i8] c"flock()\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"socketpair\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"getsockopt\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"getsockname\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"getpeername\00", align 1
@PL_defgv = external global %struct.gv*, align 8
@.str.68 = private unnamed_addr constant [25 x i8] c"lstat() on filehandle %s\00", align 1
@PL_laststype = external global i32, align 4
@.str.69 = private unnamed_addr constant [43 x i8] c"The stat preceding lstat() wasn't an lstat\00", align 1
@PL_statgv = external global %struct.gv*, align 8
@PL_statname = external global %struct.sv*, align 8
@PL_statcache = external global %struct.stat, align 8
@PL_laststatval = external global i32, align 4
@PL_warn_nl = external constant [0 x i8], align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@PL_tmps_ix = external global i32, align 4
@PL_tmps_max = external global i32, align 4
@PL_euid = external global i32, align 4
@PL_uid = external global i32, align 4
@PL_basetime = external global i64, align 8
@.str.71 = private unnamed_addr constant [41 x i8] c"-T and -B not implemented on filehandles\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@PL_envgv = external global %struct.gv*, align 8
@.str.73 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"LOGDIR\00", align 1
@.str.75 = private unnamed_addr constant [37 x i8] c"chdir('') or chdir(undef) as chdir()\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"chown\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"chroot\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@PL_statbuf = external global %struct.stat, align 8
@.str.80 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
@PL_no_dir_func = external constant [0 x i8], align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"opendir\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"readdir\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"telldir\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"seekdir\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"rewinddir\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"closedir\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@PL_pidstatus = external global %struct.hv*, align 8
@PL_signals = external global i32, align 4
@PL_sig_pending = external global i32, align 4
@.str.91 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.92 = private unnamed_addr constant [28 x i8] c"panic: kid popen errno read\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"getppid\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"getpgrp()\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"setpgrp()\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"getpriority()\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"setpriority()\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"times not implemented\00", align 1
@Perl_pp_gmtime.dayname = internal global [7 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0)], align 16
@.str.101 = private unnamed_addr constant [4 x i8] c"Sun\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"Mon\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"Tue\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"Wed\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"Thu\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"Fri\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"Sat\00", align 1
@Perl_pp_gmtime.monname = internal global [12 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i32 0, i32 0)], align 16
@.str.108 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@.str.120 = private unnamed_addr constant [28 x i8] c"%s %s %2d %02d:%02d:%02d %d\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"alarm\00", align 1
@.str.122 = private unnamed_addr constant [48 x i8] c"System V IPC is not implemented on this machine\00", align 1
@.str.123 = private unnamed_addr constant [14 x i8] c"gethostbyname\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"gethostbyaddr\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"gethostent\00", align 1
@.str.126 = private unnamed_addr constant [13 x i8] c"getnetbyname\00", align 1
@.str.127 = private unnamed_addr constant [13 x i8] c"getnetbyaddr\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"getnetent\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c"getprotobyname\00", align 1
@.str.130 = private unnamed_addr constant [17 x i8] c"getprotobynumber\00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c"getprotoent\00", align 1
@.str.132 = private unnamed_addr constant [14 x i8] c"getservbyname\00", align 1
@.str.133 = private unnamed_addr constant [14 x i8] c"getservbyport\00", align 1
@.str.134 = private unnamed_addr constant [11 x i8] c"getservent\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"sethostent\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"setnetent\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c"setprotoent\00", align 1
@.str.138 = private unnamed_addr constant [11 x i8] c"setservent\00", align 1
@.str.139 = private unnamed_addr constant [11 x i8] c"endhostent\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"endnetent\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c"endprotoent\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"endservent\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"getpwnam\00", align 1
@.str.144 = private unnamed_addr constant [9 x i8] c"getpwuid\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"getpwent\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"setpwent\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"endpwent\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"getgrnam\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"getgrgid\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"getgrent\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"setgrent\00", align 1
@.str.152 = private unnamed_addr constant [9 x i8] c"endgrent\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"getlogin\00", align 1
@.str.154 = private unnamed_addr constant [8 x i8] c"syscall\00", align 1
@PL_tmps_floor = external global i32, align 4
@PL_savestack_ix = external global i32, align 4
@PL_savestack_max = external global i32, align 4
@PL_comppad = external global %struct.av*, align 8
@PL_savestack = external global %union.any*, align 8

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_backtick() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %fp = alloca %struct._PerlIO**, align 8
  %n_a = alloca i64, align 8
  %tmps = alloca i8*, align 8
  %gimme = alloca i32, align 4
  %mode = alloca i8*, align 8
  %type = alloca i8*, align 8
  %tmpbuf = alloca [256 x i8], align 16
  %tmp = alloca %struct.sv*, align 8
  %sv = alloca %struct.sv*, align 8
  %tmp110 = alloca %struct.sv*, align 8
  %tmp119 = alloca i64, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 3
  %2 = load i64, i64* %op_targ, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %4, %struct.sv** %targ, align 8
  %5 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %5, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %6 = load %struct.sv*, %struct.sv** %5, align 8
  store %struct.sv* %6, %struct.sv** @PL_Sv, align 8
  %7 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 2
  %8 = load i32, i32* %sv_flags, align 4
  %and = and i32 %8, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 0
  %10 = load i8*, i8** %sv_any, align 8
  %11 = bitcast i8* %10 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %11, i32 0, i32 1
  %12 = load i64, i64* %xpv_cur, align 8
  store i64 %12, i64* %n_a, align 8
  %13 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 0
  %14 = load i8*, i8** %sv_any1, align 8
  %15 = bitcast i8* %14 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %15, i32 0, i32 0
  %16 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %17 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %17, i64* %n_a, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %16, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %tmps, align 8
  %18 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %18, i32 0, i32 6
  %19 = load i8, i8* %op_flags, align 1
  %conv = zext i8 %19 to i32
  %and2 = and i32 %conv, 3
  %cmp3 = icmp eq i32 %and2, 1
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  br label %cond.end.26

cond.false.6:                                     ; preds = %cond.end
  %20 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags7 = getelementptr inbounds %struct.op, %struct.op* %20, i32 0, i32 6
  %21 = load i8, i8* %op_flags7, align 1
  %conv8 = zext i8 %21 to i32
  %and9 = and i32 %conv8, 3
  %cmp10 = icmp eq i32 %and9, 2
  br i1 %cmp10, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.false.6
  br label %cond.end.24

cond.false.13:                                    ; preds = %cond.false.6
  %22 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags14 = getelementptr inbounds %struct.op, %struct.op* %22, i32 0, i32 6
  %23 = load i8, i8* %op_flags14, align 1
  %conv15 = zext i8 %23 to i32
  %and16 = and i32 %conv15, 3
  %cmp17 = icmp eq i32 %and16, 3
  br i1 %cmp17, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.false.13
  br label %cond.end.22

cond.false.20:                                    ; preds = %cond.false.13
  %call21 = call i32 @Perl_block_gimme()
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.20, %cond.true.19
  %cond23 = phi i32 [ 1, %cond.true.19 ], [ %call21, %cond.false.20 ]
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.end.22, %cond.true.12
  %cond25 = phi i32 [ 0, %cond.true.12 ], [ %cond23, %cond.end.22 ]
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.end.24, %cond.true.5
  %cond27 = phi i32 [ 128, %cond.true.5 ], [ %cond25, %cond.end.24 ]
  store i32 %cond27, i32* %gimme, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %mode, align 8
  %24 = load i8, i8* @PL_tainting, align 1
  %tobool = icmp ne i8 %24, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.26
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.26
  %25 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %25, i32 0, i32 7
  %26 = load i8, i8* %op_private, align 1
  %conv28 = zext i8 %26 to i32
  %and29 = and i32 %conv28, 16
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %mode, align 8
  br label %if.end.38

if.else:                                          ; preds = %if.end
  %27 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private32 = getelementptr inbounds %struct.op, %struct.op* %27, i32 0, i32 7
  %28 = load i8, i8* %op_private32, align 1
  %conv33 = zext i8 %28 to i32
  %and34 = and i32 %conv33, 32
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.else
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8** %mode, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.else
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.31
  %29 = load i8*, i8** %tmps, align 8
  %30 = load i8*, i8** %mode, align 8
  %call39 = call %struct._PerlIO** @Perl_my_popen(i8* %29, i8* %30)
  store %struct._PerlIO** %call39, %struct._PerlIO*** %fp, align 8
  %31 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %tobool40 = icmp ne %struct._PerlIO** %31, null
  br i1 %tobool40, label %if.then.41, label %if.else.143

if.then.41:                                       ; preds = %if.end.38
  store i8* null, i8** %type, align 8
  %32 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_io = getelementptr inbounds %struct.cop, %struct.cop* %32, i32 0, i32 15
  %33 = load %struct.sv*, %struct.sv** %cop_io, align 8
  %tobool42 = icmp ne %struct.sv* %33, null
  br i1 %tobool42, label %if.then.43, label %if.end.58

if.then.43:                                       ; preds = %if.then.41
  %34 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_io44 = getelementptr inbounds %struct.cop, %struct.cop* %34, i32 0, i32 15
  %35 = load %struct.sv*, %struct.sv** %cop_io44, align 8
  %sv_flags45 = getelementptr inbounds %struct.sv, %struct.sv* %35, i32 0, i32 2
  %36 = load i32, i32* %sv_flags45, align 4
  %and46 = and i32 %36, 262144
  %cmp47 = icmp eq i32 %and46, 262144
  br i1 %cmp47, label %cond.true.49, label %cond.false.53

cond.true.49:                                     ; preds = %if.then.43
  %37 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_io50 = getelementptr inbounds %struct.cop, %struct.cop* %37, i32 0, i32 15
  %38 = load %struct.sv*, %struct.sv** %cop_io50, align 8
  %sv_any51 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 0
  %39 = load i8*, i8** %sv_any51, align 8
  %40 = bitcast i8* %39 to %struct.xpv*
  %xpv_pv52 = getelementptr inbounds %struct.xpv, %struct.xpv* %40, i32 0, i32 0
  %41 = load i8*, i8** %xpv_pv52, align 8
  br label %cond.end.56

cond.false.53:                                    ; preds = %if.then.43
  %42 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_io54 = getelementptr inbounds %struct.cop, %struct.cop* %42, i32 0, i32 15
  %43 = load %struct.sv*, %struct.sv** %cop_io54, align 8
  %call55 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %43)
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.53, %cond.true.49
  %cond57 = phi i8* [ %41, %cond.true.49 ], [ %call55, %cond.false.53 ]
  store i8* %cond57, i8** %type, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %cond.end.56, %if.then.41
  %44 = load i8*, i8** %type, align 8
  %tobool59 = icmp ne i8* %44, null
  br i1 %tobool59, label %land.lhs.true, label %if.end.64

land.lhs.true:                                    ; preds = %if.end.58
  %45 = load i8*, i8** %type, align 8
  %46 = load i8, i8* %45, align 1
  %conv60 = sext i8 %46 to i32
  %tobool61 = icmp ne i32 %conv60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %land.lhs.true
  %47 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %48 = load i8*, i8** %mode, align 8
  %49 = load i8*, i8** %type, align 8
  %call63 = call i32 @PerlIO_apply_layers(%struct._PerlIO** %47, i8* %48, i8* %49)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %land.lhs.true, %if.end.58
  %50 = load i32, i32* %gimme, align 4
  %cmp65 = icmp eq i32 %50, 128
  br i1 %cmp65, label %if.then.67, label %if.else.71

if.then.67:                                       ; preds = %if.end.64
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.67
  %51 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %tmpbuf, i32 0, i32 0
  %call68 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %51, i8* %arraydecay, i64 256)
  %cmp69 = icmp sgt i64 %call68, 0
  br i1 %cmp69, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.136

if.else.71:                                       ; preds = %if.end.64
  %52 = load i32, i32* %gimme, align 4
  %cmp72 = icmp eq i32 %52, 0
  br i1 %cmp72, label %if.then.74, label %if.else.93

if.then.74:                                       ; preds = %if.else.71
  call void @Perl_push_scope()
  call void @Perl_save_sptr(%struct.sv** @PL_rs)
  store %struct.sv* @PL_sv_undef, %struct.sv** @PL_rs, align 8
  %53 = load %struct.sv*, %struct.sv** %targ, align 8
  call void @Perl_sv_setpv(%struct.sv* %53, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0))
  br label %while.cond.75

while.cond.75:                                    ; preds = %while.body.82, %if.then.74
  %54 = load %struct.sv*, %struct.sv** %targ, align 8
  %55 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %56 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_any76 = getelementptr inbounds %struct.sv, %struct.sv* %56, i32 0, i32 0
  %57 = load i8*, i8** %sv_any76, align 8
  %58 = bitcast i8* %57 to %struct.xpv*
  %xpv_cur77 = getelementptr inbounds %struct.xpv, %struct.xpv* %58, i32 0, i32 1
  %59 = load i64, i64* %xpv_cur77, align 8
  %conv78 = trunc i64 %59 to i32
  %call79 = call i8* @Perl_sv_gets(%struct.sv* %54, %struct._PerlIO** %55, i32 %conv78)
  %cmp80 = icmp ne i8* %call79, null
  br i1 %cmp80, label %while.body.82, label %while.end.83

while.body.82:                                    ; preds = %while.cond.75
  br label %while.cond.75

while.end.83:                                     ; preds = %while.cond.75
  call void @Perl_pop_scope()
  %60 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %61 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %60 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %61 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp84 = icmp slt i64 %sub.ptr.div, 1
  br i1 %cmp84, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %while.end.83
  %62 = load %struct.sv**, %struct.sv*** %sp, align 8
  %63 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call87 = call %struct.sv** @Perl_stack_grow(%struct.sv** %62, %struct.sv** %63, i32 1)
  store %struct.sv** %call87, %struct.sv*** %sp, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %while.end.83
  %64 = load %struct.sv*, %struct.sv** %targ, align 8
  %65 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr89 = getelementptr inbounds %struct.sv*, %struct.sv** %65, i32 1
  store %struct.sv** %incdec.ptr89, %struct.sv*** %sp, align 8
  store %struct.sv* %64, %struct.sv** %incdec.ptr89, align 8
  store %struct.sv* %64, %struct.sv** %tmp
  %66 = load %struct.sv*, %struct.sv** %tmp
  %67 = load i8, i8* @PL_tainting, align 1
  %tobool90 = icmp ne i8 %67, 0
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.88
  %68 = load %struct.sv*, %struct.sv** %targ, align 8
  call void @Perl_sv_taint(%struct.sv* %68)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.end.88
  br label %if.end.135

if.else.93:                                       ; preds = %if.else.71
  br label %for.cond

for.cond:                                         ; preds = %if.end.134, %if.else.93
  %call95 = call %struct.sv* @Perl_newSV(i64 79)
  store %struct.sv* %call95, %struct.sv** %sv, align 8
  %69 = load %struct.sv*, %struct.sv** %sv, align 8
  %70 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call96 = call i8* @Perl_sv_gets(%struct.sv* %69, %struct._PerlIO** %70, i32 0)
  %cmp97 = icmp eq i8* %call96, null
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %for.cond
  %71 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_free(%struct.sv* %71)
  br label %for.end

if.end.100:                                       ; preds = %for.cond
  %72 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %73 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast101 = ptrtoint %struct.sv** %72 to i64
  %sub.ptr.rhs.cast102 = ptrtoint %struct.sv** %73 to i64
  %sub.ptr.sub103 = sub i64 %sub.ptr.lhs.cast101, %sub.ptr.rhs.cast102
  %sub.ptr.div104 = sdiv exact i64 %sub.ptr.sub103, 8
  %cmp105 = icmp slt i64 %sub.ptr.div104, 1
  br i1 %cmp105, label %if.then.107, label %if.end.109

if.then.107:                                      ; preds = %if.end.100
  %74 = load %struct.sv**, %struct.sv*** %sp, align 8
  %75 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call108 = call %struct.sv** @Perl_stack_grow(%struct.sv** %74, %struct.sv** %75, i32 1)
  store %struct.sv** %call108, %struct.sv*** %sp, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.107, %if.end.100
  %76 = load %struct.sv*, %struct.sv** %sv, align 8
  %call111 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %76)
  %77 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr112 = getelementptr inbounds %struct.sv*, %struct.sv** %77, i32 1
  store %struct.sv** %incdec.ptr112, %struct.sv*** %sp, align 8
  store %struct.sv* %call111, %struct.sv** %incdec.ptr112, align 8
  store %struct.sv* %call111, %struct.sv** %tmp110
  %78 = load %struct.sv*, %struct.sv** %tmp110
  %79 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any113 = getelementptr inbounds %struct.sv, %struct.sv* %79, i32 0, i32 0
  %80 = load i8*, i8** %sv_any113, align 8
  %81 = bitcast i8* %80 to %struct.xpv*
  %xpv_len = getelementptr inbounds %struct.xpv, %struct.xpv* %81, i32 0, i32 2
  %82 = load i64, i64* %xpv_len, align 8
  %83 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any114 = getelementptr inbounds %struct.sv, %struct.sv* %83, i32 0, i32 0
  %84 = load i8*, i8** %sv_any114, align 8
  %85 = bitcast i8* %84 to %struct.xpv*
  %xpv_cur115 = getelementptr inbounds %struct.xpv, %struct.xpv* %85, i32 0, i32 1
  %86 = load i64, i64* %xpv_cur115, align 8
  %sub = sub i64 %82, %86
  %cmp116 = icmp ugt i64 %sub, 20
  br i1 %cmp116, label %if.then.118, label %if.end.131

if.then.118:                                      ; preds = %if.end.109
  %87 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any120 = getelementptr inbounds %struct.sv, %struct.sv* %87, i32 0, i32 0
  %88 = load i8*, i8** %sv_any120, align 8
  %89 = bitcast i8* %88 to %struct.xpv*
  %xpv_cur121 = getelementptr inbounds %struct.xpv, %struct.xpv* %89, i32 0, i32 1
  %90 = load i64, i64* %xpv_cur121, align 8
  %add = add i64 %90, 1
  %91 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any122 = getelementptr inbounds %struct.sv, %struct.sv* %91, i32 0, i32 0
  %92 = load i8*, i8** %sv_any122, align 8
  %93 = bitcast i8* %92 to %struct.xpv*
  %xpv_len123 = getelementptr inbounds %struct.xpv, %struct.xpv* %93, i32 0, i32 2
  store i64 %add, i64* %xpv_len123, align 8
  store i64 %add, i64* %tmp119
  %94 = load i64, i64* %tmp119
  %95 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any124 = getelementptr inbounds %struct.sv, %struct.sv* %95, i32 0, i32 0
  %96 = load i8*, i8** %sv_any124, align 8
  %97 = bitcast i8* %96 to %struct.xpv*
  %xpv_pv125 = getelementptr inbounds %struct.xpv, %struct.xpv* %97, i32 0, i32 0
  %98 = load i8*, i8** %xpv_pv125, align 8
  %99 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any126 = getelementptr inbounds %struct.sv, %struct.sv* %99, i32 0, i32 0
  %100 = load i8*, i8** %sv_any126, align 8
  %101 = bitcast i8* %100 to %struct.xpv*
  %xpv_len127 = getelementptr inbounds %struct.xpv, %struct.xpv* %101, i32 0, i32 2
  %102 = load i64, i64* %xpv_len127, align 8
  %mul = mul i64 %102, 1
  %call128 = call i8* @Perl_safesysrealloc(i8* %98, i64 %mul)
  %103 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any129 = getelementptr inbounds %struct.sv, %struct.sv* %103, i32 0, i32 0
  %104 = load i8*, i8** %sv_any129, align 8
  %105 = bitcast i8* %104 to %struct.xpv*
  %xpv_pv130 = getelementptr inbounds %struct.xpv, %struct.xpv* %105, i32 0, i32 0
  store i8* %call128, i8** %xpv_pv130, align 8
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.118, %if.end.109
  %106 = load i8, i8* @PL_tainting, align 1
  %tobool132 = icmp ne i8 %106, 0
  br i1 %tobool132, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.end.131
  %107 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_taint(%struct.sv* %107)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %if.end.131
  br label %for.cond

for.end:                                          ; preds = %if.then.99
  br label %if.end.135

if.end.135:                                       ; preds = %for.end, %if.end.92
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %while.end
  %108 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call137 = call i32 @Perl_my_pclose(%struct._PerlIO** %108)
  store i32 %call137, i32* @PL_statusvalue, align 4
  %109 = load i32, i32* @PL_statusvalue, align 4
  %cmp138 = icmp ne i32 %109, -1
  br i1 %cmp138, label %if.then.140, label %if.end.142

if.then.140:                                      ; preds = %if.end.136
  %110 = load i32, i32* @PL_statusvalue, align 4
  %and141 = and i32 %110, 65535
  store i32 %and141, i32* @PL_statusvalue, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.140, %if.end.136
  store i8 1, i8* @PL_tainted, align 1
  br label %if.end.154

if.else.143:                                      ; preds = %if.end.38
  store i32 -1, i32* @PL_statusvalue, align 4
  %111 = load i32, i32* @PL_statusvalue, align 4
  %cmp144 = icmp ne i32 %111, -1
  br i1 %cmp144, label %if.then.146, label %if.end.148

if.then.146:                                      ; preds = %if.else.143
  %112 = load i32, i32* @PL_statusvalue, align 4
  %and147 = and i32 %112, 65535
  store i32 %and147, i32* @PL_statusvalue, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.146, %if.else.143
  %113 = load i32, i32* %gimme, align 4
  %cmp149 = icmp eq i32 %113, 0
  br i1 %cmp149, label %if.then.151, label %if.end.153

if.then.151:                                      ; preds = %if.end.148
  %114 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr152 = getelementptr inbounds %struct.sv*, %struct.sv** %114, i32 1
  store %struct.sv** %incdec.ptr152, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr152, align 8
  %115 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %115, %struct.sv*** @PL_stack_sp, align 8
  %116 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %116, i32 0, i32 0
  %117 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %117, %struct.op** %retval
  br label %return

if.end.153:                                       ; preds = %if.end.148
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.end.142
  %118 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %118, %struct.sv*** @PL_stack_sp, align 8
  %119 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next155 = getelementptr inbounds %struct.op, %struct.op* %119, i32 0, i32 0
  %120 = load %struct.op*, %struct.op** %op_next155, align 8
  store %struct.op* %120, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.154, %if.then.151
  %121 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %121
}

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

declare i32 @Perl_block_gimme() #1

declare void @Perl_taint_proper(i8*, i8*) #1

declare %struct._PerlIO** @Perl_my_popen(i8*, i8*) #1

declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #1

declare i32 @PerlIO_apply_layers(%struct._PerlIO**, i8*, i8*) #1

declare i64 @Perl_PerlIO_read(%struct._PerlIO**, i8*, i64) #1

declare void @Perl_push_scope() #1

declare void @Perl_save_sptr(%struct.sv**) #1

declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

declare i8* @Perl_sv_gets(%struct.sv*, %struct._PerlIO**, i32) #1

declare void @Perl_pop_scope() #1

declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

declare void @Perl_sv_taint(%struct.sv*) #1

declare %struct.sv* @Perl_newSV(i64) #1

declare void @Perl_sv_free(%struct.sv*) #1

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

declare i8* @Perl_safesysrealloc(i8*, i64) #1

declare i32 @Perl_my_pclose(%struct._PerlIO**) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_glob() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %result = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %sp2 = alloca %struct.sv**, align 8
  %tmpsv = alloca %struct.sv*, align 8
  %arg = alloca %struct.sv*, align 8
  %tmp = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %2 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %2, i32 0, i32 6
  %3 = load i8, i8* %op_flags, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.sv*, %struct.sv** %4, i32 -1
  store %struct.sv** %incdec.ptr1, %struct.sv*** %sp, align 8
  %5 = load %struct.sv*, %struct.sv** %4, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %6, i32 0, i32 3
  %7 = load i64, i64* %op_targ, align 8
  %8 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %8, i64 %7
  %9 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %5, %cond.true ], [ %9, %cond.false ]
  store %struct.sv* %cond, %struct.sv** %targ, align 8
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %10, %struct.sv*** %sp2, align 8
  %11 = load i64, i64* @PL_amagic_generation, align 8
  %tobool3 = icmp ne i64 %11, 0
  br i1 %tobool3, label %if.then, label %if.end.15

if.then:                                          ; preds = %cond.end
  %12 = load %struct.sv**, %struct.sv*** %sp2, align 8
  %arrayidx4 = getelementptr inbounds %struct.sv*, %struct.sv** %12, i64 -1
  %13 = load %struct.sv*, %struct.sv** %arrayidx4, align 8
  store %struct.sv* %13, %struct.sv** %arg, align 8
  br label %am_again

am_again:                                         ; preds = %if.then
  %14 = load %struct.sv*, %struct.sv** %arg, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 2
  %15 = load i32, i32* %sv_flags, align 4
  %and5 = and i32 %15, 268435456
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %am_again
  %16 = load %struct.sv*, %struct.sv** %arg, align 8
  %call = call %struct.sv* @Perl_amagic_call(%struct.sv* %16, %struct.sv* @PL_sv_undef, i32 63, i32 9)
  store %struct.sv* %call, %struct.sv** %tmpsv, align 8
  %tobool7 = icmp ne %struct.sv* %call, null
  br i1 %tobool7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %land.lhs.true
  %17 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %17, %struct.sv*** %sp2, align 8
  %18 = load %struct.sv**, %struct.sv*** %sp2, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %18, i64 -1
  store %struct.sv** %add.ptr, %struct.sv*** %sp2, align 8
  %19 = load %struct.sv*, %struct.sv** %targ, align 8
  %20 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %19, %struct.sv* %20, i32 2)
  %21 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags9 = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 2
  %22 = load i32, i32* %sv_flags9, align 4
  %and10 = and i32 %22, 16384
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.8
  %23 = load %struct.sv*, %struct.sv** %targ, align 8
  %call13 = call i32 @Perl_mg_set(%struct.sv* %23)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then.8
  %24 = load %struct.sv*, %struct.sv** %targ, align 8
  %25 = load %struct.sv**, %struct.sv*** %sp2, align 8
  store %struct.sv* %24, %struct.sv** %25, align 8
  store %struct.sv* %24, %struct.sv** %tmp
  %26 = load %struct.sv*, %struct.sv** %tmp
  %27 = load %struct.sv**, %struct.sv*** %sp2, align 8
  store %struct.sv** %27, %struct.sv*** @PL_stack_sp, align 8
  %28 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %28, i32 0, i32 0
  %29 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %29, %struct.op** %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true, %am_again
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %cond.end
  call void @Perl_push_scope()
  %30 = load i8, i8* @PL_tainting, align 1
  %tobool16 = icmp ne i8 %30, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  store i8 1, i8* @PL_tainted, align 1
  call void @Perl_taint_proper(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_security, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  call void @Perl_save_sptr(%struct.sv** bitcast (%struct.gv** @PL_last_in_gv to %struct.sv**))
  %31 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %incdec.ptr19 = getelementptr inbounds %struct.sv*, %struct.sv** %31, i32 -1
  store %struct.sv** %incdec.ptr19, %struct.sv*** @PL_stack_sp, align 8
  %32 = load %struct.sv*, %struct.sv** %31, align 8
  %33 = bitcast %struct.sv* %32 to %struct.gv*
  store %struct.gv* %33, %struct.gv** @PL_last_in_gv, align 8
  call void @Perl_save_sptr(%struct.sv** @PL_rs)
  %call20 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i64 1)
  %call21 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call20)
  store %struct.sv* %call21, %struct.sv** @PL_rs, align 8
  %call22 = call %struct.op* @Perl_do_readline()
  store %struct.op* %call22, %struct.op** %result, align 8
  call void @Perl_pop_scope()
  %34 = load %struct.op*, %struct.op** %result, align 8
  store %struct.op* %34, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.end
  %35 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %35
}

declare %struct.sv* @Perl_amagic_call(%struct.sv*, %struct.sv*, i32, i32) #1

declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

declare i32 @Perl_mg_set(%struct.sv*) #1

declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

declare %struct.op* @Perl_do_readline() #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_rcatline() #0 {
entry:
  %0 = load %struct.op*, %struct.op** @PL_op, align 8
  %1 = bitcast %struct.op* %0 to %struct.svop*
  %op_sv = getelementptr inbounds %struct.svop, %struct.svop* %1, i32 0, i32 8
  %2 = load %struct.sv*, %struct.sv** %op_sv, align 8
  %3 = bitcast %struct.sv* %2 to %struct.gv*
  store %struct.gv* %3, %struct.gv** @PL_last_in_gv, align 8
  %call = call %struct.op* @Perl_do_readline()
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_warn() #0 {
entry:
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %tmpsv = alloca %struct.sv*, align 8
  %tmps = alloca i8*, align 8
  %len = alloca i64, align 8
  %targ = alloca %struct.sv*, align 8
  %error = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %sp, align 8
  %5 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp = icmp ne i64 %sub.ptr.div, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %6, i32 0, i32 3
  %7 = load i64, i64* %op_targ, align 8
  %8 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %8, i64 %7
  %9 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %9, %struct.sv** %targ, align 8
  %10 = load %struct.sv*, %struct.sv** %targ, align 8
  %11 = load %struct.sv**, %struct.sv*** %mark, align 8
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  call void @Perl_do_join(%struct.sv* %10, %struct.sv* @PL_sv_no, %struct.sv** %11, %struct.sv** %12)
  %13 = load %struct.sv*, %struct.sv** %targ, align 8
  store %struct.sv* %13, %struct.sv** %tmpsv, align 8
  %14 = load %struct.sv**, %struct.sv*** %mark, align 8
  %add.ptr1 = getelementptr inbounds %struct.sv*, %struct.sv** %14, i64 1
  store %struct.sv** %add.ptr1, %struct.sv*** %sp, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct.sv**, %struct.sv*** %sp, align 8
  %16 = load %struct.sv*, %struct.sv** %15, align 8
  store %struct.sv* %16, %struct.sv** %tmpsv, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 2
  %18 = load i32, i32* %sv_flags, align 4
  %and = and i32 %18, 262144
  %cmp2 = icmp eq i32 %and, 262144
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %19 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 0
  %20 = load i8*, i8** %sv_any, align 8
  %21 = bitcast i8* %20 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %21, i32 0, i32 1
  %22 = load i64, i64* %xpv_cur, align 8
  store i64 %22, i64* %len, align 8
  %23 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any3 = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 0
  %24 = load i8*, i8** %sv_any3, align 8
  %25 = bitcast i8* %24 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %25, i32 0, i32 0
  %26 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %27 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %27, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %26, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %tmps, align 8
  %28 = load i8*, i8** %tmps, align 8
  %tobool = icmp ne i8* %28, null
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %cond.end
  %29 = load i64, i64* %len, align 8
  %tobool4 = icmp ne i64 %29, 0
  br i1 %tobool4, label %if.end.35, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %cond.end
  %30 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %tobool5 = icmp ne %struct.gv* %30, null
  br i1 %tobool5, label %if.then.6, label %if.end.35

if.then.6:                                        ; preds = %land.lhs.true
  %31 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any7 = getelementptr inbounds %struct.gv, %struct.gv* %31, i32 0, i32 0
  %32 = load %struct.xpvgv*, %struct.xpvgv** %sv_any7, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %32, i32 0, i32 7
  %33 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %33, i32 0, i32 0
  %34 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  store %struct.sv* %34, %struct.sv** %error, align 8
  %35 = load %struct.sv*, %struct.sv** %error, align 8
  %sv_flags8 = getelementptr inbounds %struct.sv, %struct.sv* %35, i32 0, i32 2
  %36 = load i32, i32* %sv_flags8, align 4
  %and9 = and i32 %36, 255
  %cmp10 = icmp uge i32 %and9, 4
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.6
  %37 = load %struct.sv*, %struct.sv** %error, align 8
  %call11 = call signext i8 @Perl_sv_upgrade(%struct.sv* %37, i32 4)
  %conv = sext i8 %call11 to i32
  %tobool12 = icmp ne i32 %conv, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.6
  %38 = phi i1 [ true, %if.then.6 ], [ %tobool12, %lor.rhs ]
  %lor.ext = zext i1 %38 to i32
  %39 = load %struct.sv*, %struct.sv** %error, align 8
  %sv_flags13 = getelementptr inbounds %struct.sv, %struct.sv* %39, i32 0, i32 2
  %40 = load i32, i32* %sv_flags13, align 4
  %and14 = and i32 %40, 262144
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.21

land.lhs.true.16:                                 ; preds = %lor.end
  %41 = load %struct.sv*, %struct.sv** %error, align 8
  %sv_any17 = getelementptr inbounds %struct.sv, %struct.sv* %41, i32 0, i32 0
  %42 = load i8*, i8** %sv_any17, align 8
  %43 = bitcast i8* %42 to %struct.xpv*
  %xpv_cur18 = getelementptr inbounds %struct.xpv, %struct.xpv* %43, i32 0, i32 1
  %44 = load i64, i64* %xpv_cur18, align 8
  %tobool19 = icmp ne i64 %44, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.16
  %45 = load %struct.sv*, %struct.sv** %error, align 8
  call void @Perl_sv_catpv(%struct.sv* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %land.lhs.true.16, %lor.end
  %46 = load %struct.sv*, %struct.sv** %error, align 8
  store %struct.sv* %46, %struct.sv** %tmpsv, align 8
  %47 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_flags22 = getelementptr inbounds %struct.sv, %struct.sv* %47, i32 0, i32 2
  %48 = load i32, i32* %sv_flags22, align 4
  %and23 = and i32 %48, 262144
  %cmp24 = icmp eq i32 %and23, 262144
  br i1 %cmp24, label %cond.true.26, label %cond.false.31

cond.true.26:                                     ; preds = %if.end.21
  %49 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any27 = getelementptr inbounds %struct.sv, %struct.sv* %49, i32 0, i32 0
  %50 = load i8*, i8** %sv_any27, align 8
  %51 = bitcast i8* %50 to %struct.xpv*
  %xpv_cur28 = getelementptr inbounds %struct.xpv, %struct.xpv* %51, i32 0, i32 1
  %52 = load i64, i64* %xpv_cur28, align 8
  store i64 %52, i64* %len, align 8
  %53 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any29 = getelementptr inbounds %struct.sv, %struct.sv* %53, i32 0, i32 0
  %54 = load i8*, i8** %sv_any29, align 8
  %55 = bitcast i8* %54 to %struct.xpv*
  %xpv_pv30 = getelementptr inbounds %struct.xpv, %struct.xpv* %55, i32 0, i32 0
  %56 = load i8*, i8** %xpv_pv30, align 8
  br label %cond.end.33

cond.false.31:                                    ; preds = %if.end.21
  %57 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %call32 = call i8* @Perl_sv_2pv_flags(%struct.sv* %57, i64* %len, i32 2)
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.31, %cond.true.26
  %cond34 = phi i8* [ %56, %cond.true.26 ], [ %call32, %cond.false.31 ]
  store i8* %cond34, i8** %tmps, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %cond.end.33, %land.lhs.true, %lor.lhs.false
  %58 = load i8*, i8** %tmps, align 8
  %tobool36 = icmp ne i8* %58, null
  br i1 %tobool36, label %lor.lhs.false.37, label %if.then.39

lor.lhs.false.37:                                 ; preds = %if.end.35
  %59 = load i64, i64* %len, align 8
  %tobool38 = icmp ne i64 %59, 0
  br i1 %tobool38, label %if.end.42, label %if.then.39

if.then.39:                                       ; preds = %lor.lhs.false.37, %if.end.35
  %call40 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i64 26)
  %call41 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call40)
  store %struct.sv* %call41, %struct.sv** %tmpsv, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %lor.lhs.false.37
  %60 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void (i8*, ...) @Perl_warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), %struct.sv* %60)
  %61 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %61, align 8
  %62 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %62, %struct.sv*** @PL_stack_sp, align 8
  %63 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %63, i32 0, i32 0
  %64 = load %struct.op*, %struct.op** %op_next, align 8
  ret %struct.op* %64
}

declare void @Perl_do_join(%struct.sv*, %struct.sv*, %struct.sv**, %struct.sv**) #1

declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

declare void @Perl_sv_catpv(%struct.sv*, i8*) #1

declare void @Perl_warn(i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_die() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %tmps = alloca i8*, align 8
  %tmpsv = alloca %struct.sv*, align 8
  %len = alloca i64, align 8
  %multiarg = alloca i8, align 1
  %targ = alloca %struct.sv*, align 8
  %error = alloca %struct.sv*, align 8
  %stash = alloca %struct.hv*, align 8
  %gv = alloca %struct.gv*, align 8
  %file = alloca %struct.sv*, align 8
  %line = alloca %struct.sv*, align 8
  %tmp = alloca i32, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  store i8 0, i8* %multiarg, align 1
  %4 = load %struct.sv**, %struct.sv*** %sp, align 8
  %5 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp = icmp ne i64 %sub.ptr.div, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %6, i32 0, i32 3
  %7 = load i64, i64* %op_targ, align 8
  %8 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %8, i64 %7
  %9 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %9, %struct.sv** %targ, align 8
  %10 = load %struct.sv*, %struct.sv** %targ, align 8
  %11 = load %struct.sv**, %struct.sv*** %mark, align 8
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  call void @Perl_do_join(%struct.sv* %10, %struct.sv* @PL_sv_no, %struct.sv** %11, %struct.sv** %12)
  %13 = load %struct.sv*, %struct.sv** %targ, align 8
  store %struct.sv* %13, %struct.sv** %tmpsv, align 8
  %14 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 2
  %15 = load i32, i32* %sv_flags, align 4
  %and = and i32 %15, 262144
  %cmp1 = icmp eq i32 %and, 262144
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %16 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 0
  %17 = load i8*, i8** %sv_any, align 8
  %18 = bitcast i8* %17 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %18, i32 0, i32 1
  %19 = load i64, i64* %xpv_cur, align 8
  store i64 %19, i64* %len, align 8
  %20 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any2 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 0
  %21 = load i8*, i8** %sv_any2, align 8
  %22 = bitcast i8* %21 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %22, i32 0, i32 0
  %23 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %24 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %24, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %23, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %tmps, align 8
  store i8 1, i8* %multiarg, align 1
  %25 = load %struct.sv**, %struct.sv*** %mark, align 8
  %add.ptr3 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 1
  store %struct.sv** %add.ptr3, %struct.sv*** %sp, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %26 = load %struct.sv**, %struct.sv*** %sp, align 8
  %27 = load %struct.sv*, %struct.sv** %26, align 8
  store %struct.sv* %27, %struct.sv** %tmpsv, align 8
  %28 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_flags4 = getelementptr inbounds %struct.sv, %struct.sv* %28, i32 0, i32 2
  %29 = load i32, i32* %sv_flags4, align 4
  %and5 = and i32 %29, 524288
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %if.else
  br label %cond.end.20

cond.false.7:                                     ; preds = %if.else
  %30 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_flags8 = getelementptr inbounds %struct.sv, %struct.sv* %30, i32 0, i32 2
  %31 = load i32, i32* %sv_flags8, align 4
  %and9 = and i32 %31, 262144
  %cmp10 = icmp eq i32 %and9, 262144
  br i1 %cmp10, label %cond.true.11, label %cond.false.16

cond.true.11:                                     ; preds = %cond.false.7
  %32 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any12 = getelementptr inbounds %struct.sv, %struct.sv* %32, i32 0, i32 0
  %33 = load i8*, i8** %sv_any12, align 8
  %34 = bitcast i8* %33 to %struct.xpv*
  %xpv_cur13 = getelementptr inbounds %struct.xpv, %struct.xpv* %34, i32 0, i32 1
  %35 = load i64, i64* %xpv_cur13, align 8
  store i64 %35, i64* %len, align 8
  %36 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any14 = getelementptr inbounds %struct.sv, %struct.sv* %36, i32 0, i32 0
  %37 = load i8*, i8** %sv_any14, align 8
  %38 = bitcast i8* %37 to %struct.xpv*
  %xpv_pv15 = getelementptr inbounds %struct.xpv, %struct.xpv* %38, i32 0, i32 0
  %39 = load i8*, i8** %xpv_pv15, align 8
  br label %cond.end.18

cond.false.16:                                    ; preds = %cond.false.7
  %40 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %call17 = call i8* @Perl_sv_2pv_flags(%struct.sv* %40, i64* %len, i32 2)
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.16, %cond.true.11
  %cond19 = phi i8* [ %39, %cond.true.11 ], [ %call17, %cond.false.16 ]
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.end.18, %cond.true.6
  %cond21 = phi i8* [ null, %cond.true.6 ], [ %cond19, %cond.end.18 ]
  store i8* %cond21, i8** %tmps, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.20, %cond.end
  %41 = load i8*, i8** %tmps, align 8
  %tobool22 = icmp ne i8* %41, null
  br i1 %tobool22, label %lor.lhs.false, label %if.then.24

lor.lhs.false:                                    ; preds = %if.end
  %42 = load i64, i64* %len, align 8
  %tobool23 = icmp ne i64 %42, 0
  br i1 %tobool23, label %if.end.139, label %if.then.24

if.then.24:                                       ; preds = %lor.lhs.false, %if.end
  %43 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any25 = getelementptr inbounds %struct.gv, %struct.gv* %43, i32 0, i32 0
  %44 = load %struct.xpvgv*, %struct.xpvgv** %sv_any25, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %44, i32 0, i32 7
  %45 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %45, i32 0, i32 0
  %46 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  store %struct.sv* %46, %struct.sv** %error, align 8
  %47 = load %struct.sv*, %struct.sv** %error, align 8
  %sv_flags26 = getelementptr inbounds %struct.sv, %struct.sv* %47, i32 0, i32 2
  %48 = load i32, i32* %sv_flags26, align 4
  %and27 = and i32 %48, 255
  %cmp28 = icmp uge i32 %and27, 4
  br i1 %cmp28, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.24
  %49 = load %struct.sv*, %struct.sv** %error, align 8
  %call29 = call signext i8 @Perl_sv_upgrade(%struct.sv* %49, i32 4)
  %conv = sext i8 %call29 to i32
  %tobool30 = icmp ne i32 %conv, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.24
  %50 = phi i1 [ true, %if.then.24 ], [ %tobool30, %lor.rhs ]
  %lor.ext = zext i1 %50 to i32
  %51 = load i8, i8* %multiarg, align 1
  %conv31 = sext i8 %51 to i32
  %tobool32 = icmp ne i32 %conv31, 0
  br i1 %tobool32, label %cond.true.33, label %cond.false.37

cond.true.33:                                     ; preds = %lor.end
  %52 = load %struct.sv*, %struct.sv** %error, align 8
  %sv_flags34 = getelementptr inbounds %struct.sv, %struct.sv* %52, i32 0, i32 2
  %53 = load i32, i32* %sv_flags34, align 4
  %and35 = and i32 %53, 524288
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.then.41, label %if.else.116

cond.false.37:                                    ; preds = %lor.end
  %54 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_flags38 = getelementptr inbounds %struct.sv, %struct.sv* %54, i32 0, i32 2
  %55 = load i32, i32* %sv_flags38, align 4
  %and39 = and i32 %55, 524288
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.else.116

if.then.41:                                       ; preds = %cond.false.37, %cond.true.33
  %56 = load i8, i8* %multiarg, align 1
  %tobool42 = icmp ne i8 %56, 0
  br i1 %tobool42, label %if.else.48, label %if.then.43

if.then.43:                                       ; preds = %if.then.41
  %57 = load %struct.sv*, %struct.sv** %error, align 8
  %58 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %cmp44 = icmp ne %struct.sv* %57, %58
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.43
  %59 = load %struct.sv*, %struct.sv** %error, align 8
  %60 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %59, %struct.sv* %60, i32 2)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.then.43
  br label %if.end.114

if.else.48:                                       ; preds = %if.then.41
  %61 = load %struct.sv*, %struct.sv** %error, align 8
  %call49 = call i32 @Perl_sv_isobject(%struct.sv* %61)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.113

if.then.51:                                       ; preds = %if.else.48
  %62 = load %struct.sv*, %struct.sv** %error, align 8
  %sv_any52 = getelementptr inbounds %struct.sv, %struct.sv* %62, i32 0, i32 0
  %63 = load i8*, i8** %sv_any52, align 8
  %64 = bitcast i8* %63 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %64, i32 0, i32 0
  %65 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_any53 = getelementptr inbounds %struct.sv, %struct.sv* %65, i32 0, i32 0
  %66 = load i8*, i8** %sv_any53, align 8
  %67 = bitcast i8* %66 to %struct.xpvmg*
  %xmg_stash = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %67, i32 0, i32 6
  %68 = load %struct.hv*, %struct.hv** %xmg_stash, align 8
  store %struct.hv* %68, %struct.hv** %stash, align 8
  %69 = load %struct.hv*, %struct.hv** %stash, align 8
  %call54 = call %struct.gv* @Perl_gv_fetchmethod(%struct.hv* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0))
  store %struct.gv* %call54, %struct.gv** %gv, align 8
  %70 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool55 = icmp ne %struct.gv* %70, null
  br i1 %tobool55, label %if.then.56, label %if.end.112

if.then.56:                                       ; preds = %if.then.51
  %71 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv = getelementptr inbounds %struct.cop, %struct.cop* %71, i32 0, i32 10
  %72 = load %struct.gv*, %struct.gv** %cop_filegv, align 8
  %tobool57 = icmp ne %struct.gv* %72, null
  br i1 %tobool57, label %cond.true.58, label %cond.false.64

cond.true.58:                                     ; preds = %if.then.56
  %73 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv59 = getelementptr inbounds %struct.cop, %struct.cop* %73, i32 0, i32 10
  %74 = load %struct.gv*, %struct.gv** %cop_filegv59, align 8
  %sv_any60 = getelementptr inbounds %struct.gv, %struct.gv* %74, i32 0, i32 0
  %75 = load %struct.xpvgv*, %struct.xpvgv** %sv_any60, align 8
  %xgv_gp61 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %75, i32 0, i32 7
  %76 = load %struct.gp*, %struct.gp** %xgv_gp61, align 8
  %gp_sv62 = getelementptr inbounds %struct.gp, %struct.gp* %76, i32 0, i32 0
  %77 = load %struct.sv*, %struct.sv** %gp_sv62, align 8
  %tobool63 = icmp ne %struct.sv* %77, null
  br i1 %tobool63, label %cond.true.65, label %cond.false.78

cond.false.64:                                    ; preds = %if.then.56
  br i1 false, label %cond.true.65, label %cond.false.78

cond.true.65:                                     ; preds = %cond.false.64, %cond.true.58
  %78 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv66 = getelementptr inbounds %struct.cop, %struct.cop* %78, i32 0, i32 10
  %79 = load %struct.gv*, %struct.gv** %cop_filegv66, align 8
  %tobool67 = icmp ne %struct.gv* %79, null
  br i1 %tobool67, label %cond.true.68, label %cond.false.73

cond.true.68:                                     ; preds = %cond.true.65
  %80 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv69 = getelementptr inbounds %struct.cop, %struct.cop* %80, i32 0, i32 10
  %81 = load %struct.gv*, %struct.gv** %cop_filegv69, align 8
  %sv_any70 = getelementptr inbounds %struct.gv, %struct.gv* %81, i32 0, i32 0
  %82 = load %struct.xpvgv*, %struct.xpvgv** %sv_any70, align 8
  %xgv_gp71 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %82, i32 0, i32 7
  %83 = load %struct.gp*, %struct.gp** %xgv_gp71, align 8
  %gp_sv72 = getelementptr inbounds %struct.gp, %struct.gp* %83, i32 0, i32 0
  %84 = load %struct.sv*, %struct.sv** %gp_sv72, align 8
  br label %cond.end.74

cond.false.73:                                    ; preds = %cond.true.65
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.73, %cond.true.68
  %cond75 = phi %struct.sv* [ %84, %cond.true.68 ], [ null, %cond.false.73 ]
  %sv_any76 = getelementptr inbounds %struct.sv, %struct.sv* %cond75, i32 0, i32 0
  %85 = load i8*, i8** %sv_any76, align 8
  %86 = bitcast i8* %85 to %struct.xpv*
  %xpv_pv77 = getelementptr inbounds %struct.xpv, %struct.xpv* %86, i32 0, i32 0
  %87 = load i8*, i8** %xpv_pv77, align 8
  br label %cond.end.79

cond.false.78:                                    ; preds = %cond.false.64, %cond.true.58
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.78, %cond.end.74
  %cond80 = phi i8* [ %87, %cond.end.74 ], [ null, %cond.false.78 ]
  %call81 = call %struct.sv* @Perl_newSVpv(i8* %cond80, i64 0)
  %call82 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call81)
  store %struct.sv* %call82, %struct.sv** %file, align 8
  %88 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_line = getelementptr inbounds %struct.cop, %struct.cop* %88, i32 0, i32 13
  %89 = load i32, i32* %cop_line, align 4
  %conv83 = zext i32 %89 to i64
  %call84 = call %struct.sv* @Perl_newSVuv(i64 %conv83)
  %call85 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call84)
  store %struct.sv* %call85, %struct.sv** %line, align 8
  %90 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %91 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast86 = ptrtoint %struct.sv** %90 to i64
  %sub.ptr.rhs.cast87 = ptrtoint %struct.sv** %91 to i64
  %sub.ptr.sub88 = sub i64 %sub.ptr.lhs.cast86, %sub.ptr.rhs.cast87
  %sub.ptr.div89 = sdiv exact i64 %sub.ptr.sub88, 8
  %cmp90 = icmp slt i64 %sub.ptr.div89, 3
  br i1 %cmp90, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %cond.end.79
  %92 = load %struct.sv**, %struct.sv*** %sp, align 8
  %93 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call93 = call %struct.sv** @Perl_stack_grow(%struct.sv** %92, %struct.sv** %93, i32 3)
  store %struct.sv** %call93, %struct.sv*** %sp, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %cond.end.79
  %94 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %incdec.ptr95, i32** @PL_markstack_ptr, align 8
  %95 = load i32*, i32** @PL_markstack_max, align 8
  %cmp96 = icmp eq i32* %incdec.ptr95, %95
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.94
  call void @Perl_markstack_grow()
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %if.end.94
  %96 = load %struct.sv**, %struct.sv*** %sp, align 8
  %97 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast100 = ptrtoint %struct.sv** %96 to i64
  %sub.ptr.rhs.cast101 = ptrtoint %struct.sv** %97 to i64
  %sub.ptr.sub102 = sub i64 %sub.ptr.lhs.cast100, %sub.ptr.rhs.cast101
  %sub.ptr.div103 = sdiv exact i64 %sub.ptr.sub102, 8
  %conv104 = trunc i64 %sub.ptr.div103 to i32
  %98 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv104, i32* %98, align 4
  store i32 %conv104, i32* %tmp
  %99 = load i32, i32* %tmp
  %100 = load %struct.sv*, %struct.sv** %error, align 8
  %101 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr105 = getelementptr inbounds %struct.sv*, %struct.sv** %101, i32 1
  store %struct.sv** %incdec.ptr105, %struct.sv*** %sp, align 8
  store %struct.sv* %100, %struct.sv** %incdec.ptr105, align 8
  %102 = load %struct.sv*, %struct.sv** %file, align 8
  %103 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr106 = getelementptr inbounds %struct.sv*, %struct.sv** %103, i32 1
  store %struct.sv** %incdec.ptr106, %struct.sv*** %sp, align 8
  store %struct.sv* %102, %struct.sv** %incdec.ptr106, align 8
  %104 = load %struct.sv*, %struct.sv** %line, align 8
  %105 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr107 = getelementptr inbounds %struct.sv*, %struct.sv** %105, i32 1
  store %struct.sv** %incdec.ptr107, %struct.sv*** %sp, align 8
  store %struct.sv* %104, %struct.sv** %incdec.ptr107, align 8
  %106 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %106, %struct.sv*** @PL_stack_sp, align 8
  %107 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any108 = getelementptr inbounds %struct.gv, %struct.gv* %107, i32 0, i32 0
  %108 = load %struct.xpvgv*, %struct.xpvgv** %sv_any108, align 8
  %xgv_gp109 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %108, i32 0, i32 7
  %109 = load %struct.gp*, %struct.gp** %xgv_gp109, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %109, i32 0, i32 7
  %110 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  %111 = bitcast %struct.cv* %110 to %struct.sv*
  %call110 = call i32 @Perl_call_sv(%struct.sv* %111, i32 20)
  %112 = load %struct.sv*, %struct.sv** %error, align 8
  %113 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %incdec.ptr111 = getelementptr inbounds %struct.sv*, %struct.sv** %113, i32 -1
  store %struct.sv** %incdec.ptr111, %struct.sv*** @PL_stack_sp, align 8
  %114 = load %struct.sv*, %struct.sv** %113, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %112, %struct.sv* %114, i32 2)
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.99, %if.then.51
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.else.48
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.end.47
  %call115 = call %struct.op* (i8*, ...) @Perl_die(i8* null)
  store %struct.op* %call115, %struct.op** %retval
  br label %return

if.else.116:                                      ; preds = %cond.false.37, %cond.true.33
  %115 = load %struct.sv*, %struct.sv** %error, align 8
  %sv_flags117 = getelementptr inbounds %struct.sv, %struct.sv* %115, i32 0, i32 2
  %116 = load i32, i32* %sv_flags117, align 4
  %and118 = and i32 %116, 262144
  %tobool119 = icmp ne i32 %and118, 0
  br i1 %tobool119, label %land.lhs.true, label %if.end.124

land.lhs.true:                                    ; preds = %if.else.116
  %117 = load %struct.sv*, %struct.sv** %error, align 8
  %sv_any120 = getelementptr inbounds %struct.sv, %struct.sv* %117, i32 0, i32 0
  %118 = load i8*, i8** %sv_any120, align 8
  %119 = bitcast i8* %118 to %struct.xpv*
  %xpv_cur121 = getelementptr inbounds %struct.xpv, %struct.xpv* %119, i32 0, i32 1
  %120 = load i64, i64* %xpv_cur121, align 8
  %tobool122 = icmp ne i64 %120, 0
  br i1 %tobool122, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %land.lhs.true
  %121 = load %struct.sv*, %struct.sv** %error, align 8
  call void @Perl_sv_catpv(%struct.sv* %121, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.123, %land.lhs.true, %if.else.116
  %122 = load %struct.sv*, %struct.sv** %error, align 8
  store %struct.sv* %122, %struct.sv** %tmpsv, align 8
  %123 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_flags125 = getelementptr inbounds %struct.sv, %struct.sv* %123, i32 0, i32 2
  %124 = load i32, i32* %sv_flags125, align 4
  %and126 = and i32 %124, 262144
  %cmp127 = icmp eq i32 %and126, 262144
  br i1 %cmp127, label %cond.true.129, label %cond.false.134

cond.true.129:                                    ; preds = %if.end.124
  %125 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any130 = getelementptr inbounds %struct.sv, %struct.sv* %125, i32 0, i32 0
  %126 = load i8*, i8** %sv_any130, align 8
  %127 = bitcast i8* %126 to %struct.xpv*
  %xpv_cur131 = getelementptr inbounds %struct.xpv, %struct.xpv* %127, i32 0, i32 1
  %128 = load i64, i64* %xpv_cur131, align 8
  store i64 %128, i64* %len, align 8
  %129 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any132 = getelementptr inbounds %struct.sv, %struct.sv* %129, i32 0, i32 0
  %130 = load i8*, i8** %sv_any132, align 8
  %131 = bitcast i8* %130 to %struct.xpv*
  %xpv_pv133 = getelementptr inbounds %struct.xpv, %struct.xpv* %131, i32 0, i32 0
  %132 = load i8*, i8** %xpv_pv133, align 8
  br label %cond.end.136

cond.false.134:                                   ; preds = %if.end.124
  %133 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %call135 = call i8* @Perl_sv_2pv_flags(%struct.sv* %133, i64* %len, i32 2)
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.134, %cond.true.129
  %cond137 = phi i8* [ %132, %cond.true.129 ], [ %call135, %cond.false.134 ]
  store i8* %cond137, i8** %tmps, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %cond.end.136
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %lor.lhs.false
  %134 = load i8*, i8** %tmps, align 8
  %tobool140 = icmp ne i8* %134, null
  br i1 %tobool140, label %lor.lhs.false.141, label %if.then.143

lor.lhs.false.141:                                ; preds = %if.end.139
  %135 = load i64, i64* %len, align 8
  %tobool142 = icmp ne i64 %135, 0
  br i1 %tobool142, label %if.end.146, label %if.then.143

if.then.143:                                      ; preds = %lor.lhs.false.141, %if.end.139
  %call144 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i64 4)
  %call145 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call144)
  store %struct.sv* %call145, %struct.sv** %tmpsv, align 8
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.143, %lor.lhs.false.141
  %136 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %call147 = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), %struct.sv* %136)
  store %struct.op* %call147, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.146, %if.end.114
  %137 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %137
}

declare i32 @Perl_sv_isobject(%struct.sv*) #1

declare %struct.gv* @Perl_gv_fetchmethod(%struct.hv*, i8*) #1

declare %struct.sv* @Perl_newSVpv(i8*, i64) #1

declare %struct.sv* @Perl_newSVuv(i64) #1

declare void @Perl_markstack_grow() #1

declare i32 @Perl_call_sv(%struct.sv*, i32) #1

declare %struct.op* @Perl_die(i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_open() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %origmark = alloca i32, align 4
  %targ = alloca %struct.sv*, align 8
  %gv = alloca %struct.gv*, align 8
  %sv = alloca %struct.sv*, align 8
  %io = alloca %struct.io*, align 8
  %tmps = alloca i8*, align 8
  %len = alloca i64, align 8
  %mg = alloca %struct.magic*, align 8
  %ok = alloca i8, align 1
  %tmp = alloca i32, align 4
  %tmp77 = alloca %struct.sv*, align 8
  %tmp89 = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %origmark, align 4
  %6 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %6, i32 0, i32 3
  %7 = load i64, i64* %op_targ, align 8
  %8 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %8, i64 %7
  %9 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %9, %struct.sv** %targ, align 8
  %10 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.sv*, %struct.sv** %10, i32 1
  store %struct.sv** %incdec.ptr1, %struct.sv*** %mark, align 8
  %11 = load %struct.sv*, %struct.sv** %incdec.ptr1, align 8
  %12 = bitcast %struct.sv* %11 to %struct.gv*
  store %struct.gv* %12, %struct.gv** %gv, align 8
  %13 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %13, i32 0, i32 2
  %14 = load i32, i32* %sv_flags, align 4
  %and = and i32 %14, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_usym, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0))
  store %struct.op* %call, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %15 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %15, i32 0, i32 0
  %16 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %16, i32 0, i32 7
  %17 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %17, i32 0, i32 2
  %18 = load %struct.io*, %struct.io** %gp_io, align 8
  store %struct.io* %18, %struct.io** %io, align 8
  %tobool = icmp ne %struct.io* %18, null
  br i1 %tobool, label %if.then.3, label %if.end.11

if.then.3:                                        ; preds = %if.end
  %19 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any4 = getelementptr inbounds %struct.gv, %struct.gv* %19, i32 0, i32 0
  %20 = load %struct.xpvgv*, %struct.xpvgv** %sv_any4, align 8
  %xgv_gp5 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %20, i32 0, i32 7
  %21 = load %struct.gp*, %struct.gp** %xgv_gp5, align 8
  %gp_io6 = getelementptr inbounds %struct.gp, %struct.gp* %21, i32 0, i32 2
  %22 = load %struct.io*, %struct.io** %gp_io6, align 8
  %sv_any7 = getelementptr inbounds %struct.io, %struct.io* %22, i32 0, i32 0
  %23 = load %struct.xpvio*, %struct.xpvio** %sv_any7, align 8
  %xio_flags = getelementptr inbounds %struct.xpvio, %struct.xpvio* %23, i32 0, i32 22
  %24 = load i8, i8* %xio_flags, align 1
  %conv8 = sext i8 %24 to i32
  %and9 = and i32 %conv8, -17
  %conv10 = trunc i32 %and9 to i8
  store i8 %conv10, i8* %xio_flags, align 1
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.3, %if.end
  %25 = load %struct.io*, %struct.io** %io, align 8
  %tobool12 = icmp ne %struct.io* %25, null
  br i1 %tobool12, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %if.end.11
  %26 = load %struct.io*, %struct.io** %io, align 8
  %27 = bitcast %struct.io* %26 to %struct.sv*
  %sv_flags13 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 2
  %28 = load i32, i32* %sv_flags13, align 4
  %and14 = and i32 %28, 32768
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %29 = load %struct.io*, %struct.io** %io, align 8
  %30 = bitcast %struct.io* %29 to %struct.sv*
  %call16 = call %struct.magic* @Perl_mg_find(%struct.sv* %30, i32 113)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.magic* [ %call16, %cond.true ], [ null, %cond.false ]
  store %struct.magic* %cond, %struct.magic** %mg, align 8
  %tobool17 = icmp ne %struct.magic* %cond, null
  br i1 %tobool17, label %if.then.18, label %if.end.39

if.then.18:                                       ; preds = %cond.end
  %31 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %31, i32 0, i32 5
  %32 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool19 = icmp ne %struct.sv* %32, null
  br i1 %tobool19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.then.18
  %33 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj21 = getelementptr inbounds %struct.magic, %struct.magic* %33, i32 0, i32 5
  %34 = load %struct.sv*, %struct.sv** %mg_obj21, align 8
  br label %cond.end.25

cond.false.22:                                    ; preds = %if.then.18
  %35 = load %struct.io*, %struct.io** %io, align 8
  %36 = bitcast %struct.io* %35 to %struct.sv*
  %call23 = call %struct.sv* @Perl_newRV(%struct.sv* %36)
  %call24 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call23)
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.22, %cond.true.20
  %cond26 = phi %struct.sv* [ %34, %cond.true.20 ], [ %call24, %cond.false.22 ]
  %37 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr27 = getelementptr inbounds %struct.sv*, %struct.sv** %37, i32 -1
  store %struct.sv** %incdec.ptr27, %struct.sv*** %mark, align 8
  store %struct.sv* %cond26, %struct.sv** %37, align 8
  %38 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr28 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %incdec.ptr28, i32** @PL_markstack_ptr, align 8
  %39 = load i32*, i32** @PL_markstack_max, align 8
  %cmp29 = icmp eq i32* %incdec.ptr28, %39
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %cond.end.25
  call void @Perl_markstack_grow()
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %cond.end.25
  %40 = load %struct.sv**, %struct.sv*** %mark, align 8
  %41 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast33 = ptrtoint %struct.sv** %40 to i64
  %sub.ptr.rhs.cast34 = ptrtoint %struct.sv** %41 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %sub.ptr.div36 = sdiv exact i64 %sub.ptr.sub35, 8
  %conv37 = trunc i64 %sub.ptr.div36 to i32
  %42 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv37, i32* %42, align 4
  store i32 %conv37, i32* %tmp
  %43 = load i32, i32* %tmp
  %44 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %44, %struct.sv*** @PL_stack_sp, align 8
  call void @Perl_push_scope()
  %call38 = call i32 @Perl_call_method(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 0)
  call void @Perl_pop_scope()
  %45 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %45, %struct.sv*** %sp, align 8
  %46 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %46, %struct.sv*** @PL_stack_sp, align 8
  %47 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %47, i32 0, i32 0
  %48 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %48, %struct.op** %retval
  br label %return

if.end.39:                                        ; preds = %cond.end, %if.end.11
  %49 = load %struct.sv**, %struct.sv*** %mark, align 8
  %50 = load %struct.sv**, %struct.sv*** %sp, align 8
  %cmp40 = icmp ult %struct.sv** %49, %50
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end.39
  %51 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr43 = getelementptr inbounds %struct.sv*, %struct.sv** %51, i32 1
  store %struct.sv** %incdec.ptr43, %struct.sv*** %mark, align 8
  %52 = load %struct.sv*, %struct.sv** %incdec.ptr43, align 8
  store %struct.sv* %52, %struct.sv** %sv, align 8
  br label %if.end.46

if.else:                                          ; preds = %if.end.39
  %53 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any44 = getelementptr inbounds %struct.gv, %struct.gv* %53, i32 0, i32 0
  %54 = load %struct.xpvgv*, %struct.xpvgv** %sv_any44, align 8
  %xgv_gp45 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %54, i32 0, i32 7
  %55 = load %struct.gp*, %struct.gp** %xgv_gp45, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %55, i32 0, i32 0
  %56 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  store %struct.sv* %56, %struct.sv** %sv, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.42
  %57 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags47 = getelementptr inbounds %struct.sv, %struct.sv* %57, i32 0, i32 2
  %58 = load i32, i32* %sv_flags47, align 4
  %and48 = and i32 %58, 262144
  %cmp49 = icmp eq i32 %and48, 262144
  br i1 %cmp49, label %cond.true.51, label %cond.false.54

cond.true.51:                                     ; preds = %if.end.46
  %59 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any52 = getelementptr inbounds %struct.sv, %struct.sv* %59, i32 0, i32 0
  %60 = load i8*, i8** %sv_any52, align 8
  %61 = bitcast i8* %60 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %61, i32 0, i32 1
  %62 = load i64, i64* %xpv_cur, align 8
  store i64 %62, i64* %len, align 8
  %63 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any53 = getelementptr inbounds %struct.sv, %struct.sv* %63, i32 0, i32 0
  %64 = load i8*, i8** %sv_any53, align 8
  %65 = bitcast i8* %64 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %65, i32 0, i32 0
  %66 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.56

cond.false.54:                                    ; preds = %if.end.46
  %67 = load %struct.sv*, %struct.sv** %sv, align 8
  %call55 = call i8* @Perl_sv_2pv_flags(%struct.sv* %67, i64* %len, i32 2)
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.54, %cond.true.51
  %cond57 = phi i8* [ %66, %cond.true.51 ], [ %call55, %cond.false.54 ]
  store i8* %cond57, i8** %tmps, align 8
  %68 = load %struct.gv*, %struct.gv** %gv, align 8
  %69 = load i8*, i8** %tmps, align 8
  %70 = load i64, i64* %len, align 8
  %conv58 = trunc i64 %70 to i32
  %71 = load %struct.sv**, %struct.sv*** %mark, align 8
  %add.ptr59 = getelementptr inbounds %struct.sv*, %struct.sv** %71, i64 1
  %72 = load %struct.sv**, %struct.sv*** %sp, align 8
  %73 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast60 = ptrtoint %struct.sv** %72 to i64
  %sub.ptr.rhs.cast61 = ptrtoint %struct.sv** %73 to i64
  %sub.ptr.sub62 = sub i64 %sub.ptr.lhs.cast60, %sub.ptr.rhs.cast61
  %sub.ptr.div63 = sdiv exact i64 %sub.ptr.sub62, 8
  %conv64 = trunc i64 %sub.ptr.div63 to i32
  %call65 = call signext i8 @Perl_do_openn(%struct.gv* %68, i8* %69, i32 %conv58, i32 0, i32 0, i32 0, %struct._PerlIO** null, %struct.sv** %add.ptr59, i32 %conv64)
  store i8 %call65, i8* %ok, align 1
  %74 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %75 = load i32, i32* %origmark, align 4
  %idx.ext66 = sext i32 %75 to i64
  %add.ptr67 = getelementptr inbounds %struct.sv*, %struct.sv** %74, i64 %idx.ext66
  store %struct.sv** %add.ptr67, %struct.sv*** %sp, align 8
  %76 = load i8, i8* %ok, align 1
  %tobool68 = icmp ne i8 %76, 0
  br i1 %tobool68, label %if.then.69, label %if.else.79

if.then.69:                                       ; preds = %cond.end.56
  %77 = load %struct.sv*, %struct.sv** %targ, align 8
  %78 = load i32, i32* @PL_forkprocess, align 4
  %conv70 = sext i32 %78 to i64
  call void @Perl_sv_setiv(%struct.sv* %77, i64 %conv70)
  %79 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags71 = getelementptr inbounds %struct.sv, %struct.sv* %79, i32 0, i32 2
  %80 = load i32, i32* %sv_flags71, align 4
  %and72 = and i32 %80, 16384
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %if.then.69
  %81 = load %struct.sv*, %struct.sv** %targ, align 8
  %call75 = call i32 @Perl_mg_set(%struct.sv* %81)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %if.then.69
  %82 = load %struct.sv*, %struct.sv** %targ, align 8
  %83 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr78 = getelementptr inbounds %struct.sv*, %struct.sv** %83, i32 1
  store %struct.sv** %incdec.ptr78, %struct.sv*** %sp, align 8
  store %struct.sv* %82, %struct.sv** %incdec.ptr78, align 8
  store %struct.sv* %82, %struct.sv** %tmp77
  %84 = load %struct.sv*, %struct.sv** %tmp77
  br label %if.end.95

if.else.79:                                       ; preds = %cond.end.56
  %85 = load i32, i32* @PL_forkprocess, align 4
  %cmp80 = icmp eq i32 %85, 0
  br i1 %cmp80, label %if.then.82, label %if.else.91

if.then.82:                                       ; preds = %if.else.79
  %86 = load %struct.sv*, %struct.sv** %targ, align 8
  call void @Perl_sv_setiv(%struct.sv* %86, i64 0)
  %87 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags83 = getelementptr inbounds %struct.sv, %struct.sv* %87, i32 0, i32 2
  %88 = load i32, i32* %sv_flags83, align 4
  %and84 = and i32 %88, 16384
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.then.82
  %89 = load %struct.sv*, %struct.sv** %targ, align 8
  %call87 = call i32 @Perl_mg_set(%struct.sv* %89)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %if.then.82
  %90 = load %struct.sv*, %struct.sv** %targ, align 8
  %91 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr90 = getelementptr inbounds %struct.sv*, %struct.sv** %91, i32 1
  store %struct.sv** %incdec.ptr90, %struct.sv*** %sp, align 8
  store %struct.sv* %90, %struct.sv** %incdec.ptr90, align 8
  store %struct.sv* %90, %struct.sv** %tmp89
  %92 = load %struct.sv*, %struct.sv** %tmp89
  br label %if.end.94

if.else.91:                                       ; preds = %if.else.79
  %93 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr92 = getelementptr inbounds %struct.sv*, %struct.sv** %93, i32 1
  store %struct.sv** %incdec.ptr92, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr92, align 8
  %94 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %94, %struct.sv*** @PL_stack_sp, align 8
  %95 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next93 = getelementptr inbounds %struct.op, %struct.op* %95, i32 0, i32 0
  %96 = load %struct.op*, %struct.op** %op_next93, align 8
  store %struct.op* %96, %struct.op** %retval
  br label %return

if.end.94:                                        ; preds = %if.end.88
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.76
  %97 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %97, %struct.sv*** @PL_stack_sp, align 8
  %98 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next96 = getelementptr inbounds %struct.op, %struct.op* %98, i32 0, i32 0
  %99 = load %struct.op*, %struct.op** %op_next96, align 8
  store %struct.op* %99, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.95, %if.else.91, %if.end.32, %if.then
  %100 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %100
}

declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #1

declare %struct.sv* @Perl_newRV(%struct.sv*) #1

declare i32 @Perl_call_method(i8*, i32) #1

declare signext i8 @Perl_do_openn(%struct.gv*, i8*, i32, i32, i32, i32, %struct._PerlIO**, %struct.sv**, i32) #1

declare void @Perl_sv_setiv(%struct.sv*, i64) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_close() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %gv = alloca %struct.gv*, align 8
  %io = alloca %struct.io*, align 8
  %mg = alloca %struct.magic*, align 8
  %tmp = alloca i32, align 4
  %tmp37 = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 7
  %2 = load i8, i8* %op_private, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 15
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  store %struct.gv* %3, %struct.gv** %gv, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %4, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %5 = load %struct.sv*, %struct.sv** %4, align 8
  %6 = bitcast %struct.sv* %5 to %struct.gv*
  store %struct.gv* %6, %struct.gv** %gv, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool = icmp ne %struct.gv* %7, null
  br i1 %tobool, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool2 = icmp ne %struct.gv* %8, null
  br i1 %tobool2, label %land.lhs.true.3, label %cond.false

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %9 = load %struct.gv*, %struct.gv** %gv, align 8
  %10 = bitcast %struct.gv* %9 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 2
  %11 = load i32, i32* %sv_flags, align 4
  %and4 = and i32 %11, 255
  %cmp5 = icmp eq i32 %and4, 13
  br i1 %cmp5, label %land.lhs.true.7, label %cond.false

land.lhs.true.7:                                  ; preds = %land.lhs.true.3
  %12 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %12, i32 0, i32 0
  %13 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %13, i32 0, i32 7
  %14 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool8 = icmp ne %struct.gp* %14, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.7
  %15 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any9 = getelementptr inbounds %struct.gv, %struct.gv* %15, i32 0, i32 0
  %16 = load %struct.xpvgv*, %struct.xpvgv** %sv_any9, align 8
  %xgv_gp10 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %16, i32 0, i32 7
  %17 = load %struct.gp*, %struct.gp** %xgv_gp10, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %17, i32 0, i32 2
  %18 = load %struct.io*, %struct.io** %gp_io, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.7, %land.lhs.true.3, %land.lhs.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.io* [ %18, %cond.true ], [ null, %cond.false ]
  store %struct.io* %cond, %struct.io** %io, align 8
  %tobool11 = icmp ne %struct.io* %cond, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.48

land.lhs.true.12:                                 ; preds = %cond.end
  %19 = load %struct.io*, %struct.io** %io, align 8
  %20 = bitcast %struct.io* %19 to %struct.sv*
  %sv_flags13 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 2
  %21 = load i32, i32* %sv_flags13, align 4
  %and14 = and i32 %21, 32768
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %land.lhs.true.12
  %22 = load %struct.io*, %struct.io** %io, align 8
  %23 = bitcast %struct.io* %22 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %23, i32 113)
  br label %cond.end.18

cond.false.17:                                    ; preds = %land.lhs.true.12
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.16
  %cond19 = phi %struct.magic* [ %call, %cond.true.16 ], [ null, %cond.false.17 ]
  store %struct.magic* %cond19, %struct.magic** %mg, align 8
  %tobool20 = icmp ne %struct.magic* %cond19, null
  br i1 %tobool20, label %if.then.21, label %if.end.48

if.then.21:                                       ; preds = %cond.end.18
  %24 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr22 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %incdec.ptr22, i32** @PL_markstack_ptr, align 8
  %25 = load i32*, i32** @PL_markstack_max, align 8
  %cmp23 = icmp eq i32* %incdec.ptr22, %25
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.21
  call void @Perl_markstack_grow()
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.then.21
  %26 = load %struct.sv**, %struct.sv*** %sp, align 8
  %27 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %26 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv27 = trunc i64 %sub.ptr.div to i32
  %28 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv27, i32* %28, align 4
  store i32 %conv27, i32* %tmp
  %29 = load i32, i32* %tmp
  %30 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %31 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast28 = ptrtoint %struct.sv** %30 to i64
  %sub.ptr.rhs.cast29 = ptrtoint %struct.sv** %31 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %sub.ptr.div31 = sdiv exact i64 %sub.ptr.sub30, 8
  %cmp32 = icmp slt i64 %sub.ptr.div31, 1
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.26
  %32 = load %struct.sv**, %struct.sv*** %sp, align 8
  %33 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call35 = call %struct.sv** @Perl_stack_grow(%struct.sv** %32, %struct.sv** %33, i32 1)
  store %struct.sv** %call35, %struct.sv*** %sp, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.26
  %34 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %34, i32 0, i32 5
  %35 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool38 = icmp ne %struct.sv* %35, null
  br i1 %tobool38, label %cond.true.39, label %cond.false.41

cond.true.39:                                     ; preds = %if.end.36
  %36 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj40 = getelementptr inbounds %struct.magic, %struct.magic* %36, i32 0, i32 5
  %37 = load %struct.sv*, %struct.sv** %mg_obj40, align 8
  br label %cond.end.44

cond.false.41:                                    ; preds = %if.end.36
  %38 = load %struct.io*, %struct.io** %io, align 8
  %39 = bitcast %struct.io* %38 to %struct.sv*
  %call42 = call %struct.sv* @Perl_newRV(%struct.sv* %39)
  %call43 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call42)
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.41, %cond.true.39
  %cond45 = phi %struct.sv* [ %37, %cond.true.39 ], [ %call43, %cond.false.41 ]
  %40 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr46 = getelementptr inbounds %struct.sv*, %struct.sv** %40, i32 1
  store %struct.sv** %incdec.ptr46, %struct.sv*** %sp, align 8
  store %struct.sv* %cond45, %struct.sv** %incdec.ptr46, align 8
  store %struct.sv* %cond45, %struct.sv** %tmp37
  %41 = load %struct.sv*, %struct.sv** %tmp37
  %42 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %42, %struct.sv*** @PL_stack_sp, align 8
  call void @Perl_push_scope()
  %call47 = call i32 @Perl_call_method(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 0)
  call void @Perl_pop_scope()
  %43 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %43, %struct.sv*** %sp, align 8
  %44 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %44, %struct.sv*** @PL_stack_sp, align 8
  %45 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %45, i32 0, i32 0
  %46 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %46, %struct.op** %retval
  br label %return

if.end.48:                                        ; preds = %cond.end.18, %cond.end, %if.end
  %47 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %48 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast49 = ptrtoint %struct.sv** %47 to i64
  %sub.ptr.rhs.cast50 = ptrtoint %struct.sv** %48 to i64
  %sub.ptr.sub51 = sub i64 %sub.ptr.lhs.cast49, %sub.ptr.rhs.cast50
  %sub.ptr.div52 = sdiv exact i64 %sub.ptr.sub51, 8
  %cmp53 = icmp slt i64 %sub.ptr.div52, 1
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.48
  %49 = load %struct.sv**, %struct.sv*** %sp, align 8
  %50 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call56 = call %struct.sv** @Perl_stack_grow(%struct.sv** %49, %struct.sv** %50, i32 1)
  store %struct.sv** %call56, %struct.sv*** %sp, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.end.48
  %51 = load %struct.gv*, %struct.gv** %gv, align 8
  %call58 = call signext i8 @Perl_do_close(%struct.gv* %51, i8 signext 1)
  %conv59 = sext i8 %call58 to i32
  %tobool60 = icmp ne i32 %conv59, 0
  %cond61 = select i1 %tobool60, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  %52 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr62 = getelementptr inbounds %struct.sv*, %struct.sv** %52, i32 1
  store %struct.sv** %incdec.ptr62, %struct.sv*** %sp, align 8
  store %struct.sv* %cond61, %struct.sv** %incdec.ptr62, align 8
  %53 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %53, %struct.sv*** @PL_stack_sp, align 8
  %54 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next63 = getelementptr inbounds %struct.op, %struct.op* %54, i32 0, i32 0
  %55 = load %struct.op*, %struct.op** %op_next63, align 8
  store %struct.op* %55, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.57, %cond.end.44
  %56 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %56
}

declare signext i8 @Perl_do_close(%struct.gv*, i8 signext) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_pipe_op() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_fileno() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %gv = alloca %struct.gv*, align 8
  %io = alloca %struct.io*, align 8
  %fp = alloca %struct._PerlIO**, align 8
  %mg = alloca %struct.magic*, align 8
  %tmp = alloca i32, align 4
  %tmp38 = alloca %struct.sv*, align 8
  %tmp85 = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 3
  %2 = load i64, i64* %op_targ, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %4, %struct.sv** %targ, align 8
  %5 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %5, i32 0, i32 7
  %6 = load i8, i8* %op_private, align 1
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 15
  %cmp = icmp slt i32 %and, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %7, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %8, %struct.sv*** @PL_stack_sp, align 8
  %9 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %9, i32 0, i32 0
  %10 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %10, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr2 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i32 -1
  store %struct.sv** %incdec.ptr2, %struct.sv*** %sp, align 8
  %12 = load %struct.sv*, %struct.sv** %11, align 8
  %13 = bitcast %struct.sv* %12 to %struct.gv*
  store %struct.gv* %13, %struct.gv** %gv, align 8
  %14 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool = icmp ne %struct.gv* %14, null
  br i1 %tobool, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.end
  %15 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool3 = icmp ne %struct.gv* %15, null
  br i1 %tobool3, label %land.lhs.true.4, label %cond.false

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %16 = load %struct.gv*, %struct.gv** %gv, align 8
  %17 = bitcast %struct.gv* %16 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 2
  %18 = load i32, i32* %sv_flags, align 4
  %and5 = and i32 %18, 255
  %cmp6 = icmp eq i32 %and5, 13
  br i1 %cmp6, label %land.lhs.true.8, label %cond.false

land.lhs.true.8:                                  ; preds = %land.lhs.true.4
  %19 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %19, i32 0, i32 0
  %20 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %20, i32 0, i32 7
  %21 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool9 = icmp ne %struct.gp* %21, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.8
  %22 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any10 = getelementptr inbounds %struct.gv, %struct.gv* %22, i32 0, i32 0
  %23 = load %struct.xpvgv*, %struct.xpvgv** %sv_any10, align 8
  %xgv_gp11 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %23, i32 0, i32 7
  %24 = load %struct.gp*, %struct.gp** %xgv_gp11, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %24, i32 0, i32 2
  %25 = load %struct.io*, %struct.io** %gp_io, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.8, %land.lhs.true.4, %land.lhs.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.io* [ %25, %cond.true ], [ null, %cond.false ]
  store %struct.io* %cond, %struct.io** %io, align 8
  %tobool12 = icmp ne %struct.io* %cond, null
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.50

land.lhs.true.13:                                 ; preds = %cond.end
  %26 = load %struct.io*, %struct.io** %io, align 8
  %27 = bitcast %struct.io* %26 to %struct.sv*
  %sv_flags14 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 2
  %28 = load i32, i32* %sv_flags14, align 4
  %and15 = and i32 %28, 32768
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %land.lhs.true.13
  %29 = load %struct.io*, %struct.io** %io, align 8
  %30 = bitcast %struct.io* %29 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %30, i32 113)
  br label %cond.end.19

cond.false.18:                                    ; preds = %land.lhs.true.13
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.true.17
  %cond20 = phi %struct.magic* [ %call, %cond.true.17 ], [ null, %cond.false.18 ]
  store %struct.magic* %cond20, %struct.magic** %mg, align 8
  %tobool21 = icmp ne %struct.magic* %cond20, null
  br i1 %tobool21, label %if.then.22, label %if.end.50

if.then.22:                                       ; preds = %cond.end.19
  %31 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr23 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %incdec.ptr23, i32** @PL_markstack_ptr, align 8
  %32 = load i32*, i32** @PL_markstack_max, align 8
  %cmp24 = icmp eq i32* %incdec.ptr23, %32
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.22
  call void @Perl_markstack_grow()
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.then.22
  %33 = load %struct.sv**, %struct.sv*** %sp, align 8
  %34 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %33 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv28 = trunc i64 %sub.ptr.div to i32
  %35 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv28, i32* %35, align 4
  store i32 %conv28, i32* %tmp
  %36 = load i32, i32* %tmp
  %37 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %38 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast29 = ptrtoint %struct.sv** %37 to i64
  %sub.ptr.rhs.cast30 = ptrtoint %struct.sv** %38 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %sub.ptr.div32 = sdiv exact i64 %sub.ptr.sub31, 8
  %cmp33 = icmp slt i64 %sub.ptr.div32, 1
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.27
  %39 = load %struct.sv**, %struct.sv*** %sp, align 8
  %40 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call36 = call %struct.sv** @Perl_stack_grow(%struct.sv** %39, %struct.sv** %40, i32 1)
  store %struct.sv** %call36, %struct.sv*** %sp, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.27
  %41 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %41, i32 0, i32 5
  %42 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool39 = icmp ne %struct.sv* %42, null
  br i1 %tobool39, label %cond.true.40, label %cond.false.42

cond.true.40:                                     ; preds = %if.end.37
  %43 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj41 = getelementptr inbounds %struct.magic, %struct.magic* %43, i32 0, i32 5
  %44 = load %struct.sv*, %struct.sv** %mg_obj41, align 8
  br label %cond.end.45

cond.false.42:                                    ; preds = %if.end.37
  %45 = load %struct.io*, %struct.io** %io, align 8
  %46 = bitcast %struct.io* %45 to %struct.sv*
  %call43 = call %struct.sv* @Perl_newRV(%struct.sv* %46)
  %call44 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call43)
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.42, %cond.true.40
  %cond46 = phi %struct.sv* [ %44, %cond.true.40 ], [ %call44, %cond.false.42 ]
  %47 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr47 = getelementptr inbounds %struct.sv*, %struct.sv** %47, i32 1
  store %struct.sv** %incdec.ptr47, %struct.sv*** %sp, align 8
  store %struct.sv* %cond46, %struct.sv** %incdec.ptr47, align 8
  store %struct.sv* %cond46, %struct.sv** %tmp38
  %48 = load %struct.sv*, %struct.sv** %tmp38
  %49 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %49, %struct.sv*** @PL_stack_sp, align 8
  call void @Perl_push_scope()
  %call48 = call i32 @Perl_call_method(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 0)
  call void @Perl_pop_scope()
  %50 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %50, %struct.sv*** %sp, align 8
  %51 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %51, %struct.sv*** @PL_stack_sp, align 8
  %52 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next49 = getelementptr inbounds %struct.op, %struct.op* %52, i32 0, i32 0
  %53 = load %struct.op*, %struct.op** %op_next49, align 8
  store %struct.op* %53, %struct.op** %retval
  br label %return

if.end.50:                                        ; preds = %cond.end.19, %cond.end, %if.end
  %54 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool51 = icmp ne %struct.gv* %54, null
  br i1 %tobool51, label %lor.lhs.false, label %if.then.73

lor.lhs.false:                                    ; preds = %if.end.50
  %55 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool52 = icmp ne %struct.gv* %55, null
  br i1 %tobool52, label %land.lhs.true.53, label %cond.false.66

land.lhs.true.53:                                 ; preds = %lor.lhs.false
  %56 = load %struct.gv*, %struct.gv** %gv, align 8
  %57 = bitcast %struct.gv* %56 to %struct.sv*
  %sv_flags54 = getelementptr inbounds %struct.sv, %struct.sv* %57, i32 0, i32 2
  %58 = load i32, i32* %sv_flags54, align 4
  %and55 = and i32 %58, 255
  %cmp56 = icmp eq i32 %and55, 13
  br i1 %cmp56, label %land.lhs.true.58, label %cond.false.66

land.lhs.true.58:                                 ; preds = %land.lhs.true.53
  %59 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any59 = getelementptr inbounds %struct.gv, %struct.gv* %59, i32 0, i32 0
  %60 = load %struct.xpvgv*, %struct.xpvgv** %sv_any59, align 8
  %xgv_gp60 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %60, i32 0, i32 7
  %61 = load %struct.gp*, %struct.gp** %xgv_gp60, align 8
  %tobool61 = icmp ne %struct.gp* %61, null
  br i1 %tobool61, label %cond.true.62, label %cond.false.66

cond.true.62:                                     ; preds = %land.lhs.true.58
  %62 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any63 = getelementptr inbounds %struct.gv, %struct.gv* %62, i32 0, i32 0
  %63 = load %struct.xpvgv*, %struct.xpvgv** %sv_any63, align 8
  %xgv_gp64 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %63, i32 0, i32 7
  %64 = load %struct.gp*, %struct.gp** %xgv_gp64, align 8
  %gp_io65 = getelementptr inbounds %struct.gp, %struct.gp* %64, i32 0, i32 2
  %65 = load %struct.io*, %struct.io** %gp_io65, align 8
  br label %cond.end.67

cond.false.66:                                    ; preds = %land.lhs.true.58, %land.lhs.true.53, %lor.lhs.false
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.62
  %cond68 = phi %struct.io* [ %65, %cond.true.62 ], [ null, %cond.false.66 ]
  store %struct.io* %cond68, %struct.io** %io, align 8
  %tobool69 = icmp ne %struct.io* %cond68, null
  br i1 %tobool69, label %lor.lhs.false.70, label %if.then.73

lor.lhs.false.70:                                 ; preds = %cond.end.67
  %66 = load %struct.io*, %struct.io** %io, align 8
  %sv_any71 = getelementptr inbounds %struct.io, %struct.io* %66, i32 0, i32 0
  %67 = load %struct.xpvio*, %struct.xpvio** %sv_any71, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %67, i32 0, i32 7
  %68 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  store %struct._PerlIO** %68, %struct._PerlIO*** %fp, align 8
  %tobool72 = icmp ne %struct._PerlIO** %68, null
  br i1 %tobool72, label %if.end.76, label %if.then.73

if.then.73:                                       ; preds = %lor.lhs.false.70, %cond.end.67, %if.end.50
  %69 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr74 = getelementptr inbounds %struct.sv*, %struct.sv** %69, i32 1
  store %struct.sv** %incdec.ptr74, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr74, align 8
  %70 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %70, %struct.sv*** @PL_stack_sp, align 8
  %71 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next75 = getelementptr inbounds %struct.op, %struct.op* %71, i32 0, i32 0
  %72 = load %struct.op*, %struct.op** %op_next75, align 8
  store %struct.op* %72, %struct.op** %retval
  br label %return

if.end.76:                                        ; preds = %lor.lhs.false.70
  %73 = load %struct.sv*, %struct.sv** %targ, align 8
  %74 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call77 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %74)
  %conv78 = sext i32 %call77 to i64
  call void @Perl_sv_setiv(%struct.sv* %73, i64 %conv78)
  %75 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags79 = getelementptr inbounds %struct.sv, %struct.sv* %75, i32 0, i32 2
  %76 = load i32, i32* %sv_flags79, align 4
  %and80 = and i32 %76, 16384
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.end.76
  %77 = load %struct.sv*, %struct.sv** %targ, align 8
  %call83 = call i32 @Perl_mg_set(%struct.sv* %77)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %if.end.76
  %78 = load %struct.sv*, %struct.sv** %targ, align 8
  %79 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr86 = getelementptr inbounds %struct.sv*, %struct.sv** %79, i32 1
  store %struct.sv** %incdec.ptr86, %struct.sv*** %sp, align 8
  store %struct.sv* %78, %struct.sv** %incdec.ptr86, align 8
  store %struct.sv* %78, %struct.sv** %tmp85
  %80 = load %struct.sv*, %struct.sv** %tmp85
  %81 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %81, %struct.sv*** @PL_stack_sp, align 8
  %82 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next87 = getelementptr inbounds %struct.op, %struct.op* %82, i32 0, i32 0
  %83 = load %struct.op*, %struct.op** %op_next87, align 8
  store %struct.op* %83, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.84, %if.then.73, %cond.end.45, %if.then
  %84 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %84
}

declare i32 @Perl_PerlIO_fileno(%struct._PerlIO**) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_umask() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %tmp = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 3
  %2 = load i64, i64* %op_targ, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %4, %struct.sv** %targ, align 8
  %5 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %5, i32 0, i32 7
  %6 = load i8, i8* %op_private, align 1
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 15
  %cmp = icmp sge i32 %and, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %7, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %8 = load %struct.sv*, %struct.sv** %7, align 8
  store %struct.sv* %8, %struct.sv** @PL_Sv, align 8
  %9 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 2
  %10 = load i32, i32* %sv_flags, align 4
  %and2 = and i32 %10, 65536
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %11 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 0
  %12 = load i8*, i8** %sv_any, align 8
  %13 = bitcast i8* %12 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %13, i32 0, i32 3
  %14 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %15 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %15)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %call, %cond.false ]
  %and3 = and i64 %cond, 448
  %tobool4 = icmp ne i64 %and3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %call5 = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0))
  store %struct.op* %call5, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %cond.end, %entry
  %16 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %17 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %16 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp6 = icmp slt i64 %sub.ptr.div, 1
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %18 = load %struct.sv**, %struct.sv*** %sp, align 8
  %19 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call9 = call %struct.sv** @Perl_stack_grow(%struct.sv** %18, %struct.sv** %19, i32 1)
  store %struct.sv** %call9, %struct.sv*** %sp, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  %20 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr11 = getelementptr inbounds %struct.sv*, %struct.sv** %20, i32 1
  store %struct.sv** %incdec.ptr11, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr11, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %tmp
  %21 = load %struct.sv*, %struct.sv** %tmp
  %22 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %22, %struct.sv*** @PL_stack_sp, align 8
  %23 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %23, i32 0, i32 0
  %24 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %24, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  %25 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %25
}

declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_binmode() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %gv = alloca %struct.gv*, align 8
  %io = alloca %struct.io*, align 8
  %fp = alloca %struct._PerlIO**, align 8
  %mg = alloca %struct.magic*, align 8
  %discp = alloca %struct.sv*, align 8
  %tmp = alloca i32, align 4
  %tmp46 = alloca %struct.sv*, align 8
  %tmp67 = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  store %struct.sv* null, %struct.sv** %discp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 7
  %2 = load i8, i8* %op_private, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 15
  %cmp = icmp slt i32 %and, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %3, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %4 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %4, %struct.sv*** @PL_stack_sp, align 8
  %5 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %5, i32 0, i32 0
  %6 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %6, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private2 = getelementptr inbounds %struct.op, %struct.op* %7, i32 0, i32 7
  %8 = load i8, i8* %op_private2, align 1
  %conv3 = zext i8 %8 to i32
  %and4 = and i32 %conv3, 15
  %cmp5 = icmp sgt i32 %and4, 1
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %9 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr8 = getelementptr inbounds %struct.sv*, %struct.sv** %9, i32 -1
  store %struct.sv** %incdec.ptr8, %struct.sv*** %sp, align 8
  %10 = load %struct.sv*, %struct.sv** %9, align 8
  store %struct.sv* %10, %struct.sv** %discp, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr10 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i32 -1
  store %struct.sv** %incdec.ptr10, %struct.sv*** %sp, align 8
  %12 = load %struct.sv*, %struct.sv** %11, align 8
  %13 = bitcast %struct.sv* %12 to %struct.gv*
  store %struct.gv* %13, %struct.gv** %gv, align 8
  %14 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool = icmp ne %struct.gv* %14, null
  br i1 %tobool, label %land.lhs.true, label %if.end.72

land.lhs.true:                                    ; preds = %if.end.9
  %15 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool11 = icmp ne %struct.gv* %15, null
  br i1 %tobool11, label %land.lhs.true.12, label %cond.false

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %16 = load %struct.gv*, %struct.gv** %gv, align 8
  %17 = bitcast %struct.gv* %16 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 2
  %18 = load i32, i32* %sv_flags, align 4
  %and13 = and i32 %18, 255
  %cmp14 = icmp eq i32 %and13, 13
  br i1 %cmp14, label %land.lhs.true.16, label %cond.false

land.lhs.true.16:                                 ; preds = %land.lhs.true.12
  %19 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %19, i32 0, i32 0
  %20 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %20, i32 0, i32 7
  %21 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool17 = icmp ne %struct.gp* %21, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.16
  %22 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any18 = getelementptr inbounds %struct.gv, %struct.gv* %22, i32 0, i32 0
  %23 = load %struct.xpvgv*, %struct.xpvgv** %sv_any18, align 8
  %xgv_gp19 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %23, i32 0, i32 7
  %24 = load %struct.gp*, %struct.gp** %xgv_gp19, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %24, i32 0, i32 2
  %25 = load %struct.io*, %struct.io** %gp_io, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.16, %land.lhs.true.12, %land.lhs.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.io* [ %25, %cond.true ], [ null, %cond.false ]
  store %struct.io* %cond, %struct.io** %io, align 8
  %tobool20 = icmp ne %struct.io* %cond, null
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.72

land.lhs.true.21:                                 ; preds = %cond.end
  %26 = load %struct.io*, %struct.io** %io, align 8
  %27 = bitcast %struct.io* %26 to %struct.sv*
  %sv_flags22 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 2
  %28 = load i32, i32* %sv_flags22, align 4
  %and23 = and i32 %28, 32768
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %land.lhs.true.21
  %29 = load %struct.io*, %struct.io** %io, align 8
  %30 = bitcast %struct.io* %29 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %30, i32 113)
  br label %cond.end.27

cond.false.26:                                    ; preds = %land.lhs.true.21
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.25
  %cond28 = phi %struct.magic* [ %call, %cond.true.25 ], [ null, %cond.false.26 ]
  store %struct.magic* %cond28, %struct.magic** %mg, align 8
  %tobool29 = icmp ne %struct.magic* %cond28, null
  br i1 %tobool29, label %if.then.30, label %if.end.72

if.then.30:                                       ; preds = %cond.end.27
  %31 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr31 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %incdec.ptr31, i32** @PL_markstack_ptr, align 8
  %32 = load i32*, i32** @PL_markstack_max, align 8
  %cmp32 = icmp eq i32* %incdec.ptr31, %32
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.30
  call void @Perl_markstack_grow()
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.then.30
  %33 = load %struct.sv**, %struct.sv*** %sp, align 8
  %34 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %33 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv36 = trunc i64 %sub.ptr.div to i32
  %35 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv36, i32* %35, align 4
  store i32 %conv36, i32* %tmp
  %36 = load i32, i32* %tmp
  %37 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %38 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast37 = ptrtoint %struct.sv** %37 to i64
  %sub.ptr.rhs.cast38 = ptrtoint %struct.sv** %38 to i64
  %sub.ptr.sub39 = sub i64 %sub.ptr.lhs.cast37, %sub.ptr.rhs.cast38
  %sub.ptr.div40 = sdiv exact i64 %sub.ptr.sub39, 8
  %cmp41 = icmp slt i64 %sub.ptr.div40, 1
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.35
  %39 = load %struct.sv**, %struct.sv*** %sp, align 8
  %40 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call44 = call %struct.sv** @Perl_stack_grow(%struct.sv** %39, %struct.sv** %40, i32 1)
  store %struct.sv** %call44, %struct.sv*** %sp, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.35
  %41 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %41, i32 0, i32 5
  %42 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool47 = icmp ne %struct.sv* %42, null
  br i1 %tobool47, label %cond.true.48, label %cond.false.50

cond.true.48:                                     ; preds = %if.end.45
  %43 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj49 = getelementptr inbounds %struct.magic, %struct.magic* %43, i32 0, i32 5
  %44 = load %struct.sv*, %struct.sv** %mg_obj49, align 8
  br label %cond.end.53

cond.false.50:                                    ; preds = %if.end.45
  %45 = load %struct.io*, %struct.io** %io, align 8
  %46 = bitcast %struct.io* %45 to %struct.sv*
  %call51 = call %struct.sv* @Perl_newRV(%struct.sv* %46)
  %call52 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call51)
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.50, %cond.true.48
  %cond54 = phi %struct.sv* [ %44, %cond.true.48 ], [ %call52, %cond.false.50 ]
  %47 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr55 = getelementptr inbounds %struct.sv*, %struct.sv** %47, i32 1
  store %struct.sv** %incdec.ptr55, %struct.sv*** %sp, align 8
  store %struct.sv* %cond54, %struct.sv** %incdec.ptr55, align 8
  store %struct.sv* %cond54, %struct.sv** %tmp46
  %48 = load %struct.sv*, %struct.sv** %tmp46
  %49 = load %struct.sv*, %struct.sv** %discp, align 8
  %tobool56 = icmp ne %struct.sv* %49, null
  br i1 %tobool56, label %if.then.57, label %if.end.69

if.then.57:                                       ; preds = %cond.end.53
  %50 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %51 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast58 = ptrtoint %struct.sv** %50 to i64
  %sub.ptr.rhs.cast59 = ptrtoint %struct.sv** %51 to i64
  %sub.ptr.sub60 = sub i64 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59
  %sub.ptr.div61 = sdiv exact i64 %sub.ptr.sub60, 8
  %cmp62 = icmp slt i64 %sub.ptr.div61, 1
  br i1 %cmp62, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.then.57
  %52 = load %struct.sv**, %struct.sv*** %sp, align 8
  %53 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call65 = call %struct.sv** @Perl_stack_grow(%struct.sv** %52, %struct.sv** %53, i32 1)
  store %struct.sv** %call65, %struct.sv*** %sp, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.then.57
  %54 = load %struct.sv*, %struct.sv** %discp, align 8
  %55 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr68 = getelementptr inbounds %struct.sv*, %struct.sv** %55, i32 1
  store %struct.sv** %incdec.ptr68, %struct.sv*** %sp, align 8
  store %struct.sv* %54, %struct.sv** %incdec.ptr68, align 8
  store %struct.sv* %54, %struct.sv** %tmp67
  %56 = load %struct.sv*, %struct.sv** %tmp67
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.66, %cond.end.53
  %57 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %57, %struct.sv*** @PL_stack_sp, align 8
  call void @Perl_push_scope()
  %call70 = call i32 @Perl_call_method(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 0)
  call void @Perl_pop_scope()
  %58 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %58, %struct.sv*** %sp, align 8
  %59 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %59, %struct.sv*** @PL_stack_sp, align 8
  %60 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next71 = getelementptr inbounds %struct.op, %struct.op* %60, i32 0, i32 0
  %61 = load %struct.op*, %struct.op** %op_next71, align 8
  store %struct.op* %61, %struct.op** %retval
  br label %return

if.end.72:                                        ; preds = %cond.end.27, %cond.end, %if.end.9
  %62 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %63 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast73 = ptrtoint %struct.sv** %62 to i64
  %sub.ptr.rhs.cast74 = ptrtoint %struct.sv** %63 to i64
  %sub.ptr.sub75 = sub i64 %sub.ptr.lhs.cast73, %sub.ptr.rhs.cast74
  %sub.ptr.div76 = sdiv exact i64 %sub.ptr.sub75, 8
  %cmp77 = icmp slt i64 %sub.ptr.div76, 1
  br i1 %cmp77, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %if.end.72
  %64 = load %struct.sv**, %struct.sv*** %sp, align 8
  %65 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call80 = call %struct.sv** @Perl_stack_grow(%struct.sv** %64, %struct.sv** %65, i32 1)
  store %struct.sv** %call80, %struct.sv*** %sp, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.79, %if.end.72
  %66 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool82 = icmp ne %struct.gv* %66, null
  br i1 %tobool82, label %land.lhs.true.83, label %cond.false.96

land.lhs.true.83:                                 ; preds = %if.end.81
  %67 = load %struct.gv*, %struct.gv** %gv, align 8
  %68 = bitcast %struct.gv* %67 to %struct.sv*
  %sv_flags84 = getelementptr inbounds %struct.sv, %struct.sv* %68, i32 0, i32 2
  %69 = load i32, i32* %sv_flags84, align 4
  %and85 = and i32 %69, 255
  %cmp86 = icmp eq i32 %and85, 13
  br i1 %cmp86, label %land.lhs.true.88, label %cond.false.96

land.lhs.true.88:                                 ; preds = %land.lhs.true.83
  %70 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any89 = getelementptr inbounds %struct.gv, %struct.gv* %70, i32 0, i32 0
  %71 = load %struct.xpvgv*, %struct.xpvgv** %sv_any89, align 8
  %xgv_gp90 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %71, i32 0, i32 7
  %72 = load %struct.gp*, %struct.gp** %xgv_gp90, align 8
  %tobool91 = icmp ne %struct.gp* %72, null
  br i1 %tobool91, label %cond.true.92, label %cond.false.96

cond.true.92:                                     ; preds = %land.lhs.true.88
  %73 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any93 = getelementptr inbounds %struct.gv, %struct.gv* %73, i32 0, i32 0
  %74 = load %struct.xpvgv*, %struct.xpvgv** %sv_any93, align 8
  %xgv_gp94 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %74, i32 0, i32 7
  %75 = load %struct.gp*, %struct.gp** %xgv_gp94, align 8
  %gp_io95 = getelementptr inbounds %struct.gp, %struct.gp* %75, i32 0, i32 2
  %76 = load %struct.io*, %struct.io** %gp_io95, align 8
  br label %cond.end.97

cond.false.96:                                    ; preds = %land.lhs.true.88, %land.lhs.true.83, %if.end.81
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.96, %cond.true.92
  %cond98 = phi %struct.io* [ %76, %cond.true.92 ], [ null, %cond.false.96 ]
  store %struct.io* %cond98, %struct.io** %io, align 8
  %tobool99 = icmp ne %struct.io* %cond98, null
  br i1 %tobool99, label %lor.lhs.false, label %if.then.102

lor.lhs.false:                                    ; preds = %cond.end.97
  %77 = load %struct.io*, %struct.io** %io, align 8
  %sv_any100 = getelementptr inbounds %struct.io, %struct.io* %77, i32 0, i32 0
  %78 = load %struct.xpvio*, %struct.xpvio** %sv_any100, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %78, i32 0, i32 7
  %79 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  store %struct._PerlIO** %79, %struct._PerlIO*** %fp, align 8
  %tobool101 = icmp ne %struct._PerlIO** %79, null
  br i1 %tobool101, label %if.end.141, label %if.then.102

if.then.102:                                      ; preds = %lor.lhs.false, %cond.end.97
  %80 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %80, i32 0, i32 14
  %81 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp103 = icmp ne %struct.sv* %81, null
  br i1 %cmp103, label %land.lhs.true.105, label %lor.lhs.false.127

land.lhs.true.105:                                ; preds = %if.then.102
  %82 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings106 = getelementptr inbounds %struct.cop, %struct.cop* %82, i32 0, i32 14
  %83 = load %struct.sv*, %struct.sv** %cop_warnings106, align 8
  %cmp107 = icmp ne %struct.sv* %83, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp107, label %land.lhs.true.109, label %lor.lhs.false.127

land.lhs.true.109:                                ; preds = %land.lhs.true.105
  %84 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings110 = getelementptr inbounds %struct.cop, %struct.cop* %84, i32 0, i32 14
  %85 = load %struct.sv*, %struct.sv** %cop_warnings110, align 8
  %cmp111 = icmp eq %struct.sv* %85, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp111, label %if.then.135, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %land.lhs.true.109
  %86 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings114 = getelementptr inbounds %struct.cop, %struct.cop* %86, i32 0, i32 14
  %87 = load %struct.sv*, %struct.sv** %cop_warnings114, align 8
  %sv_any115 = getelementptr inbounds %struct.sv, %struct.sv* %87, i32 0, i32 0
  %88 = load i8*, i8** %sv_any115, align 8
  %89 = bitcast i8* %88 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %89, i32 0, i32 0
  %90 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %90, i64 2
  %91 = load i8, i8* %arrayidx, align 1
  %conv116 = sext i8 %91 to i32
  %and117 = and i32 %conv116, 64
  %tobool118 = icmp ne i32 %and117, 0
  br i1 %tobool118, label %if.then.135, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %lor.lhs.false.113
  %92 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings120 = getelementptr inbounds %struct.cop, %struct.cop* %92, i32 0, i32 14
  %93 = load %struct.sv*, %struct.sv** %cop_warnings120, align 8
  %sv_any121 = getelementptr inbounds %struct.sv, %struct.sv* %93, i32 0, i32 0
  %94 = load i8*, i8** %sv_any121, align 8
  %95 = bitcast i8* %94 to %struct.xpv*
  %xpv_pv122 = getelementptr inbounds %struct.xpv, %struct.xpv* %95, i32 0, i32 0
  %96 = load i8*, i8** %xpv_pv122, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %96, i64 1
  %97 = load i8, i8* %arrayidx123, align 1
  %conv124 = sext i8 %97 to i32
  %and125 = and i32 %conv124, 16
  %tobool126 = icmp ne i32 %and125, 0
  br i1 %tobool126, label %if.then.135, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %lor.lhs.false.119, %land.lhs.true.105, %if.then.102
  %98 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings128 = getelementptr inbounds %struct.cop, %struct.cop* %98, i32 0, i32 14
  %99 = load %struct.sv*, %struct.sv** %cop_warnings128, align 8
  %cmp129 = icmp eq %struct.sv* %99, null
  br i1 %cmp129, label %land.lhs.true.131, label %if.end.137

land.lhs.true.131:                                ; preds = %lor.lhs.false.127
  %100 = load i8, i8* @PL_dowarn, align 1
  %conv132 = zext i8 %100 to i32
  %and133 = and i32 %conv132, 1
  %tobool134 = icmp ne i32 %and133, 0
  br i1 %tobool134, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %land.lhs.true.131, %lor.lhs.false.119, %lor.lhs.false.113, %land.lhs.true.109
  %101 = load %struct.gv*, %struct.gv** %gv, align 8
  %102 = load %struct.io*, %struct.io** %io, align 8
  %103 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %103, i32 0, i32 4
  %104 = load i16, i16* %op_type, align 2
  %conv136 = zext i16 %104 to i32
  call void @Perl_report_evil_fh(%struct.gv* %101, %struct.io* %102, i32 %conv136)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %land.lhs.true.131, %lor.lhs.false.127
  %call138 = call i32* @__errno_location()
  store i32 9, i32* %call138, align 4
  %105 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr139 = getelementptr inbounds %struct.sv*, %struct.sv** %105, i32 1
  store %struct.sv** %incdec.ptr139, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr139, align 8
  %106 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %106, %struct.sv*** @PL_stack_sp, align 8
  %107 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next140 = getelementptr inbounds %struct.op, %struct.op* %107, i32 0, i32 0
  %108 = load %struct.op*, %struct.op** %op_next140, align 8
  store %struct.op* %108, %struct.op** %retval
  br label %return

if.end.141:                                       ; preds = %lor.lhs.false
  %109 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %109, %struct.sv*** @PL_stack_sp, align 8
  %110 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %111 = load %struct.io*, %struct.io** %io, align 8
  %sv_any142 = getelementptr inbounds %struct.io, %struct.io* %111, i32 0, i32 0
  %112 = load %struct.xpvio*, %struct.xpvio** %sv_any142, align 8
  %xio_type = getelementptr inbounds %struct.xpvio, %struct.xpvio* %112, i32 0, i32 21
  %113 = load i8, i8* %xio_type, align 1
  %conv143 = sext i8 %113 to i32
  %114 = load %struct.sv*, %struct.sv** %discp, align 8
  %call144 = call i32 @Perl_mode_from_discipline(%struct.sv* %114)
  %115 = load %struct.sv*, %struct.sv** %discp, align 8
  %tobool145 = icmp ne %struct.sv* %115, null
  br i1 %tobool145, label %cond.true.146, label %cond.false.158

cond.true.146:                                    ; preds = %if.end.141
  %116 = load %struct.sv*, %struct.sv** %discp, align 8
  %sv_flags147 = getelementptr inbounds %struct.sv, %struct.sv* %116, i32 0, i32 2
  %117 = load i32, i32* %sv_flags147, align 4
  %and148 = and i32 %117, 262144
  %cmp149 = icmp eq i32 %and148, 262144
  br i1 %cmp149, label %cond.true.151, label %cond.false.154

cond.true.151:                                    ; preds = %cond.true.146
  %118 = load %struct.sv*, %struct.sv** %discp, align 8
  %sv_any152 = getelementptr inbounds %struct.sv, %struct.sv* %118, i32 0, i32 0
  %119 = load i8*, i8** %sv_any152, align 8
  %120 = bitcast i8* %119 to %struct.xpv*
  %xpv_pv153 = getelementptr inbounds %struct.xpv, %struct.xpv* %120, i32 0, i32 0
  %121 = load i8*, i8** %xpv_pv153, align 8
  br label %cond.end.156

cond.false.154:                                   ; preds = %cond.true.146
  %122 = load %struct.sv*, %struct.sv** %discp, align 8
  %call155 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %122)
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.154, %cond.true.151
  %cond157 = phi i8* [ %121, %cond.true.151 ], [ %call155, %cond.false.154 ]
  br label %cond.end.159

cond.false.158:                                   ; preds = %if.end.141
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.158, %cond.end.156
  %cond160 = phi i8* [ %cond157, %cond.end.156 ], [ null, %cond.false.158 ]
  %call161 = call i32 @PerlIO_binmode(%struct._PerlIO** %110, i32 %conv143, i32 %call144, i8* %cond160)
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %if.then.163, label %if.else

if.then.163:                                      ; preds = %cond.end.159
  %123 = load %struct.io*, %struct.io** %io, align 8
  %sv_any164 = getelementptr inbounds %struct.io, %struct.io* %123, i32 0, i32 0
  %124 = load %struct.xpvio*, %struct.xpvio** %sv_any164, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %124, i32 0, i32 8
  %125 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool165 = icmp ne %struct._PerlIO** %125, null
  br i1 %tobool165, label %land.lhs.true.166, label %if.end.202

land.lhs.true.166:                                ; preds = %if.then.163
  %126 = load %struct.io*, %struct.io** %io, align 8
  %sv_any167 = getelementptr inbounds %struct.io, %struct.io* %126, i32 0, i32 0
  %127 = load %struct.xpvio*, %struct.xpvio** %sv_any167, align 8
  %xio_ofp168 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %127, i32 0, i32 8
  %128 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp168, align 8
  %129 = load %struct.io*, %struct.io** %io, align 8
  %sv_any169 = getelementptr inbounds %struct.io, %struct.io* %129, i32 0, i32 0
  %130 = load %struct.xpvio*, %struct.xpvio** %sv_any169, align 8
  %xio_ifp170 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %130, i32 0, i32 7
  %131 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp170, align 8
  %cmp171 = icmp ne %struct._PerlIO** %128, %131
  br i1 %cmp171, label %if.then.173, label %if.end.202

if.then.173:                                      ; preds = %land.lhs.true.166
  %132 = load %struct.io*, %struct.io** %io, align 8
  %sv_any174 = getelementptr inbounds %struct.io, %struct.io* %132, i32 0, i32 0
  %133 = load %struct.xpvio*, %struct.xpvio** %sv_any174, align 8
  %xio_ofp175 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %133, i32 0, i32 8
  %134 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp175, align 8
  %135 = load %struct.io*, %struct.io** %io, align 8
  %sv_any176 = getelementptr inbounds %struct.io, %struct.io* %135, i32 0, i32 0
  %136 = load %struct.xpvio*, %struct.xpvio** %sv_any176, align 8
  %xio_type177 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %136, i32 0, i32 21
  %137 = load i8, i8* %xio_type177, align 1
  %conv178 = sext i8 %137 to i32
  %138 = load %struct.sv*, %struct.sv** %discp, align 8
  %call179 = call i32 @Perl_mode_from_discipline(%struct.sv* %138)
  %139 = load %struct.sv*, %struct.sv** %discp, align 8
  %tobool180 = icmp ne %struct.sv* %139, null
  br i1 %tobool180, label %cond.true.181, label %cond.false.193

cond.true.181:                                    ; preds = %if.then.173
  %140 = load %struct.sv*, %struct.sv** %discp, align 8
  %sv_flags182 = getelementptr inbounds %struct.sv, %struct.sv* %140, i32 0, i32 2
  %141 = load i32, i32* %sv_flags182, align 4
  %and183 = and i32 %141, 262144
  %cmp184 = icmp eq i32 %and183, 262144
  br i1 %cmp184, label %cond.true.186, label %cond.false.189

cond.true.186:                                    ; preds = %cond.true.181
  %142 = load %struct.sv*, %struct.sv** %discp, align 8
  %sv_any187 = getelementptr inbounds %struct.sv, %struct.sv* %142, i32 0, i32 0
  %143 = load i8*, i8** %sv_any187, align 8
  %144 = bitcast i8* %143 to %struct.xpv*
  %xpv_pv188 = getelementptr inbounds %struct.xpv, %struct.xpv* %144, i32 0, i32 0
  %145 = load i8*, i8** %xpv_pv188, align 8
  br label %cond.end.191

cond.false.189:                                   ; preds = %cond.true.181
  %146 = load %struct.sv*, %struct.sv** %discp, align 8
  %call190 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %146)
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.false.189, %cond.true.186
  %cond192 = phi i8* [ %145, %cond.true.186 ], [ %call190, %cond.false.189 ]
  br label %cond.end.194

cond.false.193:                                   ; preds = %if.then.173
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.false.193, %cond.end.191
  %cond195 = phi i8* [ %cond192, %cond.end.191 ], [ null, %cond.false.193 ]
  %call196 = call i32 @PerlIO_binmode(%struct._PerlIO** %134, i32 %conv178, i32 %call179, i8* %cond195)
  %tobool197 = icmp ne i32 %call196, 0
  br i1 %tobool197, label %if.end.201, label %if.then.198

if.then.198:                                      ; preds = %cond.end.194
  %147 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %147, %struct.sv*** %sp, align 8
  %148 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr199 = getelementptr inbounds %struct.sv*, %struct.sv** %148, i32 1
  store %struct.sv** %incdec.ptr199, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr199, align 8
  %149 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %149, %struct.sv*** @PL_stack_sp, align 8
  %150 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next200 = getelementptr inbounds %struct.op, %struct.op* %150, i32 0, i32 0
  %151 = load %struct.op*, %struct.op** %op_next200, align 8
  store %struct.op* %151, %struct.op** %retval
  br label %return

if.end.201:                                       ; preds = %cond.end.194
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %land.lhs.true.166, %if.then.163
  %152 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %152, %struct.sv*** %sp, align 8
  %153 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr203 = getelementptr inbounds %struct.sv*, %struct.sv** %153, i32 1
  store %struct.sv** %incdec.ptr203, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr203, align 8
  %154 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %154, %struct.sv*** @PL_stack_sp, align 8
  %155 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next204 = getelementptr inbounds %struct.op, %struct.op* %155, i32 0, i32 0
  %156 = load %struct.op*, %struct.op** %op_next204, align 8
  store %struct.op* %156, %struct.op** %retval
  br label %return

if.else:                                          ; preds = %cond.end.159
  %157 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %157, %struct.sv*** %sp, align 8
  %158 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr205 = getelementptr inbounds %struct.sv*, %struct.sv** %158, i32 1
  store %struct.sv** %incdec.ptr205, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr205, align 8
  %159 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %159, %struct.sv*** @PL_stack_sp, align 8
  %160 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next206 = getelementptr inbounds %struct.op, %struct.op* %160, i32 0, i32 0
  %161 = load %struct.op*, %struct.op** %op_next206, align 8
  store %struct.op* %161, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.else, %if.end.202, %if.then.198, %if.end.137, %if.end.69, %if.then
  %162 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %162
}

declare void @Perl_report_evil_fh(%struct.gv*, %struct.io*, i32) #1

declare i32* @__errno_location() #1

declare i32 @PerlIO_binmode(%struct._PerlIO**, i32, i32, i8*) #1

declare i32 @Perl_mode_from_discipline(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_tie() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %varsv = alloca %struct.sv*, align 8
  %stash = alloca %struct.hv*, align 8
  %gv = alloca %struct.gv*, align 8
  %sv = alloca %struct.sv*, align 8
  %markoff = alloca i32, align 4
  %methname = alloca i8*, align 8
  %how = alloca i32, align 4
  %items = alloca i32, align 4
  %next = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %tmp46 = alloca i32, align 4
  %next74 = alloca %struct.stackinfo*, align 8
  %tmp104 = alloca %struct.av*, align 8
  %tmp111 = alloca i32, align 4
  %sp139 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp185 = alloca %struct.av*, align 8
  %tmp187 = alloca %struct.stackinfo*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %markoff, align 4
  store i32 80, i32* %how, align 4
  %6 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.sv*, %struct.sv** %6, i32 1
  store %struct.sv** %incdec.ptr1, %struct.sv*** %mark, align 8
  %7 = load %struct.sv*, %struct.sv** %incdec.ptr1, align 8
  store %struct.sv* %7, %struct.sv** %varsv, align 8
  %8 = load %struct.sv*, %struct.sv** %varsv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 2
  %9 = load i32, i32* %sv_flags, align 4
  %and = and i32 %9, 255
  switch i32 %and, label %sw.default [
    i32 11, label %sw.bb
    i32 10, label %sw.bb.2
    i32 13, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8** %methname, align 8
  %10 = load %struct.sv*, %struct.sv** %varsv, align 8
  %11 = bitcast %struct.sv* %10 to %struct.hv*
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %11, i32 0, i32 0
  %12 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  %xhv_eiter = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %12, i32 0, i32 8
  store %struct.he* null, %struct.he** %xhv_eiter, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8** %methname, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8** %methname, align 8
  store i32 113, i32* %how, align 4
  %13 = load %struct.sv*, %struct.sv** %varsv, align 8
  %sv_any4 = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 0
  %14 = load i8*, i8** %sv_any4, align 8
  %15 = bitcast i8* %14 to %struct.xpvgv*
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %15, i32 0, i32 7
  %16 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %16, i32 0, i32 2
  %17 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool = icmp ne %struct.io* %17, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.3
  %call = call %struct.io* @Perl_newIO()
  %18 = load %struct.sv*, %struct.sv** %varsv, align 8
  %sv_any5 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 0
  %19 = load i8*, i8** %sv_any5, align 8
  %20 = bitcast i8* %19 to %struct.xpvgv*
  %xgv_gp6 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %20, i32 0, i32 7
  %21 = load %struct.gp*, %struct.gp** %xgv_gp6, align 8
  %gp_io7 = getelementptr inbounds %struct.gp, %struct.gp* %21, i32 0, i32 2
  store %struct.io* %call, %struct.io** %gp_io7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.3
  %22 = load %struct.sv*, %struct.sv** %varsv, align 8
  %sv_any8 = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 0
  %23 = load i8*, i8** %sv_any8, align 8
  %24 = bitcast i8* %23 to %struct.xpvgv*
  %xgv_gp9 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %24, i32 0, i32 7
  %25 = load %struct.gp*, %struct.gp** %xgv_gp9, align 8
  %gp_io10 = getelementptr inbounds %struct.gp, %struct.gp* %25, i32 0, i32 2
  %26 = load %struct.io*, %struct.io** %gp_io10, align 8
  %27 = bitcast %struct.io* %26 to %struct.sv*
  store %struct.sv* %27, %struct.sv** %varsv, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8** %methname, align 8
  store i32 113, i32* %how, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb.2, %sw.bb
  %28 = load %struct.sv**, %struct.sv*** %sp, align 8
  %29 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr11 = getelementptr inbounds %struct.sv*, %struct.sv** %29, i32 1
  store %struct.sv** %incdec.ptr11, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast12 = ptrtoint %struct.sv** %28 to i64
  %sub.ptr.rhs.cast13 = ptrtoint %struct.sv** %29 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %sub.ptr.div15 = sdiv exact i64 %sub.ptr.sub14, 8
  %conv16 = trunc i64 %sub.ptr.div15 to i32
  store i32 %conv16, i32* %items, align 4
  %30 = load %struct.sv**, %struct.sv*** %mark, align 8
  %31 = load %struct.sv*, %struct.sv** %30, align 8
  %call17 = call i32 @Perl_sv_isobject(%struct.sv* %31)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %sw.epilog
  call void @Perl_push_scope()
  %32 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %32, i32 0, i32 6
  %33 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  store %struct.stackinfo* %33, %struct.stackinfo** %next, align 8
  %34 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %tobool20 = icmp ne %struct.stackinfo* %34, null
  br i1 %tobool20, label %if.end.24, label %if.then.21

if.then.21:                                       ; preds = %if.then.19
  %call22 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call22, %struct.stackinfo** %next, align 8
  %35 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %36 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %36, i32 0, i32 5
  store %struct.stackinfo* %35, %struct.stackinfo** %si_prev, align 8
  %37 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %38 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next23 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %38, i32 0, i32 6
  store %struct.stackinfo* %37, %struct.stackinfo** %si_next23, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.then.19
  %39 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %39, i32 0, i32 4
  store i32 2, i32* %si_type, align 4
  %40 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %40, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %41 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %41, i32 0, i32 0
  %42 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any25 = getelementptr inbounds %struct.av, %struct.av* %42, i32 0, i32 0
  %43 = load %struct.xpvav*, %struct.xpvav** %sv_any25, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %43, i32 0, i32 1
  store i64 0, i64* %xav_fill, align 8
  %44 = load %struct.sv**, %struct.sv*** %sp, align 8
  %45 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast26 = ptrtoint %struct.sv** %44 to i64
  %sub.ptr.rhs.cast27 = ptrtoint %struct.sv** %45 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %sub.ptr.div29 = sdiv exact i64 %sub.ptr.sub28, 8
  %46 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any30 = getelementptr inbounds %struct.av, %struct.av* %46, i32 0, i32 0
  %47 = load %struct.xpvav*, %struct.xpvav** %sv_any30, align 8
  %xav_fill31 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %47, i32 0, i32 1
  store i64 %sub.ptr.div29, i64* %xav_fill31, align 8
  %48 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack32 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %48, i32 0, i32 0
  %49 = load %struct.av*, %struct.av** %si_stack32, align 8
  %sv_any33 = getelementptr inbounds %struct.av, %struct.av* %49, i32 0, i32 0
  %50 = load %struct.xpvav*, %struct.xpvav** %sv_any33, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %50, i32 0, i32 0
  %51 = load i8*, i8** %xav_array, align 8
  %52 = bitcast i8* %51 to %struct.sv**
  store %struct.sv** %52, %struct.sv*** @PL_stack_base, align 8
  %53 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %54 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack34 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %54, i32 0, i32 0
  %55 = load %struct.av*, %struct.av** %si_stack34, align 8
  %sv_any35 = getelementptr inbounds %struct.av, %struct.av* %55, i32 0, i32 0
  %56 = load %struct.xpvav*, %struct.xpvav** %sv_any35, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %56, i32 0, i32 2
  %57 = load i64, i64* %xav_max, align 8
  %add.ptr36 = getelementptr inbounds %struct.sv*, %struct.sv** %53, i64 %57
  store %struct.sv** %add.ptr36, %struct.sv*** @PL_stack_max, align 8
  %58 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %59 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack37 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %59, i32 0, i32 0
  %60 = load %struct.av*, %struct.av** %si_stack37, align 8
  %sv_any38 = getelementptr inbounds %struct.av, %struct.av* %60, i32 0, i32 0
  %61 = load %struct.xpvav*, %struct.xpvav** %sv_any38, align 8
  %xav_fill39 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %61, i32 0, i32 1
  %62 = load i64, i64* %xav_fill39, align 8
  %add.ptr40 = getelementptr inbounds %struct.sv*, %struct.sv** %58, i64 %62
  store %struct.sv** %add.ptr40, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr40, %struct.sv*** %sp, align 8
  %63 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack41 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %63, i32 0, i32 0
  %64 = load %struct.av*, %struct.av** %si_stack41, align 8
  store %struct.av* %64, %struct.av** @PL_curstack, align 8
  store %struct.av* %64, %struct.av** %tmp
  %65 = load %struct.av*, %struct.av** %tmp
  %66 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  store %struct.stackinfo* %66, %struct.stackinfo** @PL_curstackinfo, align 8
  %67 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr42 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %incdec.ptr42, i32** @PL_markstack_ptr, align 8
  %68 = load i32*, i32** @PL_markstack_max, align 8
  %cmp = icmp eq i32* %incdec.ptr42, %68
  br i1 %cmp, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.24
  call void @Perl_markstack_grow()
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.end.24
  %69 = load %struct.sv**, %struct.sv*** %sp, align 8
  %70 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast47 = ptrtoint %struct.sv** %69 to i64
  %sub.ptr.rhs.cast48 = ptrtoint %struct.sv** %70 to i64
  %sub.ptr.sub49 = sub i64 %sub.ptr.lhs.cast47, %sub.ptr.rhs.cast48
  %sub.ptr.div50 = sdiv exact i64 %sub.ptr.sub49, 8
  %conv51 = trunc i64 %sub.ptr.div50 to i32
  %71 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv51, i32* %71, align 4
  store i32 %conv51, i32* %tmp46
  %72 = load i32, i32* %tmp46
  %73 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %74 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast52 = ptrtoint %struct.sv** %73 to i64
  %sub.ptr.rhs.cast53 = ptrtoint %struct.sv** %74 to i64
  %sub.ptr.sub54 = sub i64 %sub.ptr.lhs.cast52, %sub.ptr.rhs.cast53
  %sub.ptr.div55 = sdiv exact i64 %sub.ptr.sub54, 8
  %75 = load i32, i32* %items, align 4
  %conv56 = sext i32 %75 to i64
  %cmp57 = icmp slt i64 %sub.ptr.div55, %conv56
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.end.45
  %76 = load %struct.sv**, %struct.sv*** %sp, align 8
  %77 = load %struct.sv**, %struct.sv*** %sp, align 8
  %78 = load i32, i32* %items, align 4
  %call60 = call %struct.sv** @Perl_stack_grow(%struct.sv** %76, %struct.sv** %77, i32 %78)
  store %struct.sv** %call60, %struct.sv*** %sp, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %if.end.45
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.61
  %79 = load i32, i32* %items, align 4
  %dec = add i32 %79, -1
  store i32 %dec, i32* %items, align 4
  %tobool62 = icmp ne i32 %79, 0
  br i1 %tobool62, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %80 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr63 = getelementptr inbounds %struct.sv*, %struct.sv** %80, i32 1
  store %struct.sv** %incdec.ptr63, %struct.sv*** %mark, align 8
  %81 = load %struct.sv*, %struct.sv** %80, align 8
  %82 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr64 = getelementptr inbounds %struct.sv*, %struct.sv** %82, i32 1
  store %struct.sv** %incdec.ptr64, %struct.sv*** %sp, align 8
  store %struct.sv* %81, %struct.sv** %incdec.ptr64, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %83 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %83, %struct.sv*** @PL_stack_sp, align 8
  %84 = load i8*, i8** %methname, align 8
  %call65 = call i32 @Perl_call_method(i8* %84, i32 0)
  br label %if.end.137

if.else:                                          ; preds = %sw.epilog
  %85 = load %struct.sv**, %struct.sv*** %mark, align 8
  %86 = load %struct.sv*, %struct.sv** %85, align 8
  %call66 = call %struct.hv* @Perl_gv_stashsv(%struct.sv* %86, i32 0)
  store %struct.hv* %call66, %struct.hv** %stash, align 8
  %87 = load %struct.hv*, %struct.hv** %stash, align 8
  %tobool67 = icmp ne %struct.hv* %87, null
  br i1 %tobool67, label %lor.lhs.false, label %if.then.70

lor.lhs.false:                                    ; preds = %if.else
  %88 = load %struct.hv*, %struct.hv** %stash, align 8
  %89 = load i8*, i8** %methname, align 8
  %call68 = call %struct.gv* @Perl_gv_fetchmethod(%struct.hv* %88, i8* %89)
  store %struct.gv* %call68, %struct.gv** %gv, align 8
  %tobool69 = icmp ne %struct.gv* %call68, null
  br i1 %tobool69, label %if.end.72, label %if.then.70

if.then.70:                                       ; preds = %lor.lhs.false, %if.else
  %90 = load i8*, i8** %methname, align 8
  %91 = load %struct.sv**, %struct.sv*** %mark, align 8
  %92 = load %struct.sv*, %struct.sv** %91, align 8
  %call71 = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.24, i32 0, i32 0), i8* %90, %struct.sv* %92)
  store %struct.op* %call71, %struct.op** %retval
  br label %return

if.end.72:                                        ; preds = %lor.lhs.false
  call void @Perl_push_scope()
  %93 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next75 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %93, i32 0, i32 6
  %94 = load %struct.stackinfo*, %struct.stackinfo** %si_next75, align 8
  store %struct.stackinfo* %94, %struct.stackinfo** %next74, align 8
  %95 = load %struct.stackinfo*, %struct.stackinfo** %next74, align 8
  %tobool76 = icmp ne %struct.stackinfo* %95, null
  br i1 %tobool76, label %if.end.81, label %if.then.77

if.then.77:                                       ; preds = %if.end.72
  %call78 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call78, %struct.stackinfo** %next74, align 8
  %96 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %97 = load %struct.stackinfo*, %struct.stackinfo** %next74, align 8
  %si_prev79 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %97, i32 0, i32 5
  store %struct.stackinfo* %96, %struct.stackinfo** %si_prev79, align 8
  %98 = load %struct.stackinfo*, %struct.stackinfo** %next74, align 8
  %99 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next80 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %99, i32 0, i32 6
  store %struct.stackinfo* %98, %struct.stackinfo** %si_next80, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.77, %if.end.72
  %100 = load %struct.stackinfo*, %struct.stackinfo** %next74, align 8
  %si_type82 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %100, i32 0, i32 4
  store i32 2, i32* %si_type82, align 4
  %101 = load %struct.stackinfo*, %struct.stackinfo** %next74, align 8
  %si_cxix83 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %101, i32 0, i32 2
  store i32 -1, i32* %si_cxix83, align 4
  %102 = load %struct.stackinfo*, %struct.stackinfo** %next74, align 8
  %si_stack84 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %102, i32 0, i32 0
  %103 = load %struct.av*, %struct.av** %si_stack84, align 8
  %sv_any85 = getelementptr inbounds %struct.av, %struct.av* %103, i32 0, i32 0
  %104 = load %struct.xpvav*, %struct.xpvav** %sv_any85, align 8
  %xav_fill86 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %104, i32 0, i32 1
  store i64 0, i64* %xav_fill86, align 8
  %105 = load %struct.sv**, %struct.sv*** %sp, align 8
  %106 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast87 = ptrtoint %struct.sv** %105 to i64
  %sub.ptr.rhs.cast88 = ptrtoint %struct.sv** %106 to i64
  %sub.ptr.sub89 = sub i64 %sub.ptr.lhs.cast87, %sub.ptr.rhs.cast88
  %sub.ptr.div90 = sdiv exact i64 %sub.ptr.sub89, 8
  %107 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any91 = getelementptr inbounds %struct.av, %struct.av* %107, i32 0, i32 0
  %108 = load %struct.xpvav*, %struct.xpvav** %sv_any91, align 8
  %xav_fill92 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %108, i32 0, i32 1
  store i64 %sub.ptr.div90, i64* %xav_fill92, align 8
  %109 = load %struct.stackinfo*, %struct.stackinfo** %next74, align 8
  %si_stack93 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %109, i32 0, i32 0
  %110 = load %struct.av*, %struct.av** %si_stack93, align 8
  %sv_any94 = getelementptr inbounds %struct.av, %struct.av* %110, i32 0, i32 0
  %111 = load %struct.xpvav*, %struct.xpvav** %sv_any94, align 8
  %xav_array95 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %111, i32 0, i32 0
  %112 = load i8*, i8** %xav_array95, align 8
  %113 = bitcast i8* %112 to %struct.sv**
  store %struct.sv** %113, %struct.sv*** @PL_stack_base, align 8
  %114 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %115 = load %struct.stackinfo*, %struct.stackinfo** %next74, align 8
  %si_stack96 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %115, i32 0, i32 0
  %116 = load %struct.av*, %struct.av** %si_stack96, align 8
  %sv_any97 = getelementptr inbounds %struct.av, %struct.av* %116, i32 0, i32 0
  %117 = load %struct.xpvav*, %struct.xpvav** %sv_any97, align 8
  %xav_max98 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %117, i32 0, i32 2
  %118 = load i64, i64* %xav_max98, align 8
  %add.ptr99 = getelementptr inbounds %struct.sv*, %struct.sv** %114, i64 %118
  store %struct.sv** %add.ptr99, %struct.sv*** @PL_stack_max, align 8
  %119 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %120 = load %struct.stackinfo*, %struct.stackinfo** %next74, align 8
  %si_stack100 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %120, i32 0, i32 0
  %121 = load %struct.av*, %struct.av** %si_stack100, align 8
  %sv_any101 = getelementptr inbounds %struct.av, %struct.av* %121, i32 0, i32 0
  %122 = load %struct.xpvav*, %struct.xpvav** %sv_any101, align 8
  %xav_fill102 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %122, i32 0, i32 1
  %123 = load i64, i64* %xav_fill102, align 8
  %add.ptr103 = getelementptr inbounds %struct.sv*, %struct.sv** %119, i64 %123
  store %struct.sv** %add.ptr103, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr103, %struct.sv*** %sp, align 8
  %124 = load %struct.stackinfo*, %struct.stackinfo** %next74, align 8
  %si_stack105 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %124, i32 0, i32 0
  %125 = load %struct.av*, %struct.av** %si_stack105, align 8
  store %struct.av* %125, %struct.av** @PL_curstack, align 8
  store %struct.av* %125, %struct.av** %tmp104
  %126 = load %struct.av*, %struct.av** %tmp104
  %127 = load %struct.stackinfo*, %struct.stackinfo** %next74, align 8
  store %struct.stackinfo* %127, %struct.stackinfo** @PL_curstackinfo, align 8
  %128 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr106 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %incdec.ptr106, i32** @PL_markstack_ptr, align 8
  %129 = load i32*, i32** @PL_markstack_max, align 8
  %cmp107 = icmp eq i32* %incdec.ptr106, %129
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.end.81
  call void @Perl_markstack_grow()
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %if.end.81
  %130 = load %struct.sv**, %struct.sv*** %sp, align 8
  %131 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast112 = ptrtoint %struct.sv** %130 to i64
  %sub.ptr.rhs.cast113 = ptrtoint %struct.sv** %131 to i64
  %sub.ptr.sub114 = sub i64 %sub.ptr.lhs.cast112, %sub.ptr.rhs.cast113
  %sub.ptr.div115 = sdiv exact i64 %sub.ptr.sub114, 8
  %conv116 = trunc i64 %sub.ptr.div115 to i32
  %132 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv116, i32* %132, align 4
  store i32 %conv116, i32* %tmp111
  %133 = load i32, i32* %tmp111
  %134 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %135 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast117 = ptrtoint %struct.sv** %134 to i64
  %sub.ptr.rhs.cast118 = ptrtoint %struct.sv** %135 to i64
  %sub.ptr.sub119 = sub i64 %sub.ptr.lhs.cast117, %sub.ptr.rhs.cast118
  %sub.ptr.div120 = sdiv exact i64 %sub.ptr.sub119, 8
  %136 = load i32, i32* %items, align 4
  %conv121 = sext i32 %136 to i64
  %cmp122 = icmp slt i64 %sub.ptr.div120, %conv121
  br i1 %cmp122, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %if.end.110
  %137 = load %struct.sv**, %struct.sv*** %sp, align 8
  %138 = load %struct.sv**, %struct.sv*** %sp, align 8
  %139 = load i32, i32* %items, align 4
  %call125 = call %struct.sv** @Perl_stack_grow(%struct.sv** %137, %struct.sv** %138, i32 %139)
  store %struct.sv** %call125, %struct.sv*** %sp, align 8
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.124, %if.end.110
  br label %while.cond.127

while.cond.127:                                   ; preds = %while.body.130, %if.end.126
  %140 = load i32, i32* %items, align 4
  %dec128 = add i32 %140, -1
  store i32 %dec128, i32* %items, align 4
  %tobool129 = icmp ne i32 %140, 0
  br i1 %tobool129, label %while.body.130, label %while.end.133

while.body.130:                                   ; preds = %while.cond.127
  %141 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr131 = getelementptr inbounds %struct.sv*, %struct.sv** %141, i32 1
  store %struct.sv** %incdec.ptr131, %struct.sv*** %mark, align 8
  %142 = load %struct.sv*, %struct.sv** %141, align 8
  %143 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr132 = getelementptr inbounds %struct.sv*, %struct.sv** %143, i32 1
  store %struct.sv** %incdec.ptr132, %struct.sv*** %sp, align 8
  store %struct.sv* %142, %struct.sv** %incdec.ptr132, align 8
  br label %while.cond.127

while.end.133:                                    ; preds = %while.cond.127
  %144 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %144, %struct.sv*** @PL_stack_sp, align 8
  %145 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any134 = getelementptr inbounds %struct.gv, %struct.gv* %145, i32 0, i32 0
  %146 = load %struct.xpvgv*, %struct.xpvgv** %sv_any134, align 8
  %xgv_gp135 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %146, i32 0, i32 7
  %147 = load %struct.gp*, %struct.gp** %xgv_gp135, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %147, i32 0, i32 7
  %148 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  %149 = bitcast %struct.cv* %148 to %struct.sv*
  %call136 = call i32 @Perl_call_sv(%struct.sv* %149, i32 0)
  br label %if.end.137

if.end.137:                                       ; preds = %while.end.133, %while.end
  %150 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %150, %struct.sv*** %sp, align 8
  %151 = load %struct.sv**, %struct.sv*** %sp, align 8
  %152 = load %struct.sv*, %struct.sv** %151, align 8
  store %struct.sv* %152, %struct.sv** %sv, align 8
  %153 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %153, %struct.sv*** %sp139, align 8
  %154 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev141 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %154, i32 0, i32 5
  %155 = load %struct.stackinfo*, %struct.stackinfo** %si_prev141, align 8
  store %struct.stackinfo* %155, %struct.stackinfo** %prev, align 8
  %156 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool142 = icmp ne %struct.stackinfo* %156, null
  br i1 %tobool142, label %if.end.167, label %if.then.143

if.then.143:                                      ; preds = %if.end.137
  %157 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool144 = icmp ne %struct.gv* %157, null
  br i1 %tobool144, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.143
  %158 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags145 = getelementptr inbounds %struct.gv, %struct.gv* %158, i32 0, i32 2
  %159 = load i32, i32* %sv_flags145, align 4
  %and146 = and i32 %159, 255
  %cmp147 = icmp eq i32 %and146, 13
  br i1 %cmp147, label %land.lhs.true.149, label %cond.false

land.lhs.true.149:                                ; preds = %land.lhs.true
  %160 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any150 = getelementptr inbounds %struct.gv, %struct.gv* %160, i32 0, i32 0
  %161 = load %struct.xpvgv*, %struct.xpvgv** %sv_any150, align 8
  %xgv_gp151 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %161, i32 0, i32 7
  %162 = load %struct.gp*, %struct.gp** %xgv_gp151, align 8
  %gp_io152 = getelementptr inbounds %struct.gp, %struct.gp* %162, i32 0, i32 2
  %163 = load %struct.io*, %struct.io** %gp_io152, align 8
  %tobool153 = icmp ne %struct.io* %163, null
  br i1 %tobool153, label %land.lhs.true.154, label %cond.false

land.lhs.true.154:                                ; preds = %land.lhs.true.149
  %164 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any155 = getelementptr inbounds %struct.gv, %struct.gv* %164, i32 0, i32 0
  %165 = load %struct.xpvgv*, %struct.xpvgv** %sv_any155, align 8
  %xgv_gp156 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %165, i32 0, i32 7
  %166 = load %struct.gp*, %struct.gp** %xgv_gp156, align 8
  %gp_io157 = getelementptr inbounds %struct.gp, %struct.gp* %166, i32 0, i32 2
  %167 = load %struct.io*, %struct.io** %gp_io157, align 8
  %sv_any158 = getelementptr inbounds %struct.io, %struct.io* %167, i32 0, i32 0
  %168 = load %struct.xpvio*, %struct.xpvio** %sv_any158, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %168, i32 0, i32 8
  %169 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool159 = icmp ne %struct._PerlIO** %169, null
  br i1 %tobool159, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.154
  %170 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any160 = getelementptr inbounds %struct.gv, %struct.gv* %170, i32 0, i32 0
  %171 = load %struct.xpvgv*, %struct.xpvgv** %sv_any160, align 8
  %xgv_gp161 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %171, i32 0, i32 7
  %172 = load %struct.gp*, %struct.gp** %xgv_gp161, align 8
  %gp_io162 = getelementptr inbounds %struct.gp, %struct.gp* %172, i32 0, i32 2
  %173 = load %struct.io*, %struct.io** %gp_io162, align 8
  %sv_any163 = getelementptr inbounds %struct.io, %struct.io* %173, i32 0, i32 0
  %174 = load %struct.xpvio*, %struct.xpvio** %sv_any163, align 8
  %xio_ofp164 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %174, i32 0, i32 8
  %175 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp164, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.154, %land.lhs.true.149, %land.lhs.true, %if.then.143
  %call165 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PerlIO** [ %175, %cond.true ], [ %call165, %cond.false ]
  %call166 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.167

if.end.167:                                       ; preds = %cond.end, %if.end.137
  %176 = load %struct.sv**, %struct.sv*** %sp139, align 8
  %177 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast168 = ptrtoint %struct.sv** %176 to i64
  %sub.ptr.rhs.cast169 = ptrtoint %struct.sv** %177 to i64
  %sub.ptr.sub170 = sub i64 %sub.ptr.lhs.cast168, %sub.ptr.rhs.cast169
  %sub.ptr.div171 = sdiv exact i64 %sub.ptr.sub170, 8
  %178 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any172 = getelementptr inbounds %struct.av, %struct.av* %178, i32 0, i32 0
  %179 = load %struct.xpvav*, %struct.xpvav** %sv_any172, align 8
  %xav_fill173 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %179, i32 0, i32 1
  store i64 %sub.ptr.div171, i64* %xav_fill173, align 8
  %180 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack174 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %180, i32 0, i32 0
  %181 = load %struct.av*, %struct.av** %si_stack174, align 8
  %sv_any175 = getelementptr inbounds %struct.av, %struct.av* %181, i32 0, i32 0
  %182 = load %struct.xpvav*, %struct.xpvav** %sv_any175, align 8
  %xav_array176 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %182, i32 0, i32 0
  %183 = load i8*, i8** %xav_array176, align 8
  %184 = bitcast i8* %183 to %struct.sv**
  store %struct.sv** %184, %struct.sv*** @PL_stack_base, align 8
  %185 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %186 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack177 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %186, i32 0, i32 0
  %187 = load %struct.av*, %struct.av** %si_stack177, align 8
  %sv_any178 = getelementptr inbounds %struct.av, %struct.av* %187, i32 0, i32 0
  %188 = load %struct.xpvav*, %struct.xpvav** %sv_any178, align 8
  %xav_max179 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %188, i32 0, i32 2
  %189 = load i64, i64* %xav_max179, align 8
  %add.ptr180 = getelementptr inbounds %struct.sv*, %struct.sv** %185, i64 %189
  store %struct.sv** %add.ptr180, %struct.sv*** @PL_stack_max, align 8
  %190 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %191 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack181 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %191, i32 0, i32 0
  %192 = load %struct.av*, %struct.av** %si_stack181, align 8
  %sv_any182 = getelementptr inbounds %struct.av, %struct.av* %192, i32 0, i32 0
  %193 = load %struct.xpvav*, %struct.xpvav** %sv_any182, align 8
  %xav_fill183 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %193, i32 0, i32 1
  %194 = load i64, i64* %xav_fill183, align 8
  %add.ptr184 = getelementptr inbounds %struct.sv*, %struct.sv** %190, i64 %194
  store %struct.sv** %add.ptr184, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr184, %struct.sv*** %sp139, align 8
  %195 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack186 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %195, i32 0, i32 0
  %196 = load %struct.av*, %struct.av** %si_stack186, align 8
  store %struct.av* %196, %struct.av** @PL_curstack, align 8
  store %struct.av* %196, %struct.av** %tmp185
  %197 = load %struct.av*, %struct.av** %tmp185
  %198 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %198, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %198, %struct.stackinfo** %tmp187
  %199 = load %struct.stackinfo*, %struct.stackinfo** %tmp187
  %200 = load %struct.sv*, %struct.sv** %sv, align 8
  %call188 = call i32 @Perl_sv_isobject(%struct.sv* %200)
  %tobool189 = icmp ne i32 %call188, 0
  br i1 %tobool189, label %if.then.190, label %if.end.215

if.then.190:                                      ; preds = %if.end.167
  %201 = load %struct.sv*, %struct.sv** %varsv, align 8
  %202 = load i32, i32* %how, align 4
  %call191 = call i32 @Perl_sv_unmagic(%struct.sv* %201, i32 %202)
  %203 = load %struct.sv*, %struct.sv** %varsv, align 8
  %204 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any192 = getelementptr inbounds %struct.sv, %struct.sv* %204, i32 0, i32 0
  %205 = load i8*, i8** %sv_any192, align 8
  %206 = bitcast i8* %205 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %206, i32 0, i32 0
  %207 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %cmp193 = icmp eq %struct.sv* %203, %207
  br i1 %cmp193, label %land.lhs.true.195, label %if.end.206

land.lhs.true.195:                                ; preds = %if.then.190
  %208 = load %struct.sv*, %struct.sv** %varsv, align 8
  %sv_flags196 = getelementptr inbounds %struct.sv, %struct.sv* %208, i32 0, i32 2
  %209 = load i32, i32* %sv_flags196, align 4
  %and197 = and i32 %209, 255
  %cmp198 = icmp eq i32 %and197, 10
  br i1 %cmp198, label %if.then.205, label %lor.lhs.false.200

lor.lhs.false.200:                                ; preds = %land.lhs.true.195
  %210 = load %struct.sv*, %struct.sv** %varsv, align 8
  %sv_flags201 = getelementptr inbounds %struct.sv, %struct.sv* %210, i32 0, i32 2
  %211 = load i32, i32* %sv_flags201, align 4
  %and202 = and i32 %211, 255
  %cmp203 = icmp eq i32 %and202, 11
  br i1 %cmp203, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %lor.lhs.false.200, %land.lhs.true.195
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.205, %lor.lhs.false.200, %if.then.190
  %212 = load %struct.sv*, %struct.sv** %varsv, align 8
  %213 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any207 = getelementptr inbounds %struct.sv, %struct.sv* %213, i32 0, i32 0
  %214 = load i8*, i8** %sv_any207, align 8
  %215 = bitcast i8* %214 to %struct.xrv*
  %xrv_rv208 = getelementptr inbounds %struct.xrv, %struct.xrv* %215, i32 0, i32 0
  %216 = load %struct.sv*, %struct.sv** %xrv_rv208, align 8
  %217 = load %struct.sv*, %struct.sv** %varsv, align 8
  %cmp209 = icmp eq %struct.sv* %216, %217
  br i1 %cmp209, label %cond.true.211, label %cond.false.212

cond.true.211:                                    ; preds = %if.end.206
  br label %cond.end.213

cond.false.212:                                   ; preds = %if.end.206
  %218 = load %struct.sv*, %struct.sv** %sv, align 8
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.false.212, %cond.true.211
  %cond214 = phi %struct.sv* [ null, %cond.true.211 ], [ %218, %cond.false.212 ]
  %219 = load i32, i32* %how, align 4
  call void @Perl_sv_magic(%struct.sv* %212, %struct.sv* %cond214, i32 %219, i8* null, i32 0)
  br label %if.end.215

if.end.215:                                       ; preds = %cond.end.213, %if.end.167
  call void @Perl_pop_scope()
  %220 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %221 = load i32, i32* %markoff, align 4
  %idx.ext216 = sext i32 %221 to i64
  %add.ptr217 = getelementptr inbounds %struct.sv*, %struct.sv** %220, i64 %idx.ext216
  store %struct.sv** %add.ptr217, %struct.sv*** %sp, align 8
  %222 = load %struct.sv*, %struct.sv** %sv, align 8
  %223 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr218 = getelementptr inbounds %struct.sv*, %struct.sv** %223, i32 1
  store %struct.sv** %incdec.ptr218, %struct.sv*** %sp, align 8
  store %struct.sv* %222, %struct.sv** %incdec.ptr218, align 8
  %224 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %224, %struct.sv*** @PL_stack_sp, align 8
  %225 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %225, i32 0, i32 0
  %226 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %226, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.215, %if.then.70
  %227 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %227
}

declare %struct.io* @Perl_newIO() #1

declare %struct.stackinfo* @Perl_new_stackinfo(i32, i32) #1

declare %struct.hv* @Perl_gv_stashsv(%struct.sv*, i32) #1

declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #1

declare %struct._PerlIO** @Perl_PerlIO_stderr() #1

declare void @Perl_my_exit(i32) #1

declare i32 @Perl_sv_unmagic(%struct.sv*, i32) #1

declare void @Perl_croak(i8*, ...) #1

declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_untie() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %mg = alloca %struct.magic*, align 8
  %sv = alloca %struct.sv*, align 8
  %how = alloca i8, align 1
  %obj = alloca %struct.sv*, align 8
  %gv = alloca %struct.gv*, align 8
  %cv = alloca %struct.cv*, align 8
  %tmp = alloca i32, align 4
  %tmp55 = alloca %struct.sv*, align 8
  %tmp75 = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %2 = load %struct.sv*, %struct.sv** %1, align 8
  store %struct.sv* %2, %struct.sv** %sv, align 8
  %3 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and = and i32 %4, 255
  %cmp = icmp eq i32 %and, 11
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %5 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 2
  %6 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %6, 255
  %cmp3 = icmp eq i32 %and2, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %7 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %cond = select i1 %7, i32 80, i32 113
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* %how, align 1
  %8 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags4 = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 2
  %9 = load i32, i32* %sv_flags4, align 4
  %and5 = and i32 %9, 255
  %cmp6 = icmp eq i32 %and5, 13
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.end
  %10 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  %11 = load i8*, i8** %sv_any, align 8
  %12 = bitcast i8* %11 to %struct.xpvgv*
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %12, i32 0, i32 7
  %13 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %13, i32 0, i32 2
  %14 = load %struct.io*, %struct.io** %gp_io, align 8
  %15 = bitcast %struct.io* %14 to %struct.sv*
  store %struct.sv* %15, %struct.sv** %sv, align 8
  %tobool = icmp ne %struct.sv* %15, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %16 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr8 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i32 1
  store %struct.sv** %incdec.ptr8, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr8, align 8
  %17 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %17, %struct.sv*** @PL_stack_sp, align 8
  %18 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %18, i32 0, i32 0
  %19 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %19, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.end
  %20 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags9 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 2
  %21 = load i32, i32* %sv_flags9, align 4
  %and10 = and i32 %21, 32768
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %22 = load %struct.sv*, %struct.sv** %sv, align 8
  %23 = load i8, i8* %how, align 1
  %conv12 = sext i8 %23 to i32
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %22, i32 %conv12)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond13 = phi %struct.magic* [ %call, %cond.true ], [ null, %cond.false ]
  store %struct.magic* %cond13, %struct.magic** %mg, align 8
  %tobool14 = icmp ne %struct.magic* %cond13, null
  br i1 %tobool14, label %if.then.15, label %if.end.118

if.then.15:                                       ; preds = %cond.end
  %24 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %24, i32 0, i32 5
  %25 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool16 = icmp ne %struct.sv* %25, null
  br i1 %tobool16, label %cond.true.17, label %cond.false.19

cond.true.17:                                     ; preds = %if.then.15
  %26 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj18 = getelementptr inbounds %struct.magic, %struct.magic* %26, i32 0, i32 5
  %27 = load %struct.sv*, %struct.sv** %mg_obj18, align 8
  br label %cond.end.22

cond.false.19:                                    ; preds = %if.then.15
  %28 = load %struct.sv*, %struct.sv** %sv, align 8
  %call20 = call %struct.sv* @Perl_newRV(%struct.sv* %28)
  %call21 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call20)
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.19, %cond.true.17
  %cond23 = phi %struct.sv* [ %27, %cond.true.17 ], [ %call21, %cond.false.19 ]
  %sv_any24 = getelementptr inbounds %struct.sv, %struct.sv* %cond23, i32 0, i32 0
  %29 = load i8*, i8** %sv_any24, align 8
  %30 = bitcast i8* %29 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %30, i32 0, i32 0
  %31 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  store %struct.sv* %31, %struct.sv** %obj, align 8
  store %struct.cv* null, %struct.cv** %cv, align 8
  %32 = load %struct.sv*, %struct.sv** %obj, align 8
  %tobool25 = icmp ne %struct.sv* %32, null
  br i1 %tobool25, label %if.then.26, label %if.end.117

if.then.26:                                       ; preds = %cond.end.22
  %33 = load %struct.sv*, %struct.sv** %obj, align 8
  %sv_any27 = getelementptr inbounds %struct.sv, %struct.sv* %33, i32 0, i32 0
  %34 = load i8*, i8** %sv_any27, align 8
  %35 = bitcast i8* %34 to %struct.xpvmg*
  %xmg_stash = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %35, i32 0, i32 6
  %36 = load %struct.hv*, %struct.hv** %xmg_stash, align 8
  %call28 = call %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 0)
  store %struct.gv* %call28, %struct.gv** %gv, align 8
  %tobool29 = icmp ne %struct.gv* %call28, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else

land.lhs.true.30:                                 ; preds = %if.then.26
  %37 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_flags31 = getelementptr inbounds %struct.gv, %struct.gv* %37, i32 0, i32 2
  %38 = load i32, i32* %sv_flags31, align 4
  %and32 = and i32 %38, 255
  %cmp33 = icmp eq i32 %and32, 13
  br i1 %cmp33, label %land.lhs.true.35, label %if.else

land.lhs.true.35:                                 ; preds = %land.lhs.true.30
  %39 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any36 = getelementptr inbounds %struct.gv, %struct.gv* %39, i32 0, i32 0
  %40 = load %struct.xpvgv*, %struct.xpvgv** %sv_any36, align 8
  %xgv_gp37 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %40, i32 0, i32 7
  %41 = load %struct.gp*, %struct.gp** %xgv_gp37, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %41, i32 0, i32 7
  %42 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  store %struct.cv* %42, %struct.cv** %cv, align 8
  %tobool38 = icmp ne %struct.cv* %42, null
  br i1 %tobool38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %land.lhs.true.35
  %43 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr40 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %incdec.ptr40, i32** @PL_markstack_ptr, align 8
  %44 = load i32*, i32** @PL_markstack_max, align 8
  %cmp41 = icmp eq i32* %incdec.ptr40, %44
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.39
  call void @Perl_markstack_grow()
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.then.39
  %45 = load %struct.sv**, %struct.sv*** %sp, align 8
  %46 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %45 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %46 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv45 = trunc i64 %sub.ptr.div to i32
  %47 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv45, i32* %47, align 4
  store i32 %conv45, i32* %tmp
  %48 = load i32, i32* %tmp
  %49 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %50 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast46 = ptrtoint %struct.sv** %49 to i64
  %sub.ptr.rhs.cast47 = ptrtoint %struct.sv** %50 to i64
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47
  %sub.ptr.div49 = sdiv exact i64 %sub.ptr.sub48, 8
  %cmp50 = icmp slt i64 %sub.ptr.div49, 1
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end.44
  %51 = load %struct.sv**, %struct.sv*** %sp, align 8
  %52 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call53 = call %struct.sv** @Perl_stack_grow(%struct.sv** %51, %struct.sv** %52, i32 1)
  store %struct.sv** %call53, %struct.sv*** %sp, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.end.44
  %53 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj56 = getelementptr inbounds %struct.magic, %struct.magic* %53, i32 0, i32 5
  %54 = load %struct.sv*, %struct.sv** %mg_obj56, align 8
  %tobool57 = icmp ne %struct.sv* %54, null
  br i1 %tobool57, label %cond.true.58, label %cond.false.60

cond.true.58:                                     ; preds = %if.end.54
  %55 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj59 = getelementptr inbounds %struct.magic, %struct.magic* %55, i32 0, i32 5
  %56 = load %struct.sv*, %struct.sv** %mg_obj59, align 8
  br label %cond.end.63

cond.false.60:                                    ; preds = %if.end.54
  %57 = load %struct.gv*, %struct.gv** %gv, align 8
  %58 = bitcast %struct.gv* %57 to %struct.sv*
  %call61 = call %struct.sv* @Perl_newRV(%struct.sv* %58)
  %call62 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call61)
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.60, %cond.true.58
  %cond64 = phi %struct.sv* [ %56, %cond.true.58 ], [ %call62, %cond.false.60 ]
  %59 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr65 = getelementptr inbounds %struct.sv*, %struct.sv** %59, i32 1
  store %struct.sv** %incdec.ptr65, %struct.sv*** %sp, align 8
  store %struct.sv* %cond64, %struct.sv** %incdec.ptr65, align 8
  store %struct.sv* %cond64, %struct.sv** %tmp55
  %60 = load %struct.sv*, %struct.sv** %tmp55
  %61 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %62 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast66 = ptrtoint %struct.sv** %61 to i64
  %sub.ptr.rhs.cast67 = ptrtoint %struct.sv** %62 to i64
  %sub.ptr.sub68 = sub i64 %sub.ptr.lhs.cast66, %sub.ptr.rhs.cast67
  %sub.ptr.div69 = sdiv exact i64 %sub.ptr.sub68, 8
  %cmp70 = icmp slt i64 %sub.ptr.div69, 1
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %cond.end.63
  %63 = load %struct.sv**, %struct.sv*** %sp, align 8
  %64 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call73 = call %struct.sv** @Perl_stack_grow(%struct.sv** %63, %struct.sv** %64, i32 1)
  store %struct.sv** %call73, %struct.sv*** %sp, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %cond.end.63
  %65 = load %struct.sv*, %struct.sv** %obj, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %65, i32 0, i32 1
  %66 = load i32, i32* %sv_refcnt, align 4
  %sub = sub i32 %66, 1
  %conv76 = zext i32 %sub to i64
  %call77 = call %struct.sv* @Perl_newSViv(i64 %conv76)
  %call78 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call77)
  %67 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr79 = getelementptr inbounds %struct.sv*, %struct.sv** %67, i32 1
  store %struct.sv** %incdec.ptr79, %struct.sv*** %sp, align 8
  store %struct.sv* %call78, %struct.sv** %incdec.ptr79, align 8
  store %struct.sv* %call78, %struct.sv** %tmp75
  %68 = load %struct.sv*, %struct.sv** %tmp75
  %69 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %69, %struct.sv*** @PL_stack_sp, align 8
  call void @Perl_push_scope()
  %70 = load %struct.cv*, %struct.cv** %cv, align 8
  %71 = bitcast %struct.cv* %70 to %struct.sv*
  %call80 = call i32 @Perl_call_sv(%struct.sv* %71, i32 128)
  call void @Perl_pop_scope()
  %72 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %72, %struct.sv*** %sp, align 8
  br label %if.end.116

if.else:                                          ; preds = %land.lhs.true.35, %land.lhs.true.30, %if.then.26
  %73 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %73, i32 0, i32 14
  %74 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp81 = icmp ne %struct.sv* %74, null
  br i1 %cmp81, label %land.lhs.true.83, label %lor.lhs.false.96

land.lhs.true.83:                                 ; preds = %if.else
  %75 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings84 = getelementptr inbounds %struct.cop, %struct.cop* %75, i32 0, i32 14
  %76 = load %struct.sv*, %struct.sv** %cop_warnings84, align 8
  %cmp85 = icmp ne %struct.sv* %76, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp85, label %land.lhs.true.87, label %lor.lhs.false.96

land.lhs.true.87:                                 ; preds = %land.lhs.true.83
  %77 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings88 = getelementptr inbounds %struct.cop, %struct.cop* %77, i32 0, i32 14
  %78 = load %struct.sv*, %struct.sv** %cop_warnings88, align 8
  %cmp89 = icmp eq %struct.sv* %78, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp89, label %if.then.104, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.87
  %79 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings91 = getelementptr inbounds %struct.cop, %struct.cop* %79, i32 0, i32 14
  %80 = load %struct.sv*, %struct.sv** %cop_warnings91, align 8
  %sv_any92 = getelementptr inbounds %struct.sv, %struct.sv* %80, i32 0, i32 0
  %81 = load i8*, i8** %sv_any92, align 8
  %82 = bitcast i8* %81 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %82, i32 0, i32 0
  %83 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %83, i64 10
  %84 = load i8, i8* %arrayidx, align 1
  %conv93 = sext i8 %84 to i32
  %and94 = and i32 %conv93, 64
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %if.then.104, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %lor.lhs.false, %land.lhs.true.83, %if.else
  %85 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings97 = getelementptr inbounds %struct.cop, %struct.cop* %85, i32 0, i32 14
  %86 = load %struct.sv*, %struct.sv** %cop_warnings97, align 8
  %cmp98 = icmp eq %struct.sv* %86, null
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.115

land.lhs.true.100:                                ; preds = %lor.lhs.false.96
  %87 = load i8, i8* @PL_dowarn, align 1
  %conv101 = zext i8 %87 to i32
  %and102 = and i32 %conv101, 1
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %if.then.104, label %if.end.115

if.then.104:                                      ; preds = %land.lhs.true.100, %lor.lhs.false, %land.lhs.true.87
  %88 = load %struct.magic*, %struct.magic** %mg, align 8
  %tobool105 = icmp ne %struct.magic* %88, null
  br i1 %tobool105, label %land.lhs.true.106, label %if.end.114

land.lhs.true.106:                                ; preds = %if.then.104
  %89 = load %struct.sv*, %struct.sv** %obj, align 8
  %sv_refcnt107 = getelementptr inbounds %struct.sv, %struct.sv* %89, i32 0, i32 1
  %90 = load i32, i32* %sv_refcnt107, align 4
  %cmp108 = icmp ugt i32 %90, 1
  br i1 %cmp108, label %if.then.110, label %if.end.114

if.then.110:                                      ; preds = %land.lhs.true.106
  %91 = load %struct.sv*, %struct.sv** %obj, align 8
  %sv_refcnt111 = getelementptr inbounds %struct.sv, %struct.sv* %91, i32 0, i32 1
  %92 = load i32, i32* %sv_refcnt111, align 4
  %conv112 = zext i32 %92 to i64
  %sub113 = sub i64 %conv112, 1
  call void (i32, i8*, ...) @Perl_warner(i32 43, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.28, i32 0, i32 0), i64 %sub113)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.110, %land.lhs.true.106, %if.then.104
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %land.lhs.true.100, %lor.lhs.false.96
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.end.74
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %cond.end.22
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %cond.end
  %93 = load %struct.sv*, %struct.sv** %sv, align 8
  %94 = load i8, i8* %how, align 1
  %conv119 = sext i8 %94 to i32
  %call120 = call i32 @Perl_sv_unmagic(%struct.sv* %93, i32 %conv119)
  %95 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr121 = getelementptr inbounds %struct.sv*, %struct.sv** %95, i32 1
  store %struct.sv** %incdec.ptr121, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr121, align 8
  %96 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %96, %struct.sv*** @PL_stack_sp, align 8
  %97 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next122 = getelementptr inbounds %struct.op, %struct.op* %97, i32 0, i32 0
  %98 = load %struct.op*, %struct.op** %op_next122, align 8
  store %struct.op* %98, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.118, %if.then
  %99 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %99
}

declare %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv*, i8*, i32) #1

declare %struct.sv* @Perl_newSViv(i64) #1

declare void @Perl_warner(i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_tied() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %mg = alloca %struct.magic*, align 8
  %sv = alloca %struct.sv*, align 8
  %how = alloca i8, align 1
  %osv = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %2 = load %struct.sv*, %struct.sv** %1, align 8
  store %struct.sv* %2, %struct.sv** %sv, align 8
  %3 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and = and i32 %4, 255
  %cmp = icmp eq i32 %and, 11
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %5 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 2
  %6 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %6, 255
  %cmp3 = icmp eq i32 %and2, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %7 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %cond = select i1 %7, i32 80, i32 113
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* %how, align 1
  %8 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags4 = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 2
  %9 = load i32, i32* %sv_flags4, align 4
  %and5 = and i32 %9, 255
  %cmp6 = icmp eq i32 %and5, 13
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.end
  %10 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  %11 = load i8*, i8** %sv_any, align 8
  %12 = bitcast i8* %11 to %struct.xpvgv*
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %12, i32 0, i32 7
  %13 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %13, i32 0, i32 2
  %14 = load %struct.io*, %struct.io** %gp_io, align 8
  %15 = bitcast %struct.io* %14 to %struct.sv*
  store %struct.sv* %15, %struct.sv** %sv, align 8
  %tobool = icmp ne %struct.sv* %15, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %16 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr8 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i32 1
  store %struct.sv** %incdec.ptr8, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr8, align 8
  %17 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %17, %struct.sv*** @PL_stack_sp, align 8
  %18 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %18, i32 0, i32 0
  %19 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %19, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.end
  %20 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags9 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 2
  %21 = load i32, i32* %sv_flags9, align 4
  %and10 = and i32 %21, 32768
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %22 = load %struct.sv*, %struct.sv** %sv, align 8
  %23 = load i8, i8* %how, align 1
  %conv12 = sext i8 %23 to i32
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %22, i32 %conv12)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond13 = phi %struct.magic* [ %call, %cond.true ], [ null, %cond.false ]
  store %struct.magic* %cond13, %struct.magic** %mg, align 8
  %tobool14 = icmp ne %struct.magic* %cond13, null
  br i1 %tobool14, label %if.then.15, label %if.end.32

if.then.15:                                       ; preds = %cond.end
  %24 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %24, i32 0, i32 5
  %25 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool16 = icmp ne %struct.sv* %25, null
  br i1 %tobool16, label %cond.true.17, label %cond.false.19

cond.true.17:                                     ; preds = %if.then.15
  %26 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj18 = getelementptr inbounds %struct.magic, %struct.magic* %26, i32 0, i32 5
  %27 = load %struct.sv*, %struct.sv** %mg_obj18, align 8
  br label %cond.end.22

cond.false.19:                                    ; preds = %if.then.15
  %28 = load %struct.sv*, %struct.sv** %sv, align 8
  %call20 = call %struct.sv* @Perl_newRV(%struct.sv* %28)
  %call21 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call20)
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.19, %cond.true.17
  %cond23 = phi %struct.sv* [ %27, %cond.true.17 ], [ %call21, %cond.false.19 ]
  store %struct.sv* %cond23, %struct.sv** %osv, align 8
  %29 = load %struct.sv*, %struct.sv** %osv, align 8
  %30 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj24 = getelementptr inbounds %struct.magic, %struct.magic* %30, i32 0, i32 5
  %31 = load %struct.sv*, %struct.sv** %mg_obj24, align 8
  %cmp25 = icmp eq %struct.sv* %29, %31
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %cond.end.22
  %32 = load %struct.sv*, %struct.sv** %osv, align 8
  %call28 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %32)
  store %struct.sv* %call28, %struct.sv** %osv, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %cond.end.22
  %33 = load %struct.sv*, %struct.sv** %osv, align 8
  %34 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr30 = getelementptr inbounds %struct.sv*, %struct.sv** %34, i32 1
  store %struct.sv** %incdec.ptr30, %struct.sv*** %sp, align 8
  store %struct.sv* %33, %struct.sv** %incdec.ptr30, align 8
  %35 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %35, %struct.sv*** @PL_stack_sp, align 8
  %36 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next31 = getelementptr inbounds %struct.op, %struct.op* %36, i32 0, i32 0
  %37 = load %struct.op*, %struct.op** %op_next31, align 8
  store %struct.op* %37, %struct.op** %retval
  br label %return

if.end.32:                                        ; preds = %cond.end
  %38 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr33 = getelementptr inbounds %struct.sv*, %struct.sv** %38, i32 1
  store %struct.sv** %incdec.ptr33, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr33, align 8
  %39 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %39, %struct.sv*** @PL_stack_sp, align 8
  %40 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next34 = getelementptr inbounds %struct.op, %struct.op* %40, i32 0, i32 0
  %41 = load %struct.op*, %struct.op** %op_next34, align 8
  store %struct.op* %41, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.end.29, %if.then
  %42 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %42
}

declare %struct.sv* @Perl_sv_mortalcopy(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_dbmopen() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %hv = alloca %struct.hv*, align 8
  %right = alloca %struct.sv*, align 8
  %left = alloca %struct.sv*, align 8
  %stash = alloca %struct.hv*, align 8
  %gv = alloca %struct.gv*, align 8
  %sv = alloca %struct.sv*, align 8
  %tmp = alloca i32, align 4
  %tmp49 = alloca i32, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %2 = load %struct.sv*, %struct.sv** %1, align 8
  store %struct.sv* %2, %struct.sv** %right, align 8
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.sv*, %struct.sv** %3, i32 -1
  store %struct.sv** %incdec.ptr1, %struct.sv*** %sp, align 8
  %4 = load %struct.sv*, %struct.sv** %3, align 8
  store %struct.sv* %4, %struct.sv** %left, align 8
  %5 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr2 = getelementptr inbounds %struct.sv*, %struct.sv** %5, i32 -1
  store %struct.sv** %incdec.ptr2, %struct.sv*** %sp, align 8
  %6 = load %struct.sv*, %struct.sv** %5, align 8
  %7 = bitcast %struct.sv* %6 to %struct.hv*
  store %struct.hv* %7, %struct.hv** %hv, align 8
  %call = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* @PL_sv_no)
  store %struct.sv* %call, %struct.sv** %sv, align 8
  %8 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_setpv(%struct.sv* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0))
  %9 = load %struct.sv*, %struct.sv** %sv, align 8
  %call3 = call %struct.hv* @Perl_gv_stashsv(%struct.sv* %9, i32 0)
  store %struct.hv* %call3, %struct.hv** %stash, align 8
  %10 = load %struct.hv*, %struct.hv** %stash, align 8
  %tobool = icmp ne %struct.hv* %10, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %11 = load %struct.hv*, %struct.hv** %stash, align 8
  %call4 = call %struct.gv* @Perl_gv_fetchmethod(%struct.hv* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0))
  store %struct.gv* %call4, %struct.gv** %gv, align 8
  %tobool5 = icmp ne %struct.gv* %call4, null
  br i1 %tobool5, label %if.end.10, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %12, %struct.sv*** @PL_stack_sp, align 8
  call void @Perl_require_pv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0))
  %13 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %13, %struct.sv*** %sp, align 8
  %14 = load %struct.hv*, %struct.hv** %stash, align 8
  %call6 = call %struct.gv* @Perl_gv_fetchmethod(%struct.hv* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0))
  store %struct.gv* %call6, %struct.gv** %gv, align 8
  %tobool7 = icmp ne %struct.gv* %call6, null
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then
  %call9 = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i32 0, i32 0))
  store %struct.op* %call9, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %lor.lhs.false
  call void @Perl_push_scope()
  %15 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr11 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %incdec.ptr11, i32** @PL_markstack_ptr, align 8
  %16 = load i32*, i32** @PL_markstack_max, align 8
  %cmp = icmp eq i32* %incdec.ptr11, %16
  br i1 %cmp, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  call void @Perl_markstack_grow()
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  %17 = load %struct.sv**, %struct.sv*** %sp, align 8
  %18 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %17 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  %19 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv, i32* %19, align 4
  store i32 %conv, i32* %tmp
  %20 = load i32, i32* %tmp
  %21 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %22 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast14 = ptrtoint %struct.sv** %21 to i64
  %sub.ptr.rhs.cast15 = ptrtoint %struct.sv** %22 to i64
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15
  %sub.ptr.div17 = sdiv exact i64 %sub.ptr.sub16, 8
  %cmp18 = icmp slt i64 %sub.ptr.div17, 5
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.13
  %23 = load %struct.sv**, %struct.sv*** %sp, align 8
  %24 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call21 = call %struct.sv** @Perl_stack_grow(%struct.sv** %23, %struct.sv** %24, i32 5)
  store %struct.sv** %call21, %struct.sv*** %sp, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.13
  %25 = load %struct.sv*, %struct.sv** %sv, align 8
  %26 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr23 = getelementptr inbounds %struct.sv*, %struct.sv** %26, i32 1
  store %struct.sv** %incdec.ptr23, %struct.sv*** %sp, align 8
  store %struct.sv* %25, %struct.sv** %incdec.ptr23, align 8
  %27 = load %struct.sv*, %struct.sv** %left, align 8
  %28 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr24 = getelementptr inbounds %struct.sv*, %struct.sv** %28, i32 1
  store %struct.sv** %incdec.ptr24, %struct.sv*** %sp, align 8
  store %struct.sv* %27, %struct.sv** %incdec.ptr24, align 8
  %29 = load %struct.sv*, %struct.sv** %right, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 2
  %30 = load i32, i32* %sv_flags, align 4
  %and = and i32 %30, 65536
  %tobool25 = icmp ne i32 %and, 0
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.22
  %31 = load %struct.sv*, %struct.sv** %right, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %31, i32 0, i32 0
  %32 = load i8*, i8** %sv_any, align 8
  %33 = bitcast i8* %32 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %33, i32 0, i32 3
  %34 = load i64, i64* %xiv_iv, align 8
  %tobool26 = icmp ne i64 %34, 0
  br i1 %tobool26, label %if.then.29, label %if.else

cond.false:                                       ; preds = %if.end.22
  %35 = load %struct.sv*, %struct.sv** %right, align 8
  %call27 = call i64 @Perl_sv_2iv(%struct.sv* %35)
  %tobool28 = icmp ne i64 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %cond.false, %cond.true
  %call30 = call %struct.sv* @Perl_newSVuv(i64 66)
  %call31 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call30)
  %36 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr32 = getelementptr inbounds %struct.sv*, %struct.sv** %36, i32 1
  store %struct.sv** %incdec.ptr32, %struct.sv*** %sp, align 8
  store %struct.sv* %call31, %struct.sv** %incdec.ptr32, align 8
  br label %if.end.36

if.else:                                          ; preds = %cond.false, %cond.true
  %call33 = call %struct.sv* @Perl_newSVuv(i64 2)
  %call34 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call33)
  %37 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr35 = getelementptr inbounds %struct.sv*, %struct.sv** %37, i32 1
  store %struct.sv** %incdec.ptr35, %struct.sv*** %sp, align 8
  store %struct.sv* %call34, %struct.sv** %incdec.ptr35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.29
  %38 = load %struct.sv*, %struct.sv** %right, align 8
  %39 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr37 = getelementptr inbounds %struct.sv*, %struct.sv** %39, i32 1
  store %struct.sv** %incdec.ptr37, %struct.sv*** %sp, align 8
  store %struct.sv* %38, %struct.sv** %incdec.ptr37, align 8
  %40 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %40, %struct.sv*** @PL_stack_sp, align 8
  %41 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any38 = getelementptr inbounds %struct.gv, %struct.gv* %41, i32 0, i32 0
  %42 = load %struct.xpvgv*, %struct.xpvgv** %sv_any38, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %42, i32 0, i32 7
  %43 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %43, i32 0, i32 7
  %44 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  %45 = bitcast %struct.cv* %44 to %struct.sv*
  %call39 = call i32 @Perl_call_sv(%struct.sv* %45, i32 0)
  %46 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %46, %struct.sv*** %sp, align 8
  %47 = load %struct.sv**, %struct.sv*** %sp, align 8
  %48 = load %struct.sv*, %struct.sv** %47, align 8
  %call40 = call i32 @Perl_sv_isobject(%struct.sv* %48)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.65, label %if.then.42

if.then.42:                                       ; preds = %if.end.36
  %49 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr43 = getelementptr inbounds %struct.sv*, %struct.sv** %49, i32 -1
  store %struct.sv** %incdec.ptr43, %struct.sv*** %sp, align 8
  %50 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr44 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %incdec.ptr44, i32** @PL_markstack_ptr, align 8
  %51 = load i32*, i32** @PL_markstack_max, align 8
  %cmp45 = icmp eq i32* %incdec.ptr44, %51
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.42
  call void @Perl_markstack_grow()
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.then.42
  %52 = load %struct.sv**, %struct.sv*** %sp, align 8
  %53 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast50 = ptrtoint %struct.sv** %52 to i64
  %sub.ptr.rhs.cast51 = ptrtoint %struct.sv** %53 to i64
  %sub.ptr.sub52 = sub i64 %sub.ptr.lhs.cast50, %sub.ptr.rhs.cast51
  %sub.ptr.div53 = sdiv exact i64 %sub.ptr.sub52, 8
  %conv54 = trunc i64 %sub.ptr.div53 to i32
  %54 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv54, i32* %54, align 4
  store i32 %conv54, i32* %tmp49
  %55 = load i32, i32* %tmp49
  %56 = load %struct.sv*, %struct.sv** %sv, align 8
  %57 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr55 = getelementptr inbounds %struct.sv*, %struct.sv** %57, i32 1
  store %struct.sv** %incdec.ptr55, %struct.sv*** %sp, align 8
  store %struct.sv* %56, %struct.sv** %incdec.ptr55, align 8
  %58 = load %struct.sv*, %struct.sv** %left, align 8
  %59 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr56 = getelementptr inbounds %struct.sv*, %struct.sv** %59, i32 1
  store %struct.sv** %incdec.ptr56, %struct.sv*** %sp, align 8
  store %struct.sv* %58, %struct.sv** %incdec.ptr56, align 8
  %call57 = call %struct.sv* @Perl_newSVuv(i64 0)
  %call58 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call57)
  %60 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr59 = getelementptr inbounds %struct.sv*, %struct.sv** %60, i32 1
  store %struct.sv** %incdec.ptr59, %struct.sv*** %sp, align 8
  store %struct.sv* %call58, %struct.sv** %incdec.ptr59, align 8
  %61 = load %struct.sv*, %struct.sv** %right, align 8
  %62 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr60 = getelementptr inbounds %struct.sv*, %struct.sv** %62, i32 1
  store %struct.sv** %incdec.ptr60, %struct.sv*** %sp, align 8
  store %struct.sv* %61, %struct.sv** %incdec.ptr60, align 8
  %63 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %63, %struct.sv*** @PL_stack_sp, align 8
  %64 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any61 = getelementptr inbounds %struct.gv, %struct.gv* %64, i32 0, i32 0
  %65 = load %struct.xpvgv*, %struct.xpvgv** %sv_any61, align 8
  %xgv_gp62 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %65, i32 0, i32 7
  %66 = load %struct.gp*, %struct.gp** %xgv_gp62, align 8
  %gp_cv63 = getelementptr inbounds %struct.gp, %struct.gp* %66, i32 0, i32 7
  %67 = load %struct.cv*, %struct.cv** %gp_cv63, align 8
  %68 = bitcast %struct.cv* %67 to %struct.sv*
  %call64 = call i32 @Perl_call_sv(%struct.sv* %68, i32 0)
  %69 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %69, %struct.sv*** %sp, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.48, %if.end.36
  %70 = load %struct.sv**, %struct.sv*** %sp, align 8
  %71 = load %struct.sv*, %struct.sv** %70, align 8
  %call66 = call i32 @Perl_sv_isobject(%struct.sv* %71)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.65
  %72 = load %struct.hv*, %struct.hv** %hv, align 8
  %73 = bitcast %struct.hv* %72 to %struct.sv*
  %call69 = call i32 @Perl_sv_unmagic(%struct.sv* %73, i32 80)
  %74 = load %struct.hv*, %struct.hv** %hv, align 8
  %75 = bitcast %struct.hv* %74 to %struct.sv*
  %76 = load %struct.sv**, %struct.sv*** %sp, align 8
  %77 = load %struct.sv*, %struct.sv** %76, align 8
  call void @Perl_sv_magic(%struct.sv* %75, %struct.sv* %77, i32 80, i8* null, i32 0)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.65
  call void @Perl_pop_scope()
  %78 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %78, %struct.sv*** @PL_stack_sp, align 8
  %79 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %79, i32 0, i32 0
  %80 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %80, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.70, %if.then.8
  %81 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %81
}

declare void @Perl_require_pv(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_dbmclose() #0 {
entry:
  %call = call %struct.op* @Perl_pp_untie()
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_sselect() #0 {
entry:
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca i8*, align 8
  %sv = alloca %struct.sv*, align 8
  %value = alloca double, align 8
  %maxlen = alloca i32, align 4
  %nfound = alloca i32, align 4
  %timebuf = alloca %struct.timeval, align 8
  %tbuf = alloca %struct.timeval*, align 8
  %growsize = alloca i32, align 4
  %fd_sets = alloca [4 x i8*], align 16
  %n_a = alloca i64, align 8
  %tmp = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 3
  %2 = load i64, i64* %op_targ, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %4, %struct.sv** %targ, align 8
  store i32 0, i32* %maxlen, align 4
  store %struct.timeval* %timebuf, %struct.timeval** %tbuf, align 8
  %5 = load %struct.sv**, %struct.sv*** %sp, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %5, i64 -4
  store %struct.sv** %add.ptr, %struct.sv*** %sp, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %6, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  %arrayidx1 = getelementptr inbounds %struct.sv*, %struct.sv** %8, i64 %idxprom
  %9 = load %struct.sv*, %struct.sv** %arrayidx1, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 2
  %10 = load i32, i32* %sv_flags, align 4
  %and = and i32 %10, 262144
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %11 to i64
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  %arrayidx3 = getelementptr inbounds %struct.sv*, %struct.sv** %12, i64 %idxprom2
  %13 = load %struct.sv*, %struct.sv** %arrayidx3, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 0
  %14 = load i8*, i8** %sv_any, align 8
  %15 = bitcast i8* %14 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %15, i32 0, i32 1
  %16 = load i64, i64* %xpv_cur, align 8
  %conv = trunc i64 %16 to i32
  store i32 %conv, i32* %j, align 4
  %17 = load i32, i32* %maxlen, align 4
  %18 = load i32, i32* %j, align 4
  %cmp4 = icmp slt i32 %17, %18
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %19 = load i32, i32* %j, align 4
  store i32 %19, i32* %maxlen, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.7, %if.then
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %maxlen, align 4
  %22 = load i32, i32* %maxlen, align 4
  %rem = srem i32 %22, 128
  %sub = sub nsw i32 128, %rem
  %add = add nsw i32 %21, %sub
  store i32 %add, i32* %growsize, align 4
  %23 = load %struct.sv**, %struct.sv*** %sp, align 8
  %arrayidx8 = getelementptr inbounds %struct.sv*, %struct.sv** %23, i64 4
  %24 = load %struct.sv*, %struct.sv** %arrayidx8, align 8
  store %struct.sv* %24, %struct.sv** %sv, align 8
  %25 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags9 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 2
  %26 = load i32, i32* %sv_flags9, align 4
  %and10 = and i32 %26, 118423552
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %for.end
  %27 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags13 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 2
  %28 = load i32, i32* %sv_flags13, align 4
  %and14 = and i32 %28, 131072
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.12
  %29 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any16 = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 0
  %30 = load i8*, i8** %sv_any16, align 8
  %31 = bitcast i8* %30 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %31, i32 0, i32 4
  %32 = load double, double* %xnv_nv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.12
  %33 = load %struct.sv*, %struct.sv** %sv, align 8
  %call = call double @Perl_sv_2nv(%struct.sv* %33)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %32, %cond.true ], [ %call, %cond.false ]
  store double %cond, double* %value, align 8
  %34 = load double, double* %value, align 8
  %cmp17 = fcmp olt double %34, 0.000000e+00
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %cond.end
  store double 0.000000e+00, double* %value, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %cond.end
  %35 = load double, double* %value, align 8
  %conv21 = fptosi double %35 to i64
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %timebuf, i32 0, i32 0
  store i64 %conv21, i64* %tv_sec, align 8
  %tv_sec22 = getelementptr inbounds %struct.timeval, %struct.timeval* %timebuf, i32 0, i32 0
  %36 = load i64, i64* %tv_sec22, align 8
  %conv23 = sitofp i64 %36 to double
  %37 = load double, double* %value, align 8
  %sub24 = fsub double %37, %conv23
  store double %sub24, double* %value, align 8
  %38 = load double, double* %value, align 8
  %mul = fmul double %38, 1.000000e+06
  %conv25 = fptosi double %mul to i64
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %timebuf, i32 0, i32 1
  store i64 %conv25, i64* %tv_usec, align 8
  br label %if.end.26

if.else:                                          ; preds = %for.end
  store %struct.timeval* null, %struct.timeval** %tbuf, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.end.20
  store i32 1, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.79, %if.end.26
  %39 = load i32, i32* %i, align 4
  %cmp28 = icmp sle i32 %39, 3
  br i1 %cmp28, label %for.body.30, label %for.end.81

for.body.30:                                      ; preds = %for.cond.27
  %40 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %40 to i64
  %41 = load %struct.sv**, %struct.sv*** %sp, align 8
  %arrayidx32 = getelementptr inbounds %struct.sv*, %struct.sv** %41, i64 %idxprom31
  %42 = load %struct.sv*, %struct.sv** %arrayidx32, align 8
  store %struct.sv* %42, %struct.sv** %sv, align 8
  %43 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags33 = getelementptr inbounds %struct.sv, %struct.sv* %43, i32 0, i32 2
  %44 = load i32, i32* %sv_flags33, align 4
  %and34 = and i32 %44, 118423552
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.else.39, label %if.then.36

if.then.36:                                       ; preds = %for.body.30
  %45 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %45 to i64
  %arrayidx38 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fd_sets, i32 0, i64 %idxprom37
  store i8* null, i8** %arrayidx38, align 8
  br label %for.inc.79

if.else.39:                                       ; preds = %for.body.30
  %46 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags40 = getelementptr inbounds %struct.sv, %struct.sv* %46, i32 0, i32 2
  %47 = load i32, i32* %sv_flags40, align 4
  %and41 = and i32 %47, 262144
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.end.56, label %if.then.43

if.then.43:                                       ; preds = %if.else.39
  %48 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags44 = getelementptr inbounds %struct.sv, %struct.sv* %48, i32 0, i32 2
  %49 = load i32, i32* %sv_flags44, align 4
  %and45 = and i32 %49, 10223616
  %cmp46 = icmp eq i32 %and45, 262144
  br i1 %cmp46, label %cond.true.48, label %cond.false.52

cond.true.48:                                     ; preds = %if.then.43
  %50 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any49 = getelementptr inbounds %struct.sv, %struct.sv* %50, i32 0, i32 0
  %51 = load i8*, i8** %sv_any49, align 8
  %52 = bitcast i8* %51 to %struct.xpv*
  %xpv_cur50 = getelementptr inbounds %struct.xpv, %struct.xpv* %52, i32 0, i32 1
  %53 = load i64, i64* %xpv_cur50, align 8
  store i64 %53, i64* %n_a, align 8
  %54 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any51 = getelementptr inbounds %struct.sv, %struct.sv* %54, i32 0, i32 0
  %55 = load i8*, i8** %sv_any51, align 8
  %56 = bitcast i8* %55 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %56, i32 0, i32 0
  %57 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.54

cond.false.52:                                    ; preds = %if.then.43
  %58 = load %struct.sv*, %struct.sv** %sv, align 8
  %call53 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %58, i64* %n_a, i32 2)
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.52, %cond.true.48
  %cond55 = phi i8* [ %57, %cond.true.48 ], [ %call53, %cond.false.52 ]
  br label %if.end.56

if.end.56:                                        ; preds = %cond.end.54, %if.else.39
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56
  %59 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any58 = getelementptr inbounds %struct.sv, %struct.sv* %59, i32 0, i32 0
  %60 = load i8*, i8** %sv_any58, align 8
  %61 = bitcast i8* %60 to %struct.xpv*
  %xpv_len = getelementptr inbounds %struct.xpv, %struct.xpv* %61, i32 0, i32 2
  %62 = load i64, i64* %xpv_len, align 8
  %conv59 = trunc i64 %62 to i32
  store i32 %conv59, i32* %j, align 4
  %63 = load i32, i32* %j, align 4
  %64 = load i32, i32* %growsize, align 4
  %cmp60 = icmp slt i32 %63, %64
  br i1 %cmp60, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.end.57
  %65 = load %struct.sv*, %struct.sv** %sv, align 8
  %66 = load i32, i32* %growsize, align 4
  %conv63 = sext i32 %66 to i64
  %call64 = call i8* @Perl_sv_grow(%struct.sv* %65, i64 %conv63)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %if.end.57
  %67 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any66 = getelementptr inbounds %struct.sv, %struct.sv* %67, i32 0, i32 0
  %68 = load i8*, i8** %sv_any66, align 8
  %69 = bitcast i8* %68 to %struct.xpv*
  %xpv_cur67 = getelementptr inbounds %struct.xpv, %struct.xpv* %69, i32 0, i32 1
  %70 = load i64, i64* %xpv_cur67, align 8
  %conv68 = trunc i64 %70 to i32
  store i32 %conv68, i32* %j, align 4
  %71 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any69 = getelementptr inbounds %struct.sv, %struct.sv* %71, i32 0, i32 0
  %72 = load i8*, i8** %sv_any69, align 8
  %73 = bitcast i8* %72 to %struct.xpv*
  %xpv_pv70 = getelementptr inbounds %struct.xpv, %struct.xpv* %73, i32 0, i32 0
  %74 = load i8*, i8** %xpv_pv70, align 8
  %75 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %75 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %74, i64 %idx.ext
  store i8* %add.ptr71, i8** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.65
  %76 = load i32, i32* %j, align 4
  %inc72 = add nsw i32 %76, 1
  store i32 %inc72, i32* %j, align 4
  %77 = load i32, i32* %growsize, align 4
  %cmp73 = icmp sle i32 %inc72, %77
  br i1 %cmp73, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %78 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  store i8 0, i8* %78, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %79 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any75 = getelementptr inbounds %struct.sv, %struct.sv* %79, i32 0, i32 0
  %80 = load i8*, i8** %sv_any75, align 8
  %81 = bitcast i8* %80 to %struct.xpv*
  %xpv_pv76 = getelementptr inbounds %struct.xpv, %struct.xpv* %81, i32 0, i32 0
  %82 = load i8*, i8** %xpv_pv76, align 8
  %83 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %83 to i64
  %arrayidx78 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fd_sets, i32 0, i64 %idxprom77
  store i8* %82, i8** %arrayidx78, align 8
  br label %for.inc.79

for.inc.79:                                       ; preds = %while.end, %if.then.36
  %84 = load i32, i32* %i, align 4
  %inc80 = add nsw i32 %84, 1
  store i32 %inc80, i32* %i, align 4
  br label %for.cond.27

for.end.81:                                       ; preds = %for.cond.27
  %85 = load i32, i32* %maxlen, align 4
  %mul82 = mul nsw i32 %85, 8
  %arrayidx83 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fd_sets, i32 0, i64 1
  %86 = load i8*, i8** %arrayidx83, align 8
  %87 = bitcast i8* %86 to %struct.fd_set*
  %arrayidx84 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fd_sets, i32 0, i64 2
  %88 = load i8*, i8** %arrayidx84, align 8
  %89 = bitcast i8* %88 to %struct.fd_set*
  %arrayidx85 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fd_sets, i32 0, i64 3
  %90 = load i8*, i8** %arrayidx85, align 8
  %91 = bitcast i8* %90 to %struct.fd_set*
  %92 = load %struct.timeval*, %struct.timeval** %tbuf, align 8
  %call86 = call i32 @select(i32 %mul82, %struct.fd_set* %87, %struct.fd_set* %89, %struct.fd_set* %91, %struct.timeval* %92)
  store i32 %call86, i32* %nfound, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.104, %for.end.81
  %93 = load i32, i32* %i, align 4
  %cmp88 = icmp sle i32 %93, 3
  br i1 %cmp88, label %for.body.90, label %for.end.106

for.body.90:                                      ; preds = %for.cond.87
  %94 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %94 to i64
  %arrayidx92 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fd_sets, i32 0, i64 %idxprom91
  %95 = load i8*, i8** %arrayidx92, align 8
  %tobool93 = icmp ne i8* %95, null
  br i1 %tobool93, label %if.then.94, label %if.end.103

if.then.94:                                       ; preds = %for.body.90
  %96 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %96 to i64
  %97 = load %struct.sv**, %struct.sv*** %sp, align 8
  %arrayidx96 = getelementptr inbounds %struct.sv*, %struct.sv** %97, i64 %idxprom95
  %98 = load %struct.sv*, %struct.sv** %arrayidx96, align 8
  store %struct.sv* %98, %struct.sv** %sv, align 8
  %99 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags97 = getelementptr inbounds %struct.sv, %struct.sv* %99, i32 0, i32 2
  %100 = load i32, i32* %sv_flags97, align 4
  %and98 = and i32 %100, 16384
  %tobool99 = icmp ne i32 %and98, 0
  br i1 %tobool99, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %if.then.94
  %101 = load %struct.sv*, %struct.sv** %sv, align 8
  %call101 = call i32 @Perl_mg_set(%struct.sv* %101)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %if.then.94
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %for.body.90
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %102 = load i32, i32* %i, align 4
  %inc105 = add nsw i32 %102, 1
  store i32 %inc105, i32* %i, align 4
  br label %for.cond.87

for.end.106:                                      ; preds = %for.cond.87
  %103 = load %struct.sv*, %struct.sv** %targ, align 8
  %104 = load i32, i32* %nfound, align 4
  %conv107 = sext i32 %104 to i64
  call void @Perl_sv_setiv(%struct.sv* %103, i64 %conv107)
  %105 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags108 = getelementptr inbounds %struct.sv, %struct.sv* %105, i32 0, i32 2
  %106 = load i32, i32* %sv_flags108, align 4
  %and109 = and i32 %106, 16384
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %for.end.106
  %107 = load %struct.sv*, %struct.sv** %targ, align 8
  %call112 = call i32 @Perl_mg_set(%struct.sv* %107)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %for.end.106
  %108 = load %struct.sv*, %struct.sv** %targ, align 8
  %109 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr114 = getelementptr inbounds %struct.sv*, %struct.sv** %109, i32 1
  store %struct.sv** %incdec.ptr114, %struct.sv*** %sp, align 8
  store %struct.sv* %108, %struct.sv** %incdec.ptr114, align 8
  store %struct.sv* %108, %struct.sv** %tmp
  %110 = load %struct.sv*, %struct.sv** %tmp
  %111 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %111, i32 0, i32 6
  %112 = load i8, i8* %op_flags, align 1
  %conv115 = zext i8 %112 to i32
  %and116 = and i32 %conv115, 3
  %tobool117 = icmp ne i32 %and116, 0
  br i1 %tobool117, label %cond.true.118, label %cond.false.125

cond.true.118:                                    ; preds = %if.end.113
  %113 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags119 = getelementptr inbounds %struct.op, %struct.op* %113, i32 0, i32 6
  %114 = load i8, i8* %op_flags119, align 1
  %conv120 = zext i8 %114 to i32
  %and121 = and i32 %conv120, 3
  %cmp122 = icmp eq i32 %and121, 3
  %cond124 = select i1 %cmp122, i32 1, i32 0
  br label %cond.end.127

cond.false.125:                                   ; preds = %if.end.113
  %call126 = call i32 @Perl_dowantarray()
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.125, %cond.true.118
  %cond128 = phi i32 [ %cond124, %cond.true.118 ], [ %call126, %cond.false.125 ]
  %cmp129 = icmp eq i32 %cond128, 1
  br i1 %cmp129, label %land.lhs.true, label %if.end.140

land.lhs.true:                                    ; preds = %cond.end.127
  %115 = load %struct.timeval*, %struct.timeval** %tbuf, align 8
  %tobool131 = icmp ne %struct.timeval* %115, null
  br i1 %tobool131, label %if.then.132, label %if.end.140

if.then.132:                                      ; preds = %land.lhs.true
  %tv_sec133 = getelementptr inbounds %struct.timeval, %struct.timeval* %timebuf, i32 0, i32 0
  %116 = load i64, i64* %tv_sec133, align 8
  %conv134 = sitofp i64 %116 to double
  %tv_usec135 = getelementptr inbounds %struct.timeval, %struct.timeval* %timebuf, i32 0, i32 1
  %117 = load i64, i64* %tv_usec135, align 8
  %conv136 = sitofp i64 %117 to double
  %div = fdiv double %conv136, 1.000000e+06
  %add137 = fadd double %conv134, %div
  store double %add137, double* %value, align 8
  %call138 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* @PL_sv_no)
  store %struct.sv* %call138, %struct.sv** %sv, align 8
  %118 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr139 = getelementptr inbounds %struct.sv*, %struct.sv** %118, i32 1
  store %struct.sv** %incdec.ptr139, %struct.sv*** %sp, align 8
  store %struct.sv* %call138, %struct.sv** %incdec.ptr139, align 8
  %119 = load %struct.sv*, %struct.sv** %sv, align 8
  %120 = load double, double* %value, align 8
  call void @Perl_sv_setnv(%struct.sv* %119, double %120)
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.132, %land.lhs.true, %cond.end.127
  %121 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %121, %struct.sv*** @PL_stack_sp, align 8
  %122 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %122, i32 0, i32 0
  %123 = load %struct.op*, %struct.op** %op_next, align 8
  ret %struct.op* %123
}

declare double @Perl_sv_2nv(%struct.sv*) #1

declare i8* @Perl_sv_pvn_force_flags(%struct.sv*, i64*, i32) #1

declare i8* @Perl_sv_grow(%struct.sv*, i64) #1

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #1

declare i32 @Perl_dowantarray() #1

declare void @Perl_sv_setnv(%struct.sv*, double) #1

; Function Attrs: nounwind uwtable
define void @Perl_setdefout(%struct.gv* %gv) #0 {
entry:
  %gv.addr = alloca %struct.gv*, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  %0 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool = icmp ne %struct.gv* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %2 = bitcast %struct.gv* %1 to %struct.sv*
  store %struct.sv* %2, %struct.sv** @PL_Sv, align 8
  %3 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool1 = icmp ne %struct.sv* %3, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %4 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 1
  %5 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool2 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %6 = phi i1 [ false, %if.then ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  %7 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  br label %if.end

if.end:                                           ; preds = %land.end, %entry
  %8 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %tobool3 = icmp ne %struct.gv* %8, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %9 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %10 = bitcast %struct.gv* %9 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %10)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %11 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  store %struct.gv* %11, %struct.gv** @PL_defoutgv, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_select() #0 {
entry:
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %newdefout = alloca %struct.gv*, align 8
  %egv = alloca %struct.gv*, align 8
  %hv = alloca %struct.hv*, align 8
  %tmp = alloca %struct.sv*, align 8
  %gvp = alloca %struct.gv**, align 8
  %tmp32 = alloca %struct.sv*, align 8
  %tmp44 = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 3
  %2 = load i64, i64* %op_targ, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %4, %struct.sv** %targ, align 8
  %5 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %5, i32 0, i32 7
  %6 = load i8, i8* %op_private, align 1
  %conv = zext i8 %6 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %7, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %8 = load %struct.sv*, %struct.sv** %7, align 8
  %9 = bitcast %struct.sv* %8 to %struct.gv*
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gv* [ %9, %cond.true ], [ null, %cond.false ]
  store %struct.gv* %cond, %struct.gv** %newdefout, align 8
  %10 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %10, i32 0, i32 0
  %11 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %11, i32 0, i32 7
  %12 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_egv = getelementptr inbounds %struct.gp, %struct.gp* %12, i32 0, i32 6
  %13 = load %struct.gv*, %struct.gv** %gp_egv, align 8
  store %struct.gv* %13, %struct.gv** %egv, align 8
  %14 = load %struct.gv*, %struct.gv** %egv, align 8
  %tobool = icmp ne %struct.gv* %14, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %15 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  store %struct.gv* %15, %struct.gv** %egv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %16 = load %struct.gv*, %struct.gv** %egv, align 8
  %sv_any2 = getelementptr inbounds %struct.gv, %struct.gv* %16, i32 0, i32 0
  %17 = load %struct.xpvgv*, %struct.xpvgv** %sv_any2, align 8
  %xgv_stash = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %17, i32 0, i32 10
  %18 = load %struct.hv*, %struct.hv** %xgv_stash, align 8
  store %struct.hv* %18, %struct.hv** %hv, align 8
  %19 = load %struct.hv*, %struct.hv** %hv, align 8
  %tobool3 = icmp ne %struct.hv* %19, null
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %20 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %21 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %20 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp5 = icmp slt i64 %sub.ptr.div, 1
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  %22 = load %struct.sv**, %struct.sv*** %sp, align 8
  %23 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %22, %struct.sv** %23, i32 1)
  store %struct.sv** %call, %struct.sv*** %sp, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.4
  %24 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr9 = getelementptr inbounds %struct.sv*, %struct.sv** %24, i32 1
  store %struct.sv** %incdec.ptr9, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr9, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %tmp
  %25 = load %struct.sv*, %struct.sv** %tmp
  br label %if.end.49

if.else:                                          ; preds = %if.end
  %26 = load %struct.hv*, %struct.hv** %hv, align 8
  %27 = load %struct.gv*, %struct.gv** %egv, align 8
  %sv_any11 = getelementptr inbounds %struct.gv, %struct.gv* %27, i32 0, i32 0
  %28 = load %struct.xpvgv*, %struct.xpvgv** %sv_any11, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %28, i32 0, i32 8
  %29 = load i8*, i8** %xgv_name, align 8
  %30 = load %struct.gv*, %struct.gv** %egv, align 8
  %sv_any12 = getelementptr inbounds %struct.gv, %struct.gv* %30, i32 0, i32 0
  %31 = load %struct.xpvgv*, %struct.xpvgv** %sv_any12, align 8
  %xgv_namelen = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %31, i32 0, i32 9
  %32 = load i64, i64* %xgv_namelen, align 8
  %conv13 = trunc i64 %32 to i32
  %call14 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %26, i8* %29, i32 %conv13, i32 0)
  %33 = bitcast %struct.sv** %call14 to %struct.gv**
  store %struct.gv** %33, %struct.gv*** %gvp, align 8
  %34 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %tobool15 = icmp ne %struct.gv** %34, null
  br i1 %tobool15, label %land.lhs.true, label %if.else.34

land.lhs.true:                                    ; preds = %if.else
  %35 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %36 = load %struct.gv*, %struct.gv** %35, align 8
  %37 = load %struct.gv*, %struct.gv** %egv, align 8
  %cmp16 = icmp eq %struct.gv* %36, %37
  br i1 %cmp16, label %if.then.18, label %if.else.34

if.then.18:                                       ; preds = %land.lhs.true
  %38 = load %struct.sv*, %struct.sv** %targ, align 8
  %39 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  call void @Perl_gv_efullname4(%struct.sv* %38, %struct.gv* %39, i8* null, i8 signext 1)
  %40 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %40, i32 0, i32 2
  %41 = load i32, i32* %sv_flags, align 4
  %and = and i32 %41, 16384
  %tobool19 = icmp ne i32 %and, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.then.18
  %42 = load %struct.sv*, %struct.sv** %targ, align 8
  %call21 = call i32 @Perl_mg_set(%struct.sv* %42)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.then.18
  %43 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %44 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast23 = ptrtoint %struct.sv** %43 to i64
  %sub.ptr.rhs.cast24 = ptrtoint %struct.sv** %44 to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %sub.ptr.div26 = sdiv exact i64 %sub.ptr.sub25, 8
  %cmp27 = icmp slt i64 %sub.ptr.div26, 1
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.22
  %45 = load %struct.sv**, %struct.sv*** %sp, align 8
  %46 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call30 = call %struct.sv** @Perl_stack_grow(%struct.sv** %45, %struct.sv** %46, i32 1)
  store %struct.sv** %call30, %struct.sv*** %sp, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end.22
  %47 = load %struct.sv*, %struct.sv** %targ, align 8
  %48 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr33 = getelementptr inbounds %struct.sv*, %struct.sv** %48, i32 1
  store %struct.sv** %incdec.ptr33, %struct.sv*** %sp, align 8
  store %struct.sv* %47, %struct.sv** %incdec.ptr33, align 8
  store %struct.sv* %47, %struct.sv** %tmp32
  %49 = load %struct.sv*, %struct.sv** %tmp32
  br label %if.end.48

if.else.34:                                       ; preds = %land.lhs.true, %if.else
  %50 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %51 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast35 = ptrtoint %struct.sv** %50 to i64
  %sub.ptr.rhs.cast36 = ptrtoint %struct.sv** %51 to i64
  %sub.ptr.sub37 = sub i64 %sub.ptr.lhs.cast35, %sub.ptr.rhs.cast36
  %sub.ptr.div38 = sdiv exact i64 %sub.ptr.sub37, 8
  %cmp39 = icmp slt i64 %sub.ptr.div38, 1
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.else.34
  %52 = load %struct.sv**, %struct.sv*** %sp, align 8
  %53 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call42 = call %struct.sv** @Perl_stack_grow(%struct.sv** %52, %struct.sv** %53, i32 1)
  store %struct.sv** %call42, %struct.sv*** %sp, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.else.34
  %54 = load %struct.gv*, %struct.gv** %egv, align 8
  %55 = bitcast %struct.gv* %54 to %struct.sv*
  %call45 = call %struct.sv* @Perl_newRV(%struct.sv* %55)
  %call46 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call45)
  %56 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr47 = getelementptr inbounds %struct.sv*, %struct.sv** %56, i32 1
  store %struct.sv** %incdec.ptr47, %struct.sv*** %sp, align 8
  store %struct.sv* %call46, %struct.sv** %incdec.ptr47, align 8
  store %struct.sv* %call46, %struct.sv** %tmp44
  %57 = load %struct.sv*, %struct.sv** %tmp44
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.43, %if.end.31
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.8
  %58 = load %struct.gv*, %struct.gv** %newdefout, align 8
  %tobool50 = icmp ne %struct.gv* %58, null
  br i1 %tobool50, label %if.then.51, label %if.end.70

if.then.51:                                       ; preds = %if.end.49
  %59 = load %struct.gv*, %struct.gv** %newdefout, align 8
  %tobool52 = icmp ne %struct.gv* %59, null
  br i1 %tobool52, label %land.lhs.true.53, label %cond.false.66

land.lhs.true.53:                                 ; preds = %if.then.51
  %60 = load %struct.gv*, %struct.gv** %newdefout, align 8
  %61 = bitcast %struct.gv* %60 to %struct.sv*
  %sv_flags54 = getelementptr inbounds %struct.sv, %struct.sv* %61, i32 0, i32 2
  %62 = load i32, i32* %sv_flags54, align 4
  %and55 = and i32 %62, 255
  %cmp56 = icmp eq i32 %and55, 13
  br i1 %cmp56, label %land.lhs.true.58, label %cond.false.66

land.lhs.true.58:                                 ; preds = %land.lhs.true.53
  %63 = load %struct.gv*, %struct.gv** %newdefout, align 8
  %sv_any59 = getelementptr inbounds %struct.gv, %struct.gv* %63, i32 0, i32 0
  %64 = load %struct.xpvgv*, %struct.xpvgv** %sv_any59, align 8
  %xgv_gp60 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %64, i32 0, i32 7
  %65 = load %struct.gp*, %struct.gp** %xgv_gp60, align 8
  %tobool61 = icmp ne %struct.gp* %65, null
  br i1 %tobool61, label %cond.true.62, label %cond.false.66

cond.true.62:                                     ; preds = %land.lhs.true.58
  %66 = load %struct.gv*, %struct.gv** %newdefout, align 8
  %sv_any63 = getelementptr inbounds %struct.gv, %struct.gv* %66, i32 0, i32 0
  %67 = load %struct.xpvgv*, %struct.xpvgv** %sv_any63, align 8
  %xgv_gp64 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %67, i32 0, i32 7
  %68 = load %struct.gp*, %struct.gp** %xgv_gp64, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %68, i32 0, i32 2
  %69 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool65 = icmp ne %struct.io* %69, null
  br i1 %tobool65, label %if.end.69, label %if.then.67

cond.false.66:                                    ; preds = %land.lhs.true.58, %land.lhs.true.53, %if.then.51
  br i1 false, label %if.end.69, label %if.then.67

if.then.67:                                       ; preds = %cond.false.66, %cond.true.62
  %70 = load %struct.gv*, %struct.gv** %newdefout, align 8
  %call68 = call %struct.gv* @Perl_gv_IOadd(%struct.gv* %70)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %cond.false.66, %cond.true.62
  %71 = load %struct.gv*, %struct.gv** %newdefout, align 8
  call void @Perl_setdefout(%struct.gv* %71)
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.49
  %72 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %72, %struct.sv*** @PL_stack_sp, align 8
  %73 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %73, i32 0, i32 0
  %74 = load %struct.op*, %struct.op** %op_next, align 8
  ret %struct.op* %74
}

declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

declare void @Perl_gv_efullname4(%struct.sv*, %struct.gv*, i8*, i8 signext) #1

declare %struct.gv* @Perl_gv_IOadd(%struct.gv*) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_getc() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %gv = alloca %struct.gv*, align 8
  %io = alloca %struct.io*, align 8
  %mg = alloca %struct.magic*, align 8
  %gimme = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp64 = alloca %struct.sv*, align 8
  %len = alloca i64, align 8
  %tmp189 = alloca i64, align 8
  %tmp201 = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 3
  %2 = load i64, i64* %op_targ, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %4, %struct.sv** %targ, align 8
  store %struct.io* null, %struct.io** %io, align 8
  %5 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %5, i32 0, i32 7
  %6 = load i8, i8* %op_private, align 1
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 15
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.gv*, %struct.gv** @PL_stdingv, align 8
  store %struct.gv* %7, %struct.gv** %gv, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %8, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %9 = load %struct.sv*, %struct.sv** %8, align 8
  %10 = bitcast %struct.sv* %9 to %struct.gv*
  store %struct.gv* %10, %struct.gv** %gv, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool = icmp ne %struct.gv* %11, null
  br i1 %tobool, label %land.lhs.true, label %if.end.89

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool2 = icmp ne %struct.gv* %12, null
  br i1 %tobool2, label %land.lhs.true.3, label %cond.false

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %13 = load %struct.gv*, %struct.gv** %gv, align 8
  %14 = bitcast %struct.gv* %13 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 2
  %15 = load i32, i32* %sv_flags, align 4
  %and4 = and i32 %15, 255
  %cmp5 = icmp eq i32 %and4, 13
  br i1 %cmp5, label %land.lhs.true.7, label %cond.false

land.lhs.true.7:                                  ; preds = %land.lhs.true.3
  %16 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %16, i32 0, i32 0
  %17 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %17, i32 0, i32 7
  %18 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool8 = icmp ne %struct.gp* %18, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.7
  %19 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any9 = getelementptr inbounds %struct.gv, %struct.gv* %19, i32 0, i32 0
  %20 = load %struct.xpvgv*, %struct.xpvgv** %sv_any9, align 8
  %xgv_gp10 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %20, i32 0, i32 7
  %21 = load %struct.gp*, %struct.gp** %xgv_gp10, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %21, i32 0, i32 2
  %22 = load %struct.io*, %struct.io** %gp_io, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.7, %land.lhs.true.3, %land.lhs.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.io* [ %22, %cond.true ], [ null, %cond.false ]
  store %struct.io* %cond, %struct.io** %io, align 8
  %tobool11 = icmp ne %struct.io* %cond, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.89

land.lhs.true.12:                                 ; preds = %cond.end
  %23 = load %struct.io*, %struct.io** %io, align 8
  %24 = bitcast %struct.io* %23 to %struct.sv*
  %sv_flags13 = getelementptr inbounds %struct.sv, %struct.sv* %24, i32 0, i32 2
  %25 = load i32, i32* %sv_flags13, align 4
  %and14 = and i32 %25, 32768
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %land.lhs.true.12
  %26 = load %struct.io*, %struct.io** %io, align 8
  %27 = bitcast %struct.io* %26 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %27, i32 113)
  br label %cond.end.18

cond.false.17:                                    ; preds = %land.lhs.true.12
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.16
  %cond19 = phi %struct.magic* [ %call, %cond.true.16 ], [ null, %cond.false.17 ]
  store %struct.magic* %cond19, %struct.magic** %mg, align 8
  %tobool20 = icmp ne %struct.magic* %cond19, null
  br i1 %tobool20, label %if.then.21, label %if.end.89

if.then.21:                                       ; preds = %cond.end.18
  %28 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %28, i32 0, i32 6
  %29 = load i8, i8* %op_flags, align 1
  %conv22 = zext i8 %29 to i32
  %and23 = and i32 %conv22, 3
  %cmp24 = icmp eq i32 %and23, 1
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %if.then.21
  br label %cond.end.47

cond.false.27:                                    ; preds = %if.then.21
  %30 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags28 = getelementptr inbounds %struct.op, %struct.op* %30, i32 0, i32 6
  %31 = load i8, i8* %op_flags28, align 1
  %conv29 = zext i8 %31 to i32
  %and30 = and i32 %conv29, 3
  %cmp31 = icmp eq i32 %and30, 2
  br i1 %cmp31, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.false.27
  br label %cond.end.45

cond.false.34:                                    ; preds = %cond.false.27
  %32 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags35 = getelementptr inbounds %struct.op, %struct.op* %32, i32 0, i32 6
  %33 = load i8, i8* %op_flags35, align 1
  %conv36 = zext i8 %33 to i32
  %and37 = and i32 %conv36, 3
  %cmp38 = icmp eq i32 %and37, 3
  br i1 %cmp38, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %cond.false.34
  br label %cond.end.43

cond.false.41:                                    ; preds = %cond.false.34
  %call42 = call i32 @Perl_block_gimme()
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.41, %cond.true.40
  %cond44 = phi i32 [ 1, %cond.true.40 ], [ %call42, %cond.false.41 ]
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.end.43, %cond.true.33
  %cond46 = phi i32 [ 0, %cond.true.33 ], [ %cond44, %cond.end.43 ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end.45, %cond.true.26
  %cond48 = phi i32 [ 128, %cond.true.26 ], [ %cond46, %cond.end.45 ]
  store i32 %cond48, i32* %gimme, align 4
  %34 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr49 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %incdec.ptr49, i32** @PL_markstack_ptr, align 8
  %35 = load i32*, i32** @PL_markstack_max, align 8
  %cmp50 = icmp eq i32* %incdec.ptr49, %35
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %cond.end.47
  call void @Perl_markstack_grow()
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %cond.end.47
  %36 = load %struct.sv**, %struct.sv*** %sp, align 8
  %37 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %36 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %37 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv54 = trunc i64 %sub.ptr.div to i32
  %38 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv54, i32* %38, align 4
  store i32 %conv54, i32* %tmp
  %39 = load i32, i32* %tmp
  %40 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %41 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast55 = ptrtoint %struct.sv** %40 to i64
  %sub.ptr.rhs.cast56 = ptrtoint %struct.sv** %41 to i64
  %sub.ptr.sub57 = sub i64 %sub.ptr.lhs.cast55, %sub.ptr.rhs.cast56
  %sub.ptr.div58 = sdiv exact i64 %sub.ptr.sub57, 8
  %cmp59 = icmp slt i64 %sub.ptr.div58, 1
  br i1 %cmp59, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.53
  %42 = load %struct.sv**, %struct.sv*** %sp, align 8
  %43 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call62 = call %struct.sv** @Perl_stack_grow(%struct.sv** %42, %struct.sv** %43, i32 1)
  store %struct.sv** %call62, %struct.sv*** %sp, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.end.53
  %44 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %44, i32 0, i32 5
  %45 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool65 = icmp ne %struct.sv* %45, null
  br i1 %tobool65, label %cond.true.66, label %cond.false.68

cond.true.66:                                     ; preds = %if.end.63
  %46 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj67 = getelementptr inbounds %struct.magic, %struct.magic* %46, i32 0, i32 5
  %47 = load %struct.sv*, %struct.sv** %mg_obj67, align 8
  br label %cond.end.71

cond.false.68:                                    ; preds = %if.end.63
  %48 = load %struct.io*, %struct.io** %io, align 8
  %49 = bitcast %struct.io* %48 to %struct.sv*
  %call69 = call %struct.sv* @Perl_newRV(%struct.sv* %49)
  %call70 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call69)
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.68, %cond.true.66
  %cond72 = phi %struct.sv* [ %47, %cond.true.66 ], [ %call70, %cond.false.68 ]
  %50 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr73 = getelementptr inbounds %struct.sv*, %struct.sv** %50, i32 1
  store %struct.sv** %incdec.ptr73, %struct.sv*** %sp, align 8
  store %struct.sv* %cond72, %struct.sv** %incdec.ptr73, align 8
  store %struct.sv* %cond72, %struct.sv** %tmp64
  %51 = load %struct.sv*, %struct.sv** %tmp64
  %52 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %52, %struct.sv*** @PL_stack_sp, align 8
  call void @Perl_push_scope()
  %53 = load i32, i32* %gimme, align 4
  %call74 = call i32 @Perl_call_method(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 %53)
  call void @Perl_pop_scope()
  %54 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %54, %struct.sv*** %sp, align 8
  %55 = load i32, i32* %gimme, align 4
  %cmp75 = icmp eq i32 %55, 0
  br i1 %cmp75, label %if.then.77, label %if.end.88

if.then.77:                                       ; preds = %cond.end.71
  %56 = load %struct.sv*, %struct.sv** %targ, align 8
  %57 = load %struct.sv**, %struct.sv*** %sp, align 8
  %58 = load %struct.sv*, %struct.sv** %57, align 8
  %cmp78 = icmp ne %struct.sv* %56, %58
  br i1 %cmp78, label %if.then.80, label %if.end.87

if.then.80:                                       ; preds = %if.then.77
  %59 = load %struct.sv*, %struct.sv** %targ, align 8
  %60 = load %struct.sv**, %struct.sv*** %sp, align 8
  %61 = load %struct.sv*, %struct.sv** %60, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %59, %struct.sv* %61, i32 18)
  %62 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags81 = getelementptr inbounds %struct.sv, %struct.sv* %62, i32 0, i32 2
  %63 = load i32, i32* %sv_flags81, align 4
  %and82 = and i32 %63, 16384
  %tobool83 = icmp ne i32 %and82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %if.then.80
  %64 = load %struct.sv*, %struct.sv** %targ, align 8
  %call85 = call i32 @Perl_mg_set(%struct.sv* %64)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.84, %if.then.80
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.77
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %cond.end.71
  %65 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %65, %struct.sv*** @PL_stack_sp, align 8
  %66 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %66, i32 0, i32 0
  %67 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %67, %struct.op** %retval
  br label %return

if.end.89:                                        ; preds = %cond.end.18, %cond.end, %if.end
  %68 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool90 = icmp ne %struct.gv* %68, null
  br i1 %tobool90, label %lor.lhs.false, label %if.then.94

lor.lhs.false:                                    ; preds = %if.end.89
  %69 = load %struct.gv*, %struct.gv** %gv, align 8
  %call91 = call signext i8 @Perl_do_eof(%struct.gv* %69)
  %conv92 = sext i8 %call91 to i32
  %tobool93 = icmp ne i32 %conv92, 0
  br i1 %tobool93, label %if.then.94, label %if.end.144

if.then.94:                                       ; preds = %lor.lhs.false, %if.end.89
  %70 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %70, i32 0, i32 14
  %71 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp95 = icmp ne %struct.sv* %71, null
  br i1 %cmp95, label %land.lhs.true.97, label %lor.lhs.false.120

land.lhs.true.97:                                 ; preds = %if.then.94
  %72 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings98 = getelementptr inbounds %struct.cop, %struct.cop* %72, i32 0, i32 14
  %73 = load %struct.sv*, %struct.sv** %cop_warnings98, align 8
  %cmp99 = icmp ne %struct.sv* %73, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp99, label %land.lhs.true.101, label %lor.lhs.false.120

land.lhs.true.101:                                ; preds = %land.lhs.true.97
  %74 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings102 = getelementptr inbounds %struct.cop, %struct.cop* %74, i32 0, i32 14
  %75 = load %struct.sv*, %struct.sv** %cop_warnings102, align 8
  %cmp103 = icmp eq %struct.sv* %75, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp103, label %land.lhs.true.128, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %land.lhs.true.101
  %76 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings106 = getelementptr inbounds %struct.cop, %struct.cop* %76, i32 0, i32 14
  %77 = load %struct.sv*, %struct.sv** %cop_warnings106, align 8
  %sv_any107 = getelementptr inbounds %struct.sv, %struct.sv* %77, i32 0, i32 0
  %78 = load i8*, i8** %sv_any107, align 8
  %79 = bitcast i8* %78 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %79, i32 0, i32 0
  %80 = load i8*, i8** %xpv_pv, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %80, i64 2
  %81 = load i8, i8* %arrayidx108, align 1
  %conv109 = sext i8 %81 to i32
  %and110 = and i32 %conv109, 64
  %tobool111 = icmp ne i32 %and110, 0
  br i1 %tobool111, label %land.lhs.true.128, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %lor.lhs.false.105
  %82 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings113 = getelementptr inbounds %struct.cop, %struct.cop* %82, i32 0, i32 14
  %83 = load %struct.sv*, %struct.sv** %cop_warnings113, align 8
  %sv_any114 = getelementptr inbounds %struct.sv, %struct.sv* %83, i32 0, i32 0
  %84 = load i8*, i8** %sv_any114, align 8
  %85 = bitcast i8* %84 to %struct.xpv*
  %xpv_pv115 = getelementptr inbounds %struct.xpv, %struct.xpv* %85, i32 0, i32 0
  %86 = load i8*, i8** %xpv_pv115, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %86, i64 1
  %87 = load i8, i8* %arrayidx116, align 1
  %conv117 = sext i8 %87 to i32
  %and118 = and i32 %conv117, 16
  %tobool119 = icmp ne i32 %and118, 0
  br i1 %tobool119, label %land.lhs.true.128, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %lor.lhs.false.112, %land.lhs.true.97, %if.then.94
  %88 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings121 = getelementptr inbounds %struct.cop, %struct.cop* %88, i32 0, i32 14
  %89 = load %struct.sv*, %struct.sv** %cop_warnings121, align 8
  %cmp122 = icmp eq %struct.sv* %89, null
  br i1 %cmp122, label %land.lhs.true.124, label %if.end.140

land.lhs.true.124:                                ; preds = %lor.lhs.false.120
  %90 = load i8, i8* @PL_dowarn, align 1
  %conv125 = zext i8 %90 to i32
  %and126 = and i32 %conv125, 1
  %tobool127 = icmp ne i32 %and126, 0
  br i1 %tobool127, label %land.lhs.true.128, label %if.end.140

land.lhs.true.128:                                ; preds = %land.lhs.true.124, %lor.lhs.false.112, %lor.lhs.false.105, %land.lhs.true.101
  %91 = load %struct.io*, %struct.io** %io, align 8
  %tobool129 = icmp ne %struct.io* %91, null
  br i1 %tobool129, label %lor.lhs.false.130, label %if.then.138

lor.lhs.false.130:                                ; preds = %land.lhs.true.128
  %92 = load %struct.io*, %struct.io** %io, align 8
  %sv_any131 = getelementptr inbounds %struct.io, %struct.io* %92, i32 0, i32 0
  %93 = load %struct.xpvio*, %struct.xpvio** %sv_any131, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %93, i32 0, i32 7
  %94 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  %tobool132 = icmp ne %struct._PerlIO** %94, null
  br i1 %tobool132, label %if.end.140, label %land.lhs.true.133

land.lhs.true.133:                                ; preds = %lor.lhs.false.130
  %95 = load %struct.io*, %struct.io** %io, align 8
  %sv_any134 = getelementptr inbounds %struct.io, %struct.io* %95, i32 0, i32 0
  %96 = load %struct.xpvio*, %struct.xpvio** %sv_any134, align 8
  %xio_type = getelementptr inbounds %struct.xpvio, %struct.xpvio* %96, i32 0, i32 21
  %97 = load i8, i8* %xio_type, align 1
  %conv135 = sext i8 %97 to i32
  %cmp136 = icmp ne i32 %conv135, 62
  br i1 %cmp136, label %if.then.138, label %if.end.140

if.then.138:                                      ; preds = %land.lhs.true.133, %land.lhs.true.128
  %98 = load %struct.gv*, %struct.gv** %gv, align 8
  %99 = load %struct.io*, %struct.io** %io, align 8
  %100 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %100, i32 0, i32 4
  %101 = load i16, i16* %op_type, align 2
  %conv139 = zext i16 %101 to i32
  call void @Perl_report_evil_fh(%struct.gv* %98, %struct.io* %99, i32 %conv139)
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.138, %land.lhs.true.133, %lor.lhs.false.130, %land.lhs.true.124, %lor.lhs.false.120
  %call141 = call i32* @__errno_location()
  store i32 9, i32* %call141, align 4
  %102 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr142 = getelementptr inbounds %struct.sv*, %struct.sv** %102, i32 1
  store %struct.sv** %incdec.ptr142, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr142, align 8
  %103 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %103, %struct.sv*** @PL_stack_sp, align 8
  %104 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next143 = getelementptr inbounds %struct.op, %struct.op* %104, i32 0, i32 0
  %105 = load %struct.op*, %struct.op** %op_next143, align 8
  store %struct.op* %105, %struct.op** %retval
  br label %return

if.end.144:                                       ; preds = %lor.lhs.false
  store i8 1, i8* @PL_tainted, align 1
  %106 = load %struct.sv*, %struct.sv** %targ, align 8
  call void @Perl_sv_setpv(%struct.sv* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0))
  %107 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any145 = getelementptr inbounds %struct.gv, %struct.gv* %107, i32 0, i32 0
  %108 = load %struct.xpvgv*, %struct.xpvgv** %sv_any145, align 8
  %xgv_gp146 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %108, i32 0, i32 7
  %109 = load %struct.gp*, %struct.gp** %xgv_gp146, align 8
  %gp_io147 = getelementptr inbounds %struct.gp, %struct.gp* %109, i32 0, i32 2
  %110 = load %struct.io*, %struct.io** %gp_io147, align 8
  %sv_any148 = getelementptr inbounds %struct.io, %struct.io* %110, i32 0, i32 0
  %111 = load %struct.xpvio*, %struct.xpvio** %sv_any148, align 8
  %xio_ifp149 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %111, i32 0, i32 7
  %112 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp149, align 8
  %call150 = call i32 @PerlIO_getc(%struct._PerlIO** %112)
  %conv151 = trunc i32 %call150 to i8
  %113 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_any152 = getelementptr inbounds %struct.sv, %struct.sv* %113, i32 0, i32 0
  %114 = load i8*, i8** %sv_any152, align 8
  %115 = bitcast i8* %114 to %struct.xpv*
  %xpv_pv153 = getelementptr inbounds %struct.xpv, %struct.xpv* %115, i32 0, i32 0
  %116 = load i8*, i8** %xpv_pv153, align 8
  store i8 %conv151, i8* %116, align 1
  %117 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any154 = getelementptr inbounds %struct.gv, %struct.gv* %117, i32 0, i32 0
  %118 = load %struct.xpvgv*, %struct.xpvgv** %sv_any154, align 8
  %xgv_gp155 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %118, i32 0, i32 7
  %119 = load %struct.gp*, %struct.gp** %xgv_gp155, align 8
  %gp_io156 = getelementptr inbounds %struct.gp, %struct.gp* %119, i32 0, i32 2
  %120 = load %struct.io*, %struct.io** %gp_io156, align 8
  %sv_any157 = getelementptr inbounds %struct.io, %struct.io* %120, i32 0, i32 0
  %121 = load %struct.xpvio*, %struct.xpvio** %sv_any157, align 8
  %xio_ifp158 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %121, i32 0, i32 7
  %122 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp158, align 8
  %call159 = call i32 @PerlIO_isutf8(%struct._PerlIO** %122)
  %tobool160 = icmp ne i32 %call159, 0
  br i1 %tobool160, label %if.then.161, label %if.end.194

if.then.161:                                      ; preds = %if.end.144
  %123 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_any163 = getelementptr inbounds %struct.sv, %struct.sv* %123, i32 0, i32 0
  %124 = load i8*, i8** %sv_any163, align 8
  %125 = bitcast i8* %124 to %struct.xpv*
  %xpv_pv164 = getelementptr inbounds %struct.xpv, %struct.xpv* %125, i32 0, i32 0
  %126 = load i8*, i8** %xpv_pv164, align 8
  %127 = load i8, i8* %126, align 1
  %idxprom = zext i8 %127 to i64
  %arrayidx165 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom
  %128 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %128 to i64
  store i64 %conv166, i64* %len, align 8
  %129 = load i64, i64* %len, align 8
  %cmp167 = icmp ugt i64 %129, 1
  br i1 %cmp167, label %if.then.169, label %if.end.192

if.then.169:                                      ; preds = %if.then.161
  %130 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_any170 = getelementptr inbounds %struct.sv, %struct.sv* %130, i32 0, i32 0
  %131 = load i8*, i8** %sv_any170, align 8
  %132 = bitcast i8* %131 to %struct.xpv*
  %xpv_len = getelementptr inbounds %struct.xpv, %struct.xpv* %132, i32 0, i32 2
  %133 = load i64, i64* %xpv_len, align 8
  %134 = load i64, i64* %len, align 8
  %add = add i64 %134, 1
  %cmp171 = icmp ult i64 %133, %add
  br i1 %cmp171, label %cond.true.173, label %cond.false.176

cond.true.173:                                    ; preds = %if.then.169
  %135 = load %struct.sv*, %struct.sv** %targ, align 8
  %136 = load i64, i64* %len, align 8
  %add174 = add i64 %136, 1
  %call175 = call i8* @Perl_sv_grow(%struct.sv* %135, i64 %add174)
  br label %cond.end.179

cond.false.176:                                   ; preds = %if.then.169
  %137 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_any177 = getelementptr inbounds %struct.sv, %struct.sv* %137, i32 0, i32 0
  %138 = load i8*, i8** %sv_any177, align 8
  %139 = bitcast i8* %138 to %struct.xpv*
  %xpv_pv178 = getelementptr inbounds %struct.xpv, %struct.xpv* %139, i32 0, i32 0
  %140 = load i8*, i8** %xpv_pv178, align 8
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.false.176, %cond.true.173
  %cond180 = phi i8* [ %call175, %cond.true.173 ], [ %140, %cond.false.176 ]
  %141 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any181 = getelementptr inbounds %struct.gv, %struct.gv* %141, i32 0, i32 0
  %142 = load %struct.xpvgv*, %struct.xpvgv** %sv_any181, align 8
  %xgv_gp182 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %142, i32 0, i32 7
  %143 = load %struct.gp*, %struct.gp** %xgv_gp182, align 8
  %gp_io183 = getelementptr inbounds %struct.gp, %struct.gp* %143, i32 0, i32 2
  %144 = load %struct.io*, %struct.io** %gp_io183, align 8
  %sv_any184 = getelementptr inbounds %struct.io, %struct.io* %144, i32 0, i32 0
  %145 = load %struct.xpvio*, %struct.xpvio** %sv_any184, align 8
  %xio_ifp185 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %145, i32 0, i32 7
  %146 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp185, align 8
  %147 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_any186 = getelementptr inbounds %struct.sv, %struct.sv* %147, i32 0, i32 0
  %148 = load i8*, i8** %sv_any186, align 8
  %149 = bitcast i8* %148 to %struct.xpv*
  %xpv_pv187 = getelementptr inbounds %struct.xpv, %struct.xpv* %149, i32 0, i32 0
  %150 = load i8*, i8** %xpv_pv187, align 8
  %add.ptr = getelementptr inbounds i8, i8* %150, i64 1
  %151 = load i64, i64* %len, align 8
  %sub = sub i64 %151, 1
  %call188 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %146, i8* %add.ptr, i64 %sub)
  store i64 %call188, i64* %len, align 8
  %152 = load i64, i64* %len, align 8
  %add190 = add i64 1, %152
  %153 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_any191 = getelementptr inbounds %struct.sv, %struct.sv* %153, i32 0, i32 0
  %154 = load i8*, i8** %sv_any191, align 8
  %155 = bitcast i8* %154 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %155, i32 0, i32 1
  store i64 %add190, i64* %xpv_cur, align 8
  store i64 %add190, i64* %tmp189
  %156 = load i64, i64* %tmp189
  br label %if.end.192

if.end.192:                                       ; preds = %cond.end.179, %if.then.161
  %157 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags193 = getelementptr inbounds %struct.sv, %struct.sv* %157, i32 0, i32 2
  %158 = load i32, i32* %sv_flags193, align 4
  %or = or i32 %158, 536870912
  store i32 %or, i32* %sv_flags193, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.192, %if.end.144
  %159 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags195 = getelementptr inbounds %struct.sv, %struct.sv* %159, i32 0, i32 2
  %160 = load i32, i32* %sv_flags195, align 4
  %and196 = and i32 %160, 16384
  %tobool197 = icmp ne i32 %and196, 0
  br i1 %tobool197, label %if.then.198, label %if.end.200

if.then.198:                                      ; preds = %if.end.194
  %161 = load %struct.sv*, %struct.sv** %targ, align 8
  %call199 = call i32 @Perl_mg_set(%struct.sv* %161)
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.198, %if.end.194
  %162 = load %struct.sv*, %struct.sv** %targ, align 8
  %163 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr202 = getelementptr inbounds %struct.sv*, %struct.sv** %163, i32 1
  store %struct.sv** %incdec.ptr202, %struct.sv*** %sp, align 8
  store %struct.sv* %162, %struct.sv** %incdec.ptr202, align 8
  store %struct.sv* %162, %struct.sv** %tmp201
  %164 = load %struct.sv*, %struct.sv** %tmp201
  %165 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %165, %struct.sv*** @PL_stack_sp, align 8
  %166 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next203 = getelementptr inbounds %struct.op, %struct.op* %166, i32 0, i32 0
  %167 = load %struct.op*, %struct.op** %op_next203, align 8
  store %struct.op* %167, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.200, %if.end.140, %if.end.88
  %168 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %168
}

declare signext i8 @Perl_do_eof(%struct.gv*) #1

declare i32 @PerlIO_getc(%struct._PerlIO**) #1

declare i32 @PerlIO_isutf8(%struct._PerlIO**) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_read() #0 {
entry:
  %call = call %struct.op* @Perl_pp_sysread()
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_sysread() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %origmark = alloca i32, align 4
  %targ = alloca %struct.sv*, align 8
  %offset = alloca i32, align 4
  %gv = alloca %struct.gv*, align 8
  %io = alloca %struct.io*, align 8
  %buffer = alloca i8*, align 8
  %length = alloca i64, align 8
  %count = alloca i64, align 8
  %bufsize = alloca i32, align 4
  %bufsv = alloca %struct.sv*, align 8
  %blen = alloca i64, align 8
  %mg = alloca %struct.magic*, align 8
  %fp_utf8 = alloca i32, align 4
  %buffer_utf8 = alloca i32, align 4
  %read_target = alloca %struct.sv*, align 8
  %got = alloca i64, align 8
  %wanted = alloca i64, align 8
  %charstart = alloca i8, align 1
  %charskip = alloca i64, align 8
  %skip = alloca i64, align 8
  %sv = alloca %struct.sv*, align 8
  %tmp = alloca i32, align 4
  %tmp286 = alloca i64, align 8
  %tmp373 = alloca i64, align 8
  %bend = alloca i8*, align 8
  %tmp470 = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %origmark, align 4
  %6 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %6, i32 0, i32 3
  %7 = load i64, i64* %op_targ, align 8
  %8 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %8, i64 %7
  %9 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %9, %struct.sv** %targ, align 8
  store i64 0, i64* %got, align 8
  store i8 0, i8* %charstart, align 1
  store i64 0, i64* %charskip, align 8
  store i64 0, i64* %skip, align 8
  %10 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.sv*, %struct.sv** %10, i32 1
  store %struct.sv** %incdec.ptr1, %struct.sv*** %mark, align 8
  %11 = load %struct.sv*, %struct.sv** %incdec.ptr1, align 8
  %12 = bitcast %struct.sv* %11 to %struct.gv*
  store %struct.gv* %12, %struct.gv** %gv, align 8
  %13 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %13, i32 0, i32 4
  %14 = load i16, i16* %op_type, align 2
  %conv2 = zext i16 %14 to i32
  %cmp = icmp eq i32 %conv2, 205
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %15 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type4 = getelementptr inbounds %struct.op, %struct.op* %15, i32 0, i32 4
  %16 = load i16, i16* %op_type4, align 2
  %conv5 = zext i16 %16 to i32
  %cmp6 = icmp eq i32 %conv5, 212
  br i1 %cmp6, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %17 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool = icmp ne %struct.gv* %17, null
  br i1 %tobool, label %land.lhs.true.8, label %if.end.50

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %18 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool9 = icmp ne %struct.gv* %18, null
  br i1 %tobool9, label %land.lhs.true.10, label %cond.false

land.lhs.true.10:                                 ; preds = %land.lhs.true.8
  %19 = load %struct.gv*, %struct.gv** %gv, align 8
  %20 = bitcast %struct.gv* %19 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 2
  %21 = load i32, i32* %sv_flags, align 4
  %and = and i32 %21, 255
  %cmp11 = icmp eq i32 %and, 13
  br i1 %cmp11, label %land.lhs.true.13, label %cond.false

land.lhs.true.13:                                 ; preds = %land.lhs.true.10
  %22 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %22, i32 0, i32 0
  %23 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %23, i32 0, i32 7
  %24 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool14 = icmp ne %struct.gp* %24, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.13
  %25 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any15 = getelementptr inbounds %struct.gv, %struct.gv* %25, i32 0, i32 0
  %26 = load %struct.xpvgv*, %struct.xpvgv** %sv_any15, align 8
  %xgv_gp16 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %26, i32 0, i32 7
  %27 = load %struct.gp*, %struct.gp** %xgv_gp16, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %27, i32 0, i32 2
  %28 = load %struct.io*, %struct.io** %gp_io, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.13, %land.lhs.true.10, %land.lhs.true.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.io* [ %28, %cond.true ], [ null, %cond.false ]
  store %struct.io* %cond, %struct.io** %io, align 8
  %tobool17 = icmp ne %struct.io* %cond, null
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.50

land.lhs.true.18:                                 ; preds = %cond.end
  %29 = load %struct.io*, %struct.io** %io, align 8
  %30 = bitcast %struct.io* %29 to %struct.sv*
  %sv_flags19 = getelementptr inbounds %struct.sv, %struct.sv* %30, i32 0, i32 2
  %31 = load i32, i32* %sv_flags19, align 4
  %and20 = and i32 %31, 32768
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %land.lhs.true.18
  %32 = load %struct.io*, %struct.io** %io, align 8
  %33 = bitcast %struct.io* %32 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %33, i32 113)
  br label %cond.end.24

cond.false.23:                                    ; preds = %land.lhs.true.18
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.22
  %cond25 = phi %struct.magic* [ %call, %cond.true.22 ], [ null, %cond.false.23 ]
  store %struct.magic* %cond25, %struct.magic** %mg, align 8
  %tobool26 = icmp ne %struct.magic* %cond25, null
  br i1 %tobool26, label %if.then, label %if.end.50

if.then:                                          ; preds = %cond.end.24
  %34 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr27 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %incdec.ptr27, i32** @PL_markstack_ptr, align 8
  %35 = load i32*, i32** @PL_markstack_max, align 8
  %cmp28 = icmp eq i32* %incdec.ptr27, %35
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %if.then
  call void @Perl_markstack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then.30, %if.then
  %36 = load %struct.sv**, %struct.sv*** %mark, align 8
  %add.ptr31 = getelementptr inbounds %struct.sv*, %struct.sv** %36, i64 -1
  %37 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast32 = ptrtoint %struct.sv** %add.ptr31 to i64
  %sub.ptr.rhs.cast33 = ptrtoint %struct.sv** %37 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %sub.ptr.div35 = sdiv exact i64 %sub.ptr.sub34, 8
  %conv36 = trunc i64 %sub.ptr.div35 to i32
  %38 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv36, i32* %38, align 4
  store i32 %conv36, i32* %tmp
  %39 = load i32, i32* %tmp
  %40 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %40, i32 0, i32 5
  %41 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool37 = icmp ne %struct.sv* %41, null
  br i1 %tobool37, label %cond.true.38, label %cond.false.40

cond.true.38:                                     ; preds = %if.end
  %42 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj39 = getelementptr inbounds %struct.magic, %struct.magic* %42, i32 0, i32 5
  %43 = load %struct.sv*, %struct.sv** %mg_obj39, align 8
  br label %cond.end.43

cond.false.40:                                    ; preds = %if.end
  %44 = load %struct.io*, %struct.io** %io, align 8
  %45 = bitcast %struct.io* %44 to %struct.sv*
  %call41 = call %struct.sv* @Perl_newRV(%struct.sv* %45)
  %call42 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call41)
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.40, %cond.true.38
  %cond44 = phi %struct.sv* [ %43, %cond.true.38 ], [ %call42, %cond.false.40 ]
  %46 = load %struct.sv**, %struct.sv*** %mark, align 8
  store %struct.sv* %cond44, %struct.sv** %46, align 8
  call void @Perl_push_scope()
  %call45 = call i32 @Perl_call_method(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 0)
  call void @Perl_pop_scope()
  %47 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %47, %struct.sv*** %sp, align 8
  %48 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr46 = getelementptr inbounds %struct.sv*, %struct.sv** %48, i32 -1
  store %struct.sv** %incdec.ptr46, %struct.sv*** %sp, align 8
  %49 = load %struct.sv*, %struct.sv** %48, align 8
  store %struct.sv* %49, %struct.sv** %sv, align 8
  %50 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %51 = load i32, i32* %origmark, align 4
  %idx.ext47 = sext i32 %51 to i64
  %add.ptr48 = getelementptr inbounds %struct.sv*, %struct.sv** %50, i64 %idx.ext47
  store %struct.sv** %add.ptr48, %struct.sv*** %sp, align 8
  %52 = load %struct.sv*, %struct.sv** %sv, align 8
  %53 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr49 = getelementptr inbounds %struct.sv*, %struct.sv** %53, i32 1
  store %struct.sv** %incdec.ptr49, %struct.sv*** %sp, align 8
  store %struct.sv* %52, %struct.sv** %incdec.ptr49, align 8
  %54 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %54, %struct.sv*** @PL_stack_sp, align 8
  %55 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %55, i32 0, i32 0
  %56 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %56, %struct.op** %retval
  br label %return

if.end.50:                                        ; preds = %cond.end.24, %cond.end, %land.lhs.true, %lor.lhs.false
  %57 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool51 = icmp ne %struct.gv* %57, null
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %if.end.50
  br label %say_undef

if.end.53:                                        ; preds = %if.end.50
  %58 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr54 = getelementptr inbounds %struct.sv*, %struct.sv** %58, i32 1
  store %struct.sv** %incdec.ptr54, %struct.sv*** %mark, align 8
  %59 = load %struct.sv*, %struct.sv** %incdec.ptr54, align 8
  store %struct.sv* %59, %struct.sv** %bufsv, align 8
  %60 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_flags55 = getelementptr inbounds %struct.sv, %struct.sv* %60, i32 0, i32 2
  %61 = load i32, i32* %sv_flags55, align 4
  %and56 = and i32 %61, 118423552
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %if.end.53
  %62 = load %struct.sv*, %struct.sv** %bufsv, align 8
  call void @Perl_sv_setpvn(%struct.sv* %62, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i64 0)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.end.53
  %63 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr60 = getelementptr inbounds %struct.sv*, %struct.sv** %63, i32 1
  store %struct.sv** %incdec.ptr60, %struct.sv*** %mark, align 8
  %64 = load %struct.sv*, %struct.sv** %incdec.ptr60, align 8
  store %struct.sv* %64, %struct.sv** @PL_Sv, align 8
  %65 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags61 = getelementptr inbounds %struct.sv, %struct.sv* %65, i32 0, i32 2
  %66 = load i32, i32* %sv_flags61, align 4
  %and62 = and i32 %66, 65536
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %cond.true.64, label %cond.false.66

cond.true.64:                                     ; preds = %if.end.59
  %67 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any65 = getelementptr inbounds %struct.sv, %struct.sv* %67, i32 0, i32 0
  %68 = load i8*, i8** %sv_any65, align 8
  %69 = bitcast i8* %68 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %69, i32 0, i32 3
  %70 = load i64, i64* %xiv_iv, align 8
  br label %cond.end.68

cond.false.66:                                    ; preds = %if.end.59
  %71 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call67 = call i64 @Perl_sv_2iv(%struct.sv* %71)
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.66, %cond.true.64
  %cond69 = phi i64 [ %70, %cond.true.64 ], [ %call67, %cond.false.66 ]
  store i64 %cond69, i64* %length, align 8
  %call70 = call i32* @__errno_location()
  store i32 0, i32* %call70, align 4
  %72 = load %struct.sv**, %struct.sv*** %mark, align 8
  %73 = load %struct.sv**, %struct.sv*** %sp, align 8
  %cmp71 = icmp ult %struct.sv** %72, %73
  br i1 %cmp71, label %if.then.73, label %if.else

if.then.73:                                       ; preds = %cond.end.68
  %74 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr74 = getelementptr inbounds %struct.sv*, %struct.sv** %74, i32 1
  store %struct.sv** %incdec.ptr74, %struct.sv*** %mark, align 8
  %75 = load %struct.sv*, %struct.sv** %incdec.ptr74, align 8
  store %struct.sv* %75, %struct.sv** @PL_Sv, align 8
  %76 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags75 = getelementptr inbounds %struct.sv, %struct.sv* %76, i32 0, i32 2
  %77 = load i32, i32* %sv_flags75, align 4
  %and76 = and i32 %77, 65536
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %cond.true.78, label %cond.false.81

cond.true.78:                                     ; preds = %if.then.73
  %78 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any79 = getelementptr inbounds %struct.sv, %struct.sv* %78, i32 0, i32 0
  %79 = load i8*, i8** %sv_any79, align 8
  %80 = bitcast i8* %79 to %struct.xpviv*
  %xiv_iv80 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %80, i32 0, i32 3
  %81 = load i64, i64* %xiv_iv80, align 8
  br label %cond.end.83

cond.false.81:                                    ; preds = %if.then.73
  %82 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call82 = call i64 @Perl_sv_2iv(%struct.sv* %82)
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.81, %cond.true.78
  %cond84 = phi i64 [ %81, %cond.true.78 ], [ %call82, %cond.false.81 ]
  %conv85 = trunc i64 %cond84 to i32
  store i32 %conv85, i32* %offset, align 4
  br label %if.end.86

if.else:                                          ; preds = %cond.end.68
  store i32 0, i32* %offset, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.else, %cond.end.83
  %83 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool87 = icmp ne %struct.gv* %83, null
  br i1 %tobool87, label %land.lhs.true.88, label %cond.false.101

land.lhs.true.88:                                 ; preds = %if.end.86
  %84 = load %struct.gv*, %struct.gv** %gv, align 8
  %85 = bitcast %struct.gv* %84 to %struct.sv*
  %sv_flags89 = getelementptr inbounds %struct.sv, %struct.sv* %85, i32 0, i32 2
  %86 = load i32, i32* %sv_flags89, align 4
  %and90 = and i32 %86, 255
  %cmp91 = icmp eq i32 %and90, 13
  br i1 %cmp91, label %land.lhs.true.93, label %cond.false.101

land.lhs.true.93:                                 ; preds = %land.lhs.true.88
  %87 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any94 = getelementptr inbounds %struct.gv, %struct.gv* %87, i32 0, i32 0
  %88 = load %struct.xpvgv*, %struct.xpvgv** %sv_any94, align 8
  %xgv_gp95 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %88, i32 0, i32 7
  %89 = load %struct.gp*, %struct.gp** %xgv_gp95, align 8
  %tobool96 = icmp ne %struct.gp* %89, null
  br i1 %tobool96, label %cond.true.97, label %cond.false.101

cond.true.97:                                     ; preds = %land.lhs.true.93
  %90 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any98 = getelementptr inbounds %struct.gv, %struct.gv* %90, i32 0, i32 0
  %91 = load %struct.xpvgv*, %struct.xpvgv** %sv_any98, align 8
  %xgv_gp99 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %91, i32 0, i32 7
  %92 = load %struct.gp*, %struct.gp** %xgv_gp99, align 8
  %gp_io100 = getelementptr inbounds %struct.gp, %struct.gp* %92, i32 0, i32 2
  %93 = load %struct.io*, %struct.io** %gp_io100, align 8
  br label %cond.end.102

cond.false.101:                                   ; preds = %land.lhs.true.93, %land.lhs.true.88, %if.end.86
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.101, %cond.true.97
  %cond103 = phi %struct.io* [ %93, %cond.true.97 ], [ null, %cond.false.101 ]
  store %struct.io* %cond103, %struct.io** %io, align 8
  %94 = load %struct.io*, %struct.io** %io, align 8
  %tobool104 = icmp ne %struct.io* %94, null
  br i1 %tobool104, label %lor.lhs.false.105, label %if.then.108

lor.lhs.false.105:                                ; preds = %cond.end.102
  %95 = load %struct.io*, %struct.io** %io, align 8
  %sv_any106 = getelementptr inbounds %struct.io, %struct.io* %95, i32 0, i32 0
  %96 = load %struct.xpvio*, %struct.xpvio** %sv_any106, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %96, i32 0, i32 7
  %97 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  %tobool107 = icmp ne %struct._PerlIO** %97, null
  br i1 %tobool107, label %if.end.147, label %if.then.108

if.then.108:                                      ; preds = %lor.lhs.false.105, %cond.end.102
  %98 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %98, i32 0, i32 14
  %99 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp109 = icmp ne %struct.sv* %99, null
  br i1 %cmp109, label %land.lhs.true.111, label %lor.lhs.false.134

land.lhs.true.111:                                ; preds = %if.then.108
  %100 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings112 = getelementptr inbounds %struct.cop, %struct.cop* %100, i32 0, i32 14
  %101 = load %struct.sv*, %struct.sv** %cop_warnings112, align 8
  %cmp113 = icmp ne %struct.sv* %101, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp113, label %land.lhs.true.115, label %lor.lhs.false.134

land.lhs.true.115:                                ; preds = %land.lhs.true.111
  %102 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings116 = getelementptr inbounds %struct.cop, %struct.cop* %102, i32 0, i32 14
  %103 = load %struct.sv*, %struct.sv** %cop_warnings116, align 8
  %cmp117 = icmp eq %struct.sv* %103, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp117, label %if.then.142, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %land.lhs.true.115
  %104 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings120 = getelementptr inbounds %struct.cop, %struct.cop* %104, i32 0, i32 14
  %105 = load %struct.sv*, %struct.sv** %cop_warnings120, align 8
  %sv_any121 = getelementptr inbounds %struct.sv, %struct.sv* %105, i32 0, i32 0
  %106 = load i8*, i8** %sv_any121, align 8
  %107 = bitcast i8* %106 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %107, i32 0, i32 0
  %108 = load i8*, i8** %xpv_pv, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %108, i64 2
  %109 = load i8, i8* %arrayidx122, align 1
  %conv123 = sext i8 %109 to i32
  %and124 = and i32 %conv123, 64
  %tobool125 = icmp ne i32 %and124, 0
  br i1 %tobool125, label %if.then.142, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %lor.lhs.false.119
  %110 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings127 = getelementptr inbounds %struct.cop, %struct.cop* %110, i32 0, i32 14
  %111 = load %struct.sv*, %struct.sv** %cop_warnings127, align 8
  %sv_any128 = getelementptr inbounds %struct.sv, %struct.sv* %111, i32 0, i32 0
  %112 = load i8*, i8** %sv_any128, align 8
  %113 = bitcast i8* %112 to %struct.xpv*
  %xpv_pv129 = getelementptr inbounds %struct.xpv, %struct.xpv* %113, i32 0, i32 0
  %114 = load i8*, i8** %xpv_pv129, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %114, i64 1
  %115 = load i8, i8* %arrayidx130, align 1
  %conv131 = sext i8 %115 to i32
  %and132 = and i32 %conv131, 16
  %tobool133 = icmp ne i32 %and132, 0
  br i1 %tobool133, label %if.then.142, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %lor.lhs.false.126, %land.lhs.true.111, %if.then.108
  %116 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings135 = getelementptr inbounds %struct.cop, %struct.cop* %116, i32 0, i32 14
  %117 = load %struct.sv*, %struct.sv** %cop_warnings135, align 8
  %cmp136 = icmp eq %struct.sv* %117, null
  br i1 %cmp136, label %land.lhs.true.138, label %if.end.145

land.lhs.true.138:                                ; preds = %lor.lhs.false.134
  %118 = load i8, i8* @PL_dowarn, align 1
  %conv139 = zext i8 %118 to i32
  %and140 = and i32 %conv139, 1
  %tobool141 = icmp ne i32 %and140, 0
  br i1 %tobool141, label %if.then.142, label %if.end.145

if.then.142:                                      ; preds = %land.lhs.true.138, %lor.lhs.false.126, %lor.lhs.false.119, %land.lhs.true.115
  %119 = load %struct.gv*, %struct.gv** %gv, align 8
  %120 = load %struct.io*, %struct.io** %io, align 8
  %121 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type143 = getelementptr inbounds %struct.op, %struct.op* %121, i32 0, i32 4
  %122 = load i16, i16* %op_type143, align 2
  %conv144 = zext i16 %122 to i32
  call void @Perl_report_evil_fh(%struct.gv* %119, %struct.io* %120, i32 %conv144)
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.142, %land.lhs.true.138, %lor.lhs.false.134
  %call146 = call i32* @__errno_location()
  store i32 9, i32* %call146, align 4
  br label %say_undef

if.end.147:                                       ; preds = %lor.lhs.false.105
  %123 = load %struct.io*, %struct.io** %io, align 8
  %sv_any148 = getelementptr inbounds %struct.io, %struct.io* %123, i32 0, i32 0
  %124 = load %struct.xpvio*, %struct.xpvio** %sv_any148, align 8
  %xio_ifp149 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %124, i32 0, i32 7
  %125 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp149, align 8
  %call150 = call i32 @PerlIO_isutf8(%struct._PerlIO** %125)
  store i32 %call150, i32* %fp_utf8, align 4
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %land.lhs.true.152, label %if.else.170

land.lhs.true.152:                                ; preds = %if.end.147
  %126 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private = getelementptr inbounds %struct.cop, %struct.cop* %126, i32 0, i32 7
  %127 = load i8, i8* %op_private, align 1
  %conv153 = zext i8 %127 to i32
  %and154 = and i32 %conv153, 8
  %tobool155 = icmp ne i32 %and154, 0
  br i1 %tobool155, label %if.else.170, label %if.then.156

if.then.156:                                      ; preds = %land.lhs.true.152
  %128 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_flags157 = getelementptr inbounds %struct.sv, %struct.sv* %128, i32 0, i32 2
  %129 = load i32, i32* %sv_flags157, align 4
  %and158 = and i32 %129, 10223616
  %cmp159 = icmp eq i32 %and158, 537133056
  br i1 %cmp159, label %cond.true.161, label %cond.false.165

cond.true.161:                                    ; preds = %if.then.156
  %130 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_any162 = getelementptr inbounds %struct.sv, %struct.sv* %130, i32 0, i32 0
  %131 = load i8*, i8** %sv_any162, align 8
  %132 = bitcast i8* %131 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %132, i32 0, i32 1
  %133 = load i64, i64* %xpv_cur, align 8
  store i64 %133, i64* %blen, align 8
  %134 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_any163 = getelementptr inbounds %struct.sv, %struct.sv* %134, i32 0, i32 0
  %135 = load i8*, i8** %sv_any163, align 8
  %136 = bitcast i8* %135 to %struct.xpv*
  %xpv_pv164 = getelementptr inbounds %struct.xpv, %struct.xpv* %136, i32 0, i32 0
  %137 = load i8*, i8** %xpv_pv164, align 8
  br label %cond.end.167

cond.false.165:                                   ; preds = %if.then.156
  %138 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %call166 = call i8* @Perl_sv_pvutf8n_force(%struct.sv* %138, i64* %blen)
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.false.165, %cond.true.161
  %cond168 = phi i8* [ %137, %cond.true.161 ], [ %call166, %cond.false.165 ]
  store i8* %cond168, i8** %buffer, align 8
  %139 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_flags169 = getelementptr inbounds %struct.sv, %struct.sv* %139, i32 0, i32 2
  %140 = load i32, i32* %sv_flags169, align 4
  %or = or i32 %140, 536870912
  store i32 %or, i32* %sv_flags169, align 4
  store i32 0, i32* %buffer_utf8, align 4
  br label %if.end.191

if.else.170:                                      ; preds = %land.lhs.true.152, %if.end.147
  %141 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_flags171 = getelementptr inbounds %struct.sv, %struct.sv* %141, i32 0, i32 2
  %142 = load i32, i32* %sv_flags171, align 4
  %and172 = and i32 %142, 10223616
  %cmp173 = icmp eq i32 %and172, 262144
  br i1 %cmp173, label %cond.true.175, label %cond.false.180

cond.true.175:                                    ; preds = %if.else.170
  %143 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_any176 = getelementptr inbounds %struct.sv, %struct.sv* %143, i32 0, i32 0
  %144 = load i8*, i8** %sv_any176, align 8
  %145 = bitcast i8* %144 to %struct.xpv*
  %xpv_cur177 = getelementptr inbounds %struct.xpv, %struct.xpv* %145, i32 0, i32 1
  %146 = load i64, i64* %xpv_cur177, align 8
  store i64 %146, i64* %blen, align 8
  %147 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_any178 = getelementptr inbounds %struct.sv, %struct.sv* %147, i32 0, i32 0
  %148 = load i8*, i8** %sv_any178, align 8
  %149 = bitcast i8* %148 to %struct.xpv*
  %xpv_pv179 = getelementptr inbounds %struct.xpv, %struct.xpv* %149, i32 0, i32 0
  %150 = load i8*, i8** %xpv_pv179, align 8
  br label %cond.end.182

cond.false.180:                                   ; preds = %if.else.170
  %151 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %call181 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %151, i64* %blen, i32 2)
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.false.180, %cond.true.175
  %cond183 = phi i8* [ %150, %cond.true.175 ], [ %call181, %cond.false.180 ]
  store i8* %cond183, i8** %buffer, align 8
  %152 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private184 = getelementptr inbounds %struct.cop, %struct.cop* %152, i32 0, i32 7
  %153 = load i8, i8* %op_private184, align 1
  %conv185 = zext i8 %153 to i32
  %and186 = and i32 %conv185, 8
  %tobool187 = icmp ne i32 %and186, 0
  br i1 %tobool187, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %cond.end.182
  %154 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_flags188 = getelementptr inbounds %struct.sv, %struct.sv* %154, i32 0, i32 2
  %155 = load i32, i32* %sv_flags188, align 4
  %and189 = and i32 %155, 536870912
  %tobool190 = icmp ne i32 %and189, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end.182
  %156 = phi i1 [ false, %cond.end.182 ], [ %tobool190, %land.rhs ]
  %land.ext = zext i1 %156 to i32
  store i32 %land.ext, i32* %buffer_utf8, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %land.end, %cond.end.167
  %157 = load i64, i64* %length, align 8
  %cmp192 = icmp slt i64 %157, 0
  br i1 %cmp192, label %if.then.194, label %if.end.196

if.then.194:                                      ; preds = %if.end.191
  %call195 = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0))
  store %struct.op* %call195, %struct.op** %retval
  br label %return

if.end.196:                                       ; preds = %if.end.191
  %158 = load i64, i64* %length, align 8
  store i64 %158, i64* %wanted, align 8
  store i8 1, i8* %charstart, align 1
  store i64 0, i64* %charskip, align 8
  store i64 0, i64* %skip, align 8
  %159 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type197 = getelementptr inbounds %struct.op, %struct.op* %159, i32 0, i32 4
  %160 = load i16, i16* %op_type197, align 2
  %conv198 = zext i16 %160 to i32
  %cmp199 = icmp eq i32 %conv198, 215
  br i1 %cmp199, label %if.then.201, label %if.end.203

if.then.201:                                      ; preds = %if.end.196
  %call202 = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0))
  store %struct.op* %call202, %struct.op** %retval
  br label %return

if.end.203:                                       ; preds = %if.end.196
  %161 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_flags204 = getelementptr inbounds %struct.sv, %struct.sv* %161, i32 0, i32 2
  %162 = load i32, i32* %sv_flags204, align 4
  %and205 = and i32 %162, 536870912
  %tobool206 = icmp ne i32 %and205, 0
  br i1 %tobool206, label %land.lhs.true.207, label %if.end.214

land.lhs.true.207:                                ; preds = %if.end.203
  %163 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private208 = getelementptr inbounds %struct.cop, %struct.cop* %163, i32 0, i32 7
  %164 = load i8, i8* %op_private208, align 1
  %conv209 = zext i8 %164 to i32
  %and210 = and i32 %conv209, 8
  %tobool211 = icmp ne i32 %and210, 0
  br i1 %tobool211, label %if.end.214, label %if.then.212

if.then.212:                                      ; preds = %land.lhs.true.207
  %165 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %call213 = call i64 @Perl_sv_len_utf8(%struct.sv* %165)
  store i64 %call213, i64* %blen, align 8
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.212, %land.lhs.true.207, %if.end.203
  %166 = load i32, i32* %offset, align 4
  %cmp215 = icmp slt i32 %166, 0
  br i1 %cmp215, label %if.then.217, label %if.end.226

if.then.217:                                      ; preds = %if.end.214
  %167 = load i32, i32* %offset, align 4
  %sub = sub nsw i32 0, %167
  %168 = load i64, i64* %blen, align 8
  %conv218 = trunc i64 %168 to i32
  %cmp219 = icmp sgt i32 %sub, %conv218
  br i1 %cmp219, label %if.then.221, label %if.end.223

if.then.221:                                      ; preds = %if.then.217
  %call222 = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0))
  store %struct.op* %call222, %struct.op** %retval
  br label %return

if.end.223:                                       ; preds = %if.then.217
  %169 = load i64, i64* %blen, align 8
  %170 = load i32, i32* %offset, align 4
  %conv224 = sext i32 %170 to i64
  %add = add i64 %conv224, %169
  %conv225 = trunc i64 %add to i32
  store i32 %conv225, i32* %offset, align 4
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.223, %if.end.214
  %171 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_flags227 = getelementptr inbounds %struct.sv, %struct.sv* %171, i32 0, i32 2
  %172 = load i32, i32* %sv_flags227, align 4
  %and228 = and i32 %172, 536870912
  %tobool229 = icmp ne i32 %and228, 0
  br i1 %tobool229, label %land.lhs.true.230, label %if.end.253

land.lhs.true.230:                                ; preds = %if.end.226
  %173 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private231 = getelementptr inbounds %struct.cop, %struct.cop* %173, i32 0, i32 7
  %174 = load i8, i8* %op_private231, align 1
  %conv232 = zext i8 %174 to i32
  %and233 = and i32 %conv232, 8
  %tobool234 = icmp ne i32 %and233, 0
  br i1 %tobool234, label %if.end.253, label %if.then.235

if.then.235:                                      ; preds = %land.lhs.true.230
  %175 = load i32, i32* %offset, align 4
  %176 = load i64, i64* %blen, align 8
  %conv236 = trunc i64 %176 to i32
  %cmp237 = icmp sge i32 %175, %conv236
  br i1 %cmp237, label %if.then.239, label %if.else.246

if.then.239:                                      ; preds = %if.then.235
  %177 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_any240 = getelementptr inbounds %struct.sv, %struct.sv* %177, i32 0, i32 0
  %178 = load i8*, i8** %sv_any240, align 8
  %179 = bitcast i8* %178 to %struct.xpv*
  %xpv_cur241 = getelementptr inbounds %struct.xpv, %struct.xpv* %179, i32 0, i32 1
  %180 = load i64, i64* %xpv_cur241, align 8
  %181 = load i64, i64* %blen, align 8
  %sub242 = sub i64 %180, %181
  %182 = load i32, i32* %offset, align 4
  %conv243 = sext i32 %182 to i64
  %add244 = add i64 %conv243, %sub242
  %conv245 = trunc i64 %add244 to i32
  store i32 %conv245, i32* %offset, align 4
  br label %if.end.252

if.else.246:                                      ; preds = %if.then.235
  %183 = load i8*, i8** %buffer, align 8
  %184 = load i32, i32* %offset, align 4
  %call247 = call i8* @Perl_utf8_hop(i8* %183, i32 %184)
  %185 = load i8*, i8** %buffer, align 8
  %sub.ptr.lhs.cast248 = ptrtoint i8* %call247 to i64
  %sub.ptr.rhs.cast249 = ptrtoint i8* %185 to i64
  %sub.ptr.sub250 = sub i64 %sub.ptr.lhs.cast248, %sub.ptr.rhs.cast249
  %conv251 = trunc i64 %sub.ptr.sub250 to i32
  store i32 %conv251, i32* %offset, align 4
  br label %if.end.252

if.end.252:                                       ; preds = %if.else.246, %if.then.239
  br label %if.end.253

if.end.253:                                       ; preds = %if.end.252, %land.lhs.true.230, %if.end.226
  br label %more_bytes

more_bytes:                                       ; preds = %if.then.431, %if.then.411, %if.end.253
  %186 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_any254 = getelementptr inbounds %struct.sv, %struct.sv* %186, i32 0, i32 0
  %187 = load i8*, i8** %sv_any254, align 8
  %188 = bitcast i8* %187 to %struct.xpv*
  %xpv_cur255 = getelementptr inbounds %struct.xpv, %struct.xpv* %188, i32 0, i32 1
  %189 = load i64, i64* %xpv_cur255, align 8
  %conv256 = trunc i64 %189 to i32
  store i32 %conv256, i32* %bufsize, align 4
  %190 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_any257 = getelementptr inbounds %struct.sv, %struct.sv* %190, i32 0, i32 0
  %191 = load i8*, i8** %sv_any257, align 8
  %192 = bitcast i8* %191 to %struct.xpv*
  %xpv_len = getelementptr inbounds %struct.xpv, %struct.xpv* %192, i32 0, i32 2
  %193 = load i64, i64* %xpv_len, align 8
  %194 = load i64, i64* %length, align 8
  %195 = load i32, i32* %offset, align 4
  %conv258 = sext i32 %195 to i64
  %add259 = add nsw i64 %194, %conv258
  %add260 = add nsw i64 %add259, 1
  %cmp261 = icmp ult i64 %193, %add260
  br i1 %cmp261, label %cond.true.263, label %cond.false.268

cond.true.263:                                    ; preds = %more_bytes
  %196 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %197 = load i64, i64* %length, align 8
  %198 = load i32, i32* %offset, align 4
  %conv264 = sext i32 %198 to i64
  %add265 = add nsw i64 %197, %conv264
  %add266 = add nsw i64 %add265, 1
  %call267 = call i8* @Perl_sv_grow(%struct.sv* %196, i64 %add266)
  br label %cond.end.271

cond.false.268:                                   ; preds = %more_bytes
  %199 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_any269 = getelementptr inbounds %struct.sv, %struct.sv* %199, i32 0, i32 0
  %200 = load i8*, i8** %sv_any269, align 8
  %201 = bitcast i8* %200 to %struct.xpv*
  %xpv_pv270 = getelementptr inbounds %struct.xpv, %struct.xpv* %201, i32 0, i32 0
  %202 = load i8*, i8** %xpv_pv270, align 8
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.false.268, %cond.true.263
  %cond272 = phi i8* [ %call267, %cond.true.263 ], [ %202, %cond.false.268 ]
  store i8* %cond272, i8** %buffer, align 8
  %203 = load i32, i32* %offset, align 4
  %204 = load i32, i32* %bufsize, align 4
  %cmp273 = icmp ugt i32 %203, %204
  br i1 %cmp273, label %if.then.275, label %if.end.280

if.then.275:                                      ; preds = %cond.end.271
  %205 = load i8*, i8** %buffer, align 8
  %206 = load i32, i32* %bufsize, align 4
  %idx.ext276 = zext i32 %206 to i64
  %add.ptr277 = getelementptr inbounds i8, i8* %205, i64 %idx.ext276
  %207 = load i32, i32* %offset, align 4
  %208 = load i32, i32* %bufsize, align 4
  %sub278 = sub i32 %207, %208
  %conv279 = zext i32 %sub278 to i64
  %mul = mul i64 %conv279, 1
  call void @llvm.memset.p0i8.i64(i8* %add.ptr277, i8 0, i64 %mul, i32 1, i1 false)
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.275, %cond.end.271
  %209 = load i8*, i8** %buffer, align 8
  %210 = load i32, i32* %offset, align 4
  %idx.ext281 = sext i32 %210 to i64
  %add.ptr282 = getelementptr inbounds i8, i8* %209, i64 %idx.ext281
  store i8* %add.ptr282, i8** %buffer, align 8
  %211 = load i32, i32* %buffer_utf8, align 4
  %tobool283 = icmp ne i32 %211, 0
  br i1 %tobool283, label %if.else.285, label %if.then.284

if.then.284:                                      ; preds = %if.end.280
  %212 = load %struct.sv*, %struct.sv** %bufsv, align 8
  store %struct.sv* %212, %struct.sv** %read_target, align 8
  br label %if.end.311

if.else.285:                                      ; preds = %if.end.280
  %213 = load i32, i32* %offset, align 4
  %conv287 = sext i32 %213 to i64
  %214 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_any288 = getelementptr inbounds %struct.sv, %struct.sv* %214, i32 0, i32 0
  %215 = load i8*, i8** %sv_any288, align 8
  %216 = bitcast i8* %215 to %struct.xpv*
  %xpv_cur289 = getelementptr inbounds %struct.xpv, %struct.xpv* %216, i32 0, i32 1
  store i64 %conv287, i64* %xpv_cur289, align 8
  store i64 %conv287, i64* %tmp286
  %217 = load i64, i64* %tmp286
  %call290 = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call290, %struct.sv** %read_target, align 8
  %218 = load %struct.sv*, %struct.sv** %read_target, align 8
  %sv_flags291 = getelementptr inbounds %struct.sv, %struct.sv* %218, i32 0, i32 2
  %219 = load i32, i32* %sv_flags291, align 4
  %and292 = and i32 %219, 255
  %cmp293 = icmp uge i32 %and292, 4
  br i1 %cmp293, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else.285
  %220 = load %struct.sv*, %struct.sv** %read_target, align 8
  %call295 = call signext i8 @Perl_sv_upgrade(%struct.sv* %220, i32 4)
  %conv296 = sext i8 %call295 to i32
  %tobool297 = icmp ne i32 %conv296, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else.285
  %221 = phi i1 [ true, %if.else.285 ], [ %tobool297, %lor.rhs ]
  %lor.ext = zext i1 %221 to i32
  %222 = load %struct.sv*, %struct.sv** %read_target, align 8
  %sv_any298 = getelementptr inbounds %struct.sv, %struct.sv* %222, i32 0, i32 0
  %223 = load i8*, i8** %sv_any298, align 8
  %224 = bitcast i8* %223 to %struct.xpv*
  %xpv_len299 = getelementptr inbounds %struct.xpv, %struct.xpv* %224, i32 0, i32 2
  %225 = load i64, i64* %xpv_len299, align 8
  %226 = load i64, i64* %length, align 8
  %add300 = add nsw i64 %226, 1
  %cmp301 = icmp ult i64 %225, %add300
  br i1 %cmp301, label %cond.true.303, label %cond.false.306

cond.true.303:                                    ; preds = %lor.end
  %227 = load %struct.sv*, %struct.sv** %read_target, align 8
  %228 = load i64, i64* %length, align 8
  %add304 = add nsw i64 %228, 1
  %call305 = call i8* @Perl_sv_grow(%struct.sv* %227, i64 %add304)
  br label %cond.end.309

cond.false.306:                                   ; preds = %lor.end
  %229 = load %struct.sv*, %struct.sv** %read_target, align 8
  %sv_any307 = getelementptr inbounds %struct.sv, %struct.sv* %229, i32 0, i32 0
  %230 = load i8*, i8** %sv_any307, align 8
  %231 = bitcast i8* %230 to %struct.xpv*
  %xpv_pv308 = getelementptr inbounds %struct.xpv, %struct.xpv* %231, i32 0, i32 0
  %232 = load i8*, i8** %xpv_pv308, align 8
  br label %cond.end.309

cond.end.309:                                     ; preds = %cond.false.306, %cond.true.303
  %cond310 = phi i8* [ %call305, %cond.true.303 ], [ %232, %cond.false.306 ]
  store i8* %cond310, i8** %buffer, align 8
  br label %if.end.311

if.end.311:                                       ; preds = %cond.end.309, %if.then.284
  %233 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type312 = getelementptr inbounds %struct.op, %struct.op* %233, i32 0, i32 4
  %234 = load i16, i16* %op_type312, align 2
  %conv313 = zext i16 %234 to i32
  %cmp314 = icmp eq i32 %conv313, 212
  br i1 %cmp314, label %if.then.316, label %if.else.321

if.then.316:                                      ; preds = %if.end.311
  %235 = load %struct.io*, %struct.io** %io, align 8
  %sv_any317 = getelementptr inbounds %struct.io, %struct.io* %235, i32 0, i32 0
  %236 = load %struct.xpvio*, %struct.xpvio** %sv_any317, align 8
  %xio_ifp318 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %236, i32 0, i32 7
  %237 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp318, align 8
  %call319 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %237)
  %238 = load i8*, i8** %buffer, align 8
  %239 = load i64, i64* %length, align 8
  %call320 = call i64 @read(i32 %call319, i8* %238, i64 %239)
  store i64 %call320, i64* %count, align 8
  br label %if.end.334

if.else.321:                                      ; preds = %if.end.311
  %240 = load %struct.io*, %struct.io** %io, align 8
  %sv_any322 = getelementptr inbounds %struct.io, %struct.io* %240, i32 0, i32 0
  %241 = load %struct.xpvio*, %struct.xpvio** %sv_any322, align 8
  %xio_ifp323 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %241, i32 0, i32 7
  %242 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp323, align 8
  %243 = load i8*, i8** %buffer, align 8
  %244 = load i64, i64* %length, align 8
  %call324 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %242, i8* %243, i64 %244)
  store i64 %call324, i64* %count, align 8
  %245 = load i64, i64* %count, align 8
  %cmp325 = icmp eq i64 %245, 0
  br i1 %cmp325, label %land.lhs.true.327, label %if.end.333

land.lhs.true.327:                                ; preds = %if.else.321
  %246 = load %struct.io*, %struct.io** %io, align 8
  %sv_any328 = getelementptr inbounds %struct.io, %struct.io* %246, i32 0, i32 0
  %247 = load %struct.xpvio*, %struct.xpvio** %sv_any328, align 8
  %xio_ifp329 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %247, i32 0, i32 7
  %248 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp329, align 8
  %call330 = call i32 @Perl_PerlIO_error(%struct._PerlIO** %248)
  %tobool331 = icmp ne i32 %call330, 0
  br i1 %tobool331, label %if.then.332, label %if.end.333

if.then.332:                                      ; preds = %land.lhs.true.327
  store i64 -1, i64* %count, align 8
  br label %if.end.333

if.end.333:                                       ; preds = %if.then.332, %land.lhs.true.327, %if.else.321
  br label %if.end.334

if.end.334:                                       ; preds = %if.end.333, %if.then.316
  %249 = load i64, i64* %count, align 8
  %cmp335 = icmp slt i64 %249, 0
  br i1 %cmp335, label %if.then.337, label %if.end.372

if.then.337:                                      ; preds = %if.end.334
  %250 = load %struct.io*, %struct.io** %io, align 8
  %sv_any338 = getelementptr inbounds %struct.io, %struct.io* %250, i32 0, i32 0
  %251 = load %struct.xpvio*, %struct.xpvio** %sv_any338, align 8
  %xio_type = getelementptr inbounds %struct.xpvio, %struct.xpvio* %251, i32 0, i32 21
  %252 = load i8, i8* %xio_type, align 1
  %conv339 = sext i8 %252 to i32
  %cmp340 = icmp eq i32 %conv339, 62
  br i1 %cmp340, label %land.lhs.true.342, label %if.end.371

land.lhs.true.342:                                ; preds = %if.then.337
  %253 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings343 = getelementptr inbounds %struct.cop, %struct.cop* %253, i32 0, i32 14
  %254 = load %struct.sv*, %struct.sv** %cop_warnings343, align 8
  %cmp344 = icmp ne %struct.sv* %254, null
  br i1 %cmp344, label %land.lhs.true.346, label %lor.lhs.false.362

land.lhs.true.346:                                ; preds = %land.lhs.true.342
  %255 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings347 = getelementptr inbounds %struct.cop, %struct.cop* %255, i32 0, i32 14
  %256 = load %struct.sv*, %struct.sv** %cop_warnings347, align 8
  %cmp348 = icmp ne %struct.sv* %256, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp348, label %land.lhs.true.350, label %lor.lhs.false.362

land.lhs.true.350:                                ; preds = %land.lhs.true.346
  %257 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings351 = getelementptr inbounds %struct.cop, %struct.cop* %257, i32 0, i32 14
  %258 = load %struct.sv*, %struct.sv** %cop_warnings351, align 8
  %cmp352 = icmp eq %struct.sv* %258, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp352, label %if.then.370, label %lor.lhs.false.354

lor.lhs.false.354:                                ; preds = %land.lhs.true.350
  %259 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings355 = getelementptr inbounds %struct.cop, %struct.cop* %259, i32 0, i32 14
  %260 = load %struct.sv*, %struct.sv** %cop_warnings355, align 8
  %sv_any356 = getelementptr inbounds %struct.sv, %struct.sv* %260, i32 0, i32 0
  %261 = load i8*, i8** %sv_any356, align 8
  %262 = bitcast i8* %261 to %struct.xpv*
  %xpv_pv357 = getelementptr inbounds %struct.xpv, %struct.xpv* %262, i32 0, i32 0
  %263 = load i8*, i8** %xpv_pv357, align 8
  %arrayidx358 = getelementptr inbounds i8, i8* %263, i64 1
  %264 = load i8, i8* %arrayidx358, align 1
  %conv359 = sext i8 %264 to i32
  %and360 = and i32 %conv359, 4
  %tobool361 = icmp ne i32 %and360, 0
  br i1 %tobool361, label %if.then.370, label %lor.lhs.false.362

lor.lhs.false.362:                                ; preds = %lor.lhs.false.354, %land.lhs.true.346, %land.lhs.true.342
  %265 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings363 = getelementptr inbounds %struct.cop, %struct.cop* %265, i32 0, i32 14
  %266 = load %struct.sv*, %struct.sv** %cop_warnings363, align 8
  %cmp364 = icmp eq %struct.sv* %266, null
  br i1 %cmp364, label %land.lhs.true.366, label %if.end.371

land.lhs.true.366:                                ; preds = %lor.lhs.false.362
  %267 = load i8, i8* @PL_dowarn, align 1
  %conv367 = zext i8 %267 to i32
  %and368 = and i32 %conv367, 1
  %tobool369 = icmp ne i32 %and368, 0
  br i1 %tobool369, label %if.then.370, label %if.end.371

if.then.370:                                      ; preds = %land.lhs.true.366, %lor.lhs.false.354, %land.lhs.true.350
  %268 = load %struct.gv*, %struct.gv** %gv, align 8
  %269 = load %struct.io*, %struct.io** %io, align 8
  call void @Perl_report_evil_fh(%struct.gv* %268, %struct.io* %269, i32 -2)
  br label %if.end.371

if.end.371:                                       ; preds = %if.then.370, %land.lhs.true.366, %lor.lhs.false.362, %if.then.337
  br label %say_undef

if.end.372:                                       ; preds = %if.end.334
  %270 = load i64, i64* %count, align 8
  %271 = load i8*, i8** %buffer, align 8
  %272 = load %struct.sv*, %struct.sv** %read_target, align 8
  %sv_any374 = getelementptr inbounds %struct.sv, %struct.sv* %272, i32 0, i32 0
  %273 = load i8*, i8** %sv_any374, align 8
  %274 = bitcast i8* %273 to %struct.xpv*
  %xpv_pv375 = getelementptr inbounds %struct.xpv, %struct.xpv* %274, i32 0, i32 0
  %275 = load i8*, i8** %xpv_pv375, align 8
  %sub.ptr.lhs.cast376 = ptrtoint i8* %271 to i64
  %sub.ptr.rhs.cast377 = ptrtoint i8* %275 to i64
  %sub.ptr.sub378 = sub i64 %sub.ptr.lhs.cast376, %sub.ptr.rhs.cast377
  %add379 = add nsw i64 %270, %sub.ptr.sub378
  %276 = load %struct.sv*, %struct.sv** %read_target, align 8
  %sv_any380 = getelementptr inbounds %struct.sv, %struct.sv* %276, i32 0, i32 0
  %277 = load i8*, i8** %sv_any380, align 8
  %278 = bitcast i8* %277 to %struct.xpv*
  %xpv_cur381 = getelementptr inbounds %struct.xpv, %struct.xpv* %278, i32 0, i32 1
  store i64 %add379, i64* %xpv_cur381, align 8
  store i64 %add379, i64* %tmp373
  %279 = load i64, i64* %tmp373
  %280 = load %struct.sv*, %struct.sv** %read_target, align 8
  %sv_any382 = getelementptr inbounds %struct.sv, %struct.sv* %280, i32 0, i32 0
  %281 = load i8*, i8** %sv_any382, align 8
  %282 = bitcast i8* %281 to %struct.xpv*
  %xpv_pv383 = getelementptr inbounds %struct.xpv, %struct.xpv* %282, i32 0, i32 0
  %283 = load i8*, i8** %xpv_pv383, align 8
  %284 = load %struct.sv*, %struct.sv** %read_target, align 8
  %sv_any384 = getelementptr inbounds %struct.sv, %struct.sv* %284, i32 0, i32 0
  %285 = load i8*, i8** %sv_any384, align 8
  %286 = bitcast i8* %285 to %struct.xpv*
  %xpv_cur385 = getelementptr inbounds %struct.xpv, %struct.xpv* %286, i32 0, i32 1
  %287 = load i64, i64* %xpv_cur385, align 8
  %add.ptr386 = getelementptr inbounds i8, i8* %283, i64 %287
  store i8 0, i8* %add.ptr386, align 1
  %288 = load %struct.sv*, %struct.sv** %read_target, align 8
  %sv_flags387 = getelementptr inbounds %struct.sv, %struct.sv* %288, i32 0, i32 2
  %289 = load i32, i32* %sv_flags387, align 4
  %and388 = and i32 %289, 1223753727
  store i32 %and388, i32* %sv_flags387, align 4
  %290 = load %struct.sv*, %struct.sv** %read_target, align 8
  %sv_flags389 = getelementptr inbounds %struct.sv, %struct.sv* %290, i32 0, i32 2
  %291 = load i32, i32* %sv_flags389, align 4
  %or390 = or i32 %291, 67371008
  store i32 %or390, i32* %sv_flags389, align 4
  %292 = load i32, i32* %fp_utf8, align 4
  %tobool391 = icmp ne i32 %292, 0
  br i1 %tobool391, label %land.lhs.true.392, label %if.else.442

land.lhs.true.392:                                ; preds = %if.end.372
  %293 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private393 = getelementptr inbounds %struct.cop, %struct.cop* %293, i32 0, i32 7
  %294 = load i8, i8* %op_private393, align 1
  %conv394 = zext i8 %294 to i32
  %and395 = and i32 %conv394, 8
  %tobool396 = icmp ne i32 %and395, 0
  br i1 %tobool396, label %if.else.442, label %if.then.397

if.then.397:                                      ; preds = %land.lhs.true.392
  %295 = load i8*, i8** %buffer, align 8
  %296 = load i64, i64* %count, align 8
  %add.ptr399 = getelementptr inbounds i8, i8* %295, i64 %296
  store i8* %add.ptr399, i8** %bend, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.425, %if.then.397
  %297 = load i8*, i8** %buffer, align 8
  %298 = load i8*, i8** %bend, align 8
  %cmp400 = icmp ult i8* %297, %298
  br i1 %cmp400, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %299 = load i8, i8* %charstart, align 1
  %tobool402 = icmp ne i8 %299, 0
  br i1 %tobool402, label %if.then.403, label %if.end.406

if.then.403:                                      ; preds = %while.body
  %300 = load i8*, i8** %buffer, align 8
  %301 = load i8, i8* %300, align 1
  %idxprom = zext i8 %301 to i64
  %arrayidx404 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom
  %302 = load i8, i8* %arrayidx404, align 1
  %conv405 = zext i8 %302 to i64
  store i64 %conv405, i64* %skip, align 8
  store i64 0, i64* %charskip, align 8
  br label %if.end.406

if.end.406:                                       ; preds = %if.then.403, %while.body
  %303 = load i8*, i8** %buffer, align 8
  %304 = load i64, i64* %charskip, align 8
  %idx.neg = sub i64 0, %304
  %add.ptr407 = getelementptr inbounds i8, i8* %303, i64 %idx.neg
  %305 = load i64, i64* %skip, align 8
  %add.ptr408 = getelementptr inbounds i8, i8* %add.ptr407, i64 %305
  %306 = load i8*, i8** %bend, align 8
  %cmp409 = icmp ugt i8* %add.ptr408, %306
  br i1 %cmp409, label %if.then.411, label %if.else.423

if.then.411:                                      ; preds = %if.end.406
  %307 = load i64, i64* %skip, align 8
  %308 = load i8*, i8** %bend, align 8
  %309 = load i8*, i8** %buffer, align 8
  %sub.ptr.lhs.cast412 = ptrtoint i8* %308 to i64
  %sub.ptr.rhs.cast413 = ptrtoint i8* %309 to i64
  %sub.ptr.sub414 = sub i64 %sub.ptr.lhs.cast412, %sub.ptr.rhs.cast413
  %sub415 = sub i64 %307, %sub.ptr.sub414
  store i64 %sub415, i64* %length, align 8
  %310 = load i8*, i8** %bend, align 8
  %311 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_any416 = getelementptr inbounds %struct.sv, %struct.sv* %311, i32 0, i32 0
  %312 = load i8*, i8** %sv_any416, align 8
  %313 = bitcast i8* %312 to %struct.xpv*
  %xpv_pv417 = getelementptr inbounds %struct.xpv, %struct.xpv* %313, i32 0, i32 0
  %314 = load i8*, i8** %xpv_pv417, align 8
  %sub.ptr.lhs.cast418 = ptrtoint i8* %310 to i64
  %sub.ptr.rhs.cast419 = ptrtoint i8* %314 to i64
  %sub.ptr.sub420 = sub i64 %sub.ptr.lhs.cast418, %sub.ptr.rhs.cast419
  %conv421 = trunc i64 %sub.ptr.sub420 to i32
  store i32 %conv421, i32* %offset, align 4
  store i8 0, i8* %charstart, align 1
  %315 = load i64, i64* %count, align 8
  %316 = load i64, i64* %charskip, align 8
  %add422 = add i64 %316, %315
  store i64 %add422, i64* %charskip, align 8
  br label %more_bytes

if.else.423:                                      ; preds = %if.end.406
  %317 = load i64, i64* %got, align 8
  %inc = add i64 %317, 1
  store i64 %inc, i64* %got, align 8
  %318 = load i64, i64* %skip, align 8
  %319 = load i8*, i8** %buffer, align 8
  %add.ptr424 = getelementptr inbounds i8, i8* %319, i64 %318
  store i8* %add.ptr424, i8** %buffer, align 8
  store i8 1, i8* %charstart, align 1
  store i64 0, i64* %charskip, align 8
  br label %if.end.425

if.end.425:                                       ; preds = %if.else.423
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %320 = load i64, i64* %got, align 8
  %321 = load i64, i64* %wanted, align 8
  %cmp426 = icmp ult i64 %320, %321
  br i1 %cmp426, label %land.lhs.true.428, label %if.end.439

land.lhs.true.428:                                ; preds = %while.end
  %322 = load i64, i64* %count, align 8
  %323 = load i64, i64* %length, align 8
  %cmp429 = icmp eq i64 %322, %323
  br i1 %cmp429, label %if.then.431, label %if.end.439

if.then.431:                                      ; preds = %land.lhs.true.428
  %324 = load i64, i64* %wanted, align 8
  %325 = load i64, i64* %got, align 8
  %sub432 = sub i64 %324, %325
  store i64 %sub432, i64* %length, align 8
  %326 = load i8*, i8** %bend, align 8
  %327 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_any433 = getelementptr inbounds %struct.sv, %struct.sv* %327, i32 0, i32 0
  %328 = load i8*, i8** %sv_any433, align 8
  %329 = bitcast i8* %328 to %struct.xpv*
  %xpv_pv434 = getelementptr inbounds %struct.xpv, %struct.xpv* %329, i32 0, i32 0
  %330 = load i8*, i8** %xpv_pv434, align 8
  %sub.ptr.lhs.cast435 = ptrtoint i8* %326 to i64
  %sub.ptr.rhs.cast436 = ptrtoint i8* %330 to i64
  %sub.ptr.sub437 = sub i64 %sub.ptr.lhs.cast435, %sub.ptr.rhs.cast436
  %conv438 = trunc i64 %sub.ptr.sub437 to i32
  store i32 %conv438, i32* %offset, align 4
  br label %more_bytes

if.end.439:                                       ; preds = %land.lhs.true.428, %while.end
  %331 = load i64, i64* %got, align 8
  store i64 %331, i64* %count, align 8
  %332 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_flags440 = getelementptr inbounds %struct.sv, %struct.sv* %332, i32 0, i32 2
  %333 = load i32, i32* %sv_flags440, align 4
  %or441 = or i32 %333, 536870912
  store i32 %or441, i32* %sv_flags440, align 4
  br label %if.end.446

if.else.442:                                      ; preds = %land.lhs.true.392, %if.end.372
  %334 = load i32, i32* %buffer_utf8, align 4
  %tobool443 = icmp ne i32 %334, 0
  br i1 %tobool443, label %if.then.444, label %if.end.445

if.then.444:                                      ; preds = %if.else.442
  %335 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %336 = load %struct.sv*, %struct.sv** %read_target, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %335, %struct.sv* %336, i32 0)
  br label %if.end.445

if.end.445:                                       ; preds = %if.then.444, %if.else.442
  br label %if.end.446

if.end.446:                                       ; preds = %if.end.445, %if.end.439
  %337 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_flags447 = getelementptr inbounds %struct.sv, %struct.sv* %337, i32 0, i32 2
  %338 = load i32, i32* %sv_flags447, align 4
  %and448 = and i32 %338, 16384
  %tobool449 = icmp ne i32 %and448, 0
  br i1 %tobool449, label %if.then.450, label %if.end.452

if.then.450:                                      ; preds = %if.end.446
  %339 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %call451 = call i32 @Perl_mg_set(%struct.sv* %339)
  br label %if.end.452

if.end.452:                                       ; preds = %if.then.450, %if.end.446
  %340 = load %struct.io*, %struct.io** %io, align 8
  %sv_any453 = getelementptr inbounds %struct.io, %struct.io* %340, i32 0, i32 0
  %341 = load %struct.xpvio*, %struct.xpvio** %sv_any453, align 8
  %xio_flags = getelementptr inbounds %struct.xpvio, %struct.xpvio* %341, i32 0, i32 22
  %342 = load i8, i8* %xio_flags, align 1
  %conv454 = sext i8 %342 to i32
  %and455 = and i32 %conv454, 16
  %tobool456 = icmp ne i32 %and455, 0
  br i1 %tobool456, label %if.end.461, label %if.then.457

if.then.457:                                      ; preds = %if.end.452
  %343 = load i8, i8* @PL_tainting, align 1
  %tobool458 = icmp ne i8 %343, 0
  br i1 %tobool458, label %if.then.459, label %if.end.460

if.then.459:                                      ; preds = %if.then.457
  %344 = load %struct.sv*, %struct.sv** %bufsv, align 8
  call void @Perl_sv_taint(%struct.sv* %344)
  br label %if.end.460

if.end.460:                                       ; preds = %if.then.459, %if.then.457
  br label %if.end.461

if.end.461:                                       ; preds = %if.end.460, %if.end.452
  %345 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %346 = load i32, i32* %origmark, align 4
  %idx.ext462 = sext i32 %346 to i64
  %add.ptr463 = getelementptr inbounds %struct.sv*, %struct.sv** %345, i64 %idx.ext462
  store %struct.sv** %add.ptr463, %struct.sv*** %sp, align 8
  %347 = load %struct.sv*, %struct.sv** %targ, align 8
  %348 = load i64, i64* %count, align 8
  call void @Perl_sv_setiv(%struct.sv* %347, i64 %348)
  %349 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags464 = getelementptr inbounds %struct.sv, %struct.sv* %349, i32 0, i32 2
  %350 = load i32, i32* %sv_flags464, align 4
  %and465 = and i32 %350, 16384
  %tobool466 = icmp ne i32 %and465, 0
  br i1 %tobool466, label %if.then.467, label %if.end.469

if.then.467:                                      ; preds = %if.end.461
  %351 = load %struct.sv*, %struct.sv** %targ, align 8
  %call468 = call i32 @Perl_mg_set(%struct.sv* %351)
  br label %if.end.469

if.end.469:                                       ; preds = %if.then.467, %if.end.461
  %352 = load %struct.sv*, %struct.sv** %targ, align 8
  %353 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr471 = getelementptr inbounds %struct.sv*, %struct.sv** %353, i32 1
  store %struct.sv** %incdec.ptr471, %struct.sv*** %sp, align 8
  store %struct.sv* %352, %struct.sv** %incdec.ptr471, align 8
  store %struct.sv* %352, %struct.sv** %tmp470
  %354 = load %struct.sv*, %struct.sv** %tmp470
  %355 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %355, %struct.sv*** @PL_stack_sp, align 8
  %356 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next472 = getelementptr inbounds %struct.op, %struct.op* %356, i32 0, i32 0
  %357 = load %struct.op*, %struct.op** %op_next472, align 8
  store %struct.op* %357, %struct.op** %retval
  br label %return

say_undef:                                        ; preds = %if.end.371, %if.end.145, %if.then.52
  %358 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %359 = load i32, i32* %origmark, align 4
  %idx.ext473 = sext i32 %359 to i64
  %add.ptr474 = getelementptr inbounds %struct.sv*, %struct.sv** %358, i64 %idx.ext473
  store %struct.sv** %add.ptr474, %struct.sv*** %sp, align 8
  %360 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr475 = getelementptr inbounds %struct.sv*, %struct.sv** %360, i32 1
  store %struct.sv** %incdec.ptr475, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr475, align 8
  %361 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %361, %struct.sv*** @PL_stack_sp, align 8
  %362 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next476 = getelementptr inbounds %struct.op, %struct.op* %362, i32 0, i32 0
  %363 = load %struct.op*, %struct.op** %op_next476, align 8
  store %struct.op* %363, %struct.op** %retval
  br label %return

return:                                           ; preds = %say_undef, %if.end.469, %if.then.221, %if.then.201, %if.then.194, %cond.end.43
  %364 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %364
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_enterwrite() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %gv = alloca %struct.gv*, align 8
  %io = alloca %struct.io*, align 8
  %fgv = alloca %struct.gv*, align 8
  %cv = alloca %struct.cv*, align 8
  %name = alloca i8*, align 8
  %tmpsv = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 7
  %2 = load i8, i8* %op_private, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 15
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  store %struct.gv* %3, %struct.gv** %gv, align 8
  br label %if.end.3

if.else:                                          ; preds = %entry
  %4 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %4, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %5 = load %struct.sv*, %struct.sv** %4, align 8
  %6 = bitcast %struct.sv* %5 to %struct.gv*
  store %struct.gv* %6, %struct.gv** %gv, align 8
  %7 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool = icmp ne %struct.gv* %7, null
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.else
  %8 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  store %struct.gv* %8, %struct.gv** %gv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %9 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %9 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp4 = icmp slt i64 %sub.ptr.div, 1
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %11, %struct.sv** %12, i32 1)
  store %struct.sv** %call, %struct.sv*** %sp, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.3
  %13 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool8 = icmp ne %struct.gv* %13, null
  br i1 %tobool8, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end.7
  %14 = load %struct.gv*, %struct.gv** %gv, align 8
  %15 = bitcast %struct.gv* %14 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags, align 4
  %and9 = and i32 %16, 255
  %cmp10 = icmp eq i32 %and9, 13
  br i1 %cmp10, label %land.lhs.true.12, label %cond.false

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %17 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %17, i32 0, i32 0
  %18 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %18, i32 0, i32 7
  %19 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool13 = icmp ne %struct.gp* %19, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.12
  %20 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any14 = getelementptr inbounds %struct.gv, %struct.gv* %20, i32 0, i32 0
  %21 = load %struct.xpvgv*, %struct.xpvgv** %sv_any14, align 8
  %xgv_gp15 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %21, i32 0, i32 7
  %22 = load %struct.gp*, %struct.gp** %xgv_gp15, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %22, i32 0, i32 2
  %23 = load %struct.io*, %struct.io** %gp_io, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.12, %land.lhs.true, %if.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.io* [ %23, %cond.true ], [ null, %cond.false ]
  store %struct.io* %cond, %struct.io** %io, align 8
  %24 = load %struct.io*, %struct.io** %io, align 8
  %tobool16 = icmp ne %struct.io* %24, null
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %cond.end
  %25 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr18 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i32 1
  store %struct.sv** %incdec.ptr18, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr18, align 8
  %26 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %26, %struct.sv*** @PL_stack_sp, align 8
  %27 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %27, i32 0, i32 0
  %28 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %28, %struct.op** %retval
  br label %return

if.end.19:                                        ; preds = %cond.end
  %29 = load %struct.io*, %struct.io** %io, align 8
  %sv_any20 = getelementptr inbounds %struct.io, %struct.io* %29, i32 0, i32 0
  %30 = load %struct.xpvio*, %struct.xpvio** %sv_any20, align 8
  %xio_fmt_gv = getelementptr inbounds %struct.xpvio, %struct.xpvio* %30, i32 0, i32 17
  %31 = load %struct.gv*, %struct.gv** %xio_fmt_gv, align 8
  %tobool21 = icmp ne %struct.gv* %31, null
  br i1 %tobool21, label %if.then.22, label %if.else.25

if.then.22:                                       ; preds = %if.end.19
  %32 = load %struct.io*, %struct.io** %io, align 8
  %sv_any23 = getelementptr inbounds %struct.io, %struct.io* %32, i32 0, i32 0
  %33 = load %struct.xpvio*, %struct.xpvio** %sv_any23, align 8
  %xio_fmt_gv24 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %33, i32 0, i32 17
  %34 = load %struct.gv*, %struct.gv** %xio_fmt_gv24, align 8
  store %struct.gv* %34, %struct.gv** %fgv, align 8
  br label %if.end.26

if.else.25:                                       ; preds = %if.end.19
  %35 = load %struct.gv*, %struct.gv** %gv, align 8
  store %struct.gv* %35, %struct.gv** %fgv, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.22
  %36 = load %struct.gv*, %struct.gv** %fgv, align 8
  %sv_any27 = getelementptr inbounds %struct.gv, %struct.gv* %36, i32 0, i32 0
  %37 = load %struct.xpvgv*, %struct.xpvgv** %sv_any27, align 8
  %xgv_gp28 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %37, i32 0, i32 7
  %38 = load %struct.gp*, %struct.gp** %xgv_gp28, align 8
  %gp_form = getelementptr inbounds %struct.gp, %struct.gp* %38, i32 0, i32 3
  %39 = load %struct.cv*, %struct.cv** %gp_form, align 8
  store %struct.cv* %39, %struct.cv** %cv, align 8
  %40 = load %struct.cv*, %struct.cv** %cv, align 8
  %tobool29 = icmp ne %struct.cv* %40, null
  br i1 %tobool29, label %if.end.53, label %if.then.30

if.then.30:                                       ; preds = %if.end.26
  store i8* null, i8** %name, align 8
  %41 = load %struct.gv*, %struct.gv** %fgv, align 8
  %tobool31 = icmp ne %struct.gv* %41, null
  br i1 %tobool31, label %if.then.32, label %if.end.44

if.then.32:                                       ; preds = %if.then.30
  %call33 = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call33, %struct.sv** %tmpsv, align 8
  %42 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %43 = load %struct.gv*, %struct.gv** %fgv, align 8
  call void @Perl_gv_efullname4(%struct.sv* %42, %struct.gv* %43, i8* null, i8 signext 0)
  %44 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_flags34 = getelementptr inbounds %struct.sv, %struct.sv* %44, i32 0, i32 2
  %45 = load i32, i32* %sv_flags34, align 4
  %and35 = and i32 %45, 262144
  %cmp36 = icmp eq i32 %and35, 262144
  br i1 %cmp36, label %cond.true.38, label %cond.false.40

cond.true.38:                                     ; preds = %if.then.32
  %46 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any39 = getelementptr inbounds %struct.sv, %struct.sv* %46, i32 0, i32 0
  %47 = load i8*, i8** %sv_any39, align 8
  %48 = bitcast i8* %47 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %48, i32 0, i32 0
  %49 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.42

cond.false.40:                                    ; preds = %if.then.32
  %50 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %call41 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %50)
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.40, %cond.true.38
  %cond43 = phi i8* [ %49, %cond.true.38 ], [ %call41, %cond.false.40 ]
  store i8* %cond43, i8** %name, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %cond.end.42, %if.then.30
  %51 = load i8*, i8** %name, align 8
  %tobool45 = icmp ne i8* %51, null
  br i1 %tobool45, label %land.lhs.true.46, label %if.end.51

land.lhs.true.46:                                 ; preds = %if.end.44
  %52 = load i8*, i8** %name, align 8
  %53 = load i8, i8* %52, align 1
  %conv47 = sext i8 %53 to i32
  %tobool48 = icmp ne i32 %conv47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %land.lhs.true.46
  %54 = load i8*, i8** %name, align 8
  %call50 = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0), i8* %54)
  store %struct.op* %call50, %struct.op** %retval
  br label %return

if.end.51:                                        ; preds = %land.lhs.true.46, %if.end.44
  %call52 = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0))
  store %struct.op* %call52, %struct.op** %retval
  br label %return

if.end.53:                                        ; preds = %if.end.26
  %55 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any54 = getelementptr inbounds %struct.cv, %struct.cv* %55, i32 0, i32 0
  %56 = load %struct.xpvcv*, %struct.xpvcv** %sv_any54, align 8
  %xcv_flags = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %56, i32 0, i32 17
  %57 = load i16, i16* %xcv_flags, align 2
  %conv55 = zext i16 %57 to i32
  %and56 = and i32 %conv55, 1
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %if.end.53
  %58 = load %struct.cv*, %struct.cv** %cv, align 8
  %call59 = call %struct.cv* @Perl_cv_clone(%struct.cv* %58)
  %59 = bitcast %struct.cv* %call59 to %struct.sv*
  %call60 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %59)
  %60 = bitcast %struct.sv* %call60 to %struct.cv*
  store %struct.cv* %60, %struct.cv** %cv, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %if.end.53
  %61 = load %struct.io*, %struct.io** %io, align 8
  %sv_any62 = getelementptr inbounds %struct.io, %struct.io* %61, i32 0, i32 0
  %62 = load %struct.xpvio*, %struct.xpvio** %sv_any62, align 8
  %xio_flags = getelementptr inbounds %struct.xpvio, %struct.xpvio* %62, i32 0, i32 22
  %63 = load i8, i8* %xio_flags, align 1
  %conv63 = sext i8 %63 to i32
  %and64 = and i32 %conv63, -9
  %conv65 = trunc i32 %and64 to i8
  store i8 %conv65, i8* %xio_flags, align 1
  %64 = load %struct.cv*, %struct.cv** %cv, align 8
  %65 = load %struct.gv*, %struct.gv** %gv, align 8
  %66 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next66 = getelementptr inbounds %struct.op, %struct.op* %66, i32 0, i32 0
  %67 = load %struct.op*, %struct.op** %op_next66, align 8
  %call67 = call %struct.op* @S_doform(%struct.cv* %64, %struct.gv* %65, %struct.op* %67)
  store %struct.op* %call67, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.end.51, %if.then.49, %if.then.17
  %68 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %68
}

declare %struct.sv* @Perl_sv_newmortal() #1

declare %struct.cv* @Perl_cv_clone(%struct.cv*) #1

; Function Attrs: nounwind uwtable
define internal %struct.op* @S_doform(%struct.cv* %cv, %struct.gv* %gv, %struct.op* %retop) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %gv.addr = alloca %struct.gv*, align 8
  %retop.addr = alloca %struct.op*, align 8
  %cx = alloca %struct.context*, align 8
  %gimme = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  store %struct.op* %retop, %struct.op** %retop.addr, align 8
  %0 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %0, i32 0, i32 6
  %1 = load i8, i8* %op_flags, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 3
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.18

cond.false:                                       ; preds = %entry
  %2 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags2 = getelementptr inbounds %struct.op, %struct.op* %2, i32 0, i32 6
  %3 = load i8, i8* %op_flags2, align 1
  %conv3 = zext i8 %3 to i32
  %and4 = and i32 %conv3, 3
  %cmp5 = icmp eq i32 %and4, 2
  br i1 %cmp5, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.false
  br label %cond.end.16

cond.false.8:                                     ; preds = %cond.false
  %4 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags9 = getelementptr inbounds %struct.op, %struct.op* %4, i32 0, i32 6
  %5 = load i8, i8* %op_flags9, align 1
  %conv10 = zext i8 %5 to i32
  %and11 = and i32 %conv10, 3
  %cmp12 = icmp eq i32 %and11, 3
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.false.8
  br label %cond.end

cond.false.15:                                    ; preds = %cond.false.8
  %call = call i32 @Perl_block_gimme()
  br label %cond.end

cond.end:                                         ; preds = %cond.false.15, %cond.true.14
  %cond = phi i32 [ 1, %cond.true.14 ], [ %call, %cond.false.15 ]
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.end, %cond.true.7
  %cond17 = phi i32 [ 0, %cond.true.7 ], [ %cond, %cond.end ]
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.end.16, %cond.true
  %cond19 = phi i32 [ 128, %cond.true ], [ %cond17, %cond.end.16 ]
  store i32 %cond19, i32* %gimme, align 4
  call void @Perl_push_scope()
  call void @Perl_save_int(i32* @PL_tmps_floor)
  %6 = load i32, i32* @PL_tmps_ix, align 4
  store i32 %6, i32* @PL_tmps_floor, align 4
  %7 = load %struct.op*, %struct.op** %retop.addr, align 8
  call void @Perl_push_return(%struct.op* %7)
  %8 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %8, i32 0, i32 2
  %9 = load i32, i32* %si_cxix, align 4
  %10 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxmax = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %10, i32 0, i32 3
  %11 = load i32, i32* %si_cxmax, align 4
  %cmp20 = icmp slt i32 %9, %11
  br i1 %cmp20, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %cond.end.18
  %12 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix23 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %12, i32 0, i32 2
  %13 = load i32, i32* %si_cxix23, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %si_cxix23, align 4
  br label %cond.end.27

cond.false.24:                                    ; preds = %cond.end.18
  %call25 = call i32 @Perl_cxinc()
  %14 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix26 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %14, i32 0, i32 2
  store i32 %call25, i32* %si_cxix26, align 4
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.24, %cond.true.22
  %cond28 = phi i32 [ %inc, %cond.true.22 ], [ %call25, %cond.false.24 ]
  %15 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix29 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %15, i32 0, i32 2
  %16 = load i32, i32* %si_cxix29, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxstack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %17, i32 0, i32 1
  %18 = load %struct.context*, %struct.context** %si_cxstack, align 8
  %arrayidx = getelementptr inbounds %struct.context, %struct.context* %18, i64 %idxprom
  store %struct.context* %arrayidx, %struct.context** %cx, align 8
  %19 = load %struct.context*, %struct.context** %cx, align 8
  %cx_type = getelementptr inbounds %struct.context, %struct.context* %19, i32 0, i32 0
  store i32 6, i32* %cx_type, align 4
  %20 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %21 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %20 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv30 = trunc i64 %sub.ptr.div to i32
  %22 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u = getelementptr inbounds %struct.context, %struct.context* %22, i32 0, i32 1
  %cx_blk = bitcast %union.anon.0* %cx_u to %struct.block*
  %blku_oldsp = getelementptr inbounds %struct.block, %struct.block* %cx_blk, i32 0, i32 0
  store i32 %conv30, i32* %blku_oldsp, align 4
  %23 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %24 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u31 = getelementptr inbounds %struct.context, %struct.context* %24, i32 0, i32 1
  %cx_blk32 = bitcast %union.anon.0* %cx_u31 to %struct.block*
  %blku_oldcop = getelementptr inbounds %struct.block, %struct.block* %cx_blk32, i32 0, i32 1
  store %struct.cop* %23, %struct.cop** %blku_oldcop, align 8
  %25 = load i32*, i32** @PL_markstack_ptr, align 8
  %26 = load i32*, i32** @PL_markstack, align 8
  %sub.ptr.lhs.cast33 = ptrtoint i32* %25 to i64
  %sub.ptr.rhs.cast34 = ptrtoint i32* %26 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %sub.ptr.div36 = sdiv exact i64 %sub.ptr.sub35, 4
  %conv37 = trunc i64 %sub.ptr.div36 to i32
  %27 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u38 = getelementptr inbounds %struct.context, %struct.context* %27, i32 0, i32 1
  %cx_blk39 = bitcast %union.anon.0* %cx_u38 to %struct.block*
  %blku_oldmarksp = getelementptr inbounds %struct.block, %struct.block* %cx_blk39, i32 0, i32 3
  store i32 %conv37, i32* %blku_oldmarksp, align 4
  %28 = load i32, i32* @PL_scopestack_ix, align 4
  %29 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u40 = getelementptr inbounds %struct.context, %struct.context* %29, i32 0, i32 1
  %cx_blk41 = bitcast %union.anon.0* %cx_u40 to %struct.block*
  %blku_oldscopesp = getelementptr inbounds %struct.block, %struct.block* %cx_blk41, i32 0, i32 4
  store i32 %28, i32* %blku_oldscopesp, align 4
  %30 = load i32, i32* @PL_retstack_ix, align 4
  %31 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u42 = getelementptr inbounds %struct.context, %struct.context* %31, i32 0, i32 1
  %cx_blk43 = bitcast %union.anon.0* %cx_u42 to %struct.block*
  %blku_oldretsp = getelementptr inbounds %struct.block, %struct.block* %cx_blk43, i32 0, i32 2
  store i32 %30, i32* %blku_oldretsp, align 4
  %32 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %33 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u44 = getelementptr inbounds %struct.context, %struct.context* %33, i32 0, i32 1
  %cx_blk45 = bitcast %union.anon.0* %cx_u44 to %struct.block*
  %blku_oldpm = getelementptr inbounds %struct.block, %struct.block* %cx_blk45, i32 0, i32 5
  store %struct.pmop* %32, %struct.pmop** %blku_oldpm, align 8
  %34 = load i32, i32* %gimme, align 4
  %conv46 = trunc i32 %34 to i8
  %35 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u47 = getelementptr inbounds %struct.context, %struct.context* %35, i32 0, i32 1
  %cx_blk48 = bitcast %union.anon.0* %cx_u47 to %struct.block*
  %blku_gimme = getelementptr inbounds %struct.block, %struct.block* %cx_blk48, i32 0, i32 6
  store i8 %conv46, i8* %blku_gimme, align 1
  %36 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %37 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u49 = getelementptr inbounds %struct.context, %struct.context* %37, i32 0, i32 1
  %cx_blk50 = bitcast %union.anon.0* %cx_u49 to %struct.block*
  %blk_u = getelementptr inbounds %struct.block, %struct.block* %cx_blk50, i32 0, i32 7
  %blku_sub = bitcast %union.anon.1* %blk_u to %struct.block_sub*
  %cv51 = getelementptr inbounds %struct.block_sub, %struct.block_sub* %blku_sub, i32 0, i32 0
  store %struct.cv* %36, %struct.cv** %cv51, align 8
  %38 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %39 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u52 = getelementptr inbounds %struct.context, %struct.context* %39, i32 0, i32 1
  %cx_blk53 = bitcast %union.anon.0* %cx_u52 to %struct.block*
  %blk_u54 = getelementptr inbounds %struct.block, %struct.block* %cx_blk53, i32 0, i32 7
  %blku_sub55 = bitcast %union.anon.1* %blk_u54 to %struct.block_sub*
  %gv56 = getelementptr inbounds %struct.block_sub, %struct.block_sub* %blku_sub55, i32 0, i32 1
  store %struct.gv* %38, %struct.gv** %gv56, align 8
  %40 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u57 = getelementptr inbounds %struct.context, %struct.context* %40, i32 0, i32 1
  %cx_blk58 = bitcast %union.anon.0* %cx_u57 to %struct.block*
  %blk_u59 = getelementptr inbounds %struct.block, %struct.block* %cx_blk58, i32 0, i32 7
  %blku_sub60 = bitcast %union.anon.1* %blk_u59 to %struct.block_sub*
  %hasargs = getelementptr inbounds %struct.block_sub, %struct.block_sub* %blku_sub60, i32 0, i32 6
  store i8 0, i8* %hasargs, align 1
  %41 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %42 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u61 = getelementptr inbounds %struct.context, %struct.context* %42, i32 0, i32 1
  %cx_blk62 = bitcast %union.anon.0* %cx_u61 to %struct.block*
  %blk_u63 = getelementptr inbounds %struct.block, %struct.block* %cx_blk62, i32 0, i32 7
  %blku_sub64 = bitcast %union.anon.1* %blk_u63 to %struct.block_sub*
  %dfoutgv = getelementptr inbounds %struct.block_sub, %struct.block_sub* %blku_sub64, i32 0, i32 2
  store %struct.gv* %41, %struct.gv** %dfoutgv, align 8
  %43 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u65 = getelementptr inbounds %struct.context, %struct.context* %43, i32 0, i32 1
  %cx_blk66 = bitcast %union.anon.0* %cx_u65 to %struct.block*
  %blk_u67 = getelementptr inbounds %struct.block, %struct.block* %cx_blk66, i32 0, i32 7
  %blku_sub68 = bitcast %union.anon.1* %blk_u67 to %struct.block_sub*
  %dfoutgv69 = getelementptr inbounds %struct.block_sub, %struct.block_sub* %blku_sub68, i32 0, i32 2
  %44 = load %struct.gv*, %struct.gv** %dfoutgv69, align 8
  %45 = bitcast %struct.gv* %44 to %struct.sv*
  store %struct.sv* %45, %struct.sv** @PL_Sv, align 8
  %46 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool = icmp ne %struct.sv* %46, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end.27
  %47 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %47, i32 0, i32 1
  %48 = load i32, i32* %sv_refcnt, align 4
  %inc70 = add i32 %48, 1
  store i32 %inc70, i32* %sv_refcnt, align 4
  %tobool71 = icmp ne i32 %inc70, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end.27
  %49 = phi i1 [ false, %cond.end.27 ], [ %tobool71, %land.rhs ]
  %land.ext = zext i1 %49 to i32
  %50 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %51 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %51, 2
  %52 = load i32, i32* @PL_savestack_max, align 4
  %cmp72 = icmp sgt i32 %add, %52
  br i1 %cmp72, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %53 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %54 = bitcast %struct.av* %53 to %struct.sv*
  %55 = bitcast %struct.sv* %54 to i8*
  %56 = load i32, i32* @PL_savestack_ix, align 4
  %inc74 = add nsw i32 %56, 1
  store i32 %inc74, i32* @PL_savestack_ix, align 4
  %idxprom75 = sext i32 %56 to i64
  %57 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx76 = getelementptr inbounds %union.any, %union.any* %57, i64 %idxprom75
  %any_ptr = bitcast %union.any* %arrayidx76 to i8**
  store i8* %55, i8** %any_ptr, align 8
  %58 = load i32, i32* @PL_savestack_ix, align 4
  %inc77 = add nsw i32 %58, 1
  store i32 %inc77, i32* @PL_savestack_ix, align 4
  %idxprom78 = sext i32 %58 to i64
  %59 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx79 = getelementptr inbounds %union.any, %union.any* %59, i64 %idxprom78
  %any_i32 = bitcast %union.any* %arrayidx79 to i32*
  store i32 33, i32* %any_i32, align 4
  store i32 33, i32* %tmp
  %60 = load i32, i32* %tmp
  %61 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %sv_any = getelementptr inbounds %struct.cv, %struct.cv* %61, i32 0, i32 0
  %62 = load %struct.xpvcv*, %struct.xpvcv** %sv_any, align 8
  %xcv_padlist = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %62, i32 0, i32 15
  %63 = load %struct.av*, %struct.av** %xcv_padlist, align 8
  %sv_any80 = getelementptr inbounds %struct.av, %struct.av* %63, i32 0, i32 0
  %64 = load %struct.xpvav*, %struct.xpvav** %sv_any80, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %64, i32 0, i32 0
  %65 = load i8*, i8** %xav_array, align 8
  %66 = bitcast i8* %65 to %struct.sv**
  %arrayidx81 = getelementptr inbounds %struct.sv*, %struct.sv** %66, i64 1
  %67 = load %struct.sv*, %struct.sv** %arrayidx81, align 8
  %68 = bitcast %struct.sv* %67 to %struct.av*
  store %struct.av* %68, %struct.av** @PL_comppad, align 8
  %69 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %sv_any82 = getelementptr inbounds %struct.av, %struct.av* %69, i32 0, i32 0
  %70 = load %struct.xpvav*, %struct.xpvav** %sv_any82, align 8
  %xav_array83 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %70, i32 0, i32 0
  %71 = load i8*, i8** %xav_array83, align 8
  %72 = bitcast i8* %71 to %struct.sv**
  store %struct.sv** %72, %struct.sv*** @PL_curpad, align 8
  %73 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  call void @Perl_setdefout(%struct.gv* %73)
  %74 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %sv_any84 = getelementptr inbounds %struct.cv, %struct.cv* %74, i32 0, i32 0
  %75 = load %struct.xpvcv*, %struct.xpvcv** %sv_any84, align 8
  %xcv_start = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %75, i32 0, i32 8
  %76 = load %struct.op*, %struct.op** %xcv_start, align 8
  ret %struct.op* %76
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_leavewrite() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %gv = alloca %struct.gv*, align 8
  %io = alloca %struct.io*, align 8
  %ofp = alloca %struct._PerlIO**, align 8
  %fp = alloca %struct._PerlIO**, align 8
  %newsp = alloca %struct.sv**, align 8
  %gimme = alloca i32, align 4
  %cx = alloca %struct.context*, align 8
  %fgv = alloca %struct.gv*, align 8
  %cv = alloca %struct.cv*, align 8
  %topgv = alloca %struct.gv*, align 8
  %topname = alloca %struct.sv*, align 8
  %lines = alloca i32, align 4
  %s = alloca i8*, align 8
  %save = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp87 = alloca i64, align 8
  %name = alloca i8*, align 8
  %sv = alloca %struct.sv*, align 8
  %tmp308 = alloca i64, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %1, i32 0, i32 2
  %2 = load i32, i32* %si_cxix, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxstack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %3, i32 0, i32 1
  %4 = load %struct.context*, %struct.context** %si_cxstack, align 8
  %arrayidx = getelementptr inbounds %struct.context, %struct.context* %4, i64 %idxprom
  %cx_u = getelementptr inbounds %struct.context, %struct.context* %arrayidx, i32 0, i32 1
  %cx_blk = bitcast %union.anon.0* %cx_u to %struct.block*
  %blk_u = getelementptr inbounds %struct.block, %struct.block* %cx_blk, i32 0, i32 7
  %blku_sub = bitcast %union.anon.1* %blk_u to %struct.block_sub*
  %gv1 = getelementptr inbounds %struct.block_sub, %struct.block_sub* %blku_sub, i32 0, i32 1
  %5 = load %struct.gv*, %struct.gv** %gv1, align 8
  store %struct.gv* %5, %struct.gv** %gv, align 8
  %6 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %6, i32 0, i32 0
  %7 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %7, i32 0, i32 7
  %8 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %8, i32 0, i32 2
  %9 = load %struct.io*, %struct.io** %gp_io, align 8
  store %struct.io* %9, %struct.io** %io, align 8
  %10 = load %struct.io*, %struct.io** %io, align 8
  %sv_any2 = getelementptr inbounds %struct.io, %struct.io* %10, i32 0, i32 0
  %11 = load %struct.xpvio*, %struct.xpvio** %sv_any2, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %11, i32 0, i32 8
  %12 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  store %struct._PerlIO** %12, %struct._PerlIO*** %ofp, align 8
  %13 = load %struct.io*, %struct.io** %io, align 8
  %tobool = icmp ne %struct.io* %13, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %ofp, align 8
  %tobool3 = icmp ne %struct._PerlIO** %14, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %forget_top

if.end:                                           ; preds = %lor.lhs.false
  %15 = load %struct.io*, %struct.io** %io, align 8
  %sv_any4 = getelementptr inbounds %struct.io, %struct.io* %15, i32 0, i32 0
  %16 = load %struct.xpvio*, %struct.xpvio** %sv_any4, align 8
  %xio_lines_left = getelementptr inbounds %struct.xpvio, %struct.xpvio* %16, i32 0, i32 13
  %17 = load i64, i64* %xio_lines_left, align 8
  %18 = load %struct.sv*, %struct.sv** @PL_formtarget, align 8
  %sv_any5 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 0
  %19 = load i8*, i8** %sv_any5, align 8
  %20 = bitcast i8* %19 to %struct.xpvfm*
  %xfm_lines = getelementptr inbounds %struct.xpvfm, %struct.xpvfm* %20, i32 0, i32 19
  %21 = load i64, i64* %xfm_lines, align 8
  %cmp = icmp slt i64 %17, %21
  br i1 %cmp, label %land.lhs.true, label %if.end.154

land.lhs.true:                                    ; preds = %if.end
  %22 = load %struct.sv*, %struct.sv** @PL_formtarget, align 8
  %23 = load %struct.sv*, %struct.sv** @PL_toptarget, align 8
  %cmp6 = icmp ne %struct.sv* %22, %23
  br i1 %cmp6, label %if.then.7, label %if.end.154

if.then.7:                                        ; preds = %land.lhs.true
  %24 = load %struct.io*, %struct.io** %io, align 8
  %sv_any8 = getelementptr inbounds %struct.io, %struct.io* %24, i32 0, i32 0
  %25 = load %struct.xpvio*, %struct.xpvio** %sv_any8, align 8
  %xio_top_gv = getelementptr inbounds %struct.xpvio, %struct.xpvio* %25, i32 0, i32 15
  %26 = load %struct.gv*, %struct.gv** %xio_top_gv, align 8
  %tobool9 = icmp ne %struct.gv* %26, null
  br i1 %tobool9, label %if.end.60, label %if.then.10

if.then.10:                                       ; preds = %if.then.7
  %27 = load %struct.io*, %struct.io** %io, align 8
  %sv_any11 = getelementptr inbounds %struct.io, %struct.io* %27, i32 0, i32 0
  %28 = load %struct.xpvio*, %struct.xpvio** %sv_any11, align 8
  %xio_top_name = getelementptr inbounds %struct.xpvio, %struct.xpvio* %28, i32 0, i32 14
  %29 = load i8*, i8** %xio_top_name, align 8
  %tobool12 = icmp ne i8* %29, null
  br i1 %tobool12, label %if.end.43, label %if.then.13

if.then.13:                                       ; preds = %if.then.10
  %30 = load %struct.io*, %struct.io** %io, align 8
  %sv_any14 = getelementptr inbounds %struct.io, %struct.io* %30, i32 0, i32 0
  %31 = load %struct.xpvio*, %struct.xpvio** %sv_any14, align 8
  %xio_fmt_name = getelementptr inbounds %struct.xpvio, %struct.xpvio* %31, i32 0, i32 16
  %32 = load i8*, i8** %xio_fmt_name, align 8
  %tobool15 = icmp ne i8* %32, null
  br i1 %tobool15, label %if.end.20, label %if.then.16

if.then.16:                                       ; preds = %if.then.13
  %33 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any17 = getelementptr inbounds %struct.gv, %struct.gv* %33, i32 0, i32 0
  %34 = load %struct.xpvgv*, %struct.xpvgv** %sv_any17, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %34, i32 0, i32 8
  %35 = load i8*, i8** %xgv_name, align 8
  %call = call i8* @Perl_savepv(i8* %35)
  %36 = load %struct.io*, %struct.io** %io, align 8
  %sv_any18 = getelementptr inbounds %struct.io, %struct.io* %36, i32 0, i32 0
  %37 = load %struct.xpvio*, %struct.xpvio** %sv_any18, align 8
  %xio_fmt_name19 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %37, i32 0, i32 16
  store i8* %call, i8** %xio_fmt_name19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.then.13
  %38 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any21 = getelementptr inbounds %struct.gv, %struct.gv* %38, i32 0, i32 0
  %39 = load %struct.xpvgv*, %struct.xpvgv** %sv_any21, align 8
  %xgv_name22 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %39, i32 0, i32 8
  %40 = load i8*, i8** %xgv_name22, align 8
  %call23 = call %struct.sv* (i8*, ...) @Perl_newSVpvf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i8* %40)
  %call24 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call23)
  store %struct.sv* %call24, %struct.sv** %topname, align 8
  %41 = load %struct.sv*, %struct.sv** %topname, align 8
  %sv_any25 = getelementptr inbounds %struct.sv, %struct.sv* %41, i32 0, i32 0
  %42 = load i8*, i8** %sv_any25, align 8
  %43 = bitcast i8* %42 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %43, i32 0, i32 0
  %44 = load i8*, i8** %xpv_pv, align 8
  %call26 = call %struct.gv* @Perl_gv_fetchpv(i8* %44, i32 0, i32 14)
  store %struct.gv* %call26, %struct.gv** %topgv, align 8
  %45 = load %struct.gv*, %struct.gv** %topgv, align 8
  %tobool27 = icmp ne %struct.gv* %45, null
  br i1 %tobool27, label %land.lhs.true.28, label %lor.lhs.false.32

land.lhs.true.28:                                 ; preds = %if.end.20
  %46 = load %struct.gv*, %struct.gv** %topgv, align 8
  %sv_any29 = getelementptr inbounds %struct.gv, %struct.gv* %46, i32 0, i32 0
  %47 = load %struct.xpvgv*, %struct.xpvgv** %sv_any29, align 8
  %xgv_gp30 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %47, i32 0, i32 7
  %48 = load %struct.gp*, %struct.gp** %xgv_gp30, align 8
  %gp_form = getelementptr inbounds %struct.gp, %struct.gp* %48, i32 0, i32 3
  %49 = load %struct.cv*, %struct.cv** %gp_form, align 8
  %tobool31 = icmp ne %struct.cv* %49, null
  br i1 %tobool31, label %if.then.35, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %land.lhs.true.28, %if.end.20
  %call33 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i32 0, i32 14)
  %tobool34 = icmp ne %struct.gv* %call33, null
  br i1 %tobool34, label %if.else, label %if.then.35

if.then.35:                                       ; preds = %lor.lhs.false.32, %land.lhs.true.28
  %50 = load %struct.sv*, %struct.sv** %topname, align 8
  %call36 = call i8* @Perl_savesvpv(%struct.sv* %50)
  %51 = load %struct.io*, %struct.io** %io, align 8
  %sv_any37 = getelementptr inbounds %struct.io, %struct.io* %51, i32 0, i32 0
  %52 = load %struct.xpvio*, %struct.xpvio** %sv_any37, align 8
  %xio_top_name38 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %52, i32 0, i32 14
  store i8* %call36, i8** %xio_top_name38, align 8
  br label %if.end.42

if.else:                                          ; preds = %lor.lhs.false.32
  %call39 = call i8* @Perl_savepv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0))
  %53 = load %struct.io*, %struct.io** %io, align 8
  %sv_any40 = getelementptr inbounds %struct.io, %struct.io* %53, i32 0, i32 0
  %54 = load %struct.xpvio*, %struct.xpvio** %sv_any40, align 8
  %xio_top_name41 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %54, i32 0, i32 14
  store i8* %call39, i8** %xio_top_name41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.35
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.10
  %55 = load %struct.io*, %struct.io** %io, align 8
  %sv_any44 = getelementptr inbounds %struct.io, %struct.io* %55, i32 0, i32 0
  %56 = load %struct.xpvio*, %struct.xpvio** %sv_any44, align 8
  %xio_top_name45 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %56, i32 0, i32 14
  %57 = load i8*, i8** %xio_top_name45, align 8
  %call46 = call %struct.gv* @Perl_gv_fetchpv(i8* %57, i32 0, i32 14)
  store %struct.gv* %call46, %struct.gv** %topgv, align 8
  %58 = load %struct.gv*, %struct.gv** %topgv, align 8
  %tobool47 = icmp ne %struct.gv* %58, null
  br i1 %tobool47, label %lor.lhs.false.48, label %if.then.53

lor.lhs.false.48:                                 ; preds = %if.end.43
  %59 = load %struct.gv*, %struct.gv** %topgv, align 8
  %sv_any49 = getelementptr inbounds %struct.gv, %struct.gv* %59, i32 0, i32 0
  %60 = load %struct.xpvgv*, %struct.xpvgv** %sv_any49, align 8
  %xgv_gp50 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %60, i32 0, i32 7
  %61 = load %struct.gp*, %struct.gp** %xgv_gp50, align 8
  %gp_form51 = getelementptr inbounds %struct.gp, %struct.gp* %61, i32 0, i32 3
  %62 = load %struct.cv*, %struct.cv** %gp_form51, align 8
  %tobool52 = icmp ne %struct.cv* %62, null
  br i1 %tobool52, label %if.end.57, label %if.then.53

if.then.53:                                       ; preds = %lor.lhs.false.48, %if.end.43
  %63 = load %struct.io*, %struct.io** %io, align 8
  %sv_any54 = getelementptr inbounds %struct.io, %struct.io* %63, i32 0, i32 0
  %64 = load %struct.xpvio*, %struct.xpvio** %sv_any54, align 8
  %xio_page_len = getelementptr inbounds %struct.xpvio, %struct.xpvio* %64, i32 0, i32 12
  %65 = load i64, i64* %xio_page_len, align 8
  %66 = load %struct.io*, %struct.io** %io, align 8
  %sv_any55 = getelementptr inbounds %struct.io, %struct.io* %66, i32 0, i32 0
  %67 = load %struct.xpvio*, %struct.xpvio** %sv_any55, align 8
  %xio_lines_left56 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %67, i32 0, i32 13
  store i64 %65, i64* %xio_lines_left56, align 8
  br label %forget_top

if.end.57:                                        ; preds = %lor.lhs.false.48
  %68 = load %struct.gv*, %struct.gv** %topgv, align 8
  %69 = load %struct.io*, %struct.io** %io, align 8
  %sv_any58 = getelementptr inbounds %struct.io, %struct.io* %69, i32 0, i32 0
  %70 = load %struct.xpvio*, %struct.xpvio** %sv_any58, align 8
  %xio_top_gv59 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %70, i32 0, i32 15
  store %struct.gv* %68, %struct.gv** %xio_top_gv59, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.57, %if.then.7
  %71 = load %struct.io*, %struct.io** %io, align 8
  %sv_any61 = getelementptr inbounds %struct.io, %struct.io* %71, i32 0, i32 0
  %72 = load %struct.xpvio*, %struct.xpvio** %sv_any61, align 8
  %xio_flags = getelementptr inbounds %struct.xpvio, %struct.xpvio* %72, i32 0, i32 22
  %73 = load i8, i8* %xio_flags, align 1
  %conv = sext i8 %73 to i32
  %and = and i32 %conv, 8
  %tobool62 = icmp ne i32 %and, 0
  br i1 %tobool62, label %if.then.63, label %if.end.95

if.then.63:                                       ; preds = %if.end.60
  %74 = load %struct.io*, %struct.io** %io, align 8
  %sv_any64 = getelementptr inbounds %struct.io, %struct.io* %74, i32 0, i32 0
  %75 = load %struct.xpvio*, %struct.xpvio** %sv_any64, align 8
  %xio_lines_left65 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %75, i32 0, i32 13
  %76 = load i64, i64* %xio_lines_left65, align 8
  %conv66 = trunc i64 %76 to i32
  store i32 %conv66, i32* %lines, align 4
  %77 = load %struct.sv*, %struct.sv** @PL_formtarget, align 8
  %sv_any67 = getelementptr inbounds %struct.sv, %struct.sv* %77, i32 0, i32 0
  %78 = load i8*, i8** %sv_any67, align 8
  %79 = bitcast i8* %78 to %struct.xpv*
  %xpv_pv68 = getelementptr inbounds %struct.xpv, %struct.xpv* %79, i32 0, i32 0
  %80 = load i8*, i8** %xpv_pv68, align 8
  store i8* %80, i8** %s, align 8
  %81 = load i32, i32* %lines, align 4
  %cmp69 = icmp sle i32 %81, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.63
  br label %forget_top

if.end.72:                                        ; preds = %if.then.63
  br label %while.cond

while.cond:                                       ; preds = %if.end.78, %if.end.72
  %82 = load i32, i32* %lines, align 4
  %dec = add nsw i32 %82, -1
  store i32 %dec, i32* %lines, align 4
  %cmp73 = icmp sgt i32 %82, 0
  br i1 %cmp73, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %83 = load i8*, i8** %s, align 8
  %call75 = call i8* @strchr(i8* %83, i32 10)
  store i8* %call75, i8** %s, align 8
  %84 = load i8*, i8** %s, align 8
  %tobool76 = icmp ne i8* %84, null
  br i1 %tobool76, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %while.body
  br label %while.end

if.end.78:                                        ; preds = %while.body
  %85 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.77, %while.cond
  %86 = load i8*, i8** %s, align 8
  %tobool79 = icmp ne i8* %86, null
  br i1 %tobool79, label %if.then.80, label %if.end.94

if.then.80:                                       ; preds = %while.end
  %87 = load %struct.sv*, %struct.sv** @PL_formtarget, align 8
  %sv_any81 = getelementptr inbounds %struct.sv, %struct.sv* %87, i32 0, i32 0
  %88 = load i8*, i8** %sv_any81, align 8
  %89 = bitcast i8* %88 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %89, i32 0, i32 1
  %90 = load i64, i64* %xpv_cur, align 8
  store i64 %90, i64* %save, align 8
  %91 = load i8*, i8** %s, align 8
  %92 = load %struct.sv*, %struct.sv** @PL_formtarget, align 8
  %sv_any82 = getelementptr inbounds %struct.sv, %struct.sv* %92, i32 0, i32 0
  %93 = load i8*, i8** %sv_any82, align 8
  %94 = bitcast i8* %93 to %struct.xpv*
  %xpv_pv83 = getelementptr inbounds %struct.xpv, %struct.xpv* %94, i32 0, i32 0
  %95 = load i8*, i8** %xpv_pv83, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %91 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %95 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %96 = load %struct.sv*, %struct.sv** @PL_formtarget, align 8
  %sv_any84 = getelementptr inbounds %struct.sv, %struct.sv* %96, i32 0, i32 0
  %97 = load i8*, i8** %sv_any84, align 8
  %98 = bitcast i8* %97 to %struct.xpv*
  %xpv_cur85 = getelementptr inbounds %struct.xpv, %struct.xpv* %98, i32 0, i32 1
  store i64 %sub.ptr.sub, i64* %xpv_cur85, align 8
  store i64 %sub.ptr.sub, i64* %tmp
  %99 = load i64, i64* %tmp
  %100 = load %struct.sv*, %struct.sv** @PL_formtarget, align 8
  %101 = load %struct._PerlIO**, %struct._PerlIO*** %ofp, align 8
  %call86 = call signext i8 @Perl_do_print(%struct.sv* %100, %struct._PerlIO** %101)
  %102 = load i64, i64* %save, align 8
  %103 = load %struct.sv*, %struct.sv** @PL_formtarget, align 8
  %sv_any88 = getelementptr inbounds %struct.sv, %struct.sv* %103, i32 0, i32 0
  %104 = load i8*, i8** %sv_any88, align 8
  %105 = bitcast i8* %104 to %struct.xpv*
  %xpv_cur89 = getelementptr inbounds %struct.xpv, %struct.xpv* %105, i32 0, i32 1
  store i64 %102, i64* %xpv_cur89, align 8
  store i64 %102, i64* %tmp87
  %106 = load i64, i64* %tmp87
  %107 = load %struct.sv*, %struct.sv** @PL_formtarget, align 8
  %108 = load i8*, i8** %s, align 8
  call void @Perl_sv_chop(%struct.sv* %107, i8* %108)
  %109 = load %struct.io*, %struct.io** %io, align 8
  %sv_any90 = getelementptr inbounds %struct.io, %struct.io* %109, i32 0, i32 0
  %110 = load %struct.xpvio*, %struct.xpvio** %sv_any90, align 8
  %xio_lines_left91 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %110, i32 0, i32 13
  %111 = load i64, i64* %xio_lines_left91, align 8
  %112 = load %struct.sv*, %struct.sv** @PL_formtarget, align 8
  %sv_any92 = getelementptr inbounds %struct.sv, %struct.sv* %112, i32 0, i32 0
  %113 = load i8*, i8** %sv_any92, align 8
  %114 = bitcast i8* %113 to %struct.xpvfm*
  %xfm_lines93 = getelementptr inbounds %struct.xpvfm, %struct.xpvfm* %114, i32 0, i32 19
  %115 = load i64, i64* %xfm_lines93, align 8
  %sub = sub nsw i64 %115, %111
  store i64 %sub, i64* %xfm_lines93, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.80, %while.end
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.60
  %116 = load %struct.io*, %struct.io** %io, align 8
  %sv_any96 = getelementptr inbounds %struct.io, %struct.io* %116, i32 0, i32 0
  %117 = load %struct.xpvio*, %struct.xpvio** %sv_any96, align 8
  %xio_lines_left97 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %117, i32 0, i32 13
  %118 = load i64, i64* %xio_lines_left97, align 8
  %cmp98 = icmp sge i64 %118, 0
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.106

land.lhs.true.100:                                ; preds = %if.end.95
  %119 = load %struct.io*, %struct.io** %io, align 8
  %sv_any101 = getelementptr inbounds %struct.io, %struct.io* %119, i32 0, i32 0
  %120 = load %struct.xpvio*, %struct.xpvio** %sv_any101, align 8
  %xio_page = getelementptr inbounds %struct.xpvio, %struct.xpvio* %120, i32 0, i32 11
  %121 = load i64, i64* %xio_page, align 8
  %cmp102 = icmp sgt i64 %121, 0
  br i1 %cmp102, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %land.lhs.true.100
  %122 = load %struct.sv*, %struct.sv** @PL_formfeed, align 8
  %123 = load %struct._PerlIO**, %struct._PerlIO*** %ofp, align 8
  %call105 = call signext i8 @Perl_do_print(%struct.sv* %122, %struct._PerlIO** %123)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %land.lhs.true.100, %if.end.95
  %124 = load %struct.io*, %struct.io** %io, align 8
  %sv_any107 = getelementptr inbounds %struct.io, %struct.io* %124, i32 0, i32 0
  %125 = load %struct.xpvio*, %struct.xpvio** %sv_any107, align 8
  %xio_page_len108 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %125, i32 0, i32 12
  %126 = load i64, i64* %xio_page_len108, align 8
  %127 = load %struct.io*, %struct.io** %io, align 8
  %sv_any109 = getelementptr inbounds %struct.io, %struct.io* %127, i32 0, i32 0
  %128 = load %struct.xpvio*, %struct.xpvio** %sv_any109, align 8
  %xio_lines_left110 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %128, i32 0, i32 13
  store i64 %126, i64* %xio_lines_left110, align 8
  %129 = load %struct.io*, %struct.io** %io, align 8
  %sv_any111 = getelementptr inbounds %struct.io, %struct.io* %129, i32 0, i32 0
  %130 = load %struct.xpvio*, %struct.xpvio** %sv_any111, align 8
  %xio_page112 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %130, i32 0, i32 11
  %131 = load i64, i64* %xio_page112, align 8
  %inc = add nsw i64 %131, 1
  store i64 %inc, i64* %xio_page112, align 8
  %132 = load %struct.sv*, %struct.sv** @PL_toptarget, align 8
  store %struct.sv* %132, %struct.sv** @PL_formtarget, align 8
  %133 = load %struct.io*, %struct.io** %io, align 8
  %sv_any113 = getelementptr inbounds %struct.io, %struct.io* %133, i32 0, i32 0
  %134 = load %struct.xpvio*, %struct.xpvio** %sv_any113, align 8
  %xio_flags114 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %134, i32 0, i32 22
  %135 = load i8, i8* %xio_flags114, align 1
  %conv115 = sext i8 %135 to i32
  %or = or i32 %conv115, 8
  %conv116 = trunc i32 %or to i8
  store i8 %conv116, i8* %xio_flags114, align 1
  %136 = load %struct.io*, %struct.io** %io, align 8
  %sv_any117 = getelementptr inbounds %struct.io, %struct.io* %136, i32 0, i32 0
  %137 = load %struct.xpvio*, %struct.xpvio** %sv_any117, align 8
  %xio_top_gv118 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %137, i32 0, i32 15
  %138 = load %struct.gv*, %struct.gv** %xio_top_gv118, align 8
  store %struct.gv* %138, %struct.gv** %fgv, align 8
  %139 = load %struct.gv*, %struct.gv** %fgv, align 8
  %tobool119 = icmp ne %struct.gv* %139, null
  br i1 %tobool119, label %if.end.122, label %if.then.120

if.then.120:                                      ; preds = %if.end.106
  %call121 = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0))
  store %struct.op* %call121, %struct.op** %retval
  br label %return

if.end.122:                                       ; preds = %if.end.106
  %140 = load %struct.gv*, %struct.gv** %fgv, align 8
  %sv_any123 = getelementptr inbounds %struct.gv, %struct.gv* %140, i32 0, i32 0
  %141 = load %struct.xpvgv*, %struct.xpvgv** %sv_any123, align 8
  %xgv_gp124 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %141, i32 0, i32 7
  %142 = load %struct.gp*, %struct.gp** %xgv_gp124, align 8
  %gp_form125 = getelementptr inbounds %struct.gp, %struct.gp* %142, i32 0, i32 3
  %143 = load %struct.cv*, %struct.cv** %gp_form125, align 8
  store %struct.cv* %143, %struct.cv** %cv, align 8
  store i8* null, i8** %name, align 8
  %144 = load %struct.cv*, %struct.cv** %cv, align 8
  %tobool127 = icmp ne %struct.cv* %144, null
  br i1 %tobool127, label %if.end.137, label %if.then.128

if.then.128:                                      ; preds = %if.end.122
  %call130 = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call130, %struct.sv** %sv, align 8
  %145 = load %struct.sv*, %struct.sv** %sv, align 8
  %146 = load %struct.gv*, %struct.gv** %fgv, align 8
  call void @Perl_gv_efullname4(%struct.sv* %145, %struct.gv* %146, i8* null, i8 signext 0)
  %147 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %147, i32 0, i32 2
  %148 = load i32, i32* %sv_flags, align 4
  %and131 = and i32 %148, 262144
  %cmp132 = icmp eq i32 %and131, 262144
  br i1 %cmp132, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.128
  %149 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any134 = getelementptr inbounds %struct.sv, %struct.sv* %149, i32 0, i32 0
  %150 = load i8*, i8** %sv_any134, align 8
  %151 = bitcast i8* %150 to %struct.xpv*
  %xpv_pv135 = getelementptr inbounds %struct.xpv, %struct.xpv* %151, i32 0, i32 0
  %152 = load i8*, i8** %xpv_pv135, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.128
  %153 = load %struct.sv*, %struct.sv** %sv, align 8
  %call136 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %153)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %152, %cond.true ], [ %call136, %cond.false ]
  store i8* %cond, i8** %name, align 8
  br label %if.end.137

if.end.137:                                       ; preds = %cond.end, %if.end.122
  %154 = load i8*, i8** %name, align 8
  %tobool138 = icmp ne i8* %154, null
  br i1 %tobool138, label %land.lhs.true.139, label %if.end.144

land.lhs.true.139:                                ; preds = %if.end.137
  %155 = load i8*, i8** %name, align 8
  %156 = load i8, i8* %155, align 1
  %conv140 = sext i8 %156 to i32
  %tobool141 = icmp ne i32 %conv140, 0
  br i1 %tobool141, label %if.then.142, label %if.end.144

if.then.142:                                      ; preds = %land.lhs.true.139
  %157 = load i8*, i8** %name, align 8
  %call143 = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i32 0, i32 0), i8* %157)
  store %struct.op* %call143, %struct.op** %retval
  br label %return

if.end.144:                                       ; preds = %land.lhs.true.139, %if.end.137
  %158 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any145 = getelementptr inbounds %struct.cv, %struct.cv* %158, i32 0, i32 0
  %159 = load %struct.xpvcv*, %struct.xpvcv** %sv_any145, align 8
  %xcv_flags = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %159, i32 0, i32 17
  %160 = load i16, i16* %xcv_flags, align 2
  %conv146 = zext i16 %160 to i32
  %and147 = and i32 %conv146, 1
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %if.then.149, label %if.end.152

if.then.149:                                      ; preds = %if.end.144
  %161 = load %struct.cv*, %struct.cv** %cv, align 8
  %call150 = call %struct.cv* @Perl_cv_clone(%struct.cv* %161)
  %162 = bitcast %struct.cv* %call150 to %struct.sv*
  %call151 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %162)
  %163 = bitcast %struct.sv* %call151 to %struct.cv*
  store %struct.cv* %163, %struct.cv** %cv, align 8
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.149, %if.end.144
  %164 = load %struct.cv*, %struct.cv** %cv, align 8
  %165 = load %struct.gv*, %struct.gv** %gv, align 8
  %166 = load %struct.op*, %struct.op** @PL_op, align 8
  %call153 = call %struct.op* @S_doform(%struct.cv* %164, %struct.gv* %165, %struct.op* %166)
  store %struct.op* %call153, %struct.op** %retval
  br label %return

if.end.154:                                       ; preds = %land.lhs.true, %if.end
  br label %forget_top

forget_top:                                       ; preds = %if.end.154, %if.then.71, %if.then.53, %if.then
  %167 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix155 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %167, i32 0, i32 2
  %168 = load i32, i32* %si_cxix155, align 4
  %dec156 = add nsw i32 %168, -1
  store i32 %dec156, i32* %si_cxix155, align 4
  %idxprom157 = sext i32 %168 to i64
  %169 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxstack158 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %169, i32 0, i32 1
  %170 = load %struct.context*, %struct.context** %si_cxstack158, align 8
  %arrayidx159 = getelementptr inbounds %struct.context, %struct.context* %170, i64 %idxprom157
  store %struct.context* %arrayidx159, %struct.context** %cx, align 8
  %171 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %172 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u160 = getelementptr inbounds %struct.context, %struct.context* %172, i32 0, i32 1
  %cx_blk161 = bitcast %union.anon.0* %cx_u160 to %struct.block*
  %blku_oldsp = getelementptr inbounds %struct.block, %struct.block* %cx_blk161, i32 0, i32 0
  %173 = load i32, i32* %blku_oldsp, align 4
  %idx.ext = sext i32 %173 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %171, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %newsp, align 8
  %174 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u162 = getelementptr inbounds %struct.context, %struct.context* %174, i32 0, i32 1
  %cx_blk163 = bitcast %union.anon.0* %cx_u162 to %struct.block*
  %blku_oldcop = getelementptr inbounds %struct.block, %struct.block* %cx_blk163, i32 0, i32 1
  %175 = load %struct.cop*, %struct.cop** %blku_oldcop, align 8
  store volatile %struct.cop* %175, %struct.cop** @PL_curcop, align 8
  %176 = load i32*, i32** @PL_markstack, align 8
  %177 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u164 = getelementptr inbounds %struct.context, %struct.context* %177, i32 0, i32 1
  %cx_blk165 = bitcast %union.anon.0* %cx_u164 to %struct.block*
  %blku_oldmarksp = getelementptr inbounds %struct.block, %struct.block* %cx_blk165, i32 0, i32 3
  %178 = load i32, i32* %blku_oldmarksp, align 4
  %idx.ext166 = sext i32 %178 to i64
  %add.ptr167 = getelementptr inbounds i32, i32* %176, i64 %idx.ext166
  store i32* %add.ptr167, i32** @PL_markstack_ptr, align 8
  %179 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u168 = getelementptr inbounds %struct.context, %struct.context* %179, i32 0, i32 1
  %cx_blk169 = bitcast %union.anon.0* %cx_u168 to %struct.block*
  %blku_oldscopesp = getelementptr inbounds %struct.block, %struct.block* %cx_blk169, i32 0, i32 4
  %180 = load i32, i32* %blku_oldscopesp, align 4
  store i32 %180, i32* @PL_scopestack_ix, align 4
  %181 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u170 = getelementptr inbounds %struct.context, %struct.context* %181, i32 0, i32 1
  %cx_blk171 = bitcast %union.anon.0* %cx_u170 to %struct.block*
  %blku_oldretsp = getelementptr inbounds %struct.block, %struct.block* %cx_blk171, i32 0, i32 2
  %182 = load i32, i32* %blku_oldretsp, align 4
  store i32 %182, i32* @PL_retstack_ix, align 4
  %183 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u172 = getelementptr inbounds %struct.context, %struct.context* %183, i32 0, i32 1
  %cx_blk173 = bitcast %union.anon.0* %cx_u172 to %struct.block*
  %blku_oldpm = getelementptr inbounds %struct.block, %struct.block* %cx_blk173, i32 0, i32 5
  %184 = load %struct.pmop*, %struct.pmop** %blku_oldpm, align 8
  store %struct.pmop* %184, %struct.pmop** @PL_curpm, align 8
  %185 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u174 = getelementptr inbounds %struct.context, %struct.context* %185, i32 0, i32 1
  %cx_blk175 = bitcast %union.anon.0* %cx_u174 to %struct.block*
  %blku_gimme = getelementptr inbounds %struct.block, %struct.block* %cx_blk175, i32 0, i32 6
  %186 = load i8, i8* %blku_gimme, align 1
  %conv176 = zext i8 %186 to i32
  store i32 %conv176, i32* %gimme, align 4
  %187 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u177 = getelementptr inbounds %struct.context, %struct.context* %187, i32 0, i32 1
  %cx_blk178 = bitcast %union.anon.0* %cx_u177 to %struct.block*
  %blk_u179 = getelementptr inbounds %struct.block, %struct.block* %cx_blk178, i32 0, i32 7
  %blku_sub180 = bitcast %union.anon.1* %blk_u179 to %struct.block_sub*
  %dfoutgv = getelementptr inbounds %struct.block_sub, %struct.block_sub* %blku_sub180, i32 0, i32 2
  %188 = load %struct.gv*, %struct.gv** %dfoutgv, align 8
  call void @Perl_setdefout(%struct.gv* %188)
  %189 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u181 = getelementptr inbounds %struct.context, %struct.context* %189, i32 0, i32 1
  %cx_blk182 = bitcast %union.anon.0* %cx_u181 to %struct.block*
  %blk_u183 = getelementptr inbounds %struct.block, %struct.block* %cx_blk182, i32 0, i32 7
  %blku_sub184 = bitcast %union.anon.1* %blk_u183 to %struct.block_sub*
  %dfoutgv185 = getelementptr inbounds %struct.block_sub, %struct.block_sub* %blku_sub184, i32 0, i32 2
  %190 = load %struct.gv*, %struct.gv** %dfoutgv185, align 8
  %191 = bitcast %struct.gv* %190 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %191)
  call void @Perl_pop_scope()
  %192 = load %struct.io*, %struct.io** %io, align 8
  %sv_any186 = getelementptr inbounds %struct.io, %struct.io* %192, i32 0, i32 0
  %193 = load %struct.xpvio*, %struct.xpvio** %sv_any186, align 8
  %xio_ofp187 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %193, i32 0, i32 8
  %194 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp187, align 8
  store %struct._PerlIO** %194, %struct._PerlIO*** %fp, align 8
  %195 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %tobool188 = icmp ne %struct._PerlIO** %195, null
  br i1 %tobool188, label %if.else.262, label %if.then.189

if.then.189:                                      ; preds = %forget_top
  %196 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %196, i32 0, i32 14
  %197 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp190 = icmp ne %struct.sv* %197, null
  br i1 %cmp190, label %land.lhs.true.192, label %lor.lhs.false.216

land.lhs.true.192:                                ; preds = %if.then.189
  %198 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings193 = getelementptr inbounds %struct.cop, %struct.cop* %198, i32 0, i32 14
  %199 = load %struct.sv*, %struct.sv** %cop_warnings193, align 8
  %cmp194 = icmp ne %struct.sv* %199, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp194, label %land.lhs.true.196, label %lor.lhs.false.216

land.lhs.true.196:                                ; preds = %land.lhs.true.192
  %200 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings197 = getelementptr inbounds %struct.cop, %struct.cop* %200, i32 0, i32 14
  %201 = load %struct.sv*, %struct.sv** %cop_warnings197, align 8
  %cmp198 = icmp eq %struct.sv* %201, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp198, label %if.then.224, label %lor.lhs.false.200

lor.lhs.false.200:                                ; preds = %land.lhs.true.196
  %202 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings201 = getelementptr inbounds %struct.cop, %struct.cop* %202, i32 0, i32 14
  %203 = load %struct.sv*, %struct.sv** %cop_warnings201, align 8
  %sv_any202 = getelementptr inbounds %struct.sv, %struct.sv* %203, i32 0, i32 0
  %204 = load i8*, i8** %sv_any202, align 8
  %205 = bitcast i8* %204 to %struct.xpv*
  %xpv_pv203 = getelementptr inbounds %struct.xpv, %struct.xpv* %205, i32 0, i32 0
  %206 = load i8*, i8** %xpv_pv203, align 8
  %arrayidx204 = getelementptr inbounds i8, i8* %206, i64 1
  %207 = load i8, i8* %arrayidx204, align 1
  %conv205 = sext i8 %207 to i32
  %and206 = and i32 %conv205, 16
  %tobool207 = icmp ne i32 %and206, 0
  br i1 %tobool207, label %if.then.224, label %lor.lhs.false.208

lor.lhs.false.208:                                ; preds = %lor.lhs.false.200
  %208 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings209 = getelementptr inbounds %struct.cop, %struct.cop* %208, i32 0, i32 14
  %209 = load %struct.sv*, %struct.sv** %cop_warnings209, align 8
  %sv_any210 = getelementptr inbounds %struct.sv, %struct.sv* %209, i32 0, i32 0
  %210 = load i8*, i8** %sv_any210, align 8
  %211 = bitcast i8* %210 to %struct.xpv*
  %xpv_pv211 = getelementptr inbounds %struct.xpv, %struct.xpv* %211, i32 0, i32 0
  %212 = load i8*, i8** %xpv_pv211, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %212, i64 1
  %213 = load i8, i8* %arrayidx212, align 1
  %conv213 = sext i8 %213 to i32
  %and214 = and i32 %conv213, 4
  %tobool215 = icmp ne i32 %and214, 0
  br i1 %tobool215, label %if.then.224, label %lor.lhs.false.216

lor.lhs.false.216:                                ; preds = %lor.lhs.false.208, %land.lhs.true.192, %if.then.189
  %214 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings217 = getelementptr inbounds %struct.cop, %struct.cop* %214, i32 0, i32 14
  %215 = load %struct.sv*, %struct.sv** %cop_warnings217, align 8
  %cmp218 = icmp eq %struct.sv* %215, null
  br i1 %cmp218, label %land.lhs.true.220, label %if.end.260

land.lhs.true.220:                                ; preds = %lor.lhs.false.216
  %216 = load i8, i8* @PL_dowarn, align 1
  %conv221 = zext i8 %216 to i32
  %and222 = and i32 %conv221, 1
  %tobool223 = icmp ne i32 %and222, 0
  br i1 %tobool223, label %if.then.224, label %if.end.260

if.then.224:                                      ; preds = %land.lhs.true.220, %lor.lhs.false.208, %lor.lhs.false.200, %land.lhs.true.196
  %217 = load %struct.io*, %struct.io** %io, align 8
  %sv_any225 = getelementptr inbounds %struct.io, %struct.io* %217, i32 0, i32 0
  %218 = load %struct.xpvio*, %struct.xpvio** %sv_any225, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %218, i32 0, i32 7
  %219 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  %tobool226 = icmp ne %struct._PerlIO** %219, null
  br i1 %tobool226, label %if.then.227, label %if.else.228

if.then.227:                                      ; preds = %if.then.224
  %220 = load %struct.gv*, %struct.gv** %gv, align 8
  %221 = load %struct.io*, %struct.io** %io, align 8
  call void @Perl_report_evil_fh(%struct.gv* %220, %struct.io* %221, i32 -1)
  br label %if.end.259

if.else.228:                                      ; preds = %if.then.224
  %222 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings229 = getelementptr inbounds %struct.cop, %struct.cop* %222, i32 0, i32 14
  %223 = load %struct.sv*, %struct.sv** %cop_warnings229, align 8
  %cmp230 = icmp ne %struct.sv* %223, null
  br i1 %cmp230, label %land.lhs.true.232, label %lor.lhs.false.248

land.lhs.true.232:                                ; preds = %if.else.228
  %224 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings233 = getelementptr inbounds %struct.cop, %struct.cop* %224, i32 0, i32 14
  %225 = load %struct.sv*, %struct.sv** %cop_warnings233, align 8
  %cmp234 = icmp ne %struct.sv* %225, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp234, label %land.lhs.true.236, label %lor.lhs.false.248

land.lhs.true.236:                                ; preds = %land.lhs.true.232
  %226 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings237 = getelementptr inbounds %struct.cop, %struct.cop* %226, i32 0, i32 14
  %227 = load %struct.sv*, %struct.sv** %cop_warnings237, align 8
  %cmp238 = icmp eq %struct.sv* %227, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp238, label %if.then.256, label %lor.lhs.false.240

lor.lhs.false.240:                                ; preds = %land.lhs.true.236
  %228 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings241 = getelementptr inbounds %struct.cop, %struct.cop* %228, i32 0, i32 14
  %229 = load %struct.sv*, %struct.sv** %cop_warnings241, align 8
  %sv_any242 = getelementptr inbounds %struct.sv, %struct.sv* %229, i32 0, i32 0
  %230 = load i8*, i8** %sv_any242, align 8
  %231 = bitcast i8* %230 to %struct.xpv*
  %xpv_pv243 = getelementptr inbounds %struct.xpv, %struct.xpv* %231, i32 0, i32 0
  %232 = load i8*, i8** %xpv_pv243, align 8
  %arrayidx244 = getelementptr inbounds i8, i8* %232, i64 1
  %233 = load i8, i8* %arrayidx244, align 1
  %conv245 = sext i8 %233 to i32
  %and246 = and i32 %conv245, 16
  %tobool247 = icmp ne i32 %and246, 0
  br i1 %tobool247, label %if.then.256, label %lor.lhs.false.248

lor.lhs.false.248:                                ; preds = %lor.lhs.false.240, %land.lhs.true.232, %if.else.228
  %234 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings249 = getelementptr inbounds %struct.cop, %struct.cop* %234, i32 0, i32 14
  %235 = load %struct.sv*, %struct.sv** %cop_warnings249, align 8
  %cmp250 = icmp eq %struct.sv* %235, null
  br i1 %cmp250, label %land.lhs.true.252, label %if.end.258

land.lhs.true.252:                                ; preds = %lor.lhs.false.248
  %236 = load i8, i8* @PL_dowarn, align 1
  %conv253 = zext i8 %236 to i32
  %and254 = and i32 %conv253, 1
  %tobool255 = icmp ne i32 %and254, 0
  br i1 %tobool255, label %if.then.256, label %if.end.258

if.then.256:                                      ; preds = %land.lhs.true.252, %lor.lhs.false.240, %land.lhs.true.236
  %237 = load %struct.gv*, %struct.gv** %gv, align 8
  %238 = load %struct.io*, %struct.io** %io, align 8
  %239 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %239, i32 0, i32 4
  %240 = load i16, i16* %op_type, align 2
  %conv257 = zext i16 %240 to i32
  call void @Perl_report_evil_fh(%struct.gv* %237, %struct.io* %238, i32 %conv257)
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.256, %land.lhs.true.252, %lor.lhs.false.248
  br label %if.end.259

if.end.259:                                       ; preds = %if.end.258, %if.then.227
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.259, %land.lhs.true.220, %lor.lhs.false.216
  %241 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr261 = getelementptr inbounds %struct.sv*, %struct.sv** %241, i32 1
  store %struct.sv** %incdec.ptr261, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr261, align 8
  br label %if.end.326

if.else.262:                                      ; preds = %forget_top
  %242 = load %struct.sv*, %struct.sv** @PL_formtarget, align 8
  %sv_any263 = getelementptr inbounds %struct.sv, %struct.sv* %242, i32 0, i32 0
  %243 = load i8*, i8** %sv_any263, align 8
  %244 = bitcast i8* %243 to %struct.xpvfm*
  %xfm_lines264 = getelementptr inbounds %struct.xpvfm, %struct.xpvfm* %244, i32 0, i32 19
  %245 = load i64, i64* %xfm_lines264, align 8
  %246 = load %struct.io*, %struct.io** %io, align 8
  %sv_any265 = getelementptr inbounds %struct.io, %struct.io* %246, i32 0, i32 0
  %247 = load %struct.xpvio*, %struct.xpvio** %sv_any265, align 8
  %xio_lines_left266 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %247, i32 0, i32 13
  %248 = load i64, i64* %xio_lines_left266, align 8
  %sub267 = sub nsw i64 %248, %245
  store i64 %sub267, i64* %xio_lines_left266, align 8
  %cmp268 = icmp slt i64 %sub267, 0
  br i1 %cmp268, label %if.then.270, label %if.end.300

if.then.270:                                      ; preds = %if.else.262
  %249 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings271 = getelementptr inbounds %struct.cop, %struct.cop* %249, i32 0, i32 14
  %250 = load %struct.sv*, %struct.sv** %cop_warnings271, align 8
  %cmp272 = icmp ne %struct.sv* %250, null
  br i1 %cmp272, label %land.lhs.true.274, label %lor.lhs.false.290

land.lhs.true.274:                                ; preds = %if.then.270
  %251 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings275 = getelementptr inbounds %struct.cop, %struct.cop* %251, i32 0, i32 14
  %252 = load %struct.sv*, %struct.sv** %cop_warnings275, align 8
  %cmp276 = icmp ne %struct.sv* %252, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp276, label %land.lhs.true.278, label %lor.lhs.false.290

land.lhs.true.278:                                ; preds = %land.lhs.true.274
  %253 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings279 = getelementptr inbounds %struct.cop, %struct.cop* %253, i32 0, i32 14
  %254 = load %struct.sv*, %struct.sv** %cop_warnings279, align 8
  %cmp280 = icmp eq %struct.sv* %254, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp280, label %if.then.298, label %lor.lhs.false.282

lor.lhs.false.282:                                ; preds = %land.lhs.true.278
  %255 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings283 = getelementptr inbounds %struct.cop, %struct.cop* %255, i32 0, i32 14
  %256 = load %struct.sv*, %struct.sv** %cop_warnings283, align 8
  %sv_any284 = getelementptr inbounds %struct.sv, %struct.sv* %256, i32 0, i32 0
  %257 = load i8*, i8** %sv_any284, align 8
  %258 = bitcast i8* %257 to %struct.xpv*
  %xpv_pv285 = getelementptr inbounds %struct.xpv, %struct.xpv* %258, i32 0, i32 0
  %259 = load i8*, i8** %xpv_pv285, align 8
  %arrayidx286 = getelementptr inbounds i8, i8* %259, i64 1
  %260 = load i8, i8* %arrayidx286, align 1
  %conv287 = sext i8 %260 to i32
  %and288 = and i32 %conv287, 4
  %tobool289 = icmp ne i32 %and288, 0
  br i1 %tobool289, label %if.then.298, label %lor.lhs.false.290

lor.lhs.false.290:                                ; preds = %lor.lhs.false.282, %land.lhs.true.274, %if.then.270
  %261 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings291 = getelementptr inbounds %struct.cop, %struct.cop* %261, i32 0, i32 14
  %262 = load %struct.sv*, %struct.sv** %cop_warnings291, align 8
  %cmp292 = icmp eq %struct.sv* %262, null
  br i1 %cmp292, label %land.lhs.true.294, label %if.end.299

land.lhs.true.294:                                ; preds = %lor.lhs.false.290
  %263 = load i8, i8* @PL_dowarn, align 1
  %conv295 = zext i8 %263 to i32
  %and296 = and i32 %conv295, 1
  %tobool297 = icmp ne i32 %and296, 0
  br i1 %tobool297, label %if.then.298, label %if.end.299

if.then.298:                                      ; preds = %land.lhs.true.294, %lor.lhs.false.282, %land.lhs.true.278
  call void (i32, i8*, ...) @Perl_warner(i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.298, %land.lhs.true.294, %lor.lhs.false.290
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.299, %if.else.262
  %264 = load %struct.sv*, %struct.sv** @PL_formtarget, align 8
  %265 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call301 = call signext i8 @Perl_do_print(%struct.sv* %264, %struct._PerlIO** %265)
  %tobool302 = icmp ne i8 %call301, 0
  br i1 %tobool302, label %if.else.305, label %if.then.303

if.then.303:                                      ; preds = %if.end.300
  %266 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr304 = getelementptr inbounds %struct.sv*, %struct.sv** %266, i32 1
  store %struct.sv** %incdec.ptr304, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr304, align 8
  br label %if.end.325

if.else.305:                                      ; preds = %if.end.300
  %267 = load %struct.sv*, %struct.sv** @PL_formtarget, align 8
  %sv_any306 = getelementptr inbounds %struct.sv, %struct.sv* %267, i32 0, i32 0
  %268 = load i8*, i8** %sv_any306, align 8
  %269 = bitcast i8* %268 to %struct.xpvfm*
  %xfm_lines307 = getelementptr inbounds %struct.xpvfm, %struct.xpvfm* %269, i32 0, i32 19
  store i64 0, i64* %xfm_lines307, align 8
  %270 = load %struct.sv*, %struct.sv** @PL_formtarget, align 8
  %sv_any309 = getelementptr inbounds %struct.sv, %struct.sv* %270, i32 0, i32 0
  %271 = load i8*, i8** %sv_any309, align 8
  %272 = bitcast i8* %271 to %struct.xpv*
  %xpv_cur310 = getelementptr inbounds %struct.xpv, %struct.xpv* %272, i32 0, i32 1
  store i64 0, i64* %xpv_cur310, align 8
  store i64 0, i64* %tmp308
  %273 = load i64, i64* %tmp308
  %274 = load %struct.sv*, %struct.sv** @PL_formtarget, align 8
  %sv_any311 = getelementptr inbounds %struct.sv, %struct.sv* %274, i32 0, i32 0
  %275 = load i8*, i8** %sv_any311, align 8
  %276 = bitcast i8* %275 to %struct.xpv*
  %xpv_pv312 = getelementptr inbounds %struct.xpv, %struct.xpv* %276, i32 0, i32 0
  %277 = load i8*, i8** %xpv_pv312, align 8
  %278 = load %struct.sv*, %struct.sv** @PL_formtarget, align 8
  %sv_any313 = getelementptr inbounds %struct.sv, %struct.sv* %278, i32 0, i32 0
  %279 = load i8*, i8** %sv_any313, align 8
  %280 = bitcast i8* %279 to %struct.xpv*
  %xpv_cur314 = getelementptr inbounds %struct.xpv, %struct.xpv* %280, i32 0, i32 1
  %281 = load i64, i64* %xpv_cur314, align 8
  %add.ptr315 = getelementptr inbounds i8, i8* %277, i64 %281
  store i8 0, i8* %add.ptr315, align 1
  %282 = load %struct.io*, %struct.io** %io, align 8
  %sv_any316 = getelementptr inbounds %struct.io, %struct.io* %282, i32 0, i32 0
  %283 = load %struct.xpvio*, %struct.xpvio** %sv_any316, align 8
  %xio_flags317 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %283, i32 0, i32 22
  %284 = load i8, i8* %xio_flags317, align 1
  %conv318 = sext i8 %284 to i32
  %and319 = and i32 %conv318, 4
  %tobool320 = icmp ne i32 %and319, 0
  br i1 %tobool320, label %if.then.321, label %if.end.323

if.then.321:                                      ; preds = %if.else.305
  %285 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call322 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %285)
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.321, %if.else.305
  %286 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr324 = getelementptr inbounds %struct.sv*, %struct.sv** %286, i32 1
  store %struct.sv** %incdec.ptr324, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr324, align 8
  br label %if.end.325

if.end.325:                                       ; preds = %if.end.323, %if.then.303
  br label %if.end.326

if.end.326:                                       ; preds = %if.end.325, %if.end.260
  %287 = load %struct.sv*, %struct.sv** @PL_bodytarget, align 8
  store %struct.sv* %287, %struct.sv** @PL_formtarget, align 8
  %288 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %288, %struct.sv*** @PL_stack_sp, align 8
  %call327 = call %struct.op* @Perl_pop_return()
  store %struct.op* %call327, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.326, %if.end.152, %if.then.142, %if.then.120
  %289 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %289
}

declare i8* @Perl_savepv(i8*) #1

declare %struct.sv* @Perl_newSVpvf(i8*, ...) #1

declare %struct.gv* @Perl_gv_fetchpv(i8*, i32, i32) #1

declare i8* @Perl_savesvpv(%struct.sv*) #1

declare i8* @strchr(i8*, i32) #1

declare signext i8 @Perl_do_print(%struct.sv*, %struct._PerlIO**) #1

declare void @Perl_sv_chop(%struct.sv*, i8*) #1

declare i32 @Perl_PerlIO_flush(%struct._PerlIO**) #1

declare %struct.op* @Perl_pop_return() #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_prtf() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %origmark = alloca i32, align 4
  %gv = alloca %struct.gv*, align 8
  %io = alloca %struct.io*, align 8
  %fp = alloca %struct._PerlIO**, align 8
  %sv = alloca %struct.sv*, align 8
  %mg = alloca %struct.magic*, align 8
  %markoff = alloca i32, align 4
  %tmp = alloca i32, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %origmark, align 4
  %6 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %6, i32 0, i32 6
  %7 = load i8, i8* %op_flags, align 1
  %conv1 = zext i8 %7 to i32
  %and = and i32 %conv1, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr2 = getelementptr inbounds %struct.sv*, %struct.sv** %8, i32 1
  store %struct.sv** %incdec.ptr2, %struct.sv*** %mark, align 8
  %9 = load %struct.sv*, %struct.sv** %incdec.ptr2, align 8
  %10 = bitcast %struct.sv* %9 to %struct.gv*
  store %struct.gv* %10, %struct.gv** %gv, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  store %struct.gv* %11, %struct.gv** %gv, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool3 = icmp ne %struct.gv* %12, null
  br i1 %tobool3, label %land.lhs.true, label %if.end.75

land.lhs.true:                                    ; preds = %if.end
  %13 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool4 = icmp ne %struct.gv* %13, null
  br i1 %tobool4, label %land.lhs.true.5, label %cond.false

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %14 = load %struct.gv*, %struct.gv** %gv, align 8
  %15 = bitcast %struct.gv* %14 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags, align 4
  %and6 = and i32 %16, 255
  %cmp = icmp eq i32 %and6, 13
  br i1 %cmp, label %land.lhs.true.8, label %cond.false

land.lhs.true.8:                                  ; preds = %land.lhs.true.5
  %17 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %17, i32 0, i32 0
  %18 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %18, i32 0, i32 7
  %19 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool9 = icmp ne %struct.gp* %19, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.8
  %20 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any10 = getelementptr inbounds %struct.gv, %struct.gv* %20, i32 0, i32 0
  %21 = load %struct.xpvgv*, %struct.xpvgv** %sv_any10, align 8
  %xgv_gp11 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %21, i32 0, i32 7
  %22 = load %struct.gp*, %struct.gp** %xgv_gp11, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %22, i32 0, i32 2
  %23 = load %struct.io*, %struct.io** %gp_io, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.8, %land.lhs.true.5, %land.lhs.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.io* [ %23, %cond.true ], [ null, %cond.false ]
  store %struct.io* %cond, %struct.io** %io, align 8
  %tobool12 = icmp ne %struct.io* %cond, null
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.75

land.lhs.true.13:                                 ; preds = %cond.end
  %24 = load %struct.io*, %struct.io** %io, align 8
  %25 = bitcast %struct.io* %24 to %struct.sv*
  %sv_flags14 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 2
  %26 = load i32, i32* %sv_flags14, align 4
  %and15 = and i32 %26, 32768
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %land.lhs.true.13
  %27 = load %struct.io*, %struct.io** %io, align 8
  %28 = bitcast %struct.io* %27 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %28, i32 113)
  br label %cond.end.19

cond.false.18:                                    ; preds = %land.lhs.true.13
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.true.17
  %cond20 = phi %struct.magic* [ %call, %cond.true.17 ], [ null, %cond.false.18 ]
  store %struct.magic* %cond20, %struct.magic** %mg, align 8
  %tobool21 = icmp ne %struct.magic* %cond20, null
  br i1 %tobool21, label %if.then.22, label %if.end.75

if.then.22:                                       ; preds = %cond.end.19
  %29 = load %struct.sv**, %struct.sv*** %mark, align 8
  %30 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %31 = load i32, i32* %origmark, align 4
  %idx.ext23 = sext i32 %31 to i64
  %add.ptr24 = getelementptr inbounds %struct.sv*, %struct.sv** %30, i64 %idx.ext23
  %cmp25 = icmp eq %struct.sv** %29, %add.ptr24
  br i1 %cmp25, label %if.then.27, label %if.end.51

if.then.27:                                       ; preds = %if.then.22
  %32 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %33 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast28 = ptrtoint %struct.sv** %32 to i64
  %sub.ptr.rhs.cast29 = ptrtoint %struct.sv** %33 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %sub.ptr.div31 = sdiv exact i64 %sub.ptr.sub30, 8
  %cmp32 = icmp slt i64 %sub.ptr.div31, 1
  br i1 %cmp32, label %if.then.34, label %if.end.43

if.then.34:                                       ; preds = %if.then.27
  %34 = load %struct.sv**, %struct.sv*** %mark, align 8
  %35 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast35 = ptrtoint %struct.sv** %34 to i64
  %sub.ptr.rhs.cast36 = ptrtoint %struct.sv** %35 to i64
  %sub.ptr.sub37 = sub i64 %sub.ptr.lhs.cast35, %sub.ptr.rhs.cast36
  %sub.ptr.div38 = sdiv exact i64 %sub.ptr.sub37, 8
  %conv39 = trunc i64 %sub.ptr.div38 to i32
  store i32 %conv39, i32* %markoff, align 4
  %36 = load %struct.sv**, %struct.sv*** %sp, align 8
  %37 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call40 = call %struct.sv** @Perl_stack_grow(%struct.sv** %36, %struct.sv** %37, i32 1)
  store %struct.sv** %call40, %struct.sv*** %sp, align 8
  %38 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %39 = load i32, i32* %markoff, align 4
  %idx.ext41 = sext i32 %39 to i64
  %add.ptr42 = getelementptr inbounds %struct.sv*, %struct.sv** %38, i64 %idx.ext41
  store %struct.sv** %add.ptr42, %struct.sv*** %mark, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.34, %if.then.27
  %40 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr44 = getelementptr inbounds %struct.sv*, %struct.sv** %40, i32 1
  store %struct.sv** %incdec.ptr44, %struct.sv*** %mark, align 8
  %41 = load %struct.sv**, %struct.sv*** %mark, align 8
  %add.ptr45 = getelementptr inbounds %struct.sv*, %struct.sv** %41, i64 1
  %42 = bitcast %struct.sv** %add.ptr45 to i8*
  %43 = load %struct.sv**, %struct.sv*** %mark, align 8
  %44 = bitcast %struct.sv** %43 to i8*
  %45 = load %struct.sv**, %struct.sv*** %sp, align 8
  %46 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast46 = ptrtoint %struct.sv** %45 to i64
  %sub.ptr.rhs.cast47 = ptrtoint %struct.sv** %46 to i64
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47
  %sub.ptr.div49 = sdiv exact i64 %sub.ptr.sub48, 8
  %add = add nsw i64 %sub.ptr.div49, 1
  %mul = mul i64 %add, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %42, i8* %44, i64 %mul, i32 1, i1 false)
  %47 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr50 = getelementptr inbounds %struct.sv*, %struct.sv** %47, i32 1
  store %struct.sv** %incdec.ptr50, %struct.sv*** %sp, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.43, %if.then.22
  %48 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr52 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %incdec.ptr52, i32** @PL_markstack_ptr, align 8
  %49 = load i32*, i32** @PL_markstack_max, align 8
  %cmp53 = icmp eq i32* %incdec.ptr52, %49
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.51
  call void @Perl_markstack_grow()
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.51
  %50 = load %struct.sv**, %struct.sv*** %mark, align 8
  %add.ptr57 = getelementptr inbounds %struct.sv*, %struct.sv** %50, i64 -1
  %51 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast58 = ptrtoint %struct.sv** %add.ptr57 to i64
  %sub.ptr.rhs.cast59 = ptrtoint %struct.sv** %51 to i64
  %sub.ptr.sub60 = sub i64 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59
  %sub.ptr.div61 = sdiv exact i64 %sub.ptr.sub60, 8
  %conv62 = trunc i64 %sub.ptr.div61 to i32
  %52 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv62, i32* %52, align 4
  store i32 %conv62, i32* %tmp
  %53 = load i32, i32* %tmp
  %54 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %54, i32 0, i32 5
  %55 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool63 = icmp ne %struct.sv* %55, null
  br i1 %tobool63, label %cond.true.64, label %cond.false.66

cond.true.64:                                     ; preds = %if.end.56
  %56 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj65 = getelementptr inbounds %struct.magic, %struct.magic* %56, i32 0, i32 5
  %57 = load %struct.sv*, %struct.sv** %mg_obj65, align 8
  br label %cond.end.69

cond.false.66:                                    ; preds = %if.end.56
  %58 = load %struct.io*, %struct.io** %io, align 8
  %59 = bitcast %struct.io* %58 to %struct.sv*
  %call67 = call %struct.sv* @Perl_newRV(%struct.sv* %59)
  %call68 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call67)
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.66, %cond.true.64
  %cond70 = phi %struct.sv* [ %57, %cond.true.64 ], [ %call68, %cond.false.66 ]
  %60 = load %struct.sv**, %struct.sv*** %mark, align 8
  store %struct.sv* %cond70, %struct.sv** %60, align 8
  %61 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %61, %struct.sv*** @PL_stack_sp, align 8
  call void @Perl_push_scope()
  %call71 = call i32 @Perl_call_method(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 0)
  call void @Perl_pop_scope()
  %62 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %62, %struct.sv*** %sp, align 8
  %63 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %64 = load i32, i32* %origmark, align 4
  %idx.ext72 = sext i32 %64 to i64
  %add.ptr73 = getelementptr inbounds %struct.sv*, %struct.sv** %63, i64 %idx.ext72
  %add.ptr74 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr73, i64 1
  store %struct.sv** %add.ptr74, %struct.sv*** %mark, align 8
  %65 = load %struct.sv**, %struct.sv*** %sp, align 8
  %66 = load %struct.sv*, %struct.sv** %65, align 8
  %67 = load %struct.sv**, %struct.sv*** %mark, align 8
  store %struct.sv* %66, %struct.sv** %67, align 8
  %68 = load %struct.sv**, %struct.sv*** %mark, align 8
  store %struct.sv** %68, %struct.sv*** %sp, align 8
  %69 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %69, %struct.sv*** @PL_stack_sp, align 8
  %70 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %70, i32 0, i32 0
  %71 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %71, %struct.op** %retval
  br label %return

if.end.75:                                        ; preds = %cond.end.19, %cond.end, %if.end
  %call76 = call %struct.sv* @Perl_newSV(i64 0)
  store %struct.sv* %call76, %struct.sv** %sv, align 8
  %72 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool77 = icmp ne %struct.gv* %72, null
  br i1 %tobool77, label %land.lhs.true.78, label %cond.false.91

land.lhs.true.78:                                 ; preds = %if.end.75
  %73 = load %struct.gv*, %struct.gv** %gv, align 8
  %74 = bitcast %struct.gv* %73 to %struct.sv*
  %sv_flags79 = getelementptr inbounds %struct.sv, %struct.sv* %74, i32 0, i32 2
  %75 = load i32, i32* %sv_flags79, align 4
  %and80 = and i32 %75, 255
  %cmp81 = icmp eq i32 %and80, 13
  br i1 %cmp81, label %land.lhs.true.83, label %cond.false.91

land.lhs.true.83:                                 ; preds = %land.lhs.true.78
  %76 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any84 = getelementptr inbounds %struct.gv, %struct.gv* %76, i32 0, i32 0
  %77 = load %struct.xpvgv*, %struct.xpvgv** %sv_any84, align 8
  %xgv_gp85 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %77, i32 0, i32 7
  %78 = load %struct.gp*, %struct.gp** %xgv_gp85, align 8
  %tobool86 = icmp ne %struct.gp* %78, null
  br i1 %tobool86, label %cond.true.87, label %cond.false.91

cond.true.87:                                     ; preds = %land.lhs.true.83
  %79 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any88 = getelementptr inbounds %struct.gv, %struct.gv* %79, i32 0, i32 0
  %80 = load %struct.xpvgv*, %struct.xpvgv** %sv_any88, align 8
  %xgv_gp89 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %80, i32 0, i32 7
  %81 = load %struct.gp*, %struct.gp** %xgv_gp89, align 8
  %gp_io90 = getelementptr inbounds %struct.gp, %struct.gp* %81, i32 0, i32 2
  %82 = load %struct.io*, %struct.io** %gp_io90, align 8
  br label %cond.end.92

cond.false.91:                                    ; preds = %land.lhs.true.83, %land.lhs.true.78, %if.end.75
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.91, %cond.true.87
  %cond93 = phi %struct.io* [ %82, %cond.true.87 ], [ null, %cond.false.91 ]
  store %struct.io* %cond93, %struct.io** %io, align 8
  %tobool94 = icmp ne %struct.io* %cond93, null
  br i1 %tobool94, label %if.else.131, label %if.then.95

if.then.95:                                       ; preds = %cond.end.92
  %83 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %83, i32 0, i32 14
  %84 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp96 = icmp ne %struct.sv* %84, null
  br i1 %cmp96, label %land.lhs.true.98, label %lor.lhs.false.119

land.lhs.true.98:                                 ; preds = %if.then.95
  %85 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings99 = getelementptr inbounds %struct.cop, %struct.cop* %85, i32 0, i32 14
  %86 = load %struct.sv*, %struct.sv** %cop_warnings99, align 8
  %cmp100 = icmp ne %struct.sv* %86, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp100, label %land.lhs.true.102, label %lor.lhs.false.119

land.lhs.true.102:                                ; preds = %land.lhs.true.98
  %87 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings103 = getelementptr inbounds %struct.cop, %struct.cop* %87, i32 0, i32 14
  %88 = load %struct.sv*, %struct.sv** %cop_warnings103, align 8
  %cmp104 = icmp eq %struct.sv* %88, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp104, label %if.then.127, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.102
  %89 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings106 = getelementptr inbounds %struct.cop, %struct.cop* %89, i32 0, i32 14
  %90 = load %struct.sv*, %struct.sv** %cop_warnings106, align 8
  %sv_any107 = getelementptr inbounds %struct.sv, %struct.sv* %90, i32 0, i32 0
  %91 = load i8*, i8** %sv_any107, align 8
  %92 = bitcast i8* %91 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %92, i32 0, i32 0
  %93 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %93, i64 2
  %94 = load i8, i8* %arrayidx, align 1
  %conv108 = sext i8 %94 to i32
  %and109 = and i32 %conv108, 64
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then.127, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %lor.lhs.false
  %95 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings112 = getelementptr inbounds %struct.cop, %struct.cop* %95, i32 0, i32 14
  %96 = load %struct.sv*, %struct.sv** %cop_warnings112, align 8
  %sv_any113 = getelementptr inbounds %struct.sv, %struct.sv* %96, i32 0, i32 0
  %97 = load i8*, i8** %sv_any113, align 8
  %98 = bitcast i8* %97 to %struct.xpv*
  %xpv_pv114 = getelementptr inbounds %struct.xpv, %struct.xpv* %98, i32 0, i32 0
  %99 = load i8*, i8** %xpv_pv114, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %99, i64 1
  %100 = load i8, i8* %arrayidx115, align 1
  %conv116 = sext i8 %100 to i32
  %and117 = and i32 %conv116, 16
  %tobool118 = icmp ne i32 %and117, 0
  br i1 %tobool118, label %if.then.127, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %lor.lhs.false.111, %land.lhs.true.98, %if.then.95
  %101 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings120 = getelementptr inbounds %struct.cop, %struct.cop* %101, i32 0, i32 14
  %102 = load %struct.sv*, %struct.sv** %cop_warnings120, align 8
  %cmp121 = icmp eq %struct.sv* %102, null
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.129

land.lhs.true.123:                                ; preds = %lor.lhs.false.119
  %103 = load i8, i8* @PL_dowarn, align 1
  %conv124 = zext i8 %103 to i32
  %and125 = and i32 %conv124, 1
  %tobool126 = icmp ne i32 %and125, 0
  br i1 %tobool126, label %if.then.127, label %if.end.129

if.then.127:                                      ; preds = %land.lhs.true.123, %lor.lhs.false.111, %lor.lhs.false, %land.lhs.true.102
  %104 = load %struct.gv*, %struct.gv** %gv, align 8
  %105 = load %struct.io*, %struct.io** %io, align 8
  %106 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %106, i32 0, i32 4
  %107 = load i16, i16* %op_type, align 2
  %conv128 = zext i16 %107 to i32
  call void @Perl_report_evil_fh(%struct.gv* %104, %struct.io* %105, i32 %conv128)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.127, %land.lhs.true.123, %lor.lhs.false.119
  %call130 = call i32* @__errno_location()
  store i32 9, i32* %call130, align 4
  br label %just_say_no

if.else.131:                                      ; preds = %cond.end.92
  %108 = load %struct.io*, %struct.io** %io, align 8
  %sv_any132 = getelementptr inbounds %struct.io, %struct.io* %108, i32 0, i32 0
  %109 = load %struct.xpvio*, %struct.xpvio** %sv_any132, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %109, i32 0, i32 8
  %110 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  store %struct._PerlIO** %110, %struct._PerlIO*** %fp, align 8
  %tobool133 = icmp ne %struct._PerlIO** %110, null
  br i1 %tobool133, label %if.else.209, label %if.then.134

if.then.134:                                      ; preds = %if.else.131
  %111 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings135 = getelementptr inbounds %struct.cop, %struct.cop* %111, i32 0, i32 14
  %112 = load %struct.sv*, %struct.sv** %cop_warnings135, align 8
  %cmp136 = icmp ne %struct.sv* %112, null
  br i1 %cmp136, label %land.lhs.true.138, label %lor.lhs.false.162

land.lhs.true.138:                                ; preds = %if.then.134
  %113 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings139 = getelementptr inbounds %struct.cop, %struct.cop* %113, i32 0, i32 14
  %114 = load %struct.sv*, %struct.sv** %cop_warnings139, align 8
  %cmp140 = icmp ne %struct.sv* %114, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp140, label %land.lhs.true.142, label %lor.lhs.false.162

land.lhs.true.142:                                ; preds = %land.lhs.true.138
  %115 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings143 = getelementptr inbounds %struct.cop, %struct.cop* %115, i32 0, i32 14
  %116 = load %struct.sv*, %struct.sv** %cop_warnings143, align 8
  %cmp144 = icmp eq %struct.sv* %116, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp144, label %if.then.170, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %land.lhs.true.142
  %117 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings147 = getelementptr inbounds %struct.cop, %struct.cop* %117, i32 0, i32 14
  %118 = load %struct.sv*, %struct.sv** %cop_warnings147, align 8
  %sv_any148 = getelementptr inbounds %struct.sv, %struct.sv* %118, i32 0, i32 0
  %119 = load i8*, i8** %sv_any148, align 8
  %120 = bitcast i8* %119 to %struct.xpv*
  %xpv_pv149 = getelementptr inbounds %struct.xpv, %struct.xpv* %120, i32 0, i32 0
  %121 = load i8*, i8** %xpv_pv149, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %121, i64 1
  %122 = load i8, i8* %arrayidx150, align 1
  %conv151 = sext i8 %122 to i32
  %and152 = and i32 %conv151, 16
  %tobool153 = icmp ne i32 %and152, 0
  br i1 %tobool153, label %if.then.170, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %lor.lhs.false.146
  %123 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings155 = getelementptr inbounds %struct.cop, %struct.cop* %123, i32 0, i32 14
  %124 = load %struct.sv*, %struct.sv** %cop_warnings155, align 8
  %sv_any156 = getelementptr inbounds %struct.sv, %struct.sv* %124, i32 0, i32 0
  %125 = load i8*, i8** %sv_any156, align 8
  %126 = bitcast i8* %125 to %struct.xpv*
  %xpv_pv157 = getelementptr inbounds %struct.xpv, %struct.xpv* %126, i32 0, i32 0
  %127 = load i8*, i8** %xpv_pv157, align 8
  %arrayidx158 = getelementptr inbounds i8, i8* %127, i64 1
  %128 = load i8, i8* %arrayidx158, align 1
  %conv159 = sext i8 %128 to i32
  %and160 = and i32 %conv159, 4
  %tobool161 = icmp ne i32 %and160, 0
  br i1 %tobool161, label %if.then.170, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %lor.lhs.false.154, %land.lhs.true.138, %if.then.134
  %129 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings163 = getelementptr inbounds %struct.cop, %struct.cop* %129, i32 0, i32 14
  %130 = load %struct.sv*, %struct.sv** %cop_warnings163, align 8
  %cmp164 = icmp eq %struct.sv* %130, null
  br i1 %cmp164, label %land.lhs.true.166, label %if.end.207

land.lhs.true.166:                                ; preds = %lor.lhs.false.162
  %131 = load i8, i8* @PL_dowarn, align 1
  %conv167 = zext i8 %131 to i32
  %and168 = and i32 %conv167, 1
  %tobool169 = icmp ne i32 %and168, 0
  br i1 %tobool169, label %if.then.170, label %if.end.207

if.then.170:                                      ; preds = %land.lhs.true.166, %lor.lhs.false.154, %lor.lhs.false.146, %land.lhs.true.142
  %132 = load %struct.io*, %struct.io** %io, align 8
  %sv_any171 = getelementptr inbounds %struct.io, %struct.io* %132, i32 0, i32 0
  %133 = load %struct.xpvio*, %struct.xpvio** %sv_any171, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %133, i32 0, i32 7
  %134 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  %tobool172 = icmp ne %struct._PerlIO** %134, null
  br i1 %tobool172, label %if.then.173, label %if.else.174

if.then.173:                                      ; preds = %if.then.170
  %135 = load %struct.gv*, %struct.gv** %gv, align 8
  %136 = load %struct.io*, %struct.io** %io, align 8
  call void @Perl_report_evil_fh(%struct.gv* %135, %struct.io* %136, i32 -1)
  br label %if.end.206

if.else.174:                                      ; preds = %if.then.170
  %137 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings175 = getelementptr inbounds %struct.cop, %struct.cop* %137, i32 0, i32 14
  %138 = load %struct.sv*, %struct.sv** %cop_warnings175, align 8
  %cmp176 = icmp ne %struct.sv* %138, null
  br i1 %cmp176, label %land.lhs.true.178, label %lor.lhs.false.194

land.lhs.true.178:                                ; preds = %if.else.174
  %139 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings179 = getelementptr inbounds %struct.cop, %struct.cop* %139, i32 0, i32 14
  %140 = load %struct.sv*, %struct.sv** %cop_warnings179, align 8
  %cmp180 = icmp ne %struct.sv* %140, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp180, label %land.lhs.true.182, label %lor.lhs.false.194

land.lhs.true.182:                                ; preds = %land.lhs.true.178
  %141 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings183 = getelementptr inbounds %struct.cop, %struct.cop* %141, i32 0, i32 14
  %142 = load %struct.sv*, %struct.sv** %cop_warnings183, align 8
  %cmp184 = icmp eq %struct.sv* %142, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp184, label %if.then.202, label %lor.lhs.false.186

lor.lhs.false.186:                                ; preds = %land.lhs.true.182
  %143 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings187 = getelementptr inbounds %struct.cop, %struct.cop* %143, i32 0, i32 14
  %144 = load %struct.sv*, %struct.sv** %cop_warnings187, align 8
  %sv_any188 = getelementptr inbounds %struct.sv, %struct.sv* %144, i32 0, i32 0
  %145 = load i8*, i8** %sv_any188, align 8
  %146 = bitcast i8* %145 to %struct.xpv*
  %xpv_pv189 = getelementptr inbounds %struct.xpv, %struct.xpv* %146, i32 0, i32 0
  %147 = load i8*, i8** %xpv_pv189, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %147, i64 1
  %148 = load i8, i8* %arrayidx190, align 1
  %conv191 = sext i8 %148 to i32
  %and192 = and i32 %conv191, 16
  %tobool193 = icmp ne i32 %and192, 0
  br i1 %tobool193, label %if.then.202, label %lor.lhs.false.194

lor.lhs.false.194:                                ; preds = %lor.lhs.false.186, %land.lhs.true.178, %if.else.174
  %149 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings195 = getelementptr inbounds %struct.cop, %struct.cop* %149, i32 0, i32 14
  %150 = load %struct.sv*, %struct.sv** %cop_warnings195, align 8
  %cmp196 = icmp eq %struct.sv* %150, null
  br i1 %cmp196, label %land.lhs.true.198, label %if.end.205

land.lhs.true.198:                                ; preds = %lor.lhs.false.194
  %151 = load i8, i8* @PL_dowarn, align 1
  %conv199 = zext i8 %151 to i32
  %and200 = and i32 %conv199, 1
  %tobool201 = icmp ne i32 %and200, 0
  br i1 %tobool201, label %if.then.202, label %if.end.205

if.then.202:                                      ; preds = %land.lhs.true.198, %lor.lhs.false.186, %land.lhs.true.182
  %152 = load %struct.gv*, %struct.gv** %gv, align 8
  %153 = load %struct.io*, %struct.io** %io, align 8
  %154 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type203 = getelementptr inbounds %struct.op, %struct.op* %154, i32 0, i32 4
  %155 = load i16, i16* %op_type203, align 2
  %conv204 = zext i16 %155 to i32
  call void @Perl_report_evil_fh(%struct.gv* %152, %struct.io* %153, i32 %conv204)
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.202, %land.lhs.true.198, %lor.lhs.false.194
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.then.173
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %land.lhs.true.166, %lor.lhs.false.162
  %call208 = call i32* @__errno_location()
  store i32 9, i32* %call208, align 4
  br label %just_say_no

if.else.209:                                      ; preds = %if.else.131
  %156 = load %struct.sv*, %struct.sv** %sv, align 8
  %157 = load %struct.sv**, %struct.sv*** %sp, align 8
  %158 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast210 = ptrtoint %struct.sv** %157 to i64
  %sub.ptr.rhs.cast211 = ptrtoint %struct.sv** %158 to i64
  %sub.ptr.sub212 = sub i64 %sub.ptr.lhs.cast210, %sub.ptr.rhs.cast211
  %sub.ptr.div213 = sdiv exact i64 %sub.ptr.sub212, 8
  %conv214 = trunc i64 %sub.ptr.div213 to i32
  %159 = load %struct.sv**, %struct.sv*** %mark, align 8
  %add.ptr215 = getelementptr inbounds %struct.sv*, %struct.sv** %159, i64 1
  call void @Perl_do_sprintf(%struct.sv* %156, i32 %conv214, %struct.sv** %add.ptr215)
  %160 = load %struct.sv*, %struct.sv** %sv, align 8
  %161 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call216 = call signext i8 @Perl_do_print(%struct.sv* %160, %struct._PerlIO** %161)
  %tobool217 = icmp ne i8 %call216, 0
  br i1 %tobool217, label %if.end.219, label %if.then.218

if.then.218:                                      ; preds = %if.else.209
  br label %just_say_no

if.end.219:                                       ; preds = %if.else.209
  %162 = load %struct.io*, %struct.io** %io, align 8
  %sv_any220 = getelementptr inbounds %struct.io, %struct.io* %162, i32 0, i32 0
  %163 = load %struct.xpvio*, %struct.xpvio** %sv_any220, align 8
  %xio_flags = getelementptr inbounds %struct.xpvio, %struct.xpvio* %163, i32 0, i32 22
  %164 = load i8, i8* %xio_flags, align 1
  %conv221 = sext i8 %164 to i32
  %and222 = and i32 %conv221, 4
  %tobool223 = icmp ne i32 %and222, 0
  br i1 %tobool223, label %if.then.224, label %if.end.230

if.then.224:                                      ; preds = %if.end.219
  %165 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call225 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %165)
  %cmp226 = icmp eq i32 %call225, -1
  br i1 %cmp226, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %if.then.224
  br label %just_say_no

if.end.229:                                       ; preds = %if.then.224
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %if.end.219
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231
  %166 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_free(%struct.sv* %166)
  %167 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %168 = load i32, i32* %origmark, align 4
  %idx.ext233 = sext i32 %168 to i64
  %add.ptr234 = getelementptr inbounds %struct.sv*, %struct.sv** %167, i64 %idx.ext233
  store %struct.sv** %add.ptr234, %struct.sv*** %sp, align 8
  %169 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr235 = getelementptr inbounds %struct.sv*, %struct.sv** %169, i32 1
  store %struct.sv** %incdec.ptr235, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr235, align 8
  %170 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %170, %struct.sv*** @PL_stack_sp, align 8
  %171 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next236 = getelementptr inbounds %struct.op, %struct.op* %171, i32 0, i32 0
  %172 = load %struct.op*, %struct.op** %op_next236, align 8
  store %struct.op* %172, %struct.op** %retval
  br label %return

just_say_no:                                      ; preds = %if.then.228, %if.then.218, %if.end.207, %if.end.129
  %173 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_free(%struct.sv* %173)
  %174 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %175 = load i32, i32* %origmark, align 4
  %idx.ext237 = sext i32 %175 to i64
  %add.ptr238 = getelementptr inbounds %struct.sv*, %struct.sv** %174, i64 %idx.ext237
  store %struct.sv** %add.ptr238, %struct.sv*** %sp, align 8
  %176 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr239 = getelementptr inbounds %struct.sv*, %struct.sv** %176, i32 1
  store %struct.sv** %incdec.ptr239, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr239, align 8
  %177 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %177, %struct.sv*** @PL_stack_sp, align 8
  %178 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next240 = getelementptr inbounds %struct.op, %struct.op* %178, i32 0, i32 0
  %179 = load %struct.op*, %struct.op** %op_next240, align 8
  store %struct.op* %179, %struct.op** %retval
  br label %return

return:                                           ; preds = %just_say_no, %if.end.232, %cond.end.69
  %180 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %180
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @Perl_do_sprintf(%struct.sv*, i32, %struct.sv**) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_sysopen() #0 {
entry:
  %sp = alloca %struct.sv**, align 8
  %gv = alloca %struct.gv*, align 8
  %sv = alloca %struct.sv*, align 8
  %tmps = alloca i8*, align 8
  %len = alloca i64, align 8
  %mode = alloca i32, align 4
  %perm = alloca i32, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 7
  %2 = load i8, i8* %op_private, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 15
  %cmp = icmp sgt i32 %and, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %3, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %4 = load %struct.sv*, %struct.sv** %3, align 8
  store %struct.sv* %4, %struct.sv** @PL_Sv, align 8
  %5 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 2
  %6 = load i32, i32* %sv_flags, align 4
  %and2 = and i32 %6, 65536
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 0
  %8 = load i8*, i8** %sv_any, align 8
  %9 = bitcast i8* %8 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %9, i32 0, i32 3
  %10 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %11 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ %call, %cond.false ]
  %conv3 = trunc i64 %cond to i32
  store i32 %conv3, i32* %perm, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 438, i32* %perm, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr4 = getelementptr inbounds %struct.sv*, %struct.sv** %12, i32 -1
  store %struct.sv** %incdec.ptr4, %struct.sv*** %sp, align 8
  %13 = load %struct.sv*, %struct.sv** %12, align 8
  store %struct.sv* %13, %struct.sv** @PL_Sv, align 8
  %14 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags5 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 2
  %15 = load i32, i32* %sv_flags5, align 4
  %and6 = and i32 %15, 65536
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %cond.true.8, label %cond.false.11

cond.true.8:                                      ; preds = %if.end
  %16 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any9 = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 0
  %17 = load i8*, i8** %sv_any9, align 8
  %18 = bitcast i8* %17 to %struct.xpviv*
  %xiv_iv10 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %18, i32 0, i32 3
  %19 = load i64, i64* %xiv_iv10, align 8
  br label %cond.end.13

cond.false.11:                                    ; preds = %if.end
  %20 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call12 = call i64 @Perl_sv_2iv(%struct.sv* %20)
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.11, %cond.true.8
  %cond14 = phi i64 [ %19, %cond.true.8 ], [ %call12, %cond.false.11 ]
  %conv15 = trunc i64 %cond14 to i32
  store i32 %conv15, i32* %mode, align 4
  %21 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr16 = getelementptr inbounds %struct.sv*, %struct.sv** %21, i32 -1
  store %struct.sv** %incdec.ptr16, %struct.sv*** %sp, align 8
  %22 = load %struct.sv*, %struct.sv** %21, align 8
  store %struct.sv* %22, %struct.sv** %sv, align 8
  %23 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr17 = getelementptr inbounds %struct.sv*, %struct.sv** %23, i32 -1
  store %struct.sv** %incdec.ptr17, %struct.sv*** %sp, align 8
  %24 = load %struct.sv*, %struct.sv** %23, align 8
  %25 = bitcast %struct.sv* %24 to %struct.gv*
  store %struct.gv* %25, %struct.gv** %gv, align 8
  %26 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags18 = getelementptr inbounds %struct.sv, %struct.sv* %26, i32 0, i32 2
  %27 = load i32, i32* %sv_flags18, align 4
  %and19 = and i32 %27, 262144
  %cmp20 = icmp eq i32 %and19, 262144
  br i1 %cmp20, label %cond.true.22, label %cond.false.25

cond.true.22:                                     ; preds = %cond.end.13
  %28 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any23 = getelementptr inbounds %struct.sv, %struct.sv* %28, i32 0, i32 0
  %29 = load i8*, i8** %sv_any23, align 8
  %30 = bitcast i8* %29 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %30, i32 0, i32 1
  %31 = load i64, i64* %xpv_cur, align 8
  store i64 %31, i64* %len, align 8
  %32 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any24 = getelementptr inbounds %struct.sv, %struct.sv* %32, i32 0, i32 0
  %33 = load i8*, i8** %sv_any24, align 8
  %34 = bitcast i8* %33 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %34, i32 0, i32 0
  %35 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.27

cond.false.25:                                    ; preds = %cond.end.13
  %36 = load %struct.sv*, %struct.sv** %sv, align 8
  %call26 = call i8* @Perl_sv_2pv_flags(%struct.sv* %36, i64* %len, i32 2)
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.25, %cond.true.22
  %cond28 = phi i8* [ %35, %cond.true.22 ], [ %call26, %cond.false.25 ]
  store i8* %cond28, i8** %tmps, align 8
  %37 = load %struct.gv*, %struct.gv** %gv, align 8
  %38 = load i8*, i8** %tmps, align 8
  %39 = load i64, i64* %len, align 8
  %conv29 = trunc i64 %39 to i32
  %40 = load i32, i32* %mode, align 4
  %41 = load i32, i32* %perm, align 4
  %call30 = call signext i8 @Perl_do_open(%struct.gv* %37, i8* %38, i32 %conv29, i32 1, i32 %40, i32 %41, %struct._PerlIO** null)
  %tobool31 = icmp ne i8 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.else.36

if.then.32:                                       ; preds = %cond.end.27
  %42 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any33 = getelementptr inbounds %struct.gv, %struct.gv* %42, i32 0, i32 0
  %43 = load %struct.xpvgv*, %struct.xpvgv** %sv_any33, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %43, i32 0, i32 7
  %44 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %44, i32 0, i32 2
  %45 = load %struct.io*, %struct.io** %gp_io, align 8
  %sv_any34 = getelementptr inbounds %struct.io, %struct.io* %45, i32 0, i32 0
  %46 = load %struct.xpvio*, %struct.xpvio** %sv_any34, align 8
  %xio_lines = getelementptr inbounds %struct.xpvio, %struct.xpvio* %46, i32 0, i32 10
  store i64 0, i64* %xio_lines, align 8
  %47 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr35 = getelementptr inbounds %struct.sv*, %struct.sv** %47, i32 1
  store %struct.sv** %incdec.ptr35, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr35, align 8
  br label %if.end.38

if.else.36:                                       ; preds = %cond.end.27
  %48 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr37 = getelementptr inbounds %struct.sv*, %struct.sv** %48, i32 1
  store %struct.sv** %incdec.ptr37, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr37, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.32
  %49 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %49, %struct.sv*** @PL_stack_sp, align 8
  %50 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %50, i32 0, i32 0
  %51 = load %struct.op*, %struct.op** %op_next, align 8
  ret %struct.op* %51
}

declare signext i8 @Perl_do_open(%struct.gv*, i8*, i32, i32, i32, i32, %struct._PerlIO**) #1

declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

declare i8* @Perl_sv_pvutf8n_force(%struct.sv*, i64*) #1

declare i64 @Perl_sv_len_utf8(%struct.sv*) #1

declare i8* @Perl_utf8_hop(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i64 @read(i32, i8*, i64) #1

declare i32 @Perl_PerlIO_error(%struct._PerlIO**) #1

declare void @Perl_sv_catsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_syswrite() #0 {
entry:
  %sp = alloca %struct.sv**, align 8
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** %sp, align 8
  %2 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %3 = load i32*, i32** @PL_markstack_ptr, align 8
  %4 = load i32, i32* %3, align 4
  %conv = sext i32 %4 to i64
  %sub = sub nsw i64 %sub.ptr.div, %conv
  %conv1 = trunc i64 %sub to i32
  store i32 %conv1, i32* %items, align 4
  %5 = load i32, i32* %items, align 4
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %6 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast3 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast4 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %sub.ptr.div6 = sdiv exact i64 %sub.ptr.sub5, 8
  %cmp7 = icmp slt i64 %sub.ptr.div6, 1
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  %9 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %8, %struct.sv** %9, i32 1)
  store %struct.sv** %call, %struct.sv*** %sp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %11 = load %struct.sv*, %struct.sv** %10, align 8
  %call10 = call i64 @Perl_sv_len(%struct.sv* %11)
  %call11 = call %struct.sv* @Perl_newSViv(i64 %call10)
  %call12 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call11)
  store %struct.sv* %call12, %struct.sv** %sv, align 8
  %12 = load %struct.sv*, %struct.sv** %sv, align 8
  %13 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %13, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* %12, %struct.sv** %incdec.ptr, align 8
  %14 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %14, %struct.sv*** @PL_stack_sp, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  %call14 = call %struct.op* @Perl_pp_send()
  ret %struct.op* %call14
}

declare i64 @Perl_sv_len(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_send() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %origmark = alloca i32, align 4
  %targ = alloca %struct.sv*, align 8
  %gv = alloca %struct.gv*, align 8
  %io = alloca %struct.io*, align 8
  %bufsv = alloca %struct.sv*, align 8
  %buffer = alloca i8*, align 8
  %length = alloca i64, align 8
  %retval1 = alloca i64, align 8
  %blen = alloca i64, align 8
  %mg = alloca %struct.magic*, align 8
  %sv = alloca %struct.sv*, align 8
  %tmp = alloca i32, align 4
  %offset = alloca i64, align 8
  %tmp279 = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %origmark, align 4
  %6 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %6, i32 0, i32 3
  %7 = load i64, i64* %op_targ, align 8
  %8 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %8, i64 %7
  %9 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %9, %struct.sv** %targ, align 8
  %10 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr2 = getelementptr inbounds %struct.sv*, %struct.sv** %10, i32 1
  store %struct.sv** %incdec.ptr2, %struct.sv*** %mark, align 8
  %11 = load %struct.sv*, %struct.sv** %incdec.ptr2, align 8
  %12 = bitcast %struct.sv* %11 to %struct.gv*
  store %struct.gv* %12, %struct.gv** %gv, align 8
  %13 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %13, i32 0, i32 4
  %14 = load i16, i16* %op_type, align 2
  %conv3 = zext i16 %14 to i32
  %cmp = icmp eq i32 %conv3, 213
  br i1 %cmp, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %entry
  %15 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool = icmp ne %struct.gv* %15, null
  br i1 %tobool, label %land.lhs.true.5, label %if.end.47

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %16 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool6 = icmp ne %struct.gv* %16, null
  br i1 %tobool6, label %land.lhs.true.7, label %cond.false

land.lhs.true.7:                                  ; preds = %land.lhs.true.5
  %17 = load %struct.gv*, %struct.gv** %gv, align 8
  %18 = bitcast %struct.gv* %17 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 2
  %19 = load i32, i32* %sv_flags, align 4
  %and = and i32 %19, 255
  %cmp8 = icmp eq i32 %and, 13
  br i1 %cmp8, label %land.lhs.true.10, label %cond.false

land.lhs.true.10:                                 ; preds = %land.lhs.true.7
  %20 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %20, i32 0, i32 0
  %21 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %21, i32 0, i32 7
  %22 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool11 = icmp ne %struct.gp* %22, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.10
  %23 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any12 = getelementptr inbounds %struct.gv, %struct.gv* %23, i32 0, i32 0
  %24 = load %struct.xpvgv*, %struct.xpvgv** %sv_any12, align 8
  %xgv_gp13 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %24, i32 0, i32 7
  %25 = load %struct.gp*, %struct.gp** %xgv_gp13, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %25, i32 0, i32 2
  %26 = load %struct.io*, %struct.io** %gp_io, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.10, %land.lhs.true.7, %land.lhs.true.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.io* [ %26, %cond.true ], [ null, %cond.false ]
  store %struct.io* %cond, %struct.io** %io, align 8
  %tobool14 = icmp ne %struct.io* %cond, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.47

land.lhs.true.15:                                 ; preds = %cond.end
  %27 = load %struct.io*, %struct.io** %io, align 8
  %28 = bitcast %struct.io* %27 to %struct.sv*
  %sv_flags16 = getelementptr inbounds %struct.sv, %struct.sv* %28, i32 0, i32 2
  %29 = load i32, i32* %sv_flags16, align 4
  %and17 = and i32 %29, 32768
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %land.lhs.true.15
  %30 = load %struct.io*, %struct.io** %io, align 8
  %31 = bitcast %struct.io* %30 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %31, i32 113)
  br label %cond.end.21

cond.false.20:                                    ; preds = %land.lhs.true.15
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.19
  %cond22 = phi %struct.magic* [ %call, %cond.true.19 ], [ null, %cond.false.20 ]
  store %struct.magic* %cond22, %struct.magic** %mg, align 8
  %tobool23 = icmp ne %struct.magic* %cond22, null
  br i1 %tobool23, label %if.then, label %if.end.47

if.then:                                          ; preds = %cond.end.21
  %32 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr24 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %incdec.ptr24, i32** @PL_markstack_ptr, align 8
  %33 = load i32*, i32** @PL_markstack_max, align 8
  %cmp25 = icmp eq i32* %incdec.ptr24, %33
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %if.then
  call void @Perl_markstack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then.27, %if.then
  %34 = load %struct.sv**, %struct.sv*** %mark, align 8
  %add.ptr28 = getelementptr inbounds %struct.sv*, %struct.sv** %34, i64 -1
  %35 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast29 = ptrtoint %struct.sv** %add.ptr28 to i64
  %sub.ptr.rhs.cast30 = ptrtoint %struct.sv** %35 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %sub.ptr.div32 = sdiv exact i64 %sub.ptr.sub31, 8
  %conv33 = trunc i64 %sub.ptr.div32 to i32
  %36 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv33, i32* %36, align 4
  store i32 %conv33, i32* %tmp
  %37 = load i32, i32* %tmp
  %38 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %38, i32 0, i32 5
  %39 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool34 = icmp ne %struct.sv* %39, null
  br i1 %tobool34, label %cond.true.35, label %cond.false.37

cond.true.35:                                     ; preds = %if.end
  %40 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj36 = getelementptr inbounds %struct.magic, %struct.magic* %40, i32 0, i32 5
  %41 = load %struct.sv*, %struct.sv** %mg_obj36, align 8
  br label %cond.end.40

cond.false.37:                                    ; preds = %if.end
  %42 = load %struct.io*, %struct.io** %io, align 8
  %43 = bitcast %struct.io* %42 to %struct.sv*
  %call38 = call %struct.sv* @Perl_newRV(%struct.sv* %43)
  %call39 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call38)
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.37, %cond.true.35
  %cond41 = phi %struct.sv* [ %41, %cond.true.35 ], [ %call39, %cond.false.37 ]
  %44 = load %struct.sv**, %struct.sv*** %mark, align 8
  store %struct.sv* %cond41, %struct.sv** %44, align 8
  call void @Perl_push_scope()
  %call42 = call i32 @Perl_call_method(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 0)
  call void @Perl_pop_scope()
  %45 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %45, %struct.sv*** %sp, align 8
  %46 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr43 = getelementptr inbounds %struct.sv*, %struct.sv** %46, i32 -1
  store %struct.sv** %incdec.ptr43, %struct.sv*** %sp, align 8
  %47 = load %struct.sv*, %struct.sv** %46, align 8
  store %struct.sv* %47, %struct.sv** %sv, align 8
  %48 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %49 = load i32, i32* %origmark, align 4
  %idx.ext44 = sext i32 %49 to i64
  %add.ptr45 = getelementptr inbounds %struct.sv*, %struct.sv** %48, i64 %idx.ext44
  store %struct.sv** %add.ptr45, %struct.sv*** %sp, align 8
  %50 = load %struct.sv*, %struct.sv** %sv, align 8
  %51 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr46 = getelementptr inbounds %struct.sv*, %struct.sv** %51, i32 1
  store %struct.sv** %incdec.ptr46, %struct.sv*** %sp, align 8
  store %struct.sv* %50, %struct.sv** %incdec.ptr46, align 8
  %52 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %52, %struct.sv*** @PL_stack_sp, align 8
  %53 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %53, i32 0, i32 0
  %54 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %54, %struct.op** %retval
  br label %return

if.end.47:                                        ; preds = %cond.end.21, %cond.end, %land.lhs.true, %entry
  %55 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool48 = icmp ne %struct.gv* %55, null
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.end.47
  br label %say_undef

if.end.50:                                        ; preds = %if.end.47
  %56 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr51 = getelementptr inbounds %struct.sv*, %struct.sv** %56, i32 1
  store %struct.sv** %incdec.ptr51, %struct.sv*** %mark, align 8
  %57 = load %struct.sv*, %struct.sv** %incdec.ptr51, align 8
  store %struct.sv* %57, %struct.sv** %bufsv, align 8
  %58 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr52 = getelementptr inbounds %struct.sv*, %struct.sv** %58, i32 1
  store %struct.sv** %incdec.ptr52, %struct.sv*** %mark, align 8
  %59 = load %struct.sv*, %struct.sv** %incdec.ptr52, align 8
  store %struct.sv* %59, %struct.sv** @PL_Sv, align 8
  %60 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags53 = getelementptr inbounds %struct.sv, %struct.sv* %60, i32 0, i32 2
  %61 = load i32, i32* %sv_flags53, align 4
  %and54 = and i32 %61, 65536
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %cond.true.56, label %cond.false.58

cond.true.56:                                     ; preds = %if.end.50
  %62 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any57 = getelementptr inbounds %struct.sv, %struct.sv* %62, i32 0, i32 0
  %63 = load i8*, i8** %sv_any57, align 8
  %64 = bitcast i8* %63 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %64, i32 0, i32 3
  %65 = load i64, i64* %xiv_iv, align 8
  br label %cond.end.60

cond.false.58:                                    ; preds = %if.end.50
  %66 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call59 = call i64 @Perl_sv_2iv(%struct.sv* %66)
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.58, %cond.true.56
  %cond61 = phi i64 [ %65, %cond.true.56 ], [ %call59, %cond.false.58 ]
  store i64 %cond61, i64* %length, align 8
  %67 = load i64, i64* %length, align 8
  %cmp62 = icmp slt i64 %67, 0
  br i1 %cmp62, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %cond.end.60
  %call65 = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0))
  store %struct.op* %call65, %struct.op** %retval
  br label %return

if.end.66:                                        ; preds = %cond.end.60
  %call67 = call i32* @__errno_location()
  store i32 0, i32* %call67, align 4
  %68 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool68 = icmp ne %struct.gv* %68, null
  br i1 %tobool68, label %land.lhs.true.69, label %cond.false.82

land.lhs.true.69:                                 ; preds = %if.end.66
  %69 = load %struct.gv*, %struct.gv** %gv, align 8
  %70 = bitcast %struct.gv* %69 to %struct.sv*
  %sv_flags70 = getelementptr inbounds %struct.sv, %struct.sv* %70, i32 0, i32 2
  %71 = load i32, i32* %sv_flags70, align 4
  %and71 = and i32 %71, 255
  %cmp72 = icmp eq i32 %and71, 13
  br i1 %cmp72, label %land.lhs.true.74, label %cond.false.82

land.lhs.true.74:                                 ; preds = %land.lhs.true.69
  %72 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any75 = getelementptr inbounds %struct.gv, %struct.gv* %72, i32 0, i32 0
  %73 = load %struct.xpvgv*, %struct.xpvgv** %sv_any75, align 8
  %xgv_gp76 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %73, i32 0, i32 7
  %74 = load %struct.gp*, %struct.gp** %xgv_gp76, align 8
  %tobool77 = icmp ne %struct.gp* %74, null
  br i1 %tobool77, label %cond.true.78, label %cond.false.82

cond.true.78:                                     ; preds = %land.lhs.true.74
  %75 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any79 = getelementptr inbounds %struct.gv, %struct.gv* %75, i32 0, i32 0
  %76 = load %struct.xpvgv*, %struct.xpvgv** %sv_any79, align 8
  %xgv_gp80 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %76, i32 0, i32 7
  %77 = load %struct.gp*, %struct.gp** %xgv_gp80, align 8
  %gp_io81 = getelementptr inbounds %struct.gp, %struct.gp* %77, i32 0, i32 2
  %78 = load %struct.io*, %struct.io** %gp_io81, align 8
  br label %cond.end.83

cond.false.82:                                    ; preds = %land.lhs.true.74, %land.lhs.true.69, %if.end.66
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.82, %cond.true.78
  %cond84 = phi %struct.io* [ %78, %cond.true.78 ], [ null, %cond.false.82 ]
  store %struct.io* %cond84, %struct.io** %io, align 8
  %79 = load %struct.io*, %struct.io** %io, align 8
  %tobool85 = icmp ne %struct.io* %79, null
  br i1 %tobool85, label %lor.lhs.false, label %if.then.88

lor.lhs.false:                                    ; preds = %cond.end.83
  %80 = load %struct.io*, %struct.io** %io, align 8
  %sv_any86 = getelementptr inbounds %struct.io, %struct.io* %80, i32 0, i32 0
  %81 = load %struct.xpvio*, %struct.xpvio** %sv_any86, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %81, i32 0, i32 7
  %82 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  %tobool87 = icmp ne %struct._PerlIO** %82, null
  br i1 %tobool87, label %if.end.119, label %if.then.88

if.then.88:                                       ; preds = %lor.lhs.false, %cond.end.83
  store i64 -1, i64* %retval1, align 8
  %83 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %83, i32 0, i32 14
  %84 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp89 = icmp ne %struct.sv* %84, null
  br i1 %cmp89, label %land.lhs.true.91, label %lor.lhs.false.106

land.lhs.true.91:                                 ; preds = %if.then.88
  %85 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings92 = getelementptr inbounds %struct.cop, %struct.cop* %85, i32 0, i32 14
  %86 = load %struct.sv*, %struct.sv** %cop_warnings92, align 8
  %cmp93 = icmp ne %struct.sv* %86, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp93, label %land.lhs.true.95, label %lor.lhs.false.106

land.lhs.true.95:                                 ; preds = %land.lhs.true.91
  %87 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings96 = getelementptr inbounds %struct.cop, %struct.cop* %87, i32 0, i32 14
  %88 = load %struct.sv*, %struct.sv** %cop_warnings96, align 8
  %cmp97 = icmp eq %struct.sv* %88, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp97, label %if.then.114, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %land.lhs.true.95
  %89 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings100 = getelementptr inbounds %struct.cop, %struct.cop* %89, i32 0, i32 14
  %90 = load %struct.sv*, %struct.sv** %cop_warnings100, align 8
  %sv_any101 = getelementptr inbounds %struct.sv, %struct.sv* %90, i32 0, i32 0
  %91 = load i8*, i8** %sv_any101, align 8
  %92 = bitcast i8* %91 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %92, i32 0, i32 0
  %93 = load i8*, i8** %xpv_pv, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %93, i64 1
  %94 = load i8, i8* %arrayidx102, align 1
  %conv103 = sext i8 %94 to i32
  %and104 = and i32 %conv103, 16
  %tobool105 = icmp ne i32 %and104, 0
  br i1 %tobool105, label %if.then.114, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %lor.lhs.false.99, %land.lhs.true.91, %if.then.88
  %95 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings107 = getelementptr inbounds %struct.cop, %struct.cop* %95, i32 0, i32 14
  %96 = load %struct.sv*, %struct.sv** %cop_warnings107, align 8
  %cmp108 = icmp eq %struct.sv* %96, null
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.117

land.lhs.true.110:                                ; preds = %lor.lhs.false.106
  %97 = load i8, i8* @PL_dowarn, align 1
  %conv111 = zext i8 %97 to i32
  %and112 = and i32 %conv111, 1
  %tobool113 = icmp ne i32 %and112, 0
  br i1 %tobool113, label %if.then.114, label %if.end.117

if.then.114:                                      ; preds = %land.lhs.true.110, %lor.lhs.false.99, %land.lhs.true.95
  %98 = load %struct.gv*, %struct.gv** %gv, align 8
  %99 = load %struct.io*, %struct.io** %io, align 8
  %100 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type115 = getelementptr inbounds %struct.op, %struct.op* %100, i32 0, i32 4
  %101 = load i16, i16* %op_type115, align 2
  %conv116 = zext i16 %101 to i32
  call void @Perl_report_evil_fh(%struct.gv* %98, %struct.io* %99, i32 %conv116)
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.114, %land.lhs.true.110, %lor.lhs.false.106
  %call118 = call i32* @__errno_location()
  store i32 9, i32* %call118, align 4
  br label %say_undef

if.end.119:                                       ; preds = %lor.lhs.false
  %102 = load %struct.io*, %struct.io** %io, align 8
  %sv_any120 = getelementptr inbounds %struct.io, %struct.io* %102, i32 0, i32 0
  %103 = load %struct.xpvio*, %struct.xpvio** %sv_any120, align 8
  %xio_ifp121 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %103, i32 0, i32 7
  %104 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp121, align 8
  %call122 = call i32 @PerlIO_isutf8(%struct._PerlIO** %104)
  %tobool123 = icmp ne i32 %call122, 0
  br i1 %tobool123, label %if.then.124, label %if.else.145

if.then.124:                                      ; preds = %if.end.119
  %105 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_flags125 = getelementptr inbounds %struct.sv, %struct.sv* %105, i32 0, i32 2
  %106 = load i32, i32* %sv_flags125, align 4
  %and126 = and i32 %106, 536870912
  %tobool127 = icmp ne i32 %and126, 0
  br i1 %tobool127, label %if.else, label %if.then.128

if.then.128:                                      ; preds = %if.then.124
  %107 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %call129 = call %struct.sv* @Perl_newSVsv(%struct.sv* %107)
  %call130 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call129)
  store %struct.sv* %call130, %struct.sv** %bufsv, align 8
  %108 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %call131 = call i8* @Perl_sv_2pvutf8(%struct.sv* %108, i64* %blen)
  store i8* %call131, i8** %buffer, align 8
  br label %if.end.144

if.else:                                          ; preds = %if.then.124
  %109 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_flags132 = getelementptr inbounds %struct.sv, %struct.sv* %109, i32 0, i32 2
  %110 = load i32, i32* %sv_flags132, align 4
  %and133 = and i32 %110, 262144
  %cmp134 = icmp eq i32 %and133, 262144
  br i1 %cmp134, label %cond.true.136, label %cond.false.140

cond.true.136:                                    ; preds = %if.else
  %111 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_any137 = getelementptr inbounds %struct.sv, %struct.sv* %111, i32 0, i32 0
  %112 = load i8*, i8** %sv_any137, align 8
  %113 = bitcast i8* %112 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %113, i32 0, i32 1
  %114 = load i64, i64* %xpv_cur, align 8
  store i64 %114, i64* %blen, align 8
  %115 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_any138 = getelementptr inbounds %struct.sv, %struct.sv* %115, i32 0, i32 0
  %116 = load i8*, i8** %sv_any138, align 8
  %117 = bitcast i8* %116 to %struct.xpv*
  %xpv_pv139 = getelementptr inbounds %struct.xpv, %struct.xpv* %117, i32 0, i32 0
  %118 = load i8*, i8** %xpv_pv139, align 8
  br label %cond.end.142

cond.false.140:                                   ; preds = %if.else
  %119 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %call141 = call i8* @Perl_sv_2pv_flags(%struct.sv* %119, i64* %blen, i32 2)
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.140, %cond.true.136
  %cond143 = phi i8* [ %118, %cond.true.136 ], [ %call141, %cond.false.140 ]
  store i8* %cond143, i8** %buffer, align 8
  br label %if.end.144

if.end.144:                                       ; preds = %cond.end.142, %if.then.128
  br label %if.end.171

if.else.145:                                      ; preds = %if.end.119
  %120 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_flags146 = getelementptr inbounds %struct.sv, %struct.sv* %120, i32 0, i32 2
  %121 = load i32, i32* %sv_flags146, align 4
  %and147 = and i32 %121, 536870912
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %land.lhs.true.149, label %if.end.157

land.lhs.true.149:                                ; preds = %if.else.145
  %122 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private = getelementptr inbounds %struct.cop, %struct.cop* %122, i32 0, i32 7
  %123 = load i8, i8* %op_private, align 1
  %conv150 = zext i8 %123 to i32
  %and151 = and i32 %conv150, 8
  %tobool152 = icmp ne i32 %and151, 0
  br i1 %tobool152, label %if.end.157, label %if.then.153

if.then.153:                                      ; preds = %land.lhs.true.149
  %124 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %call154 = call %struct.sv* @Perl_newSVsv(%struct.sv* %124)
  %call155 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call154)
  store %struct.sv* %call155, %struct.sv** %bufsv, align 8
  %125 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %call156 = call signext i8 @Perl_sv_utf8_downgrade(%struct.sv* %125, i8 signext 0)
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.153, %land.lhs.true.149, %if.else.145
  %126 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_flags158 = getelementptr inbounds %struct.sv, %struct.sv* %126, i32 0, i32 2
  %127 = load i32, i32* %sv_flags158, align 4
  %and159 = and i32 %127, 262144
  %cmp160 = icmp eq i32 %and159, 262144
  br i1 %cmp160, label %cond.true.162, label %cond.false.167

cond.true.162:                                    ; preds = %if.end.157
  %128 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_any163 = getelementptr inbounds %struct.sv, %struct.sv* %128, i32 0, i32 0
  %129 = load i8*, i8** %sv_any163, align 8
  %130 = bitcast i8* %129 to %struct.xpv*
  %xpv_cur164 = getelementptr inbounds %struct.xpv, %struct.xpv* %130, i32 0, i32 1
  %131 = load i64, i64* %xpv_cur164, align 8
  store i64 %131, i64* %blen, align 8
  %132 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_any165 = getelementptr inbounds %struct.sv, %struct.sv* %132, i32 0, i32 0
  %133 = load i8*, i8** %sv_any165, align 8
  %134 = bitcast i8* %133 to %struct.xpv*
  %xpv_pv166 = getelementptr inbounds %struct.xpv, %struct.xpv* %134, i32 0, i32 0
  %135 = load i8*, i8** %xpv_pv166, align 8
  br label %cond.end.169

cond.false.167:                                   ; preds = %if.end.157
  %136 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %call168 = call i8* @Perl_sv_2pv_flags(%struct.sv* %136, i64* %blen, i32 2)
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.false.167, %cond.true.162
  %cond170 = phi i8* [ %135, %cond.true.162 ], [ %call168, %cond.false.167 ]
  store i8* %cond170, i8** %buffer, align 8
  br label %if.end.171

if.end.171:                                       ; preds = %cond.end.169, %if.end.144
  %137 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type172 = getelementptr inbounds %struct.op, %struct.op* %137, i32 0, i32 4
  %138 = load i16, i16* %op_type172, align 2
  %conv173 = zext i16 %138 to i32
  %cmp174 = icmp eq i32 %conv173, 213
  br i1 %cmp174, label %if.then.176, label %if.else.252

if.then.176:                                      ; preds = %if.end.171
  %139 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_flags178 = getelementptr inbounds %struct.sv, %struct.sv* %139, i32 0, i32 2
  %140 = load i32, i32* %sv_flags178, align 4
  %and179 = and i32 %140, 536870912
  %tobool180 = icmp ne i32 %and179, 0
  br i1 %tobool180, label %land.lhs.true.181, label %if.end.188

land.lhs.true.181:                                ; preds = %if.then.176
  %141 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private182 = getelementptr inbounds %struct.cop, %struct.cop* %141, i32 0, i32 7
  %142 = load i8, i8* %op_private182, align 1
  %conv183 = zext i8 %142 to i32
  %and184 = and i32 %conv183, 8
  %tobool185 = icmp ne i32 %and184, 0
  br i1 %tobool185, label %if.end.188, label %if.then.186

if.then.186:                                      ; preds = %land.lhs.true.181
  %143 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %call187 = call i64 @Perl_sv_len_utf8(%struct.sv* %143)
  store i64 %call187, i64* %blen, align 8
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.186, %land.lhs.true.181, %if.then.176
  %144 = load %struct.sv**, %struct.sv*** %mark, align 8
  %145 = load %struct.sv**, %struct.sv*** %sp, align 8
  %cmp189 = icmp ult %struct.sv** %144, %145
  br i1 %cmp189, label %if.then.191, label %if.else.221

if.then.191:                                      ; preds = %if.end.188
  %146 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr192 = getelementptr inbounds %struct.sv*, %struct.sv** %146, i32 1
  store %struct.sv** %incdec.ptr192, %struct.sv*** %mark, align 8
  %147 = load %struct.sv*, %struct.sv** %incdec.ptr192, align 8
  store %struct.sv* %147, %struct.sv** @PL_Sv, align 8
  %148 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags193 = getelementptr inbounds %struct.sv, %struct.sv* %148, i32 0, i32 2
  %149 = load i32, i32* %sv_flags193, align 4
  %and194 = and i32 %149, 65536
  %tobool195 = icmp ne i32 %and194, 0
  br i1 %tobool195, label %cond.true.196, label %cond.false.199

cond.true.196:                                    ; preds = %if.then.191
  %150 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any197 = getelementptr inbounds %struct.sv, %struct.sv* %150, i32 0, i32 0
  %151 = load i8*, i8** %sv_any197, align 8
  %152 = bitcast i8* %151 to %struct.xpviv*
  %xiv_iv198 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %152, i32 0, i32 3
  %153 = load i64, i64* %xiv_iv198, align 8
  br label %cond.end.201

cond.false.199:                                   ; preds = %if.then.191
  %154 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call200 = call i64 @Perl_sv_2iv(%struct.sv* %154)
  br label %cond.end.201

cond.end.201:                                     ; preds = %cond.false.199, %cond.true.196
  %cond202 = phi i64 [ %153, %cond.true.196 ], [ %call200, %cond.false.199 ]
  store i64 %cond202, i64* %offset, align 8
  %155 = load i64, i64* %offset, align 8
  %cmp203 = icmp slt i64 %155, 0
  br i1 %cmp203, label %if.then.205, label %if.else.211

if.then.205:                                      ; preds = %cond.end.201
  %156 = load i64, i64* %offset, align 8
  %sub = sub nsw i64 0, %156
  %157 = load i64, i64* %blen, align 8
  %cmp206 = icmp sgt i64 %sub, %157
  br i1 %cmp206, label %if.then.208, label %if.end.210

if.then.208:                                      ; preds = %if.then.205
  %call209 = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0))
  store %struct.op* %call209, %struct.op** %retval
  br label %return

if.end.210:                                       ; preds = %if.then.205
  %158 = load i64, i64* %blen, align 8
  %159 = load i64, i64* %offset, align 8
  %add = add i64 %159, %158
  store i64 %add, i64* %offset, align 8
  br label %if.end.220

if.else.211:                                      ; preds = %cond.end.201
  %160 = load i64, i64* %offset, align 8
  %161 = load i64, i64* %blen, align 8
  %cmp212 = icmp sge i64 %160, %161
  br i1 %cmp212, label %land.lhs.true.214, label %if.end.219

land.lhs.true.214:                                ; preds = %if.else.211
  %162 = load i64, i64* %blen, align 8
  %cmp215 = icmp ugt i64 %162, 0
  br i1 %cmp215, label %if.then.217, label %if.end.219

if.then.217:                                      ; preds = %land.lhs.true.214
  %call218 = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0))
  store %struct.op* %call218, %struct.op** %retval
  br label %return

if.end.219:                                       ; preds = %land.lhs.true.214, %if.else.211
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %if.end.210
  br label %if.end.222

if.else.221:                                      ; preds = %if.end.188
  store i64 0, i64* %offset, align 8
  br label %if.end.222

if.end.222:                                       ; preds = %if.else.221, %if.end.220
  %163 = load i64, i64* %length, align 8
  %164 = load i64, i64* %blen, align 8
  %165 = load i64, i64* %offset, align 8
  %sub223 = sub i64 %164, %165
  %cmp224 = icmp ugt i64 %163, %sub223
  br i1 %cmp224, label %if.then.226, label %if.end.228

if.then.226:                                      ; preds = %if.end.222
  %166 = load i64, i64* %blen, align 8
  %167 = load i64, i64* %offset, align 8
  %sub227 = sub i64 %166, %167
  store i64 %sub227, i64* %length, align 8
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.226, %if.end.222
  %168 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_flags229 = getelementptr inbounds %struct.sv, %struct.sv* %168, i32 0, i32 2
  %169 = load i32, i32* %sv_flags229, align 4
  %and230 = and i32 %169, 536870912
  %tobool231 = icmp ne i32 %and230, 0
  br i1 %tobool231, label %land.lhs.true.232, label %if.else.245

land.lhs.true.232:                                ; preds = %if.end.228
  %170 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private233 = getelementptr inbounds %struct.cop, %struct.cop* %170, i32 0, i32 7
  %171 = load i8, i8* %op_private233, align 1
  %conv234 = zext i8 %171 to i32
  %and235 = and i32 %conv234, 8
  %tobool236 = icmp ne i32 %and235, 0
  br i1 %tobool236, label %if.else.245, label %if.then.237

if.then.237:                                      ; preds = %land.lhs.true.232
  %172 = load i8*, i8** %buffer, align 8
  %173 = load i64, i64* %offset, align 8
  %conv238 = trunc i64 %173 to i32
  %call239 = call i8* @Perl_utf8_hop(i8* %172, i32 %conv238)
  store i8* %call239, i8** %buffer, align 8
  %174 = load i8*, i8** %buffer, align 8
  %175 = load i64, i64* %length, align 8
  %conv240 = trunc i64 %175 to i32
  %call241 = call i8* @Perl_utf8_hop(i8* %174, i32 %conv240)
  %176 = load i8*, i8** %buffer, align 8
  %sub.ptr.lhs.cast242 = ptrtoint i8* %call241 to i64
  %sub.ptr.rhs.cast243 = ptrtoint i8* %176 to i64
  %sub.ptr.sub244 = sub i64 %sub.ptr.lhs.cast242, %sub.ptr.rhs.cast243
  store i64 %sub.ptr.sub244, i64* %length, align 8
  br label %if.end.247

if.else.245:                                      ; preds = %land.lhs.true.232, %if.end.228
  %177 = load i8*, i8** %buffer, align 8
  %178 = load i64, i64* %offset, align 8
  %add.ptr246 = getelementptr inbounds i8, i8* %177, i64 %178
  store i8* %add.ptr246, i8** %buffer, align 8
  br label %if.end.247

if.end.247:                                       ; preds = %if.else.245, %if.then.237
  %179 = load %struct.io*, %struct.io** %io, align 8
  %sv_any248 = getelementptr inbounds %struct.io, %struct.io* %179, i32 0, i32 0
  %180 = load %struct.xpvio*, %struct.xpvio** %sv_any248, align 8
  %xio_ifp249 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %180, i32 0, i32 7
  %181 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp249, align 8
  %call250 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %181)
  %182 = load i8*, i8** %buffer, align 8
  %183 = load i64, i64* %length, align 8
  %call251 = call i64 @write(i32 %call250, i8* %182, i64 %183)
  store i64 %call251, i64* %retval1, align 8
  br label %if.end.254

if.else.252:                                      ; preds = %if.end.171
  %call253 = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0))
  store %struct.op* %call253, %struct.op** %retval
  br label %return

if.end.254:                                       ; preds = %if.end.247
  %184 = load i64, i64* %retval1, align 8
  %cmp255 = icmp slt i64 %184, 0
  br i1 %cmp255, label %if.then.257, label %if.end.258

if.then.257:                                      ; preds = %if.end.254
  br label %say_undef

if.end.258:                                       ; preds = %if.end.254
  %185 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %186 = load i32, i32* %origmark, align 4
  %idx.ext259 = sext i32 %186 to i64
  %add.ptr260 = getelementptr inbounds %struct.sv*, %struct.sv** %185, i64 %idx.ext259
  store %struct.sv** %add.ptr260, %struct.sv*** %sp, align 8
  %187 = load %struct.sv*, %struct.sv** %bufsv, align 8
  %sv_flags261 = getelementptr inbounds %struct.sv, %struct.sv* %187, i32 0, i32 2
  %188 = load i32, i32* %sv_flags261, align 4
  %and262 = and i32 %188, 536870912
  %tobool263 = icmp ne i32 %and262, 0
  br i1 %tobool263, label %land.lhs.true.264, label %if.end.272

land.lhs.true.264:                                ; preds = %if.end.258
  %189 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private265 = getelementptr inbounds %struct.cop, %struct.cop* %189, i32 0, i32 7
  %190 = load i8, i8* %op_private265, align 1
  %conv266 = zext i8 %190 to i32
  %and267 = and i32 %conv266, 8
  %tobool268 = icmp ne i32 %and267, 0
  br i1 %tobool268, label %if.end.272, label %if.then.269

if.then.269:                                      ; preds = %land.lhs.true.264
  %191 = load i8*, i8** %buffer, align 8
  %192 = load i8*, i8** %buffer, align 8
  %193 = load i64, i64* %retval1, align 8
  %add.ptr270 = getelementptr inbounds i8, i8* %192, i64 %193
  %call271 = call i64 @Perl_utf8_length(i8* %191, i8* %add.ptr270)
  store i64 %call271, i64* %retval1, align 8
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.269, %land.lhs.true.264, %if.end.258
  %194 = load %struct.sv*, %struct.sv** %targ, align 8
  %195 = load i64, i64* %retval1, align 8
  call void @Perl_sv_setiv(%struct.sv* %194, i64 %195)
  %196 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags273 = getelementptr inbounds %struct.sv, %struct.sv* %196, i32 0, i32 2
  %197 = load i32, i32* %sv_flags273, align 4
  %and274 = and i32 %197, 16384
  %tobool275 = icmp ne i32 %and274, 0
  br i1 %tobool275, label %if.then.276, label %if.end.278

if.then.276:                                      ; preds = %if.end.272
  %198 = load %struct.sv*, %struct.sv** %targ, align 8
  %call277 = call i32 @Perl_mg_set(%struct.sv* %198)
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.276, %if.end.272
  %199 = load %struct.sv*, %struct.sv** %targ, align 8
  %200 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr280 = getelementptr inbounds %struct.sv*, %struct.sv** %200, i32 1
  store %struct.sv** %incdec.ptr280, %struct.sv*** %sp, align 8
  store %struct.sv* %199, %struct.sv** %incdec.ptr280, align 8
  store %struct.sv* %199, %struct.sv** %tmp279
  %201 = load %struct.sv*, %struct.sv** %tmp279
  %202 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %202, %struct.sv*** @PL_stack_sp, align 8
  %203 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next281 = getelementptr inbounds %struct.op, %struct.op* %203, i32 0, i32 0
  %204 = load %struct.op*, %struct.op** %op_next281, align 8
  store %struct.op* %204, %struct.op** %retval
  br label %return

say_undef:                                        ; preds = %if.then.257, %if.end.117, %if.then.49
  %205 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %206 = load i32, i32* %origmark, align 4
  %idx.ext282 = sext i32 %206 to i64
  %add.ptr283 = getelementptr inbounds %struct.sv*, %struct.sv** %205, i64 %idx.ext282
  store %struct.sv** %add.ptr283, %struct.sv*** %sp, align 8
  %207 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr284 = getelementptr inbounds %struct.sv*, %struct.sv** %207, i32 1
  store %struct.sv** %incdec.ptr284, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr284, align 8
  %208 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %208, %struct.sv*** @PL_stack_sp, align 8
  %209 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next285 = getelementptr inbounds %struct.op, %struct.op* %209, i32 0, i32 0
  %210 = load %struct.op*, %struct.op** %op_next285, align 8
  store %struct.op* %210, %struct.op** %retval
  br label %return

return:                                           ; preds = %say_undef, %if.end.278, %if.else.252, %if.then.217, %if.then.208, %if.then.64, %cond.end.40
  %211 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %211
}

declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

declare i8* @Perl_sv_2pvutf8(%struct.sv*, i64*) #1

declare signext i8 @Perl_sv_utf8_downgrade(%struct.sv*, i8 signext) #1

declare i64 @write(i32, i8*, i64) #1

declare i64 @Perl_utf8_length(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_recv() #0 {
entry:
  %call = call %struct.op* @Perl_pp_sysread()
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_eof() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %gv = alloca %struct.gv*, align 8
  %io = alloca %struct.io*, align 8
  %mg = alloca %struct.magic*, align 8
  %io5 = alloca %struct.io*, align 8
  %tmp = alloca i32, align 4
  %tmp120 = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 7
  %2 = load i8, i8* %op_private, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 15
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else.71

if.then:                                          ; preds = %entry
  %3 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %3, i32 0, i32 6
  %4 = load i8, i8* %op_flags, align 1
  %conv2 = zext i8 %4 to i32
  %and3 = and i32 %conv2, 128
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %if.then.4, label %if.else.69

if.then.4:                                        ; preds = %if.then
  %5 = load %struct.gv*, %struct.gv** @PL_argvgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %5, i32 0, i32 0
  %6 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %6, i32 0, i32 7
  %7 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_egv = getelementptr inbounds %struct.gp, %struct.gp* %7, i32 0, i32 6
  %8 = load %struct.gv*, %struct.gv** %gp_egv, align 8
  store %struct.gv* %8, %struct.gv** @PL_last_in_gv, align 8
  store %struct.gv* %8, %struct.gv** %gv, align 8
  %9 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool6 = icmp ne %struct.gv* %9, null
  br i1 %tobool6, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.4
  %10 = load %struct.gv*, %struct.gv** %gv, align 8
  %11 = bitcast %struct.gv* %10 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 2
  %12 = load i32, i32* %sv_flags, align 4
  %and7 = and i32 %12, 255
  %cmp8 = icmp eq i32 %and7, 13
  br i1 %cmp8, label %land.lhs.true.10, label %cond.false

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %13 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any11 = getelementptr inbounds %struct.gv, %struct.gv* %13, i32 0, i32 0
  %14 = load %struct.xpvgv*, %struct.xpvgv** %sv_any11, align 8
  %xgv_gp12 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %14, i32 0, i32 7
  %15 = load %struct.gp*, %struct.gp** %xgv_gp12, align 8
  %tobool13 = icmp ne %struct.gp* %15, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.10
  %16 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any14 = getelementptr inbounds %struct.gv, %struct.gv* %16, i32 0, i32 0
  %17 = load %struct.xpvgv*, %struct.xpvgv** %sv_any14, align 8
  %xgv_gp15 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %17, i32 0, i32 7
  %18 = load %struct.gp*, %struct.gp** %xgv_gp15, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %18, i32 0, i32 2
  %19 = load %struct.io*, %struct.io** %gp_io, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.10, %land.lhs.true, %if.then.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.io* [ %19, %cond.true ], [ null, %cond.false ]
  store %struct.io* %cond, %struct.io** %io5, align 8
  %20 = load %struct.io*, %struct.io** %io5, align 8
  %tobool16 = icmp ne %struct.io* %20, null
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.68

land.lhs.true.17:                                 ; preds = %cond.end
  %21 = load %struct.io*, %struct.io** %io5, align 8
  %sv_any18 = getelementptr inbounds %struct.io, %struct.io* %21, i32 0, i32 0
  %22 = load %struct.xpvio*, %struct.xpvio** %sv_any18, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %22, i32 0, i32 7
  %23 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  %tobool19 = icmp ne %struct._PerlIO** %23, null
  br i1 %tobool19, label %if.end.68, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true.17
  %24 = load %struct.io*, %struct.io** %io5, align 8
  %sv_any21 = getelementptr inbounds %struct.io, %struct.io* %24, i32 0, i32 0
  %25 = load %struct.xpvio*, %struct.xpvio** %sv_any21, align 8
  %xio_flags = getelementptr inbounds %struct.xpvio, %struct.xpvio* %25, i32 0, i32 22
  %26 = load i8, i8* %xio_flags, align 1
  %conv22 = sext i8 %26 to i32
  %and23 = and i32 %conv22, 2
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %land.lhs.true.25, label %if.else

land.lhs.true.25:                                 ; preds = %if.then.20
  %27 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any26 = getelementptr inbounds %struct.gv, %struct.gv* %27, i32 0, i32 0
  %28 = load %struct.xpvgv*, %struct.xpvgv** %sv_any26, align 8
  %xgv_gp27 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %28, i32 0, i32 7
  %29 = load %struct.gp*, %struct.gp** %xgv_gp27, align 8
  %gp_av = getelementptr inbounds %struct.gp, %struct.gp* %29, i32 0, i32 4
  %30 = load %struct.av*, %struct.av** %gp_av, align 8
  %tobool28 = icmp ne %struct.av* %30, null
  br i1 %tobool28, label %cond.true.29, label %cond.false.33

cond.true.29:                                     ; preds = %land.lhs.true.25
  %31 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any30 = getelementptr inbounds %struct.gv, %struct.gv* %31, i32 0, i32 0
  %32 = load %struct.xpvgv*, %struct.xpvgv** %sv_any30, align 8
  %xgv_gp31 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %32, i32 0, i32 7
  %33 = load %struct.gp*, %struct.gp** %xgv_gp31, align 8
  %gp_av32 = getelementptr inbounds %struct.gp, %struct.gp* %33, i32 0, i32 4
  %34 = load %struct.av*, %struct.av** %gp_av32, align 8
  br label %cond.end.37

cond.false.33:                                    ; preds = %land.lhs.true.25
  %35 = load %struct.gv*, %struct.gv** %gv, align 8
  %call = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %35)
  %sv_any34 = getelementptr inbounds %struct.gv, %struct.gv* %call, i32 0, i32 0
  %36 = load %struct.xpvgv*, %struct.xpvgv** %sv_any34, align 8
  %xgv_gp35 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %36, i32 0, i32 7
  %37 = load %struct.gp*, %struct.gp** %xgv_gp35, align 8
  %gp_av36 = getelementptr inbounds %struct.gp, %struct.gp* %37, i32 0, i32 4
  %38 = load %struct.av*, %struct.av** %gp_av36, align 8
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.33, %cond.true.29
  %cond38 = phi %struct.av* [ %34, %cond.true.29 ], [ %38, %cond.false.33 ]
  %call39 = call i32 @Perl_av_len(%struct.av* %cond38)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %cond.end.37
  %39 = load %struct.io*, %struct.io** %io5, align 8
  %sv_any43 = getelementptr inbounds %struct.io, %struct.io* %39, i32 0, i32 0
  %40 = load %struct.xpvio*, %struct.xpvio** %sv_any43, align 8
  %xio_lines = getelementptr inbounds %struct.xpvio, %struct.xpvio* %40, i32 0, i32 10
  store i64 0, i64* %xio_lines, align 8
  %41 = load %struct.io*, %struct.io** %io5, align 8
  %sv_any44 = getelementptr inbounds %struct.io, %struct.io* %41, i32 0, i32 0
  %42 = load %struct.xpvio*, %struct.xpvio** %sv_any44, align 8
  %xio_flags45 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %42, i32 0, i32 22
  %43 = load i8, i8* %xio_flags45, align 1
  %conv46 = sext i8 %43 to i32
  %and47 = and i32 %conv46, -3
  %conv48 = trunc i32 %and47 to i8
  store i8 %conv48, i8* %xio_flags45, align 1
  %44 = load %struct.gv*, %struct.gv** %gv, align 8
  %call49 = call signext i8 @Perl_do_open(%struct.gv* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i32 1, i32 0, i32 0, i32 0, %struct._PerlIO** null)
  %45 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any50 = getelementptr inbounds %struct.gv, %struct.gv* %45, i32 0, i32 0
  %46 = load %struct.xpvgv*, %struct.xpvgv** %sv_any50, align 8
  %xgv_gp51 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %46, i32 0, i32 7
  %47 = load %struct.gp*, %struct.gp** %xgv_gp51, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %47, i32 0, i32 0
  %48 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  call void @Perl_sv_setpvn(%struct.sv* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i64 1)
  %49 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any52 = getelementptr inbounds %struct.gv, %struct.gv* %49, i32 0, i32 0
  %50 = load %struct.xpvgv*, %struct.xpvgv** %sv_any52, align 8
  %xgv_gp53 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %50, i32 0, i32 7
  %51 = load %struct.gp*, %struct.gp** %xgv_gp53, align 8
  %gp_sv54 = getelementptr inbounds %struct.gp, %struct.gp* %51, i32 0, i32 0
  %52 = load %struct.sv*, %struct.sv** %gp_sv54, align 8
  %sv_flags55 = getelementptr inbounds %struct.sv, %struct.sv* %52, i32 0, i32 2
  %53 = load i32, i32* %sv_flags55, align 4
  %and56 = and i32 %53, 16384
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then.58, label %if.end

if.then.58:                                       ; preds = %if.then.42
  %54 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any59 = getelementptr inbounds %struct.gv, %struct.gv* %54, i32 0, i32 0
  %55 = load %struct.xpvgv*, %struct.xpvgv** %sv_any59, align 8
  %xgv_gp60 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %55, i32 0, i32 7
  %56 = load %struct.gp*, %struct.gp** %xgv_gp60, align 8
  %gp_sv61 = getelementptr inbounds %struct.gp, %struct.gp* %56, i32 0, i32 0
  %57 = load %struct.sv*, %struct.sv** %gp_sv61, align 8
  %call62 = call i32 @Perl_mg_set(%struct.sv* %57)
  br label %if.end

if.end:                                           ; preds = %if.then.58, %if.then.42
  br label %if.end.67

if.else:                                          ; preds = %cond.end.37, %if.then.20
  %58 = load %struct.gv*, %struct.gv** %gv, align 8
  %call63 = call %struct._PerlIO** @Perl_nextargv(%struct.gv* %58)
  %tobool64 = icmp ne %struct._PerlIO** %call63, null
  br i1 %tobool64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %if.else
  %59 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %59, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr, align 8
  %60 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %60, %struct.sv*** @PL_stack_sp, align 8
  %61 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %61, i32 0, i32 0
  %62 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %62, %struct.op** %retval
  br label %return

if.end.66:                                        ; preds = %if.else
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %land.lhs.true.17, %cond.end
  br label %if.end.70

if.else.69:                                       ; preds = %if.then
  %63 = load %struct.gv*, %struct.gv** @PL_last_in_gv, align 8
  store %struct.gv* %63, %struct.gv** %gv, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.69, %if.end.68
  br label %if.end.73

if.else.71:                                       ; preds = %entry
  %64 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr72 = getelementptr inbounds %struct.sv*, %struct.sv** %64, i32 -1
  store %struct.sv** %incdec.ptr72, %struct.sv*** %sp, align 8
  %65 = load %struct.sv*, %struct.sv** %64, align 8
  %66 = bitcast %struct.sv* %65 to %struct.gv*
  store %struct.gv* %66, %struct.gv** @PL_last_in_gv, align 8
  store %struct.gv* %66, %struct.gv** %gv, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.71, %if.end.70
  %67 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool74 = icmp ne %struct.gv* %67, null
  br i1 %tobool74, label %land.lhs.true.75, label %if.end.132

land.lhs.true.75:                                 ; preds = %if.end.73
  %68 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool76 = icmp ne %struct.gv* %68, null
  br i1 %tobool76, label %land.lhs.true.77, label %cond.false.90

land.lhs.true.77:                                 ; preds = %land.lhs.true.75
  %69 = load %struct.gv*, %struct.gv** %gv, align 8
  %70 = bitcast %struct.gv* %69 to %struct.sv*
  %sv_flags78 = getelementptr inbounds %struct.sv, %struct.sv* %70, i32 0, i32 2
  %71 = load i32, i32* %sv_flags78, align 4
  %and79 = and i32 %71, 255
  %cmp80 = icmp eq i32 %and79, 13
  br i1 %cmp80, label %land.lhs.true.82, label %cond.false.90

land.lhs.true.82:                                 ; preds = %land.lhs.true.77
  %72 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any83 = getelementptr inbounds %struct.gv, %struct.gv* %72, i32 0, i32 0
  %73 = load %struct.xpvgv*, %struct.xpvgv** %sv_any83, align 8
  %xgv_gp84 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %73, i32 0, i32 7
  %74 = load %struct.gp*, %struct.gp** %xgv_gp84, align 8
  %tobool85 = icmp ne %struct.gp* %74, null
  br i1 %tobool85, label %cond.true.86, label %cond.false.90

cond.true.86:                                     ; preds = %land.lhs.true.82
  %75 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any87 = getelementptr inbounds %struct.gv, %struct.gv* %75, i32 0, i32 0
  %76 = load %struct.xpvgv*, %struct.xpvgv** %sv_any87, align 8
  %xgv_gp88 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %76, i32 0, i32 7
  %77 = load %struct.gp*, %struct.gp** %xgv_gp88, align 8
  %gp_io89 = getelementptr inbounds %struct.gp, %struct.gp* %77, i32 0, i32 2
  %78 = load %struct.io*, %struct.io** %gp_io89, align 8
  br label %cond.end.91

cond.false.90:                                    ; preds = %land.lhs.true.82, %land.lhs.true.77, %land.lhs.true.75
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.90, %cond.true.86
  %cond92 = phi %struct.io* [ %78, %cond.true.86 ], [ null, %cond.false.90 ]
  store %struct.io* %cond92, %struct.io** %io, align 8
  %tobool93 = icmp ne %struct.io* %cond92, null
  br i1 %tobool93, label %land.lhs.true.94, label %if.end.132

land.lhs.true.94:                                 ; preds = %cond.end.91
  %79 = load %struct.io*, %struct.io** %io, align 8
  %80 = bitcast %struct.io* %79 to %struct.sv*
  %sv_flags95 = getelementptr inbounds %struct.sv, %struct.sv* %80, i32 0, i32 2
  %81 = load i32, i32* %sv_flags95, align 4
  %and96 = and i32 %81, 32768
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %cond.true.98, label %cond.false.100

cond.true.98:                                     ; preds = %land.lhs.true.94
  %82 = load %struct.io*, %struct.io** %io, align 8
  %83 = bitcast %struct.io* %82 to %struct.sv*
  %call99 = call %struct.magic* @Perl_mg_find(%struct.sv* %83, i32 113)
  br label %cond.end.101

cond.false.100:                                   ; preds = %land.lhs.true.94
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.100, %cond.true.98
  %cond102 = phi %struct.magic* [ %call99, %cond.true.98 ], [ null, %cond.false.100 ]
  store %struct.magic* %cond102, %struct.magic** %mg, align 8
  %tobool103 = icmp ne %struct.magic* %cond102, null
  br i1 %tobool103, label %if.then.104, label %if.end.132

if.then.104:                                      ; preds = %cond.end.101
  %84 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr105 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %incdec.ptr105, i32** @PL_markstack_ptr, align 8
  %85 = load i32*, i32** @PL_markstack_max, align 8
  %cmp106 = icmp eq i32* %incdec.ptr105, %85
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.then.104
  call void @Perl_markstack_grow()
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %if.then.104
  %86 = load %struct.sv**, %struct.sv*** %sp, align 8
  %87 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %86 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %87 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv110 = trunc i64 %sub.ptr.div to i32
  %88 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv110, i32* %88, align 4
  store i32 %conv110, i32* %tmp
  %89 = load i32, i32* %tmp
  %90 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %91 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast111 = ptrtoint %struct.sv** %90 to i64
  %sub.ptr.rhs.cast112 = ptrtoint %struct.sv** %91 to i64
  %sub.ptr.sub113 = sub i64 %sub.ptr.lhs.cast111, %sub.ptr.rhs.cast112
  %sub.ptr.div114 = sdiv exact i64 %sub.ptr.sub113, 8
  %cmp115 = icmp slt i64 %sub.ptr.div114, 1
  br i1 %cmp115, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.end.109
  %92 = load %struct.sv**, %struct.sv*** %sp, align 8
  %93 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call118 = call %struct.sv** @Perl_stack_grow(%struct.sv** %92, %struct.sv** %93, i32 1)
  store %struct.sv** %call118, %struct.sv*** %sp, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.end.109
  %94 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %94, i32 0, i32 5
  %95 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool121 = icmp ne %struct.sv* %95, null
  br i1 %tobool121, label %cond.true.122, label %cond.false.124

cond.true.122:                                    ; preds = %if.end.119
  %96 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj123 = getelementptr inbounds %struct.magic, %struct.magic* %96, i32 0, i32 5
  %97 = load %struct.sv*, %struct.sv** %mg_obj123, align 8
  br label %cond.end.127

cond.false.124:                                   ; preds = %if.end.119
  %98 = load %struct.io*, %struct.io** %io, align 8
  %99 = bitcast %struct.io* %98 to %struct.sv*
  %call125 = call %struct.sv* @Perl_newRV(%struct.sv* %99)
  %call126 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call125)
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.124, %cond.true.122
  %cond128 = phi %struct.sv* [ %97, %cond.true.122 ], [ %call126, %cond.false.124 ]
  %100 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr129 = getelementptr inbounds %struct.sv*, %struct.sv** %100, i32 1
  store %struct.sv** %incdec.ptr129, %struct.sv*** %sp, align 8
  store %struct.sv* %cond128, %struct.sv** %incdec.ptr129, align 8
  store %struct.sv* %cond128, %struct.sv** %tmp120
  %101 = load %struct.sv*, %struct.sv** %tmp120
  %102 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %102, %struct.sv*** @PL_stack_sp, align 8
  call void @Perl_push_scope()
  %call130 = call i32 @Perl_call_method(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i32 0)
  call void @Perl_pop_scope()
  %103 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %103, %struct.sv*** %sp, align 8
  %104 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %104, %struct.sv*** @PL_stack_sp, align 8
  %105 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next131 = getelementptr inbounds %struct.op, %struct.op* %105, i32 0, i32 0
  %106 = load %struct.op*, %struct.op** %op_next131, align 8
  store %struct.op* %106, %struct.op** %retval
  br label %return

if.end.132:                                       ; preds = %cond.end.101, %cond.end.91, %if.end.73
  %107 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool133 = icmp ne %struct.gv* %107, null
  br i1 %tobool133, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.end.132
  %108 = load %struct.gv*, %struct.gv** %gv, align 8
  %call134 = call signext i8 @Perl_do_eof(%struct.gv* %108)
  %conv135 = sext i8 %call134 to i32
  %tobool136 = icmp ne i32 %conv135, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.132
  %109 = phi i1 [ true, %if.end.132 ], [ %tobool136, %lor.rhs ]
  %cond137 = select i1 %109, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  %110 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr138 = getelementptr inbounds %struct.sv*, %struct.sv** %110, i32 1
  store %struct.sv** %incdec.ptr138, %struct.sv*** %sp, align 8
  store %struct.sv* %cond137, %struct.sv** %incdec.ptr138, align 8
  %111 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %111, %struct.sv*** @PL_stack_sp, align 8
  %112 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next139 = getelementptr inbounds %struct.op, %struct.op* %112, i32 0, i32 0
  %113 = load %struct.op*, %struct.op** %op_next139, align 8
  store %struct.op* %113, %struct.op** %retval
  br label %return

return:                                           ; preds = %lor.end, %cond.end.127, %if.then.65
  %114 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %114
}

declare i32 @Perl_av_len(%struct.av*) #1

declare %struct.gv* @Perl_gv_AVadd(%struct.gv*) #1

declare %struct._PerlIO** @Perl_nextargv(%struct.gv*) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_tell() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %gv = alloca %struct.gv*, align 8
  %io = alloca %struct.io*, align 8
  %mg = alloca %struct.magic*, align 8
  %tmp = alloca i32, align 4
  %tmp37 = alloca %struct.sv*, align 8
  %tmp56 = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 3
  %2 = load i64, i64* %op_targ, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %4, %struct.sv** %targ, align 8
  %5 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %5, i32 0, i32 7
  %6 = load i8, i8* %op_private, align 1
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 15
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.gv*, %struct.gv** @PL_last_in_gv, align 8
  store %struct.gv* %7, %struct.gv** %gv, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %8, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %9 = load %struct.sv*, %struct.sv** %8, align 8
  %10 = bitcast %struct.sv* %9 to %struct.gv*
  store %struct.gv* %10, %struct.gv** @PL_last_in_gv, align 8
  store %struct.gv* %10, %struct.gv** %gv, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool = icmp ne %struct.gv* %11, null
  br i1 %tobool, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool2 = icmp ne %struct.gv* %12, null
  br i1 %tobool2, label %land.lhs.true.3, label %cond.false

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %13 = load %struct.gv*, %struct.gv** %gv, align 8
  %14 = bitcast %struct.gv* %13 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 2
  %15 = load i32, i32* %sv_flags, align 4
  %and4 = and i32 %15, 255
  %cmp5 = icmp eq i32 %and4, 13
  br i1 %cmp5, label %land.lhs.true.7, label %cond.false

land.lhs.true.7:                                  ; preds = %land.lhs.true.3
  %16 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %16, i32 0, i32 0
  %17 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %17, i32 0, i32 7
  %18 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool8 = icmp ne %struct.gp* %18, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.7
  %19 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any9 = getelementptr inbounds %struct.gv, %struct.gv* %19, i32 0, i32 0
  %20 = load %struct.xpvgv*, %struct.xpvgv** %sv_any9, align 8
  %xgv_gp10 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %20, i32 0, i32 7
  %21 = load %struct.gp*, %struct.gp** %xgv_gp10, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %21, i32 0, i32 2
  %22 = load %struct.io*, %struct.io** %gp_io, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.7, %land.lhs.true.3, %land.lhs.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.io* [ %22, %cond.true ], [ null, %cond.false ]
  store %struct.io* %cond, %struct.io** %io, align 8
  %tobool11 = icmp ne %struct.io* %cond, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.48

land.lhs.true.12:                                 ; preds = %cond.end
  %23 = load %struct.io*, %struct.io** %io, align 8
  %24 = bitcast %struct.io* %23 to %struct.sv*
  %sv_flags13 = getelementptr inbounds %struct.sv, %struct.sv* %24, i32 0, i32 2
  %25 = load i32, i32* %sv_flags13, align 4
  %and14 = and i32 %25, 32768
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %land.lhs.true.12
  %26 = load %struct.io*, %struct.io** %io, align 8
  %27 = bitcast %struct.io* %26 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %27, i32 113)
  br label %cond.end.18

cond.false.17:                                    ; preds = %land.lhs.true.12
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.16
  %cond19 = phi %struct.magic* [ %call, %cond.true.16 ], [ null, %cond.false.17 ]
  store %struct.magic* %cond19, %struct.magic** %mg, align 8
  %tobool20 = icmp ne %struct.magic* %cond19, null
  br i1 %tobool20, label %if.then.21, label %if.end.48

if.then.21:                                       ; preds = %cond.end.18
  %28 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr22 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %incdec.ptr22, i32** @PL_markstack_ptr, align 8
  %29 = load i32*, i32** @PL_markstack_max, align 8
  %cmp23 = icmp eq i32* %incdec.ptr22, %29
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.21
  call void @Perl_markstack_grow()
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.then.21
  %30 = load %struct.sv**, %struct.sv*** %sp, align 8
  %31 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %30 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %31 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv27 = trunc i64 %sub.ptr.div to i32
  %32 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv27, i32* %32, align 4
  store i32 %conv27, i32* %tmp
  %33 = load i32, i32* %tmp
  %34 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %35 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast28 = ptrtoint %struct.sv** %34 to i64
  %sub.ptr.rhs.cast29 = ptrtoint %struct.sv** %35 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %sub.ptr.div31 = sdiv exact i64 %sub.ptr.sub30, 8
  %cmp32 = icmp slt i64 %sub.ptr.div31, 1
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.26
  %36 = load %struct.sv**, %struct.sv*** %sp, align 8
  %37 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call35 = call %struct.sv** @Perl_stack_grow(%struct.sv** %36, %struct.sv** %37, i32 1)
  store %struct.sv** %call35, %struct.sv*** %sp, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.26
  %38 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %38, i32 0, i32 5
  %39 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool38 = icmp ne %struct.sv* %39, null
  br i1 %tobool38, label %cond.true.39, label %cond.false.41

cond.true.39:                                     ; preds = %if.end.36
  %40 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj40 = getelementptr inbounds %struct.magic, %struct.magic* %40, i32 0, i32 5
  %41 = load %struct.sv*, %struct.sv** %mg_obj40, align 8
  br label %cond.end.44

cond.false.41:                                    ; preds = %if.end.36
  %42 = load %struct.io*, %struct.io** %io, align 8
  %43 = bitcast %struct.io* %42 to %struct.sv*
  %call42 = call %struct.sv* @Perl_newRV(%struct.sv* %43)
  %call43 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call42)
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.41, %cond.true.39
  %cond45 = phi %struct.sv* [ %41, %cond.true.39 ], [ %call43, %cond.false.41 ]
  %44 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr46 = getelementptr inbounds %struct.sv*, %struct.sv** %44, i32 1
  store %struct.sv** %incdec.ptr46, %struct.sv*** %sp, align 8
  store %struct.sv* %cond45, %struct.sv** %incdec.ptr46, align 8
  store %struct.sv* %cond45, %struct.sv** %tmp37
  %45 = load %struct.sv*, %struct.sv** %tmp37
  %46 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %46, %struct.sv*** @PL_stack_sp, align 8
  call void @Perl_push_scope()
  %call47 = call i32 @Perl_call_method(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 0)
  call void @Perl_pop_scope()
  %47 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %47, %struct.sv*** %sp, align 8
  %48 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %48, %struct.sv*** @PL_stack_sp, align 8
  %49 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %49, i32 0, i32 0
  %50 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %50, %struct.op** %retval
  br label %return

if.end.48:                                        ; preds = %cond.end.18, %cond.end, %if.end
  %51 = load %struct.sv*, %struct.sv** %targ, align 8
  %52 = load %struct.gv*, %struct.gv** %gv, align 8
  %call49 = call i64 @Perl_do_tell(%struct.gv* %52)
  call void @Perl_sv_setiv(%struct.sv* %51, i64 %call49)
  %53 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags50 = getelementptr inbounds %struct.sv, %struct.sv* %53, i32 0, i32 2
  %54 = load i32, i32* %sv_flags50, align 4
  %and51 = and i32 %54, 16384
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end.48
  %55 = load %struct.sv*, %struct.sv** %targ, align 8
  %call54 = call i32 @Perl_mg_set(%struct.sv* %55)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.end.48
  %56 = load %struct.sv*, %struct.sv** %targ, align 8
  %57 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr57 = getelementptr inbounds %struct.sv*, %struct.sv** %57, i32 1
  store %struct.sv** %incdec.ptr57, %struct.sv*** %sp, align 8
  store %struct.sv* %56, %struct.sv** %incdec.ptr57, align 8
  store %struct.sv* %56, %struct.sv** %tmp56
  %58 = load %struct.sv*, %struct.sv** %tmp56
  %59 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %59, %struct.sv*** @PL_stack_sp, align 8
  %60 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next58 = getelementptr inbounds %struct.op, %struct.op* %60, i32 0, i32 0
  %61 = load %struct.op*, %struct.op** %op_next58, align 8
  store %struct.op* %61, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.55, %cond.end.44
  %62 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %62
}

declare i64 @Perl_do_tell(%struct.gv*) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_seek() #0 {
entry:
  %call = call %struct.op* @Perl_pp_sysseek()
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_sysseek() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %gv = alloca %struct.gv*, align 8
  %io = alloca %struct.io*, align 8
  %whence = alloca i32, align 4
  %offset = alloca i64, align 8
  %mg = alloca %struct.magic*, align 8
  %tmp = alloca i32, align 4
  %tmp53 = alloca %struct.sv*, align 8
  %tmp72 = alloca %struct.sv*, align 8
  %tmp85 = alloca %struct.sv*, align 8
  %sought = alloca i64, align 8
  %sv = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %2 = load %struct.sv*, %struct.sv** %1, align 8
  store %struct.sv* %2, %struct.sv** @PL_Sv, align 8
  %3 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and = and i32 %4, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 0
  %6 = load i8*, i8** %sv_any, align 8
  %7 = bitcast i8* %6 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %7, i32 0, i32 3
  %8 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %call, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %whence, align 4
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.sv*, %struct.sv** %10, i32 -1
  store %struct.sv** %incdec.ptr1, %struct.sv*** %sp, align 8
  %11 = load %struct.sv*, %struct.sv** %10, align 8
  store %struct.sv* %11, %struct.sv** @PL_Sv, align 8
  %12 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags2 = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 2
  %13 = load i32, i32* %sv_flags2, align 4
  %and3 = and i32 %13, 65536
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %cond.true.5, label %cond.false.8

cond.true.5:                                      ; preds = %cond.end
  %14 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any6 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any6, align 8
  %16 = bitcast i8* %15 to %struct.xpviv*
  %xiv_iv7 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %16, i32 0, i32 3
  %17 = load i64, i64* %xiv_iv7, align 8
  br label %cond.end.10

cond.false.8:                                     ; preds = %cond.end
  %18 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call9 = call i64 @Perl_sv_2iv(%struct.sv* %18)
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.true.5
  %cond11 = phi i64 [ %17, %cond.true.5 ], [ %call9, %cond.false.8 ]
  store i64 %cond11, i64* %offset, align 8
  %19 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr12 = getelementptr inbounds %struct.sv*, %struct.sv** %19, i32 -1
  store %struct.sv** %incdec.ptr12, %struct.sv*** %sp, align 8
  %20 = load %struct.sv*, %struct.sv** %19, align 8
  %21 = bitcast %struct.sv* %20 to %struct.gv*
  store %struct.gv* %21, %struct.gv** @PL_last_in_gv, align 8
  store %struct.gv* %21, %struct.gv** %gv, align 8
  %22 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool13 = icmp ne %struct.gv* %22, null
  br i1 %tobool13, label %land.lhs.true, label %if.end.91

land.lhs.true:                                    ; preds = %cond.end.10
  %23 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool14 = icmp ne %struct.gv* %23, null
  br i1 %tobool14, label %land.lhs.true.15, label %cond.false.25

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %24 = load %struct.gv*, %struct.gv** %gv, align 8
  %25 = bitcast %struct.gv* %24 to %struct.sv*
  %sv_flags16 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 2
  %26 = load i32, i32* %sv_flags16, align 4
  %and17 = and i32 %26, 255
  %cmp = icmp eq i32 %and17, 13
  br i1 %cmp, label %land.lhs.true.19, label %cond.false.25

land.lhs.true.19:                                 ; preds = %land.lhs.true.15
  %27 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any20 = getelementptr inbounds %struct.gv, %struct.gv* %27, i32 0, i32 0
  %28 = load %struct.xpvgv*, %struct.xpvgv** %sv_any20, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %28, i32 0, i32 7
  %29 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool21 = icmp ne %struct.gp* %29, null
  br i1 %tobool21, label %cond.true.22, label %cond.false.25

cond.true.22:                                     ; preds = %land.lhs.true.19
  %30 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any23 = getelementptr inbounds %struct.gv, %struct.gv* %30, i32 0, i32 0
  %31 = load %struct.xpvgv*, %struct.xpvgv** %sv_any23, align 8
  %xgv_gp24 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %31, i32 0, i32 7
  %32 = load %struct.gp*, %struct.gp** %xgv_gp24, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %32, i32 0, i32 2
  %33 = load %struct.io*, %struct.io** %gp_io, align 8
  br label %cond.end.26

cond.false.25:                                    ; preds = %land.lhs.true.19, %land.lhs.true.15, %land.lhs.true
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.22
  %cond27 = phi %struct.io* [ %33, %cond.true.22 ], [ null, %cond.false.25 ]
  store %struct.io* %cond27, %struct.io** %io, align 8
  %tobool28 = icmp ne %struct.io* %cond27, null
  br i1 %tobool28, label %land.lhs.true.29, label %if.end.91

land.lhs.true.29:                                 ; preds = %cond.end.26
  %34 = load %struct.io*, %struct.io** %io, align 8
  %35 = bitcast %struct.io* %34 to %struct.sv*
  %sv_flags30 = getelementptr inbounds %struct.sv, %struct.sv* %35, i32 0, i32 2
  %36 = load i32, i32* %sv_flags30, align 4
  %and31 = and i32 %36, 32768
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %cond.true.33, label %cond.false.35

cond.true.33:                                     ; preds = %land.lhs.true.29
  %37 = load %struct.io*, %struct.io** %io, align 8
  %38 = bitcast %struct.io* %37 to %struct.sv*
  %call34 = call %struct.magic* @Perl_mg_find(%struct.sv* %38, i32 113)
  br label %cond.end.36

cond.false.35:                                    ; preds = %land.lhs.true.29
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.33
  %cond37 = phi %struct.magic* [ %call34, %cond.true.33 ], [ null, %cond.false.35 ]
  store %struct.magic* %cond37, %struct.magic** %mg, align 8
  %tobool38 = icmp ne %struct.magic* %cond37, null
  br i1 %tobool38, label %if.then, label %if.end.91

if.then:                                          ; preds = %cond.end.36
  %39 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr39 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %incdec.ptr39, i32** @PL_markstack_ptr, align 8
  %40 = load i32*, i32** @PL_markstack_max, align 8
  %cmp40 = icmp eq i32* %incdec.ptr39, %40
  br i1 %cmp40, label %if.then.42, label %if.end

if.then.42:                                       ; preds = %if.then
  call void @Perl_markstack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then.42, %if.then
  %41 = load %struct.sv**, %struct.sv*** %sp, align 8
  %42 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %41 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %42 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv43 = trunc i64 %sub.ptr.div to i32
  %43 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv43, i32* %43, align 4
  store i32 %conv43, i32* %tmp
  %44 = load i32, i32* %tmp
  %45 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %46 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast44 = ptrtoint %struct.sv** %45 to i64
  %sub.ptr.rhs.cast45 = ptrtoint %struct.sv** %46 to i64
  %sub.ptr.sub46 = sub i64 %sub.ptr.lhs.cast44, %sub.ptr.rhs.cast45
  %sub.ptr.div47 = sdiv exact i64 %sub.ptr.sub46, 8
  %cmp48 = icmp slt i64 %sub.ptr.div47, 1
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end
  %47 = load %struct.sv**, %struct.sv*** %sp, align 8
  %48 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call51 = call %struct.sv** @Perl_stack_grow(%struct.sv** %47, %struct.sv** %48, i32 1)
  store %struct.sv** %call51, %struct.sv*** %sp, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end
  %49 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %49, i32 0, i32 5
  %50 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool54 = icmp ne %struct.sv* %50, null
  br i1 %tobool54, label %cond.true.55, label %cond.false.57

cond.true.55:                                     ; preds = %if.end.52
  %51 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj56 = getelementptr inbounds %struct.magic, %struct.magic* %51, i32 0, i32 5
  %52 = load %struct.sv*, %struct.sv** %mg_obj56, align 8
  br label %cond.end.60

cond.false.57:                                    ; preds = %if.end.52
  %53 = load %struct.io*, %struct.io** %io, align 8
  %54 = bitcast %struct.io* %53 to %struct.sv*
  %call58 = call %struct.sv* @Perl_newRV(%struct.sv* %54)
  %call59 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call58)
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.57, %cond.true.55
  %cond61 = phi %struct.sv* [ %52, %cond.true.55 ], [ %call59, %cond.false.57 ]
  %55 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr62 = getelementptr inbounds %struct.sv*, %struct.sv** %55, i32 1
  store %struct.sv** %incdec.ptr62, %struct.sv*** %sp, align 8
  store %struct.sv* %cond61, %struct.sv** %incdec.ptr62, align 8
  store %struct.sv* %cond61, %struct.sv** %tmp53
  %56 = load %struct.sv*, %struct.sv** %tmp53
  %57 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %58 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast63 = ptrtoint %struct.sv** %57 to i64
  %sub.ptr.rhs.cast64 = ptrtoint %struct.sv** %58 to i64
  %sub.ptr.sub65 = sub i64 %sub.ptr.lhs.cast63, %sub.ptr.rhs.cast64
  %sub.ptr.div66 = sdiv exact i64 %sub.ptr.sub65, 8
  %cmp67 = icmp slt i64 %sub.ptr.div66, 1
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %cond.end.60
  %59 = load %struct.sv**, %struct.sv*** %sp, align 8
  %60 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call70 = call %struct.sv** @Perl_stack_grow(%struct.sv** %59, %struct.sv** %60, i32 1)
  store %struct.sv** %call70, %struct.sv*** %sp, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %cond.end.60
  %61 = load i64, i64* %offset, align 8
  %call73 = call %struct.sv* @Perl_newSViv(i64 %61)
  %call74 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call73)
  %62 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr75 = getelementptr inbounds %struct.sv*, %struct.sv** %62, i32 1
  store %struct.sv** %incdec.ptr75, %struct.sv*** %sp, align 8
  store %struct.sv* %call74, %struct.sv** %incdec.ptr75, align 8
  store %struct.sv* %call74, %struct.sv** %tmp72
  %63 = load %struct.sv*, %struct.sv** %tmp72
  %64 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %65 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast76 = ptrtoint %struct.sv** %64 to i64
  %sub.ptr.rhs.cast77 = ptrtoint %struct.sv** %65 to i64
  %sub.ptr.sub78 = sub i64 %sub.ptr.lhs.cast76, %sub.ptr.rhs.cast77
  %sub.ptr.div79 = sdiv exact i64 %sub.ptr.sub78, 8
  %cmp80 = icmp slt i64 %sub.ptr.div79, 1
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.end.71
  %66 = load %struct.sv**, %struct.sv*** %sp, align 8
  %67 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call83 = call %struct.sv** @Perl_stack_grow(%struct.sv** %66, %struct.sv** %67, i32 1)
  store %struct.sv** %call83, %struct.sv*** %sp, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %if.end.71
  %68 = load i32, i32* %whence, align 4
  %conv86 = sext i32 %68 to i64
  %call87 = call %struct.sv* @Perl_newSViv(i64 %conv86)
  %call88 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call87)
  %69 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr89 = getelementptr inbounds %struct.sv*, %struct.sv** %69, i32 1
  store %struct.sv** %incdec.ptr89, %struct.sv*** %sp, align 8
  store %struct.sv* %call88, %struct.sv** %incdec.ptr89, align 8
  store %struct.sv* %call88, %struct.sv** %tmp85
  %70 = load %struct.sv*, %struct.sv** %tmp85
  %71 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %71, %struct.sv*** @PL_stack_sp, align 8
  call void @Perl_push_scope()
  %call90 = call i32 @Perl_call_method(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 0)
  call void @Perl_pop_scope()
  %72 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %72, %struct.sv*** %sp, align 8
  %73 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %73, %struct.sv*** @PL_stack_sp, align 8
  %74 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %74, i32 0, i32 0
  %75 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %75, %struct.op** %retval
  br label %return

if.end.91:                                        ; preds = %cond.end.36, %cond.end.26, %cond.end.10
  %76 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %76, i32 0, i32 4
  %77 = load i16, i16* %op_type, align 2
  %conv92 = zext i16 %77 to i32
  %cmp93 = icmp eq i32 %conv92, 218
  br i1 %cmp93, label %if.then.95, label %if.else

if.then.95:                                       ; preds = %if.end.91
  %78 = load %struct.gv*, %struct.gv** %gv, align 8
  %79 = load i64, i64* %offset, align 8
  %80 = load i32, i32* %whence, align 4
  %call96 = call signext i8 @Perl_do_seek(%struct.gv* %78, i64 %79, i32 %80)
  %conv97 = sext i8 %call96 to i32
  %tobool98 = icmp ne i32 %conv97, 0
  %cond99 = select i1 %tobool98, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  %81 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr100 = getelementptr inbounds %struct.sv*, %struct.sv** %81, i32 1
  store %struct.sv** %incdec.ptr100, %struct.sv*** %sp, align 8
  store %struct.sv* %cond99, %struct.sv** %incdec.ptr100, align 8
  br label %if.end.119

if.else:                                          ; preds = %if.end.91
  %82 = load %struct.gv*, %struct.gv** %gv, align 8
  %83 = load i64, i64* %offset, align 8
  %84 = load i32, i32* %whence, align 4
  %call102 = call i64 @Perl_do_sysseek(%struct.gv* %82, i64 %83, i32 %84)
  store i64 %call102, i64* %sought, align 8
  %85 = load i64, i64* %sought, align 8
  %cmp103 = icmp slt i64 %85, 0
  br i1 %cmp103, label %if.then.105, label %if.else.107

if.then.105:                                      ; preds = %if.else
  %86 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr106 = getelementptr inbounds %struct.sv*, %struct.sv** %86, i32 1
  store %struct.sv** %incdec.ptr106, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr106, align 8
  br label %if.end.118

if.else.107:                                      ; preds = %if.else
  %87 = load i64, i64* %sought, align 8
  %tobool109 = icmp ne i64 %87, 0
  br i1 %tobool109, label %cond.true.110, label %cond.false.112

cond.true.110:                                    ; preds = %if.else.107
  %88 = load i64, i64* %sought, align 8
  %call111 = call %struct.sv* @Perl_newSViv(i64 %88)
  br label %cond.end.114

cond.false.112:                                   ; preds = %if.else.107
  %call113 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @zero_but_true, i32 0, i32 0), i64 10)
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.112, %cond.true.110
  %cond115 = phi %struct.sv* [ %call111, %cond.true.110 ], [ %call113, %cond.false.112 ]
  store %struct.sv* %cond115, %struct.sv** %sv, align 8
  %89 = load %struct.sv*, %struct.sv** %sv, align 8
  %call116 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %89)
  %90 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr117 = getelementptr inbounds %struct.sv*, %struct.sv** %90, i32 1
  store %struct.sv** %incdec.ptr117, %struct.sv*** %sp, align 8
  store %struct.sv* %call116, %struct.sv** %incdec.ptr117, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %cond.end.114, %if.then.105
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.then.95
  %91 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %91, %struct.sv*** @PL_stack_sp, align 8
  %92 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next120 = getelementptr inbounds %struct.op, %struct.op* %92, i32 0, i32 0
  %93 = load %struct.op*, %struct.op** %op_next120, align 8
  store %struct.op* %93, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.119, %if.end.84
  %94 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %94
}

declare signext i8 @Perl_do_seek(%struct.gv*, i64, i32) #1

declare i64 @Perl_do_sysseek(%struct.gv*, i64, i32) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_truncate() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %len = alloca i64, align 8
  %n_a = alloca i64, align 8
  %result = alloca i32, align 4
  %tmpgv = alloca %struct.gv*, align 8
  %io = alloca %struct.io*, align 8
  %fp = alloca %struct._PerlIO**, align 8
  %sv = alloca %struct.sv*, align 8
  %name = alloca i8*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %2 = load %struct.sv*, %struct.sv** %1, align 8
  store %struct.sv* %2, %struct.sv** @PL_Sv, align 8
  %3 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and = and i32 %4, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 0
  %6 = load i8*, i8** %sv_any, align 8
  %7 = bitcast i8* %6 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %7, i32 0, i32 3
  %8 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %call, %cond.false ]
  store i64 %cond, i64* %len, align 8
  %call1 = call i32* @__errno_location()
  store i32 0, i32* %call1, align 4
  store i32 1, i32* %result, align 4
  %10 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %10, i32 0, i32 6
  %11 = load i8, i8* %op_flags, align 1
  %conv = zext i8 %11 to i32
  %and2 = and i32 %conv, 128
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.else.48

if.then:                                          ; preds = %cond.end
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr4 = getelementptr inbounds %struct.sv*, %struct.sv** %12, i32 -1
  store %struct.sv** %incdec.ptr4, %struct.sv*** %sp, align 8
  %13 = load %struct.sv*, %struct.sv** %12, align 8
  store %struct.sv* %13, %struct.sv** @PL_Sv, align 8
  %14 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags5 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 2
  %15 = load i32, i32* %sv_flags5, align 4
  %and6 = and i32 %15, 262144
  %cmp = icmp eq i32 %and6, 262144
  br i1 %cmp, label %cond.true.8, label %cond.false.11

cond.true.8:                                      ; preds = %if.then
  %16 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any9 = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 0
  %17 = load i8*, i8** %sv_any9, align 8
  %18 = bitcast i8* %17 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %18, i32 0, i32 1
  %19 = load i64, i64* %xpv_cur, align 8
  store i64 %19, i64* %n_a, align 8
  %20 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any10 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 0
  %21 = load i8*, i8** %sv_any10, align 8
  %22 = bitcast i8* %21 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %22, i32 0, i32 0
  %23 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.13

cond.false.11:                                    ; preds = %if.then
  %24 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call12 = call i8* @Perl_sv_2pv_flags(%struct.sv* %24, i64* %n_a, i32 2)
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.11, %cond.true.8
  %cond14 = phi i8* [ %23, %cond.true.8 ], [ %call12, %cond.false.11 ]
  %call15 = call %struct.gv* @Perl_gv_fetchpv(i8* %cond14, i32 0, i32 15)
  store %struct.gv* %call15, %struct.gv** %tmpgv, align 8
  br label %do_ftruncate_gv

do_ftruncate_gv:                                  ; preds = %if.then.65, %if.then.54, %cond.end.13
  %25 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %tobool16 = icmp ne %struct.gv* %25, null
  br i1 %tobool16, label %land.lhs.true, label %cond.false.28

land.lhs.true:                                    ; preds = %do_ftruncate_gv
  %26 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %27 = bitcast %struct.gv* %26 to %struct.sv*
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 2
  %28 = load i32, i32* %sv_flags17, align 4
  %and18 = and i32 %28, 255
  %cmp19 = icmp eq i32 %and18, 13
  br i1 %cmp19, label %land.lhs.true.21, label %cond.false.28

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %29 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any22 = getelementptr inbounds %struct.gv, %struct.gv* %29, i32 0, i32 0
  %30 = load %struct.xpvgv*, %struct.xpvgv** %sv_any22, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %30, i32 0, i32 7
  %31 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool23 = icmp ne %struct.gp* %31, null
  br i1 %tobool23, label %cond.true.24, label %cond.false.28

cond.true.24:                                     ; preds = %land.lhs.true.21
  %32 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any25 = getelementptr inbounds %struct.gv, %struct.gv* %32, i32 0, i32 0
  %33 = load %struct.xpvgv*, %struct.xpvgv** %sv_any25, align 8
  %xgv_gp26 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %33, i32 0, i32 7
  %34 = load %struct.gp*, %struct.gp** %xgv_gp26, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %34, i32 0, i32 2
  %35 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool27 = icmp ne %struct.io* %35, null
  br i1 %tobool27, label %if.else, label %if.then.29

cond.false.28:                                    ; preds = %land.lhs.true.21, %land.lhs.true, %do_ftruncate_gv
  br i1 false, label %if.else, label %if.then.29

if.then.29:                                       ; preds = %cond.false.28, %cond.true.24
  store i32 0, i32* %result, align 4
  br label %if.end.47

if.else:                                          ; preds = %cond.false.28, %cond.true.24
  %36 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any30 = getelementptr inbounds %struct.gv, %struct.gv* %36, i32 0, i32 0
  %37 = load %struct.xpvgv*, %struct.xpvgv** %sv_any30, align 8
  %xgv_gp31 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %37, i32 0, i32 7
  %38 = load %struct.gp*, %struct.gp** %xgv_gp31, align 8
  %gp_io32 = getelementptr inbounds %struct.gp, %struct.gp* %38, i32 0, i32 2
  %39 = load %struct.io*, %struct.io** %gp_io32, align 8
  store %struct.io* %39, %struct.io** %io, align 8
  br label %do_ftruncate_io

do_ftruncate_io:                                  ; preds = %if.then.79, %if.else
  %40 = load i8, i8* @PL_tainting, align 1
  %tobool33 = icmp ne i8 %40, 0
  br i1 %tobool33, label %if.then.34, label %if.end

if.then.34:                                       ; preds = %do_ftruncate_io
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.34, %do_ftruncate_io
  %41 = load %struct.io*, %struct.io** %io, align 8
  %sv_any35 = getelementptr inbounds %struct.io, %struct.io* %41, i32 0, i32 0
  %42 = load %struct.xpvio*, %struct.xpvio** %sv_any35, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %42, i32 0, i32 7
  %43 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  store %struct._PerlIO** %43, %struct._PerlIO*** %fp, align 8
  %tobool36 = icmp ne %struct._PerlIO** %43, null
  br i1 %tobool36, label %if.else.38, label %if.then.37

if.then.37:                                       ; preds = %if.end
  store i32 0, i32* %result, align 4
  br label %if.end.46

if.else.38:                                       ; preds = %if.end
  %44 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call39 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %44)
  %45 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call40 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %45)
  %46 = load i64, i64* %len, align 8
  %call41 = call i32 @ftruncate(i32 %call40, i64 %46)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.else.38
  store i32 0, i32* %result, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.else.38
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.37
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.29
  br label %if.end.106

if.else.48:                                       ; preds = %cond.end
  %47 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr49 = getelementptr inbounds %struct.sv*, %struct.sv** %47, i32 -1
  store %struct.sv** %incdec.ptr49, %struct.sv*** %sp, align 8
  %48 = load %struct.sv*, %struct.sv** %47, align 8
  store %struct.sv* %48, %struct.sv** %sv, align 8
  %49 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags50 = getelementptr inbounds %struct.sv, %struct.sv* %49, i32 0, i32 2
  %50 = load i32, i32* %sv_flags50, align 4
  %and51 = and i32 %50, 255
  %cmp52 = icmp eq i32 %and51, 13
  br i1 %cmp52, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.else.48
  %51 = load %struct.sv*, %struct.sv** %sv, align 8
  %52 = bitcast %struct.sv* %51 to %struct.gv*
  store %struct.gv* %52, %struct.gv** %tmpgv, align 8
  br label %do_ftruncate_gv

if.else.55:                                       ; preds = %if.else.48
  %53 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags56 = getelementptr inbounds %struct.sv, %struct.sv* %53, i32 0, i32 2
  %54 = load i32, i32* %sv_flags56, align 4
  %and57 = and i32 %54, 524288
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %land.lhs.true.59, label %if.else.68

land.lhs.true.59:                                 ; preds = %if.else.55
  %55 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any60 = getelementptr inbounds %struct.sv, %struct.sv* %55, i32 0, i32 0
  %56 = load i8*, i8** %sv_any60, align 8
  %57 = bitcast i8* %56 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %57, i32 0, i32 0
  %58 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_flags61 = getelementptr inbounds %struct.sv, %struct.sv* %58, i32 0, i32 2
  %59 = load i32, i32* %sv_flags61, align 4
  %and62 = and i32 %59, 255
  %cmp63 = icmp eq i32 %and62, 13
  br i1 %cmp63, label %if.then.65, label %if.else.68

if.then.65:                                       ; preds = %land.lhs.true.59
  %60 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any66 = getelementptr inbounds %struct.sv, %struct.sv* %60, i32 0, i32 0
  %61 = load i8*, i8** %sv_any66, align 8
  %62 = bitcast i8* %61 to %struct.xrv*
  %xrv_rv67 = getelementptr inbounds %struct.xrv, %struct.xrv* %62, i32 0, i32 0
  %63 = load %struct.sv*, %struct.sv** %xrv_rv67, align 8
  %64 = bitcast %struct.sv* %63 to %struct.gv*
  store %struct.gv* %64, %struct.gv** %tmpgv, align 8
  br label %do_ftruncate_gv

if.else.68:                                       ; preds = %land.lhs.true.59, %if.else.55
  %65 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags69 = getelementptr inbounds %struct.sv, %struct.sv* %65, i32 0, i32 2
  %66 = load i32, i32* %sv_flags69, align 4
  %and70 = and i32 %66, 524288
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %land.lhs.true.72, label %if.end.82

land.lhs.true.72:                                 ; preds = %if.else.68
  %67 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any73 = getelementptr inbounds %struct.sv, %struct.sv* %67, i32 0, i32 0
  %68 = load i8*, i8** %sv_any73, align 8
  %69 = bitcast i8* %68 to %struct.xrv*
  %xrv_rv74 = getelementptr inbounds %struct.xrv, %struct.xrv* %69, i32 0, i32 0
  %70 = load %struct.sv*, %struct.sv** %xrv_rv74, align 8
  %sv_flags75 = getelementptr inbounds %struct.sv, %struct.sv* %70, i32 0, i32 2
  %71 = load i32, i32* %sv_flags75, align 4
  %and76 = and i32 %71, 255
  %cmp77 = icmp eq i32 %and76, 15
  br i1 %cmp77, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %land.lhs.true.72
  %72 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any80 = getelementptr inbounds %struct.sv, %struct.sv* %72, i32 0, i32 0
  %73 = load i8*, i8** %sv_any80, align 8
  %74 = bitcast i8* %73 to %struct.xrv*
  %xrv_rv81 = getelementptr inbounds %struct.xrv, %struct.xrv* %74, i32 0, i32 0
  %75 = load %struct.sv*, %struct.sv** %xrv_rv81, align 8
  %76 = bitcast %struct.sv* %75 to %struct.io*
  store %struct.io* %76, %struct.io** %io, align 8
  br label %do_ftruncate_io

if.end.82:                                        ; preds = %land.lhs.true.72, %if.else.68
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83
  %77 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags85 = getelementptr inbounds %struct.sv, %struct.sv* %77, i32 0, i32 2
  %78 = load i32, i32* %sv_flags85, align 4
  %and86 = and i32 %78, 262144
  %cmp87 = icmp eq i32 %and86, 262144
  br i1 %cmp87, label %cond.true.89, label %cond.false.94

cond.true.89:                                     ; preds = %if.end.84
  %79 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any90 = getelementptr inbounds %struct.sv, %struct.sv* %79, i32 0, i32 0
  %80 = load i8*, i8** %sv_any90, align 8
  %81 = bitcast i8* %80 to %struct.xpv*
  %xpv_cur91 = getelementptr inbounds %struct.xpv, %struct.xpv* %81, i32 0, i32 1
  %82 = load i64, i64* %xpv_cur91, align 8
  store i64 %82, i64* %n_a, align 8
  %83 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any92 = getelementptr inbounds %struct.sv, %struct.sv* %83, i32 0, i32 0
  %84 = load i8*, i8** %sv_any92, align 8
  %85 = bitcast i8* %84 to %struct.xpv*
  %xpv_pv93 = getelementptr inbounds %struct.xpv, %struct.xpv* %85, i32 0, i32 0
  %86 = load i8*, i8** %xpv_pv93, align 8
  br label %cond.end.96

cond.false.94:                                    ; preds = %if.end.84
  %87 = load %struct.sv*, %struct.sv** %sv, align 8
  %call95 = call i8* @Perl_sv_2pv_flags(%struct.sv* %87, i64* %n_a, i32 2)
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.94, %cond.true.89
  %cond97 = phi i8* [ %86, %cond.true.89 ], [ %call95, %cond.false.94 ]
  store i8* %cond97, i8** %name, align 8
  %88 = load i8, i8* @PL_tainting, align 1
  %tobool98 = icmp ne i8 %88, 0
  br i1 %tobool98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %cond.end.96
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0))
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %cond.end.96
  %89 = load i8*, i8** %name, align 8
  %90 = load i64, i64* %len, align 8
  %call101 = call i32 @truncate(i8* %89, i64 %90)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.100
  store i32 0, i32* %result, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %if.end.100
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.47
  %91 = load i32, i32* %result, align 4
  %tobool107 = icmp ne i32 %91, 0
  br i1 %tobool107, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %if.end.106
  %92 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr109 = getelementptr inbounds %struct.sv*, %struct.sv** %92, i32 1
  store %struct.sv** %incdec.ptr109, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr109, align 8
  %93 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %93, %struct.sv*** @PL_stack_sp, align 8
  %94 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %94, i32 0, i32 0
  %95 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %95, %struct.op** %retval
  br label %return

if.end.110:                                       ; preds = %if.end.106
  %call111 = call i32* @__errno_location()
  %96 = load i32, i32* %call111, align 4
  %tobool112 = icmp ne i32 %96, 0
  br i1 %tobool112, label %if.end.115, label %if.then.113

if.then.113:                                      ; preds = %if.end.110
  %call114 = call i32* @__errno_location()
  store i32 9, i32* %call114, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.113, %if.end.110
  %97 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr116 = getelementptr inbounds %struct.sv*, %struct.sv** %97, i32 1
  store %struct.sv** %incdec.ptr116, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr116, align 8
  %98 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %98, %struct.sv*** @PL_stack_sp, align 8
  %99 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next117 = getelementptr inbounds %struct.op, %struct.op* %99, i32 0, i32 0
  %100 = load %struct.op*, %struct.op** %op_next117, align 8
  store %struct.op* %100, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.115, %if.then.108
  %101 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %101
}

declare i32 @ftruncate(i32, i64) #1

declare i32 @truncate(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_fcntl() #0 {
entry:
  %call = call %struct.op* @Perl_pp_ioctl()
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ioctl() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %argsv = alloca %struct.sv*, align 8
  %func = alloca i32, align 4
  %optype = alloca i32, align 4
  %s = alloca i8*, align 8
  %retval3 = alloca i64, align 8
  %gv = alloca %struct.gv*, align 8
  %io = alloca %struct.io*, align 8
  %len = alloca i64, align 8
  %need = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp188 = alloca %struct.sv*, align 8
  %tmp197 = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 3
  %2 = load i64, i64* %op_targ, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %4, %struct.sv** %targ, align 8
  %5 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %5, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %6 = load %struct.sv*, %struct.sv** %5, align 8
  store %struct.sv* %6, %struct.sv** %argsv, align 8
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.sv*, %struct.sv** %7, i32 -1
  store %struct.sv** %incdec.ptr1, %struct.sv*** %sp, align 8
  %8 = load %struct.sv*, %struct.sv** %7, align 8
  store %struct.sv* %8, %struct.sv** @PL_Sv, align 8
  %9 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 2
  %10 = load i32, i32* %sv_flags, align 4
  %and = and i32 %10, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 0
  %12 = load i8*, i8** %sv_any, align 8
  %13 = bitcast i8* %12 to %struct.xpvuv*
  %xuv_uv = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %13, i32 0, i32 3
  %14 = load i64, i64* %xuv_uv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %15 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call = call i64 @Perl_sv_2uv(%struct.sv* %15)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %call, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %func, align 4
  %16 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %16, i32 0, i32 4
  %17 = load i16, i16* %op_type, align 2
  %conv2 = zext i16 %17 to i32
  store i32 %conv2, i32* %optype, align 4
  %18 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr4 = getelementptr inbounds %struct.sv*, %struct.sv** %18, i32 -1
  store %struct.sv** %incdec.ptr4, %struct.sv*** %sp, align 8
  %19 = load %struct.sv*, %struct.sv** %18, align 8
  %20 = bitcast %struct.sv* %19 to %struct.gv*
  store %struct.gv* %20, %struct.gv** %gv, align 8
  %21 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool5 = icmp ne %struct.gv* %21, null
  br i1 %tobool5, label %cond.true.6, label %cond.false.30

cond.true.6:                                      ; preds = %cond.end
  %22 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool7 = icmp ne %struct.gv* %22, null
  br i1 %tobool7, label %land.lhs.true, label %cond.false.18

land.lhs.true:                                    ; preds = %cond.true.6
  %23 = load %struct.gv*, %struct.gv** %gv, align 8
  %24 = bitcast %struct.gv* %23 to %struct.sv*
  %sv_flags8 = getelementptr inbounds %struct.sv, %struct.sv* %24, i32 0, i32 2
  %25 = load i32, i32* %sv_flags8, align 4
  %and9 = and i32 %25, 255
  %cmp = icmp eq i32 %and9, 13
  br i1 %cmp, label %land.lhs.true.11, label %cond.false.18

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %26 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any12 = getelementptr inbounds %struct.gv, %struct.gv* %26, i32 0, i32 0
  %27 = load %struct.xpvgv*, %struct.xpvgv** %sv_any12, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %27, i32 0, i32 7
  %28 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool13 = icmp ne %struct.gp* %28, null
  br i1 %tobool13, label %cond.true.14, label %cond.false.18

cond.true.14:                                     ; preds = %land.lhs.true.11
  %29 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any15 = getelementptr inbounds %struct.gv, %struct.gv* %29, i32 0, i32 0
  %30 = load %struct.xpvgv*, %struct.xpvgv** %sv_any15, align 8
  %xgv_gp16 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %30, i32 0, i32 7
  %31 = load %struct.gp*, %struct.gp** %xgv_gp16, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %31, i32 0, i32 2
  %32 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool17 = icmp ne %struct.io* %32, null
  br i1 %tobool17, label %cond.true.19, label %cond.false.23

cond.false.18:                                    ; preds = %land.lhs.true.11, %land.lhs.true, %cond.true.6
  br i1 false, label %cond.true.19, label %cond.false.23

cond.true.19:                                     ; preds = %cond.false.18, %cond.true.14
  %33 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any20 = getelementptr inbounds %struct.gv, %struct.gv* %33, i32 0, i32 0
  %34 = load %struct.xpvgv*, %struct.xpvgv** %sv_any20, align 8
  %xgv_gp21 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %34, i32 0, i32 7
  %35 = load %struct.gp*, %struct.gp** %xgv_gp21, align 8
  %gp_io22 = getelementptr inbounds %struct.gp, %struct.gp* %35, i32 0, i32 2
  %36 = load %struct.io*, %struct.io** %gp_io22, align 8
  br label %cond.end.28

cond.false.23:                                    ; preds = %cond.false.18, %cond.true.14
  %37 = load %struct.gv*, %struct.gv** %gv, align 8
  %call24 = call %struct.gv* @Perl_gv_IOadd(%struct.gv* %37)
  %sv_any25 = getelementptr inbounds %struct.gv, %struct.gv* %call24, i32 0, i32 0
  %38 = load %struct.xpvgv*, %struct.xpvgv** %sv_any25, align 8
  %xgv_gp26 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %38, i32 0, i32 7
  %39 = load %struct.gp*, %struct.gp** %xgv_gp26, align 8
  %gp_io27 = getelementptr inbounds %struct.gp, %struct.gp* %39, i32 0, i32 2
  %40 = load %struct.io*, %struct.io** %gp_io27, align 8
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.23, %cond.true.19
  %cond29 = phi %struct.io* [ %36, %cond.true.19 ], [ %40, %cond.false.23 ]
  br label %cond.end.31

cond.false.30:                                    ; preds = %cond.end
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.end.28
  %cond32 = phi %struct.io* [ %cond29, %cond.end.28 ], [ null, %cond.false.30 ]
  store %struct.io* %cond32, %struct.io** %io, align 8
  %41 = load %struct.io*, %struct.io** %io, align 8
  %tobool33 = icmp ne %struct.io* %41, null
  br i1 %tobool33, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %cond.end.31
  %42 = load %struct.sv*, %struct.sv** %argsv, align 8
  %tobool34 = icmp ne %struct.sv* %42, null
  br i1 %tobool34, label %lor.lhs.false.35, label %if.then

lor.lhs.false.35:                                 ; preds = %lor.lhs.false
  %43 = load %struct.io*, %struct.io** %io, align 8
  %sv_any36 = getelementptr inbounds %struct.io, %struct.io* %43, i32 0, i32 0
  %44 = load %struct.xpvio*, %struct.xpvio** %sv_any36, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %44, i32 0, i32 7
  %45 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  %tobool37 = icmp ne %struct._PerlIO** %45, null
  br i1 %tobool37, label %if.end.76, label %if.then

if.then:                                          ; preds = %lor.lhs.false.35, %lor.lhs.false, %cond.end.31
  %46 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %46, i32 0, i32 14
  %47 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp38 = icmp ne %struct.sv* %47, null
  br i1 %cmp38, label %land.lhs.true.40, label %lor.lhs.false.63

land.lhs.true.40:                                 ; preds = %if.then
  %48 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings41 = getelementptr inbounds %struct.cop, %struct.cop* %48, i32 0, i32 14
  %49 = load %struct.sv*, %struct.sv** %cop_warnings41, align 8
  %cmp42 = icmp ne %struct.sv* %49, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp42, label %land.lhs.true.44, label %lor.lhs.false.63

land.lhs.true.44:                                 ; preds = %land.lhs.true.40
  %50 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings45 = getelementptr inbounds %struct.cop, %struct.cop* %50, i32 0, i32 14
  %51 = load %struct.sv*, %struct.sv** %cop_warnings45, align 8
  %cmp46 = icmp eq %struct.sv* %51, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp46, label %if.then.71, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %land.lhs.true.44
  %52 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings49 = getelementptr inbounds %struct.cop, %struct.cop* %52, i32 0, i32 14
  %53 = load %struct.sv*, %struct.sv** %cop_warnings49, align 8
  %sv_any50 = getelementptr inbounds %struct.sv, %struct.sv* %53, i32 0, i32 0
  %54 = load i8*, i8** %sv_any50, align 8
  %55 = bitcast i8* %54 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %55, i32 0, i32 0
  %56 = load i8*, i8** %xpv_pv, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %56, i64 2
  %57 = load i8, i8* %arrayidx51, align 1
  %conv52 = sext i8 %57 to i32
  %and53 = and i32 %conv52, 64
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then.71, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %lor.lhs.false.48
  %58 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings56 = getelementptr inbounds %struct.cop, %struct.cop* %58, i32 0, i32 14
  %59 = load %struct.sv*, %struct.sv** %cop_warnings56, align 8
  %sv_any57 = getelementptr inbounds %struct.sv, %struct.sv* %59, i32 0, i32 0
  %60 = load i8*, i8** %sv_any57, align 8
  %61 = bitcast i8* %60 to %struct.xpv*
  %xpv_pv58 = getelementptr inbounds %struct.xpv, %struct.xpv* %61, i32 0, i32 0
  %62 = load i8*, i8** %xpv_pv58, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %62, i64 1
  %63 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %63 to i32
  %and61 = and i32 %conv60, 16
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %if.then.71, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false.55, %land.lhs.true.40, %if.then
  %64 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings64 = getelementptr inbounds %struct.cop, %struct.cop* %64, i32 0, i32 14
  %65 = load %struct.sv*, %struct.sv** %cop_warnings64, align 8
  %cmp65 = icmp eq %struct.sv* %65, null
  br i1 %cmp65, label %land.lhs.true.67, label %if.end

land.lhs.true.67:                                 ; preds = %lor.lhs.false.63
  %66 = load i8, i8* @PL_dowarn, align 1
  %conv68 = zext i8 %66 to i32
  %and69 = and i32 %conv68, 1
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.then.71, label %if.end

if.then.71:                                       ; preds = %land.lhs.true.67, %lor.lhs.false.55, %lor.lhs.false.48, %land.lhs.true.44
  %67 = load %struct.gv*, %struct.gv** %gv, align 8
  %68 = load %struct.io*, %struct.io** %io, align 8
  %69 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type72 = getelementptr inbounds %struct.op, %struct.op* %69, i32 0, i32 4
  %70 = load i16, i16* %op_type72, align 2
  %conv73 = zext i16 %70 to i32
  call void @Perl_report_evil_fh(%struct.gv* %67, %struct.io* %68, i32 %conv73)
  br label %if.end

if.end:                                           ; preds = %if.then.71, %land.lhs.true.67, %lor.lhs.false.63
  %call74 = call i32* @__errno_location()
  store i32 9, i32* %call74, align 4
  %71 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr75 = getelementptr inbounds %struct.sv*, %struct.sv** %71, i32 1
  store %struct.sv** %incdec.ptr75, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr75, align 8
  %72 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %72, %struct.sv*** @PL_stack_sp, align 8
  %73 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %73, i32 0, i32 0
  %74 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %74, %struct.op** %retval
  br label %return

if.end.76:                                        ; preds = %lor.lhs.false.35
  %75 = load %struct.sv*, %struct.sv** %argsv, align 8
  %sv_flags77 = getelementptr inbounds %struct.sv, %struct.sv* %75, i32 0, i32 2
  %76 = load i32, i32* %sv_flags77, align 4
  %and78 = and i32 %76, 262144
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.then.84, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %if.end.76
  %77 = load %struct.sv*, %struct.sv** %argsv, align 8
  %sv_flags81 = getelementptr inbounds %struct.sv, %struct.sv* %77, i32 0, i32 2
  %78 = load i32, i32* %sv_flags81, align 4
  %and82 = and i32 %78, 196608
  %tobool83 = icmp ne i32 %and82, 0
  br i1 %tobool83, label %if.else, label %if.then.84

if.then.84:                                       ; preds = %lor.lhs.false.80, %if.end.76
  %79 = load %struct.sv*, %struct.sv** %argsv, align 8
  %sv_flags85 = getelementptr inbounds %struct.sv, %struct.sv* %79, i32 0, i32 2
  %80 = load i32, i32* %sv_flags85, align 4
  %and86 = and i32 %80, 10223616
  %cmp87 = icmp eq i32 %and86, 262144
  br i1 %cmp87, label %cond.true.89, label %cond.false.93

cond.true.89:                                     ; preds = %if.then.84
  %81 = load %struct.sv*, %struct.sv** %argsv, align 8
  %sv_any90 = getelementptr inbounds %struct.sv, %struct.sv* %81, i32 0, i32 0
  %82 = load i8*, i8** %sv_any90, align 8
  %83 = bitcast i8* %82 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %83, i32 0, i32 1
  %84 = load i64, i64* %xpv_cur, align 8
  store i64 %84, i64* %len, align 8
  %85 = load %struct.sv*, %struct.sv** %argsv, align 8
  %sv_any91 = getelementptr inbounds %struct.sv, %struct.sv* %85, i32 0, i32 0
  %86 = load i8*, i8** %sv_any91, align 8
  %87 = bitcast i8* %86 to %struct.xpv*
  %xpv_pv92 = getelementptr inbounds %struct.xpv, %struct.xpv* %87, i32 0, i32 0
  %88 = load i8*, i8** %xpv_pv92, align 8
  br label %cond.end.95

cond.false.93:                                    ; preds = %if.then.84
  %89 = load %struct.sv*, %struct.sv** %argsv, align 8
  %call94 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %89, i64* %len, i32 2)
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.93, %cond.true.89
  %cond96 = phi i8* [ %88, %cond.true.89 ], [ %call94, %cond.false.93 ]
  store i8* %cond96, i8** %s, align 8
  store i64 256, i64* %need, align 8
  %90 = load i64, i64* %len, align 8
  %91 = load i64, i64* %need, align 8
  %cmp97 = icmp ult i64 %90, %91
  br i1 %cmp97, label %if.then.99, label %if.end.103

if.then.99:                                       ; preds = %cond.end.95
  %92 = load %struct.sv*, %struct.sv** %argsv, align 8
  %93 = load i64, i64* %need, align 8
  %add = add i64 %93, 1
  %call100 = call i8* @Perl_sv_grow(%struct.sv* %92, i64 %add)
  store i8* %call100, i8** %s, align 8
  %94 = load i64, i64* %need, align 8
  %95 = load %struct.sv*, %struct.sv** %argsv, align 8
  %sv_any101 = getelementptr inbounds %struct.sv, %struct.sv* %95, i32 0, i32 0
  %96 = load i8*, i8** %sv_any101, align 8
  %97 = bitcast i8* %96 to %struct.xpv*
  %xpv_cur102 = getelementptr inbounds %struct.xpv, %struct.xpv* %97, i32 0, i32 1
  store i64 %94, i64* %xpv_cur102, align 8
  store i64 %94, i64* %tmp
  %98 = load i64, i64* %tmp
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.99, %cond.end.95
  %99 = load %struct.sv*, %struct.sv** %argsv, align 8
  %sv_any104 = getelementptr inbounds %struct.sv, %struct.sv* %99, i32 0, i32 0
  %100 = load i8*, i8** %sv_any104, align 8
  %101 = bitcast i8* %100 to %struct.xpv*
  %xpv_cur105 = getelementptr inbounds %struct.xpv, %struct.xpv* %101, i32 0, i32 1
  %102 = load i64, i64* %xpv_cur105, align 8
  %103 = load i8*, i8** %s, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %103, i64 %102
  store i8 17, i8* %arrayidx106, align 1
  br label %if.end.116

if.else:                                          ; preds = %lor.lhs.false.80
  %104 = load %struct.sv*, %struct.sv** %argsv, align 8
  %sv_flags107 = getelementptr inbounds %struct.sv, %struct.sv* %104, i32 0, i32 2
  %105 = load i32, i32* %sv_flags107, align 4
  %and108 = and i32 %105, 65536
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %cond.true.110, label %cond.false.112

cond.true.110:                                    ; preds = %if.else
  %106 = load %struct.sv*, %struct.sv** %argsv, align 8
  %sv_any111 = getelementptr inbounds %struct.sv, %struct.sv* %106, i32 0, i32 0
  %107 = load i8*, i8** %sv_any111, align 8
  %108 = bitcast i8* %107 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %108, i32 0, i32 3
  %109 = load i64, i64* %xiv_iv, align 8
  br label %cond.end.114

cond.false.112:                                   ; preds = %if.else
  %110 = load %struct.sv*, %struct.sv** %argsv, align 8
  %call113 = call i64 @Perl_sv_2iv(%struct.sv* %110)
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.112, %cond.true.110
  %cond115 = phi i64 [ %109, %cond.true.110 ], [ %call113, %cond.false.112 ]
  store i64 %cond115, i64* %retval3, align 8
  %111 = load i64, i64* %retval3, align 8
  %112 = inttoptr i64 %111 to i8*
  store i8* %112, i8** %s, align 8
  br label %if.end.116

if.end.116:                                       ; preds = %cond.end.114, %if.end.103
  %113 = load i8, i8* @PL_tainting, align 1
  %tobool117 = icmp ne i8 %113, 0
  br i1 %tobool117, label %if.then.118, label %if.end.122

if.then.118:                                      ; preds = %if.end.116
  %114 = load i32, i32* %optype, align 4
  %cmp119 = icmp eq i32 %114, 221
  %cond121 = select i1 %cmp119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0)
  call void @Perl_taint_proper(i8* null, i8* %cond121)
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.118, %if.end.116
  %115 = load i32, i32* %optype, align 4
  %cmp123 = icmp eq i32 %115, 221
  br i1 %cmp123, label %if.then.125, label %if.else.132

if.then.125:                                      ; preds = %if.end.122
  %116 = load %struct.io*, %struct.io** %io, align 8
  %sv_any126 = getelementptr inbounds %struct.io, %struct.io* %116, i32 0, i32 0
  %117 = load %struct.xpvio*, %struct.xpvio** %sv_any126, align 8
  %xio_ifp127 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %117, i32 0, i32 7
  %118 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp127, align 8
  %call128 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %118)
  %119 = load i32, i32* %func, align 4
  %conv129 = zext i32 %119 to i64
  %120 = load i8*, i8** %s, align 8
  %call130 = call i32 (i32, i64, ...) @ioctl(i32 %call128, i64 %conv129, i8* %120)
  %conv131 = sext i32 %call130 to i64
  store i64 %conv131, i64* %retval3, align 8
  br label %if.end.138

if.else.132:                                      ; preds = %if.end.122
  %121 = load %struct.io*, %struct.io** %io, align 8
  %sv_any133 = getelementptr inbounds %struct.io, %struct.io* %121, i32 0, i32 0
  %122 = load %struct.xpvio*, %struct.xpvio** %sv_any133, align 8
  %xio_ifp134 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %122, i32 0, i32 7
  %123 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp134, align 8
  %call135 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %123)
  %124 = load i32, i32* %func, align 4
  %125 = load i8*, i8** %s, align 8
  %call136 = call i32 (i32, i32, ...) @fcntl(i32 %call135, i32 %124, i8* %125)
  %conv137 = sext i32 %call136 to i64
  store i64 %conv137, i64* %retval3, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.132, %if.then.125
  %126 = load %struct.sv*, %struct.sv** %argsv, align 8
  %sv_flags139 = getelementptr inbounds %struct.sv, %struct.sv* %126, i32 0, i32 2
  %127 = load i32, i32* %sv_flags139, align 4
  %and140 = and i32 %127, 262144
  %tobool141 = icmp ne i32 %and140, 0
  br i1 %tobool141, label %if.then.142, label %if.end.172

if.then.142:                                      ; preds = %if.end.138
  %128 = load %struct.sv*, %struct.sv** %argsv, align 8
  %sv_any143 = getelementptr inbounds %struct.sv, %struct.sv* %128, i32 0, i32 0
  %129 = load i8*, i8** %sv_any143, align 8
  %130 = bitcast i8* %129 to %struct.xpv*
  %xpv_cur144 = getelementptr inbounds %struct.xpv, %struct.xpv* %130, i32 0, i32 1
  %131 = load i64, i64* %xpv_cur144, align 8
  %132 = load i8*, i8** %s, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %132, i64 %131
  %133 = load i8, i8* %arrayidx145, align 1
  %conv146 = sext i8 %133 to i32
  %cmp147 = icmp ne i32 %conv146, 17
  br i1 %cmp147, label %if.then.149, label %if.end.162

if.then.149:                                      ; preds = %if.then.142
  %134 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type150 = getelementptr inbounds %struct.op, %struct.op* %134, i32 0, i32 4
  %135 = load i16, i16* %op_type150, align 2
  %conv151 = zext i16 %135 to i32
  %cmp152 = icmp eq i32 %conv151, 351
  br i1 %cmp152, label %cond.true.154, label %cond.false.156

cond.true.154:                                    ; preds = %if.then.149
  %136 = load %struct.op*, %struct.op** @PL_op, align 8
  %call155 = call i8* @Perl_custom_op_name(%struct.op* %136)
  br label %cond.end.159

cond.false.156:                                   ; preds = %if.then.149
  %137 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type157 = getelementptr inbounds %struct.op, %struct.op* %137, i32 0, i32 4
  %138 = load i16, i16* %op_type157, align 2
  %idxprom = zext i16 %138 to i64
  %arrayidx158 = getelementptr inbounds [0 x i8*], [0 x i8*]* @PL_op_name, i32 0, i64 %idxprom
  %139 = load i8*, i8** %arrayidx158, align 8
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.156, %cond.true.154
  %cond160 = phi i8* [ %call155, %cond.true.154 ], [ %139, %cond.false.156 ]
  %call161 = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.55, i32 0, i32 0), i8* %cond160)
  store %struct.op* %call161, %struct.op** %retval
  br label %return

if.end.162:                                       ; preds = %if.then.142
  %140 = load %struct.sv*, %struct.sv** %argsv, align 8
  %sv_any163 = getelementptr inbounds %struct.sv, %struct.sv* %140, i32 0, i32 0
  %141 = load i8*, i8** %sv_any163, align 8
  %142 = bitcast i8* %141 to %struct.xpv*
  %xpv_cur164 = getelementptr inbounds %struct.xpv, %struct.xpv* %142, i32 0, i32 1
  %143 = load i64, i64* %xpv_cur164, align 8
  %144 = load i8*, i8** %s, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %144, i64 %143
  store i8 0, i8* %arrayidx165, align 1
  %145 = load %struct.sv*, %struct.sv** %argsv, align 8
  %sv_flags166 = getelementptr inbounds %struct.sv, %struct.sv* %145, i32 0, i32 2
  %146 = load i32, i32* %sv_flags166, align 4
  %and167 = and i32 %146, 16384
  %tobool168 = icmp ne i32 %and167, 0
  br i1 %tobool168, label %if.then.169, label %if.end.171

if.then.169:                                      ; preds = %if.end.162
  %147 = load %struct.sv*, %struct.sv** %argsv, align 8
  %call170 = call i32 @Perl_mg_set(%struct.sv* %147)
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.169, %if.end.162
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.end.138
  %148 = load i64, i64* %retval3, align 8
  %cmp173 = icmp eq i64 %148, -1
  br i1 %cmp173, label %if.then.175, label %if.end.178

if.then.175:                                      ; preds = %if.end.172
  %149 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr176 = getelementptr inbounds %struct.sv*, %struct.sv** %149, i32 1
  store %struct.sv** %incdec.ptr176, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr176, align 8
  %150 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %150, %struct.sv*** @PL_stack_sp, align 8
  %151 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next177 = getelementptr inbounds %struct.op, %struct.op* %151, i32 0, i32 0
  %152 = load %struct.op*, %struct.op** %op_next177, align 8
  store %struct.op* %152, %struct.op** %retval
  br label %return

if.end.178:                                       ; preds = %if.end.172
  %153 = load i64, i64* %retval3, align 8
  %cmp179 = icmp ne i64 %153, 0
  br i1 %cmp179, label %if.then.181, label %if.else.190

if.then.181:                                      ; preds = %if.end.178
  %154 = load %struct.sv*, %struct.sv** %targ, align 8
  %155 = load i64, i64* %retval3, align 8
  call void @Perl_sv_setiv(%struct.sv* %154, i64 %155)
  %156 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags182 = getelementptr inbounds %struct.sv, %struct.sv* %156, i32 0, i32 2
  %157 = load i32, i32* %sv_flags182, align 4
  %and183 = and i32 %157, 16384
  %tobool184 = icmp ne i32 %and183, 0
  br i1 %tobool184, label %if.then.185, label %if.end.187

if.then.185:                                      ; preds = %if.then.181
  %158 = load %struct.sv*, %struct.sv** %targ, align 8
  %call186 = call i32 @Perl_mg_set(%struct.sv* %158)
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.185, %if.then.181
  %159 = load %struct.sv*, %struct.sv** %targ, align 8
  %160 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr189 = getelementptr inbounds %struct.sv*, %struct.sv** %160, i32 1
  store %struct.sv** %incdec.ptr189, %struct.sv*** %sp, align 8
  store %struct.sv* %159, %struct.sv** %incdec.ptr189, align 8
  store %struct.sv* %159, %struct.sv** %tmp188
  %161 = load %struct.sv*, %struct.sv** %tmp188
  br label %if.end.199

if.else.190:                                      ; preds = %if.end.178
  %162 = load %struct.sv*, %struct.sv** %targ, align 8
  call void @Perl_sv_setpvn(%struct.sv* %162, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @zero_but_true, i32 0, i32 0), i64 10)
  %163 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags191 = getelementptr inbounds %struct.sv, %struct.sv* %163, i32 0, i32 2
  %164 = load i32, i32* %sv_flags191, align 4
  %and192 = and i32 %164, 16384
  %tobool193 = icmp ne i32 %and192, 0
  br i1 %tobool193, label %if.then.194, label %if.end.196

if.then.194:                                      ; preds = %if.else.190
  %165 = load %struct.sv*, %struct.sv** %targ, align 8
  %call195 = call i32 @Perl_mg_set(%struct.sv* %165)
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.194, %if.else.190
  %166 = load %struct.sv*, %struct.sv** %targ, align 8
  %167 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr198 = getelementptr inbounds %struct.sv*, %struct.sv** %167, i32 1
  store %struct.sv** %incdec.ptr198, %struct.sv*** %sp, align 8
  store %struct.sv* %166, %struct.sv** %incdec.ptr198, align 8
  store %struct.sv* %166, %struct.sv** %tmp197
  %168 = load %struct.sv*, %struct.sv** %tmp197
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.196, %if.end.187
  %169 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %169, %struct.sv*** @PL_stack_sp, align 8
  %170 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next200 = getelementptr inbounds %struct.op, %struct.op* %170, i32 0, i32 0
  %171 = load %struct.op*, %struct.op** %op_next200, align 8
  store %struct.op* %171, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.199, %if.then.175, %cond.end.159, %if.end
  %172 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %172
}

declare i64 @Perl_sv_2uv(%struct.sv*) #1

declare i32 @ioctl(i32, i64, ...) #1

declare i32 @fcntl(i32, i32, ...) #1

declare i8* @Perl_custom_op_name(%struct.op*) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_flock() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_socket() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_sockpair() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_bind() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_connect() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_listen() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_accept() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_shutdown() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_gsockopt() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ssockopt() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_getsockname() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_getpeername() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_lstat() #0 {
entry:
  %call = call %struct.op* @Perl_pp_stat()
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_stat() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %gv = alloca %struct.gv*, align 8
  %gimme = alloca i32, align 4
  %max = alloca i32, align 4
  %n_a = alloca i64, align 8
  %sv = alloca %struct.sv*, align 8
  %tmp = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  store i32 13, i32* %max, align 4
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 6
  %2 = load i8, i8* %op_flags, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else.159

if.then:                                          ; preds = %entry
  %3 = load %struct.op*, %struct.op** @PL_op, align 8
  %4 = bitcast %struct.op* %3 to %struct.svop*
  %op_sv = getelementptr inbounds %struct.svop, %struct.svop* %4, i32 0, i32 8
  %5 = load %struct.sv*, %struct.sv** %op_sv, align 8
  %6 = bitcast %struct.sv* %5 to %struct.gv*
  store %struct.gv* %6, %struct.gv** %gv, align 8
  %7 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %7, i32 0, i32 4
  %8 = load i16, i16* %op_type, align 2
  %conv1 = zext i16 %8 to i32
  %cmp = icmp eq i32 %conv1, 234
  br i1 %cmp, label %if.then.3, label %if.end.40

if.then.3:                                        ; preds = %if.then
  %9 = load %struct.gv*, %struct.gv** %gv, align 8
  %10 = load %struct.gv*, %struct.gv** @PL_defgv, align 8
  %cmp4 = icmp ne %struct.gv* %9, %10
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.3
  %11 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %11, i32 0, i32 14
  %12 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp7 = icmp ne %struct.sv* %12, null
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false.20

land.lhs.true:                                    ; preds = %if.then.6
  %13 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings9 = getelementptr inbounds %struct.cop, %struct.cop* %13, i32 0, i32 14
  %14 = load %struct.sv*, %struct.sv** %cop_warnings9, align 8
  %cmp10 = icmp ne %struct.sv* %14, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp10, label %land.lhs.true.12, label %lor.lhs.false.20

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %15 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings13 = getelementptr inbounds %struct.cop, %struct.cop* %15, i32 0, i32 14
  %16 = load %struct.sv*, %struct.sv** %cop_warnings13, align 8
  %cmp14 = icmp eq %struct.sv* %16, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp14, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.12
  %17 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings16 = getelementptr inbounds %struct.cop, %struct.cop* %17, i32 0, i32 14
  %18 = load %struct.sv*, %struct.sv** %cop_warnings16, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 0
  %19 = load i8*, i8** %sv_any, align 8
  %20 = bitcast i8* %19 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %20, i32 0, i32 0
  %21 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx, align 1
  %conv17 = sext i8 %22 to i32
  %and18 = and i32 %conv17, 4
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.28, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false, %land.lhs.true, %if.then.6
  %23 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings21 = getelementptr inbounds %struct.cop, %struct.cop* %23, i32 0, i32 14
  %24 = load %struct.sv*, %struct.sv** %cop_warnings21, align 8
  %cmp22 = icmp eq %struct.sv* %24, null
  br i1 %cmp22, label %land.lhs.true.24, label %if.end

land.lhs.true.24:                                 ; preds = %lor.lhs.false.20
  %25 = load i8, i8* @PL_dowarn, align 1
  %conv25 = zext i8 %25 to i32
  %and26 = and i32 %conv25, 1
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %land.lhs.true.24, %lor.lhs.false, %land.lhs.true.12
  %26 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any29 = getelementptr inbounds %struct.gv, %struct.gv* %26, i32 0, i32 0
  %27 = load %struct.xpvgv*, %struct.xpvgv** %sv_any29, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %27, i32 0, i32 7
  %28 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_egv = getelementptr inbounds %struct.gp, %struct.gp* %28, i32 0, i32 6
  %29 = load %struct.gv*, %struct.gv** %gp_egv, align 8
  %tobool30 = icmp ne %struct.gv* %29, null
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.28
  %30 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any31 = getelementptr inbounds %struct.gv, %struct.gv* %30, i32 0, i32 0
  %31 = load %struct.xpvgv*, %struct.xpvgv** %sv_any31, align 8
  %xgv_gp32 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %31, i32 0, i32 7
  %32 = load %struct.gp*, %struct.gp** %xgv_gp32, align 8
  %gp_egv33 = getelementptr inbounds %struct.gp, %struct.gp* %32, i32 0, i32 6
  %33 = load %struct.gv*, %struct.gv** %gp_egv33, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.28
  %34 = load %struct.gv*, %struct.gv** %gv, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gv* [ %33, %cond.true ], [ %34, %cond.false ]
  %sv_any34 = getelementptr inbounds %struct.gv, %struct.gv* %cond, i32 0, i32 0
  %35 = load %struct.xpvgv*, %struct.xpvgv** %sv_any34, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %35, i32 0, i32 8
  %36 = load i8*, i8** %xgv_name, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.68, i32 0, i32 0), i8* %36)
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true.24, %lor.lhs.false.20
  br label %if.end.39

if.else:                                          ; preds = %if.then.3
  %37 = load i32, i32* @PL_laststype, align 4
  %cmp35 = icmp ne i32 %37, 234
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.else
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.69, i32 0, i32 0))
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.else
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then
  br label %do_fstat

do_fstat:                                         ; preds = %if.end.224, %if.then.164, %if.end.40
  %38 = load %struct.gv*, %struct.gv** %gv, align 8
  %39 = load %struct.gv*, %struct.gv** @PL_defgv, align 8
  %cmp41 = icmp ne %struct.gv* %38, %39
  br i1 %cmp41, label %if.then.43, label %if.end.98

if.then.43:                                       ; preds = %do_fstat
  store i32 235, i32* @PL_laststype, align 4
  %40 = load %struct.gv*, %struct.gv** %gv, align 8
  store %struct.gv* %40, %struct.gv** @PL_statgv, align 8
  %41 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  call void @Perl_sv_setpv(%struct.sv* %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0))
  %42 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool44 = icmp ne %struct.gv* %42, null
  br i1 %tobool44, label %land.lhs.true.45, label %cond.false.57

land.lhs.true.45:                                 ; preds = %if.then.43
  %43 = load %struct.gv*, %struct.gv** %gv, align 8
  %44 = bitcast %struct.gv* %43 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %44, i32 0, i32 2
  %45 = load i32, i32* %sv_flags, align 4
  %and46 = and i32 %45, 255
  %cmp47 = icmp eq i32 %and46, 13
  br i1 %cmp47, label %land.lhs.true.49, label %cond.false.57

land.lhs.true.49:                                 ; preds = %land.lhs.true.45
  %46 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any50 = getelementptr inbounds %struct.gv, %struct.gv* %46, i32 0, i32 0
  %47 = load %struct.xpvgv*, %struct.xpvgv** %sv_any50, align 8
  %xgv_gp51 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %47, i32 0, i32 7
  %48 = load %struct.gp*, %struct.gp** %xgv_gp51, align 8
  %tobool52 = icmp ne %struct.gp* %48, null
  br i1 %tobool52, label %cond.true.53, label %cond.false.57

cond.true.53:                                     ; preds = %land.lhs.true.49
  %49 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any54 = getelementptr inbounds %struct.gv, %struct.gv* %49, i32 0, i32 0
  %50 = load %struct.xpvgv*, %struct.xpvgv** %sv_any54, align 8
  %xgv_gp55 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %50, i32 0, i32 7
  %51 = load %struct.gp*, %struct.gp** %xgv_gp55, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %51, i32 0, i32 2
  %52 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool56 = icmp ne %struct.io* %52, null
  br i1 %tobool56, label %land.lhs.true.58, label %cond.false.95

cond.false.57:                                    ; preds = %land.lhs.true.49, %land.lhs.true.45, %if.then.43
  br i1 false, label %land.lhs.true.58, label %cond.false.95

land.lhs.true.58:                                 ; preds = %cond.false.57, %cond.true.53
  %53 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any59 = getelementptr inbounds %struct.gv, %struct.gv* %53, i32 0, i32 0
  %54 = load %struct.xpvgv*, %struct.xpvgv** %sv_any59, align 8
  %xgv_gp60 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %54, i32 0, i32 7
  %55 = load %struct.gp*, %struct.gp** %xgv_gp60, align 8
  %gp_io61 = getelementptr inbounds %struct.gp, %struct.gp* %55, i32 0, i32 2
  %56 = load %struct.io*, %struct.io** %gp_io61, align 8
  %sv_any62 = getelementptr inbounds %struct.io, %struct.io* %56, i32 0, i32 0
  %57 = load %struct.xpvio*, %struct.xpvio** %sv_any62, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %57, i32 0, i32 7
  %58 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  %tobool63 = icmp ne %struct._PerlIO** %58, null
  br i1 %tobool63, label %cond.true.64, label %cond.false.95

cond.true.64:                                     ; preds = %land.lhs.true.58
  %59 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool65 = icmp ne %struct.gv* %59, null
  br i1 %tobool65, label %land.lhs.true.66, label %cond.false.80

land.lhs.true.66:                                 ; preds = %cond.true.64
  %60 = load %struct.gv*, %struct.gv** %gv, align 8
  %61 = bitcast %struct.gv* %60 to %struct.sv*
  %sv_flags67 = getelementptr inbounds %struct.sv, %struct.sv* %61, i32 0, i32 2
  %62 = load i32, i32* %sv_flags67, align 4
  %and68 = and i32 %62, 255
  %cmp69 = icmp eq i32 %and68, 13
  br i1 %cmp69, label %land.lhs.true.71, label %cond.false.80

land.lhs.true.71:                                 ; preds = %land.lhs.true.66
  %63 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any72 = getelementptr inbounds %struct.gv, %struct.gv* %63, i32 0, i32 0
  %64 = load %struct.xpvgv*, %struct.xpvgv** %sv_any72, align 8
  %xgv_gp73 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %64, i32 0, i32 7
  %65 = load %struct.gp*, %struct.gp** %xgv_gp73, align 8
  %tobool74 = icmp ne %struct.gp* %65, null
  br i1 %tobool74, label %cond.true.75, label %cond.false.80

cond.true.75:                                     ; preds = %land.lhs.true.71
  %66 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any76 = getelementptr inbounds %struct.gv, %struct.gv* %66, i32 0, i32 0
  %67 = load %struct.xpvgv*, %struct.xpvgv** %sv_any76, align 8
  %xgv_gp77 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %67, i32 0, i32 7
  %68 = load %struct.gp*, %struct.gp** %xgv_gp77, align 8
  %gp_io78 = getelementptr inbounds %struct.gp, %struct.gp* %68, i32 0, i32 2
  %69 = load %struct.io*, %struct.io** %gp_io78, align 8
  %tobool79 = icmp ne %struct.io* %69, null
  br i1 %tobool79, label %cond.true.81, label %cond.false.85

cond.false.80:                                    ; preds = %land.lhs.true.71, %land.lhs.true.66, %cond.true.64
  br i1 false, label %cond.true.81, label %cond.false.85

cond.true.81:                                     ; preds = %cond.false.80, %cond.true.75
  %70 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any82 = getelementptr inbounds %struct.gv, %struct.gv* %70, i32 0, i32 0
  %71 = load %struct.xpvgv*, %struct.xpvgv** %sv_any82, align 8
  %xgv_gp83 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %71, i32 0, i32 7
  %72 = load %struct.gp*, %struct.gp** %xgv_gp83, align 8
  %gp_io84 = getelementptr inbounds %struct.gp, %struct.gp* %72, i32 0, i32 2
  %73 = load %struct.io*, %struct.io** %gp_io84, align 8
  br label %cond.end.89

cond.false.85:                                    ; preds = %cond.false.80, %cond.true.75
  %74 = load %struct.gv*, %struct.gv** %gv, align 8
  %call = call %struct.gv* @Perl_gv_IOadd(%struct.gv* %74)
  %sv_any86 = getelementptr inbounds %struct.gv, %struct.gv* %call, i32 0, i32 0
  %75 = load %struct.xpvgv*, %struct.xpvgv** %sv_any86, align 8
  %xgv_gp87 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %75, i32 0, i32 7
  %76 = load %struct.gp*, %struct.gp** %xgv_gp87, align 8
  %gp_io88 = getelementptr inbounds %struct.gp, %struct.gp* %76, i32 0, i32 2
  %77 = load %struct.io*, %struct.io** %gp_io88, align 8
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.85, %cond.true.81
  %cond90 = phi %struct.io* [ %73, %cond.true.81 ], [ %77, %cond.false.85 ]
  %sv_any91 = getelementptr inbounds %struct.io, %struct.io* %cond90, i32 0, i32 0
  %78 = load %struct.xpvio*, %struct.xpvio** %sv_any91, align 8
  %xio_ifp92 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %78, i32 0, i32 7
  %79 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp92, align 8
  %call93 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %79)
  %call94 = call i32 @fstat(i32 %call93, %struct.stat* @PL_statcache)
  br label %cond.end.96

cond.false.95:                                    ; preds = %land.lhs.true.58, %cond.false.57, %cond.true.53
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.95, %cond.end.89
  %cond97 = phi i32 [ %call94, %cond.end.89 ], [ -1, %cond.false.95 ]
  store i32 %cond97, i32* @PL_laststatval, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %cond.end.96, %do_fstat
  %80 = load i32, i32* @PL_laststatval, align 4
  %cmp99 = icmp slt i32 %80, 0
  br i1 %cmp99, label %if.then.101, label %if.end.158

if.then.101:                                      ; preds = %if.end.98
  %81 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings102 = getelementptr inbounds %struct.cop, %struct.cop* %81, i32 0, i32 14
  %82 = load %struct.sv*, %struct.sv** %cop_warnings102, align 8
  %cmp103 = icmp ne %struct.sv* %82, null
  br i1 %cmp103, label %land.lhs.true.105, label %lor.lhs.false.129

land.lhs.true.105:                                ; preds = %if.then.101
  %83 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings106 = getelementptr inbounds %struct.cop, %struct.cop* %83, i32 0, i32 14
  %84 = load %struct.sv*, %struct.sv** %cop_warnings106, align 8
  %cmp107 = icmp ne %struct.sv* %84, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp107, label %land.lhs.true.109, label %lor.lhs.false.129

land.lhs.true.109:                                ; preds = %land.lhs.true.105
  %85 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings110 = getelementptr inbounds %struct.cop, %struct.cop* %85, i32 0, i32 14
  %86 = load %struct.sv*, %struct.sv** %cop_warnings110, align 8
  %cmp111 = icmp eq %struct.sv* %86, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp111, label %if.then.137, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %land.lhs.true.109
  %87 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings114 = getelementptr inbounds %struct.cop, %struct.cop* %87, i32 0, i32 14
  %88 = load %struct.sv*, %struct.sv** %cop_warnings114, align 8
  %sv_any115 = getelementptr inbounds %struct.sv, %struct.sv* %88, i32 0, i32 0
  %89 = load i8*, i8** %sv_any115, align 8
  %90 = bitcast i8* %89 to %struct.xpv*
  %xpv_pv116 = getelementptr inbounds %struct.xpv, %struct.xpv* %90, i32 0, i32 0
  %91 = load i8*, i8** %xpv_pv116, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %91, i64 2
  %92 = load i8, i8* %arrayidx117, align 1
  %conv118 = sext i8 %92 to i32
  %and119 = and i32 %conv118, 64
  %tobool120 = icmp ne i32 %and119, 0
  br i1 %tobool120, label %if.then.137, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %lor.lhs.false.113
  %93 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings122 = getelementptr inbounds %struct.cop, %struct.cop* %93, i32 0, i32 14
  %94 = load %struct.sv*, %struct.sv** %cop_warnings122, align 8
  %sv_any123 = getelementptr inbounds %struct.sv, %struct.sv* %94, i32 0, i32 0
  %95 = load i8*, i8** %sv_any123, align 8
  %96 = bitcast i8* %95 to %struct.xpv*
  %xpv_pv124 = getelementptr inbounds %struct.xpv, %struct.xpv* %96, i32 0, i32 0
  %97 = load i8*, i8** %xpv_pv124, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %97, i64 1
  %98 = load i8, i8* %arrayidx125, align 1
  %conv126 = sext i8 %98 to i32
  %and127 = and i32 %conv126, 16
  %tobool128 = icmp ne i32 %and127, 0
  br i1 %tobool128, label %if.then.137, label %lor.lhs.false.129

lor.lhs.false.129:                                ; preds = %lor.lhs.false.121, %land.lhs.true.105, %if.then.101
  %99 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings130 = getelementptr inbounds %struct.cop, %struct.cop* %99, i32 0, i32 14
  %100 = load %struct.sv*, %struct.sv** %cop_warnings130, align 8
  %cmp131 = icmp eq %struct.sv* %100, null
  br i1 %cmp131, label %land.lhs.true.133, label %if.end.157

land.lhs.true.133:                                ; preds = %lor.lhs.false.129
  %101 = load i8, i8* @PL_dowarn, align 1
  %conv134 = zext i8 %101 to i32
  %and135 = and i32 %conv134, 1
  %tobool136 = icmp ne i32 %and135, 0
  br i1 %tobool136, label %if.then.137, label %if.end.157

if.then.137:                                      ; preds = %land.lhs.true.133, %lor.lhs.false.121, %lor.lhs.false.113, %land.lhs.true.109
  %102 = load %struct.gv*, %struct.gv** %gv, align 8
  %103 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool138 = icmp ne %struct.gv* %103, null
  br i1 %tobool138, label %land.lhs.true.139, label %cond.false.152

land.lhs.true.139:                                ; preds = %if.then.137
  %104 = load %struct.gv*, %struct.gv** %gv, align 8
  %105 = bitcast %struct.gv* %104 to %struct.sv*
  %sv_flags140 = getelementptr inbounds %struct.sv, %struct.sv* %105, i32 0, i32 2
  %106 = load i32, i32* %sv_flags140, align 4
  %and141 = and i32 %106, 255
  %cmp142 = icmp eq i32 %and141, 13
  br i1 %cmp142, label %land.lhs.true.144, label %cond.false.152

land.lhs.true.144:                                ; preds = %land.lhs.true.139
  %107 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any145 = getelementptr inbounds %struct.gv, %struct.gv* %107, i32 0, i32 0
  %108 = load %struct.xpvgv*, %struct.xpvgv** %sv_any145, align 8
  %xgv_gp146 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %108, i32 0, i32 7
  %109 = load %struct.gp*, %struct.gp** %xgv_gp146, align 8
  %tobool147 = icmp ne %struct.gp* %109, null
  br i1 %tobool147, label %cond.true.148, label %cond.false.152

cond.true.148:                                    ; preds = %land.lhs.true.144
  %110 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any149 = getelementptr inbounds %struct.gv, %struct.gv* %110, i32 0, i32 0
  %111 = load %struct.xpvgv*, %struct.xpvgv** %sv_any149, align 8
  %xgv_gp150 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %111, i32 0, i32 7
  %112 = load %struct.gp*, %struct.gp** %xgv_gp150, align 8
  %gp_io151 = getelementptr inbounds %struct.gp, %struct.gp* %112, i32 0, i32 2
  %113 = load %struct.io*, %struct.io** %gp_io151, align 8
  br label %cond.end.153

cond.false.152:                                   ; preds = %land.lhs.true.144, %land.lhs.true.139, %if.then.137
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.152, %cond.true.148
  %cond154 = phi %struct.io* [ %113, %cond.true.148 ], [ null, %cond.false.152 ]
  %114 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type155 = getelementptr inbounds %struct.op, %struct.op* %114, i32 0, i32 4
  %115 = load i16, i16* %op_type155, align 2
  %conv156 = zext i16 %115 to i32
  call void @Perl_report_evil_fh(%struct.gv* %102, %struct.io* %cond154, i32 %conv156)
  br label %if.end.157

if.end.157:                                       ; preds = %cond.end.153, %land.lhs.true.133, %lor.lhs.false.129
  store i32 0, i32* %max, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.end.98
  br label %if.end.325

if.else.159:                                      ; preds = %entry
  %116 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %116, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %117 = load %struct.sv*, %struct.sv** %116, align 8
  store %struct.sv* %117, %struct.sv** %sv, align 8
  %118 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags160 = getelementptr inbounds %struct.sv, %struct.sv* %118, i32 0, i32 2
  %119 = load i32, i32* %sv_flags160, align 4
  %and161 = and i32 %119, 255
  %cmp162 = icmp eq i32 %and161, 13
  br i1 %cmp162, label %if.then.164, label %if.else.165

if.then.164:                                      ; preds = %if.else.159
  %120 = load %struct.sv*, %struct.sv** %sv, align 8
  %121 = bitcast %struct.sv* %120 to %struct.gv*
  store %struct.gv* %121, %struct.gv** %gv, align 8
  br label %do_fstat

if.else.165:                                      ; preds = %if.else.159
  %122 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags166 = getelementptr inbounds %struct.sv, %struct.sv* %122, i32 0, i32 2
  %123 = load i32, i32* %sv_flags166, align 4
  %and167 = and i32 %123, 524288
  %tobool168 = icmp ne i32 %and167, 0
  br i1 %tobool168, label %land.lhs.true.169, label %if.end.225

land.lhs.true.169:                                ; preds = %if.else.165
  %124 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any170 = getelementptr inbounds %struct.sv, %struct.sv* %124, i32 0, i32 0
  %125 = load i8*, i8** %sv_any170, align 8
  %126 = bitcast i8* %125 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %126, i32 0, i32 0
  %127 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_flags171 = getelementptr inbounds %struct.sv, %struct.sv* %127, i32 0, i32 2
  %128 = load i32, i32* %sv_flags171, align 4
  %and172 = and i32 %128, 255
  %cmp173 = icmp eq i32 %and172, 13
  br i1 %cmp173, label %if.then.175, label %if.end.225

if.then.175:                                      ; preds = %land.lhs.true.169
  %129 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any176 = getelementptr inbounds %struct.sv, %struct.sv* %129, i32 0, i32 0
  %130 = load i8*, i8** %sv_any176, align 8
  %131 = bitcast i8* %130 to %struct.xrv*
  %xrv_rv177 = getelementptr inbounds %struct.xrv, %struct.xrv* %131, i32 0, i32 0
  %132 = load %struct.sv*, %struct.sv** %xrv_rv177, align 8
  %133 = bitcast %struct.sv* %132 to %struct.gv*
  store %struct.gv* %133, %struct.gv** %gv, align 8
  %134 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type178 = getelementptr inbounds %struct.op, %struct.op* %134, i32 0, i32 4
  %135 = load i16, i16* %op_type178, align 2
  %conv179 = zext i16 %135 to i32
  %cmp180 = icmp eq i32 %conv179, 234
  br i1 %cmp180, label %land.lhs.true.182, label %if.end.224

land.lhs.true.182:                                ; preds = %if.then.175
  %136 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings183 = getelementptr inbounds %struct.cop, %struct.cop* %136, i32 0, i32 14
  %137 = load %struct.sv*, %struct.sv** %cop_warnings183, align 8
  %cmp184 = icmp ne %struct.sv* %137, null
  br i1 %cmp184, label %land.lhs.true.186, label %lor.lhs.false.202

land.lhs.true.186:                                ; preds = %land.lhs.true.182
  %138 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings187 = getelementptr inbounds %struct.cop, %struct.cop* %138, i32 0, i32 14
  %139 = load %struct.sv*, %struct.sv** %cop_warnings187, align 8
  %cmp188 = icmp ne %struct.sv* %139, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp188, label %land.lhs.true.190, label %lor.lhs.false.202

land.lhs.true.190:                                ; preds = %land.lhs.true.186
  %140 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings191 = getelementptr inbounds %struct.cop, %struct.cop* %140, i32 0, i32 14
  %141 = load %struct.sv*, %struct.sv** %cop_warnings191, align 8
  %cmp192 = icmp eq %struct.sv* %141, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp192, label %if.then.210, label %lor.lhs.false.194

lor.lhs.false.194:                                ; preds = %land.lhs.true.190
  %142 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings195 = getelementptr inbounds %struct.cop, %struct.cop* %142, i32 0, i32 14
  %143 = load %struct.sv*, %struct.sv** %cop_warnings195, align 8
  %sv_any196 = getelementptr inbounds %struct.sv, %struct.sv* %143, i32 0, i32 0
  %144 = load i8*, i8** %sv_any196, align 8
  %145 = bitcast i8* %144 to %struct.xpv*
  %xpv_pv197 = getelementptr inbounds %struct.xpv, %struct.xpv* %145, i32 0, i32 0
  %146 = load i8*, i8** %xpv_pv197, align 8
  %arrayidx198 = getelementptr inbounds i8, i8* %146, i64 1
  %147 = load i8, i8* %arrayidx198, align 1
  %conv199 = sext i8 %147 to i32
  %and200 = and i32 %conv199, 4
  %tobool201 = icmp ne i32 %and200, 0
  br i1 %tobool201, label %if.then.210, label %lor.lhs.false.202

lor.lhs.false.202:                                ; preds = %lor.lhs.false.194, %land.lhs.true.186, %land.lhs.true.182
  %148 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings203 = getelementptr inbounds %struct.cop, %struct.cop* %148, i32 0, i32 14
  %149 = load %struct.sv*, %struct.sv** %cop_warnings203, align 8
  %cmp204 = icmp eq %struct.sv* %149, null
  br i1 %cmp204, label %land.lhs.true.206, label %if.end.224

land.lhs.true.206:                                ; preds = %lor.lhs.false.202
  %150 = load i8, i8* @PL_dowarn, align 1
  %conv207 = zext i8 %150 to i32
  %and208 = and i32 %conv207, 1
  %tobool209 = icmp ne i32 %and208, 0
  br i1 %tobool209, label %if.then.210, label %if.end.224

if.then.210:                                      ; preds = %land.lhs.true.206, %lor.lhs.false.194, %land.lhs.true.190
  %151 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any211 = getelementptr inbounds %struct.gv, %struct.gv* %151, i32 0, i32 0
  %152 = load %struct.xpvgv*, %struct.xpvgv** %sv_any211, align 8
  %xgv_gp212 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %152, i32 0, i32 7
  %153 = load %struct.gp*, %struct.gp** %xgv_gp212, align 8
  %gp_egv213 = getelementptr inbounds %struct.gp, %struct.gp* %153, i32 0, i32 6
  %154 = load %struct.gv*, %struct.gv** %gp_egv213, align 8
  %tobool214 = icmp ne %struct.gv* %154, null
  br i1 %tobool214, label %cond.true.215, label %cond.false.219

cond.true.215:                                    ; preds = %if.then.210
  %155 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any216 = getelementptr inbounds %struct.gv, %struct.gv* %155, i32 0, i32 0
  %156 = load %struct.xpvgv*, %struct.xpvgv** %sv_any216, align 8
  %xgv_gp217 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %156, i32 0, i32 7
  %157 = load %struct.gp*, %struct.gp** %xgv_gp217, align 8
  %gp_egv218 = getelementptr inbounds %struct.gp, %struct.gp* %157, i32 0, i32 6
  %158 = load %struct.gv*, %struct.gv** %gp_egv218, align 8
  br label %cond.end.220

cond.false.219:                                   ; preds = %if.then.210
  %159 = load %struct.gv*, %struct.gv** %gv, align 8
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.false.219, %cond.true.215
  %cond221 = phi %struct.gv* [ %158, %cond.true.215 ], [ %159, %cond.false.219 ]
  %sv_any222 = getelementptr inbounds %struct.gv, %struct.gv* %cond221, i32 0, i32 0
  %160 = load %struct.xpvgv*, %struct.xpvgv** %sv_any222, align 8
  %xgv_name223 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %160, i32 0, i32 8
  %161 = load i8*, i8** %xgv_name223, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.68, i32 0, i32 0), i8* %161)
  br label %if.end.224

if.end.224:                                       ; preds = %cond.end.220, %land.lhs.true.206, %lor.lhs.false.202, %if.then.175
  br label %do_fstat

if.end.225:                                       ; preds = %land.lhs.true.169, %if.else.165
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225
  %162 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %163 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags227 = getelementptr inbounds %struct.sv, %struct.sv* %163, i32 0, i32 2
  %164 = load i32, i32* %sv_flags227, align 4
  %and228 = and i32 %164, 262144
  %cmp229 = icmp eq i32 %and228, 262144
  br i1 %cmp229, label %cond.true.231, label %cond.false.235

cond.true.231:                                    ; preds = %if.end.226
  %165 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any232 = getelementptr inbounds %struct.sv, %struct.sv* %165, i32 0, i32 0
  %166 = load i8*, i8** %sv_any232, align 8
  %167 = bitcast i8* %166 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %167, i32 0, i32 1
  %168 = load i64, i64* %xpv_cur, align 8
  store i64 %168, i64* %n_a, align 8
  %169 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any233 = getelementptr inbounds %struct.sv, %struct.sv* %169, i32 0, i32 0
  %170 = load i8*, i8** %sv_any233, align 8
  %171 = bitcast i8* %170 to %struct.xpv*
  %xpv_pv234 = getelementptr inbounds %struct.xpv, %struct.xpv* %171, i32 0, i32 0
  %172 = load i8*, i8** %xpv_pv234, align 8
  br label %cond.end.237

cond.false.235:                                   ; preds = %if.end.226
  %173 = load %struct.sv*, %struct.sv** %sv, align 8
  %call236 = call i8* @Perl_sv_2pv_flags(%struct.sv* %173, i64* %n_a, i32 2)
  br label %cond.end.237

cond.end.237:                                     ; preds = %cond.false.235, %cond.true.231
  %cond238 = phi i8* [ %172, %cond.true.231 ], [ %call236, %cond.false.235 ]
  call void @Perl_sv_setpv(%struct.sv* %162, i8* %cond238)
  store %struct.gv* null, %struct.gv** @PL_statgv, align 8
  %174 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type239 = getelementptr inbounds %struct.op, %struct.op* %174, i32 0, i32 4
  %175 = load i16, i16* %op_type239, align 2
  %conv240 = zext i16 %175 to i32
  store i32 %conv240, i32* @PL_laststype, align 4
  %176 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type241 = getelementptr inbounds %struct.op, %struct.op* %176, i32 0, i32 4
  %177 = load i16, i16* %op_type241, align 2
  %conv242 = zext i16 %177 to i32
  %cmp243 = icmp eq i32 %conv242, 234
  br i1 %cmp243, label %if.then.245, label %if.else.260

if.then.245:                                      ; preds = %cond.end.237
  %178 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %sv_flags246 = getelementptr inbounds %struct.sv, %struct.sv* %178, i32 0, i32 2
  %179 = load i32, i32* %sv_flags246, align 4
  %and247 = and i32 %179, 262144
  %cmp248 = icmp eq i32 %and247, 262144
  br i1 %cmp248, label %cond.true.250, label %cond.false.255

cond.true.250:                                    ; preds = %if.then.245
  %180 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %sv_any251 = getelementptr inbounds %struct.sv, %struct.sv* %180, i32 0, i32 0
  %181 = load i8*, i8** %sv_any251, align 8
  %182 = bitcast i8* %181 to %struct.xpv*
  %xpv_cur252 = getelementptr inbounds %struct.xpv, %struct.xpv* %182, i32 0, i32 1
  %183 = load i64, i64* %xpv_cur252, align 8
  store i64 %183, i64* %n_a, align 8
  %184 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %sv_any253 = getelementptr inbounds %struct.sv, %struct.sv* %184, i32 0, i32 0
  %185 = load i8*, i8** %sv_any253, align 8
  %186 = bitcast i8* %185 to %struct.xpv*
  %xpv_pv254 = getelementptr inbounds %struct.xpv, %struct.xpv* %186, i32 0, i32 0
  %187 = load i8*, i8** %xpv_pv254, align 8
  br label %cond.end.257

cond.false.255:                                   ; preds = %if.then.245
  %188 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %call256 = call i8* @Perl_sv_2pv_flags(%struct.sv* %188, i64* %n_a, i32 2)
  br label %cond.end.257

cond.end.257:                                     ; preds = %cond.false.255, %cond.true.250
  %cond258 = phi i8* [ %187, %cond.true.250 ], [ %call256, %cond.false.255 ]
  %call259 = call i32 @stat(i8* %cond258, %struct.stat* @PL_statcache)
  store i32 %call259, i32* @PL_laststatval, align 4
  br label %if.end.275

if.else.260:                                      ; preds = %cond.end.237
  %189 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %sv_flags261 = getelementptr inbounds %struct.sv, %struct.sv* %189, i32 0, i32 2
  %190 = load i32, i32* %sv_flags261, align 4
  %and262 = and i32 %190, 262144
  %cmp263 = icmp eq i32 %and262, 262144
  br i1 %cmp263, label %cond.true.265, label %cond.false.270

cond.true.265:                                    ; preds = %if.else.260
  %191 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %sv_any266 = getelementptr inbounds %struct.sv, %struct.sv* %191, i32 0, i32 0
  %192 = load i8*, i8** %sv_any266, align 8
  %193 = bitcast i8* %192 to %struct.xpv*
  %xpv_cur267 = getelementptr inbounds %struct.xpv, %struct.xpv* %193, i32 0, i32 1
  %194 = load i64, i64* %xpv_cur267, align 8
  store i64 %194, i64* %n_a, align 8
  %195 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %sv_any268 = getelementptr inbounds %struct.sv, %struct.sv* %195, i32 0, i32 0
  %196 = load i8*, i8** %sv_any268, align 8
  %197 = bitcast i8* %196 to %struct.xpv*
  %xpv_pv269 = getelementptr inbounds %struct.xpv, %struct.xpv* %197, i32 0, i32 0
  %198 = load i8*, i8** %xpv_pv269, align 8
  br label %cond.end.272

cond.false.270:                                   ; preds = %if.else.260
  %199 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %call271 = call i8* @Perl_sv_2pv_flags(%struct.sv* %199, i64* %n_a, i32 2)
  br label %cond.end.272

cond.end.272:                                     ; preds = %cond.false.270, %cond.true.265
  %cond273 = phi i8* [ %198, %cond.true.265 ], [ %call271, %cond.false.270 ]
  %call274 = call i32 @stat(i8* %cond273, %struct.stat* @PL_statcache)
  store i32 %call274, i32* @PL_laststatval, align 4
  br label %if.end.275

if.end.275:                                       ; preds = %cond.end.272, %cond.end.257
  %200 = load i32, i32* @PL_laststatval, align 4
  %cmp276 = icmp slt i32 %200, 0
  br i1 %cmp276, label %if.then.278, label %if.end.324

if.then.278:                                      ; preds = %if.end.275
  %201 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings279 = getelementptr inbounds %struct.cop, %struct.cop* %201, i32 0, i32 14
  %202 = load %struct.sv*, %struct.sv** %cop_warnings279, align 8
  %cmp280 = icmp ne %struct.sv* %202, null
  br i1 %cmp280, label %land.lhs.true.282, label %lor.lhs.false.298

land.lhs.true.282:                                ; preds = %if.then.278
  %203 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings283 = getelementptr inbounds %struct.cop, %struct.cop* %203, i32 0, i32 14
  %204 = load %struct.sv*, %struct.sv** %cop_warnings283, align 8
  %cmp284 = icmp ne %struct.sv* %204, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp284, label %land.lhs.true.286, label %lor.lhs.false.298

land.lhs.true.286:                                ; preds = %land.lhs.true.282
  %205 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings287 = getelementptr inbounds %struct.cop, %struct.cop* %205, i32 0, i32 14
  %206 = load %struct.sv*, %struct.sv** %cop_warnings287, align 8
  %cmp288 = icmp eq %struct.sv* %206, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp288, label %land.lhs.true.306, label %lor.lhs.false.290

lor.lhs.false.290:                                ; preds = %land.lhs.true.286
  %207 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings291 = getelementptr inbounds %struct.cop, %struct.cop* %207, i32 0, i32 14
  %208 = load %struct.sv*, %struct.sv** %cop_warnings291, align 8
  %sv_any292 = getelementptr inbounds %struct.sv, %struct.sv* %208, i32 0, i32 0
  %209 = load i8*, i8** %sv_any292, align 8
  %210 = bitcast i8* %209 to %struct.xpv*
  %xpv_pv293 = getelementptr inbounds %struct.xpv, %struct.xpv* %210, i32 0, i32 0
  %211 = load i8*, i8** %xpv_pv293, align 8
  %arrayidx294 = getelementptr inbounds i8, i8* %211, i64 2
  %212 = load i8, i8* %arrayidx294, align 1
  %conv295 = sext i8 %212 to i32
  %and296 = and i32 %conv295, 4
  %tobool297 = icmp ne i32 %and296, 0
  br i1 %tobool297, label %land.lhs.true.306, label %lor.lhs.false.298

lor.lhs.false.298:                                ; preds = %lor.lhs.false.290, %land.lhs.true.282, %if.then.278
  %213 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings299 = getelementptr inbounds %struct.cop, %struct.cop* %213, i32 0, i32 14
  %214 = load %struct.sv*, %struct.sv** %cop_warnings299, align 8
  %cmp300 = icmp eq %struct.sv* %214, null
  br i1 %cmp300, label %land.lhs.true.302, label %if.end.323

land.lhs.true.302:                                ; preds = %lor.lhs.false.298
  %215 = load i8, i8* @PL_dowarn, align 1
  %conv303 = zext i8 %215 to i32
  %and304 = and i32 %conv303, 1
  %tobool305 = icmp ne i32 %and304, 0
  br i1 %tobool305, label %land.lhs.true.306, label %if.end.323

land.lhs.true.306:                                ; preds = %land.lhs.true.302, %lor.lhs.false.290, %land.lhs.true.286
  %216 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %sv_flags307 = getelementptr inbounds %struct.sv, %struct.sv* %216, i32 0, i32 2
  %217 = load i32, i32* %sv_flags307, align 4
  %and308 = and i32 %217, 262144
  %cmp309 = icmp eq i32 %and308, 262144
  br i1 %cmp309, label %cond.true.311, label %cond.false.316

cond.true.311:                                    ; preds = %land.lhs.true.306
  %218 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %sv_any312 = getelementptr inbounds %struct.sv, %struct.sv* %218, i32 0, i32 0
  %219 = load i8*, i8** %sv_any312, align 8
  %220 = bitcast i8* %219 to %struct.xpv*
  %xpv_cur313 = getelementptr inbounds %struct.xpv, %struct.xpv* %220, i32 0, i32 1
  %221 = load i64, i64* %xpv_cur313, align 8
  store i64 %221, i64* %n_a, align 8
  %222 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %sv_any314 = getelementptr inbounds %struct.sv, %struct.sv* %222, i32 0, i32 0
  %223 = load i8*, i8** %sv_any314, align 8
  %224 = bitcast i8* %223 to %struct.xpv*
  %xpv_pv315 = getelementptr inbounds %struct.xpv, %struct.xpv* %224, i32 0, i32 0
  %225 = load i8*, i8** %xpv_pv315, align 8
  br label %cond.end.318

cond.false.316:                                   ; preds = %land.lhs.true.306
  %226 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %call317 = call i8* @Perl_sv_2pv_flags(%struct.sv* %226, i64* %n_a, i32 2)
  br label %cond.end.318

cond.end.318:                                     ; preds = %cond.false.316, %cond.true.311
  %cond319 = phi i8* [ %225, %cond.true.311 ], [ %call317, %cond.false.316 ]
  %call320 = call i8* @strchr(i8* %cond319, i32 10)
  %tobool321 = icmp ne i8* %call320, null
  br i1 %tobool321, label %if.then.322, label %if.end.323

if.then.322:                                      ; preds = %cond.end.318
  call void (i32, i8*, ...) @Perl_warner(i32 9, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_warn_nl, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0))
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.322, %cond.end.318, %land.lhs.true.302, %lor.lhs.false.298
  store i32 0, i32* %max, align 4
  br label %if.end.324

if.end.324:                                       ; preds = %if.end.323, %if.end.275
  br label %if.end.325

if.end.325:                                       ; preds = %if.end.324, %if.end.158
  %227 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags326 = getelementptr inbounds %struct.op, %struct.op* %227, i32 0, i32 6
  %228 = load i8, i8* %op_flags326, align 1
  %conv327 = zext i8 %228 to i32
  %and328 = and i32 %conv327, 3
  %cmp329 = icmp eq i32 %and328, 1
  br i1 %cmp329, label %cond.true.331, label %cond.false.332

cond.true.331:                                    ; preds = %if.end.325
  br label %cond.end.352

cond.false.332:                                   ; preds = %if.end.325
  %229 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags333 = getelementptr inbounds %struct.op, %struct.op* %229, i32 0, i32 6
  %230 = load i8, i8* %op_flags333, align 1
  %conv334 = zext i8 %230 to i32
  %and335 = and i32 %conv334, 3
  %cmp336 = icmp eq i32 %and335, 2
  br i1 %cmp336, label %cond.true.338, label %cond.false.339

cond.true.338:                                    ; preds = %cond.false.332
  br label %cond.end.350

cond.false.339:                                   ; preds = %cond.false.332
  %231 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags340 = getelementptr inbounds %struct.op, %struct.op* %231, i32 0, i32 6
  %232 = load i8, i8* %op_flags340, align 1
  %conv341 = zext i8 %232 to i32
  %and342 = and i32 %conv341, 3
  %cmp343 = icmp eq i32 %and342, 3
  br i1 %cmp343, label %cond.true.345, label %cond.false.346

cond.true.345:                                    ; preds = %cond.false.339
  br label %cond.end.348

cond.false.346:                                   ; preds = %cond.false.339
  %call347 = call i32 @Perl_block_gimme()
  br label %cond.end.348

cond.end.348:                                     ; preds = %cond.false.346, %cond.true.345
  %cond349 = phi i32 [ 1, %cond.true.345 ], [ %call347, %cond.false.346 ]
  br label %cond.end.350

cond.end.350:                                     ; preds = %cond.end.348, %cond.true.338
  %cond351 = phi i32 [ 0, %cond.true.338 ], [ %cond349, %cond.end.348 ]
  br label %cond.end.352

cond.end.352:                                     ; preds = %cond.end.350, %cond.true.331
  %cond353 = phi i32 [ 128, %cond.true.331 ], [ %cond351, %cond.end.350 ]
  store i32 %cond353, i32* %gimme, align 4
  %233 = load i32, i32* %gimme, align 4
  %cmp354 = icmp ne i32 %233, 1
  br i1 %cmp354, label %if.then.356, label %if.end.369

if.then.356:                                      ; preds = %cond.end.352
  %234 = load i32, i32* %gimme, align 4
  %cmp357 = icmp ne i32 %234, 128
  br i1 %cmp357, label %if.then.359, label %if.end.368

if.then.359:                                      ; preds = %if.then.356
  %235 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %236 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %235 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %236 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp360 = icmp slt i64 %sub.ptr.div, 1
  br i1 %cmp360, label %if.then.362, label %if.end.364

if.then.362:                                      ; preds = %if.then.359
  %237 = load %struct.sv**, %struct.sv*** %sp, align 8
  %238 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call363 = call %struct.sv** @Perl_stack_grow(%struct.sv** %237, %struct.sv** %238, i32 1)
  store %struct.sv** %call363, %struct.sv*** %sp, align 8
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.362, %if.then.359
  %239 = load i32, i32* %max, align 4
  %tobool365 = icmp ne i32 %239, 0
  %cond366 = select i1 %tobool365, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  %240 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr367 = getelementptr inbounds %struct.sv*, %struct.sv** %240, i32 1
  store %struct.sv** %incdec.ptr367, %struct.sv*** %sp, align 8
  store %struct.sv* %cond366, %struct.sv** %incdec.ptr367, align 8
  store %struct.sv* %cond366, %struct.sv** %tmp
  %241 = load %struct.sv*, %struct.sv** %tmp
  br label %if.end.368

if.end.368:                                       ; preds = %if.end.364, %if.then.356
  %242 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %242, %struct.sv*** @PL_stack_sp, align 8
  %243 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %243, i32 0, i32 0
  %244 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %244, %struct.op** %retval
  br label %return

if.end.369:                                       ; preds = %cond.end.352
  %245 = load i32, i32* %max, align 4
  %tobool370 = icmp ne i32 %245, 0
  br i1 %tobool370, label %if.then.371, label %if.end.428

if.then.371:                                      ; preds = %if.end.369
  %246 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %247 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast372 = ptrtoint %struct.sv** %246 to i64
  %sub.ptr.rhs.cast373 = ptrtoint %struct.sv** %247 to i64
  %sub.ptr.sub374 = sub i64 %sub.ptr.lhs.cast372, %sub.ptr.rhs.cast373
  %sub.ptr.div375 = sdiv exact i64 %sub.ptr.sub374, 8
  %248 = load i32, i32* %max, align 4
  %conv376 = sext i32 %248 to i64
  %cmp377 = icmp slt i64 %sub.ptr.div375, %conv376
  br i1 %cmp377, label %if.then.379, label %if.end.381

if.then.379:                                      ; preds = %if.then.371
  %249 = load %struct.sv**, %struct.sv*** %sp, align 8
  %250 = load %struct.sv**, %struct.sv*** %sp, align 8
  %251 = load i32, i32* %max, align 4
  %call380 = call %struct.sv** @Perl_stack_grow(%struct.sv** %249, %struct.sv** %250, i32 %251)
  store %struct.sv** %call380, %struct.sv*** %sp, align 8
  br label %if.end.381

if.end.381:                                       ; preds = %if.then.379, %if.then.371
  %252 = load i32, i32* @PL_tmps_ix, align 4
  %253 = load i32, i32* %max, align 4
  %add = add nsw i32 %252, %253
  %254 = load i32, i32* @PL_tmps_max, align 4
  %cmp382 = icmp sge i32 %add, %254
  br i1 %cmp382, label %if.then.384, label %if.end.385

if.then.384:                                      ; preds = %if.end.381
  %255 = load i32, i32* %max, align 4
  call void @Perl_tmps_grow(i32 %255)
  br label %if.end.385

if.end.385:                                       ; preds = %if.then.384, %if.end.381
  %256 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 0), align 8
  %call386 = call %struct.sv* @Perl_newSViv(i64 %256)
  %call387 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call386)
  %257 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr388 = getelementptr inbounds %struct.sv*, %struct.sv** %257, i32 1
  store %struct.sv** %incdec.ptr388, %struct.sv*** %sp, align 8
  store %struct.sv* %call387, %struct.sv** %incdec.ptr388, align 8
  %258 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 1), align 8
  %call389 = call %struct.sv* @Perl_newSViv(i64 %258)
  %call390 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call389)
  %259 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr391 = getelementptr inbounds %struct.sv*, %struct.sv** %259, i32 1
  store %struct.sv** %incdec.ptr391, %struct.sv*** %sp, align 8
  store %struct.sv* %call390, %struct.sv** %incdec.ptr391, align 8
  %260 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 3), align 4
  %conv392 = zext i32 %260 to i64
  %call393 = call %struct.sv* @Perl_newSVuv(i64 %conv392)
  %call394 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call393)
  %261 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr395 = getelementptr inbounds %struct.sv*, %struct.sv** %261, i32 1
  store %struct.sv** %incdec.ptr395, %struct.sv*** %sp, align 8
  store %struct.sv* %call394, %struct.sv** %incdec.ptr395, align 8
  %262 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 2), align 8
  %call396 = call %struct.sv* @Perl_newSVuv(i64 %262)
  %call397 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call396)
  %263 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr398 = getelementptr inbounds %struct.sv*, %struct.sv** %263, i32 1
  store %struct.sv** %incdec.ptr398, %struct.sv*** %sp, align 8
  store %struct.sv* %call397, %struct.sv** %incdec.ptr398, align 8
  %264 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 4), align 4
  %conv399 = zext i32 %264 to i64
  %call400 = call %struct.sv* @Perl_newSVuv(i64 %conv399)
  %call401 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call400)
  %265 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr402 = getelementptr inbounds %struct.sv*, %struct.sv** %265, i32 1
  store %struct.sv** %incdec.ptr402, %struct.sv*** %sp, align 8
  store %struct.sv* %call401, %struct.sv** %incdec.ptr402, align 8
  %266 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 5), align 4
  %conv403 = zext i32 %266 to i64
  %call404 = call %struct.sv* @Perl_newSVuv(i64 %conv403)
  %call405 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call404)
  %267 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr406 = getelementptr inbounds %struct.sv*, %struct.sv** %267, i32 1
  store %struct.sv** %incdec.ptr406, %struct.sv*** %sp, align 8
  store %struct.sv* %call405, %struct.sv** %incdec.ptr406, align 8
  %call407 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i64 0)
  %call408 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call407)
  %268 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr409 = getelementptr inbounds %struct.sv*, %struct.sv** %268, i32 1
  store %struct.sv** %incdec.ptr409, %struct.sv*** %sp, align 8
  store %struct.sv* %call408, %struct.sv** %incdec.ptr409, align 8
  %269 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 8), align 8
  %call410 = call %struct.sv* @Perl_newSViv(i64 %269)
  %call411 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call410)
  %270 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr412 = getelementptr inbounds %struct.sv*, %struct.sv** %270, i32 1
  store %struct.sv** %incdec.ptr412, %struct.sv*** %sp, align 8
  store %struct.sv* %call411, %struct.sv** %incdec.ptr412, align 8
  %271 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 11, i32 0), align 8
  %call413 = call %struct.sv* @Perl_newSViv(i64 %271)
  %call414 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call413)
  %272 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr415 = getelementptr inbounds %struct.sv*, %struct.sv** %272, i32 1
  store %struct.sv** %incdec.ptr415, %struct.sv*** %sp, align 8
  store %struct.sv* %call414, %struct.sv** %incdec.ptr415, align 8
  %273 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 12, i32 0), align 8
  %call416 = call %struct.sv* @Perl_newSViv(i64 %273)
  %call417 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call416)
  %274 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr418 = getelementptr inbounds %struct.sv*, %struct.sv** %274, i32 1
  store %struct.sv** %incdec.ptr418, %struct.sv*** %sp, align 8
  store %struct.sv* %call417, %struct.sv** %incdec.ptr418, align 8
  %275 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 13, i32 0), align 8
  %call419 = call %struct.sv* @Perl_newSViv(i64 %275)
  %call420 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call419)
  %276 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr421 = getelementptr inbounds %struct.sv*, %struct.sv** %276, i32 1
  store %struct.sv** %incdec.ptr421, %struct.sv*** %sp, align 8
  store %struct.sv* %call420, %struct.sv** %incdec.ptr421, align 8
  %call422 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i64 0)
  %call423 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call422)
  %277 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr424 = getelementptr inbounds %struct.sv*, %struct.sv** %277, i32 1
  store %struct.sv** %incdec.ptr424, %struct.sv*** %sp, align 8
  store %struct.sv* %call423, %struct.sv** %incdec.ptr424, align 8
  %call425 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i64 0)
  %call426 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call425)
  %278 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr427 = getelementptr inbounds %struct.sv*, %struct.sv** %278, i32 1
  store %struct.sv** %incdec.ptr427, %struct.sv*** %sp, align 8
  store %struct.sv* %call426, %struct.sv** %incdec.ptr427, align 8
  br label %if.end.428

if.end.428:                                       ; preds = %if.end.385, %if.end.369
  %279 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %279, %struct.sv*** @PL_stack_sp, align 8
  %280 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next429 = getelementptr inbounds %struct.op, %struct.op* %280, i32 0, i32 0
  %281 = load %struct.op*, %struct.op** %op_next429, align 8
  store %struct.op* %281, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.428, %if.end.368
  %282 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %282
}

declare i32 @fstat(i32, %struct.stat*) #1

declare i32 @stat(i8*, %struct.stat*) #1

declare void @Perl_tmps_grow(i32) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftrread() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %result = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %1, %struct.sv*** %sp, align 8
  %2 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %3, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %4 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %4, %struct.sv*** @PL_stack_sp, align 8
  %5 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %5, i32 0, i32 0
  %6 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %6, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call signext i8 @Perl_cando(i32 256, i32 0, %struct.stat* @PL_statcache)
  %tobool = icmp ne i8 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.sv*, %struct.sv** %7, i32 1
  store %struct.sv** %incdec.ptr3, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %8, %struct.sv*** @PL_stack_sp, align 8
  %9 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next4 = getelementptr inbounds %struct.op, %struct.op* %9, i32 0, i32 0
  %10 = load %struct.op*, %struct.op** %op_next4, align 8
  store %struct.op* %10, %struct.op** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i32 1
  store %struct.sv** %incdec.ptr6, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr6, align 8
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %12, %struct.sv*** @PL_stack_sp, align 8
  %13 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next7 = getelementptr inbounds %struct.op, %struct.op* %13, i32 0, i32 0
  %14 = load %struct.op*, %struct.op** %op_next7, align 8
  store %struct.op* %14, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %15 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %15
}

declare i32 @Perl_my_stat() #1

declare signext i8 @Perl_cando(i32, i32, %struct.stat*) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftrwrite() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %result = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %1, %struct.sv*** %sp, align 8
  %2 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %3, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %4 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %4, %struct.sv*** @PL_stack_sp, align 8
  %5 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %5, i32 0, i32 0
  %6 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %6, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call signext i8 @Perl_cando(i32 128, i32 0, %struct.stat* @PL_statcache)
  %tobool = icmp ne i8 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.sv*, %struct.sv** %7, i32 1
  store %struct.sv** %incdec.ptr3, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %8, %struct.sv*** @PL_stack_sp, align 8
  %9 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next4 = getelementptr inbounds %struct.op, %struct.op* %9, i32 0, i32 0
  %10 = load %struct.op*, %struct.op** %op_next4, align 8
  store %struct.op* %10, %struct.op** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i32 1
  store %struct.sv** %incdec.ptr6, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr6, align 8
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %12, %struct.sv*** @PL_stack_sp, align 8
  %13 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next7 = getelementptr inbounds %struct.op, %struct.op* %13, i32 0, i32 0
  %14 = load %struct.op*, %struct.op** %op_next7, align 8
  store %struct.op* %14, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %15 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %15
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftrexec() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %result = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %1, %struct.sv*** %sp, align 8
  %2 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %3, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %4 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %4, %struct.sv*** @PL_stack_sp, align 8
  %5 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %5, i32 0, i32 0
  %6 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %6, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call signext i8 @Perl_cando(i32 64, i32 0, %struct.stat* @PL_statcache)
  %tobool = icmp ne i8 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.sv*, %struct.sv** %7, i32 1
  store %struct.sv** %incdec.ptr3, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %8, %struct.sv*** @PL_stack_sp, align 8
  %9 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next4 = getelementptr inbounds %struct.op, %struct.op* %9, i32 0, i32 0
  %10 = load %struct.op*, %struct.op** %op_next4, align 8
  store %struct.op* %10, %struct.op** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i32 1
  store %struct.sv** %incdec.ptr6, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr6, align 8
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %12, %struct.sv*** @PL_stack_sp, align 8
  %13 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next7 = getelementptr inbounds %struct.op, %struct.op* %13, i32 0, i32 0
  %14 = load %struct.op*, %struct.op** %op_next7, align 8
  store %struct.op* %14, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %15 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %15
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_fteread() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %result = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %1, %struct.sv*** %sp, align 8
  %2 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %3, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %4 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %4, %struct.sv*** @PL_stack_sp, align 8
  %5 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %5, i32 0, i32 0
  %6 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %6, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call signext i8 @Perl_cando(i32 256, i32 1, %struct.stat* @PL_statcache)
  %tobool = icmp ne i8 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.sv*, %struct.sv** %7, i32 1
  store %struct.sv** %incdec.ptr3, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %8, %struct.sv*** @PL_stack_sp, align 8
  %9 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next4 = getelementptr inbounds %struct.op, %struct.op* %9, i32 0, i32 0
  %10 = load %struct.op*, %struct.op** %op_next4, align 8
  store %struct.op* %10, %struct.op** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i32 1
  store %struct.sv** %incdec.ptr6, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr6, align 8
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %12, %struct.sv*** @PL_stack_sp, align 8
  %13 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next7 = getelementptr inbounds %struct.op, %struct.op* %13, i32 0, i32 0
  %14 = load %struct.op*, %struct.op** %op_next7, align 8
  store %struct.op* %14, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %15 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %15
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftewrite() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %result = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %1, %struct.sv*** %sp, align 8
  %2 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %3, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %4 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %4, %struct.sv*** @PL_stack_sp, align 8
  %5 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %5, i32 0, i32 0
  %6 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %6, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call signext i8 @Perl_cando(i32 128, i32 1, %struct.stat* @PL_statcache)
  %tobool = icmp ne i8 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.sv*, %struct.sv** %7, i32 1
  store %struct.sv** %incdec.ptr3, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %8, %struct.sv*** @PL_stack_sp, align 8
  %9 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next4 = getelementptr inbounds %struct.op, %struct.op* %9, i32 0, i32 0
  %10 = load %struct.op*, %struct.op** %op_next4, align 8
  store %struct.op* %10, %struct.op** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i32 1
  store %struct.sv** %incdec.ptr6, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr6, align 8
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %12, %struct.sv*** @PL_stack_sp, align 8
  %13 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next7 = getelementptr inbounds %struct.op, %struct.op* %13, i32 0, i32 0
  %14 = load %struct.op*, %struct.op** %op_next7, align 8
  store %struct.op* %14, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %15 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %15
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_fteexec() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %result = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %1, %struct.sv*** %sp, align 8
  %2 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %3, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %4 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %4, %struct.sv*** @PL_stack_sp, align 8
  %5 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %5, i32 0, i32 0
  %6 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %6, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call signext i8 @Perl_cando(i32 64, i32 1, %struct.stat* @PL_statcache)
  %tobool = icmp ne i8 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.sv*, %struct.sv** %7, i32 1
  store %struct.sv** %incdec.ptr3, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %8, %struct.sv*** @PL_stack_sp, align 8
  %9 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next4 = getelementptr inbounds %struct.op, %struct.op* %9, i32 0, i32 0
  %10 = load %struct.op*, %struct.op** %op_next4, align 8
  store %struct.op* %10, %struct.op** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i32 1
  store %struct.sv** %incdec.ptr6, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr6, align 8
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %12, %struct.sv*** @PL_stack_sp, align 8
  %13 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next7 = getelementptr inbounds %struct.op, %struct.op* %13, i32 0, i32 0
  %14 = load %struct.op*, %struct.op** %op_next7, align 8
  store %struct.op* %14, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %15 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %15
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftis() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %result = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %2, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %3, %struct.sv*** @PL_stack_sp, align 8
  %4 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %4, i32 0, i32 0
  %5 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %5, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.sv*, %struct.sv** %6, i32 1
  store %struct.sv** %incdec.ptr1, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr1, align 8
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %7, %struct.sv*** @PL_stack_sp, align 8
  %8 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next2 = getelementptr inbounds %struct.op, %struct.op* %8, i32 0, i32 0
  %9 = load %struct.op*, %struct.op** %op_next2, align 8
  store %struct.op* %9, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %10
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_fteowned() #0 {
entry:
  %call = call %struct.op* @Perl_pp_ftrowned()
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftrowned() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %result = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %2, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %3, %struct.sv*** @PL_stack_sp, align 8
  %4 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %4, i32 0, i32 0
  %5 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %5, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 4), align 4
  %7 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %7, i32 0, i32 4
  %8 = load i16, i16* %op_type, align 2
  %conv = zext i16 %8 to i32
  %cmp1 = icmp eq i32 %conv, 243
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load i32, i32* @PL_euid, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %10 = load i32, i32* @PL_uid, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %10, %cond.false ]
  %cmp3 = icmp eq i32 %6, %cond
  br i1 %cmp3, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i32 1
  store %struct.sv** %incdec.ptr6, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr6, align 8
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %12, %struct.sv*** @PL_stack_sp, align 8
  %13 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next7 = getelementptr inbounds %struct.op, %struct.op* %13, i32 0, i32 0
  %14 = load %struct.op*, %struct.op** %op_next7, align 8
  store %struct.op* %14, %struct.op** %retval
  br label %return

if.end.8:                                         ; preds = %cond.end
  %15 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr9 = getelementptr inbounds %struct.sv*, %struct.sv** %15, i32 1
  store %struct.sv** %incdec.ptr9, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr9, align 8
  %16 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %16, %struct.sv*** @PL_stack_sp, align 8
  %17 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next10 = getelementptr inbounds %struct.op, %struct.op* %17, i32 0, i32 0
  %18 = load %struct.op*, %struct.op** %op_next10, align 8
  store %struct.op* %18, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.5, %if.then
  %19 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %19
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftzero() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %result = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %2, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %3, %struct.sv*** @PL_stack_sp, align 8
  %4 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %4, i32 0, i32 0
  %5 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %5, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 8), align 8
  %cmp1 = icmp eq i64 %6, 0
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.sv*, %struct.sv** %7, i32 1
  store %struct.sv** %incdec.ptr3, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %8, %struct.sv*** @PL_stack_sp, align 8
  %9 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next4 = getelementptr inbounds %struct.op, %struct.op* %9, i32 0, i32 0
  %10 = load %struct.op*, %struct.op** %op_next4, align 8
  store %struct.op* %10, %struct.op** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i32 1
  store %struct.sv** %incdec.ptr6, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr6, align 8
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %12, %struct.sv*** @PL_stack_sp, align 8
  %13 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next7 = getelementptr inbounds %struct.op, %struct.op* %13, i32 0, i32 0
  %14 = load %struct.op*, %struct.op** %op_next7, align 8
  store %struct.op* %14, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %15 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %15
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftsize() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %result = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %tmp = alloca %struct.sv*, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 3
  %2 = load i64, i64* %op_targ, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %4, %struct.sv** %targ, align 8
  %5 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %6, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %7, %struct.sv*** @PL_stack_sp, align 8
  %8 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %8, i32 0, i32 0
  %9 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %9, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.sv*, %struct.sv** %targ, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 8), align 8
  call void @Perl_sv_setiv(%struct.sv* %10, i64 %11)
  %12 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 2
  %13 = load i32, i32* %sv_flags, align 4
  %and = and i32 %13, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %14 = load %struct.sv*, %struct.sv** %targ, align 8
  %call2 = call i32 @Perl_mg_set(%struct.sv* %14)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %15 = load %struct.sv*, %struct.sv** %targ, align 8
  %16 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr4 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i32 1
  store %struct.sv** %incdec.ptr4, %struct.sv*** %sp, align 8
  store %struct.sv* %15, %struct.sv** %incdec.ptr4, align 8
  store %struct.sv* %15, %struct.sv** %tmp
  %17 = load %struct.sv*, %struct.sv** %tmp
  %18 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %18, %struct.sv*** @PL_stack_sp, align 8
  %19 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next5 = getelementptr inbounds %struct.op, %struct.op* %19, i32 0, i32 0
  %20 = load %struct.op*, %struct.op** %op_next5, align 8
  store %struct.op* %20, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  %21 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %21
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftmtime() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %result = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %tmp = alloca %struct.sv*, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 3
  %2 = load i64, i64* %op_targ, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %4, %struct.sv** %targ, align 8
  %5 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %6, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %7, %struct.sv*** @PL_stack_sp, align 8
  %8 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %8, i32 0, i32 0
  %9 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %9, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.sv*, %struct.sv** %targ, align 8
  %11 = load i64, i64* @PL_basetime, align 8
  %conv = sitofp i64 %11 to double
  %12 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 12, i32 0), align 8
  %conv1 = sitofp i64 %12 to double
  %sub = fsub double %conv, %conv1
  %div = fdiv double %sub, 8.640000e+04
  call void @Perl_sv_setnv(%struct.sv* %10, double %div)
  %13 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 2
  %14 = load i32, i32* %sv_flags, align 4
  %and = and i32 %14, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %15 = load %struct.sv*, %struct.sv** %targ, align 8
  %call3 = call i32 @Perl_mg_set(%struct.sv* %15)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %16 = load %struct.sv*, %struct.sv** %targ, align 8
  %17 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.sv*, %struct.sv** %17, i32 1
  store %struct.sv** %incdec.ptr5, %struct.sv*** %sp, align 8
  store %struct.sv* %16, %struct.sv** %incdec.ptr5, align 8
  store %struct.sv* %16, %struct.sv** %tmp
  %18 = load %struct.sv*, %struct.sv** %tmp
  %19 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %19, %struct.sv*** @PL_stack_sp, align 8
  %20 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next6 = getelementptr inbounds %struct.op, %struct.op* %20, i32 0, i32 0
  %21 = load %struct.op*, %struct.op** %op_next6, align 8
  store %struct.op* %21, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %22 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %22
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftatime() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %result = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %tmp = alloca %struct.sv*, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 3
  %2 = load i64, i64* %op_targ, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %4, %struct.sv** %targ, align 8
  %5 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %6, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %7, %struct.sv*** @PL_stack_sp, align 8
  %8 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %8, i32 0, i32 0
  %9 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %9, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.sv*, %struct.sv** %targ, align 8
  %11 = load i64, i64* @PL_basetime, align 8
  %conv = sitofp i64 %11 to double
  %12 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 11, i32 0), align 8
  %conv1 = sitofp i64 %12 to double
  %sub = fsub double %conv, %conv1
  %div = fdiv double %sub, 8.640000e+04
  call void @Perl_sv_setnv(%struct.sv* %10, double %div)
  %13 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 2
  %14 = load i32, i32* %sv_flags, align 4
  %and = and i32 %14, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %15 = load %struct.sv*, %struct.sv** %targ, align 8
  %call3 = call i32 @Perl_mg_set(%struct.sv* %15)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %16 = load %struct.sv*, %struct.sv** %targ, align 8
  %17 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.sv*, %struct.sv** %17, i32 1
  store %struct.sv** %incdec.ptr5, %struct.sv*** %sp, align 8
  store %struct.sv* %16, %struct.sv** %incdec.ptr5, align 8
  store %struct.sv* %16, %struct.sv** %tmp
  %18 = load %struct.sv*, %struct.sv** %tmp
  %19 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %19, %struct.sv*** @PL_stack_sp, align 8
  %20 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next6 = getelementptr inbounds %struct.op, %struct.op* %20, i32 0, i32 0
  %21 = load %struct.op*, %struct.op** %op_next6, align 8
  store %struct.op* %21, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %22 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %22
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftctime() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %result = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %tmp = alloca %struct.sv*, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 3
  %2 = load i64, i64* %op_targ, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %4, %struct.sv** %targ, align 8
  %5 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %6, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %7, %struct.sv*** @PL_stack_sp, align 8
  %8 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %8, i32 0, i32 0
  %9 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %9, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.sv*, %struct.sv** %targ, align 8
  %11 = load i64, i64* @PL_basetime, align 8
  %conv = sitofp i64 %11 to double
  %12 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 13, i32 0), align 8
  %conv1 = sitofp i64 %12 to double
  %sub = fsub double %conv, %conv1
  %div = fdiv double %sub, 8.640000e+04
  call void @Perl_sv_setnv(%struct.sv* %10, double %div)
  %13 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 2
  %14 = load i32, i32* %sv_flags, align 4
  %and = and i32 %14, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %15 = load %struct.sv*, %struct.sv** %targ, align 8
  %call3 = call i32 @Perl_mg_set(%struct.sv* %15)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %16 = load %struct.sv*, %struct.sv** %targ, align 8
  %17 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.sv*, %struct.sv** %17, i32 1
  store %struct.sv** %incdec.ptr5, %struct.sv*** %sp, align 8
  store %struct.sv* %16, %struct.sv** %incdec.ptr5, align 8
  store %struct.sv* %16, %struct.sv** %tmp
  %18 = load %struct.sv*, %struct.sv** %tmp
  %19 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %19, %struct.sv*** @PL_stack_sp, align 8
  %20 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next6 = getelementptr inbounds %struct.op, %struct.op* %20, i32 0, i32 0
  %21 = load %struct.op*, %struct.op** %op_next6, align 8
  store %struct.op* %21, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %22 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %22
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftsock() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %result = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %2, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %3, %struct.sv*** @PL_stack_sp, align 8
  %4 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %4, i32 0, i32 0
  %5 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %5, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 3), align 4
  %and = and i32 %6, 61440
  %cmp1 = icmp eq i32 %and, 49152
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.sv*, %struct.sv** %7, i32 1
  store %struct.sv** %incdec.ptr3, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %8, %struct.sv*** @PL_stack_sp, align 8
  %9 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next4 = getelementptr inbounds %struct.op, %struct.op* %9, i32 0, i32 0
  %10 = load %struct.op*, %struct.op** %op_next4, align 8
  store %struct.op* %10, %struct.op** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i32 1
  store %struct.sv** %incdec.ptr6, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr6, align 8
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %12, %struct.sv*** @PL_stack_sp, align 8
  %13 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next7 = getelementptr inbounds %struct.op, %struct.op* %13, i32 0, i32 0
  %14 = load %struct.op*, %struct.op** %op_next7, align 8
  store %struct.op* %14, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %15 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %15
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftchr() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %result = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %2, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %3, %struct.sv*** @PL_stack_sp, align 8
  %4 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %4, i32 0, i32 0
  %5 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %5, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 3), align 4
  %and = and i32 %6, 61440
  %cmp1 = icmp eq i32 %and, 8192
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.sv*, %struct.sv** %7, i32 1
  store %struct.sv** %incdec.ptr3, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %8, %struct.sv*** @PL_stack_sp, align 8
  %9 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next4 = getelementptr inbounds %struct.op, %struct.op* %9, i32 0, i32 0
  %10 = load %struct.op*, %struct.op** %op_next4, align 8
  store %struct.op* %10, %struct.op** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i32 1
  store %struct.sv** %incdec.ptr6, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr6, align 8
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %12, %struct.sv*** @PL_stack_sp, align 8
  %13 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next7 = getelementptr inbounds %struct.op, %struct.op* %13, i32 0, i32 0
  %14 = load %struct.op*, %struct.op** %op_next7, align 8
  store %struct.op* %14, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %15 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %15
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftblk() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %result = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %2, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %3, %struct.sv*** @PL_stack_sp, align 8
  %4 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %4, i32 0, i32 0
  %5 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %5, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 3), align 4
  %and = and i32 %6, 61440
  %cmp1 = icmp eq i32 %and, 24576
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.sv*, %struct.sv** %7, i32 1
  store %struct.sv** %incdec.ptr3, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %8, %struct.sv*** @PL_stack_sp, align 8
  %9 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next4 = getelementptr inbounds %struct.op, %struct.op* %9, i32 0, i32 0
  %10 = load %struct.op*, %struct.op** %op_next4, align 8
  store %struct.op* %10, %struct.op** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i32 1
  store %struct.sv** %incdec.ptr6, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr6, align 8
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %12, %struct.sv*** @PL_stack_sp, align 8
  %13 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next7 = getelementptr inbounds %struct.op, %struct.op* %13, i32 0, i32 0
  %14 = load %struct.op*, %struct.op** %op_next7, align 8
  store %struct.op* %14, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %15 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %15
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftfile() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %result = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %2, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %3, %struct.sv*** @PL_stack_sp, align 8
  %4 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %4, i32 0, i32 0
  %5 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %5, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 3), align 4
  %and = and i32 %6, 61440
  %cmp1 = icmp eq i32 %and, 32768
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.sv*, %struct.sv** %7, i32 1
  store %struct.sv** %incdec.ptr3, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %8, %struct.sv*** @PL_stack_sp, align 8
  %9 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next4 = getelementptr inbounds %struct.op, %struct.op* %9, i32 0, i32 0
  %10 = load %struct.op*, %struct.op** %op_next4, align 8
  store %struct.op* %10, %struct.op** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i32 1
  store %struct.sv** %incdec.ptr6, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr6, align 8
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %12, %struct.sv*** @PL_stack_sp, align 8
  %13 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next7 = getelementptr inbounds %struct.op, %struct.op* %13, i32 0, i32 0
  %14 = load %struct.op*, %struct.op** %op_next7, align 8
  store %struct.op* %14, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %15 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %15
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftdir() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %result = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %2, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %3, %struct.sv*** @PL_stack_sp, align 8
  %4 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %4, i32 0, i32 0
  %5 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %5, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 3), align 4
  %and = and i32 %6, 61440
  %cmp1 = icmp eq i32 %and, 16384
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.sv*, %struct.sv** %7, i32 1
  store %struct.sv** %incdec.ptr3, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %8, %struct.sv*** @PL_stack_sp, align 8
  %9 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next4 = getelementptr inbounds %struct.op, %struct.op* %9, i32 0, i32 0
  %10 = load %struct.op*, %struct.op** %op_next4, align 8
  store %struct.op* %10, %struct.op** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i32 1
  store %struct.sv** %incdec.ptr6, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr6, align 8
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %12, %struct.sv*** @PL_stack_sp, align 8
  %13 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next7 = getelementptr inbounds %struct.op, %struct.op* %13, i32 0, i32 0
  %14 = load %struct.op*, %struct.op** %op_next7, align 8
  store %struct.op* %14, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %15 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %15
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftpipe() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %result = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %2, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %3, %struct.sv*** @PL_stack_sp, align 8
  %4 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %4, i32 0, i32 0
  %5 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %5, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 3), align 4
  %and = and i32 %6, 61440
  %cmp1 = icmp eq i32 %and, 4096
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.sv*, %struct.sv** %7, i32 1
  store %struct.sv** %incdec.ptr3, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %8, %struct.sv*** @PL_stack_sp, align 8
  %9 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next4 = getelementptr inbounds %struct.op, %struct.op* %9, i32 0, i32 0
  %10 = load %struct.op*, %struct.op** %op_next4, align 8
  store %struct.op* %10, %struct.op** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i32 1
  store %struct.sv** %incdec.ptr6, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr6, align 8
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %12, %struct.sv*** @PL_stack_sp, align 8
  %13 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next7 = getelementptr inbounds %struct.op, %struct.op* %13, i32 0, i32 0
  %14 = load %struct.op*, %struct.op** %op_next7, align 8
  store %struct.op* %14, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %15 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %15
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftlink() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %result = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %call = call i32 @Perl_my_lstat()
  store i32 %call, i32* %result, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %2, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %3, %struct.sv*** @PL_stack_sp, align 8
  %4 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %4, i32 0, i32 0
  %5 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %5, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 3), align 4
  %and = and i32 %6, 61440
  %cmp1 = icmp eq i32 %and, 40960
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.sv*, %struct.sv** %7, i32 1
  store %struct.sv** %incdec.ptr3, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr3, align 8
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %8, %struct.sv*** @PL_stack_sp, align 8
  %9 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next4 = getelementptr inbounds %struct.op, %struct.op* %9, i32 0, i32 0
  %10 = load %struct.op*, %struct.op** %op_next4, align 8
  store %struct.op* %10, %struct.op** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i32 1
  store %struct.sv** %incdec.ptr6, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr6, align 8
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %12, %struct.sv*** @PL_stack_sp, align 8
  %13 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next7 = getelementptr inbounds %struct.op, %struct.op* %13, i32 0, i32 0
  %14 = load %struct.op*, %struct.op** %op_next7, align 8
  store %struct.op* %14, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %15 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %15
}

declare i32 @Perl_my_lstat() #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftsuid() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %result = alloca i32, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %1, %struct.sv*** %sp, align 8
  %2 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %3, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %4 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %4, %struct.sv*** @PL_stack_sp, align 8
  %5 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %5, i32 0, i32 0
  %6 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %6, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 3), align 4
  %and = and i32 %7, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.1, label %if.end.4

if.then.1:                                        ; preds = %if.end
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr2 = getelementptr inbounds %struct.sv*, %struct.sv** %8, i32 1
  store %struct.sv** %incdec.ptr2, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr2, align 8
  %9 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %9, %struct.sv*** @PL_stack_sp, align 8
  %10 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next3 = getelementptr inbounds %struct.op, %struct.op* %10, i32 0, i32 0
  %11 = load %struct.op*, %struct.op** %op_next3, align 8
  store %struct.op* %11, %struct.op** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.sv*, %struct.sv** %12, i32 1
  store %struct.sv** %incdec.ptr5, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr5, align 8
  %13 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %13, %struct.sv*** @PL_stack_sp, align 8
  %14 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next6 = getelementptr inbounds %struct.op, %struct.op* %14, i32 0, i32 0
  %15 = load %struct.op*, %struct.op** %op_next6, align 8
  store %struct.op* %15, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.1, %if.then
  %16 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %16
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftsgid() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %result = alloca i32, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %1, %struct.sv*** %sp, align 8
  %2 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %3, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %4 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %4, %struct.sv*** @PL_stack_sp, align 8
  %5 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %5, i32 0, i32 0
  %6 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %6, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 3), align 4
  %and = and i32 %7, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.1, label %if.end.4

if.then.1:                                        ; preds = %if.end
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr2 = getelementptr inbounds %struct.sv*, %struct.sv** %8, i32 1
  store %struct.sv** %incdec.ptr2, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr2, align 8
  %9 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %9, %struct.sv*** @PL_stack_sp, align 8
  %10 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next3 = getelementptr inbounds %struct.op, %struct.op* %10, i32 0, i32 0
  %11 = load %struct.op*, %struct.op** %op_next3, align 8
  store %struct.op* %11, %struct.op** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.sv*, %struct.sv** %12, i32 1
  store %struct.sv** %incdec.ptr5, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr5, align 8
  %13 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %13, %struct.sv*** @PL_stack_sp, align 8
  %14 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next6 = getelementptr inbounds %struct.op, %struct.op* %14, i32 0, i32 0
  %15 = load %struct.op*, %struct.op** %op_next6, align 8
  store %struct.op* %15, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.1, %if.then
  %16 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %16
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftsvtx() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %result = alloca i32, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %call = call i32 @Perl_my_stat()
  store i32 %call, i32* %result, align 4
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %1, %struct.sv*** %sp, align 8
  %2 = load i32, i32* %result, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %3, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr, align 8
  %4 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %4, %struct.sv*** @PL_stack_sp, align 8
  %5 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %5, i32 0, i32 0
  %6 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %6, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 3), align 4
  %and = and i32 %7, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.1, label %if.end.4

if.then.1:                                        ; preds = %if.end
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr2 = getelementptr inbounds %struct.sv*, %struct.sv** %8, i32 1
  store %struct.sv** %incdec.ptr2, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr2, align 8
  %9 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %9, %struct.sv*** @PL_stack_sp, align 8
  %10 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next3 = getelementptr inbounds %struct.op, %struct.op* %10, i32 0, i32 0
  %11 = load %struct.op*, %struct.op** %op_next3, align 8
  store %struct.op* %11, %struct.op** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.sv*, %struct.sv** %12, i32 1
  store %struct.sv** %incdec.ptr5, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr5, align 8
  %13 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %13, %struct.sv*** @PL_stack_sp, align 8
  %14 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next6 = getelementptr inbounds %struct.op, %struct.op* %14, i32 0, i32 0
  %15 = load %struct.op*, %struct.op** %op_next6, align 8
  store %struct.op* %15, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.1, %if.then
  %16 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %16
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_fttty() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %fd = alloca i32, align 4
  %gv = alloca %struct.gv*, align 8
  %tmps = alloca i8*, align 8
  %n_a = alloca i64, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  store i8* null, i8** %tmps, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 6
  %2 = load i8, i8* %op_flags, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.op*, %struct.op** @PL_op, align 8
  %4 = bitcast %struct.op* %3 to %struct.svop*
  %op_sv = getelementptr inbounds %struct.svop, %struct.svop* %4, i32 0, i32 8
  %5 = load %struct.sv*, %struct.sv** %op_sv, align 8
  %6 = bitcast %struct.sv* %5 to %struct.gv*
  store %struct.gv* %6, %struct.gv** %gv, align 8
  br label %if.end.26

if.else:                                          ; preds = %entry
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %8 = load %struct.sv*, %struct.sv** %7, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 2
  %9 = load i32, i32* %sv_flags, align 4
  %and1 = and i32 %9, 255
  %cmp = icmp eq i32 %and1, 13
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %10, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %11 = load %struct.sv*, %struct.sv** %10, align 8
  %12 = bitcast %struct.sv* %11 to %struct.gv*
  store %struct.gv* %12, %struct.gv** %gv, align 8
  br label %if.end.25

if.else.4:                                        ; preds = %if.else
  %13 = load %struct.sv**, %struct.sv*** %sp, align 8
  %14 = load %struct.sv*, %struct.sv** %13, align 8
  %sv_flags5 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 2
  %15 = load i32, i32* %sv_flags5, align 4
  %and6 = and i32 %15, 524288
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %land.lhs.true, label %if.else.16

land.lhs.true:                                    ; preds = %if.else.4
  %16 = load %struct.sv**, %struct.sv*** %sp, align 8
  %17 = load %struct.sv*, %struct.sv** %16, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 0
  %18 = load i8*, i8** %sv_any, align 8
  %19 = bitcast i8* %18 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %19, i32 0, i32 0
  %20 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_flags8 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 2
  %21 = load i32, i32* %sv_flags8, align 4
  %and9 = and i32 %21, 255
  %cmp10 = icmp eq i32 %and9, 13
  br i1 %cmp10, label %if.then.12, label %if.else.16

if.then.12:                                       ; preds = %land.lhs.true
  %22 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr13 = getelementptr inbounds %struct.sv*, %struct.sv** %22, i32 -1
  store %struct.sv** %incdec.ptr13, %struct.sv*** %sp, align 8
  %23 = load %struct.sv*, %struct.sv** %22, align 8
  %sv_any14 = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 0
  %24 = load i8*, i8** %sv_any14, align 8
  %25 = bitcast i8* %24 to %struct.xrv*
  %xrv_rv15 = getelementptr inbounds %struct.xrv, %struct.xrv* %25, i32 0, i32 0
  %26 = load %struct.sv*, %struct.sv** %xrv_rv15, align 8
  %27 = bitcast %struct.sv* %26 to %struct.gv*
  store %struct.gv* %27, %struct.gv** %gv, align 8
  br label %if.end

if.else.16:                                       ; preds = %land.lhs.true, %if.else.4
  %28 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr17 = getelementptr inbounds %struct.sv*, %struct.sv** %28, i32 -1
  store %struct.sv** %incdec.ptr17, %struct.sv*** %sp, align 8
  %29 = load %struct.sv*, %struct.sv** %28, align 8
  store %struct.sv* %29, %struct.sv** @PL_Sv, align 8
  %30 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags18 = getelementptr inbounds %struct.sv, %struct.sv* %30, i32 0, i32 2
  %31 = load i32, i32* %sv_flags18, align 4
  %and19 = and i32 %31, 262144
  %cmp20 = icmp eq i32 %and19, 262144
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.16
  %32 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any22 = getelementptr inbounds %struct.sv, %struct.sv* %32, i32 0, i32 0
  %33 = load i8*, i8** %sv_any22, align 8
  %34 = bitcast i8* %33 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %34, i32 0, i32 1
  %35 = load i64, i64* %xpv_cur, align 8
  store i64 %35, i64* %n_a, align 8
  %36 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any23 = getelementptr inbounds %struct.sv, %struct.sv* %36, i32 0, i32 0
  %37 = load i8*, i8** %sv_any23, align 8
  %38 = bitcast i8* %37 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %38, i32 0, i32 0
  %39 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else.16
  %40 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %40, i64* %n_a, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %39, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %tmps, align 8
  %call24 = call %struct.gv* @Perl_gv_fetchpv(i8* %cond, i32 0, i32 15)
  store %struct.gv* %call24, %struct.gv** %gv, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then.12
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then.3
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then
  %41 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool27 = icmp ne %struct.gv* %41, null
  br i1 %tobool27, label %land.lhs.true.28, label %cond.false.40

land.lhs.true.28:                                 ; preds = %if.end.26
  %42 = load %struct.gv*, %struct.gv** %gv, align 8
  %43 = bitcast %struct.gv* %42 to %struct.sv*
  %sv_flags29 = getelementptr inbounds %struct.sv, %struct.sv* %43, i32 0, i32 2
  %44 = load i32, i32* %sv_flags29, align 4
  %and30 = and i32 %44, 255
  %cmp31 = icmp eq i32 %and30, 13
  br i1 %cmp31, label %land.lhs.true.33, label %cond.false.40

land.lhs.true.33:                                 ; preds = %land.lhs.true.28
  %45 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any34 = getelementptr inbounds %struct.gv, %struct.gv* %45, i32 0, i32 0
  %46 = load %struct.xpvgv*, %struct.xpvgv** %sv_any34, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %46, i32 0, i32 7
  %47 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool35 = icmp ne %struct.gp* %47, null
  br i1 %tobool35, label %cond.true.36, label %cond.false.40

cond.true.36:                                     ; preds = %land.lhs.true.33
  %48 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any37 = getelementptr inbounds %struct.gv, %struct.gv* %48, i32 0, i32 0
  %49 = load %struct.xpvgv*, %struct.xpvgv** %sv_any37, align 8
  %xgv_gp38 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %49, i32 0, i32 7
  %50 = load %struct.gp*, %struct.gp** %xgv_gp38, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %50, i32 0, i32 2
  %51 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool39 = icmp ne %struct.io* %51, null
  br i1 %tobool39, label %land.lhs.true.41, label %if.else.54

cond.false.40:                                    ; preds = %land.lhs.true.33, %land.lhs.true.28, %if.end.26
  br i1 false, label %land.lhs.true.41, label %if.else.54

land.lhs.true.41:                                 ; preds = %cond.false.40, %cond.true.36
  %52 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any42 = getelementptr inbounds %struct.gv, %struct.gv* %52, i32 0, i32 0
  %53 = load %struct.xpvgv*, %struct.xpvgv** %sv_any42, align 8
  %xgv_gp43 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %53, i32 0, i32 7
  %54 = load %struct.gp*, %struct.gp** %xgv_gp43, align 8
  %gp_io44 = getelementptr inbounds %struct.gp, %struct.gp* %54, i32 0, i32 2
  %55 = load %struct.io*, %struct.io** %gp_io44, align 8
  %sv_any45 = getelementptr inbounds %struct.io, %struct.io* %55, i32 0, i32 0
  %56 = load %struct.xpvio*, %struct.xpvio** %sv_any45, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %56, i32 0, i32 7
  %57 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  %tobool46 = icmp ne %struct._PerlIO** %57, null
  br i1 %tobool46, label %if.then.47, label %if.else.54

if.then.47:                                       ; preds = %land.lhs.true.41
  %58 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any48 = getelementptr inbounds %struct.gv, %struct.gv* %58, i32 0, i32 0
  %59 = load %struct.xpvgv*, %struct.xpvgv** %sv_any48, align 8
  %xgv_gp49 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %59, i32 0, i32 7
  %60 = load %struct.gp*, %struct.gp** %xgv_gp49, align 8
  %gp_io50 = getelementptr inbounds %struct.gp, %struct.gp* %60, i32 0, i32 2
  %61 = load %struct.io*, %struct.io** %gp_io50, align 8
  %sv_any51 = getelementptr inbounds %struct.io, %struct.io* %61, i32 0, i32 0
  %62 = load %struct.xpvio*, %struct.xpvio** %sv_any51, align 8
  %xio_ifp52 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %62, i32 0, i32 7
  %63 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp52, align 8
  %call53 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %63)
  store i32 %call53, i32* %fd, align 4
  br label %if.end.69

if.else.54:                                       ; preds = %land.lhs.true.41, %cond.false.40, %cond.true.36
  %64 = load i8*, i8** %tmps, align 8
  %tobool55 = icmp ne i8* %64, null
  br i1 %tobool55, label %land.lhs.true.56, label %if.else.66

land.lhs.true.56:                                 ; preds = %if.else.54
  %65 = load i8*, i8** %tmps, align 8
  %66 = load i8, i8* %65, align 1
  %conv57 = sext i8 %66 to i32
  %cmp58 = icmp sge i32 %conv57, 48
  br i1 %cmp58, label %land.lhs.true.60, label %if.else.66

land.lhs.true.60:                                 ; preds = %land.lhs.true.56
  %67 = load i8*, i8** %tmps, align 8
  %68 = load i8, i8* %67, align 1
  %conv61 = sext i8 %68 to i32
  %cmp62 = icmp sle i32 %conv61, 57
  br i1 %cmp62, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %land.lhs.true.60
  %69 = load i8*, i8** %tmps, align 8
  %call65 = call i32 @atoi(i8* %69)
  store i32 %call65, i32* %fd, align 4
  br label %if.end.68

if.else.66:                                       ; preds = %land.lhs.true.60, %land.lhs.true.56, %if.else.54
  %70 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr67 = getelementptr inbounds %struct.sv*, %struct.sv** %70, i32 1
  store %struct.sv** %incdec.ptr67, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr67, align 8
  %71 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %71, %struct.sv*** @PL_stack_sp, align 8
  %72 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %72, i32 0, i32 0
  %73 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %73, %struct.op** %retval
  br label %return

if.end.68:                                        ; preds = %if.then.64
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.47
  %74 = load i32, i32* %fd, align 4
  %call70 = call i32 @isatty(i32 %74)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %if.end.69
  %75 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr73 = getelementptr inbounds %struct.sv*, %struct.sv** %75, i32 1
  store %struct.sv** %incdec.ptr73, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr73, align 8
  %76 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %76, %struct.sv*** @PL_stack_sp, align 8
  %77 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next74 = getelementptr inbounds %struct.op, %struct.op* %77, i32 0, i32 0
  %78 = load %struct.op*, %struct.op** %op_next74, align 8
  store %struct.op* %78, %struct.op** %retval
  br label %return

if.end.75:                                        ; preds = %if.end.69
  %79 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr76 = getelementptr inbounds %struct.sv*, %struct.sv** %79, i32 1
  store %struct.sv** %incdec.ptr76, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr76, align 8
  %80 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %80, %struct.sv*** @PL_stack_sp, align 8
  %81 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next77 = getelementptr inbounds %struct.op, %struct.op* %81, i32 0, i32 0
  %82 = load %struct.op*, %struct.op** %op_next77, align 8
  store %struct.op* %82, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.75, %if.then.72, %if.else.66
  %83 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %83
}

declare i32 @atoi(i8*) #1

declare i32 @isatty(i32) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_fttext() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %odd = alloca i32, align 4
  %tbuf = alloca [512 x i8], align 16
  %s = alloca i8*, align 8
  %io = alloca %struct.io*, align 8
  %sv = alloca %struct.sv*, align 8
  %gv = alloca %struct.gv*, align 8
  %n_a = alloca i64, align 8
  %fp = alloca %struct._PerlIO**, align 8
  %ulen = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  store i32 0, i32* %odd, align 4
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 6
  %2 = load i8, i8* %op_flags, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.op*, %struct.op** @PL_op, align 8
  %4 = bitcast %struct.op* %3 to %struct.svop*
  %op_sv = getelementptr inbounds %struct.svop, %struct.svop* %4, i32 0, i32 8
  %5 = load %struct.sv*, %struct.sv** %op_sv, align 8
  %6 = bitcast %struct.sv* %5 to %struct.gv*
  store %struct.gv* %6, %struct.gv** %gv, align 8
  br label %if.end.18

if.else:                                          ; preds = %entry
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %8 = load %struct.sv*, %struct.sv** %7, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 2
  %9 = load i32, i32* %sv_flags, align 4
  %and1 = and i32 %9, 255
  %cmp = icmp eq i32 %and1, 13
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %10, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %11 = load %struct.sv*, %struct.sv** %10, align 8
  %12 = bitcast %struct.sv* %11 to %struct.gv*
  store %struct.gv* %12, %struct.gv** %gv, align 8
  br label %if.end.17

if.else.4:                                        ; preds = %if.else
  %13 = load %struct.sv**, %struct.sv*** %sp, align 8
  %14 = load %struct.sv*, %struct.sv** %13, align 8
  %sv_flags5 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 2
  %15 = load i32, i32* %sv_flags5, align 4
  %and6 = and i32 %15, 524288
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %land.lhs.true, label %if.else.16

land.lhs.true:                                    ; preds = %if.else.4
  %16 = load %struct.sv**, %struct.sv*** %sp, align 8
  %17 = load %struct.sv*, %struct.sv** %16, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 0
  %18 = load i8*, i8** %sv_any, align 8
  %19 = bitcast i8* %18 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %19, i32 0, i32 0
  %20 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_flags8 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 2
  %21 = load i32, i32* %sv_flags8, align 4
  %and9 = and i32 %21, 255
  %cmp10 = icmp eq i32 %and9, 13
  br i1 %cmp10, label %if.then.12, label %if.else.16

if.then.12:                                       ; preds = %land.lhs.true
  %22 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr13 = getelementptr inbounds %struct.sv*, %struct.sv** %22, i32 -1
  store %struct.sv** %incdec.ptr13, %struct.sv*** %sp, align 8
  %23 = load %struct.sv*, %struct.sv** %22, align 8
  %sv_any14 = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 0
  %24 = load i8*, i8** %sv_any14, align 8
  %25 = bitcast i8* %24 to %struct.xrv*
  %xrv_rv15 = getelementptr inbounds %struct.xrv, %struct.xrv* %25, i32 0, i32 0
  %26 = load %struct.sv*, %struct.sv** %xrv_rv15, align 8
  %27 = bitcast %struct.sv* %26 to %struct.gv*
  store %struct.gv* %27, %struct.gv** %gv, align 8
  br label %if.end

if.else.16:                                       ; preds = %land.lhs.true, %if.else.4
  store %struct.gv* null, %struct.gv** %gv, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.16, %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then.3
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then
  %28 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool19 = icmp ne %struct.gv* %28, null
  br i1 %tobool19, label %if.then.20, label %if.else.191

if.then.20:                                       ; preds = %if.end.18
  %29 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %30 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %29 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp21 = icmp slt i64 %sub.ptr.div, 1
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.20
  %31 = load %struct.sv**, %struct.sv*** %sp, align 8
  %32 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %31, %struct.sv** %32, i32 1)
  store %struct.sv** %call, %struct.sv*** %sp, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.then.20
  %33 = load %struct.gv*, %struct.gv** %gv, align 8
  %34 = load %struct.gv*, %struct.gv** @PL_defgv, align 8
  %cmp25 = icmp eq %struct.gv* %33, %34
  br i1 %cmp25, label %if.then.27, label %if.else.43

if.then.27:                                       ; preds = %if.end.24
  %35 = load %struct.gv*, %struct.gv** @PL_statgv, align 8
  %tobool28 = icmp ne %struct.gv* %35, null
  br i1 %tobool28, label %if.then.29, label %if.else.41

if.then.29:                                       ; preds = %if.then.27
  %36 = load %struct.gv*, %struct.gv** @PL_statgv, align 8
  %tobool30 = icmp ne %struct.gv* %36, null
  br i1 %tobool30, label %land.lhs.true.31, label %cond.false

land.lhs.true.31:                                 ; preds = %if.then.29
  %37 = load %struct.gv*, %struct.gv** @PL_statgv, align 8
  %38 = bitcast %struct.gv* %37 to %struct.sv*
  %sv_flags32 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 2
  %39 = load i32, i32* %sv_flags32, align 4
  %and33 = and i32 %39, 255
  %cmp34 = icmp eq i32 %and33, 13
  br i1 %cmp34, label %land.lhs.true.36, label %cond.false

land.lhs.true.36:                                 ; preds = %land.lhs.true.31
  %40 = load %struct.gv*, %struct.gv** @PL_statgv, align 8
  %sv_any37 = getelementptr inbounds %struct.gv, %struct.gv* %40, i32 0, i32 0
  %41 = load %struct.xpvgv*, %struct.xpvgv** %sv_any37, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %41, i32 0, i32 7
  %42 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool38 = icmp ne %struct.gp* %42, null
  br i1 %tobool38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.36
  %43 = load %struct.gv*, %struct.gv** @PL_statgv, align 8
  %sv_any39 = getelementptr inbounds %struct.gv, %struct.gv* %43, i32 0, i32 0
  %44 = load %struct.xpvgv*, %struct.xpvgv** %sv_any39, align 8
  %xgv_gp40 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %44, i32 0, i32 7
  %45 = load %struct.gp*, %struct.gp** %xgv_gp40, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %45, i32 0, i32 2
  %46 = load %struct.io*, %struct.io** %gp_io, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.36, %land.lhs.true.31, %if.then.29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.io* [ %46, %cond.true ], [ null, %cond.false ]
  store %struct.io* %cond, %struct.io** %io, align 8
  br label %if.end.42

if.else.41:                                       ; preds = %if.then.27
  %47 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  store %struct.sv* %47, %struct.sv** %sv, align 8
  br label %really_filename

if.end.42:                                        ; preds = %cond.end
  br label %if.end.61

if.else.43:                                       ; preds = %if.end.24
  %48 = load %struct.gv*, %struct.gv** %gv, align 8
  store %struct.gv* %48, %struct.gv** @PL_statgv, align 8
  store i32 -1, i32* @PL_laststatval, align 4
  %49 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  call void @Perl_sv_setpv(%struct.sv* %49, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0))
  %50 = load %struct.gv*, %struct.gv** @PL_statgv, align 8
  %tobool44 = icmp ne %struct.gv* %50, null
  br i1 %tobool44, label %land.lhs.true.45, label %cond.false.58

land.lhs.true.45:                                 ; preds = %if.else.43
  %51 = load %struct.gv*, %struct.gv** @PL_statgv, align 8
  %52 = bitcast %struct.gv* %51 to %struct.sv*
  %sv_flags46 = getelementptr inbounds %struct.sv, %struct.sv* %52, i32 0, i32 2
  %53 = load i32, i32* %sv_flags46, align 4
  %and47 = and i32 %53, 255
  %cmp48 = icmp eq i32 %and47, 13
  br i1 %cmp48, label %land.lhs.true.50, label %cond.false.58

land.lhs.true.50:                                 ; preds = %land.lhs.true.45
  %54 = load %struct.gv*, %struct.gv** @PL_statgv, align 8
  %sv_any51 = getelementptr inbounds %struct.gv, %struct.gv* %54, i32 0, i32 0
  %55 = load %struct.xpvgv*, %struct.xpvgv** %sv_any51, align 8
  %xgv_gp52 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %55, i32 0, i32 7
  %56 = load %struct.gp*, %struct.gp** %xgv_gp52, align 8
  %tobool53 = icmp ne %struct.gp* %56, null
  br i1 %tobool53, label %cond.true.54, label %cond.false.58

cond.true.54:                                     ; preds = %land.lhs.true.50
  %57 = load %struct.gv*, %struct.gv** @PL_statgv, align 8
  %sv_any55 = getelementptr inbounds %struct.gv, %struct.gv* %57, i32 0, i32 0
  %58 = load %struct.xpvgv*, %struct.xpvgv** %sv_any55, align 8
  %xgv_gp56 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %58, i32 0, i32 7
  %59 = load %struct.gp*, %struct.gp** %xgv_gp56, align 8
  %gp_io57 = getelementptr inbounds %struct.gp, %struct.gp* %59, i32 0, i32 2
  %60 = load %struct.io*, %struct.io** %gp_io57, align 8
  br label %cond.end.59

cond.false.58:                                    ; preds = %land.lhs.true.50, %land.lhs.true.45, %if.else.43
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.54
  %cond60 = phi %struct.io* [ %60, %cond.true.54 ], [ null, %cond.false.58 ]
  store %struct.io* %cond60, %struct.io** %io, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %cond.end.59, %if.end.42
  %61 = load %struct.io*, %struct.io** %io, align 8
  %tobool62 = icmp ne %struct.io* %61, null
  br i1 %tobool62, label %land.lhs.true.63, label %if.else.133

land.lhs.true.63:                                 ; preds = %if.end.61
  %62 = load %struct.io*, %struct.io** %io, align 8
  %sv_any64 = getelementptr inbounds %struct.io, %struct.io* %62, i32 0, i32 0
  %63 = load %struct.xpvio*, %struct.xpvio** %sv_any64, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %63, i32 0, i32 7
  %64 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  %tobool65 = icmp ne %struct._PerlIO** %64, null
  br i1 %tobool65, label %if.then.66, label %if.else.133

if.then.66:                                       ; preds = %land.lhs.true.63
  %65 = load %struct.io*, %struct.io** %io, align 8
  %sv_any67 = getelementptr inbounds %struct.io, %struct.io* %65, i32 0, i32 0
  %66 = load %struct.xpvio*, %struct.xpvio** %sv_any67, align 8
  %xio_ifp68 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %66, i32 0, i32 7
  %67 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp68, align 8
  %call69 = call i32 @PerlIO_has_base(%struct._PerlIO** %67)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end.73, label %if.then.71

if.then.71:                                       ; preds = %if.then.66
  %call72 = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.71, i32 0, i32 0))
  store %struct.op* %call72, %struct.op** %retval
  br label %return

if.end.73:                                        ; preds = %if.then.66
  %68 = load %struct.io*, %struct.io** %io, align 8
  %sv_any74 = getelementptr inbounds %struct.io, %struct.io* %68, i32 0, i32 0
  %69 = load %struct.xpvio*, %struct.xpvio** %sv_any74, align 8
  %xio_ifp75 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %69, i32 0, i32 7
  %70 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp75, align 8
  %call76 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %70)
  %call77 = call i32 @fstat(i32 %call76, %struct.stat* @PL_statcache)
  store i32 %call77, i32* @PL_laststatval, align 4
  %71 = load i32, i32* @PL_laststatval, align 4
  %cmp78 = icmp slt i32 %71, 0
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %if.end.73
  %72 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr81 = getelementptr inbounds %struct.sv*, %struct.sv** %72, i32 1
  store %struct.sv** %incdec.ptr81, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr81, align 8
  %73 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %73, %struct.sv*** @PL_stack_sp, align 8
  %74 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %74, i32 0, i32 0
  %75 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %75, %struct.op** %retval
  br label %return

if.end.82:                                        ; preds = %if.end.73
  %76 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 3), align 4
  %and83 = and i32 %76, 61440
  %cmp84 = icmp eq i32 %and83, 16384
  br i1 %cmp84, label %if.then.86, label %if.end.96

if.then.86:                                       ; preds = %if.end.82
  %77 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %77, i32 0, i32 4
  %78 = load i16, i16* %op_type, align 2
  %conv87 = zext i16 %78 to i32
  %cmp88 = icmp eq i32 %conv87, 261
  br i1 %cmp88, label %if.then.90, label %if.else.93

if.then.90:                                       ; preds = %if.then.86
  %79 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr91 = getelementptr inbounds %struct.sv*, %struct.sv** %79, i32 1
  store %struct.sv** %incdec.ptr91, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr91, align 8
  %80 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %80, %struct.sv*** @PL_stack_sp, align 8
  %81 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next92 = getelementptr inbounds %struct.op, %struct.op* %81, i32 0, i32 0
  %82 = load %struct.op*, %struct.op** %op_next92, align 8
  store %struct.op* %82, %struct.op** %retval
  br label %return

if.else.93:                                       ; preds = %if.then.86
  %83 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr94 = getelementptr inbounds %struct.sv*, %struct.sv** %83, i32 1
  store %struct.sv** %incdec.ptr94, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr94, align 8
  %84 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %84, %struct.sv*** @PL_stack_sp, align 8
  %85 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next95 = getelementptr inbounds %struct.op, %struct.op* %85, i32 0, i32 0
  %86 = load %struct.op*, %struct.op** %op_next95, align 8
  store %struct.op* %86, %struct.op** %retval
  br label %return

if.end.96:                                        ; preds = %if.end.82
  %87 = load %struct.io*, %struct.io** %io, align 8
  %sv_any97 = getelementptr inbounds %struct.io, %struct.io* %87, i32 0, i32 0
  %88 = load %struct.xpvio*, %struct.xpvio** %sv_any97, align 8
  %xio_ifp98 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %88, i32 0, i32 7
  %89 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp98, align 8
  %call99 = call i32 @Perl_PerlIO_get_cnt(%struct._PerlIO** %89)
  %cmp100 = icmp sle i32 %call99, 0
  br i1 %cmp100, label %if.then.102, label %if.end.113

if.then.102:                                      ; preds = %if.end.96
  %90 = load %struct.io*, %struct.io** %io, align 8
  %sv_any103 = getelementptr inbounds %struct.io, %struct.io* %90, i32 0, i32 0
  %91 = load %struct.xpvio*, %struct.xpvio** %sv_any103, align 8
  %xio_ifp104 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %91, i32 0, i32 7
  %92 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp104, align 8
  %call105 = call i32 @PerlIO_getc(%struct._PerlIO** %92)
  store i32 %call105, i32* %i, align 4
  %93 = load i32, i32* %i, align 4
  %cmp106 = icmp ne i32 %93, -1
  br i1 %cmp106, label %if.then.108, label %if.end.112

if.then.108:                                      ; preds = %if.then.102
  %94 = load %struct.io*, %struct.io** %io, align 8
  %sv_any109 = getelementptr inbounds %struct.io, %struct.io* %94, i32 0, i32 0
  %95 = load %struct.xpvio*, %struct.xpvio** %sv_any109, align 8
  %xio_ifp110 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %95, i32 0, i32 7
  %96 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp110, align 8
  %97 = load i32, i32* %i, align 4
  %call111 = call i32 @PerlIO_ungetc(%struct._PerlIO** %96, i32 %97)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.108, %if.then.102
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.end.96
  %98 = load %struct.io*, %struct.io** %io, align 8
  %sv_any114 = getelementptr inbounds %struct.io, %struct.io* %98, i32 0, i32 0
  %99 = load %struct.xpvio*, %struct.xpvio** %sv_any114, align 8
  %xio_ifp115 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %99, i32 0, i32 7
  %100 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp115, align 8
  %call116 = call i32 @Perl_PerlIO_get_cnt(%struct._PerlIO** %100)
  %cmp117 = icmp sle i32 %call116, 0
  br i1 %cmp117, label %if.then.119, label %if.end.122

if.then.119:                                      ; preds = %if.end.113
  %101 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr120 = getelementptr inbounds %struct.sv*, %struct.sv** %101, i32 1
  store %struct.sv** %incdec.ptr120, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr120, align 8
  %102 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %102, %struct.sv*** @PL_stack_sp, align 8
  %103 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next121 = getelementptr inbounds %struct.op, %struct.op* %103, i32 0, i32 0
  %104 = load %struct.op*, %struct.op** %op_next121, align 8
  store %struct.op* %104, %struct.op** %retval
  br label %return

if.end.122:                                       ; preds = %if.end.113
  %105 = load %struct.io*, %struct.io** %io, align 8
  %sv_any123 = getelementptr inbounds %struct.io, %struct.io* %105, i32 0, i32 0
  %106 = load %struct.xpvio*, %struct.xpvio** %sv_any123, align 8
  %xio_ifp124 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %106, i32 0, i32 7
  %107 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp124, align 8
  %call125 = call i32 @Perl_PerlIO_get_bufsiz(%struct._PerlIO** %107)
  store i32 %call125, i32* %len, align 4
  %108 = load %struct.io*, %struct.io** %io, align 8
  %sv_any126 = getelementptr inbounds %struct.io, %struct.io* %108, i32 0, i32 0
  %109 = load %struct.xpvio*, %struct.xpvio** %sv_any126, align 8
  %xio_ifp127 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %109, i32 0, i32 7
  %110 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp127, align 8
  %call128 = call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %110)
  store i8* %call128, i8** %s, align 8
  %111 = load i32, i32* %len, align 4
  %cmp129 = icmp sgt i32 %111, 512
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.end.122
  store i32 512, i32* %len, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.131, %if.end.122
  br label %if.end.190

if.else.133:                                      ; preds = %land.lhs.true.63, %if.end.61
  %112 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %112, i32 0, i32 14
  %113 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp134 = icmp ne %struct.sv* %113, null
  br i1 %cmp134, label %land.lhs.true.136, label %lor.lhs.false.157

land.lhs.true.136:                                ; preds = %if.else.133
  %114 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings137 = getelementptr inbounds %struct.cop, %struct.cop* %114, i32 0, i32 14
  %115 = load %struct.sv*, %struct.sv** %cop_warnings137, align 8
  %cmp138 = icmp ne %struct.sv* %115, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp138, label %land.lhs.true.140, label %lor.lhs.false.157

land.lhs.true.140:                                ; preds = %land.lhs.true.136
  %116 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings141 = getelementptr inbounds %struct.cop, %struct.cop* %116, i32 0, i32 14
  %117 = load %struct.sv*, %struct.sv** %cop_warnings141, align 8
  %cmp142 = icmp eq %struct.sv* %117, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp142, label %if.then.165, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.140
  %118 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings144 = getelementptr inbounds %struct.cop, %struct.cop* %118, i32 0, i32 14
  %119 = load %struct.sv*, %struct.sv** %cop_warnings144, align 8
  %sv_any145 = getelementptr inbounds %struct.sv, %struct.sv* %119, i32 0, i32 0
  %120 = load i8*, i8** %sv_any145, align 8
  %121 = bitcast i8* %120 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %121, i32 0, i32 0
  %122 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %122, i64 2
  %123 = load i8, i8* %arrayidx, align 1
  %conv146 = sext i8 %123 to i32
  %and147 = and i32 %conv146, 64
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %if.then.165, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %lor.lhs.false
  %124 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings150 = getelementptr inbounds %struct.cop, %struct.cop* %124, i32 0, i32 14
  %125 = load %struct.sv*, %struct.sv** %cop_warnings150, align 8
  %sv_any151 = getelementptr inbounds %struct.sv, %struct.sv* %125, i32 0, i32 0
  %126 = load i8*, i8** %sv_any151, align 8
  %127 = bitcast i8* %126 to %struct.xpv*
  %xpv_pv152 = getelementptr inbounds %struct.xpv, %struct.xpv* %127, i32 0, i32 0
  %128 = load i8*, i8** %xpv_pv152, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %128, i64 1
  %129 = load i8, i8* %arrayidx153, align 1
  %conv154 = sext i8 %129 to i32
  %and155 = and i32 %conv154, 16
  %tobool156 = icmp ne i32 %and155, 0
  br i1 %tobool156, label %if.then.165, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %lor.lhs.false.149, %land.lhs.true.136, %if.else.133
  %130 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings158 = getelementptr inbounds %struct.cop, %struct.cop* %130, i32 0, i32 14
  %131 = load %struct.sv*, %struct.sv** %cop_warnings158, align 8
  %cmp159 = icmp eq %struct.sv* %131, null
  br i1 %cmp159, label %land.lhs.true.161, label %if.end.186

land.lhs.true.161:                                ; preds = %lor.lhs.false.157
  %132 = load i8, i8* @PL_dowarn, align 1
  %conv162 = zext i8 %132 to i32
  %and163 = and i32 %conv162, 1
  %tobool164 = icmp ne i32 %and163, 0
  br i1 %tobool164, label %if.then.165, label %if.end.186

if.then.165:                                      ; preds = %land.lhs.true.161, %lor.lhs.false.149, %lor.lhs.false, %land.lhs.true.140
  %133 = load %struct.op*, %struct.op** @PL_op, align 8
  %134 = bitcast %struct.op* %133 to %struct.svop*
  %op_sv166 = getelementptr inbounds %struct.svop, %struct.svop* %134, i32 0, i32 8
  %135 = load %struct.sv*, %struct.sv** %op_sv166, align 8
  %136 = bitcast %struct.sv* %135 to %struct.gv*
  store %struct.gv* %136, %struct.gv** %gv, align 8
  %137 = load %struct.gv*, %struct.gv** %gv, align 8
  %138 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool167 = icmp ne %struct.gv* %138, null
  br i1 %tobool167, label %land.lhs.true.168, label %cond.false.181

land.lhs.true.168:                                ; preds = %if.then.165
  %139 = load %struct.gv*, %struct.gv** %gv, align 8
  %140 = bitcast %struct.gv* %139 to %struct.sv*
  %sv_flags169 = getelementptr inbounds %struct.sv, %struct.sv* %140, i32 0, i32 2
  %141 = load i32, i32* %sv_flags169, align 4
  %and170 = and i32 %141, 255
  %cmp171 = icmp eq i32 %and170, 13
  br i1 %cmp171, label %land.lhs.true.173, label %cond.false.181

land.lhs.true.173:                                ; preds = %land.lhs.true.168
  %142 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any174 = getelementptr inbounds %struct.gv, %struct.gv* %142, i32 0, i32 0
  %143 = load %struct.xpvgv*, %struct.xpvgv** %sv_any174, align 8
  %xgv_gp175 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %143, i32 0, i32 7
  %144 = load %struct.gp*, %struct.gp** %xgv_gp175, align 8
  %tobool176 = icmp ne %struct.gp* %144, null
  br i1 %tobool176, label %cond.true.177, label %cond.false.181

cond.true.177:                                    ; preds = %land.lhs.true.173
  %145 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any178 = getelementptr inbounds %struct.gv, %struct.gv* %145, i32 0, i32 0
  %146 = load %struct.xpvgv*, %struct.xpvgv** %sv_any178, align 8
  %xgv_gp179 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %146, i32 0, i32 7
  %147 = load %struct.gp*, %struct.gp** %xgv_gp179, align 8
  %gp_io180 = getelementptr inbounds %struct.gp, %struct.gp* %147, i32 0, i32 2
  %148 = load %struct.io*, %struct.io** %gp_io180, align 8
  br label %cond.end.182

cond.false.181:                                   ; preds = %land.lhs.true.173, %land.lhs.true.168, %if.then.165
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.false.181, %cond.true.177
  %cond183 = phi %struct.io* [ %148, %cond.true.177 ], [ null, %cond.false.181 ]
  %149 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type184 = getelementptr inbounds %struct.op, %struct.op* %149, i32 0, i32 4
  %150 = load i16, i16* %op_type184, align 2
  %conv185 = zext i16 %150 to i32
  call void @Perl_report_evil_fh(%struct.gv* %137, %struct.io* %cond183, i32 %conv185)
  br label %if.end.186

if.end.186:                                       ; preds = %cond.end.182, %land.lhs.true.161, %lor.lhs.false.157
  %call187 = call i32* @__errno_location()
  store i32 9, i32* %call187, align 4
  %151 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr188 = getelementptr inbounds %struct.sv*, %struct.sv** %151, i32 1
  store %struct.sv** %incdec.ptr188, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr188, align 8
  %152 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %152, %struct.sv*** @PL_stack_sp, align 8
  %153 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next189 = getelementptr inbounds %struct.op, %struct.op* %153, i32 0, i32 0
  %154 = load %struct.op*, %struct.op** %op_next189, align 8
  store %struct.op* %154, %struct.op** %retval
  br label %return

if.end.190:                                       ; preds = %if.end.132
  br label %if.end.290

if.else.191:                                      ; preds = %if.end.18
  %155 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr192 = getelementptr inbounds %struct.sv*, %struct.sv** %155, i32 -1
  store %struct.sv** %incdec.ptr192, %struct.sv*** %sp, align 8
  %156 = load %struct.sv*, %struct.sv** %155, align 8
  store %struct.sv* %156, %struct.sv** %sv, align 8
  br label %really_filename

really_filename:                                  ; preds = %if.else.191, %if.else.41
  store %struct.gv* null, %struct.gv** @PL_statgv, align 8
  store i32 235, i32* @PL_laststype, align 4
  %157 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %158 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags193 = getelementptr inbounds %struct.sv, %struct.sv* %158, i32 0, i32 2
  %159 = load i32, i32* %sv_flags193, align 4
  %and194 = and i32 %159, 262144
  %cmp195 = icmp eq i32 %and194, 262144
  br i1 %cmp195, label %cond.true.197, label %cond.false.201

cond.true.197:                                    ; preds = %really_filename
  %160 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any198 = getelementptr inbounds %struct.sv, %struct.sv* %160, i32 0, i32 0
  %161 = load i8*, i8** %sv_any198, align 8
  %162 = bitcast i8* %161 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %162, i32 0, i32 1
  %163 = load i64, i64* %xpv_cur, align 8
  store i64 %163, i64* %n_a, align 8
  %164 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any199 = getelementptr inbounds %struct.sv, %struct.sv* %164, i32 0, i32 0
  %165 = load i8*, i8** %sv_any199, align 8
  %166 = bitcast i8* %165 to %struct.xpv*
  %xpv_pv200 = getelementptr inbounds %struct.xpv, %struct.xpv* %166, i32 0, i32 0
  %167 = load i8*, i8** %xpv_pv200, align 8
  br label %cond.end.203

cond.false.201:                                   ; preds = %really_filename
  %168 = load %struct.sv*, %struct.sv** %sv, align 8
  %call202 = call i8* @Perl_sv_2pv_flags(%struct.sv* %168, i64* %n_a, i32 2)
  br label %cond.end.203

cond.end.203:                                     ; preds = %cond.false.201, %cond.true.197
  %cond204 = phi i8* [ %167, %cond.true.197 ], [ %call202, %cond.false.201 ]
  call void @Perl_sv_setpv(%struct.sv* %157, i8* %cond204)
  %169 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %sv_any205 = getelementptr inbounds %struct.sv, %struct.sv* %169, i32 0, i32 0
  %170 = load i8*, i8** %sv_any205, align 8
  %171 = bitcast i8* %170 to %struct.xpv*
  %xpv_pv206 = getelementptr inbounds %struct.xpv, %struct.xpv* %171, i32 0, i32 0
  %172 = load i8*, i8** %xpv_pv206, align 8
  %call207 = call %struct._PerlIO** @PerlIO_open(i8* %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._PerlIO** %call207, %struct._PerlIO*** %fp, align 8
  %tobool208 = icmp ne %struct._PerlIO** %call207, null
  br i1 %tobool208, label %if.end.257, label %if.then.209

if.then.209:                                      ; preds = %cond.end.203
  %173 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings210 = getelementptr inbounds %struct.cop, %struct.cop* %173, i32 0, i32 14
  %174 = load %struct.sv*, %struct.sv** %cop_warnings210, align 8
  %cmp211 = icmp ne %struct.sv* %174, null
  br i1 %cmp211, label %land.lhs.true.213, label %lor.lhs.false.229

land.lhs.true.213:                                ; preds = %if.then.209
  %175 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings214 = getelementptr inbounds %struct.cop, %struct.cop* %175, i32 0, i32 14
  %176 = load %struct.sv*, %struct.sv** %cop_warnings214, align 8
  %cmp215 = icmp ne %struct.sv* %176, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp215, label %land.lhs.true.217, label %lor.lhs.false.229

land.lhs.true.217:                                ; preds = %land.lhs.true.213
  %177 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings218 = getelementptr inbounds %struct.cop, %struct.cop* %177, i32 0, i32 14
  %178 = load %struct.sv*, %struct.sv** %cop_warnings218, align 8
  %cmp219 = icmp eq %struct.sv* %178, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp219, label %land.lhs.true.237, label %lor.lhs.false.221

lor.lhs.false.221:                                ; preds = %land.lhs.true.217
  %179 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings222 = getelementptr inbounds %struct.cop, %struct.cop* %179, i32 0, i32 14
  %180 = load %struct.sv*, %struct.sv** %cop_warnings222, align 8
  %sv_any223 = getelementptr inbounds %struct.sv, %struct.sv* %180, i32 0, i32 0
  %181 = load i8*, i8** %sv_any223, align 8
  %182 = bitcast i8* %181 to %struct.xpv*
  %xpv_pv224 = getelementptr inbounds %struct.xpv, %struct.xpv* %182, i32 0, i32 0
  %183 = load i8*, i8** %xpv_pv224, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %183, i64 2
  %184 = load i8, i8* %arrayidx225, align 1
  %conv226 = sext i8 %184 to i32
  %and227 = and i32 %conv226, 4
  %tobool228 = icmp ne i32 %and227, 0
  br i1 %tobool228, label %land.lhs.true.237, label %lor.lhs.false.229

lor.lhs.false.229:                                ; preds = %lor.lhs.false.221, %land.lhs.true.213, %if.then.209
  %185 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings230 = getelementptr inbounds %struct.cop, %struct.cop* %185, i32 0, i32 14
  %186 = load %struct.sv*, %struct.sv** %cop_warnings230, align 8
  %cmp231 = icmp eq %struct.sv* %186, null
  br i1 %cmp231, label %land.lhs.true.233, label %if.end.254

land.lhs.true.233:                                ; preds = %lor.lhs.false.229
  %187 = load i8, i8* @PL_dowarn, align 1
  %conv234 = zext i8 %187 to i32
  %and235 = and i32 %conv234, 1
  %tobool236 = icmp ne i32 %and235, 0
  br i1 %tobool236, label %land.lhs.true.237, label %if.end.254

land.lhs.true.237:                                ; preds = %land.lhs.true.233, %lor.lhs.false.221, %land.lhs.true.217
  %188 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %sv_flags238 = getelementptr inbounds %struct.sv, %struct.sv* %188, i32 0, i32 2
  %189 = load i32, i32* %sv_flags238, align 4
  %and239 = and i32 %189, 262144
  %cmp240 = icmp eq i32 %and239, 262144
  br i1 %cmp240, label %cond.true.242, label %cond.false.247

cond.true.242:                                    ; preds = %land.lhs.true.237
  %190 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %sv_any243 = getelementptr inbounds %struct.sv, %struct.sv* %190, i32 0, i32 0
  %191 = load i8*, i8** %sv_any243, align 8
  %192 = bitcast i8* %191 to %struct.xpv*
  %xpv_cur244 = getelementptr inbounds %struct.xpv, %struct.xpv* %192, i32 0, i32 1
  %193 = load i64, i64* %xpv_cur244, align 8
  store i64 %193, i64* %n_a, align 8
  %194 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %sv_any245 = getelementptr inbounds %struct.sv, %struct.sv* %194, i32 0, i32 0
  %195 = load i8*, i8** %sv_any245, align 8
  %196 = bitcast i8* %195 to %struct.xpv*
  %xpv_pv246 = getelementptr inbounds %struct.xpv, %struct.xpv* %196, i32 0, i32 0
  %197 = load i8*, i8** %xpv_pv246, align 8
  br label %cond.end.249

cond.false.247:                                   ; preds = %land.lhs.true.237
  %198 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  %call248 = call i8* @Perl_sv_2pv_flags(%struct.sv* %198, i64* %n_a, i32 2)
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.false.247, %cond.true.242
  %cond250 = phi i8* [ %197, %cond.true.242 ], [ %call248, %cond.false.247 ]
  %call251 = call i8* @strchr(i8* %cond250, i32 10)
  %tobool252 = icmp ne i8* %call251, null
  br i1 %tobool252, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %cond.end.249
  call void (i32, i8*, ...) @Perl_warner(i32 9, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_warn_nl, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0))
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.253, %cond.end.249, %land.lhs.true.233, %lor.lhs.false.229
  %199 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr255 = getelementptr inbounds %struct.sv*, %struct.sv** %199, i32 1
  store %struct.sv** %incdec.ptr255, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr255, align 8
  %200 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %200, %struct.sv*** @PL_stack_sp, align 8
  %201 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next256 = getelementptr inbounds %struct.op, %struct.op* %201, i32 0, i32 0
  %202 = load %struct.op*, %struct.op** %op_next256, align 8
  store %struct.op* %202, %struct.op** %retval
  br label %return

if.end.257:                                       ; preds = %cond.end.203
  %203 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call258 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %203)
  %call259 = call i32 @fstat(i32 %call258, %struct.stat* @PL_statcache)
  store i32 %call259, i32* @PL_laststatval, align 4
  %204 = load i32, i32* @PL_laststatval, align 4
  %cmp260 = icmp slt i32 %204, 0
  br i1 %cmp260, label %if.then.262, label %if.end.266

if.then.262:                                      ; preds = %if.end.257
  %205 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call263 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %205)
  %206 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr264 = getelementptr inbounds %struct.sv*, %struct.sv** %206, i32 1
  store %struct.sv** %incdec.ptr264, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr264, align 8
  %207 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %207, %struct.sv*** @PL_stack_sp, align 8
  %208 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next265 = getelementptr inbounds %struct.op, %struct.op* %208, i32 0, i32 0
  %209 = load %struct.op*, %struct.op** %op_next265, align 8
  store %struct.op* %209, %struct.op** %retval
  br label %return

if.end.266:                                       ; preds = %if.end.257
  %210 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call267 = call i32 @PerlIO_binmode(%struct._PerlIO** %210, i32 60, i32 0, i8* null)
  %211 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %tbuf, i32 0, i32 0
  %call268 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %211, i8* %arraydecay, i64 512)
  %conv269 = trunc i64 %call268 to i32
  store i32 %conv269, i32* %len, align 4
  %212 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %call270 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %212)
  %213 = load i32, i32* %len, align 4
  %cmp271 = icmp sle i32 %213, 0
  br i1 %cmp271, label %if.then.273, label %if.end.288

if.then.273:                                      ; preds = %if.end.266
  %214 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statcache, i32 0, i32 3), align 4
  %and274 = and i32 %214, 61440
  %cmp275 = icmp eq i32 %and274, 16384
  br i1 %cmp275, label %land.lhs.true.277, label %if.end.285

land.lhs.true.277:                                ; preds = %if.then.273
  %215 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type278 = getelementptr inbounds %struct.op, %struct.op* %215, i32 0, i32 4
  %216 = load i16, i16* %op_type278, align 2
  %conv279 = zext i16 %216 to i32
  %cmp280 = icmp eq i32 %conv279, 261
  br i1 %cmp280, label %if.then.282, label %if.end.285

if.then.282:                                      ; preds = %land.lhs.true.277
  %217 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr283 = getelementptr inbounds %struct.sv*, %struct.sv** %217, i32 1
  store %struct.sv** %incdec.ptr283, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr283, align 8
  %218 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %218, %struct.sv*** @PL_stack_sp, align 8
  %219 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next284 = getelementptr inbounds %struct.op, %struct.op* %219, i32 0, i32 0
  %220 = load %struct.op*, %struct.op** %op_next284, align 8
  store %struct.op* %220, %struct.op** %retval
  br label %return

if.end.285:                                       ; preds = %land.lhs.true.277, %if.then.273
  %221 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr286 = getelementptr inbounds %struct.sv*, %struct.sv** %221, i32 1
  store %struct.sv** %incdec.ptr286, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr286, align 8
  %222 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %222, %struct.sv*** @PL_stack_sp, align 8
  %223 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next287 = getelementptr inbounds %struct.op, %struct.op* %223, i32 0, i32 0
  %224 = load %struct.op*, %struct.op** %op_next287, align 8
  store %struct.op* %224, %struct.op** %retval
  br label %return

if.end.288:                                       ; preds = %if.end.266
  %arraydecay289 = getelementptr inbounds [512 x i8], [512 x i8]* %tbuf, i32 0, i32 0
  store i8* %arraydecay289, i8** %s, align 8
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.288, %if.end.190
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.367, %if.end.290
  %225 = load i32, i32* %i, align 4
  %226 = load i32, i32* %len, align 4
  %cmp291 = icmp slt i32 %225, %226
  br i1 %cmp291, label %for.body, label %for.end.370

for.body:                                         ; preds = %for.cond
  %227 = load i8*, i8** %s, align 8
  %228 = load i8, i8* %227, align 1
  %tobool293 = icmp ne i8 %228, 0
  br i1 %tobool293, label %if.else.295, label %if.then.294

if.then.294:                                      ; preds = %for.body
  %229 = load i32, i32* %len, align 4
  %230 = load i32, i32* %odd, align 4
  %add = add nsw i32 %230, %229
  store i32 %add, i32* %odd, align 4
  br label %for.end.370

if.else.295:                                      ; preds = %for.body
  %231 = load i8*, i8** %s, align 8
  %232 = load i8, i8* %231, align 1
  %conv296 = sext i8 %232 to i32
  %and297 = and i32 %conv296, 128
  %tobool298 = icmp ne i32 %and297, 0
  br i1 %tobool298, label %if.then.299, label %if.else.334

if.then.299:                                      ; preds = %if.else.295
  %233 = load i8*, i8** %s, align 8
  %234 = load i8, i8* %233, align 1
  %conv300 = zext i8 %234 to i32
  %cmp301 = icmp sge i32 %conv300, 192
  br i1 %cmp301, label %land.lhs.true.303, label %if.end.332

land.lhs.true.303:                                ; preds = %if.then.299
  %235 = load i8*, i8** %s, align 8
  %236 = load i8, i8* %235, align 1
  %conv304 = zext i8 %236 to i32
  %cmp305 = icmp sle i32 %conv304, 253
  br i1 %cmp305, label %if.then.307, label %if.end.332

if.then.307:                                      ; preds = %land.lhs.true.303
  %237 = load i8*, i8** %s, align 8
  %238 = load i8, i8* %237, align 1
  %idxprom = zext i8 %238 to i64
  %arrayidx308 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom
  %239 = load i8, i8* %arrayidx308, align 1
  %conv309 = zext i8 %239 to i32
  store i32 %conv309, i32* %ulen, align 4
  %240 = load i32, i32* %ulen, align 4
  %241 = load i32, i32* %len, align 4
  %242 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %241, %242
  %cmp310 = icmp slt i32 %240, %sub
  br i1 %cmp310, label %if.then.312, label %if.end.331

if.then.312:                                      ; preds = %if.then.307
  store i32 1, i32* %j, align 4
  br label %for.cond.313

for.cond.313:                                     ; preds = %for.inc, %if.then.312
  %243 = load i32, i32* %j, align 4
  %244 = load i32, i32* %ulen, align 4
  %cmp314 = icmp slt i32 %243, %244
  br i1 %cmp314, label %for.body.316, label %for.end

for.body.316:                                     ; preds = %for.cond.313
  %245 = load i32, i32* %j, align 4
  %idxprom317 = sext i32 %245 to i64
  %246 = load i8*, i8** %s, align 8
  %arrayidx318 = getelementptr inbounds i8, i8* %246, i64 %idxprom317
  %247 = load i8, i8* %arrayidx318, align 1
  %conv319 = zext i8 %247 to i32
  %cmp320 = icmp sge i32 %conv319, 128
  br i1 %cmp320, label %land.lhs.true.322, label %if.then.328

land.lhs.true.322:                                ; preds = %for.body.316
  %248 = load i32, i32* %j, align 4
  %idxprom323 = sext i32 %248 to i64
  %249 = load i8*, i8** %s, align 8
  %arrayidx324 = getelementptr inbounds i8, i8* %249, i64 %idxprom323
  %250 = load i8, i8* %arrayidx324, align 1
  %conv325 = zext i8 %250 to i32
  %cmp326 = icmp sle i32 %conv325, 191
  br i1 %cmp326, label %if.end.329, label %if.then.328

if.then.328:                                      ; preds = %land.lhs.true.322, %for.body.316
  br label %not_utf8

if.end.329:                                       ; preds = %land.lhs.true.322
  br label %for.inc

for.inc:                                          ; preds = %if.end.329
  %251 = load i32, i32* %j, align 4
  %inc = add nsw i32 %251, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.313

for.end:                                          ; preds = %for.cond.313
  %252 = load i32, i32* %ulen, align 4
  %dec = add nsw i32 %252, -1
  store i32 %dec, i32* %ulen, align 4
  %253 = load i32, i32* %ulen, align 4
  %254 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %253 to i64
  %add.ptr = getelementptr inbounds i8, i8* %254, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  %255 = load i32, i32* %ulen, align 4
  %256 = load i32, i32* %i, align 4
  %add330 = add nsw i32 %256, %255
  store i32 %add330, i32* %i, align 4
  br label %for.inc.367

if.end.331:                                       ; preds = %if.then.307
  br label %if.end.332

if.end.332:                                       ; preds = %if.end.331, %land.lhs.true.303, %if.then.299
  br label %not_utf8

not_utf8:                                         ; preds = %if.end.332, %if.then.328
  %257 = load i32, i32* %odd, align 4
  %inc333 = add nsw i32 %257, 1
  store i32 %inc333, i32* %odd, align 4
  br label %if.end.365

if.else.334:                                      ; preds = %if.else.295
  %258 = load i8*, i8** %s, align 8
  %259 = load i8, i8* %258, align 1
  %conv335 = sext i8 %259 to i32
  %cmp336 = icmp slt i32 %conv335, 32
  br i1 %cmp336, label %land.lhs.true.338, label %if.end.364

land.lhs.true.338:                                ; preds = %if.else.334
  %260 = load i8*, i8** %s, align 8
  %261 = load i8, i8* %260, align 1
  %conv339 = sext i8 %261 to i32
  %cmp340 = icmp ne i32 %conv339, 10
  br i1 %cmp340, label %land.lhs.true.342, label %if.end.364

land.lhs.true.342:                                ; preds = %land.lhs.true.338
  %262 = load i8*, i8** %s, align 8
  %263 = load i8, i8* %262, align 1
  %conv343 = sext i8 %263 to i32
  %cmp344 = icmp ne i32 %conv343, 13
  br i1 %cmp344, label %land.lhs.true.346, label %if.end.364

land.lhs.true.346:                                ; preds = %land.lhs.true.342
  %264 = load i8*, i8** %s, align 8
  %265 = load i8, i8* %264, align 1
  %conv347 = sext i8 %265 to i32
  %cmp348 = icmp ne i32 %conv347, 8
  br i1 %cmp348, label %land.lhs.true.350, label %if.end.364

land.lhs.true.350:                                ; preds = %land.lhs.true.346
  %266 = load i8*, i8** %s, align 8
  %267 = load i8, i8* %266, align 1
  %conv351 = sext i8 %267 to i32
  %cmp352 = icmp ne i32 %conv351, 9
  br i1 %cmp352, label %land.lhs.true.354, label %if.end.364

land.lhs.true.354:                                ; preds = %land.lhs.true.350
  %268 = load i8*, i8** %s, align 8
  %269 = load i8, i8* %268, align 1
  %conv355 = sext i8 %269 to i32
  %cmp356 = icmp ne i32 %conv355, 12
  br i1 %cmp356, label %land.lhs.true.358, label %if.end.364

land.lhs.true.358:                                ; preds = %land.lhs.true.354
  %270 = load i8*, i8** %s, align 8
  %271 = load i8, i8* %270, align 1
  %conv359 = sext i8 %271 to i32
  %cmp360 = icmp ne i32 %conv359, 27
  br i1 %cmp360, label %if.then.362, label %if.end.364

if.then.362:                                      ; preds = %land.lhs.true.358
  %272 = load i32, i32* %odd, align 4
  %inc363 = add nsw i32 %272, 1
  store i32 %inc363, i32* %odd, align 4
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.362, %land.lhs.true.358, %land.lhs.true.354, %land.lhs.true.350, %land.lhs.true.346, %land.lhs.true.342, %land.lhs.true.338, %if.else.334
  br label %if.end.365

if.end.365:                                       ; preds = %if.end.364, %not_utf8
  br label %if.end.366

if.end.366:                                       ; preds = %if.end.365
  br label %for.inc.367

for.inc.367:                                      ; preds = %if.end.366, %for.end
  %273 = load i32, i32* %i, align 4
  %inc368 = add nsw i32 %273, 1
  store i32 %inc368, i32* %i, align 4
  %274 = load i8*, i8** %s, align 8
  %incdec.ptr369 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %incdec.ptr369, i8** %s, align 8
  br label %for.cond

for.end.370:                                      ; preds = %if.then.294, %for.cond
  %275 = load i32, i32* %odd, align 4
  %mul = mul nsw i32 %275, 3
  %276 = load i32, i32* %len, align 4
  %cmp371 = icmp sgt i32 %mul, %276
  %conv372 = zext i1 %cmp371 to i32
  %277 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type373 = getelementptr inbounds %struct.op, %struct.op* %277, i32 0, i32 4
  %278 = load i16, i16* %op_type373, align 2
  %conv374 = zext i16 %278 to i32
  %cmp375 = icmp eq i32 %conv374, 261
  %conv376 = zext i1 %cmp375 to i32
  %cmp377 = icmp eq i32 %conv372, %conv376
  br i1 %cmp377, label %if.then.379, label %if.else.382

if.then.379:                                      ; preds = %for.end.370
  %279 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr380 = getelementptr inbounds %struct.sv*, %struct.sv** %279, i32 1
  store %struct.sv** %incdec.ptr380, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_no, %struct.sv** %incdec.ptr380, align 8
  %280 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %280, %struct.sv*** @PL_stack_sp, align 8
  %281 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next381 = getelementptr inbounds %struct.op, %struct.op* %281, i32 0, i32 0
  %282 = load %struct.op*, %struct.op** %op_next381, align 8
  store %struct.op* %282, %struct.op** %retval
  br label %return

if.else.382:                                      ; preds = %for.end.370
  %283 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr383 = getelementptr inbounds %struct.sv*, %struct.sv** %283, i32 1
  store %struct.sv** %incdec.ptr383, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_yes, %struct.sv** %incdec.ptr383, align 8
  %284 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %284, %struct.sv*** @PL_stack_sp, align 8
  %285 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next384 = getelementptr inbounds %struct.op, %struct.op* %285, i32 0, i32 0
  %286 = load %struct.op*, %struct.op** %op_next384, align 8
  store %struct.op* %286, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.else.382, %if.then.379, %if.end.285, %if.then.282, %if.then.262, %if.end.254, %if.end.186, %if.then.119, %if.else.93, %if.then.90, %if.then.80, %if.then.71
  %287 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %287
}

declare i32 @PerlIO_has_base(%struct._PerlIO**) #1

declare i32 @Perl_PerlIO_get_cnt(%struct._PerlIO**) #1

declare i32 @PerlIO_ungetc(%struct._PerlIO**, i32) #1

declare i32 @Perl_PerlIO_get_bufsiz(%struct._PerlIO**) #1

declare i8* @Perl_PerlIO_get_base(%struct._PerlIO**) #1

declare %struct._PerlIO** @PerlIO_open(i8*, i8*) #1

declare i32 @Perl_PerlIO_close(%struct._PerlIO**) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ftbinary() #0 {
entry:
  %call = call %struct.op* @Perl_pp_fttext()
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_chdir() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %tmps = alloca i8*, align 8
  %svp = alloca %struct.sv**, align 8
  %n_a = alloca i64, align 8
  %tmp = alloca %struct.sv*, align 8
  %tmp88 = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 3
  %2 = load i64, i64* %op_targ, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %4, %struct.sv** %targ, align 8
  %5 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %5, i32 0, i32 7
  %6 = load i8, i8* %op_private, align 1
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 15
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %7, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %8 = load %struct.sv*, %struct.sv** %7, align 8
  store %struct.sv* %8, %struct.sv** @PL_Sv, align 8
  %9 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 2
  %10 = load i32, i32* %sv_flags, align 4
  %and2 = and i32 %10, 262144
  %cmp3 = icmp eq i32 %and2, 262144
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %11 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 0
  %12 = load i8*, i8** %sv_any, align 8
  %13 = bitcast i8* %12 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %13, i32 0, i32 1
  %14 = load i64, i64* %xpv_cur, align 8
  store i64 %14, i64* %n_a, align 8
  %15 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any5 = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 0
  %16 = load i8*, i8** %sv_any5, align 8
  %17 = bitcast i8* %16 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %17, i32 0, i32 0
  %18 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %19 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %19, i64* %n_a, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %18, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %tmps, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i8* null, i8** %tmps, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %20 = load i8*, i8** %tmps, align 8
  %tobool = icmp ne i8* %20, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.7

lor.lhs.false:                                    ; preds = %if.end
  %21 = load i8*, i8** %tmps, align 8
  %22 = load i8, i8* %21, align 1
  %tobool6 = icmp ne i8 %22, 0
  br i1 %tobool6, label %if.end.74, label %if.then.7

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  %23 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %sv_any8 = getelementptr inbounds %struct.gv, %struct.gv* %23, i32 0, i32 0
  %24 = load %struct.xpvgv*, %struct.xpvgv** %sv_any8, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %24, i32 0, i32 7
  %25 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_hv = getelementptr inbounds %struct.gp, %struct.gp* %25, i32 0, i32 5
  %26 = load %struct.hv*, %struct.hv** %gp_hv, align 8
  %tobool9 = icmp ne %struct.hv* %26, null
  br i1 %tobool9, label %cond.true.10, label %cond.false.14

cond.true.10:                                     ; preds = %if.then.7
  %27 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %sv_any11 = getelementptr inbounds %struct.gv, %struct.gv* %27, i32 0, i32 0
  %28 = load %struct.xpvgv*, %struct.xpvgv** %sv_any11, align 8
  %xgv_gp12 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %28, i32 0, i32 7
  %29 = load %struct.gp*, %struct.gp** %xgv_gp12, align 8
  %gp_hv13 = getelementptr inbounds %struct.gp, %struct.gp* %29, i32 0, i32 5
  %30 = load %struct.hv*, %struct.hv** %gp_hv13, align 8
  br label %cond.end.19

cond.false.14:                                    ; preds = %if.then.7
  %31 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %call15 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %31)
  %sv_any16 = getelementptr inbounds %struct.gv, %struct.gv* %call15, i32 0, i32 0
  %32 = load %struct.xpvgv*, %struct.xpvgv** %sv_any16, align 8
  %xgv_gp17 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %32, i32 0, i32 7
  %33 = load %struct.gp*, %struct.gp** %xgv_gp17, align 8
  %gp_hv18 = getelementptr inbounds %struct.gp, %struct.gp* %33, i32 0, i32 5
  %34 = load %struct.hv*, %struct.hv** %gp_hv18, align 8
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.14, %cond.true.10
  %cond20 = phi %struct.hv* [ %30, %cond.true.10 ], [ %34, %cond.false.14 ]
  %call21 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %cond20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i32 4, i32 0)
  store %struct.sv** %call21, %struct.sv*** %svp, align 8
  %tobool22 = icmp ne %struct.sv** %call21, null
  br i1 %tobool22, label %if.then.41, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %cond.end.19
  %35 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %sv_any24 = getelementptr inbounds %struct.gv, %struct.gv* %35, i32 0, i32 0
  %36 = load %struct.xpvgv*, %struct.xpvgv** %sv_any24, align 8
  %xgv_gp25 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %36, i32 0, i32 7
  %37 = load %struct.gp*, %struct.gp** %xgv_gp25, align 8
  %gp_hv26 = getelementptr inbounds %struct.gp, %struct.gp* %37, i32 0, i32 5
  %38 = load %struct.hv*, %struct.hv** %gp_hv26, align 8
  %tobool27 = icmp ne %struct.hv* %38, null
  br i1 %tobool27, label %cond.true.28, label %cond.false.32

cond.true.28:                                     ; preds = %lor.lhs.false.23
  %39 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %sv_any29 = getelementptr inbounds %struct.gv, %struct.gv* %39, i32 0, i32 0
  %40 = load %struct.xpvgv*, %struct.xpvgv** %sv_any29, align 8
  %xgv_gp30 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %40, i32 0, i32 7
  %41 = load %struct.gp*, %struct.gp** %xgv_gp30, align 8
  %gp_hv31 = getelementptr inbounds %struct.gp, %struct.gp* %41, i32 0, i32 5
  %42 = load %struct.hv*, %struct.hv** %gp_hv31, align 8
  br label %cond.end.37

cond.false.32:                                    ; preds = %lor.lhs.false.23
  %43 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %call33 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %43)
  %sv_any34 = getelementptr inbounds %struct.gv, %struct.gv* %call33, i32 0, i32 0
  %44 = load %struct.xpvgv*, %struct.xpvgv** %sv_any34, align 8
  %xgv_gp35 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %44, i32 0, i32 7
  %45 = load %struct.gp*, %struct.gp** %xgv_gp35, align 8
  %gp_hv36 = getelementptr inbounds %struct.gp, %struct.gp* %45, i32 0, i32 5
  %46 = load %struct.hv*, %struct.hv** %gp_hv36, align 8
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.32, %cond.true.28
  %cond38 = phi %struct.hv* [ %42, %cond.true.28 ], [ %46, %cond.false.32 ]
  %call39 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %cond38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i32 6, i32 0)
  store %struct.sv** %call39, %struct.sv*** %svp, align 8
  %tobool40 = icmp ne %struct.sv** %call39, null
  br i1 %tobool40, label %if.then.41, label %if.else.62

if.then.41:                                       ; preds = %cond.end.37, %cond.end.19
  %47 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private42 = getelementptr inbounds %struct.op, %struct.op* %47, i32 0, i32 7
  %48 = load i8, i8* %op_private42, align 1
  %conv43 = zext i8 %48 to i32
  %and44 = and i32 %conv43, 15
  %cmp45 = icmp eq i32 %and44, 1
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.41
  call void @Perl_deprecate(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.75, i32 0, i32 0))
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.then.41
  %49 = load %struct.sv**, %struct.sv*** %svp, align 8
  %50 = load %struct.sv*, %struct.sv** %49, align 8
  %sv_flags49 = getelementptr inbounds %struct.sv, %struct.sv* %50, i32 0, i32 2
  %51 = load i32, i32* %sv_flags49, align 4
  %and50 = and i32 %51, 262144
  %cmp51 = icmp eq i32 %and50, 262144
  br i1 %cmp51, label %cond.true.53, label %cond.false.58

cond.true.53:                                     ; preds = %if.end.48
  %52 = load %struct.sv**, %struct.sv*** %svp, align 8
  %53 = load %struct.sv*, %struct.sv** %52, align 8
  %sv_any54 = getelementptr inbounds %struct.sv, %struct.sv* %53, i32 0, i32 0
  %54 = load i8*, i8** %sv_any54, align 8
  %55 = bitcast i8* %54 to %struct.xpv*
  %xpv_cur55 = getelementptr inbounds %struct.xpv, %struct.xpv* %55, i32 0, i32 1
  %56 = load i64, i64* %xpv_cur55, align 8
  store i64 %56, i64* %n_a, align 8
  %57 = load %struct.sv**, %struct.sv*** %svp, align 8
  %58 = load %struct.sv*, %struct.sv** %57, align 8
  %sv_any56 = getelementptr inbounds %struct.sv, %struct.sv* %58, i32 0, i32 0
  %59 = load i8*, i8** %sv_any56, align 8
  %60 = bitcast i8* %59 to %struct.xpv*
  %xpv_pv57 = getelementptr inbounds %struct.xpv, %struct.xpv* %60, i32 0, i32 0
  %61 = load i8*, i8** %xpv_pv57, align 8
  br label %cond.end.60

cond.false.58:                                    ; preds = %if.end.48
  %62 = load %struct.sv**, %struct.sv*** %svp, align 8
  %63 = load %struct.sv*, %struct.sv** %62, align 8
  %call59 = call i8* @Perl_sv_2pv_flags(%struct.sv* %63, i64* %n_a, i32 2)
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.58, %cond.true.53
  %cond61 = phi i8* [ %61, %cond.true.53 ], [ %call59, %cond.false.58 ]
  store i8* %cond61, i8** %tmps, align 8
  br label %if.end.73

if.else.62:                                       ; preds = %cond.end.37
  %64 = load %struct.sv*, %struct.sv** %targ, align 8
  call void @Perl_sv_setiv(%struct.sv* %64, i64 0)
  %65 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags63 = getelementptr inbounds %struct.sv, %struct.sv* %65, i32 0, i32 2
  %66 = load i32, i32* %sv_flags63, align 4
  %and64 = and i32 %66, 16384
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.else.62
  %67 = load %struct.sv*, %struct.sv** %targ, align 8
  %call67 = call i32 @Perl_mg_set(%struct.sv* %67)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.else.62
  %68 = load %struct.sv*, %struct.sv** %targ, align 8
  %69 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr69 = getelementptr inbounds %struct.sv*, %struct.sv** %69, i32 1
  store %struct.sv** %incdec.ptr69, %struct.sv*** %sp, align 8
  store %struct.sv* %68, %struct.sv** %incdec.ptr69, align 8
  store %struct.sv* %68, %struct.sv** %tmp
  %70 = load %struct.sv*, %struct.sv** %tmp
  %71 = load i8, i8* @PL_tainting, align 1
  %tobool70 = icmp ne i8 %71, 0
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.68
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0))
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.end.68
  %72 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %72, %struct.sv*** @PL_stack_sp, align 8
  %73 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %73, i32 0, i32 0
  %74 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %74, %struct.op** %retval
  br label %return

if.end.73:                                        ; preds = %cond.end.60
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %lor.lhs.false
  %75 = load i8, i8* @PL_tainting, align 1
  %tobool75 = icmp ne i8 %75, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.74
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0))
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.end.74
  %76 = load %struct.sv*, %struct.sv** %targ, align 8
  %77 = load i8*, i8** %tmps, align 8
  %call78 = call i32 @chdir(i8* %77)
  %cmp79 = icmp sge i32 %call78, 0
  %conv80 = zext i1 %cmp79 to i32
  %conv81 = sext i32 %conv80 to i64
  call void @Perl_sv_setiv(%struct.sv* %76, i64 %conv81)
  %78 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags82 = getelementptr inbounds %struct.sv, %struct.sv* %78, i32 0, i32 2
  %79 = load i32, i32* %sv_flags82, align 4
  %and83 = and i32 %79, 16384
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.end.77
  %80 = load %struct.sv*, %struct.sv** %targ, align 8
  %call86 = call i32 @Perl_mg_set(%struct.sv* %80)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %if.end.77
  %81 = load %struct.sv*, %struct.sv** %targ, align 8
  %82 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr89 = getelementptr inbounds %struct.sv*, %struct.sv** %82, i32 1
  store %struct.sv** %incdec.ptr89, %struct.sv*** %sp, align 8
  store %struct.sv* %81, %struct.sv** %incdec.ptr89, align 8
  store %struct.sv* %81, %struct.sv** %tmp88
  %83 = load %struct.sv*, %struct.sv** %tmp88
  %84 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %84, %struct.sv*** @PL_stack_sp, align 8
  %85 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next90 = getelementptr inbounds %struct.op, %struct.op* %85, i32 0, i32 0
  %86 = load %struct.op*, %struct.op** %op_next90, align 8
  store %struct.op* %86, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.87, %if.end.72
  %87 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %87
}

declare %struct.gv* @Perl_gv_HVadd(%struct.gv*) #1

declare void @Perl_deprecate(i8*) #1

declare i32 @chdir(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_chown() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_chroot() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_unlink() #0 {
entry:
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %value = alloca i32, align 4
  %tmp = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %4, i32 0, i32 3
  %5 = load i64, i64* %op_targ, align 8
  %6 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %6, i64 %5
  %7 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %7, %struct.sv** %targ, align 8
  %8 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %8, i32 0, i32 4
  %9 = load i16, i16* %op_type, align 2
  %conv = zext i16 %9 to i32
  %10 = load %struct.sv**, %struct.sv*** %mark, align 8
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call = call i32 @Perl_apply(i32 %conv, %struct.sv** %10, %struct.sv** %11)
  store i32 %call, i32* %value, align 4
  %12 = load %struct.sv**, %struct.sv*** %mark, align 8
  store %struct.sv** %12, %struct.sv*** %sp, align 8
  %13 = load %struct.sv*, %struct.sv** %targ, align 8
  %14 = load i32, i32* %value, align 4
  %conv1 = sext i32 %14 to i64
  call void @Perl_sv_setiv(%struct.sv* %13, i64 %conv1)
  %15 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags, align 4
  %and = and i32 %16, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load %struct.sv*, %struct.sv** %targ, align 8
  %call2 = call i32 @Perl_mg_set(%struct.sv* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.sv*, %struct.sv** %targ, align 8
  %19 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.sv*, %struct.sv** %19, i32 1
  store %struct.sv** %incdec.ptr3, %struct.sv*** %sp, align 8
  store %struct.sv* %18, %struct.sv** %incdec.ptr3, align 8
  store %struct.sv* %18, %struct.sv** %tmp
  %20 = load %struct.sv*, %struct.sv** %tmp
  %21 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %21, %struct.sv*** @PL_stack_sp, align 8
  %22 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %22, i32 0, i32 0
  %23 = load %struct.op*, %struct.op** %op_next, align 8
  ret %struct.op* %23
}

declare i32 @Perl_apply(i32, %struct.sv**, %struct.sv**) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_chmod() #0 {
entry:
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %value = alloca i32, align 4
  %tmp = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %4, i32 0, i32 3
  %5 = load i64, i64* %op_targ, align 8
  %6 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %6, i64 %5
  %7 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %7, %struct.sv** %targ, align 8
  %8 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %8, i32 0, i32 4
  %9 = load i16, i16* %op_type, align 2
  %conv = zext i16 %9 to i32
  %10 = load %struct.sv**, %struct.sv*** %mark, align 8
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call = call i32 @Perl_apply(i32 %conv, %struct.sv** %10, %struct.sv** %11)
  store i32 %call, i32* %value, align 4
  %12 = load %struct.sv**, %struct.sv*** %mark, align 8
  store %struct.sv** %12, %struct.sv*** %sp, align 8
  %13 = load %struct.sv*, %struct.sv** %targ, align 8
  %14 = load i32, i32* %value, align 4
  %conv1 = sext i32 %14 to i64
  call void @Perl_sv_setiv(%struct.sv* %13, i64 %conv1)
  %15 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags, align 4
  %and = and i32 %16, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load %struct.sv*, %struct.sv** %targ, align 8
  %call2 = call i32 @Perl_mg_set(%struct.sv* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.sv*, %struct.sv** %targ, align 8
  %19 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.sv*, %struct.sv** %19, i32 1
  store %struct.sv** %incdec.ptr3, %struct.sv*** %sp, align 8
  store %struct.sv* %18, %struct.sv** %incdec.ptr3, align 8
  store %struct.sv* %18, %struct.sv** %tmp
  %20 = load %struct.sv*, %struct.sv** %tmp
  %21 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %21, %struct.sv*** @PL_stack_sp, align 8
  %22 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %22, i32 0, i32 0
  %23 = load %struct.op*, %struct.op** %op_next, align 8
  ret %struct.op* %23
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_utime() #0 {
entry:
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %value = alloca i32, align 4
  %tmp = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %4, i32 0, i32 3
  %5 = load i64, i64* %op_targ, align 8
  %6 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %6, i64 %5
  %7 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %7, %struct.sv** %targ, align 8
  %8 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %8, i32 0, i32 4
  %9 = load i16, i16* %op_type, align 2
  %conv = zext i16 %9 to i32
  %10 = load %struct.sv**, %struct.sv*** %mark, align 8
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call = call i32 @Perl_apply(i32 %conv, %struct.sv** %10, %struct.sv** %11)
  store i32 %call, i32* %value, align 4
  %12 = load %struct.sv**, %struct.sv*** %mark, align 8
  store %struct.sv** %12, %struct.sv*** %sp, align 8
  %13 = load %struct.sv*, %struct.sv** %targ, align 8
  %14 = load i32, i32* %value, align 4
  %conv1 = sext i32 %14 to i64
  call void @Perl_sv_setiv(%struct.sv* %13, i64 %conv1)
  %15 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags, align 4
  %and = and i32 %16, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load %struct.sv*, %struct.sv** %targ, align 8
  %call2 = call i32 @Perl_mg_set(%struct.sv* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.sv*, %struct.sv** %targ, align 8
  %19 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.sv*, %struct.sv** %19, i32 1
  store %struct.sv** %incdec.ptr3, %struct.sv*** %sp, align 8
  store %struct.sv* %18, %struct.sv** %incdec.ptr3, align 8
  store %struct.sv* %18, %struct.sv** %tmp
  %20 = load %struct.sv*, %struct.sv** %tmp
  %21 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %21, %struct.sv*** @PL_stack_sp, align 8
  %22 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %22, i32 0, i32 0
  %23 = load %struct.op*, %struct.op** %op_next, align 8
  ret %struct.op* %23
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_rename() #0 {
entry:
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %anum = alloca i32, align 4
  %n_a = alloca i64, align 8
  %tmps2 = alloca i8*, align 8
  %tmps = alloca i8*, align 8
  %tmp = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 3
  %2 = load i64, i64* %op_targ, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %4, %struct.sv** %targ, align 8
  %5 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %5, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %6 = load %struct.sv*, %struct.sv** %5, align 8
  store %struct.sv* %6, %struct.sv** @PL_Sv, align 8
  %7 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 2
  %8 = load i32, i32* %sv_flags, align 4
  %and = and i32 %8, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 0
  %10 = load i8*, i8** %sv_any, align 8
  %11 = bitcast i8* %10 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %11, i32 0, i32 1
  %12 = load i64, i64* %xpv_cur, align 8
  store i64 %12, i64* %n_a, align 8
  %13 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 0
  %14 = load i8*, i8** %sv_any1, align 8
  %15 = bitcast i8* %14 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %15, i32 0, i32 0
  %16 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %17 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %17, i64* %n_a, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %16, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %tmps2, align 8
  %18 = load %struct.sv**, %struct.sv*** %sp, align 8
  %19 = load %struct.sv*, %struct.sv** %18, align 8
  %sv_flags2 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 2
  %20 = load i32, i32* %sv_flags2, align 4
  %and3 = and i32 %20, 262144
  %cmp4 = icmp eq i32 %and3, 262144
  br i1 %cmp4, label %cond.true.5, label %cond.false.10

cond.true.5:                                      ; preds = %cond.end
  %21 = load %struct.sv**, %struct.sv*** %sp, align 8
  %22 = load %struct.sv*, %struct.sv** %21, align 8
  %sv_any6 = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 0
  %23 = load i8*, i8** %sv_any6, align 8
  %24 = bitcast i8* %23 to %struct.xpv*
  %xpv_cur7 = getelementptr inbounds %struct.xpv, %struct.xpv* %24, i32 0, i32 1
  %25 = load i64, i64* %xpv_cur7, align 8
  store i64 %25, i64* %n_a, align 8
  %26 = load %struct.sv**, %struct.sv*** %sp, align 8
  %27 = load %struct.sv*, %struct.sv** %26, align 8
  %sv_any8 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 0
  %28 = load i8*, i8** %sv_any8, align 8
  %29 = bitcast i8* %28 to %struct.xpv*
  %xpv_pv9 = getelementptr inbounds %struct.xpv, %struct.xpv* %29, i32 0, i32 0
  %30 = load i8*, i8** %xpv_pv9, align 8
  br label %cond.end.12

cond.false.10:                                    ; preds = %cond.end
  %31 = load %struct.sv**, %struct.sv*** %sp, align 8
  %32 = load %struct.sv*, %struct.sv** %31, align 8
  %call11 = call i8* @Perl_sv_2pv_flags(%struct.sv* %32, i64* %n_a, i32 2)
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.10, %cond.true.5
  %cond13 = phi i8* [ %30, %cond.true.5 ], [ %call11, %cond.false.10 ]
  store i8* %cond13, i8** %tmps, align 8
  %33 = load i8, i8* @PL_tainting, align 1
  %tobool = icmp ne i8 %33, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.12
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.12
  %34 = load i8*, i8** %tmps, align 8
  %call14 = call i32 @stat(i8* %34, %struct.stat* @PL_statbuf)
  store i32 %call14, i32* %anum, align 4
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.35, label %if.then.16

if.then.16:                                       ; preds = %if.end
  %35 = load i8*, i8** %tmps2, align 8
  %36 = load i8*, i8** %tmps, align 8
  %call17 = call i32 @Perl_same_dirent(i8* %35, i8* %36)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.16
  store i32 1, i32* %anum, align 4
  br label %if.end.34

if.else:                                          ; preds = %if.then.16
  %37 = load i32, i32* @PL_euid, align 4
  %tobool20 = icmp ne i32 %37, 0
  br i1 %tobool20, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %38 = load i8*, i8** %tmps2, align 8
  %call21 = call i32 @stat(i8* %38, %struct.stat* @PL_statbuf)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.26, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false
  %39 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statbuf, i32 0, i32 3), align 4
  %and24 = and i32 %39, 61440
  %cmp25 = icmp eq i32 %and24, 16384
  br i1 %cmp25, label %if.end.28, label %if.then.26

if.then.26:                                       ; preds = %lor.lhs.false.23, %lor.lhs.false, %if.else
  %40 = load i8*, i8** %tmps2, align 8
  %call27 = call i32 @unlink(i8* %40)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %lor.lhs.false.23
  %41 = load i8*, i8** %tmps, align 8
  %42 = load i8*, i8** %tmps2, align 8
  %call29 = call i32 @link(i8* %41, i8* %42)
  store i32 %call29, i32* %anum, align 4
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.33, label %if.then.31

if.then.31:                                       ; preds = %if.end.28
  %43 = load i8*, i8** %tmps, align 8
  %call32 = call i32 @unlink(i8* %43)
  store i32 %call32, i32* %anum, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.28
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.19
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end
  %44 = load %struct.sv*, %struct.sv** %targ, align 8
  %45 = load i32, i32* %anum, align 4
  %cmp36 = icmp sge i32 %45, 0
  %conv = zext i1 %cmp36 to i32
  %conv37 = sext i32 %conv to i64
  call void @Perl_sv_setiv(%struct.sv* %44, i64 %conv37)
  %46 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags38 = getelementptr inbounds %struct.sv, %struct.sv* %46, i32 0, i32 2
  %47 = load i32, i32* %sv_flags38, align 4
  %and39 = and i32 %47, 16384
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.35
  %48 = load %struct.sv*, %struct.sv** %targ, align 8
  %call42 = call i32 @Perl_mg_set(%struct.sv* %48)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end.35
  %49 = load %struct.sv*, %struct.sv** %targ, align 8
  %50 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv* %49, %struct.sv** %50, align 8
  store %struct.sv* %49, %struct.sv** %tmp
  %51 = load %struct.sv*, %struct.sv** %tmp
  %52 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %52, %struct.sv*** @PL_stack_sp, align 8
  %53 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %53, i32 0, i32 0
  %54 = load %struct.op*, %struct.op** %op_next, align 8
  ret %struct.op* %54
}

declare i32 @Perl_same_dirent(i8*, i8*) #1

declare i32 @unlink(i8*) #1

declare i32 @link(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_link() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_symlink() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_readlink() #0 {
entry:
  %sp = alloca %struct.sv**, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %2 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp = icmp slt i64 %sub.ptr.div, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  %4 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %3, %struct.sv** %4, i32 1)
  store %struct.sv** %call, %struct.sv*** %sp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %5, align 8
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %6, %struct.sv*** @PL_stack_sp, align 8
  %7 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %7, i32 0, i32 0
  %8 = load %struct.op*, %struct.op** %op_next, align 8
  ret %struct.op* %8
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_mkdir() #0 {
entry:
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %mode = alloca i32, align 4
  %len = alloca i64, align 8
  %tmps = alloca i8*, align 8
  %copy = alloca i8, align 1
  %tmp = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 3
  %2 = load i64, i64* %op_targ, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %4, %struct.sv** %targ, align 8
  store i8 0, i8* %copy, align 1
  %5 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %5, i32 0, i32 7
  %6 = load i8, i8* %op_private, align 1
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 15
  %cmp = icmp sgt i32 %and, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %7, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %8 = load %struct.sv*, %struct.sv** %7, align 8
  store %struct.sv* %8, %struct.sv** @PL_Sv, align 8
  %9 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 2
  %10 = load i32, i32* %sv_flags, align 4
  %and2 = and i32 %10, 65536
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %11 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 0
  %12 = load i8*, i8** %sv_any, align 8
  %13 = bitcast i8* %12 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %13, i32 0, i32 3
  %14 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %15 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %15)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %call, %cond.false ]
  %conv3 = trunc i64 %cond to i32
  store i32 %conv3, i32* %mode, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 511, i32* %mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %16 = load %struct.sv**, %struct.sv*** %sp, align 8
  %17 = load %struct.sv*, %struct.sv** %16, align 8
  %sv_flags4 = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 2
  %18 = load i32, i32* %sv_flags4, align 4
  %and5 = and i32 %18, 262144
  %cmp6 = icmp eq i32 %and5, 262144
  br i1 %cmp6, label %cond.true.8, label %cond.false.11

cond.true.8:                                      ; preds = %if.end
  %19 = load %struct.sv**, %struct.sv*** %sp, align 8
  %20 = load %struct.sv*, %struct.sv** %19, align 8
  %sv_any9 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 0
  %21 = load i8*, i8** %sv_any9, align 8
  %22 = bitcast i8* %21 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %22, i32 0, i32 1
  %23 = load i64, i64* %xpv_cur, align 8
  store i64 %23, i64* %len, align 8
  %24 = load %struct.sv**, %struct.sv*** %sp, align 8
  %25 = load %struct.sv*, %struct.sv** %24, align 8
  %sv_any10 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 0
  %26 = load i8*, i8** %sv_any10, align 8
  %27 = bitcast i8* %26 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %27, i32 0, i32 0
  %28 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.13

cond.false.11:                                    ; preds = %if.end
  %29 = load %struct.sv**, %struct.sv*** %sp, align 8
  %30 = load %struct.sv*, %struct.sv** %29, align 8
  %call12 = call i8* @Perl_sv_2pv_flags(%struct.sv* %30, i64* %len, i32 2)
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.11, %cond.true.8
  %cond14 = phi i8* [ %28, %cond.true.8 ], [ %call12, %cond.false.11 ]
  store i8* %cond14, i8** %tmps, align 8
  %31 = load i64, i64* %len, align 8
  %cmp15 = icmp ugt i64 %31, 1
  br i1 %cmp15, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %cond.end.13
  %32 = load i64, i64* %len, align 8
  %sub = sub i64 %32, 1
  %33 = load i8*, i8** %tmps, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %33, i64 %sub
  %34 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %34 to i32
  %cmp19 = icmp eq i32 %conv18, 47
  br i1 %cmp19, label %if.then.21, label %if.end.31

if.then.21:                                       ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then.21
  %35 = load i64, i64* %len, align 8
  %dec = add i64 %35, -1
  store i64 %dec, i64* %len, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %36 = load i64, i64* %len, align 8
  %cmp22 = icmp ugt i64 %36, 1
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %37 = load i64, i64* %len, align 8
  %sub24 = sub i64 %37, 1
  %38 = load i8*, i8** %tmps, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %38, i64 %sub24
  %39 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %39 to i32
  %cmp27 = icmp eq i32 %conv26, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %40 = phi i1 [ false, %do.cond ], [ %cmp27, %land.rhs ]
  br i1 %40, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %41 = load i8*, i8** %tmps, align 8
  %42 = load i64, i64* %len, align 8
  %conv29 = trunc i64 %42 to i32
  %call30 = call i8* @Perl_savepvn(i8* %41, i32 %conv29)
  store i8* %call30, i8** %tmps, align 8
  store i8 1, i8* %copy, align 1
  br label %if.end.31

if.end.31:                                        ; preds = %do.end, %land.lhs.true, %cond.end.13
  %43 = load i8, i8* @PL_tainting, align 1
  %tobool32 = icmp ne i8 %43, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.31
  %44 = load %struct.sv*, %struct.sv** %targ, align 8
  %45 = load i8*, i8** %tmps, align 8
  %46 = load i32, i32* %mode, align 4
  %call35 = call i32 @mkdir(i8* %45, i32 %46)
  %cmp36 = icmp sge i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %conv38 = sext i32 %conv37 to i64
  call void @Perl_sv_setiv(%struct.sv* %44, i64 %conv38)
  %47 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags39 = getelementptr inbounds %struct.sv, %struct.sv* %47, i32 0, i32 2
  %48 = load i32, i32* %sv_flags39, align 4
  %and40 = and i32 %48, 16384
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.34
  %49 = load %struct.sv*, %struct.sv** %targ, align 8
  %call43 = call i32 @Perl_mg_set(%struct.sv* %49)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.end.34
  %50 = load %struct.sv*, %struct.sv** %targ, align 8
  %51 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv* %50, %struct.sv** %51, align 8
  store %struct.sv* %50, %struct.sv** %tmp
  %52 = load %struct.sv*, %struct.sv** %tmp
  %53 = load i8, i8* %copy, align 1
  %tobool45 = icmp ne i8 %53, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.44
  %54 = load i8*, i8** %tmps, align 8
  call void @Perl_safesysfree(i8* %54)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.44
  %55 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %55, %struct.sv*** @PL_stack_sp, align 8
  %56 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %56, i32 0, i32 0
  %57 = load %struct.op*, %struct.op** %op_next, align 8
  ret %struct.op* %57
}

declare i8* @Perl_savepvn(i8*, i32) #1

declare i32 @mkdir(i8*, i32) #1

declare void @Perl_safesysfree(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_rmdir() #0 {
entry:
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %len = alloca i64, align 8
  %tmps = alloca i8*, align 8
  %copy = alloca i8, align 1
  %tmp = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 3
  %2 = load i64, i64* %op_targ, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %4, %struct.sv** %targ, align 8
  store i8 0, i8* %copy, align 1
  %5 = load %struct.sv**, %struct.sv*** %sp, align 8
  %6 = load %struct.sv*, %struct.sv** %5, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 2
  %7 = load i32, i32* %sv_flags, align 4
  %and = and i32 %7, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  %9 = load %struct.sv*, %struct.sv** %8, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 0
  %10 = load i8*, i8** %sv_any, align 8
  %11 = bitcast i8* %10 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %11, i32 0, i32 1
  %12 = load i64, i64* %xpv_cur, align 8
  store i64 %12, i64* %len, align 8
  %13 = load %struct.sv**, %struct.sv*** %sp, align 8
  %14 = load %struct.sv*, %struct.sv** %13, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any1, align 8
  %16 = bitcast i8* %15 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %16, i32 0, i32 0
  %17 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %18 = load %struct.sv**, %struct.sv*** %sp, align 8
  %19 = load %struct.sv*, %struct.sv** %18, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %19, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %17, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %tmps, align 8
  %20 = load i64, i64* %len, align 8
  %cmp2 = icmp ugt i64 %20, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %21 = load i64, i64* %len, align 8
  %sub = sub i64 %21, 1
  %22 = load i8*, i8** %tmps, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %22, i64 %sub
  %23 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %23 to i32
  %cmp4 = icmp eq i32 %conv, 47
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then
  %24 = load i64, i64* %len, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %len, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %25 = load i64, i64* %len, align 8
  %cmp6 = icmp ugt i64 %25, 1
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %26 = load i64, i64* %len, align 8
  %sub8 = sub i64 %26, 1
  %27 = load i8*, i8** %tmps, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %27, i64 %sub8
  %28 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %28 to i32
  %cmp11 = icmp eq i32 %conv10, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %29 = phi i1 [ false, %do.cond ], [ %cmp11, %land.rhs ]
  br i1 %29, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %30 = load i8*, i8** %tmps, align 8
  %31 = load i64, i64* %len, align 8
  %conv13 = trunc i64 %31 to i32
  %call14 = call i8* @Perl_savepvn(i8* %30, i32 %conv13)
  store i8* %call14, i8** %tmps, align 8
  store i8 1, i8* %copy, align 1
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true, %cond.end
  %32 = load i8, i8* @PL_tainting, align 1
  %tobool = icmp ne i8 %32, 0
  br i1 %tobool, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end
  %33 = load %struct.sv*, %struct.sv** %targ, align 8
  %34 = load i8*, i8** %tmps, align 8
  %call17 = call i32 @rmdir(i8* %34)
  %cmp18 = icmp sge i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %conv20 = sext i32 %conv19 to i64
  call void @Perl_sv_setiv(%struct.sv* %33, i64 %conv20)
  %35 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags21 = getelementptr inbounds %struct.sv, %struct.sv* %35, i32 0, i32 2
  %36 = load i32, i32* %sv_flags21, align 4
  %and22 = and i32 %36, 16384
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.16
  %37 = load %struct.sv*, %struct.sv** %targ, align 8
  %call25 = call i32 @Perl_mg_set(%struct.sv* %37)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.16
  %38 = load %struct.sv*, %struct.sv** %targ, align 8
  %39 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv* %38, %struct.sv** %39, align 8
  store %struct.sv* %38, %struct.sv** %tmp
  %40 = load %struct.sv*, %struct.sv** %tmp
  %41 = load i8, i8* %copy, align 1
  %tobool27 = icmp ne i8 %41, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  %42 = load i8*, i8** %tmps, align 8
  call void @Perl_safesysfree(i8* %42)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.26
  %43 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %43, %struct.sv*** @PL_stack_sp, align 8
  %44 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %44, i32 0, i32 0
  %45 = load %struct.op*, %struct.op** %op_next, align 8
  ret %struct.op* %45
}

declare i32 @rmdir(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_open_dir() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_dir_func, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_readdir() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_dir_func, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_telldir() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_dir_func, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_seekdir() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_dir_func, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_rewinddir() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_dir_func, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_closedir() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_dir_func, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.89, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_fork() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %childpid = alloca i32, align 4
  %tmpgv = alloca %struct.gv*, align 8
  %tmp = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 3
  %2 = load i64, i64* %op_targ, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %4, %struct.sv** %targ, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp = icmp slt i64 %sub.ptr.div, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %7, %struct.sv** %8, i32 1)
  store %struct.sv** %call, %struct.sv*** %sp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** null)
  %call2 = call i32 @Perl_my_fork()
  store i32 %call2, i32* %childpid, align 4
  %9 = load i32, i32* %childpid, align 4
  %cmp3 = icmp slt i32 %9, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %10, align 8
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %11, %struct.sv*** @PL_stack_sp, align 8
  %12 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %12, i32 0, i32 0
  %13 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %13, %struct.op** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %14 = load i32, i32* %childpid, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end.19, label %if.then.6

if.then.6:                                        ; preds = %if.end.5
  %call7 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i32 0, i32 0), i32 1, i32 4)
  store %struct.gv* %call7, %struct.gv** %tmpgv, align 8
  %tobool8 = icmp ne %struct.gv* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %if.then.6
  %15 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %15, i32 0, i32 0
  %16 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %16, i32 0, i32 7
  %17 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %17, i32 0, i32 0
  %18 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 2
  %19 = load i32, i32* %sv_flags, align 4
  %and = and i32 %19, -8388609
  store i32 %and, i32* %sv_flags, align 4
  %20 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any10 = getelementptr inbounds %struct.gv, %struct.gv* %20, i32 0, i32 0
  %21 = load %struct.xpvgv*, %struct.xpvgv** %sv_any10, align 8
  %xgv_gp11 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %21, i32 0, i32 7
  %22 = load %struct.gp*, %struct.gp** %xgv_gp11, align 8
  %gp_sv12 = getelementptr inbounds %struct.gp, %struct.gp* %22, i32 0, i32 0
  %23 = load %struct.sv*, %struct.sv** %gp_sv12, align 8
  %call13 = call i32 @getpid()
  %conv = sext i32 %call13 to i64
  call void @Perl_sv_setiv(%struct.sv* %23, i64 %conv)
  %24 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any14 = getelementptr inbounds %struct.gv, %struct.gv* %24, i32 0, i32 0
  %25 = load %struct.xpvgv*, %struct.xpvgv** %sv_any14, align 8
  %xgv_gp15 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %25, i32 0, i32 7
  %26 = load %struct.gp*, %struct.gp** %xgv_gp15, align 8
  %gp_sv16 = getelementptr inbounds %struct.gp, %struct.gp* %26, i32 0, i32 0
  %27 = load %struct.sv*, %struct.sv** %gp_sv16, align 8
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 2
  %28 = load i32, i32* %sv_flags17, align 4
  %or = or i32 %28, 8388608
  store i32 %or, i32* %sv_flags17, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.9, %if.then.6
  %29 = load %struct.hv*, %struct.hv** @PL_pidstatus, align 8
  call void @Perl_hv_clear(%struct.hv* %29)
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.5
  %30 = load %struct.sv*, %struct.sv** %targ, align 8
  %31 = load i32, i32* %childpid, align 4
  %conv20 = sext i32 %31 to i64
  call void @Perl_sv_setiv(%struct.sv* %30, i64 %conv20)
  %32 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags21 = getelementptr inbounds %struct.sv, %struct.sv* %32, i32 0, i32 2
  %33 = load i32, i32* %sv_flags21, align 4
  %and22 = and i32 %33, 16384
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.19
  %34 = load %struct.sv*, %struct.sv** %targ, align 8
  %call25 = call i32 @Perl_mg_set(%struct.sv* %34)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.19
  %35 = load %struct.sv*, %struct.sv** %targ, align 8
  %36 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %36, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* %35, %struct.sv** %incdec.ptr, align 8
  store %struct.sv* %35, %struct.sv** %tmp
  %37 = load %struct.sv*, %struct.sv** %tmp
  %38 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %38, %struct.sv*** @PL_stack_sp, align 8
  %39 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next27 = getelementptr inbounds %struct.op, %struct.op* %39, i32 0, i32 0
  %40 = load %struct.op*, %struct.op** %op_next27, align 8
  store %struct.op* %40, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.4
  %41 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %41
}

declare i32 @Perl_my_fork() #1

declare i32 @getpid() #1

declare void @Perl_hv_clear(%struct.hv*) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_wait() #0 {
entry:
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %childpid = alloca i32, align 4
  %argflags = alloca i32, align 4
  %tmp = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 3
  %2 = load i64, i64* %op_targ, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %4, %struct.sv** %targ, align 8
  %5 = load i32, i32* @PL_signals, align 4
  %and = and i32 %5, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @Perl_wait4pid(i32 -1, i32* %argflags, i32 0)
  store i32 %call, i32* %childpid, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  %call1 = call i32 @Perl_wait4pid(i32 -1, i32* %argflags, i32 0)
  store i32 %call1, i32* %childpid, align 4
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call2 = call i32* @__errno_location()
  %6 = load i32, i32* %call2, align 4
  %cmp3 = icmp eq i32 %6, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i32, i32* @PL_sig_pending, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %while.body
  call void @Perl_despatch_signals()
  br label %if.end

if.end:                                           ; preds = %if.then.5, %while.body
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.6

if.end.6:                                         ; preds = %while.end, %if.then
  %9 = load i32, i32* %childpid, align 4
  %cmp7 = icmp sgt i32 %9, 0
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %10 = load i32, i32* %argflags, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* @PL_statusvalue, align 4
  %11 = load i32, i32* @PL_statusvalue, align 4
  %cmp8 = icmp ne i32 %11, -1
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %cond.end
  %12 = load i32, i32* @PL_statusvalue, align 4
  %and10 = and i32 %12, 65535
  store i32 %and10, i32* @PL_statusvalue, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %cond.end
  %13 = load %struct.sv*, %struct.sv** %targ, align 8
  %14 = load i32, i32* %childpid, align 4
  %conv = sext i32 %14 to i64
  call void @Perl_sv_setiv(%struct.sv* %13, i64 %conv)
  %15 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags, align 4
  %and12 = and i32 %16, 16384
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.11
  %17 = load %struct.sv*, %struct.sv** %targ, align 8
  %call15 = call i32 @Perl_mg_set(%struct.sv* %17)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.11
  %18 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %19 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %18 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp17 = icmp slt i64 %sub.ptr.div, 1
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.16
  %20 = load %struct.sv**, %struct.sv*** %sp, align 8
  %21 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call20 = call %struct.sv** @Perl_stack_grow(%struct.sv** %20, %struct.sv** %21, i32 1)
  store %struct.sv** %call20, %struct.sv*** %sp, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.16
  %22 = load %struct.sv*, %struct.sv** %targ, align 8
  %23 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %23, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* %22, %struct.sv** %incdec.ptr, align 8
  store %struct.sv* %22, %struct.sv** %tmp
  %24 = load %struct.sv*, %struct.sv** %tmp
  %25 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %25, %struct.sv*** @PL_stack_sp, align 8
  %26 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %26, i32 0, i32 0
  %27 = load %struct.op*, %struct.op** %op_next, align 8
  ret %struct.op* %27
}

declare i32 @Perl_wait4pid(i32, i32*, i32) #1

declare void @Perl_despatch_signals() #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_waitpid() #0 {
entry:
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %pid = alloca i32, align 4
  %result = alloca i32, align 4
  %optype = alloca i32, align 4
  %argflags = alloca i32, align 4
  %tmp = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 3
  %2 = load i64, i64* %op_targ, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %4, %struct.sv** %targ, align 8
  %5 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %5, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %6 = load %struct.sv*, %struct.sv** %5, align 8
  store %struct.sv* %6, %struct.sv** @PL_Sv, align 8
  %7 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 2
  %8 = load i32, i32* %sv_flags, align 4
  %and = and i32 %8, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 0
  %10 = load i8*, i8** %sv_any, align 8
  %11 = bitcast i8* %10 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %11, i32 0, i32 3
  %12 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %13 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %13)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %12, %cond.true ], [ %call, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %optype, align 4
  %14 = load %struct.sv**, %struct.sv*** %sp, align 8
  %15 = load %struct.sv*, %struct.sv** %14, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %16, 65536
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %cond.true.4, label %cond.false.7

cond.true.4:                                      ; preds = %cond.end
  %17 = load %struct.sv**, %struct.sv*** %sp, align 8
  %18 = load %struct.sv*, %struct.sv** %17, align 8
  %sv_any5 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 0
  %19 = load i8*, i8** %sv_any5, align 8
  %20 = bitcast i8* %19 to %struct.xpviv*
  %xiv_iv6 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %20, i32 0, i32 3
  %21 = load i64, i64* %xiv_iv6, align 8
  br label %cond.end.9

cond.false.7:                                     ; preds = %cond.end
  %22 = load %struct.sv**, %struct.sv*** %sp, align 8
  %23 = load %struct.sv*, %struct.sv** %22, align 8
  %call8 = call i64 @Perl_sv_2iv(%struct.sv* %23)
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.7, %cond.true.4
  %cond10 = phi i64 [ %21, %cond.true.4 ], [ %call8, %cond.false.7 ]
  %conv11 = trunc i64 %cond10 to i32
  store i32 %conv11, i32* %pid, align 4
  %24 = load i32, i32* @PL_signals, align 4
  %and12 = and i32 %24, 1
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.9
  %25 = load i32, i32* %pid, align 4
  %26 = load i32, i32* %optype, align 4
  %call14 = call i32 @Perl_wait4pid(i32 %25, i32* %argflags, i32 %26)
  store i32 %call14, i32* %result, align 4
  br label %if.end.22

if.else:                                          ; preds = %cond.end.9
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  %27 = load i32, i32* %pid, align 4
  %28 = load i32, i32* %optype, align 4
  %call15 = call i32 @Perl_wait4pid(i32 %27, i32* %argflags, i32 %28)
  store i32 %call15, i32* %result, align 4
  %cmp = icmp eq i32 %call15, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call17 = call i32* @__errno_location()
  %29 = load i32, i32* %call17, align 4
  %cmp18 = icmp eq i32 %29, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %30 = phi i1 [ false, %while.cond ], [ %cmp18, %land.rhs ]
  br i1 %30, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %31 = load i32, i32* @PL_sig_pending, align 4
  %tobool20 = icmp ne i32 %31, 0
  br i1 %tobool20, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %while.body
  call void @Perl_despatch_signals()
  br label %if.end

if.end:                                           ; preds = %if.then.21, %while.body
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.22

if.end.22:                                        ; preds = %while.end, %if.then
  %32 = load i32, i32* %result, align 4
  %cmp23 = icmp sgt i32 %32, 0
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %if.end.22
  %33 = load i32, i32* %argflags, align 4
  br label %cond.end.27

cond.false.26:                                    ; preds = %if.end.22
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.25
  %cond28 = phi i32 [ %33, %cond.true.25 ], [ -1, %cond.false.26 ]
  store i32 %cond28, i32* @PL_statusvalue, align 4
  %34 = load i32, i32* @PL_statusvalue, align 4
  %cmp29 = icmp ne i32 %34, -1
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %cond.end.27
  %35 = load i32, i32* @PL_statusvalue, align 4
  %and32 = and i32 %35, 65535
  store i32 %and32, i32* @PL_statusvalue, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %cond.end.27
  %36 = load %struct.sv*, %struct.sv** %targ, align 8
  %37 = load i32, i32* %result, align 4
  %conv34 = sext i32 %37 to i64
  call void @Perl_sv_setiv(%struct.sv* %36, i64 %conv34)
  %38 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags35 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 2
  %39 = load i32, i32* %sv_flags35, align 4
  %and36 = and i32 %39, 16384
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.33
  %40 = load %struct.sv*, %struct.sv** %targ, align 8
  %call39 = call i32 @Perl_mg_set(%struct.sv* %40)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.33
  %41 = load %struct.sv*, %struct.sv** %targ, align 8
  %42 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv* %41, %struct.sv** %42, align 8
  store %struct.sv* %41, %struct.sv** %tmp
  %43 = load %struct.sv*, %struct.sv** %tmp
  %44 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %44, %struct.sv*** @PL_stack_sp, align 8
  %45 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %45, i32 0, i32 0
  %46 = load %struct.op*, %struct.op** %op_next, align 8
  ret %struct.op* %46
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_system() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %origmark = alloca i32, align 4
  %targ = alloca %struct.sv*, align 8
  %value = alloca i32, align 4
  %n_a = alloca i64, align 8
  %result = alloca i32, align 4
  %did_pipes = alloca i32, align 4
  %childpid = alloca i32, align 4
  %pp = alloca [2 x i32], align 4
  %tmp = alloca %struct.sv*, align 8
  %ihand = alloca void (i32)*, align 8
  %qhand = alloca void (i32)*, align 8
  %status = alloca i32, align 4
  %errkid = alloca i32, align 4
  %n = alloca i32, align 4
  %n1 = alloca i32, align 4
  %tmp122 = alloca %struct.sv*, align 8
  %really = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %origmark, align 4
  %6 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %6, i32 0, i32 3
  %7 = load i64, i64* %op_targ, align 8
  %8 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %8, i64 %7
  %9 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %9, %struct.sv** %targ, align 8
  store i32 0, i32* %did_pipes, align 4
  %10 = load i8, i8* @PL_tainting, align 1
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %11 = load i8, i8* @PL_tainting, align 1
  %tobool1 = icmp ne i8 %11, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void @Perl_taint_env()
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %if.end
  %12 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.sv*, %struct.sv** %12, i32 1
  store %struct.sv** %incdec.ptr3, %struct.sv*** %mark, align 8
  %13 = load %struct.sv**, %struct.sv*** %sp, align 8
  %cmp = icmp ule %struct.sv** %incdec.ptr3, %13
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %struct.sv**, %struct.sv*** %mark, align 8
  %15 = load %struct.sv*, %struct.sv** %14, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags, align 4
  %and = and i32 %16, 262144
  %cmp5 = icmp eq i32 %and, 262144
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %17 = load %struct.sv**, %struct.sv*** %mark, align 8
  %18 = load %struct.sv*, %struct.sv** %17, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 0
  %19 = load i8*, i8** %sv_any, align 8
  %20 = bitcast i8* %19 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %20, i32 0, i32 0
  %21 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %22 = load %struct.sv**, %struct.sv*** %mark, align 8
  %23 = load %struct.sv*, %struct.sv** %22, align 8
  %call = call i8* @Perl_sv_2pv_nolen(%struct.sv* %23)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %21, %cond.true ], [ %call, %cond.false ]
  %24 = load i8, i8* @PL_tainted, align 1
  %tobool7 = icmp ne i8 %24, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %cond.end
  br label %while.end

if.end.9:                                         ; preds = %cond.end
  br label %while.cond

while.end:                                        ; preds = %if.then.8, %while.cond
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %26 = load i32, i32* %origmark, align 4
  %idx.ext10 = sext i32 %26 to i64
  %add.ptr11 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idx.ext10
  store %struct.sv** %add.ptr11, %struct.sv*** %mark, align 8
  %27 = load i8, i8* @PL_tainting, align 1
  %tobool12 = icmp ne i8 %27, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %while.end
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %while.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  %call16 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** null)
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i32 0
  %call17 = call i32 @pipe(i32* %arraydecay)
  %cmp18 = icmp sge i32 %call17, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.15
  store i32 1, i32* %did_pipes, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.15
  br label %while.cond.22

while.cond.22:                                    ; preds = %if.end.48, %if.end.21
  %call23 = call i32 @Perl_my_fork()
  store i32 %call23, i32* %childpid, align 4
  %cmp24 = icmp eq i32 %call23, -1
  br i1 %cmp24, label %while.body.26, label %while.end.50

while.body.26:                                    ; preds = %while.cond.22
  %call27 = call i32* @__errno_location()
  %28 = load i32, i32* %call27, align 4
  %cmp28 = icmp ne i32 %28, 11
  br i1 %cmp28, label %if.then.30, label %if.end.48

if.then.30:                                       ; preds = %while.body.26
  store i32 -1, i32* %value, align 4
  %29 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %30 = load i32, i32* %origmark, align 4
  %idx.ext31 = sext i32 %30 to i64
  %add.ptr32 = getelementptr inbounds %struct.sv*, %struct.sv** %29, i64 %idx.ext31
  store %struct.sv** %add.ptr32, %struct.sv*** %sp, align 8
  %31 = load %struct.sv*, %struct.sv** %targ, align 8
  %32 = load i32, i32* %value, align 4
  %conv33 = sext i32 %32 to i64
  call void @Perl_sv_setiv(%struct.sv* %31, i64 %conv33)
  %33 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags34 = getelementptr inbounds %struct.sv, %struct.sv* %33, i32 0, i32 2
  %34 = load i32, i32* %sv_flags34, align 4
  %and35 = and i32 %34, 16384
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.then.30
  %35 = load %struct.sv*, %struct.sv** %targ, align 8
  %call38 = call i32 @Perl_mg_set(%struct.sv* %35)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.then.30
  %36 = load %struct.sv*, %struct.sv** %targ, align 8
  %37 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr40 = getelementptr inbounds %struct.sv*, %struct.sv** %37, i32 1
  store %struct.sv** %incdec.ptr40, %struct.sv*** %sp, align 8
  store %struct.sv* %36, %struct.sv** %incdec.ptr40, align 8
  store %struct.sv* %36, %struct.sv** %tmp
  %38 = load %struct.sv*, %struct.sv** %tmp
  %39 = load i32, i32* %did_pipes, align 4
  %tobool41 = icmp ne i32 %39, 0
  br i1 %tobool41, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %if.end.39
  %arrayidx43 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 0
  %40 = load i32, i32* %arrayidx43, align 4
  %call44 = call i32 @close(i32 %40)
  %arrayidx45 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 1
  %41 = load i32, i32* %arrayidx45, align 4
  %call46 = call i32 @close(i32 %41)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.42, %if.end.39
  %42 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %42, %struct.sv*** @PL_stack_sp, align 8
  %43 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %43, i32 0, i32 0
  %44 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %44, %struct.op** %retval
  br label %return

if.end.48:                                        ; preds = %while.body.26
  %call49 = call i32 @sleep(i32 5)
  br label %while.cond.22

while.end.50:                                     ; preds = %while.cond.22
  %45 = load i32, i32* %childpid, align 4
  %cmp51 = icmp sgt i32 %45, 0
  br i1 %cmp51, label %if.then.53, label %if.end.125

if.then.53:                                       ; preds = %while.end.50
  %46 = load i32, i32* %did_pipes, align 4
  %tobool57 = icmp ne i32 %46, 0
  br i1 %tobool57, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %if.then.53
  %arrayidx59 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 1
  %47 = load i32, i32* %arrayidx59, align 4
  %call60 = call i32 @close(i32 %47)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %if.then.53
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end.61
  %48 = load i32, i32* %childpid, align 4
  %call62 = call i32 @Perl_wait4pid(i32 %48, i32* %status, i32 0)
  store i32 %call62, i32* %result, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %49 = load i32, i32* %result, align 4
  %cmp63 = icmp eq i32 %49, -1
  br i1 %cmp63, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %call65 = call i32* @__errno_location()
  %50 = load i32, i32* %call65, align 4
  %cmp66 = icmp eq i32 %50, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %51 = phi i1 [ false, %do.cond ], [ %cmp66, %land.rhs ]
  br i1 %51, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %52 = load i32, i32* %result, align 4
  %cmp68 = icmp eq i32 %52, -1
  br i1 %cmp68, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %do.end
  br label %cond.end.72

cond.false.71:                                    ; preds = %do.end
  %53 = load i32, i32* %status, align 4
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.71, %cond.true.70
  %cond73 = phi i32 [ -1, %cond.true.70 ], [ %53, %cond.false.71 ]
  store i32 %cond73, i32* @PL_statusvalue, align 4
  %54 = load i32, i32* @PL_statusvalue, align 4
  %cmp74 = icmp ne i32 %54, -1
  br i1 %cmp74, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %cond.end.72
  %55 = load i32, i32* @PL_statusvalue, align 4
  %and77 = and i32 %55, 65535
  store i32 %and77, i32* @PL_statusvalue, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %cond.end.72
  call void @Perl_do_execfree()
  %56 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %57 = load i32, i32* %origmark, align 4
  %idx.ext79 = sext i32 %57 to i64
  %add.ptr80 = getelementptr inbounds %struct.sv*, %struct.sv** %56, i64 %idx.ext79
  store %struct.sv** %add.ptr80, %struct.sv*** %sp, align 8
  %58 = load i32, i32* %did_pipes, align 4
  %tobool81 = icmp ne i32 %58, 0
  br i1 %tobool81, label %if.then.82, label %if.end.114

if.then.82:                                       ; preds = %if.end.78
  store i32 0, i32* %n, align 4
  br label %while.cond.86

while.cond.86:                                    ; preds = %if.end.100, %if.then.82
  %59 = load i32, i32* %n, align 4
  %conv87 = sext i32 %59 to i64
  %cmp88 = icmp ult i64 %conv87, 4
  br i1 %cmp88, label %while.body.90, label %while.end.101

while.body.90:                                    ; preds = %while.cond.86
  %arrayidx91 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 0
  %60 = load i32, i32* %arrayidx91, align 4
  %61 = bitcast i32* %errkid to i8*
  %62 = load i32, i32* %n, align 4
  %idx.ext92 = sext i32 %62 to i64
  %add.ptr93 = getelementptr inbounds i8, i8* %61, i64 %idx.ext92
  %63 = load i32, i32* %n, align 4
  %conv94 = sext i32 %63 to i64
  %sub = sub i64 4, %conv94
  %call95 = call i64 @read(i32 %60, i8* %add.ptr93, i64 %sub)
  %conv96 = trunc i64 %call95 to i32
  store i32 %conv96, i32* %n1, align 4
  %64 = load i32, i32* %n1, align 4
  %cmp97 = icmp sle i32 %64, 0
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %while.body.90
  br label %while.end.101

if.end.100:                                       ; preds = %while.body.90
  %65 = load i32, i32* %n1, align 4
  %66 = load i32, i32* %n, align 4
  %add = add nsw i32 %66, %65
  store i32 %add, i32* %n, align 4
  br label %while.cond.86

while.end.101:                                    ; preds = %if.then.99, %while.cond.86
  %arrayidx102 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 0
  %67 = load i32, i32* %arrayidx102, align 4
  %call103 = call i32 @close(i32 %67)
  %68 = load i32, i32* %n, align 4
  %tobool104 = icmp ne i32 %68, 0
  br i1 %tobool104, label %if.then.105, label %if.end.113

if.then.105:                                      ; preds = %while.end.101
  %69 = load i32, i32* %n, align 4
  %conv106 = sext i32 %69 to i64
  %cmp107 = icmp ne i64 %conv106, 4
  br i1 %cmp107, label %if.then.109, label %if.end.111

if.then.109:                                      ; preds = %if.then.105
  %call110 = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.92, i32 0, i32 0))
  store %struct.op* %call110, %struct.op** %retval
  br label %return

if.end.111:                                       ; preds = %if.then.105
  %70 = load i32, i32* %errkid, align 4
  %call112 = call i32* @__errno_location()
  store i32 %70, i32* %call112, align 4
  store i32 -1, i32* @PL_statusvalue, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.111, %while.end.101
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.end.78
  %71 = load %struct.sv*, %struct.sv** %targ, align 8
  %72 = load i32, i32* @PL_statusvalue, align 4
  %conv115 = sext i32 %72 to i64
  call void @Perl_sv_setiv(%struct.sv* %71, i64 %conv115)
  %73 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags116 = getelementptr inbounds %struct.sv, %struct.sv* %73, i32 0, i32 2
  %74 = load i32, i32* %sv_flags116, align 4
  %and117 = and i32 %74, 16384
  %tobool118 = icmp ne i32 %and117, 0
  br i1 %tobool118, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %if.end.114
  %75 = load %struct.sv*, %struct.sv** %targ, align 8
  %call120 = call i32 @Perl_mg_set(%struct.sv* %75)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %if.end.114
  %76 = load %struct.sv*, %struct.sv** %targ, align 8
  %77 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr123 = getelementptr inbounds %struct.sv*, %struct.sv** %77, i32 1
  store %struct.sv** %incdec.ptr123, %struct.sv*** %sp, align 8
  store %struct.sv* %76, %struct.sv** %incdec.ptr123, align 8
  store %struct.sv* %76, %struct.sv** %tmp122
  %78 = load %struct.sv*, %struct.sv** %tmp122
  %79 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %79, %struct.sv*** @PL_stack_sp, align 8
  %80 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next124 = getelementptr inbounds %struct.op, %struct.op* %80, i32 0, i32 0
  %81 = load %struct.op*, %struct.op** %op_next124, align 8
  store %struct.op* %81, %struct.op** %retval
  br label %return

if.end.125:                                       ; preds = %while.end.50
  %82 = load i32, i32* %did_pipes, align 4
  %tobool126 = icmp ne i32 %82, 0
  br i1 %tobool126, label %if.then.127, label %if.end.132

if.then.127:                                      ; preds = %if.end.125
  %arrayidx128 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 0
  %83 = load i32, i32* %arrayidx128, align 4
  %call129 = call i32 @close(i32 %83)
  %arrayidx130 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 1
  %84 = load i32, i32* %arrayidx130, align 4
  %call131 = call i32 (i32, i32, ...) @fcntl(i32 %84, i32 2, i32 1)
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.127, %if.end.125
  %85 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %85, i32 0, i32 6
  %86 = load i8, i8* %op_flags, align 1
  %conv133 = zext i8 %86 to i32
  %and134 = and i32 %conv133, 64
  %tobool135 = icmp ne i32 %and134, 0
  br i1 %tobool135, label %if.then.136, label %if.else

if.then.136:                                      ; preds = %if.end.132
  %87 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr138 = getelementptr inbounds %struct.sv*, %struct.sv** %87, i32 1
  store %struct.sv** %incdec.ptr138, %struct.sv*** %mark, align 8
  %88 = load %struct.sv*, %struct.sv** %incdec.ptr138, align 8
  store %struct.sv* %88, %struct.sv** %really, align 8
  %89 = load %struct.sv*, %struct.sv** %really, align 8
  %90 = load %struct.sv**, %struct.sv*** %mark, align 8
  %91 = load %struct.sv**, %struct.sv*** %sp, align 8
  %arrayidx139 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 1
  %92 = load i32, i32* %arrayidx139, align 4
  %93 = load i32, i32* %did_pipes, align 4
  %call140 = call signext i8 @Perl_do_aexec5(%struct.sv* %89, %struct.sv** %90, %struct.sv** %91, i32 %92, i32 %93)
  %conv141 = sext i8 %call140 to i32
  store i32 %conv141, i32* %value, align 4
  br label %if.end.170

if.else:                                          ; preds = %if.end.132
  %94 = load %struct.sv**, %struct.sv*** %sp, align 8
  %95 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast142 = ptrtoint %struct.sv** %94 to i64
  %sub.ptr.rhs.cast143 = ptrtoint %struct.sv** %95 to i64
  %sub.ptr.sub144 = sub i64 %sub.ptr.lhs.cast142, %sub.ptr.rhs.cast143
  %sub.ptr.div145 = sdiv exact i64 %sub.ptr.sub144, 8
  %cmp146 = icmp ne i64 %sub.ptr.div145, 1
  br i1 %cmp146, label %if.then.148, label %if.else.152

if.then.148:                                      ; preds = %if.else
  %96 = load %struct.sv**, %struct.sv*** %mark, align 8
  %97 = load %struct.sv**, %struct.sv*** %sp, align 8
  %arrayidx149 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 1
  %98 = load i32, i32* %arrayidx149, align 4
  %99 = load i32, i32* %did_pipes, align 4
  %call150 = call signext i8 @Perl_do_aexec5(%struct.sv* null, %struct.sv** %96, %struct.sv** %97, i32 %98, i32 %99)
  %conv151 = sext i8 %call150 to i32
  store i32 %conv151, i32* %value, align 4
  br label %if.end.169

if.else.152:                                      ; preds = %if.else
  %100 = load %struct.sv**, %struct.sv*** %sp, align 8
  %101 = load %struct.sv*, %struct.sv** %100, align 8
  %call153 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %101)
  store %struct.sv* %call153, %struct.sv** @PL_Sv, align 8
  %102 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags154 = getelementptr inbounds %struct.sv, %struct.sv* %102, i32 0, i32 2
  %103 = load i32, i32* %sv_flags154, align 4
  %and155 = and i32 %103, 262144
  %cmp156 = icmp eq i32 %and155, 262144
  br i1 %cmp156, label %cond.true.158, label %cond.false.162

cond.true.158:                                    ; preds = %if.else.152
  %104 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any159 = getelementptr inbounds %struct.sv, %struct.sv* %104, i32 0, i32 0
  %105 = load i8*, i8** %sv_any159, align 8
  %106 = bitcast i8* %105 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %106, i32 0, i32 1
  %107 = load i64, i64* %xpv_cur, align 8
  store i64 %107, i64* %n_a, align 8
  %108 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any160 = getelementptr inbounds %struct.sv, %struct.sv* %108, i32 0, i32 0
  %109 = load i8*, i8** %sv_any160, align 8
  %110 = bitcast i8* %109 to %struct.xpv*
  %xpv_pv161 = getelementptr inbounds %struct.xpv, %struct.xpv* %110, i32 0, i32 0
  %111 = load i8*, i8** %xpv_pv161, align 8
  br label %cond.end.164

cond.false.162:                                   ; preds = %if.else.152
  %112 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call163 = call i8* @Perl_sv_2pv_flags(%struct.sv* %112, i64* %n_a, i32 2)
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.false.162, %cond.true.158
  %cond165 = phi i8* [ %111, %cond.true.158 ], [ %call163, %cond.false.162 ]
  %arrayidx166 = getelementptr inbounds [2 x i32], [2 x i32]* %pp, i32 0, i64 1
  %113 = load i32, i32* %arrayidx166, align 4
  %114 = load i32, i32* %did_pipes, align 4
  %call167 = call signext i8 @Perl_do_exec3(i8* %cond165, i32 %113, i32 %114)
  %conv168 = sext i8 %call167 to i32
  store i32 %conv168, i32* %value, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %cond.end.164, %if.then.148
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.then.136
  call void @_exit(i32 -1) #4
  unreachable

return:                                           ; preds = %if.end.121, %if.then.109, %if.end.47
  %115 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %115
}

declare void @Perl_taint_env() #1

declare i32 @pipe(i32*) #1

declare i32 @close(i32) #1

declare i32 @sleep(i32) #1

declare void @Perl_do_execfree() #1

declare signext i8 @Perl_do_aexec5(%struct.sv*, %struct.sv**, %struct.sv**, i32, i32) #1

declare signext i8 @Perl_do_exec3(i8*, i32, i32) #1

; Function Attrs: noreturn
declare void @_exit(i32) #3

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_exec() #0 {
entry:
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %origmark = alloca i32, align 4
  %targ = alloca %struct.sv*, align 8
  %value = alloca i32, align 4
  %n_a = alloca i64, align 8
  %really = alloca %struct.sv*, align 8
  %tmp = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %origmark, align 4
  %6 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %6, i32 0, i32 3
  %7 = load i64, i64* %op_targ, align 8
  %8 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %8, i64 %7
  %9 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %9, %struct.sv** %targ, align 8
  %10 = load i8, i8* @PL_tainting, align 1
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %11 = load i8, i8* @PL_tainting, align 1
  %tobool1 = icmp ne i8 %11, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void @Perl_taint_env()
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %if.end
  %12 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.sv*, %struct.sv** %12, i32 1
  store %struct.sv** %incdec.ptr3, %struct.sv*** %mark, align 8
  %13 = load %struct.sv**, %struct.sv*** %sp, align 8
  %cmp = icmp ule %struct.sv** %incdec.ptr3, %13
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %struct.sv**, %struct.sv*** %mark, align 8
  %15 = load %struct.sv*, %struct.sv** %14, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags, align 4
  %and = and i32 %16, 262144
  %cmp5 = icmp eq i32 %and, 262144
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %17 = load %struct.sv**, %struct.sv*** %mark, align 8
  %18 = load %struct.sv*, %struct.sv** %17, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 0
  %19 = load i8*, i8** %sv_any, align 8
  %20 = bitcast i8* %19 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %20, i32 0, i32 0
  %21 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %22 = load %struct.sv**, %struct.sv*** %mark, align 8
  %23 = load %struct.sv*, %struct.sv** %22, align 8
  %call = call i8* @Perl_sv_2pv_nolen(%struct.sv* %23)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %21, %cond.true ], [ %call, %cond.false ]
  %24 = load i8, i8* @PL_tainted, align 1
  %tobool7 = icmp ne i8 %24, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %cond.end
  br label %while.end

if.end.9:                                         ; preds = %cond.end
  br label %while.cond

while.end:                                        ; preds = %if.then.8, %while.cond
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %26 = load i32, i32* %origmark, align 4
  %idx.ext10 = sext i32 %26 to i64
  %add.ptr11 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idx.ext10
  store %struct.sv** %add.ptr11, %struct.sv*** %mark, align 8
  %27 = load i8, i8* @PL_tainting, align 1
  %tobool12 = icmp ne i8 %27, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %while.end
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %while.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  %call16 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** null)
  %28 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %28, i32 0, i32 6
  %29 = load i8, i8* %op_flags, align 1
  %conv17 = zext i8 %29 to i32
  %and18 = and i32 %conv17, 64
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.15
  %30 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr21 = getelementptr inbounds %struct.sv*, %struct.sv** %30, i32 1
  store %struct.sv** %incdec.ptr21, %struct.sv*** %mark, align 8
  %31 = load %struct.sv*, %struct.sv** %incdec.ptr21, align 8
  store %struct.sv* %31, %struct.sv** %really, align 8
  %32 = load %struct.sv*, %struct.sv** %really, align 8
  %33 = load %struct.sv**, %struct.sv*** %mark, align 8
  %34 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call22 = call signext i8 @Perl_do_aexec(%struct.sv* %32, %struct.sv** %33, %struct.sv** %34)
  %conv23 = sext i8 %call22 to i32
  store i32 %conv23, i32* %value, align 4
  br label %if.end.50

if.else:                                          ; preds = %if.end.15
  %35 = load %struct.sv**, %struct.sv*** %sp, align 8
  %36 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast24 = ptrtoint %struct.sv** %35 to i64
  %sub.ptr.rhs.cast25 = ptrtoint %struct.sv** %36 to i64
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25
  %sub.ptr.div27 = sdiv exact i64 %sub.ptr.sub26, 8
  %cmp28 = icmp ne i64 %sub.ptr.div27, 1
  br i1 %cmp28, label %if.then.30, label %if.else.33

if.then.30:                                       ; preds = %if.else
  %37 = load %struct.sv**, %struct.sv*** %mark, align 8
  %38 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call31 = call signext i8 @Perl_do_aexec(%struct.sv* null, %struct.sv** %37, %struct.sv** %38)
  %conv32 = sext i8 %call31 to i32
  store i32 %conv32, i32* %value, align 4
  br label %if.end.49

if.else.33:                                       ; preds = %if.else
  %39 = load %struct.sv**, %struct.sv*** %sp, align 8
  %40 = load %struct.sv*, %struct.sv** %39, align 8
  %call34 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %40)
  store %struct.sv* %call34, %struct.sv** @PL_Sv, align 8
  %41 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags35 = getelementptr inbounds %struct.sv, %struct.sv* %41, i32 0, i32 2
  %42 = load i32, i32* %sv_flags35, align 4
  %and36 = and i32 %42, 262144
  %cmp37 = icmp eq i32 %and36, 262144
  br i1 %cmp37, label %cond.true.39, label %cond.false.43

cond.true.39:                                     ; preds = %if.else.33
  %43 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any40 = getelementptr inbounds %struct.sv, %struct.sv* %43, i32 0, i32 0
  %44 = load i8*, i8** %sv_any40, align 8
  %45 = bitcast i8* %44 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %45, i32 0, i32 1
  %46 = load i64, i64* %xpv_cur, align 8
  store i64 %46, i64* %n_a, align 8
  %47 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any41 = getelementptr inbounds %struct.sv, %struct.sv* %47, i32 0, i32 0
  %48 = load i8*, i8** %sv_any41, align 8
  %49 = bitcast i8* %48 to %struct.xpv*
  %xpv_pv42 = getelementptr inbounds %struct.xpv, %struct.xpv* %49, i32 0, i32 0
  %50 = load i8*, i8** %xpv_pv42, align 8
  br label %cond.end.45

cond.false.43:                                    ; preds = %if.else.33
  %51 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call44 = call i8* @Perl_sv_2pv_flags(%struct.sv* %51, i64* %n_a, i32 2)
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.43, %cond.true.39
  %cond46 = phi i8* [ %50, %cond.true.39 ], [ %call44, %cond.false.43 ]
  %call47 = call signext i8 @Perl_do_exec(i8* %cond46)
  %conv48 = sext i8 %call47 to i32
  store i32 %conv48, i32* %value, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %cond.end.45, %if.then.30
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.20
  %52 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %53 = load i32, i32* %origmark, align 4
  %idx.ext51 = sext i32 %53 to i64
  %add.ptr52 = getelementptr inbounds %struct.sv*, %struct.sv** %52, i64 %idx.ext51
  store %struct.sv** %add.ptr52, %struct.sv*** %sp, align 8
  %54 = load %struct.sv*, %struct.sv** %targ, align 8
  %55 = load i32, i32* %value, align 4
  %conv53 = sext i32 %55 to i64
  call void @Perl_sv_setiv(%struct.sv* %54, i64 %conv53)
  %56 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags54 = getelementptr inbounds %struct.sv, %struct.sv* %56, i32 0, i32 2
  %57 = load i32, i32* %sv_flags54, align 4
  %and55 = and i32 %57, 16384
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.50
  %58 = load %struct.sv*, %struct.sv** %targ, align 8
  %call58 = call i32 @Perl_mg_set(%struct.sv* %58)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.50
  %59 = load %struct.sv*, %struct.sv** %targ, align 8
  %60 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr60 = getelementptr inbounds %struct.sv*, %struct.sv** %60, i32 1
  store %struct.sv** %incdec.ptr60, %struct.sv*** %sp, align 8
  store %struct.sv* %59, %struct.sv** %incdec.ptr60, align 8
  store %struct.sv* %59, %struct.sv** %tmp
  %61 = load %struct.sv*, %struct.sv** %tmp
  %62 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %62, %struct.sv*** @PL_stack_sp, align 8
  %63 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %63, i32 0, i32 0
  %64 = load %struct.op*, %struct.op** %op_next, align 8
  ret %struct.op* %64
}

declare signext i8 @Perl_do_aexec(%struct.sv*, %struct.sv**, %struct.sv**) #1

declare signext i8 @Perl_do_exec(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_kill() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_getppid() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_getpgrp() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_setpgrp() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_getpriority() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_setpriority() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.99, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_time() #0 {
entry:
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %tmp = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 3
  %2 = load i64, i64* %op_targ, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %4, %struct.sv** %targ, align 8
  %5 = load %struct.sv*, %struct.sv** %targ, align 8
  %call = call i64 @time(i64* null)
  call void @Perl_sv_setiv(%struct.sv* %5, i64 %call)
  %6 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 2
  %7 = load i32, i32* %sv_flags, align 4
  %and = and i32 %7, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.sv*, %struct.sv** %targ, align 8
  %call1 = call i32 @Perl_mg_set(%struct.sv* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %9 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp = icmp slt i64 %sub.ptr.div, 1
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call3 = call %struct.sv** @Perl_stack_grow(%struct.sv** %11, %struct.sv** %12, i32 1)
  store %struct.sv** %call3, %struct.sv*** %sp, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %13 = load %struct.sv*, %struct.sv** %targ, align 8
  %14 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %14, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* %13, %struct.sv** %incdec.ptr, align 8
  store %struct.sv* %13, %struct.sv** %tmp
  %15 = load %struct.sv*, %struct.sv** %tmp
  %16 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %16, %struct.sv*** @PL_stack_sp, align 8
  %17 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %17, i32 0, i32 0
  %18 = load %struct.op*, %struct.op** %op_next, align 8
  ret %struct.op* %18
}

declare i64 @time(i64*) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_tms() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.100, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_localtime() #0 {
entry:
  %call = call %struct.op* @Perl_pp_gmtime()
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_gmtime() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %when = alloca i64, align 8
  %tmbuf = alloca %struct.tm*, align 8
  %tsv = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 7
  %2 = load i8, i8* %op_private, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 15
  %cmp = icmp slt i32 %and, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i64 @time(i64* %when)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %3, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %4 = load %struct.sv*, %struct.sv** %3, align 8
  store %struct.sv* %4, %struct.sv** @PL_Sv, align 8
  %5 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 2
  %6 = load i32, i32* %sv_flags, align 4
  %and2 = and i32 %6, 65536
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %7 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 0
  %8 = load i8*, i8** %sv_any, align 8
  %9 = bitcast i8* %8 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %9, i32 0, i32 3
  %10 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %11 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call3 = call i64 @Perl_sv_2iv(%struct.sv* %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ %call3, %cond.false ]
  store i64 %cond, i64* %when, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %12 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %12, i32 0, i32 4
  %13 = load i16, i16* %op_type, align 2
  %conv4 = zext i16 %13 to i32
  %cmp5 = icmp eq i32 %conv4, 294
  br i1 %cmp5, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.end
  %call8 = call %struct.tm* @localtime(i64* %when)
  store %struct.tm* %call8, %struct.tm** %tmbuf, align 8
  br label %if.end.11

if.else.9:                                        ; preds = %if.end
  %call10 = call %struct.tm* @gmtime(i64* %when)
  store %struct.tm* %call10, %struct.tm** %tmbuf, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.9, %if.then.7
  %14 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %14, i32 0, i32 6
  %15 = load i8, i8* %op_flags, align 1
  %conv12 = zext i8 %15 to i32
  %and13 = and i32 %conv12, 3
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %cond.true.15, label %cond.false.22

cond.true.15:                                     ; preds = %if.end.11
  %16 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags16 = getelementptr inbounds %struct.op, %struct.op* %16, i32 0, i32 6
  %17 = load i8, i8* %op_flags16, align 1
  %conv17 = zext i8 %17 to i32
  %and18 = and i32 %conv17, 3
  %cmp19 = icmp eq i32 %and18, 3
  %cond21 = select i1 %cmp19, i32 1, i32 0
  br label %cond.end.24

cond.false.22:                                    ; preds = %if.end.11
  %call23 = call i32 @Perl_dowantarray()
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.22, %cond.true.15
  %cond25 = phi i32 [ %cond21, %cond.true.15 ], [ %call23, %cond.false.22 ]
  %cmp26 = icmp ne i32 %cond25, 1
  br i1 %cmp26, label %if.then.28, label %if.else.48

if.then.28:                                       ; preds = %cond.end.24
  %18 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %19 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %18 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp29 = icmp slt i64 %sub.ptr.div, 1
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.then.28
  %20 = load %struct.sv**, %struct.sv*** %sp, align 8
  %21 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call32 = call %struct.sv** @Perl_stack_grow(%struct.sv** %20, %struct.sv** %21, i32 1)
  store %struct.sv** %call32, %struct.sv*** %sp, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.then.28
  %22 = load i32, i32* @PL_tmps_ix, align 4
  %add = add nsw i32 %22, 1
  %23 = load i32, i32* @PL_tmps_max, align 4
  %cmp34 = icmp sge i32 %add, %23
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.33
  call void @Perl_tmps_grow(i32 1)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.33
  %24 = load %struct.tm*, %struct.tm** %tmbuf, align 8
  %tobool38 = icmp ne %struct.tm* %24, null
  br i1 %tobool38, label %if.end.41, label %if.then.39

if.then.39:                                       ; preds = %if.end.37
  %25 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr40 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i32 1
  store %struct.sv** %incdec.ptr40, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr40, align 8
  %26 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %26, %struct.sv*** @PL_stack_sp, align 8
  %27 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %27, i32 0, i32 0
  %28 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %28, %struct.op** %retval
  br label %return

if.end.41:                                        ; preds = %if.end.37
  %29 = load %struct.tm*, %struct.tm** %tmbuf, align 8
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 6
  %30 = load i32, i32* %tm_wday, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx = getelementptr inbounds [7 x i8*], [7 x i8*]* @Perl_pp_gmtime.dayname, i32 0, i64 %idxprom
  %31 = load i8*, i8** %arrayidx, align 8
  %32 = load %struct.tm*, %struct.tm** %tmbuf, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 4
  %33 = load i32, i32* %tm_mon, align 4
  %idxprom42 = sext i32 %33 to i64
  %arrayidx43 = getelementptr inbounds [12 x i8*], [12 x i8*]* @Perl_pp_gmtime.monname, i32 0, i64 %idxprom42
  %34 = load i8*, i8** %arrayidx43, align 8
  %35 = load %struct.tm*, %struct.tm** %tmbuf, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 3
  %36 = load i32, i32* %tm_mday, align 4
  %37 = load %struct.tm*, %struct.tm** %tmbuf, align 8
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 2
  %38 = load i32, i32* %tm_hour, align 4
  %39 = load %struct.tm*, %struct.tm** %tmbuf, align 8
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %39, i32 0, i32 1
  %40 = load i32, i32* %tm_min, align 4
  %41 = load %struct.tm*, %struct.tm** %tmbuf, align 8
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %41, i32 0, i32 0
  %42 = load i32, i32* %tm_sec, align 4
  %43 = load %struct.tm*, %struct.tm** %tmbuf, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 5
  %44 = load i32, i32* %tm_year, align 4
  %add44 = add nsw i32 %44, 1900
  %call45 = call %struct.sv* (i8*, ...) @Perl_newSVpvf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.120, i32 0, i32 0), i8* %31, i8* %34, i32 %36, i32 %38, i32 %40, i32 %42, i32 %add44)
  store %struct.sv* %call45, %struct.sv** %tsv, align 8
  %45 = load %struct.sv*, %struct.sv** %tsv, align 8
  %call46 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %45)
  %46 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr47 = getelementptr inbounds %struct.sv*, %struct.sv** %46, i32 1
  store %struct.sv** %incdec.ptr47, %struct.sv*** %sp, align 8
  store %struct.sv* %call46, %struct.sv** %incdec.ptr47, align 8
  br label %if.end.109

if.else.48:                                       ; preds = %cond.end.24
  %47 = load %struct.tm*, %struct.tm** %tmbuf, align 8
  %tobool49 = icmp ne %struct.tm* %47, null
  br i1 %tobool49, label %if.then.50, label %if.end.108

if.then.50:                                       ; preds = %if.else.48
  %48 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %49 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast51 = ptrtoint %struct.sv** %48 to i64
  %sub.ptr.rhs.cast52 = ptrtoint %struct.sv** %49 to i64
  %sub.ptr.sub53 = sub i64 %sub.ptr.lhs.cast51, %sub.ptr.rhs.cast52
  %sub.ptr.div54 = sdiv exact i64 %sub.ptr.sub53, 8
  %cmp55 = icmp slt i64 %sub.ptr.div54, 9
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.then.50
  %50 = load %struct.sv**, %struct.sv*** %sp, align 8
  %51 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call58 = call %struct.sv** @Perl_stack_grow(%struct.sv** %50, %struct.sv** %51, i32 9)
  store %struct.sv** %call58, %struct.sv*** %sp, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.then.50
  %52 = load i32, i32* @PL_tmps_ix, align 4
  %add60 = add nsw i32 %52, 9
  %53 = load i32, i32* @PL_tmps_max, align 4
  %cmp61 = icmp sge i32 %add60, %53
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.59
  call void @Perl_tmps_grow(i32 9)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.end.59
  %54 = load %struct.tm*, %struct.tm** %tmbuf, align 8
  %tm_sec65 = getelementptr inbounds %struct.tm, %struct.tm* %54, i32 0, i32 0
  %55 = load i32, i32* %tm_sec65, align 4
  %conv66 = sext i32 %55 to i64
  %call67 = call %struct.sv* @Perl_newSViv(i64 %conv66)
  %call68 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call67)
  %56 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr69 = getelementptr inbounds %struct.sv*, %struct.sv** %56, i32 1
  store %struct.sv** %incdec.ptr69, %struct.sv*** %sp, align 8
  store %struct.sv* %call68, %struct.sv** %incdec.ptr69, align 8
  %57 = load %struct.tm*, %struct.tm** %tmbuf, align 8
  %tm_min70 = getelementptr inbounds %struct.tm, %struct.tm* %57, i32 0, i32 1
  %58 = load i32, i32* %tm_min70, align 4
  %conv71 = sext i32 %58 to i64
  %call72 = call %struct.sv* @Perl_newSViv(i64 %conv71)
  %call73 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call72)
  %59 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr74 = getelementptr inbounds %struct.sv*, %struct.sv** %59, i32 1
  store %struct.sv** %incdec.ptr74, %struct.sv*** %sp, align 8
  store %struct.sv* %call73, %struct.sv** %incdec.ptr74, align 8
  %60 = load %struct.tm*, %struct.tm** %tmbuf, align 8
  %tm_hour75 = getelementptr inbounds %struct.tm, %struct.tm* %60, i32 0, i32 2
  %61 = load i32, i32* %tm_hour75, align 4
  %conv76 = sext i32 %61 to i64
  %call77 = call %struct.sv* @Perl_newSViv(i64 %conv76)
  %call78 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call77)
  %62 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr79 = getelementptr inbounds %struct.sv*, %struct.sv** %62, i32 1
  store %struct.sv** %incdec.ptr79, %struct.sv*** %sp, align 8
  store %struct.sv* %call78, %struct.sv** %incdec.ptr79, align 8
  %63 = load %struct.tm*, %struct.tm** %tmbuf, align 8
  %tm_mday80 = getelementptr inbounds %struct.tm, %struct.tm* %63, i32 0, i32 3
  %64 = load i32, i32* %tm_mday80, align 4
  %conv81 = sext i32 %64 to i64
  %call82 = call %struct.sv* @Perl_newSViv(i64 %conv81)
  %call83 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call82)
  %65 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr84 = getelementptr inbounds %struct.sv*, %struct.sv** %65, i32 1
  store %struct.sv** %incdec.ptr84, %struct.sv*** %sp, align 8
  store %struct.sv* %call83, %struct.sv** %incdec.ptr84, align 8
  %66 = load %struct.tm*, %struct.tm** %tmbuf, align 8
  %tm_mon85 = getelementptr inbounds %struct.tm, %struct.tm* %66, i32 0, i32 4
  %67 = load i32, i32* %tm_mon85, align 4
  %conv86 = sext i32 %67 to i64
  %call87 = call %struct.sv* @Perl_newSViv(i64 %conv86)
  %call88 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call87)
  %68 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr89 = getelementptr inbounds %struct.sv*, %struct.sv** %68, i32 1
  store %struct.sv** %incdec.ptr89, %struct.sv*** %sp, align 8
  store %struct.sv* %call88, %struct.sv** %incdec.ptr89, align 8
  %69 = load %struct.tm*, %struct.tm** %tmbuf, align 8
  %tm_year90 = getelementptr inbounds %struct.tm, %struct.tm* %69, i32 0, i32 5
  %70 = load i32, i32* %tm_year90, align 4
  %conv91 = sext i32 %70 to i64
  %call92 = call %struct.sv* @Perl_newSViv(i64 %conv91)
  %call93 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call92)
  %71 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr94 = getelementptr inbounds %struct.sv*, %struct.sv** %71, i32 1
  store %struct.sv** %incdec.ptr94, %struct.sv*** %sp, align 8
  store %struct.sv* %call93, %struct.sv** %incdec.ptr94, align 8
  %72 = load %struct.tm*, %struct.tm** %tmbuf, align 8
  %tm_wday95 = getelementptr inbounds %struct.tm, %struct.tm* %72, i32 0, i32 6
  %73 = load i32, i32* %tm_wday95, align 4
  %conv96 = sext i32 %73 to i64
  %call97 = call %struct.sv* @Perl_newSViv(i64 %conv96)
  %call98 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call97)
  %74 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr99 = getelementptr inbounds %struct.sv*, %struct.sv** %74, i32 1
  store %struct.sv** %incdec.ptr99, %struct.sv*** %sp, align 8
  store %struct.sv* %call98, %struct.sv** %incdec.ptr99, align 8
  %75 = load %struct.tm*, %struct.tm** %tmbuf, align 8
  %tm_yday = getelementptr inbounds %struct.tm, %struct.tm* %75, i32 0, i32 7
  %76 = load i32, i32* %tm_yday, align 4
  %conv100 = sext i32 %76 to i64
  %call101 = call %struct.sv* @Perl_newSViv(i64 %conv100)
  %call102 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call101)
  %77 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr103 = getelementptr inbounds %struct.sv*, %struct.sv** %77, i32 1
  store %struct.sv** %incdec.ptr103, %struct.sv*** %sp, align 8
  store %struct.sv* %call102, %struct.sv** %incdec.ptr103, align 8
  %78 = load %struct.tm*, %struct.tm** %tmbuf, align 8
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %78, i32 0, i32 8
  %79 = load i32, i32* %tm_isdst, align 4
  %conv104 = sext i32 %79 to i64
  %call105 = call %struct.sv* @Perl_newSViv(i64 %conv104)
  %call106 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call105)
  %80 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr107 = getelementptr inbounds %struct.sv*, %struct.sv** %80, i32 1
  store %struct.sv** %incdec.ptr107, %struct.sv*** %sp, align 8
  store %struct.sv* %call106, %struct.sv** %incdec.ptr107, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.64, %if.else.48
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.41
  %81 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %81, %struct.sv*** @PL_stack_sp, align 8
  %82 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next110 = getelementptr inbounds %struct.op, %struct.op* %82, i32 0, i32 0
  %83 = load %struct.op*, %struct.op** %op_next110, align 8
  store %struct.op* %83, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.end.109, %if.then.39
  %84 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %84
}

declare %struct.tm* @localtime(i64*) #1

declare %struct.tm* @gmtime(i64*) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_alarm() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.121, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_sleep() #0 {
entry:
  %sp = alloca %struct.sv**, align 8
  %targ = alloca %struct.sv*, align 8
  %duration = alloca i32, align 4
  %lasttime = alloca i64, align 8
  %when = alloca i64, align 8
  %tmp = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %1, i32 0, i32 3
  %2 = load i64, i64* %op_targ, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %4, %struct.sv** %targ, align 8
  %call = call i64 @time(i64* %lasttime)
  %5 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %5, i32 0, i32 7
  %6 = load i8, i8* %op_private, align 1
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 15
  %cmp = icmp slt i32 %and, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i32 @sleep(i32 2147450879)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %7, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %8 = load %struct.sv*, %struct.sv** %7, align 8
  store %struct.sv* %8, %struct.sv** @PL_Sv, align 8
  %9 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 2
  %10 = load i32, i32* %sv_flags, align 4
  %and3 = and i32 %10, 65536
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %11 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 0
  %12 = load i8*, i8** %sv_any, align 8
  %13 = bitcast i8* %12 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %13, i32 0, i32 3
  %14 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %15 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call4 = call i64 @Perl_sv_2iv(%struct.sv* %15)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %call4, %cond.false ]
  %conv5 = trunc i64 %cond to i32
  store i32 %conv5, i32* %duration, align 4
  %16 = load i32, i32* %duration, align 4
  %call6 = call i32 @sleep(i32 %16)
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %call7 = call i64 @time(i64* %when)
  %17 = load %struct.sv*, %struct.sv** %targ, align 8
  %18 = load i64, i64* %when, align 8
  %19 = load i64, i64* %lasttime, align 8
  %sub = sub nsw i64 %18, %19
  call void @Perl_sv_setiv(%struct.sv* %17, i64 %sub)
  %20 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags8 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 2
  %21 = load i32, i32* %sv_flags8, align 4
  %and9 = and i32 %21, 16384
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %22 = load %struct.sv*, %struct.sv** %targ, align 8
  %call12 = call i32 @Perl_mg_set(%struct.sv* %22)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end
  %23 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %24 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %23 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp14 = icmp slt i64 %sub.ptr.div, 1
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.13
  %25 = load %struct.sv**, %struct.sv*** %sp, align 8
  %26 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call17 = call %struct.sv** @Perl_stack_grow(%struct.sv** %25, %struct.sv** %26, i32 1)
  store %struct.sv** %call17, %struct.sv*** %sp, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.13
  %27 = load %struct.sv*, %struct.sv** %targ, align 8
  %28 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr19 = getelementptr inbounds %struct.sv*, %struct.sv** %28, i32 1
  store %struct.sv** %incdec.ptr19, %struct.sv*** %sp, align 8
  store %struct.sv* %27, %struct.sv** %incdec.ptr19, align 8
  store %struct.sv* %27, %struct.sv** %tmp
  %29 = load %struct.sv*, %struct.sv** %tmp
  %30 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %30, %struct.sv*** @PL_stack_sp, align 8
  %31 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %31, i32 0, i32 0
  %32 = load %struct.op*, %struct.op** %op_next, align 8
  ret %struct.op* %32
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_shmget() #0 {
entry:
  %call = call %struct.op* @Perl_pp_semget()
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_semget() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.122, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_shmctl() #0 {
entry:
  %call = call %struct.op* @Perl_pp_semctl()
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_semctl() #0 {
entry:
  %call = call %struct.op* @Perl_pp_semget()
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_shmread() #0 {
entry:
  %call = call %struct.op* @Perl_pp_shmwrite()
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_shmwrite() #0 {
entry:
  %call = call %struct.op* @Perl_pp_semget()
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_msgget() #0 {
entry:
  %call = call %struct.op* @Perl_pp_semget()
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_msgctl() #0 {
entry:
  %call = call %struct.op* @Perl_pp_semctl()
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_msgsnd() #0 {
entry:
  %call = call %struct.op* @Perl_pp_semget()
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_msgrcv() #0 {
entry:
  %call = call %struct.op* @Perl_pp_semget()
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_semop() #0 {
entry:
  %call = call %struct.op* @Perl_pp_semget()
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ghbyname() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.123, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ghbyaddr() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.124, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ghostent() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.125, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_gnbyname() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.126, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_gnbyaddr() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.127, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_gnetent() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_gpbyname() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.129, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_gpbynumber() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.130, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_gprotoent() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.131, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_gsbyname() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.132, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_gsbyport() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.133, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_gservent() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.134, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_shostent() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.135, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_snetent() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.136, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_sprotoent() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.137, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_sservent() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.138, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ehostent() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.139, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_enetent() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.140, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_eprotoent() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.141, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_eservent() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_sock_func, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.142, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_gpwnam() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.143, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_gpwuid() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.144, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_gpwent() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.145, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_spwent() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.146, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_epwent() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.147, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ggrnam() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.148, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ggrgid() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.149, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_ggrent() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.150, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_sgrent() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.151, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_egrent() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.152, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_getlogin() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.153, i32 0, i32 0))
  ret %struct.op* %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_syscall() #0 {
entry:
  %call = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_func, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.154, i32 0, i32 0))
  ret %struct.op* %call
}

declare void @Perl_save_int(i32*) #1

declare void @Perl_push_return(%struct.op*) #1

declare i32 @Perl_cxinc() #1

declare void @Perl_savestack_grow() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
