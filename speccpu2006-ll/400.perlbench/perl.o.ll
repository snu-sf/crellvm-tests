; ModuleID = 'perl.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interpreter = type { i8 }
%struct.sv = type { i8*, i32, i32 }
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
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
%struct.jmpenv = type { [1 x %struct.__jmp_buf_tag], %struct.jmpenv*, i32, i8 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.perl_debug_pad = type { [3 x %struct.sv] }
%struct.exitlistentry = type { void (i8*)*, i8* }
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.context = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }
%struct.xpv = type { i8*, i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.PerlIO_list_s = type opaque
%struct.re_scream_pos_data_s = type opaque
%struct.xpviv = type { i8*, i64, i64, i64 }
%struct.xpvnv = type { i8*, i64, i64, i64, double }
%struct.xpvmg = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv* }
%struct.logop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op* }
%struct.unop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op* }
%struct.block_eval = type { i32, i32, %struct.sv*, %struct.op*, %struct.sv*, %struct.cv* }

@PL_curinterp = external global %struct.interpreter*, align 8
@PL_perl_destruct_level = external global i32, align 4
@PL_linestr = external global %struct.sv*, align 8
@PL_compiling = external global %struct.cop, align 8
@PL_curcop = external global %struct.cop*, align 8
@PL_sv_undef = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@PL_No = external global i8*, align 8
@PL_sv_yes = external global %struct.sv, align 8
@PL_Yes = external global i8*, align 8
@PL_sv_placeholder = external global %struct.sv, align 8
@PL_sighandlerp = external global void (i32)*, align 8
@PL_pidstatus = external global %struct.hv*, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PL_rs = external global %struct.sv*, align 8
@PL_lex_state = external global i32, align 4
@PL_start_env = external global %struct.jmpenv, align 8
@PL_top_env = external global %struct.jmpenv*, align 8
@PL_statusvalue = external global i32, align 4
@PL_patchlevel = external global %struct.sv*, align 8
@local_patches = internal global [2 x i8*] zeroinitializer, align 16
@PL_localpatches = external global i8**, align 8
@PL_fdpid = external global %struct.av*, align 8
@PL_modglobal = external global %struct.hv*, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_errors = external global %struct.sv*, align 8
@PL_debug_pad = external global %struct.perl_debug_pad, align 8
@PL_strtab = external global %struct.hv*, align 8
@environ = external global i8**, align 8
@PL_origenviron = external global i8**, align 8
@PL_clocktick = external global i64, align 8
@PL_stashcache = external global %struct.hv*, align 8
@PL_exit_flags = external global i8, align 1
@PL_endav = external global %struct.av*, align 8
@PL_minus_c = external global i8, align 1
@PL_scopestack_ix = external global i32, align 4
@PL_tmps_ix = external global i32, align 4
@PL_tmps_floor = external global i32, align 4
@PL_threadhook = external global i32 ()*, align 8
@PL_main_root = external global %struct.op*, align 8
@PL_main_cv = external global %struct.cv*, align 8
@PL_comppad = external global %struct.av*, align 8
@PL_curpad = external global %struct.sv**, align 8
@PL_main_start = external global %struct.op*, align 8
@PL_dirty = external global i8, align 1
@PL_sv_objcount = external global i32, align 4
@PL_warnhook = external global %struct.sv*, align 8
@PL_diehook = external global %struct.sv*, align 8
@PL_exitlistlen = external global i32, align 4
@PL_exitlist = external global %struct.exitlistentry*, align 8
@PL_use_safe_putenv = external global i32, align 4
@PL_rsfp = external global %struct._PerlIO**, align 8
@PL_rsfp_filters = external global %struct.av*, align 8
@PL_preprocess = external global i8, align 1
@PL_minus_n = external global i8, align 1
@PL_minus_p = external global i8, align 1
@PL_minus_l = external global i8, align 1
@PL_minus_a = external global i8, align 1
@PL_minus_F = external global i8, align 1
@PL_doswitches = external global i8, align 1
@PL_dowarn = external global i8, align 1
@PL_doextract = external global i8, align 1
@PL_sawampersand = external global i8, align 1
@PL_unsafe = external global i8, align 1
@PL_inplace = external global i8*, align 8
@PL_e_script = external global %struct.sv*, align 8
@PL_perldb = external global i32, align 4
@PL_ofs_sv = external global %struct.sv*, align 8
@PL_ors_sv = external global %struct.sv*, align 8
@PL_multiline = external global i32, align 4
@PL_osname = external global i8*, align 8
@PL_statname = external global %struct.sv*, align 8
@PL_statgv = external global %struct.gv*, align 8
@PL_lastscream = external global %struct.sv*, align 8
@PL_screamfirst = external global i32*, align 8
@PL_screamnext = external global i32*, align 8
@PL_efloatbuf = external global i8*, align 8
@PL_efloatsize = external global i64, align 8
@PL_beginav = external global %struct.av*, align 8
@PL_beginav_save = external global %struct.av*, align 8
@PL_checkav = external global %struct.av*, align 8
@PL_checkav_save = external global %struct.av*, align 8
@PL_initav = external global %struct.av*, align 8
@PL_envgv = external global %struct.gv*, align 8
@PL_incgv = external global %struct.gv*, align 8
@PL_hintgv = external global %struct.gv*, align 8
@PL_errgv = external global %struct.gv*, align 8
@PL_argvgv = external global %struct.gv*, align 8
@PL_argvoutgv = external global %struct.gv*, align 8
@PL_stdingv = external global %struct.gv*, align 8
@PL_stderrgv = external global %struct.gv*, align 8
@PL_last_in_gv = external global %struct.gv*, align 8
@PL_replgv = external global %struct.gv*, align 8
@PL_DBgv = external global %struct.gv*, align 8
@PL_DBline = external global %struct.gv*, align 8
@PL_DBsub = external global %struct.gv*, align 8
@PL_DBsingle = external global %struct.sv*, align 8
@PL_DBtrace = external global %struct.sv*, align 8
@PL_DBsignal = external global %struct.sv*, align 8
@PL_DBcv = external global %struct.cv*, align 8
@PL_dbargs = external global %struct.av*, align 8
@PL_debstash = external global %struct.hv*, align 8
@PL_argvout_stack = external global %struct.av*, align 8
@PL_preambleav = external global %struct.av*, align 8
@PL_subname = external global %struct.sv*, align 8
@PL_toptarget = external global %struct.sv*, align 8
@PL_bodytarget = external global %struct.sv*, align 8
@PL_formtarget = external global %struct.sv*, align 8
@PL_utf8_alnum = external global %struct.sv*, align 8
@PL_utf8_alnumc = external global %struct.sv*, align 8
@PL_utf8_ascii = external global %struct.sv*, align 8
@PL_utf8_alpha = external global %struct.sv*, align 8
@PL_utf8_space = external global %struct.sv*, align 8
@PL_utf8_cntrl = external global %struct.sv*, align 8
@PL_utf8_graph = external global %struct.sv*, align 8
@PL_utf8_digit = external global %struct.sv*, align 8
@PL_utf8_upper = external global %struct.sv*, align 8
@PL_utf8_lower = external global %struct.sv*, align 8
@PL_utf8_print = external global %struct.sv*, align 8
@PL_utf8_punct = external global %struct.sv*, align 8
@PL_utf8_xdigit = external global %struct.sv*, align 8
@PL_utf8_mark = external global %struct.sv*, align 8
@PL_utf8_toupper = external global %struct.sv*, align 8
@PL_utf8_totitle = external global %struct.sv*, align 8
@PL_utf8_tolower = external global %struct.sv*, align 8
@PL_utf8_tofold = external global %struct.sv*, align 8
@PL_utf8_idstart = external global %struct.sv*, align 8
@PL_utf8_idcont = external global %struct.sv*, align 8
@PL_defstash = external global %struct.hv*, align 8
@PL_curstname = external global %struct.sv*, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"Unbalanced scopes: %ld more ENTERs than LEAVEs\0A\00", align 1
@PL_savestack_ix = external global i32, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Unbalanced saves: %ld more saves than restores\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Unbalanced tmps: %ld more allocs than frees\0A\00", align 1
@PL_curstackinfo = external global %struct.stackinfo*, align 8
@.str.5 = private unnamed_addr constant [47 x i8] c"Unbalanced context: %ld more PUSHes than POPs\0A\00", align 1
@PL_sv_count = external global i32, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"Unbalanced string table refcount: (%d) for \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Scalars leaked: %ld\0A\00", align 1
@PL_origfilename = external global i8*, align 8
@PL_reg_start_tmp = external global i8**, align 8
@PL_reg_start_tmpl = external global i32, align 4
@PL_reg_curpm = external global %struct.pmop*, align 8
@PL_reg_poscache = external global i8*, align 8
@PL_op_mask = external global i8*, align 8
@PL_psig_ptr = external global %struct.sv**, align 8
@PL_psig_name = external global %struct.sv**, align 8
@PL_bitcount = external global i8*, align 8
@PL_psig_pend = external global i32*, align 8
@PL_formfeed = external global %struct.sv*, align 8
@PL_ofmt = external global i8*, align 8
@PL_tainting = external global i8, align 1
@PL_taint_warn = external global i8, align 1
@PL_hints = external global i32, align 4
@PL_debug = external global i32, align 4
@PL_mess_sv = external global %struct.sv*, align 8
@PL_rehash_seed_set = external global i8, align 1
@PL_rehash_seed = external global i64, align 8
@PL_origargc = external global i32, align 4
@PL_origargv = external global i8**, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"NoNe  SuCh\00", align 1
@PL_origalen = external global i32, align 4
@PL_do_undump = external global i8, align 1
@PL_basetime = external global i64, align 8
@PL_curstash = external global %struct.hv*, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"panic: top_env\0A\00", align 1
@PL_restartop = external global %struct.op*, align 8
@PL_curstack = external global %struct.av*, align 8
@PL_mainstack = external global %struct.av*, align 8
@PL_stack_sp = external global %struct.sv**, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"panic: POPSTACK\0A\00", align 1
@PL_stack_base = external global %struct.sv**, align 8
@PL_stack_max = external global %struct.sv**, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"panic: restartop\0A\00", align 1
@PL_markstack_ptr = external global i32*, align 8
@PL_markstack_max = external global i32*, align 8
@PL_op = external global %struct.op*, align 8
@PL_ppaddr = external global [0 x %struct.op* ()*], align 8
@PL_markstack = external global i32*, align 8
@PL_retstack_ix = external global i32, align 4
@PL_curpm = external global %struct.pmop*, align 8
@PL_in_eval = external global i32, align 4
@PL_eval_root = external global %struct.op*, align 8
@.str.12 = private unnamed_addr constant [21 x i8] c"Callback called exit\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"eval_sv()\00", align 1
@PL_Xpv = external global %struct.xpv*, align 8
@PL_Sv = external global %struct.sv*, align 8
@.str.14 = private unnamed_addr constant [10 x i8] c"require '\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@PL_unicode = external global i32, align 4
@PL_splitstr = external global i8*, align 8
@.str.17 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"PERL5DB_THREADED\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"use Devel::\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c" split(/,/,q{\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"})\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"PERL5DB\00", align 1
@PL_na = external global i64, align 8
@.str.24 = private unnamed_addr constant [70 x i8] c"Recompile perl with -DDEBUGGING to use -D switch (did you mean -d ?)\0A\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"-I\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"No directory specified for -I\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"-M\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"use \00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"no \00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"Can't use '%c' after -mname\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c" ()\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"Module name required with -%c option\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c" split(/,/,q\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"\00)\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"Missing argument to -%c\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.39 = private unnamed_addr constant [68 x i8] c"\22-%c\22 is on the #! line, it must also be used on the command line%s\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"\0AThis is perl, v%vd built for %s\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"spec-cpu\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"\0A\0ACopyright 1987-2005, Larry Wall\0A\00", align 1
@.str.43 = private unnamed_addr constant [377 x i8] c"\0APerl may be copied only under the terms of either the Artistic License or the\0AGNU General Public License, which may be found in the Perl 5 source kit.\0A\0AComplete documentation for Perl, including FAQ lists, should be found on\0Athis system using `man perl' or `perldoc perl'.  If you have access to the\0AInternet, point your browser at http://www.perl.org/, the Perl Home Page.\0A\0A\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"Can't emulate -%.1s on #! line\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"DB::args\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"DB::DB\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"DB::dbline\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"DB::sub\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"DB::single\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"DB::trace\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"DB::signal\00", align 1
@PL_tmps_stack = external global %struct.sv**, align 8
@PL_tmps_max = external global i32, align 4
@PL_scopestack = external global i32*, align 8
@PL_scopestack_max = external global i32, align 4
@PL_savestack = external global %union.any*, align 8
@PL_savestack_max = external global i32, align 4
@PL_retstack = external global %struct.op**, align 8
@PL_retstack_max = external global i32, align 4
@.str.52 = private unnamed_addr constant [5 x i8] c"ARGV\00", align 1
@PL_utf8locale = external global i8, align 1
@PL_savebegin = external global i8, align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"BEGIN failed--compilation aborted\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"%s failed--call queue aborted\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"CHECK\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"%_\00", align 1
@PL_op_seqmax = external global i16, align 2
@PL_fdscript = external global i32, align 4
@PL_suidscript = external global i32, align 4
@.str.59 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"No code specified for -e\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@.str.64 = private unnamed_addr constant [36 x i8] c"use Config qw(myconfig config_vars)\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"print myconfig();\00", align 1
@.str.66 = private unnamed_addr constant [61 x i8] c"print \22\5CnCharacteristics of this binary (from libperl): \5Cn\22,\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"\22  Compile-time options:\00", align 1
@.str.68 = private unnamed_addr constant [26 x i8] c"\5Cn                       \00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"\5Cn\22,\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"\22  Built under %s\5Cn\22\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"SPEC CPU\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c",\22  Compiled at %s %s\5Cn\22\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"Jun  4 2016\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"23:52:18\00", align 1
@.str.75 = private unnamed_addr constant [80 x i8] c"; $\22=\22\5Cn    \22; @env = map { \22$_=\5C\22$ENV{$_}\5C\22\22 } sort grep {/^PERL/} keys %ENV; \00", align 1
@.str.76 = private unnamed_addr constant [68 x i8] c"print \22  \5C%ENV:\5Cn    @env\5Cn\22 if @env; print \22  \5C@INC:\5Cn    @INC\5Cn\22;\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"config_vars(qw(\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"))\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.84 = private unnamed_addr constant [55 x i8] c"Unrecognized switch: -%s  (-h will show valid options)\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"\00\00\00\00\00\00\00\00\00@\00\00\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.87 = private unnamed_addr constant [18 x i8] c"Can't chdir to %s\00", align 1
@PL_compcv = external global %struct.cv*, align 8
@.str.88 = private unnamed_addr constant [6 x i8] c":utf8\00", align 1
@PL_defoutgv = external global %struct.gv*, align 8
@.str.89 = private unnamed_addr constant [5 x i8] c"\0FPEN\00", align 1
@.str.90 = private unnamed_addr constant [12 x i8] c":utf8\00:utf8\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c":utf8\00\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"\00:utf8\00", align 1
@PL_error_count = external global i32, align 4
@.str.93 = private unnamed_addr constant [28 x i8] c"%s had compilation errors.\0A\00", align 1
@.str.94 = private unnamed_addr constant [52 x i8] c"Execution of %s aborted due to compilation errors.\0A\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"main::\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"INC\00", align 1
@.str.98 = private unnamed_addr constant [2 x i8] c"\08\00", align 1
@.str.99 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@PL_defgv = external global %struct.gv*, align 8
@.str.100 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c"\12\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"%240s\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"DB::\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c"CORE::GLOBAL::\00", align 1
@PL_globalstash = external global %struct.hv*, align 8
@.str.105 = private unnamed_addr constant [9 x i8] c"<none>::\00", align 1
@PL_nullstash = external global %struct.hv*, align 8
@.str.106 = private unnamed_addr constant [4 x i8] c"lib\00", align 1
@.str.107 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"/dev/fd/\00", align 1
@.str.109 = private unnamed_addr constant [41 x i8] c"Wrong syntax (suid) fd script name \22%s\22\0A\00", align 1
@.str.110 = private unnamed_addr constant [31 x i8] c"Missing (suid) fd script name\0A\00", align 1
@.str.111 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.112 = private unnamed_addr constant [25 x i8] c"program input from stdin\00", align 1
@.str.113 = private unnamed_addr constant [33 x i8] c"Can't open perl script \22%s\22: %s\0A\00", align 1
@PL_euid = external global i32, align 4
@PL_uid = external global i32, align 4
@PL_egid = external global i32, align 4
@PL_gid = external global i32, align 4
@PL_statbuf = external global %struct.stat, align 8
@.str.114 = private unnamed_addr constant [131 x i8] c"YOU HAVEN'T DISABLED SET-ID SCRIPTS IN THE KERNEL YET!\0AFIX YOUR KERNEL, PUT A C WRAPPER AROUND THIS SCRIPT, OR USE -u AND UNDUMP!\0A\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str.116 = private unnamed_addr constant [31 x i8] c"No Perl script found in input\0A\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"perl\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"PERL\00", align 1
@.str.119 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"STDIN\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"STDOUT\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"STDERR\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"%s syntax OK\0A\00", align 1
@PL_runops = external global i32 ()*, align 8
@S_usage.usage_msg = internal global [29 x i8*] [i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str.127 = private unnamed_addr constant [62 x i8] c"-0[octal]       specify record separator (\5C0, if no argument)\00", align 1
@.str.128 = private unnamed_addr constant [65 x i8] c"-a              autosplit mode with -n or -p (splits $_ into @F)\00", align 1
@.str.129 = private unnamed_addr constant [52 x i8] c"-C[number/list] enables the listed Unicode features\00", align 1
@.str.130 = private unnamed_addr constant [64 x i8] c"-c              check syntax only (runs BEGIN and CHECK blocks)\00", align 1
@.str.131 = private unnamed_addr constant [43 x i8] c"-d[:debugger]   run program under debugger\00", align 1
@.str.132 = private unnamed_addr constant [74 x i8] c"-D[number/list] set debugging flags (argument is a bit mask or alphabets)\00", align 1
@.str.133 = private unnamed_addr constant [77 x i8] c"-e program      one line of program (several -e's allowed, omit programfile)\00", align 1
@.str.134 = private unnamed_addr constant [66 x i8] c"-F/pattern/     split() pattern for -a switch (//'s are optional)\00", align 1
@.str.135 = private unnamed_addr constant [76 x i8] c"-i[extension]   edit <> files in place (makes backup if extension supplied)\00", align 1
@.str.136 = private unnamed_addr constant [71 x i8] c"-Idirectory     specify @INC/#include directory (several -I's allowed)\00", align 1
@.str.137 = private unnamed_addr constant [73 x i8] c"-l[octal]       enable line ending processing, specifies line terminator\00", align 1
@.str.138 = private unnamed_addr constant [68 x i8] c"-[mM][-]module  execute `use/no module...' before executing program\00", align 1
@.str.139 = private unnamed_addr constant [64 x i8] c"-n              assume 'while (<>) { ... }' loop around program\00", align 1
@.str.140 = private unnamed_addr constant [66 x i8] c"-p              assume loop like -n but print line also, like sed\00", align 1
@.str.141 = private unnamed_addr constant [70 x i8] c"-P              run program through C preprocessor before compilation\00", align 1
@.str.142 = private unnamed_addr constant [74 x i8] c"-s              enable rudimentary parsing for switches after programfile\00", align 1
@.str.143 = private unnamed_addr constant [69 x i8] c"-S              look for programfile using PATH environment variable\00", align 1
@.str.144 = private unnamed_addr constant [41 x i8] c"-t              enable tainting warnings\00", align 1
@.str.145 = private unnamed_addr constant [39 x i8] c"-T              enable tainting checks\00", align 1
@.str.146 = private unnamed_addr constant [48 x i8] c"-u              dump core after parsing program\00", align 1
@.str.147 = private unnamed_addr constant [40 x i8] c"-U              allow unsafe operations\00", align 1
@.str.148 = private unnamed_addr constant [78 x i8] c"-v              print version, subversion (includes VERY IMPORTANT perl info)\00", align 1
@.str.149 = private unnamed_addr constant [77 x i8] c"-V[:variable]   print configuration summary (or a single Config.pm variable)\00", align 1
@.str.150 = private unnamed_addr constant [58 x i8] c"-w              enable many useful warnings (RECOMMENDED)\00", align 1
@.str.151 = private unnamed_addr constant [36 x i8] c"-W              enable all warnings\00", align 1
@.str.152 = private unnamed_addr constant [78 x i8] c"-x[directory]   strip off text before #!perl line and perhaps cd to directory\00", align 1
@.str.153 = private unnamed_addr constant [37 x i8] c"-X              disable all warnings\00", align 1
@.str.154 = private unnamed_addr constant [53 x i8] c"\0AUsage: %s [switches] [--] [programfile] [arguments]\00", align 1
@.str.155 = private unnamed_addr constant [6 x i8] c"\0A  %s\00", align 1
@PL_maxsysfd = external global i32, align 4
@PL_sub_generation = external global i32, align 4
@PL_curcopdb = external global %struct.cop*, align 8
@PL_copline = external global i32, align 4
@PL_gensym = external global i32, align 4
@PL_laststatval = external global i32, align 4
@PL_laststype = external global i32, align 4
@PL_profiledata = external global i32*, align 8
@PL_generation = external global i32, align 4
@PL_in_clean_objs = external global i8, align 1
@PL_in_clean_all = external global i8, align 1
@PL_an = external global i32, align 4
@PL_cop_seqmax = external global i32, align 4
@PL_evalseq = external global i32, align 4
@PL_maxo = external global i32, align 4
@.str.156 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@PL_sh_path_compat = external global i8*, align 8
@PL_cshname = external global i8*, align 8
@PL_cshlen = external global i32, align 4
@PL_expect = external global i32, align 4
@PL_amagic_generation = external global i64, align 8
@PL_glob_index = external global i32, align 4
@PL_sig_pending = external global i32, align 4
@PL_perlio = external global %struct._PerlIO**, align 8
@PL_known_layers = external global %struct.PerlIO_list_s*, align 8
@PL_def_layerlist = external global %struct.PerlIO_list_s*, align 8
@PL_encoding = external global %struct.sv*, align 8
@PL_in_load_module = external global i32, align 4
@PL_sharehook = external global void (%struct.sv*)*, align 8
@PL_lockhook = external global void (%struct.sv*)*, align 8
@PL_unlockhook = external global void (%struct.sv*)*, align 8
@PL_runops_std = external global i32 ()*, align 8
@PL_runops_dbg = external global i32 ()*, align 8
@PL_hash_seed = external global i64, align 8
@PL_hash_seed_set = external global i8, align 1
@.str.157 = private unnamed_addr constant [4 x i8] c" \0A-\00", align 1
@PL_chopset = external global i8*, align 8
@PL_dumpindent = external global i32, align 4
@PL_maxscream = external global i32, align 4
@PL_regindent = external global i32, align 4
@PL_reg_oldcurpm = external global %struct.pmop*, align 8
@PL_peepp = external global void (%struct.op*)*, align 8
@PL_regcompp = external global %struct.regexp* (i8*, i8*, %struct.pmop*)*, align 8
@PL_regexecp = external global i32 (%struct.regexp*, i8*, i8*, i8*, i32, %struct.sv*, i8*, i32)*, align 8
@PL_regint_start = external global i8* (%struct.regexp*, %struct.sv*, i8*, i8*, i32, %struct.re_scream_pos_data_s*)*, align 8
@PL_regint_string = external global %struct.sv* (%struct.regexp*)*, align 8
@PL_regfree = external global void (%struct.regexp*)*, align 8
@PL_reginterp_cnt = external global i32, align 4
@PL_reg_starttry = external global i8*, align 8
@PL_watchaddr = external global i8**, align 8
@.str.158 = private unnamed_addr constant [35 x i8] c"No %s allowed with (suid) fdscript\00", align 1
@PL_tainted = external global i8, align 1
@.str.159 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.160 = private unnamed_addr constant [4 x i8] c"ENV\00", align 1
@.str.161 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.162 = private unnamed_addr constant [8 x i8] c"main::F\00", align 1
@.str.163 = private unnamed_addr constant [8 x i8] c"main::-\00", align 1
@.str.164 = private unnamed_addr constant [8 x i8] c"main::+\00", align 1
@.str.165 = private unnamed_addr constant [2 x i8] c"\18\00", align 1
@.str.166 = private unnamed_addr constant [15 x i8] c"%_/%d.%d.%d/%s\00", align 1
@.str.167 = private unnamed_addr constant [12 x i8] c"%_/%d.%d.%d\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"%_/%s\00", align 1

; Function Attrs: nounwind uwtable
define %struct.interpreter* @perl_alloc() #0 {
entry:
  %my_perl = alloca %struct.interpreter*, align 8
  %call = call i8* @malloc(i64 1)
  %0 = bitcast i8* %call to %struct.interpreter*
  store %struct.interpreter* %0, %struct.interpreter** %my_perl, align 8
  %1 = load %struct.interpreter*, %struct.interpreter** @PL_curinterp, align 8
  %tobool = icmp ne %struct.interpreter* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.interpreter*, %struct.interpreter** %my_perl, align 8
  store %struct.interpreter* %2, %struct.interpreter** @PL_curinterp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.interpreter*, %struct.interpreter** %my_perl, align 8
  %4 = bitcast %struct.interpreter* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 1, i32 1, i1 false)
  %5 = bitcast i8* %4 to %struct.interpreter*
  ret %struct.interpreter* %5
}

declare i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @perl_construct(%struct.interpreter* %my_perl) #0 {
entry:
  %my_perl.addr = alloca %struct.interpreter*, align 8
  %tmp = alloca %struct.jmpenv*, align 8
  %s = alloca i8*, align 8
  %tmp48 = alloca i64, align 8
  store %struct.interpreter* %my_perl, %struct.interpreter** %my_perl.addr, align 8
  %0 = load i32, i32* @PL_perl_destruct_level, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @S_init_interp()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.sv*, %struct.sv** @PL_linestr, align 8
  %tobool = icmp ne %struct.sv* %1, null
  br i1 %tobool, label %if.end.36, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store volatile %struct.cop* @PL_compiling, %struct.cop** @PL_curcop, align 8
  %call = call %struct.sv* @Perl_newSV(i64 79)
  store %struct.sv* %call, %struct.sv** @PL_linestr, align 8
  %2 = load %struct.sv*, %struct.sv** @PL_linestr, align 8
  %call2 = call signext i8 @Perl_sv_upgrade(%struct.sv* %2, i32 5)
  %3 = load i32, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_undef, i32 0, i32 2), align 4
  %and = and i32 %3, 8388608
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.end.34, label %if.then.4

if.then.4:                                        ; preds = %if.then.1
  %4 = load i32, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_undef, i32 0, i32 2), align 4
  %or = or i32 %4, 8388608
  store i32 %or, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_undef, i32 0, i32 2), align 4
  store i32 2147483647, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_undef, i32 0, i32 1), align 4
  %5 = load i8*, i8** @PL_No, align 8
  call void @Perl_sv_setpv(%struct.sv* @PL_sv_no, i8* %5)
  %6 = load i32, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_no, i32 0, i32 2), align 4
  %and5 = and i32 %6, 65536
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.4
  %7 = load i8*, i8** getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_no, i32 0, i32 0), align 8
  %8 = bitcast i8* %7 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %8, i32 0, i32 3
  %9 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.4
  %call7 = call i64 @Perl_sv_2iv(%struct.sv* @PL_sv_no)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %call7, %cond.false ]
  %10 = load i32, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_no, i32 0, i32 2), align 4
  %and8 = and i32 %10, 131072
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.end
  %11 = load i8*, i8** getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_no, i32 0, i32 0), align 8
  %12 = bitcast i8* %11 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %12, i32 0, i32 4
  %13 = load double, double* %xnv_nv, align 8
  br label %cond.end.13

cond.false.11:                                    ; preds = %cond.end
  %call12 = call double @Perl_sv_2nv(%struct.sv* @PL_sv_no)
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.11, %cond.true.10
  %cond14 = phi double [ %13, %cond.true.10 ], [ %call12, %cond.false.11 ]
  %14 = load i32, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_no, i32 0, i32 2), align 4
  %or15 = or i32 %14, 8388608
  store i32 %or15, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_no, i32 0, i32 2), align 4
  store i32 2147483647, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_no, i32 0, i32 1), align 4
  %15 = load i8*, i8** @PL_Yes, align 8
  call void @Perl_sv_setpv(%struct.sv* @PL_sv_yes, i8* %15)
  %16 = load i32, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_yes, i32 0, i32 2), align 4
  %and16 = and i32 %16, 65536
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %cond.end.13
  %17 = load i8*, i8** getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_yes, i32 0, i32 0), align 8
  %18 = bitcast i8* %17 to %struct.xpviv*
  %xiv_iv19 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %18, i32 0, i32 3
  %19 = load i64, i64* %xiv_iv19, align 8
  br label %cond.end.22

cond.false.20:                                    ; preds = %cond.end.13
  %call21 = call i64 @Perl_sv_2iv(%struct.sv* @PL_sv_yes)
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.20, %cond.true.18
  %cond23 = phi i64 [ %19, %cond.true.18 ], [ %call21, %cond.false.20 ]
  %20 = load i32, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_yes, i32 0, i32 2), align 4
  %and24 = and i32 %20, 131072
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %cond.true.26, label %cond.false.28

cond.true.26:                                     ; preds = %cond.end.22
  %21 = load i8*, i8** getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_yes, i32 0, i32 0), align 8
  %22 = bitcast i8* %21 to %struct.xpvnv*
  %xnv_nv27 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %22, i32 0, i32 4
  %23 = load double, double* %xnv_nv27, align 8
  br label %cond.end.30

cond.false.28:                                    ; preds = %cond.end.22
  %call29 = call double @Perl_sv_2nv(%struct.sv* @PL_sv_yes)
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.28, %cond.true.26
  %cond31 = phi double [ %23, %cond.true.26 ], [ %call29, %cond.false.28 ]
  %24 = load i32, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_yes, i32 0, i32 2), align 4
  %or32 = or i32 %24, 8388608
  store i32 %or32, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_yes, i32 0, i32 2), align 4
  store i32 2147483647, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_yes, i32 0, i32 1), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_placeholder, i32 0, i32 2), align 4
  %or33 = or i32 %25, 8388608
  store i32 %or33, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_placeholder, i32 0, i32 2), align 4
  store i32 2147483647, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_placeholder, i32 0, i32 1), align 4
  br label %if.end.34

if.end.34:                                        ; preds = %cond.end.30, %if.then.1
  store void (i32)* @Perl_sighandler, void (i32)** @PL_sighandlerp, align 8
  %call35 = call %struct.hv* @Perl_newHV()
  store %struct.hv* %call35, %struct.hv** @PL_pidstatus, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.34, %if.end
  %call37 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 1)
  store %struct.sv* %call37, %struct.sv** @PL_rs, align 8
  call void @Perl_init_stacks()
  call void @S_init_ids()
  store i32 11, i32* @PL_lex_state, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.jmpenv* @PL_start_env to i8*), i8 0, i64 216, i32 1, i1 false)
  store i32 -1, i32* getelementptr inbounds (%struct.jmpenv, %struct.jmpenv* @PL_start_env, i32 0, i32 2), align 4
  store i8 1, i8* getelementptr inbounds (%struct.jmpenv, %struct.jmpenv* @PL_start_env, i32 0, i32 3), align 1
  store %struct.jmpenv* @PL_start_env, %struct.jmpenv** @PL_top_env, align 8
  store %struct.jmpenv* @PL_start_env, %struct.jmpenv** %tmp
  %26 = load %struct.jmpenv*, %struct.jmpenv** %tmp
  store i32 0, i32* @PL_statusvalue, align 4
  %call38 = call i32 @Perl_init_i18nl10n(i32 1)
  %call40 = call %struct.sv* @Perl_newSV(i64 4)
  store %struct.sv* %call40, %struct.sv** @PL_patchlevel, align 8
  %27 = load %struct.sv*, %struct.sv** @PL_patchlevel, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 2
  %28 = load i32, i32* %sv_flags, align 4
  %and41 = and i32 %28, 255
  %cmp42 = icmp uge i32 %and41, 6
  br i1 %cmp42, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.36
  %29 = load %struct.sv*, %struct.sv** @PL_patchlevel, align 8
  %call43 = call signext i8 @Perl_sv_upgrade(%struct.sv* %29, i32 6)
  %conv = sext i8 %call43 to i32
  %tobool44 = icmp ne i32 %conv, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.36
  %30 = phi i1 [ true, %if.end.36 ], [ %tobool44, %lor.rhs ]
  %lor.ext = zext i1 %30 to i32
  %31 = load %struct.sv*, %struct.sv** @PL_patchlevel, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %31, i32 0, i32 0
  %32 = load i8*, i8** %sv_any, align 8
  %33 = bitcast i8* %32 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %33, i32 0, i32 0
  %34 = load i8*, i8** %xpv_pv, align 8
  store i8* %34, i8** %s, align 8
  %35 = load i8*, i8** %s, align 8
  %call45 = call i8* @Perl_uvuni_to_utf8(i8* %35, i64 5)
  store i8* %call45, i8** %s, align 8
  %36 = load i8*, i8** %s, align 8
  %call46 = call i8* @Perl_uvuni_to_utf8(i8* %36, i64 8)
  store i8* %call46, i8** %s, align 8
  %37 = load i8*, i8** %s, align 8
  %call47 = call i8* @Perl_uvuni_to_utf8(i8* %37, i64 7)
  store i8* %call47, i8** %s, align 8
  %38 = load i8*, i8** %s, align 8
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %s, align 8
  %40 = load %struct.sv*, %struct.sv** @PL_patchlevel, align 8
  %sv_any49 = getelementptr inbounds %struct.sv, %struct.sv* %40, i32 0, i32 0
  %41 = load i8*, i8** %sv_any49, align 8
  %42 = bitcast i8* %41 to %struct.xpv*
  %xpv_pv50 = getelementptr inbounds %struct.xpv, %struct.xpv* %42, i32 0, i32 0
  %43 = load i8*, i8** %xpv_pv50, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %39 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %43 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %44 = load %struct.sv*, %struct.sv** @PL_patchlevel, align 8
  %sv_any51 = getelementptr inbounds %struct.sv, %struct.sv* %44, i32 0, i32 0
  %45 = load i8*, i8** %sv_any51, align 8
  %46 = bitcast i8* %45 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %46, i32 0, i32 1
  store i64 %sub.ptr.sub, i64* %xpv_cur, align 8
  store i64 %sub.ptr.sub, i64* %tmp48
  %47 = load i64, i64* %tmp48
  %48 = load %struct.sv*, %struct.sv** @PL_patchlevel, align 8
  %sv_flags52 = getelementptr inbounds %struct.sv, %struct.sv* %48, i32 0, i32 2
  %49 = load i32, i32* %sv_flags52, align 4
  %or53 = or i32 %49, 67371008
  store i32 %or53, i32* %sv_flags52, align 4
  %50 = load %struct.sv*, %struct.sv** @PL_patchlevel, align 8
  %sv_any54 = getelementptr inbounds %struct.sv, %struct.sv* %50, i32 0, i32 0
  %51 = load i8*, i8** %sv_any54, align 8
  %52 = bitcast i8* %51 to %struct.xpvnv*
  %xnv_nv55 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %52, i32 0, i32 4
  store double 5.008007e+00, double* %xnv_nv55, align 8
  %53 = load %struct.sv*, %struct.sv** @PL_patchlevel, align 8
  %sv_flags56 = getelementptr inbounds %struct.sv, %struct.sv* %53, i32 0, i32 2
  %54 = load i32, i32* %sv_flags56, align 4
  %or57 = or i32 %54, 33685504
  store i32 %or57, i32* %sv_flags56, align 4
  %55 = load %struct.sv*, %struct.sv** @PL_patchlevel, align 8
  %sv_flags58 = getelementptr inbounds %struct.sv, %struct.sv* %55, i32 0, i32 2
  %56 = load i32, i32* %sv_flags58, align 4
  %or59 = or i32 %56, 536870912
  store i32 %or59, i32* %sv_flags58, align 4
  %57 = load %struct.sv*, %struct.sv** @PL_patchlevel, align 8
  %sv_flags60 = getelementptr inbounds %struct.sv, %struct.sv* %57, i32 0, i32 2
  %58 = load i32, i32* %sv_flags60, align 4
  %or61 = or i32 %58, 8388608
  store i32 %or61, i32* %sv_flags60, align 4
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @local_patches, i32 0, i32 0), i8*** @PL_localpatches, align 8
  call void @PerlIO_init()
  %call62 = call %struct.av* @Perl_newAV()
  store %struct.av* %call62, %struct.av** @PL_fdpid, align 8
  %call63 = call %struct.hv* @Perl_newHV()
  store %struct.hv* %call63, %struct.hv** @PL_modglobal, align 8
  %call64 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 0)
  store %struct.sv* %call64, %struct.sv** @PL_errors, align 8
  call void @Perl_sv_setpvn(%struct.sv* getelementptr inbounds (%struct.perl_debug_pad, %struct.perl_debug_pad* @PL_debug_pad, i32 0, i32 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 0)
  call void @Perl_sv_setpvn(%struct.sv* getelementptr inbounds (%struct.perl_debug_pad, %struct.perl_debug_pad* @PL_debug_pad, i32 0, i32 0, i64 1), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 0)
  call void @Perl_sv_setpvn(%struct.sv* getelementptr inbounds (%struct.perl_debug_pad, %struct.perl_debug_pad* @PL_debug_pad, i32 0, i32 0, i64 2), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 0)
  %call65 = call %struct.hv* @Perl_newHV()
  store %struct.hv* %call65, %struct.hv** @PL_strtab, align 8
  %59 = load %struct.hv*, %struct.hv** @PL_strtab, align 8
  %sv_flags66 = getelementptr inbounds %struct.hv, %struct.hv* %59, i32 0, i32 2
  %60 = load i32, i32* %sv_flags66, align 4
  %and67 = and i32 %60, -536870913
  store i32 %and67, i32* %sv_flags66, align 4
  %61 = load %struct.hv*, %struct.hv** @PL_strtab, align 8
  call void @Perl_hv_ksplit(%struct.hv* %61, i64 512)
  %62 = load i8**, i8*** @environ, align 8
  store i8** %62, i8*** @PL_origenviron, align 8
  store i64 60, i64* @PL_clocktick, align 8
  %call68 = call %struct.hv* @Perl_newHV()
  store %struct.hv* %call68, %struct.hv** @PL_stashcache, align 8
  call void @Perl_push_scope()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @S_init_interp() #0 {
entry:
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i32 0, i32 0), i8** @PL_splitstr, align 8
  store i32 0, i32* @PL_perl_destruct_level, align 4
  store i32 2, i32* @PL_maxsysfd, align 4
  store i32 1, i32* @PL_sub_generation, align 4
  store i8* null, i8** @PL_op_mask, align 8
  store %struct.cop* null, %struct.cop** @PL_curcopdb, align 8
  store i32 -1, i32* @PL_copline, align 4
  store i32 0, i32* @PL_gensym, align 4
  store i32 -1, i32* @PL_laststatval, align 4
  store i32 235, i32* @PL_laststype, align 4
  store %struct.exitlistentry* null, %struct.exitlistentry** @PL_exitlist, align 8
  store i32 0, i32* @PL_exitlistlen, align 4
  store i32* null, i32** @PL_profiledata, align 8
  store volatile %struct._PerlIO** null, %struct._PerlIO*** @PL_rsfp, align 8
  store %struct.av* null, %struct.av** @PL_rsfp_filters, align 8
  store i32 100, i32* @PL_generation, align 4
  store i8 0, i8* @PL_in_clean_objs, align 1
  store i8 0, i8* @PL_in_clean_all, align 1
  store i32 0, i32* @PL_an, align 4
  store i32 0, i32* @PL_cop_seqmax, align 4
  store i16 0, i16* @PL_op_seqmax, align 2
  store i32 0, i32* @PL_evalseq, align 4
  store i32 352, i32* @PL_maxo, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.156, i32 0, i32 0), i8** @PL_sh_path_compat, align 8
  store i32 ()* @Perl_runops_standard, i32 ()** @PL_runops, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** @PL_cshname, align 8
  store i32 0, i32* @PL_cshlen, align 4
  store i32 3, i32* @PL_expect, align 4
  store i64 0, i64* @PL_amagic_generation, align 8
  store i32 0, i32* @PL_glob_index, align 4
  store %struct.av* null, %struct.av** @PL_beginav_save, align 8
  store i32 0, i32* @PL_sig_pending, align 4
  store i8 0, i8* @PL_savebegin, align 1
  store %struct._PerlIO** null, %struct._PerlIO*** @PL_perlio, align 8
  store %struct.PerlIO_list_s* null, %struct.PerlIO_list_s** @PL_known_layers, align 8
  store %struct.PerlIO_list_s* null, %struct.PerlIO_list_s** @PL_def_layerlist, align 8
  store %struct.sv* null, %struct.sv** @PL_encoding, align 8
  store %struct.av* null, %struct.av** @PL_checkav_save, align 8
  store i64 0, i64* @PL_clocktick, align 8
  store i32 0, i32* @PL_in_load_module, align 4
  store void (%struct.sv*)* @Perl_sv_nosharing, void (%struct.sv*)** @PL_sharehook, align 8
  store void (%struct.sv*)* @Perl_sv_nolocking, void (%struct.sv*)** @PL_lockhook, align 8
  store void (%struct.sv*)* @Perl_sv_nounlocking, void (%struct.sv*)** @PL_unlockhook, align 8
  store i32 ()* @Perl_nothreadhook, i32 ()** @PL_threadhook, align 8
  store i32 ()* @Perl_runops_standard, i32 ()** @PL_runops_std, align 8
  store i32 ()* @Perl_runops_debug, i32 ()** @PL_runops_dbg, align 8
  store i64 0, i64* @PL_hash_seed, align 8
  store i8 0, i8* @PL_hash_seed_set, align 1
  store i64 0, i64* @PL_rehash_seed, align 8
  store i8 0, i8* @PL_rehash_seed_set, align 1
  store i32 -1, i32* @PL_fdscript, align 4
  store i32 -1, i32* @PL_suidscript, align 4
  store i32 -1, i32* @PL_tmps_ix, align 4
  store i32 -1, i32* @PL_tmps_floor, align 4
  store %struct.sv* null, %struct.sv** @PL_statname, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.157, i32 0, i32 0), i8** @PL_chopset, align 8
  store volatile %struct.cop* @PL_compiling, %struct.cop** @PL_curcop, align 8
  store i8 0, i8* @PL_dirty, align 1
  store %struct.sv* null, %struct.sv** @PL_errors, align 8
  store i32 4, i32* @PL_dumpindent, align 4
  store i32 -1, i32* @PL_maxscream, align 4
  store i32 0, i32* @PL_regindent, align 4
  store %struct.pmop* null, %struct.pmop** @PL_reg_oldcurpm, align 8
  store %struct.pmop* null, %struct.pmop** @PL_reg_curpm, align 8
  store i8* null, i8** @PL_reg_poscache, align 8
  store void (%struct.op*)* @Perl_peep, void (%struct.op*)** @PL_peepp, align 8
  store %struct.regexp* (i8*, i8*, %struct.pmop*)* @Perl_pregcomp, %struct.regexp* (i8*, i8*, %struct.pmop*)** @PL_regcompp, align 8
  store i32 (%struct.regexp*, i8*, i8*, i8*, i32, %struct.sv*, i8*, i32)* @Perl_regexec_flags, i32 (%struct.regexp*, i8*, i8*, i8*, i32, %struct.sv*, i8*, i32)** @PL_regexecp, align 8
  store i8* (%struct.regexp*, %struct.sv*, i8*, i8*, i32, %struct.re_scream_pos_data_s*)* @Perl_re_intuit_start, i8* (%struct.regexp*, %struct.sv*, i8*, i8*, i32, %struct.re_scream_pos_data_s*)** @PL_regint_start, align 8
  store %struct.sv* (%struct.regexp*)* @Perl_re_intuit_string, %struct.sv* (%struct.regexp*)** @PL_regint_string, align 8
  store void (%struct.regexp*)* @Perl_pregfree, void (%struct.regexp*)** @PL_regfree, align 8
  store i32 0, i32* @PL_reginterp_cnt, align 4
  store i8* null, i8** @PL_reg_starttry, align 8
  store i8** null, i8*** @PL_watchaddr, align 8
  ret void
}

declare %struct.sv* @Perl_newSV(i64) #1

declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

declare i64 @Perl_sv_2iv(%struct.sv*) #1

declare double @Perl_sv_2nv(%struct.sv*) #1

declare void @Perl_sighandler(i32) #1

declare %struct.hv* @Perl_newHV() #1

declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @Perl_init_stacks() #0 {
entry:
  %call = call %struct.stackinfo* @Perl_new_stackinfo(i32 128, i32 55)
  store %struct.stackinfo* %call, %struct.stackinfo** @PL_curstackinfo, align 8
  %0 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %0, i32 0, i32 4
  store i32 1, i32* %si_type, align 4
  %1 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %1, i32 0, i32 0
  %2 = load %struct.av*, %struct.av** %si_stack, align 8
  store %struct.av* %2, %struct.av** @PL_curstack, align 8
  %3 = load %struct.av*, %struct.av** @PL_curstack, align 8
  store %struct.av* %3, %struct.av** @PL_mainstack, align 8
  %4 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %4, i32 0, i32 0
  %5 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %5, i32 0, i32 0
  %6 = load i8*, i8** %xav_array, align 8
  %7 = bitcast i8* %6 to %struct.sv**
  store %struct.sv** %7, %struct.sv*** @PL_stack_base, align 8
  %8 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  store %struct.sv** %8, %struct.sv*** @PL_stack_sp, align 8
  %9 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %10 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any1 = getelementptr inbounds %struct.av, %struct.av* %10, i32 0, i32 0
  %11 = load %struct.xpvav*, %struct.xpvav** %sv_any1, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %11, i32 0, i32 2
  %12 = load i64, i64* %xav_max, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %9, i64 %12
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8
  %call2 = call i8* @Perl_safesysmalloc(i64 1024)
  %13 = bitcast i8* %call2 to %struct.sv**
  store %struct.sv** %13, %struct.sv*** @PL_tmps_stack, align 8
  store i32 -1, i32* @PL_tmps_floor, align 4
  store i32 -1, i32* @PL_tmps_ix, align 4
  store i32 128, i32* @PL_tmps_max, align 4
  %call3 = call i8* @Perl_safesysmalloc(i64 128)
  %14 = bitcast i8* %call3 to i32*
  store i32* %14, i32** @PL_markstack, align 8
  %15 = load i32*, i32** @PL_markstack, align 8
  store i32* %15, i32** @PL_markstack_ptr, align 8
  %16 = load i32*, i32** @PL_markstack, align 8
  %add.ptr4 = getelementptr inbounds i32, i32* %16, i64 32
  store i32* %add.ptr4, i32** @PL_markstack_max, align 8
  %call5 = call i8* @Perl_safesysmalloc(i64 128)
  %17 = bitcast i8* %call5 to i32*
  store i32* %17, i32** @PL_scopestack, align 8
  store i32 0, i32* @PL_scopestack_ix, align 4
  store i32 32, i32* @PL_scopestack_max, align 4
  %call6 = call i8* @Perl_safesysmalloc(i64 1024)
  %18 = bitcast i8* %call6 to %union.any*
  store %union.any* %18, %union.any** @PL_savestack, align 8
  store i32 0, i32* @PL_savestack_ix, align 4
  store i32 128, i32* @PL_savestack_max, align 4
  %call7 = call i8* @Perl_safesysmalloc(i64 128)
  %19 = bitcast i8* %call7 to %struct.op**
  store %struct.op** %19, %struct.op*** @PL_retstack, align 8
  store i32 0, i32* @PL_retstack_ix, align 4
  store i32 16, i32* @PL_retstack_max, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @S_init_ids() #0 {
entry:
  %call = call i32 @getuid()
  store i32 %call, i32* @PL_uid, align 4
  %call1 = call i32 @geteuid()
  store i32 %call1, i32* @PL_euid, align 4
  %call2 = call i32 @getgid()
  store i32 %call2, i32* @PL_gid, align 4
  %call3 = call i32 @getegid()
  store i32 %call3, i32* @PL_egid, align 4
  %0 = load i32, i32* @PL_uid, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* @PL_euid, align 4
  %2 = load i32, i32* @PL_uid, align 4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %3 = load i32, i32* @PL_egid, align 4
  %4 = load i32, i32* @PL_gid, align 4
  %cmp4 = icmp ne i32 %3, %4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %5 = phi i1 [ true, %land.rhs ], [ %cmp4, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %6 = phi i1 [ false, %entry ], [ %5, %lor.end ]
  %land.ext = zext i1 %6 to i32
  %7 = load i8, i8* @PL_tainting, align 1
  %conv = sext i8 %7 to i32
  %or = or i32 %conv, %land.ext
  %conv5 = trunc i32 %or to i8
  store i8 %conv5, i8* @PL_tainting, align 1
  ret void
}

declare i32 @Perl_init_i18nl10n(i32) #1

declare i8* @Perl_uvuni_to_utf8(i8*, i64) #1

declare void @PerlIO_init() #1

declare %struct.av* @Perl_newAV() #1

declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

declare void @Perl_hv_ksplit(%struct.hv*, i64) #1

declare void @Perl_push_scope() #1

; Function Attrs: nounwind uwtable
define i32 @Perl_nothreadhook() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @perl_destruct(%struct.interpreter* %my_perl) #0 {
entry:
  %retval = alloca i32, align 4
  %my_perl.addr = alloca %struct.interpreter*, align 8
  %destruct_level = alloca i32, align 4
  %hv = alloca %struct.hv*, align 8
  %cur_env = alloca %struct.jmpenv, align 8
  %x = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp5 = alloca %struct.jmpenv*, align 8
  %i = alloca i32, align 4
  %riter = alloca i32, align 4
  %max = alloca i32, align 4
  %hent = alloca %struct.he*, align 8
  %array = alloca %struct.he**, align 8
  %i186 = alloca i32, align 4
  %mg = alloca %struct.magic*, align 8
  %moremagic = alloca %struct.magic*, align 8
  store %struct.interpreter* %my_perl, %struct.interpreter** %my_perl.addr, align 8
  %0 = load i32, i32* @PL_perl_destruct_level, align 4
  store volatile i32 %0, i32* %destruct_level, align 4
  %1 = load i8, i8* @PL_exit_flags, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  store i32 0, i32* %x, align 4
  %2 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_prev = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 1
  store %struct.jmpenv* %2, %struct.jmpenv** %je_prev, align 8
  %je_buf = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %je_buf, i32 0, i32 0
  %call = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay, i32 0) #5
  %je_ret = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 2
  store i32 %call, i32* %je_ret, align 4
  store %struct.jmpenv* %cur_env, %struct.jmpenv** @PL_top_env, align 8
  %je_mustcatch = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 3
  store i8 0, i8* %je_mustcatch, align 1
  %je_ret1 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 2
  %3 = load i32, i32* %je_ret1, align 4
  store i32 %3, i32* %x, align 4
  store i32 %3, i32* %tmp
  %4 = load i32, i32* %tmp
  %5 = load %struct.av*, %struct.av** @PL_endav, align 8
  %tobool2 = icmp ne %struct.av* %5, null
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %6 = load i8, i8* @PL_minus_c, align 1
  %tobool3 = icmp ne i8 %6, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* @PL_scopestack_ix, align 4
  %8 = load %struct.av*, %struct.av** @PL_endav, align 8
  call void @Perl_call_list(i32 %7, %struct.av* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %land.lhs.true, %if.then
  %je_prev6 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 1
  %9 = load %struct.jmpenv*, %struct.jmpenv** %je_prev6, align 8
  store %struct.jmpenv* %9, %struct.jmpenv** @PL_top_env, align 8
  store %struct.jmpenv* %9, %struct.jmpenv** %tmp5
  %10 = load %struct.jmpenv*, %struct.jmpenv** %tmp5
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  call void @Perl_pop_scope()
  %11 = load i32, i32* @PL_tmps_ix, align 4
  %12 = load i32, i32* @PL_tmps_floor, align 4
  %cmp = icmp sgt i32 %11, %12
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  call void @Perl_free_tmps()
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %call11 = call i32 @Perl_my_fflush_all()
  %13 = load i32 ()*, i32 ()** @PL_threadhook, align 8
  %call12 = call i32 %13()
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  %14 = load i32, i32* @PL_statusvalue, align 4
  store i32 %14, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  %15 = load %struct.op*, %struct.op** @PL_main_root, align 8
  %tobool16 = icmp ne %struct.op* %15, null
  br i1 %tobool16, label %if.then.17, label %if.end.26

if.then.17:                                       ; preds = %if.end.15
  %16 = load %struct.cv*, %struct.cv** @PL_main_cv, align 8
  %sv_any = getelementptr inbounds %struct.cv, %struct.cv* %16, i32 0, i32 0
  %17 = load %struct.xpvcv*, %struct.xpvcv** %sv_any, align 8
  %xcv_padlist = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %17, i32 0, i32 15
  %18 = load %struct.av*, %struct.av** %xcv_padlist, align 8
  %tobool18 = icmp ne %struct.av* %18, null
  br i1 %tobool18, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %if.then.17
  %19 = load %struct.cv*, %struct.cv** @PL_main_cv, align 8
  %sv_any20 = getelementptr inbounds %struct.cv, %struct.cv* %19, i32 0, i32 0
  %20 = load %struct.xpvcv*, %struct.xpvcv** %sv_any20, align 8
  %xcv_padlist21 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %20, i32 0, i32 15
  %21 = load %struct.av*, %struct.av** %xcv_padlist21, align 8
  %sv_any22 = getelementptr inbounds %struct.av, %struct.av* %21, i32 0, i32 0
  %22 = load %struct.xpvav*, %struct.xpvav** %sv_any22, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %22, i32 0, i32 0
  %23 = load i8*, i8** %xav_array, align 8
  %24 = bitcast i8* %23 to %struct.sv**
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %24, i64 1
  %25 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %26 = bitcast %struct.sv* %25 to %struct.av*
  store %struct.av* %26, %struct.av** @PL_comppad, align 8
  %27 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %sv_any23 = getelementptr inbounds %struct.av, %struct.av* %27, i32 0, i32 0
  %28 = load %struct.xpvav*, %struct.xpvav** %sv_any23, align 8
  %xav_array24 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %28, i32 0, i32 0
  %29 = load i8*, i8** %xav_array24, align 8
  %30 = bitcast i8* %29 to %struct.sv**
  store %struct.sv** %30, %struct.sv*** @PL_curpad, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.19, %if.then.17
  %31 = load %struct.op*, %struct.op** @PL_main_root, align 8
  call void @Perl_op_free(%struct.op* %31)
  store %struct.op* null, %struct.op** @PL_main_root, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.15
  store volatile %struct.cop* @PL_compiling, %struct.cop** @PL_curcop, align 8
  store %struct.op* null, %struct.op** @PL_main_start, align 8
  %32 = load %struct.cv*, %struct.cv** @PL_main_cv, align 8
  %33 = bitcast %struct.cv* %32 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %33)
  store %struct.cv* null, %struct.cv** @PL_main_cv, align 8
  store i8 1, i8* @PL_dirty, align 1
  call void @PerlIO_destruct()
  %34 = load i32, i32* @PL_sv_objcount, align 4
  %tobool27 = icmp ne i32 %34, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  call void @Perl_sv_clean_objs()
  store i32 0, i32* @PL_sv_objcount, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.26
  %35 = load %struct.sv*, %struct.sv** @PL_warnhook, align 8
  call void @Perl_sv_free(%struct.sv* %35)
  store %struct.sv* null, %struct.sv** @PL_warnhook, align 8
  %36 = load %struct.sv*, %struct.sv** @PL_diehook, align 8
  call void @Perl_sv_free(%struct.sv* %36)
  store %struct.sv* null, %struct.sv** @PL_diehook, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.29
  %37 = load i32, i32* @PL_exitlistlen, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* @PL_exitlistlen, align 4
  %cmp30 = icmp sgt i32 %37, 0
  br i1 %cmp30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %38 = load i32, i32* @PL_exitlistlen, align 4
  %idxprom = sext i32 %38 to i64
  %39 = load %struct.exitlistentry*, %struct.exitlistentry** @PL_exitlist, align 8
  %arrayidx32 = getelementptr inbounds %struct.exitlistentry, %struct.exitlistentry* %39, i64 %idxprom
  %fn = getelementptr inbounds %struct.exitlistentry, %struct.exitlistentry* %arrayidx32, i32 0, i32 0
  %40 = load void (i8*)*, void (i8*)** %fn, align 8
  %41 = load i32, i32* @PL_exitlistlen, align 4
  %idxprom33 = sext i32 %41 to i64
  %42 = load %struct.exitlistentry*, %struct.exitlistentry** @PL_exitlist, align 8
  %arrayidx34 = getelementptr inbounds %struct.exitlistentry, %struct.exitlistentry* %42, i64 %idxprom33
  %ptr = getelementptr inbounds %struct.exitlistentry, %struct.exitlistentry* %arrayidx34, i32 0, i32 1
  %43 = load i8*, i8** %ptr, align 8
  call void %40(i8* %43)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %44 = load %struct.exitlistentry*, %struct.exitlistentry** @PL_exitlist, align 8
  %45 = bitcast %struct.exitlistentry* %44 to i8*
  call void @Perl_safesysfree(i8* %45)
  store %struct.exitlistentry* null, %struct.exitlistentry** @PL_exitlist, align 8
  store i32 0, i32* @PL_exitlistlen, align 4
  %46 = load volatile i32, i32* %destruct_level, align 4
  %cmp35 = icmp eq i32 %46, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %while.end
  call void @PerlIO_cleanup()
  %47 = load i32, i32* @PL_statusvalue, align 4
  store i32 %47, i32* %retval
  br label %return

if.end.38:                                        ; preds = %while.end
  %48 = load i8**, i8*** @environ, align 8
  %49 = load i8**, i8*** @PL_origenviron, align 8
  %cmp39 = icmp ne i8** %48, %49
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.50

land.lhs.true.41:                                 ; preds = %if.end.38
  %50 = load i32, i32* @PL_use_safe_putenv, align 4
  %tobool42 = icmp ne i32 %50, 0
  br i1 %tobool42, label %if.end.50, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true.41
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.43
  %51 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %51 to i64
  %52 = load i8**, i8*** @environ, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %52, i64 %idxprom45
  %53 = load i8*, i8** %arrayidx46, align 8
  %tobool47 = icmp ne i8* %53, null
  br i1 %tobool47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %54 to i64
  %55 = load i8**, i8*** @environ, align 8
  %arrayidx49 = getelementptr inbounds i8*, i8** %55, i64 %idxprom48
  %56 = load i8*, i8** %arrayidx49, align 8
  call void @Perl_safesysfree(i8* %56)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i32, i32* %i, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load i8**, i8*** @environ, align 8
  %59 = bitcast i8** %58 to i8*
  call void @Perl_safesysfree(i8* %59)
  %60 = load i8**, i8*** @PL_origenviron, align 8
  store i8** %60, i8*** @environ, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %for.end, %land.lhs.true.41, %if.end.38
  call void @Perl_setdefout(%struct.gv* null)
  %61 = load %struct.hv*, %struct.hv** @PL_stashcache, align 8
  %62 = bitcast %struct.hv* %61 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %62)
  store %struct.hv* null, %struct.hv** @PL_stashcache, align 8
  %63 = load volatile %struct._PerlIO**, %struct._PerlIO*** @PL_rsfp, align 8
  %tobool51 = icmp ne %struct._PerlIO** %63, null
  br i1 %tobool51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end.50
  %64 = load volatile %struct._PerlIO**, %struct._PerlIO*** @PL_rsfp, align 8
  %call53 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %64)
  store volatile %struct._PerlIO** null, %struct._PerlIO*** @PL_rsfp, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.end.50
  %65 = load %struct.av*, %struct.av** @PL_rsfp_filters, align 8
  %66 = bitcast %struct.av* %65 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %66)
  store %struct.av* null, %struct.av** @PL_rsfp_filters, align 8
  store i8 0, i8* @PL_preprocess, align 1
  store i8 0, i8* @PL_minus_n, align 1
  store i8 0, i8* @PL_minus_p, align 1
  store i8 0, i8* @PL_minus_l, align 1
  store i8 0, i8* @PL_minus_a, align 1
  store i8 0, i8* @PL_minus_F, align 1
  store i8 0, i8* @PL_doswitches, align 1
  store i8 0, i8* @PL_dowarn, align 1
  store i8 0, i8* @PL_doextract, align 1
  store i8 0, i8* @PL_sawampersand, align 1
  store i8 0, i8* @PL_unsafe, align 1
  %67 = load i8*, i8** @PL_inplace, align 8
  call void @Perl_safesysfree(i8* %67)
  store i8* null, i8** @PL_inplace, align 8
  %68 = load %struct.sv*, %struct.sv** @PL_patchlevel, align 8
  call void @Perl_sv_free(%struct.sv* %68)
  %69 = load %struct.sv*, %struct.sv** @PL_e_script, align 8
  %tobool55 = icmp ne %struct.sv* %69, null
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.54
  %70 = load %struct.sv*, %struct.sv** @PL_e_script, align 8
  call void @Perl_sv_free(%struct.sv* %70)
  store %struct.sv* null, %struct.sv** @PL_e_script, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.54
  store i32 0, i32* @PL_perldb, align 4
  %71 = load %struct.sv*, %struct.sv** @PL_ofs_sv, align 8
  call void @Perl_sv_free(%struct.sv* %71)
  store %struct.sv* null, %struct.sv** @PL_ofs_sv, align 8
  %72 = load %struct.sv*, %struct.sv** @PL_ors_sv, align 8
  call void @Perl_sv_free(%struct.sv* %72)
  store %struct.sv* null, %struct.sv** @PL_ors_sv, align 8
  %73 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  call void @Perl_sv_free(%struct.sv* %73)
  store %struct.sv* null, %struct.sv** @PL_rs, align 8
  store i32 0, i32* @PL_multiline, align 4
  %74 = load i8*, i8** @PL_osname, align 8
  call void @Perl_safesysfree(i8* %74)
  store i8* null, i8** @PL_osname, align 8
  %75 = load %struct.sv*, %struct.sv** @PL_statname, align 8
  call void @Perl_sv_free(%struct.sv* %75)
  store %struct.sv* null, %struct.sv** @PL_statname, align 8
  store %struct.gv* null, %struct.gv** @PL_statgv, align 8
  %76 = load %struct.sv*, %struct.sv** @PL_lastscream, align 8
  call void @Perl_sv_free(%struct.sv* %76)
  store %struct.sv* null, %struct.sv** @PL_lastscream, align 8
  %77 = load i32*, i32** @PL_screamfirst, align 8
  %78 = bitcast i32* %77 to i8*
  call void @Perl_safesysfree(i8* %78)
  store i32* null, i32** @PL_screamfirst, align 8
  %79 = load i32*, i32** @PL_screamnext, align 8
  %80 = bitcast i32* %79 to i8*
  call void @Perl_safesysfree(i8* %80)
  store i32* null, i32** @PL_screamnext, align 8
  %81 = load i8*, i8** @PL_efloatbuf, align 8
  call void @Perl_safesysfree(i8* %81)
  store i8* null, i8** @PL_efloatbuf, align 8
  store i64 0, i64* @PL_efloatsize, align 8
  %82 = load %struct.av*, %struct.av** @PL_beginav, align 8
  %83 = bitcast %struct.av* %82 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %83)
  %84 = load %struct.av*, %struct.av** @PL_beginav_save, align 8
  %85 = bitcast %struct.av* %84 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %85)
  %86 = load %struct.av*, %struct.av** @PL_endav, align 8
  %87 = bitcast %struct.av* %86 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %87)
  %88 = load %struct.av*, %struct.av** @PL_checkav, align 8
  %89 = bitcast %struct.av* %88 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %89)
  %90 = load %struct.av*, %struct.av** @PL_checkav_save, align 8
  %91 = bitcast %struct.av* %90 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %91)
  %92 = load %struct.av*, %struct.av** @PL_initav, align 8
  %93 = bitcast %struct.av* %92 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %93)
  store %struct.av* null, %struct.av** @PL_beginav, align 8
  store %struct.av* null, %struct.av** @PL_beginav_save, align 8
  store %struct.av* null, %struct.av** @PL_endav, align 8
  store %struct.av* null, %struct.av** @PL_checkav, align 8
  store %struct.av* null, %struct.av** @PL_checkav_save, align 8
  store %struct.av* null, %struct.av** @PL_initav, align 8
  store %struct.gv* null, %struct.gv** @PL_envgv, align 8
  store %struct.gv* null, %struct.gv** @PL_incgv, align 8
  store %struct.gv* null, %struct.gv** @PL_hintgv, align 8
  store %struct.gv* null, %struct.gv** @PL_errgv, align 8
  store %struct.gv* null, %struct.gv** @PL_argvgv, align 8
  store %struct.gv* null, %struct.gv** @PL_argvoutgv, align 8
  store %struct.gv* null, %struct.gv** @PL_stdingv, align 8
  store %struct.gv* null, %struct.gv** @PL_stderrgv, align 8
  store %struct.gv* null, %struct.gv** @PL_last_in_gv, align 8
  store %struct.gv* null, %struct.gv** @PL_replgv, align 8
  store %struct.gv* null, %struct.gv** @PL_DBgv, align 8
  store %struct.gv* null, %struct.gv** @PL_DBline, align 8
  store %struct.gv* null, %struct.gv** @PL_DBsub, align 8
  store %struct.sv* null, %struct.sv** @PL_DBsingle, align 8
  store %struct.sv* null, %struct.sv** @PL_DBtrace, align 8
  store %struct.sv* null, %struct.sv** @PL_DBsignal, align 8
  store %struct.cv* null, %struct.cv** @PL_DBcv, align 8
  store %struct.av* null, %struct.av** @PL_dbargs, align 8
  store %struct.hv* null, %struct.hv** @PL_debstash, align 8
  %94 = load %struct.av*, %struct.av** @PL_argvout_stack, align 8
  %95 = bitcast %struct.av* %94 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %95)
  store %struct.av* null, %struct.av** @PL_argvout_stack, align 8
  %96 = load %struct.hv*, %struct.hv** @PL_modglobal, align 8
  %97 = bitcast %struct.hv* %96 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %97)
  store %struct.hv* null, %struct.hv** @PL_modglobal, align 8
  %98 = load %struct.av*, %struct.av** @PL_preambleav, align 8
  %99 = bitcast %struct.av* %98 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %99)
  store %struct.av* null, %struct.av** @PL_preambleav, align 8
  %100 = load %struct.sv*, %struct.sv** @PL_subname, align 8
  call void @Perl_sv_free(%struct.sv* %100)
  store %struct.sv* null, %struct.sv** @PL_subname, align 8
  %101 = load %struct.sv*, %struct.sv** @PL_linestr, align 8
  call void @Perl_sv_free(%struct.sv* %101)
  store %struct.sv* null, %struct.sv** @PL_linestr, align 8
  %102 = load %struct.hv*, %struct.hv** @PL_pidstatus, align 8
  %103 = bitcast %struct.hv* %102 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %103)
  store %struct.hv* null, %struct.hv** @PL_pidstatus, align 8
  %104 = load %struct.sv*, %struct.sv** @PL_toptarget, align 8
  call void @Perl_sv_free(%struct.sv* %104)
  store %struct.sv* null, %struct.sv** @PL_toptarget, align 8
  %105 = load %struct.sv*, %struct.sv** @PL_bodytarget, align 8
  call void @Perl_sv_free(%struct.sv* %105)
  store %struct.sv* null, %struct.sv** @PL_bodytarget, align 8
  store %struct.sv* null, %struct.sv** @PL_formtarget, align 8
  %106 = load %struct.sv*, %struct.sv** @PL_utf8_alnum, align 8
  call void @Perl_sv_free(%struct.sv* %106)
  %107 = load %struct.sv*, %struct.sv** @PL_utf8_alnumc, align 8
  call void @Perl_sv_free(%struct.sv* %107)
  %108 = load %struct.sv*, %struct.sv** @PL_utf8_ascii, align 8
  call void @Perl_sv_free(%struct.sv* %108)
  %109 = load %struct.sv*, %struct.sv** @PL_utf8_alpha, align 8
  call void @Perl_sv_free(%struct.sv* %109)
  %110 = load %struct.sv*, %struct.sv** @PL_utf8_space, align 8
  call void @Perl_sv_free(%struct.sv* %110)
  %111 = load %struct.sv*, %struct.sv** @PL_utf8_cntrl, align 8
  call void @Perl_sv_free(%struct.sv* %111)
  %112 = load %struct.sv*, %struct.sv** @PL_utf8_graph, align 8
  call void @Perl_sv_free(%struct.sv* %112)
  %113 = load %struct.sv*, %struct.sv** @PL_utf8_digit, align 8
  call void @Perl_sv_free(%struct.sv* %113)
  %114 = load %struct.sv*, %struct.sv** @PL_utf8_upper, align 8
  call void @Perl_sv_free(%struct.sv* %114)
  %115 = load %struct.sv*, %struct.sv** @PL_utf8_lower, align 8
  call void @Perl_sv_free(%struct.sv* %115)
  %116 = load %struct.sv*, %struct.sv** @PL_utf8_print, align 8
  call void @Perl_sv_free(%struct.sv* %116)
  %117 = load %struct.sv*, %struct.sv** @PL_utf8_punct, align 8
  call void @Perl_sv_free(%struct.sv* %117)
  %118 = load %struct.sv*, %struct.sv** @PL_utf8_xdigit, align 8
  call void @Perl_sv_free(%struct.sv* %118)
  %119 = load %struct.sv*, %struct.sv** @PL_utf8_mark, align 8
  call void @Perl_sv_free(%struct.sv* %119)
  %120 = load %struct.sv*, %struct.sv** @PL_utf8_toupper, align 8
  call void @Perl_sv_free(%struct.sv* %120)
  %121 = load %struct.sv*, %struct.sv** @PL_utf8_totitle, align 8
  call void @Perl_sv_free(%struct.sv* %121)
  %122 = load %struct.sv*, %struct.sv** @PL_utf8_tolower, align 8
  call void @Perl_sv_free(%struct.sv* %122)
  %123 = load %struct.sv*, %struct.sv** @PL_utf8_tofold, align 8
  call void @Perl_sv_free(%struct.sv* %123)
  %124 = load %struct.sv*, %struct.sv** @PL_utf8_idstart, align 8
  call void @Perl_sv_free(%struct.sv* %124)
  %125 = load %struct.sv*, %struct.sv** @PL_utf8_idcont, align 8
  call void @Perl_sv_free(%struct.sv* %125)
  store %struct.sv* null, %struct.sv** @PL_utf8_alnum, align 8
  store %struct.sv* null, %struct.sv** @PL_utf8_alnumc, align 8
  store %struct.sv* null, %struct.sv** @PL_utf8_ascii, align 8
  store %struct.sv* null, %struct.sv** @PL_utf8_alpha, align 8
  store %struct.sv* null, %struct.sv** @PL_utf8_space, align 8
  store %struct.sv* null, %struct.sv** @PL_utf8_cntrl, align 8
  store %struct.sv* null, %struct.sv** @PL_utf8_graph, align 8
  store %struct.sv* null, %struct.sv** @PL_utf8_digit, align 8
  store %struct.sv* null, %struct.sv** @PL_utf8_upper, align 8
  store %struct.sv* null, %struct.sv** @PL_utf8_lower, align 8
  store %struct.sv* null, %struct.sv** @PL_utf8_print, align 8
  store %struct.sv* null, %struct.sv** @PL_utf8_punct, align 8
  store %struct.sv* null, %struct.sv** @PL_utf8_xdigit, align 8
  store %struct.sv* null, %struct.sv** @PL_utf8_mark, align 8
  store %struct.sv* null, %struct.sv** @PL_utf8_toupper, align 8
  store %struct.sv* null, %struct.sv** @PL_utf8_totitle, align 8
  store %struct.sv* null, %struct.sv** @PL_utf8_tolower, align 8
  store %struct.sv* null, %struct.sv** @PL_utf8_tofold, align 8
  store %struct.sv* null, %struct.sv** @PL_utf8_idstart, align 8
  store %struct.sv* null, %struct.sv** @PL_utf8_idcont, align 8
  %126 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  %cmp58 = icmp eq %struct.sv* %126, null
  br i1 %cmp58, label %if.end.66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.57
  %127 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  %cmp60 = icmp eq %struct.sv* %127, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp60, label %if.end.66, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false
  %128 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  %cmp63 = icmp eq %struct.sv* %128, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp63, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %lor.lhs.false.62
  %129 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  call void @Perl_sv_free(%struct.sv* %129)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %lor.lhs.false.62, %lor.lhs.false, %if.end.57
  store %struct.sv* null, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  %130 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 15), align 8
  %cmp67 = icmp eq %struct.sv* %130, null
  br i1 %cmp67, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %if.end.66
  %131 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 15), align 8
  call void @Perl_sv_free(%struct.sv* %131)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.end.66
  store %struct.sv* null, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 15), align 8
  %132 = load %struct.gv*, %struct.gv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 10), align 8
  %133 = bitcast %struct.gv* %132 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %133)
  store %struct.gv* null, %struct.gv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 10), align 8
  %134 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  store %struct.hv* %134, %struct.hv** %hv, align 8
  store %struct.hv* null, %struct.hv** @PL_defstash, align 8
  %135 = load %struct.hv*, %struct.hv** %hv, align 8
  %136 = bitcast %struct.hv* %135 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %136)
  %137 = load %struct.sv*, %struct.sv** @PL_curstname, align 8
  call void @Perl_sv_free(%struct.sv* %137)
  store %struct.sv* null, %struct.sv** @PL_curstname, align 8
  %138 = load %struct.sv*, %struct.sv** @PL_errors, align 8
  call void @Perl_sv_free(%struct.sv* %138)
  store %struct.sv* null, %struct.sv** @PL_errors, align 8
  %139 = load i32, i32* @PL_tmps_ix, align 4
  %140 = load i32, i32* @PL_tmps_floor, align 4
  %cmp71 = icmp sgt i32 %139, %140
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.70
  call void @Perl_free_tmps()
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.end.70
  %141 = load volatile i32, i32* %destruct_level, align 4
  %cmp75 = icmp sge i32 %141, 2
  br i1 %cmp75, label %land.lhs.true.77, label %if.end.118

land.lhs.true.77:                                 ; preds = %if.end.74
  %142 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %142, i32 0, i32 14
  %143 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp78 = icmp eq %struct.sv* %143, null
  br i1 %cmp78, label %if.then.95, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %land.lhs.true.77
  %144 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings81 = getelementptr inbounds %struct.cop, %struct.cop* %144, i32 0, i32 14
  %145 = load %struct.sv*, %struct.sv** %cop_warnings81, align 8
  %cmp82 = icmp eq %struct.sv* %145, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp82, label %if.then.95, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %lor.lhs.false.80
  %146 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings85 = getelementptr inbounds %struct.cop, %struct.cop* %146, i32 0, i32 14
  %147 = load %struct.sv*, %struct.sv** %cop_warnings85, align 8
  %cmp86 = icmp ne %struct.sv* %147, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp86, label %land.lhs.true.88, label %if.end.118

land.lhs.true.88:                                 ; preds = %lor.lhs.false.84
  %148 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings89 = getelementptr inbounds %struct.cop, %struct.cop* %148, i32 0, i32 14
  %149 = load %struct.sv*, %struct.sv** %cop_warnings89, align 8
  %sv_any90 = getelementptr inbounds %struct.sv, %struct.sv* %149, i32 0, i32 0
  %150 = load i8*, i8** %sv_any90, align 8
  %151 = bitcast i8* %150 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %151, i32 0, i32 0
  %152 = load i8*, i8** %xpv_pv, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %152, i64 6
  %153 = load i8, i8* %arrayidx91, align 1
  %conv92 = sext i8 %153 to i32
  %and93 = and i32 %conv92, 1
  %tobool94 = icmp ne i32 %and93, 0
  br i1 %tobool94, label %if.then.95, label %if.end.118

if.then.95:                                       ; preds = %land.lhs.true.88, %lor.lhs.false.80, %land.lhs.true.77
  %154 = load i32, i32* @PL_scopestack_ix, align 4
  %cmp96 = icmp ne i32 %154, 0
  br i1 %cmp96, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %if.then.95
  %155 = load i32, i32* @PL_scopestack_ix, align 4
  %conv99 = sext i32 %155 to i64
  call void (i32, i8*, ...) @Perl_warner(i32 24, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0), i64 %conv99)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %if.then.95
  %156 = load i32, i32* @PL_savestack_ix, align 4
  %cmp101 = icmp ne i32 %156, 0
  br i1 %cmp101, label %if.then.103, label %if.end.105

if.then.103:                                      ; preds = %if.end.100
  %157 = load i32, i32* @PL_savestack_ix, align 4
  %conv104 = sext i32 %157 to i64
  call void (i32, i8*, ...) @Perl_warner(i32 24, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0), i64 %conv104)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.103, %if.end.100
  %158 = load i32, i32* @PL_tmps_floor, align 4
  %cmp106 = icmp ne i32 %158, -1
  br i1 %cmp106, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %if.end.105
  %159 = load i32, i32* @PL_tmps_floor, align 4
  %conv109 = sext i32 %159 to i64
  %add = add nsw i64 %conv109, 1
  call void (i32, i8*, ...) @Perl_warner(i32 24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0), i64 %add)
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %if.end.105
  %160 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %160, i32 0, i32 2
  %161 = load i32, i32* %si_cxix, align 4
  %cmp111 = icmp ne i32 %161, -1
  br i1 %cmp111, label %if.then.113, label %if.end.117

if.then.113:                                      ; preds = %if.end.110
  %162 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix114 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %162, i32 0, i32 2
  %163 = load i32, i32* %si_cxix114, align 4
  %conv115 = sext i32 %163 to i64
  %add116 = add nsw i64 %conv115, 1
  call void (i32, i8*, ...) @Perl_warner(i32 24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i32 0, i32 0), i64 %add116)
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.113, %if.end.110
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %land.lhs.true.88, %lor.lhs.false.84, %if.end.74
  %164 = load %struct.av*, %struct.av** @PL_fdpid, align 8
  %sv_flags = getelementptr inbounds %struct.av, %struct.av* %164, i32 0, i32 2
  %165 = load i32, i32* %sv_flags, align 4
  %or = or i32 %165, 255
  store i32 %or, i32* %sv_flags, align 4
  %166 = load %struct.hv*, %struct.hv** @PL_strtab, align 8
  %sv_flags119 = getelementptr inbounds %struct.hv, %struct.hv* %166, i32 0, i32 2
  %167 = load i32, i32* %sv_flags119, align 4
  %or120 = or i32 %167, 255
  store i32 %or120, i32* %sv_flags119, align 4
  br label %while.cond.121

while.cond.121:                                   ; preds = %while.body.126, %if.end.118
  %168 = load i32, i32* @PL_sv_count, align 4
  %cmp122 = icmp sgt i32 %168, 2
  br i1 %cmp122, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.121
  %call124 = call i32 @Perl_sv_clean_all()
  %tobool125 = icmp ne i32 %call124, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.121
  %169 = phi i1 [ false, %while.cond.121 ], [ %tobool125, %land.rhs ]
  br i1 %169, label %while.body.126, label %while.end.127

while.body.126:                                   ; preds = %land.end
  br label %while.cond.121

while.end.127:                                    ; preds = %land.end
  %170 = load %struct.av*, %struct.av** @PL_fdpid, align 8
  %sv_flags128 = getelementptr inbounds %struct.av, %struct.av* %170, i32 0, i32 2
  %171 = load i32, i32* %sv_flags128, align 4
  %and129 = and i32 %171, -256
  store i32 %and129, i32* %sv_flags128, align 4
  %172 = load %struct.av*, %struct.av** @PL_fdpid, align 8
  %sv_flags130 = getelementptr inbounds %struct.av, %struct.av* %172, i32 0, i32 2
  %173 = load i32, i32* %sv_flags130, align 4
  %or131 = or i32 %173, 10
  store i32 %or131, i32* %sv_flags130, align 4
  %174 = load %struct.hv*, %struct.hv** @PL_strtab, align 8
  %sv_flags132 = getelementptr inbounds %struct.hv, %struct.hv* %174, i32 0, i32 2
  %175 = load i32, i32* %sv_flags132, align 4
  %and133 = and i32 %175, -256
  store i32 %and133, i32* %sv_flags132, align 4
  %176 = load %struct.hv*, %struct.hv** @PL_strtab, align 8
  %sv_flags134 = getelementptr inbounds %struct.hv, %struct.hv* %176, i32 0, i32 2
  %177 = load i32, i32* %sv_flags134, align 4
  %or135 = or i32 %177, 11
  store i32 %or135, i32* %sv_flags134, align 4
  %178 = load %struct.av*, %struct.av** @PL_fdpid, align 8
  %sv_any136 = getelementptr inbounds %struct.av, %struct.av* %178, i32 0, i32 0
  %179 = load %struct.xpvav*, %struct.xpvav** %sv_any136, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %179, i32 0, i32 9
  %180 = load i8, i8* %xav_flags, align 1
  %conv137 = zext i8 %180 to i32
  %and138 = and i32 %conv137, -2
  %conv139 = trunc i32 %and138 to i8
  store i8 %conv139, i8* %xav_flags, align 1
  %181 = load %struct.av*, %struct.av** @PL_fdpid, align 8
  %182 = bitcast %struct.av* %181 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %182)
  store %struct.av* null, %struct.av** @PL_fdpid, align 8
  store i32 0, i32* %riter, align 4
  %183 = load %struct.hv*, %struct.hv** @PL_strtab, align 8
  %sv_any144 = getelementptr inbounds %struct.hv, %struct.hv* %183, i32 0, i32 0
  %184 = load %struct.xpvhv*, %struct.xpvhv** %sv_any144, align 8
  %xhv_max = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %184, i32 0, i32 2
  %185 = load i64, i64* %xhv_max, align 8
  %conv145 = trunc i64 %185 to i32
  store i32 %conv145, i32* %max, align 4
  %186 = load %struct.hv*, %struct.hv** @PL_strtab, align 8
  %sv_any146 = getelementptr inbounds %struct.hv, %struct.hv* %186, i32 0, i32 0
  %187 = load %struct.xpvhv*, %struct.xpvhv** %sv_any146, align 8
  %xhv_array = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %187, i32 0, i32 0
  %188 = bitcast i8** %xhv_array to %struct.he***
  %189 = load %struct.he**, %struct.he*** %188, align 8
  store %struct.he** %189, %struct.he*** %array, align 8
  %190 = load %struct.he**, %struct.he*** %array, align 8
  %arrayidx147 = getelementptr inbounds %struct.he*, %struct.he** %190, i64 0
  %191 = load %struct.he*, %struct.he** %arrayidx147, align 8
  store %struct.he* %191, %struct.he** %hent, align 8
  br label %for.cond.148

for.cond.148:                                     ; preds = %if.end.183, %while.end.127
  %192 = load %struct.he*, %struct.he** %hent, align 8
  %tobool149 = icmp ne %struct.he* %192, null
  br i1 %tobool149, label %land.lhs.true.150, label %if.end.173

land.lhs.true.150:                                ; preds = %for.cond.148
  %193 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings151 = getelementptr inbounds %struct.cop, %struct.cop* %193, i32 0, i32 14
  %194 = load %struct.sv*, %struct.sv** %cop_warnings151, align 8
  %cmp152 = icmp eq %struct.sv* %194, null
  br i1 %cmp152, label %if.then.170, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %land.lhs.true.150
  %195 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings155 = getelementptr inbounds %struct.cop, %struct.cop* %195, i32 0, i32 14
  %196 = load %struct.sv*, %struct.sv** %cop_warnings155, align 8
  %cmp156 = icmp eq %struct.sv* %196, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp156, label %if.then.170, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %lor.lhs.false.154
  %197 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings159 = getelementptr inbounds %struct.cop, %struct.cop* %197, i32 0, i32 14
  %198 = load %struct.sv*, %struct.sv** %cop_warnings159, align 8
  %cmp160 = icmp ne %struct.sv* %198, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp160, label %land.lhs.true.162, label %if.end.173

land.lhs.true.162:                                ; preds = %lor.lhs.false.158
  %199 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings163 = getelementptr inbounds %struct.cop, %struct.cop* %199, i32 0, i32 14
  %200 = load %struct.sv*, %struct.sv** %cop_warnings163, align 8
  %sv_any164 = getelementptr inbounds %struct.sv, %struct.sv* %200, i32 0, i32 0
  %201 = load i8*, i8** %sv_any164, align 8
  %202 = bitcast i8* %201 to %struct.xpv*
  %xpv_pv165 = getelementptr inbounds %struct.xpv, %struct.xpv* %202, i32 0, i32 0
  %203 = load i8*, i8** %xpv_pv165, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %203, i64 6
  %204 = load i8, i8* %arrayidx166, align 1
  %conv167 = sext i8 %204 to i32
  %and168 = and i32 %conv167, 1
  %tobool169 = icmp ne i32 %and168, 0
  br i1 %tobool169, label %if.then.170, label %if.end.173

if.then.170:                                      ; preds = %land.lhs.true.162, %lor.lhs.false.154, %land.lhs.true.150
  %205 = load %struct.he*, %struct.he** %hent, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %205, i32 0, i32 2
  %206 = load %struct.sv*, %struct.sv** %hent_val, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv* %206 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %207 = load %struct.he*, %struct.he** %hent, align 8
  %hent_hek = getelementptr inbounds %struct.he, %struct.he* %207, i32 0, i32 1
  %208 = load %struct.hek*, %struct.hek** %hent_hek, align 8
  %hek_key = getelementptr inbounds %struct.hek, %struct.hek* %208, i32 0, i32 2
  %arraydecay171 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key, i32 0, i32 0
  call void (i32, i8*, ...) @Perl_warner(i32 24, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0), i64 %sub.ptr.div, i8* %arraydecay171)
  %209 = load %struct.he*, %struct.he** %hent, align 8
  %hent_val172 = getelementptr inbounds %struct.he, %struct.he* %209, i32 0, i32 2
  store %struct.sv* null, %struct.sv** %hent_val172, align 8
  %210 = load %struct.he*, %struct.he** %hent, align 8
  %hent_next = getelementptr inbounds %struct.he, %struct.he* %210, i32 0, i32 0
  %211 = load %struct.he*, %struct.he** %hent_next, align 8
  store %struct.he* %211, %struct.he** %hent, align 8
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.170, %land.lhs.true.162, %lor.lhs.false.158, %for.cond.148
  %212 = load %struct.he*, %struct.he** %hent, align 8
  %tobool174 = icmp ne %struct.he* %212, null
  br i1 %tobool174, label %if.end.183, label %if.then.175

if.then.175:                                      ; preds = %if.end.173
  %213 = load i32, i32* %riter, align 4
  %inc176 = add nsw i32 %213, 1
  store i32 %inc176, i32* %riter, align 4
  %214 = load i32, i32* %max, align 4
  %cmp177 = icmp sgt i32 %inc176, %214
  br i1 %cmp177, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %if.then.175
  br label %for.end.184

if.end.180:                                       ; preds = %if.then.175
  %215 = load i32, i32* %riter, align 4
  %idxprom181 = sext i32 %215 to i64
  %216 = load %struct.he**, %struct.he*** %array, align 8
  %arrayidx182 = getelementptr inbounds %struct.he*, %struct.he** %216, i64 %idxprom181
  %217 = load %struct.he*, %struct.he** %arrayidx182, align 8
  store %struct.he* %217, %struct.he** %hent, align 8
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.180, %if.end.173
  br label %for.cond.148

for.end.184:                                      ; preds = %if.then.179
  %218 = load %struct.hv*, %struct.hv** @PL_strtab, align 8
  %219 = bitcast %struct.hv* %218 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %219)
  store i32 0, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_yes, i32 0, i32 1), align 4
  call void @Perl_sv_clear(%struct.sv* @PL_sv_yes)
  store i8* null, i8** getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_yes, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_yes, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_no, i32 0, i32 1), align 4
  call void @Perl_sv_clear(%struct.sv* @PL_sv_no)
  store i8* null, i8** getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_no, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_no, i32 0, i32 2), align 4
  store i32 0, i32* %i186, align 4
  br label %for.cond.187

for.cond.187:                                     ; preds = %for.inc.201, %for.end.184
  %220 = load i32, i32* %i186, align 4
  %cmp188 = icmp sle i32 %220, 2
  br i1 %cmp188, label %for.body.190, label %for.end.203

for.body.190:                                     ; preds = %for.cond.187
  %221 = load i32, i32* %i186, align 4
  %idxprom191 = sext i32 %221 to i64
  %arrayidx192 = getelementptr inbounds [3 x %struct.sv], [3 x %struct.sv]* getelementptr inbounds (%struct.perl_debug_pad, %struct.perl_debug_pad* @PL_debug_pad, i32 0, i32 0), i32 0, i64 %idxprom191
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %arrayidx192, i32 0, i32 1
  store i32 0, i32* %sv_refcnt, align 4
  %222 = load i32, i32* %i186, align 4
  %idxprom193 = sext i32 %222 to i64
  %arrayidx194 = getelementptr inbounds [3 x %struct.sv], [3 x %struct.sv]* getelementptr inbounds (%struct.perl_debug_pad, %struct.perl_debug_pad* @PL_debug_pad, i32 0, i32 0), i32 0, i64 %idxprom193
  call void @Perl_sv_clear(%struct.sv* %arrayidx194)
  %223 = load i32, i32* %i186, align 4
  %idxprom195 = sext i32 %223 to i64
  %arrayidx196 = getelementptr inbounds [3 x %struct.sv], [3 x %struct.sv]* getelementptr inbounds (%struct.perl_debug_pad, %struct.perl_debug_pad* @PL_debug_pad, i32 0, i32 0), i32 0, i64 %idxprom195
  %sv_any197 = getelementptr inbounds %struct.sv, %struct.sv* %arrayidx196, i32 0, i32 0
  store i8* null, i8** %sv_any197, align 8
  %224 = load i32, i32* %i186, align 4
  %idxprom198 = sext i32 %224 to i64
  %arrayidx199 = getelementptr inbounds [3 x %struct.sv], [3 x %struct.sv]* getelementptr inbounds (%struct.perl_debug_pad, %struct.perl_debug_pad* @PL_debug_pad, i32 0, i32 0), i32 0, i64 %idxprom198
  %sv_flags200 = getelementptr inbounds %struct.sv, %struct.sv* %arrayidx199, i32 0, i32 2
  store i32 0, i32* %sv_flags200, align 4
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.body.190
  %225 = load i32, i32* %i186, align 4
  %inc202 = add nsw i32 %225, 1
  store i32 %inc202, i32* %i186, align 4
  br label %for.cond.187

for.end.203:                                      ; preds = %for.cond.187
  %226 = load i32, i32* @PL_sv_count, align 4
  %cmp204 = icmp ne i32 %226, 0
  br i1 %cmp204, label %land.lhs.true.206, label %if.end.228

land.lhs.true.206:                                ; preds = %for.end.203
  %227 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings207 = getelementptr inbounds %struct.cop, %struct.cop* %227, i32 0, i32 14
  %228 = load %struct.sv*, %struct.sv** %cop_warnings207, align 8
  %cmp208 = icmp eq %struct.sv* %228, null
  br i1 %cmp208, label %if.then.226, label %lor.lhs.false.210

lor.lhs.false.210:                                ; preds = %land.lhs.true.206
  %229 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings211 = getelementptr inbounds %struct.cop, %struct.cop* %229, i32 0, i32 14
  %230 = load %struct.sv*, %struct.sv** %cop_warnings211, align 8
  %cmp212 = icmp eq %struct.sv* %230, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp212, label %if.then.226, label %lor.lhs.false.214

lor.lhs.false.214:                                ; preds = %lor.lhs.false.210
  %231 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings215 = getelementptr inbounds %struct.cop, %struct.cop* %231, i32 0, i32 14
  %232 = load %struct.sv*, %struct.sv** %cop_warnings215, align 8
  %cmp216 = icmp ne %struct.sv* %232, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp216, label %land.lhs.true.218, label %if.end.228

land.lhs.true.218:                                ; preds = %lor.lhs.false.214
  %233 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings219 = getelementptr inbounds %struct.cop, %struct.cop* %233, i32 0, i32 14
  %234 = load %struct.sv*, %struct.sv** %cop_warnings219, align 8
  %sv_any220 = getelementptr inbounds %struct.sv, %struct.sv* %234, i32 0, i32 0
  %235 = load i8*, i8** %sv_any220, align 8
  %236 = bitcast i8* %235 to %struct.xpv*
  %xpv_pv221 = getelementptr inbounds %struct.xpv, %struct.xpv* %236, i32 0, i32 0
  %237 = load i8*, i8** %xpv_pv221, align 8
  %arrayidx222 = getelementptr inbounds i8, i8* %237, i64 6
  %238 = load i8, i8* %arrayidx222, align 1
  %conv223 = sext i8 %238 to i32
  %and224 = and i32 %conv223, 1
  %tobool225 = icmp ne i32 %and224, 0
  br i1 %tobool225, label %if.then.226, label %if.end.228

if.then.226:                                      ; preds = %land.lhs.true.218, %lor.lhs.false.210, %land.lhs.true.206
  %239 = load i32, i32* @PL_sv_count, align 4
  %conv227 = sext i32 %239 to i64
  call void (i32, i8*, ...) @Perl_warner(i32 24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i64 %conv227)
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.226, %land.lhs.true.218, %lor.lhs.false.214, %for.end.203
  store i32 0, i32* @PL_sv_count, align 4
  call void @PerlIO_cleanup()
  store i32 0, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_undef, i32 0, i32 1), align 4
  %240 = load i32, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_undef, i32 0, i32 2), align 4
  %and229 = and i32 %240, -8388609
  store i32 %and229, i32* getelementptr inbounds (%struct.sv, %struct.sv* @PL_sv_undef, i32 0, i32 2), align 4
  %241 = load i8*, i8** @PL_origfilename, align 8
  call void @Perl_safesysfree(i8* %241)
  store i8* null, i8** @PL_origfilename, align 8
  %242 = load i8**, i8*** @PL_reg_start_tmp, align 8
  %243 = bitcast i8** %242 to i8*
  call void @Perl_safesysfree(i8* %243)
  store i8** null, i8*** @PL_reg_start_tmp, align 8
  store i32 0, i32* @PL_reg_start_tmpl, align 4
  %244 = load %struct.pmop*, %struct.pmop** @PL_reg_curpm, align 8
  %tobool230 = icmp ne %struct.pmop* %244, null
  br i1 %tobool230, label %if.then.231, label %if.end.232

if.then.231:                                      ; preds = %if.end.228
  %245 = load %struct.pmop*, %struct.pmop** @PL_reg_curpm, align 8
  %246 = bitcast %struct.pmop* %245 to i8*
  call void @Perl_safesysfree(i8* %246)
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.231, %if.end.228
  %247 = load i8*, i8** @PL_reg_poscache, align 8
  call void @Perl_safesysfree(i8* %247)
  call void @Perl_free_tied_hv_pool()
  %248 = load i8*, i8** @PL_op_mask, align 8
  call void @Perl_safesysfree(i8* %248)
  %249 = load %struct.sv**, %struct.sv*** @PL_psig_ptr, align 8
  %250 = bitcast %struct.sv** %249 to i8*
  call void @Perl_safesysfree(i8* %250)
  store %struct.sv** null, %struct.sv*** @PL_psig_ptr, align 8
  %251 = load %struct.sv**, %struct.sv*** @PL_psig_name, align 8
  %252 = bitcast %struct.sv** %251 to i8*
  call void @Perl_safesysfree(i8* %252)
  store %struct.sv** null, %struct.sv*** @PL_psig_name, align 8
  %253 = load i8*, i8** @PL_bitcount, align 8
  call void @Perl_safesysfree(i8* %253)
  store i8* null, i8** @PL_bitcount, align 8
  %254 = load i32*, i32** @PL_psig_pend, align 8
  %255 = bitcast i32* %254 to i8*
  call void @Perl_safesysfree(i8* %255)
  store i32* null, i32** @PL_psig_pend, align 8
  store %struct.sv* null, %struct.sv** @PL_formfeed, align 8
  %256 = load i8*, i8** @PL_ofmt, align 8
  call void @Perl_safesysfree(i8* %256)
  store i8* null, i8** @PL_ofmt, align 8
  call void @S_nuke_stacks()
  store i8 0, i8* @PL_tainting, align 1
  store i8 0, i8* @PL_taint_warn, align 1
  store i32 0, i32* @PL_hints, align 4
  store volatile i32 0, i32* @PL_debug, align 4
  call void @Perl_sv_free_arenas()
  %257 = load %struct.sv*, %struct.sv** @PL_mess_sv, align 8
  %tobool233 = icmp ne %struct.sv* %257, null
  br i1 %tobool233, label %if.then.234, label %if.end.270

if.then.234:                                      ; preds = %if.end.232
  %258 = load %struct.sv*, %struct.sv** @PL_mess_sv, align 8
  %sv_flags235 = getelementptr inbounds %struct.sv, %struct.sv* %258, i32 0, i32 2
  %259 = load i32, i32* %sv_flags235, align 4
  %and236 = and i32 %259, 255
  %cmp237 = icmp uge i32 %and236, 7
  br i1 %cmp237, label %if.then.239, label %if.end.259

if.then.239:                                      ; preds = %if.then.234
  %260 = load %struct.sv*, %struct.sv** @PL_mess_sv, align 8
  %sv_any242 = getelementptr inbounds %struct.sv, %struct.sv* %260, i32 0, i32 0
  %261 = load i8*, i8** %sv_any242, align 8
  %262 = bitcast i8* %261 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %262, i32 0, i32 5
  %263 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  store %struct.magic* %263, %struct.magic** %mg, align 8
  br label %for.cond.243

for.cond.243:                                     ; preds = %for.inc.257, %if.then.239
  %264 = load %struct.magic*, %struct.magic** %mg, align 8
  %tobool244 = icmp ne %struct.magic* %264, null
  br i1 %tobool244, label %for.body.245, label %for.end.258

for.body.245:                                     ; preds = %for.cond.243
  %265 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_moremagic = getelementptr inbounds %struct.magic, %struct.magic* %265, i32 0, i32 0
  %266 = load %struct.magic*, %struct.magic** %mg_moremagic, align 8
  store %struct.magic* %266, %struct.magic** %moremagic, align 8
  %267 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_ptr = getelementptr inbounds %struct.magic, %struct.magic* %267, i32 0, i32 6
  %268 = load i8*, i8** %mg_ptr, align 8
  %tobool246 = icmp ne i8* %268, null
  br i1 %tobool246, label %land.lhs.true.247, label %if.end.256

land.lhs.true.247:                                ; preds = %for.body.245
  %269 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_type = getelementptr inbounds %struct.magic, %struct.magic* %269, i32 0, i32 3
  %270 = load i8, i8* %mg_type, align 1
  %conv248 = sext i8 %270 to i32
  %cmp249 = icmp ne i32 %conv248, 103
  br i1 %cmp249, label %land.lhs.true.251, label %if.end.256

land.lhs.true.251:                                ; preds = %land.lhs.true.247
  %271 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_len = getelementptr inbounds %struct.magic, %struct.magic* %271, i32 0, i32 7
  %272 = load i32, i32* %mg_len, align 4
  %cmp252 = icmp sge i32 %272, 0
  br i1 %cmp252, label %if.then.254, label %if.end.256

if.then.254:                                      ; preds = %land.lhs.true.251
  %273 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_ptr255 = getelementptr inbounds %struct.magic, %struct.magic* %273, i32 0, i32 6
  %274 = load i8*, i8** %mg_ptr255, align 8
  call void @Perl_safesysfree(i8* %274)
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.254, %land.lhs.true.251, %land.lhs.true.247, %for.body.245
  %275 = load %struct.magic*, %struct.magic** %mg, align 8
  %276 = bitcast %struct.magic* %275 to i8*
  call void @Perl_safesysfree(i8* %276)
  br label %for.inc.257

for.inc.257:                                      ; preds = %if.end.256
  %277 = load %struct.magic*, %struct.magic** %moremagic, align 8
  store %struct.magic* %277, %struct.magic** %mg, align 8
  br label %for.cond.243

for.end.258:                                      ; preds = %for.cond.243
  br label %if.end.259

if.end.259:                                       ; preds = %for.end.258, %if.then.234
  %278 = load %struct.sv*, %struct.sv** @PL_mess_sv, align 8
  %sv_flags260 = getelementptr inbounds %struct.sv, %struct.sv* %278, i32 0, i32 2
  %279 = load i32, i32* %sv_flags260, align 4
  %and261 = and i32 %279, 2097152
  %tobool262 = icmp ne i32 %and261, 0
  br i1 %tobool262, label %land.rhs.263, label %land.end.266

land.rhs.263:                                     ; preds = %if.end.259
  %280 = load %struct.sv*, %struct.sv** @PL_mess_sv, align 8
  %call264 = call i32 @Perl_sv_backoff(%struct.sv* %280)
  %tobool265 = icmp ne i32 %call264, 0
  br label %land.end.266

land.end.266:                                     ; preds = %land.rhs.263, %if.end.259
  %281 = phi i1 [ false, %if.end.259 ], [ %tobool265, %land.rhs.263 ]
  %land.ext = zext i1 %281 to i32
  %282 = load %struct.sv*, %struct.sv** @PL_mess_sv, align 8
  %sv_any267 = getelementptr inbounds %struct.sv, %struct.sv* %282, i32 0, i32 0
  %283 = load i8*, i8** %sv_any267, align 8
  %284 = bitcast i8* %283 to %struct.xpv*
  %xpv_pv268 = getelementptr inbounds %struct.xpv, %struct.xpv* %284, i32 0, i32 0
  %285 = load i8*, i8** %xpv_pv268, align 8
  call void @Perl_safesysfree(i8* %285)
  %286 = load %struct.sv*, %struct.sv** @PL_mess_sv, align 8
  %sv_any269 = getelementptr inbounds %struct.sv, %struct.sv* %286, i32 0, i32 0
  %287 = load i8*, i8** %sv_any269, align 8
  call void @Perl_safesysfree(i8* %287)
  %288 = load %struct.sv*, %struct.sv** @PL_mess_sv, align 8
  %289 = bitcast %struct.sv* %288 to i8*
  call void @Perl_safesysfree(i8* %289)
  store %struct.sv* null, %struct.sv** @PL_mess_sv, align 8
  br label %if.end.270

if.end.270:                                       ; preds = %land.end.266, %if.end.232
  %290 = load i32, i32* @PL_statusvalue, align 4
  store i32 %290, i32* %retval
  br label %return

return:                                           ; preds = %if.end.270, %if.then.37, %if.then.14
  %291 = load i32, i32* %retval
  ret i32 %291
}

; Function Attrs: returns_twice
declare i32 @__sigsetjmp(%struct.__jmp_buf_tag*, i32) #3

; Function Attrs: nounwind uwtable
define void @Perl_call_list(i32 %oldscope, %struct.av* %paramList) #0 {
entry:
  %oldscope.addr = alloca i32, align 4
  %paramList.addr = alloca %struct.av*, align 8
  %atsv = alloca %struct.sv*, align 8
  %oldline = alloca i32, align 4
  %cv = alloca %struct.cv*, align 8
  %len = alloca i64, align 8
  %ret = alloca i32, align 4
  %cur_env = alloca %struct.jmpenv, align 8
  %tmp = alloca i32, align 4
  %tmp57 = alloca %struct.jmpenv*, align 8
  %tmp72 = alloca %struct.jmpenv*, align 8
  %tmp138 = alloca %struct.jmpenv*, align 8
  store i32 %oldscope, i32* %oldscope.addr, align 4
  store %struct.av* %paramList, %struct.av** %paramList.addr, align 8
  %0 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_line = getelementptr inbounds %struct.cop, %struct.cop* %0, i32 0, i32 13
  %1 = load i32, i32* %cop_line, align 4
  store i32 %1, i32* %oldline, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load %struct.av*, %struct.av** %paramList.addr, align 8
  %3 = bitcast %struct.av* %2 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and = and i32 %4, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.cond
  %5 = load %struct.av*, %struct.av** %paramList.addr, align 8
  %6 = bitcast %struct.av* %5 to %struct.sv*
  %call = call i32 @Perl_mg_size(%struct.sv* %6)
  %conv = sext i32 %call to i64
  br label %cond.end

cond.false:                                       ; preds = %while.cond
  %7 = load %struct.av*, %struct.av** %paramList.addr, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %7, i32 0, i32 0
  %8 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %8, i32 0, i32 1
  %9 = load i64, i64* %xav_fill, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %9, %cond.false ]
  %cmp = icmp sge i64 %cond, 0
  br i1 %cmp, label %while.body, label %while.end.140

while.body:                                       ; preds = %cond.end
  %10 = load %struct.av*, %struct.av** %paramList.addr, align 8
  %call2 = call %struct.sv* @Perl_av_shift(%struct.av* %10)
  %11 = bitcast %struct.sv* %call2 to %struct.cv*
  store %struct.cv* %11, %struct.cv** %cv, align 8
  %12 = load i8, i8* @PL_savebegin, align 1
  %tobool3 = icmp ne i8 %12, 0
  br i1 %tobool3, label %if.then, label %if.else.19

if.then:                                          ; preds = %while.body
  %13 = load %struct.av*, %struct.av** %paramList.addr, align 8
  %14 = load %struct.av*, %struct.av** @PL_beginav, align 8
  %cmp4 = icmp eq %struct.av* %13, %14
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %15 = load %struct.av*, %struct.av** @PL_beginav_save, align 8
  %tobool7 = icmp ne %struct.av* %15, null
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then.6
  %call9 = call %struct.av* @Perl_newAV()
  store %struct.av* %call9, %struct.av** @PL_beginav_save, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then.6
  %16 = load %struct.av*, %struct.av** @PL_beginav_save, align 8
  %17 = load %struct.cv*, %struct.cv** %cv, align 8
  %18 = bitcast %struct.cv* %17 to %struct.sv*
  call void @Perl_av_push(%struct.av* %16, %struct.sv* %18)
  br label %if.end.18

if.else:                                          ; preds = %if.then
  %19 = load %struct.av*, %struct.av** %paramList.addr, align 8
  %20 = load %struct.av*, %struct.av** @PL_checkav, align 8
  %cmp10 = icmp eq %struct.av* %19, %20
  br i1 %cmp10, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.else
  %21 = load %struct.av*, %struct.av** @PL_checkav_save, align 8
  %tobool13 = icmp ne %struct.av* %21, null
  br i1 %tobool13, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %if.then.12
  %call15 = call %struct.av* @Perl_newAV()
  store %struct.av* %call15, %struct.av** @PL_checkav_save, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.then.12
  %22 = load %struct.av*, %struct.av** @PL_checkav_save, align 8
  %23 = load %struct.cv*, %struct.cv** %cv, align 8
  %24 = bitcast %struct.cv* %23 to %struct.sv*
  call void @Perl_av_push(%struct.av* %22, %struct.sv* %24)
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  br label %if.end.20

if.else.19:                                       ; preds = %while.body
  %25 = load %struct.cv*, %struct.cv** %cv, align 8
  %26 = bitcast %struct.cv* %25 to %struct.sv*
  call void @Perl_save_freesv(%struct.sv* %26)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.end.18
  %27 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_prev = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 1
  store %struct.jmpenv* %27, %struct.jmpenv** %je_prev, align 8
  %je_buf = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %je_buf, i32 0, i32 0
  %call21 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay, i32 0) #5
  %je_ret = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 2
  store i32 %call21, i32* %je_ret, align 4
  store %struct.jmpenv* %cur_env, %struct.jmpenv** @PL_top_env, align 8
  %je_mustcatch = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 3
  store i8 0, i8* %je_mustcatch, align 1
  %je_ret22 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 2
  %28 = load i32, i32* %je_ret22, align 4
  store i32 %28, i32* %ret, align 4
  store i32 %28, i32* %tmp
  %29 = load i32, i32* %tmp
  %30 = load i32, i32* %ret, align 4
  switch i32 %30, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.60
    i32 2, label %sw.bb.61
    i32 3, label %sw.bb.94
  ]

sw.bb:                                            ; preds = %if.end.20
  %31 = load %struct.cv*, %struct.cv** %cv, align 8
  %call23 = call i8* @S_call_list_body(%struct.cv* %31)
  %32 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any24 = getelementptr inbounds %struct.gv, %struct.gv* %32, i32 0, i32 0
  %33 = load %struct.xpvgv*, %struct.xpvgv** %sv_any24, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %33, i32 0, i32 7
  %34 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %34, i32 0, i32 0
  %35 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  store %struct.sv* %35, %struct.sv** %atsv, align 8
  %36 = load %struct.sv*, %struct.sv** %atsv, align 8
  %sv_flags25 = getelementptr inbounds %struct.sv, %struct.sv* %36, i32 0, i32 2
  %37 = load i32, i32* %sv_flags25, align 4
  %and26 = and i32 %37, 262144
  %cmp27 = icmp eq i32 %and26, 262144
  br i1 %cmp27, label %cond.true.29, label %cond.false.32

cond.true.29:                                     ; preds = %sw.bb
  %38 = load %struct.sv*, %struct.sv** %atsv, align 8
  %sv_any30 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 0
  %39 = load i8*, i8** %sv_any30, align 8
  %40 = bitcast i8* %39 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %40, i32 0, i32 1
  %41 = load i64, i64* %xpv_cur, align 8
  store i64 %41, i64* %len, align 8
  %42 = load %struct.sv*, %struct.sv** %atsv, align 8
  %sv_any31 = getelementptr inbounds %struct.sv, %struct.sv* %42, i32 0, i32 0
  %43 = load i8*, i8** %sv_any31, align 8
  %44 = bitcast i8* %43 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %44, i32 0, i32 0
  %45 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.34

cond.false.32:                                    ; preds = %sw.bb
  %46 = load %struct.sv*, %struct.sv** %atsv, align 8
  %call33 = call i8* @Perl_sv_2pv_flags(%struct.sv* %46, i64* %len, i32 2)
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.32, %cond.true.29
  %cond35 = phi i8* [ %45, %cond.true.29 ], [ %call33, %cond.false.32 ]
  %47 = load i64, i64* %len, align 8
  %tobool36 = icmp ne i64 %47, 0
  br i1 %tobool36, label %if.then.37, label %if.end.59

if.then.37:                                       ; preds = %cond.end.34
  store volatile %struct.cop* @PL_compiling, %struct.cop** @PL_curcop, align 8
  %48 = load i32, i32* %oldline, align 4
  %49 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_line38 = getelementptr inbounds %struct.cop, %struct.cop* %49, i32 0, i32 13
  store i32 %48, i32* %cop_line38, align 4
  %50 = load %struct.av*, %struct.av** %paramList.addr, align 8
  %51 = load %struct.av*, %struct.av** @PL_beginav, align 8
  %cmp39 = icmp eq %struct.av* %50, %51
  br i1 %cmp39, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.then.37
  %52 = load %struct.sv*, %struct.sv** %atsv, align 8
  call void @Perl_sv_catpv(%struct.sv* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end.52

if.else.42:                                       ; preds = %if.then.37
  %53 = load %struct.sv*, %struct.sv** %atsv, align 8
  %54 = load %struct.av*, %struct.av** %paramList.addr, align 8
  %55 = load %struct.av*, %struct.av** @PL_checkav, align 8
  %cmp43 = icmp eq %struct.av* %54, %55
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %if.else.42
  br label %cond.end.50

cond.false.46:                                    ; preds = %if.else.42
  %56 = load %struct.av*, %struct.av** %paramList.addr, align 8
  %57 = load %struct.av*, %struct.av** @PL_initav, align 8
  %cmp47 = icmp eq %struct.av* %56, %57
  %cond49 = select i1 %cmp47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0)
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.46, %cond.true.45
  %cond51 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), %cond.true.45 ], [ %cond49, %cond.false.46 ]
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i32 0, i32 0), i8* %cond51)
  br label %if.end.52

if.end.52:                                        ; preds = %cond.end.50, %if.then.41
  br label %while.cond.53

while.cond.53:                                    ; preds = %while.body.56, %if.end.52
  %58 = load i32, i32* @PL_scopestack_ix, align 4
  %59 = load i32, i32* %oldscope.addr, align 4
  %cmp54 = icmp sgt i32 %58, %59
  br i1 %cmp54, label %while.body.56, label %while.end

while.body.56:                                    ; preds = %while.cond.53
  call void @Perl_pop_scope()
  br label %while.cond.53

while.end:                                        ; preds = %while.cond.53
  %je_prev58 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 1
  %60 = load %struct.jmpenv*, %struct.jmpenv** %je_prev58, align 8
  store %struct.jmpenv* %60, %struct.jmpenv** @PL_top_env, align 8
  store %struct.jmpenv* %60, %struct.jmpenv** %tmp57
  %61 = load %struct.jmpenv*, %struct.jmpenv** %tmp57
  %62 = load %struct.sv*, %struct.sv** %atsv, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0), %struct.sv* %62)
  br label %if.end.59

if.end.59:                                        ; preds = %while.end, %cond.end.34
  br label %sw.epilog

sw.bb.60:                                         ; preds = %if.end.20
  store i32 1, i32* @PL_statusvalue, align 4
  br label %sw.bb.61

sw.bb.61:                                         ; preds = %if.end.20, %sw.bb.60
  br label %while.cond.62

while.cond.62:                                    ; preds = %while.body.65, %sw.bb.61
  %63 = load i32, i32* @PL_scopestack_ix, align 4
  %64 = load i32, i32* %oldscope.addr, align 4
  %cmp63 = icmp sgt i32 %63, %64
  br i1 %cmp63, label %while.body.65, label %while.end.66

while.body.65:                                    ; preds = %while.cond.62
  call void @Perl_pop_scope()
  br label %while.cond.62

while.end.66:                                     ; preds = %while.cond.62
  %65 = load i32, i32* @PL_tmps_ix, align 4
  %66 = load i32, i32* @PL_tmps_floor, align 4
  %cmp67 = icmp sgt i32 %65, %66
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %while.end.66
  call void @Perl_free_tmps()
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %while.end.66
  %67 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  store %struct.hv* %67, %struct.hv** @PL_curstash, align 8
  store volatile %struct.cop* @PL_compiling, %struct.cop** @PL_curcop, align 8
  %68 = load i32, i32* %oldline, align 4
  %69 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_line71 = getelementptr inbounds %struct.cop, %struct.cop* %69, i32 0, i32 13
  store i32 %68, i32* %cop_line71, align 4
  %je_prev73 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 1
  %70 = load %struct.jmpenv*, %struct.jmpenv** %je_prev73, align 8
  store %struct.jmpenv* %70, %struct.jmpenv** @PL_top_env, align 8
  store %struct.jmpenv* %70, %struct.jmpenv** %tmp72
  %71 = load %struct.jmpenv*, %struct.jmpenv** %tmp72
  %72 = load i32, i32* @PL_statusvalue, align 4
  %tobool74 = icmp ne i32 %72, 0
  br i1 %tobool74, label %land.lhs.true, label %if.end.93

land.lhs.true:                                    ; preds = %if.end.70
  %73 = load i8, i8* @PL_exit_flags, align 1
  %conv75 = zext i8 %73 to i32
  %and76 = and i32 %conv75, 1
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.end.93, label %if.then.78

if.then.78:                                       ; preds = %land.lhs.true
  %74 = load %struct.av*, %struct.av** %paramList.addr, align 8
  %75 = load %struct.av*, %struct.av** @PL_beginav, align 8
  %cmp79 = icmp eq %struct.av* %74, %75
  br i1 %cmp79, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %if.then.78
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end.92

if.else.82:                                       ; preds = %if.then.78
  %76 = load %struct.av*, %struct.av** %paramList.addr, align 8
  %77 = load %struct.av*, %struct.av** @PL_checkav, align 8
  %cmp83 = icmp eq %struct.av* %76, %77
  br i1 %cmp83, label %cond.true.85, label %cond.false.86

cond.true.85:                                     ; preds = %if.else.82
  br label %cond.end.90

cond.false.86:                                    ; preds = %if.else.82
  %78 = load %struct.av*, %struct.av** %paramList.addr, align 8
  %79 = load %struct.av*, %struct.av** @PL_initav, align 8
  %cmp87 = icmp eq %struct.av* %78, %79
  %cond89 = select i1 %cmp87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0)
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.86, %cond.true.85
  %cond91 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), %cond.true.85 ], [ %cond89, %cond.false.86 ]
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i32 0, i32 0), i8* %cond91)
  br label %if.end.92

if.end.92:                                        ; preds = %cond.end.90, %if.then.81
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %land.lhs.true, %if.end.70
  call void @S_my_exit_jump()
  br label %sw.bb.94

sw.bb.94:                                         ; preds = %if.end.20, %if.end.93
  %80 = load %struct.op*, %struct.op** @PL_restartop, align 8
  %tobool95 = icmp ne %struct.op* %80, null
  br i1 %tobool95, label %if.then.96, label %if.end.106

if.then.96:                                       ; preds = %sw.bb.94
  store volatile %struct.cop* @PL_compiling, %struct.cop** @PL_curcop, align 8
  %81 = load i32, i32* %oldline, align 4
  %82 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_line97 = getelementptr inbounds %struct.cop, %struct.cop* %82, i32 0, i32 13
  store i32 %81, i32* %cop_line97, align 4
  %83 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_prev98 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %83, i32 0, i32 1
  %84 = load %struct.jmpenv*, %struct.jmpenv** %je_prev98, align 8
  %tobool99 = icmp ne %struct.jmpenv* %84, null
  br i1 %tobool99, label %if.then.100, label %if.end.103

if.then.100:                                      ; preds = %if.then.96
  %85 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_buf101 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %85, i32 0, i32 0
  %arraydecay102 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %je_buf101, i32 0, i32 0
  call void @siglongjmp(%struct.__jmp_buf_tag* %arraydecay102, i32 3) #6
  unreachable

if.end.103:                                       ; preds = %if.then.96
  %call104 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %call105 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.106:                                       ; preds = %sw.bb.94
  %86 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool107 = icmp ne %struct.gv* %86, null
  br i1 %tobool107, label %land.lhs.true.108, label %cond.false.129

land.lhs.true.108:                                ; preds = %if.end.106
  %87 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags109 = getelementptr inbounds %struct.gv, %struct.gv* %87, i32 0, i32 2
  %88 = load i32, i32* %sv_flags109, align 4
  %and110 = and i32 %88, 255
  %cmp111 = icmp eq i32 %and110, 13
  br i1 %cmp111, label %land.lhs.true.113, label %cond.false.129

land.lhs.true.113:                                ; preds = %land.lhs.true.108
  %89 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any114 = getelementptr inbounds %struct.gv, %struct.gv* %89, i32 0, i32 0
  %90 = load %struct.xpvgv*, %struct.xpvgv** %sv_any114, align 8
  %xgv_gp115 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %90, i32 0, i32 7
  %91 = load %struct.gp*, %struct.gp** %xgv_gp115, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %91, i32 0, i32 2
  %92 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool116 = icmp ne %struct.io* %92, null
  br i1 %tobool116, label %land.lhs.true.117, label %cond.false.129

land.lhs.true.117:                                ; preds = %land.lhs.true.113
  %93 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any118 = getelementptr inbounds %struct.gv, %struct.gv* %93, i32 0, i32 0
  %94 = load %struct.xpvgv*, %struct.xpvgv** %sv_any118, align 8
  %xgv_gp119 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %94, i32 0, i32 7
  %95 = load %struct.gp*, %struct.gp** %xgv_gp119, align 8
  %gp_io120 = getelementptr inbounds %struct.gp, %struct.gp* %95, i32 0, i32 2
  %96 = load %struct.io*, %struct.io** %gp_io120, align 8
  %sv_any121 = getelementptr inbounds %struct.io, %struct.io* %96, i32 0, i32 0
  %97 = load %struct.xpvio*, %struct.xpvio** %sv_any121, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %97, i32 0, i32 8
  %98 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool122 = icmp ne %struct._PerlIO** %98, null
  br i1 %tobool122, label %cond.true.123, label %cond.false.129

cond.true.123:                                    ; preds = %land.lhs.true.117
  %99 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any124 = getelementptr inbounds %struct.gv, %struct.gv* %99, i32 0, i32 0
  %100 = load %struct.xpvgv*, %struct.xpvgv** %sv_any124, align 8
  %xgv_gp125 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %100, i32 0, i32 7
  %101 = load %struct.gp*, %struct.gp** %xgv_gp125, align 8
  %gp_io126 = getelementptr inbounds %struct.gp, %struct.gp* %101, i32 0, i32 2
  %102 = load %struct.io*, %struct.io** %gp_io126, align 8
  %sv_any127 = getelementptr inbounds %struct.io, %struct.io* %102, i32 0, i32 0
  %103 = load %struct.xpvio*, %struct.xpvio** %sv_any127, align 8
  %xio_ofp128 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %103, i32 0, i32 8
  %104 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp128, align 8
  br label %cond.end.131

cond.false.129:                                   ; preds = %land.lhs.true.117, %land.lhs.true.113, %land.lhs.true.108, %if.end.106
  %call130 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.129, %cond.true.123
  %cond132 = phi %struct._PerlIO** [ %104, %cond.true.123 ], [ %call130, %cond.false.129 ]
  %call133 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond132, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0))
  %105 = load i32, i32* @PL_tmps_ix, align 4
  %106 = load i32, i32* @PL_tmps_floor, align 4
  %cmp134 = icmp sgt i32 %105, %106
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %cond.end.131
  call void @Perl_free_tmps()
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %cond.end.131
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.20, %if.end.137, %if.end.59
  %je_prev139 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 1
  %107 = load %struct.jmpenv*, %struct.jmpenv** %je_prev139, align 8
  store %struct.jmpenv* %107, %struct.jmpenv** @PL_top_env, align 8
  store %struct.jmpenv* %107, %struct.jmpenv** %tmp138
  %108 = load %struct.jmpenv*, %struct.jmpenv** %tmp138
  br label %while.cond

while.end.140:                                    ; preds = %cond.end
  ret void
}

declare void @Perl_pop_scope() #1

declare void @Perl_free_tmps() #1

declare i32 @Perl_my_fflush_all() #1

declare void @Perl_op_free(%struct.op*) #1

declare void @Perl_sv_free(%struct.sv*) #1

declare void @PerlIO_destruct() #1

declare void @Perl_sv_clean_objs() #1

declare void @Perl_safesysfree(i8*) #1

declare void @PerlIO_cleanup() #1

declare void @Perl_setdefout(%struct.gv*) #1

declare i32 @Perl_PerlIO_close(%struct._PerlIO**) #1

declare void @Perl_warner(i32, i8*, ...) #1

declare i32 @Perl_sv_clean_all() #1

declare void @Perl_sv_clear(%struct.sv*) #1

declare void @Perl_free_tied_hv_pool() #1

; Function Attrs: nounwind uwtable
define internal void @S_nuke_stacks() #0 {
entry:
  %p = alloca %struct.stackinfo*, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %0, i32 0, i32 6
  %1 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  %tobool = icmp ne %struct.stackinfo* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next1 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %2, i32 0, i32 6
  %3 = load %struct.stackinfo*, %struct.stackinfo** %si_next1, align 8
  store %struct.stackinfo* %3, %struct.stackinfo** @PL_curstackinfo, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.4, %while.end
  %4 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %tobool3 = icmp ne %struct.stackinfo* %4, null
  br i1 %tobool3, label %while.body.4, label %while.end.5

while.body.4:                                     ; preds = %while.cond.2
  %5 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %5, i32 0, i32 5
  %6 = load %struct.stackinfo*, %struct.stackinfo** %si_prev, align 8
  store %struct.stackinfo* %6, %struct.stackinfo** %p, align 8
  %7 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxstack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %7, i32 0, i32 1
  %8 = load %struct.context*, %struct.context** %si_cxstack, align 8
  %9 = bitcast %struct.context* %8 to i8*
  call void @Perl_safesysfree(i8* %9)
  %10 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %11 = bitcast %struct.stackinfo* %10 to i8*
  call void @Perl_safesysfree(i8* %11)
  %12 = load %struct.stackinfo*, %struct.stackinfo** %p, align 8
  store %struct.stackinfo* %12, %struct.stackinfo** @PL_curstackinfo, align 8
  br label %while.cond.2

while.end.5:                                      ; preds = %while.cond.2
  %13 = load %struct.sv**, %struct.sv*** @PL_tmps_stack, align 8
  %14 = bitcast %struct.sv** %13 to i8*
  call void @Perl_safesysfree(i8* %14)
  %15 = load i32*, i32** @PL_markstack, align 8
  %16 = bitcast i32* %15 to i8*
  call void @Perl_safesysfree(i8* %16)
  %17 = load i32*, i32** @PL_scopestack, align 8
  %18 = bitcast i32* %17 to i8*
  call void @Perl_safesysfree(i8* %18)
  %19 = load %union.any*, %union.any** @PL_savestack, align 8
  %20 = bitcast %union.any* %19 to i8*
  call void @Perl_safesysfree(i8* %20)
  %21 = load %struct.op**, %struct.op*** @PL_retstack, align 8
  %22 = bitcast %struct.op** %21 to i8*
  call void @Perl_safesysfree(i8* %22)
  ret void
}

declare void @Perl_sv_free_arenas() #1

declare i32 @Perl_sv_backoff(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @perl_free(%struct.interpreter* %my_perl) #0 {
entry:
  %my_perl.addr = alloca %struct.interpreter*, align 8
  store %struct.interpreter* %my_perl, %struct.interpreter** %my_perl.addr, align 8
  %0 = load %struct.interpreter*, %struct.interpreter** %my_perl.addr, align 8
  %1 = bitcast %struct.interpreter* %0 to i8*
  call void @free(i8* %1)
  ret void
}

declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @Perl_call_atexit(void (i8*)* %fn, i8* %ptr) #0 {
entry:
  %fn.addr = alloca void (i8*)*, align 8
  %ptr.addr = alloca i8*, align 8
  store void (i8*)* %fn, void (i8*)** %fn.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load %struct.exitlistentry*, %struct.exitlistentry** @PL_exitlist, align 8
  %1 = bitcast %struct.exitlistentry* %0 to i8*
  %2 = load i32, i32* @PL_exitlistlen, align 4
  %add = add nsw i32 %2, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 16
  %call = call i8* @Perl_safesysrealloc(i8* %1, i64 %mul)
  %3 = bitcast i8* %call to %struct.exitlistentry*
  store %struct.exitlistentry* %3, %struct.exitlistentry** @PL_exitlist, align 8
  %4 = load void (i8*)*, void (i8*)** %fn.addr, align 8
  %5 = load i32, i32* @PL_exitlistlen, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.exitlistentry*, %struct.exitlistentry** @PL_exitlist, align 8
  %arrayidx = getelementptr inbounds %struct.exitlistentry, %struct.exitlistentry* %6, i64 %idxprom
  %fn1 = getelementptr inbounds %struct.exitlistentry, %struct.exitlistentry* %arrayidx, i32 0, i32 0
  store void (i8*)* %4, void (i8*)** %fn1, align 8
  %7 = load i8*, i8** %ptr.addr, align 8
  %8 = load i32, i32* @PL_exitlistlen, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.exitlistentry*, %struct.exitlistentry** @PL_exitlist, align 8
  %arrayidx3 = getelementptr inbounds %struct.exitlistentry, %struct.exitlistentry* %9, i64 %idxprom2
  %ptr4 = getelementptr inbounds %struct.exitlistentry, %struct.exitlistentry* %arrayidx3, i32 0, i32 1
  store i8* %7, i8** %ptr4, align 8
  %10 = load i32, i32* @PL_exitlistlen, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* @PL_exitlistlen, align 4
  ret void
}

declare i8* @Perl_safesysrealloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @perl_parse(%struct.interpreter* %my_perl, void ()* %xsinit, i32 %argc, i8** %argv, i8** %env) #0 {
entry:
  %retval = alloca i32, align 4
  %my_perl.addr = alloca %struct.interpreter*, align 8
  %xsinit.addr = alloca void ()*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %env.addr = alloca i8**, align 8
  %oldscope = alloca i32, align 4
  %ret = alloca i32, align 4
  %cur_env = alloca %struct.jmpenv, align 8
  %s = alloca i8*, align 8
  %i = alloca i32, align 4
  %mask = alloca i64, align 8
  %aligned = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp155 = alloca %struct.jmpenv*, align 8
  store %struct.interpreter* %my_perl, %struct.interpreter** %my_perl.addr, align 8
  store void ()* %xsinit, void ()** %xsinit.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8** %env, i8*** %env.addr, align 8
  %0 = load i8, i8* @PL_rehash_seed_set, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @Perl_get_hash_seed()
  store i64 %call, i64* @PL_rehash_seed, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %argc.addr, align 4
  store i32 %1, i32* @PL_origargc, align 4
  %2 = load i8**, i8*** %argv.addr, align 8
  store i8** %2, i8*** @PL_origargv, align 8
  store i8* null, i8** %s, align 8
  store i64 -8, i64* %mask, align 8
  %3 = load i64, i64* %mask, align 8
  %cmp = icmp ult i64 %3, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx, align 8
  %6 = ptrtoint i8* %5 to i64
  %7 = load i64, i64* %mask, align 8
  %and = and i64 %6, %7
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %8, i64 0
  %9 = load i8*, i8** %arrayidx1, align 8
  %10 = ptrtoint i8* %9 to i64
  %cmp2 = icmp eq i64 %and, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %11 = phi i1 [ false, %if.end ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  %conv = sext i32 %land.ext to i64
  store i64 %conv, i64* %aligned, align 8
  %12 = load i8**, i8*** @PL_origargv, align 8
  %tobool3 = icmp ne i8** %12, null
  br i1 %tobool3, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %land.end
  %13 = load i32, i32* @PL_origargc, align 4
  %cmp4 = icmp sge i32 %13, 1
  br i1 %cmp4, label %land.lhs.true.6, label %if.end.38

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %14 = load i8**, i8*** @PL_origargv, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %14, i64 0
  %15 = load i8*, i8** %arrayidx7, align 8
  store i8* %15, i8** %s, align 8
  %tobool8 = icmp ne i8* %15, null
  br i1 %tobool8, label %if.then.9, label %if.end.38

if.then.9:                                        ; preds = %land.lhs.true.6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.9
  %16 = load i8*, i8** %s, align 8
  %17 = load i8, i8* %16, align 1
  %tobool10 = icmp ne i8 %17, 0
  br i1 %tobool10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* @PL_origargc, align 4
  %cmp11 = icmp slt i32 %19, %20
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load i8**, i8*** @PL_origargv, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %22, i64 %idxprom
  %23 = load i8*, i8** %arrayidx13, align 8
  %24 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 1
  %cmp14 = icmp eq i8* %23, %add.ptr
  br i1 %cmp14, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %25 = load i64, i64* %aligned, align 8
  %tobool16 = icmp ne i64 %25, 0
  br i1 %tobool16, label %land.lhs.true.17, label %if.else

land.lhs.true.17:                                 ; preds = %lor.lhs.false
  %26 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %26 to i64
  %27 = load i8**, i8*** @PL_origargv, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %27, i64 %idxprom18
  %28 = load i8*, i8** %arrayidx19, align 8
  %29 = load i8*, i8** %s, align 8
  %cmp20 = icmp ugt i8* %28, %29
  br i1 %cmp20, label %land.lhs.true.22, label %if.else

land.lhs.true.22:                                 ; preds = %land.lhs.true.17
  %30 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %30 to i64
  %31 = load i8**, i8*** @PL_origargv, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %31, i64 %idxprom23
  %32 = load i8*, i8** %arrayidx24, align 8
  %33 = load i8*, i8** %s, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %33, i64 8
  %34 = ptrtoint i8* %add.ptr25 to i64
  %35 = load i64, i64* %mask, align 8
  %and26 = and i64 %34, %35
  %36 = inttoptr i64 %and26 to i8*
  %cmp27 = icmp ule i8* %32, %36
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %land.lhs.true.22, %for.body
  %37 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %37 to i64
  %38 = load i8**, i8*** @PL_origargv, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %38, i64 %idxprom30
  %39 = load i8*, i8** %arrayidx31, align 8
  store i8* %39, i8** %s, align 8
  br label %while.cond.32

while.cond.32:                                    ; preds = %while.body.34, %if.then.29
  %40 = load i8*, i8** %s, align 8
  %41 = load i8, i8* %40, align 1
  %tobool33 = icmp ne i8 %41, 0
  br i1 %tobool33, label %while.body.34, label %while.end.36

while.body.34:                                    ; preds = %while.cond.32
  %42 = load i8*, i8** %s, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr35, i8** %s, align 8
  br label %while.cond.32

while.end.36:                                     ; preds = %while.cond.32
  br label %if.end.37

if.else:                                          ; preds = %land.lhs.true.22, %land.lhs.true.17, %lor.lhs.false
  br label %for.end

if.end.37:                                        ; preds = %while.end.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %43 = load i32, i32* %i, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else, %for.cond
  br label %if.end.38

if.end.38:                                        ; preds = %for.end, %land.lhs.true.6, %land.lhs.true, %land.end
  %44 = load i8**, i8*** @PL_origenviron, align 8
  %tobool39 = icmp ne i8** %44, null
  br i1 %tobool39, label %if.then.40, label %if.end.102

if.then.40:                                       ; preds = %if.end.38
  %45 = load i8**, i8*** @PL_origenviron, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %45, i64 0
  %46 = load i8*, i8** %arrayidx41, align 8
  %47 = load i8*, i8** %s, align 8
  %add.ptr42 = getelementptr inbounds i8, i8* %47, i64 1
  %cmp43 = icmp eq i8* %46, %add.ptr42
  br i1 %cmp43, label %if.then.57, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %if.then.40
  %48 = load i64, i64* %aligned, align 8
  %tobool46 = icmp ne i64 %48, 0
  br i1 %tobool46, label %land.lhs.true.47, label %if.end.101

land.lhs.true.47:                                 ; preds = %lor.lhs.false.45
  %49 = load i8**, i8*** @PL_origenviron, align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %49, i64 0
  %50 = load i8*, i8** %arrayidx48, align 8
  %51 = load i8*, i8** %s, align 8
  %cmp49 = icmp ugt i8* %50, %51
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.101

land.lhs.true.51:                                 ; preds = %land.lhs.true.47
  %52 = load i8**, i8*** @PL_origenviron, align 8
  %arrayidx52 = getelementptr inbounds i8*, i8** %52, i64 0
  %53 = load i8*, i8** %arrayidx52, align 8
  %54 = load i8*, i8** %s, align 8
  %add.ptr53 = getelementptr inbounds i8, i8* %54, i64 8
  %55 = ptrtoint i8* %add.ptr53 to i64
  %56 = load i64, i64* %mask, align 8
  %and54 = and i64 %55, %56
  %57 = inttoptr i64 %and54 to i8*
  %cmp55 = icmp ule i8* %53, %57
  br i1 %cmp55, label %if.then.57, label %if.end.101

if.then.57:                                       ; preds = %land.lhs.true.51, %if.then.40
  %58 = load i8**, i8*** @PL_origenviron, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %58, i64 0
  %59 = load i8*, i8** %arrayidx58, align 8
  store i8* %59, i8** %s, align 8
  br label %while.cond.59

while.cond.59:                                    ; preds = %while.body.61, %if.then.57
  %60 = load i8*, i8** %s, align 8
  %61 = load i8, i8* %60, align 1
  %tobool60 = icmp ne i8 %61, 0
  br i1 %tobool60, label %while.body.61, label %while.end.63

while.body.61:                                    ; preds = %while.cond.59
  %62 = load i8*, i8** %s, align 8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr62, i8** %s, align 8
  br label %while.cond.59

while.end.63:                                     ; preds = %while.cond.59
  call void @Perl_my_setenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* null)
  store i32 1, i32* %i, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.98, %while.end.63
  %63 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %63 to i64
  %64 = load i8**, i8*** @PL_origenviron, align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %64, i64 %idxprom65
  %65 = load i8*, i8** %arrayidx66, align 8
  %tobool67 = icmp ne i8* %65, null
  br i1 %tobool67, label %for.body.68, label %for.end.100

for.body.68:                                      ; preds = %for.cond.64
  %66 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %66 to i64
  %67 = load i8**, i8*** @PL_origenviron, align 8
  %arrayidx70 = getelementptr inbounds i8*, i8** %67, i64 %idxprom69
  %68 = load i8*, i8** %arrayidx70, align 8
  %69 = load i8*, i8** %s, align 8
  %add.ptr71 = getelementptr inbounds i8, i8* %69, i64 1
  %cmp72 = icmp eq i8* %68, %add.ptr71
  br i1 %cmp72, label %if.then.88, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %for.body.68
  %70 = load i64, i64* %aligned, align 8
  %tobool75 = icmp ne i64 %70, 0
  br i1 %tobool75, label %land.lhs.true.76, label %if.else.96

land.lhs.true.76:                                 ; preds = %lor.lhs.false.74
  %71 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %71 to i64
  %72 = load i8**, i8*** @PL_origenviron, align 8
  %arrayidx78 = getelementptr inbounds i8*, i8** %72, i64 %idxprom77
  %73 = load i8*, i8** %arrayidx78, align 8
  %74 = load i8*, i8** %s, align 8
  %cmp79 = icmp ugt i8* %73, %74
  br i1 %cmp79, label %land.lhs.true.81, label %if.else.96

land.lhs.true.81:                                 ; preds = %land.lhs.true.76
  %75 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %75 to i64
  %76 = load i8**, i8*** @PL_origenviron, align 8
  %arrayidx83 = getelementptr inbounds i8*, i8** %76, i64 %idxprom82
  %77 = load i8*, i8** %arrayidx83, align 8
  %78 = load i8*, i8** %s, align 8
  %add.ptr84 = getelementptr inbounds i8, i8* %78, i64 8
  %79 = ptrtoint i8* %add.ptr84 to i64
  %80 = load i64, i64* %mask, align 8
  %and85 = and i64 %79, %80
  %81 = inttoptr i64 %and85 to i8*
  %cmp86 = icmp ule i8* %77, %81
  br i1 %cmp86, label %if.then.88, label %if.else.96

if.then.88:                                       ; preds = %land.lhs.true.81, %for.body.68
  %82 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %82 to i64
  %83 = load i8**, i8*** @PL_origenviron, align 8
  %arrayidx90 = getelementptr inbounds i8*, i8** %83, i64 %idxprom89
  %84 = load i8*, i8** %arrayidx90, align 8
  store i8* %84, i8** %s, align 8
  br label %while.cond.91

while.cond.91:                                    ; preds = %while.body.93, %if.then.88
  %85 = load i8*, i8** %s, align 8
  %86 = load i8, i8* %85, align 1
  %tobool92 = icmp ne i8 %86, 0
  br i1 %tobool92, label %while.body.93, label %while.end.95

while.body.93:                                    ; preds = %while.cond.91
  %87 = load i8*, i8** %s, align 8
  %incdec.ptr94 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr94, i8** %s, align 8
  br label %while.cond.91

while.end.95:                                     ; preds = %while.cond.91
  br label %if.end.97

if.else.96:                                       ; preds = %land.lhs.true.81, %land.lhs.true.76, %lor.lhs.false.74
  br label %for.end.100

if.end.97:                                        ; preds = %while.end.95
  br label %for.inc.98

for.inc.98:                                       ; preds = %if.end.97
  %88 = load i32, i32* %i, align 4
  %inc99 = add nsw i32 %88, 1
  store i32 %inc99, i32* %i, align 4
  br label %for.cond.64

for.end.100:                                      ; preds = %if.else.96, %for.cond.64
  br label %if.end.101

if.end.101:                                       ; preds = %for.end.100, %land.lhs.true.51, %land.lhs.true.47, %lor.lhs.false.45
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.end.38
  %89 = load i8*, i8** %s, align 8
  %90 = load i8**, i8*** @PL_origargv, align 8
  %arrayidx103 = getelementptr inbounds i8*, i8** %90, i64 0
  %91 = load i8*, i8** %arrayidx103, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %89 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %91 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv104 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv104, i32* @PL_origalen, align 4
  %92 = load i8, i8* @PL_do_undump, align 1
  %tobool105 = icmp ne i8 %92, 0
  br i1 %tobool105, label %if.then.106, label %if.end.109

if.then.106:                                      ; preds = %if.end.102
  %93 = load i8**, i8*** %argv.addr, align 8
  %arrayidx107 = getelementptr inbounds i8*, i8** %93, i64 0
  %94 = load i8*, i8** %arrayidx107, align 8
  %call108 = call i8* @Perl_savepv(i8* %94)
  store i8* %call108, i8** @PL_origfilename, align 8
  store i8 0, i8* @PL_do_undump, align 1
  %95 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %95, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  call void @S_init_ids()
  %96 = load i32, i32* %argc.addr, align 4
  %97 = load i8**, i8*** %argv.addr, align 8
  %98 = load i8**, i8*** %env.addr, align 8
  call void @S_init_postdump_symbols(i32 %96, i8** %97, i8** %98)
  store i32 0, i32* %retval
  br label %return

if.end.109:                                       ; preds = %if.end.102
  %99 = load %struct.op*, %struct.op** @PL_main_root, align 8
  %tobool110 = icmp ne %struct.op* %99, null
  br i1 %tobool110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.109
  %100 = load %struct.op*, %struct.op** @PL_main_root, align 8
  call void @Perl_op_free(%struct.op* %100)
  store %struct.op* null, %struct.op** @PL_main_root, align 8
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %if.end.109
  store %struct.op* null, %struct.op** @PL_main_start, align 8
  %101 = load %struct.cv*, %struct.cv** @PL_main_cv, align 8
  %102 = bitcast %struct.cv* %101 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %102)
  store %struct.cv* null, %struct.cv** @PL_main_cv, align 8
  %call113 = call i64 @time(i64* @PL_basetime)
  %103 = load i32, i32* @PL_scopestack_ix, align 4
  store i32 %103, i32* %oldscope, align 4
  store i8 0, i8* @PL_dowarn, align 1
  %104 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_prev = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 1
  store %struct.jmpenv* %104, %struct.jmpenv** %je_prev, align 8
  %je_buf = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %je_buf, i32 0, i32 0
  %call114 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay, i32 0) #5
  %je_ret = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 2
  store i32 %call114, i32* %je_ret, align 4
  store %struct.jmpenv* %cur_env, %struct.jmpenv** @PL_top_env, align 8
  %je_mustcatch = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 3
  store i8 0, i8* %je_mustcatch, align 1
  %je_ret115 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 2
  %105 = load i32, i32* %je_ret115, align 4
  store i32 %105, i32* %ret, align 4
  store i32 %105, i32* %tmp
  %106 = load i32, i32* %tmp
  %107 = load i32, i32* %ret, align 4
  switch i32 %107, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.120
    i32 2, label %sw.bb.121
    i32 3, label %sw.bb.134
  ]

sw.bb:                                            ; preds = %if.end.112
  %108 = load i8**, i8*** %env.addr, align 8
  %109 = load void ()*, void ()** %xsinit.addr, align 8
  %call116 = call i8* @S_parse_body(i8** %108, void ()* %109)
  %110 = load %struct.av*, %struct.av** @PL_checkav, align 8
  %tobool117 = icmp ne %struct.av* %110, null
  br i1 %tobool117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %sw.bb
  %111 = load i32, i32* %oldscope, align 4
  %112 = load %struct.av*, %struct.av** @PL_checkav, align 8
  call void @Perl_call_list(i32 %111, %struct.av* %112)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %sw.bb
  store i32 0, i32* %ret, align 4
  br label %sw.epilog

sw.bb.120:                                        ; preds = %if.end.112
  store i32 1, i32* @PL_statusvalue, align 4
  br label %sw.bb.121

sw.bb.121:                                        ; preds = %if.end.112, %sw.bb.120
  br label %while.cond.122

while.cond.122:                                   ; preds = %while.body.125, %sw.bb.121
  %113 = load i32, i32* @PL_scopestack_ix, align 4
  %114 = load i32, i32* %oldscope, align 4
  %cmp123 = icmp sgt i32 %113, %114
  br i1 %cmp123, label %while.body.125, label %while.end.126

while.body.125:                                   ; preds = %while.cond.122
  call void @Perl_pop_scope()
  br label %while.cond.122

while.end.126:                                    ; preds = %while.cond.122
  %115 = load i32, i32* @PL_tmps_ix, align 4
  %116 = load i32, i32* @PL_tmps_floor, align 4
  %cmp127 = icmp sgt i32 %115, %116
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %while.end.126
  call void @Perl_free_tmps()
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.129, %while.end.126
  %117 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  store %struct.hv* %117, %struct.hv** @PL_curstash, align 8
  %118 = load %struct.av*, %struct.av** @PL_checkav, align 8
  %tobool131 = icmp ne %struct.av* %118, null
  br i1 %tobool131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.end.130
  %119 = load i32, i32* %oldscope, align 4
  %120 = load %struct.av*, %struct.av** @PL_checkav, align 8
  call void @Perl_call_list(i32 %119, %struct.av* %120)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %if.end.130
  %121 = load i32, i32* @PL_statusvalue, align 4
  store i32 %121, i32* %ret, align 4
  br label %sw.epilog

sw.bb.134:                                        ; preds = %if.end.112
  %122 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool135 = icmp ne %struct.gv* %122, null
  br i1 %tobool135, label %land.lhs.true.136, label %cond.false

land.lhs.true.136:                                ; preds = %sw.bb.134
  %123 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %123, i32 0, i32 2
  %124 = load i32, i32* %sv_flags, align 4
  %and137 = and i32 %124, 255
  %cmp138 = icmp eq i32 %and137, 13
  br i1 %cmp138, label %land.lhs.true.140, label %cond.false

land.lhs.true.140:                                ; preds = %land.lhs.true.136
  %125 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %125, i32 0, i32 0
  %126 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %126, i32 0, i32 7
  %127 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %127, i32 0, i32 2
  %128 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool141 = icmp ne %struct.io* %128, null
  br i1 %tobool141, label %land.lhs.true.142, label %cond.false

land.lhs.true.142:                                ; preds = %land.lhs.true.140
  %129 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any143 = getelementptr inbounds %struct.gv, %struct.gv* %129, i32 0, i32 0
  %130 = load %struct.xpvgv*, %struct.xpvgv** %sv_any143, align 8
  %xgv_gp144 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %130, i32 0, i32 7
  %131 = load %struct.gp*, %struct.gp** %xgv_gp144, align 8
  %gp_io145 = getelementptr inbounds %struct.gp, %struct.gp* %131, i32 0, i32 2
  %132 = load %struct.io*, %struct.io** %gp_io145, align 8
  %sv_any146 = getelementptr inbounds %struct.io, %struct.io* %132, i32 0, i32 0
  %133 = load %struct.xpvio*, %struct.xpvio** %sv_any146, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %133, i32 0, i32 8
  %134 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool147 = icmp ne %struct._PerlIO** %134, null
  br i1 %tobool147, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.142
  %135 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any148 = getelementptr inbounds %struct.gv, %struct.gv* %135, i32 0, i32 0
  %136 = load %struct.xpvgv*, %struct.xpvgv** %sv_any148, align 8
  %xgv_gp149 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %136, i32 0, i32 7
  %137 = load %struct.gp*, %struct.gp** %xgv_gp149, align 8
  %gp_io150 = getelementptr inbounds %struct.gp, %struct.gp* %137, i32 0, i32 2
  %138 = load %struct.io*, %struct.io** %gp_io150, align 8
  %sv_any151 = getelementptr inbounds %struct.io, %struct.io* %138, i32 0, i32 0
  %139 = load %struct.xpvio*, %struct.xpvio** %sv_any151, align 8
  %xio_ofp152 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %139, i32 0, i32 8
  %140 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp152, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.142, %land.lhs.true.140, %land.lhs.true.136, %sw.bb.134
  %call153 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PerlIO** [ %140, %cond.true ], [ %call153, %cond.false ]
  %call154 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  store i32 1, i32* %ret, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.112, %cond.end, %if.end.133, %if.end.119
  %je_prev156 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 1
  %141 = load %struct.jmpenv*, %struct.jmpenv** %je_prev156, align 8
  store %struct.jmpenv* %141, %struct.jmpenv** @PL_top_env, align 8
  store %struct.jmpenv* %141, %struct.jmpenv** %tmp155
  %142 = load %struct.jmpenv*, %struct.jmpenv** %tmp155
  %143 = load i32, i32* %ret, align 4
  store i32 %143, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.106
  %144 = load i32, i32* %retval
  ret i32 %144
}

declare i64 @Perl_get_hash_seed() #1

declare void @Perl_my_setenv(i8*, i8*) #1

declare i8* @Perl_savepv(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @S_init_postdump_symbols(i32 %argc, i8** %argv, i8** %env) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %env.addr = alloca i8**, align 8
  %s = alloca i8*, align 8
  %sv = alloca %struct.sv*, align 8
  %tmpgv = alloca %struct.gv*, align 8
  %hv = alloca %struct.hv*, align 8
  %origenv = alloca i8**, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8** %env, i8*** %env.addr, align 8
  %call = call %struct.sv* @Perl_newSV(i64 0)
  store %struct.sv* %call, %struct.sv** @PL_toptarget, align 8
  %0 = load %struct.sv*, %struct.sv** @PL_toptarget, align 8
  %call1 = call signext i8 @Perl_sv_upgrade(%struct.sv* %0, i32 14)
  %1 = load %struct.sv*, %struct.sv** @PL_toptarget, align 8
  call void @Perl_sv_setpvn(%struct.sv* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 0)
  %call2 = call %struct.sv* @Perl_newSV(i64 0)
  store %struct.sv* %call2, %struct.sv** @PL_bodytarget, align 8
  %2 = load %struct.sv*, %struct.sv** @PL_bodytarget, align 8
  %call3 = call signext i8 @Perl_sv_upgrade(%struct.sv* %2, i32 14)
  %3 = load %struct.sv*, %struct.sv** @PL_bodytarget, align 8
  call void @Perl_sv_setpvn(%struct.sv* %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 0)
  %4 = load %struct.sv*, %struct.sv** @PL_bodytarget, align 8
  store %struct.sv* %4, %struct.sv** @PL_formtarget, align 8
  store i8 1, i8* @PL_tainted, align 1
  %5 = load i32, i32* %argc.addr, align 4
  %6 = load i8**, i8*** %argv.addr, align 8
  call void @Perl_init_argv_symbols(i32 %5, i8** %6)
  %call4 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.159, i32 0, i32 0), i32 1, i32 4)
  store %struct.gv* %call4, %struct.gv** %tmpgv, align 8
  %tobool = icmp ne %struct.gv* %call4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %7, i32 0, i32 0
  %8 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %8, i32 0, i32 7
  %9 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %9, i32 0, i32 0
  %10 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %11 = load i8*, i8** @PL_origfilename, align 8
  call void @Perl_sv_setpv(%struct.sv* %10, i8* %11)
  call void @Perl_magicname(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.159, i32 0, i32 0), i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @S_set_caret_X()
  %call5 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.160, i32 0, i32 0), i32 1, i32 11)
  store %struct.gv* %call5, %struct.gv** @PL_envgv, align 8
  %tobool6 = icmp ne %struct.gv* %call5, null
  br i1 %tobool6, label %if.then.7, label %if.end.52

if.then.7:                                        ; preds = %if.end
  %12 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %sv_any8 = getelementptr inbounds %struct.gv, %struct.gv* %12, i32 0, i32 0
  %13 = load %struct.xpvgv*, %struct.xpvgv** %sv_any8, align 8
  %xgv_flags = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %13, i32 0, i32 11
  %14 = load i8, i8* %xgv_flags, align 1
  %conv = zext i8 %14 to i32
  %or = or i32 %conv, 2
  %conv9 = trunc i32 %or to i8
  store i8 %conv9, i8* %xgv_flags, align 1
  %15 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %sv_any10 = getelementptr inbounds %struct.gv, %struct.gv* %15, i32 0, i32 0
  %16 = load %struct.xpvgv*, %struct.xpvgv** %sv_any10, align 8
  %xgv_gp11 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %16, i32 0, i32 7
  %17 = load %struct.gp*, %struct.gp** %xgv_gp11, align 8
  %gp_hv = getelementptr inbounds %struct.gp, %struct.gp* %17, i32 0, i32 5
  %18 = load %struct.hv*, %struct.hv** %gp_hv, align 8
  %tobool12 = icmp ne %struct.hv* %18, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  %19 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %sv_any13 = getelementptr inbounds %struct.gv, %struct.gv* %19, i32 0, i32 0
  %20 = load %struct.xpvgv*, %struct.xpvgv** %sv_any13, align 8
  %xgv_gp14 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %20, i32 0, i32 7
  %21 = load %struct.gp*, %struct.gp** %xgv_gp14, align 8
  %gp_hv15 = getelementptr inbounds %struct.gp, %struct.gp* %21, i32 0, i32 5
  %22 = load %struct.hv*, %struct.hv** %gp_hv15, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.7
  %23 = load %struct.gv*, %struct.gv** @PL_envgv, align 8
  %call16 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %23)
  %sv_any17 = getelementptr inbounds %struct.gv, %struct.gv* %call16, i32 0, i32 0
  %24 = load %struct.xpvgv*, %struct.xpvgv** %sv_any17, align 8
  %xgv_gp18 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %24, i32 0, i32 7
  %25 = load %struct.gp*, %struct.gp** %xgv_gp18, align 8
  %gp_hv19 = getelementptr inbounds %struct.gp, %struct.gp* %25, i32 0, i32 5
  %26 = load %struct.hv*, %struct.hv** %gp_hv19, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.hv* [ %22, %cond.true ], [ %26, %cond.false ]
  store %struct.hv* %cond, %struct.hv** %hv, align 8
  %27 = load %struct.hv*, %struct.hv** %hv, align 8
  call void @Perl_hv_magic(%struct.hv* %27, %struct.gv* null, i32 69)
  %28 = load i8**, i8*** %env.addr, align 8
  %tobool20 = icmp ne i8** %28, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %cond.end
  %29 = load i8**, i8*** @environ, align 8
  store i8** %29, i8*** %env.addr, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %cond.end
  %30 = load i8**, i8*** %env.addr, align 8
  %31 = load i8**, i8*** @environ, align 8
  %cmp = icmp ne i8** %30, %31
  br i1 %cmp, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  %32 = load i8**, i8*** @environ, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %32, i64 0
  store i8* null, i8** %arrayidx, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.22
  %33 = load i8**, i8*** %env.addr, align 8
  %tobool26 = icmp ne i8** %33, null
  br i1 %tobool26, label %if.then.27, label %if.end.51

if.then.27:                                       ; preds = %if.end.25
  %34 = load i8**, i8*** @environ, align 8
  store i8** %34, i8*** %origenv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.27
  %35 = load i8**, i8*** %env.addr, align 8
  %36 = load i8*, i8** %35, align 8
  %tobool28 = icmp ne i8* %36, null
  br i1 %tobool28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i8**, i8*** %env.addr, align 8
  %38 = load i8*, i8** %37, align 8
  %call29 = call i8* @strchr(i8* %38, i32 61)
  store i8* %call29, i8** %s, align 8
  %tobool30 = icmp ne i8* %call29, null
  br i1 %tobool30, label %lor.lhs.false, label %if.then.33

lor.lhs.false:                                    ; preds = %for.body
  %39 = load i8*, i8** %s, align 8
  %40 = load i8**, i8*** %env.addr, align 8
  %41 = load i8*, i8** %40, align 8
  %cmp31 = icmp eq i8* %39, %41
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end.34:                                        ; preds = %lor.lhs.false
  %42 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 1
  %call35 = call %struct.sv* @Perl_newSVpv(i8* %add.ptr, i64 0)
  store %struct.sv* %call35, %struct.sv** %sv, align 8
  %43 = load %struct.hv*, %struct.hv** %hv, align 8
  %44 = load i8**, i8*** %env.addr, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %s, align 8
  %47 = load i8**, i8*** %env.addr, align 8
  %48 = load i8*, i8** %47, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %46 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv36 = trunc i64 %sub.ptr.sub to i32
  %49 = load %struct.sv*, %struct.sv** %sv, align 8
  %call37 = call %struct.sv** @Perl_hv_store(%struct.hv* %43, i8* %45, i32 %conv36, %struct.sv* %49, i32 0)
  %50 = load i8**, i8*** %env.addr, align 8
  %51 = load i8**, i8*** @environ, align 8
  %cmp38 = icmp ne i8** %50, %51
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.34
  %52 = load %struct.sv*, %struct.sv** %sv, align 8
  %call41 = call i32 @Perl_mg_set(%struct.sv* %52)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.34
  %53 = load i8**, i8*** %origenv, align 8
  %54 = load i8**, i8*** @environ, align 8
  %cmp43 = icmp ne i8** %53, %54
  br i1 %cmp43, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %if.end.42
  %55 = load i8**, i8*** %env.addr, align 8
  %56 = load i8**, i8*** %origenv, align 8
  %sub.ptr.lhs.cast46 = ptrtoint i8** %55 to i64
  %sub.ptr.rhs.cast47 = ptrtoint i8** %56 to i64
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub48, 8
  %57 = load i8**, i8*** @environ, align 8
  %add.ptr49 = getelementptr inbounds i8*, i8** %57, i64 %sub.ptr.div
  store i8** %add.ptr49, i8*** %env.addr, align 8
  %58 = load i8**, i8*** @environ, align 8
  store i8** %58, i8*** %origenv, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.45, %if.end.42
  br label %for.inc

for.inc:                                          ; preds = %if.end.50, %if.then.33
  %59 = load i8**, i8*** %env.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %incdec.ptr, i8*** %env.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.51

if.end.51:                                        ; preds = %for.end, %if.end.25
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end
  store i8 0, i8* @PL_tainted, align 1
  %call53 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.161, i32 0, i32 0), i32 1, i32 4)
  store %struct.gv* %call53, %struct.gv** %tmpgv, align 8
  %tobool54 = icmp ne %struct.gv* %call53, null
  br i1 %tobool54, label %if.then.55, label %if.end.69

if.then.55:                                       ; preds = %if.end.52
  %60 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any56 = getelementptr inbounds %struct.gv, %struct.gv* %60, i32 0, i32 0
  %61 = load %struct.xpvgv*, %struct.xpvgv** %sv_any56, align 8
  %xgv_gp57 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %61, i32 0, i32 7
  %62 = load %struct.gp*, %struct.gp** %xgv_gp57, align 8
  %gp_sv58 = getelementptr inbounds %struct.gp, %struct.gp* %62, i32 0, i32 0
  %63 = load %struct.sv*, %struct.sv** %gp_sv58, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %63, i32 0, i32 2
  %64 = load i32, i32* %sv_flags, align 4
  %and = and i32 %64, -8388609
  store i32 %and, i32* %sv_flags, align 4
  %65 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any59 = getelementptr inbounds %struct.gv, %struct.gv* %65, i32 0, i32 0
  %66 = load %struct.xpvgv*, %struct.xpvgv** %sv_any59, align 8
  %xgv_gp60 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %66, i32 0, i32 7
  %67 = load %struct.gp*, %struct.gp** %xgv_gp60, align 8
  %gp_sv61 = getelementptr inbounds %struct.gp, %struct.gp* %67, i32 0, i32 0
  %68 = load %struct.sv*, %struct.sv** %gp_sv61, align 8
  %call62 = call i32 @getpid()
  %conv63 = sext i32 %call62 to i64
  call void @Perl_sv_setiv(%struct.sv* %68, i64 %conv63)
  %69 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any64 = getelementptr inbounds %struct.gv, %struct.gv* %69, i32 0, i32 0
  %70 = load %struct.xpvgv*, %struct.xpvgv** %sv_any64, align 8
  %xgv_gp65 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %70, i32 0, i32 7
  %71 = load %struct.gp*, %struct.gp** %xgv_gp65, align 8
  %gp_sv66 = getelementptr inbounds %struct.gp, %struct.gp* %71, i32 0, i32 0
  %72 = load %struct.sv*, %struct.sv** %gp_sv66, align 8
  %sv_flags67 = getelementptr inbounds %struct.sv, %struct.sv* %72, i32 0, i32 2
  %73 = load i32, i32* %sv_flags67, align 4
  %or68 = or i32 %73, 8388608
  store i32 %or68, i32* %sv_flags67, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.55, %if.end.52
  %74 = load i8, i8* @PL_minus_a, align 1
  %tobool70 = icmp ne i8 %74, 0
  br i1 %tobool70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.end.69
  %call72 = call %struct.av* @Perl_get_av(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.162, i32 0, i32 0), i32 3)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.end.69
  %call74 = call %struct.av* @Perl_get_av(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.163, i32 0, i32 0), i32 3)
  %call75 = call %struct.av* @Perl_get_av(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.164, i32 0, i32 0), i32 3)
  ret void
}

declare i64 @time(i64*) #1

; Function Attrs: nounwind uwtable
define internal i8* @S_parse_body(i8** %env, void ()* %xsinit) #0 {
entry:
  %env.addr = alloca i8**, align 8
  %xsinit.addr = alloca void ()*, align 8
  %argc = alloca i32, align 4
  %argv = alloca i8**, align 8
  %scriptname = alloca i8*, align 8
  %dosearch = alloca i8, align 1
  %validarg = alloca i8*, align 8
  %sv = alloca %struct.sv*, align 8
  %s = alloca i8*, align 8
  %cddir = alloca i8*, align 8
  %minus_f = alloca i8, align 1
  %p = alloca i8*, align 8
  %len = alloca i64, align 8
  %opts = alloca i64, align 8
  %space = alloca i8*, align 8
  %pv = alloca i8*, align 8
  %c = alloca i8, align 1
  %io = alloca %struct.io*, align 8
  %fp = alloca %struct._PerlIO**, align 8
  %sv198 = alloca %struct.sv*, align 8
  %in = alloca i32, align 4
  %out = alloca i32, align 4
  store i8** %env, i8*** %env.addr, align 8
  store void ()* %xsinit, void ()** %xsinit.addr, align 8
  %0 = load i32, i32* @PL_origargc, align 4
  store i32 %0, i32* %argc, align 4
  %1 = load i8**, i8*** @PL_origargv, align 8
  store i8** %1, i8*** %argv, align 8
  store i8* null, i8** %scriptname, align 8
  store volatile i8 0, i8* %dosearch, align 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %validarg, align 8
  store i8* null, i8** %cddir, align 8
  store i8 0, i8* %minus_f, align 1
  store i16 0, i16* @PL_op_seqmax, align 2
  store i32 -1, i32* @PL_fdscript, align 4
  store i32 -1, i32* @PL_suidscript, align 4
  %2 = load %struct.sv*, %struct.sv** @PL_linestr, align 8
  call void @Perl_sv_setpvn(%struct.sv* %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 0)
  %call = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 0)
  store %struct.sv* %call, %struct.sv** %sv, align 8
  %3 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_save_freesv(%struct.sv* %3)
  call void @S_init_main_stash()
  %4 = load i32, i32* %argc, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %argc, align 4
  %5 = load i8**, i8*** %argv, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %5, i32 1
  store i8** %incdec.ptr, i8*** %argv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %argc, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8**, i8*** %argv, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %9 to i32
  %cmp2 = icmp ne i32 %conv, 45
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = load i8**, i8*** %argv, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %10, i64 0
  %11 = load i8*, i8** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx5, align 1
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %13 = load i8**, i8*** %argv, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %13, i64 0
  %14 = load i8*, i8** %arrayidx6, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %add.ptr, i8** %s, align 8
  br label %reswitch

reswitch:                                         ; preds = %if.then.140, %if.then.136, %if.end.100, %sw.bb.61, %sw.bb.59, %sw.bb.37, %sw.bb.17, %if.end.15, %if.then.10, %if.end
  %15 = load i8*, i8** %s, align 8
  %16 = load i8, i8* %15, align 1
  %conv7 = sext i8 %16 to i32
  switch i32 %conv7, label %sw.default [
    i32 67, label %sw.bb
    i32 13, label %sw.bb
    i32 32, label %sw.bb
    i32 48, label %sw.bb
    i32 70, label %sw.bb
    i32 97, label %sw.bb
    i32 99, label %sw.bb
    i32 100, label %sw.bb
    i32 68, label %sw.bb
    i32 104, label %sw.bb
    i32 105, label %sw.bb
    i32 108, label %sw.bb
    i32 77, label %sw.bb
    i32 109, label %sw.bb
    i32 110, label %sw.bb
    i32 112, label %sw.bb
    i32 115, label %sw.bb
    i32 117, label %sw.bb
    i32 85, label %sw.bb
    i32 118, label %sw.bb
    i32 87, label %sw.bb
    i32 88, label %sw.bb
    i32 119, label %sw.bb
    i32 116, label %sw.bb.12
    i32 84, label %sw.bb.17
    i32 101, label %sw.bb.19
    i32 102, label %sw.bb.37
    i32 73, label %sw.bb.39
    i32 80, label %sw.bb.59
    i32 83, label %sw.bb.61
    i32 86, label %sw.bb.63
    i32 120, label %sw.bb.101
    i32 0, label %sw.bb.106
    i32 45, label %sw.bb.107
  ]

sw.bb:                                            ; preds = %reswitch, %reswitch, %reswitch, %reswitch, %reswitch, %reswitch, %reswitch, %reswitch, %reswitch, %reswitch, %reswitch, %reswitch, %reswitch, %reswitch, %reswitch, %reswitch, %reswitch, %reswitch, %reswitch, %reswitch, %reswitch, %reswitch, %reswitch
  %17 = load i8*, i8** %s, align 8
  %call8 = call i8* @Perl_moreswitches(i8* %17)
  store i8* %call8, i8** %s, align 8
  %tobool9 = icmp ne i8* %call8, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb
  br label %reswitch

if.end.11:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.12:                                         ; preds = %reswitch
  %18 = load i8, i8* @PL_tainting, align 1
  %tobool13 = icmp ne i8 %18, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %sw.bb.12
  store i8 1, i8* @PL_taint_warn, align 1
  store i8 1, i8* @PL_tainting, align 1
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %sw.bb.12
  %19 = load i8*, i8** %s, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr16, i8** %s, align 8
  br label %reswitch

sw.bb.17:                                         ; preds = %reswitch
  store i8 1, i8* @PL_tainting, align 1
  store i8 0, i8* @PL_taint_warn, align 1
  %20 = load i8*, i8** %s, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr18, i8** %s, align 8
  br label %reswitch

sw.bb.19:                                         ; preds = %reswitch
  call void @S_forbid_setid(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0))
  %21 = load %struct.sv*, %struct.sv** @PL_e_script, align 8
  %tobool20 = icmp ne %struct.sv* %21, null
  br i1 %tobool20, label %if.end.24, label %if.then.21

if.then.21:                                       ; preds = %sw.bb.19
  %call22 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 0)
  store %struct.sv* %call22, %struct.sv** @PL_e_script, align 8
  %call23 = call %struct.sv* @Perl_filter_add(i32 (i32, %struct.sv*, i32)* @read_e_script, %struct.sv* null)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %sw.bb.19
  %22 = load i8*, i8** %s, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr25, i8** %s, align 8
  %23 = load i8, i8* %incdec.ptr25, align 1
  %tobool26 = icmp ne i8 %23, 0
  br i1 %tobool26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end.24
  %24 = load %struct.sv*, %struct.sv** @PL_e_script, align 8
  %25 = load i8*, i8** %s, align 8
  call void @Perl_sv_catpv(%struct.sv* %24, i8* %25)
  br label %if.end.36

if.else:                                          ; preds = %if.end.24
  %26 = load i8**, i8*** %argv, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %26, i64 1
  %27 = load i8*, i8** %arrayidx28, align 8
  %tobool29 = icmp ne i8* %27, null
  br i1 %tobool29, label %if.then.30, label %if.else.34

if.then.30:                                       ; preds = %if.else
  %28 = load %struct.sv*, %struct.sv** @PL_e_script, align 8
  %29 = load i8**, i8*** %argv, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %29, i64 1
  %30 = load i8*, i8** %arrayidx31, align 8
  call void @Perl_sv_catpv(%struct.sv* %28, i8* %30)
  %31 = load i32, i32* %argc, align 4
  %dec32 = add nsw i32 %31, -1
  store i32 %dec32, i32* %argc, align 4
  %32 = load i8**, i8*** %argv, align 8
  %incdec.ptr33 = getelementptr inbounds i8*, i8** %32, i32 1
  store i8** %incdec.ptr33, i8*** %argv, align 8
  br label %if.end.35

if.else.34:                                       ; preds = %if.else
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %if.then.30
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.27
  %33 = load %struct.sv*, %struct.sv** @PL_e_script, align 8
  call void @Perl_sv_catpv(%struct.sv* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %sw.epilog

sw.bb.37:                                         ; preds = %reswitch
  store i8 1, i8* %minus_f, align 1
  %34 = load i8*, i8** %s, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr38, i8** %s, align 8
  br label %reswitch

sw.bb.39:                                         ; preds = %reswitch
  call void @S_forbid_setid(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  %35 = load i8*, i8** %s, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr40, i8** %s, align 8
  %36 = load i8, i8* %incdec.ptr40, align 1
  %tobool41 = icmp ne i8 %36, 0
  br i1 %tobool41, label %if.end.48, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb.39
  %37 = load i8**, i8*** %argv, align 8
  %arrayidx42 = getelementptr inbounds i8*, i8** %37, i64 1
  %38 = load i8*, i8** %arrayidx42, align 8
  store i8* %38, i8** %s, align 8
  %cmp43 = icmp ne i8* %38, null
  br i1 %cmp43, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %land.lhs.true
  %39 = load i32, i32* %argc, align 4
  %dec46 = add nsw i32 %39, -1
  store i32 %dec46, i32* %argc, align 4
  %40 = load i8**, i8*** %argv, align 8
  %incdec.ptr47 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %incdec.ptr47, i8*** %argv, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %land.lhs.true, %sw.bb.39
  %41 = load i8*, i8** %s, align 8
  %tobool49 = icmp ne i8* %41, null
  br i1 %tobool49, label %land.lhs.true.50, label %if.else.57

land.lhs.true.50:                                 ; preds = %if.end.48
  %42 = load i8*, i8** %s, align 8
  %43 = load i8, i8* %42, align 1
  %conv51 = sext i8 %43 to i32
  %tobool52 = icmp ne i32 %conv51, 0
  br i1 %tobool52, label %if.then.53, label %if.else.57

if.then.53:                                       ; preds = %land.lhs.true.50
  %44 = load i8*, i8** %s, align 8
  %call54 = call i64 @strlen(i8* %44)
  store i64 %call54, i64* %len, align 8
  %45 = load i8*, i8** %s, align 8
  %46 = load i64, i64* %len, align 8
  %conv55 = trunc i64 %46 to i32
  %call56 = call i8* @Perl_savepvn(i8* %45, i32 %conv55)
  store i8* %call56, i8** %p, align 8
  %47 = load i8*, i8** %p, align 8
  call void @S_incpush(i8* %47, i32 1, i32 1, i32 0)
  %48 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i64 2, i32 2)
  %49 = load %struct.sv*, %struct.sv** %sv, align 8
  %50 = load i8*, i8** %p, align 8
  %51 = load i64, i64* %len, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %49, i8* %50, i64 %51, i32 2)
  %52 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i32 0, i32 0), i64 1, i32 2)
  %53 = load i8*, i8** %p, align 8
  call void @Perl_safesysfree(i8* %53)
  br label %if.end.58

if.else.57:                                       ; preds = %land.lhs.true.50, %if.end.48
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.57, %if.then.53
  br label %sw.epilog

sw.bb.59:                                         ; preds = %reswitch
  call void @S_forbid_setid(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0))
  store i8 1, i8* @PL_preprocess, align 1
  %54 = load i8*, i8** %s, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr60, i8** %s, align 8
  br label %reswitch

sw.bb.61:                                         ; preds = %reswitch
  call void @S_forbid_setid(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0))
  store volatile i8 1, i8* %dosearch, align 1
  %55 = load i8*, i8** %s, align 8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr62, i8** %s, align 8
  br label %reswitch

sw.bb.63:                                         ; preds = %reswitch
  %56 = load %struct.av*, %struct.av** @PL_preambleav, align 8
  %tobool64 = icmp ne %struct.av* %56, null
  br i1 %tobool64, label %if.end.67, label %if.then.65

if.then.65:                                       ; preds = %sw.bb.63
  %call66 = call %struct.av* @Perl_newAV()
  store %struct.av* %call66, %struct.av** @PL_preambleav, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %sw.bb.63
  %57 = load %struct.av*, %struct.av** @PL_preambleav, align 8
  %call68 = call %struct.sv* @Perl_newSVpv(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.64, i32 0, i32 0), i64 0)
  call void @Perl_av_push(%struct.av* %57, %struct.sv* %call68)
  %58 = load i8*, i8** %s, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr69, i8** %s, align 8
  %59 = load i8, i8* %incdec.ptr69, align 1
  %conv70 = sext i8 %59 to i32
  %cmp71 = icmp ne i32 %conv70, 58
  br i1 %cmp71, label %if.then.73, label %if.else.95

if.then.73:                                       ; preds = %if.end.67
  %call74 = call %struct.sv* @Perl_newSVpv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i32 0, i32 0), i64 0)
  store %struct.sv* %call74, %struct.sv** @PL_Sv, align 8
  %60 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  call void @Perl_sv_catpv(%struct.sv* %60, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.66, i32 0, i32 0))
  %61 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %61, i32 0, i32 0
  %62 = load i8*, i8** %sv_any, align 8
  %63 = bitcast i8* %62 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %63, i32 0, i32 1
  %64 = load i64, i64* %xpv_cur, align 8
  store i64 %64, i64* %opts, align 8
  %65 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  call void @Perl_sv_catpv(%struct.sv* %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %if.end.94, %if.then.73
  %66 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any75 = getelementptr inbounds %struct.sv, %struct.sv* %66, i32 0, i32 0
  %67 = load i8*, i8** %sv_any75, align 8
  %68 = bitcast i8* %67 to %struct.xpv*
  %xpv_cur76 = getelementptr inbounds %struct.xpv, %struct.xpv* %68, i32 0, i32 1
  %69 = load i64, i64* %xpv_cur76, align 8
  %70 = load i64, i64* %opts, align 8
  %add = add i64 %70, 76
  %cmp77 = icmp ugt i64 %69, %add
  br i1 %cmp77, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %71 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %71, i32 0, i32 2
  %72 = load i32, i32* %sv_flags, align 4
  %and = and i32 %72, 262144
  %cmp79 = icmp eq i32 %and, 262144
  br i1 %cmp79, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %73 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any81 = getelementptr inbounds %struct.sv, %struct.sv* %73, i32 0, i32 0
  %74 = load i8*, i8** %sv_any81, align 8
  %75 = bitcast i8* %74 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %75, i32 0, i32 0
  %76 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %77 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call82 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %77)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %76, %cond.true ], [ %call82, %cond.false ]
  store i8* %cond, i8** %pv, align 8
  %78 = load i64, i64* %opts, align 8
  %add83 = add i64 %78, 76
  %79 = load i8*, i8** %pv, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %79, i64 %add83
  %80 = load i8, i8* %arrayidx84, align 1
  store i8 %80, i8* %c, align 1
  %81 = load i64, i64* %opts, align 8
  %add85 = add i64 %81, 76
  %82 = load i8*, i8** %pv, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %82, i64 %add85
  store i8 0, i8* %arrayidx86, align 1
  %83 = load i8*, i8** %pv, align 8
  %84 = load i64, i64* %opts, align 8
  %add.ptr87 = getelementptr inbounds i8, i8* %83, i64 %84
  %add.ptr88 = getelementptr inbounds i8, i8* %add.ptr87, i64 26
  %call89 = call i8* @strrchr(i8* %add.ptr88, i32 32)
  store i8* %call89, i8** %space, align 8
  %85 = load i8, i8* %c, align 1
  %86 = load i64, i64* %opts, align 8
  %add90 = add i64 %86, 76
  %87 = load i8*, i8** %pv, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %87, i64 %add90
  store i8 %85, i8* %arrayidx91, align 1
  %88 = load i8*, i8** %space, align 8
  %tobool92 = icmp ne i8* %88, null
  br i1 %tobool92, label %if.end.94, label %if.then.93

if.then.93:                                       ; preds = %cond.end
  br label %while.end

if.end.94:                                        ; preds = %cond.end
  %89 = load i8*, i8** %space, align 8
  %90 = load i8*, i8** %pv, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %89 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %90 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %opts, align 8
  %91 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %92 = load i64, i64* %opts, align 8
  call void @Perl_sv_insert(%struct.sv* %91, i64 %92, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.68, i32 0, i32 0), i64 25)
  br label %while.cond

while.end:                                        ; preds = %if.then.93, %while.cond
  %93 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  call void @Perl_sv_catpv(%struct.sv* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0))
  %94 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0))
  %95 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0))
  %96 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  call void @Perl_sv_catpv(%struct.sv* %96, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.75, i32 0, i32 0))
  %97 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  call void @Perl_sv_catpv(%struct.sv* %97, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.76, i32 0, i32 0))
  br label %if.end.100

if.else.95:                                       ; preds = %if.end.67
  %call96 = call %struct.sv* @Perl_newSVpv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i32 0, i32 0), i64 0)
  store %struct.sv* %call96, %struct.sv** @PL_Sv, align 8
  %98 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %99 = load i8*, i8** %s, align 8
  %incdec.ptr97 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr97, i8** %s, align 8
  call void @Perl_sv_catpv(%struct.sv* %98, i8* %incdec.ptr97)
  %100 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  call void @Perl_sv_catpv(%struct.sv* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0))
  %101 = load i8*, i8** %s, align 8
  %call98 = call i64 @strlen(i8* %101)
  %102 = load i8*, i8** %s, align 8
  %add.ptr99 = getelementptr inbounds i8, i8* %102, i64 %call98
  store i8* %add.ptr99, i8** %s, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.95, %while.end
  %103 = load %struct.av*, %struct.av** @PL_preambleav, align 8
  %104 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  call void @Perl_av_push(%struct.av* %103, %struct.sv* %104)
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8** %scriptname, align 8
  br label %reswitch

sw.bb.101:                                        ; preds = %reswitch
  store i8 1, i8* @PL_doextract, align 1
  %105 = load i8*, i8** %s, align 8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr102, i8** %s, align 8
  %106 = load i8*, i8** %s, align 8
  %107 = load i8, i8* %106, align 1
  %tobool103 = icmp ne i8 %107, 0
  br i1 %tobool103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %sw.bb.101
  %108 = load i8*, i8** %s, align 8
  store i8* %108, i8** %cddir, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %sw.bb.101
  br label %sw.epilog

sw.bb.106:                                        ; preds = %reswitch
  br label %sw.epilog

sw.bb.107:                                        ; preds = %reswitch
  %109 = load i8*, i8** %s, align 8
  %incdec.ptr108 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr108, i8** %s, align 8
  %110 = load i8, i8* %incdec.ptr108, align 1
  %tobool109 = icmp ne i8 %110, 0
  br i1 %tobool109, label %lor.lhs.false.110, label %if.then.130

lor.lhs.false.110:                                ; preds = %sw.bb.107
  %111 = load i8*, i8** %s, align 8
  %112 = load i8, i8* %111, align 1
  %conv111 = sext i8 %112 to i32
  %cmp112 = icmp eq i32 %conv111, 32
  br i1 %cmp112, label %if.then.130, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %lor.lhs.false.110
  %113 = load i8*, i8** %s, align 8
  %114 = load i8, i8* %113, align 1
  %conv115 = sext i8 %114 to i32
  %cmp116 = icmp eq i32 %conv115, 9
  br i1 %cmp116, label %if.then.130, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %lor.lhs.false.114
  %115 = load i8*, i8** %s, align 8
  %116 = load i8, i8* %115, align 1
  %conv119 = sext i8 %116 to i32
  %cmp120 = icmp eq i32 %conv119, 10
  br i1 %cmp120, label %if.then.130, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %lor.lhs.false.118
  %117 = load i8*, i8** %s, align 8
  %118 = load i8, i8* %117, align 1
  %conv123 = sext i8 %118 to i32
  %cmp124 = icmp eq i32 %conv123, 13
  br i1 %cmp124, label %if.then.130, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %lor.lhs.false.122
  %119 = load i8*, i8** %s, align 8
  %120 = load i8, i8* %119, align 1
  %conv127 = sext i8 %120 to i32
  %cmp128 = icmp eq i32 %conv127, 12
  br i1 %cmp128, label %if.then.130, label %if.end.133

if.then.130:                                      ; preds = %lor.lhs.false.126, %lor.lhs.false.122, %lor.lhs.false.118, %lor.lhs.false.114, %lor.lhs.false.110, %sw.bb.107
  %121 = load i32, i32* %argc, align 4
  %dec131 = add nsw i32 %121, -1
  store i32 %dec131, i32* %argc, align 4
  %122 = load i8**, i8*** %argv, align 8
  %incdec.ptr132 = getelementptr inbounds i8*, i8** %122, i32 1
  store i8** %incdec.ptr132, i8*** %argv, align 8
  br label %switch_end

if.end.133:                                       ; preds = %lor.lhs.false.126
  %123 = load i8*, i8** %s, align 8
  %call134 = call i32 @strcmp(i8* %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0))
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.end.137, label %if.then.136

if.then.136:                                      ; preds = %if.end.133
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i32 0, i32 0), i8** %s, align 8
  br label %reswitch

if.end.137:                                       ; preds = %if.end.133
  %124 = load i8*, i8** %s, align 8
  %call138 = call i32 @strcmp(i8* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0))
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %if.end.141, label %if.then.140

if.then.140:                                      ; preds = %if.end.137
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i32 0, i32 0), i8** %s, align 8
  br label %reswitch

if.end.141:                                       ; preds = %if.end.137
  %125 = load i8*, i8** %s, align 8
  %incdec.ptr142 = getelementptr inbounds i8, i8* %125, i32 -1
  store i8* %incdec.ptr142, i8** %s, align 8
  br label %sw.default

sw.default:                                       ; preds = %reswitch, %if.end.141
  %126 = load i8*, i8** %s, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.84, i32 0, i32 0), i8* %126)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.106, %if.end.105, %if.end.58, %if.end.36, %if.end.11
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %127 = load i32, i32* %argc, align 4
  %dec143 = add nsw i32 %127, -1
  store i32 %dec143, i32* %argc, align 4
  %128 = load i8**, i8*** %argv, align 8
  %incdec.ptr144 = getelementptr inbounds i8*, i8** %128, i32 1
  store i8** %incdec.ptr144, i8*** %argv, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  br label %switch_end

switch_end:                                       ; preds = %for.end, %if.then.130
  %129 = load i8, i8* @PL_taint_warn, align 1
  %conv145 = sext i8 %129 to i32
  %tobool146 = icmp ne i32 %conv145, 0
  br i1 %tobool146, label %land.lhs.true.147, label %if.end.153

land.lhs.true.147:                                ; preds = %switch_end
  %130 = load i8, i8* @PL_dowarn, align 1
  %conv148 = zext i8 %130 to i32
  %cmp149 = icmp ne i32 %conv148, 4
  br i1 %cmp149, label %if.then.151, label %if.end.153

if.then.151:                                      ; preds = %land.lhs.true.147
  %call152 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.85, i32 0, i32 0), i64 12)
  store %struct.sv* %call152, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.151, %land.lhs.true.147, %switch_end
  %131 = load i8*, i8** %scriptname, align 8
  %tobool154 = icmp ne i8* %131, null
  br i1 %tobool154, label %if.end.157, label %if.then.155

if.then.155:                                      ; preds = %if.end.153
  %132 = load i8**, i8*** %argv, align 8
  %arrayidx156 = getelementptr inbounds i8*, i8** %132, i64 0
  %133 = load i8*, i8** %arrayidx156, align 8
  store i8* %133, i8** %scriptname, align 8
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.155, %if.end.153
  %134 = load %struct.sv*, %struct.sv** @PL_e_script, align 8
  %tobool158 = icmp ne %struct.sv* %134, null
  br i1 %tobool158, label %if.then.159, label %if.else.161

if.then.159:                                      ; preds = %if.end.157
  %135 = load i32, i32* %argc, align 4
  %inc = add nsw i32 %135, 1
  store i32 %inc, i32* %argc, align 4
  %136 = load i8**, i8*** %argv, align 8
  %incdec.ptr160 = getelementptr inbounds i8*, i8** %136, i32 -1
  store i8** %incdec.ptr160, i8*** %argv, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8** %scriptname, align 8
  br label %if.end.166

if.else.161:                                      ; preds = %if.end.157
  %137 = load i8*, i8** %scriptname, align 8
  %cmp162 = icmp eq i8* %137, null
  br i1 %cmp162, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %if.else.161
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i32 0, i32 0), i8** %scriptname, align 8
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.164, %if.else.161
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.then.159
  call void @S_init_perllib()
  %138 = load i8*, i8** %scriptname, align 8
  %139 = load volatile i8, i8* %dosearch, align 1
  %140 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @S_open_script(i8* %138, i8 signext %139, %struct.sv* %140)
  %141 = load i8*, i8** %validarg, align 8
  %142 = load i8*, i8** %scriptname, align 8
  call void @S_validate_suid(i8* %141, i8* %142)
  %143 = load i8, i8* @PL_doextract, align 1
  %tobool167 = icmp ne i8 %143, 0
  br i1 %tobool167, label %if.then.168, label %if.end.176

if.then.168:                                      ; preds = %if.end.166
  call void @S_find_beginning()
  %144 = load i8*, i8** %cddir, align 8
  %tobool169 = icmp ne i8* %144, null
  br i1 %tobool169, label %land.lhs.true.170, label %if.end.175

land.lhs.true.170:                                ; preds = %if.then.168
  %145 = load i8*, i8** %cddir, align 8
  %call171 = call i32 @chdir(i8* %145)
  %cmp172 = icmp slt i32 %call171, 0
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %land.lhs.true.170
  %146 = load i8*, i8** %cddir, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.87, i32 0, i32 0), i8* %146)
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.174, %land.lhs.true.170, %if.then.168
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.end.166
  %call177 = call %struct.sv* @Perl_newSV(i64 0)
  %147 = bitcast %struct.sv* %call177 to %struct.cv*
  store %struct.cv* %147, %struct.cv** @PL_compcv, align 8
  store %struct.cv* %147, %struct.cv** @PL_main_cv, align 8
  %148 = load %struct.cv*, %struct.cv** @PL_compcv, align 8
  %149 = bitcast %struct.cv* %148 to %struct.sv*
  %call178 = call signext i8 @Perl_sv_upgrade(%struct.sv* %149, i32 12)
  %150 = load %struct.cv*, %struct.cv** @PL_compcv, align 8
  %sv_any179 = getelementptr inbounds %struct.cv, %struct.cv* %150, i32 0, i32 0
  %151 = load %struct.xpvcv*, %struct.xpvcv** %sv_any179, align 8
  %xcv_flags = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %151, i32 0, i32 17
  %152 = load i16, i16* %xcv_flags, align 2
  %conv180 = zext i16 %152 to i32
  %or = or i32 %conv180, 16
  %conv181 = trunc i32 %or to i16
  store i16 %conv181, i16* %xcv_flags, align 2
  %call182 = call %struct.av* @Perl_pad_new(i32 0)
  %153 = load %struct.cv*, %struct.cv** @PL_compcv, align 8
  %sv_any183 = getelementptr inbounds %struct.cv, %struct.cv* %153, i32 0, i32 0
  %154 = load %struct.xpvcv*, %struct.xpvcv** %sv_any183, align 8
  %xcv_padlist = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %154, i32 0, i32 15
  store %struct.av* %call182, %struct.av** %xcv_padlist, align 8
  call void @Perl_boot_core_PerlIO()
  call void @Perl_boot_core_UNIVERSAL()
  call void @Perl_boot_core_xsutils()
  %155 = load void ()*, void ()** %xsinit.addr, align 8
  %tobool184 = icmp ne void ()* %155, null
  br i1 %tobool184, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %if.end.176
  %156 = load void ()*, void ()** %xsinit.addr, align 8
  call void %156()
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.185, %if.end.176
  call void @S_init_predump_symbols()
  %157 = load i8, i8* @PL_do_undump, align 1
  %tobool187 = icmp ne i8 %157, 0
  br i1 %tobool187, label %if.end.189, label %if.then.188

if.then.188:                                      ; preds = %if.end.186
  %158 = load i32, i32* %argc, align 4
  %159 = load i8**, i8*** %argv, align 8
  %160 = load i8**, i8*** %env.addr, align 8
  call void @S_init_postdump_symbols(i32 %158, i8** %159, i8** %160)
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.188, %if.end.186
  %161 = load i32, i32* @PL_unicode, align 4
  %tobool190 = icmp ne i32 %161, 0
  br i1 %tobool190, label %if.then.191, label %if.end.322

if.then.191:                                      ; preds = %if.end.189
  %162 = load i32, i32* @PL_unicode, align 4
  %and192 = and i32 %162, 64
  %tobool193 = icmp ne i32 %and192, 0
  br i1 %tobool193, label %lor.lhs.false.194, label %if.then.197

lor.lhs.false.194:                                ; preds = %if.then.191
  %163 = load i8, i8* @PL_utf8locale, align 1
  %conv195 = sext i8 %163 to i32
  %tobool196 = icmp ne i32 %conv195, 0
  br i1 %tobool196, label %if.then.197, label %if.end.321

if.then.197:                                      ; preds = %lor.lhs.false.194, %if.then.191
  %164 = load i32, i32* @PL_unicode, align 4
  %and199 = and i32 %164, 1
  %tobool200 = icmp ne i32 %and199, 0
  br i1 %tobool200, label %land.lhs.true.201, label %if.end.227

land.lhs.true.201:                                ; preds = %if.then.197
  %165 = load %struct.gv*, %struct.gv** @PL_stdingv, align 8
  %tobool202 = icmp ne %struct.gv* %165, null
  br i1 %tobool202, label %land.lhs.true.203, label %if.end.227

land.lhs.true.203:                                ; preds = %land.lhs.true.201
  %166 = load %struct.gv*, %struct.gv** @PL_stdingv, align 8
  %tobool204 = icmp ne %struct.gv* %166, null
  br i1 %tobool204, label %land.lhs.true.205, label %cond.false.216

land.lhs.true.205:                                ; preds = %land.lhs.true.203
  %167 = load %struct.gv*, %struct.gv** @PL_stdingv, align 8
  %168 = bitcast %struct.gv* %167 to %struct.sv*
  %sv_flags206 = getelementptr inbounds %struct.sv, %struct.sv* %168, i32 0, i32 2
  %169 = load i32, i32* %sv_flags206, align 4
  %and207 = and i32 %169, 255
  %cmp208 = icmp eq i32 %and207, 13
  br i1 %cmp208, label %land.lhs.true.210, label %cond.false.216

land.lhs.true.210:                                ; preds = %land.lhs.true.205
  %170 = load %struct.gv*, %struct.gv** @PL_stdingv, align 8
  %sv_any211 = getelementptr inbounds %struct.gv, %struct.gv* %170, i32 0, i32 0
  %171 = load %struct.xpvgv*, %struct.xpvgv** %sv_any211, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %171, i32 0, i32 7
  %172 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool212 = icmp ne %struct.gp* %172, null
  br i1 %tobool212, label %cond.true.213, label %cond.false.216

cond.true.213:                                    ; preds = %land.lhs.true.210
  %173 = load %struct.gv*, %struct.gv** @PL_stdingv, align 8
  %sv_any214 = getelementptr inbounds %struct.gv, %struct.gv* %173, i32 0, i32 0
  %174 = load %struct.xpvgv*, %struct.xpvgv** %sv_any214, align 8
  %xgv_gp215 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %174, i32 0, i32 7
  %175 = load %struct.gp*, %struct.gp** %xgv_gp215, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %175, i32 0, i32 2
  %176 = load %struct.io*, %struct.io** %gp_io, align 8
  br label %cond.end.217

cond.false.216:                                   ; preds = %land.lhs.true.210, %land.lhs.true.205, %land.lhs.true.203
  br label %cond.end.217

cond.end.217:                                     ; preds = %cond.false.216, %cond.true.213
  %cond218 = phi %struct.io* [ %176, %cond.true.213 ], [ null, %cond.false.216 ]
  store %struct.io* %cond218, %struct.io** %io, align 8
  %tobool219 = icmp ne %struct.io* %cond218, null
  br i1 %tobool219, label %land.lhs.true.220, label %if.end.227

land.lhs.true.220:                                ; preds = %cond.end.217
  %177 = load %struct.io*, %struct.io** %io, align 8
  %sv_any221 = getelementptr inbounds %struct.io, %struct.io* %177, i32 0, i32 0
  %178 = load %struct.xpvio*, %struct.xpvio** %sv_any221, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %178, i32 0, i32 7
  %179 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  store %struct._PerlIO** %179, %struct._PerlIO*** %fp, align 8
  %tobool222 = icmp ne %struct._PerlIO** %179, null
  br i1 %tobool222, label %if.then.223, label %if.end.227

if.then.223:                                      ; preds = %land.lhs.true.220
  %180 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %181 = load %struct.io*, %struct.io** %io, align 8
  %sv_any224 = getelementptr inbounds %struct.io, %struct.io* %181, i32 0, i32 0
  %182 = load %struct.xpvio*, %struct.xpvio** %sv_any224, align 8
  %xio_type = getelementptr inbounds %struct.xpvio, %struct.xpvio* %182, i32 0, i32 21
  %183 = load i8, i8* %xio_type, align 1
  %conv225 = sext i8 %183 to i32
  %call226 = call i32 @PerlIO_binmode(%struct._PerlIO** %180, i32 %conv225, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0))
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.223, %land.lhs.true.220, %cond.end.217, %land.lhs.true.201, %if.then.197
  %184 = load i32, i32* @PL_unicode, align 4
  %and228 = and i32 %184, 2
  %tobool229 = icmp ne i32 %and228, 0
  br i1 %tobool229, label %land.lhs.true.230, label %if.end.259

land.lhs.true.230:                                ; preds = %if.end.227
  %185 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %tobool231 = icmp ne %struct.gv* %185, null
  br i1 %tobool231, label %land.lhs.true.232, label %if.end.259

land.lhs.true.232:                                ; preds = %land.lhs.true.230
  %186 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %tobool233 = icmp ne %struct.gv* %186, null
  br i1 %tobool233, label %land.lhs.true.234, label %cond.false.247

land.lhs.true.234:                                ; preds = %land.lhs.true.232
  %187 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %188 = bitcast %struct.gv* %187 to %struct.sv*
  %sv_flags235 = getelementptr inbounds %struct.sv, %struct.sv* %188, i32 0, i32 2
  %189 = load i32, i32* %sv_flags235, align 4
  %and236 = and i32 %189, 255
  %cmp237 = icmp eq i32 %and236, 13
  br i1 %cmp237, label %land.lhs.true.239, label %cond.false.247

land.lhs.true.239:                                ; preds = %land.lhs.true.234
  %190 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any240 = getelementptr inbounds %struct.gv, %struct.gv* %190, i32 0, i32 0
  %191 = load %struct.xpvgv*, %struct.xpvgv** %sv_any240, align 8
  %xgv_gp241 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %191, i32 0, i32 7
  %192 = load %struct.gp*, %struct.gp** %xgv_gp241, align 8
  %tobool242 = icmp ne %struct.gp* %192, null
  br i1 %tobool242, label %cond.true.243, label %cond.false.247

cond.true.243:                                    ; preds = %land.lhs.true.239
  %193 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any244 = getelementptr inbounds %struct.gv, %struct.gv* %193, i32 0, i32 0
  %194 = load %struct.xpvgv*, %struct.xpvgv** %sv_any244, align 8
  %xgv_gp245 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %194, i32 0, i32 7
  %195 = load %struct.gp*, %struct.gp** %xgv_gp245, align 8
  %gp_io246 = getelementptr inbounds %struct.gp, %struct.gp* %195, i32 0, i32 2
  %196 = load %struct.io*, %struct.io** %gp_io246, align 8
  br label %cond.end.248

cond.false.247:                                   ; preds = %land.lhs.true.239, %land.lhs.true.234, %land.lhs.true.232
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.false.247, %cond.true.243
  %cond249 = phi %struct.io* [ %196, %cond.true.243 ], [ null, %cond.false.247 ]
  store %struct.io* %cond249, %struct.io** %io, align 8
  %tobool250 = icmp ne %struct.io* %cond249, null
  br i1 %tobool250, label %land.lhs.true.251, label %if.end.259

land.lhs.true.251:                                ; preds = %cond.end.248
  %197 = load %struct.io*, %struct.io** %io, align 8
  %sv_any252 = getelementptr inbounds %struct.io, %struct.io* %197, i32 0, i32 0
  %198 = load %struct.xpvio*, %struct.xpvio** %sv_any252, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %198, i32 0, i32 8
  %199 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  store %struct._PerlIO** %199, %struct._PerlIO*** %fp, align 8
  %tobool253 = icmp ne %struct._PerlIO** %199, null
  br i1 %tobool253, label %if.then.254, label %if.end.259

if.then.254:                                      ; preds = %land.lhs.true.251
  %200 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %201 = load %struct.io*, %struct.io** %io, align 8
  %sv_any255 = getelementptr inbounds %struct.io, %struct.io* %201, i32 0, i32 0
  %202 = load %struct.xpvio*, %struct.xpvio** %sv_any255, align 8
  %xio_type256 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %202, i32 0, i32 21
  %203 = load i8, i8* %xio_type256, align 1
  %conv257 = sext i8 %203 to i32
  %call258 = call i32 @PerlIO_binmode(%struct._PerlIO** %200, i32 %conv257, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0))
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.254, %land.lhs.true.251, %cond.end.248, %land.lhs.true.230, %if.end.227
  %204 = load i32, i32* @PL_unicode, align 4
  %and260 = and i32 %204, 4
  %tobool261 = icmp ne i32 %and260, 0
  br i1 %tobool261, label %land.lhs.true.262, label %if.end.292

land.lhs.true.262:                                ; preds = %if.end.259
  %205 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool263 = icmp ne %struct.gv* %205, null
  br i1 %tobool263, label %land.lhs.true.264, label %if.end.292

land.lhs.true.264:                                ; preds = %land.lhs.true.262
  %206 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool265 = icmp ne %struct.gv* %206, null
  br i1 %tobool265, label %land.lhs.true.266, label %cond.false.279

land.lhs.true.266:                                ; preds = %land.lhs.true.264
  %207 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %208 = bitcast %struct.gv* %207 to %struct.sv*
  %sv_flags267 = getelementptr inbounds %struct.sv, %struct.sv* %208, i32 0, i32 2
  %209 = load i32, i32* %sv_flags267, align 4
  %and268 = and i32 %209, 255
  %cmp269 = icmp eq i32 %and268, 13
  br i1 %cmp269, label %land.lhs.true.271, label %cond.false.279

land.lhs.true.271:                                ; preds = %land.lhs.true.266
  %210 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any272 = getelementptr inbounds %struct.gv, %struct.gv* %210, i32 0, i32 0
  %211 = load %struct.xpvgv*, %struct.xpvgv** %sv_any272, align 8
  %xgv_gp273 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %211, i32 0, i32 7
  %212 = load %struct.gp*, %struct.gp** %xgv_gp273, align 8
  %tobool274 = icmp ne %struct.gp* %212, null
  br i1 %tobool274, label %cond.true.275, label %cond.false.279

cond.true.275:                                    ; preds = %land.lhs.true.271
  %213 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any276 = getelementptr inbounds %struct.gv, %struct.gv* %213, i32 0, i32 0
  %214 = load %struct.xpvgv*, %struct.xpvgv** %sv_any276, align 8
  %xgv_gp277 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %214, i32 0, i32 7
  %215 = load %struct.gp*, %struct.gp** %xgv_gp277, align 8
  %gp_io278 = getelementptr inbounds %struct.gp, %struct.gp* %215, i32 0, i32 2
  %216 = load %struct.io*, %struct.io** %gp_io278, align 8
  br label %cond.end.280

cond.false.279:                                   ; preds = %land.lhs.true.271, %land.lhs.true.266, %land.lhs.true.264
  br label %cond.end.280

cond.end.280:                                     ; preds = %cond.false.279, %cond.true.275
  %cond281 = phi %struct.io* [ %216, %cond.true.275 ], [ null, %cond.false.279 ]
  store %struct.io* %cond281, %struct.io** %io, align 8
  %tobool282 = icmp ne %struct.io* %cond281, null
  br i1 %tobool282, label %land.lhs.true.283, label %if.end.292

land.lhs.true.283:                                ; preds = %cond.end.280
  %217 = load %struct.io*, %struct.io** %io, align 8
  %sv_any284 = getelementptr inbounds %struct.io, %struct.io* %217, i32 0, i32 0
  %218 = load %struct.xpvio*, %struct.xpvio** %sv_any284, align 8
  %xio_ofp285 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %218, i32 0, i32 8
  %219 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp285, align 8
  store %struct._PerlIO** %219, %struct._PerlIO*** %fp, align 8
  %tobool286 = icmp ne %struct._PerlIO** %219, null
  br i1 %tobool286, label %if.then.287, label %if.end.292

if.then.287:                                      ; preds = %land.lhs.true.283
  %220 = load %struct._PerlIO**, %struct._PerlIO*** %fp, align 8
  %221 = load %struct.io*, %struct.io** %io, align 8
  %sv_any288 = getelementptr inbounds %struct.io, %struct.io* %221, i32 0, i32 0
  %222 = load %struct.xpvio*, %struct.xpvio** %sv_any288, align 8
  %xio_type289 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %222, i32 0, i32 21
  %223 = load i8, i8* %xio_type289, align 1
  %conv290 = sext i8 %223 to i32
  %call291 = call i32 @PerlIO_binmode(%struct._PerlIO** %220, i32 %conv290, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0))
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.287, %land.lhs.true.283, %cond.end.280, %land.lhs.true.262, %if.end.259
  %224 = load i32, i32* @PL_unicode, align 4
  %and293 = and i32 %224, 24
  %tobool294 = icmp ne i32 %and293, 0
  br i1 %tobool294, label %land.lhs.true.295, label %if.end.320

land.lhs.true.295:                                ; preds = %if.end.292
  %call296 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i32 1, i32 4)
  %sv_any297 = getelementptr inbounds %struct.gv, %struct.gv* %call296, i32 0, i32 0
  %225 = load %struct.xpvgv*, %struct.xpvgv** %sv_any297, align 8
  %xgv_gp298 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %225, i32 0, i32 7
  %226 = load %struct.gp*, %struct.gp** %xgv_gp298, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %226, i32 0, i32 0
  %227 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  store %struct.sv* %227, %struct.sv** %sv198, align 8
  %tobool299 = icmp ne %struct.sv* %227, null
  br i1 %tobool299, label %if.then.300, label %if.end.320

if.then.300:                                      ; preds = %land.lhs.true.295
  %228 = load i32, i32* @PL_unicode, align 4
  %and301 = and i32 %228, 8
  store i32 %and301, i32* %in, align 4
  %229 = load i32, i32* @PL_unicode, align 4
  %and302 = and i32 %229, 16
  store i32 %and302, i32* %out, align 4
  %230 = load i32, i32* %in, align 4
  %tobool303 = icmp ne i32 %230, 0
  br i1 %tobool303, label %if.then.304, label %if.else.309

if.then.304:                                      ; preds = %if.then.300
  %231 = load i32, i32* %out, align 4
  %tobool305 = icmp ne i32 %231, 0
  br i1 %tobool305, label %if.then.306, label %if.else.307

if.then.306:                                      ; preds = %if.then.304
  %232 = load %struct.sv*, %struct.sv** %sv198, align 8
  call void @Perl_sv_setpvn(%struct.sv* %232, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i32 0, i32 0), i64 11)
  br label %if.end.308

if.else.307:                                      ; preds = %if.then.304
  %233 = load %struct.sv*, %struct.sv** %sv198, align 8
  call void @Perl_sv_setpvn(%struct.sv* %233, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0), i64 6)
  br label %if.end.308

if.end.308:                                       ; preds = %if.else.307, %if.then.306
  br label %if.end.313

if.else.309:                                      ; preds = %if.then.300
  %234 = load i32, i32* %out, align 4
  %tobool310 = icmp ne i32 %234, 0
  br i1 %tobool310, label %if.then.311, label %if.end.312

if.then.311:                                      ; preds = %if.else.309
  %235 = load %struct.sv*, %struct.sv** %sv198, align 8
  call void @Perl_sv_setpvn(%struct.sv* %235, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i64 6)
  br label %if.end.312

if.end.312:                                       ; preds = %if.then.311, %if.else.309
  br label %if.end.313

if.end.313:                                       ; preds = %if.end.312, %if.end.308
  %236 = load %struct.sv*, %struct.sv** %sv198, align 8
  %sv_flags314 = getelementptr inbounds %struct.sv, %struct.sv* %236, i32 0, i32 2
  %237 = load i32, i32* %sv_flags314, align 4
  %and315 = and i32 %237, 16384
  %tobool316 = icmp ne i32 %and315, 0
  br i1 %tobool316, label %if.then.317, label %if.end.319

if.then.317:                                      ; preds = %if.end.313
  %238 = load %struct.sv*, %struct.sv** %sv198, align 8
  %call318 = call i32 @Perl_mg_set(%struct.sv* %238)
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.317, %if.end.313
  br label %if.end.320

if.end.320:                                       ; preds = %if.end.319, %land.lhs.true.295, %if.end.292
  br label %if.end.321

if.end.321:                                       ; preds = %if.end.320, %lor.lhs.false.194
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.321, %if.end.189
  call void @S_init_lexer()
  %call323 = call i32* @__errno_location()
  store i32 0, i32* %call323, align 4
  store i32 0, i32* @PL_error_count, align 4
  %call324 = call i32 @Perl_yyparse()
  %tobool325 = icmp ne i32 %call324, 0
  br i1 %tobool325, label %if.then.328, label %lor.lhs.false.326

lor.lhs.false.326:                                ; preds = %if.end.322
  %239 = load i32, i32* @PL_error_count, align 4
  %tobool327 = icmp ne i32 %239, 0
  br i1 %tobool327, label %if.then.328, label %if.end.333

if.then.328:                                      ; preds = %lor.lhs.false.326, %if.end.322
  %240 = load i8, i8* @PL_minus_c, align 1
  %tobool329 = icmp ne i8 %240, 0
  br i1 %tobool329, label %if.then.330, label %if.else.331

if.then.330:                                      ; preds = %if.then.328
  %241 = load i8*, i8** @PL_origfilename, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.93, i32 0, i32 0), i8* %241)
  br label %if.end.332

if.else.331:                                      ; preds = %if.then.328
  %242 = load i8*, i8** @PL_origfilename, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.94, i32 0, i32 0), i8* %242)
  br label %if.end.332

if.end.332:                                       ; preds = %if.else.331, %if.then.330
  br label %if.end.333

if.end.333:                                       ; preds = %if.end.332, %lor.lhs.false.326
  %243 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_line = getelementptr inbounds %struct.cop, %struct.cop* %243, i32 0, i32 13
  store i32 0, i32* %cop_line, align 4
  %244 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  store %struct.hv* %244, %struct.hv** @PL_curstash, align 8
  store i8 0, i8* @PL_preprocess, align 1
  %245 = load %struct.sv*, %struct.sv** @PL_e_script, align 8
  %tobool334 = icmp ne %struct.sv* %245, null
  br i1 %tobool334, label %if.then.335, label %if.end.336

if.then.335:                                      ; preds = %if.end.333
  %246 = load %struct.sv*, %struct.sv** @PL_e_script, align 8
  call void @Perl_sv_free(%struct.sv* %246)
  store %struct.sv* null, %struct.sv** @PL_e_script, align 8
  br label %if.end.336

if.end.336:                                       ; preds = %if.then.335, %if.end.333
  %247 = load i8, i8* @PL_do_undump, align 1
  %tobool337 = icmp ne i8 %247, 0
  br i1 %tobool337, label %if.then.338, label %if.end.339

if.then.338:                                      ; preds = %if.end.336
  call void @Perl_my_unexec()
  br label %if.end.339

if.end.339:                                       ; preds = %if.then.338, %if.end.336
  %248 = load i8, i8* @PL_dowarn, align 1
  %conv340 = zext i8 %248 to i32
  %and341 = and i32 %conv340, 9
  %tobool342 = icmp ne i32 %and341, 0
  br i1 %tobool342, label %if.then.343, label %if.end.345

if.then.343:                                      ; preds = %if.end.339
  %249 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv = getelementptr inbounds %struct.cop, %struct.cop* %249, i32 0, i32 10
  %250 = bitcast %struct.gv** %cop_filegv to %struct.sv**
  call void @Perl_save_sptr(%struct.sv** %250)
  %251 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_line344 = getelementptr inbounds %struct.cop, %struct.cop* %251, i32 0, i32 13
  call void @Perl_save_I32(i32* %cop_line344)
  %252 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  call void @Perl_gv_check(%struct.hv* %252)
  br label %if.end.345

if.end.345:                                       ; preds = %if.then.343, %if.end.339
  call void @Perl_pop_scope()
  %253 = load i32, i32* @PL_tmps_ix, align 4
  %254 = load i32, i32* @PL_tmps_floor, align 4
  %cmp346 = icmp sgt i32 %253, %254
  br i1 %cmp346, label %if.then.348, label %if.end.349

if.then.348:                                      ; preds = %if.end.345
  call void @Perl_free_tmps()
  br label %if.end.349

if.end.349:                                       ; preds = %if.then.348, %if.end.345
  call void @Perl_push_scope()
  store %struct.op* null, %struct.op** @PL_restartop, align 8
  ret i8* null
}

declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #1

declare %struct._PerlIO** @Perl_PerlIO_stderr() #1

; Function Attrs: nounwind uwtable
define i32 @perl_run(%struct.interpreter* %my_perl) #0 {
entry:
  %my_perl.addr = alloca %struct.interpreter*, align 8
  %oldscope = alloca i32, align 4
  %ret = alloca i32, align 4
  %cur_env = alloca %struct.jmpenv, align 8
  %tmp = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp51 = alloca %struct.av*, align 8
  %tmp53 = alloca %struct.stackinfo*, align 8
  %tmp89 = alloca %struct.jmpenv*, align 8
  store %struct.interpreter* %my_perl, %struct.interpreter** %my_perl.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load i32, i32* @PL_scopestack_ix, align 4
  store i32 %0, i32* %oldscope, align 4
  %1 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_prev = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 1
  store %struct.jmpenv* %1, %struct.jmpenv** %je_prev, align 8
  %je_buf = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %je_buf, i32 0, i32 0
  %call = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay, i32 0) #5
  %je_ret = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 2
  store i32 %call, i32* %je_ret, align 4
  store %struct.jmpenv* %cur_env, %struct.jmpenv** @PL_top_env, align 8
  %je_mustcatch = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 3
  store i8 0, i8* %je_mustcatch, align 1
  %je_ret1 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 2
  %2 = load i32, i32* %je_ret1, align 4
  store i32 %2, i32* %ret, align 4
  store i32 %2, i32* %tmp
  %3 = load i32, i32* %tmp
  %4 = load i32, i32* %ret, align 4
  switch i32 %4, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.2
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %5, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  br label %redo_body

sw.bb.2:                                          ; preds = %entry
  br label %redo_body

redo_body:                                        ; preds = %while.end.54, %sw.bb.2, %sw.bb
  %6 = load i32, i32* %oldscope, align 4
  %call3 = call i8* @S_run_body(i32 %6)
  br label %sw.bb.4

sw.bb.4:                                          ; preds = %entry, %redo_body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb.4
  %7 = load i32, i32* @PL_scopestack_ix, align 4
  %8 = load i32, i32* %oldscope, align 4
  %cmp = icmp sgt i32 %7, %8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @Perl_pop_scope()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* @PL_tmps_ix, align 4
  %10 = load i32, i32* @PL_tmps_floor, align 4
  %cmp5 = icmp sgt i32 %9, %10
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  call void @Perl_free_tmps()
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %11 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  store %struct.hv* %11, %struct.hv** @PL_curstash, align 8
  %12 = load i8, i8* @PL_exit_flags, align 1
  %conv = zext i8 %12 to i32
  %and = and i32 %conv, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %13 = load %struct.av*, %struct.av** @PL_endav, align 8
  %tobool6 = icmp ne %struct.av* %13, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.end.10

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %14 = load i8, i8* @PL_minus_c, align 1
  %tobool8 = icmp ne i8 %14, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true.7
  %15 = load i32, i32* %oldscope, align 4
  %16 = load %struct.av*, %struct.av** @PL_endav, align 8
  call void @Perl_call_list(i32 %15, %struct.av* %16)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %land.lhs.true.7, %land.lhs.true, %if.end
  %17 = load i32, i32* @PL_statusvalue, align 4
  store i32 %17, i32* %ret, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %18 = load %struct.op*, %struct.op** @PL_restartop, align 8
  %tobool12 = icmp ne %struct.op* %18, null
  br i1 %tobool12, label %if.then.13, label %if.end.55

if.then.13:                                       ; preds = %sw.bb.11
  br label %while.cond.14

while.cond.14:                                    ; preds = %if.end.42, %if.then.13
  %19 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %20 = load %struct.av*, %struct.av** @PL_mainstack, align 8
  %cmp15 = icmp ne %struct.av* %19, %20
  br i1 %cmp15, label %while.body.17, label %while.end.54

while.body.17:                                    ; preds = %while.cond.14
  call void @Perl_dounwind(i32 -1)
  %21 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %21, %struct.sv*** %sp, align 8
  %22 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %22, i32 0, i32 5
  %23 = load %struct.stackinfo*, %struct.stackinfo** %si_prev, align 8
  store %struct.stackinfo* %23, %struct.stackinfo** %prev, align 8
  %24 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool20 = icmp ne %struct.stackinfo* %24, null
  br i1 %tobool20, label %if.end.42, label %if.then.21

if.then.21:                                       ; preds = %while.body.17
  %25 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool22 = icmp ne %struct.gv* %25, null
  br i1 %tobool22, label %land.lhs.true.23, label %cond.false

land.lhs.true.23:                                 ; preds = %if.then.21
  %26 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %26, i32 0, i32 2
  %27 = load i32, i32* %sv_flags, align 4
  %and24 = and i32 %27, 255
  %cmp25 = icmp eq i32 %and24, 13
  br i1 %cmp25, label %land.lhs.true.27, label %cond.false

land.lhs.true.27:                                 ; preds = %land.lhs.true.23
  %28 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %28, i32 0, i32 0
  %29 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %29, i32 0, i32 7
  %30 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %30, i32 0, i32 2
  %31 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool28 = icmp ne %struct.io* %31, null
  br i1 %tobool28, label %land.lhs.true.29, label %cond.false

land.lhs.true.29:                                 ; preds = %land.lhs.true.27
  %32 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any30 = getelementptr inbounds %struct.gv, %struct.gv* %32, i32 0, i32 0
  %33 = load %struct.xpvgv*, %struct.xpvgv** %sv_any30, align 8
  %xgv_gp31 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %33, i32 0, i32 7
  %34 = load %struct.gp*, %struct.gp** %xgv_gp31, align 8
  %gp_io32 = getelementptr inbounds %struct.gp, %struct.gp* %34, i32 0, i32 2
  %35 = load %struct.io*, %struct.io** %gp_io32, align 8
  %sv_any33 = getelementptr inbounds %struct.io, %struct.io* %35, i32 0, i32 0
  %36 = load %struct.xpvio*, %struct.xpvio** %sv_any33, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %36, i32 0, i32 8
  %37 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool34 = icmp ne %struct._PerlIO** %37, null
  br i1 %tobool34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.29
  %38 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any35 = getelementptr inbounds %struct.gv, %struct.gv* %38, i32 0, i32 0
  %39 = load %struct.xpvgv*, %struct.xpvgv** %sv_any35, align 8
  %xgv_gp36 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %39, i32 0, i32 7
  %40 = load %struct.gp*, %struct.gp** %xgv_gp36, align 8
  %gp_io37 = getelementptr inbounds %struct.gp, %struct.gp* %40, i32 0, i32 2
  %41 = load %struct.io*, %struct.io** %gp_io37, align 8
  %sv_any38 = getelementptr inbounds %struct.io, %struct.io* %41, i32 0, i32 0
  %42 = load %struct.xpvio*, %struct.xpvio** %sv_any38, align 8
  %xio_ofp39 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %42, i32 0, i32 8
  %43 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp39, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.29, %land.lhs.true.27, %land.lhs.true.23, %if.then.21
  %call40 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PerlIO** [ %43, %cond.true ], [ %call40, %cond.false ]
  %call41 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.42

if.end.42:                                        ; preds = %cond.end, %while.body.17
  %44 = load %struct.sv**, %struct.sv*** %sp, align 8
  %45 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %44 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %45 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %46 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any43 = getelementptr inbounds %struct.av, %struct.av* %46, i32 0, i32 0
  %47 = load %struct.xpvav*, %struct.xpvav** %sv_any43, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %47, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill, align 8
  %48 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %48, i32 0, i32 0
  %49 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any44 = getelementptr inbounds %struct.av, %struct.av* %49, i32 0, i32 0
  %50 = load %struct.xpvav*, %struct.xpvav** %sv_any44, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %50, i32 0, i32 0
  %51 = load i8*, i8** %xav_array, align 8
  %52 = bitcast i8* %51 to %struct.sv**
  store %struct.sv** %52, %struct.sv*** @PL_stack_base, align 8
  %53 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %54 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack45 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %54, i32 0, i32 0
  %55 = load %struct.av*, %struct.av** %si_stack45, align 8
  %sv_any46 = getelementptr inbounds %struct.av, %struct.av* %55, i32 0, i32 0
  %56 = load %struct.xpvav*, %struct.xpvav** %sv_any46, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %56, i32 0, i32 2
  %57 = load i64, i64* %xav_max, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %53, i64 %57
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8
  %58 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %59 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack47 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %59, i32 0, i32 0
  %60 = load %struct.av*, %struct.av** %si_stack47, align 8
  %sv_any48 = getelementptr inbounds %struct.av, %struct.av* %60, i32 0, i32 0
  %61 = load %struct.xpvav*, %struct.xpvav** %sv_any48, align 8
  %xav_fill49 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %61, i32 0, i32 1
  %62 = load i64, i64* %xav_fill49, align 8
  %add.ptr50 = getelementptr inbounds %struct.sv*, %struct.sv** %58, i64 %62
  store %struct.sv** %add.ptr50, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr50, %struct.sv*** %sp, align 8
  %63 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack52 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %63, i32 0, i32 0
  %64 = load %struct.av*, %struct.av** %si_stack52, align 8
  store %struct.av* %64, %struct.av** @PL_curstack, align 8
  store %struct.av* %64, %struct.av** %tmp51
  %65 = load %struct.av*, %struct.av** %tmp51
  %66 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %66, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %66, %struct.stackinfo** %tmp53
  %67 = load %struct.stackinfo*, %struct.stackinfo** %tmp53
  br label %while.cond.14

while.end.54:                                     ; preds = %while.cond.14
  br label %redo_body

if.end.55:                                        ; preds = %sw.bb.11
  %68 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool56 = icmp ne %struct.gv* %68, null
  br i1 %tobool56, label %land.lhs.true.57, label %cond.false.80

land.lhs.true.57:                                 ; preds = %if.end.55
  %69 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags58 = getelementptr inbounds %struct.gv, %struct.gv* %69, i32 0, i32 2
  %70 = load i32, i32* %sv_flags58, align 4
  %and59 = and i32 %70, 255
  %cmp60 = icmp eq i32 %and59, 13
  br i1 %cmp60, label %land.lhs.true.62, label %cond.false.80

land.lhs.true.62:                                 ; preds = %land.lhs.true.57
  %71 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any63 = getelementptr inbounds %struct.gv, %struct.gv* %71, i32 0, i32 0
  %72 = load %struct.xpvgv*, %struct.xpvgv** %sv_any63, align 8
  %xgv_gp64 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %72, i32 0, i32 7
  %73 = load %struct.gp*, %struct.gp** %xgv_gp64, align 8
  %gp_io65 = getelementptr inbounds %struct.gp, %struct.gp* %73, i32 0, i32 2
  %74 = load %struct.io*, %struct.io** %gp_io65, align 8
  %tobool66 = icmp ne %struct.io* %74, null
  br i1 %tobool66, label %land.lhs.true.67, label %cond.false.80

land.lhs.true.67:                                 ; preds = %land.lhs.true.62
  %75 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any68 = getelementptr inbounds %struct.gv, %struct.gv* %75, i32 0, i32 0
  %76 = load %struct.xpvgv*, %struct.xpvgv** %sv_any68, align 8
  %xgv_gp69 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %76, i32 0, i32 7
  %77 = load %struct.gp*, %struct.gp** %xgv_gp69, align 8
  %gp_io70 = getelementptr inbounds %struct.gp, %struct.gp* %77, i32 0, i32 2
  %78 = load %struct.io*, %struct.io** %gp_io70, align 8
  %sv_any71 = getelementptr inbounds %struct.io, %struct.io* %78, i32 0, i32 0
  %79 = load %struct.xpvio*, %struct.xpvio** %sv_any71, align 8
  %xio_ofp72 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %79, i32 0, i32 8
  %80 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp72, align 8
  %tobool73 = icmp ne %struct._PerlIO** %80, null
  br i1 %tobool73, label %cond.true.74, label %cond.false.80

cond.true.74:                                     ; preds = %land.lhs.true.67
  %81 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any75 = getelementptr inbounds %struct.gv, %struct.gv* %81, i32 0, i32 0
  %82 = load %struct.xpvgv*, %struct.xpvgv** %sv_any75, align 8
  %xgv_gp76 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %82, i32 0, i32 7
  %83 = load %struct.gp*, %struct.gp** %xgv_gp76, align 8
  %gp_io77 = getelementptr inbounds %struct.gp, %struct.gp* %83, i32 0, i32 2
  %84 = load %struct.io*, %struct.io** %gp_io77, align 8
  %sv_any78 = getelementptr inbounds %struct.io, %struct.io* %84, i32 0, i32 0
  %85 = load %struct.xpvio*, %struct.xpvio** %sv_any78, align 8
  %xio_ofp79 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %85, i32 0, i32 8
  %86 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp79, align 8
  br label %cond.end.82

cond.false.80:                                    ; preds = %land.lhs.true.67, %land.lhs.true.62, %land.lhs.true.57, %if.end.55
  %call81 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.80, %cond.true.74
  %cond83 = phi %struct._PerlIO** [ %86, %cond.true.74 ], [ %call81, %cond.false.80 ]
  %call84 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0))
  %87 = load i32, i32* @PL_tmps_ix, align 4
  %88 = load i32, i32* @PL_tmps_floor, align 4
  %cmp85 = icmp sgt i32 %87, %88
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %cond.end.82
  call void @Perl_free_tmps()
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %cond.end.82
  store i32 1, i32* %ret, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.88, %if.end.10
  %je_prev90 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 1
  %89 = load %struct.jmpenv*, %struct.jmpenv** %je_prev90, align 8
  store %struct.jmpenv* %89, %struct.jmpenv** @PL_top_env, align 8
  store %struct.jmpenv* %89, %struct.jmpenv** %tmp89
  %90 = load %struct.jmpenv*, %struct.jmpenv** %tmp89
  %91 = load i32, i32* %ret, align 4
  ret i32 %91
}

; Function Attrs: nounwind uwtable
define internal i8* @S_run_body(i32 %oldscope) #0 {
entry:
  %oldscope.addr = alloca i32, align 4
  store i32 %oldscope, i32* %oldscope.addr, align 4
  %0 = load %struct.op*, %struct.op** @PL_restartop, align 8
  %tobool = icmp ne %struct.op* %0, null
  br i1 %tobool, label %if.end.29, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8, i8* @PL_minus_c, align 1
  %tobool1 = icmp ne i8 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %2 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool3 = icmp ne %struct.gv* %2, null
  br i1 %tobool3, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.2
  %3 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and = and i32 %4, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true.4, label %cond.false

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %5 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %5, i32 0, i32 0
  %6 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %6, i32 0, i32 7
  %7 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %7, i32 0, i32 2
  %8 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool5 = icmp ne %struct.io* %8, null
  br i1 %tobool5, label %land.lhs.true.6, label %cond.false

land.lhs.true.6:                                  ; preds = %land.lhs.true.4
  %9 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any7 = getelementptr inbounds %struct.gv, %struct.gv* %9, i32 0, i32 0
  %10 = load %struct.xpvgv*, %struct.xpvgv** %sv_any7, align 8
  %xgv_gp8 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %10, i32 0, i32 7
  %11 = load %struct.gp*, %struct.gp** %xgv_gp8, align 8
  %gp_io9 = getelementptr inbounds %struct.gp, %struct.gp* %11, i32 0, i32 2
  %12 = load %struct.io*, %struct.io** %gp_io9, align 8
  %sv_any10 = getelementptr inbounds %struct.io, %struct.io* %12, i32 0, i32 0
  %13 = load %struct.xpvio*, %struct.xpvio** %sv_any10, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %13, i32 0, i32 8
  %14 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool11 = icmp ne %struct._PerlIO** %14, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.6
  %15 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any12 = getelementptr inbounds %struct.gv, %struct.gv* %15, i32 0, i32 0
  %16 = load %struct.xpvgv*, %struct.xpvgv** %sv_any12, align 8
  %xgv_gp13 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %16, i32 0, i32 7
  %17 = load %struct.gp*, %struct.gp** %xgv_gp13, align 8
  %gp_io14 = getelementptr inbounds %struct.gp, %struct.gp* %17, i32 0, i32 2
  %18 = load %struct.io*, %struct.io** %gp_io14, align 8
  %sv_any15 = getelementptr inbounds %struct.io, %struct.io* %18, i32 0, i32 0
  %19 = load %struct.xpvio*, %struct.xpvio** %sv_any15, align 8
  %xio_ofp16 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %19, i32 0, i32 8
  %20 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp16, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.6, %land.lhs.true.4, %land.lhs.true, %if.then.2
  %call = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PerlIO** [ %20, %cond.true ], [ %call, %cond.false ]
  %21 = load i8*, i8** @PL_origfilename, align 8
  %call17 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.126, i32 0, i32 0), i8* %21)
  call void @Perl_my_exit(i32 0)
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %22 = load i32, i32* @PL_perldb, align 4
  %tobool18 = icmp ne i32 %22, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.25

land.lhs.true.19:                                 ; preds = %if.end
  %23 = load i32, i32* @PL_perldb, align 4
  %and20 = and i32 %23, 32
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %land.lhs.true.22, label %if.end.25

land.lhs.true.22:                                 ; preds = %land.lhs.true.19
  %24 = load %struct.sv*, %struct.sv** @PL_DBsingle, align 8
  %tobool23 = icmp ne %struct.sv* %24, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true.22
  %25 = load %struct.sv*, %struct.sv** @PL_DBsingle, align 8
  call void @Perl_sv_setiv(%struct.sv* %25, i64 1)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %land.lhs.true.22, %land.lhs.true.19, %if.end
  %26 = load %struct.av*, %struct.av** @PL_initav, align 8
  %tobool26 = icmp ne %struct.av* %26, null
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  %27 = load i32, i32* %oldscope.addr, align 4
  %28 = load %struct.av*, %struct.av** @PL_initav, align 8
  call void @Perl_call_list(i32 %27, %struct.av* %28)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.25
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %entry
  %29 = load %struct.op*, %struct.op** @PL_restartop, align 8
  %tobool30 = icmp ne %struct.op* %29, null
  br i1 %tobool30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end.29
  %30 = load %struct.op*, %struct.op** @PL_restartop, align 8
  store %struct.op* %30, %struct.op** @PL_op, align 8
  store %struct.op* null, %struct.op** @PL_restartop, align 8
  %31 = load i32 ()*, i32 ()** @PL_runops, align 8
  %call32 = call i32 %31()
  br label %if.end.38

if.else:                                          ; preds = %if.end.29
  %32 = load %struct.op*, %struct.op** @PL_main_start, align 8
  %tobool33 = icmp ne %struct.op* %32, null
  br i1 %tobool33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.else
  %33 = load %struct.cv*, %struct.cv** @PL_main_cv, align 8
  %sv_any35 = getelementptr inbounds %struct.cv, %struct.cv* %33, i32 0, i32 0
  %34 = load %struct.xpvcv*, %struct.xpvcv** %sv_any35, align 8
  %xcv_depth = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %34, i32 0, i32 14
  store i64 1, i64* %xcv_depth, align 8
  %35 = load %struct.op*, %struct.op** @PL_main_start, align 8
  store %struct.op* %35, %struct.op** @PL_op, align 8
  %36 = load i32 ()*, i32 ()** @PL_runops, align 8
  %call36 = call i32 %36()
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.else
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.31
  call void @Perl_my_exit(i32 0)
  ret i8* null
}

declare void @Perl_dounwind(i32) #1

; Function Attrs: nounwind uwtable
define void @Perl_my_exit(i32 %status) #0 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32, i32* %status.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* @PL_statusvalue, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* @PL_statusvalue, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %1 = load i32, i32* %status.addr, align 4
  store i32 %1, i32* @PL_statusvalue, align 4
  %2 = load i32, i32* @PL_statusvalue, align 4
  %cmp = icmp ne i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %3 = load i32, i32* @PL_statusvalue, align 4
  %and = and i32 %3, 65535
  store i32 %and, i32* @PL_statusvalue, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.1, %sw.bb
  call void @S_my_exit_jump()
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.sv* @Perl_get_sv(i8* %name, i32 %create) #0 {
entry:
  %retval = alloca %struct.sv*, align 8
  %name.addr = alloca i8*, align 8
  %create.addr = alloca i32, align 4
  %gv = alloca %struct.gv*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %create, i32* %create.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %create.addr, align 4
  %call = call %struct.gv* @Perl_gv_fetchpv(i8* %0, i32 %1, i32 4)
  store %struct.gv* %call, %struct.gv** %gv, align 8
  %2 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool = icmp ne %struct.gv* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %3, i32 0, i32 0
  %4 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %4, i32 0, i32 7
  %5 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %5, i32 0, i32 0
  %6 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  store %struct.sv* %6, %struct.sv** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct.sv* null, %struct.sv** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct.sv*, %struct.sv** %retval
  ret %struct.sv* %7
}

declare %struct.gv* @Perl_gv_fetchpv(i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct.av* @Perl_get_av(i8* %name, i32 %create) #0 {
entry:
  %retval = alloca %struct.av*, align 8
  %name.addr = alloca i8*, align 8
  %create.addr = alloca i32, align 4
  %gv = alloca %struct.gv*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %create, i32* %create.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %create.addr, align 4
  %call = call %struct.gv* @Perl_gv_fetchpv(i8* %0, i32 %1, i32 10)
  store %struct.gv* %call, %struct.gv** %gv, align 8
  %2 = load i32, i32* %create.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %3, i32 0, i32 0
  %4 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %4, i32 0, i32 7
  %5 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_av = getelementptr inbounds %struct.gp, %struct.gp* %5, i32 0, i32 4
  %6 = load %struct.av*, %struct.av** %gp_av, align 8
  %tobool1 = icmp ne %struct.av* %6, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any2 = getelementptr inbounds %struct.gv, %struct.gv* %7, i32 0, i32 0
  %8 = load %struct.xpvgv*, %struct.xpvgv** %sv_any2, align 8
  %xgv_gp3 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %8, i32 0, i32 7
  %9 = load %struct.gp*, %struct.gp** %xgv_gp3, align 8
  %gp_av4 = getelementptr inbounds %struct.gp, %struct.gp* %9, i32 0, i32 4
  %10 = load %struct.av*, %struct.av** %gp_av4, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %11 = load %struct.gv*, %struct.gv** %gv, align 8
  %call5 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %11)
  %sv_any6 = getelementptr inbounds %struct.gv, %struct.gv* %call5, i32 0, i32 0
  %12 = load %struct.xpvgv*, %struct.xpvgv** %sv_any6, align 8
  %xgv_gp7 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %12, i32 0, i32 7
  %13 = load %struct.gp*, %struct.gp** %xgv_gp7, align 8
  %gp_av8 = getelementptr inbounds %struct.gp, %struct.gp* %13, i32 0, i32 4
  %14 = load %struct.av*, %struct.av** %gp_av8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.av* [ %10, %cond.true ], [ %14, %cond.false ]
  store %struct.av* %cond, %struct.av** %retval
  br label %return

if.end:                                           ; preds = %entry
  %15 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool9 = icmp ne %struct.gv* %15, null
  br i1 %tobool9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end
  %16 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any11 = getelementptr inbounds %struct.gv, %struct.gv* %16, i32 0, i32 0
  %17 = load %struct.xpvgv*, %struct.xpvgv** %sv_any11, align 8
  %xgv_gp12 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %17, i32 0, i32 7
  %18 = load %struct.gp*, %struct.gp** %xgv_gp12, align 8
  %gp_av13 = getelementptr inbounds %struct.gp, %struct.gp* %18, i32 0, i32 4
  %19 = load %struct.av*, %struct.av** %gp_av13, align 8
  store %struct.av* %19, %struct.av** %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  store %struct.av* null, %struct.av** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.10, %cond.end
  %20 = load %struct.av*, %struct.av** %retval
  ret %struct.av* %20
}

declare %struct.gv* @Perl_gv_AVadd(%struct.gv*) #1

; Function Attrs: nounwind uwtable
define %struct.hv* @Perl_get_hv(i8* %name, i32 %create) #0 {
entry:
  %retval = alloca %struct.hv*, align 8
  %name.addr = alloca i8*, align 8
  %create.addr = alloca i32, align 4
  %gv = alloca %struct.gv*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %create, i32* %create.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %create.addr, align 4
  %call = call %struct.gv* @Perl_gv_fetchpv(i8* %0, i32 %1, i32 11)
  store %struct.gv* %call, %struct.gv** %gv, align 8
  %2 = load i32, i32* %create.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %3, i32 0, i32 0
  %4 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %4, i32 0, i32 7
  %5 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_hv = getelementptr inbounds %struct.gp, %struct.gp* %5, i32 0, i32 5
  %6 = load %struct.hv*, %struct.hv** %gp_hv, align 8
  %tobool1 = icmp ne %struct.hv* %6, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any2 = getelementptr inbounds %struct.gv, %struct.gv* %7, i32 0, i32 0
  %8 = load %struct.xpvgv*, %struct.xpvgv** %sv_any2, align 8
  %xgv_gp3 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %8, i32 0, i32 7
  %9 = load %struct.gp*, %struct.gp** %xgv_gp3, align 8
  %gp_hv4 = getelementptr inbounds %struct.gp, %struct.gp* %9, i32 0, i32 5
  %10 = load %struct.hv*, %struct.hv** %gp_hv4, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %11 = load %struct.gv*, %struct.gv** %gv, align 8
  %call5 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %11)
  %sv_any6 = getelementptr inbounds %struct.gv, %struct.gv* %call5, i32 0, i32 0
  %12 = load %struct.xpvgv*, %struct.xpvgv** %sv_any6, align 8
  %xgv_gp7 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %12, i32 0, i32 7
  %13 = load %struct.gp*, %struct.gp** %xgv_gp7, align 8
  %gp_hv8 = getelementptr inbounds %struct.gp, %struct.gp* %13, i32 0, i32 5
  %14 = load %struct.hv*, %struct.hv** %gp_hv8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.hv* [ %10, %cond.true ], [ %14, %cond.false ]
  store %struct.hv* %cond, %struct.hv** %retval
  br label %return

if.end:                                           ; preds = %entry
  %15 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool9 = icmp ne %struct.gv* %15, null
  br i1 %tobool9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end
  %16 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any11 = getelementptr inbounds %struct.gv, %struct.gv* %16, i32 0, i32 0
  %17 = load %struct.xpvgv*, %struct.xpvgv** %sv_any11, align 8
  %xgv_gp12 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %17, i32 0, i32 7
  %18 = load %struct.gp*, %struct.gp** %xgv_gp12, align 8
  %gp_hv13 = getelementptr inbounds %struct.gp, %struct.gp* %18, i32 0, i32 5
  %19 = load %struct.hv*, %struct.hv** %gp_hv13, align 8
  store %struct.hv* %19, %struct.hv** %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  store %struct.hv* null, %struct.hv** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.10, %cond.end
  %20 = load %struct.hv*, %struct.hv** %retval
  ret %struct.hv* %20
}

declare %struct.gv* @Perl_gv_HVadd(%struct.gv*) #1

; Function Attrs: nounwind uwtable
define %struct.cv* @Perl_get_cv(i8* %name, i32 %create) #0 {
entry:
  %retval = alloca %struct.cv*, align 8
  %name.addr = alloca i8*, align 8
  %create.addr = alloca i32, align 4
  %gv = alloca %struct.gv*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %create, i32* %create.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %create.addr, align 4
  %call = call %struct.gv* @Perl_gv_fetchpv(i8* %0, i32 %1, i32 12)
  store %struct.gv* %call, %struct.gv** %gv, align 8
  %2 = load i32, i32* %create.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %3, i32 0, i32 0
  %4 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %4, i32 0, i32 7
  %5 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_cvgen = getelementptr inbounds %struct.gp, %struct.gp* %5, i32 0, i32 8
  %6 = load i32, i32* %gp_cvgen, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br i1 false, label %if.end, label %if.then

cond.false:                                       ; preds = %land.lhs.true
  %7 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any2 = getelementptr inbounds %struct.gv, %struct.gv* %7, i32 0, i32 0
  %8 = load %struct.xpvgv*, %struct.xpvgv** %sv_any2, align 8
  %xgv_gp3 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %8, i32 0, i32 7
  %9 = load %struct.gp*, %struct.gp** %xgv_gp3, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %9, i32 0, i32 7
  %10 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  %tobool4 = icmp ne %struct.cv* %10, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  %call5 = call i32 @Perl_start_subparse(i32 0, i32 0)
  %11 = load i8*, i8** %name.addr, align 8
  %call6 = call %struct.sv* @Perl_newSVpv(i8* %11, i64 0)
  %call7 = call %struct.op* @Perl_newSVOP(i32 5, i32 0, %struct.sv* %call6)
  %call8 = call %struct.cv* @Perl_newSUB(i32 %call5, %struct.op* %call7, %struct.op* null, %struct.op* null)
  store %struct.cv* %call8, %struct.cv** %retval
  br label %return

if.end:                                           ; preds = %cond.false, %cond.true, %entry
  %12 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool9 = icmp ne %struct.gv* %12, null
  br i1 %tobool9, label %if.then.10, label %if.end.20

if.then.10:                                       ; preds = %if.end
  %13 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any11 = getelementptr inbounds %struct.gv, %struct.gv* %13, i32 0, i32 0
  %14 = load %struct.xpvgv*, %struct.xpvgv** %sv_any11, align 8
  %xgv_gp12 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %14, i32 0, i32 7
  %15 = load %struct.gp*, %struct.gp** %xgv_gp12, align 8
  %gp_cvgen13 = getelementptr inbounds %struct.gp, %struct.gp* %15, i32 0, i32 8
  %16 = load i32, i32* %gp_cvgen13, align 4
  %tobool14 = icmp ne i32 %16, 0
  br i1 %tobool14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %if.then.10
  br label %cond.end

cond.false.16:                                    ; preds = %if.then.10
  %17 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any17 = getelementptr inbounds %struct.gv, %struct.gv* %17, i32 0, i32 0
  %18 = load %struct.xpvgv*, %struct.xpvgv** %sv_any17, align 8
  %xgv_gp18 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %18, i32 0, i32 7
  %19 = load %struct.gp*, %struct.gp** %xgv_gp18, align 8
  %gp_cv19 = getelementptr inbounds %struct.gp, %struct.gp* %19, i32 0, i32 7
  %20 = load %struct.cv*, %struct.cv** %gp_cv19, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.16, %cond.true.15
  %cond = phi %struct.cv* [ null, %cond.true.15 ], [ %20, %cond.false.16 ]
  store %struct.cv* %cond, %struct.cv** %retval
  br label %return

if.end.20:                                        ; preds = %if.end
  store %struct.cv* null, %struct.cv** %retval
  br label %return

return:                                           ; preds = %if.end.20, %cond.end, %if.then
  %21 = load %struct.cv*, %struct.cv** %retval
  ret %struct.cv* %21
}

declare %struct.cv* @Perl_newSUB(i32, %struct.op*, %struct.op*, %struct.op*) #1

declare i32 @Perl_start_subparse(i32, i32) #1

declare %struct.op* @Perl_newSVOP(i32, i32, %struct.sv*) #1

declare %struct.sv* @Perl_newSVpv(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_call_argv(i8* %sub_name, i32 %flags, i8** %argv) #0 {
entry:
  %sub_name.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %sp = alloca %struct.sv**, align 8
  %tmp = alloca i32, align 4
  %tmp11 = alloca %struct.sv*, align 8
  store i8* %sub_name, i8** %sub_name.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
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
  %7 = load i8**, i8*** %argv.addr, align 8
  %tobool = icmp ne i8** %7, null
  br i1 %tobool, label %if.then.1, label %if.end.16

if.then.1:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %if.then.1
  %8 = load i8**, i8*** %argv.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %tobool2 = icmp ne i8* %9, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast3 = ptrtoint %struct.sv** %10 to i64
  %sub.ptr.rhs.cast4 = ptrtoint %struct.sv** %11 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %sub.ptr.div6 = sdiv exact i64 %sub.ptr.sub5, 8
  %cmp7 = icmp slt i64 %sub.ptr.div6, 1
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %while.body
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  %13 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %12, %struct.sv** %13, i32 1)
  store %struct.sv** %call, %struct.sv*** %sp, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %while.body
  %14 = load i8**, i8*** %argv.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %call12 = call %struct.sv* @Perl_newSVpv(i8* %15, i64 0)
  %call13 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call12)
  %16 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr14 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i32 1
  store %struct.sv** %incdec.ptr14, %struct.sv*** %sp, align 8
  store %struct.sv* %call13, %struct.sv** %incdec.ptr14, align 8
  store %struct.sv* %call13, %struct.sv** %tmp11
  %17 = load %struct.sv*, %struct.sv** %tmp11
  %18 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %incdec.ptr15, i8*** %argv.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %19, %struct.sv*** @PL_stack_sp, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %while.end, %if.end
  %20 = load i8*, i8** %sub_name.addr, align 8
  %21 = load i32, i32* %flags.addr, align 4
  %call17 = call i32 @Perl_call_pv(i8* %20, i32 %21)
  ret i32 %call17
}

declare void @Perl_markstack_grow() #1

declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_call_pv(i8* %sub_name, i32 %flags) #0 {
entry:
  %sub_name.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  store i8* %sub_name, i8** %sub_name.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %sub_name.addr, align 8
  %call = call %struct.cv* @Perl_get_cv(i8* %0, i32 1)
  %1 = bitcast %struct.cv* %call to %struct.sv*
  %2 = load i32, i32* %flags.addr, align 4
  %call1 = call i32 @Perl_call_sv(%struct.sv* %1, i32 %2)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @Perl_call_sv(%struct.sv* %sv, i32 %flags) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %flags.addr = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %myop = alloca %struct.logop, align 8
  %method_op = alloca %struct.unop, align 8
  %oldmark = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %oldscope = alloca i32, align 4
  %oldcatch = alloca i8, align 1
  %ret = alloca i32, align 4
  %oldop = alloca %struct.op*, align 8
  %cur_env = alloca %struct.jmpenv, align 8
  %cx = alloca %struct.context*, align 8
  %gimme = alloca i32, align 4
  %tmp = alloca %struct.cv*, align 8
  %tmp156 = alloca i32, align 4
  %tmp178 = alloca %struct.jmpenv*, align 8
  %newsp = alloca %struct.sv**, align 8
  %newpm = alloca %struct.pmop*, align 8
  %gimme205 = alloca i32, align 4
  %cx207 = alloca %struct.context*, align 8
  %optype = alloca i32, align 4
  %tmp270 = alloca %struct.jmpenv*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  store volatile i32 0, i32* %retval1, align 4
  %1 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_mustcatch = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %1, i32 0, i32 3
  %2 = load i8, i8* %je_mustcatch, align 1
  store i8 %2, i8* %oldcatch, align 1
  %3 = load %struct.op*, %struct.op** @PL_op, align 8
  store %struct.op* %3, %struct.op** %oldop, align 8
  %4 = load i32, i32* %flags.addr, align 4
  %and = and i32 %4, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_push_scope()
  call void @Perl_save_int(i32* @PL_tmps_floor)
  %5 = load i32, i32* @PL_tmps_ix, align 4
  store i32 %5, i32* @PL_tmps_floor, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = bitcast %struct.logop* %myop to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 56, i32 1, i1 false)
  %op_next = getelementptr inbounds %struct.logop, %struct.logop* %myop, i32 0, i32 0
  store %struct.op* null, %struct.op** %op_next, align 8
  %7 = load i32, i32* %flags.addr, align 4
  %and2 = and i32 %7, 8
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %op_flags = getelementptr inbounds %struct.logop, %struct.logop* %myop, i32 0, i32 6
  %8 = load i8, i8* %op_flags, align 1
  %conv = zext i8 %8 to i32
  %or = or i32 %conv, 64
  %conv5 = trunc i32 %or to i8
  store i8 %conv5, i8* %op_flags, align 1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %9 = load i32, i32* %flags.addr, align 4
  %and7 = and i32 %9, 128
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %10 = load i32, i32* %flags.addr, align 4
  %and9 = and i32 %10, 1
  %tobool10 = icmp ne i32 %and9, 0
  %cond = select i1 %tobool10, i32 3, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond11 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  %op_flags12 = getelementptr inbounds %struct.logop, %struct.logop* %myop, i32 0, i32 6
  %11 = load i8, i8* %op_flags12, align 1
  %conv13 = zext i8 %11 to i32
  %or14 = or i32 %conv13, %cond11
  %conv15 = trunc i32 %or14 to i8
  store i8 %conv15, i8* %op_flags12, align 1
  call void @Perl_save_op()
  %12 = bitcast %struct.logop* %myop to %struct.op*
  store %struct.op* %12, %struct.op** @PL_op, align 8
  %13 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %14 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %13 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp = icmp slt i64 %sub.ptr.div, 1
  br i1 %cmp, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %cond.end
  %15 = load %struct.sv**, %struct.sv*** %sp, align 8
  %16 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %15, %struct.sv** %16, i32 1)
  store %struct.sv** %call, %struct.sv*** %sp, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %cond.end
  %17 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %18 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %18, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv* %17, %struct.sv** %incdec.ptr, align 8
  %19 = load i32*, i32** @PL_markstack_ptr, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %oldmark, align 4
  %21 = load i32, i32* @PL_scopestack_ix, align 4
  store i32 %21, i32* %oldscope, align 4
  %22 = load i32, i32* @PL_perldb, align 4
  %tobool19 = icmp ne i32 %22, 0
  br i1 %tobool19, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %if.end.18
  %23 = load i32, i32* @PL_perldb, align 4
  %and20 = and i32 %23, 1
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %land.lhs.true.22, label %if.end.43

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %24 = load %struct.hv*, %struct.hv** @PL_curstash, align 8
  %25 = load %struct.hv*, %struct.hv** @PL_debstash, align 8
  %cmp23 = icmp ne %struct.hv* %24, %25
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.43

land.lhs.true.25:                                 ; preds = %land.lhs.true.22
  %26 = load %struct.cv*, %struct.cv** @PL_DBcv, align 8
  %tobool26 = icmp ne %struct.cv* %26, null
  br i1 %tobool26, label %land.lhs.true.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.25
  %27 = load %struct.gv*, %struct.gv** @PL_DBsub, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %27, i32 0, i32 0
  %28 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %28, i32 0, i32 7
  %29 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %29, i32 0, i32 7
  %30 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  store %struct.cv* %30, %struct.cv** @PL_DBcv, align 8
  %tobool27 = icmp ne %struct.cv* %30, null
  br i1 %tobool27, label %land.lhs.true.28, label %if.end.43

land.lhs.true.28:                                 ; preds = %lor.lhs.false, %land.lhs.true.25
  %31 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %31, i32 0, i32 2
  %32 = load i32, i32* %sv_flags, align 4
  %and29 = and i32 %32, 255
  %cmp30 = icmp ne i32 %and29, 12
  br i1 %cmp30, label %land.lhs.true.36, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %land.lhs.true.28
  %33 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %34 = bitcast %struct.sv* %33 to %struct.cv*
  %sv_any33 = getelementptr inbounds %struct.cv, %struct.cv* %34, i32 0, i32 0
  %35 = load %struct.xpvcv*, %struct.xpvcv** %sv_any33, align 8
  %xcv_stash = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %35, i32 0, i32 7
  %36 = load %struct.hv*, %struct.hv** %xcv_stash, align 8
  %37 = load %struct.hv*, %struct.hv** @PL_debstash, align 8
  %cmp34 = icmp ne %struct.hv* %36, %37
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.43

land.lhs.true.36:                                 ; preds = %lor.lhs.false.32, %land.lhs.true.28
  %38 = load i32, i32* %flags.addr, align 4
  %and37 = and i32 %38, 32
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.end.43, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true.36
  %39 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %39, i32 0, i32 7
  %40 = load i8, i8* %op_private, align 1
  %conv40 = zext i8 %40 to i32
  %or41 = or i32 %conv40, 16
  %conv42 = trunc i32 %or41 to i8
  store i8 %conv42, i8* %op_private, align 1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %land.lhs.true.36, %lor.lhs.false.32, %lor.lhs.false, %land.lhs.true.22, %land.lhs.true, %if.end.18
  %41 = load i32, i32* %flags.addr, align 4
  %and44 = and i32 %41, 64
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.end.43
  %42 = bitcast %struct.unop* %method_op to i8*
  call void @llvm.memset.p0i8.i64(i8* %42, i8 0, i64 48, i32 1, i1 false)
  %43 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next47 = getelementptr inbounds %struct.unop, %struct.unop* %method_op, i32 0, i32 0
  store %struct.op* %43, %struct.op** %op_next47, align 8
  %44 = load %struct.op* ()*, %struct.op* ()** getelementptr inbounds ([0 x %struct.op* ()*], [0 x %struct.op* ()*]* @PL_ppaddr, i32 0, i64 165), align 8
  %op_ppaddr = getelementptr inbounds %struct.unop, %struct.unop* %method_op, i32 0, i32 2
  store %struct.op* ()* %44, %struct.op* ()** %op_ppaddr, align 8
  %45 = load %struct.op* ()*, %struct.op* ()** getelementptr inbounds ([0 x %struct.op* ()*], [0 x %struct.op* ()*]* @PL_ppaddr, i32 0, i64 166), align 8
  %op_ppaddr48 = getelementptr inbounds %struct.logop, %struct.logop* %myop, i32 0, i32 2
  store %struct.op* ()* %45, %struct.op* ()** %op_ppaddr48, align 8
  %46 = bitcast %struct.unop* %method_op to %struct.op*
  store %struct.op* %46, %struct.op** @PL_op, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %if.end.43
  %47 = load i32, i32* %flags.addr, align 4
  %and50 = and i32 %47, 4
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.else, label %if.then.52

if.then.52:                                       ; preds = %if.end.49
  %48 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_mustcatch53 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %48, i32 0, i32 3
  store i8 1, i8* %je_mustcatch53, align 1
  %49 = bitcast %struct.logop* %myop to %struct.op*
  call void @S_call_body(%struct.op* %49, i32 0)
  %50 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %51 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %52 = load i32, i32* %oldmark, align 4
  %idx.ext = sext i32 %52 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %51, i64 %idx.ext
  %sub.ptr.lhs.cast54 = ptrtoint %struct.sv** %50 to i64
  %sub.ptr.rhs.cast55 = ptrtoint %struct.sv** %add.ptr to i64
  %sub.ptr.sub56 = sub i64 %sub.ptr.lhs.cast54, %sub.ptr.rhs.cast55
  %sub.ptr.div57 = sdiv exact i64 %sub.ptr.sub56, 8
  %conv58 = trunc i64 %sub.ptr.div57 to i32
  store volatile i32 %conv58, i32* %retval1, align 4
  %53 = load i8, i8* %oldcatch, align 1
  %54 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_mustcatch59 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %54, i32 0, i32 3
  store i8 %53, i8* %je_mustcatch59, align 1
  br label %if.end.272

if.else:                                          ; preds = %if.end.49
  %55 = bitcast %struct.logop* %myop to %struct.op*
  %op_other = getelementptr inbounds %struct.logop, %struct.logop* %myop, i32 0, i32 9
  store %struct.op* %55, %struct.op** %op_other, align 8
  %56 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr60 = getelementptr inbounds i32, i32* %56, i32 -1
  store i32* %incdec.ptr60, i32** @PL_markstack_ptr, align 8
  %57 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags61 = getelementptr inbounds %struct.op, %struct.op* %57, i32 0, i32 6
  %58 = load i8, i8* %op_flags61, align 1
  %conv62 = zext i8 %58 to i32
  %and63 = and i32 %conv62, 3
  %cmp64 = icmp eq i32 %and63, 1
  br i1 %cmp64, label %cond.true.66, label %cond.false.67

cond.true.66:                                     ; preds = %if.else
  br label %cond.end.87

cond.false.67:                                    ; preds = %if.else
  %59 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags68 = getelementptr inbounds %struct.op, %struct.op* %59, i32 0, i32 6
  %60 = load i8, i8* %op_flags68, align 1
  %conv69 = zext i8 %60 to i32
  %and70 = and i32 %conv69, 3
  %cmp71 = icmp eq i32 %and70, 2
  br i1 %cmp71, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %cond.false.67
  br label %cond.end.85

cond.false.74:                                    ; preds = %cond.false.67
  %61 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags75 = getelementptr inbounds %struct.op, %struct.op* %61, i32 0, i32 6
  %62 = load i8, i8* %op_flags75, align 1
  %conv76 = zext i8 %62 to i32
  %and77 = and i32 %conv76, 3
  %cmp78 = icmp eq i32 %and77, 3
  br i1 %cmp78, label %cond.true.80, label %cond.false.81

cond.true.80:                                     ; preds = %cond.false.74
  br label %cond.end.83

cond.false.81:                                    ; preds = %cond.false.74
  %call82 = call i32 @Perl_block_gimme()
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.81, %cond.true.80
  %cond84 = phi i32 [ 1, %cond.true.80 ], [ %call82, %cond.false.81 ]
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.end.83, %cond.true.73
  %cond86 = phi i32 [ 0, %cond.true.73 ], [ %cond84, %cond.end.83 ]
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.end.85, %cond.true.66
  %cond88 = phi i32 [ 128, %cond.true.66 ], [ %cond86, %cond.end.85 ]
  store i32 %cond88, i32* %gimme, align 4
  call void @Perl_push_scope()
  call void @Perl_save_int(i32* @PL_tmps_floor)
  %63 = load i32, i32* @PL_tmps_ix, align 4
  store i32 %63, i32* @PL_tmps_floor, align 4
  call void @Perl_push_return(%struct.op* null)
  %64 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %64, i32 0, i32 2
  %65 = load i32, i32* %si_cxix, align 4
  %66 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxmax = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %66, i32 0, i32 3
  %67 = load i32, i32* %si_cxmax, align 4
  %cmp89 = icmp slt i32 %65, %67
  br i1 %cmp89, label %cond.true.91, label %cond.false.93

cond.true.91:                                     ; preds = %cond.end.87
  %68 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix92 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %68, i32 0, i32 2
  %69 = load i32, i32* %si_cxix92, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %si_cxix92, align 4
  br label %cond.end.96

cond.false.93:                                    ; preds = %cond.end.87
  %call94 = call i32 @Perl_cxinc()
  %70 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix95 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %70, i32 0, i32 2
  store i32 %call94, i32* %si_cxix95, align 4
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.93, %cond.true.91
  %cond97 = phi i32 [ %inc, %cond.true.91 ], [ %call94, %cond.false.93 ]
  %71 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix98 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %71, i32 0, i32 2
  %72 = load i32, i32* %si_cxix98, align 4
  %idxprom = sext i32 %72 to i64
  %73 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxstack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %73, i32 0, i32 1
  %74 = load %struct.context*, %struct.context** %si_cxstack, align 8
  %arrayidx = getelementptr inbounds %struct.context, %struct.context* %74, i64 %idxprom
  store %struct.context* %arrayidx, %struct.context** %cx, align 8
  %75 = load %struct.context*, %struct.context** %cx, align 8
  %cx_type = getelementptr inbounds %struct.context, %struct.context* %75, i32 0, i32 0
  store i32 514, i32* %cx_type, align 4
  %76 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %77 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast99 = ptrtoint %struct.sv** %76 to i64
  %sub.ptr.rhs.cast100 = ptrtoint %struct.sv** %77 to i64
  %sub.ptr.sub101 = sub i64 %sub.ptr.lhs.cast99, %sub.ptr.rhs.cast100
  %sub.ptr.div102 = sdiv exact i64 %sub.ptr.sub101, 8
  %conv103 = trunc i64 %sub.ptr.div102 to i32
  %78 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u = getelementptr inbounds %struct.context, %struct.context* %78, i32 0, i32 1
  %cx_blk = bitcast %union.anon.0* %cx_u to %struct.block*
  %blku_oldsp = getelementptr inbounds %struct.block, %struct.block* %cx_blk, i32 0, i32 0
  store i32 %conv103, i32* %blku_oldsp, align 4
  %79 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %80 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u104 = getelementptr inbounds %struct.context, %struct.context* %80, i32 0, i32 1
  %cx_blk105 = bitcast %union.anon.0* %cx_u104 to %struct.block*
  %blku_oldcop = getelementptr inbounds %struct.block, %struct.block* %cx_blk105, i32 0, i32 1
  store %struct.cop* %79, %struct.cop** %blku_oldcop, align 8
  %81 = load i32*, i32** @PL_markstack_ptr, align 8
  %82 = load i32*, i32** @PL_markstack, align 8
  %sub.ptr.lhs.cast106 = ptrtoint i32* %81 to i64
  %sub.ptr.rhs.cast107 = ptrtoint i32* %82 to i64
  %sub.ptr.sub108 = sub i64 %sub.ptr.lhs.cast106, %sub.ptr.rhs.cast107
  %sub.ptr.div109 = sdiv exact i64 %sub.ptr.sub108, 4
  %conv110 = trunc i64 %sub.ptr.div109 to i32
  %83 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u111 = getelementptr inbounds %struct.context, %struct.context* %83, i32 0, i32 1
  %cx_blk112 = bitcast %union.anon.0* %cx_u111 to %struct.block*
  %blku_oldmarksp = getelementptr inbounds %struct.block, %struct.block* %cx_blk112, i32 0, i32 3
  store i32 %conv110, i32* %blku_oldmarksp, align 4
  %84 = load i32, i32* @PL_scopestack_ix, align 4
  %85 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u113 = getelementptr inbounds %struct.context, %struct.context* %85, i32 0, i32 1
  %cx_blk114 = bitcast %union.anon.0* %cx_u113 to %struct.block*
  %blku_oldscopesp = getelementptr inbounds %struct.block, %struct.block* %cx_blk114, i32 0, i32 4
  store i32 %84, i32* %blku_oldscopesp, align 4
  %86 = load i32, i32* @PL_retstack_ix, align 4
  %87 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u115 = getelementptr inbounds %struct.context, %struct.context* %87, i32 0, i32 1
  %cx_blk116 = bitcast %union.anon.0* %cx_u115 to %struct.block*
  %blku_oldretsp = getelementptr inbounds %struct.block, %struct.block* %cx_blk116, i32 0, i32 2
  store i32 %86, i32* %blku_oldretsp, align 4
  %88 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %89 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u117 = getelementptr inbounds %struct.context, %struct.context* %89, i32 0, i32 1
  %cx_blk118 = bitcast %union.anon.0* %cx_u117 to %struct.block*
  %blku_oldpm = getelementptr inbounds %struct.block, %struct.block* %cx_blk118, i32 0, i32 5
  store %struct.pmop* %88, %struct.pmop** %blku_oldpm, align 8
  %90 = load i32, i32* %gimme, align 4
  %conv119 = trunc i32 %90 to i8
  %91 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u120 = getelementptr inbounds %struct.context, %struct.context* %91, i32 0, i32 1
  %cx_blk121 = bitcast %union.anon.0* %cx_u120 to %struct.block*
  %blku_gimme = getelementptr inbounds %struct.block, %struct.block* %cx_blk121, i32 0, i32 6
  store i8 %conv119, i8* %blku_gimme, align 1
  %92 = load volatile i32, i32* @PL_in_eval, align 4
  %93 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u122 = getelementptr inbounds %struct.context, %struct.context* %93, i32 0, i32 1
  %cx_blk123 = bitcast %union.anon.0* %cx_u122 to %struct.block*
  %blk_u = getelementptr inbounds %struct.block, %struct.block* %cx_blk123, i32 0, i32 7
  %blku_eval = bitcast %union.anon.1* %blk_u to %struct.block_eval*
  %old_in_eval = getelementptr inbounds %struct.block_eval, %struct.block_eval* %blku_eval, i32 0, i32 0
  store i32 %92, i32* %old_in_eval, align 4
  %94 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %94, i32 0, i32 4
  %95 = load i16, i16* %op_type, align 2
  %conv124 = zext i16 %95 to i32
  %96 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u125 = getelementptr inbounds %struct.context, %struct.context* %96, i32 0, i32 1
  %cx_blk126 = bitcast %union.anon.0* %cx_u125 to %struct.block*
  %blk_u127 = getelementptr inbounds %struct.block, %struct.block* %cx_blk126, i32 0, i32 7
  %blku_eval128 = bitcast %union.anon.1* %blk_u127 to %struct.block_eval*
  %old_op_type = getelementptr inbounds %struct.block_eval, %struct.block_eval* %blku_eval128, i32 0, i32 1
  store i32 %conv124, i32* %old_op_type, align 4
  %97 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u129 = getelementptr inbounds %struct.context, %struct.context* %97, i32 0, i32 1
  %cx_blk130 = bitcast %union.anon.0* %cx_u129 to %struct.block*
  %blk_u131 = getelementptr inbounds %struct.block, %struct.block* %cx_blk130, i32 0, i32 7
  %blku_eval132 = bitcast %union.anon.1* %blk_u131 to %struct.block_eval*
  %old_namesv = getelementptr inbounds %struct.block_eval, %struct.block_eval* %blku_eval132, i32 0, i32 2
  store %struct.sv* null, %struct.sv** %old_namesv, align 8
  %98 = load %struct.op*, %struct.op** @PL_eval_root, align 8
  %99 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u133 = getelementptr inbounds %struct.context, %struct.context* %99, i32 0, i32 1
  %cx_blk134 = bitcast %union.anon.0* %cx_u133 to %struct.block*
  %blk_u135 = getelementptr inbounds %struct.block, %struct.block* %cx_blk134, i32 0, i32 7
  %blku_eval136 = bitcast %union.anon.1* %blk_u135 to %struct.block_eval*
  %old_eval_root = getelementptr inbounds %struct.block_eval, %struct.block_eval* %blku_eval136, i32 0, i32 3
  store %struct.op* %98, %struct.op** %old_eval_root, align 8
  %100 = load %struct.sv*, %struct.sv** @PL_linestr, align 8
  %101 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u137 = getelementptr inbounds %struct.context, %struct.context* %101, i32 0, i32 1
  %cx_blk138 = bitcast %union.anon.0* %cx_u137 to %struct.block*
  %blk_u139 = getelementptr inbounds %struct.block, %struct.block* %cx_blk138, i32 0, i32 7
  %blku_eval140 = bitcast %union.anon.1* %blk_u139 to %struct.block_eval*
  %cur_text = getelementptr inbounds %struct.block_eval, %struct.block_eval* %blku_eval140, i32 0, i32 4
  store %struct.sv* %100, %struct.sv** %cur_text, align 8
  %102 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u141 = getelementptr inbounds %struct.context, %struct.context* %102, i32 0, i32 1
  %cx_blk142 = bitcast %union.anon.0* %cx_u141 to %struct.block*
  %blk_u143 = getelementptr inbounds %struct.block, %struct.block* %cx_blk142, i32 0, i32 7
  %blku_eval144 = bitcast %union.anon.1* %blk_u143 to %struct.block_eval*
  %cv = getelementptr inbounds %struct.block_eval, %struct.block_eval* %blku_eval144, i32 0, i32 5
  store %struct.cv* null, %struct.cv** %cv, align 8
  store %struct.cv* null, %struct.cv** %tmp
  %103 = load %struct.cv*, %struct.cv** %tmp
  %104 = load %struct.op*, %struct.op** @PL_op, align 8
  store %struct.op* %104, %struct.op** @PL_eval_root, align 8
  store volatile i32 1, i32* @PL_in_eval, align 4
  %105 = load i32, i32* %flags.addr, align 4
  %and145 = and i32 %105, 16
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %if.then.147, label %if.else.149

if.then.147:                                      ; preds = %cond.end.96
  %106 = load volatile i32, i32* @PL_in_eval, align 4
  %or148 = or i32 %106, 4
  store volatile i32 %or148, i32* @PL_in_eval, align 4
  br label %if.end.152

if.else.149:                                      ; preds = %cond.end.96
  %107 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any150 = getelementptr inbounds %struct.gv, %struct.gv* %107, i32 0, i32 0
  %108 = load %struct.xpvgv*, %struct.xpvgv** %sv_any150, align 8
  %xgv_gp151 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %108, i32 0, i32 7
  %109 = load %struct.gp*, %struct.gp** %xgv_gp151, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %109, i32 0, i32 0
  %110 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  call void @Perl_sv_setpv(%struct.sv* %110, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.149, %if.then.147
  %111 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr153 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %incdec.ptr153, i32** @PL_markstack_ptr, align 8
  %112 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_prev = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 1
  store %struct.jmpenv* %112, %struct.jmpenv** %je_prev, align 8
  %je_buf = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %je_buf, i32 0, i32 0
  %call154 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay, i32 0) #5
  %je_ret = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 2
  store i32 %call154, i32* %je_ret, align 4
  store %struct.jmpenv* %cur_env, %struct.jmpenv** @PL_top_env, align 8
  %je_mustcatch155 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 3
  store i8 0, i8* %je_mustcatch155, align 1
  %je_ret157 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 2
  %113 = load i32, i32* %je_ret157, align 4
  store i32 %113, i32* %ret, align 4
  store i32 %113, i32* %tmp156
  %114 = load i32, i32* %tmp156
  %115 = load i32, i32* %ret, align 4
  switch i32 %115, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.172
    i32 2, label %sw.bb.173
    i32 3, label %sw.bb.187
  ]

sw.bb:                                            ; preds = %if.end.152
  br label %redo_body

redo_body:                                        ; preds = %if.then.189, %sw.bb
  %116 = bitcast %struct.logop* %myop to %struct.op*
  call void @S_call_body(%struct.op* %116, i32 0)
  %117 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %118 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %119 = load i32, i32* %oldmark, align 4
  %idx.ext158 = sext i32 %119 to i64
  %add.ptr159 = getelementptr inbounds %struct.sv*, %struct.sv** %118, i64 %idx.ext158
  %sub.ptr.lhs.cast160 = ptrtoint %struct.sv** %117 to i64
  %sub.ptr.rhs.cast161 = ptrtoint %struct.sv** %add.ptr159 to i64
  %sub.ptr.sub162 = sub i64 %sub.ptr.lhs.cast160, %sub.ptr.rhs.cast161
  %sub.ptr.div163 = sdiv exact i64 %sub.ptr.sub162, 8
  %conv164 = trunc i64 %sub.ptr.div163 to i32
  store volatile i32 %conv164, i32* %retval1, align 4
  %120 = load i32, i32* %flags.addr, align 4
  %and165 = and i32 %120, 16
  %tobool166 = icmp ne i32 %and165, 0
  br i1 %tobool166, label %if.end.171, label %if.then.167

if.then.167:                                      ; preds = %redo_body
  %121 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any168 = getelementptr inbounds %struct.gv, %struct.gv* %121, i32 0, i32 0
  %122 = load %struct.xpvgv*, %struct.xpvgv** %sv_any168, align 8
  %xgv_gp169 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %122, i32 0, i32 7
  %123 = load %struct.gp*, %struct.gp** %xgv_gp169, align 8
  %gp_sv170 = getelementptr inbounds %struct.gp, %struct.gp* %123, i32 0, i32 0
  %124 = load %struct.sv*, %struct.sv** %gp_sv170, align 8
  call void @Perl_sv_setpv(%struct.sv* %124, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.167, %redo_body
  br label %sw.epilog

sw.bb.172:                                        ; preds = %if.end.152
  store i32 1, i32* @PL_statusvalue, align 4
  br label %sw.bb.173

sw.bb.173:                                        ; preds = %if.end.152, %sw.bb.172
  %125 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  store %struct.hv* %125, %struct.hv** @PL_curstash, align 8
  %126 = load i32, i32* @PL_tmps_ix, align 4
  %127 = load i32, i32* @PL_tmps_floor, align 4
  %cmp174 = icmp sgt i32 %126, %127
  br i1 %cmp174, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %sw.bb.173
  call void @Perl_free_tmps()
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.176, %sw.bb.173
  %je_prev179 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 1
  %128 = load %struct.jmpenv*, %struct.jmpenv** %je_prev179, align 8
  store %struct.jmpenv* %128, %struct.jmpenv** @PL_top_env, align 8
  store %struct.jmpenv* %128, %struct.jmpenv** %tmp178
  %129 = load %struct.jmpenv*, %struct.jmpenv** %tmp178
  %130 = load i32, i32* @PL_statusvalue, align 4
  %tobool180 = icmp ne i32 %130, 0
  br i1 %tobool180, label %land.lhs.true.181, label %if.end.186

land.lhs.true.181:                                ; preds = %if.end.177
  %131 = load i8, i8* @PL_exit_flags, align 1
  %conv182 = zext i8 %131 to i32
  %and183 = and i32 %conv182, 1
  %tobool184 = icmp ne i32 %and183, 0
  br i1 %tobool184, label %if.end.186, label %if.then.185

if.then.185:                                      ; preds = %land.lhs.true.181
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.185, %land.lhs.true.181, %if.end.177
  call void @S_my_exit_jump()
  br label %sw.bb.187

sw.bb.187:                                        ; preds = %if.end.152, %if.end.186
  %132 = load %struct.op*, %struct.op** @PL_restartop, align 8
  %tobool188 = icmp ne %struct.op* %132, null
  br i1 %tobool188, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %sw.bb.187
  %133 = load %struct.op*, %struct.op** @PL_restartop, align 8
  store %struct.op* %133, %struct.op** @PL_op, align 8
  store %struct.op* null, %struct.op** @PL_restartop, align 8
  br label %redo_body

if.end.190:                                       ; preds = %sw.bb.187
  %134 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %135 = load i32, i32* %oldmark, align 4
  %idx.ext191 = sext i32 %135 to i64
  %add.ptr192 = getelementptr inbounds %struct.sv*, %struct.sv** %134, i64 %idx.ext191
  store %struct.sv** %add.ptr192, %struct.sv*** @PL_stack_sp, align 8
  %136 = load i32, i32* %flags.addr, align 4
  %and193 = and i32 %136, 1
  %tobool194 = icmp ne i32 %and193, 0
  br i1 %tobool194, label %if.then.195, label %if.else.196

if.then.195:                                      ; preds = %if.end.190
  store volatile i32 0, i32* %retval1, align 4
  br label %if.end.198

if.else.196:                                      ; preds = %if.end.190
  store volatile i32 1, i32* %retval1, align 4
  %137 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %incdec.ptr197 = getelementptr inbounds %struct.sv*, %struct.sv** %137, i32 1
  store %struct.sv** %incdec.ptr197, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr197, align 8
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.196, %if.then.195
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.152, %if.end.198, %if.end.171
  %138 = load i32, i32* @PL_scopestack_ix, align 4
  %139 = load i32, i32* %oldscope, align 4
  %cmp199 = icmp sgt i32 %138, %139
  br i1 %cmp199, label %if.then.201, label %if.end.269

if.then.201:                                      ; preds = %sw.epilog
  %140 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix209 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %140, i32 0, i32 2
  %141 = load i32, i32* %si_cxix209, align 4
  %dec = add nsw i32 %141, -1
  store i32 %dec, i32* %si_cxix209, align 4
  %idxprom210 = sext i32 %141 to i64
  %142 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxstack211 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %142, i32 0, i32 1
  %143 = load %struct.context*, %struct.context** %si_cxstack211, align 8
  %arrayidx212 = getelementptr inbounds %struct.context, %struct.context* %143, i64 %idxprom210
  store %struct.context* %arrayidx212, %struct.context** %cx207, align 8
  %144 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %145 = load %struct.context*, %struct.context** %cx207, align 8
  %cx_u213 = getelementptr inbounds %struct.context, %struct.context* %145, i32 0, i32 1
  %cx_blk214 = bitcast %union.anon.0* %cx_u213 to %struct.block*
  %blku_oldsp215 = getelementptr inbounds %struct.block, %struct.block* %cx_blk214, i32 0, i32 0
  %146 = load i32, i32* %blku_oldsp215, align 4
  %idx.ext216 = sext i32 %146 to i64
  %add.ptr217 = getelementptr inbounds %struct.sv*, %struct.sv** %144, i64 %idx.ext216
  store %struct.sv** %add.ptr217, %struct.sv*** %newsp, align 8
  %147 = load %struct.context*, %struct.context** %cx207, align 8
  %cx_u218 = getelementptr inbounds %struct.context, %struct.context* %147, i32 0, i32 1
  %cx_blk219 = bitcast %union.anon.0* %cx_u218 to %struct.block*
  %blku_oldcop220 = getelementptr inbounds %struct.block, %struct.block* %cx_blk219, i32 0, i32 1
  %148 = load %struct.cop*, %struct.cop** %blku_oldcop220, align 8
  store volatile %struct.cop* %148, %struct.cop** @PL_curcop, align 8
  %149 = load i32*, i32** @PL_markstack, align 8
  %150 = load %struct.context*, %struct.context** %cx207, align 8
  %cx_u221 = getelementptr inbounds %struct.context, %struct.context* %150, i32 0, i32 1
  %cx_blk222 = bitcast %union.anon.0* %cx_u221 to %struct.block*
  %blku_oldmarksp223 = getelementptr inbounds %struct.block, %struct.block* %cx_blk222, i32 0, i32 3
  %151 = load i32, i32* %blku_oldmarksp223, align 4
  %idx.ext224 = sext i32 %151 to i64
  %add.ptr225 = getelementptr inbounds i32, i32* %149, i64 %idx.ext224
  store i32* %add.ptr225, i32** @PL_markstack_ptr, align 8
  %152 = load %struct.context*, %struct.context** %cx207, align 8
  %cx_u226 = getelementptr inbounds %struct.context, %struct.context* %152, i32 0, i32 1
  %cx_blk227 = bitcast %union.anon.0* %cx_u226 to %struct.block*
  %blku_oldscopesp228 = getelementptr inbounds %struct.block, %struct.block* %cx_blk227, i32 0, i32 4
  %153 = load i32, i32* %blku_oldscopesp228, align 4
  store i32 %153, i32* @PL_scopestack_ix, align 4
  %154 = load %struct.context*, %struct.context** %cx207, align 8
  %cx_u229 = getelementptr inbounds %struct.context, %struct.context* %154, i32 0, i32 1
  %cx_blk230 = bitcast %union.anon.0* %cx_u229 to %struct.block*
  %blku_oldretsp231 = getelementptr inbounds %struct.block, %struct.block* %cx_blk230, i32 0, i32 2
  %155 = load i32, i32* %blku_oldretsp231, align 4
  store i32 %155, i32* @PL_retstack_ix, align 4
  %156 = load %struct.context*, %struct.context** %cx207, align 8
  %cx_u232 = getelementptr inbounds %struct.context, %struct.context* %156, i32 0, i32 1
  %cx_blk233 = bitcast %union.anon.0* %cx_u232 to %struct.block*
  %blku_oldpm234 = getelementptr inbounds %struct.block, %struct.block* %cx_blk233, i32 0, i32 5
  %157 = load %struct.pmop*, %struct.pmop** %blku_oldpm234, align 8
  store %struct.pmop* %157, %struct.pmop** %newpm, align 8
  %158 = load %struct.context*, %struct.context** %cx207, align 8
  %cx_u235 = getelementptr inbounds %struct.context, %struct.context* %158, i32 0, i32 1
  %cx_blk236 = bitcast %union.anon.0* %cx_u235 to %struct.block*
  %blku_gimme237 = getelementptr inbounds %struct.block, %struct.block* %cx_blk236, i32 0, i32 6
  %159 = load i8, i8* %blku_gimme237, align 1
  %conv238 = zext i8 %159 to i32
  store i32 %conv238, i32* %gimme205, align 4
  %160 = load %struct.context*, %struct.context** %cx207, align 8
  %cx_u239 = getelementptr inbounds %struct.context, %struct.context* %160, i32 0, i32 1
  %cx_blk240 = bitcast %union.anon.0* %cx_u239 to %struct.block*
  %blk_u241 = getelementptr inbounds %struct.block, %struct.block* %cx_blk240, i32 0, i32 7
  %blku_eval242 = bitcast %union.anon.1* %blk_u241 to %struct.block_eval*
  %old_in_eval243 = getelementptr inbounds %struct.block_eval, %struct.block_eval* %blku_eval242, i32 0, i32 0
  %161 = load i32, i32* %old_in_eval243, align 4
  store volatile i32 %161, i32* @PL_in_eval, align 4
  %162 = load %struct.context*, %struct.context** %cx207, align 8
  %cx_u244 = getelementptr inbounds %struct.context, %struct.context* %162, i32 0, i32 1
  %cx_blk245 = bitcast %union.anon.0* %cx_u244 to %struct.block*
  %blk_u246 = getelementptr inbounds %struct.block, %struct.block* %cx_blk245, i32 0, i32 7
  %blku_eval247 = bitcast %union.anon.1* %blk_u246 to %struct.block_eval*
  %old_op_type248 = getelementptr inbounds %struct.block_eval, %struct.block_eval* %blku_eval247, i32 0, i32 1
  %163 = load i32, i32* %old_op_type248, align 4
  store i32 %163, i32* %optype, align 4
  %164 = load %struct.context*, %struct.context** %cx207, align 8
  %cx_u249 = getelementptr inbounds %struct.context, %struct.context* %164, i32 0, i32 1
  %cx_blk250 = bitcast %union.anon.0* %cx_u249 to %struct.block*
  %blk_u251 = getelementptr inbounds %struct.block, %struct.block* %cx_blk250, i32 0, i32 7
  %blku_eval252 = bitcast %union.anon.1* %blk_u251 to %struct.block_eval*
  %old_eval_root253 = getelementptr inbounds %struct.block_eval, %struct.block_eval* %blku_eval252, i32 0, i32 3
  %165 = load %struct.op*, %struct.op** %old_eval_root253, align 8
  store %struct.op* %165, %struct.op** @PL_eval_root, align 8
  %166 = load %struct.context*, %struct.context** %cx207, align 8
  %cx_u254 = getelementptr inbounds %struct.context, %struct.context* %166, i32 0, i32 1
  %cx_blk255 = bitcast %union.anon.0* %cx_u254 to %struct.block*
  %blk_u256 = getelementptr inbounds %struct.block, %struct.block* %cx_blk255, i32 0, i32 7
  %blku_eval257 = bitcast %union.anon.1* %blk_u256 to %struct.block_eval*
  %old_namesv258 = getelementptr inbounds %struct.block_eval, %struct.block_eval* %blku_eval257, i32 0, i32 2
  %167 = load %struct.sv*, %struct.sv** %old_namesv258, align 8
  %tobool259 = icmp ne %struct.sv* %167, null
  br i1 %tobool259, label %if.then.260, label %if.end.267

if.then.260:                                      ; preds = %if.then.201
  %168 = load %struct.context*, %struct.context** %cx207, align 8
  %cx_u261 = getelementptr inbounds %struct.context, %struct.context* %168, i32 0, i32 1
  %cx_blk262 = bitcast %union.anon.0* %cx_u261 to %struct.block*
  %blk_u263 = getelementptr inbounds %struct.block, %struct.block* %cx_blk262, i32 0, i32 7
  %blku_eval264 = bitcast %union.anon.1* %blk_u263 to %struct.block_eval*
  %old_namesv265 = getelementptr inbounds %struct.block_eval, %struct.block_eval* %blku_eval264, i32 0, i32 2
  %169 = load %struct.sv*, %struct.sv** %old_namesv265, align 8
  %call266 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %169)
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.260, %if.then.201
  %call268 = call %struct.op* @Perl_pop_return()
  %170 = load %struct.pmop*, %struct.pmop** %newpm, align 8
  store %struct.pmop* %170, %struct.pmop** @PL_curpm, align 8
  call void @Perl_pop_scope()
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.267, %sw.epilog
  %je_prev271 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 1
  %171 = load %struct.jmpenv*, %struct.jmpenv** %je_prev271, align 8
  store %struct.jmpenv* %171, %struct.jmpenv** @PL_top_env, align 8
  store %struct.jmpenv* %171, %struct.jmpenv** %tmp270
  %172 = load %struct.jmpenv*, %struct.jmpenv** %tmp270
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.269, %if.then.52
  %173 = load i32, i32* %flags.addr, align 4
  %and273 = and i32 %173, 2
  %tobool274 = icmp ne i32 %and273, 0
  br i1 %tobool274, label %if.then.275, label %if.end.282

if.then.275:                                      ; preds = %if.end.272
  %174 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %175 = load i32, i32* %oldmark, align 4
  %idx.ext276 = sext i32 %175 to i64
  %add.ptr277 = getelementptr inbounds %struct.sv*, %struct.sv** %174, i64 %idx.ext276
  store %struct.sv** %add.ptr277, %struct.sv*** @PL_stack_sp, align 8
  store volatile i32 0, i32* %retval1, align 4
  %176 = load i32, i32* @PL_tmps_ix, align 4
  %177 = load i32, i32* @PL_tmps_floor, align 4
  %cmp278 = icmp sgt i32 %176, %177
  br i1 %cmp278, label %if.then.280, label %if.end.281

if.then.280:                                      ; preds = %if.then.275
  call void @Perl_free_tmps()
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.280, %if.then.275
  call void @Perl_pop_scope()
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.281, %if.end.272
  %178 = load %struct.op*, %struct.op** %oldop, align 8
  store %struct.op* %178, %struct.op** @PL_op, align 8
  %179 = load volatile i32, i32* %retval1, align 4
  ret i32 %179
}

; Function Attrs: nounwind uwtable
define i32 @Perl_call_method(i8* %methname, i32 %flags) #0 {
entry:
  %methname.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  store i8* %methname, i8** %methname.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %methname.addr, align 8
  %call = call %struct.sv* @Perl_newSVpv(i8* %0, i64 0)
  %call1 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call)
  %1 = load i32, i32* %flags.addr, align 4
  %or = or i32 %1, 64
  %call2 = call i32 @Perl_call_sv(%struct.sv* %call1, i32 %or)
  ret i32 %call2
}

declare void @Perl_save_int(i32*) #1

declare void @Perl_save_op() #1

; Function Attrs: nounwind uwtable
define internal void @S_call_body(%struct.op* %myop, i32 %is_eval) #0 {
entry:
  %myop.addr = alloca %struct.op*, align 8
  %is_eval.addr = alloca i32, align 4
  store %struct.op* %myop, %struct.op** %myop.addr, align 8
  store i32 %is_eval, i32* %is_eval.addr, align 4
  %0 = load %struct.op*, %struct.op** @PL_op, align 8
  %1 = load %struct.op*, %struct.op** %myop.addr, align 8
  %cmp = icmp eq %struct.op* %0, %1
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %is_eval.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %call = call %struct.op* @Perl_pp_entereval()
  store %struct.op* %call, %struct.op** @PL_op, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %call2 = call %struct.op* @Perl_pp_entersub()
  store %struct.op* %call2, %struct.op** @PL_op, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %3 = load %struct.op*, %struct.op** @PL_op, align 8
  %tobool4 = icmp ne %struct.op* %3, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %4 = load i32 ()*, i32 ()** @PL_runops, align 8
  %call6 = call i32 %4()
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  ret void
}

declare i32 @Perl_block_gimme() #1

declare void @Perl_push_return(%struct.op*) #1

declare i32 @Perl_cxinc() #1

declare void @Perl_croak(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @S_my_exit_jump() #0 {
entry:
  %cx = alloca %struct.context*, align 8
  %gimme = alloca i32, align 4
  %newsp = alloca %struct.sv**, align 8
  %sp = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %tmp29 = alloca %struct.stackinfo*, align 8
  %0 = load %struct.sv*, %struct.sv** @PL_e_script, align 8
  %tobool = icmp ne %struct.sv* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** @PL_e_script, align 8
  call void @Perl_sv_free(%struct.sv* %1)
  store %struct.sv* null, %struct.sv** @PL_e_script, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %if.end
  %2 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %3 = load %struct.av*, %struct.av** @PL_mainstack, align 8
  %cmp = icmp ne %struct.av* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @Perl_dounwind(i32 -1)
  %4 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %4, %struct.sv*** %sp, align 8
  %5 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %5, i32 0, i32 5
  %6 = load %struct.stackinfo*, %struct.stackinfo** %si_prev, align 8
  store %struct.stackinfo* %6, %struct.stackinfo** %prev, align 8
  %7 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool1 = icmp ne %struct.stackinfo* %7, null
  br i1 %tobool1, label %if.end.19, label %if.then.2

if.then.2:                                        ; preds = %while.body
  %8 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool3 = icmp ne %struct.gv* %8, null
  br i1 %tobool3, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.2
  %9 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %9, i32 0, i32 2
  %10 = load i32, i32* %sv_flags, align 4
  %and = and i32 %10, 255
  %cmp4 = icmp eq i32 %and, 13
  br i1 %cmp4, label %land.lhs.true.5, label %cond.false

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %11 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %11, i32 0, i32 0
  %12 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %12, i32 0, i32 7
  %13 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %13, i32 0, i32 2
  %14 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool6 = icmp ne %struct.io* %14, null
  br i1 %tobool6, label %land.lhs.true.7, label %cond.false

land.lhs.true.7:                                  ; preds = %land.lhs.true.5
  %15 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any8 = getelementptr inbounds %struct.gv, %struct.gv* %15, i32 0, i32 0
  %16 = load %struct.xpvgv*, %struct.xpvgv** %sv_any8, align 8
  %xgv_gp9 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %16, i32 0, i32 7
  %17 = load %struct.gp*, %struct.gp** %xgv_gp9, align 8
  %gp_io10 = getelementptr inbounds %struct.gp, %struct.gp* %17, i32 0, i32 2
  %18 = load %struct.io*, %struct.io** %gp_io10, align 8
  %sv_any11 = getelementptr inbounds %struct.io, %struct.io* %18, i32 0, i32 0
  %19 = load %struct.xpvio*, %struct.xpvio** %sv_any11, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %19, i32 0, i32 8
  %20 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool12 = icmp ne %struct._PerlIO** %20, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.7
  %21 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any13 = getelementptr inbounds %struct.gv, %struct.gv* %21, i32 0, i32 0
  %22 = load %struct.xpvgv*, %struct.xpvgv** %sv_any13, align 8
  %xgv_gp14 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %22, i32 0, i32 7
  %23 = load %struct.gp*, %struct.gp** %xgv_gp14, align 8
  %gp_io15 = getelementptr inbounds %struct.gp, %struct.gp* %23, i32 0, i32 2
  %24 = load %struct.io*, %struct.io** %gp_io15, align 8
  %sv_any16 = getelementptr inbounds %struct.io, %struct.io* %24, i32 0, i32 0
  %25 = load %struct.xpvio*, %struct.xpvio** %sv_any16, align 8
  %xio_ofp17 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %25, i32 0, i32 8
  %26 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp17, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.7, %land.lhs.true.5, %land.lhs.true, %if.then.2
  %call = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PerlIO** [ %26, %cond.true ], [ %call, %cond.false ]
  %call18 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.19

if.end.19:                                        ; preds = %cond.end, %while.body
  %27 = load %struct.sv**, %struct.sv*** %sp, align 8
  %28 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %27 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %28 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %29 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any20 = getelementptr inbounds %struct.av, %struct.av* %29, i32 0, i32 0
  %30 = load %struct.xpvav*, %struct.xpvav** %sv_any20, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %30, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill, align 8
  %31 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %31, i32 0, i32 0
  %32 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any21 = getelementptr inbounds %struct.av, %struct.av* %32, i32 0, i32 0
  %33 = load %struct.xpvav*, %struct.xpvav** %sv_any21, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %33, i32 0, i32 0
  %34 = load i8*, i8** %xav_array, align 8
  %35 = bitcast i8* %34 to %struct.sv**
  store %struct.sv** %35, %struct.sv*** @PL_stack_base, align 8
  %36 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %37 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack22 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %37, i32 0, i32 0
  %38 = load %struct.av*, %struct.av** %si_stack22, align 8
  %sv_any23 = getelementptr inbounds %struct.av, %struct.av* %38, i32 0, i32 0
  %39 = load %struct.xpvav*, %struct.xpvav** %sv_any23, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %39, i32 0, i32 2
  %40 = load i64, i64* %xav_max, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %36, i64 %40
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8
  %41 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %42 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack24 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %42, i32 0, i32 0
  %43 = load %struct.av*, %struct.av** %si_stack24, align 8
  %sv_any25 = getelementptr inbounds %struct.av, %struct.av* %43, i32 0, i32 0
  %44 = load %struct.xpvav*, %struct.xpvav** %sv_any25, align 8
  %xav_fill26 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %44, i32 0, i32 1
  %45 = load i64, i64* %xav_fill26, align 8
  %add.ptr27 = getelementptr inbounds %struct.sv*, %struct.sv** %41, i64 %45
  store %struct.sv** %add.ptr27, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr27, %struct.sv*** %sp, align 8
  %46 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack28 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %46, i32 0, i32 0
  %47 = load %struct.av*, %struct.av** %si_stack28, align 8
  store %struct.av* %47, %struct.av** @PL_curstack, align 8
  store %struct.av* %47, %struct.av** %tmp
  %48 = load %struct.av*, %struct.av** %tmp
  %49 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %49, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %49, %struct.stackinfo** %tmp29
  %50 = load %struct.stackinfo*, %struct.stackinfo** %tmp29
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %51 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %51, i32 0, i32 2
  %52 = load i32, i32* %si_cxix, align 4
  %cmp30 = icmp sge i32 %52, 0
  br i1 %cmp30, label %if.then.31, label %if.end.52

if.then.31:                                       ; preds = %while.end
  %53 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix32 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %53, i32 0, i32 2
  %54 = load i32, i32* %si_cxix32, align 4
  %cmp33 = icmp sgt i32 %54, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.31
  call void @Perl_dounwind(i32 0)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.then.31
  %55 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix36 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %55, i32 0, i32 2
  %56 = load i32, i32* %si_cxix36, align 4
  %dec = add nsw i32 %56, -1
  store i32 %dec, i32* %si_cxix36, align 4
  %idxprom = sext i32 %56 to i64
  %57 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxstack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %57, i32 0, i32 1
  %58 = load %struct.context*, %struct.context** %si_cxstack, align 8
  %arrayidx = getelementptr inbounds %struct.context, %struct.context* %58, i64 %idxprom
  store %struct.context* %arrayidx, %struct.context** %cx, align 8
  %59 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %60 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u = getelementptr inbounds %struct.context, %struct.context* %60, i32 0, i32 1
  %cx_blk = bitcast %union.anon.0* %cx_u to %struct.block*
  %blku_oldsp = getelementptr inbounds %struct.block, %struct.block* %cx_blk, i32 0, i32 0
  %61 = load i32, i32* %blku_oldsp, align 4
  %idx.ext = sext i32 %61 to i64
  %add.ptr37 = getelementptr inbounds %struct.sv*, %struct.sv** %59, i64 %idx.ext
  store %struct.sv** %add.ptr37, %struct.sv*** %newsp, align 8
  %62 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u38 = getelementptr inbounds %struct.context, %struct.context* %62, i32 0, i32 1
  %cx_blk39 = bitcast %union.anon.0* %cx_u38 to %struct.block*
  %blku_oldcop = getelementptr inbounds %struct.block, %struct.block* %cx_blk39, i32 0, i32 1
  %63 = load %struct.cop*, %struct.cop** %blku_oldcop, align 8
  store volatile %struct.cop* %63, %struct.cop** @PL_curcop, align 8
  %64 = load i32*, i32** @PL_markstack, align 8
  %65 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u40 = getelementptr inbounds %struct.context, %struct.context* %65, i32 0, i32 1
  %cx_blk41 = bitcast %union.anon.0* %cx_u40 to %struct.block*
  %blku_oldmarksp = getelementptr inbounds %struct.block, %struct.block* %cx_blk41, i32 0, i32 3
  %66 = load i32, i32* %blku_oldmarksp, align 4
  %idx.ext42 = sext i32 %66 to i64
  %add.ptr43 = getelementptr inbounds i32, i32* %64, i64 %idx.ext42
  store i32* %add.ptr43, i32** @PL_markstack_ptr, align 8
  %67 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u44 = getelementptr inbounds %struct.context, %struct.context* %67, i32 0, i32 1
  %cx_blk45 = bitcast %union.anon.0* %cx_u44 to %struct.block*
  %blku_oldscopesp = getelementptr inbounds %struct.block, %struct.block* %cx_blk45, i32 0, i32 4
  %68 = load i32, i32* %blku_oldscopesp, align 4
  store i32 %68, i32* @PL_scopestack_ix, align 4
  %69 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u46 = getelementptr inbounds %struct.context, %struct.context* %69, i32 0, i32 1
  %cx_blk47 = bitcast %union.anon.0* %cx_u46 to %struct.block*
  %blku_oldretsp = getelementptr inbounds %struct.block, %struct.block* %cx_blk47, i32 0, i32 2
  %70 = load i32, i32* %blku_oldretsp, align 4
  store i32 %70, i32* @PL_retstack_ix, align 4
  %71 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u48 = getelementptr inbounds %struct.context, %struct.context* %71, i32 0, i32 1
  %cx_blk49 = bitcast %union.anon.0* %cx_u48 to %struct.block*
  %blku_oldpm = getelementptr inbounds %struct.block, %struct.block* %cx_blk49, i32 0, i32 5
  %72 = load %struct.pmop*, %struct.pmop** %blku_oldpm, align 8
  store %struct.pmop* %72, %struct.pmop** @PL_curpm, align 8
  %73 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u50 = getelementptr inbounds %struct.context, %struct.context* %73, i32 0, i32 1
  %cx_blk51 = bitcast %union.anon.0* %cx_u50 to %struct.block*
  %blku_gimme = getelementptr inbounds %struct.block, %struct.block* %cx_blk51, i32 0, i32 6
  %74 = load i8, i8* %blku_gimme, align 1
  %conv = zext i8 %74 to i32
  store i32 %conv, i32* %gimme, align 4
  call void @Perl_pop_scope()
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.35, %while.end
  %75 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_prev = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %75, i32 0, i32 1
  %76 = load %struct.jmpenv*, %struct.jmpenv** %je_prev, align 8
  %tobool53 = icmp ne %struct.jmpenv* %76, null
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.52
  %77 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_buf = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %77, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %je_buf, i32 0, i32 0
  call void @siglongjmp(%struct.__jmp_buf_tag* %arraydecay, i32 2) #6
  unreachable

if.end.55:                                        ; preds = %if.end.52
  %78 = load i32, i32* @PL_statusvalue, align 4
  call void @exit(i32 %78) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare %struct.op* @Perl_pop_return() #1

; Function Attrs: nounwind uwtable
define i32 @Perl_eval_sv(%struct.sv* %sv, i32 %flags) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %flags.addr = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %myop = alloca %struct.unop, align 8
  %oldmark = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %oldscope = alloca i32, align 4
  %ret = alloca i32, align 4
  %oldop = alloca %struct.op*, align 8
  %cur_env = alloca %struct.jmpenv, align 8
  %tmp = alloca i32, align 4
  %tmp49 = alloca %struct.jmpenv*, align 8
  %tmp68 = alloca %struct.jmpenv*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** %sp, align 8
  %2 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  store volatile i32 %conv, i32* %oldmark, align 4
  store volatile i32 0, i32* %retval1, align 4
  %3 = load %struct.op*, %struct.op** @PL_op, align 8
  store %struct.op* %3, %struct.op** %oldop, align 8
  %4 = load i32, i32* %flags.addr, align 4
  %and = and i32 %4, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_push_scope()
  call void @Perl_save_int(i32* @PL_tmps_floor)
  %5 = load i32, i32* @PL_tmps_ix, align 4
  store i32 %5, i32* @PL_tmps_floor, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @Perl_save_op()
  %6 = bitcast %struct.unop* %myop to %struct.op*
  store %struct.op* %6, %struct.op** @PL_op, align 8
  %7 = load %struct.op*, %struct.op** @PL_op, align 8
  %8 = bitcast %struct.op* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 48, i32 1, i1 false)
  %9 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %sub.ptr.lhs.cast2 = ptrtoint %struct.sv** %9 to i64
  %sub.ptr.rhs.cast3 = ptrtoint %struct.sv** %10 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  %sub.ptr.div5 = sdiv exact i64 %sub.ptr.sub4, 8
  %cmp = icmp slt i64 %sub.ptr.div5, 1
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %12 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %11, %struct.sv** %12, i32 1)
  store %struct.sv** %call, %struct.sv*** %sp, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %13 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %14 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %14, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv* %13, %struct.sv** %incdec.ptr, align 8
  %15 = load i32, i32* @PL_scopestack_ix, align 4
  store i32 %15, i32* %oldscope, align 4
  %16 = load i32, i32* %flags.addr, align 4
  %and9 = and i32 %16, 8
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  %op_flags = getelementptr inbounds %struct.unop, %struct.unop* %myop, i32 0, i32 6
  store i8 64, i8* %op_flags, align 1
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.8
  %op_next = getelementptr inbounds %struct.unop, %struct.unop* %myop, i32 0, i32 0
  store %struct.op* null, %struct.op** %op_next, align 8
  %op_type = getelementptr inbounds %struct.unop, %struct.unop* %myop, i32 0, i32 4
  store i16 311, i16* %op_type, align 2
  %17 = load i32, i32* %flags.addr, align 4
  %and13 = and i32 %17, 128
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  %18 = load i32, i32* %flags.addr, align 4
  %and15 = and i32 %18, 1
  %tobool16 = icmp ne i32 %and15, 0
  %cond = select i1 %tobool16, i32 3, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond17 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  %op_flags18 = getelementptr inbounds %struct.unop, %struct.unop* %myop, i32 0, i32 6
  %19 = load i8, i8* %op_flags18, align 1
  %conv19 = zext i8 %19 to i32
  %or = or i32 %conv19, %cond17
  %conv20 = trunc i32 %or to i8
  store i8 %conv20, i8* %op_flags18, align 1
  %20 = load i32, i32* %flags.addr, align 4
  %and21 = and i32 %20, 16
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.28

if.then.23:                                       ; preds = %cond.end
  %op_flags24 = getelementptr inbounds %struct.unop, %struct.unop* %myop, i32 0, i32 6
  %21 = load i8, i8* %op_flags24, align 1
  %conv25 = zext i8 %21 to i32
  %or26 = or i32 %conv25, 128
  %conv27 = trunc i32 %or26 to i8
  store i8 %conv27, i8* %op_flags24, align 1
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.23, %cond.end
  %22 = load i8, i8* @PL_tainting, align 1
  %tobool29 = icmp ne i8 %22, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.28
  %23 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_prev = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 1
  store %struct.jmpenv* %23, %struct.jmpenv** %je_prev, align 8
  %je_buf = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %je_buf, i32 0, i32 0
  %call32 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay, i32 0) #5
  %je_ret = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 2
  store i32 %call32, i32* %je_ret, align 4
  store %struct.jmpenv* %cur_env, %struct.jmpenv** @PL_top_env, align 8
  %je_mustcatch = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 3
  store i8 0, i8* %je_mustcatch, align 1
  %je_ret33 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 2
  %24 = load i32, i32* %je_ret33, align 4
  store i32 %24, i32* %ret, align 4
  store i32 %24, i32* %tmp
  %25 = load i32, i32* %tmp
  %26 = load i32, i32* %ret, align 4
  switch i32 %26, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.43
    i32 2, label %sw.bb.44
    i32 3, label %sw.bb.57
  ]

sw.bb:                                            ; preds = %if.end.31
  br label %redo_body

redo_body:                                        ; preds = %if.then.59, %sw.bb
  %27 = bitcast %struct.unop* %myop to %struct.op*
  call void @S_call_body(%struct.op* %27, i32 1)
  %28 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %29 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %30 = load volatile i32, i32* %oldmark, align 4
  %idx.ext = sext i32 %30 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %29, i64 %idx.ext
  %sub.ptr.lhs.cast34 = ptrtoint %struct.sv** %28 to i64
  %sub.ptr.rhs.cast35 = ptrtoint %struct.sv** %add.ptr to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  %sub.ptr.div37 = sdiv exact i64 %sub.ptr.sub36, 8
  %conv38 = trunc i64 %sub.ptr.div37 to i32
  store volatile i32 %conv38, i32* %retval1, align 4
  %31 = load i32, i32* %flags.addr, align 4
  %and39 = and i32 %31, 16
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %redo_body
  %32 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %32, i32 0, i32 0
  %33 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %33, i32 0, i32 7
  %34 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %34, i32 0, i32 0
  %35 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  call void @Perl_sv_setpv(%struct.sv* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %redo_body
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.end.31
  store i32 1, i32* @PL_statusvalue, align 4
  br label %sw.bb.44

sw.bb.44:                                         ; preds = %if.end.31, %sw.bb.43
  %36 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  store %struct.hv* %36, %struct.hv** @PL_curstash, align 8
  %37 = load i32, i32* @PL_tmps_ix, align 4
  %38 = load i32, i32* @PL_tmps_floor, align 4
  %cmp45 = icmp sgt i32 %37, %38
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %sw.bb.44
  call void @Perl_free_tmps()
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %sw.bb.44
  %je_prev50 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 1
  %39 = load %struct.jmpenv*, %struct.jmpenv** %je_prev50, align 8
  store %struct.jmpenv* %39, %struct.jmpenv** @PL_top_env, align 8
  store %struct.jmpenv* %39, %struct.jmpenv** %tmp49
  %40 = load %struct.jmpenv*, %struct.jmpenv** %tmp49
  %41 = load i32, i32* @PL_statusvalue, align 4
  %tobool51 = icmp ne i32 %41, 0
  br i1 %tobool51, label %land.lhs.true, label %if.end.56

land.lhs.true:                                    ; preds = %if.end.48
  %42 = load i8, i8* @PL_exit_flags, align 1
  %conv52 = zext i8 %42 to i32
  %and53 = and i32 %conv52, 1
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %land.lhs.true, %if.end.48
  call void @S_my_exit_jump()
  br label %sw.bb.57

sw.bb.57:                                         ; preds = %if.end.31, %if.end.56
  %43 = load %struct.op*, %struct.op** @PL_restartop, align 8
  %tobool58 = icmp ne %struct.op* %43, null
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %sw.bb.57
  %44 = load %struct.op*, %struct.op** @PL_restartop, align 8
  store %struct.op* %44, %struct.op** @PL_op, align 8
  store %struct.op* null, %struct.op** @PL_restartop, align 8
  br label %redo_body

if.end.60:                                        ; preds = %sw.bb.57
  %45 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %46 = load volatile i32, i32* %oldmark, align 4
  %idx.ext61 = sext i32 %46 to i64
  %add.ptr62 = getelementptr inbounds %struct.sv*, %struct.sv** %45, i64 %idx.ext61
  store %struct.sv** %add.ptr62, %struct.sv*** @PL_stack_sp, align 8
  %47 = load i32, i32* %flags.addr, align 4
  %and63 = and i32 %47, 1
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %if.end.60
  store volatile i32 0, i32* %retval1, align 4
  br label %if.end.67

if.else:                                          ; preds = %if.end.60
  store volatile i32 1, i32* %retval1, align 4
  %48 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %incdec.ptr66 = getelementptr inbounds %struct.sv*, %struct.sv** %48, i32 1
  store %struct.sv** %incdec.ptr66, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr66, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.else, %if.then.65
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.31, %if.end.67, %if.end.42
  %je_prev69 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %cur_env, i32 0, i32 1
  %49 = load %struct.jmpenv*, %struct.jmpenv** %je_prev69, align 8
  store %struct.jmpenv* %49, %struct.jmpenv** @PL_top_env, align 8
  store %struct.jmpenv* %49, %struct.jmpenv** %tmp68
  %50 = load %struct.jmpenv*, %struct.jmpenv** %tmp68
  %51 = load i32, i32* %flags.addr, align 4
  %and70 = and i32 %51, 2
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.79

if.then.72:                                       ; preds = %sw.epilog
  %52 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %53 = load volatile i32, i32* %oldmark, align 4
  %idx.ext73 = sext i32 %53 to i64
  %add.ptr74 = getelementptr inbounds %struct.sv*, %struct.sv** %52, i64 %idx.ext73
  store %struct.sv** %add.ptr74, %struct.sv*** @PL_stack_sp, align 8
  store volatile i32 0, i32* %retval1, align 4
  %54 = load i32, i32* @PL_tmps_ix, align 4
  %55 = load i32, i32* @PL_tmps_floor, align 4
  %cmp75 = icmp sgt i32 %54, %55
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.then.72
  call void @Perl_free_tmps()
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.then.72
  call void @Perl_pop_scope()
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %sw.epilog
  %56 = load %struct.op*, %struct.op** %oldop, align 8
  store %struct.op* %56, %struct.op** @PL_op, align 8
  %57 = load volatile i32, i32* %retval1, align 4
  ret i32 %57
}

declare void @Perl_taint_proper(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.sv* @Perl_eval_pv(i8* %p, i32 %croak_on_error) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %croak_on_error.addr = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %sv = alloca %struct.sv*, align 8
  %n_a = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store i32 %croak_on_error, i32* %croak_on_error.addr, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load i8*, i8** %p.addr, align 8
  %call = call %struct.sv* @Perl_newSVpv(i8* %1, i64 0)
  store %struct.sv* %call, %struct.sv** %sv, align 8
  %2 = load %struct.sv*, %struct.sv** %sv, align 8
  %call1 = call i32 @Perl_eval_sv(%struct.sv* %2, i32 0)
  %3 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_free(%struct.sv* %3)
  %4 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %4, %struct.sv*** %sp, align 8
  %5 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %5, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %6 = load %struct.sv*, %struct.sv** %5, align 8
  store %struct.sv* %6, %struct.sv** %sv, align 8
  %7 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %7, %struct.sv*** @PL_stack_sp, align 8
  %8 = load i32, i32* %croak_on_error.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %9, i32 0, i32 0
  %10 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %10, i32 0, i32 7
  %11 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %11, i32 0, i32 0
  %12 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %tobool2 = icmp ne %struct.sv* %12, null
  br i1 %tobool2, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  br i1 false, label %if.then, label %if.end

cond.false:                                       ; preds = %land.lhs.true
  %13 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any3 = getelementptr inbounds %struct.gv, %struct.gv* %13, i32 0, i32 0
  %14 = load %struct.xpvgv*, %struct.xpvgv** %sv_any3, align 8
  %xgv_gp4 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %14, i32 0, i32 7
  %15 = load %struct.gp*, %struct.gp** %xgv_gp4, align 8
  %gp_sv5 = getelementptr inbounds %struct.gp, %struct.gp* %15, i32 0, i32 0
  %16 = load %struct.sv*, %struct.sv** %gp_sv5, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags, align 4
  %and = and i32 %17, 262144
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %cond.true.7, label %cond.false.21

cond.true.7:                                      ; preds = %cond.false
  %18 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any8 = getelementptr inbounds %struct.gv, %struct.gv* %18, i32 0, i32 0
  %19 = load %struct.xpvgv*, %struct.xpvgv** %sv_any8, align 8
  %xgv_gp9 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %19, i32 0, i32 7
  %20 = load %struct.gp*, %struct.gp** %xgv_gp9, align 8
  %gp_sv10 = getelementptr inbounds %struct.gp, %struct.gp* %20, i32 0, i32 0
  %21 = load %struct.sv*, %struct.sv** %gp_sv10, align 8
  %sv_any11 = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 0
  %22 = load i8*, i8** %sv_any11, align 8
  %23 = bitcast i8* %22 to %struct.xpv*
  store %struct.xpv* %23, %struct.xpv** @PL_Xpv, align 8
  %tobool12 = icmp ne %struct.xpv* %23, null
  br i1 %tobool12, label %land.lhs.true.13, label %cond.false.20

land.lhs.true.13:                                 ; preds = %cond.true.7
  %24 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %24, i32 0, i32 1
  %25 = load i64, i64* %xpv_cur, align 8
  %cmp = icmp ugt i64 %25, 1
  br i1 %cmp, label %cond.true.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.13
  %26 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur14 = getelementptr inbounds %struct.xpv, %struct.xpv* %26, i32 0, i32 1
  %27 = load i64, i64* %xpv_cur14, align 8
  %tobool15 = icmp ne i64 %27, 0
  br i1 %tobool15, label %land.lhs.true.16, label %cond.false.20

land.lhs.true.16:                                 ; preds = %lor.lhs.false
  %28 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %28, i32 0, i32 0
  %29 = load i8*, i8** %xpv_pv, align 8
  %30 = load i8, i8* %29, align 1
  %conv = sext i8 %30 to i32
  %cmp17 = icmp ne i32 %conv, 48
  br i1 %cmp17, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %land.lhs.true.16, %land.lhs.true.13
  br i1 true, label %if.then, label %if.end

cond.false.20:                                    ; preds = %land.lhs.true.16, %lor.lhs.false, %cond.true.7
  br i1 false, label %if.then, label %if.end

cond.false.21:                                    ; preds = %cond.false
  %31 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any22 = getelementptr inbounds %struct.gv, %struct.gv* %31, i32 0, i32 0
  %32 = load %struct.xpvgv*, %struct.xpvgv** %sv_any22, align 8
  %xgv_gp23 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %32, i32 0, i32 7
  %33 = load %struct.gp*, %struct.gp** %xgv_gp23, align 8
  %gp_sv24 = getelementptr inbounds %struct.gp, %struct.gp* %33, i32 0, i32 0
  %34 = load %struct.sv*, %struct.sv** %gp_sv24, align 8
  %sv_flags25 = getelementptr inbounds %struct.sv, %struct.sv* %34, i32 0, i32 2
  %35 = load i32, i32* %sv_flags25, align 4
  %and26 = and i32 %35, 65536
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %cond.true.28, label %cond.false.35

cond.true.28:                                     ; preds = %cond.false.21
  %36 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any29 = getelementptr inbounds %struct.gv, %struct.gv* %36, i32 0, i32 0
  %37 = load %struct.xpvgv*, %struct.xpvgv** %sv_any29, align 8
  %xgv_gp30 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %37, i32 0, i32 7
  %38 = load %struct.gp*, %struct.gp** %xgv_gp30, align 8
  %gp_sv31 = getelementptr inbounds %struct.gp, %struct.gp* %38, i32 0, i32 0
  %39 = load %struct.sv*, %struct.sv** %gp_sv31, align 8
  %sv_any32 = getelementptr inbounds %struct.sv, %struct.sv* %39, i32 0, i32 0
  %40 = load i8*, i8** %sv_any32, align 8
  %41 = bitcast i8* %40 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %41, i32 0, i32 3
  %42 = load i64, i64* %xiv_iv, align 8
  %cmp33 = icmp ne i64 %42, 0
  br i1 %cmp33, label %if.then, label %if.end

cond.false.35:                                    ; preds = %cond.false.21
  %43 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any36 = getelementptr inbounds %struct.gv, %struct.gv* %43, i32 0, i32 0
  %44 = load %struct.xpvgv*, %struct.xpvgv** %sv_any36, align 8
  %xgv_gp37 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %44, i32 0, i32 7
  %45 = load %struct.gp*, %struct.gp** %xgv_gp37, align 8
  %gp_sv38 = getelementptr inbounds %struct.gp, %struct.gp* %45, i32 0, i32 0
  %46 = load %struct.sv*, %struct.sv** %gp_sv38, align 8
  %sv_flags39 = getelementptr inbounds %struct.sv, %struct.sv* %46, i32 0, i32 2
  %47 = load i32, i32* %sv_flags39, align 4
  %and40 = and i32 %47, 131072
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %cond.true.42, label %cond.false.49

cond.true.42:                                     ; preds = %cond.false.35
  %48 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any43 = getelementptr inbounds %struct.gv, %struct.gv* %48, i32 0, i32 0
  %49 = load %struct.xpvgv*, %struct.xpvgv** %sv_any43, align 8
  %xgv_gp44 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %49, i32 0, i32 7
  %50 = load %struct.gp*, %struct.gp** %xgv_gp44, align 8
  %gp_sv45 = getelementptr inbounds %struct.gp, %struct.gp* %50, i32 0, i32 0
  %51 = load %struct.sv*, %struct.sv** %gp_sv45, align 8
  %sv_any46 = getelementptr inbounds %struct.sv, %struct.sv* %51, i32 0, i32 0
  %52 = load i8*, i8** %sv_any46, align 8
  %53 = bitcast i8* %52 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %53, i32 0, i32 4
  %54 = load double, double* %xnv_nv, align 8
  %cmp47 = fcmp une double %54, 0.000000e+00
  br i1 %cmp47, label %if.then, label %if.end

cond.false.49:                                    ; preds = %cond.false.35
  %55 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any50 = getelementptr inbounds %struct.gv, %struct.gv* %55, i32 0, i32 0
  %56 = load %struct.xpvgv*, %struct.xpvgv** %sv_any50, align 8
  %xgv_gp51 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %56, i32 0, i32 7
  %57 = load %struct.gp*, %struct.gp** %xgv_gp51, align 8
  %gp_sv52 = getelementptr inbounds %struct.gp, %struct.gp* %57, i32 0, i32 0
  %58 = load %struct.sv*, %struct.sv** %gp_sv52, align 8
  %call53 = call signext i8 @Perl_sv_2bool(%struct.sv* %58)
  %conv54 = sext i8 %call53 to i32
  %tobool55 = icmp ne i32 %conv54, 0
  br i1 %tobool55, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false.49, %cond.true.42, %cond.true.28, %cond.false.20, %cond.true.19, %cond.true
  %59 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any56 = getelementptr inbounds %struct.gv, %struct.gv* %59, i32 0, i32 0
  %60 = load %struct.xpvgv*, %struct.xpvgv** %sv_any56, align 8
  %xgv_gp57 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %60, i32 0, i32 7
  %61 = load %struct.gp*, %struct.gp** %xgv_gp57, align 8
  %gp_sv58 = getelementptr inbounds %struct.gp, %struct.gp* %61, i32 0, i32 0
  %62 = load %struct.sv*, %struct.sv** %gp_sv58, align 8
  store %struct.sv* %62, %struct.sv** @PL_Sv, align 8
  %63 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags59 = getelementptr inbounds %struct.sv, %struct.sv* %63, i32 0, i32 2
  %64 = load i32, i32* %sv_flags59, align 4
  %and60 = and i32 %64, 262144
  %cmp61 = icmp eq i32 %and60, 262144
  br i1 %cmp61, label %cond.true.63, label %cond.false.68

cond.true.63:                                     ; preds = %if.then
  %65 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any64 = getelementptr inbounds %struct.sv, %struct.sv* %65, i32 0, i32 0
  %66 = load i8*, i8** %sv_any64, align 8
  %67 = bitcast i8* %66 to %struct.xpv*
  %xpv_cur65 = getelementptr inbounds %struct.xpv, %struct.xpv* %67, i32 0, i32 1
  %68 = load i64, i64* %xpv_cur65, align 8
  store i64 %68, i64* %n_a, align 8
  %69 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any66 = getelementptr inbounds %struct.sv, %struct.sv* %69, i32 0, i32 0
  %70 = load i8*, i8** %sv_any66, align 8
  %71 = bitcast i8* %70 to %struct.xpv*
  %xpv_pv67 = getelementptr inbounds %struct.xpv, %struct.xpv* %71, i32 0, i32 0
  %72 = load i8*, i8** %xpv_pv67, align 8
  br label %cond.end

cond.false.68:                                    ; preds = %if.then
  %73 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call69 = call i8* @Perl_sv_2pv_flags(%struct.sv* %73, i64* %n_a, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.68, %cond.true.63
  %cond = phi i8* [ %72, %cond.true.63 ], [ %call69, %cond.false.68 ]
  call void (i8*, ...) @Perl_croak(i8* %cond)
  br label %if.end

if.end:                                           ; preds = %cond.end, %cond.false.49, %cond.true.42, %cond.true.28, %cond.false.20, %cond.true.19, %cond.true, %entry
  %74 = load %struct.sv*, %struct.sv** %sv, align 8
  ret %struct.sv* %74
}

declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: nounwind uwtable
define void @Perl_require_pv(i8* %pv) #0 {
entry:
  %pv.addr = alloca i8*, align 8
  %sv = alloca %struct.sv*, align 8
  %sp = alloca %struct.sv**, align 8
  %next = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %sp16 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp56 = alloca %struct.av*, align 8
  %tmp58 = alloca %struct.stackinfo*, align 8
  store i8* %pv, i8** %pv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
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
  store i32 9, i32* %si_type, align 4
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
  %36 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %36, %struct.sv*** @PL_stack_sp, align 8
  %call13 = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call13, %struct.sv** %sv, align 8
  %37 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_setpv(%struct.sv* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0))
  %38 = load %struct.sv*, %struct.sv** %sv, align 8
  %39 = load i8*, i8** %pv.addr, align 8
  call void @Perl_sv_catpv(%struct.sv* %38, i8* %39)
  %40 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_catpv(%struct.sv* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  %41 = load %struct.sv*, %struct.sv** %sv, align 8
  %call14 = call i32 @Perl_eval_sv(%struct.sv* %41, i32 2)
  %42 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %42, %struct.sv*** %sp, align 8
  %43 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %43, %struct.sv*** %sp16, align 8
  %44 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev18 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %44, i32 0, i32 5
  %45 = load %struct.stackinfo*, %struct.stackinfo** %si_prev18, align 8
  store %struct.stackinfo* %45, %struct.stackinfo** %prev, align 8
  %46 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool19 = icmp ne %struct.stackinfo* %46, null
  br i1 %tobool19, label %if.end.38, label %if.then.20

if.then.20:                                       ; preds = %if.end
  %47 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool21 = icmp ne %struct.gv* %47, null
  br i1 %tobool21, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.20
  %48 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %48, i32 0, i32 2
  %49 = load i32, i32* %sv_flags, align 4
  %and = and i32 %49, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true.22, label %cond.false

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %50 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any23 = getelementptr inbounds %struct.gv, %struct.gv* %50, i32 0, i32 0
  %51 = load %struct.xpvgv*, %struct.xpvgv** %sv_any23, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %51, i32 0, i32 7
  %52 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %52, i32 0, i32 2
  %53 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool24 = icmp ne %struct.io* %53, null
  br i1 %tobool24, label %land.lhs.true.25, label %cond.false

land.lhs.true.25:                                 ; preds = %land.lhs.true.22
  %54 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any26 = getelementptr inbounds %struct.gv, %struct.gv* %54, i32 0, i32 0
  %55 = load %struct.xpvgv*, %struct.xpvgv** %sv_any26, align 8
  %xgv_gp27 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %55, i32 0, i32 7
  %56 = load %struct.gp*, %struct.gp** %xgv_gp27, align 8
  %gp_io28 = getelementptr inbounds %struct.gp, %struct.gp* %56, i32 0, i32 2
  %57 = load %struct.io*, %struct.io** %gp_io28, align 8
  %sv_any29 = getelementptr inbounds %struct.io, %struct.io* %57, i32 0, i32 0
  %58 = load %struct.xpvio*, %struct.xpvio** %sv_any29, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %58, i32 0, i32 8
  %59 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool30 = icmp ne %struct._PerlIO** %59, null
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.25
  %60 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any31 = getelementptr inbounds %struct.gv, %struct.gv* %60, i32 0, i32 0
  %61 = load %struct.xpvgv*, %struct.xpvgv** %sv_any31, align 8
  %xgv_gp32 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %61, i32 0, i32 7
  %62 = load %struct.gp*, %struct.gp** %xgv_gp32, align 8
  %gp_io33 = getelementptr inbounds %struct.gp, %struct.gp* %62, i32 0, i32 2
  %63 = load %struct.io*, %struct.io** %gp_io33, align 8
  %sv_any34 = getelementptr inbounds %struct.io, %struct.io* %63, i32 0, i32 0
  %64 = load %struct.xpvio*, %struct.xpvio** %sv_any34, align 8
  %xio_ofp35 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %64, i32 0, i32 8
  %65 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp35, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.25, %land.lhs.true.22, %land.lhs.true, %if.then.20
  %call36 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PerlIO** [ %65, %cond.true ], [ %call36, %cond.false ]
  %call37 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.38

if.end.38:                                        ; preds = %cond.end, %if.end
  %66 = load %struct.sv**, %struct.sv*** %sp16, align 8
  %67 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast39 = ptrtoint %struct.sv** %66 to i64
  %sub.ptr.rhs.cast40 = ptrtoint %struct.sv** %67 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  %sub.ptr.div42 = sdiv exact i64 %sub.ptr.sub41, 8
  %68 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any43 = getelementptr inbounds %struct.av, %struct.av* %68, i32 0, i32 0
  %69 = load %struct.xpvav*, %struct.xpvav** %sv_any43, align 8
  %xav_fill44 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %69, i32 0, i32 1
  store i64 %sub.ptr.div42, i64* %xav_fill44, align 8
  %70 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack45 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %70, i32 0, i32 0
  %71 = load %struct.av*, %struct.av** %si_stack45, align 8
  %sv_any46 = getelementptr inbounds %struct.av, %struct.av* %71, i32 0, i32 0
  %72 = load %struct.xpvav*, %struct.xpvav** %sv_any46, align 8
  %xav_array47 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %72, i32 0, i32 0
  %73 = load i8*, i8** %xav_array47, align 8
  %74 = bitcast i8* %73 to %struct.sv**
  store %struct.sv** %74, %struct.sv*** @PL_stack_base, align 8
  %75 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %76 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack48 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %76, i32 0, i32 0
  %77 = load %struct.av*, %struct.av** %si_stack48, align 8
  %sv_any49 = getelementptr inbounds %struct.av, %struct.av* %77, i32 0, i32 0
  %78 = load %struct.xpvav*, %struct.xpvav** %sv_any49, align 8
  %xav_max50 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %78, i32 0, i32 2
  %79 = load i64, i64* %xav_max50, align 8
  %add.ptr51 = getelementptr inbounds %struct.sv*, %struct.sv** %75, i64 %79
  store %struct.sv** %add.ptr51, %struct.sv*** @PL_stack_max, align 8
  %80 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %81 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack52 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %81, i32 0, i32 0
  %82 = load %struct.av*, %struct.av** %si_stack52, align 8
  %sv_any53 = getelementptr inbounds %struct.av, %struct.av* %82, i32 0, i32 0
  %83 = load %struct.xpvav*, %struct.xpvav** %sv_any53, align 8
  %xav_fill54 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %83, i32 0, i32 1
  %84 = load i64, i64* %xav_fill54, align 8
  %add.ptr55 = getelementptr inbounds %struct.sv*, %struct.sv** %80, i64 %84
  store %struct.sv** %add.ptr55, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr55, %struct.sv*** %sp16, align 8
  %85 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack57 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %85, i32 0, i32 0
  %86 = load %struct.av*, %struct.av** %si_stack57, align 8
  store %struct.av* %86, %struct.av** @PL_curstack, align 8
  store %struct.av* %86, %struct.av** %tmp56
  %87 = load %struct.av*, %struct.av** %tmp56
  %88 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %88, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %88, %struct.stackinfo** %tmp58
  %89 = load %struct.stackinfo*, %struct.stackinfo** %tmp58
  ret void
}

declare %struct.stackinfo* @Perl_new_stackinfo(i32, i32) #1

declare %struct.sv* @Perl_sv_newmortal() #1

declare void @Perl_sv_catpv(%struct.sv*, i8*) #1

; Function Attrs: nounwind uwtable
define void @Perl_magicname(i8* %sym, i8* %name, i32 %namlen) #0 {
entry:
  %sym.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %namlen.addr = alloca i32, align 4
  %gv = alloca %struct.gv*, align 8
  store i8* %sym, i8** %sym.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %namlen, i32* %namlen.addr, align 4
  %0 = load i8*, i8** %sym.addr, align 8
  %call = call %struct.gv* @Perl_gv_fetchpv(i8* %0, i32 1, i32 4)
  store %struct.gv* %call, %struct.gv** %gv, align 8
  %tobool = icmp ne %struct.gv* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %1, i32 0, i32 0
  %2 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %2, i32 0, i32 7
  %3 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %3, i32 0, i32 0
  %4 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %5 = load %struct.gv*, %struct.gv** %gv, align 8
  %6 = bitcast %struct.gv* %5 to %struct.sv*
  %7 = load i8*, i8** %name.addr, align 8
  %8 = load i32, i32* %namlen.addr, align 4
  call void @Perl_sv_magic(%struct.sv* %4, %struct.sv* %6, i32 0, i8* %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i8* @Perl_moreswitches(i8* %s) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %numlen = alloca i64, align 8
  %rschar = alloca i64, align 8
  %flags = alloca i32, align 4
  %e = alloca i8*, align 8
  %tmps = alloca i8*, align 8
  %tmp = alloca i64, align 8
  %ch = alloca i8, align 1
  %start = alloca i8*, align 8
  %sv = alloca %struct.sv*, align 8
  %e450 = alloca i8*, align 8
  %p = alloca i8*, align 8
  %flags540 = alloca i32, align 4
  %start572 = alloca i8*, align 8
  %sv574 = alloca %struct.sv*, align 8
  %use = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 48, label %sw.bb
    i32 67, label %sw.bb.164
    i32 70, label %sw.bb.167
    i32 97, label %sw.bb.190
    i32 99, label %sw.bb.192
    i32 100, label %sw.bb.194
    i32 68, label %sw.bb.314
    i32 104, label %sw.bb.369
    i32 105, label %sw.bb.371
    i32 73, label %sw.bb.417
    i32 108, label %sw.bb.526
    i32 77, label %sw.bb.566
    i32 109, label %sw.bb.567
    i32 110, label %sw.bb.657
    i32 112, label %sw.bb.659
    i32 115, label %sw.bb.661
    i32 116, label %sw.bb.663
    i32 84, label %sw.bb.668
    i32 117, label %sw.bb.673
    i32 85, label %sw.bb.675
    i32 118, label %sw.bb.677
    i32 119, label %sw.bb.685
    i32 87, label %sw.bb.695
    i32 88, label %sw.bb.707
    i32 42, label %sw.bb.719
    i32 32, label %sw.bb.719
    i32 45, label %sw.bb.727
    i32 0, label %sw.bb.727
    i32 13, label %sw.bb.727
    i32 10, label %sw.bb.727
    i32 9, label %sw.bb.727
    i32 80, label %sw.bb.728
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %flags, align 4
  %2 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  call void @Perl_sv_free(%struct.sv* %2)
  %3 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1
  %conv1 = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv1, 120
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %5 = load i8*, i8** %s.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 2
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %6 to i32
  %tobool = icmp ne i32 %conv4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load i8*, i8** %s.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 2
  store i8* %add.ptr, i8** %s.addr, align 8
  %8 = load i8*, i8** %s.addr, align 8
  store i8* %8, i8** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i8*, i8** %e, align 8
  %10 = load i8, i8* %9, align 1
  %tobool5 = icmp ne i8 %10, 0
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i8*, i8** %e, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i8*, i8** %e, align 8
  %13 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %numlen, align 8
  store i32 4, i32* %flags, align 4
  %14 = load i8*, i8** %s.addr, align 8
  %call = call i64 @Perl_grok_hex(i8* %14, i64* %numlen, i32* %flags, double* null)
  %conv6 = trunc i64 %call to i32
  %conv7 = zext i32 %conv6 to i64
  store i64 %conv7, i64* %rschar, align 8
  %15 = load i8*, i8** %s.addr, align 8
  %16 = load i64, i64* %numlen, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %15, i64 %16
  %17 = load i8*, i8** %e, align 8
  %cmp9 = icmp ult i8* %add.ptr8, %17
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %for.end
  store i64 0, i64* %rschar, align 8
  store i64 0, i64* %numlen, align 8
  %18 = load i8*, i8** %s.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %18, i32 -1
  store i8* %incdec.ptr12, i8** %s.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %for.end
  %call13 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 0)
  store %struct.sv* %call13, %struct.sv** @PL_rs, align 8
  %19 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 0
  %20 = load i8*, i8** %sv_any, align 8
  %21 = bitcast i8* %20 to %struct.xpv*
  %xpv_len = getelementptr inbounds %struct.xpv, %struct.xpv* %21, i32 0, i32 2
  %22 = load i64, i64* %xpv_len, align 8
  %23 = load i64, i64* %rschar, align 8
  %cmp14 = icmp ult i64 %23, 128
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end.47

cond.false:                                       ; preds = %if.end
  %24 = load i64, i64* %rschar, align 8
  %cmp16 = icmp ult i64 %24, 2048
  br i1 %cmp16, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.false
  br label %cond.end.45

cond.false.19:                                    ; preds = %cond.false
  %25 = load i64, i64* %rschar, align 8
  %cmp20 = icmp ult i64 %25, 65536
  br i1 %cmp20, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %cond.false.19
  br label %cond.end.43

cond.false.23:                                    ; preds = %cond.false.19
  %26 = load i64, i64* %rschar, align 8
  %cmp24 = icmp ult i64 %26, 2097152
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.false.23
  br label %cond.end.41

cond.false.27:                                    ; preds = %cond.false.23
  %27 = load i64, i64* %rschar, align 8
  %cmp28 = icmp ult i64 %27, 67108864
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.false.27
  br label %cond.end.39

cond.false.31:                                    ; preds = %cond.false.27
  %28 = load i64, i64* %rschar, align 8
  %cmp32 = icmp ult i64 %28, 2147483648
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %cond.false.31
  br label %cond.end

cond.false.35:                                    ; preds = %cond.false.31
  %29 = load i64, i64* %rschar, align 8
  %cmp36 = icmp ult i64 %29, 68719476736
  %cond = select i1 %cmp36, i32 7, i32 13
  br label %cond.end

cond.end:                                         ; preds = %cond.false.35, %cond.true.34
  %cond38 = phi i32 [ 6, %cond.true.34 ], [ %cond, %cond.false.35 ]
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.end, %cond.true.30
  %cond40 = phi i32 [ 5, %cond.true.30 ], [ %cond38, %cond.end ]
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.end.39, %cond.true.26
  %cond42 = phi i32 [ 4, %cond.true.26 ], [ %cond40, %cond.end.39 ]
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.end.41, %cond.true.22
  %cond44 = phi i32 [ 3, %cond.true.22 ], [ %cond42, %cond.end.41 ]
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.end.43, %cond.true.18
  %cond46 = phi i32 [ 2, %cond.true.18 ], [ %cond44, %cond.end.43 ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end.45, %cond.true
  %cond48 = phi i32 [ 1, %cond.true ], [ %cond46, %cond.end.45 ]
  %add = add nsw i32 %cond48, 1
  %conv49 = sext i32 %add to i64
  %cmp50 = icmp ult i64 %22, %conv49
  br i1 %cmp50, label %cond.true.52, label %cond.false.95

cond.true.52:                                     ; preds = %cond.end.47
  %30 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %31 = load i64, i64* %rschar, align 8
  %cmp53 = icmp ult i64 %31, 128
  br i1 %cmp53, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.true.52
  br label %cond.end.90

cond.false.56:                                    ; preds = %cond.true.52
  %32 = load i64, i64* %rschar, align 8
  %cmp57 = icmp ult i64 %32, 2048
  br i1 %cmp57, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %cond.false.56
  br label %cond.end.88

cond.false.60:                                    ; preds = %cond.false.56
  %33 = load i64, i64* %rschar, align 8
  %cmp61 = icmp ult i64 %33, 65536
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.false.60
  br label %cond.end.86

cond.false.64:                                    ; preds = %cond.false.60
  %34 = load i64, i64* %rschar, align 8
  %cmp65 = icmp ult i64 %34, 2097152
  br i1 %cmp65, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %cond.false.64
  br label %cond.end.84

cond.false.68:                                    ; preds = %cond.false.64
  %35 = load i64, i64* %rschar, align 8
  %cmp69 = icmp ult i64 %35, 67108864
  br i1 %cmp69, label %cond.true.71, label %cond.false.72

cond.true.71:                                     ; preds = %cond.false.68
  br label %cond.end.82

cond.false.72:                                    ; preds = %cond.false.68
  %36 = load i64, i64* %rschar, align 8
  %cmp73 = icmp ult i64 %36, 2147483648
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.false.72
  br label %cond.end.80

cond.false.76:                                    ; preds = %cond.false.72
  %37 = load i64, i64* %rschar, align 8
  %cmp77 = icmp ult i64 %37, 68719476736
  %cond79 = select i1 %cmp77, i32 7, i32 13
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.76, %cond.true.75
  %cond81 = phi i32 [ 6, %cond.true.75 ], [ %cond79, %cond.false.76 ]
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.end.80, %cond.true.71
  %cond83 = phi i32 [ 5, %cond.true.71 ], [ %cond81, %cond.end.80 ]
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.end.82, %cond.true.67
  %cond85 = phi i32 [ 4, %cond.true.67 ], [ %cond83, %cond.end.82 ]
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.end.84, %cond.true.63
  %cond87 = phi i32 [ 3, %cond.true.63 ], [ %cond85, %cond.end.84 ]
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.end.86, %cond.true.59
  %cond89 = phi i32 [ 2, %cond.true.59 ], [ %cond87, %cond.end.86 ]
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.end.88, %cond.true.55
  %cond91 = phi i32 [ 1, %cond.true.55 ], [ %cond89, %cond.end.88 ]
  %add92 = add nsw i32 %cond91, 1
  %conv93 = sext i32 %add92 to i64
  %call94 = call i8* @Perl_sv_grow(%struct.sv* %30, i64 %conv93)
  br label %cond.end.97

cond.false.95:                                    ; preds = %cond.end.47
  %38 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_any96 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 0
  %39 = load i8*, i8** %sv_any96, align 8
  %40 = bitcast i8* %39 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %40, i32 0, i32 0
  %41 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.95, %cond.end.90
  %cond98 = phi i8* [ %call94, %cond.end.90 ], [ %41, %cond.false.95 ]
  %42 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_any99 = getelementptr inbounds %struct.sv, %struct.sv* %42, i32 0, i32 0
  %43 = load i8*, i8** %sv_any99, align 8
  %44 = bitcast i8* %43 to %struct.xpv*
  %xpv_pv100 = getelementptr inbounds %struct.xpv, %struct.xpv* %44, i32 0, i32 0
  %45 = load i8*, i8** %xpv_pv100, align 8
  store i8* %45, i8** %tmps, align 8
  %46 = load i8*, i8** %tmps, align 8
  %47 = load i64, i64* %rschar, align 8
  %call101 = call i8* @Perl_uvuni_to_utf8(i8* %46, i64 %47)
  %48 = load i64, i64* %rschar, align 8
  %cmp102 = icmp ult i64 %48, 128
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %cond.end.97
  br label %cond.end.139

cond.false.105:                                   ; preds = %cond.end.97
  %49 = load i64, i64* %rschar, align 8
  %cmp106 = icmp ult i64 %49, 2048
  br i1 %cmp106, label %cond.true.108, label %cond.false.109

cond.true.108:                                    ; preds = %cond.false.105
  br label %cond.end.137

cond.false.109:                                   ; preds = %cond.false.105
  %50 = load i64, i64* %rschar, align 8
  %cmp110 = icmp ult i64 %50, 65536
  br i1 %cmp110, label %cond.true.112, label %cond.false.113

cond.true.112:                                    ; preds = %cond.false.109
  br label %cond.end.135

cond.false.113:                                   ; preds = %cond.false.109
  %51 = load i64, i64* %rschar, align 8
  %cmp114 = icmp ult i64 %51, 2097152
  br i1 %cmp114, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %cond.false.113
  br label %cond.end.133

cond.false.117:                                   ; preds = %cond.false.113
  %52 = load i64, i64* %rschar, align 8
  %cmp118 = icmp ult i64 %52, 67108864
  br i1 %cmp118, label %cond.true.120, label %cond.false.121

cond.true.120:                                    ; preds = %cond.false.117
  br label %cond.end.131

cond.false.121:                                   ; preds = %cond.false.117
  %53 = load i64, i64* %rschar, align 8
  %cmp122 = icmp ult i64 %53, 2147483648
  br i1 %cmp122, label %cond.true.124, label %cond.false.125

cond.true.124:                                    ; preds = %cond.false.121
  br label %cond.end.129

cond.false.125:                                   ; preds = %cond.false.121
  %54 = load i64, i64* %rschar, align 8
  %cmp126 = icmp ult i64 %54, 68719476736
  %cond128 = select i1 %cmp126, i32 7, i32 13
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.125, %cond.true.124
  %cond130 = phi i32 [ 6, %cond.true.124 ], [ %cond128, %cond.false.125 ]
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.end.129, %cond.true.120
  %cond132 = phi i32 [ 5, %cond.true.120 ], [ %cond130, %cond.end.129 ]
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.end.131, %cond.true.116
  %cond134 = phi i32 [ 4, %cond.true.116 ], [ %cond132, %cond.end.131 ]
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.end.133, %cond.true.112
  %cond136 = phi i32 [ 3, %cond.true.112 ], [ %cond134, %cond.end.133 ]
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.end.135, %cond.true.108
  %cond138 = phi i32 [ 2, %cond.true.108 ], [ %cond136, %cond.end.135 ]
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.end.137, %cond.true.104
  %cond140 = phi i32 [ 1, %cond.true.104 ], [ %cond138, %cond.end.137 ]
  %conv141 = sext i32 %cond140 to i64
  %55 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_any142 = getelementptr inbounds %struct.sv, %struct.sv* %55, i32 0, i32 0
  %56 = load i8*, i8** %sv_any142, align 8
  %57 = bitcast i8* %56 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %57, i32 0, i32 1
  store i64 %conv141, i64* %xpv_cur, align 8
  store i64 %conv141, i64* %tmp
  %58 = load i64, i64* %tmp
  %59 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %59, i32 0, i32 2
  %60 = load i32, i32* %sv_flags, align 4
  %or = or i32 %60, 536870912
  store i32 %or, i32* %sv_flags, align 4
  br label %if.end.161

if.else:                                          ; preds = %land.lhs.true, %sw.bb
  store i64 4, i64* %numlen, align 8
  %61 = load i8*, i8** %s.addr, align 8
  %call143 = call i64 @Perl_grok_oct(i8* %61, i64* %numlen, i32* %flags, double* null)
  %conv144 = trunc i64 %call143 to i32
  %conv145 = zext i32 %conv144 to i64
  store i64 %conv145, i64* %rschar, align 8
  %62 = load i64, i64* %rschar, align 8
  %and = and i64 %62, -256
  %tobool146 = icmp ne i64 %and, 0
  br i1 %tobool146, label %if.then.147, label %if.else.148

if.then.147:                                      ; preds = %if.else
  store %struct.sv* @PL_sv_undef, %struct.sv** @PL_rs, align 8
  br label %if.end.160

if.else.148:                                      ; preds = %if.else
  %63 = load i64, i64* %rschar, align 8
  %tobool149 = icmp ne i64 %63, 0
  br i1 %tobool149, label %if.else.155, label %land.lhs.true.150

land.lhs.true.150:                                ; preds = %if.else.148
  %64 = load i64, i64* %numlen, align 8
  %cmp151 = icmp uge i64 %64, 2
  br i1 %cmp151, label %if.then.153, label %if.else.155

if.then.153:                                      ; preds = %land.lhs.true.150
  %call154 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 0)
  store %struct.sv* %call154, %struct.sv** @PL_rs, align 8
  br label %if.end.159

if.else.155:                                      ; preds = %land.lhs.true.150, %if.else.148
  %65 = load i64, i64* %rschar, align 8
  %conv157 = trunc i64 %65 to i8
  store i8 %conv157, i8* %ch, align 1
  %call158 = call %struct.sv* @Perl_newSVpvn(i8* %ch, i64 1)
  store %struct.sv* %call158, %struct.sv** @PL_rs, align 8
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.155, %if.then.153
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.then.147
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %cond.end.139
  %call162 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i32 1)
  %66 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %call162, %struct.sv* %66, i32 2)
  %67 = load i8*, i8** %s.addr, align 8
  %68 = load i64, i64* %numlen, align 8
  %add.ptr163 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %add.ptr163, i8** %retval
  br label %return

sw.bb.164:                                        ; preds = %entry
  %69 = load i8*, i8** %s.addr, align 8
  %incdec.ptr165 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr165, i8** %s.addr, align 8
  %call166 = call i32 @Perl_parse_unicode_opts(i8** %s.addr)
  store i32 %call166, i32* @PL_unicode, align 4
  %70 = load i8*, i8** %s.addr, align 8
  store i8* %70, i8** %retval
  br label %return

sw.bb.167:                                        ; preds = %entry
  store i8 1, i8* @PL_minus_F, align 1
  %71 = load i8*, i8** %s.addr, align 8
  %incdec.ptr168 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr168, i8** %s.addr, align 8
  store i8* %incdec.ptr168, i8** @PL_splitstr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb.167
  %72 = load i8*, i8** %s.addr, align 8
  %73 = load i8, i8* %72, align 1
  %conv169 = sext i8 %73 to i32
  %tobool170 = icmp ne i32 %conv169, 0
  br i1 %tobool170, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %74 = load i8*, i8** %s.addr, align 8
  %75 = load i8, i8* %74, align 1
  %conv171 = sext i8 %75 to i32
  %cmp172 = icmp eq i32 %conv171, 32
  br i1 %cmp172, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %76 = load i8*, i8** %s.addr, align 8
  %77 = load i8, i8* %76, align 1
  %conv174 = sext i8 %77 to i32
  %cmp175 = icmp eq i32 %conv174, 9
  br i1 %cmp175, label %lor.end, label %lor.lhs.false.177

lor.lhs.false.177:                                ; preds = %lor.lhs.false
  %78 = load i8*, i8** %s.addr, align 8
  %79 = load i8, i8* %78, align 1
  %conv178 = sext i8 %79 to i32
  %cmp179 = icmp eq i32 %conv178, 10
  br i1 %cmp179, label %lor.end, label %lor.lhs.false.181

lor.lhs.false.181:                                ; preds = %lor.lhs.false.177
  %80 = load i8*, i8** %s.addr, align 8
  %81 = load i8, i8* %80, align 1
  %conv182 = sext i8 %81 to i32
  %cmp183 = icmp eq i32 %conv182, 13
  br i1 %cmp183, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.181
  %82 = load i8*, i8** %s.addr, align 8
  %83 = load i8, i8* %82, align 1
  %conv185 = sext i8 %83 to i32
  %cmp186 = icmp eq i32 %conv185, 12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.181, %lor.lhs.false.177, %lor.lhs.false, %land.rhs
  %84 = phi i1 [ true, %lor.lhs.false.181 ], [ true, %lor.lhs.false.177 ], [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %cmp186, %lor.rhs ]
  %lnot = xor i1 %84, true
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %85 = phi i1 [ false, %while.cond ], [ %lnot, %lor.end ]
  br i1 %85, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %86 = load i8*, i8** %s.addr, align 8
  %incdec.ptr188 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr188, i8** %s.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %87 = load i8*, i8** %s.addr, align 8
  store i8 0, i8* %87, align 1
  %88 = load i8*, i8** @PL_splitstr, align 8
  %call189 = call i8* @Perl_savepv(i8* %88)
  store i8* %call189, i8** @PL_splitstr, align 8
  %89 = load i8*, i8** %s.addr, align 8
  store i8* %89, i8** %retval
  br label %return

sw.bb.190:                                        ; preds = %entry
  store i8 1, i8* @PL_minus_a, align 1
  %90 = load i8*, i8** %s.addr, align 8
  %incdec.ptr191 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr191, i8** %s.addr, align 8
  %91 = load i8*, i8** %s.addr, align 8
  store i8* %91, i8** %retval
  br label %return

sw.bb.192:                                        ; preds = %entry
  store i8 1, i8* @PL_minus_c, align 1
  %92 = load i8*, i8** %s.addr, align 8
  %incdec.ptr193 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr193, i8** %s.addr, align 8
  %93 = load i8*, i8** %s.addr, align 8
  store i8* %93, i8** %retval
  br label %return

sw.bb.194:                                        ; preds = %entry
  call void @S_forbid_setid(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0))
  %94 = load i8*, i8** %s.addr, align 8
  %incdec.ptr195 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr195, i8** %s.addr, align 8
  %95 = load i8*, i8** %s.addr, align 8
  %96 = load i8, i8* %95, align 1
  %conv196 = sext i8 %96 to i32
  %cmp197 = icmp eq i32 %conv196, 116
  br i1 %cmp197, label %land.lhs.true.199, label %if.end.236

land.lhs.true.199:                                ; preds = %sw.bb.194
  %97 = load i8*, i8** %s.addr, align 8
  %arrayidx200 = getelementptr inbounds i8, i8* %97, i64 1
  %98 = load i8, i8* %arrayidx200, align 1
  %conv201 = sext i8 %98 to i32
  %cmp202 = icmp sge i32 %conv201, 65
  br i1 %cmp202, label %land.lhs.true.204, label %lor.lhs.false.209

land.lhs.true.204:                                ; preds = %land.lhs.true.199
  %99 = load i8*, i8** %s.addr, align 8
  %arrayidx205 = getelementptr inbounds i8, i8* %99, i64 1
  %100 = load i8, i8* %arrayidx205, align 1
  %conv206 = sext i8 %100 to i32
  %cmp207 = icmp sle i32 %conv206, 90
  br i1 %cmp207, label %if.end.236, label %lor.lhs.false.209

lor.lhs.false.209:                                ; preds = %land.lhs.true.204, %land.lhs.true.199
  %101 = load i8*, i8** %s.addr, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %101, i64 1
  %102 = load i8, i8* %arrayidx210, align 1
  %conv211 = sext i8 %102 to i32
  %cmp212 = icmp sge i32 %conv211, 97
  br i1 %cmp212, label %land.lhs.true.214, label %lor.lhs.false.219

land.lhs.true.214:                                ; preds = %lor.lhs.false.209
  %103 = load i8*, i8** %s.addr, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %103, i64 1
  %104 = load i8, i8* %arrayidx215, align 1
  %conv216 = sext i8 %104 to i32
  %cmp217 = icmp sle i32 %conv216, 122
  br i1 %cmp217, label %if.end.236, label %lor.lhs.false.219

lor.lhs.false.219:                                ; preds = %land.lhs.true.214, %lor.lhs.false.209
  %105 = load i8*, i8** %s.addr, align 8
  %arrayidx220 = getelementptr inbounds i8, i8* %105, i64 1
  %106 = load i8, i8* %arrayidx220, align 1
  %conv221 = sext i8 %106 to i32
  %cmp222 = icmp sge i32 %conv221, 48
  br i1 %cmp222, label %land.lhs.true.224, label %lor.lhs.false.229

land.lhs.true.224:                                ; preds = %lor.lhs.false.219
  %107 = load i8*, i8** %s.addr, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %107, i64 1
  %108 = load i8, i8* %arrayidx225, align 1
  %conv226 = sext i8 %108 to i32
  %cmp227 = icmp sle i32 %conv226, 57
  br i1 %cmp227, label %if.end.236, label %lor.lhs.false.229

lor.lhs.false.229:                                ; preds = %land.lhs.true.224, %lor.lhs.false.219
  %109 = load i8*, i8** %s.addr, align 8
  %arrayidx230 = getelementptr inbounds i8, i8* %109, i64 1
  %110 = load i8, i8* %arrayidx230, align 1
  %conv231 = sext i8 %110 to i32
  %cmp232 = icmp eq i32 %conv231, 95
  br i1 %cmp232, label %if.end.236, label %if.then.234

if.then.234:                                      ; preds = %lor.lhs.false.229
  %111 = load i8*, i8** %s.addr, align 8
  %incdec.ptr235 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr235, i8** %s.addr, align 8
  call void @Perl_my_setenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.234, %lor.lhs.false.229, %land.lhs.true.224, %land.lhs.true.214, %land.lhs.true.204, %sw.bb.194
  %112 = load i8*, i8** %s.addr, align 8
  %113 = load i8, i8* %112, align 1
  %conv237 = sext i8 %113 to i32
  %cmp238 = icmp eq i32 %conv237, 58
  br i1 %cmp238, label %if.then.244, label %lor.lhs.false.240

lor.lhs.false.240:                                ; preds = %if.end.236
  %114 = load i8*, i8** %s.addr, align 8
  %115 = load i8, i8* %114, align 1
  %conv241 = sext i8 %115 to i32
  %cmp242 = icmp eq i32 %conv241, 61
  br i1 %cmp242, label %if.then.244, label %if.end.310

if.then.244:                                      ; preds = %lor.lhs.false.240, %if.end.236
  %call247 = call %struct.sv* @Perl_newSVpv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i64 0)
  store %struct.sv* %call247, %struct.sv** %sv, align 8
  %116 = load i8*, i8** %s.addr, align 8
  %incdec.ptr248 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr248, i8** %s.addr, align 8
  store i8* %incdec.ptr248, i8** %start, align 8
  br label %while.cond.249

while.cond.249:                                   ; preds = %while.body.282, %if.then.244
  %117 = load i8*, i8** %s.addr, align 8
  %118 = load i8, i8* %117, align 1
  %conv250 = sext i8 %118 to i32
  %cmp251 = icmp sge i32 %conv250, 65
  br i1 %cmp251, label %land.lhs.true.253, label %lor.lhs.false.257

land.lhs.true.253:                                ; preds = %while.cond.249
  %119 = load i8*, i8** %s.addr, align 8
  %120 = load i8, i8* %119, align 1
  %conv254 = sext i8 %120 to i32
  %cmp255 = icmp sle i32 %conv254, 90
  br i1 %cmp255, label %lor.end.281, label %lor.lhs.false.257

lor.lhs.false.257:                                ; preds = %land.lhs.true.253, %while.cond.249
  %121 = load i8*, i8** %s.addr, align 8
  %122 = load i8, i8* %121, align 1
  %conv258 = sext i8 %122 to i32
  %cmp259 = icmp sge i32 %conv258, 97
  br i1 %cmp259, label %land.lhs.true.261, label %lor.lhs.false.265

land.lhs.true.261:                                ; preds = %lor.lhs.false.257
  %123 = load i8*, i8** %s.addr, align 8
  %124 = load i8, i8* %123, align 1
  %conv262 = sext i8 %124 to i32
  %cmp263 = icmp sle i32 %conv262, 122
  br i1 %cmp263, label %lor.end.281, label %lor.lhs.false.265

lor.lhs.false.265:                                ; preds = %land.lhs.true.261, %lor.lhs.false.257
  %125 = load i8*, i8** %s.addr, align 8
  %126 = load i8, i8* %125, align 1
  %conv266 = sext i8 %126 to i32
  %cmp267 = icmp sge i32 %conv266, 48
  br i1 %cmp267, label %land.lhs.true.269, label %lor.lhs.false.273

land.lhs.true.269:                                ; preds = %lor.lhs.false.265
  %127 = load i8*, i8** %s.addr, align 8
  %128 = load i8, i8* %127, align 1
  %conv270 = sext i8 %128 to i32
  %cmp271 = icmp sle i32 %conv270, 57
  br i1 %cmp271, label %lor.end.281, label %lor.lhs.false.273

lor.lhs.false.273:                                ; preds = %land.lhs.true.269, %lor.lhs.false.265
  %129 = load i8*, i8** %s.addr, align 8
  %130 = load i8, i8* %129, align 1
  %conv274 = sext i8 %130 to i32
  %cmp275 = icmp eq i32 %conv274, 95
  br i1 %cmp275, label %lor.end.281, label %lor.rhs.277

lor.rhs.277:                                      ; preds = %lor.lhs.false.273
  %131 = load i8*, i8** %s.addr, align 8
  %132 = load i8, i8* %131, align 1
  %conv278 = sext i8 %132 to i32
  %cmp279 = icmp eq i32 %conv278, 58
  br label %lor.end.281

lor.end.281:                                      ; preds = %lor.rhs.277, %lor.lhs.false.273, %land.lhs.true.269, %land.lhs.true.261, %land.lhs.true.253
  %133 = phi i1 [ true, %lor.lhs.false.273 ], [ true, %land.lhs.true.269 ], [ true, %land.lhs.true.261 ], [ true, %land.lhs.true.253 ], [ %cmp279, %lor.rhs.277 ]
  br i1 %133, label %while.body.282, label %while.end.284

while.body.282:                                   ; preds = %lor.end.281
  %134 = load i8*, i8** %s.addr, align 8
  %incdec.ptr283 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %incdec.ptr283, i8** %s.addr, align 8
  br label %while.cond.249

while.end.284:                                    ; preds = %lor.end.281
  %135 = load i8*, i8** %s.addr, align 8
  %136 = load i8, i8* %135, align 1
  %conv285 = sext i8 %136 to i32
  %cmp286 = icmp ne i32 %conv285, 61
  br i1 %cmp286, label %if.then.288, label %if.else.289

if.then.288:                                      ; preds = %while.end.284
  %137 = load %struct.sv*, %struct.sv** %sv, align 8
  %138 = load i8*, i8** %start, align 8
  call void @Perl_sv_catpv(%struct.sv* %137, i8* %138)
  br label %if.end.294

if.else.289:                                      ; preds = %while.end.284
  %139 = load %struct.sv*, %struct.sv** %sv, align 8
  %140 = load i8*, i8** %start, align 8
  %141 = load i8*, i8** %s.addr, align 8
  %142 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast290 = ptrtoint i8* %141 to i64
  %sub.ptr.rhs.cast291 = ptrtoint i8* %142 to i64
  %sub.ptr.sub292 = sub i64 %sub.ptr.lhs.cast290, %sub.ptr.rhs.cast291
  call void @Perl_sv_catpvn_flags(%struct.sv* %139, i8* %140, i64 %sub.ptr.sub292, i32 2)
  %143 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_catpv(%struct.sv* %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0))
  %144 = load %struct.sv*, %struct.sv** %sv, align 8
  %145 = load i8*, i8** %s.addr, align 8
  %incdec.ptr293 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %incdec.ptr293, i8** %s.addr, align 8
  call void @Perl_sv_catpv(%struct.sv* %144, i8* %incdec.ptr293)
  %146 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_catpv(%struct.sv* %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.294

if.end.294:                                       ; preds = %if.else.289, %if.then.288
  %147 = load i8*, i8** %s.addr, align 8
  %call295 = call i64 @strlen(i8* %147)
  %148 = load i8*, i8** %s.addr, align 8
  %add.ptr296 = getelementptr inbounds i8, i8* %148, i64 %call295
  store i8* %add.ptr296, i8** %s.addr, align 8
  %149 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags297 = getelementptr inbounds %struct.sv, %struct.sv* %149, i32 0, i32 2
  %150 = load i32, i32* %sv_flags297, align 4
  %and298 = and i32 %150, 262144
  %cmp299 = icmp eq i32 %and298, 262144
  br i1 %cmp299, label %cond.true.301, label %cond.false.306

cond.true.301:                                    ; preds = %if.end.294
  %151 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any302 = getelementptr inbounds %struct.sv, %struct.sv* %151, i32 0, i32 0
  %152 = load i8*, i8** %sv_any302, align 8
  %153 = bitcast i8* %152 to %struct.xpv*
  %xpv_cur303 = getelementptr inbounds %struct.xpv, %struct.xpv* %153, i32 0, i32 1
  %154 = load i64, i64* %xpv_cur303, align 8
  store i64 %154, i64* @PL_na, align 8
  %155 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any304 = getelementptr inbounds %struct.sv, %struct.sv* %155, i32 0, i32 0
  %156 = load i8*, i8** %sv_any304, align 8
  %157 = bitcast i8* %156 to %struct.xpv*
  %xpv_pv305 = getelementptr inbounds %struct.xpv, %struct.xpv* %157, i32 0, i32 0
  %158 = load i8*, i8** %xpv_pv305, align 8
  br label %cond.end.308

cond.false.306:                                   ; preds = %if.end.294
  %159 = load %struct.sv*, %struct.sv** %sv, align 8
  %call307 = call i8* @Perl_sv_2pv_flags(%struct.sv* %159, i64* @PL_na, i32 2)
  br label %cond.end.308

cond.end.308:                                     ; preds = %cond.false.306, %cond.true.301
  %cond309 = phi i8* [ %158, %cond.true.301 ], [ %call307, %cond.false.306 ]
  call void @Perl_my_setenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* %cond309)
  br label %if.end.310

if.end.310:                                       ; preds = %cond.end.308, %lor.lhs.false.240
  %160 = load i32, i32* @PL_perldb, align 4
  %tobool311 = icmp ne i32 %160, 0
  br i1 %tobool311, label %if.end.313, label %if.then.312

if.then.312:                                      ; preds = %if.end.310
  store i32 831, i32* @PL_perldb, align 4
  call void @Perl_init_debugger()
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.312, %if.end.310
  %161 = load i8*, i8** %s.addr, align 8
  store i8* %161, i8** %retval
  br label %return

sw.bb.314:                                        ; preds = %entry
  %162 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %162, i32 0, i32 14
  %163 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp315 = icmp eq %struct.sv* %163, null
  br i1 %cmp315, label %if.then.333, label %lor.lhs.false.317

lor.lhs.false.317:                                ; preds = %sw.bb.314
  %164 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings318 = getelementptr inbounds %struct.cop, %struct.cop* %164, i32 0, i32 14
  %165 = load %struct.sv*, %struct.sv** %cop_warnings318, align 8
  %cmp319 = icmp eq %struct.sv* %165, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp319, label %if.then.333, label %lor.lhs.false.321

lor.lhs.false.321:                                ; preds = %lor.lhs.false.317
  %166 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings322 = getelementptr inbounds %struct.cop, %struct.cop* %166, i32 0, i32 14
  %167 = load %struct.sv*, %struct.sv** %cop_warnings322, align 8
  %cmp323 = icmp ne %struct.sv* %167, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp323, label %land.lhs.true.325, label %if.end.334

land.lhs.true.325:                                ; preds = %lor.lhs.false.321
  %168 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings326 = getelementptr inbounds %struct.cop, %struct.cop* %168, i32 0, i32 14
  %169 = load %struct.sv*, %struct.sv** %cop_warnings326, align 8
  %sv_any327 = getelementptr inbounds %struct.sv, %struct.sv* %169, i32 0, i32 0
  %170 = load i8*, i8** %sv_any327, align 8
  %171 = bitcast i8* %170 to %struct.xpv*
  %xpv_pv328 = getelementptr inbounds %struct.xpv, %struct.xpv* %171, i32 0, i32 0
  %172 = load i8*, i8** %xpv_pv328, align 8
  %arrayidx329 = getelementptr inbounds i8, i8* %172, i64 5
  %173 = load i8, i8* %arrayidx329, align 1
  %conv330 = sext i8 %173 to i32
  %and331 = and i32 %conv330, 16
  %tobool332 = icmp ne i32 %and331, 0
  br i1 %tobool332, label %if.then.333, label %if.end.334

if.then.333:                                      ; preds = %land.lhs.true.325, %lor.lhs.false.317, %sw.bb.314
  call void (i32, i8*, ...) @Perl_warner(i32 22, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.334

if.end.334:                                       ; preds = %if.then.333, %land.lhs.true.325, %lor.lhs.false.321
  %174 = load i8*, i8** %s.addr, align 8
  %incdec.ptr335 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %incdec.ptr335, i8** %s.addr, align 8
  br label %for.cond.336

for.cond.336:                                     ; preds = %for.inc.366, %if.end.334
  %175 = load i8*, i8** %s.addr, align 8
  %176 = load i8, i8* %175, align 1
  %conv337 = sext i8 %176 to i32
  %cmp338 = icmp sge i32 %conv337, 65
  br i1 %cmp338, label %land.lhs.true.340, label %lor.lhs.false.344

land.lhs.true.340:                                ; preds = %for.cond.336
  %177 = load i8*, i8** %s.addr, align 8
  %178 = load i8, i8* %177, align 1
  %conv341 = sext i8 %178 to i32
  %cmp342 = icmp sle i32 %conv341, 90
  br i1 %cmp342, label %lor.end.364, label %lor.lhs.false.344

lor.lhs.false.344:                                ; preds = %land.lhs.true.340, %for.cond.336
  %179 = load i8*, i8** %s.addr, align 8
  %180 = load i8, i8* %179, align 1
  %conv345 = sext i8 %180 to i32
  %cmp346 = icmp sge i32 %conv345, 97
  br i1 %cmp346, label %land.lhs.true.348, label %lor.lhs.false.352

land.lhs.true.348:                                ; preds = %lor.lhs.false.344
  %181 = load i8*, i8** %s.addr, align 8
  %182 = load i8, i8* %181, align 1
  %conv349 = sext i8 %182 to i32
  %cmp350 = icmp sle i32 %conv349, 122
  br i1 %cmp350, label %lor.end.364, label %lor.lhs.false.352

lor.lhs.false.352:                                ; preds = %land.lhs.true.348, %lor.lhs.false.344
  %183 = load i8*, i8** %s.addr, align 8
  %184 = load i8, i8* %183, align 1
  %conv353 = sext i8 %184 to i32
  %cmp354 = icmp sge i32 %conv353, 48
  br i1 %cmp354, label %land.lhs.true.356, label %lor.rhs.360

land.lhs.true.356:                                ; preds = %lor.lhs.false.352
  %185 = load i8*, i8** %s.addr, align 8
  %186 = load i8, i8* %185, align 1
  %conv357 = sext i8 %186 to i32
  %cmp358 = icmp sle i32 %conv357, 57
  br i1 %cmp358, label %lor.end.364, label %lor.rhs.360

lor.rhs.360:                                      ; preds = %land.lhs.true.356, %lor.lhs.false.352
  %187 = load i8*, i8** %s.addr, align 8
  %188 = load i8, i8* %187, align 1
  %conv361 = sext i8 %188 to i32
  %cmp362 = icmp eq i32 %conv361, 95
  br label %lor.end.364

lor.end.364:                                      ; preds = %lor.rhs.360, %land.lhs.true.356, %land.lhs.true.348, %land.lhs.true.340
  %189 = phi i1 [ true, %land.lhs.true.356 ], [ true, %land.lhs.true.348 ], [ true, %land.lhs.true.340 ], [ %cmp362, %lor.rhs.360 ]
  br i1 %189, label %for.body.365, label %for.end.368

for.body.365:                                     ; preds = %lor.end.364
  br label %for.inc.366

for.inc.366:                                      ; preds = %for.body.365
  %190 = load i8*, i8** %s.addr, align 8
  %incdec.ptr367 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %incdec.ptr367, i8** %s.addr, align 8
  br label %for.cond.336

for.end.368:                                      ; preds = %lor.end.364
  %191 = load i8*, i8** %s.addr, align 8
  store i8* %191, i8** %retval
  br label %return

sw.bb.369:                                        ; preds = %entry
  %192 = load i8**, i8*** @PL_origargv, align 8
  %arrayidx370 = getelementptr inbounds i8*, i8** %192, i64 0
  %193 = load i8*, i8** %arrayidx370, align 8
  call void @S_usage(i8* %193)
  call void @Perl_my_exit(i32 0)
  br label %sw.bb.371

sw.bb.371:                                        ; preds = %entry, %sw.bb.369
  %194 = load i8*, i8** @PL_inplace, align 8
  %tobool372 = icmp ne i8* %194, null
  br i1 %tobool372, label %if.then.373, label %if.end.374

if.then.373:                                      ; preds = %sw.bb.371
  %195 = load i8*, i8** @PL_inplace, align 8
  call void @Perl_safesysfree(i8* %195)
  br label %if.end.374

if.end.374:                                       ; preds = %if.then.373, %sw.bb.371
  %196 = load i8*, i8** %s.addr, align 8
  %add.ptr375 = getelementptr inbounds i8, i8* %196, i64 1
  %call376 = call i8* @Perl_savepv(i8* %add.ptr375)
  store i8* %call376, i8** @PL_inplace, align 8
  %197 = load i8*, i8** @PL_inplace, align 8
  store i8* %197, i8** %s.addr, align 8
  br label %for.cond.377

for.cond.377:                                     ; preds = %for.inc.404, %if.end.374
  %198 = load i8*, i8** %s.addr, align 8
  %199 = load i8, i8* %198, align 1
  %conv378 = sext i8 %199 to i32
  %tobool379 = icmp ne i32 %conv378, 0
  br i1 %tobool379, label %land.rhs.380, label %land.end.402

land.rhs.380:                                     ; preds = %for.cond.377
  %200 = load i8*, i8** %s.addr, align 8
  %201 = load i8, i8* %200, align 1
  %conv381 = sext i8 %201 to i32
  %cmp382 = icmp eq i32 %conv381, 32
  br i1 %cmp382, label %lor.end.400, label %lor.lhs.false.384

lor.lhs.false.384:                                ; preds = %land.rhs.380
  %202 = load i8*, i8** %s.addr, align 8
  %203 = load i8, i8* %202, align 1
  %conv385 = sext i8 %203 to i32
  %cmp386 = icmp eq i32 %conv385, 9
  br i1 %cmp386, label %lor.end.400, label %lor.lhs.false.388

lor.lhs.false.388:                                ; preds = %lor.lhs.false.384
  %204 = load i8*, i8** %s.addr, align 8
  %205 = load i8, i8* %204, align 1
  %conv389 = sext i8 %205 to i32
  %cmp390 = icmp eq i32 %conv389, 10
  br i1 %cmp390, label %lor.end.400, label %lor.lhs.false.392

lor.lhs.false.392:                                ; preds = %lor.lhs.false.388
  %206 = load i8*, i8** %s.addr, align 8
  %207 = load i8, i8* %206, align 1
  %conv393 = sext i8 %207 to i32
  %cmp394 = icmp eq i32 %conv393, 13
  br i1 %cmp394, label %lor.end.400, label %lor.rhs.396

lor.rhs.396:                                      ; preds = %lor.lhs.false.392
  %208 = load i8*, i8** %s.addr, align 8
  %209 = load i8, i8* %208, align 1
  %conv397 = sext i8 %209 to i32
  %cmp398 = icmp eq i32 %conv397, 12
  br label %lor.end.400

lor.end.400:                                      ; preds = %lor.rhs.396, %lor.lhs.false.392, %lor.lhs.false.388, %lor.lhs.false.384, %land.rhs.380
  %210 = phi i1 [ true, %lor.lhs.false.392 ], [ true, %lor.lhs.false.388 ], [ true, %lor.lhs.false.384 ], [ true, %land.rhs.380 ], [ %cmp398, %lor.rhs.396 ]
  %lnot401 = xor i1 %210, true
  br label %land.end.402

land.end.402:                                     ; preds = %lor.end.400, %for.cond.377
  %211 = phi i1 [ false, %for.cond.377 ], [ %lnot401, %lor.end.400 ]
  br i1 %211, label %for.body.403, label %for.end.406

for.body.403:                                     ; preds = %land.end.402
  br label %for.inc.404

for.inc.404:                                      ; preds = %for.body.403
  %212 = load i8*, i8** %s.addr, align 8
  %incdec.ptr405 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %incdec.ptr405, i8** %s.addr, align 8
  br label %for.cond.377

for.end.406:                                      ; preds = %land.end.402
  %213 = load i8*, i8** %s.addr, align 8
  %214 = load i8, i8* %213, align 1
  %tobool407 = icmp ne i8 %214, 0
  br i1 %tobool407, label %if.then.408, label %if.end.416

if.then.408:                                      ; preds = %for.end.406
  %215 = load i8*, i8** %s.addr, align 8
  %incdec.ptr409 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %incdec.ptr409, i8** %s.addr, align 8
  store i8 0, i8* %215, align 1
  %216 = load i8*, i8** %s.addr, align 8
  %217 = load i8, i8* %216, align 1
  %conv410 = sext i8 %217 to i32
  %cmp411 = icmp eq i32 %conv410, 45
  br i1 %cmp411, label %if.then.413, label %if.end.415

if.then.413:                                      ; preds = %if.then.408
  %218 = load i8*, i8** %s.addr, align 8
  %incdec.ptr414 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %incdec.ptr414, i8** %s.addr, align 8
  br label %if.end.415

if.end.415:                                       ; preds = %if.then.413, %if.then.408
  br label %if.end.416

if.end.416:                                       ; preds = %if.end.415, %for.end.406
  %219 = load i8*, i8** %s.addr, align 8
  store i8* %219, i8** %retval
  br label %return

sw.bb.417:                                        ; preds = %entry
  call void @S_forbid_setid(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  %220 = load i8*, i8** %s.addr, align 8
  %incdec.ptr418 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %incdec.ptr418, i8** %s.addr, align 8
  br label %while.cond.419

while.cond.419:                                   ; preds = %while.body.444, %sw.bb.417
  %221 = load i8*, i8** %s.addr, align 8
  %222 = load i8, i8* %221, align 1
  %conv420 = sext i8 %222 to i32
  %tobool421 = icmp ne i32 %conv420, 0
  br i1 %tobool421, label %land.rhs.422, label %land.end.443

land.rhs.422:                                     ; preds = %while.cond.419
  %223 = load i8*, i8** %s.addr, align 8
  %224 = load i8, i8* %223, align 1
  %conv423 = sext i8 %224 to i32
  %cmp424 = icmp eq i32 %conv423, 32
  br i1 %cmp424, label %lor.end.442, label %lor.lhs.false.426

lor.lhs.false.426:                                ; preds = %land.rhs.422
  %225 = load i8*, i8** %s.addr, align 8
  %226 = load i8, i8* %225, align 1
  %conv427 = sext i8 %226 to i32
  %cmp428 = icmp eq i32 %conv427, 9
  br i1 %cmp428, label %lor.end.442, label %lor.lhs.false.430

lor.lhs.false.430:                                ; preds = %lor.lhs.false.426
  %227 = load i8*, i8** %s.addr, align 8
  %228 = load i8, i8* %227, align 1
  %conv431 = sext i8 %228 to i32
  %cmp432 = icmp eq i32 %conv431, 10
  br i1 %cmp432, label %lor.end.442, label %lor.lhs.false.434

lor.lhs.false.434:                                ; preds = %lor.lhs.false.430
  %229 = load i8*, i8** %s.addr, align 8
  %230 = load i8, i8* %229, align 1
  %conv435 = sext i8 %230 to i32
  %cmp436 = icmp eq i32 %conv435, 13
  br i1 %cmp436, label %lor.end.442, label %lor.rhs.438

lor.rhs.438:                                      ; preds = %lor.lhs.false.434
  %231 = load i8*, i8** %s.addr, align 8
  %232 = load i8, i8* %231, align 1
  %conv439 = sext i8 %232 to i32
  %cmp440 = icmp eq i32 %conv439, 12
  br label %lor.end.442

lor.end.442:                                      ; preds = %lor.rhs.438, %lor.lhs.false.434, %lor.lhs.false.430, %lor.lhs.false.426, %land.rhs.422
  %233 = phi i1 [ true, %lor.lhs.false.434 ], [ true, %lor.lhs.false.430 ], [ true, %lor.lhs.false.426 ], [ true, %land.rhs.422 ], [ %cmp440, %lor.rhs.438 ]
  br label %land.end.443

land.end.443:                                     ; preds = %lor.end.442, %while.cond.419
  %234 = phi i1 [ false, %while.cond.419 ], [ %233, %lor.end.442 ]
  br i1 %234, label %while.body.444, label %while.end.446

while.body.444:                                   ; preds = %land.end.443
  %235 = load i8*, i8** %s.addr, align 8
  %incdec.ptr445 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %incdec.ptr445, i8** %s.addr, align 8
  br label %while.cond.419

while.end.446:                                    ; preds = %land.end.443
  %236 = load i8*, i8** %s.addr, align 8
  %237 = load i8, i8* %236, align 1
  %tobool447 = icmp ne i8 %237, 0
  br i1 %tobool447, label %if.then.448, label %if.else.524

if.then.448:                                      ; preds = %while.end.446
  %238 = load i8*, i8** %s.addr, align 8
  store i8* %238, i8** %p, align 8
  br label %do.body

do.body:                                          ; preds = %land.end.512, %if.then.448
  %239 = load i8*, i8** %p, align 8
  store i8* %239, i8** %e450, align 8
  br label %for.cond.452

for.cond.452:                                     ; preds = %for.inc.479, %do.body
  %240 = load i8*, i8** %e450, align 8
  %241 = load i8, i8* %240, align 1
  %conv453 = sext i8 %241 to i32
  %tobool454 = icmp ne i32 %conv453, 0
  br i1 %tobool454, label %land.rhs.455, label %land.end.477

land.rhs.455:                                     ; preds = %for.cond.452
  %242 = load i8*, i8** %e450, align 8
  %243 = load i8, i8* %242, align 1
  %conv456 = sext i8 %243 to i32
  %cmp457 = icmp eq i32 %conv456, 32
  br i1 %cmp457, label %lor.end.475, label %lor.lhs.false.459

lor.lhs.false.459:                                ; preds = %land.rhs.455
  %244 = load i8*, i8** %e450, align 8
  %245 = load i8, i8* %244, align 1
  %conv460 = sext i8 %245 to i32
  %cmp461 = icmp eq i32 %conv460, 9
  br i1 %cmp461, label %lor.end.475, label %lor.lhs.false.463

lor.lhs.false.463:                                ; preds = %lor.lhs.false.459
  %246 = load i8*, i8** %e450, align 8
  %247 = load i8, i8* %246, align 1
  %conv464 = sext i8 %247 to i32
  %cmp465 = icmp eq i32 %conv464, 10
  br i1 %cmp465, label %lor.end.475, label %lor.lhs.false.467

lor.lhs.false.467:                                ; preds = %lor.lhs.false.463
  %248 = load i8*, i8** %e450, align 8
  %249 = load i8, i8* %248, align 1
  %conv468 = sext i8 %249 to i32
  %cmp469 = icmp eq i32 %conv468, 13
  br i1 %cmp469, label %lor.end.475, label %lor.rhs.471

lor.rhs.471:                                      ; preds = %lor.lhs.false.467
  %250 = load i8*, i8** %e450, align 8
  %251 = load i8, i8* %250, align 1
  %conv472 = sext i8 %251 to i32
  %cmp473 = icmp eq i32 %conv472, 12
  br label %lor.end.475

lor.end.475:                                      ; preds = %lor.rhs.471, %lor.lhs.false.467, %lor.lhs.false.463, %lor.lhs.false.459, %land.rhs.455
  %252 = phi i1 [ true, %lor.lhs.false.467 ], [ true, %lor.lhs.false.463 ], [ true, %lor.lhs.false.459 ], [ true, %land.rhs.455 ], [ %cmp473, %lor.rhs.471 ]
  %lnot476 = xor i1 %252, true
  br label %land.end.477

land.end.477:                                     ; preds = %lor.end.475, %for.cond.452
  %253 = phi i1 [ false, %for.cond.452 ], [ %lnot476, %lor.end.475 ]
  br i1 %253, label %for.body.478, label %for.end.481

for.body.478:                                     ; preds = %land.end.477
  br label %for.inc.479

for.inc.479:                                      ; preds = %for.body.478
  %254 = load i8*, i8** %e450, align 8
  %incdec.ptr480 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %incdec.ptr480, i8** %e450, align 8
  br label %for.cond.452

for.end.481:                                      ; preds = %land.end.477
  %255 = load i8*, i8** %e450, align 8
  store i8* %255, i8** %p, align 8
  br label %while.cond.482

while.cond.482:                                   ; preds = %while.body.503, %for.end.481
  %256 = load i8*, i8** %p, align 8
  %257 = load i8, i8* %256, align 1
  %conv483 = sext i8 %257 to i32
  %cmp484 = icmp eq i32 %conv483, 32
  br i1 %cmp484, label %lor.end.502, label %lor.lhs.false.486

lor.lhs.false.486:                                ; preds = %while.cond.482
  %258 = load i8*, i8** %p, align 8
  %259 = load i8, i8* %258, align 1
  %conv487 = sext i8 %259 to i32
  %cmp488 = icmp eq i32 %conv487, 9
  br i1 %cmp488, label %lor.end.502, label %lor.lhs.false.490

lor.lhs.false.490:                                ; preds = %lor.lhs.false.486
  %260 = load i8*, i8** %p, align 8
  %261 = load i8, i8* %260, align 1
  %conv491 = sext i8 %261 to i32
  %cmp492 = icmp eq i32 %conv491, 10
  br i1 %cmp492, label %lor.end.502, label %lor.lhs.false.494

lor.lhs.false.494:                                ; preds = %lor.lhs.false.490
  %262 = load i8*, i8** %p, align 8
  %263 = load i8, i8* %262, align 1
  %conv495 = sext i8 %263 to i32
  %cmp496 = icmp eq i32 %conv495, 13
  br i1 %cmp496, label %lor.end.502, label %lor.rhs.498

lor.rhs.498:                                      ; preds = %lor.lhs.false.494
  %264 = load i8*, i8** %p, align 8
  %265 = load i8, i8* %264, align 1
  %conv499 = sext i8 %265 to i32
  %cmp500 = icmp eq i32 %conv499, 12
  br label %lor.end.502

lor.end.502:                                      ; preds = %lor.rhs.498, %lor.lhs.false.494, %lor.lhs.false.490, %lor.lhs.false.486, %while.cond.482
  %266 = phi i1 [ true, %lor.lhs.false.494 ], [ true, %lor.lhs.false.490 ], [ true, %lor.lhs.false.486 ], [ true, %while.cond.482 ], [ %cmp500, %lor.rhs.498 ]
  br i1 %266, label %while.body.503, label %while.end.505

while.body.503:                                   ; preds = %lor.end.502
  %267 = load i8*, i8** %p, align 8
  %incdec.ptr504 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %incdec.ptr504, i8** %p, align 8
  br label %while.cond.482

while.end.505:                                    ; preds = %lor.end.502
  br label %do.cond

do.cond:                                          ; preds = %while.end.505
  %268 = load i8*, i8** %p, align 8
  %269 = load i8, i8* %268, align 1
  %conv506 = sext i8 %269 to i32
  %tobool507 = icmp ne i32 %conv506, 0
  br i1 %tobool507, label %land.rhs.508, label %land.end.512

land.rhs.508:                                     ; preds = %do.cond
  %270 = load i8*, i8** %p, align 8
  %271 = load i8, i8* %270, align 1
  %conv509 = sext i8 %271 to i32
  %cmp510 = icmp ne i32 %conv509, 45
  br label %land.end.512

land.end.512:                                     ; preds = %land.rhs.508, %do.cond
  %272 = phi i1 [ false, %do.cond ], [ %cmp510, %land.rhs.508 ]
  br i1 %272, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.512
  %273 = load i8*, i8** %s.addr, align 8
  %274 = load i8*, i8** %e450, align 8
  %275 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast513 = ptrtoint i8* %274 to i64
  %sub.ptr.rhs.cast514 = ptrtoint i8* %275 to i64
  %sub.ptr.sub515 = sub i64 %sub.ptr.lhs.cast513, %sub.ptr.rhs.cast514
  %conv516 = trunc i64 %sub.ptr.sub515 to i32
  %call517 = call i8* @Perl_savepvn(i8* %273, i32 %conv516)
  store i8* %call517, i8** %e450, align 8
  %276 = load i8*, i8** %e450, align 8
  call void @S_incpush(i8* %276, i32 1, i32 1, i32 0)
  %277 = load i8*, i8** %e450, align 8
  call void @Perl_safesysfree(i8* %277)
  %278 = load i8*, i8** %p, align 8
  store i8* %278, i8** %s.addr, align 8
  %279 = load i8*, i8** %s.addr, align 8
  %280 = load i8, i8* %279, align 1
  %conv518 = sext i8 %280 to i32
  %cmp519 = icmp eq i32 %conv518, 45
  br i1 %cmp519, label %if.then.521, label %if.end.523

if.then.521:                                      ; preds = %do.end
  %281 = load i8*, i8** %s.addr, align 8
  %incdec.ptr522 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %incdec.ptr522, i8** %s.addr, align 8
  br label %if.end.523

if.end.523:                                       ; preds = %if.then.521, %do.end
  br label %if.end.525

if.else.524:                                      ; preds = %while.end.446
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.525

if.end.525:                                       ; preds = %if.else.524, %if.end.523
  %282 = load i8*, i8** %s.addr, align 8
  store i8* %282, i8** %retval
  br label %return

sw.bb.526:                                        ; preds = %entry
  store i8 1, i8* @PL_minus_l, align 1
  %283 = load i8*, i8** %s.addr, align 8
  %incdec.ptr527 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %incdec.ptr527, i8** %s.addr, align 8
  %284 = load %struct.sv*, %struct.sv** @PL_ors_sv, align 8
  %tobool528 = icmp ne %struct.sv* %284, null
  br i1 %tobool528, label %if.then.529, label %if.end.530

if.then.529:                                      ; preds = %sw.bb.526
  %285 = load %struct.sv*, %struct.sv** @PL_ors_sv, align 8
  call void @Perl_sv_free(%struct.sv* %285)
  store %struct.sv* null, %struct.sv** @PL_ors_sv, align 8
  br label %if.end.530

if.end.530:                                       ; preds = %if.then.529, %sw.bb.526
  %286 = load i8*, i8** %s.addr, align 8
  %287 = load i8, i8* %286, align 1
  %conv531 = sext i8 %287 to i32
  %cmp532 = icmp sge i32 %conv531, 48
  br i1 %cmp532, label %land.lhs.true.534, label %if.else.552

land.lhs.true.534:                                ; preds = %if.end.530
  %288 = load i8*, i8** %s.addr, align 8
  %289 = load i8, i8* %288, align 1
  %conv535 = sext i8 %289 to i32
  %cmp536 = icmp sle i32 %conv535, 57
  br i1 %cmp536, label %if.then.538, label %if.else.552

if.then.538:                                      ; preds = %land.lhs.true.534
  store i32 0, i32* %flags540, align 4
  %call541 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 1)
  store %struct.sv* %call541, %struct.sv** @PL_ors_sv, align 8
  %290 = load i8*, i8** %s.addr, align 8
  %291 = load i8, i8* %290, align 1
  %conv542 = sext i8 %291 to i32
  %cmp543 = icmp eq i32 %conv542, 48
  %conv544 = zext i1 %cmp543 to i32
  %add545 = add nsw i32 3, %conv544
  %conv546 = sext i32 %add545 to i64
  store i64 %conv546, i64* %numlen, align 8
  %292 = load i8*, i8** %s.addr, align 8
  %call547 = call i64 @Perl_grok_oct(i8* %292, i64* %numlen, i32* %flags540, double* null)
  %conv548 = trunc i64 %call547 to i8
  %293 = load %struct.sv*, %struct.sv** @PL_ors_sv, align 8
  %sv_any549 = getelementptr inbounds %struct.sv, %struct.sv* %293, i32 0, i32 0
  %294 = load i8*, i8** %sv_any549, align 8
  %295 = bitcast i8* %294 to %struct.xpv*
  %xpv_pv550 = getelementptr inbounds %struct.xpv, %struct.xpv* %295, i32 0, i32 0
  %296 = load i8*, i8** %xpv_pv550, align 8
  store i8 %conv548, i8* %296, align 1
  %297 = load i64, i64* %numlen, align 8
  %298 = load i8*, i8** %s.addr, align 8
  %add.ptr551 = getelementptr inbounds i8, i8* %298, i64 %297
  store i8* %add.ptr551, i8** %s.addr, align 8
  br label %if.end.565

if.else.552:                                      ; preds = %land.lhs.true.534, %if.end.530
  %299 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_flags553 = getelementptr inbounds %struct.sv, %struct.sv* %299, i32 0, i32 2
  %300 = load i32, i32* %sv_flags553, align 4
  %and554 = and i32 %300, 262144
  %tobool555 = icmp ne i32 %and554, 0
  br i1 %tobool555, label %land.lhs.true.556, label %if.else.562

land.lhs.true.556:                                ; preds = %if.else.552
  %301 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_any557 = getelementptr inbounds %struct.sv, %struct.sv* %301, i32 0, i32 0
  %302 = load i8*, i8** %sv_any557, align 8
  %303 = bitcast i8* %302 to %struct.xpv*
  %xpv_cur558 = getelementptr inbounds %struct.xpv, %struct.xpv* %303, i32 0, i32 1
  %304 = load i64, i64* %xpv_cur558, align 8
  %tobool559 = icmp ne i64 %304, 0
  br i1 %tobool559, label %if.else.562, label %if.then.560

if.then.560:                                      ; preds = %land.lhs.true.556
  %call561 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i64 2)
  store %struct.sv* %call561, %struct.sv** @PL_ors_sv, align 8
  br label %if.end.564

if.else.562:                                      ; preds = %land.lhs.true.556, %if.else.552
  %305 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %call563 = call %struct.sv* @Perl_newSVsv(%struct.sv* %305)
  store %struct.sv* %call563, %struct.sv** @PL_ors_sv, align 8
  br label %if.end.564

if.end.564:                                       ; preds = %if.else.562, %if.then.560
  br label %if.end.565

if.end.565:                                       ; preds = %if.end.564, %if.then.538
  %306 = load i8*, i8** %s.addr, align 8
  store i8* %306, i8** %retval
  br label %return

sw.bb.566:                                        ; preds = %entry
  call void @S_forbid_setid(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0))
  br label %sw.bb.567

sw.bb.567:                                        ; preds = %entry, %sw.bb.566
  call void @S_forbid_setid(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0))
  %307 = load i8*, i8** %s.addr, align 8
  %incdec.ptr568 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %incdec.ptr568, i8** %s.addr, align 8
  %308 = load i8, i8* %incdec.ptr568, align 1
  %tobool569 = icmp ne i8 %308, 0
  br i1 %tobool569, label %if.then.570, label %if.else.653

if.then.570:                                      ; preds = %sw.bb.567
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8** %use, align 8
  %309 = load i8*, i8** %s.addr, align 8
  %310 = load i8, i8* %309, align 1
  %conv576 = sext i8 %310 to i32
  %cmp577 = icmp eq i32 %conv576, 45
  br i1 %cmp577, label %if.then.579, label %if.end.581

if.then.579:                                      ; preds = %if.then.570
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8** %use, align 8
  %311 = load i8*, i8** %s.addr, align 8
  %incdec.ptr580 = getelementptr inbounds i8, i8* %311, i32 1
  store i8* %incdec.ptr580, i8** %s.addr, align 8
  br label %if.end.581

if.end.581:                                       ; preds = %if.then.579, %if.then.570
  %312 = load i8*, i8** %use, align 8
  %call582 = call %struct.sv* @Perl_newSVpv(i8* %312, i64 0)
  store %struct.sv* %call582, %struct.sv** %sv574, align 8
  %313 = load i8*, i8** %s.addr, align 8
  store i8* %313, i8** %start572, align 8
  br label %while.cond.583

while.cond.583:                                   ; preds = %while.body.616, %if.end.581
  %314 = load i8*, i8** %s.addr, align 8
  %315 = load i8, i8* %314, align 1
  %conv584 = sext i8 %315 to i32
  %cmp585 = icmp sge i32 %conv584, 65
  br i1 %cmp585, label %land.lhs.true.587, label %lor.lhs.false.591

land.lhs.true.587:                                ; preds = %while.cond.583
  %316 = load i8*, i8** %s.addr, align 8
  %317 = load i8, i8* %316, align 1
  %conv588 = sext i8 %317 to i32
  %cmp589 = icmp sle i32 %conv588, 90
  br i1 %cmp589, label %lor.end.615, label %lor.lhs.false.591

lor.lhs.false.591:                                ; preds = %land.lhs.true.587, %while.cond.583
  %318 = load i8*, i8** %s.addr, align 8
  %319 = load i8, i8* %318, align 1
  %conv592 = sext i8 %319 to i32
  %cmp593 = icmp sge i32 %conv592, 97
  br i1 %cmp593, label %land.lhs.true.595, label %lor.lhs.false.599

land.lhs.true.595:                                ; preds = %lor.lhs.false.591
  %320 = load i8*, i8** %s.addr, align 8
  %321 = load i8, i8* %320, align 1
  %conv596 = sext i8 %321 to i32
  %cmp597 = icmp sle i32 %conv596, 122
  br i1 %cmp597, label %lor.end.615, label %lor.lhs.false.599

lor.lhs.false.599:                                ; preds = %land.lhs.true.595, %lor.lhs.false.591
  %322 = load i8*, i8** %s.addr, align 8
  %323 = load i8, i8* %322, align 1
  %conv600 = sext i8 %323 to i32
  %cmp601 = icmp sge i32 %conv600, 48
  br i1 %cmp601, label %land.lhs.true.603, label %lor.lhs.false.607

land.lhs.true.603:                                ; preds = %lor.lhs.false.599
  %324 = load i8*, i8** %s.addr, align 8
  %325 = load i8, i8* %324, align 1
  %conv604 = sext i8 %325 to i32
  %cmp605 = icmp sle i32 %conv604, 57
  br i1 %cmp605, label %lor.end.615, label %lor.lhs.false.607

lor.lhs.false.607:                                ; preds = %land.lhs.true.603, %lor.lhs.false.599
  %326 = load i8*, i8** %s.addr, align 8
  %327 = load i8, i8* %326, align 1
  %conv608 = sext i8 %327 to i32
  %cmp609 = icmp eq i32 %conv608, 95
  br i1 %cmp609, label %lor.end.615, label %lor.rhs.611

lor.rhs.611:                                      ; preds = %lor.lhs.false.607
  %328 = load i8*, i8** %s.addr, align 8
  %329 = load i8, i8* %328, align 1
  %conv612 = sext i8 %329 to i32
  %cmp613 = icmp eq i32 %conv612, 58
  br label %lor.end.615

lor.end.615:                                      ; preds = %lor.rhs.611, %lor.lhs.false.607, %land.lhs.true.603, %land.lhs.true.595, %land.lhs.true.587
  %330 = phi i1 [ true, %lor.lhs.false.607 ], [ true, %land.lhs.true.603 ], [ true, %land.lhs.true.595 ], [ true, %land.lhs.true.587 ], [ %cmp613, %lor.rhs.611 ]
  br i1 %330, label %while.body.616, label %while.end.618

while.body.616:                                   ; preds = %lor.end.615
  %331 = load i8*, i8** %s.addr, align 8
  %incdec.ptr617 = getelementptr inbounds i8, i8* %331, i32 1
  store i8* %incdec.ptr617, i8** %s.addr, align 8
  br label %while.cond.583

while.end.618:                                    ; preds = %lor.end.615
  %332 = load i8*, i8** %s.addr, align 8
  %333 = load i8, i8* %332, align 1
  %conv619 = sext i8 %333 to i32
  %cmp620 = icmp ne i32 %conv619, 61
  br i1 %cmp620, label %if.then.622, label %if.else.635

if.then.622:                                      ; preds = %while.end.618
  %334 = load %struct.sv*, %struct.sv** %sv574, align 8
  %335 = load i8*, i8** %start572, align 8
  call void @Perl_sv_catpv(%struct.sv* %334, i8* %335)
  %336 = load i8*, i8** %start572, align 8
  %add.ptr623 = getelementptr inbounds i8, i8* %336, i64 -1
  %337 = load i8, i8* %add.ptr623, align 1
  %conv624 = sext i8 %337 to i32
  %cmp625 = icmp eq i32 %conv624, 109
  br i1 %cmp625, label %if.then.627, label %if.end.634

if.then.627:                                      ; preds = %if.then.622
  %338 = load i8*, i8** %s.addr, align 8
  %339 = load i8, i8* %338, align 1
  %conv628 = sext i8 %339 to i32
  %cmp629 = icmp ne i32 %conv628, 0
  br i1 %cmp629, label %if.then.631, label %if.end.633

if.then.631:                                      ; preds = %if.then.627
  %340 = load i8*, i8** %s.addr, align 8
  %341 = load i8, i8* %340, align 1
  %conv632 = sext i8 %341 to i32
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i32 0, i32 0), i32 %conv632)
  br label %if.end.633

if.end.633:                                       ; preds = %if.then.631, %if.then.627
  %342 = load %struct.sv*, %struct.sv** %sv574, align 8
  call void @Perl_sv_catpv(%struct.sv* %342, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.634

if.end.634:                                       ; preds = %if.end.633, %if.then.622
  br label %if.end.646

if.else.635:                                      ; preds = %while.end.618
  %343 = load i8*, i8** %s.addr, align 8
  %344 = load i8*, i8** %start572, align 8
  %cmp636 = icmp eq i8* %343, %344
  br i1 %cmp636, label %if.then.638, label %if.end.641

if.then.638:                                      ; preds = %if.else.635
  %345 = load i8*, i8** %s.addr, align 8
  %arrayidx639 = getelementptr inbounds i8, i8* %345, i64 -1
  %346 = load i8, i8* %arrayidx639, align 1
  %conv640 = sext i8 %346 to i32
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.34, i32 0, i32 0), i32 %conv640)
  br label %if.end.641

if.end.641:                                       ; preds = %if.then.638, %if.else.635
  %347 = load %struct.sv*, %struct.sv** %sv574, align 8
  %348 = load i8*, i8** %start572, align 8
  %349 = load i8*, i8** %s.addr, align 8
  %350 = load i8*, i8** %start572, align 8
  %sub.ptr.lhs.cast642 = ptrtoint i8* %349 to i64
  %sub.ptr.rhs.cast643 = ptrtoint i8* %350 to i64
  %sub.ptr.sub644 = sub i64 %sub.ptr.lhs.cast642, %sub.ptr.rhs.cast643
  call void @Perl_sv_catpvn_flags(%struct.sv* %347, i8* %348, i64 %sub.ptr.sub644, i32 2)
  %351 = load %struct.sv*, %struct.sv** %sv574, align 8
  call void @Perl_sv_catpv(%struct.sv* %351, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0))
  %352 = load %struct.sv*, %struct.sv** %sv574, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %352, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i64 1, i32 2)
  %353 = load %struct.sv*, %struct.sv** %sv574, align 8
  %354 = load i8*, i8** %s.addr, align 8
  %incdec.ptr645 = getelementptr inbounds i8, i8* %354, i32 1
  store i8* %incdec.ptr645, i8** %s.addr, align 8
  call void @Perl_sv_catpv(%struct.sv* %353, i8* %incdec.ptr645)
  %355 = load %struct.sv*, %struct.sv** %sv574, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %355, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i64 2, i32 2)
  br label %if.end.646

if.end.646:                                       ; preds = %if.end.641, %if.end.634
  %356 = load i8*, i8** %s.addr, align 8
  %call647 = call i64 @strlen(i8* %356)
  %357 = load i8*, i8** %s.addr, align 8
  %add.ptr648 = getelementptr inbounds i8, i8* %357, i64 %call647
  store i8* %add.ptr648, i8** %s.addr, align 8
  %358 = load %struct.av*, %struct.av** @PL_preambleav, align 8
  %tobool649 = icmp ne %struct.av* %358, null
  br i1 %tobool649, label %if.end.652, label %if.then.650

if.then.650:                                      ; preds = %if.end.646
  %call651 = call %struct.av* @Perl_newAV()
  store %struct.av* %call651, %struct.av** @PL_preambleav, align 8
  br label %if.end.652

if.end.652:                                       ; preds = %if.then.650, %if.end.646
  %359 = load %struct.av*, %struct.av** @PL_preambleav, align 8
  %360 = load %struct.sv*, %struct.sv** %sv574, align 8
  call void @Perl_av_push(%struct.av* %359, %struct.sv* %360)
  br label %if.end.656

if.else.653:                                      ; preds = %sw.bb.567
  %361 = load i8*, i8** %s.addr, align 8
  %add.ptr654 = getelementptr inbounds i8, i8* %361, i64 -1
  %362 = load i8, i8* %add.ptr654, align 1
  %conv655 = sext i8 %362 to i32
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i32 0, i32 0), i32 %conv655)
  br label %if.end.656

if.end.656:                                       ; preds = %if.else.653, %if.end.652
  %363 = load i8*, i8** %s.addr, align 8
  store i8* %363, i8** %retval
  br label %return

sw.bb.657:                                        ; preds = %entry
  store i8 1, i8* @PL_minus_n, align 1
  %364 = load i8*, i8** %s.addr, align 8
  %incdec.ptr658 = getelementptr inbounds i8, i8* %364, i32 1
  store i8* %incdec.ptr658, i8** %s.addr, align 8
  %365 = load i8*, i8** %s.addr, align 8
  store i8* %365, i8** %retval
  br label %return

sw.bb.659:                                        ; preds = %entry
  store i8 1, i8* @PL_minus_p, align 1
  %366 = load i8*, i8** %s.addr, align 8
  %incdec.ptr660 = getelementptr inbounds i8, i8* %366, i32 1
  store i8* %incdec.ptr660, i8** %s.addr, align 8
  %367 = load i8*, i8** %s.addr, align 8
  store i8* %367, i8** %retval
  br label %return

sw.bb.661:                                        ; preds = %entry
  call void @S_forbid_setid(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0))
  store i8 1, i8* @PL_doswitches, align 1
  %368 = load i8*, i8** %s.addr, align 8
  %incdec.ptr662 = getelementptr inbounds i8, i8* %368, i32 1
  store i8* %incdec.ptr662, i8** %s.addr, align 8
  %369 = load i8*, i8** %s.addr, align 8
  store i8* %369, i8** %retval
  br label %return

sw.bb.663:                                        ; preds = %entry
  %370 = load i8, i8* @PL_tainting, align 1
  %tobool664 = icmp ne i8 %370, 0
  br i1 %tobool664, label %if.end.666, label %if.then.665

if.then.665:                                      ; preds = %sw.bb.663
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.39, i32 0, i32 0), i32 116, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.666

if.end.666:                                       ; preds = %if.then.665, %sw.bb.663
  %371 = load i8*, i8** %s.addr, align 8
  %incdec.ptr667 = getelementptr inbounds i8, i8* %371, i32 1
  store i8* %incdec.ptr667, i8** %s.addr, align 8
  %372 = load i8*, i8** %s.addr, align 8
  store i8* %372, i8** %retval
  br label %return

sw.bb.668:                                        ; preds = %entry
  %373 = load i8, i8* @PL_tainting, align 1
  %tobool669 = icmp ne i8 %373, 0
  br i1 %tobool669, label %if.end.671, label %if.then.670

if.then.670:                                      ; preds = %sw.bb.668
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.39, i32 0, i32 0), i32 84, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.671

if.end.671:                                       ; preds = %if.then.670, %sw.bb.668
  %374 = load i8*, i8** %s.addr, align 8
  %incdec.ptr672 = getelementptr inbounds i8, i8* %374, i32 1
  store i8* %incdec.ptr672, i8** %s.addr, align 8
  %375 = load i8*, i8** %s.addr, align 8
  store i8* %375, i8** %retval
  br label %return

sw.bb.673:                                        ; preds = %entry
  store i8 1, i8* @PL_do_undump, align 1
  %376 = load i8*, i8** %s.addr, align 8
  %incdec.ptr674 = getelementptr inbounds i8, i8* %376, i32 1
  store i8* %incdec.ptr674, i8** %s.addr, align 8
  %377 = load i8*, i8** %s.addr, align 8
  store i8* %377, i8** %retval
  br label %return

sw.bb.675:                                        ; preds = %entry
  store i8 1, i8* @PL_unsafe, align 1
  %378 = load i8*, i8** %s.addr, align 8
  %incdec.ptr676 = getelementptr inbounds i8, i8* %378, i32 1
  store i8* %incdec.ptr676, i8** %s.addr, align 8
  %379 = load i8*, i8** %s.addr, align 8
  store i8* %379, i8** %retval
  br label %return

sw.bb.677:                                        ; preds = %entry
  %call678 = call %struct._PerlIO** @Perl_PerlIO_stdout()
  %380 = load %struct.sv*, %struct.sv** @PL_patchlevel, align 8
  %call679 = call i8* (i8*, ...) @Perl_form(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i32 0, i32 0), %struct.sv* %380, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0))
  %call680 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call678, i8* %call679)
  %call681 = call %struct._PerlIO** @Perl_PerlIO_stdout()
  %call682 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call681, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i32 0, i32 0))
  %call683 = call %struct._PerlIO** @Perl_PerlIO_stdout()
  %call684 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call683, i8* getelementptr inbounds ([377 x i8], [377 x i8]* @.str.43, i32 0, i32 0))
  call void @Perl_my_exit(i32 0)
  br label %sw.bb.685

sw.bb.685:                                        ; preds = %entry, %sw.bb.677
  %381 = load i8, i8* @PL_dowarn, align 1
  %conv686 = zext i8 %381 to i32
  %and687 = and i32 %conv686, 6
  %tobool688 = icmp ne i32 %and687, 0
  br i1 %tobool688, label %if.end.693, label %if.then.689

if.then.689:                                      ; preds = %sw.bb.685
  %382 = load i8, i8* @PL_dowarn, align 1
  %conv690 = zext i8 %382 to i32
  %or691 = or i32 %conv690, 1
  %conv692 = trunc i32 %or691 to i8
  store i8 %conv692, i8* @PL_dowarn, align 1
  br label %if.end.693

if.end.693:                                       ; preds = %if.then.689, %sw.bb.685
  %383 = load i8*, i8** %s.addr, align 8
  %incdec.ptr694 = getelementptr inbounds i8, i8* %383, i32 1
  store i8* %incdec.ptr694, i8** %s.addr, align 8
  %384 = load i8*, i8** %s.addr, align 8
  store i8* %384, i8** %retval
  br label %return

sw.bb.695:                                        ; preds = %entry
  store i8 3, i8* @PL_dowarn, align 1
  %385 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  %cmp696 = icmp eq %struct.sv* %385, null
  br i1 %cmp696, label %if.end.705, label %lor.lhs.false.698

lor.lhs.false.698:                                ; preds = %sw.bb.695
  %386 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  %cmp699 = icmp eq %struct.sv* %386, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp699, label %if.end.705, label %lor.lhs.false.701

lor.lhs.false.701:                                ; preds = %lor.lhs.false.698
  %387 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  %cmp702 = icmp eq %struct.sv* %387, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp702, label %if.end.705, label %if.then.704

if.then.704:                                      ; preds = %lor.lhs.false.701
  %388 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  call void @Perl_sv_free(%struct.sv* %388)
  br label %if.end.705

if.end.705:                                       ; preds = %if.then.704, %lor.lhs.false.701, %lor.lhs.false.698, %sw.bb.695
  store %struct.sv* getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1), %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  %389 = load i8*, i8** %s.addr, align 8
  %incdec.ptr706 = getelementptr inbounds i8, i8* %389, i32 1
  store i8* %incdec.ptr706, i8** %s.addr, align 8
  %390 = load i8*, i8** %s.addr, align 8
  store i8* %390, i8** %retval
  br label %return

sw.bb.707:                                        ; preds = %entry
  store i8 4, i8* @PL_dowarn, align 1
  %391 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  %cmp708 = icmp eq %struct.sv* %391, null
  br i1 %cmp708, label %if.end.717, label %lor.lhs.false.710

lor.lhs.false.710:                                ; preds = %sw.bb.707
  %392 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  %cmp711 = icmp eq %struct.sv* %392, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp711, label %if.end.717, label %lor.lhs.false.713

lor.lhs.false.713:                                ; preds = %lor.lhs.false.710
  %393 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  %cmp714 = icmp eq %struct.sv* %393, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp714, label %if.end.717, label %if.then.716

if.then.716:                                      ; preds = %lor.lhs.false.713
  %394 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  call void @Perl_sv_free(%struct.sv* %394)
  br label %if.end.717

if.end.717:                                       ; preds = %if.then.716, %lor.lhs.false.713, %lor.lhs.false.710, %sw.bb.707
  store %struct.sv* getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2), %struct.sv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 14), align 8
  %395 = load i8*, i8** %s.addr, align 8
  %incdec.ptr718 = getelementptr inbounds i8, i8* %395, i32 1
  store i8* %incdec.ptr718, i8** %s.addr, align 8
  %396 = load i8*, i8** %s.addr, align 8
  store i8* %396, i8** %retval
  br label %return

sw.bb.719:                                        ; preds = %entry, %entry
  %397 = load i8*, i8** %s.addr, align 8
  %arrayidx720 = getelementptr inbounds i8, i8* %397, i64 1
  %398 = load i8, i8* %arrayidx720, align 1
  %conv721 = sext i8 %398 to i32
  %cmp722 = icmp eq i32 %conv721, 45
  br i1 %cmp722, label %if.then.724, label %if.end.726

if.then.724:                                      ; preds = %sw.bb.719
  %399 = load i8*, i8** %s.addr, align 8
  %add.ptr725 = getelementptr inbounds i8, i8* %399, i64 2
  store i8* %add.ptr725, i8** %retval
  br label %return

if.end.726:                                       ; preds = %sw.bb.719
  br label %sw.epilog

sw.bb.727:                                        ; preds = %entry, %entry, %entry, %entry, %entry
  br label %sw.epilog

sw.bb.728:                                        ; preds = %entry
  %400 = load i8, i8* @PL_preprocess, align 1
  %tobool729 = icmp ne i8 %400, 0
  br i1 %tobool729, label %if.then.730, label %if.end.732

if.then.730:                                      ; preds = %sw.bb.728
  %401 = load i8*, i8** %s.addr, align 8
  %add.ptr731 = getelementptr inbounds i8, i8* %401, i64 1
  store i8* %add.ptr731, i8** %retval
  br label %return

if.end.732:                                       ; preds = %sw.bb.728
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end.732
  %402 = load i8*, i8** %s.addr, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.44, i32 0, i32 0), i8* %402)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.727, %if.end.726
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.730, %if.then.724, %if.end.717, %if.end.705, %if.end.693, %sw.bb.675, %sw.bb.673, %if.end.671, %if.end.666, %sw.bb.661, %sw.bb.659, %sw.bb.657, %if.end.656, %if.end.565, %if.end.525, %if.end.416, %for.end.368, %if.end.313, %sw.bb.192, %sw.bb.190, %while.end, %sw.bb.164, %if.end.161
  %403 = load i8*, i8** %retval
  ret i8* %403
}

declare i64 @Perl_grok_hex(i8*, i64*, i32*, double*) #1

declare i8* @Perl_sv_grow(%struct.sv*, i64) #1

declare i64 @Perl_grok_oct(i8*, i64*, i32*, double*) #1

declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

declare i32 @Perl_parse_unicode_opts(i8**) #1

; Function Attrs: nounwind uwtable
define internal void @S_forbid_setid(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i32, i32* @PL_suidscript, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.158, i32 0, i32 0), i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #1

declare i64 @strlen(i8*) #1

; Function Attrs: nounwind uwtable
define void @Perl_init_debugger() #0 {
entry:
  %ostash = alloca %struct.hv*, align 8
  %0 = load %struct.hv*, %struct.hv** @PL_curstash, align 8
  store %struct.hv* %0, %struct.hv** %ostash, align 8
  %1 = load %struct.hv*, %struct.hv** @PL_debstash, align 8
  store %struct.hv* %1, %struct.hv** @PL_curstash, align 8
  %call = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 2, i32 10)
  %call1 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %call)
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %call1, i32 0, i32 0
  %2 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %2, i32 0, i32 7
  %3 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_av = getelementptr inbounds %struct.gp, %struct.gp* %3, i32 0, i32 4
  %4 = load %struct.av*, %struct.av** %gp_av, align 8
  store %struct.av* %4, %struct.av** @PL_dbargs, align 8
  %5 = load %struct.av*, %struct.av** @PL_dbargs, align 8
  %sv_any2 = getelementptr inbounds %struct.av, %struct.av* %5, i32 0, i32 0
  %6 = load %struct.xpvav*, %struct.xpvav** %sv_any2, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %6, i32 0, i32 9
  %7 = load i8, i8* %xav_flags, align 1
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, -2
  %conv3 = trunc i32 %and to i8
  store i8 %conv3, i8* %xav_flags, align 1
  %call4 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 2, i32 13)
  store %struct.gv* %call4, %struct.gv** @PL_DBgv, align 8
  %call5 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i32 2, i32 10)
  store %struct.gv* %call5, %struct.gv** @PL_DBline, align 8
  %call6 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i32 2, i32 11)
  %call7 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %call6)
  store %struct.gv* %call7, %struct.gv** @PL_DBsub, align 8
  %8 = load %struct.gv*, %struct.gv** @PL_DBsub, align 8
  %sv_any8 = getelementptr inbounds %struct.gv, %struct.gv* %8, i32 0, i32 0
  %9 = load %struct.xpvgv*, %struct.xpvgv** %sv_any8, align 8
  %xgv_gp9 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %9, i32 0, i32 7
  %10 = load %struct.gp*, %struct.gp** %xgv_gp9, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %10, i32 0, i32 0
  %11 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %call10 = call signext i8 @Perl_sv_upgrade(%struct.sv* %11, i32 1)
  %call11 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i32 2, i32 4)
  %sv_any12 = getelementptr inbounds %struct.gv, %struct.gv* %call11, i32 0, i32 0
  %12 = load %struct.xpvgv*, %struct.xpvgv** %sv_any12, align 8
  %xgv_gp13 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %12, i32 0, i32 7
  %13 = load %struct.gp*, %struct.gp** %xgv_gp13, align 8
  %gp_sv14 = getelementptr inbounds %struct.gp, %struct.gp* %13, i32 0, i32 0
  %14 = load %struct.sv*, %struct.sv** %gp_sv14, align 8
  store %struct.sv* %14, %struct.sv** @PL_DBsingle, align 8
  %15 = load %struct.sv*, %struct.sv** @PL_DBsingle, align 8
  call void @Perl_sv_setiv(%struct.sv* %15, i64 0)
  %call15 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i32 2, i32 4)
  %sv_any16 = getelementptr inbounds %struct.gv, %struct.gv* %call15, i32 0, i32 0
  %16 = load %struct.xpvgv*, %struct.xpvgv** %sv_any16, align 8
  %xgv_gp17 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %16, i32 0, i32 7
  %17 = load %struct.gp*, %struct.gp** %xgv_gp17, align 8
  %gp_sv18 = getelementptr inbounds %struct.gp, %struct.gp* %17, i32 0, i32 0
  %18 = load %struct.sv*, %struct.sv** %gp_sv18, align 8
  store %struct.sv* %18, %struct.sv** @PL_DBtrace, align 8
  %19 = load %struct.sv*, %struct.sv** @PL_DBtrace, align 8
  call void @Perl_sv_setiv(%struct.sv* %19, i64 0)
  %call19 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i32 2, i32 4)
  %sv_any20 = getelementptr inbounds %struct.gv, %struct.gv* %call19, i32 0, i32 0
  %20 = load %struct.xpvgv*, %struct.xpvgv** %sv_any20, align 8
  %xgv_gp21 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %20, i32 0, i32 7
  %21 = load %struct.gp*, %struct.gp** %xgv_gp21, align 8
  %gp_sv22 = getelementptr inbounds %struct.gp, %struct.gp* %21, i32 0, i32 0
  %22 = load %struct.sv*, %struct.sv** %gp_sv22, align 8
  store %struct.sv* %22, %struct.sv** @PL_DBsignal, align 8
  %23 = load %struct.sv*, %struct.sv** @PL_DBsignal, align 8
  call void @Perl_sv_setiv(%struct.sv* %23, i64 0)
  %24 = load %struct.hv*, %struct.hv** %ostash, align 8
  store %struct.hv* %24, %struct.hv** @PL_curstash, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @S_usage(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %p = alloca i8**, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @S_usage.usage_msg, i32 0, i32 0), i8*** %p, align 8
  %call = call %struct._PerlIO** @Perl_PerlIO_stdout()
  %0 = load i8*, i8** %name.addr, align 8
  %call1 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.154, i32 0, i32 0), i8* %0)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8**, i8*** %p, align 8
  %2 = load i8*, i8** %1, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call %struct._PerlIO** @Perl_PerlIO_stdout()
  %3 = load i8**, i8*** %p, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %3, i32 1
  store i8** %incdec.ptr, i8*** %p, align 8
  %4 = load i8*, i8** %3, align 8
  %call3 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.155, i32 0, i32 0), i8* %4)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i8* @Perl_savepvn(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @S_incpush(i8* %p, i32 %addsubdirs, i32 %addoldvers, i32 %usesep) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %addsubdirs.addr = alloca i32, align 4
  %addoldvers.addr = alloca i32, align 4
  %usesep.addr = alloca i32, align 4
  %subdir = alloca %struct.sv*, align 8
  %libdir = alloca %struct.sv*, align 8
  %s = alloca i8*, align 8
  %incverlist = alloca [1 x i8*], align 8
  %incver = alloca i8**, align 8
  store i8* %p, i8** %p.addr, align 8
  store i32 %addsubdirs, i32* %addsubdirs.addr, align 4
  store i32 %addoldvers, i32* %addoldvers.addr, align 4
  store i32 %usesep, i32* %usesep.addr, align 4
  store %struct.sv* null, %struct.sv** %subdir, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %p.addr, align 8
  %2 = load i8, i8* %1, align 1
  %tobool1 = icmp ne i8 %2, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end.51

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %addsubdirs.addr, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then.5, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %if.end
  %4 = load i32, i32* %addoldvers.addr, align 4
  %tobool4 = icmp ne i32 %4, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false.3, %if.end
  %call = call %struct.sv* @Perl_newSV(i64 0)
  store %struct.sv* %call, %struct.sv** %subdir, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %lor.lhs.false.3
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.end.6
  %5 = load i8*, i8** %p.addr, align 8
  %tobool7 = icmp ne i8* %5, null
  br i1 %tobool7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i8*, i8** %p.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %tobool8 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool8, %land.rhs ]
  br i1 %8, label %while.body, label %while.end.48

while.body:                                       ; preds = %land.end
  %call9 = call %struct.sv* @Perl_newSV(i64 0)
  store %struct.sv* %call9, %struct.sv** %libdir, align 8
  %9 = load i32, i32* %usesep.addr, align 4
  %tobool10 = icmp ne i32 %9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %while.body
  br label %while.cond.12

while.cond.12:                                    ; preds = %while.body.15, %if.then.11
  %10 = load i8*, i8** %p.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv13 = sext i8 %11 to i32
  %cmp = icmp eq i32 %conv13, 58
  br i1 %cmp, label %while.body.15, label %while.end

while.body.15:                                    ; preds = %while.cond.12
  %12 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  br label %while.cond.12

while.end:                                        ; preds = %while.cond.12
  br label %if.end.16

if.end.16:                                        ; preds = %while.end, %while.body
  %13 = load i32, i32* %usesep.addr, align 4
  %tobool17 = icmp ne i32 %13, 0
  br i1 %tobool17, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.16
  %14 = load i8*, i8** %p.addr, align 8
  %call18 = call i8* @strchr(i8* %14, i32 58)
  store i8* %call18, i8** %s, align 8
  %cmp19 = icmp ne i8* %call18, null
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %land.lhs.true
  %15 = load %struct.sv*, %struct.sv** %libdir, align 8
  %16 = load i8*, i8** %p.addr, align 8
  %17 = load i8*, i8** %s, align 8
  %18 = load i8*, i8** %p.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @Perl_sv_setpvn(%struct.sv* %15, i8* %16, i64 %sub.ptr.sub)
  %19 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %add.ptr, i8** %p.addr, align 8
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true, %if.end.16
  %20 = load %struct.sv*, %struct.sv** %libdir, align 8
  %21 = load i8*, i8** %p.addr, align 8
  call void @Perl_sv_setpv(%struct.sv* %20, i8* %21)
  store i8* null, i8** %p.addr, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  %22 = load i32, i32* %addsubdirs.addr, align 4
  %tobool23 = icmp ne i32 %22, 0
  br i1 %tobool23, label %if.then.26, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %if.end.22
  %23 = load i32, i32* %addoldvers.addr, align 4
  %tobool25 = icmp ne i32 %23, 0
  br i1 %tobool25, label %if.then.26, label %if.end.39

if.then.26:                                       ; preds = %lor.lhs.false.24, %if.end.22
  %24 = bitcast [1 x i8*]* %incverlist to i8*
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 8, i32 8, i1 false)
  %25 = load i32, i32* %addsubdirs.addr, align 4
  %tobool27 = icmp ne i32 %25, 0
  br i1 %tobool27, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %if.then.26
  %26 = load %struct.sv*, %struct.sv** %subdir, align 8
  %27 = load %struct.sv*, %struct.sv** %libdir, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_setpvf(%struct.sv* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.166, i32 0, i32 0), %struct.sv* %27, i32 5, i32 8, i32 7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0))
  %28 = load %struct.sv*, %struct.sv** %subdir, align 8
  %call29 = call %struct.sv* @S_incpush_if_exists(%struct.sv* %28)
  store %struct.sv* %call29, %struct.sv** %subdir, align 8
  %29 = load %struct.sv*, %struct.sv** %subdir, align 8
  %30 = load %struct.sv*, %struct.sv** %libdir, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_setpvf(%struct.sv* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.167, i32 0, i32 0), %struct.sv* %30, i32 5, i32 8, i32 7)
  %31 = load %struct.sv*, %struct.sv** %subdir, align 8
  %call30 = call %struct.sv* @S_incpush_if_exists(%struct.sv* %31)
  store %struct.sv* %call30, %struct.sv** %subdir, align 8
  %32 = load %struct.sv*, %struct.sv** %subdir, align 8
  %33 = load %struct.sv*, %struct.sv** %libdir, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_setpvf(%struct.sv* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.168, i32 0, i32 0), %struct.sv* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0))
  %34 = load %struct.sv*, %struct.sv** %subdir, align 8
  %call31 = call %struct.sv* @S_incpush_if_exists(%struct.sv* %34)
  store %struct.sv* %call31, %struct.sv** %subdir, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.28, %if.then.26
  %35 = load i32, i32* %addoldvers.addr, align 4
  %tobool33 = icmp ne i32 %35, 0
  br i1 %tobool33, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %if.end.32
  %arraydecay = getelementptr inbounds [1 x i8*], [1 x i8*]* %incverlist, i32 0, i32 0
  store i8** %arraydecay, i8*** %incver, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.34
  %36 = load i8**, i8*** %incver, align 8
  %37 = load i8*, i8** %36, align 8
  %tobool35 = icmp ne i8* %37, null
  br i1 %tobool35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load %struct.sv*, %struct.sv** %subdir, align 8
  %39 = load %struct.sv*, %struct.sv** %libdir, align 8
  %40 = load i8**, i8*** %incver, align 8
  %41 = load i8*, i8** %40, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_setpvf(%struct.sv* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.168, i32 0, i32 0), %struct.sv* %39, i8* %41)
  %42 = load %struct.sv*, %struct.sv** %subdir, align 8
  %call36 = call %struct.sv* @S_incpush_if_exists(%struct.sv* %42)
  store %struct.sv* %call36, %struct.sv** %subdir, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i8**, i8*** %incver, align 8
  %incdec.ptr37 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %incdec.ptr37, i8*** %incver, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.38

if.end.38:                                        ; preds = %for.end, %if.end.32
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %lor.lhs.false.24
  %44 = load %struct.gv*, %struct.gv** @PL_incgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %44, i32 0, i32 0
  %45 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %45, i32 0, i32 7
  %46 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_av = getelementptr inbounds %struct.gp, %struct.gp* %46, i32 0, i32 4
  %47 = load %struct.av*, %struct.av** %gp_av, align 8
  %tobool40 = icmp ne %struct.av* %47, null
  br i1 %tobool40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.39
  %48 = load %struct.gv*, %struct.gv** @PL_incgv, align 8
  %sv_any41 = getelementptr inbounds %struct.gv, %struct.gv* %48, i32 0, i32 0
  %49 = load %struct.xpvgv*, %struct.xpvgv** %sv_any41, align 8
  %xgv_gp42 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %49, i32 0, i32 7
  %50 = load %struct.gp*, %struct.gp** %xgv_gp42, align 8
  %gp_av43 = getelementptr inbounds %struct.gp, %struct.gp* %50, i32 0, i32 4
  %51 = load %struct.av*, %struct.av** %gp_av43, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.39
  %52 = load %struct.gv*, %struct.gv** @PL_incgv, align 8
  %call44 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %52)
  %sv_any45 = getelementptr inbounds %struct.gv, %struct.gv* %call44, i32 0, i32 0
  %53 = load %struct.xpvgv*, %struct.xpvgv** %sv_any45, align 8
  %xgv_gp46 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %53, i32 0, i32 7
  %54 = load %struct.gp*, %struct.gp** %xgv_gp46, align 8
  %gp_av47 = getelementptr inbounds %struct.gp, %struct.gp* %54, i32 0, i32 4
  %55 = load %struct.av*, %struct.av** %gp_av47, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.av* [ %51, %cond.true ], [ %55, %cond.false ]
  %56 = load %struct.sv*, %struct.sv** %libdir, align 8
  call void @Perl_av_push(%struct.av* %cond, %struct.sv* %56)
  br label %while.cond

while.end.48:                                     ; preds = %land.end
  %57 = load %struct.sv*, %struct.sv** %subdir, align 8
  %tobool49 = icmp ne %struct.sv* %57, null
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %while.end.48
  %58 = load %struct.sv*, %struct.sv** %subdir, align 8
  call void @Perl_sv_free(%struct.sv* %58)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then, %if.then.50, %while.end.48
  ret void
}

declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

declare void @Perl_av_push(%struct.av*, %struct.sv*) #1

declare %struct._PerlIO** @Perl_PerlIO_stdout() #1

declare i8* @Perl_form(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @Perl_my_unexec() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_doing_taint(i32 %argc, i8** %argv, i8** %envp) #0 {
entry:
  %retval = alloca i8, align 1
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %envp.addr = alloca i8**, align 8
  %uid = alloca i32, align 4
  %euid = alloca i32, align 4
  %gid = alloca i32, align 4
  %egid = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8** %envp, i8*** %envp.addr, align 8
  %call = call i32 @getuid()
  store i32 %call, i32* %uid, align 4
  %call1 = call i32 @geteuid()
  store i32 %call1, i32* %euid, align 4
  %call2 = call i32 @getgid()
  store i32 %call2, i32* %gid, align 4
  %call3 = call i32 @getegid()
  store i32 %call3, i32* %egid, align 4
  %0 = load i32, i32* %uid, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %euid, align 4
  %2 = load i32, i32* %uid, align 4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, i32* %egid, align 4
  %4 = load i32, i32* %gid, align 4
  %cmp4 = icmp ne i32 %3, %4
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i8 1, i8* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %5 = load i32, i32* %argc.addr, align 4
  %cmp5 = icmp sgt i32 %5, 1
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.23

land.lhs.true.6:                                  ; preds = %if.end
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 1
  %7 = load i8*, i8** %arrayidx, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx7, align 1
  %conv = sext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv, 45
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.23

land.lhs.true.10:                                 ; preds = %land.lhs.true.6
  %9 = load i8**, i8*** %argv.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %9, i64 1
  %10 = load i8*, i8** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %11 to i32
  %cmp14 = icmp eq i32 %conv13, 116
  br i1 %cmp14, label %if.then.22, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %land.lhs.true.10
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %12, i64 1
  %13 = load i8*, i8** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %14 to i32
  %cmp20 = icmp eq i32 %conv19, 84
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false.16, %land.lhs.true.10
  store i8 1, i8* %retval
  br label %return

if.end.23:                                        ; preds = %lor.lhs.false.16, %land.lhs.true.6, %if.end
  store i8 0, i8* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then
  %15 = load i8, i8* %retval
  ret i8 %15
}

declare i32 @getuid() #1

declare i32 @geteuid() #1

declare i32 @getgid() #1

declare i32 @getegid() #1

declare void @Perl_sv_setiv(%struct.sv*, i64) #1

declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: nounwind uwtable
define void @Perl_init_argv_symbols(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %s = alloca i8*, align 8
  %sv = alloca %struct.sv*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %1, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8
  %2 = load i8, i8* @PL_doswitches, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.end.33

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i8**, i8*** %argv.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 0
  %9 = load i8*, i8** %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx3, align 1
  %tobool4 = icmp ne i8 %10, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %11 = load i8**, i8*** %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %11, i64 0
  %12 = load i8*, i8** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %13 to i32
  %cmp9 = icmp eq i32 %conv8, 45
  br i1 %cmp9, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end
  %14 = load i8**, i8*** %argv.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %14, i64 0
  %15 = load i8*, i8** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %15, i64 2
  %16 = load i8, i8* %arrayidx12, align 1
  %tobool13 = icmp ne i8 %16, 0
  br i1 %tobool13, label %if.end.17, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true
  %17 = load i32, i32* %argc.addr, align 4
  %dec15 = add nsw i32 %17, -1
  store i32 %dec15, i32* %argc.addr, align 4
  %18 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %incdec.ptr16, i8*** %argv.addr, align 8
  br label %for.end

if.end.17:                                        ; preds = %land.lhs.true, %if.end
  %19 = load i8**, i8*** %argv.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %19, i64 0
  %20 = load i8*, i8** %arrayidx18, align 8
  %call = call i8* @strchr(i8* %20, i32 61)
  store i8* %call, i8** %s, align 8
  %tobool19 = icmp ne i8* %call, null
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.17
  %21 = load i8*, i8** %s, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr21, i8** %s, align 8
  store i8 0, i8* %21, align 1
  %22 = load i8**, i8*** %argv.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %22, i64 0
  %23 = load i8*, i8** %arrayidx22, align 8
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 1
  %call23 = call %struct.gv* @Perl_gv_fetchpv(i8* %add.ptr, i32 1, i32 4)
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %call23, i32 0, i32 0
  %24 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %24, i32 0, i32 7
  %25 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %25, i32 0, i32 0
  %26 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %27 = load i8*, i8** %s, align 8
  call void @Perl_sv_setpv(%struct.sv* %26, i8* %27)
  br label %if.end.30

if.else:                                          ; preds = %if.end.17
  %28 = load i8**, i8*** %argv.addr, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %28, i64 0
  %29 = load i8*, i8** %arrayidx24, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %29, i64 1
  %call26 = call %struct.gv* @Perl_gv_fetchpv(i8* %add.ptr25, i32 1, i32 4)
  %sv_any27 = getelementptr inbounds %struct.gv, %struct.gv* %call26, i32 0, i32 0
  %30 = load %struct.xpvgv*, %struct.xpvgv** %sv_any27, align 8
  %xgv_gp28 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %30, i32 0, i32 7
  %31 = load %struct.gp*, %struct.gp** %xgv_gp28, align 8
  %gp_sv29 = getelementptr inbounds %struct.gp, %struct.gp* %31, i32 0, i32 0
  %32 = load %struct.sv*, %struct.sv** %gp_sv29, align 8
  call void @Perl_sv_setiv(%struct.sv* %32, i64 1)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.20
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %33 = load i32, i32* %argc.addr, align 4
  %dec31 = add nsw i32 %33, -1
  store i32 %dec31, i32* %argc.addr, align 4
  %34 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %incdec.ptr32, i8*** %argv.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.14, %if.then.5, %land.end
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %entry
  %call34 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 1, i32 10)
  store %struct.gv* %call34, %struct.gv** @PL_argvgv, align 8
  %tobool35 = icmp ne %struct.gv* %call34, null
  br i1 %tobool35, label %if.then.36, label %if.end.91

if.then.36:                                       ; preds = %if.end.33
  %35 = load %struct.gv*, %struct.gv** @PL_argvgv, align 8
  %sv_any37 = getelementptr inbounds %struct.gv, %struct.gv* %35, i32 0, i32 0
  %36 = load %struct.xpvgv*, %struct.xpvgv** %sv_any37, align 8
  %xgv_flags = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %36, i32 0, i32 11
  %37 = load i8, i8* %xgv_flags, align 1
  %conv38 = zext i8 %37 to i32
  %or = or i32 %conv38, 2
  %conv39 = trunc i32 %or to i8
  store i8 %conv39, i8* %xgv_flags, align 1
  %38 = load %struct.gv*, %struct.gv** @PL_argvgv, align 8
  %call40 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %38)
  %39 = load %struct.gv*, %struct.gv** @PL_argvgv, align 8
  %sv_any41 = getelementptr inbounds %struct.gv, %struct.gv* %39, i32 0, i32 0
  %40 = load %struct.xpvgv*, %struct.xpvgv** %sv_any41, align 8
  %xgv_gp42 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %40, i32 0, i32 7
  %41 = load %struct.gp*, %struct.gp** %xgv_gp42, align 8
  %gp_av = getelementptr inbounds %struct.gp, %struct.gp* %41, i32 0, i32 4
  %42 = load %struct.av*, %struct.av** %gp_av, align 8
  %tobool43 = icmp ne %struct.av* %42, null
  br i1 %tobool43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.36
  %43 = load %struct.gv*, %struct.gv** @PL_argvgv, align 8
  %sv_any44 = getelementptr inbounds %struct.gv, %struct.gv* %43, i32 0, i32 0
  %44 = load %struct.xpvgv*, %struct.xpvgv** %sv_any44, align 8
  %xgv_gp45 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %44, i32 0, i32 7
  %45 = load %struct.gp*, %struct.gp** %xgv_gp45, align 8
  %gp_av46 = getelementptr inbounds %struct.gp, %struct.gp* %45, i32 0, i32 4
  %46 = load %struct.av*, %struct.av** %gp_av46, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.36
  %47 = load %struct.gv*, %struct.gv** @PL_argvgv, align 8
  %call47 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %47)
  %sv_any48 = getelementptr inbounds %struct.gv, %struct.gv* %call47, i32 0, i32 0
  %48 = load %struct.xpvgv*, %struct.xpvgv** %sv_any48, align 8
  %xgv_gp49 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %48, i32 0, i32 7
  %49 = load %struct.gp*, %struct.gp** %xgv_gp49, align 8
  %gp_av50 = getelementptr inbounds %struct.gp, %struct.gp* %49, i32 0, i32 4
  %50 = load %struct.av*, %struct.av** %gp_av50, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.av* [ %46, %cond.true ], [ %50, %cond.false ]
  call void @Perl_av_clear(%struct.av* %cond)
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.87, %cond.end
  %51 = load i32, i32* %argc.addr, align 4
  %cmp52 = icmp sgt i32 %51, 0
  br i1 %cmp52, label %for.body.54, label %for.end.90

for.body.54:                                      ; preds = %for.cond.51
  %52 = load i8**, i8*** %argv.addr, align 8
  %arrayidx55 = getelementptr inbounds i8*, i8** %52, i64 0
  %53 = load i8*, i8** %arrayidx55, align 8
  %call56 = call %struct.sv* @Perl_newSVpv(i8* %53, i64 0)
  store %struct.sv* %call56, %struct.sv** %sv, align 8
  %54 = load %struct.gv*, %struct.gv** @PL_argvgv, align 8
  %sv_any57 = getelementptr inbounds %struct.gv, %struct.gv* %54, i32 0, i32 0
  %55 = load %struct.xpvgv*, %struct.xpvgv** %sv_any57, align 8
  %xgv_gp58 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %55, i32 0, i32 7
  %56 = load %struct.gp*, %struct.gp** %xgv_gp58, align 8
  %gp_av59 = getelementptr inbounds %struct.gp, %struct.gp* %56, i32 0, i32 4
  %57 = load %struct.av*, %struct.av** %gp_av59, align 8
  %tobool60 = icmp ne %struct.av* %57, null
  br i1 %tobool60, label %cond.true.61, label %cond.false.65

cond.true.61:                                     ; preds = %for.body.54
  %58 = load %struct.gv*, %struct.gv** @PL_argvgv, align 8
  %sv_any62 = getelementptr inbounds %struct.gv, %struct.gv* %58, i32 0, i32 0
  %59 = load %struct.xpvgv*, %struct.xpvgv** %sv_any62, align 8
  %xgv_gp63 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %59, i32 0, i32 7
  %60 = load %struct.gp*, %struct.gp** %xgv_gp63, align 8
  %gp_av64 = getelementptr inbounds %struct.gp, %struct.gp* %60, i32 0, i32 4
  %61 = load %struct.av*, %struct.av** %gp_av64, align 8
  br label %cond.end.70

cond.false.65:                                    ; preds = %for.body.54
  %62 = load %struct.gv*, %struct.gv** @PL_argvgv, align 8
  %call66 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %62)
  %sv_any67 = getelementptr inbounds %struct.gv, %struct.gv* %call66, i32 0, i32 0
  %63 = load %struct.xpvgv*, %struct.xpvgv** %sv_any67, align 8
  %xgv_gp68 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %63, i32 0, i32 7
  %64 = load %struct.gp*, %struct.gp** %xgv_gp68, align 8
  %gp_av69 = getelementptr inbounds %struct.gp, %struct.gp* %64, i32 0, i32 4
  %65 = load %struct.av*, %struct.av** %gp_av69, align 8
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.65, %cond.true.61
  %cond71 = phi %struct.av* [ %61, %cond.true.61 ], [ %65, %cond.false.65 ]
  %66 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_av_push(%struct.av* %cond71, %struct.sv* %66)
  %67 = load i32, i32* @PL_unicode, align 4
  %and = and i32 %67, 64
  %tobool72 = icmp ne i32 %and, 0
  br i1 %tobool72, label %lor.lhs.false, label %if.then.75

lor.lhs.false:                                    ; preds = %cond.end.70
  %68 = load i8, i8* @PL_utf8locale, align 1
  %conv73 = sext i8 %68 to i32
  %tobool74 = icmp ne i32 %conv73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.81

if.then.75:                                       ; preds = %lor.lhs.false, %cond.end.70
  %69 = load i32, i32* @PL_unicode, align 4
  %and76 = and i32 %69, 32
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.then.75
  %70 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %70, i32 0, i32 2
  %71 = load i32, i32* %sv_flags, align 4
  %or79 = or i32 %71, 536870912
  store i32 %or79, i32* %sv_flags, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.then.75
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %lor.lhs.false
  %72 = load i32, i32* @PL_unicode, align 4
  %and82 = and i32 %72, 128
  %tobool83 = icmp ne i32 %and82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %if.end.81
  %73 = load %struct.sv*, %struct.sv** %sv, align 8
  %call85 = call signext i8 @Perl_sv_utf8_decode(%struct.sv* %73)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.84, %if.end.81
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.86
  %74 = load i32, i32* %argc.addr, align 4
  %dec88 = add nsw i32 %74, -1
  store i32 %dec88, i32* %argc.addr, align 4
  %75 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr89 = getelementptr inbounds i8*, i8** %75, i32 1
  store i8** %incdec.ptr89, i8*** %argv.addr, align 8
  br label %for.cond.51

for.end.90:                                       ; preds = %for.cond.51
  br label %if.end.91

if.end.91:                                        ; preds = %for.end.90, %if.end.33
  ret void
}

declare i8* @strchr(i8*, i32) #1

declare void @Perl_av_clear(%struct.av*) #1

declare signext i8 @Perl_sv_utf8_decode(%struct.sv*) #1

declare i32 @Perl_mg_size(%struct.sv*) #1

declare %struct.sv* @Perl_av_shift(%struct.av*) #1

declare void @Perl_save_freesv(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define internal i8* @S_call_list_body(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %tmp = alloca i32, align 4
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %0, i32 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %1 = load i32*, i32** @PL_markstack_max, align 8
  %cmp = icmp eq i32* %incdec.ptr, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_markstack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %2 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  %4 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv, i32* %4, align 4
  store i32 %conv, i32* %tmp
  %5 = load i32, i32* %tmp
  %6 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %7 = bitcast %struct.cv* %6 to %struct.sv*
  %call = call i32 @Perl_call_sv(%struct.sv* %7, i32 6)
  ret i8* null
}

declare void @Perl_sv_catpvf(%struct.sv*, i8*, ...) #1

; Function Attrs: noreturn
declare void @siglongjmp(%struct.__jmp_buf_tag*, i32) #4

; Function Attrs: noreturn
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define void @Perl_my_failure_exit() #0 {
entry:
  %exitstatus = alloca i32, align 4
  %call = call i32* @__errno_location()
  %0 = load i32, i32* %call, align 4
  %and = and i32 %0, 255
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location()
  %1 = load i32, i32* %call1, align 4
  store i32 %1, i32* @PL_statusvalue, align 4
  %2 = load i32, i32* @PL_statusvalue, align 4
  %cmp = icmp ne i32 %2, -1
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load i32, i32* @PL_statusvalue, align 4
  %and3 = and i32 %3, 65535
  store i32 %and3, i32* @PL_statusvalue, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.17

if.else:                                          ; preds = %entry
  %4 = load i32, i32* @PL_statusvalue, align 4
  %shr = ashr i32 %4, 8
  store i32 %shr, i32* %exitstatus, align 4
  %5 = load i32, i32* %exitstatus, align 4
  %and4 = and i32 %5, 255
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.else.11

if.then.6:                                        ; preds = %if.else
  %6 = load i32, i32* %exitstatus, align 4
  store i32 %6, i32* @PL_statusvalue, align 4
  %7 = load i32, i32* @PL_statusvalue, align 4
  %cmp7 = icmp ne i32 %7, -1
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.then.6
  %8 = load i32, i32* @PL_statusvalue, align 4
  %and9 = and i32 %8, 65535
  store i32 %and9, i32* @PL_statusvalue, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.then.6
  br label %if.end.16

if.else.11:                                       ; preds = %if.else
  store i32 255, i32* @PL_statusvalue, align 4
  %9 = load i32, i32* @PL_statusvalue, align 4
  %cmp12 = icmp ne i32 %9, -1
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.else.11
  %10 = load i32, i32* @PL_statusvalue, align 4
  %and14 = and i32 %10, 65535
  store i32 %and14, i32* @PL_statusvalue, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.else.11
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.10
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  call void @S_my_exit_jump()
  ret void
}

declare i32* @__errno_location() #1

; Function Attrs: nounwind uwtable
define internal void @S_init_main_stash() #0 {
entry:
  %gv = alloca %struct.gv*, align 8
  %call = call %struct.hv* @Perl_newHV()
  store %struct.hv* %call, %struct.hv** @PL_defstash, align 8
  store %struct.hv* %call, %struct.hv** @PL_curstash, align 8
  %call1 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i64 4)
  store %struct.sv* %call1, %struct.sv** @PL_curstname, align 8
  %call2 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i32 0, i32 0), i32 1, i32 11)
  store %struct.gv* %call2, %struct.gv** %gv, align 8
  %0 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %0, i32 0, i32 0
  %1 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %1, i32 0, i32 7
  %2 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_hv = getelementptr inbounds %struct.gp, %struct.gp* %2, i32 0, i32 5
  %3 = load %struct.hv*, %struct.hv** %gp_hv, align 8
  %4 = bitcast %struct.hv* %3 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %4)
  %5 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  %6 = bitcast %struct.hv* %5 to %struct.sv*
  store %struct.sv* %6, %struct.sv** @PL_Sv, align 8
  %7 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool = icmp ne %struct.sv* %7, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %8 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 1
  %9 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool3 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %10 = phi i1 [ false, %entry ], [ %tobool3, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  %11 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %12 = bitcast %struct.sv* %11 to %struct.hv*
  %13 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any4 = getelementptr inbounds %struct.gv, %struct.gv* %13, i32 0, i32 0
  %14 = load %struct.xpvgv*, %struct.xpvgv** %sv_any4, align 8
  %xgv_gp5 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %14, i32 0, i32 7
  %15 = load %struct.gp*, %struct.gp** %xgv_gp5, align 8
  %gp_hv6 = getelementptr inbounds %struct.gp, %struct.gp* %15, i32 0, i32 5
  store %struct.hv* %12, %struct.hv** %gp_hv6, align 8
  %16 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags, align 4
  %or = or i32 %17, 8388608
  store i32 %or, i32* %sv_flags, align 4
  %call7 = call i8* @Perl_savepv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0))
  %18 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  %sv_any8 = getelementptr inbounds %struct.hv, %struct.hv* %18, i32 0, i32 0
  %19 = load %struct.xpvhv*, %struct.xpvhv** %sv_any8, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %19, i32 0, i32 10
  store i8* %call7, i8** %xhv_name, align 8
  %call9 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0), i32 1, i32 10)
  %call10 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %call9)
  %call11 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %call10)
  store %struct.gv* %call11, %struct.gv** @PL_incgv, align 8
  %20 = load %struct.gv*, %struct.gv** @PL_incgv, align 8
  %sv_any12 = getelementptr inbounds %struct.gv, %struct.gv* %20, i32 0, i32 0
  %21 = load %struct.xpvgv*, %struct.xpvgv** %sv_any12, align 8
  %xgv_flags = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %21, i32 0, i32 11
  %22 = load i8, i8* %xgv_flags, align 1
  %conv = zext i8 %22 to i32
  %or13 = or i32 %conv, 2
  %conv14 = trunc i32 %or13 to i8
  store i8 %conv14, i8* %xgv_flags, align 1
  %call15 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i32 0, i32 0), i32 1, i32 4)
  store %struct.gv* %call15, %struct.gv** @PL_hintgv, align 8
  %23 = load %struct.gv*, %struct.gv** @PL_hintgv, align 8
  %sv_any16 = getelementptr inbounds %struct.gv, %struct.gv* %23, i32 0, i32 0
  %24 = load %struct.xpvgv*, %struct.xpvgv** %sv_any16, align 8
  %xgv_flags17 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %24, i32 0, i32 11
  %25 = load i8, i8* %xgv_flags17, align 1
  %conv18 = zext i8 %25 to i32
  %or19 = or i32 %conv18, 2
  %conv20 = trunc i32 %or19 to i8
  store i8 %conv20, i8* %xgv_flags17, align 1
  %call21 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i32 0, i32 0), i32 1, i32 10)
  store %struct.gv* %call21, %struct.gv** @PL_defgv, align 8
  %call22 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i32 0, i32 0), i32 1, i32 4)
  %call23 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %call22)
  store %struct.gv* %call23, %struct.gv** @PL_errgv, align 8
  %26 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any24 = getelementptr inbounds %struct.gv, %struct.gv* %26, i32 0, i32 0
  %27 = load %struct.xpvgv*, %struct.xpvgv** %sv_any24, align 8
  %xgv_flags25 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %27, i32 0, i32 11
  %28 = load i8, i8* %xgv_flags25, align 1
  %conv26 = zext i8 %28 to i32
  %or27 = or i32 %conv26, 2
  %conv28 = trunc i32 %or27 to i8
  store i8 %conv28, i8* %xgv_flags25, align 1
  %call29 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i32 0, i32 0), i32 1, i32 4)
  store %struct.gv* %call29, %struct.gv** @PL_replgv, align 8
  %29 = load %struct.gv*, %struct.gv** @PL_replgv, align 8
  %sv_any30 = getelementptr inbounds %struct.gv, %struct.gv* %29, i32 0, i32 0
  %30 = load %struct.xpvgv*, %struct.xpvgv** %sv_any30, align 8
  %xgv_flags31 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %30, i32 0, i32 11
  %31 = load i8, i8* %xgv_flags31, align 1
  %conv32 = zext i8 %31 to i32
  %or33 = or i32 %conv32, 2
  %conv34 = trunc i32 %or33 to i8
  store i8 %conv34, i8* %xgv_flags31, align 1
  %call35 = call i8* (i8*, ...) @Perl_form(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  %32 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any36 = getelementptr inbounds %struct.gv, %struct.gv* %32, i32 0, i32 0
  %33 = load %struct.xpvgv*, %struct.xpvgv** %sv_any36, align 8
  %xgv_gp37 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %33, i32 0, i32 7
  %34 = load %struct.gp*, %struct.gp** %xgv_gp37, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %34, i32 0, i32 0
  %35 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %call38 = call i8* @Perl_sv_grow(%struct.sv* %35, i64 240)
  %36 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any39 = getelementptr inbounds %struct.gv, %struct.gv* %36, i32 0, i32 0
  %37 = load %struct.xpvgv*, %struct.xpvgv** %sv_any39, align 8
  %xgv_gp40 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %37, i32 0, i32 7
  %38 = load %struct.gp*, %struct.gp** %xgv_gp40, align 8
  %gp_sv41 = getelementptr inbounds %struct.gp, %struct.gp* %38, i32 0, i32 0
  %39 = load %struct.sv*, %struct.sv** %gp_sv41, align 8
  call void @Perl_sv_setpvn(%struct.sv* %39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 0)
  %40 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  store %struct.hv* %40, %struct.hv** @PL_curstash, align 8
  %41 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  store %struct.hv* %41, %struct.hv** getelementptr inbounds (%struct.cop, %struct.cop* @PL_compiling, i32 0, i32 9), align 8
  %call42 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i32 2, i32 11)
  %sv_any43 = getelementptr inbounds %struct.gv, %struct.gv* %call42, i32 0, i32 0
  %42 = load %struct.xpvgv*, %struct.xpvgv** %sv_any43, align 8
  %xgv_gp44 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %42, i32 0, i32 7
  %43 = load %struct.gp*, %struct.gp** %xgv_gp44, align 8
  %gp_hv45 = getelementptr inbounds %struct.gp, %struct.gp* %43, i32 0, i32 5
  %44 = load %struct.hv*, %struct.hv** %gp_hv45, align 8
  store %struct.hv* %44, %struct.hv** @PL_debstash, align 8
  %call46 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.104, i32 0, i32 0), i32 2, i32 11)
  %sv_any47 = getelementptr inbounds %struct.gv, %struct.gv* %call46, i32 0, i32 0
  %45 = load %struct.xpvgv*, %struct.xpvgv** %sv_any47, align 8
  %xgv_gp48 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %45, i32 0, i32 7
  %46 = load %struct.gp*, %struct.gp** %xgv_gp48, align 8
  %gp_hv49 = getelementptr inbounds %struct.gp, %struct.gp* %46, i32 0, i32 5
  %47 = load %struct.hv*, %struct.hv** %gp_hv49, align 8
  store %struct.hv* %47, %struct.hv** @PL_globalstash, align 8
  %call50 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.105, i32 0, i32 0), i32 2, i32 11)
  %sv_any51 = getelementptr inbounds %struct.gv, %struct.gv* %call50, i32 0, i32 0
  %48 = load %struct.xpvgv*, %struct.xpvgv** %sv_any51, align 8
  %xgv_gp52 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %48, i32 0, i32 7
  %49 = load %struct.gp*, %struct.gp** %xgv_gp52, align 8
  %gp_hv53 = getelementptr inbounds %struct.gp, %struct.gp* %49, i32 0, i32 5
  %50 = load %struct.hv*, %struct.hv** %gp_hv53, align 8
  store %struct.hv* %50, %struct.hv** @PL_nullstash, align 8
  %call54 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i32 1)
  call void @Perl_sv_setpvn(%struct.sv* %call54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 1)
  ret void
}

declare %struct.sv* @Perl_filter_add(i32 (i32, %struct.sv*, i32)*, %struct.sv*) #1

; Function Attrs: nounwind uwtable
define internal i32 @read_e_script(i32 %idx, %struct.sv* %buf_sv, i32 %maxlen) #0 {
entry:
  %retval = alloca i32, align 4
  %idx.addr = alloca i32, align 4
  %buf_sv.addr = alloca %struct.sv*, align 8
  %maxlen.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %nl = alloca i8*, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store %struct.sv* %buf_sv, %struct.sv** %buf_sv.addr, align 8
  store i32 %maxlen, i32* %maxlen.addr, align 4
  %0 = load %struct.sv*, %struct.sv** @PL_e_script, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 0
  %1 = load i8*, i8** %sv_any, align 8
  %2 = bitcast i8* %1 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %2, i32 0, i32 0
  %3 = load i8*, i8** %xpv_pv, align 8
  store i8* %3, i8** %p, align 8
  %4 = load i8*, i8** %p, align 8
  %call = call i8* @strchr(i8* %4, i32 10)
  store i8* %call, i8** %nl, align 8
  %5 = load i8*, i8** %nl, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i8*, i8** %nl, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.sv*, %struct.sv** @PL_e_script, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 0
  %8 = load i8*, i8** %sv_any1, align 8
  %9 = bitcast i8* %8 to %struct.xpv*
  %xpv_pv2 = getelementptr inbounds %struct.xpv, %struct.xpv* %9, i32 0, i32 0
  %10 = load i8*, i8** %xpv_pv2, align 8
  %11 = load %struct.sv*, %struct.sv** @PL_e_script, align 8
  %sv_any3 = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 0
  %12 = load i8*, i8** %sv_any3, align 8
  %13 = bitcast i8* %12 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %13, i32 0, i32 1
  %14 = load i64, i64* %xpv_cur, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %10, i64 %14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store i8* %cond, i8** %nl, align 8
  %15 = load i8*, i8** %nl, align 8
  %16 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp eq i64 %sub.ptr.sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @Perl_filter_del(i32 (i32, %struct.sv*, i32)* @read_e_script)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %17 = load %struct.sv*, %struct.sv** %buf_sv.addr, align 8
  %18 = load i8*, i8** %p, align 8
  %19 = load i8*, i8** %nl, align 8
  %20 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast5 = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast6 = ptrtoint i8* %20 to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6
  call void @Perl_sv_catpvn_flags(%struct.sv* %17, i8* %18, i64 %sub.ptr.sub7, i32 2)
  %21 = load %struct.sv*, %struct.sv** @PL_e_script, align 8
  %22 = load i8*, i8** %nl, align 8
  call void @Perl_sv_chop(%struct.sv* %21, i8* %22)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #1

declare i8* @strrchr(i8*, i32) #1

declare void @Perl_sv_insert(%struct.sv*, i64, i64, i8*, i64) #1

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @S_init_perllib() #0 {
entry:
  %s = alloca i8*, align 8
  %0 = load i8, i8* @PL_tainting, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @S_incpush(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i32 0, i32 0), i32 1, i32 1, i32 1)
  call void @S_incpush(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0), i32 0, i32 0, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @S_open_script(i8* %scriptname, i8 signext %dosearch, %struct.sv* %sv) #0 {
entry:
  %scriptname.addr = alloca i8*, align 8
  %dosearch.addr = alloca i8, align 1
  %sv.addr = alloca %struct.sv*, align 8
  %quote = alloca i8*, align 8
  %code = alloca i8*, align 8
  %cpp_discard_flag = alloca i8*, align 8
  %perl = alloca i8*, align 8
  %s = alloca i8*, align 8
  store i8* %scriptname, i8** %scriptname.addr, align 8
  store i8 %dosearch, i8* %dosearch.addr, align 1
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i32 -1, i32* @PL_fdscript, align 4
  store i32 -1, i32* @PL_suidscript, align 4
  %0 = load %struct.sv*, %struct.sv** @PL_e_script, align 8
  %tobool = icmp ne %struct.sv* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i8* @Perl_savepv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0))
  store i8* %call, i8** @PL_origfilename, align 8
  br label %if.end.32

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %scriptname.addr, align 8
  %2 = load i8, i8* %dosearch.addr, align 1
  %call1 = call i8* @Perl_find_script(i8* %1, i8 signext %2, i8** null, i32 1)
  store i8* %call1, i8** %scriptname.addr, align 8
  store i8* %call1, i8** @PL_origfilename, align 8
  %3 = load i8*, i8** %scriptname.addr, align 8
  %call2 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.108, i32 0, i32 0), i64 8)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.31, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %4 = load i8*, i8** %scriptname.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 8
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.lhs.true.5, label %if.end.31

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %6 = load i8*, i8** %scriptname.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 8
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp sle i32 %conv7, 57
  br i1 %cmp8, label %if.then.10, label %if.end.31

if.then.10:                                       ; preds = %land.lhs.true.5
  %8 = load i8*, i8** %scriptname.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 8
  store i8* %add.ptr, i8** %s, align 8
  %9 = load i8*, i8** %s, align 8
  %call11 = call i32 @atoi(i8* %9)
  store i32 %call11, i32* @PL_fdscript, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.10
  %10 = load i8*, i8** %s, align 8
  %11 = load i8, i8* %10, align 1
  %conv12 = sext i8 %11 to i32
  %cmp13 = icmp sge i32 %conv12, 48
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load i8*, i8** %s, align 8
  %13 = load i8, i8* %12, align 1
  %conv15 = sext i8 %13 to i32
  %cmp16 = icmp sle i32 %conv15, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp16, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load i8*, i8** %s, align 8
  %17 = load i8, i8* %16, align 1
  %tobool18 = icmp ne i8 %17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.30

if.then.19:                                       ; preds = %while.end
  store i32 1, i32* @PL_suidscript, align 4
  %18 = load i8*, i8** %s, align 8
  %19 = load i8, i8* %18, align 1
  %conv20 = sext i8 %19 to i32
  %cmp21 = icmp ne i32 %conv20, 47
  br i1 %cmp21, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then.19
  %20 = load i8*, i8** %s, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.109, i32 0, i32 0), i8* %20)
  br label %if.end

if.end:                                           ; preds = %if.then.23, %if.then.19
  %21 = load i8*, i8** %s, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %add.ptr24, align 1
  %tobool25 = icmp ne i8 %22, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.110, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end
  %23 = load i8*, i8** %s, align 8
  %add.ptr28 = getelementptr inbounds i8, i8* %23, i64 1
  %call29 = call i8* @Perl_savepv(i8* %add.ptr28)
  store i8* %call29, i8** %scriptname.addr, align 8
  %24 = load i8*, i8** @PL_origfilename, align 8
  call void @Perl_safesysfree(i8* %24)
  %25 = load i8*, i8** %scriptname.addr, align 8
  store i8* %25, i8** @PL_origfilename, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.27, %while.end
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %land.lhs.true.5, %land.lhs.true, %if.else
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then
  %26 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv = getelementptr inbounds %struct.cop, %struct.cop* %26, i32 0, i32 10
  %27 = load %struct.gv*, %struct.gv** %cop_filegv, align 8
  %28 = bitcast %struct.gv* %27 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %28)
  %29 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv33 = getelementptr inbounds %struct.cop, %struct.cop* %29, i32 0, i32 10
  store %struct.gv* null, %struct.gv** %cop_filegv33, align 8
  %30 = load i8*, i8** @PL_origfilename, align 8
  %call34 = call %struct.gv* @Perl_gv_fetchfile(i8* %30)
  %31 = bitcast %struct.gv* %call34 to %struct.sv*
  store %struct.sv* %31, %struct.sv** @PL_Sv, align 8
  %32 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool35 = icmp ne %struct.sv* %32, null
  br i1 %tobool35, label %land.rhs.36, label %land.end.38

land.rhs.36:                                      ; preds = %if.end.32
  %33 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %33, i32 0, i32 1
  %34 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %34, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool37 = icmp ne i32 %inc, 0
  br label %land.end.38

land.end.38:                                      ; preds = %land.rhs.36, %if.end.32
  %35 = phi i1 [ false, %if.end.32 ], [ %tobool37, %land.rhs.36 ]
  %land.ext = zext i1 %35 to i32
  %36 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %37 = bitcast %struct.sv* %36 to %struct.gv*
  %38 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv39 = getelementptr inbounds %struct.cop, %struct.cop* %38, i32 0, i32 10
  store %struct.gv* %37, %struct.gv** %cop_filegv39, align 8
  %39 = load i8*, i8** @PL_origfilename, align 8
  %40 = load i8, i8* %39, align 1
  %conv40 = sext i8 %40 to i32
  %cmp41 = icmp eq i32 %conv40, 45
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.49

land.lhs.true.43:                                 ; preds = %land.end.38
  %41 = load i8*, i8** @PL_origfilename, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %42 to i32
  %cmp46 = icmp eq i32 %conv45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %land.lhs.true.43
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %scriptname.addr, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %land.lhs.true.43, %land.end.38
  %43 = load i32, i32* @PL_fdscript, align 4
  %cmp50 = icmp sge i32 %43, 0
  br i1 %cmp50, label %if.then.52, label %if.else.59

if.then.52:                                       ; preds = %if.end.49
  %44 = load i32, i32* @PL_fdscript, align 4
  %call53 = call %struct._PerlIO** @PerlIO_fdopen(i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111, i32 0, i32 0))
  store volatile %struct._PerlIO** %call53, %struct._PerlIO*** @PL_rsfp, align 8
  %45 = load volatile %struct._PerlIO**, %struct._PerlIO*** @PL_rsfp, align 8
  %tobool54 = icmp ne %struct._PerlIO** %45, null
  br i1 %tobool54, label %if.then.55, label %if.end.58

if.then.55:                                       ; preds = %if.then.52
  %46 = load volatile %struct._PerlIO**, %struct._PerlIO*** @PL_rsfp, align 8
  %call56 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %46)
  %call57 = call i32 (i32, i32, ...) @fcntl(i32 %call56, i32 2, i32 1)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.55, %if.then.52
  br label %if.end.71

if.else.59:                                       ; preds = %if.end.49
  %47 = load i8*, i8** %scriptname.addr, align 8
  %48 = load i8, i8* %47, align 1
  %tobool60 = icmp ne i8 %48, 0
  br i1 %tobool60, label %if.else.63, label %if.then.61

if.then.61:                                       ; preds = %if.else.59
  call void @S_forbid_setid(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.112, i32 0, i32 0))
  %call62 = call %struct._PerlIO** @Perl_PerlIO_stdin()
  store volatile %struct._PerlIO** %call62, %struct._PerlIO*** @PL_rsfp, align 8
  br label %if.end.70

if.else.63:                                       ; preds = %if.else.59
  %49 = load i8*, i8** %scriptname.addr, align 8
  %call64 = call %struct._PerlIO** @PerlIO_open(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111, i32 0, i32 0))
  store volatile %struct._PerlIO** %call64, %struct._PerlIO*** @PL_rsfp, align 8
  %50 = load volatile %struct._PerlIO**, %struct._PerlIO*** @PL_rsfp, align 8
  %tobool65 = icmp ne %struct._PerlIO** %50, null
  br i1 %tobool65, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %if.else.63
  %51 = load volatile %struct._PerlIO**, %struct._PerlIO*** @PL_rsfp, align 8
  %call67 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %51)
  %call68 = call i32 (i32, i32, ...) @fcntl(i32 %call67, i32 2, i32 1)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %if.else.63
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.61
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end.58
  %52 = load volatile %struct._PerlIO**, %struct._PerlIO*** @PL_rsfp, align 8
  %tobool72 = icmp ne %struct._PerlIO** %52, null
  br i1 %tobool72, label %if.end.93, label %if.then.73

if.then.73:                                       ; preds = %if.end.71
  %53 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv74 = getelementptr inbounds %struct.cop, %struct.cop* %53, i32 0, i32 10
  %54 = load %struct.gv*, %struct.gv** %cop_filegv74, align 8
  %tobool75 = icmp ne %struct.gv* %54, null
  br i1 %tobool75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.73
  %55 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv76 = getelementptr inbounds %struct.cop, %struct.cop* %55, i32 0, i32 10
  %56 = load %struct.gv*, %struct.gv** %cop_filegv76, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %56, i32 0, i32 0
  %57 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %57, i32 0, i32 7
  %58 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %58, i32 0, i32 0
  %59 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %tobool77 = icmp ne %struct.sv* %59, null
  br i1 %tobool77, label %cond.true.78, label %cond.false.88

cond.false:                                       ; preds = %if.then.73
  br i1 false, label %cond.true.78, label %cond.false.88

cond.true.78:                                     ; preds = %cond.false, %cond.true
  %60 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv79 = getelementptr inbounds %struct.cop, %struct.cop* %60, i32 0, i32 10
  %61 = load %struct.gv*, %struct.gv** %cop_filegv79, align 8
  %tobool80 = icmp ne %struct.gv* %61, null
  br i1 %tobool80, label %cond.true.81, label %cond.false.86

cond.true.81:                                     ; preds = %cond.true.78
  %62 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv82 = getelementptr inbounds %struct.cop, %struct.cop* %62, i32 0, i32 10
  %63 = load %struct.gv*, %struct.gv** %cop_filegv82, align 8
  %sv_any83 = getelementptr inbounds %struct.gv, %struct.gv* %63, i32 0, i32 0
  %64 = load %struct.xpvgv*, %struct.xpvgv** %sv_any83, align 8
  %xgv_gp84 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %64, i32 0, i32 7
  %65 = load %struct.gp*, %struct.gp** %xgv_gp84, align 8
  %gp_sv85 = getelementptr inbounds %struct.gp, %struct.gp* %65, i32 0, i32 0
  %66 = load %struct.sv*, %struct.sv** %gp_sv85, align 8
  br label %cond.end

cond.false.86:                                    ; preds = %cond.true.78
  br label %cond.end

cond.end:                                         ; preds = %cond.false.86, %cond.true.81
  %cond = phi %struct.sv* [ %66, %cond.true.81 ], [ null, %cond.false.86 ]
  %sv_any87 = getelementptr inbounds %struct.sv, %struct.sv* %cond, i32 0, i32 0
  %67 = load i8*, i8** %sv_any87, align 8
  %68 = bitcast i8* %67 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %68, i32 0, i32 0
  %69 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.89

cond.false.88:                                    ; preds = %cond.false, %cond.true
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.88, %cond.end
  %cond90 = phi i8* [ %69, %cond.end ], [ null, %cond.false.88 ]
  %call91 = call i32* @__errno_location()
  %70 = load i32, i32* %call91, align 4
  %call92 = call i8* @strerror(i32 %70)
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.113, i32 0, i32 0), i8* %cond90, i8* %call92)
  br label %if.end.93

if.end.93:                                        ; preds = %cond.end.89, %if.end.71
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @S_validate_suid(i8* %validarg, i8* %scriptname) #0 {
entry:
  %validarg.addr = alloca i8*, align 8
  %scriptname.addr = alloca i8*, align 8
  store i8* %validarg, i8** %validarg.addr, align 8
  store i8* %scriptname, i8** %scriptname.addr, align 8
  %0 = load i32, i32* @PL_euid, align 4
  %1 = load i32, i32* @PL_uid, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @PL_egid, align 4
  %3 = load i32, i32* @PL_gid, align 4
  %cmp1 = icmp ne i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.end.17

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load volatile %struct._PerlIO**, %struct._PerlIO*** @PL_rsfp, align 8
  %call = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %4)
  %call2 = call i32 @fstat(i32 %call, %struct.stat* @PL_statbuf)
  %5 = load i32, i32* @PL_euid, align 4
  %6 = load i32, i32* @PL_uid, align 4
  %cmp3 = icmp ne i32 %5, %6
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false.6

land.lhs.true:                                    ; preds = %if.then
  %7 = load i32, i32* @PL_euid, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statbuf, i32 0, i32 4), align 4
  %cmp4 = icmp eq i32 %7, %8
  br i1 %cmp4, label %land.lhs.true.5, label %lor.lhs.false.6

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %9 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statbuf, i32 0, i32 3), align 4
  %and = and i32 %9, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.13, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %land.lhs.true.5, %land.lhs.true, %if.then
  %10 = load i32, i32* @PL_egid, align 4
  %11 = load i32, i32* @PL_gid, align 4
  %cmp7 = icmp ne i32 %10, %11
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.16

land.lhs.true.8:                                  ; preds = %lor.lhs.false.6
  %12 = load i32, i32* @PL_egid, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statbuf, i32 0, i32 5), align 4
  %cmp9 = icmp eq i32 %12, %13
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.16

land.lhs.true.10:                                 ; preds = %land.lhs.true.8
  %14 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @PL_statbuf, i32 0, i32 3), align 4
  %and11 = and i32 %14, 1024
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %land.lhs.true.10, %land.lhs.true.5
  %15 = load i8, i8* @PL_do_undump, align 1
  %tobool14 = icmp ne i8 %15, 0
  br i1 %tobool14, label %if.end, label %if.then.15

if.then.15:                                       ; preds = %if.then.13
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.114, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then.13
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %land.lhs.true.10, %land.lhs.true.8, %lor.lhs.false.6
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @S_find_beginning() #0 {
entry:
  %s = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  call void @S_forbid_setid(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %if.end.95, %entry
  %0 = load i8, i8* @PL_doextract, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %while.body, label %while.end.96

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sv*, %struct.sv** @PL_linestr, align 8
  %2 = load volatile %struct._PerlIO**, %struct._PerlIO*** @PL_rsfp, align 8
  %call = call i8* @Perl_sv_gets(%struct.sv* %1, %struct._PerlIO** %2, i32 0)
  store i8* %call, i8** %s, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.116, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %3 = load i8*, i8** %s, align 8
  store i8* %3, i8** %s2, align 8
  %4 = load i8*, i8** %s, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 35
  br i1 %cmp1, label %land.lhs.true, label %if.end.95

land.lhs.true:                                    ; preds = %if.end
  %6 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 33
  br i1 %cmp4, label %land.lhs.true.6, label %if.end.95

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %8 = load i8*, i8** %s, align 8
  %call7 = call i8* @Perl_instr(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0))
  store i8* %call7, i8** %s, align 8
  %tobool8 = icmp ne i8* %call7, null
  br i1 %tobool8, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.6
  %9 = load i8*, i8** %s2, align 8
  %call9 = call i8* @Perl_instr(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0))
  store i8* %call9, i8** %s, align 8
  %tobool10 = icmp ne i8* %call9, null
  br i1 %tobool10, label %if.then.11, label %if.end.95

if.then.11:                                       ; preds = %lor.lhs.false, %land.lhs.true.6
  %10 = load volatile %struct._PerlIO**, %struct._PerlIO*** @PL_rsfp, align 8
  %call12 = call i32 @PerlIO_ungetc(%struct._PerlIO** %10, i32 10)
  store i8 0, i8* @PL_doextract, align 1
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.body.38, %if.then.11
  %11 = load i8*, i8** %s, align 8
  %12 = load i8, i8* %11, align 1
  %conv14 = sext i8 %12 to i32
  %tobool15 = icmp ne i32 %conv14, 0
  br i1 %tobool15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.13
  %13 = load i8*, i8** %s, align 8
  %14 = load i8, i8* %13, align 1
  %conv16 = sext i8 %14 to i32
  %cmp17 = icmp eq i32 %conv16, 32
  br i1 %cmp17, label %lor.end, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %land.rhs
  %15 = load i8*, i8** %s, align 8
  %16 = load i8, i8* %15, align 1
  %conv20 = sext i8 %16 to i32
  %cmp21 = icmp eq i32 %conv20, 9
  br i1 %cmp21, label %lor.end, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.19
  %17 = load i8*, i8** %s, align 8
  %18 = load i8, i8* %17, align 1
  %conv24 = sext i8 %18 to i32
  %cmp25 = icmp eq i32 %conv24, 10
  br i1 %cmp25, label %lor.end, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.23
  %19 = load i8*, i8** %s, align 8
  %20 = load i8, i8* %19, align 1
  %conv28 = sext i8 %20 to i32
  %cmp29 = icmp eq i32 %conv28, 13
  br i1 %cmp29, label %lor.end, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.27
  %21 = load i8*, i8** %s, align 8
  %22 = load i8, i8* %21, align 1
  %conv32 = sext i8 %22 to i32
  %cmp33 = icmp eq i32 %conv32, 12
  br i1 %cmp33, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.31
  %23 = load i8*, i8** %s, align 8
  %24 = load i8, i8* %23, align 1
  %conv35 = sext i8 %24 to i32
  %cmp36 = icmp eq i32 %conv35, 35
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.31, %lor.lhs.false.27, %lor.lhs.false.23, %lor.lhs.false.19, %land.rhs
  %25 = phi i1 [ true, %lor.lhs.false.31 ], [ true, %lor.lhs.false.27 ], [ true, %lor.lhs.false.23 ], [ true, %lor.lhs.false.19 ], [ true, %land.rhs ], [ %cmp36, %lor.rhs ]
  %lnot = xor i1 %25, true
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond.13
  %26 = phi i1 [ false, %while.cond.13 ], [ %lnot, %lor.end ]
  br i1 %26, label %while.body.38, label %while.end

while.body.38:                                    ; preds = %land.end
  %27 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond.13

while.end:                                        ; preds = %land.end
  %28 = load i8*, i8** %s, align 8
  store i8* %28, i8** %s2, align 8
  br label %while.cond.39

while.cond.39:                                    ; preds = %while.body.48, %while.end
  %29 = load i8*, i8** %s, align 8
  %30 = load i8, i8* %29, align 1
  %conv40 = sext i8 %30 to i32
  %cmp41 = icmp eq i32 %conv40, 32
  br i1 %cmp41, label %lor.end.47, label %lor.rhs.43

lor.rhs.43:                                       ; preds = %while.cond.39
  %31 = load i8*, i8** %s, align 8
  %32 = load i8, i8* %31, align 1
  %conv44 = sext i8 %32 to i32
  %cmp45 = icmp eq i32 %conv44, 9
  br label %lor.end.47

lor.end.47:                                       ; preds = %lor.rhs.43, %while.cond.39
  %33 = phi i1 [ true, %while.cond.39 ], [ %cmp45, %lor.rhs.43 ]
  br i1 %33, label %while.body.48, label %while.end.50

while.body.48:                                    ; preds = %lor.end.47
  %34 = load i8*, i8** %s, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr49, i8** %s, align 8
  br label %while.cond.39

while.end.50:                                     ; preds = %lor.end.47
  %35 = load i8*, i8** %s, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr51, i8** %s, align 8
  %36 = load i8, i8* %35, align 1
  %conv52 = sext i8 %36 to i32
  %cmp53 = icmp eq i32 %conv52, 45
  br i1 %cmp53, label %if.then.55, label %if.end.94

if.then.55:                                       ; preds = %while.end.50
  br label %while.cond.56

while.cond.56:                                    ; preds = %while.body.82, %if.then.55
  %37 = load i8*, i8** %s2, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %37, i64 -1
  %38 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %38 to i32
  %cmp59 = icmp sge i32 %conv58, 48
  br i1 %cmp59, label %land.lhs.true.61, label %lor.lhs.false.66

land.lhs.true.61:                                 ; preds = %while.cond.56
  %39 = load i8*, i8** %s2, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %39, i64 -1
  %40 = load i8, i8* %arrayidx62, align 1
  %conv63 = sext i8 %40 to i32
  %cmp64 = icmp sle i32 %conv63, 57
  br i1 %cmp64, label %lor.end.81, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %land.lhs.true.61, %while.cond.56
  %41 = load i8*, i8** %s2, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %41, i64 -1
  %42 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %42 to i32
  %cmp69 = icmp eq i32 %conv68, 45
  br i1 %cmp69, label %lor.end.81, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %lor.lhs.false.66
  %43 = load i8*, i8** %s2, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %43, i64 -1
  %44 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %44 to i32
  %cmp74 = icmp eq i32 %conv73, 46
  br i1 %cmp74, label %lor.end.81, label %lor.rhs.76

lor.rhs.76:                                       ; preds = %lor.lhs.false.71
  %45 = load i8*, i8** %s2, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %45, i64 -1
  %46 = load i8, i8* %arrayidx77, align 1
  %conv78 = sext i8 %46 to i32
  %cmp79 = icmp eq i32 %conv78, 95
  br label %lor.end.81

lor.end.81:                                       ; preds = %lor.rhs.76, %lor.lhs.false.71, %lor.lhs.false.66, %land.lhs.true.61
  %47 = phi i1 [ true, %lor.lhs.false.71 ], [ true, %lor.lhs.false.66 ], [ true, %land.lhs.true.61 ], [ %cmp79, %lor.rhs.76 ]
  br i1 %47, label %while.body.82, label %while.end.84

while.body.82:                                    ; preds = %lor.end.81
  %48 = load i8*, i8** %s2, align 8
  %incdec.ptr83 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %incdec.ptr83, i8** %s2, align 8
  br label %while.cond.56

while.end.84:                                     ; preds = %lor.end.81
  %49 = load i8*, i8** %s2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %49, i64 -4
  %call85 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0), i64 4)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.end.93, label %if.then.87

if.then.87:                                       ; preds = %while.end.84
  br label %while.cond.88

while.cond.88:                                    ; preds = %while.body.91, %if.then.87
  %50 = load i8*, i8** %s, align 8
  %call89 = call i8* @Perl_moreswitches(i8* %50)
  store i8* %call89, i8** %s, align 8
  %tobool90 = icmp ne i8* %call89, null
  br i1 %tobool90, label %while.body.91, label %while.end.92

while.body.91:                                    ; preds = %while.cond.88
  br label %while.cond.88

while.end.92:                                     ; preds = %while.cond.88
  br label %if.end.93

if.end.93:                                        ; preds = %while.end.92, %while.end.84
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %while.end.50
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %lor.lhs.false, %land.lhs.true, %if.end
  br label %while.cond

while.end.96:                                     ; preds = %while.cond
  ret void
}

declare i32 @chdir(i8*) #1

declare %struct.av* @Perl_pad_new(i32) #1

declare void @Perl_boot_core_PerlIO() #1

declare void @Perl_boot_core_UNIVERSAL() #1

declare void @Perl_boot_core_xsutils() #1

; Function Attrs: nounwind uwtable
define internal void @S_init_predump_symbols() #0 {
entry:
  %tmpgv = alloca %struct.gv*, align 8
  %io = alloca %struct.io*, align 8
  %call = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.119, i32 0, i32 0), i32 1)
  call void @Perl_sv_setpvn(%struct.sv* %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i32 0, i32 0), i64 1)
  %call1 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i32 0, i32 0), i32 1, i32 15)
  store %struct.gv* %call1, %struct.gv** @PL_stdingv, align 8
  %0 = load %struct.gv*, %struct.gv** @PL_stdingv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %0, i32 0, i32 0
  %1 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_flags = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %1, i32 0, i32 11
  %2 = load i8, i8* %xgv_flags, align 1
  %conv = zext i8 %2 to i32
  %or = or i32 %conv, 2
  %conv2 = trunc i32 %or to i8
  store i8 %conv2, i8* %xgv_flags, align 1
  %3 = load %struct.gv*, %struct.gv** @PL_stdingv, align 8
  %sv_any3 = getelementptr inbounds %struct.gv, %struct.gv* %3, i32 0, i32 0
  %4 = load %struct.xpvgv*, %struct.xpvgv** %sv_any3, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %4, i32 0, i32 7
  %5 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %5, i32 0, i32 2
  %6 = load %struct.io*, %struct.io** %gp_io, align 8
  store %struct.io* %6, %struct.io** %io, align 8
  %7 = load %struct.io*, %struct.io** %io, align 8
  %sv_any4 = getelementptr inbounds %struct.io, %struct.io* %7, i32 0, i32 0
  %8 = load %struct.xpvio*, %struct.xpvio** %sv_any4, align 8
  %xio_type = getelementptr inbounds %struct.xpvio, %struct.xpvio* %8, i32 0, i32 21
  store i8 60, i8* %xio_type, align 1
  %call5 = call %struct._PerlIO** @Perl_PerlIO_stdin()
  %9 = load %struct.io*, %struct.io** %io, align 8
  %sv_any6 = getelementptr inbounds %struct.io, %struct.io* %9, i32 0, i32 0
  %10 = load %struct.xpvio*, %struct.xpvio** %sv_any6, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %10, i32 0, i32 7
  store %struct._PerlIO** %call5, %struct._PerlIO*** %xio_ifp, align 8
  %call7 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.121, i32 0, i32 0), i32 1, i32 4)
  store %struct.gv* %call7, %struct.gv** %tmpgv, align 8
  %11 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any8 = getelementptr inbounds %struct.gv, %struct.gv* %11, i32 0, i32 0
  %12 = load %struct.xpvgv*, %struct.xpvgv** %sv_any8, align 8
  %xgv_flags9 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %12, i32 0, i32 11
  %13 = load i8, i8* %xgv_flags9, align 1
  %conv10 = zext i8 %13 to i32
  %or11 = or i32 %conv10, 2
  %conv12 = trunc i32 %or11 to i8
  store i8 %conv12, i8* %xgv_flags9, align 1
  %14 = load %struct.io*, %struct.io** %io, align 8
  %15 = bitcast %struct.io* %14 to %struct.sv*
  store %struct.sv* %15, %struct.sv** @PL_Sv, align 8
  %16 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool = icmp ne %struct.sv* %16, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %17 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 1
  %18 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool13 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %19 = phi i1 [ false, %entry ], [ %tobool13, %land.rhs ]
  %land.ext = zext i1 %19 to i32
  %20 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %21 = bitcast %struct.sv* %20 to %struct.io*
  %22 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any14 = getelementptr inbounds %struct.gv, %struct.gv* %22, i32 0, i32 0
  %23 = load %struct.xpvgv*, %struct.xpvgv** %sv_any14, align 8
  %xgv_gp15 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %23, i32 0, i32 7
  %24 = load %struct.gp*, %struct.gp** %xgv_gp15, align 8
  %gp_io16 = getelementptr inbounds %struct.gp, %struct.gp* %24, i32 0, i32 2
  store %struct.io* %21, %struct.io** %gp_io16, align 8
  %call17 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.122, i32 0, i32 0), i32 1, i32 15)
  store %struct.gv* %call17, %struct.gv** %tmpgv, align 8
  %25 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any18 = getelementptr inbounds %struct.gv, %struct.gv* %25, i32 0, i32 0
  %26 = load %struct.xpvgv*, %struct.xpvgv** %sv_any18, align 8
  %xgv_flags19 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %26, i32 0, i32 11
  %27 = load i8, i8* %xgv_flags19, align 1
  %conv20 = zext i8 %27 to i32
  %or21 = or i32 %conv20, 2
  %conv22 = trunc i32 %or21 to i8
  store i8 %conv22, i8* %xgv_flags19, align 1
  %28 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any23 = getelementptr inbounds %struct.gv, %struct.gv* %28, i32 0, i32 0
  %29 = load %struct.xpvgv*, %struct.xpvgv** %sv_any23, align 8
  %xgv_gp24 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %29, i32 0, i32 7
  %30 = load %struct.gp*, %struct.gp** %xgv_gp24, align 8
  %gp_io25 = getelementptr inbounds %struct.gp, %struct.gp* %30, i32 0, i32 2
  %31 = load %struct.io*, %struct.io** %gp_io25, align 8
  store %struct.io* %31, %struct.io** %io, align 8
  %32 = load %struct.io*, %struct.io** %io, align 8
  %sv_any26 = getelementptr inbounds %struct.io, %struct.io* %32, i32 0, i32 0
  %33 = load %struct.xpvio*, %struct.xpvio** %sv_any26, align 8
  %xio_type27 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %33, i32 0, i32 21
  store i8 62, i8* %xio_type27, align 1
  %call28 = call %struct._PerlIO** @Perl_PerlIO_stdout()
  %34 = load %struct.io*, %struct.io** %io, align 8
  %sv_any29 = getelementptr inbounds %struct.io, %struct.io* %34, i32 0, i32 0
  %35 = load %struct.xpvio*, %struct.xpvio** %sv_any29, align 8
  %xio_ifp30 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %35, i32 0, i32 7
  store %struct._PerlIO** %call28, %struct._PerlIO*** %xio_ifp30, align 8
  %36 = load %struct.io*, %struct.io** %io, align 8
  %sv_any31 = getelementptr inbounds %struct.io, %struct.io* %36, i32 0, i32 0
  %37 = load %struct.xpvio*, %struct.xpvio** %sv_any31, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %37, i32 0, i32 8
  store %struct._PerlIO** %call28, %struct._PerlIO*** %xio_ofp, align 8
  %38 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  call void @Perl_setdefout(%struct.gv* %38)
  %call32 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.123, i32 0, i32 0), i32 1, i32 4)
  store %struct.gv* %call32, %struct.gv** %tmpgv, align 8
  %39 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any33 = getelementptr inbounds %struct.gv, %struct.gv* %39, i32 0, i32 0
  %40 = load %struct.xpvgv*, %struct.xpvgv** %sv_any33, align 8
  %xgv_flags34 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %40, i32 0, i32 11
  %41 = load i8, i8* %xgv_flags34, align 1
  %conv35 = zext i8 %41 to i32
  %or36 = or i32 %conv35, 2
  %conv37 = trunc i32 %or36 to i8
  store i8 %conv37, i8* %xgv_flags34, align 1
  %42 = load %struct.io*, %struct.io** %io, align 8
  %43 = bitcast %struct.io* %42 to %struct.sv*
  store %struct.sv* %43, %struct.sv** @PL_Sv, align 8
  %44 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool38 = icmp ne %struct.sv* %44, null
  br i1 %tobool38, label %land.rhs.39, label %land.end.43

land.rhs.39:                                      ; preds = %land.end
  %45 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt40 = getelementptr inbounds %struct.sv, %struct.sv* %45, i32 0, i32 1
  %46 = load i32, i32* %sv_refcnt40, align 4
  %inc41 = add i32 %46, 1
  store i32 %inc41, i32* %sv_refcnt40, align 4
  %tobool42 = icmp ne i32 %inc41, 0
  br label %land.end.43

land.end.43:                                      ; preds = %land.rhs.39, %land.end
  %47 = phi i1 [ false, %land.end ], [ %tobool42, %land.rhs.39 ]
  %land.ext44 = zext i1 %47 to i32
  %48 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %49 = bitcast %struct.sv* %48 to %struct.io*
  %50 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any45 = getelementptr inbounds %struct.gv, %struct.gv* %50, i32 0, i32 0
  %51 = load %struct.xpvgv*, %struct.xpvgv** %sv_any45, align 8
  %xgv_gp46 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %51, i32 0, i32 7
  %52 = load %struct.gp*, %struct.gp** %xgv_gp46, align 8
  %gp_io47 = getelementptr inbounds %struct.gp, %struct.gp* %52, i32 0, i32 2
  store %struct.io* %49, %struct.io** %gp_io47, align 8
  %call48 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i32 0, i32 0), i32 1, i32 15)
  store %struct.gv* %call48, %struct.gv** @PL_stderrgv, align 8
  %53 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any49 = getelementptr inbounds %struct.gv, %struct.gv* %53, i32 0, i32 0
  %54 = load %struct.xpvgv*, %struct.xpvgv** %sv_any49, align 8
  %xgv_flags50 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %54, i32 0, i32 11
  %55 = load i8, i8* %xgv_flags50, align 1
  %conv51 = zext i8 %55 to i32
  %or52 = or i32 %conv51, 2
  %conv53 = trunc i32 %or52 to i8
  store i8 %conv53, i8* %xgv_flags50, align 1
  %56 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any54 = getelementptr inbounds %struct.gv, %struct.gv* %56, i32 0, i32 0
  %57 = load %struct.xpvgv*, %struct.xpvgv** %sv_any54, align 8
  %xgv_gp55 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %57, i32 0, i32 7
  %58 = load %struct.gp*, %struct.gp** %xgv_gp55, align 8
  %gp_io56 = getelementptr inbounds %struct.gp, %struct.gp* %58, i32 0, i32 2
  %59 = load %struct.io*, %struct.io** %gp_io56, align 8
  store %struct.io* %59, %struct.io** %io, align 8
  %60 = load %struct.io*, %struct.io** %io, align 8
  %sv_any57 = getelementptr inbounds %struct.io, %struct.io* %60, i32 0, i32 0
  %61 = load %struct.xpvio*, %struct.xpvio** %sv_any57, align 8
  %xio_type58 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %61, i32 0, i32 21
  store i8 62, i8* %xio_type58, align 1
  %call59 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %62 = load %struct.io*, %struct.io** %io, align 8
  %sv_any60 = getelementptr inbounds %struct.io, %struct.io* %62, i32 0, i32 0
  %63 = load %struct.xpvio*, %struct.xpvio** %sv_any60, align 8
  %xio_ifp61 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %63, i32 0, i32 7
  store %struct._PerlIO** %call59, %struct._PerlIO*** %xio_ifp61, align 8
  %64 = load %struct.io*, %struct.io** %io, align 8
  %sv_any62 = getelementptr inbounds %struct.io, %struct.io* %64, i32 0, i32 0
  %65 = load %struct.xpvio*, %struct.xpvio** %sv_any62, align 8
  %xio_ofp63 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %65, i32 0, i32 8
  store %struct._PerlIO** %call59, %struct._PerlIO*** %xio_ofp63, align 8
  %call64 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i32 1, i32 4)
  store %struct.gv* %call64, %struct.gv** %tmpgv, align 8
  %66 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any65 = getelementptr inbounds %struct.gv, %struct.gv* %66, i32 0, i32 0
  %67 = load %struct.xpvgv*, %struct.xpvgv** %sv_any65, align 8
  %xgv_flags66 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %67, i32 0, i32 11
  %68 = load i8, i8* %xgv_flags66, align 1
  %conv67 = zext i8 %68 to i32
  %or68 = or i32 %conv67, 2
  %conv69 = trunc i32 %or68 to i8
  store i8 %conv69, i8* %xgv_flags66, align 1
  %69 = load %struct.io*, %struct.io** %io, align 8
  %70 = bitcast %struct.io* %69 to %struct.sv*
  store %struct.sv* %70, %struct.sv** @PL_Sv, align 8
  %71 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool70 = icmp ne %struct.sv* %71, null
  br i1 %tobool70, label %land.rhs.71, label %land.end.75

land.rhs.71:                                      ; preds = %land.end.43
  %72 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt72 = getelementptr inbounds %struct.sv, %struct.sv* %72, i32 0, i32 1
  %73 = load i32, i32* %sv_refcnt72, align 4
  %inc73 = add i32 %73, 1
  store i32 %inc73, i32* %sv_refcnt72, align 4
  %tobool74 = icmp ne i32 %inc73, 0
  br label %land.end.75

land.end.75:                                      ; preds = %land.rhs.71, %land.end.43
  %74 = phi i1 [ false, %land.end.43 ], [ %tobool74, %land.rhs.71 ]
  %land.ext76 = zext i1 %74 to i32
  %75 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %76 = bitcast %struct.sv* %75 to %struct.io*
  %77 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any77 = getelementptr inbounds %struct.gv, %struct.gv* %77, i32 0, i32 0
  %78 = load %struct.xpvgv*, %struct.xpvgv** %sv_any77, align 8
  %xgv_gp78 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %78, i32 0, i32 7
  %79 = load %struct.gp*, %struct.gp** %xgv_gp78, align 8
  %gp_io79 = getelementptr inbounds %struct.gp, %struct.gp* %79, i32 0, i32 2
  store %struct.io* %76, %struct.io** %gp_io79, align 8
  %call80 = call %struct.sv* @Perl_newSV(i64 0)
  store %struct.sv* %call80, %struct.sv** @PL_statname, align 8
  %80 = load i8*, i8** @PL_osname, align 8
  %tobool81 = icmp ne i8* %80, null
  br i1 %tobool81, label %if.then, label %if.end

if.then:                                          ; preds = %land.end.75
  %81 = load i8*, i8** @PL_osname, align 8
  call void @Perl_safesysfree(i8* %81)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end.75
  %call82 = call i8* @Perl_savepv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0))
  store i8* %call82, i8** @PL_osname, align 8
  ret void
}

declare i32 @PerlIO_binmode(%struct._PerlIO**, i32, i32, i8*) #1

declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define internal void @S_init_lexer() #0 {
entry:
  %tmpfp = alloca %struct._PerlIO**, align 8
  %0 = load volatile %struct._PerlIO**, %struct._PerlIO*** @PL_rsfp, align 8
  store %struct._PerlIO** %0, %struct._PerlIO*** %tmpfp, align 8
  store volatile %struct._PerlIO** null, %struct._PerlIO*** @PL_rsfp, align 8
  %1 = load %struct.sv*, %struct.sv** @PL_linestr, align 8
  call void @Perl_lex_start(%struct.sv* %1)
  %2 = load %struct._PerlIO**, %struct._PerlIO*** %tmpfp, align 8
  store volatile %struct._PerlIO** %2, %struct._PerlIO*** @PL_rsfp, align 8
  %call = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i64 4)
  store %struct.sv* %call, %struct.sv** @PL_subname, align 8
  ret void
}

declare i32 @Perl_yyparse() #1

declare void @Perl_save_sptr(%struct.sv**) #1

declare void @Perl_save_I32(i32*) #1

declare void @Perl_gv_check(%struct.hv*) #1

declare void @Perl_filter_del(i32 (i32, %struct.sv*, i32)*) #1

declare void @Perl_sv_chop(%struct.sv*, i8*) #1

declare i8* @Perl_find_script(i8*, i8 signext, i8**, i32) #1

declare i32 @strncmp(i8*, i8*, i64) #1

declare i32 @atoi(i8*) #1

declare %struct.gv* @Perl_gv_fetchfile(i8*) #1

declare %struct._PerlIO** @PerlIO_fdopen(i32, i8*) #1

declare i32 @fcntl(i32, i32, ...) #1

declare i32 @Perl_PerlIO_fileno(%struct._PerlIO**) #1

declare %struct._PerlIO** @Perl_PerlIO_stdin() #1

declare %struct._PerlIO** @PerlIO_open(i8*, i8*) #1

declare i8* @strerror(i32) #1

declare i32 @fstat(i32, %struct.stat*) #1

declare i8* @Perl_sv_gets(%struct.sv*, %struct._PerlIO**, i32) #1

declare i8* @Perl_instr(i8*, i8*) #1

declare i32 @PerlIO_ungetc(%struct._PerlIO**, i32) #1

declare void @Perl_lex_start(%struct.sv*) #1

declare %struct.op* @Perl_pp_entereval() #1

declare %struct.op* @Perl_pp_entersub() #1

declare i32 @Perl_runops_standard() #1

declare void @Perl_sv_nosharing(%struct.sv*) #1

declare void @Perl_sv_nolocking(%struct.sv*) #1

declare void @Perl_sv_nounlocking(%struct.sv*) #1

declare i32 @Perl_runops_debug() #1

declare void @Perl_peep(%struct.op*) #1

declare %struct.regexp* @Perl_pregcomp(i8*, i8*, %struct.pmop*) #1

declare i32 @Perl_regexec_flags(%struct.regexp*, i8*, i8*, i8*, i32, %struct.sv*, i8*, i32) #1

declare i8* @Perl_re_intuit_start(%struct.regexp*, %struct.sv*, i8*, i8*, i32, %struct.re_scream_pos_data_s*) #1

declare %struct.sv* @Perl_re_intuit_string(%struct.regexp*) #1

declare void @Perl_pregfree(%struct.regexp*) #1

; Function Attrs: nounwind uwtable
define internal void @S_set_caret_X() #0 {
entry:
  %tmpgv = alloca %struct.gv*, align 8
  %call = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.165, i32 0, i32 0), i32 1, i32 4)
  store %struct.gv* %call, %struct.gv** %tmpgv, align 8
  %0 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %tobool = icmp ne %struct.gv* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %1, i32 0, i32 0
  %2 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %2, i32 0, i32 7
  %3 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %3, i32 0, i32 0
  %4 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %5 = load i8**, i8*** @PL_origargv, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx, align 8
  call void @Perl_sv_setpv(%struct.sv* %4, i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @Perl_hv_magic(%struct.hv*, %struct.gv*, i32) #1

declare %struct.sv** @Perl_hv_store(%struct.hv*, i8*, i32, %struct.sv*, i32) #1

declare i32 @getpid() #1

declare void @Perl_sv_setpvf(%struct.sv*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct.sv* @S_incpush_if_exists(%struct.sv* %dir) #0 {
entry:
  %dir.addr = alloca %struct.sv*, align 8
  %tmpstatbuf = alloca %struct.stat, align 8
  store %struct.sv* %dir, %struct.sv** %dir.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %dir.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 0
  %1 = load i8*, i8** %sv_any, align 8
  %2 = bitcast i8* %1 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %2, i32 0, i32 0
  %3 = load i8*, i8** %xpv_pv, align 8
  %call = call i32 @stat(i8* %3, %struct.stat* %tmpstatbuf)
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %tmpstatbuf, i32 0, i32 3
  %4 = load i32, i32* %st_mode, align 4
  %and = and i32 %4, 61440
  %cmp1 = icmp eq i32 %and, 16384
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.gv*, %struct.gv** @PL_incgv, align 8
  %sv_any2 = getelementptr inbounds %struct.gv, %struct.gv* %5, i32 0, i32 0
  %6 = load %struct.xpvgv*, %struct.xpvgv** %sv_any2, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %6, i32 0, i32 7
  %7 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_av = getelementptr inbounds %struct.gp, %struct.gp* %7, i32 0, i32 4
  %8 = load %struct.av*, %struct.av** %gp_av, align 8
  %tobool = icmp ne %struct.av* %8, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %9 = load %struct.gv*, %struct.gv** @PL_incgv, align 8
  %sv_any3 = getelementptr inbounds %struct.gv, %struct.gv* %9, i32 0, i32 0
  %10 = load %struct.xpvgv*, %struct.xpvgv** %sv_any3, align 8
  %xgv_gp4 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %10, i32 0, i32 7
  %11 = load %struct.gp*, %struct.gp** %xgv_gp4, align 8
  %gp_av5 = getelementptr inbounds %struct.gp, %struct.gp* %11, i32 0, i32 4
  %12 = load %struct.av*, %struct.av** %gp_av5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %13 = load %struct.gv*, %struct.gv** @PL_incgv, align 8
  %call6 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %13)
  %sv_any7 = getelementptr inbounds %struct.gv, %struct.gv* %call6, i32 0, i32 0
  %14 = load %struct.xpvgv*, %struct.xpvgv** %sv_any7, align 8
  %xgv_gp8 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %14, i32 0, i32 7
  %15 = load %struct.gp*, %struct.gp** %xgv_gp8, align 8
  %gp_av9 = getelementptr inbounds %struct.gp, %struct.gp* %15, i32 0, i32 4
  %16 = load %struct.av*, %struct.av** %gp_av9, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.av* [ %12, %cond.true ], [ %16, %cond.false ]
  %17 = load %struct.sv*, %struct.sv** %dir.addr, align 8
  call void @Perl_av_push(%struct.av* %cond, %struct.sv* %17)
  %call10 = call %struct.sv* @Perl_newSV(i64 0)
  store %struct.sv* %call10, %struct.sv** %dir.addr, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %entry
  %18 = load %struct.sv*, %struct.sv** %dir.addr, align 8
  ret %struct.sv* %18
}

declare i32 @stat(i8*, %struct.stat*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { returns_twice }
attributes #6 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
