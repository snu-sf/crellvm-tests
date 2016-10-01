; ModuleID = './MultiSource.Applications.siod/5.slib.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obj = type { i16, i16, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.obj*, %struct.obj* }
%struct.catch_frame = type { %struct.obj*, %struct.obj*, [1 x %struct.__jmp_buf_tag], %struct.catch_frame* }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.user_type_hooks = type { %struct.obj* (%struct.obj*)*, void (%struct.obj*)*, %struct.obj* (%struct.obj*)*, void (%struct.obj*)*, void (%struct.obj*, %struct.gen_printio*)*, %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)*, i64 (%struct.obj*, i64)*, %struct.obj* (%struct.obj*, %struct.obj*)*, %struct.obj* (i32, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*)* }
%struct.gen_printio = type { i32 (i32, i8*)*, i32 (i8*, i8*)*, i8* }
%struct.gc_protected = type { %struct.obj**, i64, %struct.gc_protected* }
%struct.gen_readio = type { i32 (i8*)*, void (i32, i8*)*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.repl_hooks = type { void (i8*)*, %struct.obj* ()*, %struct.obj* (%struct.obj*)*, void (%struct.obj*)* }
%struct.anon.17 = type { %struct._IO_FILE*, i8* }
%struct.rcsp_puts = type { i8*, i8* }
%struct.tms = type { i64, i64, i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.anon.1 = type { i8*, %struct.obj* }
%struct.anon.2 = type { i8*, %struct.obj* ()* }
%struct.anon.3 = type { i8*, %struct.obj* (%struct.obj*)* }
%struct.anon.4 = type { i8*, %struct.obj* (%struct.obj*, %struct.obj*)* }
%struct.anon.5 = type { i8*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* }
%struct.anon.6 = type { i8*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)* }
%struct.anon.7 = type { i8*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)* }
%struct.anon.8 = type { i8*, %struct.obj* (%struct.obj**, %struct.obj**)* }
%struct.anon.10 = type { %struct.obj*, %struct.obj* }
%struct.anon.13 = type { i64, i8* }
%struct.anon.0 = type { double }
%struct.anon.11 = type { i64, i64* }
%struct.anon.9 = type { i8*, %struct.obj* (i8*, ...)* }

@.str = private unnamed_addr constant [13 x i8] c"3.5 5-MAY-97\00", align 1
@nheaps = global i64 2, align 8
@heap_size = global i64 5000, align 8
@gc_status_flag = global i64 1, align 8
@init_file = global i8* null, align 8
@tkbuffer = global i8* null, align 8
@gc_kind_copying = global i64 0, align 8
@gc_cells_allocated = global i64 0, align 8
@stack_start_ptr = global %struct.obj** null, align 8
@errjmp_ok = global i64 0, align 8
@nointerrupt = global i64 1, align 8
@interrupt_differed = global i64 0, align 8
@oblistvar = global %struct.obj* null, align 8
@sym_t = global %struct.obj* null, align 8
@eof_val = global %struct.obj* null, align 8
@sym_errobj = global %struct.obj* null, align 8
@sym_catchall = global %struct.obj* null, align 8
@sym_progn = global %struct.obj* null, align 8
@sym_lambda = global %struct.obj* null, align 8
@sym_quote = global %struct.obj* null, align 8
@sym_dot = global %struct.obj* null, align 8
@sym_after_gc = global %struct.obj* null, align 8
@sym_eval_history_ptr = global %struct.obj* null, align 8
@unbound_marker = global %struct.obj* null, align 8
@obarray_dim = global i64 100, align 8
@catch_framep = global %struct.catch_frame* null, align 8
@repl_puts = global void (i8*)* null, align 8
@repl_read = global %struct.obj* ()* null, align 8
@repl_eval = global %struct.obj* (%struct.obj*)* null, align 8
@repl_print = global void (%struct.obj*)* null, align 8
@inums_dim = global i64 256, align 8
@user_types = global %struct.user_type_hooks* null, align 8
@user_tc_next = global i64 50, align 8
@protected_registers = global %struct.gc_protected* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@user_ch_readm = global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), align 8
@user_te_readm = global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), align 8
@user_readm = global %struct.obj* (i32, %struct.gen_readio*)* null, align 8
@user_readt = global %struct.obj* (i8*, i64, i32*)* null, align 8
@fatal_exit_hook = global void ()* null, align 8
@stack_limit_ptr = global i8* null, align 8
@stack_size = global i64 50000, align 8
@siod_verbose_level = global i64 4, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"/usr/local/lib/siod\00", align 1
@siod_lib = global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), align 8
@process_cla.siod_lib_set = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"SIOD_LIB\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"bad arg: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Welcome to SIOD, Scheme In One Defun, Version %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"(C) Copyright 1988-1994 Paradigm Associates Inc.\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"%ld heaps. size = %ld cells, %ld bytes. %ld inums. GC is %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"stop and copy\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"mark and sweep\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"heaps[0] at %p, heaps[1] at %p\0A\00", align 1
@heaps = common global %struct.obj** null, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"heaps[0] at %p\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"floating point exception\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"control-c interrupt\00", align 1
@repl_driver.osigint = internal global void (i32)* null, align 8
@repl_driver.osigfpe = internal global void (i32)* null, align 8
@errjmp = common global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 16
@repl_c_string_print_len = internal global i64 0, align 8
@repl_c_string_out = internal global i8* null, align 8
@repl_c_string_arg = internal global i8* null, align 8
@repl_c_string_flag = internal global i64 0, align 8
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@heap = common global %struct.obj* null, align 8
@heap_end = common global %struct.obj* null, align 8
@.str.15 = private unnamed_addr constant [53 x i8] c"GC took %g seconds, %ld compressed to %ld, %ld free\0A\00", align 1
@old_heap_used = common global i64 0, align 8
@heap_org = common global %struct.obj* null, align 8
@.str.16 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@gc_time_taken = common global double 0.000000e+00, align 8
@inside_err = internal global i64 0, align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"ERROR: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"ERROR: %s (errobj %s)\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"ERROR: %s (see errobj)\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"FATAL ERROR DURING STARTUP OR CRITICAL CODE SECTION\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"BUG. Reached impossible case\00", align 1
@.str.23 = private unnamed_addr constant [52 x i8] c"the currently assigned stack limit has been exceded\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"Stack_size = %ld bytes, [%p,%p]\0A\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"not a symbol or string\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"ran out of storage\00", align 1
@freelist = common global %struct.obj* null, align 8
@.str.27 = private unnamed_addr constant [11 x i8] c"wta to car\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"wta to cdr\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"wta to setcar\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"wta to setcdr\00", align 1
@inums = common global %struct.obj** null, align 8
@.str.31 = private unnamed_addr constant [17 x i8] c"wta(1st) to plus\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"wta(2nd) to plus\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"wta(1st) to times\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"wta(2nd) to times\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"wta(1st) to difference\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"wta(2nd) to difference\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"wta(1st) to quotient\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"wta(2nd) to quotient\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"wta to abs\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"wta to sqrt\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"wta(1st) to greaterp\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"wta(2nd) to greaterp\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"wta(1st) to lessp\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"wta(2nd) to lessp\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"wta(1st) to max\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"wta(2nd) to max\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"wta(1st) to min\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"wta(2nd) to min\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"unbound variable\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"not a symbol\00", align 1
@.str.51 = private unnamed_addr constant [39 x i8] c"failed to allocate storage from system\00", align 1
@obarray = common global %struct.obj** null, align 8
@.str.52 = private unnamed_addr constant [24 x i8] c"invalid number of heaps\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"**unbound-marker**\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"eof\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"let\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"let-internal-macro\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"let*\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"let*-macro\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"letrec\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"letrec-macro\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"errobj\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"lambda\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"quote\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"*after-gc*\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"*eval-history-ptr*\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"improper list to assq\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"type number out of range\00", align 1
@.str.73 = private unnamed_addr constant [27 x i8] c"ran out of user type codes\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"[allocating heap %ld]\0A\00", align 1
@save_regs_gc_mark = common global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 16
@gc_rt = common global double 0.000000e+00, align 8
@gc_cells_collected = common global i64 0, align 8
@.str.75 = private unnamed_addr constant [15 x i8] c"[starting GC]\0A\00", align 1
@.str.76 = private unnamed_addr constant [47 x i8] c"[GC took %g cpu seconds, %ld cells collected]\0A\00", align 1
@.str.77 = private unnamed_addr constant [62 x i8] c"cannot perform operation with stop-and-copy GC mode. Use -g0\0A\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"garbage collection is on\0A\00", align 1
@.str.79 = private unnamed_addr constant [27 x i8] c"garbage collection is off\0A\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"%ld allocated %ld free\0A\00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c"garbage collection verbose\0A\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"garbage collection silent\0A\00", align 1
@.str.83 = private unnamed_addr constant [39 x i8] c"%ld/%ld heaps, %ld allocated %ld free\0A\00", align 1
@.str.84 = private unnamed_addr constant [25 x i8] c"bad syntax argument list\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"damaged frame\00", align 1
@.str.86 = private unnamed_addr constant [18 x i8] c"too few arguments\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"damaged env\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"closure code type not valid\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"bad function\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"cannot be applied\00", align 1
@.str.91 = private unnamed_addr constant [27 x i8] c"have eval, dont know apply\00", align 1
@.str.92 = private unnamed_addr constant [26 x i8] c"wta(non-symbol) to setvar\00", align 1
@.str.93 = private unnamed_addr constant [26 x i8] c"wta(non-symbol) to define\00", align 1
@.str.94 = private unnamed_addr constant [30 x i8] c"no *catch found with this tag\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"set!\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"let-internal\00", align 1
@.str.97 = private unnamed_addr constant [30 x i8] c"wta(non-symbol) to symbolconc\00", align 1
@.str.98 = private unnamed_addr constant [27 x i8] c"symbolconc buffer overflow\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"subr_0\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"subr_1\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"subr_2\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"subr_2n\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"subr_3\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"subr_4\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"subr_5\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"lsubr\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"fsubr\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"msubr\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.111 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.112 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c" . \00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"#<%s \00", align 1
@.str.118 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"#<CLOSURE \00", align 1
@.str.120 = private unnamed_addr constant [17 x i8] c"#<UNKNOWN %d %p>\00", align 1
@.str.121 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.122 = private unnamed_addr constant [24 x i8] c"end of file inside read\00", align 1
@.str.123 = private unnamed_addr constant [23 x i8] c"unexpected close paren\00", align 1
@.str.124 = private unnamed_addr constant [20 x i8] c"+internal-backquote\00", align 1
@.str.125 = private unnamed_addr constant [23 x i8] c"+internal-comma-atsign\00", align 1
@.str.126 = private unnamed_addr constant [20 x i8] c"+internal-comma-dot\00", align 1
@.str.127 = private unnamed_addr constant [16 x i8] c"+internal-comma\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"()'`,;\22\00", align 1
@.str.129 = private unnamed_addr constant [28 x i8] c"token larger than TKBUFFERN\00", align 1
@.str.130 = private unnamed_addr constant [24 x i8] c"end of file inside list\00", align 1
@.str.131 = private unnamed_addr constant [20 x i8] c"missing close paren\00", align 1
@.str.132 = private unnamed_addr constant [16 x i8] c"could not open \00", align 1
@.str.133 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.134 = private unnamed_addr constant [11 x i8] c"not a file\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c"parser:\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c".scm\00", align 1
@.str.137 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.138 = private unnamed_addr constant [9 x i8] c"loading \00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@.str.141 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.142 = private unnamed_addr constant [9 x i8] c"-loaded*\00", align 1
@.str.143 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.144 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.145 = private unnamed_addr constant [27 x i8] c"bad argument to save-forms\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"appending\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"saving\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c" forms to \00", align 1
@.str.149 = private unnamed_addr constant [8 x i8] c"#<FILE \00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c" %p\00", align 1
@.str.151 = private unnamed_addr constant [15 x i8] c"file is closed\00", align 1
@last_c_errmsg.serrmsg = internal global [100 x i8] zeroinitializer, align 16
@.str.152 = private unnamed_addr constant [9 x i8] c"errno %d\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"cons\00", align 1
@.str.154 = private unnamed_addr constant [4 x i8] c"car\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"cdr\00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"set-car!\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"set-cdr!\00", align 1
@.str.158 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.159 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.160 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.161 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.163 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.164 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"eq?\00", align 1
@.str.168 = private unnamed_addr constant [5 x i8] c"eqv?\00", align 1
@.str.169 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.170 = private unnamed_addr constant [5 x i8] c"assq\00", align 1
@.str.171 = private unnamed_addr constant [5 x i8] c"delq\00", align 1
@.str.172 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.173 = private unnamed_addr constant [12 x i8] c"parser_read\00", align 1
@.str.174 = private unnamed_addr constant [25 x i8] c"*parser_read.scm-loaded*\00", align 1
@.str.175 = private unnamed_addr constant [8 x i8] c"eof-val\00", align 1
@.str.176 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.177 = private unnamed_addr constant [6 x i8] c"prin1\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"apply\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@.str.181 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.182 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.183 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.184 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"*catch\00", align 1
@.str.186 = private unnamed_addr constant [7 x i8] c"*throw\00", align 1
@.str.187 = private unnamed_addr constant [8 x i8] c"apropos\00", align 1
@.str.188 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.189 = private unnamed_addr constant [10 x i8] c"copy-list\00", align 1
@.str.190 = private unnamed_addr constant [10 x i8] c"gc-status\00", align 1
@.str.191 = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.193 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"pair?\00", align 1
@.str.195 = private unnamed_addr constant [8 x i8] c"symbol?\00", align 1
@.str.196 = private unnamed_addr constant [8 x i8] c"number?\00", align 1
@.str.197 = private unnamed_addr constant [14 x i8] c"symbol-bound?\00", align 1
@.str.198 = private unnamed_addr constant [13 x i8] c"symbol-value\00", align 1
@.str.199 = private unnamed_addr constant [18 x i8] c"set-symbol-value!\00", align 1
@.str.200 = private unnamed_addr constant [16 x i8] c"the-environment\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.202 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c"null?\00", align 1
@.str.204 = private unnamed_addr constant [11 x i8] c"env-lookup\00", align 1
@.str.205 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.206 = private unnamed_addr constant [11 x i8] c"symbolconc\00", align 1
@.str.207 = private unnamed_addr constant [11 x i8] c"save-forms\00", align 1
@.str.208 = private unnamed_addr constant [6 x i8] c"fopen\00", align 1
@.str.209 = private unnamed_addr constant [7 x i8] c"fclose\00", align 1
@.str.210 = private unnamed_addr constant [5 x i8] c"getc\00", align 1
@.str.211 = private unnamed_addr constant [7 x i8] c"ungetc\00", align 1
@.str.212 = private unnamed_addr constant [5 x i8] c"putc\00", align 1
@.str.213 = private unnamed_addr constant [5 x i8] c"puts\00", align 1
@.str.214 = private unnamed_addr constant [6 x i8] c"ftell\00", align 1
@.str.215 = private unnamed_addr constant [6 x i8] c"fseek\00", align 1
@.str.216 = private unnamed_addr constant [13 x i8] c"parse-number\00", align 1
@.str.217 = private unnamed_addr constant [14 x i8] c"%%stack-limit\00", align 1
@.str.218 = private unnamed_addr constant [7 x i8] c"intern\00", align 1
@.str.219 = private unnamed_addr constant [10 x i8] c"%%closure\00", align 1
@.str.220 = private unnamed_addr constant [15 x i8] c"%%closure-code\00", align 1
@.str.221 = private unnamed_addr constant [14 x i8] c"%%closure-env\00", align 1
@.str.222 = private unnamed_addr constant [9 x i8] c"nreverse\00", align 1
@.str.223 = private unnamed_addr constant [14 x i8] c"allocate-heap\00", align 1
@.str.224 = private unnamed_addr constant [8 x i8] c"gc-info\00", align 1
@.str.225 = private unnamed_addr constant [8 x i8] c"runtime\00", align 1
@.str.226 = private unnamed_addr constant [9 x i8] c"realtime\00", align 1
@.str.227 = private unnamed_addr constant [5 x i8] c"caar\00", align 1
@.str.228 = private unnamed_addr constant [5 x i8] c"cadr\00", align 1
@.str.229 = private unnamed_addr constant [5 x i8] c"cdar\00", align 1
@.str.230 = private unnamed_addr constant [5 x i8] c"cddr\00", align 1
@.str.231 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.232 = private unnamed_addr constant [6 x i8] c"srand\00", align 1
@.str.233 = private unnamed_addr constant [13 x i8] c"last-c-error\00", align 1
@.str.234 = private unnamed_addr constant [18 x i8] c"os-classification\00", align 1
@.str.235 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.236 = private unnamed_addr constant [9 x i8] c"invalid\0A\00", align 1
@.str.237 = private unnamed_addr constant [29 x i8] c"repl_c_string_print overflow\00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str.239 = private unnamed_addr constant [15 x i8] c"*slib-version*\00", align 1
@.str.240 = private unnamed_addr constant [46 x i8] c"$Id: slib.c 9206 2003-10-17 18:48:45Z gaeke $\00", align 1

; Function Attrs: nounwind uwtable
define i8* @siod_version() #0 {
entry:
  ret i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define void @process_cla(i32 %argc, i8** %argv, i32 %warnflag) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %warnflag.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %ptr = alloca i8*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 %warnflag, i32* %warnflag.addr, align 4
  %0 = load i32, i32* @process_cla.siod_lib_set, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.4, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #6
  %tobool1 = icmp ne i8* %call, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call3 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #6
  store i8* %call3, i8** @siod_lib, align 8
  store i32 1, i32* @process_cla.siod_lib_set, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %1 = load i32, i32* %k, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %call5 = call i64 @strlen(i8* %5) #8
  %cmp6 = icmp ult i64 %call5, 2
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  br label %for.inc

if.end.8:                                         ; preds = %for.body
  %6 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %6 to i64
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %7, i64 %idxprom9
  %8 = load i8*, i8** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx11, align 1
  %conv = sext i8 %9 to i32
  %cmp12 = icmp ne i32 %conv, 45
  br i1 %cmp12, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %if.end.8
  %10 = load i32, i32* %warnflag.addr, align 4
  %tobool15 = icmp ne i32 %10, 0
  br i1 %tobool15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.then.14
  %11 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %11 to i64
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %12, i64 %idxprom17
  %13 = load i8*, i8** %arrayidx18, align 8
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* %13)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.then.14
  br label %for.inc

if.end.21:                                        ; preds = %if.end.8
  %14 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %14 to i64
  %15 = load i8**, i8*** %argv.addr, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %15, i64 %idxprom22
  %16 = load i8*, i8** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %17 to i32
  switch i32 %conv25, label %sw.default [
    i32 108, label %sw.bb
    i32 104, label %sw.bb.29
    i32 111, label %sw.bb.43
    i32 105, label %sw.bb.48
    i32 110, label %sw.bb.52
    i32 103, label %sw.bb.57
    i32 115, label %sw.bb.62
    i32 118, label %sw.bb.67
  ]

sw.bb:                                            ; preds = %if.end.21
  %18 = load i32, i32* %k, align 4
  %idxprom26 = sext i32 %18 to i64
  %19 = load i8**, i8*** %argv.addr, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %19, i64 %idxprom26
  %20 = load i8*, i8** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %20, i64 2
  store i8* %arrayidx28, i8** @siod_lib, align 8
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.end.21
  %21 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %21 to i64
  %22 = load i8**, i8*** %argv.addr, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %22, i64 %idxprom30
  %23 = load i8*, i8** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %23, i64 2
  %call33 = call i64 @atol(i8* %arrayidx32) #8
  store i64 %call33, i64* @heap_size, align 8
  %24 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %24 to i64
  %25 = load i8**, i8*** %argv.addr, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %25, i64 %idxprom34
  %26 = load i8*, i8** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %26, i64 2
  %call37 = call i8* @strchr(i8* %arrayidx36, i32 58) #8
  store i8* %call37, i8** %ptr, align 8
  %tobool38 = icmp ne i8* %call37, null
  br i1 %tobool38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %sw.bb.29
  %27 = load i8*, i8** %ptr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %27, i64 1
  %call41 = call i64 @atol(i8* %arrayidx40) #8
  store i64 %call41, i64* @nheaps, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %sw.bb.29
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.end.21
  %28 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %28 to i64
  %29 = load i8**, i8*** %argv.addr, align 8
  %arrayidx45 = getelementptr inbounds i8*, i8** %29, i64 %idxprom44
  %30 = load i8*, i8** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %30, i64 2
  %call47 = call i64 @atol(i8* %arrayidx46) #8
  store i64 %call47, i64* @obarray_dim, align 8
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.end.21
  %31 = load i32, i32* %k, align 4
  %idxprom49 = sext i32 %31 to i64
  %32 = load i8**, i8*** %argv.addr, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %32, i64 %idxprom49
  %33 = load i8*, i8** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %33, i64 2
  store i8* %arrayidx51, i8** @init_file, align 8
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.end.21
  %34 = load i32, i32* %k, align 4
  %idxprom53 = sext i32 %34 to i64
  %35 = load i8**, i8*** %argv.addr, align 8
  %arrayidx54 = getelementptr inbounds i8*, i8** %35, i64 %idxprom53
  %36 = load i8*, i8** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %36, i64 2
  %call56 = call i64 @atol(i8* %arrayidx55) #8
  store i64 %call56, i64* @inums_dim, align 8
  br label %sw.epilog

sw.bb.57:                                         ; preds = %if.end.21
  %37 = load i32, i32* %k, align 4
  %idxprom58 = sext i32 %37 to i64
  %38 = load i8**, i8*** %argv.addr, align 8
  %arrayidx59 = getelementptr inbounds i8*, i8** %38, i64 %idxprom58
  %39 = load i8*, i8** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %39, i64 2
  %call61 = call i64 @atol(i8* %arrayidx60) #8
  store i64 %call61, i64* @gc_kind_copying, align 8
  br label %sw.epilog

sw.bb.62:                                         ; preds = %if.end.21
  %40 = load i32, i32* %k, align 4
  %idxprom63 = sext i32 %40 to i64
  %41 = load i8**, i8*** %argv.addr, align 8
  %arrayidx64 = getelementptr inbounds i8*, i8** %41, i64 %idxprom63
  %42 = load i8*, i8** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %42, i64 2
  %call66 = call i64 @atol(i8* %arrayidx65) #8
  store i64 %call66, i64* @stack_size, align 8
  br label %sw.epilog

sw.bb.67:                                         ; preds = %if.end.21
  %43 = load i32, i32* %k, align 4
  %idxprom68 = sext i32 %43 to i64
  %44 = load i8**, i8*** %argv.addr, align 8
  %arrayidx69 = getelementptr inbounds i8*, i8** %44, i64 %idxprom68
  %45 = load i8*, i8** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %45, i64 2
  %call71 = call i64 @atol(i8* %arrayidx70) #8
  store i64 %call71, i64* @siod_verbose_level, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.21
  %46 = load i32, i32* %warnflag.addr, align 4
  %tobool72 = icmp ne i32 %46, 0
  br i1 %tobool72, label %if.then.73, label %if.end.77

if.then.73:                                       ; preds = %sw.default
  %47 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %47 to i64
  %48 = load i8**, i8*** %argv.addr, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %48, i64 %idxprom74
  %49 = load i8*, i8** %arrayidx75, align 8
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* %49)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.73, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.77, %sw.bb.67, %sw.bb.62, %sw.bb.57, %sw.bb.52, %sw.bb.48, %sw.bb.43, %if.end.42, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %if.end.20, %if.then.7
  %50 = load i32, i32* %k, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @print_welcome() #0 {
entry:
  %0 = load i64, i64* @siod_verbose_level, align 8
  %cmp = icmp sge i64 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @siod_version()
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0), i8* %call)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_hs_1() #0 {
entry:
  %0 = load i64, i64* @siod_verbose_level, align 8
  %cmp = icmp sge i64 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @nheaps, align 8
  %2 = load i64, i64* @heap_size, align 8
  %3 = load i64, i64* @heap_size, align 8
  %mul = mul i64 %3, 24
  %4 = load i64, i64* @inums_dim, align 8
  %5 = load i64, i64* @gc_kind_copying, align 8
  %cmp1 = icmp eq i64 %5, 1
  %cond = select i1 %cmp1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0), i64 %1, i64 %2, i64 %mul, i64 %4, i8* %cond)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_hs_2() #0 {
entry:
  %0 = load i64, i64* @siod_verbose_level, align 8
  %cmp = icmp sge i64 %0, 2
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @gc_kind_copying, align 8
  %cmp1 = icmp eq i64 %1, 1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load %struct.obj**, %struct.obj*** @heaps, align 8
  %arrayidx = getelementptr inbounds %struct.obj*, %struct.obj** %2, i64 0
  %3 = load %struct.obj*, %struct.obj** %arrayidx, align 8
  %4 = load %struct.obj**, %struct.obj*** @heaps, align 8
  %arrayidx3 = getelementptr inbounds %struct.obj*, %struct.obj** %4, i64 1
  %5 = load %struct.obj*, %struct.obj** %arrayidx3, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), %struct.obj* %3, %struct.obj* %5)
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load %struct.obj**, %struct.obj*** @heaps, align 8
  %arrayidx4 = getelementptr inbounds %struct.obj*, %struct.obj** %6, i64 0
  %7 = load %struct.obj*, %struct.obj** %arrayidx4, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), %struct.obj* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @no_interrupt(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %x = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* @nointerrupt, align 8
  store i64 %0, i64* %x, align 8
  %1 = load i64, i64* %n.addr, align 8
  store i64 %1, i64* @nointerrupt, align 8
  %2 = load i64, i64* @nointerrupt, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, i64* @interrupt_differed, align 8
  %cmp1 = icmp eq i64 %3, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i64 0, i64* @interrupt_differed, align 8
  call void @err_ctrl_c()
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i64, i64* %x, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define void @err_ctrl_c() #0 {
entry:
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), %struct.obj* null)
  ret void
}

; Function Attrs: nounwind uwtable
define void @handle_sigfpe(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %call = call void (i32)* @signal(i32 8, void (i32)* @handle_sigfpe) #6
  %call1 = call %struct.obj* @err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), %struct.obj* null)
  ret void
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @err(i8* %message, %struct.obj* %x) #0 {
entry:
  %message.addr = alloca i8*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %l = alloca %struct.catch_frame*, align 8
  %was_inside = alloca i64, align 8
  %retval1 = alloca %struct.obj*, align 8
  %nx = alloca %struct.obj*, align 8
  %msg = alloca i8*, align 8
  %eobj = alloca i8*, align 8
  store i8* %message, i8** %message.addr, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load i64, i64* @inside_err, align 8
  store i64 %0, i64* %was_inside, align 8
  store i64 1, i64* @nointerrupt, align 8
  %1 = load i8*, i8** %message.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 1
  %4 = load i16, i16* %type, align 2
  %conv = sext i16 %4 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp2 = icmp eq i32 %cond, 1
  br i1 %cmp2, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %cond.end
  %5 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %6 = load %struct.obj*, %struct.obj** %car, align 8
  %cmp5 = icmp eq %struct.obj* %6, null
  br i1 %cmp5, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %land.lhs.true.4
  br label %cond.end.14

cond.false.8:                                     ; preds = %land.lhs.true.4
  %7 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as9 = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 2
  %cons10 = bitcast %union.anon* %storage_as9 to %struct.anon*
  %car11 = getelementptr inbounds %struct.anon, %struct.anon* %cons10, i32 0, i32 0
  %8 = load %struct.obj*, %struct.obj** %car11, align 8
  %type12 = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 1
  %9 = load i16, i16* %type12, align 2
  %conv13 = sext i16 %9 to i32
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.8, %cond.true.7
  %cond15 = phi i32 [ 0, %cond.true.7 ], [ %conv13, %cond.false.8 ]
  %cmp16 = icmp eq i32 %cond15, 13
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.14
  %10 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as18 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %cons19 = bitcast %union.anon* %storage_as18 to %struct.anon*
  %car20 = getelementptr inbounds %struct.anon, %struct.anon* %cons19, i32 0, i32 0
  %11 = load %struct.obj*, %struct.obj** %car20, align 8
  %call = call i8* @get_c_string(%struct.obj* %11)
  store i8* %call, i8** %msg, align 8
  %12 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as21 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 2
  %cons22 = bitcast %union.anon* %storage_as21 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons22, i32 0, i32 1
  %13 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %13, %struct.obj** %nx, align 8
  %14 = load %struct.obj*, %struct.obj** %x.addr, align 8
  store %struct.obj* %14, %struct.obj** %retval1, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.14, %cond.end, %entry
  %15 = load i8*, i8** %message.addr, align 8
  store i8* %15, i8** %msg, align 8
  %16 = load %struct.obj*, %struct.obj** %x.addr, align 8
  store %struct.obj* %16, %struct.obj** %nx, align 8
  store %struct.obj* null, %struct.obj** %retval1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load %struct.obj*, %struct.obj** %nx, align 8
  %call23 = call i8* @try_get_c_string(%struct.obj* %17)
  store i8* %call23, i8** %eobj, align 8
  %tobool24 = icmp ne i8* %call23, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.end.29

land.lhs.true.25:                                 ; preds = %if.end
  %18 = load i8*, i8** %eobj, align 8
  %call26 = call i8* @memchr(i8* %18, i32 0, i64 80) #8
  %tobool27 = icmp ne i8* %call26, null
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true.25
  store i8* null, i8** %eobj, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %land.lhs.true.25, %if.end
  %19 = load i64, i64* @siod_verbose_level, align 8
  %cmp30 = icmp sge i64 %19, 1
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.47

land.lhs.true.32:                                 ; preds = %if.end.29
  %20 = load i8*, i8** %msg, align 8
  %tobool33 = icmp ne i8* %20, null
  br i1 %tobool33, label %if.then.34, label %if.end.47

if.then.34:                                       ; preds = %land.lhs.true.32
  %21 = load %struct.obj*, %struct.obj** %nx, align 8
  %cmp35 = icmp eq %struct.obj* %21, null
  br i1 %cmp35, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %if.then.34
  %22 = load i8*, i8** %msg, align 8
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8* %22)
  br label %if.end.46

if.else.39:                                       ; preds = %if.then.34
  %23 = load i8*, i8** %eobj, align 8
  %tobool40 = icmp ne i8* %23, null
  br i1 %tobool40, label %if.then.41, label %if.else.43

if.then.41:                                       ; preds = %if.else.39
  %24 = load i8*, i8** %msg, align 8
  %25 = load i8*, i8** %eobj, align 8
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i8* %24, i8* %25)
  br label %if.end.45

if.else.43:                                       ; preds = %if.else.39
  %26 = load i8*, i8** %msg, align 8
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), i8* %26)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.then.41
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.37
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %land.lhs.true.32, %if.end.29
  %27 = load i64, i64* @errjmp_ok, align 8
  %cmp48 = icmp eq i64 %27, 1
  br i1 %cmp48, label %if.then.50, label %if.end.80

if.then.50:                                       ; preds = %if.end.47
  store i64 1, i64* @inside_err, align 8
  %28 = load %struct.obj*, %struct.obj** @sym_errobj, align 8
  %29 = load %struct.obj*, %struct.obj** %nx, align 8
  %call51 = call %struct.obj* @setvar(%struct.obj* %28, %struct.obj* %29, %struct.obj* null)
  %30 = load %struct.catch_frame*, %struct.catch_frame** @catch_framep, align 8
  store %struct.catch_frame* %30, %struct.catch_frame** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.50
  %31 = load %struct.catch_frame*, %struct.catch_frame** %l, align 8
  %tobool52 = icmp ne %struct.catch_frame* %31, null
  br i1 %tobool52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct.catch_frame*, %struct.catch_frame** %l, align 8
  %tag = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %32, i32 0, i32 0
  %33 = load %struct.obj*, %struct.obj** %tag, align 8
  %34 = load %struct.obj*, %struct.obj** @sym_errobj, align 8
  %cmp53 = icmp eq %struct.obj* %33, %34
  br i1 %cmp53, label %if.then.58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %35 = load %struct.catch_frame*, %struct.catch_frame** %l, align 8
  %tag55 = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %35, i32 0, i32 0
  %36 = load %struct.obj*, %struct.obj** %tag55, align 8
  %37 = load %struct.obj*, %struct.obj** @sym_catchall, align 8
  %cmp56 = icmp eq %struct.obj* %36, %37
  br i1 %cmp56, label %if.then.58, label %if.end.77

if.then.58:                                       ; preds = %lor.lhs.false, %for.body
  %38 = load i8*, i8** %msg, align 8
  %tobool59 = icmp ne i8* %38, null
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.then.58
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8** %msg, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.then.58
  %39 = load %struct.obj*, %struct.obj** %retval1, align 8
  %cmp62 = icmp ne %struct.obj* %39, null
  br i1 %cmp62, label %cond.true.64, label %cond.false.65

cond.true.64:                                     ; preds = %if.end.61
  %40 = load %struct.obj*, %struct.obj** %retval1, align 8
  br label %cond.end.74

cond.false.65:                                    ; preds = %if.end.61
  %41 = load i64, i64* %was_inside, align 8
  %tobool66 = icmp ne i64 %41, 0
  br i1 %tobool66, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %cond.false.65
  br label %cond.end.72

cond.false.68:                                    ; preds = %cond.false.65
  %42 = load i8*, i8** %msg, align 8
  %call69 = call i64 @strlen(i8* %42) #8
  %43 = load i8*, i8** %msg, align 8
  %call70 = call %struct.obj* @strcons(i64 %call69, i8* %43)
  %44 = load %struct.obj*, %struct.obj** %nx, align 8
  %call71 = call %struct.obj* @cons(%struct.obj* %call70, %struct.obj* %44)
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.68, %cond.true.67
  %cond73 = phi %struct.obj* [ null, %cond.true.67 ], [ %call71, %cond.false.68 ]
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.end.72, %cond.true.64
  %cond75 = phi %struct.obj* [ %40, %cond.true.64 ], [ %cond73, %cond.end.72 ]
  %45 = load %struct.catch_frame*, %struct.catch_frame** %l, align 8
  %retval76 = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %45, i32 0, i32 1
  store %struct.obj* %cond75, %struct.obj** %retval76, align 8
  store i64 0, i64* @nointerrupt, align 8
  store i64 0, i64* @inside_err, align 8
  %46 = load %struct.catch_frame*, %struct.catch_frame** %l, align 8
  %cframe = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %46, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %cframe, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay, i32 2) #9
  unreachable

if.end.77:                                        ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.77
  %47 = load %struct.catch_frame*, %struct.catch_frame** %l, align 8
  %next = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %47, i32 0, i32 3
  %48 = load %struct.catch_frame*, %struct.catch_frame** %next, align 8
  store %struct.catch_frame* %48, %struct.catch_frame** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* @inside_err, align 8
  %49 = load i8*, i8** %msg, align 8
  %tobool78 = icmp ne i8* %49, null
  %cond79 = select i1 %tobool78, i32 1, i32 2
  call void @longjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @errjmp, i32 0, i32 0), i32 %cond79) #9
  unreachable

if.end.80:                                        ; preds = %if.end.47
  %50 = load i64, i64* @siod_verbose_level, align 8
  %cmp81 = icmp sge i64 %50, 1
  br i1 %cmp81, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.end.80
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %if.end.80
  %51 = load void ()*, void ()** @fatal_exit_hook, align 8
  %tobool86 = icmp ne void ()* %51, null
  br i1 %tobool86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %if.end.85
  %52 = load void ()*, void ()** @fatal_exit_hook, align 8
  call void %52()
  br label %if.end.89

if.else.88:                                       ; preds = %if.end.85
  call void @exit(i32 10) #9
  unreachable

if.end.89:                                        ; preds = %if.then.87
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define void @handle_sigint(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %call = call void (i32)* @signal(i32 2, void (i32)* @handle_sigint) #6
  %0 = load i64, i64* @nointerrupt, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 1, i64* @interrupt_differed, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @err_ctrl_c()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.obj* @get_eof_val() #0 {
entry:
  %0 = load %struct.obj*, %struct.obj** @eof_val, align 8
  ret %struct.obj* %0
}

; Function Attrs: nounwind uwtable
define i64 @repl_driver(i64 %want_sigint, i64 %want_init, %struct.repl_hooks* %h) #0 {
entry:
  %retval = alloca i64, align 8
  %want_sigint.addr = alloca i64, align 8
  %want_init.addr = alloca i64, align 8
  %h.addr = alloca %struct.repl_hooks*, align 8
  %k = alloca i32, align 4
  %rv = alloca i64, align 8
  %hd = alloca %struct.repl_hooks, align 8
  %stack_start = alloca %struct.obj*, align 8
  store i64 %want_sigint, i64* %want_sigint.addr, align 8
  store i64 %want_init, i64* %want_init.addr, align 8
  store %struct.repl_hooks* %h, %struct.repl_hooks** %h.addr, align 8
  store %struct.obj** %stack_start, %struct.obj*** @stack_start_ptr, align 8
  %0 = load %struct.obj**, %struct.obj*** @stack_start_ptr, align 8
  %1 = bitcast %struct.obj** %0 to i8*
  %2 = load i64, i64* @stack_size, align 8
  %idx.neg = sub i64 0, %2
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.neg
  store i8* %add.ptr, i8** @stack_limit_ptr, align 8
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @errjmp, i32 0, i32 0)) #10
  store i32 %call, i32* %k, align 4
  %3 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %want_sigint.addr, align 8
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %5 = load void (i32)*, void (i32)** @repl_driver.osigint, align 8
  %call2 = call void (i32)* @signal(i32 2, void (i32)* %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %6 = load void (i32)*, void (i32)** @repl_driver.osigfpe, align 8
  %call3 = call void (i32)* @signal(i32 8, void (i32)* %6) #6
  store %struct.obj** null, %struct.obj*** @stack_start_ptr, align 8
  store i8* null, i8** @stack_limit_ptr, align 8
  store i64 2, i64* %retval
  br label %return

if.end.4:                                         ; preds = %entry
  %7 = load i64, i64* %want_sigint.addr, align 8
  %tobool5 = icmp ne i64 %7, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %call7 = call void (i32)* @signal(i32 2, void (i32)* @handle_sigint) #6
  store void (i32)* %call7, void (i32)** @repl_driver.osigint, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %call9 = call void (i32)* @signal(i32 8, void (i32)* @handle_sigfpe) #6
  store void (i32)* %call9, void (i32)** @repl_driver.osigfpe, align 8
  store %struct.catch_frame* null, %struct.catch_frame** @catch_framep, align 8
  store i64 1, i64* @errjmp_ok, align 8
  store i64 0, i64* @interrupt_differed, align 8
  store i64 0, i64* @nointerrupt, align 8
  %8 = load i64, i64* %want_init.addr, align 8
  %tobool10 = icmp ne i64 %8, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end.8
  %9 = load i8*, i8** @init_file, align 8
  %tobool11 = icmp ne i8* %9, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.16

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %10 = load i32, i32* %k, align 4
  %cmp13 = icmp eq i32 %10, 0
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %land.lhs.true.12
  %11 = load i8*, i8** @init_file, align 8
  %call15 = call %struct.obj* @vload(i8* %11, i64 0, i64 1)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %land.lhs.true.12, %land.lhs.true, %if.end.8
  %12 = load %struct.repl_hooks*, %struct.repl_hooks** %h.addr, align 8
  %tobool17 = icmp ne %struct.repl_hooks* %12, null
  br i1 %tobool17, label %if.else, label %if.then.18

if.then.18:                                       ; preds = %if.end.16
  %13 = load void (i8*)*, void (i8*)** @repl_puts, align 8
  %repl_puts = getelementptr inbounds %struct.repl_hooks, %struct.repl_hooks* %hd, i32 0, i32 0
  store void (i8*)* %13, void (i8*)** %repl_puts, align 8
  %14 = load %struct.obj* ()*, %struct.obj* ()** @repl_read, align 8
  %repl_read = getelementptr inbounds %struct.repl_hooks, %struct.repl_hooks* %hd, i32 0, i32 1
  store %struct.obj* ()* %14, %struct.obj* ()** %repl_read, align 8
  %15 = load %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)** @repl_eval, align 8
  %repl_eval = getelementptr inbounds %struct.repl_hooks, %struct.repl_hooks* %hd, i32 0, i32 2
  store %struct.obj* (%struct.obj*)* %15, %struct.obj* (%struct.obj*)** %repl_eval, align 8
  %16 = load void (%struct.obj*)*, void (%struct.obj*)** @repl_print, align 8
  %repl_print = getelementptr inbounds %struct.repl_hooks, %struct.repl_hooks* %hd, i32 0, i32 3
  store void (%struct.obj*)* %16, void (%struct.obj*)** %repl_print, align 8
  %call19 = call i64 @repl(%struct.repl_hooks* %hd)
  store i64 %call19, i64* %rv, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.end.16
  %17 = load %struct.repl_hooks*, %struct.repl_hooks** %h.addr, align 8
  %call20 = call i64 @repl(%struct.repl_hooks* %17)
  store i64 %call20, i64* %rv, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.18
  %18 = load i64, i64* %want_sigint.addr, align 8
  %tobool22 = icmp ne i64 %18, 0
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.21
  %19 = load void (i32)*, void (i32)** @repl_driver.osigint, align 8
  %call24 = call void (i32)* @signal(i32 2, void (i32)* %19) #6
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.21
  %20 = load void (i32)*, void (i32)** @repl_driver.osigfpe, align 8
  %call26 = call void (i32)* @signal(i32 8, void (i32)* %20) #6
  store %struct.obj** null, %struct.obj*** @stack_start_ptr, align 8
  store i8* null, i8** @stack_limit_ptr, align 8
  %21 = load i64, i64* %rv, align 8
  store i64 %21, i64* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.end
  %22 = load i64, i64* %retval
  ret i64 %22
}

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #4

; Function Attrs: nounwind uwtable
define %struct.obj* @vload(i8* %ofname, i64 %cflag, i64 %rflag) #0 {
entry:
  %ofname.addr = alloca i8*, align 8
  %cflag.addr = alloca i64, align 8
  %rflag.addr = alloca i64, align 8
  %form = alloca %struct.obj*, align 8
  %result = alloca %struct.obj*, align 8
  %tail = alloca %struct.obj*, align 8
  %lf = alloca %struct.obj*, align 8
  %reader = alloca %struct.obj*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  %j = alloca i64, align 8
  %len = alloca i64, align 8
  %buffer = alloca [512 x i8], align 16
  %key = alloca i8*, align 8
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  %ftype = alloca i8*, align 8
  %fname = alloca i8*, align 8
  %iflag = alloca i32, align 4
  store i8* %ofname, i8** %ofname.addr, align 8
  store i64 %cflag, i64* %cflag.addr, align 8
  store i64 %rflag, i64* %rflag.addr, align 8
  store %struct.obj* null, %struct.obj** %reader, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.135, i32 0, i32 0), i8** %key, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i32 0, i32 0), i8** %ftype, align 8
  %0 = load i8*, i8** %ofname.addr, align 8
  %call = call i8* @strchr(i8* %0, i32 124) #8
  store i8* %call, i8** %start, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ofname.addr, align 8
  %call1 = call i64 @atol(i8* %1) #8
  store i64 %call1, i64* %len, align 8
  %2 = load i8*, i8** %start, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 1
  store i8* %arrayidx, i8** %fname, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i64 0, i64* %len, align 8
  %3 = load i8*, i8** %ofname.addr, align 8
  store i8* %3, i8** %fname, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i64, i64* %rflag.addr, align 8
  %tobool2 = icmp ne i64 %4, 0
  br i1 %tobool2, label %if.then.3, label %if.end.35

if.then.3:                                        ; preds = %if.end
  %call4 = call i64 @no_interrupt(i64 1)
  %conv = trunc i64 %call4 to i32
  store i32 %conv, i32* %iflag, align 4
  %5 = load i8*, i8** %fname, align 8
  %call5 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.133, i32 0, i32 0))
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %f, align 8
  %tobool6 = icmp ne %struct._IO_FILE* %call5, null
  br i1 %tobool6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.then.3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call8 = call i32 @fclose(%struct._IO_FILE* %6)
  br label %if.end.32

if.else.9:                                        ; preds = %if.then.3
  %7 = load i8*, i8** %fname, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %8 to i32
  %cmp = icmp ne i32 %conv11, 47
  br i1 %cmp, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.else.9
  %9 = load i8*, i8** @siod_lib, align 8
  %call13 = call i64 @strlen(i8* %9) #8
  %10 = load i8*, i8** %fname, align 8
  %call14 = call i64 @strlen(i8* %10) #8
  %add = add i64 %call13, %call14
  %add15 = add i64 %add, 1
  %cmp16 = icmp ult i64 %add15, 512
  br i1 %cmp16, label %if.then.18, label %if.end.31

if.then.18:                                       ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %11 = load i8*, i8** @siod_lib, align 8
  %call19 = call i8* @strcpy(i8* %arraydecay, i8* %11) #6
  %arraydecay20 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call21 = call i8* @strcat(i8* %arraydecay20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.137, i32 0, i32 0)) #6
  %arraydecay22 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %12 = load i8*, i8** %fname, align 8
  %call23 = call i8* @strcat(i8* %arraydecay22, i8* %12) #6
  %arraydecay24 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call25 = call %struct._IO_FILE* @fopen(i8* %arraydecay24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.133, i32 0, i32 0))
  store %struct._IO_FILE* %call25, %struct._IO_FILE** %f, align 8
  %tobool26 = icmp ne %struct._IO_FILE* %call25, null
  br i1 %tobool26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.then.18
  %arraydecay28 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  store i8* %arraydecay28, i8** %fname, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call29 = call i32 @fclose(%struct._IO_FILE* %13)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.then.18
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %land.lhs.true, %if.else.9
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.7
  %14 = load i32, i32* %iflag, align 4
  %conv33 = sext i32 %14 to i64
  %call34 = call i64 @no_interrupt(i64 %conv33)
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.32, %if.end
  %15 = load i64, i64* @siod_verbose_level, align 8
  %cmp36 = icmp sge i64 %15, 3
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  call void @put_st(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.138, i32 0, i32 0))
  %16 = load i8*, i8** %fname, align 8
  call void @put_st(i8* %16)
  call void @put_st(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.121, i32 0, i32 0))
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.35
  %17 = load i8*, i8** %fname, align 8
  %18 = load i64, i64* %len, align 8
  %tobool40 = icmp ne i64 %18, 0
  %cond = select i1 %tobool40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.133, i32 0, i32 0)
  %call41 = call %struct.obj* @fopen_c(i8* %17, i8* %cond)
  store %struct.obj* %call41, %struct.obj** %lf, align 8
  %19 = load %struct.obj*, %struct.obj** %lf, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %19, i32 0, i32 2
  %c_file = bitcast %union.anon* %storage_as to %struct.anon.17*
  %f42 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file, i32 0, i32 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %f42, align 8
  store %struct._IO_FILE* %20, %struct._IO_FILE** %f, align 8
  store %struct.obj* null, %struct.obj** %result, align 8
  store %struct.obj* null, %struct.obj** %tail, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.39
  %21 = load i64, i64* %j, align 8
  %22 = load i64, i64* %len, align 8
  %cmp43 = icmp slt i64 %21, %22
  br i1 %cmp43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call45 = call i32 @_IO_getc(%struct._IO_FILE* %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, i64* %j, align 8
  %inc = add nsw i64 %24, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %j, align 8
  %arrayidx46 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i64 0
  store i8 0, i8* %arrayidx46, align 1
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call47 = call i32 @_IO_getc(%struct._IO_FILE* %25)
  store i32 %call47, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.72, %for.end
  %26 = load i32, i32* %c, align 4
  %cmp48 = icmp eq i32 %26, 35
  br i1 %cmp48, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %27 = load i32, i32* %c, align 4
  %cmp50 = icmp eq i32 %27, 59
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %28 = phi i1 [ true, %while.cond ], [ %cmp50, %lor.rhs ]
  br i1 %28, label %while.body, label %while.end.73

while.body:                                       ; preds = %lor.end
  br label %while.cond.52

while.cond.52:                                    ; preds = %if.end.67, %while.body
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call53 = call i32 @_IO_getc(%struct._IO_FILE* %29)
  store i32 %call53, i32* %c, align 4
  %cmp54 = icmp ne i32 %call53, -1
  br i1 %cmp54, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.52
  %30 = load i32, i32* %c, align 4
  %cmp56 = icmp ne i32 %30, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.52
  %31 = phi i1 [ false, %while.cond.52 ], [ %cmp56, %land.rhs ]
  br i1 %31, label %while.body.58, label %while.end

while.body.58:                                    ; preds = %land.end
  %32 = load i64, i64* %j, align 8
  %add59 = add nsw i64 %32, 1
  %cmp60 = icmp ult i64 %add59, 512
  br i1 %cmp60, label %if.then.62, label %if.end.67

if.then.62:                                       ; preds = %while.body.58
  %33 = load i32, i32* %c, align 4
  %conv63 = trunc i32 %33 to i8
  %34 = load i64, i64* %j, align 8
  %arrayidx64 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i64 %34
  store i8 %conv63, i8* %arrayidx64, align 1
  %35 = load i64, i64* %j, align 8
  %inc65 = add nsw i64 %35, 1
  store i64 %inc65, i64* %j, align 8
  %arrayidx66 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i64 %inc65
  store i8 0, i8* %arrayidx66, align 1
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.62, %while.body.58
  br label %while.cond.52

while.end:                                        ; preds = %land.end
  %36 = load i32, i32* %c, align 4
  %cmp68 = icmp eq i32 %36, 10
  br i1 %cmp68, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %while.end
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call71 = call i32 @_IO_getc(%struct._IO_FILE* %37)
  store i32 %call71, i32* %c, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %while.end
  br label %while.cond

while.end.73:                                     ; preds = %lor.end
  %38 = load i32, i32* %c, align 4
  %cmp74 = icmp ne i32 %38, -1
  br i1 %cmp74, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %while.end.73
  %39 = load i32, i32* %c, align 4
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call77 = call i32 @ungetc(i32 %39, %struct._IO_FILE* %40)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %while.end.73
  %arraydecay79 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %41 = load i8*, i8** %key, align 8
  %call80 = call i8* @strstr(i8* %arraydecay79, i8* %41) #8
  store i8* %call80, i8** %start, align 8
  %tobool81 = icmp ne i8* %call80, null
  br i1 %tobool81, label %if.then.82, label %if.end.116

if.then.82:                                       ; preds = %if.end.78
  %42 = load i8*, i8** %key, align 8
  %call83 = call i64 @strlen(i8* %42) #8
  %43 = load i8*, i8** %start, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %43, i64 %call83
  store i8* %arrayidx84, i8** %end, align 8
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.96, %if.then.82
  %44 = load i8*, i8** %end, align 8
  %45 = load i8, i8* %44, align 1
  %conv86 = sext i8 %45 to i32
  %tobool87 = icmp ne i32 %conv86, 0
  br i1 %tobool87, label %land.rhs.88, label %land.end.94

land.rhs.88:                                      ; preds = %for.cond.85
  %46 = load i8*, i8** %end, align 8
  %47 = load i8, i8* %46, align 1
  %conv89 = sext i8 %47 to i32
  %idxprom = sext i32 %conv89 to i64
  %call90 = call i16** @__ctype_b_loc() #11
  %48 = load i16*, i16** %call90, align 8
  %arrayidx91 = getelementptr inbounds i16, i16* %48, i64 %idxprom
  %49 = load i16, i16* %arrayidx91, align 2
  %conv92 = zext i16 %49 to i32
  %and = and i32 %conv92, 8
  %tobool93 = icmp ne i32 %and, 0
  br label %land.end.94

land.end.94:                                      ; preds = %land.rhs.88, %for.cond.85
  %50 = phi i1 [ false, %for.cond.85 ], [ %tobool93, %land.rhs.88 ]
  br i1 %50, label %for.body.95, label %for.end.97

for.body.95:                                      ; preds = %land.end.94
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.95
  %51 = load i8*, i8** %end, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr, i8** %end, align 8
  br label %for.cond.85

for.end.97:                                       ; preds = %land.end.94
  %52 = load i8*, i8** %end, align 8
  %53 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %53 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %j, align 8
  %54 = bitcast [512 x i8]* %buffer to i8*
  %55 = load i8*, i8** %start, align 8
  %56 = load i64, i64* %j, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %54, i8* %55, i64 %56, i32 1, i1 false)
  %57 = load i8*, i8** %key, align 8
  %call98 = call i64 @strlen(i8* %57) #8
  %sub = sub i64 %call98, 1
  %arrayidx99 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i64 %sub
  store i8 95, i8* %arrayidx99, align 1
  %58 = load i64, i64* %j, align 8
  %arrayidx100 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i64 %58
  store i8 0, i8* %arrayidx100, align 1
  %arraydecay101 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %59 = load i8*, i8** %ftype, align 8
  %call102 = call i8* @strcat(i8* %arraydecay101, i8* %59) #6
  %arraydecay103 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call104 = call %struct.obj* @strcons(i64 -1, i8* %arraydecay103)
  %call105 = call %struct.obj* @require(%struct.obj* %call104)
  %60 = load i64, i64* %j, align 8
  %arrayidx106 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i64 %60
  store i8 0, i8* %arrayidx106, align 1
  %arraydecay107 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call108 = call %struct.obj* @rintern(i8* %arraydecay107)
  store %struct.obj* %call108, %struct.obj** %reader, align 8
  %61 = load %struct.obj*, %struct.obj** %reader, align 8
  %call109 = call %struct.obj* @leval(%struct.obj* %61, %struct.obj* null)
  %62 = load %struct.obj*, %struct.obj** %reader, align 8
  %call110 = call %struct.obj* @funcall1(%struct.obj* %call109, %struct.obj* %62)
  store %struct.obj* %call110, %struct.obj** %reader, align 8
  %63 = load i64, i64* @siod_verbose_level, align 8
  %cmp111 = icmp sge i64 %63, 5
  br i1 %cmp111, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %for.end.97
  call void @put_st(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.135, i32 0, i32 0))
  %64 = load %struct.obj*, %struct.obj** %reader, align 8
  %call114 = call %struct.obj* @lprin1(%struct.obj* %64, %struct.obj* null)
  call void @put_st(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.121, i32 0, i32 0))
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.113, %for.end.97
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.end.78
  br label %while.body.118

while.body.118:                                   ; preds = %if.end.116, %if.end.144
  %65 = load %struct.obj*, %struct.obj** %reader, align 8
  %cmp119 = icmp eq %struct.obj* %65, null
  br i1 %cmp119, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body.118
  %66 = load %struct.obj*, %struct.obj** %lf, align 8
  %call121 = call %struct.obj* @lread(%struct.obj* %66)
  br label %cond.end

cond.false:                                       ; preds = %while.body.118
  %67 = load %struct.obj*, %struct.obj** %reader, align 8
  %68 = load %struct.obj*, %struct.obj** %lf, align 8
  %call122 = call %struct.obj* @funcall1(%struct.obj* %67, %struct.obj* %68)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond123 = phi %struct.obj* [ %call121, %cond.true ], [ %call122, %cond.false ]
  store %struct.obj* %cond123, %struct.obj** %form, align 8
  %69 = load %struct.obj*, %struct.obj** %form, align 8
  %70 = load %struct.obj*, %struct.obj** @eof_val, align 8
  %cmp124 = icmp eq %struct.obj* %69, %70
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %cond.end
  br label %while.end.145

if.end.127:                                       ; preds = %cond.end
  %71 = load i64, i64* @siod_verbose_level, align 8
  %cmp128 = icmp sge i64 %71, 5
  br i1 %cmp128, label %if.then.130, label %if.end.132

if.then.130:                                      ; preds = %if.end.127
  %72 = load %struct.obj*, %struct.obj** %form, align 8
  %call131 = call %struct.obj* @lprint(%struct.obj* %72, %struct.obj* null)
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.130, %if.end.127
  %73 = load i64, i64* %cflag.addr, align 8
  %tobool133 = icmp ne i64 %73, 0
  br i1 %tobool133, label %if.then.134, label %if.else.142

if.then.134:                                      ; preds = %if.end.132
  %74 = load %struct.obj*, %struct.obj** %form, align 8
  %call135 = call %struct.obj* @cons(%struct.obj* %74, %struct.obj* null)
  store %struct.obj* %call135, %struct.obj** %form, align 8
  %75 = load %struct.obj*, %struct.obj** %result, align 8
  %cmp136 = icmp eq %struct.obj* %75, null
  br i1 %cmp136, label %if.then.138, label %if.else.139

if.then.138:                                      ; preds = %if.then.134
  %76 = load %struct.obj*, %struct.obj** %form, align 8
  store %struct.obj* %76, %struct.obj** %tail, align 8
  store %struct.obj* %76, %struct.obj** %result, align 8
  br label %if.end.141

if.else.139:                                      ; preds = %if.then.134
  %77 = load %struct.obj*, %struct.obj** %tail, align 8
  %78 = load %struct.obj*, %struct.obj** %form, align 8
  %call140 = call %struct.obj* @setcdr(%struct.obj* %77, %struct.obj* %78)
  store %struct.obj* %call140, %struct.obj** %tail, align 8
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.139, %if.then.138
  br label %if.end.144

if.else.142:                                      ; preds = %if.end.132
  %79 = load %struct.obj*, %struct.obj** %form, align 8
  %call143 = call %struct.obj* @leval(%struct.obj* %79, %struct.obj* null)
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.142, %if.end.141
  br label %while.body.118

while.end.145:                                    ; preds = %if.then.126
  %80 = load %struct.obj*, %struct.obj** %lf, align 8
  %call146 = call %struct.obj* @fclose_l(%struct.obj* %80)
  %81 = load i64, i64* @siod_verbose_level, align 8
  %cmp147 = icmp sge i64 %81, 3
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %while.end.145
  call void @put_st(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.140, i32 0, i32 0))
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.149, %while.end.145
  %82 = load %struct.obj*, %struct.obj** %result, align 8
  ret %struct.obj* %82
}

; Function Attrs: nounwind uwtable
define i64 @repl(%struct.repl_hooks* %h) #0 {
entry:
  %h.addr = alloca %struct.repl_hooks*, align 8
  %x = alloca %struct.obj*, align 8
  %cw = alloca %struct.obj*, align 8
  %rt = alloca double, align 8
  %ct = alloca double, align 8
  store %struct.repl_hooks* %h, %struct.repl_hooks** %h.addr, align 8
  store %struct.obj* null, %struct.obj** %cw, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.45
  %0 = load i64, i64* @gc_kind_copying, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %while.body
  %1 = load i64, i64* @gc_status_flag, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load %struct.obj*, %struct.obj** @heap, align 8
  %3 = load %struct.obj*, %struct.obj** @heap_end, align 8
  %cmp1 = icmp uge %struct.obj* %2, %3
  br i1 %cmp1, label %if.then, label %if.end.10

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %call = call double @myruntime()
  store double %call, double* %rt, align 8
  call void @gc_stop_and_copy()
  %4 = load i64, i64* @siod_verbose_level, align 8
  %cmp2 = icmp sge i64 %4, 2
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load i8*, i8** @tkbuffer, align 8
  %call4 = call double @myruntime()
  %6 = load double, double* %rt, align 8
  %sub = fsub double %call4, %6
  %7 = load i64, i64* @old_heap_used, align 8
  %8 = load %struct.obj*, %struct.obj** @heap, align 8
  %9 = load %struct.obj*, %struct.obj** @heap_org, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.obj* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.obj* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  %10 = load %struct.obj*, %struct.obj** @heap_end, align 8
  %11 = load %struct.obj*, %struct.obj** @heap, align 8
  %sub.ptr.lhs.cast5 = ptrtoint %struct.obj* %10 to i64
  %sub.ptr.rhs.cast6 = ptrtoint %struct.obj* %11 to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6
  %sub.ptr.div8 = sdiv exact i64 %sub.ptr.sub7, 24
  %call9 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i32 0, i32 0), double %sub, i64 %7, i64 %sub.ptr.div, i64 %sub.ptr.div8) #6
  %12 = load i8*, i8** @tkbuffer, align 8
  %13 = load %struct.repl_hooks*, %struct.repl_hooks** %h.addr, align 8
  %repl_puts = getelementptr inbounds %struct.repl_hooks, %struct.repl_hooks* %13, i32 0, i32 0
  %14 = load void (i8*)*, void (i8*)** %repl_puts, align 8
  call void @grepl_puts(i8* %12, void (i8*)* %14)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %lor.lhs.false, %while.body
  %15 = load i64, i64* @siod_verbose_level, align 8
  %cmp11 = icmp sge i64 %15, 2
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.10
  %16 = load %struct.repl_hooks*, %struct.repl_hooks** %h.addr, align 8
  %repl_puts13 = getelementptr inbounds %struct.repl_hooks, %struct.repl_hooks* %16, i32 0, i32 0
  %17 = load void (i8*)*, void (i8*)** %repl_puts13, align 8
  call void @grepl_puts(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), void (i8*)* %17)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.10
  %18 = load %struct.repl_hooks*, %struct.repl_hooks** %h.addr, align 8
  %repl_read = getelementptr inbounds %struct.repl_hooks, %struct.repl_hooks* %18, i32 0, i32 1
  %19 = load %struct.obj* ()*, %struct.obj* ()** %repl_read, align 8
  %cmp15 = icmp eq %struct.obj* ()* %19, null
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.14
  %call17 = call %struct.obj* @lread(%struct.obj* null)
  store %struct.obj* %call17, %struct.obj** %x, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.end.14
  %20 = load %struct.repl_hooks*, %struct.repl_hooks** %h.addr, align 8
  %repl_read18 = getelementptr inbounds %struct.repl_hooks, %struct.repl_hooks* %20, i32 0, i32 1
  %21 = load %struct.obj* ()*, %struct.obj* ()** %repl_read18, align 8
  %call19 = call %struct.obj* %21()
  store %struct.obj* %call19, %struct.obj** %x, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.16
  %22 = load %struct.obj*, %struct.obj** %x, align 8
  %23 = load %struct.obj*, %struct.obj** @eof_val, align 8
  %cmp21 = icmp eq %struct.obj* %22, %23
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  br label %while.end

if.end.23:                                        ; preds = %if.end.20
  %call24 = call double @myruntime()
  store double %call24, double* %rt, align 8
  %call25 = call double @myrealtime()
  store double %call25, double* %ct, align 8
  %24 = load i64, i64* @gc_kind_copying, align 8
  %cmp26 = icmp eq i64 %24, 1
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.end.23
  %25 = load %struct.obj*, %struct.obj** @heap, align 8
  store %struct.obj* %25, %struct.obj** %cw, align 8
  br label %if.end.29

if.else.28:                                       ; preds = %if.end.23
  store i64 0, i64* @gc_cells_allocated, align 8
  store double 0.000000e+00, double* @gc_time_taken, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.27
  %26 = load %struct.repl_hooks*, %struct.repl_hooks** %h.addr, align 8
  %repl_eval = getelementptr inbounds %struct.repl_hooks, %struct.repl_hooks* %26, i32 0, i32 2
  %27 = load %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)** %repl_eval, align 8
  %cmp30 = icmp eq %struct.obj* (%struct.obj*)* %27, null
  br i1 %cmp30, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %if.end.29
  %28 = load %struct.obj*, %struct.obj** %x, align 8
  %call32 = call %struct.obj* @leval(%struct.obj* %28, %struct.obj* null)
  store %struct.obj* %call32, %struct.obj** %x, align 8
  br label %if.end.36

if.else.33:                                       ; preds = %if.end.29
  %29 = load %struct.repl_hooks*, %struct.repl_hooks** %h.addr, align 8
  %repl_eval34 = getelementptr inbounds %struct.repl_hooks, %struct.repl_hooks* %29, i32 0, i32 2
  %30 = load %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)** %repl_eval34, align 8
  %31 = load %struct.obj*, %struct.obj** %x, align 8
  %call35 = call %struct.obj* %30(%struct.obj* %31)
  store %struct.obj* %call35, %struct.obj** %x, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.31
  %32 = load %struct.repl_hooks*, %struct.repl_hooks** %h.addr, align 8
  %repl_print = getelementptr inbounds %struct.repl_hooks, %struct.repl_hooks* %32, i32 0, i32 3
  %33 = load void (%struct.obj*)*, void (%struct.obj*)** %repl_print, align 8
  %cmp37 = icmp eq void (%struct.obj*)* %33, null
  br i1 %cmp37, label %if.then.38, label %if.else.43

if.then.38:                                       ; preds = %if.end.36
  %34 = load i64, i64* @siod_verbose_level, align 8
  %cmp39 = icmp sge i64 %34, 2
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.then.38
  %35 = load %struct.obj*, %struct.obj** %x, align 8
  %call41 = call %struct.obj* @lprint(%struct.obj* %35, %struct.obj* null)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.then.38
  br label %if.end.45

if.else.43:                                       ; preds = %if.end.36
  %36 = load %struct.repl_hooks*, %struct.repl_hooks** %h.addr, align 8
  %repl_print44 = getelementptr inbounds %struct.repl_hooks, %struct.repl_hooks* %36, i32 0, i32 3
  %37 = load void (%struct.obj*)*, void (%struct.obj*)** %repl_print44, align 8
  %38 = load %struct.obj*, %struct.obj** %x, align 8
  call void %37(%struct.obj* %38)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.end.42
  br label %while.body

while.end:                                        ; preds = %if.then.22
  ret i64 0
}

; Function Attrs: nounwind uwtable
define i64 @repl_c_string(i8* %str, i64 %want_sigint, i64 %want_init, i64 %want_print) #0 {
entry:
  %retval = alloca i64, align 8
  %str.addr = alloca i8*, align 8
  %want_sigint.addr = alloca i64, align 8
  %want_init.addr = alloca i64, align 8
  %want_print.addr = alloca i64, align 8
  %h = alloca %struct.repl_hooks, align 8
  %retval1 = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %want_sigint, i64* %want_sigint.addr, align 8
  store i64 %want_init, i64* %want_init.addr, align 8
  store i64 %want_print, i64* %want_print.addr, align 8
  %repl_read = getelementptr inbounds %struct.repl_hooks, %struct.repl_hooks* %h, i32 0, i32 1
  store %struct.obj* ()* @repl_c_string_read, %struct.obj* ()** %repl_read, align 8
  %repl_eval = getelementptr inbounds %struct.repl_hooks, %struct.repl_hooks* %h, i32 0, i32 2
  store %struct.obj* (%struct.obj*)* null, %struct.obj* (%struct.obj*)** %repl_eval, align 8
  %0 = load i64, i64* %want_print.addr, align 8
  %cmp = icmp sgt i64 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %repl_puts = getelementptr inbounds %struct.repl_hooks, %struct.repl_hooks* %h, i32 0, i32 0
  store void (i8*)* @ignore_puts, void (i8*)** %repl_puts, align 8
  %repl_print = getelementptr inbounds %struct.repl_hooks, %struct.repl_hooks* %h, i32 0, i32 3
  store void (%struct.obj*)* @repl_c_string_print, void (%struct.obj*)** %repl_print, align 8
  %1 = load i64, i64* %want_print.addr, align 8
  store i64 %1, i64* @repl_c_string_print_len, align 8
  %2 = load i8*, i8** %str.addr, align 8
  store i8* %2, i8** @repl_c_string_out, align 8
  br label %if.end.8

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %want_print.addr, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %if.then.2, label %if.else.5

if.then.2:                                        ; preds = %if.else
  %repl_puts3 = getelementptr inbounds %struct.repl_hooks, %struct.repl_hooks* %h, i32 0, i32 0
  store void (i8*)* @noprompt_puts, void (i8*)** %repl_puts3, align 8
  %repl_print4 = getelementptr inbounds %struct.repl_hooks, %struct.repl_hooks* %h, i32 0, i32 3
  store void (%struct.obj*)* @not_ignore_print, void (%struct.obj*)** %repl_print4, align 8
  store i64 0, i64* @repl_c_string_print_len, align 8
  store i8* null, i8** @repl_c_string_out, align 8
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %repl_puts6 = getelementptr inbounds %struct.repl_hooks, %struct.repl_hooks* %h, i32 0, i32 0
  store void (i8*)* @ignore_puts, void (i8*)** %repl_puts6, align 8
  %repl_print7 = getelementptr inbounds %struct.repl_hooks, %struct.repl_hooks* %h, i32 0, i32 3
  store void (%struct.obj*)* @ignore_print, void (%struct.obj*)** %repl_print7, align 8
  store i64 0, i64* @repl_c_string_print_len, align 8
  store i8* null, i8** @repl_c_string_out, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.2
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %4 = load i8*, i8** %str.addr, align 8
  store i8* %4, i8** @repl_c_string_arg, align 8
  store i64 0, i64* @repl_c_string_flag, align 8
  %5 = load i64, i64* %want_sigint.addr, align 8
  %6 = load i64, i64* %want_init.addr, align 8
  %call = call i64 @repl_driver(i64 %5, i64 %6, %struct.repl_hooks* %h)
  store i64 %call, i64* %retval1, align 8
  %7 = load i64, i64* %retval1, align 8
  %cmp9 = icmp ne i64 %7, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end.8
  %8 = load i64, i64* %retval1, align 8
  store i64 %8, i64* %retval
  br label %return

if.else.11:                                       ; preds = %if.end.8
  %9 = load i64, i64* @repl_c_string_flag, align 8
  %cmp12 = icmp eq i64 %9, 1
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else.11
  store i64 0, i64* %retval
  br label %return

if.else.14:                                       ; preds = %if.else.11
  store i64 2, i64* %retval
  br label %return

return:                                           ; preds = %if.else.14, %if.then.13, %if.then.10
  %10 = load i64, i64* %retval
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define internal %struct.obj* @repl_c_string_read() #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %s = alloca %struct.obj*, align 8
  %0 = load i8*, i8** @repl_c_string_arg, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.obj* @get_eof_val()
  store %struct.obj* %call, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @repl_c_string_arg, align 8
  %call1 = call i64 @strlen(i8* %1) #8
  %2 = load i8*, i8** @repl_c_string_arg, align 8
  %call2 = call %struct.obj* @strcons(i64 %call1, i8* %2)
  store %struct.obj* %call2, %struct.obj** %s, align 8
  store i8* null, i8** @repl_c_string_arg, align 8
  %3 = load i8*, i8** @repl_c_string_out, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %4 = load i8*, i8** @repl_c_string_out, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %5 = load %struct.obj*, %struct.obj** %s, align 8
  %call5 = call %struct.obj* @read_from_string(%struct.obj* %5)
  store %struct.obj* %call5, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %6 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %6
}

; Function Attrs: nounwind uwtable
define internal void @ignore_puts(i8* %st) #0 {
entry:
  %st.addr = alloca i8*, align 8
  store i8* %st, i8** %st.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @repl_c_string_print(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  %s = alloca %struct.gen_printio, align 8
  %p = alloca %struct.rcsp_puts, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %putc_fcn = getelementptr inbounds %struct.gen_printio, %struct.gen_printio* %s, i32 0, i32 0
  store i32 (i32, i8*)* null, i32 (i32, i8*)** %putc_fcn, align 8
  %puts_fcn = getelementptr inbounds %struct.gen_printio, %struct.gen_printio* %s, i32 0, i32 1
  store i32 (i8*, i8*)* @rcsp_puts, i32 (i8*, i8*)** %puts_fcn, align 8
  %0 = load i8*, i8** @repl_c_string_out, align 8
  %ptr = getelementptr inbounds %struct.rcsp_puts, %struct.rcsp_puts* %p, i32 0, i32 0
  store i8* %0, i8** %ptr, align 8
  %1 = load i64, i64* @repl_c_string_print_len, align 8
  %sub = sub nsw i64 %1, 1
  %2 = load i8*, i8** @repl_c_string_out, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %sub
  %end = getelementptr inbounds %struct.rcsp_puts, %struct.rcsp_puts* %p, i32 0, i32 1
  store i8* %arrayidx, i8** %end, align 8
  %3 = bitcast %struct.rcsp_puts* %p to i8*
  %cb_argument = getelementptr inbounds %struct.gen_printio, %struct.gen_printio* %s, i32 0, i32 2
  store i8* %3, i8** %cb_argument, align 8
  %4 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @lprin1g(%struct.obj* %4, %struct.gen_printio* %s)
  store i64 1, i64* @repl_c_string_flag, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @noprompt_puts(i8* %st) #0 {
entry:
  %st.addr = alloca i8*, align 8
  store i8* %st, i8** %st.addr, align 8
  %0 = load i8*, i8** %st.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)) #8
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %st.addr, align 8
  call void @put_st(i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @not_ignore_print(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store i64 1, i64* @repl_c_string_flag, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @lprint(%struct.obj* %0, %struct.obj* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ignore_print(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store i64 1, i64* @repl_c_string_flag, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define double @myruntime() #0 {
entry:
  %total = alloca double, align 8
  %b = alloca %struct.tms, align 8
  %call = call i64 @times(%struct.tms* %b) #6
  %tms_utime = getelementptr inbounds %struct.tms, %struct.tms* %b, i32 0, i32 0
  %0 = load i64, i64* %tms_utime, align 8
  %conv = sitofp i64 %0 to double
  store double %conv, double* %total, align 8
  %tms_stime = getelementptr inbounds %struct.tms, %struct.tms* %b, i32 0, i32 1
  %1 = load i64, i64* %tms_stime, align 8
  %conv1 = sitofp i64 %1 to double
  %2 = load double, double* %total, align 8
  %add = fadd double %2, %conv1
  store double %add, double* %total, align 8
  %3 = load double, double* %total, align 8
  %div = fdiv double %3, 6.000000e+01
  ret double %div
}

; Function Attrs: nounwind
declare i64 @times(%struct.tms*) #1

; Function Attrs: nounwind uwtable
define double @myrealtime() #0 {
entry:
  %retval = alloca double, align 8
  %x = alloca %struct.timeval, align 8
  %call = call i32 @gettimeofday(%struct.timeval* %x, %struct.timezone* null) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %x, i32 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %conv = sitofp i64 %0 to double
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %x, i32 0, i32 1
  %1 = load i64, i64* %tv_usec, align 8
  %conv1 = sitofp i64 %1 to double
  %mul = fmul double %conv1, 1.000000e-06
  %add = fadd double %conv, %mul
  store double %add, double* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load double, double* %retval
  ret double %2
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: nounwind uwtable
define void @set_repl_hooks(void (i8*)* %puts_f, %struct.obj* ()* %read_f, %struct.obj* (%struct.obj*)* %eval_f, void (%struct.obj*)* %print_f) #0 {
entry:
  %puts_f.addr = alloca void (i8*)*, align 8
  %read_f.addr = alloca %struct.obj* ()*, align 8
  %eval_f.addr = alloca %struct.obj* (%struct.obj*)*, align 8
  %print_f.addr = alloca void (%struct.obj*)*, align 8
  store void (i8*)* %puts_f, void (i8*)** %puts_f.addr, align 8
  store %struct.obj* ()* %read_f, %struct.obj* ()** %read_f.addr, align 8
  store %struct.obj* (%struct.obj*)* %eval_f, %struct.obj* (%struct.obj*)** %eval_f.addr, align 8
  store void (%struct.obj*)* %print_f, void (%struct.obj*)** %print_f.addr, align 8
  %0 = load void (i8*)*, void (i8*)** %puts_f.addr, align 8
  store void (i8*)* %0, void (i8*)** @repl_puts, align 8
  %1 = load %struct.obj* ()*, %struct.obj* ()** %read_f.addr, align 8
  store %struct.obj* ()* %1, %struct.obj* ()** @repl_read, align 8
  %2 = load %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)** %eval_f.addr, align 8
  store %struct.obj* (%struct.obj*)* %2, %struct.obj* (%struct.obj*)** @repl_eval, align 8
  %3 = load void (%struct.obj*)*, void (%struct.obj*)** %print_f.addr, align 8
  store void (%struct.obj*)* %3, void (%struct.obj*)** @repl_print, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gput_st(%struct.gen_printio* %f, i8* %st) #0 {
entry:
  %f.addr = alloca %struct.gen_printio*, align 8
  %st.addr = alloca i8*, align 8
  store %struct.gen_printio* %f, %struct.gen_printio** %f.addr, align 8
  store i8* %st, i8** %st.addr, align 8
  %0 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %puts_fcn = getelementptr inbounds %struct.gen_printio, %struct.gen_printio* %0, i32 0, i32 1
  %1 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %puts_fcn, align 8
  %2 = load i8*, i8** %st.addr, align 8
  %3 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %cb_argument = getelementptr inbounds %struct.gen_printio, %struct.gen_printio* %3, i32 0, i32 2
  %4 = load i8*, i8** %cb_argument, align 8
  %call = call i32 %1(i8* %2, i8* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @fput_st(%struct._IO_FILE* %f, i8* %st) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %st.addr = alloca i8*, align 8
  %flag = alloca i64, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i8* %st, i8** %st.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %flag, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %1 = load i8*, i8** %st.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* %1)
  %2 = load i64, i64* %flag, align 8
  %call2 = call i64 @no_interrupt(i64 %2)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @fputs_fcn(i8* %st, i8* %cb) #0 {
entry:
  %st.addr = alloca i8*, align 8
  %cb.addr = alloca i8*, align 8
  store i8* %st, i8** %st.addr, align 8
  store i8* %cb, i8** %cb.addr, align 8
  %0 = load i8*, i8** %cb.addr, align 8
  %1 = bitcast i8* %0 to %struct._IO_FILE*
  %2 = load i8*, i8** %st.addr, align 8
  call void @fput_st(%struct._IO_FILE* %1, i8* %2)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @put_st(i8* %st) #0 {
entry:
  %st.addr = alloca i8*, align 8
  store i8* %st, i8** %st.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1 = load i8*, i8** %st.addr, align 8
  call void @fput_st(%struct._IO_FILE* %0, i8* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @grepl_puts(i8* %st, void (i8*)* %repl_puts) #0 {
entry:
  %st.addr = alloca i8*, align 8
  %repl_puts.addr = alloca void (i8*)*, align 8
  store i8* %st, i8** %st.addr, align 8
  store void (i8*)* %repl_puts, void (i8*)** %repl_puts.addr, align 8
  %0 = load void (i8*)*, void (i8*)** %repl_puts.addr, align 8
  %cmp = icmp eq void (i8*)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %st.addr, align 8
  call void @put_st(i8* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load void (i8*)*, void (i8*)** %repl_puts.addr, align 8
  %4 = load i8*, i8** %st.addr, align 8
  call void %3(i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @gc_stop_and_copy() #0 {
entry:
  %newspace = alloca %struct.obj*, align 8
  %oldspace = alloca %struct.obj*, align 8
  %end = alloca %struct.obj*, align 8
  %flag = alloca i64, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %flag, align 8
  store i64 0, i64* @errjmp_ok, align 8
  %0 = load %struct.obj*, %struct.obj** @heap_org, align 8
  store %struct.obj* %0, %struct.obj** %oldspace, align 8
  %1 = load %struct.obj*, %struct.obj** @heap, align 8
  store %struct.obj* %1, %struct.obj** %end, align 8
  %2 = load %struct.obj*, %struct.obj** %end, align 8
  %3 = load %struct.obj*, %struct.obj** %oldspace, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.obj* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.obj* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  store i64 %sub.ptr.div, i64* @old_heap_used, align 8
  %call1 = call %struct.obj* @get_newspace()
  store %struct.obj* %call1, %struct.obj** %newspace, align 8
  call void @scan_registers()
  %4 = load %struct.obj*, %struct.obj** %newspace, align 8
  call void @scan_newspace(%struct.obj* %4)
  %5 = load %struct.obj*, %struct.obj** %oldspace, align 8
  %6 = load %struct.obj*, %struct.obj** %end, align 8
  call void @free_oldspace(%struct.obj* %5, %struct.obj* %6)
  store i64 1, i64* @errjmp_ok, align 8
  %7 = load i64, i64* %flag, align 8
  %call2 = call i64 @no_interrupt(i64 %7)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @lread(%struct.obj* %f) #0 {
entry:
  %f.addr = alloca %struct.obj*, align 8
  store %struct.obj* %f, %struct.obj** %f.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %f.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call %struct._IO_FILE* @get_c_file(%struct.obj* %0, %struct._IO_FILE* %1)
  %call1 = call %struct.obj* @lreadf(%struct._IO_FILE* %call)
  ret %struct.obj* %call1
}

; Function Attrs: nounwind uwtable
define %struct.obj* @leval(%struct.obj* %x, %struct.obj* %env) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  %tmp = alloca %struct.obj*, align 8
  %arg1 = alloca %struct.obj*, align 8
  %p = alloca %struct.user_type_hooks*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  %0 = bitcast %struct.obj** %x.addr to i8*
  %1 = load i8*, i8** @stack_limit_ptr, align 8
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.obj** %x.addr to i8*
  call void @err_stack(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %loop

loop:                                             ; preds = %if.else, %sw.bb.434, %sw.bb.277, %if.end.263, %if.end
  %3 = load %struct.obj*, %struct.obj** @sym_eval_history_ptr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %symbol = bitcast %union.anon* %storage_as to %struct.anon.1*
  %vcell = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol, i32 0, i32 1
  %4 = load %struct.obj*, %struct.obj** %vcell, align 8
  store %struct.obj* %4, %struct.obj** %tmp, align 8
  %5 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp3 = icmp eq %struct.obj* %5, null
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %loop
  br label %cond.end

cond.false:                                       ; preds = %loop
  %6 = load %struct.obj*, %struct.obj** %tmp, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 1
  %7 = load i16, i16* %type, align 2
  %conv = sext i16 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp4 = icmp eq i32 %cond, 1
  br i1 %cmp4, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %cond.end
  %8 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %9 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as7 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as7 to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  store %struct.obj* %8, %struct.obj** %car, align 8
  %10 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as8 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %cons9 = bitcast %union.anon* %storage_as8 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons9, i32 0, i32 1
  %11 = load %struct.obj*, %struct.obj** %cdr, align 8
  %12 = load %struct.obj*, %struct.obj** @sym_eval_history_ptr, align 8
  %storage_as10 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 2
  %symbol11 = bitcast %union.anon* %storage_as10 to %struct.anon.1*
  %vcell12 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol11, i32 0, i32 1
  store %struct.obj* %11, %struct.obj** %vcell12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.6, %cond.end
  %13 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp14 = icmp eq %struct.obj* %13, null
  br i1 %cmp14, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %if.end.13
  br label %cond.end.20

cond.false.17:                                    ; preds = %if.end.13
  %14 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type18 = getelementptr inbounds %struct.obj, %struct.obj* %14, i32 0, i32 1
  %15 = load i16, i16* %type18, align 2
  %conv19 = sext i16 %15 to i32
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.17, %cond.true.16
  %cond21 = phi i32 [ 0, %cond.true.16 ], [ %conv19, %cond.false.17 ]
  switch i32 %cond21, label %sw.default.460 [
    i32 3, label %sw.bb
    i32 1, label %sw.bb.37
  ]

sw.bb:                                            ; preds = %cond.end.20
  %16 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %17 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call = call %struct.obj* @envlookup(%struct.obj* %16, %struct.obj* %17)
  store %struct.obj* %call, %struct.obj** %tmp, align 8
  %18 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp22 = icmp ne %struct.obj* %18, null
  br i1 %cmp22, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %sw.bb
  %19 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as25 = getelementptr inbounds %struct.obj, %struct.obj* %19, i32 0, i32 2
  %cons26 = bitcast %union.anon* %storage_as25 to %struct.anon*
  %car27 = getelementptr inbounds %struct.anon, %struct.anon* %cons26, i32 0, i32 0
  %20 = load %struct.obj*, %struct.obj** %car27, align 8
  store %struct.obj* %20, %struct.obj** %retval
  br label %return

if.end.28:                                        ; preds = %sw.bb
  %21 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as29 = getelementptr inbounds %struct.obj, %struct.obj* %21, i32 0, i32 2
  %symbol30 = bitcast %union.anon* %storage_as29 to %struct.anon.1*
  %vcell31 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol30, i32 0, i32 1
  %22 = load %struct.obj*, %struct.obj** %vcell31, align 8
  store %struct.obj* %22, %struct.obj** %tmp, align 8
  %23 = load %struct.obj*, %struct.obj** %tmp, align 8
  %24 = load %struct.obj*, %struct.obj** @unbound_marker, align 8
  %cmp32 = icmp eq %struct.obj* %23, %24
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.28
  %25 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call35 = call %struct.obj* @err_ubv(%struct.obj* %25)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.28
  %26 = load %struct.obj*, %struct.obj** %tmp, align 8
  store %struct.obj* %26, %struct.obj** %retval
  br label %return

sw.bb.37:                                         ; preds = %cond.end.20
  %27 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as38 = getelementptr inbounds %struct.obj, %struct.obj* %27, i32 0, i32 2
  %cons39 = bitcast %union.anon* %storage_as38 to %struct.anon*
  %car40 = getelementptr inbounds %struct.anon, %struct.anon* %cons39, i32 0, i32 0
  %28 = load %struct.obj*, %struct.obj** %car40, align 8
  store %struct.obj* %28, %struct.obj** %tmp, align 8
  %29 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp41 = icmp eq %struct.obj* %29, null
  br i1 %cmp41, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %sw.bb.37
  br label %cond.end.47

cond.false.44:                                    ; preds = %sw.bb.37
  %30 = load %struct.obj*, %struct.obj** %tmp, align 8
  %type45 = getelementptr inbounds %struct.obj, %struct.obj* %30, i32 0, i32 1
  %31 = load i16, i16* %type45, align 2
  %conv46 = sext i16 %31 to i32
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.44, %cond.true.43
  %cond48 = phi i32 [ 0, %cond.true.43 ], [ %conv46, %cond.false.44 ]
  switch i32 %cond48, label %sw.epilog [
    i32 3, label %sw.bb.49
    i32 1, label %sw.bb.72
  ]

sw.bb.49:                                         ; preds = %cond.end.47
  %32 = load %struct.obj*, %struct.obj** %tmp, align 8
  %33 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call50 = call %struct.obj* @envlookup(%struct.obj* %32, %struct.obj* %33)
  store %struct.obj* %call50, %struct.obj** %tmp, align 8
  %34 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp51 = icmp ne %struct.obj* %34, null
  br i1 %cmp51, label %if.then.53, label %if.end.57

if.then.53:                                       ; preds = %sw.bb.49
  %35 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as54 = getelementptr inbounds %struct.obj, %struct.obj* %35, i32 0, i32 2
  %cons55 = bitcast %union.anon* %storage_as54 to %struct.anon*
  %car56 = getelementptr inbounds %struct.anon, %struct.anon* %cons55, i32 0, i32 0
  %36 = load %struct.obj*, %struct.obj** %car56, align 8
  store %struct.obj* %36, %struct.obj** %tmp, align 8
  br label %sw.epilog

if.end.57:                                        ; preds = %sw.bb.49
  %37 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as58 = getelementptr inbounds %struct.obj, %struct.obj* %37, i32 0, i32 2
  %cons59 = bitcast %union.anon* %storage_as58 to %struct.anon*
  %car60 = getelementptr inbounds %struct.anon, %struct.anon* %cons59, i32 0, i32 0
  %38 = load %struct.obj*, %struct.obj** %car60, align 8
  %storage_as61 = getelementptr inbounds %struct.obj, %struct.obj* %38, i32 0, i32 2
  %symbol62 = bitcast %union.anon* %storage_as61 to %struct.anon.1*
  %vcell63 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol62, i32 0, i32 1
  %39 = load %struct.obj*, %struct.obj** %vcell63, align 8
  store %struct.obj* %39, %struct.obj** %tmp, align 8
  %40 = load %struct.obj*, %struct.obj** %tmp, align 8
  %41 = load %struct.obj*, %struct.obj** @unbound_marker, align 8
  %cmp64 = icmp eq %struct.obj* %40, %41
  br i1 %cmp64, label %if.then.66, label %if.end.71

if.then.66:                                       ; preds = %if.end.57
  %42 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as67 = getelementptr inbounds %struct.obj, %struct.obj* %42, i32 0, i32 2
  %cons68 = bitcast %union.anon* %storage_as67 to %struct.anon*
  %car69 = getelementptr inbounds %struct.anon, %struct.anon* %cons68, i32 0, i32 0
  %43 = load %struct.obj*, %struct.obj** %car69, align 8
  %call70 = call %struct.obj* @err_ubv(%struct.obj* %43)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.66, %if.end.57
  br label %sw.epilog

sw.bb.72:                                         ; preds = %cond.end.47
  %44 = load %struct.obj*, %struct.obj** %tmp, align 8
  %45 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call73 = call %struct.obj* @leval(%struct.obj* %44, %struct.obj* %45)
  store %struct.obj* %call73, %struct.obj** %tmp, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.47, %sw.bb.72, %if.end.71, %if.then.53
  %46 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp74 = icmp eq %struct.obj* %46, null
  br i1 %cmp74, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %sw.epilog
  br label %cond.end.80

cond.false.77:                                    ; preds = %sw.epilog
  %47 = load %struct.obj*, %struct.obj** %tmp, align 8
  %type78 = getelementptr inbounds %struct.obj, %struct.obj* %47, i32 0, i32 1
  %48 = load i16, i16* %type78, align 2
  %conv79 = sext i16 %48 to i32
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.77, %cond.true.76
  %cond81 = phi i32 [ 0, %cond.true.76 ], [ %conv79, %cond.false.77 ]
  switch i32 %cond81, label %sw.default.440 [
    i32 4, label %sw.bb.82
    i32 5, label %sw.bb.85
    i32 6, label %sw.bb.94
    i32 21, label %sw.bb.114
    i32 7, label %sw.bb.157
    i32 19, label %sw.bb.180
    i32 20, label %sw.bb.207
    i32 8, label %sw.bb.239
    i32 9, label %sw.bb.248
    i32 10, label %sw.bb.256
    i32 11, label %sw.bb.264
    i32 3, label %sw.bb.434
  ]

sw.bb.82:                                         ; preds = %cond.end.80
  %49 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as83 = getelementptr inbounds %struct.obj, %struct.obj* %49, i32 0, i32 2
  %subr0 = bitcast %union.anon* %storage_as83 to %struct.anon.2*
  %f = getelementptr inbounds %struct.anon.2, %struct.anon.2* %subr0, i32 0, i32 1
  %50 = load %struct.obj* ()*, %struct.obj* ()** %f, align 8
  %call84 = call %struct.obj* %50()
  store %struct.obj* %call84, %struct.obj** %retval
  br label %return

sw.bb.85:                                         ; preds = %cond.end.80
  %51 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as86 = getelementptr inbounds %struct.obj, %struct.obj* %51, i32 0, i32 2
  %subr1 = bitcast %union.anon* %storage_as86 to %struct.anon.3*
  %f87 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %subr1, i32 0, i32 1
  %52 = load %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)** %f87, align 8
  %53 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as88 = getelementptr inbounds %struct.obj, %struct.obj* %53, i32 0, i32 2
  %cons89 = bitcast %union.anon* %storage_as88 to %struct.anon*
  %cdr90 = getelementptr inbounds %struct.anon, %struct.anon* %cons89, i32 0, i32 1
  %54 = load %struct.obj*, %struct.obj** %cdr90, align 8
  %call91 = call %struct.obj* @car(%struct.obj* %54)
  %55 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call92 = call %struct.obj* @leval(%struct.obj* %call91, %struct.obj* %55)
  %call93 = call %struct.obj* %52(%struct.obj* %call92)
  store %struct.obj* %call93, %struct.obj** %retval
  br label %return

sw.bb.94:                                         ; preds = %cond.end.80
  %56 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as95 = getelementptr inbounds %struct.obj, %struct.obj* %56, i32 0, i32 2
  %cons96 = bitcast %union.anon* %storage_as95 to %struct.anon*
  %cdr97 = getelementptr inbounds %struct.anon, %struct.anon* %cons96, i32 0, i32 1
  %57 = load %struct.obj*, %struct.obj** %cdr97, align 8
  store %struct.obj* %57, %struct.obj** %x.addr, align 8
  %58 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call98 = call %struct.obj* @car(%struct.obj* %58)
  %59 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call99 = call %struct.obj* @leval(%struct.obj* %call98, %struct.obj* %59)
  store %struct.obj* %call99, %struct.obj** %arg1, align 8
  %60 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp100 = icmp eq %struct.obj* %60, null
  br i1 %cmp100, label %cond.true.102, label %cond.false.103

cond.true.102:                                    ; preds = %sw.bb.94
  br label %cond.end.107

cond.false.103:                                   ; preds = %sw.bb.94
  %61 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as104 = getelementptr inbounds %struct.obj, %struct.obj* %61, i32 0, i32 2
  %cons105 = bitcast %union.anon* %storage_as104 to %struct.anon*
  %cdr106 = getelementptr inbounds %struct.anon, %struct.anon* %cons105, i32 0, i32 1
  %62 = load %struct.obj*, %struct.obj** %cdr106, align 8
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.103, %cond.true.102
  %cond108 = phi %struct.obj* [ null, %cond.true.102 ], [ %62, %cond.false.103 ]
  store %struct.obj* %cond108, %struct.obj** %x.addr, align 8
  %63 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as109 = getelementptr inbounds %struct.obj, %struct.obj* %63, i32 0, i32 2
  %subr2 = bitcast %union.anon* %storage_as109 to %struct.anon.4*
  %f110 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %subr2, i32 0, i32 1
  %64 = load %struct.obj* (%struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*)** %f110, align 8
  %65 = load %struct.obj*, %struct.obj** %arg1, align 8
  %66 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call111 = call %struct.obj* @car(%struct.obj* %66)
  %67 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call112 = call %struct.obj* @leval(%struct.obj* %call111, %struct.obj* %67)
  %call113 = call %struct.obj* %64(%struct.obj* %65, %struct.obj* %call112)
  store %struct.obj* %call113, %struct.obj** %retval
  br label %return

sw.bb.114:                                        ; preds = %cond.end.80
  %68 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as115 = getelementptr inbounds %struct.obj, %struct.obj* %68, i32 0, i32 2
  %cons116 = bitcast %union.anon* %storage_as115 to %struct.anon*
  %cdr117 = getelementptr inbounds %struct.anon, %struct.anon* %cons116, i32 0, i32 1
  %69 = load %struct.obj*, %struct.obj** %cdr117, align 8
  store %struct.obj* %69, %struct.obj** %x.addr, align 8
  %70 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call118 = call %struct.obj* @car(%struct.obj* %70)
  %71 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call119 = call %struct.obj* @leval(%struct.obj* %call118, %struct.obj* %71)
  store %struct.obj* %call119, %struct.obj** %arg1, align 8
  %72 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp120 = icmp eq %struct.obj* %72, null
  br i1 %cmp120, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %sw.bb.114
  br label %cond.end.127

cond.false.123:                                   ; preds = %sw.bb.114
  %73 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as124 = getelementptr inbounds %struct.obj, %struct.obj* %73, i32 0, i32 2
  %cons125 = bitcast %union.anon* %storage_as124 to %struct.anon*
  %cdr126 = getelementptr inbounds %struct.anon, %struct.anon* %cons125, i32 0, i32 1
  %74 = load %struct.obj*, %struct.obj** %cdr126, align 8
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.123, %cond.true.122
  %cond128 = phi %struct.obj* [ null, %cond.true.122 ], [ %74, %cond.false.123 ]
  store %struct.obj* %cond128, %struct.obj** %x.addr, align 8
  %75 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as129 = getelementptr inbounds %struct.obj, %struct.obj* %75, i32 0, i32 2
  %subr2130 = bitcast %union.anon* %storage_as129 to %struct.anon.4*
  %f131 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %subr2130, i32 0, i32 1
  %76 = load %struct.obj* (%struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*)** %f131, align 8
  %77 = load %struct.obj*, %struct.obj** %arg1, align 8
  %78 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call132 = call %struct.obj* @car(%struct.obj* %78)
  %79 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call133 = call %struct.obj* @leval(%struct.obj* %call132, %struct.obj* %79)
  %call134 = call %struct.obj* %76(%struct.obj* %77, %struct.obj* %call133)
  store %struct.obj* %call134, %struct.obj** %arg1, align 8
  %80 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call135 = call %struct.obj* @cdr(%struct.obj* %80)
  store %struct.obj* %call135, %struct.obj** %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.127
  %81 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp136 = icmp eq %struct.obj* %81, null
  br i1 %cmp136, label %cond.true.138, label %cond.false.139

cond.true.138:                                    ; preds = %for.cond
  br label %cond.end.142

cond.false.139:                                   ; preds = %for.cond
  %82 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type140 = getelementptr inbounds %struct.obj, %struct.obj* %82, i32 0, i32 1
  %83 = load i16, i16* %type140, align 2
  %conv141 = sext i16 %83 to i32
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.139, %cond.true.138
  %cond143 = phi i32 [ 0, %cond.true.138 ], [ %conv141, %cond.false.139 ]
  %cmp144 = icmp eq i32 %cond143, 1
  br i1 %cmp144, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end.142
  %84 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as146 = getelementptr inbounds %struct.obj, %struct.obj* %84, i32 0, i32 2
  %subr2147 = bitcast %union.anon* %storage_as146 to %struct.anon.4*
  %f148 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %subr2147, i32 0, i32 1
  %85 = load %struct.obj* (%struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*)** %f148, align 8
  %86 = load %struct.obj*, %struct.obj** %arg1, align 8
  %87 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as149 = getelementptr inbounds %struct.obj, %struct.obj* %87, i32 0, i32 2
  %cons150 = bitcast %union.anon* %storage_as149 to %struct.anon*
  %car151 = getelementptr inbounds %struct.anon, %struct.anon* %cons150, i32 0, i32 0
  %88 = load %struct.obj*, %struct.obj** %car151, align 8
  %89 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call152 = call %struct.obj* @leval(%struct.obj* %88, %struct.obj* %89)
  %call153 = call %struct.obj* %85(%struct.obj* %86, %struct.obj* %call152)
  store %struct.obj* %call153, %struct.obj** %arg1, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %90 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as154 = getelementptr inbounds %struct.obj, %struct.obj* %90, i32 0, i32 2
  %cons155 = bitcast %union.anon* %storage_as154 to %struct.anon*
  %cdr156 = getelementptr inbounds %struct.anon, %struct.anon* %cons155, i32 0, i32 1
  %91 = load %struct.obj*, %struct.obj** %cdr156, align 8
  store %struct.obj* %91, %struct.obj** %x.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end.142
  %92 = load %struct.obj*, %struct.obj** %arg1, align 8
  store %struct.obj* %92, %struct.obj** %retval
  br label %return

sw.bb.157:                                        ; preds = %cond.end.80
  %93 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as158 = getelementptr inbounds %struct.obj, %struct.obj* %93, i32 0, i32 2
  %cons159 = bitcast %union.anon* %storage_as158 to %struct.anon*
  %cdr160 = getelementptr inbounds %struct.anon, %struct.anon* %cons159, i32 0, i32 1
  %94 = load %struct.obj*, %struct.obj** %cdr160, align 8
  store %struct.obj* %94, %struct.obj** %x.addr, align 8
  %95 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call161 = call %struct.obj* @car(%struct.obj* %95)
  %96 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call162 = call %struct.obj* @leval(%struct.obj* %call161, %struct.obj* %96)
  store %struct.obj* %call162, %struct.obj** %arg1, align 8
  %97 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp163 = icmp eq %struct.obj* %97, null
  br i1 %cmp163, label %cond.true.165, label %cond.false.166

cond.true.165:                                    ; preds = %sw.bb.157
  br label %cond.end.170

cond.false.166:                                   ; preds = %sw.bb.157
  %98 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as167 = getelementptr inbounds %struct.obj, %struct.obj* %98, i32 0, i32 2
  %cons168 = bitcast %union.anon* %storage_as167 to %struct.anon*
  %cdr169 = getelementptr inbounds %struct.anon, %struct.anon* %cons168, i32 0, i32 1
  %99 = load %struct.obj*, %struct.obj** %cdr169, align 8
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.166, %cond.true.165
  %cond171 = phi %struct.obj* [ null, %cond.true.165 ], [ %99, %cond.false.166 ]
  store %struct.obj* %cond171, %struct.obj** %x.addr, align 8
  %100 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as172 = getelementptr inbounds %struct.obj, %struct.obj* %100, i32 0, i32 2
  %subr3 = bitcast %union.anon* %storage_as172 to %struct.anon.5*
  %f173 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %subr3, i32 0, i32 1
  %101 = load %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)** %f173, align 8
  %102 = load %struct.obj*, %struct.obj** %arg1, align 8
  %103 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call174 = call %struct.obj* @car(%struct.obj* %103)
  %104 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call175 = call %struct.obj* @leval(%struct.obj* %call174, %struct.obj* %104)
  %105 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call176 = call %struct.obj* @cdr(%struct.obj* %105)
  %call177 = call %struct.obj* @car(%struct.obj* %call176)
  %106 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call178 = call %struct.obj* @leval(%struct.obj* %call177, %struct.obj* %106)
  %call179 = call %struct.obj* %101(%struct.obj* %102, %struct.obj* %call175, %struct.obj* %call178)
  store %struct.obj* %call179, %struct.obj** %retval
  br label %return

sw.bb.180:                                        ; preds = %cond.end.80
  %107 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as181 = getelementptr inbounds %struct.obj, %struct.obj* %107, i32 0, i32 2
  %cons182 = bitcast %union.anon* %storage_as181 to %struct.anon*
  %cdr183 = getelementptr inbounds %struct.anon, %struct.anon* %cons182, i32 0, i32 1
  %108 = load %struct.obj*, %struct.obj** %cdr183, align 8
  store %struct.obj* %108, %struct.obj** %x.addr, align 8
  %109 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call184 = call %struct.obj* @car(%struct.obj* %109)
  %110 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call185 = call %struct.obj* @leval(%struct.obj* %call184, %struct.obj* %110)
  store %struct.obj* %call185, %struct.obj** %arg1, align 8
  %111 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp186 = icmp eq %struct.obj* %111, null
  br i1 %cmp186, label %cond.true.188, label %cond.false.189

cond.true.188:                                    ; preds = %sw.bb.180
  br label %cond.end.193

cond.false.189:                                   ; preds = %sw.bb.180
  %112 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as190 = getelementptr inbounds %struct.obj, %struct.obj* %112, i32 0, i32 2
  %cons191 = bitcast %union.anon* %storage_as190 to %struct.anon*
  %cdr192 = getelementptr inbounds %struct.anon, %struct.anon* %cons191, i32 0, i32 1
  %113 = load %struct.obj*, %struct.obj** %cdr192, align 8
  br label %cond.end.193

cond.end.193:                                     ; preds = %cond.false.189, %cond.true.188
  %cond194 = phi %struct.obj* [ null, %cond.true.188 ], [ %113, %cond.false.189 ]
  store %struct.obj* %cond194, %struct.obj** %x.addr, align 8
  %114 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as195 = getelementptr inbounds %struct.obj, %struct.obj* %114, i32 0, i32 2
  %subr4 = bitcast %union.anon* %storage_as195 to %struct.anon.6*
  %f196 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %subr4, i32 0, i32 1
  %115 = load %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)** %f196, align 8
  %116 = load %struct.obj*, %struct.obj** %arg1, align 8
  %117 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call197 = call %struct.obj* @car(%struct.obj* %117)
  %118 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call198 = call %struct.obj* @leval(%struct.obj* %call197, %struct.obj* %118)
  %119 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call199 = call %struct.obj* @cdr(%struct.obj* %119)
  %call200 = call %struct.obj* @car(%struct.obj* %call199)
  %120 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call201 = call %struct.obj* @leval(%struct.obj* %call200, %struct.obj* %120)
  %121 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call202 = call %struct.obj* @cdr(%struct.obj* %121)
  %call203 = call %struct.obj* @cdr(%struct.obj* %call202)
  %call204 = call %struct.obj* @car(%struct.obj* %call203)
  %122 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call205 = call %struct.obj* @leval(%struct.obj* %call204, %struct.obj* %122)
  %call206 = call %struct.obj* %115(%struct.obj* %116, %struct.obj* %call198, %struct.obj* %call201, %struct.obj* %call205)
  store %struct.obj* %call206, %struct.obj** %retval
  br label %return

sw.bb.207:                                        ; preds = %cond.end.80
  %123 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as208 = getelementptr inbounds %struct.obj, %struct.obj* %123, i32 0, i32 2
  %cons209 = bitcast %union.anon* %storage_as208 to %struct.anon*
  %cdr210 = getelementptr inbounds %struct.anon, %struct.anon* %cons209, i32 0, i32 1
  %124 = load %struct.obj*, %struct.obj** %cdr210, align 8
  store %struct.obj* %124, %struct.obj** %x.addr, align 8
  %125 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call211 = call %struct.obj* @car(%struct.obj* %125)
  %126 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call212 = call %struct.obj* @leval(%struct.obj* %call211, %struct.obj* %126)
  store %struct.obj* %call212, %struct.obj** %arg1, align 8
  %127 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp213 = icmp eq %struct.obj* %127, null
  br i1 %cmp213, label %cond.true.215, label %cond.false.216

cond.true.215:                                    ; preds = %sw.bb.207
  br label %cond.end.220

cond.false.216:                                   ; preds = %sw.bb.207
  %128 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as217 = getelementptr inbounds %struct.obj, %struct.obj* %128, i32 0, i32 2
  %cons218 = bitcast %union.anon* %storage_as217 to %struct.anon*
  %cdr219 = getelementptr inbounds %struct.anon, %struct.anon* %cons218, i32 0, i32 1
  %129 = load %struct.obj*, %struct.obj** %cdr219, align 8
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.false.216, %cond.true.215
  %cond221 = phi %struct.obj* [ null, %cond.true.215 ], [ %129, %cond.false.216 ]
  store %struct.obj* %cond221, %struct.obj** %x.addr, align 8
  %130 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as222 = getelementptr inbounds %struct.obj, %struct.obj* %130, i32 0, i32 2
  %subr5 = bitcast %union.anon* %storage_as222 to %struct.anon.7*
  %f223 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %subr5, i32 0, i32 1
  %131 = load %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)** %f223, align 8
  %132 = load %struct.obj*, %struct.obj** %arg1, align 8
  %133 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call224 = call %struct.obj* @car(%struct.obj* %133)
  %134 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call225 = call %struct.obj* @leval(%struct.obj* %call224, %struct.obj* %134)
  %135 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call226 = call %struct.obj* @cdr(%struct.obj* %135)
  %call227 = call %struct.obj* @car(%struct.obj* %call226)
  %136 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call228 = call %struct.obj* @leval(%struct.obj* %call227, %struct.obj* %136)
  %137 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call229 = call %struct.obj* @cdr(%struct.obj* %137)
  %call230 = call %struct.obj* @cdr(%struct.obj* %call229)
  %call231 = call %struct.obj* @car(%struct.obj* %call230)
  %138 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call232 = call %struct.obj* @leval(%struct.obj* %call231, %struct.obj* %138)
  %139 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call233 = call %struct.obj* @cdr(%struct.obj* %139)
  %call234 = call %struct.obj* @cdr(%struct.obj* %call233)
  %call235 = call %struct.obj* @cdr(%struct.obj* %call234)
  %call236 = call %struct.obj* @car(%struct.obj* %call235)
  %140 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call237 = call %struct.obj* @leval(%struct.obj* %call236, %struct.obj* %140)
  %call238 = call %struct.obj* %131(%struct.obj* %132, %struct.obj* %call225, %struct.obj* %call228, %struct.obj* %call232, %struct.obj* %call237)
  store %struct.obj* %call238, %struct.obj** %retval
  br label %return

sw.bb.239:                                        ; preds = %cond.end.80
  %141 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as240 = getelementptr inbounds %struct.obj, %struct.obj* %141, i32 0, i32 2
  %subr1241 = bitcast %union.anon* %storage_as240 to %struct.anon.3*
  %f242 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %subr1241, i32 0, i32 1
  %142 = load %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)** %f242, align 8
  %143 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as243 = getelementptr inbounds %struct.obj, %struct.obj* %143, i32 0, i32 2
  %cons244 = bitcast %union.anon* %storage_as243 to %struct.anon*
  %cdr245 = getelementptr inbounds %struct.anon, %struct.anon* %cons244, i32 0, i32 1
  %144 = load %struct.obj*, %struct.obj** %cdr245, align 8
  %145 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call246 = call %struct.obj* @leval_args(%struct.obj* %144, %struct.obj* %145)
  %call247 = call %struct.obj* %142(%struct.obj* %call246)
  store %struct.obj* %call247, %struct.obj** %retval
  br label %return

sw.bb.248:                                        ; preds = %cond.end.80
  %146 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as249 = getelementptr inbounds %struct.obj, %struct.obj* %146, i32 0, i32 2
  %subr2250 = bitcast %union.anon* %storage_as249 to %struct.anon.4*
  %f251 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %subr2250, i32 0, i32 1
  %147 = load %struct.obj* (%struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*)** %f251, align 8
  %148 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as252 = getelementptr inbounds %struct.obj, %struct.obj* %148, i32 0, i32 2
  %cons253 = bitcast %union.anon* %storage_as252 to %struct.anon*
  %cdr254 = getelementptr inbounds %struct.anon, %struct.anon* %cons253, i32 0, i32 1
  %149 = load %struct.obj*, %struct.obj** %cdr254, align 8
  %150 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call255 = call %struct.obj* %147(%struct.obj* %149, %struct.obj* %150)
  store %struct.obj* %call255, %struct.obj** %retval
  br label %return

sw.bb.256:                                        ; preds = %cond.end.80
  %151 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as257 = getelementptr inbounds %struct.obj, %struct.obj* %151, i32 0, i32 2
  %subrm = bitcast %union.anon* %storage_as257 to %struct.anon.8*
  %f258 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %subrm, i32 0, i32 1
  %152 = load %struct.obj* (%struct.obj**, %struct.obj**)*, %struct.obj* (%struct.obj**, %struct.obj**)** %f258, align 8
  %call259 = call %struct.obj* %152(%struct.obj** %x.addr, %struct.obj** %env.addr)
  %cmp260 = icmp eq %struct.obj* %call259, null
  br i1 %cmp260, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %sw.bb.256
  %153 = load %struct.obj*, %struct.obj** %x.addr, align 8
  store %struct.obj* %153, %struct.obj** %retval
  br label %return

if.end.263:                                       ; preds = %sw.bb.256
  br label %loop

sw.bb.264:                                        ; preds = %cond.end.80
  %154 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as265 = getelementptr inbounds %struct.obj, %struct.obj* %154, i32 0, i32 2
  %closure = bitcast %union.anon* %storage_as265 to %struct.anon.10*
  %code = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure, i32 0, i32 1
  %155 = load %struct.obj*, %struct.obj** %code, align 8
  %cmp266 = icmp eq %struct.obj* %155, null
  br i1 %cmp266, label %cond.true.268, label %cond.false.269

cond.true.268:                                    ; preds = %sw.bb.264
  br label %cond.end.275

cond.false.269:                                   ; preds = %sw.bb.264
  %156 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as270 = getelementptr inbounds %struct.obj, %struct.obj* %156, i32 0, i32 2
  %closure271 = bitcast %union.anon* %storage_as270 to %struct.anon.10*
  %code272 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure271, i32 0, i32 1
  %157 = load %struct.obj*, %struct.obj** %code272, align 8
  %type273 = getelementptr inbounds %struct.obj, %struct.obj* %157, i32 0, i32 1
  %158 = load i16, i16* %type273, align 2
  %conv274 = sext i16 %158 to i32
  br label %cond.end.275

cond.end.275:                                     ; preds = %cond.false.269, %cond.true.268
  %cond276 = phi i32 [ 0, %cond.true.268 ], [ %conv274, %cond.false.269 ]
  switch i32 %cond276, label %sw.default [
    i32 1, label %sw.bb.277
    i32 5, label %sw.bb.298
    i32 6, label %sw.bb.309
    i32 7, label %sw.bb.325
    i32 19, label %sw.bb.352
    i32 20, label %sw.bb.382
    i32 8, label %sw.bb.416
  ]

sw.bb.277:                                        ; preds = %cond.end.275
  %159 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as278 = getelementptr inbounds %struct.obj, %struct.obj* %159, i32 0, i32 2
  %cons279 = bitcast %union.anon* %storage_as278 to %struct.anon*
  %cdr280 = getelementptr inbounds %struct.anon, %struct.anon* %cons279, i32 0, i32 1
  %160 = load %struct.obj*, %struct.obj** %cdr280, align 8
  %161 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call281 = call %struct.obj* @leval_args(%struct.obj* %160, %struct.obj* %161)
  %162 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as282 = getelementptr inbounds %struct.obj, %struct.obj* %162, i32 0, i32 2
  %closure283 = bitcast %union.anon* %storage_as282 to %struct.anon.10*
  %code284 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure283, i32 0, i32 1
  %163 = load %struct.obj*, %struct.obj** %code284, align 8
  %storage_as285 = getelementptr inbounds %struct.obj, %struct.obj* %163, i32 0, i32 2
  %cons286 = bitcast %union.anon* %storage_as285 to %struct.anon*
  %car287 = getelementptr inbounds %struct.anon, %struct.anon* %cons286, i32 0, i32 0
  %164 = load %struct.obj*, %struct.obj** %car287, align 8
  %165 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as288 = getelementptr inbounds %struct.obj, %struct.obj* %165, i32 0, i32 2
  %closure289 = bitcast %union.anon* %storage_as288 to %struct.anon.10*
  %env290 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure289, i32 0, i32 0
  %166 = load %struct.obj*, %struct.obj** %env290, align 8
  %call291 = call %struct.obj* @extend_env(%struct.obj* %call281, %struct.obj* %164, %struct.obj* %166)
  store %struct.obj* %call291, %struct.obj** %env.addr, align 8
  %167 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as292 = getelementptr inbounds %struct.obj, %struct.obj* %167, i32 0, i32 2
  %closure293 = bitcast %union.anon* %storage_as292 to %struct.anon.10*
  %code294 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure293, i32 0, i32 1
  %168 = load %struct.obj*, %struct.obj** %code294, align 8
  %storage_as295 = getelementptr inbounds %struct.obj, %struct.obj* %168, i32 0, i32 2
  %cons296 = bitcast %union.anon* %storage_as295 to %struct.anon*
  %cdr297 = getelementptr inbounds %struct.anon, %struct.anon* %cons296, i32 0, i32 1
  %169 = load %struct.obj*, %struct.obj** %cdr297, align 8
  store %struct.obj* %169, %struct.obj** %x.addr, align 8
  br label %loop

sw.bb.298:                                        ; preds = %cond.end.275
  %170 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as299 = getelementptr inbounds %struct.obj, %struct.obj* %170, i32 0, i32 2
  %closure300 = bitcast %union.anon* %storage_as299 to %struct.anon.10*
  %code301 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure300, i32 0, i32 1
  %171 = load %struct.obj*, %struct.obj** %code301, align 8
  %storage_as302 = getelementptr inbounds %struct.obj, %struct.obj* %171, i32 0, i32 2
  %subr1303 = bitcast %union.anon* %storage_as302 to %struct.anon.3*
  %f304 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %subr1303, i32 0, i32 1
  %172 = load %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)** %f304, align 8
  %173 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as305 = getelementptr inbounds %struct.obj, %struct.obj* %173, i32 0, i32 2
  %closure306 = bitcast %union.anon* %storage_as305 to %struct.anon.10*
  %env307 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure306, i32 0, i32 0
  %174 = load %struct.obj*, %struct.obj** %env307, align 8
  %call308 = call %struct.obj* %172(%struct.obj* %174)
  store %struct.obj* %call308, %struct.obj** %retval
  br label %return

sw.bb.309:                                        ; preds = %cond.end.275
  %175 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as310 = getelementptr inbounds %struct.obj, %struct.obj* %175, i32 0, i32 2
  %cons311 = bitcast %union.anon* %storage_as310 to %struct.anon*
  %cdr312 = getelementptr inbounds %struct.anon, %struct.anon* %cons311, i32 0, i32 1
  %176 = load %struct.obj*, %struct.obj** %cdr312, align 8
  store %struct.obj* %176, %struct.obj** %x.addr, align 8
  %177 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call313 = call %struct.obj* @car(%struct.obj* %177)
  %178 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call314 = call %struct.obj* @leval(%struct.obj* %call313, %struct.obj* %178)
  store %struct.obj* %call314, %struct.obj** %arg1, align 8
  %179 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as315 = getelementptr inbounds %struct.obj, %struct.obj* %179, i32 0, i32 2
  %closure316 = bitcast %union.anon* %storage_as315 to %struct.anon.10*
  %code317 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure316, i32 0, i32 1
  %180 = load %struct.obj*, %struct.obj** %code317, align 8
  %storage_as318 = getelementptr inbounds %struct.obj, %struct.obj* %180, i32 0, i32 2
  %subr2319 = bitcast %union.anon* %storage_as318 to %struct.anon.4*
  %f320 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %subr2319, i32 0, i32 1
  %181 = load %struct.obj* (%struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*)** %f320, align 8
  %182 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as321 = getelementptr inbounds %struct.obj, %struct.obj* %182, i32 0, i32 2
  %closure322 = bitcast %union.anon* %storage_as321 to %struct.anon.10*
  %env323 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure322, i32 0, i32 0
  %183 = load %struct.obj*, %struct.obj** %env323, align 8
  %184 = load %struct.obj*, %struct.obj** %arg1, align 8
  %call324 = call %struct.obj* %181(%struct.obj* %183, %struct.obj* %184)
  store %struct.obj* %call324, %struct.obj** %retval
  br label %return

sw.bb.325:                                        ; preds = %cond.end.275
  %185 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as326 = getelementptr inbounds %struct.obj, %struct.obj* %185, i32 0, i32 2
  %cons327 = bitcast %union.anon* %storage_as326 to %struct.anon*
  %cdr328 = getelementptr inbounds %struct.anon, %struct.anon* %cons327, i32 0, i32 1
  %186 = load %struct.obj*, %struct.obj** %cdr328, align 8
  store %struct.obj* %186, %struct.obj** %x.addr, align 8
  %187 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call329 = call %struct.obj* @car(%struct.obj* %187)
  %188 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call330 = call %struct.obj* @leval(%struct.obj* %call329, %struct.obj* %188)
  store %struct.obj* %call330, %struct.obj** %arg1, align 8
  %189 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp331 = icmp eq %struct.obj* %189, null
  br i1 %cmp331, label %cond.true.333, label %cond.false.334

cond.true.333:                                    ; preds = %sw.bb.325
  br label %cond.end.338

cond.false.334:                                   ; preds = %sw.bb.325
  %190 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as335 = getelementptr inbounds %struct.obj, %struct.obj* %190, i32 0, i32 2
  %cons336 = bitcast %union.anon* %storage_as335 to %struct.anon*
  %cdr337 = getelementptr inbounds %struct.anon, %struct.anon* %cons336, i32 0, i32 1
  %191 = load %struct.obj*, %struct.obj** %cdr337, align 8
  br label %cond.end.338

cond.end.338:                                     ; preds = %cond.false.334, %cond.true.333
  %cond339 = phi %struct.obj* [ null, %cond.true.333 ], [ %191, %cond.false.334 ]
  store %struct.obj* %cond339, %struct.obj** %x.addr, align 8
  %192 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as340 = getelementptr inbounds %struct.obj, %struct.obj* %192, i32 0, i32 2
  %closure341 = bitcast %union.anon* %storage_as340 to %struct.anon.10*
  %code342 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure341, i32 0, i32 1
  %193 = load %struct.obj*, %struct.obj** %code342, align 8
  %storage_as343 = getelementptr inbounds %struct.obj, %struct.obj* %193, i32 0, i32 2
  %subr3344 = bitcast %union.anon* %storage_as343 to %struct.anon.5*
  %f345 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %subr3344, i32 0, i32 1
  %194 = load %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)** %f345, align 8
  %195 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as346 = getelementptr inbounds %struct.obj, %struct.obj* %195, i32 0, i32 2
  %closure347 = bitcast %union.anon* %storage_as346 to %struct.anon.10*
  %env348 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure347, i32 0, i32 0
  %196 = load %struct.obj*, %struct.obj** %env348, align 8
  %197 = load %struct.obj*, %struct.obj** %arg1, align 8
  %198 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call349 = call %struct.obj* @car(%struct.obj* %198)
  %199 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call350 = call %struct.obj* @leval(%struct.obj* %call349, %struct.obj* %199)
  %call351 = call %struct.obj* %194(%struct.obj* %196, %struct.obj* %197, %struct.obj* %call350)
  store %struct.obj* %call351, %struct.obj** %retval
  br label %return

sw.bb.352:                                        ; preds = %cond.end.275
  %200 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as353 = getelementptr inbounds %struct.obj, %struct.obj* %200, i32 0, i32 2
  %cons354 = bitcast %union.anon* %storage_as353 to %struct.anon*
  %cdr355 = getelementptr inbounds %struct.anon, %struct.anon* %cons354, i32 0, i32 1
  %201 = load %struct.obj*, %struct.obj** %cdr355, align 8
  store %struct.obj* %201, %struct.obj** %x.addr, align 8
  %202 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call356 = call %struct.obj* @car(%struct.obj* %202)
  %203 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call357 = call %struct.obj* @leval(%struct.obj* %call356, %struct.obj* %203)
  store %struct.obj* %call357, %struct.obj** %arg1, align 8
  %204 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp358 = icmp eq %struct.obj* %204, null
  br i1 %cmp358, label %cond.true.360, label %cond.false.361

cond.true.360:                                    ; preds = %sw.bb.352
  br label %cond.end.365

cond.false.361:                                   ; preds = %sw.bb.352
  %205 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as362 = getelementptr inbounds %struct.obj, %struct.obj* %205, i32 0, i32 2
  %cons363 = bitcast %union.anon* %storage_as362 to %struct.anon*
  %cdr364 = getelementptr inbounds %struct.anon, %struct.anon* %cons363, i32 0, i32 1
  %206 = load %struct.obj*, %struct.obj** %cdr364, align 8
  br label %cond.end.365

cond.end.365:                                     ; preds = %cond.false.361, %cond.true.360
  %cond366 = phi %struct.obj* [ null, %cond.true.360 ], [ %206, %cond.false.361 ]
  store %struct.obj* %cond366, %struct.obj** %x.addr, align 8
  %207 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as367 = getelementptr inbounds %struct.obj, %struct.obj* %207, i32 0, i32 2
  %closure368 = bitcast %union.anon* %storage_as367 to %struct.anon.10*
  %code369 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure368, i32 0, i32 1
  %208 = load %struct.obj*, %struct.obj** %code369, align 8
  %storage_as370 = getelementptr inbounds %struct.obj, %struct.obj* %208, i32 0, i32 2
  %subr4371 = bitcast %union.anon* %storage_as370 to %struct.anon.6*
  %f372 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %subr4371, i32 0, i32 1
  %209 = load %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)** %f372, align 8
  %210 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as373 = getelementptr inbounds %struct.obj, %struct.obj* %210, i32 0, i32 2
  %closure374 = bitcast %union.anon* %storage_as373 to %struct.anon.10*
  %env375 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure374, i32 0, i32 0
  %211 = load %struct.obj*, %struct.obj** %env375, align 8
  %212 = load %struct.obj*, %struct.obj** %arg1, align 8
  %213 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call376 = call %struct.obj* @car(%struct.obj* %213)
  %214 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call377 = call %struct.obj* @leval(%struct.obj* %call376, %struct.obj* %214)
  %215 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call378 = call %struct.obj* @cdr(%struct.obj* %215)
  %call379 = call %struct.obj* @car(%struct.obj* %call378)
  %216 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call380 = call %struct.obj* @leval(%struct.obj* %call379, %struct.obj* %216)
  %call381 = call %struct.obj* %209(%struct.obj* %211, %struct.obj* %212, %struct.obj* %call377, %struct.obj* %call380)
  store %struct.obj* %call381, %struct.obj** %retval
  br label %return

sw.bb.382:                                        ; preds = %cond.end.275
  %217 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as383 = getelementptr inbounds %struct.obj, %struct.obj* %217, i32 0, i32 2
  %cons384 = bitcast %union.anon* %storage_as383 to %struct.anon*
  %cdr385 = getelementptr inbounds %struct.anon, %struct.anon* %cons384, i32 0, i32 1
  %218 = load %struct.obj*, %struct.obj** %cdr385, align 8
  store %struct.obj* %218, %struct.obj** %x.addr, align 8
  %219 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call386 = call %struct.obj* @car(%struct.obj* %219)
  %220 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call387 = call %struct.obj* @leval(%struct.obj* %call386, %struct.obj* %220)
  store %struct.obj* %call387, %struct.obj** %arg1, align 8
  %221 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp388 = icmp eq %struct.obj* %221, null
  br i1 %cmp388, label %cond.true.390, label %cond.false.391

cond.true.390:                                    ; preds = %sw.bb.382
  br label %cond.end.395

cond.false.391:                                   ; preds = %sw.bb.382
  %222 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as392 = getelementptr inbounds %struct.obj, %struct.obj* %222, i32 0, i32 2
  %cons393 = bitcast %union.anon* %storage_as392 to %struct.anon*
  %cdr394 = getelementptr inbounds %struct.anon, %struct.anon* %cons393, i32 0, i32 1
  %223 = load %struct.obj*, %struct.obj** %cdr394, align 8
  br label %cond.end.395

cond.end.395:                                     ; preds = %cond.false.391, %cond.true.390
  %cond396 = phi %struct.obj* [ null, %cond.true.390 ], [ %223, %cond.false.391 ]
  store %struct.obj* %cond396, %struct.obj** %x.addr, align 8
  %224 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as397 = getelementptr inbounds %struct.obj, %struct.obj* %224, i32 0, i32 2
  %closure398 = bitcast %union.anon* %storage_as397 to %struct.anon.10*
  %code399 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure398, i32 0, i32 1
  %225 = load %struct.obj*, %struct.obj** %code399, align 8
  %storage_as400 = getelementptr inbounds %struct.obj, %struct.obj* %225, i32 0, i32 2
  %subr5401 = bitcast %union.anon* %storage_as400 to %struct.anon.7*
  %f402 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %subr5401, i32 0, i32 1
  %226 = load %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)** %f402, align 8
  %227 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as403 = getelementptr inbounds %struct.obj, %struct.obj* %227, i32 0, i32 2
  %closure404 = bitcast %union.anon* %storage_as403 to %struct.anon.10*
  %env405 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure404, i32 0, i32 0
  %228 = load %struct.obj*, %struct.obj** %env405, align 8
  %229 = load %struct.obj*, %struct.obj** %arg1, align 8
  %230 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call406 = call %struct.obj* @car(%struct.obj* %230)
  %231 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call407 = call %struct.obj* @leval(%struct.obj* %call406, %struct.obj* %231)
  %232 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call408 = call %struct.obj* @cdr(%struct.obj* %232)
  %call409 = call %struct.obj* @car(%struct.obj* %call408)
  %233 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call410 = call %struct.obj* @leval(%struct.obj* %call409, %struct.obj* %233)
  %234 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call411 = call %struct.obj* @cdr(%struct.obj* %234)
  %call412 = call %struct.obj* @cdr(%struct.obj* %call411)
  %call413 = call %struct.obj* @car(%struct.obj* %call412)
  %235 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call414 = call %struct.obj* @leval(%struct.obj* %call413, %struct.obj* %235)
  %call415 = call %struct.obj* %226(%struct.obj* %228, %struct.obj* %229, %struct.obj* %call407, %struct.obj* %call410, %struct.obj* %call414)
  store %struct.obj* %call415, %struct.obj** %retval
  br label %return

sw.bb.416:                                        ; preds = %cond.end.275
  %236 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as417 = getelementptr inbounds %struct.obj, %struct.obj* %236, i32 0, i32 2
  %closure418 = bitcast %union.anon* %storage_as417 to %struct.anon.10*
  %code419 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure418, i32 0, i32 1
  %237 = load %struct.obj*, %struct.obj** %code419, align 8
  %storage_as420 = getelementptr inbounds %struct.obj, %struct.obj* %237, i32 0, i32 2
  %subr1421 = bitcast %union.anon* %storage_as420 to %struct.anon.3*
  %f422 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %subr1421, i32 0, i32 1
  %238 = load %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)** %f422, align 8
  %239 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as423 = getelementptr inbounds %struct.obj, %struct.obj* %239, i32 0, i32 2
  %closure424 = bitcast %union.anon* %storage_as423 to %struct.anon.10*
  %env425 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure424, i32 0, i32 0
  %240 = load %struct.obj*, %struct.obj** %env425, align 8
  %241 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as426 = getelementptr inbounds %struct.obj, %struct.obj* %241, i32 0, i32 2
  %cons427 = bitcast %union.anon* %storage_as426 to %struct.anon*
  %cdr428 = getelementptr inbounds %struct.anon, %struct.anon* %cons427, i32 0, i32 1
  %242 = load %struct.obj*, %struct.obj** %cdr428, align 8
  %243 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call429 = call %struct.obj* @leval_args(%struct.obj* %242, %struct.obj* %243)
  %call430 = call %struct.obj* @cons(%struct.obj* %240, %struct.obj* %call429)
  %call431 = call %struct.obj* %238(%struct.obj* %call430)
  store %struct.obj* %call431, %struct.obj** %retval
  br label %return

sw.default:                                       ; preds = %cond.end.275
  %244 = load %struct.obj*, %struct.obj** %tmp, align 8
  %call432 = call %struct.obj* @err_closure_code(%struct.obj* %244)
  br label %sw.epilog.433

sw.epilog.433:                                    ; preds = %sw.default
  br label %sw.epilog.459

sw.bb.434:                                        ; preds = %cond.end.80
  %245 = load %struct.obj*, %struct.obj** %tmp, align 8
  %246 = load %struct.obj*, %struct.obj** @sym_quote, align 8
  %247 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call435 = call %struct.obj* @cons(%struct.obj* %247, %struct.obj* null)
  %call436 = call %struct.obj* @cons(%struct.obj* %246, %struct.obj* %call435)
  %call437 = call %struct.obj* @cons(%struct.obj* %call436, %struct.obj* null)
  %call438 = call %struct.obj* @cons(%struct.obj* %245, %struct.obj* %call437)
  store %struct.obj* %call438, %struct.obj** %x.addr, align 8
  %248 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call439 = call %struct.obj* @leval(%struct.obj* %248, %struct.obj* null)
  store %struct.obj* %call439, %struct.obj** %x.addr, align 8
  br label %loop

sw.default.440:                                   ; preds = %cond.end.80
  %249 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp441 = icmp eq %struct.obj* %249, null
  br i1 %cmp441, label %cond.true.443, label %cond.false.444

cond.true.443:                                    ; preds = %sw.default.440
  br label %cond.end.447

cond.false.444:                                   ; preds = %sw.default.440
  %250 = load %struct.obj*, %struct.obj** %tmp, align 8
  %type445 = getelementptr inbounds %struct.obj, %struct.obj* %250, i32 0, i32 1
  %251 = load i16, i16* %type445, align 2
  %conv446 = sext i16 %251 to i32
  br label %cond.end.447

cond.end.447:                                     ; preds = %cond.false.444, %cond.true.443
  %cond448 = phi i32 [ 0, %cond.true.443 ], [ %conv446, %cond.false.444 ]
  %conv449 = sext i32 %cond448 to i64
  %call450 = call %struct.user_type_hooks* @get_user_type_hooks(i64 %conv449)
  store %struct.user_type_hooks* %call450, %struct.user_type_hooks** %p, align 8
  %252 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %leval = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %252, i32 0, i32 5
  %253 = load %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)*, %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)** %leval, align 8
  %tobool = icmp ne %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)* %253, null
  br i1 %tobool, label %if.then.451, label %if.end.457

if.then.451:                                      ; preds = %cond.end.447
  %254 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %leval452 = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %254, i32 0, i32 5
  %255 = load %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)*, %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)** %leval452, align 8
  %256 = load %struct.obj*, %struct.obj** %tmp, align 8
  %call453 = call %struct.obj* %255(%struct.obj* %256, %struct.obj** %x.addr, %struct.obj** %env.addr)
  %cmp454 = icmp eq %struct.obj* %call453, null
  br i1 %cmp454, label %if.then.456, label %if.else

if.then.456:                                      ; preds = %if.then.451
  %257 = load %struct.obj*, %struct.obj** %x.addr, align 8
  store %struct.obj* %257, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %if.then.451
  br label %loop

if.end.457:                                       ; preds = %cond.end.447
  %258 = load %struct.obj*, %struct.obj** %tmp, align 8
  %call458 = call %struct.obj* @err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i32 0, i32 0), %struct.obj* %258)
  br label %sw.epilog.459

sw.epilog.459:                                    ; preds = %if.end.457, %sw.epilog.433
  br label %sw.default.460

sw.default.460:                                   ; preds = %cond.end.20, %sw.epilog.459
  %259 = load %struct.obj*, %struct.obj** %x.addr, align 8
  store %struct.obj* %259, %struct.obj** %retval
  br label %return

return:                                           ; preds = %sw.default.460, %if.then.456, %sw.bb.416, %cond.end.395, %cond.end.365, %cond.end.338, %sw.bb.309, %sw.bb.298, %if.then.262, %sw.bb.248, %sw.bb.239, %cond.end.220, %cond.end.193, %cond.end.170, %for.end, %cond.end.107, %sw.bb.85, %sw.bb.82, %if.end.36, %if.then.24
  %260 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %260
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lprint(%struct.obj* %exp, %struct.obj* %lf) #0 {
entry:
  %exp.addr = alloca %struct.obj*, align 8
  %lf.addr = alloca %struct.obj*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  store %struct.obj* %exp, %struct.obj** %exp.addr, align 8
  store %struct.obj* %lf, %struct.obj** %lf.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %lf.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call %struct._IO_FILE* @get_c_file(%struct.obj* %0, %struct._IO_FILE* %1)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %2 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call1 = call %struct.obj* @lprin1f(%struct.obj* %2, %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @fput_st(%struct._IO_FILE* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.121, i32 0, i32 0))
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define void @set_fatal_exit_hook(void ()* %fcn) #0 {
entry:
  %fcn.addr = alloca void ()*, align 8
  store void ()* %fcn, void ()** %fcn.addr, align 8
  %0 = load void ()*, void ()** %fcn.addr, align 8
  store void ()* %0, void ()** @fatal_exit_hook, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @get_c_string(%struct.obj* %x) #0 {
entry:
  %retval = alloca i8*, align 8
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %symbol = bitcast %union.anon* %storage_as to %struct.anon.1*
  %pname = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol, i32 0, i32 0
  %4 = load i8*, i8** %pname, align 8
  store i8* %4, i8** %retval
  br label %return

if.else:                                          ; preds = %cond.end
  %5 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp3 = icmp eq %struct.obj* %5, null
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %if.else
  br label %cond.end.9

cond.false.6:                                     ; preds = %if.else
  %6 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type7 = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 1
  %7 = load i16, i16* %type7, align 2
  %conv8 = sext i16 %7 to i32
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi i32 [ 0, %cond.true.5 ], [ %conv8, %cond.false.6 ]
  %cmp11 = icmp eq i32 %cond10, 13
  br i1 %cmp11, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %cond.end.9
  %8 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as14 = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as14 to %struct.anon.13*
  %data = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 1
  %9 = load i8*, i8** %data, align 8
  store i8* %9, i8** %retval
  br label %return

if.else.15:                                       ; preds = %cond.end.9
  %10 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), %struct.obj* %10)
  br label %if.end

if.end:                                           ; preds = %if.else.15
  br label %if.end.16

if.end.16:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.13, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define i8* @try_get_c_string(%struct.obj* %x) #0 {
entry:
  %retval = alloca i8*, align 8
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %symbol = bitcast %union.anon* %storage_as to %struct.anon.1*
  %pname = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol, i32 0, i32 0
  %4 = load i8*, i8** %pname, align 8
  store i8* %4, i8** %retval
  br label %return

if.else:                                          ; preds = %cond.end
  %5 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp3 = icmp eq %struct.obj* %5, null
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %if.else
  br label %cond.end.9

cond.false.6:                                     ; preds = %if.else
  %6 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type7 = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 1
  %7 = load i16, i16* %type7, align 2
  %conv8 = sext i16 %7 to i32
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi i32 [ 0, %cond.true.5 ], [ %conv8, %cond.false.6 ]
  %cmp11 = icmp eq i32 %cond10, 13
  br i1 %cmp11, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %cond.end.9
  %8 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as14 = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as14 to %struct.anon.13*
  %data = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 1
  %9 = load i8*, i8** %data, align 8
  store i8* %9, i8** %retval
  br label %return

if.else.15:                                       ; preds = %cond.end.9
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else.15, %if.then.13, %if.then
  %10 = load i8*, i8** %retval
  ret i8* %10
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @setvar(%struct.obj* %var, %struct.obj* %val, %struct.obj* %env) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %var.addr = alloca %struct.obj*, align 8
  %val.addr = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  %tmp = alloca %struct.obj*, align 8
  store %struct.obj* %var, %struct.obj** %var.addr, align 8
  store %struct.obj* %val, %struct.obj** %val.addr, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %var.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %var.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %var.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.92, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %var.addr, align 8
  %5 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call3 = call %struct.obj* @envlookup(%struct.obj* %4, %struct.obj* %5)
  store %struct.obj* %call3, %struct.obj** %tmp, align 8
  %6 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp4 = icmp eq %struct.obj* %6, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %7 = load %struct.obj*, %struct.obj** %val.addr, align 8
  %8 = load %struct.obj*, %struct.obj** %var.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %symbol = bitcast %union.anon* %storage_as to %struct.anon.1*
  %vcell = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol, i32 0, i32 1
  store %struct.obj* %7, %struct.obj** %vcell, align 8
  store %struct.obj* %7, %struct.obj** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %9 = load %struct.obj*, %struct.obj** %val.addr, align 8
  %10 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as8 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as8 to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  store %struct.obj* %9, %struct.obj** %car, align 8
  store %struct.obj* %9, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6
  %11 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %11
}

; Function Attrs: nounwind uwtable
define %struct.obj* @cons(%struct.obj* %x, %struct.obj* %y) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  %y.addr = alloca %struct.obj*, align 8
  %z = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %y, %struct.obj** %y.addr, align 8
  %0 = load i64, i64* @gc_kind_copying, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** @heap, align 8
  store %struct.obj* %1, %struct.obj** %z, align 8
  %2 = load %struct.obj*, %struct.obj** @heap_end, align 8
  %cmp1 = icmp uge %struct.obj* %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void @gc_fatal_error()
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %3 = load %struct.obj*, %struct.obj** %z, align 8
  %add.ptr = getelementptr inbounds %struct.obj, %struct.obj* %3, i64 1
  store %struct.obj* %add.ptr, %struct.obj** @heap, align 8
  br label %if.end.6

if.else:                                          ; preds = %entry
  %4 = load %struct.obj*, %struct.obj** @freelist, align 8
  %cmp3 = icmp eq %struct.obj* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.else
  call void @gc_for_newcell()
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.else
  %5 = load %struct.obj*, %struct.obj** @freelist, align 8
  store %struct.obj* %5, %struct.obj** %z, align 8
  %6 = load %struct.obj*, %struct.obj** @freelist, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  %7 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %7, %struct.obj** @freelist, align 8
  %8 = load i64, i64* @gc_cells_allocated, align 8
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* @gc_cells_allocated, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %9 = load %struct.obj*, %struct.obj** %z, align 8
  %gc_mark = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 0
  store i16 0, i16* %gc_mark, align 2
  %10 = load %struct.obj*, %struct.obj** %z, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 1
  store i16 1, i16* %type, align 2
  %11 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %12 = load %struct.obj*, %struct.obj** %z, align 8
  %storage_as7 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 2
  %cons8 = bitcast %union.anon* %storage_as7 to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons8, i32 0, i32 0
  store %struct.obj* %11, %struct.obj** %car, align 8
  %13 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %14 = load %struct.obj*, %struct.obj** %z, align 8
  %storage_as9 = getelementptr inbounds %struct.obj, %struct.obj* %14, i32 0, i32 2
  %cons10 = bitcast %union.anon* %storage_as9 to %struct.anon*
  %cdr11 = getelementptr inbounds %struct.anon, %struct.anon* %cons10, i32 0, i32 1
  store %struct.obj* %13, %struct.obj** %cdr11, align 8
  %15 = load %struct.obj*, %struct.obj** %z, align 8
  ret %struct.obj* %15
}

declare %struct.obj* @strcons(i64, i8*) #3

; Function Attrs: noreturn nounwind
declare void @longjmp(%struct.__jmp_buf_tag*, i32) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define %struct.obj* @errswitch() #0 {
entry:
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0), %struct.obj* null)
  ret %struct.obj* %call
}

; Function Attrs: nounwind uwtable
define void @err_stack(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.23, i32 0, i32 0), %struct.obj* null)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.obj* @stack_limit(%struct.obj* %amount, %struct.obj* %silent) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %amount.addr = alloca %struct.obj*, align 8
  %silent.addr = alloca %struct.obj*, align 8
  store %struct.obj* %amount, %struct.obj** %amount.addr, align 8
  store %struct.obj* %silent, %struct.obj** %silent.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %amount.addr, align 8
  %cmp = icmp ne %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %amount.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %1)
  store i64 %call, i64* @stack_size, align 8
  %2 = load %struct.obj**, %struct.obj*** @stack_start_ptr, align 8
  %3 = bitcast %struct.obj** %2 to i8*
  %4 = load i64, i64* @stack_size, align 8
  %idx.neg = sub i64 0, %4
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.neg
  store i8* %add.ptr, i8** @stack_limit_ptr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.obj*, %struct.obj** %silent.addr, align 8
  %cmp1 = icmp eq %struct.obj* %5, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %6 = load i8*, i8** @tkbuffer, align 8
  %7 = load i64, i64* @stack_size, align 8
  %8 = load %struct.obj**, %struct.obj*** @stack_start_ptr, align 8
  %9 = load i8*, i8** @stack_limit_ptr, align 8
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i32 0, i32 0), i64 %7, %struct.obj** %8, i8* %9) #6
  %10 = load i8*, i8** @tkbuffer, align 8
  call void @put_st(i8* %10)
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %11 = load i64, i64* @stack_size, align 8
  %conv = sitofp i64 %11 to double
  %call4 = call %struct.obj* @flocons(double %conv)
  store %struct.obj* %call4, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.2
  %12 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %12
}

declare i64 @get_c_long(%struct.obj*) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @flocons(double %x) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca double, align 8
  %z = alloca %struct.obj*, align 8
  %n = alloca i64, align 8
  store double %x, double* %x.addr, align 8
  %0 = load i64, i64* @inums_dim, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load double, double* %x.addr, align 8
  %2 = load double, double* %x.addr, align 8
  %conv = fptosi double %2 to i64
  store i64 %conv, i64* %n, align 8
  %conv1 = sitofp i64 %conv to double
  %sub = fsub double %1, %conv1
  %cmp2 = fcmp oeq double %sub, 0.000000e+00
  br i1 %cmp2, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %3 = load double, double* %x.addr, align 8
  %cmp5 = fcmp oge double %3, 0.000000e+00
  br i1 %cmp5, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %4 = load i64, i64* %n, align 8
  %5 = load i64, i64* @inums_dim, align 8
  %cmp8 = icmp slt i64 %4, %5
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.7
  %6 = load i64, i64* %n, align 8
  %7 = load %struct.obj**, %struct.obj*** @inums, align 8
  %arrayidx = getelementptr inbounds %struct.obj*, %struct.obj** %7, i64 %6
  %8 = load %struct.obj*, %struct.obj** %arrayidx, align 8
  store %struct.obj* %8, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.7, %land.lhs.true.4, %land.lhs.true, %entry
  %9 = load i64, i64* @gc_kind_copying, align 8
  %cmp10 = icmp eq i64 %9, 1
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  %10 = load %struct.obj*, %struct.obj** @heap, align 8
  store %struct.obj* %10, %struct.obj** %z, align 8
  %11 = load %struct.obj*, %struct.obj** @heap_end, align 8
  %cmp13 = icmp uge %struct.obj* %10, %11
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  call void @gc_fatal_error()
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.12
  %12 = load %struct.obj*, %struct.obj** %z, align 8
  %add.ptr = getelementptr inbounds %struct.obj, %struct.obj* %12, i64 1
  store %struct.obj* %add.ptr, %struct.obj** @heap, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.end
  %13 = load %struct.obj*, %struct.obj** @freelist, align 8
  %cmp17 = icmp eq %struct.obj* %13, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.else
  call void @gc_for_newcell()
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.else
  %14 = load %struct.obj*, %struct.obj** @freelist, align 8
  store %struct.obj* %14, %struct.obj** %z, align 8
  %15 = load %struct.obj*, %struct.obj** @freelist, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %15, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  %16 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %16, %struct.obj** @freelist, align 8
  %17 = load i64, i64* @gc_cells_allocated, align 8
  %inc = add nsw i64 %17, 1
  store i64 %inc, i64* @gc_cells_allocated, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.16
  %18 = load %struct.obj*, %struct.obj** %z, align 8
  %gc_mark = getelementptr inbounds %struct.obj, %struct.obj* %18, i32 0, i32 0
  store i16 0, i16* %gc_mark, align 2
  %19 = load %struct.obj*, %struct.obj** %z, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %19, i32 0, i32 1
  store i16 2, i16* %type, align 2
  %20 = load double, double* %x.addr, align 8
  %21 = load %struct.obj*, %struct.obj** %z, align 8
  %storage_as22 = getelementptr inbounds %struct.obj, %struct.obj* %21, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as22 to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  store double %20, double* %data, align 8
  %22 = load %struct.obj*, %struct.obj** %z, align 8
  store %struct.obj* %22, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then
  %23 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %23
}

; Function Attrs: nounwind uwtable
define i8* @get_c_string_dim(%struct.obj* %x, i64* %len) #0 {
entry:
  %retval = alloca i8*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %len.addr = alloca i64*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store i64* %len, i64** %len.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 3, label %sw.bb
    i32 13, label %sw.bb.4
    i32 18, label %sw.bb.4
    i32 15, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %symbol = bitcast %union.anon* %storage_as to %struct.anon.1*
  %pname = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol, i32 0, i32 0
  %4 = load i8*, i8** %pname, align 8
  %call = call i64 @strlen(i8* %4) #8
  %5 = load i64*, i64** %len.addr, align 8
  store i64 %call, i64* %5, align 8
  %6 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as1 = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %symbol2 = bitcast %union.anon* %storage_as1 to %struct.anon.1*
  %pname3 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol2, i32 0, i32 0
  %7 = load i8*, i8** %pname3, align 8
  store i8* %7, i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %cond.end, %cond.end
  %8 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as5 = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %string = bitcast %union.anon* %storage_as5 to %struct.anon.13*
  %dim = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string, i32 0, i32 0
  %9 = load i64, i64* %dim, align 8
  %10 = load i64*, i64** %len.addr, align 8
  store i64 %9, i64* %10, align 8
  %11 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as6 = getelementptr inbounds %struct.obj, %struct.obj* %11, i32 0, i32 2
  %string7 = bitcast %union.anon* %storage_as6 to %struct.anon.13*
  %data = getelementptr inbounds %struct.anon.13, %struct.anon.13* %string7, i32 0, i32 1
  %12 = load i8*, i8** %data, align 8
  store i8* %12, i8** %retval
  br label %return

sw.bb.8:                                          ; preds = %cond.end
  %13 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as9 = getelementptr inbounds %struct.obj, %struct.obj* %13, i32 0, i32 2
  %long_array = bitcast %union.anon* %storage_as9 to %struct.anon.11*
  %dim10 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array, i32 0, i32 0
  %14 = load i64, i64* %dim10, align 8
  %mul = mul i64 %14, 8
  %15 = load i64*, i64** %len.addr, align 8
  store i64 %mul, i64* %15, align 8
  %16 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as11 = getelementptr inbounds %struct.obj, %struct.obj* %16, i32 0, i32 2
  %long_array12 = bitcast %union.anon* %storage_as11 to %struct.anon.11*
  %data13 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %long_array12, i32 0, i32 1
  %17 = load i64*, i64** %data13, align 8
  %18 = bitcast i64* %17 to i8*
  store i8* %18, i8** %retval
  br label %return

sw.default:                                       ; preds = %cond.end
  %19 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call14 = call %struct.obj* @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), %struct.obj* %19)
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.8, %sw.bb.4, %sw.bb
  %20 = load i8*, i8** %retval
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lerr(%struct.obj* %message, %struct.obj* %x) #0 {
entry:
  %message.addr = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %message, %struct.obj** %message.addr, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %message.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %message.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %message.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %4 = load %struct.obj*, %struct.obj** %car, align 8
  %cmp3 = icmp eq %struct.obj* %4, null
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %land.lhs.true
  br label %cond.end.12

cond.false.6:                                     ; preds = %land.lhs.true
  %5 = load %struct.obj*, %struct.obj** %message.addr, align 8
  %storage_as7 = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %cons8 = bitcast %union.anon* %storage_as7 to %struct.anon*
  %car9 = getelementptr inbounds %struct.anon, %struct.anon* %cons8, i32 0, i32 0
  %6 = load %struct.obj*, %struct.obj** %car9, align 8
  %type10 = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 1
  %7 = load i16, i16* %type10, align 2
  %conv11 = sext i16 %7 to i32
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.6, %cond.true.5
  %cond13 = phi i32 [ 0, %cond.true.5 ], [ %conv11, %cond.false.6 ]
  %cmp14 = icmp eq i32 %cond13, 13
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.12
  %8 = load %struct.obj*, %struct.obj** %message.addr, align 8
  %call = call %struct.obj* @err(i8* null, %struct.obj* %8)
  br label %if.end

if.else:                                          ; preds = %cond.end.12, %cond.end
  %9 = load %struct.obj*, %struct.obj** %message.addr, align 8
  %call16 = call i8* @get_c_string(%struct.obj* %9)
  %10 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call17 = call %struct.obj* @err(i8* %call16, %struct.obj* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define void @gc_fatal_error() #0 {
entry:
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), %struct.obj* null)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.obj* @newcell(i64 %type) #0 {
entry:
  %type.addr = alloca i64, align 8
  %z = alloca %struct.obj*, align 8
  store i64 %type, i64* %type.addr, align 8
  %0 = load i64, i64* @gc_kind_copying, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** @heap, align 8
  store %struct.obj* %1, %struct.obj** %z, align 8
  %2 = load %struct.obj*, %struct.obj** @heap_end, align 8
  %cmp1 = icmp uge %struct.obj* %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void @gc_fatal_error()
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %3 = load %struct.obj*, %struct.obj** %z, align 8
  %add.ptr = getelementptr inbounds %struct.obj, %struct.obj* %3, i64 1
  store %struct.obj* %add.ptr, %struct.obj** @heap, align 8
  br label %if.end.6

if.else:                                          ; preds = %entry
  %4 = load %struct.obj*, %struct.obj** @freelist, align 8
  %cmp3 = icmp eq %struct.obj* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.else
  call void @gc_for_newcell()
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.else
  %5 = load %struct.obj*, %struct.obj** @freelist, align 8
  store %struct.obj* %5, %struct.obj** %z, align 8
  %6 = load %struct.obj*, %struct.obj** @freelist, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  %7 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %7, %struct.obj** @freelist, align 8
  %8 = load i64, i64* @gc_cells_allocated, align 8
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* @gc_cells_allocated, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %9 = load %struct.obj*, %struct.obj** %z, align 8
  %gc_mark = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 0
  store i16 0, i16* %gc_mark, align 2
  %10 = load i64, i64* %type.addr, align 8
  %conv = trunc i64 %10 to i16
  %11 = load %struct.obj*, %struct.obj** %z, align 8
  %type7 = getelementptr inbounds %struct.obj, %struct.obj* %11, i32 0, i32 1
  store i16 %conv, i16* %type7, align 2
  %12 = load %struct.obj*, %struct.obj** %z, align 8
  ret %struct.obj* %12
}

; Function Attrs: nounwind uwtable
define void @gc_for_newcell() #0 {
entry:
  %flag = alloca i64, align 8
  %n = alloca i64, align 8
  %l = alloca %struct.obj*, align 8
  %0 = load %struct.obj*, %struct.obj** @heap, align 8
  %1 = load %struct.obj*, %struct.obj** @heap_end, align 8
  %cmp = icmp ult %struct.obj* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** @heap, align 8
  store %struct.obj* %2, %struct.obj** @freelist, align 8
  %3 = load %struct.obj*, %struct.obj** @freelist, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  store %struct.obj* null, %struct.obj** %cdr, align 8
  %4 = load %struct.obj*, %struct.obj** @heap, align 8
  %incdec.ptr = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 1
  store %struct.obj* %incdec.ptr, %struct.obj** @heap, align 8
  br label %if.end.24

if.end:                                           ; preds = %entry
  %5 = load i64, i64* @errjmp_ok, align 8
  %cmp1 = icmp eq i64 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @gc_fatal_error()
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %flag, align 8
  store i64 0, i64* @errjmp_ok, align 8
  call void @gc_mark_and_sweep()
  store i64 1, i64* @errjmp_ok, align 8
  %6 = load i64, i64* %flag, align 8
  %call4 = call i64 @no_interrupt(i64 %6)
  store i64 0, i64* %n, align 8
  %7 = load %struct.obj*, %struct.obj** @freelist, align 8
  store %struct.obj* %7, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %8 = load i64, i64* %n, align 8
  %cmp5 = icmp slt i64 %8, 100
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp6 = icmp ne %struct.obj* %9, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp6, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %11 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as7 = getelementptr inbounds %struct.obj, %struct.obj* %11, i32 0, i32 2
  %cons8 = bitcast %union.anon* %storage_as7 to %struct.anon*
  %cdr9 = getelementptr inbounds %struct.anon, %struct.anon* %cons8, i32 0, i32 1
  %12 = load %struct.obj*, %struct.obj** %cdr9, align 8
  store %struct.obj* %12, %struct.obj** %l, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, i64* %n, align 8
  %inc = add nsw i64 %13, 1
  store i64 %inc, i64* %n, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %14 = load i64, i64* %n, align 8
  %cmp10 = icmp eq i64 %14, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %for.end
  %call12 = call %struct.obj* @allocate_aheap()
  %cmp13 = icmp eq %struct.obj* %call12, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.11
  call void @gc_fatal_error()
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.11
  br label %if.end.24

if.else:                                          ; preds = %for.end
  %15 = load i64, i64* %n, align 8
  %cmp16 = icmp eq i64 %15, 100
  br i1 %cmp16, label %land.lhs.true, label %if.else.21

land.lhs.true:                                    ; preds = %if.else
  %16 = load %struct.obj*, %struct.obj** @sym_after_gc, align 8
  %cmp17 = icmp ne %struct.obj* %16, null
  br i1 %cmp17, label %if.then.18, label %if.else.21

if.then.18:                                       ; preds = %land.lhs.true
  %17 = load %struct.obj*, %struct.obj** @sym_after_gc, align 8
  %call19 = call %struct.obj* @leval(%struct.obj* %17, %struct.obj* null)
  %call20 = call %struct.obj* @leval(%struct.obj* %call19, %struct.obj* null)
  br label %if.end.23

if.else.21:                                       ; preds = %land.lhs.true, %if.else
  %call22 = call %struct.obj* @allocate_aheap()
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.then.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.then, %if.end.23, %if.end.15
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.obj* @consp(%struct.obj* %x) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %3, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %cond.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %4
}

; Function Attrs: nounwind uwtable
define %struct.obj* @car(%struct.obj* %x) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %cond.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

sw.bb.1:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %4 = load %struct.obj*, %struct.obj** %car, align 8
  store %struct.obj* %4, %struct.obj** %retval
  br label %return

sw.default:                                       ; preds = %cond.end
  %5 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), %struct.obj* %5)
  store %struct.obj* %call, %struct.obj** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.1, %sw.bb
  %6 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %6
}

; Function Attrs: nounwind uwtable
define %struct.obj* @cdr(%struct.obj* %x) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %cond.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

sw.bb.1:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  %4 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %4, %struct.obj** %retval
  br label %return

sw.default:                                       ; preds = %cond.end
  %5 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %struct.obj* %5)
  store %struct.obj* %call, %struct.obj** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.1, %sw.bb
  %6 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %6
}

; Function Attrs: nounwind uwtable
define %struct.obj* @setcar(%struct.obj* %cell, %struct.obj* %value) #0 {
entry:
  %cell.addr = alloca %struct.obj*, align 8
  %value.addr = alloca %struct.obj*, align 8
  store %struct.obj* %cell, %struct.obj** %cell.addr, align 8
  store %struct.obj* %value, %struct.obj** %value.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %cell.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %cell.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %cell.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %value.addr, align 8
  %5 = load %struct.obj*, %struct.obj** %cell.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  store %struct.obj* %4, %struct.obj** %car, align 8
  ret %struct.obj* %4
}

; Function Attrs: nounwind uwtable
define %struct.obj* @setcdr(%struct.obj* %cell, %struct.obj* %value) #0 {
entry:
  %cell.addr = alloca %struct.obj*, align 8
  %value.addr = alloca %struct.obj*, align 8
  store %struct.obj* %cell, %struct.obj** %cell.addr, align 8
  store %struct.obj* %value, %struct.obj** %value.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %cell.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %cell.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %cell.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %value.addr, align 8
  %5 = load %struct.obj*, %struct.obj** %cell.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  store %struct.obj* %4, %struct.obj** %cdr, align 8
  ret %struct.obj* %4
}

; Function Attrs: nounwind uwtable
define %struct.obj* @numberp(%struct.obj* %x) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 2
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %3, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %cond.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %4
}

; Function Attrs: nounwind uwtable
define %struct.obj* @plus(%struct.obj* %x, %struct.obj* %y) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %y.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %y, %struct.obj** %y.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp1 = icmp eq %struct.obj* %1, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %call = call %struct.obj* @flocons(double 0.000000e+00)
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %2 = load %struct.obj*, %struct.obj** %x.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.obj* [ %call, %cond.true ], [ %2, %cond.false ]
  store %struct.obj* %cond, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp2 = icmp eq %struct.obj* %3, null
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %if.end
  br label %cond.end.5

cond.false.4:                                     ; preds = %if.end
  %4 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 1
  %5 = load i16, i16* %type, align 2
  %conv = sext i16 %5 to i32
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.3
  %cond6 = phi i32 [ 0, %cond.true.3 ], [ %conv, %cond.false.4 ]
  %cmp7 = icmp ne i32 %cond6, 2
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %cond.end.5
  %6 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call10 = call %struct.obj* @err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), %struct.obj* %6)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %cond.end.5
  %7 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %cmp12 = icmp eq %struct.obj* %7, null
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %if.end.11
  br label %cond.end.18

cond.false.15:                                    ; preds = %if.end.11
  %8 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %type16 = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 1
  %9 = load i16, i16* %type16, align 2
  %conv17 = sext i16 %9 to i32
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.15, %cond.true.14
  %cond19 = phi i32 [ 0, %cond.true.14 ], [ %conv17, %cond.false.15 ]
  %cmp20 = icmp ne i32 %cond19, 2
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %cond.end.18
  %10 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %call23 = call %struct.obj* @err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), %struct.obj* %10)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %cond.end.18
  %11 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %11, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %12 = load double, double* %data, align 8
  %13 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %storage_as25 = getelementptr inbounds %struct.obj, %struct.obj* %13, i32 0, i32 2
  %flonum26 = bitcast %union.anon* %storage_as25 to %struct.anon.0*
  %data27 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum26, i32 0, i32 0
  %14 = load double, double* %data27, align 8
  %add = fadd double %12, %14
  %call28 = call %struct.obj* @flocons(double %add)
  store %struct.obj* %call28, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.24, %cond.end
  %15 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %15
}

; Function Attrs: nounwind uwtable
define %struct.obj* @ltimes(%struct.obj* %x, %struct.obj* %y) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %y.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %y, %struct.obj** %y.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp1 = icmp eq %struct.obj* %1, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %call = call %struct.obj* @flocons(double 1.000000e+00)
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %2 = load %struct.obj*, %struct.obj** %x.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.obj* [ %call, %cond.true ], [ %2, %cond.false ]
  store %struct.obj* %cond, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp2 = icmp eq %struct.obj* %3, null
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %if.end
  br label %cond.end.5

cond.false.4:                                     ; preds = %if.end
  %4 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 1
  %5 = load i16, i16* %type, align 2
  %conv = sext i16 %5 to i32
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.3
  %cond6 = phi i32 [ 0, %cond.true.3 ], [ %conv, %cond.false.4 ]
  %cmp7 = icmp ne i32 %cond6, 2
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %cond.end.5
  %6 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call10 = call %struct.obj* @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), %struct.obj* %6)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %cond.end.5
  %7 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %cmp12 = icmp eq %struct.obj* %7, null
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %if.end.11
  br label %cond.end.18

cond.false.15:                                    ; preds = %if.end.11
  %8 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %type16 = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 1
  %9 = load i16, i16* %type16, align 2
  %conv17 = sext i16 %9 to i32
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.15, %cond.true.14
  %cond19 = phi i32 [ 0, %cond.true.14 ], [ %conv17, %cond.false.15 ]
  %cmp20 = icmp ne i32 %cond19, 2
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %cond.end.18
  %10 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %call23 = call %struct.obj* @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), %struct.obj* %10)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %cond.end.18
  %11 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %11, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %12 = load double, double* %data, align 8
  %13 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %storage_as25 = getelementptr inbounds %struct.obj, %struct.obj* %13, i32 0, i32 2
  %flonum26 = bitcast %union.anon* %storage_as25 to %struct.anon.0*
  %data27 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum26, i32 0, i32 0
  %14 = load double, double* %data27, align 8
  %mul = fmul double %12, %14
  %call28 = call %struct.obj* @flocons(double %mul)
  store %struct.obj* %call28, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.24, %cond.end
  %15 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %15
}

; Function Attrs: nounwind uwtable
define %struct.obj* @difference(%struct.obj* %x, %struct.obj* %y) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %y.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %y, %struct.obj** %y.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %cmp3 = icmp eq %struct.obj* %4, null
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %5 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %6 = load double, double* %data, align 8
  %sub = fsub double -0.000000e+00, %6
  %call6 = call %struct.obj* @flocons(double %sub)
  store %struct.obj* %call6, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %7 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %cmp7 = icmp eq %struct.obj* %7, null
  br i1 %cmp7, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %if.else
  br label %cond.end.13

cond.false.10:                                    ; preds = %if.else
  %8 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %type11 = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 1
  %9 = load i16, i16* %type11, align 2
  %conv12 = sext i16 %9 to i32
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.10, %cond.true.9
  %cond14 = phi i32 [ 0, %cond.true.9 ], [ %conv12, %cond.false.10 ]
  %cmp15 = icmp ne i32 %cond14, 2
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %cond.end.13
  %10 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %call18 = call %struct.obj* @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i32 0, i32 0), %struct.obj* %10)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %cond.end.13
  %11 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as20 = getelementptr inbounds %struct.obj, %struct.obj* %11, i32 0, i32 2
  %flonum21 = bitcast %union.anon* %storage_as20 to %struct.anon.0*
  %data22 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum21, i32 0, i32 0
  %12 = load double, double* %data22, align 8
  %13 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %storage_as23 = getelementptr inbounds %struct.obj, %struct.obj* %13, i32 0, i32 2
  %flonum24 = bitcast %union.anon* %storage_as23 to %struct.anon.0*
  %data25 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum24, i32 0, i32 0
  %14 = load double, double* %data25, align 8
  %sub26 = fsub double %12, %14
  %call27 = call %struct.obj* @flocons(double %sub26)
  store %struct.obj* %call27, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.5
  %15 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %15
}

; Function Attrs: nounwind uwtable
define %struct.obj* @Quotient(%struct.obj* %x, %struct.obj* %y) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %y.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %y, %struct.obj** %y.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %cmp3 = icmp eq %struct.obj* %4, null
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %5 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %6 = load double, double* %data, align 8
  %div = fdiv double 1.000000e+00, %6
  %call6 = call %struct.obj* @flocons(double %div)
  store %struct.obj* %call6, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %7 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %cmp7 = icmp eq %struct.obj* %7, null
  br i1 %cmp7, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %if.else
  br label %cond.end.13

cond.false.10:                                    ; preds = %if.else
  %8 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %type11 = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 1
  %9 = load i16, i16* %type11, align 2
  %conv12 = sext i16 %9 to i32
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.10, %cond.true.9
  %cond14 = phi i32 [ 0, %cond.true.9 ], [ %conv12, %cond.false.10 ]
  %cmp15 = icmp ne i32 %cond14, 2
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %cond.end.13
  %10 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %call18 = call %struct.obj* @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0), %struct.obj* %10)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %cond.end.13
  %11 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as20 = getelementptr inbounds %struct.obj, %struct.obj* %11, i32 0, i32 2
  %flonum21 = bitcast %union.anon* %storage_as20 to %struct.anon.0*
  %data22 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum21, i32 0, i32 0
  %12 = load double, double* %data22, align 8
  %13 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %storage_as23 = getelementptr inbounds %struct.obj, %struct.obj* %13, i32 0, i32 2
  %flonum24 = bitcast %union.anon* %storage_as23 to %struct.anon.0*
  %data25 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum24, i32 0, i32 0
  %14 = load double, double* %data25, align 8
  %div26 = fdiv double %12, %14
  %call27 = call %struct.obj* @flocons(double %div26)
  store %struct.obj* %call27, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.5
  %15 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %15
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lllabs(%struct.obj* %x) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %v = alloca double, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %5 = load double, double* %data, align 8
  store double %5, double* %v, align 8
  %6 = load double, double* %v, align 8
  %cmp3 = fcmp olt double %6, 0.000000e+00
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %7 = load double, double* %v, align 8
  %sub = fsub double -0.000000e+00, %7
  %call6 = call %struct.obj* @flocons(double %sub)
  store %struct.obj* %call6, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %8 = load %struct.obj*, %struct.obj** %x.addr, align 8
  store %struct.obj* %8, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.5
  %9 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %9
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lsqrt(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %5 = load double, double* %data, align 8
  %call3 = call double @sqrt(double %5) #6
  %call4 = call %struct.obj* @flocons(double %call3)
  ret %struct.obj* %call4
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @greaterp(%struct.obj* %x, %struct.obj* %y) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %y.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %y, %struct.obj** %y.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %cmp3 = icmp eq %struct.obj* %4, null
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %if.end
  br label %cond.end.9

cond.false.6:                                     ; preds = %if.end
  %5 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %type7 = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 1
  %6 = load i16, i16* %type7, align 2
  %conv8 = sext i16 %6 to i32
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi i32 [ 0, %cond.true.5 ], [ %conv8, %cond.false.6 ]
  %cmp11 = icmp ne i32 %cond10, 2
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %cond.end.9
  %7 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %call14 = call %struct.obj* @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), %struct.obj* %7)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %cond.end.9
  %8 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %9 = load double, double* %data, align 8
  %10 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %storage_as16 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %flonum17 = bitcast %union.anon* %storage_as16 to %struct.anon.0*
  %data18 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum17, i32 0, i32 0
  %11 = load double, double* %data18, align 8
  %cmp19 = fcmp ogt double %9, %11
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.15
  %12 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %12, %struct.obj** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.15
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21
  %13 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %13
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lessp(%struct.obj* %x, %struct.obj* %y) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %y.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %y, %struct.obj** %y.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %cmp3 = icmp eq %struct.obj* %4, null
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %if.end
  br label %cond.end.9

cond.false.6:                                     ; preds = %if.end
  %5 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %type7 = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 1
  %6 = load i16, i16* %type7, align 2
  %conv8 = sext i16 %6 to i32
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi i32 [ 0, %cond.true.5 ], [ %conv8, %cond.false.6 ]
  %cmp11 = icmp ne i32 %cond10, 2
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %cond.end.9
  %7 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %call14 = call %struct.obj* @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0), %struct.obj* %7)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %cond.end.9
  %8 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %9 = load double, double* %data, align 8
  %10 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %storage_as16 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %flonum17 = bitcast %union.anon* %storage_as16 to %struct.anon.0*
  %data18 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum17, i32 0, i32 0
  %11 = load double, double* %data18, align 8
  %cmp19 = fcmp olt double %9, %11
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.15
  %12 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %12, %struct.obj** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.15
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21
  %13 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %13
}

; Function Attrs: nounwind uwtable
define %struct.obj* @greaterEp(%struct.obj* %x, %struct.obj* %y) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %y.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %y, %struct.obj** %y.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %cmp3 = icmp eq %struct.obj* %4, null
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %if.end
  br label %cond.end.9

cond.false.6:                                     ; preds = %if.end
  %5 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %type7 = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 1
  %6 = load i16, i16* %type7, align 2
  %conv8 = sext i16 %6 to i32
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi i32 [ 0, %cond.true.5 ], [ %conv8, %cond.false.6 ]
  %cmp11 = icmp ne i32 %cond10, 2
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %cond.end.9
  %7 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %call14 = call %struct.obj* @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), %struct.obj* %7)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %cond.end.9
  %8 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %9 = load double, double* %data, align 8
  %10 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %storage_as16 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %flonum17 = bitcast %union.anon* %storage_as16 to %struct.anon.0*
  %data18 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum17, i32 0, i32 0
  %11 = load double, double* %data18, align 8
  %cmp19 = fcmp oge double %9, %11
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.15
  %12 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %12, %struct.obj** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.15
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21
  %13 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %13
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lessEp(%struct.obj* %x, %struct.obj* %y) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %y.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %y, %struct.obj** %y.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %cmp3 = icmp eq %struct.obj* %4, null
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %if.end
  br label %cond.end.9

cond.false.6:                                     ; preds = %if.end
  %5 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %type7 = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 1
  %6 = load i16, i16* %type7, align 2
  %conv8 = sext i16 %6 to i32
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi i32 [ 0, %cond.true.5 ], [ %conv8, %cond.false.6 ]
  %cmp11 = icmp ne i32 %cond10, 2
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %cond.end.9
  %7 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %call14 = call %struct.obj* @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0), %struct.obj* %7)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %cond.end.9
  %8 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %9 = load double, double* %data, align 8
  %10 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %storage_as16 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %flonum17 = bitcast %union.anon* %storage_as16 to %struct.anon.0*
  %data18 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum17, i32 0, i32 0
  %11 = load double, double* %data18, align 8
  %cmp19 = fcmp ole double %9, %11
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.15
  %12 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %12, %struct.obj** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.15
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21
  %13 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %13
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lmax(%struct.obj* %x, %struct.obj* %y) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %y.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %y, %struct.obj** %y.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  store %struct.obj* %1, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp1 = icmp eq %struct.obj* %2, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 1
  %4 = load i16, i16* %type, align 2
  %conv = sext i16 %4 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp2 = icmp ne i32 %cond, 2
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  %5 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), %struct.obj* %5)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %cond.end
  %6 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %cmp6 = icmp eq %struct.obj* %6, null
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %if.end.5
  br label %cond.end.12

cond.false.9:                                     ; preds = %if.end.5
  %7 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %type10 = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 1
  %8 = load i16, i16* %type10, align 2
  %conv11 = sext i16 %8 to i32
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.9, %cond.true.8
  %cond13 = phi i32 [ 0, %cond.true.8 ], [ %conv11, %cond.false.9 ]
  %cmp14 = icmp ne i32 %cond13, 2
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %cond.end.12
  %9 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %call17 = call %struct.obj* @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0), %struct.obj* %9)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %cond.end.12
  %10 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %11 = load double, double* %data, align 8
  %12 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %storage_as19 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 2
  %flonum20 = bitcast %union.anon* %storage_as19 to %struct.anon.0*
  %data21 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum20, i32 0, i32 0
  %13 = load double, double* %data21, align 8
  %cmp22 = fcmp ogt double %11, %13
  br i1 %cmp22, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %if.end.18
  %14 = load %struct.obj*, %struct.obj** %x.addr, align 8
  br label %cond.end.26

cond.false.25:                                    ; preds = %if.end.18
  %15 = load %struct.obj*, %struct.obj** %y.addr, align 8
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.24
  %cond27 = phi %struct.obj* [ %14, %cond.true.24 ], [ %15, %cond.false.25 ]
  store %struct.obj* %cond27, %struct.obj** %retval
  br label %return

return:                                           ; preds = %cond.end.26, %if.then
  %16 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %16
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lmin(%struct.obj* %x, %struct.obj* %y) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %y.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %y, %struct.obj** %y.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  store %struct.obj* %1, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp1 = icmp eq %struct.obj* %2, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 1
  %4 = load i16, i16* %type, align 2
  %conv = sext i16 %4 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp2 = icmp ne i32 %cond, 2
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  %5 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0), %struct.obj* %5)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %cond.end
  %6 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %cmp6 = icmp eq %struct.obj* %6, null
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %if.end.5
  br label %cond.end.12

cond.false.9:                                     ; preds = %if.end.5
  %7 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %type10 = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 1
  %8 = load i16, i16* %type10, align 2
  %conv11 = sext i16 %8 to i32
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.9, %cond.true.8
  %cond13 = phi i32 [ 0, %cond.true.8 ], [ %conv11, %cond.false.9 ]
  %cmp14 = icmp ne i32 %cond13, 2
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %cond.end.12
  %9 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %call17 = call %struct.obj* @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0), %struct.obj* %9)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %cond.end.12
  %10 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %11 = load double, double* %data, align 8
  %12 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %storage_as19 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 2
  %flonum20 = bitcast %union.anon* %storage_as19 to %struct.anon.0*
  %data21 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum20, i32 0, i32 0
  %13 = load double, double* %data21, align 8
  %cmp22 = fcmp olt double %11, %13
  br i1 %cmp22, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %if.end.18
  %14 = load %struct.obj*, %struct.obj** %x.addr, align 8
  br label %cond.end.26

cond.false.25:                                    ; preds = %if.end.18
  %15 = load %struct.obj*, %struct.obj** %y.addr, align 8
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.24
  %cond27 = phi %struct.obj* [ %14, %cond.true.24 ], [ %15, %cond.false.25 ]
  store %struct.obj* %cond27, %struct.obj** %retval
  br label %return

return:                                           ; preds = %cond.end.26, %if.then
  %16 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %16
}

; Function Attrs: nounwind uwtable
define %struct.obj* @eq(%struct.obj* %x, %struct.obj* %y) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %y.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %y, %struct.obj** %y.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %1 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %cmp = icmp eq %struct.obj* %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %2, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %3
}

; Function Attrs: nounwind uwtable
define %struct.obj* @eql(%struct.obj* %x, %struct.obj* %y) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %y.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %y, %struct.obj** %y.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %1 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %cmp = icmp eq %struct.obj* %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %2, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp1 = icmp eq %struct.obj* %3, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %4 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 1
  %5 = load i16, i16* %type, align 2
  %conv = sext i16 %5 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp2 = icmp ne i32 %cond, 2
  br i1 %cmp2, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %cond.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.else.5:                                        ; preds = %cond.end
  %6 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %cmp6 = icmp eq %struct.obj* %6, null
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %if.else.5
  br label %cond.end.12

cond.false.9:                                     ; preds = %if.else.5
  %7 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %type10 = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 1
  %8 = load i16, i16* %type10, align 2
  %conv11 = sext i16 %8 to i32
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.9, %cond.true.8
  %cond13 = phi i32 [ 0, %cond.true.8 ], [ %conv11, %cond.false.9 ]
  %cmp14 = icmp ne i32 %cond13, 2
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %cond.end.12
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.else.17:                                       ; preds = %cond.end.12
  %9 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %10 = load double, double* %data, align 8
  %11 = load %struct.obj*, %struct.obj** %y.addr, align 8
  %storage_as18 = getelementptr inbounds %struct.obj, %struct.obj* %11, i32 0, i32 2
  %flonum19 = bitcast %union.anon* %storage_as18 to %struct.anon.0*
  %data20 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum19, i32 0, i32 0
  %12 = load double, double* %data20, align 8
  %cmp21 = fcmp oeq double %10, %12
  br i1 %cmp21, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.else.17
  %13 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %13, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %if.else.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.23, %if.then.16, %if.then.4, %if.then
  %14 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %14
}

; Function Attrs: nounwind uwtable
define %struct.obj* @symcons(i8* %pname, %struct.obj* %vcell) #0 {
entry:
  %pname.addr = alloca i8*, align 8
  %vcell.addr = alloca %struct.obj*, align 8
  %z = alloca %struct.obj*, align 8
  store i8* %pname, i8** %pname.addr, align 8
  store %struct.obj* %vcell, %struct.obj** %vcell.addr, align 8
  %0 = load i64, i64* @gc_kind_copying, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** @heap, align 8
  store %struct.obj* %1, %struct.obj** %z, align 8
  %2 = load %struct.obj*, %struct.obj** @heap_end, align 8
  %cmp1 = icmp uge %struct.obj* %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void @gc_fatal_error()
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %3 = load %struct.obj*, %struct.obj** %z, align 8
  %add.ptr = getelementptr inbounds %struct.obj, %struct.obj* %3, i64 1
  store %struct.obj* %add.ptr, %struct.obj** @heap, align 8
  br label %if.end.6

if.else:                                          ; preds = %entry
  %4 = load %struct.obj*, %struct.obj** @freelist, align 8
  %cmp3 = icmp eq %struct.obj* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.else
  call void @gc_for_newcell()
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.else
  %5 = load %struct.obj*, %struct.obj** @freelist, align 8
  store %struct.obj* %5, %struct.obj** %z, align 8
  %6 = load %struct.obj*, %struct.obj** @freelist, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  %7 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %7, %struct.obj** @freelist, align 8
  %8 = load i64, i64* @gc_cells_allocated, align 8
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* @gc_cells_allocated, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %9 = load %struct.obj*, %struct.obj** %z, align 8
  %gc_mark = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 0
  store i16 0, i16* %gc_mark, align 2
  %10 = load %struct.obj*, %struct.obj** %z, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 1
  store i16 3, i16* %type, align 2
  %11 = load i8*, i8** %pname.addr, align 8
  %12 = load %struct.obj*, %struct.obj** %z, align 8
  %storage_as7 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 2
  %symbol = bitcast %union.anon* %storage_as7 to %struct.anon.1*
  %pname8 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol, i32 0, i32 0
  store i8* %11, i8** %pname8, align 8
  %13 = load %struct.obj*, %struct.obj** %vcell.addr, align 8
  %14 = load %struct.obj*, %struct.obj** %z, align 8
  %storage_as9 = getelementptr inbounds %struct.obj, %struct.obj* %14, i32 0, i32 2
  %symbol10 = bitcast %union.anon* %storage_as9 to %struct.anon.1*
  %vcell11 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol10, i32 0, i32 1
  store %struct.obj* %13, %struct.obj** %vcell11, align 8
  %15 = load %struct.obj*, %struct.obj** %z, align 8
  ret %struct.obj* %15
}

; Function Attrs: nounwind uwtable
define %struct.obj* @symbolp(%struct.obj* %x) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %3, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %cond.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %4
}

; Function Attrs: nounwind uwtable
define %struct.obj* @err_ubv(%struct.obj* %v) #0 {
entry:
  %v.addr = alloca %struct.obj*, align 8
  store %struct.obj* %v, %struct.obj** %v.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %v.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), %struct.obj* %0)
  ret %struct.obj* %call
}

; Function Attrs: nounwind uwtable
define %struct.obj* @symbol_boundp(%struct.obj* %x, %struct.obj* %env) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  %tmp = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %5 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call3 = call %struct.obj* @envlookup(%struct.obj* %4, %struct.obj* %5)
  store %struct.obj* %call3, %struct.obj** %tmp, align 8
  %6 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp4 = icmp ne %struct.obj* %6, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %7 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %7, %struct.obj** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %8 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %symbol = bitcast %union.anon* %storage_as to %struct.anon.1*
  %vcell = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol, i32 0, i32 1
  %9 = load %struct.obj*, %struct.obj** %vcell, align 8
  %10 = load %struct.obj*, %struct.obj** @unbound_marker, align 8
  %cmp8 = icmp eq %struct.obj* %9, %10
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.7
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %if.end.7
  %11 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %11, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.10, %if.then.6
  %12 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %12
}

; Function Attrs: nounwind uwtable
define %struct.obj* @envlookup(%struct.obj* %var, %struct.obj* %env) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %var.addr = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  %frame = alloca %struct.obj*, align 8
  %al = alloca %struct.obj*, align 8
  %fl = alloca %struct.obj*, align 8
  %tmp = alloca %struct.obj*, align 8
  store %struct.obj* %var, %struct.obj** %var.addr, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %env.addr, align 8
  store %struct.obj* %0, %struct.obj** %frame, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.71, %entry
  %1 = load %struct.obj*, %struct.obj** %frame, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %frame, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 1
  %3 = load i16, i16* %type, align 2
  %conv = sext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 1
  br i1 %cmp1, label %for.body, label %for.end.75

for.body:                                         ; preds = %cond.end
  %4 = load %struct.obj*, %struct.obj** %frame, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %5 = load %struct.obj*, %struct.obj** %car, align 8
  store %struct.obj* %5, %struct.obj** %tmp, align 8
  %6 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp3 = icmp eq %struct.obj* %6, null
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %for.body
  br label %cond.end.9

cond.false.6:                                     ; preds = %for.body
  %7 = load %struct.obj*, %struct.obj** %tmp, align 8
  %type7 = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 1
  %8 = load i16, i16* %type7, align 2
  %conv8 = sext i16 %8 to i32
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi i32 [ 0, %cond.true.5 ], [ %conv8, %cond.false.6 ]
  %cmp11 = icmp ne i32 %cond10, 1
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.9
  %9 = load %struct.obj*, %struct.obj** %tmp, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0), %struct.obj* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.9
  %10 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as13 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %cons14 = bitcast %union.anon* %storage_as13 to %struct.anon*
  %car15 = getelementptr inbounds %struct.anon, %struct.anon* %cons14, i32 0, i32 0
  %11 = load %struct.obj*, %struct.obj** %car15, align 8
  store %struct.obj* %11, %struct.obj** %fl, align 8
  %12 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as16 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 2
  %cons17 = bitcast %union.anon* %storage_as16 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons17, i32 0, i32 1
  %13 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %13, %struct.obj** %al, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %if.end
  %14 = load %struct.obj*, %struct.obj** %fl, align 8
  %cmp19 = icmp eq %struct.obj* %14, null
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %for.cond.18
  br label %cond.end.25

cond.false.22:                                    ; preds = %for.cond.18
  %15 = load %struct.obj*, %struct.obj** %fl, align 8
  %type23 = getelementptr inbounds %struct.obj, %struct.obj* %15, i32 0, i32 1
  %16 = load i16, i16* %type23, align 2
  %conv24 = sext i16 %16 to i32
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.22, %cond.true.21
  %cond26 = phi i32 [ 0, %cond.true.21 ], [ %conv24, %cond.false.22 ]
  %cmp27 = icmp eq i32 %cond26, 1
  br i1 %cmp27, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %cond.end.25
  %17 = load %struct.obj*, %struct.obj** %al, align 8
  %cmp30 = icmp eq %struct.obj* %17, null
  br i1 %cmp30, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %for.body.29
  br label %cond.end.36

cond.false.33:                                    ; preds = %for.body.29
  %18 = load %struct.obj*, %struct.obj** %al, align 8
  %type34 = getelementptr inbounds %struct.obj, %struct.obj* %18, i32 0, i32 1
  %19 = load i16, i16* %type34, align 2
  %conv35 = sext i16 %19 to i32
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.33, %cond.true.32
  %cond37 = phi i32 [ 0, %cond.true.32 ], [ %conv35, %cond.false.33 ]
  %cmp38 = icmp ne i32 %cond37, 1
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %cond.end.36
  %20 = load %struct.obj*, %struct.obj** %tmp, align 8
  %call41 = call %struct.obj* @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.86, i32 0, i32 0), %struct.obj* %20)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %cond.end.36
  %21 = load %struct.obj*, %struct.obj** %fl, align 8
  %storage_as43 = getelementptr inbounds %struct.obj, %struct.obj* %21, i32 0, i32 2
  %cons44 = bitcast %union.anon* %storage_as43 to %struct.anon*
  %car45 = getelementptr inbounds %struct.anon, %struct.anon* %cons44, i32 0, i32 0
  %22 = load %struct.obj*, %struct.obj** %car45, align 8
  %23 = load %struct.obj*, %struct.obj** %var.addr, align 8
  %cmp46 = icmp eq %struct.obj* %22, %23
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.42
  %24 = load %struct.obj*, %struct.obj** %al, align 8
  store %struct.obj* %24, %struct.obj** %retval
  br label %return

if.end.49:                                        ; preds = %if.end.42
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %25 = load %struct.obj*, %struct.obj** %fl, align 8
  %storage_as50 = getelementptr inbounds %struct.obj, %struct.obj* %25, i32 0, i32 2
  %cons51 = bitcast %union.anon* %storage_as50 to %struct.anon*
  %cdr52 = getelementptr inbounds %struct.anon, %struct.anon* %cons51, i32 0, i32 1
  %26 = load %struct.obj*, %struct.obj** %cdr52, align 8
  store %struct.obj* %26, %struct.obj** %fl, align 8
  %27 = load %struct.obj*, %struct.obj** %al, align 8
  %storage_as53 = getelementptr inbounds %struct.obj, %struct.obj* %27, i32 0, i32 2
  %cons54 = bitcast %union.anon* %storage_as53 to %struct.anon*
  %cdr55 = getelementptr inbounds %struct.anon, %struct.anon* %cons54, i32 0, i32 1
  %28 = load %struct.obj*, %struct.obj** %cdr55, align 8
  store %struct.obj* %28, %struct.obj** %al, align 8
  br label %for.cond.18

for.end:                                          ; preds = %cond.end.25
  %29 = load %struct.obj*, %struct.obj** %fl, align 8
  %cmp56 = icmp eq %struct.obj* %29, null
  br i1 %cmp56, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %for.end
  br label %cond.end.62

cond.false.59:                                    ; preds = %for.end
  %30 = load %struct.obj*, %struct.obj** %fl, align 8
  %type60 = getelementptr inbounds %struct.obj, %struct.obj* %30, i32 0, i32 1
  %31 = load i16, i16* %type60, align 2
  %conv61 = sext i16 %31 to i32
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.59, %cond.true.58
  %cond63 = phi i32 [ 0, %cond.true.58 ], [ %conv61, %cond.false.59 ]
  %cmp64 = icmp eq i32 %cond63, 3
  br i1 %cmp64, label %land.lhs.true, label %if.end.70

land.lhs.true:                                    ; preds = %cond.end.62
  %32 = load %struct.obj*, %struct.obj** %fl, align 8
  %33 = load %struct.obj*, %struct.obj** %var.addr, align 8
  %cmp66 = icmp eq %struct.obj* %32, %33
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %land.lhs.true
  %34 = load %struct.obj*, %struct.obj** %al, align 8
  %call69 = call %struct.obj* @cons(%struct.obj* %34, %struct.obj* null)
  store %struct.obj* %call69, %struct.obj** %retval
  br label %return

if.end.70:                                        ; preds = %land.lhs.true, %cond.end.62
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %35 = load %struct.obj*, %struct.obj** %frame, align 8
  %storage_as72 = getelementptr inbounds %struct.obj, %struct.obj* %35, i32 0, i32 2
  %cons73 = bitcast %union.anon* %storage_as72 to %struct.anon*
  %cdr74 = getelementptr inbounds %struct.anon, %struct.anon* %cons73, i32 0, i32 1
  %36 = load %struct.obj*, %struct.obj** %cdr74, align 8
  store %struct.obj* %36, %struct.obj** %frame, align 8
  br label %for.cond

for.end.75:                                       ; preds = %cond.end
  %37 = load %struct.obj*, %struct.obj** %frame, align 8
  %cmp76 = icmp ne %struct.obj* %37, null
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %for.end.75
  %38 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call79 = call %struct.obj* @err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0), %struct.obj* %38)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %for.end.75
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.80, %if.then.68, %if.then.48
  %39 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %39
}

; Function Attrs: nounwind uwtable
define %struct.obj* @symbol_value(%struct.obj* %x, %struct.obj* %env) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  %tmp = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %5 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call3 = call %struct.obj* @envlookup(%struct.obj* %4, %struct.obj* %5)
  store %struct.obj* %call3, %struct.obj** %tmp, align 8
  %6 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp4 = icmp ne %struct.obj* %6, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %7 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %8 = load %struct.obj*, %struct.obj** %car, align 8
  store %struct.obj* %8, %struct.obj** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %9 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as8 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 2
  %symbol = bitcast %union.anon* %storage_as8 to %struct.anon.1*
  %vcell = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol, i32 0, i32 1
  %10 = load %struct.obj*, %struct.obj** %vcell, align 8
  store %struct.obj* %10, %struct.obj** %tmp, align 8
  %11 = load %struct.obj*, %struct.obj** %tmp, align 8
  %12 = load %struct.obj*, %struct.obj** @unbound_marker, align 8
  %cmp9 = icmp eq %struct.obj* %11, %12
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.7
  %13 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call12 = call %struct.obj* @err_ubv(%struct.obj* %13)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.7
  %14 = load %struct.obj*, %struct.obj** %tmp, align 8
  store %struct.obj* %14, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.6
  %15 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %15
}

; Function Attrs: nounwind uwtable
define i8* @must_malloc(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  %tmp = alloca i8*, align 8
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
  %call = call noalias i8* @malloc(i64 %cond) #6
  store i8* %call, i8** %tmp, align 8
  %2 = load i8*, i8** %tmp, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %call1 = call %struct.obj* @err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.51, i32 0, i32 0), %struct.obj* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %3 = load i8*, i8** %tmp, align 8
  ret i8* %3
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @gen_intern(i8* %name, i64 %copyp) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %name.addr = alloca i8*, align 8
  %copyp.addr = alloca i64, align 8
  %l = alloca %struct.obj*, align 8
  %sym = alloca %struct.obj*, align 8
  %sl = alloca %struct.obj*, align 8
  %cname = alloca i8*, align 8
  %hash = alloca i64, align 8
  %n = alloca i64, align 8
  %c = alloca i64, align 8
  %flag = alloca i64, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %copyp, i64* %copyp.addr, align 8
  store i64 0, i64* %hash, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %flag, align 8
  %0 = load i64, i64* @obarray_dim, align 8
  %cmp = icmp sgt i64 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %hash, align 8
  %1 = load i64, i64* @obarray_dim, align 8
  store i64 %1, i64* %n, align 8
  %2 = load i8*, i8** %name.addr, align 8
  store i8* %2, i8** %cname, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load i8*, i8** %cname, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %cname, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i64
  store i64 %conv, i64* %c, align 8
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i64, i64* %hash, align 8
  %mul = mul nsw i64 %5, 17
  %6 = load i64, i64* %c, align 8
  %xor = xor i64 %mul, %6
  %7 = load i64, i64* %n, align 8
  %rem = srem i64 %xor, %7
  store i64 %rem, i64* %hash, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i64, i64* %hash, align 8
  %9 = load %struct.obj**, %struct.obj*** @obarray, align 8
  %arrayidx = getelementptr inbounds %struct.obj*, %struct.obj** %9, i64 %8
  %10 = load %struct.obj*, %struct.obj** %arrayidx, align 8
  store %struct.obj* %10, %struct.obj** %sl, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct.obj*, %struct.obj** @oblistvar, align 8
  store %struct.obj* %11, %struct.obj** %sl, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  %12 = load %struct.obj*, %struct.obj** %sl, align 8
  store %struct.obj* %12, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp1 = icmp ne %struct.obj* %13, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %name.addr, align 8
  %15 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %15, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %16 = load %struct.obj*, %struct.obj** %car, align 8
  %storage_as3 = getelementptr inbounds %struct.obj, %struct.obj* %16, i32 0, i32 2
  %symbol = bitcast %union.anon* %storage_as3 to %struct.anon.1*
  %pname = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol, i32 0, i32 0
  %17 = load i8*, i8** %pname, align 8
  %call4 = call i32 @strcmp(i8* %14, i8* %17) #8
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %for.body
  %18 = load i64, i64* %flag, align 8
  %call8 = call i64 @no_interrupt(i64 %18)
  %19 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as9 = getelementptr inbounds %struct.obj, %struct.obj* %19, i32 0, i32 2
  %cons10 = bitcast %union.anon* %storage_as9 to %struct.anon*
  %car11 = getelementptr inbounds %struct.anon, %struct.anon* %cons10, i32 0, i32 0
  %20 = load %struct.obj*, %struct.obj** %car11, align 8
  store %struct.obj* %20, %struct.obj** %retval
  br label %return

if.end.12:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %21 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as13 = getelementptr inbounds %struct.obj, %struct.obj* %21, i32 0, i32 2
  %cons14 = bitcast %union.anon* %storage_as13 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons14, i32 0, i32 1
  %22 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %22, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i64, i64* %copyp.addr, align 8
  %cmp15 = icmp eq i64 %23, 1
  br i1 %cmp15, label %if.then.17, label %if.else.21

if.then.17:                                       ; preds = %for.end
  %24 = load i8*, i8** %name.addr, align 8
  %call18 = call i64 @strlen(i8* %24) #8
  %add = add i64 %call18, 1
  %call19 = call i8* @must_malloc(i64 %add)
  store i8* %call19, i8** %cname, align 8
  %25 = load i8*, i8** %cname, align 8
  %26 = load i8*, i8** %name.addr, align 8
  %call20 = call i8* @strcpy(i8* %25, i8* %26) #6
  br label %if.end.22

if.else.21:                                       ; preds = %for.end
  %27 = load i8*, i8** %name.addr, align 8
  store i8* %27, i8** %cname, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.17
  %28 = load i8*, i8** %cname, align 8
  %29 = load %struct.obj*, %struct.obj** @unbound_marker, align 8
  %call23 = call %struct.obj* @symcons(i8* %28, %struct.obj* %29)
  store %struct.obj* %call23, %struct.obj** %sym, align 8
  %30 = load i64, i64* @obarray_dim, align 8
  %cmp24 = icmp sgt i64 %30, 1
  br i1 %cmp24, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end.22
  %31 = load %struct.obj*, %struct.obj** %sym, align 8
  %32 = load %struct.obj*, %struct.obj** %sl, align 8
  %call27 = call %struct.obj* @cons(%struct.obj* %31, %struct.obj* %32)
  %33 = load i64, i64* %hash, align 8
  %34 = load %struct.obj**, %struct.obj*** @obarray, align 8
  %arrayidx28 = getelementptr inbounds %struct.obj*, %struct.obj** %34, i64 %33
  store %struct.obj* %call27, %struct.obj** %arrayidx28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.end.22
  %35 = load %struct.obj*, %struct.obj** %sym, align 8
  %36 = load %struct.obj*, %struct.obj** @oblistvar, align 8
  %call30 = call %struct.obj* @cons(%struct.obj* %35, %struct.obj* %36)
  store %struct.obj* %call30, %struct.obj** @oblistvar, align 8
  %37 = load i64, i64* %flag, align 8
  %call31 = call i64 @no_interrupt(i64 %37)
  %38 = load %struct.obj*, %struct.obj** %sym, align 8
  store %struct.obj* %38, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.7
  %39 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %39
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @cintern(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct.obj* @gen_intern(i8* %0, i64 0)
  ret %struct.obj* %call
}

; Function Attrs: nounwind uwtable
define %struct.obj* @rintern(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct.obj* @gen_intern(i8* %0, i64 1)
  ret %struct.obj* %call
}

; Function Attrs: nounwind uwtable
define %struct.obj* @intern(%struct.obj* %name) #0 {
entry:
  %name.addr = alloca %struct.obj*, align 8
  store %struct.obj* %name, %struct.obj** %name.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %name.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  %call1 = call %struct.obj* @rintern(i8* %call)
  ret %struct.obj* %call1
}

; Function Attrs: nounwind uwtable
define %struct.obj* @subrcons(i64 %type, i8* %name, %struct.obj* ()* %f) #0 {
entry:
  %type.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %f.addr = alloca %struct.obj* ()*, align 8
  %z = alloca %struct.obj*, align 8
  store i64 %type, i64* %type.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.obj* ()* %f, %struct.obj* ()** %f.addr, align 8
  %0 = load i64, i64* @gc_kind_copying, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** @heap, align 8
  store %struct.obj* %1, %struct.obj** %z, align 8
  %2 = load %struct.obj*, %struct.obj** @heap_end, align 8
  %cmp1 = icmp uge %struct.obj* %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void @gc_fatal_error()
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %3 = load %struct.obj*, %struct.obj** %z, align 8
  %add.ptr = getelementptr inbounds %struct.obj, %struct.obj* %3, i64 1
  store %struct.obj* %add.ptr, %struct.obj** @heap, align 8
  br label %if.end.6

if.else:                                          ; preds = %entry
  %4 = load %struct.obj*, %struct.obj** @freelist, align 8
  %cmp3 = icmp eq %struct.obj* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.else
  call void @gc_for_newcell()
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.else
  %5 = load %struct.obj*, %struct.obj** @freelist, align 8
  store %struct.obj* %5, %struct.obj** %z, align 8
  %6 = load %struct.obj*, %struct.obj** @freelist, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  %7 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %7, %struct.obj** @freelist, align 8
  %8 = load i64, i64* @gc_cells_allocated, align 8
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* @gc_cells_allocated, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %9 = load %struct.obj*, %struct.obj** %z, align 8
  %gc_mark = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 0
  store i16 0, i16* %gc_mark, align 2
  %10 = load i64, i64* %type.addr, align 8
  %conv = trunc i64 %10 to i16
  %11 = load %struct.obj*, %struct.obj** %z, align 8
  %type7 = getelementptr inbounds %struct.obj, %struct.obj* %11, i32 0, i32 1
  store i16 %conv, i16* %type7, align 2
  %12 = load i8*, i8** %name.addr, align 8
  %13 = load %struct.obj*, %struct.obj** %z, align 8
  %storage_as8 = getelementptr inbounds %struct.obj, %struct.obj* %13, i32 0, i32 2
  %subr = bitcast %union.anon* %storage_as8 to %struct.anon.9*
  %name9 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %subr, i32 0, i32 0
  store i8* %12, i8** %name9, align 8
  %14 = load %struct.obj* ()*, %struct.obj* ()** %f.addr, align 8
  %15 = load %struct.obj*, %struct.obj** %z, align 8
  %storage_as10 = getelementptr inbounds %struct.obj, %struct.obj* %15, i32 0, i32 2
  %subr0 = bitcast %union.anon* %storage_as10 to %struct.anon.2*
  %f11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %subr0, i32 0, i32 1
  store %struct.obj* ()* %14, %struct.obj* ()** %f11, align 8
  %16 = load %struct.obj*, %struct.obj** %z, align 8
  ret %struct.obj* %16
}

; Function Attrs: nounwind uwtable
define %struct.obj* @closure(%struct.obj* %env, %struct.obj* %code) #0 {
entry:
  %env.addr = alloca %struct.obj*, align 8
  %code.addr = alloca %struct.obj*, align 8
  %z = alloca %struct.obj*, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  store %struct.obj* %code, %struct.obj** %code.addr, align 8
  %0 = load i64, i64* @gc_kind_copying, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** @heap, align 8
  store %struct.obj* %1, %struct.obj** %z, align 8
  %2 = load %struct.obj*, %struct.obj** @heap_end, align 8
  %cmp1 = icmp uge %struct.obj* %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void @gc_fatal_error()
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %3 = load %struct.obj*, %struct.obj** %z, align 8
  %add.ptr = getelementptr inbounds %struct.obj, %struct.obj* %3, i64 1
  store %struct.obj* %add.ptr, %struct.obj** @heap, align 8
  br label %if.end.6

if.else:                                          ; preds = %entry
  %4 = load %struct.obj*, %struct.obj** @freelist, align 8
  %cmp3 = icmp eq %struct.obj* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.else
  call void @gc_for_newcell()
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.else
  %5 = load %struct.obj*, %struct.obj** @freelist, align 8
  store %struct.obj* %5, %struct.obj** %z, align 8
  %6 = load %struct.obj*, %struct.obj** @freelist, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  %7 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %7, %struct.obj** @freelist, align 8
  %8 = load i64, i64* @gc_cells_allocated, align 8
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* @gc_cells_allocated, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %9 = load %struct.obj*, %struct.obj** %z, align 8
  %gc_mark = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 0
  store i16 0, i16* %gc_mark, align 2
  %10 = load %struct.obj*, %struct.obj** %z, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 1
  store i16 11, i16* %type, align 2
  %11 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %12 = load %struct.obj*, %struct.obj** %z, align 8
  %storage_as7 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 2
  %closure = bitcast %union.anon* %storage_as7 to %struct.anon.10*
  %env8 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure, i32 0, i32 0
  store %struct.obj* %11, %struct.obj** %env8, align 8
  %13 = load %struct.obj*, %struct.obj** %code.addr, align 8
  %14 = load %struct.obj*, %struct.obj** %z, align 8
  %storage_as9 = getelementptr inbounds %struct.obj, %struct.obj* %14, i32 0, i32 2
  %closure10 = bitcast %union.anon* %storage_as9 to %struct.anon.10*
  %code11 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure10, i32 0, i32 1
  store %struct.obj* %13, %struct.obj** %code11, align 8
  %15 = load %struct.obj*, %struct.obj** %z, align 8
  ret %struct.obj* %15
}

; Function Attrs: nounwind uwtable
define void @gc_protect(%struct.obj** %location) #0 {
entry:
  %location.addr = alloca %struct.obj**, align 8
  store %struct.obj** %location, %struct.obj*** %location.addr, align 8
  %0 = load %struct.obj**, %struct.obj*** %location.addr, align 8
  call void @gc_protect_n(%struct.obj** %0, i64 1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gc_protect_n(%struct.obj** %location, i64 %n) #0 {
entry:
  %location.addr = alloca %struct.obj**, align 8
  %n.addr = alloca i64, align 8
  %reg = alloca %struct.gc_protected*, align 8
  store %struct.obj** %location, %struct.obj*** %location.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %call = call i8* @must_malloc(i64 24)
  %0 = bitcast i8* %call to %struct.gc_protected*
  store %struct.gc_protected* %0, %struct.gc_protected** %reg, align 8
  %1 = load %struct.obj**, %struct.obj*** %location.addr, align 8
  %2 = load %struct.gc_protected*, %struct.gc_protected** %reg, align 8
  %location1 = getelementptr inbounds %struct.gc_protected, %struct.gc_protected* %2, i32 0, i32 0
  store %struct.obj** %1, %struct.obj*** %location1, align 8
  %3 = load i64, i64* %n.addr, align 8
  %4 = load %struct.gc_protected*, %struct.gc_protected** %reg, align 8
  %length = getelementptr inbounds %struct.gc_protected, %struct.gc_protected* %4, i32 0, i32 1
  store i64 %3, i64* %length, align 8
  %5 = load %struct.gc_protected*, %struct.gc_protected** @protected_registers, align 8
  %6 = load %struct.gc_protected*, %struct.gc_protected** %reg, align 8
  %next = getelementptr inbounds %struct.gc_protected, %struct.gc_protected* %6, i32 0, i32 2
  store %struct.gc_protected* %5, %struct.gc_protected** %next, align 8
  %7 = load %struct.gc_protected*, %struct.gc_protected** %reg, align 8
  store %struct.gc_protected* %7, %struct.gc_protected** @protected_registers, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gc_protect_sym(%struct.obj** %location, i8* %st) #0 {
entry:
  %location.addr = alloca %struct.obj**, align 8
  %st.addr = alloca i8*, align 8
  store %struct.obj** %location, %struct.obj*** %location.addr, align 8
  store i8* %st, i8** %st.addr, align 8
  %0 = load i8*, i8** %st.addr, align 8
  %call = call %struct.obj* @cintern(i8* %0)
  %1 = load %struct.obj**, %struct.obj*** %location.addr, align 8
  store %struct.obj* %call, %struct.obj** %1, align 8
  %2 = load %struct.obj**, %struct.obj*** %location.addr, align 8
  call void @gc_protect(%struct.obj** %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @scan_registers() #0 {
entry:
  %reg = alloca %struct.gc_protected*, align 8
  %location = alloca %struct.obj**, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %0 = load %struct.gc_protected*, %struct.gc_protected** @protected_registers, align 8
  store %struct.gc_protected* %0, %struct.gc_protected** %reg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.5, %entry
  %1 = load %struct.gc_protected*, %struct.gc_protected** %reg, align 8
  %tobool = icmp ne %struct.gc_protected* %1, null
  br i1 %tobool, label %for.body, label %for.end.6

for.body:                                         ; preds = %for.cond
  %2 = load %struct.gc_protected*, %struct.gc_protected** %reg, align 8
  %location1 = getelementptr inbounds %struct.gc_protected, %struct.gc_protected* %2, i32 0, i32 0
  %3 = load %struct.obj**, %struct.obj*** %location1, align 8
  store %struct.obj** %3, %struct.obj*** %location, align 8
  %4 = load %struct.gc_protected*, %struct.gc_protected** %reg, align 8
  %length = getelementptr inbounds %struct.gc_protected, %struct.gc_protected* %4, i32 0, i32 1
  %5 = load i64, i64* %length, align 8
  store i64 %5, i64* %n, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %6 = load i64, i64* %j, align 8
  %7 = load i64, i64* %n, align 8
  %cmp = icmp slt i64 %6, %7
  br i1 %cmp, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.2
  %8 = load i64, i64* %j, align 8
  %9 = load %struct.obj**, %struct.obj*** %location, align 8
  %arrayidx = getelementptr inbounds %struct.obj*, %struct.obj** %9, i64 %8
  %10 = load %struct.obj*, %struct.obj** %arrayidx, align 8
  %call = call %struct.obj* @gc_relocate(%struct.obj* %10)
  %11 = load i64, i64* %j, align 8
  %12 = load %struct.obj**, %struct.obj*** %location, align 8
  %arrayidx4 = getelementptr inbounds %struct.obj*, %struct.obj** %12, i64 %11
  store %struct.obj* %call, %struct.obj** %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %13 = load i64, i64* %j, align 8
  %inc = add nsw i64 %13, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.end
  %14 = load %struct.gc_protected*, %struct.gc_protected** %reg, align 8
  %next = getelementptr inbounds %struct.gc_protected, %struct.gc_protected* %14, i32 0, i32 2
  %15 = load %struct.gc_protected*, %struct.gc_protected** %next, align 8
  store %struct.gc_protected* %15, %struct.gc_protected** %reg, align 8
  br label %for.cond

for.end.6:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.obj* @gc_relocate(%struct.obj* %x) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %nw = alloca %struct.obj*, align 8
  %p = alloca %struct.user_type_hooks*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %gc_mark = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 0
  %2 = load i16, i16* %gc_mark, align 2
  %conv = sext i16 %2 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %3 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %4 = load %struct.obj*, %struct.obj** %car, align 8
  store %struct.obj* %4, %struct.obj** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp5 = icmp eq %struct.obj* %5, null
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  %6 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 1
  %7 = load i16, i16* %type, align 2
  %conv7 = sext i16 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv7, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 11, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 21, label %sw.bb
    i32 7, label %sw.bb
    i32 19, label %sw.bb
    i32 20, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
  ]

sw.bb:                                            ; preds = %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end
  %8 = load %struct.obj*, %struct.obj** @heap, align 8
  store %struct.obj* %8, %struct.obj** %nw, align 8
  %9 = load %struct.obj*, %struct.obj** @heap_end, align 8
  %cmp8 = icmp uge %struct.obj* %8, %9
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb
  call void @gc_fatal_error()
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %sw.bb
  %10 = load %struct.obj*, %struct.obj** %nw, align 8
  %add.ptr = getelementptr inbounds %struct.obj, %struct.obj* %10, i64 1
  store %struct.obj* %add.ptr, %struct.obj** @heap, align 8
  %11 = load %struct.obj*, %struct.obj** %nw, align 8
  %12 = bitcast %struct.obj* %11 to i8*
  %13 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %14 = bitcast %struct.obj* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %14, i64 24, i32 8, i1 false)
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %15 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp12 = icmp eq %struct.obj* %15, null
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %sw.default
  br label %cond.end.18

cond.false.15:                                    ; preds = %sw.default
  %16 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %type16 = getelementptr inbounds %struct.obj, %struct.obj* %16, i32 0, i32 1
  %17 = load i16, i16* %type16, align 2
  %conv17 = sext i16 %17 to i32
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.15, %cond.true.14
  %cond19 = phi i32 [ 0, %cond.true.14 ], [ %conv17, %cond.false.15 ]
  %conv20 = sext i32 %cond19 to i64
  %call = call %struct.user_type_hooks* @get_user_type_hooks(i64 %conv20)
  store %struct.user_type_hooks* %call, %struct.user_type_hooks** %p, align 8
  %18 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %gc_relocate = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %18, i32 0, i32 0
  %19 = load %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)** %gc_relocate, align 8
  %tobool = icmp ne %struct.obj* (%struct.obj*)* %19, null
  br i1 %tobool, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %cond.end.18
  %20 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %gc_relocate22 = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %20, i32 0, i32 0
  %21 = load %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)** %gc_relocate22, align 8
  %22 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call23 = call %struct.obj* %21(%struct.obj* %22)
  store %struct.obj* %call23, %struct.obj** %nw, align 8
  br label %if.end.29

if.else:                                          ; preds = %cond.end.18
  %23 = load %struct.obj*, %struct.obj** @heap, align 8
  store %struct.obj* %23, %struct.obj** %nw, align 8
  %24 = load %struct.obj*, %struct.obj** @heap_end, align 8
  %cmp24 = icmp uge %struct.obj* %23, %24
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.else
  call void @gc_fatal_error()
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.else
  %25 = load %struct.obj*, %struct.obj** %nw, align 8
  %add.ptr28 = getelementptr inbounds %struct.obj, %struct.obj* %25, i64 1
  store %struct.obj* %add.ptr28, %struct.obj** @heap, align 8
  %26 = load %struct.obj*, %struct.obj** %nw, align 8
  %27 = bitcast %struct.obj* %26 to i8*
  %28 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %29 = bitcast %struct.obj* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %29, i64 24, i32 8, i1 false)
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.27, %if.then.21
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.29, %if.end.11
  %30 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %gc_mark30 = getelementptr inbounds %struct.obj, %struct.obj* %30, i32 0, i32 0
  store i16 1, i16* %gc_mark30, align 2
  %31 = load %struct.obj*, %struct.obj** %nw, align 8
  %32 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %storage_as31 = getelementptr inbounds %struct.obj, %struct.obj* %32, i32 0, i32 2
  %cons32 = bitcast %union.anon* %storage_as31 to %struct.anon*
  %car33 = getelementptr inbounds %struct.anon, %struct.anon* %cons32, i32 0, i32 0
  store %struct.obj* %31, %struct.obj** %car33, align 8
  %33 = load %struct.obj*, %struct.obj** %nw, align 8
  store %struct.obj* %33, %struct.obj** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.3, %if.then
  %34 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %34
}

; Function Attrs: nounwind uwtable
define void @init_storage() #0 {
entry:
  %j = alloca i64, align 8
  %stack_start = alloca %struct.obj*, align 8
  %0 = load %struct.obj**, %struct.obj*** @stack_start_ptr, align 8
  %cmp = icmp eq %struct.obj** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.obj** %stack_start, %struct.obj*** @stack_start_ptr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @init_storage_1()
  call void @init_storage_a()
  call void @set_gc_hooks(i64 17, %struct.obj* (%struct.obj*)* null, %struct.obj* (%struct.obj*)* null, void (%struct.obj*)* null, void (%struct.obj*)* @file_gc_free, i64* %j)
  call void @set_print_hooks(i64 17, void (%struct.obj*, %struct.gen_printio*)* @file_prin1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_storage_1() #0 {
entry:
  %ptr = alloca %struct.obj*, align 8
  %j = alloca i64, align 8
  %call = call i8* @must_malloc(i64 5121)
  store i8* %call, i8** @tkbuffer, align 8
  %0 = load i64, i64* @gc_kind_copying, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* @nheaps, align 8
  %cmp1 = icmp ne i64 %1, 2
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i64, i64* @nheaps, align 8
  %cmp2 = icmp slt i64 %2, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %call3 = call %struct.obj* @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i32 0, i32 0), %struct.obj* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %3 = load i64, i64* @nheaps, align 8
  %mul = mul i64 8, %3
  %call4 = call i8* @must_malloc(i64 %mul)
  %4 = bitcast i8* %call4 to %struct.obj**
  store %struct.obj** %4, %struct.obj*** @heaps, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, i64* %j, align 8
  %6 = load i64, i64* @nheaps, align 8
  %cmp5 = icmp slt i64 %5, %6
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %j, align 8
  %8 = load %struct.obj**, %struct.obj*** @heaps, align 8
  %arrayidx = getelementptr inbounds %struct.obj*, %struct.obj** %8, i64 %7
  store %struct.obj* null, %struct.obj** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %j, align 8
  %inc = add nsw i64 %9, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i64, i64* @heap_size, align 8
  %mul6 = mul i64 24, %10
  %call7 = call i8* @must_malloc(i64 %mul6)
  %11 = bitcast i8* %call7 to %struct.obj*
  %12 = load %struct.obj**, %struct.obj*** @heaps, align 8
  %arrayidx8 = getelementptr inbounds %struct.obj*, %struct.obj** %12, i64 0
  store %struct.obj* %11, %struct.obj** %arrayidx8, align 8
  %13 = load %struct.obj**, %struct.obj*** @heaps, align 8
  %arrayidx9 = getelementptr inbounds %struct.obj*, %struct.obj** %13, i64 0
  %14 = load %struct.obj*, %struct.obj** %arrayidx9, align 8
  store %struct.obj* %14, %struct.obj** @heap, align 8
  %15 = load %struct.obj*, %struct.obj** @heap, align 8
  store %struct.obj* %15, %struct.obj** @heap_org, align 8
  %16 = load %struct.obj*, %struct.obj** @heap, align 8
  %17 = load i64, i64* @heap_size, align 8
  %add.ptr = getelementptr inbounds %struct.obj, %struct.obj* %16, i64 %17
  store %struct.obj* %add.ptr, %struct.obj** @heap_end, align 8
  %18 = load i64, i64* @gc_kind_copying, align 8
  %cmp10 = icmp eq i64 %18, 1
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %for.end
  %19 = load i64, i64* @heap_size, align 8
  %mul12 = mul i64 24, %19
  %call13 = call i8* @must_malloc(i64 %mul12)
  %20 = bitcast i8* %call13 to %struct.obj*
  %21 = load %struct.obj**, %struct.obj*** @heaps, align 8
  %arrayidx14 = getelementptr inbounds %struct.obj*, %struct.obj** %21, i64 1
  store %struct.obj* %20, %struct.obj** %arrayidx14, align 8
  br label %if.end.15

if.else:                                          ; preds = %for.end
  store %struct.obj* null, %struct.obj** @freelist, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.11
  call void @gc_protect(%struct.obj** @oblistvar)
  %22 = load i64, i64* @obarray_dim, align 8
  %cmp16 = icmp sgt i64 %22, 1
  br i1 %cmp16, label %if.then.17, label %if.end.27

if.then.17:                                       ; preds = %if.end.15
  %23 = load i64, i64* @obarray_dim, align 8
  %mul18 = mul i64 8, %23
  %call19 = call i8* @must_malloc(i64 %mul18)
  %24 = bitcast i8* %call19 to %struct.obj**
  store %struct.obj** %24, %struct.obj*** @obarray, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.24, %if.then.17
  %25 = load i64, i64* %j, align 8
  %26 = load i64, i64* @obarray_dim, align 8
  %cmp21 = icmp slt i64 %25, %26
  br i1 %cmp21, label %for.body.22, label %for.end.26

for.body.22:                                      ; preds = %for.cond.20
  %27 = load i64, i64* %j, align 8
  %28 = load %struct.obj**, %struct.obj*** @obarray, align 8
  %arrayidx23 = getelementptr inbounds %struct.obj*, %struct.obj** %28, i64 %27
  store %struct.obj* null, %struct.obj** %arrayidx23, align 8
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.22
  %29 = load i64, i64* %j, align 8
  %inc25 = add nsw i64 %29, 1
  store i64 %inc25, i64* %j, align 8
  br label %for.cond.20

for.end.26:                                       ; preds = %for.cond.20
  %30 = load %struct.obj**, %struct.obj*** @obarray, align 8
  %31 = load i64, i64* @obarray_dim, align 8
  call void @gc_protect_n(%struct.obj** %30, i64 %31)
  br label %if.end.27

if.end.27:                                        ; preds = %for.end.26, %if.end.15
  %call28 = call %struct.obj* @cintern(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0))
  %call29 = call %struct.obj* @cons(%struct.obj* %call28, %struct.obj* null)
  store %struct.obj* %call29, %struct.obj** @unbound_marker, align 8
  call void @gc_protect(%struct.obj** @unbound_marker)
  %call30 = call %struct.obj* @cintern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0))
  %call31 = call %struct.obj* @cons(%struct.obj* %call30, %struct.obj* null)
  store %struct.obj* %call31, %struct.obj** @eof_val, align 8
  call void @gc_protect(%struct.obj** @eof_val)
  call void @gc_protect_sym(%struct.obj** @sym_t, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0))
  %32 = load %struct.obj*, %struct.obj** @sym_t, align 8
  %33 = load %struct.obj*, %struct.obj** @sym_t, align 8
  %call32 = call %struct.obj* @setvar(%struct.obj* %32, %struct.obj* %33, %struct.obj* null)
  %call33 = call %struct.obj* @cintern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0))
  %call34 = call %struct.obj* @setvar(%struct.obj* %call33, %struct.obj* null, %struct.obj* null)
  %call35 = call %struct.obj* @cintern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0))
  %call36 = call %struct.obj* @cintern(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0))
  %call37 = call %struct.obj* @setvar(%struct.obj* %call35, %struct.obj* %call36, %struct.obj* null)
  %call38 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0))
  %call39 = call %struct.obj* @cintern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0))
  %call40 = call %struct.obj* @setvar(%struct.obj* %call38, %struct.obj* %call39, %struct.obj* null)
  %call41 = call %struct.obj* @cintern(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0))
  %call42 = call %struct.obj* @cintern(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0))
  %call43 = call %struct.obj* @setvar(%struct.obj* %call41, %struct.obj* %call42, %struct.obj* null)
  call void @gc_protect_sym(%struct.obj** @sym_errobj, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0))
  %34 = load %struct.obj*, %struct.obj** @sym_errobj, align 8
  %call44 = call %struct.obj* @setvar(%struct.obj* %34, %struct.obj* null, %struct.obj* null)
  call void @gc_protect_sym(%struct.obj** @sym_catchall, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0))
  call void @gc_protect_sym(%struct.obj** @sym_progn, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0))
  call void @gc_protect_sym(%struct.obj** @sym_lambda, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0))
  call void @gc_protect_sym(%struct.obj** @sym_quote, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0))
  call void @gc_protect_sym(%struct.obj** @sym_dot, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0))
  call void @gc_protect_sym(%struct.obj** @sym_after_gc, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0))
  %35 = load %struct.obj*, %struct.obj** @sym_after_gc, align 8
  %call45 = call %struct.obj* @setvar(%struct.obj* %35, %struct.obj* null, %struct.obj* null)
  call void @gc_protect_sym(%struct.obj** @sym_eval_history_ptr, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.70, i32 0, i32 0))
  %36 = load %struct.obj*, %struct.obj** @sym_eval_history_ptr, align 8
  %call46 = call %struct.obj* @setvar(%struct.obj* %36, %struct.obj* null, %struct.obj* null)
  %37 = load i64, i64* @inums_dim, align 8
  %cmp47 = icmp sgt i64 %37, 0
  br i1 %cmp47, label %if.then.48, label %if.end.71

if.then.48:                                       ; preds = %if.end.27
  %38 = load i64, i64* @inums_dim, align 8
  %mul49 = mul i64 8, %38
  %call50 = call i8* @must_malloc(i64 %mul49)
  %39 = bitcast i8* %call50 to %struct.obj**
  store %struct.obj** %39, %struct.obj*** @inums, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.68, %if.then.48
  %40 = load i64, i64* %j, align 8
  %41 = load i64, i64* @inums_dim, align 8
  %cmp52 = icmp slt i64 %40, %41
  br i1 %cmp52, label %for.body.53, label %for.end.70

for.body.53:                                      ; preds = %for.cond.51
  %42 = load i64, i64* @gc_kind_copying, align 8
  %cmp54 = icmp eq i64 %42, 1
  br i1 %cmp54, label %if.then.55, label %if.else.60

if.then.55:                                       ; preds = %for.body.53
  %43 = load %struct.obj*, %struct.obj** @heap, align 8
  store %struct.obj* %43, %struct.obj** %ptr, align 8
  %44 = load %struct.obj*, %struct.obj** @heap_end, align 8
  %cmp56 = icmp uge %struct.obj* %43, %44
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.then.55
  call void @gc_fatal_error()
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.then.55
  %45 = load %struct.obj*, %struct.obj** %ptr, align 8
  %add.ptr59 = getelementptr inbounds %struct.obj, %struct.obj* %45, i64 1
  store %struct.obj* %add.ptr59, %struct.obj** @heap, align 8
  br label %if.end.65

if.else.60:                                       ; preds = %for.body.53
  %46 = load %struct.obj*, %struct.obj** @freelist, align 8
  %cmp61 = icmp eq %struct.obj* %46, null
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.else.60
  call void @gc_for_newcell()
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %if.else.60
  %47 = load %struct.obj*, %struct.obj** @freelist, align 8
  store %struct.obj* %47, %struct.obj** %ptr, align 8
  %48 = load %struct.obj*, %struct.obj** @freelist, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %48, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  %49 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %49, %struct.obj** @freelist, align 8
  %50 = load i64, i64* @gc_cells_allocated, align 8
  %inc64 = add nsw i64 %50, 1
  store i64 %inc64, i64* @gc_cells_allocated, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.63, %if.end.58
  %51 = load %struct.obj*, %struct.obj** %ptr, align 8
  %gc_mark = getelementptr inbounds %struct.obj, %struct.obj* %51, i32 0, i32 0
  store i16 0, i16* %gc_mark, align 2
  %52 = load %struct.obj*, %struct.obj** %ptr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %52, i32 0, i32 1
  store i16 2, i16* %type, align 2
  %53 = load i64, i64* %j, align 8
  %conv = sitofp i64 %53 to double
  %54 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as66 = getelementptr inbounds %struct.obj, %struct.obj* %54, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as66 to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  store double %conv, double* %data, align 8
  %55 = load %struct.obj*, %struct.obj** %ptr, align 8
  %56 = load i64, i64* %j, align 8
  %57 = load %struct.obj**, %struct.obj*** @inums, align 8
  %arrayidx67 = getelementptr inbounds %struct.obj*, %struct.obj** %57, i64 %56
  store %struct.obj* %55, %struct.obj** %arrayidx67, align 8
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.65
  %58 = load i64, i64* %j, align 8
  %inc69 = add nsw i64 %58, 1
  store i64 %inc69, i64* %j, align 8
  br label %for.cond.51

for.end.70:                                       ; preds = %for.cond.51
  %59 = load %struct.obj**, %struct.obj*** @inums, align 8
  %60 = load i64, i64* @inums_dim, align 8
  call void @gc_protect_n(%struct.obj** %59, i64 %60)
  br label %if.end.71

if.end.71:                                        ; preds = %for.end.70, %if.end.27
  ret void
}

declare void @init_storage_a() #3

; Function Attrs: nounwind uwtable
define void @set_gc_hooks(i64 %type, %struct.obj* (%struct.obj*)* %rel, %struct.obj* (%struct.obj*)* %mark, void (%struct.obj*)* %scan, void (%struct.obj*)* %free, i64* %kind) #0 {
entry:
  %type.addr = alloca i64, align 8
  %rel.addr = alloca %struct.obj* (%struct.obj*)*, align 8
  %mark.addr = alloca %struct.obj* (%struct.obj*)*, align 8
  %scan.addr = alloca void (%struct.obj*)*, align 8
  %free.addr = alloca void (%struct.obj*)*, align 8
  %kind.addr = alloca i64*, align 8
  %p = alloca %struct.user_type_hooks*, align 8
  store i64 %type, i64* %type.addr, align 8
  store %struct.obj* (%struct.obj*)* %rel, %struct.obj* (%struct.obj*)** %rel.addr, align 8
  store %struct.obj* (%struct.obj*)* %mark, %struct.obj* (%struct.obj*)** %mark.addr, align 8
  store void (%struct.obj*)* %scan, void (%struct.obj*)** %scan.addr, align 8
  store void (%struct.obj*)* %free, void (%struct.obj*)** %free.addr, align 8
  store i64* %kind, i64** %kind.addr, align 8
  %0 = load i64, i64* %type.addr, align 8
  %call = call %struct.user_type_hooks* @get_user_type_hooks(i64 %0)
  store %struct.user_type_hooks* %call, %struct.user_type_hooks** %p, align 8
  %1 = load %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)** %rel.addr, align 8
  %2 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %gc_relocate = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %2, i32 0, i32 0
  store %struct.obj* (%struct.obj*)* %1, %struct.obj* (%struct.obj*)** %gc_relocate, align 8
  %3 = load void (%struct.obj*)*, void (%struct.obj*)** %scan.addr, align 8
  %4 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %gc_scan = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %4, i32 0, i32 1
  store void (%struct.obj*)* %3, void (%struct.obj*)** %gc_scan, align 8
  %5 = load %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)** %mark.addr, align 8
  %6 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %gc_mark = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %6, i32 0, i32 2
  store %struct.obj* (%struct.obj*)* %5, %struct.obj* (%struct.obj*)** %gc_mark, align 8
  %7 = load void (%struct.obj*)*, void (%struct.obj*)** %free.addr, align 8
  %8 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %gc_free = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %8, i32 0, i32 3
  store void (%struct.obj*)* %7, void (%struct.obj*)** %gc_free, align 8
  %9 = load i64, i64* @gc_kind_copying, align 8
  %10 = load i64*, i64** %kind.addr, align 8
  store i64 %9, i64* %10, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @file_gc_free(%struct.obj* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.obj*, align 8
  store %struct.obj* %ptr, %struct.obj** %ptr.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %0, i32 0, i32 2
  %c_file = bitcast %union.anon* %storage_as to %struct.anon.17*
  %f = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as1 = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 2
  %c_file2 = bitcast %union.anon* %storage_as1 to %struct.anon.17*
  %f3 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file2, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f3, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %3)
  %4 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as4 = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %c_file5 = bitcast %union.anon* %storage_as4 to %struct.anon.17*
  %f6 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file5, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %f6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as7 = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %c_file8 = bitcast %union.anon* %storage_as7 to %struct.anon.17*
  %name = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file8, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %tobool9 = icmp ne i8* %6, null
  br i1 %tobool9, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %if.end
  %7 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as11 = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 2
  %c_file12 = bitcast %union.anon* %storage_as11 to %struct.anon.17*
  %name13 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file12, i32 0, i32 1
  %8 = load i8*, i8** %name13, align 8
  call void @free(i8* %8) #6
  %9 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as14 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 2
  %c_file15 = bitcast %union.anon* %storage_as14 to %struct.anon.17*
  %name16 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file15, i32 0, i32 1
  store i8* null, i8** %name16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.10, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_print_hooks(i64 %type, void (%struct.obj*, %struct.gen_printio*)* %fcn) #0 {
entry:
  %type.addr = alloca i64, align 8
  %fcn.addr = alloca void (%struct.obj*, %struct.gen_printio*)*, align 8
  %p = alloca %struct.user_type_hooks*, align 8
  store i64 %type, i64* %type.addr, align 8
  store void (%struct.obj*, %struct.gen_printio*)* %fcn, void (%struct.obj*, %struct.gen_printio*)** %fcn.addr, align 8
  %0 = load i64, i64* %type.addr, align 8
  %call = call %struct.user_type_hooks* @get_user_type_hooks(i64 %0)
  store %struct.user_type_hooks* %call, %struct.user_type_hooks** %p, align 8
  %1 = load void (%struct.obj*, %struct.gen_printio*)*, void (%struct.obj*, %struct.gen_printio*)** %fcn.addr, align 8
  %2 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %prin1 = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %2, i32 0, i32 4
  store void (%struct.obj*, %struct.gen_printio*)* %1, void (%struct.obj*, %struct.gen_printio*)** %prin1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @file_prin1(%struct.obj* %ptr, %struct.gen_printio* %f) #0 {
entry:
  %ptr.addr = alloca %struct.obj*, align 8
  %f.addr = alloca %struct.gen_printio*, align 8
  %name = alloca i8*, align 8
  store %struct.obj* %ptr, %struct.obj** %ptr.addr, align 8
  store %struct.gen_printio* %f, %struct.gen_printio** %f.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %0, i32 0, i32 2
  %c_file = bitcast %union.anon* %storage_as to %struct.anon.17*
  %name1 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file, i32 0, i32 1
  %1 = load i8*, i8** %name1, align 8
  store i8* %1, i8** %name, align 8
  %2 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.149, i32 0, i32 0))
  %3 = load i8*, i8** @tkbuffer, align 8
  %4 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as2 = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %c_file3 = bitcast %union.anon* %storage_as2 to %struct.anon.17*
  %f4 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file3, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f4, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.150, i32 0, i32 0), %struct._IO_FILE* %5) #6
  %6 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %7 = load i8*, i8** @tkbuffer, align 8
  call void @gput_st(%struct.gen_printio* %6, i8* %7)
  %8 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.112, i32 0, i32 0))
  %10 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %11 = load i8*, i8** %name, align 8
  call void @gput_st(%struct.gen_printio* %10, i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.118, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_subr(i8* %name, i64 %type, %struct.obj* ()* %fcn) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %type.addr = alloca i64, align 8
  %fcn.addr = alloca %struct.obj* ()*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  store %struct.obj* ()* %fcn, %struct.obj* ()** %fcn.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct.obj* @cintern(i8* %0)
  %1 = load i64, i64* %type.addr, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load %struct.obj* ()*, %struct.obj* ()** %fcn.addr, align 8
  %call1 = call %struct.obj* @subrcons(i64 %1, i8* %2, %struct.obj* ()* %3)
  %call2 = call %struct.obj* @setvar(%struct.obj* %call, %struct.obj* %call1, %struct.obj* null)
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_subr_0(i8* %name, %struct.obj* ()* %fcn) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %fcn.addr = alloca %struct.obj* ()*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.obj* ()* %fcn, %struct.obj* ()** %fcn.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load %struct.obj* ()*, %struct.obj* ()** %fcn.addr, align 8
  call void @init_subr(i8* %0, i64 4, %struct.obj* ()* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_subr_1(i8* %name, %struct.obj* (%struct.obj*)* %fcn) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %fcn.addr = alloca %struct.obj* (%struct.obj*)*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.obj* (%struct.obj*)* %fcn, %struct.obj* (%struct.obj*)** %fcn.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)** %fcn.addr, align 8
  %2 = bitcast %struct.obj* (%struct.obj*)* %1 to %struct.obj* ()*
  call void @init_subr(i8* %0, i64 5, %struct.obj* ()* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_subr_2(i8* %name, %struct.obj* (%struct.obj*, %struct.obj*)* %fcn) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %fcn.addr = alloca %struct.obj* (%struct.obj*, %struct.obj*)*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.obj* (%struct.obj*, %struct.obj*)* %fcn, %struct.obj* (%struct.obj*, %struct.obj*)** %fcn.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load %struct.obj* (%struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*)** %fcn.addr, align 8
  %2 = bitcast %struct.obj* (%struct.obj*, %struct.obj*)* %1 to %struct.obj* ()*
  call void @init_subr(i8* %0, i64 6, %struct.obj* ()* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_subr_2n(i8* %name, %struct.obj* (%struct.obj*, %struct.obj*)* %fcn) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %fcn.addr = alloca %struct.obj* (%struct.obj*, %struct.obj*)*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.obj* (%struct.obj*, %struct.obj*)* %fcn, %struct.obj* (%struct.obj*, %struct.obj*)** %fcn.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load %struct.obj* (%struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*)** %fcn.addr, align 8
  %2 = bitcast %struct.obj* (%struct.obj*, %struct.obj*)* %1 to %struct.obj* ()*
  call void @init_subr(i8* %0, i64 21, %struct.obj* ()* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_subr_3(i8* %name, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* %fcn) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %fcn.addr = alloca %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* %fcn, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)** %fcn.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)** %fcn.addr, align 8
  %2 = bitcast %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* %1 to %struct.obj* ()*
  call void @init_subr(i8* %0, i64 7, %struct.obj* ()* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_subr_4(i8* %name, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)* %fcn) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %fcn.addr = alloca %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)* %fcn, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)** %fcn.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)** %fcn.addr, align 8
  %2 = bitcast %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)* %1 to %struct.obj* ()*
  call void @init_subr(i8* %0, i64 19, %struct.obj* ()* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_subr_5(i8* %name, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)* %fcn) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %fcn.addr = alloca %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)* %fcn, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)** %fcn.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)** %fcn.addr, align 8
  %2 = bitcast %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)* %1 to %struct.obj* ()*
  call void @init_subr(i8* %0, i64 20, %struct.obj* ()* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_lsubr(i8* %name, %struct.obj* (%struct.obj*)* %fcn) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %fcn.addr = alloca %struct.obj* (%struct.obj*)*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.obj* (%struct.obj*)* %fcn, %struct.obj* (%struct.obj*)** %fcn.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)** %fcn.addr, align 8
  %2 = bitcast %struct.obj* (%struct.obj*)* %1 to %struct.obj* ()*
  call void @init_subr(i8* %0, i64 8, %struct.obj* ()* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_fsubr(i8* %name, %struct.obj* (%struct.obj*, %struct.obj*)* %fcn) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %fcn.addr = alloca %struct.obj* (%struct.obj*, %struct.obj*)*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.obj* (%struct.obj*, %struct.obj*)* %fcn, %struct.obj* (%struct.obj*, %struct.obj*)** %fcn.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load %struct.obj* (%struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*)** %fcn.addr, align 8
  %2 = bitcast %struct.obj* (%struct.obj*, %struct.obj*)* %1 to %struct.obj* ()*
  call void @init_subr(i8* %0, i64 9, %struct.obj* ()* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_msubr(i8* %name, %struct.obj* (%struct.obj**, %struct.obj**)* %fcn) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %fcn.addr = alloca %struct.obj* (%struct.obj**, %struct.obj**)*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.obj* (%struct.obj**, %struct.obj**)* %fcn, %struct.obj* (%struct.obj**, %struct.obj**)** %fcn.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load %struct.obj* (%struct.obj**, %struct.obj**)*, %struct.obj* (%struct.obj**, %struct.obj**)** %fcn.addr, align 8
  %2 = bitcast %struct.obj* (%struct.obj**, %struct.obj**)* %1 to %struct.obj* ()*
  call void @init_subr(i8* %0, i64 10, %struct.obj* ()* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.obj* @assq(%struct.obj* %x, %struct.obj* %alist) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  %alist.addr = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  %tmp = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* %alist, %struct.obj** %alist.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  store %struct.obj* %0, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %l, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 1
  %3 = load i16, i16* %type, align 2
  %conv = sext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 1
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %5 = load %struct.obj*, %struct.obj** %car, align 8
  store %struct.obj* %5, %struct.obj** %tmp, align 8
  %6 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp3 = icmp eq %struct.obj* %6, null
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %for.body
  br label %cond.end.9

cond.false.6:                                     ; preds = %for.body
  %7 = load %struct.obj*, %struct.obj** %tmp, align 8
  %type7 = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 1
  %8 = load i16, i16* %type7, align 2
  %conv8 = sext i16 %8 to i32
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi i32 [ 0, %cond.true.5 ], [ %conv8, %cond.false.6 ]
  %cmp11 = icmp eq i32 %cond10, 1
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end.9
  %9 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as13 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 2
  %cons14 = bitcast %union.anon* %storage_as13 to %struct.anon*
  %car15 = getelementptr inbounds %struct.anon, %struct.anon* %cons14, i32 0, i32 0
  %10 = load %struct.obj*, %struct.obj** %car15, align 8
  %11 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp16 = icmp eq %struct.obj* %10, %11
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.obj*, %struct.obj** %tmp, align 8
  store %struct.obj* %12, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %cond.end.9
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as18 = getelementptr inbounds %struct.obj, %struct.obj* %13, i32 0, i32 2
  %cons19 = bitcast %union.anon* %storage_as18 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons19, i32 0, i32 1
  %14 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %14, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %15 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp20 = icmp eq %struct.obj* %15, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.23:                                        ; preds = %for.end
  %16 = load %struct.obj*, %struct.obj** %alist.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i32 0, i32 0), %struct.obj* %16)
  store %struct.obj* %call, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then
  %17 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %17
}

; Function Attrs: nounwind uwtable
define %struct.user_type_hooks* @get_user_type_hooks(i64 %type) #0 {
entry:
  %retval = alloca %struct.user_type_hooks*, align 8
  %type.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store i64 %type, i64* %type.addr, align 8
  %0 = load %struct.user_type_hooks*, %struct.user_type_hooks** @user_types, align 8
  %cmp = icmp eq %struct.user_type_hooks* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 8000, i64* %n, align 8
  %1 = load i64, i64* %n, align 8
  %call = call i8* @must_malloc(i64 %1)
  %2 = bitcast i8* %call to %struct.user_type_hooks*
  store %struct.user_type_hooks* %2, %struct.user_type_hooks** @user_types, align 8
  %3 = load %struct.user_type_hooks*, %struct.user_type_hooks** @user_types, align 8
  %4 = bitcast %struct.user_type_hooks* %3 to i8*
  %5 = load i64, i64* %n, align 8
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %5, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, i64* %type.addr, align 8
  %cmp1 = icmp sge i64 %6, 0
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, i64* %type.addr, align 8
  %cmp2 = icmp slt i64 %7, 100
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load i64, i64* %type.addr, align 8
  %9 = load %struct.user_type_hooks*, %struct.user_type_hooks** @user_types, align 8
  %arrayidx = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %9, i64 %8
  store %struct.user_type_hooks* %arrayidx, %struct.user_type_hooks** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end
  %call4 = call %struct.obj* @err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.72, i32 0, i32 0), %struct.obj* null)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else
  store %struct.user_type_hooks* null, %struct.user_type_hooks** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3
  %10 = load %struct.user_type_hooks*, %struct.user_type_hooks** %retval
  ret %struct.user_type_hooks* %10
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define i64 @allocate_user_tc() #0 {
entry:
  %x = alloca i64, align 8
  %0 = load i64, i64* @user_tc_next, align 8
  store i64 %0, i64* %x, align 8
  %1 = load i64, i64* %x, align 8
  %cmp = icmp sgt i64 %1, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.73, i32 0, i32 0), %struct.obj* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* @user_tc_next, align 8
  %inc = add nsw i64 %2, 1
  store i64 %inc, i64* @user_tc_next, align 8
  %3 = load i64, i64* %x, align 8
  ret i64 %3
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define %struct.obj* @get_newspace() #0 {
entry:
  %newspace = alloca %struct.obj*, align 8
  %0 = load %struct.obj*, %struct.obj** @heap_org, align 8
  %1 = load %struct.obj**, %struct.obj*** @heaps, align 8
  %arrayidx = getelementptr inbounds %struct.obj*, %struct.obj** %1, i64 0
  %2 = load %struct.obj*, %struct.obj** %arrayidx, align 8
  %cmp = icmp eq %struct.obj* %0, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.obj**, %struct.obj*** @heaps, align 8
  %arrayidx1 = getelementptr inbounds %struct.obj*, %struct.obj** %3, i64 1
  %4 = load %struct.obj*, %struct.obj** %arrayidx1, align 8
  store %struct.obj* %4, %struct.obj** %newspace, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.obj**, %struct.obj*** @heaps, align 8
  %arrayidx2 = getelementptr inbounds %struct.obj*, %struct.obj** %5, i64 0
  %6 = load %struct.obj*, %struct.obj** %arrayidx2, align 8
  store %struct.obj* %6, %struct.obj** %newspace, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.obj*, %struct.obj** %newspace, align 8
  store %struct.obj* %7, %struct.obj** @heap, align 8
  %8 = load %struct.obj*, %struct.obj** @heap, align 8
  store %struct.obj* %8, %struct.obj** @heap_org, align 8
  %9 = load %struct.obj*, %struct.obj** @heap, align 8
  %10 = load i64, i64* @heap_size, align 8
  %add.ptr = getelementptr inbounds %struct.obj, %struct.obj* %9, i64 %10
  store %struct.obj* %add.ptr, %struct.obj** @heap_end, align 8
  %11 = load %struct.obj*, %struct.obj** %newspace, align 8
  ret %struct.obj* %11
}

; Function Attrs: nounwind uwtable
define void @scan_newspace(%struct.obj* %newspace) #0 {
entry:
  %newspace.addr = alloca %struct.obj*, align 8
  %ptr = alloca %struct.obj*, align 8
  %p = alloca %struct.user_type_hooks*, align 8
  store %struct.obj* %newspace, %struct.obj** %newspace.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %newspace.addr, align 8
  store %struct.obj* %0, %struct.obj** %ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %ptr, align 8
  %2 = load %struct.obj*, %struct.obj** @heap, align 8
  %cmp = icmp ult %struct.obj* %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.obj*, %struct.obj** %ptr, align 8
  %cmp1 = icmp eq %struct.obj* %3, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %4 = load %struct.obj*, %struct.obj** %ptr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 1
  %5 = load i16, i16* %type, align 2
  %conv = sext i16 %5 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 1, label %sw.bb
    i32 11, label %sw.bb
    i32 3, label %sw.bb.11
    i32 2, label %sw.bb.17
    i32 4, label %sw.bb.17
    i32 5, label %sw.bb.17
    i32 6, label %sw.bb.17
    i32 21, label %sw.bb.17
    i32 7, label %sw.bb.17
    i32 19, label %sw.bb.17
    i32 20, label %sw.bb.17
    i32 8, label %sw.bb.17
    i32 9, label %sw.bb.17
    i32 10, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %cond.end, %cond.end
  %6 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %7 = load %struct.obj*, %struct.obj** %car, align 8
  %call = call %struct.obj* @gc_relocate(%struct.obj* %7)
  %8 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as2 = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %cons3 = bitcast %union.anon* %storage_as2 to %struct.anon*
  %car4 = getelementptr inbounds %struct.anon, %struct.anon* %cons3, i32 0, i32 0
  store %struct.obj* %call, %struct.obj** %car4, align 8
  %9 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as5 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 2
  %cons6 = bitcast %union.anon* %storage_as5 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons6, i32 0, i32 1
  %10 = load %struct.obj*, %struct.obj** %cdr, align 8
  %call7 = call %struct.obj* @gc_relocate(%struct.obj* %10)
  %11 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as8 = getelementptr inbounds %struct.obj, %struct.obj* %11, i32 0, i32 2
  %cons9 = bitcast %union.anon* %storage_as8 to %struct.anon*
  %cdr10 = getelementptr inbounds %struct.anon, %struct.anon* %cons9, i32 0, i32 1
  store %struct.obj* %call7, %struct.obj** %cdr10, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %cond.end
  %12 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as12 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 2
  %symbol = bitcast %union.anon* %storage_as12 to %struct.anon.1*
  %vcell = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol, i32 0, i32 1
  %13 = load %struct.obj*, %struct.obj** %vcell, align 8
  %call13 = call %struct.obj* @gc_relocate(%struct.obj* %13)
  %14 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as14 = getelementptr inbounds %struct.obj, %struct.obj* %14, i32 0, i32 2
  %symbol15 = bitcast %union.anon* %storage_as14 to %struct.anon.1*
  %vcell16 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol15, i32 0, i32 1
  store %struct.obj* %call13, %struct.obj** %vcell16, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %15 = load %struct.obj*, %struct.obj** %ptr, align 8
  %cmp18 = icmp eq %struct.obj* %15, null
  br i1 %cmp18, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %sw.default
  br label %cond.end.24

cond.false.21:                                    ; preds = %sw.default
  %16 = load %struct.obj*, %struct.obj** %ptr, align 8
  %type22 = getelementptr inbounds %struct.obj, %struct.obj* %16, i32 0, i32 1
  %17 = load i16, i16* %type22, align 2
  %conv23 = sext i16 %17 to i32
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.21, %cond.true.20
  %cond25 = phi i32 [ 0, %cond.true.20 ], [ %conv23, %cond.false.21 ]
  %conv26 = sext i32 %cond25 to i64
  %call27 = call %struct.user_type_hooks* @get_user_type_hooks(i64 %conv26)
  store %struct.user_type_hooks* %call27, %struct.user_type_hooks** %p, align 8
  %18 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %gc_scan = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %18, i32 0, i32 1
  %19 = load void (%struct.obj*)*, void (%struct.obj*)** %gc_scan, align 8
  %tobool = icmp ne void (%struct.obj*)* %19, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.24
  %20 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %gc_scan28 = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %20, i32 0, i32 1
  %21 = load void (%struct.obj*)*, void (%struct.obj*)** %gc_scan28, align 8
  %22 = load %struct.obj*, %struct.obj** %ptr, align 8
  call void %21(%struct.obj* %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.24
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.17, %sw.bb.11, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %23 = load %struct.obj*, %struct.obj** %ptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.obj, %struct.obj* %23, i32 1
  store %struct.obj* %incdec.ptr, %struct.obj** %ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_oldspace(%struct.obj* %space, %struct.obj* %end) #0 {
entry:
  %space.addr = alloca %struct.obj*, align 8
  %end.addr = alloca %struct.obj*, align 8
  %ptr = alloca %struct.obj*, align 8
  %p = alloca %struct.user_type_hooks*, align 8
  store %struct.obj* %space, %struct.obj** %space.addr, align 8
  store %struct.obj* %end, %struct.obj** %end.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %space.addr, align 8
  store %struct.obj* %0, %struct.obj** %ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %ptr, align 8
  %2 = load %struct.obj*, %struct.obj** %end.addr, align 8
  %cmp = icmp ult %struct.obj* %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.obj*, %struct.obj** %ptr, align 8
  %gc_mark = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 0
  %4 = load i16, i16* %gc_mark, align 2
  %conv = sext i16 %4 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end.17

if.then:                                          ; preds = %for.body
  %5 = load %struct.obj*, %struct.obj** %ptr, align 8
  %cmp3 = icmp eq %struct.obj* %5, null
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %6 = load %struct.obj*, %struct.obj** %ptr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 1
  %7 = load i16, i16* %type, align 2
  %conv5 = sext i16 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv5, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 1, label %sw.bb
    i32 11, label %sw.bb
    i32 3, label %sw.bb
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 21, label %sw.bb
    i32 7, label %sw.bb
    i32 19, label %sw.bb
    i32 20, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
  ]

sw.bb:                                            ; preds = %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %8 = load %struct.obj*, %struct.obj** %ptr, align 8
  %cmp6 = icmp eq %struct.obj* %8, null
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %sw.default
  br label %cond.end.12

cond.false.9:                                     ; preds = %sw.default
  %9 = load %struct.obj*, %struct.obj** %ptr, align 8
  %type10 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 1
  %10 = load i16, i16* %type10, align 2
  %conv11 = sext i16 %10 to i32
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.9, %cond.true.8
  %cond13 = phi i32 [ 0, %cond.true.8 ], [ %conv11, %cond.false.9 ]
  %conv14 = sext i32 %cond13 to i64
  %call = call %struct.user_type_hooks* @get_user_type_hooks(i64 %conv14)
  store %struct.user_type_hooks* %call, %struct.user_type_hooks** %p, align 8
  %11 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %gc_free = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %11, i32 0, i32 3
  %12 = load void (%struct.obj*)*, void (%struct.obj*)** %gc_free, align 8
  %tobool = icmp ne void (%struct.obj*)* %12, null
  br i1 %tobool, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %cond.end.12
  %13 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %gc_free16 = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %13, i32 0, i32 3
  %14 = load void (%struct.obj*)*, void (%struct.obj*)** %gc_free16, align 8
  %15 = load %struct.obj*, %struct.obj** %ptr, align 8
  call void %14(%struct.obj* %15)
  br label %if.end

if.end:                                           ; preds = %if.then.15, %cond.end.12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb
  br label %if.end.17

if.end.17:                                        ; preds = %sw.epilog, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %16 = load %struct.obj*, %struct.obj** %ptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.obj, %struct.obj* %16, i32 1
  store %struct.obj* %incdec.ptr, %struct.obj** %ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.obj* @allocate_aheap() #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %j = alloca i64, align 8
  %flag = alloca i64, align 8
  %ptr = alloca %struct.obj*, align 8
  %end = alloca %struct.obj*, align 8
  %next = alloca %struct.obj*, align 8
  call void @gc_kind_check()
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %j, align 8
  %1 = load i64, i64* @nheaps, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %j, align 8
  %3 = load %struct.obj**, %struct.obj*** @heaps, align 8
  %arrayidx = getelementptr inbounds %struct.obj*, %struct.obj** %3, i64 %2
  %4 = load %struct.obj*, %struct.obj** %arrayidx, align 8
  %tobool = icmp ne %struct.obj* %4, null
  br i1 %tobool, label %if.end.18, label %if.then

if.then:                                          ; preds = %for.body
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %flag, align 8
  %5 = load i64, i64* @gc_status_flag, align 8
  %tobool1 = icmp ne i64 %5, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %6 = load i64, i64* @siod_verbose_level, align 8
  %cmp2 = icmp sge i64 %6, 4
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %land.lhs.true
  %7 = load i64, i64* %j, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i32 0, i32 0), i64 %7)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %land.lhs.true, %if.then
  %8 = load i64, i64* @heap_size, align 8
  %mul = mul i64 24, %8
  %call5 = call i8* @must_malloc(i64 %mul)
  %9 = bitcast i8* %call5 to %struct.obj*
  %10 = load i64, i64* %j, align 8
  %11 = load %struct.obj**, %struct.obj*** @heaps, align 8
  %arrayidx6 = getelementptr inbounds %struct.obj*, %struct.obj** %11, i64 %10
  store %struct.obj* %9, %struct.obj** %arrayidx6, align 8
  %12 = load i64, i64* %j, align 8
  %13 = load %struct.obj**, %struct.obj*** @heaps, align 8
  %arrayidx7 = getelementptr inbounds %struct.obj*, %struct.obj** %13, i64 %12
  %14 = load %struct.obj*, %struct.obj** %arrayidx7, align 8
  store %struct.obj* %14, %struct.obj** %ptr, align 8
  %15 = load i64, i64* %j, align 8
  %16 = load %struct.obj**, %struct.obj*** @heaps, align 8
  %arrayidx8 = getelementptr inbounds %struct.obj*, %struct.obj** %16, i64 %15
  %17 = load %struct.obj*, %struct.obj** %arrayidx8, align 8
  %18 = load i64, i64* @heap_size, align 8
  %add.ptr = getelementptr inbounds %struct.obj, %struct.obj* %17, i64 %18
  store %struct.obj* %add.ptr, %struct.obj** %end, align 8
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end.15
  %19 = load %struct.obj*, %struct.obj** %ptr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %19, i32 0, i32 1
  store i16 12, i16* %type, align 2
  %20 = load %struct.obj*, %struct.obj** %ptr, align 8
  %add.ptr9 = getelementptr inbounds %struct.obj, %struct.obj* %20, i64 1
  store %struct.obj* %add.ptr9, %struct.obj** %next, align 8
  %21 = load %struct.obj*, %struct.obj** %next, align 8
  %22 = load %struct.obj*, %struct.obj** %end, align 8
  %cmp10 = icmp ult %struct.obj* %21, %22
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %while.body
  %23 = load %struct.obj*, %struct.obj** %next, align 8
  %24 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %24, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  store %struct.obj* %23, %struct.obj** %cdr, align 8
  %25 = load %struct.obj*, %struct.obj** %next, align 8
  store %struct.obj* %25, %struct.obj** %ptr, align 8
  br label %if.end.15

if.else:                                          ; preds = %while.body
  %26 = load %struct.obj*, %struct.obj** @freelist, align 8
  %27 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as12 = getelementptr inbounds %struct.obj, %struct.obj* %27, i32 0, i32 2
  %cons13 = bitcast %union.anon* %storage_as12 to %struct.anon*
  %cdr14 = getelementptr inbounds %struct.anon, %struct.anon* %cons13, i32 0, i32 1
  store %struct.obj* %26, %struct.obj** %cdr14, align 8
  br label %while.end

if.end.15:                                        ; preds = %if.then.11
  br label %while.body

while.end:                                        ; preds = %if.else
  %28 = load i64, i64* %j, align 8
  %29 = load %struct.obj**, %struct.obj*** @heaps, align 8
  %arrayidx16 = getelementptr inbounds %struct.obj*, %struct.obj** %29, i64 %28
  %30 = load %struct.obj*, %struct.obj** %arrayidx16, align 8
  store %struct.obj* %30, %struct.obj** @freelist, align 8
  %31 = load i64, i64* %flag, align 8
  %call17 = call i64 @no_interrupt(i64 %31)
  store i64 %call17, i64* %flag, align 8
  %32 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %32, %struct.obj** %retval
  br label %return

if.end.18:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %33 = load i64, i64* %j, align 8
  %inc = add nsw i64 %33, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %for.end, %while.end
  %34 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %34
}

; Function Attrs: nounwind uwtable
define void @gc_kind_check() #0 {
entry:
  %0 = load i64, i64* @gc_kind_copying, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.77, i32 0, i32 0), %struct.obj* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gc_mark_and_sweep() #0 {
entry:
  %stack_end = alloca %struct.obj*, align 8
  call void @gc_ms_stats_start()
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.obj*, %struct.obj** @heap, align 8
  %1 = load %struct.obj*, %struct.obj** @heap_end, align 8
  %cmp = icmp ult %struct.obj* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.obj*, %struct.obj** @heap, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 1
  store i16 12, i16* %type, align 2
  %3 = load %struct.obj*, %struct.obj** @heap, align 8
  %gc_mark = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 0
  store i16 0, i16* %gc_mark, align 2
  %4 = load %struct.obj*, %struct.obj** @heap, align 8
  %incdec.ptr = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 1
  store %struct.obj* %incdec.ptr, %struct.obj** @heap, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @save_regs_gc_mark, i32 0, i32 0)) #10
  call void @mark_locations(%struct.obj** bitcast ([1 x %struct.__jmp_buf_tag]* @save_regs_gc_mark to %struct.obj**), %struct.obj** bitcast (i8* getelementptr inbounds (i8, i8* bitcast ([1 x %struct.__jmp_buf_tag]* @save_regs_gc_mark to i8*), i64 200) to %struct.obj**))
  call void @mark_protected_registers()
  %5 = load %struct.obj**, %struct.obj*** @stack_start_ptr, align 8
  call void @mark_locations(%struct.obj** %5, %struct.obj** %stack_end)
  call void @gc_sweep()
  call void @gc_ms_stats_end()
  ret void
}

; Function Attrs: nounwind uwtable
define void @gc_ms_stats_start() #0 {
entry:
  %call = call double @myruntime()
  store double %call, double* @gc_rt, align 8
  store i64 0, i64* @gc_cells_collected, align 8
  %0 = load i64, i64* @gc_status_flag, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* @siod_verbose_level, align 8
  %cmp = icmp sge i64 %1, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @mark_locations(%struct.obj** %start, %struct.obj** %end) #0 {
entry:
  %start.addr = alloca %struct.obj**, align 8
  %end.addr = alloca %struct.obj**, align 8
  %tmp = alloca %struct.obj**, align 8
  %n = alloca i64, align 8
  store %struct.obj** %start, %struct.obj*** %start.addr, align 8
  store %struct.obj** %end, %struct.obj*** %end.addr, align 8
  %0 = load %struct.obj**, %struct.obj*** %start.addr, align 8
  %1 = load %struct.obj**, %struct.obj*** %end.addr, align 8
  %cmp = icmp ugt %struct.obj** %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.obj**, %struct.obj*** %start.addr, align 8
  store %struct.obj** %2, %struct.obj*** %tmp, align 8
  %3 = load %struct.obj**, %struct.obj*** %end.addr, align 8
  store %struct.obj** %3, %struct.obj*** %start.addr, align 8
  %4 = load %struct.obj**, %struct.obj*** %tmp, align 8
  store %struct.obj** %4, %struct.obj*** %end.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.obj**, %struct.obj*** %end.addr, align 8
  %6 = load %struct.obj**, %struct.obj*** %start.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.obj** %5 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.obj** %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %n, align 8
  %7 = load %struct.obj**, %struct.obj*** %start.addr, align 8
  %8 = load i64, i64* %n, align 8
  call void @mark_locations_array(%struct.obj** %7, i64 %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @mark_protected_registers() #0 {
entry:
  %reg = alloca %struct.gc_protected*, align 8
  %location = alloca %struct.obj**, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %0 = load %struct.gc_protected*, %struct.gc_protected** @protected_registers, align 8
  store %struct.gc_protected* %0, %struct.gc_protected** %reg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.4, %entry
  %1 = load %struct.gc_protected*, %struct.gc_protected** %reg, align 8
  %tobool = icmp ne %struct.gc_protected* %1, null
  br i1 %tobool, label %for.body, label %for.end.5

for.body:                                         ; preds = %for.cond
  %2 = load %struct.gc_protected*, %struct.gc_protected** %reg, align 8
  %location1 = getelementptr inbounds %struct.gc_protected, %struct.gc_protected* %2, i32 0, i32 0
  %3 = load %struct.obj**, %struct.obj*** %location1, align 8
  store %struct.obj** %3, %struct.obj*** %location, align 8
  %4 = load %struct.gc_protected*, %struct.gc_protected** %reg, align 8
  %length = getelementptr inbounds %struct.gc_protected, %struct.gc_protected* %4, i32 0, i32 1
  %5 = load i64, i64* %length, align 8
  store i64 %5, i64* %n, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %6 = load i64, i64* %j, align 8
  %7 = load i64, i64* %n, align 8
  %cmp = icmp slt i64 %6, %7
  br i1 %cmp, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.2
  %8 = load i64, i64* %j, align 8
  %9 = load %struct.obj**, %struct.obj*** %location, align 8
  %arrayidx = getelementptr inbounds %struct.obj*, %struct.obj** %9, i64 %8
  %10 = load %struct.obj*, %struct.obj** %arrayidx, align 8
  call void @gc_mark(%struct.obj* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %11 = load i64, i64* %j, align 8
  %inc = add nsw i64 %11, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.end
  %12 = load %struct.gc_protected*, %struct.gc_protected** %reg, align 8
  %next = getelementptr inbounds %struct.gc_protected, %struct.gc_protected* %12, i32 0, i32 2
  %13 = load %struct.gc_protected*, %struct.gc_protected** %next, align 8
  store %struct.gc_protected* %13, %struct.gc_protected** %reg, align 8
  br label %for.cond

for.end.5:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gc_sweep() #0 {
entry:
  %ptr = alloca %struct.obj*, align 8
  %end = alloca %struct.obj*, align 8
  %nfreelist = alloca %struct.obj*, align 8
  %org = alloca %struct.obj*, align 8
  %n = alloca i64, align 8
  %k = alloca i64, align 8
  %p = alloca %struct.user_type_hooks*, align 8
  %0 = load %struct.obj*, %struct.obj** @heap_end, align 8
  store %struct.obj* %0, %struct.obj** %end, align 8
  store i64 0, i64* %n, align 8
  store %struct.obj* null, %struct.obj** %nfreelist, align 8
  store i64 0, i64* %k, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %entry
  %1 = load i64, i64* %k, align 8
  %2 = load i64, i64* @nheaps, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %k, align 8
  %4 = load %struct.obj**, %struct.obj*** @heaps, align 8
  %arrayidx = getelementptr inbounds %struct.obj*, %struct.obj** %4, i64 %3
  %5 = load %struct.obj*, %struct.obj** %arrayidx, align 8
  %tobool = icmp ne %struct.obj* %5, null
  br i1 %tobool, label %if.then, label %if.end.20

if.then:                                          ; preds = %for.body
  %6 = load i64, i64* %k, align 8
  %7 = load %struct.obj**, %struct.obj*** @heaps, align 8
  %arrayidx1 = getelementptr inbounds %struct.obj*, %struct.obj** %7, i64 %6
  %8 = load %struct.obj*, %struct.obj** %arrayidx1, align 8
  store %struct.obj* %8, %struct.obj** %org, align 8
  %9 = load %struct.obj*, %struct.obj** %org, align 8
  %10 = load i64, i64* @heap_size, align 8
  %add.ptr = getelementptr inbounds %struct.obj, %struct.obj* %9, i64 %10
  store %struct.obj* %add.ptr, %struct.obj** %end, align 8
  %11 = load %struct.obj*, %struct.obj** %org, align 8
  store %struct.obj* %11, %struct.obj** %ptr, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %if.then
  %12 = load %struct.obj*, %struct.obj** %ptr, align 8
  %13 = load %struct.obj*, %struct.obj** %end, align 8
  %cmp3 = icmp ult %struct.obj* %12, %13
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %14 = load %struct.obj*, %struct.obj** %ptr, align 8
  %gc_mark = getelementptr inbounds %struct.obj, %struct.obj* %14, i32 0, i32 0
  %15 = load i16, i16* %gc_mark, align 2
  %conv = sext i16 %15 to i32
  %cmp5 = icmp eq i32 %conv, 0
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %for.body.4
  %16 = load %struct.obj*, %struct.obj** %ptr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %16, i32 0, i32 1
  %17 = load i16, i16* %type, align 2
  %conv8 = sext i16 %17 to i32
  switch i32 %conv8, label %sw.default [
    i32 12, label %sw.bb
    i32 1, label %sw.bb
    i32 11, label %sw.bb
    i32 3, label %sw.bb
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 21, label %sw.bb
    i32 7, label %sw.bb
    i32 19, label %sw.bb
    i32 20, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.7, %if.then.7, %if.then.7, %if.then.7, %if.then.7, %if.then.7, %if.then.7, %if.then.7, %if.then.7, %if.then.7, %if.then.7, %if.then.7, %if.then.7, %if.then.7, %if.then.7
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.7
  %18 = load %struct.obj*, %struct.obj** %ptr, align 8
  %cmp9 = icmp eq %struct.obj* %18, null
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.default
  br label %cond.end

cond.false:                                       ; preds = %sw.default
  %19 = load %struct.obj*, %struct.obj** %ptr, align 8
  %type11 = getelementptr inbounds %struct.obj, %struct.obj* %19, i32 0, i32 1
  %20 = load i16, i16* %type11, align 2
  %conv12 = sext i16 %20 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv12, %cond.false ]
  %conv13 = sext i32 %cond to i64
  %call = call %struct.user_type_hooks* @get_user_type_hooks(i64 %conv13)
  store %struct.user_type_hooks* %call, %struct.user_type_hooks** %p, align 8
  %21 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %gc_free = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %21, i32 0, i32 3
  %22 = load void (%struct.obj*)*, void (%struct.obj*)** %gc_free, align 8
  %tobool14 = icmp ne void (%struct.obj*)* %22, null
  br i1 %tobool14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %cond.end
  %23 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %gc_free16 = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %23, i32 0, i32 3
  %24 = load void (%struct.obj*)*, void (%struct.obj*)** %gc_free16, align 8
  %25 = load %struct.obj*, %struct.obj** %ptr, align 8
  call void %24(%struct.obj* %25)
  br label %if.end

if.end:                                           ; preds = %if.then.15, %cond.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb
  %26 = load i64, i64* %n, align 8
  %inc = add nsw i64 %26, 1
  store i64 %inc, i64* %n, align 8
  %27 = load %struct.obj*, %struct.obj** %ptr, align 8
  %type17 = getelementptr inbounds %struct.obj, %struct.obj* %27, i32 0, i32 1
  store i16 12, i16* %type17, align 2
  %28 = load %struct.obj*, %struct.obj** %nfreelist, align 8
  %29 = load %struct.obj*, %struct.obj** %ptr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %29, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  store %struct.obj* %28, %struct.obj** %cdr, align 8
  %30 = load %struct.obj*, %struct.obj** %ptr, align 8
  store %struct.obj* %30, %struct.obj** %nfreelist, align 8
  br label %if.end.19

if.else:                                          ; preds = %for.body.4
  %31 = load %struct.obj*, %struct.obj** %ptr, align 8
  %gc_mark18 = getelementptr inbounds %struct.obj, %struct.obj* %31, i32 0, i32 0
  store i16 0, i16* %gc_mark18, align 2
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %32 = load %struct.obj*, %struct.obj** %ptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.obj, %struct.obj* %32, i32 1
  store %struct.obj* %incdec.ptr, %struct.obj** %ptr, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %if.end.20

if.end.20:                                        ; preds = %for.end, %for.body
  br label %for.inc.21

for.inc.21:                                       ; preds = %if.end.20
  %33 = load i64, i64* %k, align 8
  %inc22 = add nsw i64 %33, 1
  store i64 %inc22, i64* %k, align 8
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  %34 = load i64, i64* %n, align 8
  store i64 %34, i64* @gc_cells_collected, align 8
  %35 = load %struct.obj*, %struct.obj** %nfreelist, align 8
  store %struct.obj* %35, %struct.obj** @freelist, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gc_ms_stats_end() #0 {
entry:
  %call = call double @myruntime()
  %0 = load double, double* @gc_rt, align 8
  %sub = fsub double %call, %0
  store double %sub, double* @gc_rt, align 8
  %1 = load double, double* @gc_time_taken, align 8
  %2 = load double, double* @gc_rt, align 8
  %add = fadd double %1, %2
  store double %add, double* @gc_time_taken, align 8
  %3 = load i64, i64* @gc_status_flag, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i64, i64* @siod_verbose_level, align 8
  %cmp = icmp sge i64 %4, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load double, double* @gc_rt, align 8
  %6 = load i64, i64* @gc_cells_collected, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.76, i32 0, i32 0), double %5, i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gc_mark(%struct.obj* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.obj*, align 8
  %p = alloca %struct.user_type_hooks*, align 8
  store %struct.obj* %ptr, %struct.obj** %ptr.addr, align 8
  br label %gc_mark_loop

gc_mark_loop:                                     ; preds = %sw.bb.9, %sw.bb.7, %sw.bb.4, %entry
  %0 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %gc_mark_loop
  br label %sw.epilog

if.end:                                           ; preds = %gc_mark_loop
  %1 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %gc_mark = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 0
  %2 = load i16, i16* %gc_mark, align 2
  %tobool = icmp ne i16 %2, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  br label %sw.epilog

if.end.2:                                         ; preds = %if.end
  %3 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %gc_mark3 = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 0
  store i16 1, i16* %gc_mark3, align 2
  %4 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 1
  %5 = load i16, i16* %type, align 2
  %conv = sext i16 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.4
    i32 3, label %sw.bb.7
    i32 11, label %sw.bb.9
    i32 4, label %sw.bb.13
    i32 5, label %sw.bb.13
    i32 6, label %sw.bb.13
    i32 21, label %sw.bb.13
    i32 7, label %sw.bb.13
    i32 19, label %sw.bb.13
    i32 20, label %sw.bb.13
    i32 8, label %sw.bb.13
    i32 9, label %sw.bb.13
    i32 10, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %if.end.2
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end.2
  %6 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %7 = load %struct.obj*, %struct.obj** %car, align 8
  call void @gc_mark(%struct.obj* %7)
  %8 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as5 = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %cons6 = bitcast %union.anon* %storage_as5 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons6, i32 0, i32 1
  %9 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %9, %struct.obj** %ptr.addr, align 8
  br label %gc_mark_loop

sw.bb.7:                                          ; preds = %if.end.2
  %10 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as8 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %symbol = bitcast %union.anon* %storage_as8 to %struct.anon.1*
  %vcell = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol, i32 0, i32 1
  %11 = load %struct.obj*, %struct.obj** %vcell, align 8
  store %struct.obj* %11, %struct.obj** %ptr.addr, align 8
  br label %gc_mark_loop

sw.bb.9:                                          ; preds = %if.end.2
  %12 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as10 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 2
  %closure = bitcast %union.anon* %storage_as10 to %struct.anon.10*
  %code = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure, i32 0, i32 1
  %13 = load %struct.obj*, %struct.obj** %code, align 8
  call void @gc_mark(%struct.obj* %13)
  %14 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as11 = getelementptr inbounds %struct.obj, %struct.obj* %14, i32 0, i32 2
  %closure12 = bitcast %union.anon* %storage_as11 to %struct.anon.10*
  %env = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure12, i32 0, i32 0
  %15 = load %struct.obj*, %struct.obj** %env, align 8
  store %struct.obj* %15, %struct.obj** %ptr.addr, align 8
  br label %gc_mark_loop

sw.bb.13:                                         ; preds = %if.end.2, %if.end.2, %if.end.2, %if.end.2, %if.end.2, %if.end.2, %if.end.2, %if.end.2, %if.end.2, %if.end.2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.2
  %16 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %cmp14 = icmp eq %struct.obj* %16, null
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.default
  br label %cond.end

cond.false:                                       ; preds = %sw.default
  %17 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %type16 = getelementptr inbounds %struct.obj, %struct.obj* %17, i32 0, i32 1
  %18 = load i16, i16* %type16, align 2
  %conv17 = sext i16 %18 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv17, %cond.false ]
  %conv18 = sext i32 %cond to i64
  %call = call %struct.user_type_hooks* @get_user_type_hooks(i64 %conv18)
  store %struct.user_type_hooks* %call, %struct.user_type_hooks** %p, align 8
  %19 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %gc_mark19 = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %19, i32 0, i32 2
  %20 = load %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)** %gc_mark19, align 8
  %tobool20 = icmp ne %struct.obj* (%struct.obj*)* %20, null
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %cond.end
  %21 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %gc_mark22 = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %21, i32 0, i32 2
  %22 = load %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)** %gc_mark22, align 8
  %23 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %call23 = call %struct.obj* %22(%struct.obj* %23)
  store %struct.obj* %call23, %struct.obj** %ptr.addr, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %cond.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.then.1, %if.end.24, %sw.bb.13, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define void @mark_locations_array(%struct.obj** %x, i64 %n) #0 {
entry:
  %x.addr = alloca %struct.obj**, align 8
  %n.addr = alloca i64, align 8
  %j = alloca i32, align 4
  %p = alloca %struct.obj*, align 8
  store %struct.obj** %x, %struct.obj*** %x.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp slt i64 %conv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.obj**, %struct.obj*** %x.addr, align 8
  %arrayidx = getelementptr inbounds %struct.obj*, %struct.obj** %3, i64 %idxprom
  %4 = load %struct.obj*, %struct.obj** %arrayidx, align 8
  store %struct.obj* %4, %struct.obj** %p, align 8
  %5 = load %struct.obj*, %struct.obj** %p, align 8
  %call = call i64 @looks_pointerp(%struct.obj* %5)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct.obj*, %struct.obj** %p, align 8
  call void @gc_mark(%struct.obj* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @looks_pointerp(%struct.obj* %p) #0 {
entry:
  %retval = alloca i64, align 8
  %p.addr = alloca %struct.obj*, align 8
  %j = alloca i64, align 8
  %h = alloca %struct.obj*, align 8
  store %struct.obj* %p, %struct.obj** %p.addr, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %j, align 8
  %1 = load i64, i64* @nheaps, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %j, align 8
  %3 = load %struct.obj**, %struct.obj*** @heaps, align 8
  %arrayidx = getelementptr inbounds %struct.obj*, %struct.obj** %3, i64 %2
  %4 = load %struct.obj*, %struct.obj** %arrayidx, align 8
  store %struct.obj* %4, %struct.obj** %h, align 8
  %tobool = icmp ne %struct.obj* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %6 = load %struct.obj*, %struct.obj** %h, align 8
  %cmp1 = icmp uge %struct.obj* %5, %6
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %7 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %8 = load %struct.obj*, %struct.obj** %h, align 8
  %9 = load i64, i64* @heap_size, align 8
  %add.ptr = getelementptr inbounds %struct.obj, %struct.obj* %8, i64 %9
  %cmp3 = icmp ult %struct.obj* %7, %add.ptr
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %10 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %11 = bitcast %struct.obj* %10 to i8*
  %12 = load %struct.obj*, %struct.obj** %h, align 8
  %13 = bitcast %struct.obj* %12 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %rem = urem i64 %sub.ptr.sub, 24
  %cmp5 = icmp eq i64 %rem, 0
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true.4
  %14 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %cmp7 = icmp eq %struct.obj* %14, null
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.6
  %15 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %15, i32 0, i32 1
  %16 = load i16, i16* %type, align 2
  %conv = sext i16 %16 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp8 = icmp ne i32 %cond, 12
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i64 1, i64* %retval
  br label %return

if.end:                                           ; preds = %cond.end, %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i64, i64* %j, align 8
  %inc = add nsw i64 %17, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %18 = load i64, i64* %retval
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define %struct.obj* @user_gc(%struct.obj* %args) #0 {
entry:
  %args.addr = alloca %struct.obj*, align 8
  %old_status_flag = alloca i64, align 8
  %flag = alloca i64, align 8
  store %struct.obj* %args, %struct.obj** %args.addr, align 8
  call void @gc_kind_check()
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %flag, align 8
  store i64 0, i64* @errjmp_ok, align 8
  %0 = load i64, i64* @gc_status_flag, align 8
  store i64 %0, i64* %old_status_flag, align 8
  %1 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %cmp = icmp ne %struct.obj* %1, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call1 = call %struct.obj* @car(%struct.obj* %2)
  %cmp2 = icmp eq %struct.obj* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  store i64 0, i64* @gc_status_flag, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i64 1, i64* @gc_status_flag, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  call void @gc_mark_and_sweep()
  %3 = load i64, i64* %old_status_flag, align 8
  store i64 %3, i64* @gc_status_flag, align 8
  store i64 1, i64* @errjmp_ok, align 8
  %4 = load i64, i64* %flag, align 8
  %call5 = call i64 @no_interrupt(i64 %4)
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define i64 @nactive_heaps() #0 {
entry:
  %m = alloca i64, align 8
  store i64 0, i64* %m, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %m, align 8
  %1 = load i64, i64* @nheaps, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i64, i64* %m, align 8
  %3 = load %struct.obj**, %struct.obj*** @heaps, align 8
  %arrayidx = getelementptr inbounds %struct.obj*, %struct.obj** %3, i64 %2
  %4 = load %struct.obj*, %struct.obj** %arrayidx, align 8
  %tobool = icmp ne %struct.obj* %4, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %m, align 8
  %inc = add nsw i64 %6, 1
  store i64 %inc, i64* %m, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %7 = load i64, i64* %m, align 8
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define i64 @freelist_length() #0 {
entry:
  %n = alloca i64, align 8
  %l = alloca %struct.obj*, align 8
  store i64 0, i64* %n, align 8
  %0 = load %struct.obj*, %struct.obj** @freelist, align 8
  store %struct.obj* %0, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp ne %struct.obj* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  %3 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %3, %struct.obj** %l, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, i64* %n, align 8
  %inc = add nsw i64 %4, 1
  store i64 %inc, i64* %n, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct.obj*, %struct.obj** @heap_end, align 8
  %6 = load %struct.obj*, %struct.obj** @heap, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.obj* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.obj* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  %7 = load i64, i64* %n, align 8
  %add = add nsw i64 %7, %sub.ptr.div
  store i64 %add, i64* %n, align 8
  %8 = load i64, i64* %n, align 8
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define %struct.obj* @gc_status(%struct.obj* %args) #0 {
entry:
  %args.addr = alloca %struct.obj*, align 8
  %n = alloca i64, align 8
  %m = alloca i64, align 8
  store %struct.obj* %args, %struct.obj** %args.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %cmp = icmp ne %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %1)
  %cmp1 = icmp eq %struct.obj* %call, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store i64 0, i64* @gc_status_flag, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i64 1, i64* @gc_status_flag, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %2 = load i64, i64* @gc_kind_copying, align 8
  %cmp4 = icmp eq i64 %2, 1
  br i1 %cmp4, label %if.then.5, label %if.else.14

if.then.5:                                        ; preds = %if.end.3
  %3 = load i64, i64* @gc_status_flag, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.then.5
  call void @put_st(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.78, i32 0, i32 0))
  br label %if.end.8

if.else.7:                                        ; preds = %if.then.5
  call void @put_st(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.79, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.then.6
  %4 = load i8*, i8** @tkbuffer, align 8
  %5 = load %struct.obj*, %struct.obj** @heap, align 8
  %6 = load %struct.obj*, %struct.obj** @heap_org, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.obj* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.obj* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  %7 = load %struct.obj*, %struct.obj** @heap_end, align 8
  %8 = load %struct.obj*, %struct.obj** @heap, align 8
  %sub.ptr.lhs.cast9 = ptrtoint %struct.obj* %7 to i64
  %sub.ptr.rhs.cast10 = ptrtoint %struct.obj* %8 to i64
  %sub.ptr.sub11 = sub i64 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10
  %sub.ptr.div12 = sdiv exact i64 %sub.ptr.sub11, 24
  %call13 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.80, i32 0, i32 0), i64 %sub.ptr.div, i64 %sub.ptr.div12) #6
  %9 = load i8*, i8** @tkbuffer, align 8
  call void @put_st(i8* %9)
  br label %if.end.22

if.else.14:                                       ; preds = %if.end.3
  %10 = load i64, i64* @gc_status_flag, align 8
  %tobool15 = icmp ne i64 %10, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else.14
  call void @put_st(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.81, i32 0, i32 0))
  br label %if.end.18

if.else.17:                                       ; preds = %if.else.14
  call void @put_st(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.16
  %call19 = call i64 @nactive_heaps()
  store i64 %call19, i64* %m, align 8
  %call20 = call i64 @freelist_length()
  store i64 %call20, i64* %n, align 8
  %11 = load i8*, i8** @tkbuffer, align 8
  %12 = load i64, i64* %m, align 8
  %13 = load i64, i64* @nheaps, align 8
  %14 = load i64, i64* %m, align 8
  %15 = load i64, i64* @heap_size, align 8
  %mul = mul nsw i64 %14, %15
  %16 = load i64, i64* %n, align 8
  %sub = sub nsw i64 %mul, %16
  %17 = load i64, i64* %n, align 8
  %call21 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.83, i32 0, i32 0), i64 %12, i64 %13, i64 %sub, i64 %17) #6
  %18 = load i8*, i8** @tkbuffer, align 8
  call void @put_st(i8* %18)
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.18, %if.end.8
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define %struct.obj* @gc_info(%struct.obj* %arg) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %arg.addr = alloca %struct.obj*, align 8
  store %struct.obj* %arg, %struct.obj** %arg.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %arg.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  switch i64 %call, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.1
    i64 2, label %sw.bb.4
    i64 3, label %sw.bb.7
    i64 4, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i64, i64* @gc_kind_copying, align 8
  %cmp = icmp eq i64 %1, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %2 = load %struct.obj*, %struct.obj** @sym_t, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.obj* [ %2, %cond.true ], [ null, %cond.false ]
  store %struct.obj* %cond, %struct.obj** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %call2 = call i64 @nactive_heaps()
  %conv = sitofp i64 %call2 to double
  %call3 = call %struct.obj* @flocons(double %conv)
  store %struct.obj* %call3, %struct.obj** %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  %3 = load i64, i64* @nheaps, align 8
  %conv5 = sitofp i64 %3 to double
  %call6 = call %struct.obj* @flocons(double %conv5)
  store %struct.obj* %call6, %struct.obj** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %4 = load i64, i64* @heap_size, align 8
  %conv8 = sitofp i64 %4 to double
  %call9 = call %struct.obj* @flocons(double %conv8)
  store %struct.obj* %call9, %struct.obj** %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  %5 = load i64, i64* @gc_kind_copying, align 8
  %cmp11 = icmp eq i64 %5, 1
  br i1 %cmp11, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %sw.bb.10
  %6 = load %struct.obj*, %struct.obj** @heap_end, align 8
  %7 = load %struct.obj*, %struct.obj** @heap, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.obj* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.obj* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  br label %cond.end.16

cond.false.14:                                    ; preds = %sw.bb.10
  %call15 = call i64 @freelist_length()
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.14, %cond.true.13
  %cond17 = phi i64 [ %sub.ptr.div, %cond.true.13 ], [ %call15, %cond.false.14 ]
  %conv18 = sitofp i64 %cond17 to double
  %call19 = call %struct.obj* @flocons(double %conv18)
  store %struct.obj* %call19, %struct.obj** %retval
  br label %return

sw.default:                                       ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %sw.default, %cond.end.16, %sw.bb.7, %sw.bb.4, %sw.bb.1, %cond.end
  %8 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %8
}

; Function Attrs: nounwind uwtable
define %struct.obj* @leval_args(%struct.obj* %l, %struct.obj* %env) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %l.addr = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  %result = alloca %struct.obj*, align 8
  %v1 = alloca %struct.obj*, align 8
  %v2 = alloca %struct.obj*, align 8
  %tmp = alloca %struct.obj*, align 8
  store %struct.obj* %l, %struct.obj** %l.addr, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %cmp1 = icmp eq %struct.obj* %1, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %2 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 1
  %3 = load i16, i16* %type, align 2
  %conv = sext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp2 = icmp ne i32 %cond, 1
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  %4 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.84, i32 0, i32 0), %struct.obj* %4)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %cond.end
  %5 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %6 = load %struct.obj*, %struct.obj** %car, align 8
  %7 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call6 = call %struct.obj* @leval(%struct.obj* %6, %struct.obj* %7)
  %call7 = call %struct.obj* @cons(%struct.obj* %call6, %struct.obj* null)
  store %struct.obj* %call7, %struct.obj** %result, align 8
  %8 = load %struct.obj*, %struct.obj** %result, align 8
  store %struct.obj* %8, %struct.obj** %v1, align 8
  %9 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %storage_as8 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 2
  %cons9 = bitcast %union.anon* %storage_as8 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons9, i32 0, i32 1
  %10 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %10, %struct.obj** %v2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %11 = load %struct.obj*, %struct.obj** %v2, align 8
  %cmp10 = icmp eq %struct.obj* %11, null
  br i1 %cmp10, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %for.cond
  br label %cond.end.16

cond.false.13:                                    ; preds = %for.cond
  %12 = load %struct.obj*, %struct.obj** %v2, align 8
  %type14 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 1
  %13 = load i16, i16* %type14, align 2
  %conv15 = sext i16 %13 to i32
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.13, %cond.true.12
  %cond17 = phi i32 [ 0, %cond.true.12 ], [ %conv15, %cond.false.13 ]
  %cmp18 = icmp eq i32 %cond17, 1
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end.16
  %14 = load %struct.obj*, %struct.obj** %v2, align 8
  %storage_as20 = getelementptr inbounds %struct.obj, %struct.obj* %14, i32 0, i32 2
  %cons21 = bitcast %union.anon* %storage_as20 to %struct.anon*
  %car22 = getelementptr inbounds %struct.anon, %struct.anon* %cons21, i32 0, i32 0
  %15 = load %struct.obj*, %struct.obj** %car22, align 8
  %16 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call23 = call %struct.obj* @leval(%struct.obj* %15, %struct.obj* %16)
  %call24 = call %struct.obj* @cons(%struct.obj* %call23, %struct.obj* null)
  store %struct.obj* %call24, %struct.obj** %tmp, align 8
  %17 = load %struct.obj*, %struct.obj** %tmp, align 8
  %18 = load %struct.obj*, %struct.obj** %v1, align 8
  %storage_as25 = getelementptr inbounds %struct.obj, %struct.obj* %18, i32 0, i32 2
  %cons26 = bitcast %union.anon* %storage_as25 to %struct.anon*
  %cdr27 = getelementptr inbounds %struct.anon, %struct.anon* %cons26, i32 0, i32 1
  store %struct.obj* %17, %struct.obj** %cdr27, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load %struct.obj*, %struct.obj** %tmp, align 8
  store %struct.obj* %19, %struct.obj** %v1, align 8
  %20 = load %struct.obj*, %struct.obj** %v2, align 8
  %storage_as28 = getelementptr inbounds %struct.obj, %struct.obj* %20, i32 0, i32 2
  %cons29 = bitcast %union.anon* %storage_as28 to %struct.anon*
  %cdr30 = getelementptr inbounds %struct.anon, %struct.anon* %cons29, i32 0, i32 1
  %21 = load %struct.obj*, %struct.obj** %cdr30, align 8
  store %struct.obj* %21, %struct.obj** %v2, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end.16
  %22 = load %struct.obj*, %struct.obj** %v2, align 8
  %cmp31 = icmp ne %struct.obj* %22, null
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %for.end
  %23 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call34 = call %struct.obj* @err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.84, i32 0, i32 0), %struct.obj* %23)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %for.end
  %24 = load %struct.obj*, %struct.obj** %result, align 8
  store %struct.obj* %24, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then
  %25 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %25
}

; Function Attrs: nounwind uwtable
define %struct.obj* @extend_env(%struct.obj* %actuals, %struct.obj* %formals, %struct.obj* %env) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %actuals.addr = alloca %struct.obj*, align 8
  %formals.addr = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  store %struct.obj* %actuals, %struct.obj** %actuals.addr, align 8
  store %struct.obj* %formals, %struct.obj** %formals.addr, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %formals.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %formals.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %formals.addr, align 8
  %call = call %struct.obj* @cons(%struct.obj* %3, %struct.obj* null)
  %4 = load %struct.obj*, %struct.obj** %actuals.addr, align 8
  %call3 = call %struct.obj* @cons(%struct.obj* %4, %struct.obj* null)
  %call4 = call %struct.obj* @cons(%struct.obj* %call, %struct.obj* %call3)
  %5 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call5 = call %struct.obj* @cons(%struct.obj* %call4, %struct.obj* %5)
  store %struct.obj* %call5, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %6 = load %struct.obj*, %struct.obj** %formals.addr, align 8
  %7 = load %struct.obj*, %struct.obj** %actuals.addr, align 8
  %call6 = call %struct.obj* @cons(%struct.obj* %6, %struct.obj* %7)
  %8 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call7 = call %struct.obj* @cons(%struct.obj* %call6, %struct.obj* %8)
  store %struct.obj* %call7, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %9
}

; Function Attrs: nounwind uwtable
define void @set_eval_hooks(i64 %type, %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)* %fcn) #0 {
entry:
  %type.addr = alloca i64, align 8
  %fcn.addr = alloca %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)*, align 8
  %p = alloca %struct.user_type_hooks*, align 8
  store i64 %type, i64* %type.addr, align 8
  store %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)* %fcn, %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)** %fcn.addr, align 8
  %0 = load i64, i64* %type.addr, align 8
  %call = call %struct.user_type_hooks* @get_user_type_hooks(i64 %0)
  store %struct.user_type_hooks* %call, %struct.user_type_hooks** %p, align 8
  %1 = load %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)*, %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)** %fcn.addr, align 8
  %2 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %leval = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %2, i32 0, i32 5
  store %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)* %1, %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)** %leval, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.obj* @err_closure_code(%struct.obj* %tmp) #0 {
entry:
  %tmp.addr = alloca %struct.obj*, align 8
  store %struct.obj* %tmp, %struct.obj** %tmp.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %tmp.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.88, i32 0, i32 0), %struct.obj* %0)
  ret %struct.obj* %call
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lapply(%struct.obj* %fcn, %struct.obj* %args) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %fcn.addr = alloca %struct.obj*, align 8
  %args.addr = alloca %struct.obj*, align 8
  %p = alloca %struct.user_type_hooks*, align 8
  %acc = alloca %struct.obj*, align 8
  store %struct.obj* %fcn, %struct.obj** %fcn.addr, align 8
  store %struct.obj* %args, %struct.obj** %args.addr, align 8
  %0 = bitcast %struct.obj** %fcn.addr to i8*
  %1 = load i8*, i8** @stack_limit_ptr, align 8
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.obj** %fcn.addr to i8*
  call void @err_stack(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %cmp1 = icmp eq %struct.obj* %3, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 1
  %5 = load i16, i16* %type, align 2
  %conv = sext i16 %5 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  switch i32 %cond, label %sw.default.205 [
    i32 4, label %sw.bb
    i32 5, label %sw.bb.2
    i32 6, label %sw.bb.7
    i32 21, label %sw.bb.14
    i32 7, label %sw.bb.41
    i32 19, label %sw.bb.51
    i32 20, label %sw.bb.65
    i32 8, label %sw.bb.84
    i32 9, label %sw.bb.89
    i32 10, label %sw.bb.89
    i32 3, label %sw.bb.89
    i32 11, label %sw.bb.91
  ]

sw.bb:                                            ; preds = %cond.end
  %6 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %subr0 = bitcast %union.anon* %storage_as to %struct.anon.2*
  %f = getelementptr inbounds %struct.anon.2, %struct.anon.2* %subr0, i32 0, i32 1
  %7 = load %struct.obj* ()*, %struct.obj* ()** %f, align 8
  %call = call %struct.obj* %7()
  store %struct.obj* %call, %struct.obj** %retval
  br label %return

sw.bb.2:                                          ; preds = %cond.end
  %8 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as3 = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %subr1 = bitcast %union.anon* %storage_as3 to %struct.anon.3*
  %f4 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %subr1, i32 0, i32 1
  %9 = load %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)** %f4, align 8
  %10 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call5 = call %struct.obj* @car(%struct.obj* %10)
  %call6 = call %struct.obj* %9(%struct.obj* %call5)
  store %struct.obj* %call6, %struct.obj** %retval
  br label %return

sw.bb.7:                                          ; preds = %cond.end
  %11 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as8 = getelementptr inbounds %struct.obj, %struct.obj* %11, i32 0, i32 2
  %subr2 = bitcast %union.anon* %storage_as8 to %struct.anon.4*
  %f9 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %subr2, i32 0, i32 1
  %12 = load %struct.obj* (%struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*)** %f9, align 8
  %13 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call10 = call %struct.obj* @car(%struct.obj* %13)
  %14 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call11 = call %struct.obj* @cdr(%struct.obj* %14)
  %call12 = call %struct.obj* @car(%struct.obj* %call11)
  %call13 = call %struct.obj* %12(%struct.obj* %call10, %struct.obj* %call12)
  store %struct.obj* %call13, %struct.obj** %retval
  br label %return

sw.bb.14:                                         ; preds = %cond.end
  %15 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as15 = getelementptr inbounds %struct.obj, %struct.obj* %15, i32 0, i32 2
  %subr216 = bitcast %union.anon* %storage_as15 to %struct.anon.4*
  %f17 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %subr216, i32 0, i32 1
  %16 = load %struct.obj* (%struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*)** %f17, align 8
  %17 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call18 = call %struct.obj* @car(%struct.obj* %17)
  %18 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call19 = call %struct.obj* @cdr(%struct.obj* %18)
  %call20 = call %struct.obj* @car(%struct.obj* %call19)
  %call21 = call %struct.obj* %16(%struct.obj* %call18, %struct.obj* %call20)
  store %struct.obj* %call21, %struct.obj** %acc, align 8
  %19 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call22 = call %struct.obj* @cdr(%struct.obj* %19)
  %call23 = call %struct.obj* @cdr(%struct.obj* %call22)
  store %struct.obj* %call23, %struct.obj** %args.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.14
  %20 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %cmp24 = icmp eq %struct.obj* %20, null
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %for.cond
  br label %cond.end.30

cond.false.27:                                    ; preds = %for.cond
  %21 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %type28 = getelementptr inbounds %struct.obj, %struct.obj* %21, i32 0, i32 1
  %22 = load i16, i16* %type28, align 2
  %conv29 = sext i16 %22 to i32
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.27, %cond.true.26
  %cond31 = phi i32 [ 0, %cond.true.26 ], [ %conv29, %cond.false.27 ]
  %cmp32 = icmp eq i32 %cond31, 1
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end.30
  %23 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as34 = getelementptr inbounds %struct.obj, %struct.obj* %23, i32 0, i32 2
  %subr235 = bitcast %union.anon* %storage_as34 to %struct.anon.4*
  %f36 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %subr235, i32 0, i32 1
  %24 = load %struct.obj* (%struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*)** %f36, align 8
  %25 = load %struct.obj*, %struct.obj** %acc, align 8
  %26 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %storage_as37 = getelementptr inbounds %struct.obj, %struct.obj* %26, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as37 to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %27 = load %struct.obj*, %struct.obj** %car, align 8
  %call38 = call %struct.obj* %24(%struct.obj* %25, %struct.obj* %27)
  store %struct.obj* %call38, %struct.obj** %acc, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %storage_as39 = getelementptr inbounds %struct.obj, %struct.obj* %28, i32 0, i32 2
  %cons40 = bitcast %union.anon* %storage_as39 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons40, i32 0, i32 1
  %29 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %29, %struct.obj** %args.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end.30
  %30 = load %struct.obj*, %struct.obj** %acc, align 8
  store %struct.obj* %30, %struct.obj** %retval
  br label %return

sw.bb.41:                                         ; preds = %cond.end
  %31 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as42 = getelementptr inbounds %struct.obj, %struct.obj* %31, i32 0, i32 2
  %subr3 = bitcast %union.anon* %storage_as42 to %struct.anon.5*
  %f43 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %subr3, i32 0, i32 1
  %32 = load %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)** %f43, align 8
  %33 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call44 = call %struct.obj* @car(%struct.obj* %33)
  %34 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call45 = call %struct.obj* @cdr(%struct.obj* %34)
  %call46 = call %struct.obj* @car(%struct.obj* %call45)
  %35 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call47 = call %struct.obj* @cdr(%struct.obj* %35)
  %call48 = call %struct.obj* @cdr(%struct.obj* %call47)
  %call49 = call %struct.obj* @car(%struct.obj* %call48)
  %call50 = call %struct.obj* %32(%struct.obj* %call44, %struct.obj* %call46, %struct.obj* %call49)
  store %struct.obj* %call50, %struct.obj** %retval
  br label %return

sw.bb.51:                                         ; preds = %cond.end
  %36 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as52 = getelementptr inbounds %struct.obj, %struct.obj* %36, i32 0, i32 2
  %subr4 = bitcast %union.anon* %storage_as52 to %struct.anon.6*
  %f53 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %subr4, i32 0, i32 1
  %37 = load %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)** %f53, align 8
  %38 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call54 = call %struct.obj* @car(%struct.obj* %38)
  %39 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call55 = call %struct.obj* @cdr(%struct.obj* %39)
  %call56 = call %struct.obj* @car(%struct.obj* %call55)
  %40 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call57 = call %struct.obj* @cdr(%struct.obj* %40)
  %call58 = call %struct.obj* @cdr(%struct.obj* %call57)
  %call59 = call %struct.obj* @car(%struct.obj* %call58)
  %41 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call60 = call %struct.obj* @cdr(%struct.obj* %41)
  %call61 = call %struct.obj* @cdr(%struct.obj* %call60)
  %call62 = call %struct.obj* @cdr(%struct.obj* %call61)
  %call63 = call %struct.obj* @car(%struct.obj* %call62)
  %call64 = call %struct.obj* %37(%struct.obj* %call54, %struct.obj* %call56, %struct.obj* %call59, %struct.obj* %call63)
  store %struct.obj* %call64, %struct.obj** %retval
  br label %return

sw.bb.65:                                         ; preds = %cond.end
  %42 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as66 = getelementptr inbounds %struct.obj, %struct.obj* %42, i32 0, i32 2
  %subr5 = bitcast %union.anon* %storage_as66 to %struct.anon.7*
  %f67 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %subr5, i32 0, i32 1
  %43 = load %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)** %f67, align 8
  %44 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call68 = call %struct.obj* @car(%struct.obj* %44)
  %45 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call69 = call %struct.obj* @cdr(%struct.obj* %45)
  %call70 = call %struct.obj* @car(%struct.obj* %call69)
  %46 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call71 = call %struct.obj* @cdr(%struct.obj* %46)
  %call72 = call %struct.obj* @cdr(%struct.obj* %call71)
  %call73 = call %struct.obj* @car(%struct.obj* %call72)
  %47 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call74 = call %struct.obj* @cdr(%struct.obj* %47)
  %call75 = call %struct.obj* @cdr(%struct.obj* %call74)
  %call76 = call %struct.obj* @cdr(%struct.obj* %call75)
  %call77 = call %struct.obj* @car(%struct.obj* %call76)
  %48 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call78 = call %struct.obj* @cdr(%struct.obj* %48)
  %call79 = call %struct.obj* @cdr(%struct.obj* %call78)
  %call80 = call %struct.obj* @cdr(%struct.obj* %call79)
  %call81 = call %struct.obj* @cdr(%struct.obj* %call80)
  %call82 = call %struct.obj* @car(%struct.obj* %call81)
  %call83 = call %struct.obj* %43(%struct.obj* %call68, %struct.obj* %call70, %struct.obj* %call73, %struct.obj* %call77, %struct.obj* %call82)
  store %struct.obj* %call83, %struct.obj** %retval
  br label %return

sw.bb.84:                                         ; preds = %cond.end
  %49 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as85 = getelementptr inbounds %struct.obj, %struct.obj* %49, i32 0, i32 2
  %subr186 = bitcast %union.anon* %storage_as85 to %struct.anon.3*
  %f87 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %subr186, i32 0, i32 1
  %50 = load %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)** %f87, align 8
  %51 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call88 = call %struct.obj* %50(%struct.obj* %51)
  store %struct.obj* %call88, %struct.obj** %retval
  br label %return

sw.bb.89:                                         ; preds = %cond.end, %cond.end, %cond.end
  %52 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %call90 = call %struct.obj* @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i32 0, i32 0), %struct.obj* %52)
  store %struct.obj* %call90, %struct.obj** %retval
  br label %return

sw.bb.91:                                         ; preds = %cond.end
  %53 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as92 = getelementptr inbounds %struct.obj, %struct.obj* %53, i32 0, i32 2
  %closure = bitcast %union.anon* %storage_as92 to %struct.anon.10*
  %code = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure, i32 0, i32 1
  %54 = load %struct.obj*, %struct.obj** %code, align 8
  %cmp93 = icmp eq %struct.obj* %54, null
  br i1 %cmp93, label %cond.true.95, label %cond.false.96

cond.true.95:                                     ; preds = %sw.bb.91
  br label %cond.end.102

cond.false.96:                                    ; preds = %sw.bb.91
  %55 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as97 = getelementptr inbounds %struct.obj, %struct.obj* %55, i32 0, i32 2
  %closure98 = bitcast %union.anon* %storage_as97 to %struct.anon.10*
  %code99 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure98, i32 0, i32 1
  %56 = load %struct.obj*, %struct.obj** %code99, align 8
  %type100 = getelementptr inbounds %struct.obj, %struct.obj* %56, i32 0, i32 1
  %57 = load i16, i16* %type100, align 2
  %conv101 = sext i16 %57 to i32
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.96, %cond.true.95
  %cond103 = phi i32 [ 0, %cond.true.95 ], [ %conv101, %cond.false.96 ]
  switch i32 %cond103, label %sw.default [
    i32 1, label %sw.bb.104
    i32 5, label %sw.bb.117
    i32 6, label %sw.bb.128
    i32 7, label %sw.bb.140
    i32 19, label %sw.bb.154
    i32 20, label %sw.bb.171
    i32 8, label %sw.bb.192
  ]

sw.bb.104:                                        ; preds = %cond.end.102
  %58 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as105 = getelementptr inbounds %struct.obj, %struct.obj* %58, i32 0, i32 2
  %closure106 = bitcast %union.anon* %storage_as105 to %struct.anon.10*
  %code107 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure106, i32 0, i32 1
  %59 = load %struct.obj*, %struct.obj** %code107, align 8
  %call108 = call %struct.obj* @cdr(%struct.obj* %59)
  %60 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %61 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as109 = getelementptr inbounds %struct.obj, %struct.obj* %61, i32 0, i32 2
  %closure110 = bitcast %union.anon* %storage_as109 to %struct.anon.10*
  %code111 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure110, i32 0, i32 1
  %62 = load %struct.obj*, %struct.obj** %code111, align 8
  %call112 = call %struct.obj* @car(%struct.obj* %62)
  %63 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as113 = getelementptr inbounds %struct.obj, %struct.obj* %63, i32 0, i32 2
  %closure114 = bitcast %union.anon* %storage_as113 to %struct.anon.10*
  %env = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure114, i32 0, i32 0
  %64 = load %struct.obj*, %struct.obj** %env, align 8
  %call115 = call %struct.obj* @extend_env(%struct.obj* %60, %struct.obj* %call112, %struct.obj* %64)
  %call116 = call %struct.obj* @leval(%struct.obj* %call108, %struct.obj* %call115)
  store %struct.obj* %call116, %struct.obj** %retval
  br label %return

sw.bb.117:                                        ; preds = %cond.end.102
  %65 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as118 = getelementptr inbounds %struct.obj, %struct.obj* %65, i32 0, i32 2
  %closure119 = bitcast %union.anon* %storage_as118 to %struct.anon.10*
  %code120 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure119, i32 0, i32 1
  %66 = load %struct.obj*, %struct.obj** %code120, align 8
  %storage_as121 = getelementptr inbounds %struct.obj, %struct.obj* %66, i32 0, i32 2
  %subr1122 = bitcast %union.anon* %storage_as121 to %struct.anon.3*
  %f123 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %subr1122, i32 0, i32 1
  %67 = load %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)** %f123, align 8
  %68 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as124 = getelementptr inbounds %struct.obj, %struct.obj* %68, i32 0, i32 2
  %closure125 = bitcast %union.anon* %storage_as124 to %struct.anon.10*
  %env126 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure125, i32 0, i32 0
  %69 = load %struct.obj*, %struct.obj** %env126, align 8
  %call127 = call %struct.obj* %67(%struct.obj* %69)
  store %struct.obj* %call127, %struct.obj** %retval
  br label %return

sw.bb.128:                                        ; preds = %cond.end.102
  %70 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as129 = getelementptr inbounds %struct.obj, %struct.obj* %70, i32 0, i32 2
  %closure130 = bitcast %union.anon* %storage_as129 to %struct.anon.10*
  %code131 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure130, i32 0, i32 1
  %71 = load %struct.obj*, %struct.obj** %code131, align 8
  %storage_as132 = getelementptr inbounds %struct.obj, %struct.obj* %71, i32 0, i32 2
  %subr2133 = bitcast %union.anon* %storage_as132 to %struct.anon.4*
  %f134 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %subr2133, i32 0, i32 1
  %72 = load %struct.obj* (%struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*)** %f134, align 8
  %73 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as135 = getelementptr inbounds %struct.obj, %struct.obj* %73, i32 0, i32 2
  %closure136 = bitcast %union.anon* %storage_as135 to %struct.anon.10*
  %env137 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure136, i32 0, i32 0
  %74 = load %struct.obj*, %struct.obj** %env137, align 8
  %75 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call138 = call %struct.obj* @car(%struct.obj* %75)
  %call139 = call %struct.obj* %72(%struct.obj* %74, %struct.obj* %call138)
  store %struct.obj* %call139, %struct.obj** %retval
  br label %return

sw.bb.140:                                        ; preds = %cond.end.102
  %76 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as141 = getelementptr inbounds %struct.obj, %struct.obj* %76, i32 0, i32 2
  %closure142 = bitcast %union.anon* %storage_as141 to %struct.anon.10*
  %code143 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure142, i32 0, i32 1
  %77 = load %struct.obj*, %struct.obj** %code143, align 8
  %storage_as144 = getelementptr inbounds %struct.obj, %struct.obj* %77, i32 0, i32 2
  %subr3145 = bitcast %union.anon* %storage_as144 to %struct.anon.5*
  %f146 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %subr3145, i32 0, i32 1
  %78 = load %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)** %f146, align 8
  %79 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as147 = getelementptr inbounds %struct.obj, %struct.obj* %79, i32 0, i32 2
  %closure148 = bitcast %union.anon* %storage_as147 to %struct.anon.10*
  %env149 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure148, i32 0, i32 0
  %80 = load %struct.obj*, %struct.obj** %env149, align 8
  %81 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call150 = call %struct.obj* @car(%struct.obj* %81)
  %82 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call151 = call %struct.obj* @cdr(%struct.obj* %82)
  %call152 = call %struct.obj* @car(%struct.obj* %call151)
  %call153 = call %struct.obj* %78(%struct.obj* %80, %struct.obj* %call150, %struct.obj* %call152)
  store %struct.obj* %call153, %struct.obj** %retval
  br label %return

sw.bb.154:                                        ; preds = %cond.end.102
  %83 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as155 = getelementptr inbounds %struct.obj, %struct.obj* %83, i32 0, i32 2
  %closure156 = bitcast %union.anon* %storage_as155 to %struct.anon.10*
  %code157 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure156, i32 0, i32 1
  %84 = load %struct.obj*, %struct.obj** %code157, align 8
  %storage_as158 = getelementptr inbounds %struct.obj, %struct.obj* %84, i32 0, i32 2
  %subr4159 = bitcast %union.anon* %storage_as158 to %struct.anon.6*
  %f160 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %subr4159, i32 0, i32 1
  %85 = load %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)** %f160, align 8
  %86 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as161 = getelementptr inbounds %struct.obj, %struct.obj* %86, i32 0, i32 2
  %closure162 = bitcast %union.anon* %storage_as161 to %struct.anon.10*
  %env163 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure162, i32 0, i32 0
  %87 = load %struct.obj*, %struct.obj** %env163, align 8
  %88 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call164 = call %struct.obj* @car(%struct.obj* %88)
  %89 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call165 = call %struct.obj* @cdr(%struct.obj* %89)
  %call166 = call %struct.obj* @car(%struct.obj* %call165)
  %90 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call167 = call %struct.obj* @cdr(%struct.obj* %90)
  %call168 = call %struct.obj* @cdr(%struct.obj* %call167)
  %call169 = call %struct.obj* @car(%struct.obj* %call168)
  %call170 = call %struct.obj* %85(%struct.obj* %87, %struct.obj* %call164, %struct.obj* %call166, %struct.obj* %call169)
  store %struct.obj* %call170, %struct.obj** %retval
  br label %return

sw.bb.171:                                        ; preds = %cond.end.102
  %91 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as172 = getelementptr inbounds %struct.obj, %struct.obj* %91, i32 0, i32 2
  %closure173 = bitcast %union.anon* %storage_as172 to %struct.anon.10*
  %code174 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure173, i32 0, i32 1
  %92 = load %struct.obj*, %struct.obj** %code174, align 8
  %storage_as175 = getelementptr inbounds %struct.obj, %struct.obj* %92, i32 0, i32 2
  %subr5176 = bitcast %union.anon* %storage_as175 to %struct.anon.7*
  %f177 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %subr5176, i32 0, i32 1
  %93 = load %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)*, %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*, %struct.obj*)** %f177, align 8
  %94 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as178 = getelementptr inbounds %struct.obj, %struct.obj* %94, i32 0, i32 2
  %closure179 = bitcast %union.anon* %storage_as178 to %struct.anon.10*
  %env180 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure179, i32 0, i32 0
  %95 = load %struct.obj*, %struct.obj** %env180, align 8
  %96 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call181 = call %struct.obj* @car(%struct.obj* %96)
  %97 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call182 = call %struct.obj* @cdr(%struct.obj* %97)
  %call183 = call %struct.obj* @car(%struct.obj* %call182)
  %98 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call184 = call %struct.obj* @cdr(%struct.obj* %98)
  %call185 = call %struct.obj* @cdr(%struct.obj* %call184)
  %call186 = call %struct.obj* @car(%struct.obj* %call185)
  %99 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call187 = call %struct.obj* @cdr(%struct.obj* %99)
  %call188 = call %struct.obj* @cdr(%struct.obj* %call187)
  %call189 = call %struct.obj* @cdr(%struct.obj* %call188)
  %call190 = call %struct.obj* @car(%struct.obj* %call189)
  %call191 = call %struct.obj* %93(%struct.obj* %95, %struct.obj* %call181, %struct.obj* %call183, %struct.obj* %call186, %struct.obj* %call190)
  store %struct.obj* %call191, %struct.obj** %retval
  br label %return

sw.bb.192:                                        ; preds = %cond.end.102
  %100 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as193 = getelementptr inbounds %struct.obj, %struct.obj* %100, i32 0, i32 2
  %closure194 = bitcast %union.anon* %storage_as193 to %struct.anon.10*
  %code195 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure194, i32 0, i32 1
  %101 = load %struct.obj*, %struct.obj** %code195, align 8
  %storage_as196 = getelementptr inbounds %struct.obj, %struct.obj* %101, i32 0, i32 2
  %subr1197 = bitcast %union.anon* %storage_as196 to %struct.anon.3*
  %f198 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %subr1197, i32 0, i32 1
  %102 = load %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)** %f198, align 8
  %103 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %storage_as199 = getelementptr inbounds %struct.obj, %struct.obj* %103, i32 0, i32 2
  %closure200 = bitcast %union.anon* %storage_as199 to %struct.anon.10*
  %env201 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure200, i32 0, i32 0
  %104 = load %struct.obj*, %struct.obj** %env201, align 8
  %105 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call202 = call %struct.obj* @cons(%struct.obj* %104, %struct.obj* %105)
  %call203 = call %struct.obj* %102(%struct.obj* %call202)
  store %struct.obj* %call203, %struct.obj** %retval
  br label %return

sw.default:                                       ; preds = %cond.end.102
  %106 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %call204 = call %struct.obj* @err_closure_code(%struct.obj* %106)
  store %struct.obj* %call204, %struct.obj** %retval
  br label %return

sw.default.205:                                   ; preds = %cond.end
  %107 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %cmp206 = icmp eq %struct.obj* %107, null
  br i1 %cmp206, label %cond.true.208, label %cond.false.209

cond.true.208:                                    ; preds = %sw.default.205
  br label %cond.end.212

cond.false.209:                                   ; preds = %sw.default.205
  %108 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %type210 = getelementptr inbounds %struct.obj, %struct.obj* %108, i32 0, i32 1
  %109 = load i16, i16* %type210, align 2
  %conv211 = sext i16 %109 to i32
  br label %cond.end.212

cond.end.212:                                     ; preds = %cond.false.209, %cond.true.208
  %cond213 = phi i32 [ 0, %cond.true.208 ], [ %conv211, %cond.false.209 ]
  %conv214 = sext i32 %cond213 to i64
  %call215 = call %struct.user_type_hooks* @get_user_type_hooks(i64 %conv214)
  store %struct.user_type_hooks* %call215, %struct.user_type_hooks** %p, align 8
  %110 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %leval = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %110, i32 0, i32 5
  %111 = load %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)*, %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)** %leval, align 8
  %tobool = icmp ne %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)* %111, null
  br i1 %tobool, label %if.then.216, label %if.else

if.then.216:                                      ; preds = %cond.end.212
  %112 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %call217 = call %struct.obj* @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.91, i32 0, i32 0), %struct.obj* %112)
  store %struct.obj* %call217, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %cond.end.212
  %113 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %call218 = call %struct.obj* @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i32 0, i32 0), %struct.obj* %113)
  store %struct.obj* %call218, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.216, %sw.default, %sw.bb.192, %sw.bb.171, %sw.bb.154, %sw.bb.140, %sw.bb.128, %sw.bb.117, %sw.bb.104, %sw.bb.89, %sw.bb.84, %sw.bb.65, %sw.bb.51, %sw.bb.41, %for.end, %sw.bb.7, %sw.bb.2, %sw.bb
  %114 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %114
}

; Function Attrs: nounwind uwtable
define %struct.obj* @leval_setq(%struct.obj* %args, %struct.obj* %env) #0 {
entry:
  %args.addr = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  store %struct.obj* %args, %struct.obj** %args.addr, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call1 = call %struct.obj* @cdr(%struct.obj* %1)
  %call2 = call %struct.obj* @car(%struct.obj* %call1)
  %2 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call3 = call %struct.obj* @leval(%struct.obj* %call2, %struct.obj* %2)
  %3 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call4 = call %struct.obj* @setvar(%struct.obj* %call, %struct.obj* %call3, %struct.obj* %3)
  ret %struct.obj* %call4
}

; Function Attrs: nounwind uwtable
define %struct.obj* @syntax_define(%struct.obj* %args) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %args.addr = alloca %struct.obj*, align 8
  store %struct.obj* %args, %struct.obj** %args.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %0)
  %cmp = icmp eq %struct.obj* %call, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call1 = call %struct.obj* @car(%struct.obj* %1)
  %type = getelementptr inbounds %struct.obj, %struct.obj* %call1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp2 = icmp eq i32 %cond, 3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %args.addr, align 8
  store %struct.obj* %3, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %4 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call4 = call %struct.obj* @car(%struct.obj* %4)
  %call5 = call %struct.obj* @car(%struct.obj* %call4)
  %5 = load %struct.obj*, %struct.obj** @sym_lambda, align 8
  %6 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call6 = call %struct.obj* @car(%struct.obj* %6)
  %call7 = call %struct.obj* @cdr(%struct.obj* %call6)
  %7 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call8 = call %struct.obj* @cdr(%struct.obj* %7)
  %call9 = call %struct.obj* @cons(%struct.obj* %call7, %struct.obj* %call8)
  %call10 = call %struct.obj* @cons(%struct.obj* %5, %struct.obj* %call9)
  %call11 = call %struct.obj* @cons(%struct.obj* %call10, %struct.obj* null)
  %call12 = call %struct.obj* @cons(%struct.obj* %call5, %struct.obj* %call11)
  %call13 = call %struct.obj* @syntax_define(%struct.obj* %call12)
  store %struct.obj* %call13, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %8
}

; Function Attrs: nounwind uwtable
define %struct.obj* @leval_define(%struct.obj* %args, %struct.obj* %env) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %args.addr = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  %tmp = alloca %struct.obj*, align 8
  %var = alloca %struct.obj*, align 8
  %val = alloca %struct.obj*, align 8
  store %struct.obj* %args, %struct.obj** %args.addr, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call = call %struct.obj* @syntax_define(%struct.obj* %0)
  store %struct.obj* %call, %struct.obj** %tmp, align 8
  %1 = load %struct.obj*, %struct.obj** %tmp, align 8
  %call3 = call %struct.obj* @car(%struct.obj* %1)
  store %struct.obj* %call3, %struct.obj** %var, align 8
  %2 = load %struct.obj*, %struct.obj** %var, align 8
  %cmp = icmp eq %struct.obj* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.obj*, %struct.obj** %var, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 1
  %4 = load i16, i16* %type, align 2
  %conv = sext i16 %4 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp4 = icmp ne i32 %cond, 3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %5 = load %struct.obj*, %struct.obj** %var, align 8
  %call6 = call %struct.obj* @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.93, i32 0, i32 0), %struct.obj* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %6 = load %struct.obj*, %struct.obj** %tmp, align 8
  %call7 = call %struct.obj* @cdr(%struct.obj* %6)
  %call8 = call %struct.obj* @car(%struct.obj* %call7)
  %7 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call9 = call %struct.obj* @leval(%struct.obj* %call8, %struct.obj* %7)
  store %struct.obj* %call9, %struct.obj** %val, align 8
  %8 = load %struct.obj*, %struct.obj** %var, align 8
  %9 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call10 = call %struct.obj* @envlookup(%struct.obj* %8, %struct.obj* %9)
  store %struct.obj* %call10, %struct.obj** %tmp, align 8
  %10 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp11 = icmp ne %struct.obj* %10, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  %11 = load %struct.obj*, %struct.obj** %val, align 8
  %12 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  store %struct.obj* %11, %struct.obj** %car, align 8
  store %struct.obj* %11, %struct.obj** %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  %13 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %cmp15 = icmp eq %struct.obj* %13, null
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.14
  %14 = load %struct.obj*, %struct.obj** %val, align 8
  %15 = load %struct.obj*, %struct.obj** %var, align 8
  %storage_as18 = getelementptr inbounds %struct.obj, %struct.obj* %15, i32 0, i32 2
  %symbol = bitcast %union.anon* %storage_as18 to %struct.anon.1*
  %vcell = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol, i32 0, i32 1
  store %struct.obj* %14, %struct.obj** %vcell, align 8
  store %struct.obj* %14, %struct.obj** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.14
  %16 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call20 = call %struct.obj* @car(%struct.obj* %16)
  store %struct.obj* %call20, %struct.obj** %tmp, align 8
  %17 = load %struct.obj*, %struct.obj** %tmp, align 8
  %18 = load %struct.obj*, %struct.obj** %var, align 8
  %19 = load %struct.obj*, %struct.obj** %tmp, align 8
  %call21 = call %struct.obj* @car(%struct.obj* %19)
  %call22 = call %struct.obj* @cons(%struct.obj* %18, %struct.obj* %call21)
  %call23 = call %struct.obj* @setcar(%struct.obj* %17, %struct.obj* %call22)
  %20 = load %struct.obj*, %struct.obj** %tmp, align 8
  %21 = load %struct.obj*, %struct.obj** %val, align 8
  %22 = load %struct.obj*, %struct.obj** %tmp, align 8
  %call24 = call %struct.obj* @cdr(%struct.obj* %22)
  %call25 = call %struct.obj* @cons(%struct.obj* %21, %struct.obj* %call24)
  %call26 = call %struct.obj* @setcdr(%struct.obj* %20, %struct.obj* %call25)
  %23 = load %struct.obj*, %struct.obj** %val, align 8
  store %struct.obj* %23, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.17, %if.then.13
  %24 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %24
}

; Function Attrs: nounwind uwtable
define %struct.obj* @leval_if(%struct.obj** %pform, %struct.obj** %penv) #0 {
entry:
  %pform.addr = alloca %struct.obj**, align 8
  %penv.addr = alloca %struct.obj**, align 8
  %args = alloca %struct.obj*, align 8
  %env = alloca %struct.obj*, align 8
  store %struct.obj** %pform, %struct.obj*** %pform.addr, align 8
  store %struct.obj** %penv, %struct.obj*** %penv.addr, align 8
  %0 = load %struct.obj**, %struct.obj*** %pform.addr, align 8
  %1 = load %struct.obj*, %struct.obj** %0, align 8
  %call = call %struct.obj* @cdr(%struct.obj* %1)
  store %struct.obj* %call, %struct.obj** %args, align 8
  %2 = load %struct.obj**, %struct.obj*** %penv.addr, align 8
  %3 = load %struct.obj*, %struct.obj** %2, align 8
  store %struct.obj* %3, %struct.obj** %env, align 8
  %4 = load %struct.obj*, %struct.obj** %args, align 8
  %call1 = call %struct.obj* @car(%struct.obj* %4)
  %5 = load %struct.obj*, %struct.obj** %env, align 8
  %call2 = call %struct.obj* @leval(%struct.obj* %call1, %struct.obj* %5)
  %cmp = icmp ne %struct.obj* %call2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.obj*, %struct.obj** %args, align 8
  %call3 = call %struct.obj* @cdr(%struct.obj* %6)
  %call4 = call %struct.obj* @car(%struct.obj* %call3)
  %7 = load %struct.obj**, %struct.obj*** %pform.addr, align 8
  store %struct.obj* %call4, %struct.obj** %7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.obj*, %struct.obj** %args, align 8
  %call5 = call %struct.obj* @cdr(%struct.obj* %8)
  %call6 = call %struct.obj* @cdr(%struct.obj* %call5)
  %call7 = call %struct.obj* @car(%struct.obj* %call6)
  %9 = load %struct.obj**, %struct.obj*** %pform.addr, align 8
  store %struct.obj* %call7, %struct.obj** %9, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.obj*, %struct.obj** @sym_t, align 8
  ret %struct.obj* %10
}

; Function Attrs: nounwind uwtable
define %struct.obj* @leval_lambda(%struct.obj* %args, %struct.obj* %env) #0 {
entry:
  %args.addr = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  %body = alloca %struct.obj*, align 8
  store %struct.obj* %args, %struct.obj** %args.addr, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call = call %struct.obj* @cdr(%struct.obj* %0)
  %call1 = call %struct.obj* @cdr(%struct.obj* %call)
  %cmp = icmp eq %struct.obj* %call1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call2 = call %struct.obj* @cdr(%struct.obj* %1)
  %call3 = call %struct.obj* @car(%struct.obj* %call2)
  store %struct.obj* %call3, %struct.obj** %body, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** @sym_progn, align 8
  %3 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call4 = call %struct.obj* @cdr(%struct.obj* %3)
  %call5 = call %struct.obj* @cons(%struct.obj* %2, %struct.obj* %call4)
  store %struct.obj* %call5, %struct.obj** %body, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %5 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call6 = call %struct.obj* @car(%struct.obj* %5)
  %call7 = call %struct.obj* @arglchk(%struct.obj* %call6)
  %6 = load %struct.obj*, %struct.obj** %body, align 8
  %call8 = call %struct.obj* @cons(%struct.obj* %call7, %struct.obj* %6)
  %call9 = call %struct.obj* @closure(%struct.obj* %4, %struct.obj* %call8)
  ret %struct.obj* %call9
}

; Function Attrs: nounwind uwtable
define %struct.obj* @arglchk(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  ret %struct.obj* %0
}

; Function Attrs: nounwind uwtable
define %struct.obj* @leval_progn(%struct.obj** %pform, %struct.obj** %penv) #0 {
entry:
  %pform.addr = alloca %struct.obj**, align 8
  %penv.addr = alloca %struct.obj**, align 8
  %env = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  %next = alloca %struct.obj*, align 8
  store %struct.obj** %pform, %struct.obj*** %pform.addr, align 8
  store %struct.obj** %penv, %struct.obj*** %penv.addr, align 8
  %0 = load %struct.obj**, %struct.obj*** %penv.addr, align 8
  %1 = load %struct.obj*, %struct.obj** %0, align 8
  store %struct.obj* %1, %struct.obj** %env, align 8
  %2 = load %struct.obj**, %struct.obj*** %pform.addr, align 8
  %3 = load %struct.obj*, %struct.obj** %2, align 8
  %call = call %struct.obj* @cdr(%struct.obj* %3)
  store %struct.obj* %call, %struct.obj** %l, align 8
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %call1 = call %struct.obj* @cdr(%struct.obj* %4)
  store %struct.obj* %call1, %struct.obj** %next, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load %struct.obj*, %struct.obj** %next, align 8
  %cmp = icmp ne %struct.obj* %5, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.obj*, %struct.obj** %l, align 8
  %call2 = call %struct.obj* @car(%struct.obj* %6)
  %7 = load %struct.obj*, %struct.obj** %env, align 8
  %call3 = call %struct.obj* @leval(%struct.obj* %call2, %struct.obj* %7)
  %8 = load %struct.obj*, %struct.obj** %next, align 8
  store %struct.obj* %8, %struct.obj** %l, align 8
  %9 = load %struct.obj*, %struct.obj** %next, align 8
  %call4 = call %struct.obj* @cdr(%struct.obj* %9)
  store %struct.obj* %call4, %struct.obj** %next, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct.obj*, %struct.obj** %l, align 8
  %call5 = call %struct.obj* @car(%struct.obj* %10)
  %11 = load %struct.obj**, %struct.obj*** %pform.addr, align 8
  store %struct.obj* %call5, %struct.obj** %11, align 8
  %12 = load %struct.obj*, %struct.obj** @sym_t, align 8
  ret %struct.obj* %12
}

; Function Attrs: nounwind uwtable
define %struct.obj* @leval_or(%struct.obj** %pform, %struct.obj** %penv) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %pform.addr = alloca %struct.obj**, align 8
  %penv.addr = alloca %struct.obj**, align 8
  %env = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  %next = alloca %struct.obj*, align 8
  %val = alloca %struct.obj*, align 8
  store %struct.obj** %pform, %struct.obj*** %pform.addr, align 8
  store %struct.obj** %penv, %struct.obj*** %penv.addr, align 8
  %0 = load %struct.obj**, %struct.obj*** %penv.addr, align 8
  %1 = load %struct.obj*, %struct.obj** %0, align 8
  store %struct.obj* %1, %struct.obj** %env, align 8
  %2 = load %struct.obj**, %struct.obj*** %pform.addr, align 8
  %3 = load %struct.obj*, %struct.obj** %2, align 8
  %call = call %struct.obj* @cdr(%struct.obj* %3)
  store %struct.obj* %call, %struct.obj** %l, align 8
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %call1 = call %struct.obj* @cdr(%struct.obj* %4)
  store %struct.obj* %call1, %struct.obj** %next, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load %struct.obj*, %struct.obj** %next, align 8
  %cmp = icmp ne %struct.obj* %5, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.obj*, %struct.obj** %l, align 8
  %call2 = call %struct.obj* @car(%struct.obj* %6)
  %7 = load %struct.obj*, %struct.obj** %env, align 8
  %call3 = call %struct.obj* @leval(%struct.obj* %call2, %struct.obj* %7)
  store %struct.obj* %call3, %struct.obj** %val, align 8
  %8 = load %struct.obj*, %struct.obj** %val, align 8
  %cmp4 = icmp ne %struct.obj* %8, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load %struct.obj*, %struct.obj** %val, align 8
  %10 = load %struct.obj**, %struct.obj*** %pform.addr, align 8
  store %struct.obj* %9, %struct.obj** %10, align 8
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %while.body
  %11 = load %struct.obj*, %struct.obj** %next, align 8
  store %struct.obj* %11, %struct.obj** %l, align 8
  %12 = load %struct.obj*, %struct.obj** %next, align 8
  %call5 = call %struct.obj* @cdr(%struct.obj* %12)
  store %struct.obj* %call5, %struct.obj** %next, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load %struct.obj*, %struct.obj** %l, align 8
  %call6 = call %struct.obj* @car(%struct.obj* %13)
  %14 = load %struct.obj**, %struct.obj*** %pform.addr, align 8
  store %struct.obj* %call6, %struct.obj** %14, align 8
  %15 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %15, %struct.obj** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %16 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %16
}

; Function Attrs: nounwind uwtable
define %struct.obj* @leval_and(%struct.obj** %pform, %struct.obj** %penv) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %pform.addr = alloca %struct.obj**, align 8
  %penv.addr = alloca %struct.obj**, align 8
  %env = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  %next = alloca %struct.obj*, align 8
  store %struct.obj** %pform, %struct.obj*** %pform.addr, align 8
  store %struct.obj** %penv, %struct.obj*** %penv.addr, align 8
  %0 = load %struct.obj**, %struct.obj*** %penv.addr, align 8
  %1 = load %struct.obj*, %struct.obj** %0, align 8
  store %struct.obj* %1, %struct.obj** %env, align 8
  %2 = load %struct.obj**, %struct.obj*** %pform.addr, align 8
  %3 = load %struct.obj*, %struct.obj** %2, align 8
  %call = call %struct.obj* @cdr(%struct.obj* %3)
  store %struct.obj* %call, %struct.obj** %l, align 8
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp eq %struct.obj* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.obj*, %struct.obj** @sym_t, align 8
  %6 = load %struct.obj**, %struct.obj*** %pform.addr, align 8
  store %struct.obj* %5, %struct.obj** %6, align 8
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.obj*, %struct.obj** %l, align 8
  %call1 = call %struct.obj* @cdr(%struct.obj* %7)
  store %struct.obj* %call1, %struct.obj** %next, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.7, %if.end
  %8 = load %struct.obj*, %struct.obj** %next, align 8
  %cmp2 = icmp ne %struct.obj* %8, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.obj*, %struct.obj** %l, align 8
  %call3 = call %struct.obj* @car(%struct.obj* %9)
  %10 = load %struct.obj*, %struct.obj** %env, align 8
  %call4 = call %struct.obj* @leval(%struct.obj* %call3, %struct.obj* %10)
  %cmp5 = icmp eq %struct.obj* %call4, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %while.body
  %11 = load %struct.obj**, %struct.obj*** %pform.addr, align 8
  store %struct.obj* null, %struct.obj** %11, align 8
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.7:                                         ; preds = %while.body
  %12 = load %struct.obj*, %struct.obj** %next, align 8
  store %struct.obj* %12, %struct.obj** %l, align 8
  %13 = load %struct.obj*, %struct.obj** %next, align 8
  %call8 = call %struct.obj* @cdr(%struct.obj* %13)
  store %struct.obj* %call8, %struct.obj** %next, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct.obj*, %struct.obj** %l, align 8
  %call9 = call %struct.obj* @car(%struct.obj* %14)
  %15 = load %struct.obj**, %struct.obj*** %pform.addr, align 8
  store %struct.obj* %call9, %struct.obj** %15, align 8
  %16 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %16, %struct.obj** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.6, %if.then
  %17 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %17
}

; Function Attrs: nounwind uwtable
define %struct.obj* @leval_catch_1(%struct.obj* %forms, %struct.obj* %env) #0 {
entry:
  %forms.addr = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  %val = alloca %struct.obj*, align 8
  store %struct.obj* %forms, %struct.obj** %forms.addr, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  store %struct.obj* null, %struct.obj** %val, align 8
  %0 = load %struct.obj*, %struct.obj** %forms.addr, align 8
  store %struct.obj* %0, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp ne %struct.obj* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %l, align 8
  %call = call %struct.obj* @car(%struct.obj* %2)
  %3 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call1 = call %struct.obj* @leval(%struct.obj* %call, %struct.obj* %3)
  store %struct.obj* %call1, %struct.obj** %val, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %call2 = call %struct.obj* @cdr(%struct.obj* %4)
  store %struct.obj* %call2, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct.catch_frame*, %struct.catch_frame** @catch_framep, align 8
  %next = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %5, i32 0, i32 3
  %6 = load %struct.catch_frame*, %struct.catch_frame** %next, align 8
  store %struct.catch_frame* %6, %struct.catch_frame** @catch_framep, align 8
  %7 = load %struct.obj*, %struct.obj** %val, align 8
  ret %struct.obj* %7
}

; Function Attrs: nounwind uwtable
define %struct.obj* @leval_catch(%struct.obj* %args, %struct.obj* %env) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %args.addr = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  %frame = alloca %struct.catch_frame, align 8
  %k = alloca i32, align 4
  store %struct.obj* %args, %struct.obj** %args.addr, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call1 = call %struct.obj* @leval(%struct.obj* %call, %struct.obj* %1)
  %tag = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %frame, i32 0, i32 0
  store %struct.obj* %call1, %struct.obj** %tag, align 8
  %2 = load %struct.catch_frame*, %struct.catch_frame** @catch_framep, align 8
  %next = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %frame, i32 0, i32 3
  store %struct.catch_frame* %2, %struct.catch_frame** %next, align 8
  %cframe = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %frame, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %cframe, i32 0, i32 0
  %call2 = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay) #10
  store i32 %call2, i32* %k, align 4
  store %struct.catch_frame* %frame, %struct.catch_frame** @catch_framep, align 8
  %3 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %next3 = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %frame, i32 0, i32 3
  %4 = load %struct.catch_frame*, %struct.catch_frame** %next3, align 8
  store %struct.catch_frame* %4, %struct.catch_frame** @catch_framep, align 8
  %retval4 = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %frame, i32 0, i32 1
  %5 = load %struct.obj*, %struct.obj** %retval4, align 8
  store %struct.obj* %5, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call5 = call %struct.obj* @cdr(%struct.obj* %6)
  %7 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call6 = call %struct.obj* @leval_catch_1(%struct.obj* %call5, %struct.obj* %7)
  store %struct.obj* %call6, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %8
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lthrow(%struct.obj* %tag, %struct.obj* %value) #0 {
entry:
  %tag.addr = alloca %struct.obj*, align 8
  %value.addr = alloca %struct.obj*, align 8
  %l = alloca %struct.catch_frame*, align 8
  store %struct.obj* %tag, %struct.obj** %tag.addr, align 8
  store %struct.obj* %value, %struct.obj** %value.addr, align 8
  %0 = load %struct.catch_frame*, %struct.catch_frame** @catch_framep, align 8
  store %struct.catch_frame* %0, %struct.catch_frame** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.catch_frame*, %struct.catch_frame** %l, align 8
  %tobool = icmp ne %struct.catch_frame* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.catch_frame*, %struct.catch_frame** %l, align 8
  %tag1 = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %2, i32 0, i32 0
  %3 = load %struct.obj*, %struct.obj** %tag1, align 8
  %4 = load %struct.obj*, %struct.obj** %tag.addr, align 8
  %cmp = icmp eq %struct.obj* %3, %4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load %struct.catch_frame*, %struct.catch_frame** %l, align 8
  %tag2 = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %5, i32 0, i32 0
  %6 = load %struct.obj*, %struct.obj** %tag2, align 8
  %7 = load %struct.obj*, %struct.obj** @sym_catchall, align 8
  %cmp3 = icmp eq %struct.obj* %6, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %8 = load %struct.obj*, %struct.obj** %value.addr, align 8
  %9 = load %struct.catch_frame*, %struct.catch_frame** %l, align 8
  %retval4 = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %9, i32 0, i32 1
  store %struct.obj* %8, %struct.obj** %retval4, align 8
  %10 = load %struct.catch_frame*, %struct.catch_frame** %l, align 8
  %cframe = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %10, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %cframe, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay, i32 2) #9
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.catch_frame*, %struct.catch_frame** %l, align 8
  %next = getelementptr inbounds %struct.catch_frame, %struct.catch_frame* %11, i32 0, i32 3
  %12 = load %struct.catch_frame*, %struct.catch_frame** %next, align 8
  store %struct.catch_frame* %12, %struct.catch_frame** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.obj*, %struct.obj** %tag.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.94, i32 0, i32 0), %struct.obj* %13)
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define %struct.obj* @leval_let(%struct.obj** %pform, %struct.obj** %penv) #0 {
entry:
  %pform.addr = alloca %struct.obj**, align 8
  %penv.addr = alloca %struct.obj**, align 8
  %env = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  store %struct.obj** %pform, %struct.obj*** %pform.addr, align 8
  store %struct.obj** %penv, %struct.obj*** %penv.addr, align 8
  %0 = load %struct.obj**, %struct.obj*** %pform.addr, align 8
  %1 = load %struct.obj*, %struct.obj** %0, align 8
  %call = call %struct.obj* @cdr(%struct.obj* %1)
  store %struct.obj* %call, %struct.obj** %l, align 8
  %2 = load %struct.obj**, %struct.obj*** %penv.addr, align 8
  %3 = load %struct.obj*, %struct.obj** %2, align 8
  store %struct.obj* %3, %struct.obj** %env, align 8
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %call1 = call %struct.obj* @cdr(%struct.obj* %4)
  %call2 = call %struct.obj* @car(%struct.obj* %call1)
  %5 = load %struct.obj*, %struct.obj** %env, align 8
  %call3 = call %struct.obj* @leval_args(%struct.obj* %call2, %struct.obj* %5)
  %6 = load %struct.obj*, %struct.obj** %l, align 8
  %call4 = call %struct.obj* @car(%struct.obj* %6)
  %7 = load %struct.obj*, %struct.obj** %env, align 8
  %call5 = call %struct.obj* @extend_env(%struct.obj* %call3, %struct.obj* %call4, %struct.obj* %7)
  %8 = load %struct.obj**, %struct.obj*** %penv.addr, align 8
  store %struct.obj* %call5, %struct.obj** %8, align 8
  %9 = load %struct.obj*, %struct.obj** %l, align 8
  %call6 = call %struct.obj* @cdr(%struct.obj* %9)
  %call7 = call %struct.obj* @cdr(%struct.obj* %call6)
  %call8 = call %struct.obj* @car(%struct.obj* %call7)
  %10 = load %struct.obj**, %struct.obj*** %pform.addr, align 8
  store %struct.obj* %call8, %struct.obj** %10, align 8
  %11 = load %struct.obj*, %struct.obj** @sym_t, align 8
  ret %struct.obj* %11
}

; Function Attrs: nounwind uwtable
define %struct.obj* @letstar_macro(%struct.obj* %form) #0 {
entry:
  %form.addr = alloca %struct.obj*, align 8
  %bindings = alloca %struct.obj*, align 8
  store %struct.obj* %form, %struct.obj** %form.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %form.addr, align 8
  %call = call %struct.obj* @cadr(%struct.obj* %0)
  store %struct.obj* %call, %struct.obj** %bindings, align 8
  %1 = load %struct.obj*, %struct.obj** %bindings, align 8
  %cmp = icmp ne %struct.obj* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %bindings, align 8
  %call1 = call %struct.obj* @cdr(%struct.obj* %2)
  %cmp2 = icmp ne %struct.obj* %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.obj*, %struct.obj** %form.addr, align 8
  %4 = load %struct.obj*, %struct.obj** %bindings, align 8
  %call3 = call %struct.obj* @car(%struct.obj* %4)
  %call4 = call %struct.obj* @cons(%struct.obj* %call3, %struct.obj* null)
  %call5 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0))
  %5 = load %struct.obj*, %struct.obj** %bindings, align 8
  %call6 = call %struct.obj* @cdr(%struct.obj* %5)
  %6 = load %struct.obj*, %struct.obj** %form.addr, align 8
  %call7 = call %struct.obj* @cddr(%struct.obj* %6)
  %call8 = call %struct.obj* @cons(%struct.obj* %call6, %struct.obj* %call7)
  %call9 = call %struct.obj* @cons(%struct.obj* %call5, %struct.obj* %call8)
  %call10 = call %struct.obj* @cons(%struct.obj* %call9, %struct.obj* null)
  %call11 = call %struct.obj* @cons(%struct.obj* %call4, %struct.obj* %call10)
  %call12 = call %struct.obj* @setcdr(%struct.obj* %3, %struct.obj* %call11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load %struct.obj*, %struct.obj** %form.addr, align 8
  %call13 = call %struct.obj* @cintern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0))
  %call14 = call %struct.obj* @setcar(%struct.obj* %7, %struct.obj* %call13)
  %8 = load %struct.obj*, %struct.obj** %form.addr, align 8
  ret %struct.obj* %8
}

; Function Attrs: nounwind uwtable
define %struct.obj* @cadr(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @cdr(%struct.obj* %0)
  %call1 = call %struct.obj* @car(%struct.obj* %call)
  ret %struct.obj* %call1
}

; Function Attrs: nounwind uwtable
define %struct.obj* @cddr(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @cdr(%struct.obj* %0)
  %call1 = call %struct.obj* @cdr(%struct.obj* %call)
  ret %struct.obj* %call1
}

; Function Attrs: nounwind uwtable
define %struct.obj* @letrec_macro(%struct.obj* %form) #0 {
entry:
  %form.addr = alloca %struct.obj*, align 8
  %letb = alloca %struct.obj*, align 8
  %setb = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  store %struct.obj* %form, %struct.obj** %form.addr, align 8
  store %struct.obj* null, %struct.obj** %letb, align 8
  %0 = load %struct.obj*, %struct.obj** %form.addr, align 8
  %call = call %struct.obj* @cddr(%struct.obj* %0)
  store %struct.obj* %call, %struct.obj** %setb, align 8
  %1 = load %struct.obj*, %struct.obj** %form.addr, align 8
  %call1 = call %struct.obj* @cadr(%struct.obj* %1)
  store %struct.obj* %call1, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp ne %struct.obj* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.obj*, %struct.obj** %l, align 8
  %call2 = call %struct.obj* @caar(%struct.obj* %3)
  %call3 = call %struct.obj* @cons(%struct.obj* %call2, %struct.obj* null)
  %4 = load %struct.obj*, %struct.obj** %letb, align 8
  %call4 = call %struct.obj* @cons(%struct.obj* %call3, %struct.obj* %4)
  store %struct.obj* %call4, %struct.obj** %letb, align 8
  %call5 = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0))
  %5 = load %struct.obj*, %struct.obj** %l, align 8
  %call6 = call %struct.obj* @caar(%struct.obj* %5)
  %6 = load %struct.obj*, %struct.obj** %l, align 8
  %call7 = call %struct.obj* @cadar(%struct.obj* %6)
  %call8 = call %struct.obj* (i64, ...) @listn(i64 3, %struct.obj* %call5, %struct.obj* %call6, %struct.obj* %call7)
  %7 = load %struct.obj*, %struct.obj** %setb, align 8
  %call9 = call %struct.obj* @cons(%struct.obj* %call8, %struct.obj* %7)
  store %struct.obj* %call9, %struct.obj** %setb, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.obj*, %struct.obj** %l, align 8
  %call10 = call %struct.obj* @cdr(%struct.obj* %8)
  store %struct.obj* %call10, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.obj*, %struct.obj** %form.addr, align 8
  %10 = load %struct.obj*, %struct.obj** %letb, align 8
  %11 = load %struct.obj*, %struct.obj** %setb, align 8
  %call11 = call %struct.obj* @cons(%struct.obj* %10, %struct.obj* %11)
  %call12 = call %struct.obj* @setcdr(%struct.obj* %9, %struct.obj* %call11)
  %12 = load %struct.obj*, %struct.obj** %form.addr, align 8
  %call13 = call %struct.obj* @cintern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0))
  %call14 = call %struct.obj* @setcar(%struct.obj* %12, %struct.obj* %call13)
  %13 = load %struct.obj*, %struct.obj** %form.addr, align 8
  ret %struct.obj* %13
}

; Function Attrs: nounwind uwtable
define %struct.obj* @caar(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %0)
  %call1 = call %struct.obj* @car(%struct.obj* %call)
  ret %struct.obj* %call1
}

declare %struct.obj* @listn(i64, ...) #3

declare %struct.obj* @cadar(%struct.obj*) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @reverse(%struct.obj* %l) #0 {
entry:
  %l.addr = alloca %struct.obj*, align 8
  %n = alloca %struct.obj*, align 8
  %p = alloca %struct.obj*, align 8
  store %struct.obj* %l, %struct.obj** %l.addr, align 8
  store %struct.obj* null, %struct.obj** %n, align 8
  %0 = load %struct.obj*, %struct.obj** %l.addr, align 8
  store %struct.obj* %0, %struct.obj** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %p, align 8
  %cmp = icmp ne %struct.obj* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %p, align 8
  %call = call %struct.obj* @car(%struct.obj* %2)
  %3 = load %struct.obj*, %struct.obj** %n, align 8
  %call1 = call %struct.obj* @cons(%struct.obj* %call, %struct.obj* %3)
  store %struct.obj* %call1, %struct.obj** %n, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.obj*, %struct.obj** %p, align 8
  %call2 = call %struct.obj* @cdr(%struct.obj* %4)
  store %struct.obj* %call2, %struct.obj** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct.obj*, %struct.obj** %n, align 8
  ret %struct.obj* %5
}

; Function Attrs: nounwind uwtable
define %struct.obj* @let_macro(%struct.obj* %form) #0 {
entry:
  %form.addr = alloca %struct.obj*, align 8
  %p = alloca %struct.obj*, align 8
  %fl = alloca %struct.obj*, align 8
  %al = alloca %struct.obj*, align 8
  %tmp = alloca %struct.obj*, align 8
  store %struct.obj* %form, %struct.obj** %form.addr, align 8
  store %struct.obj* null, %struct.obj** %fl, align 8
  store %struct.obj* null, %struct.obj** %al, align 8
  %0 = load %struct.obj*, %struct.obj** %form.addr, align 8
  %call = call %struct.obj* @cdr(%struct.obj* %0)
  %call1 = call %struct.obj* @car(%struct.obj* %call)
  store %struct.obj* %call1, %struct.obj** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %p, align 8
  %cmp = icmp ne %struct.obj* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %p, align 8
  %call2 = call %struct.obj* @car(%struct.obj* %2)
  store %struct.obj* %call2, %struct.obj** %tmp, align 8
  %3 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp3 = icmp eq %struct.obj* %3, null
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %4 = load %struct.obj*, %struct.obj** %tmp, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 1
  %5 = load i16, i16* %type, align 2
  %conv = sext i16 %5 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp4 = icmp eq i32 %cond, 3
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %6 = load %struct.obj*, %struct.obj** %tmp, align 8
  %7 = load %struct.obj*, %struct.obj** %fl, align 8
  %call6 = call %struct.obj* @cons(%struct.obj* %6, %struct.obj* %7)
  store %struct.obj* %call6, %struct.obj** %fl, align 8
  %8 = load %struct.obj*, %struct.obj** %al, align 8
  %call7 = call %struct.obj* @cons(%struct.obj* null, %struct.obj* %8)
  store %struct.obj* %call7, %struct.obj** %al, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end
  %9 = load %struct.obj*, %struct.obj** %tmp, align 8
  %call8 = call %struct.obj* @car(%struct.obj* %9)
  %10 = load %struct.obj*, %struct.obj** %fl, align 8
  %call9 = call %struct.obj* @cons(%struct.obj* %call8, %struct.obj* %10)
  store %struct.obj* %call9, %struct.obj** %fl, align 8
  %11 = load %struct.obj*, %struct.obj** %tmp, align 8
  %call10 = call %struct.obj* @cdr(%struct.obj* %11)
  %call11 = call %struct.obj* @car(%struct.obj* %call10)
  %12 = load %struct.obj*, %struct.obj** %al, align 8
  %call12 = call %struct.obj* @cons(%struct.obj* %call11, %struct.obj* %12)
  store %struct.obj* %call12, %struct.obj** %al, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.obj*, %struct.obj** %p, align 8
  %call13 = call %struct.obj* @cdr(%struct.obj* %13)
  store %struct.obj* %call13, %struct.obj** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.obj*, %struct.obj** %form.addr, align 8
  %call14 = call %struct.obj* @cdr(%struct.obj* %14)
  %call15 = call %struct.obj* @cdr(%struct.obj* %call14)
  store %struct.obj* %call15, %struct.obj** %p, align 8
  %15 = load %struct.obj*, %struct.obj** %p, align 8
  %call16 = call %struct.obj* @cdr(%struct.obj* %15)
  %cmp17 = icmp eq %struct.obj* %call16, null
  br i1 %cmp17, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %for.end
  %16 = load %struct.obj*, %struct.obj** %p, align 8
  %call20 = call %struct.obj* @car(%struct.obj* %16)
  store %struct.obj* %call20, %struct.obj** %p, align 8
  br label %if.end.23

if.else.21:                                       ; preds = %for.end
  %17 = load %struct.obj*, %struct.obj** @sym_progn, align 8
  %18 = load %struct.obj*, %struct.obj** %p, align 8
  %call22 = call %struct.obj* @cons(%struct.obj* %17, %struct.obj* %18)
  store %struct.obj* %call22, %struct.obj** %p, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.then.19
  %19 = load %struct.obj*, %struct.obj** %form.addr, align 8
  %20 = load %struct.obj*, %struct.obj** %fl, align 8
  %call24 = call %struct.obj* @reverse(%struct.obj* %20)
  %21 = load %struct.obj*, %struct.obj** %al, align 8
  %call25 = call %struct.obj* @reverse(%struct.obj* %21)
  %22 = load %struct.obj*, %struct.obj** %p, align 8
  %call26 = call %struct.obj* @cons(%struct.obj* %22, %struct.obj* null)
  %call27 = call %struct.obj* @cons(%struct.obj* %call25, %struct.obj* %call26)
  %call28 = call %struct.obj* @cons(%struct.obj* %call24, %struct.obj* %call27)
  %call29 = call %struct.obj* @setcdr(%struct.obj* %19, %struct.obj* %call28)
  %23 = load %struct.obj*, %struct.obj** %form.addr, align 8
  %call30 = call %struct.obj* @cintern(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.96, i32 0, i32 0))
  %call31 = call %struct.obj* @setcar(%struct.obj* %23, %struct.obj* %call30)
  %24 = load %struct.obj*, %struct.obj** %form.addr, align 8
  ret %struct.obj* %24
}

; Function Attrs: nounwind uwtable
define %struct.obj* @leval_quote(%struct.obj* %args, %struct.obj* %env) #0 {
entry:
  %args.addr = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  store %struct.obj* %args, %struct.obj** %args.addr, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %0)
  ret %struct.obj* %call
}

; Function Attrs: nounwind uwtable
define %struct.obj* @leval_tenv(%struct.obj* %args, %struct.obj* %env) #0 {
entry:
  %args.addr = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  store %struct.obj* %args, %struct.obj** %args.addr, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %env.addr, align 8
  ret %struct.obj* %0
}

; Function Attrs: nounwind uwtable
define %struct.obj* @leval_while(%struct.obj* %args, %struct.obj* %env) #0 {
entry:
  %args.addr = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  store %struct.obj* %args, %struct.obj** %args.addr, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call1 = call %struct.obj* @leval(%struct.obj* %call, %struct.obj* %1)
  %cmp = icmp ne %struct.obj* %call1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.obj*, %struct.obj** %args.addr, align 8
  %call2 = call %struct.obj* @cdr(%struct.obj* %2)
  store %struct.obj* %call2, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %3 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp3 = icmp ne %struct.obj* %3, null
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %call4 = call %struct.obj* @car(%struct.obj* %4)
  %5 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call5 = call %struct.obj* @leval(%struct.obj* %call4, %struct.obj* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.obj*, %struct.obj** %l, align 8
  %call6 = call %struct.obj* @cdr(%struct.obj* %6)
  store %struct.obj* %call6, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define %struct.obj* @symbolconc(%struct.obj* %args) #0 {
entry:
  %args.addr = alloca %struct.obj*, align 8
  %size = alloca i64, align 8
  %l = alloca %struct.obj*, align 8
  %s = alloca %struct.obj*, align 8
  store %struct.obj* %args, %struct.obj** %args.addr, align 8
  store i64 0, i64* %size, align 8
  %0 = load i8*, i8** @tkbuffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %1 = load %struct.obj*, %struct.obj** %args.addr, align 8
  store %struct.obj* %1, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp ne %struct.obj* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.obj*, %struct.obj** %l, align 8
  %call = call %struct.obj* @car(%struct.obj* %3)
  store %struct.obj* %call, %struct.obj** %s, align 8
  %4 = load %struct.obj*, %struct.obj** %s, align 8
  %cmp1 = icmp eq %struct.obj* %4, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %5 = load %struct.obj*, %struct.obj** %s, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 1
  %6 = load i16, i16* %type, align 2
  %conv = sext i16 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp2 = icmp ne i32 %cond, 3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %7 = load %struct.obj*, %struct.obj** %s, align 8
  %call4 = call %struct.obj* @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.97, i32 0, i32 0), %struct.obj* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %8 = load i64, i64* %size, align 8
  %9 = load %struct.obj*, %struct.obj** %s, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 2
  %symbol = bitcast %union.anon* %storage_as to %struct.anon.1*
  %pname = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol, i32 0, i32 0
  %10 = load i8*, i8** %pname, align 8
  %call5 = call i64 @strlen(i8* %10) #8
  %add = add i64 %8, %call5
  store i64 %add, i64* %size, align 8
  %11 = load i64, i64* %size, align 8
  %cmp6 = icmp sgt i64 %11, 5120
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %call9 = call %struct.obj* @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.98, i32 0, i32 0), %struct.obj* null)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  %12 = load i8*, i8** @tkbuffer, align 8
  %13 = load %struct.obj*, %struct.obj** %s, align 8
  %storage_as11 = getelementptr inbounds %struct.obj, %struct.obj* %13, i32 0, i32 2
  %symbol12 = bitcast %union.anon* %storage_as11 to %struct.anon.1*
  %pname13 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol12, i32 0, i32 0
  %14 = load i8*, i8** %pname13, align 8
  %call14 = call i8* @strcat(i8* %12, i8* %14) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %15 = load %struct.obj*, %struct.obj** %l, align 8
  %call15 = call %struct.obj* @cdr(%struct.obj* %15)
  store %struct.obj* %call15, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i8*, i8** @tkbuffer, align 8
  %call16 = call %struct.obj* @rintern(i8* %16)
  ret %struct.obj* %call16
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @subr_kind_str(i64 %n) #0 {
entry:
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  switch i64 %0, label %sw.default [
    i64 4, label %sw.bb
    i64 5, label %sw.bb.1
    i64 6, label %sw.bb.2
    i64 21, label %sw.bb.3
    i64 7, label %sw.bb.4
    i64 19, label %sw.bb.5
    i64 20, label %sw.bb.6
    i64 8, label %sw.bb.7
    i64 9, label %sw.bb.8
    i64 10, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lprin1g(%struct.obj* %exp, %struct.gen_printio* %f) #0 {
entry:
  %exp.addr = alloca %struct.obj*, align 8
  %f.addr = alloca %struct.gen_printio*, align 8
  %tmp = alloca %struct.obj*, align 8
  %n = alloca i64, align 8
  %p = alloca %struct.user_type_hooks*, align 8
  store %struct.obj* %exp, %struct.obj** %exp.addr, align 8
  store %struct.gen_printio* %f, %struct.gen_printio** %f.addr, align 8
  %0 = bitcast %struct.obj** %exp.addr to i8*
  %1 = load i8*, i8** @stack_limit_ptr, align 8
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.obj** %exp.addr to i8*
  call void @err_stack(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %cmp3 = icmp eq %struct.obj* %3, null
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 1
  %5 = load i16, i16* %type, align 2
  %conv = sext i16 %5 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.25
    i32 3, label %sw.bb.40
    i32 4, label %sw.bb.42
    i32 5, label %sw.bb.42
    i32 6, label %sw.bb.42
    i32 21, label %sw.bb.42
    i32 7, label %sw.bb.42
    i32 19, label %sw.bb.42
    i32 20, label %sw.bb.42
    i32 8, label %sw.bb.42
    i32 9, label %sw.bb.42
    i32 10, label %sw.bb.42
    i32 11, label %sw.bb.55
  ]

sw.bb:                                            ; preds = %cond.end
  %6 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0))
  br label %sw.epilog

sw.bb.4:                                          ; preds = %cond.end
  %7 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111, i32 0, i32 0))
  %8 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %8)
  %9 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %call5 = call %struct.obj* @lprin1g(%struct.obj* %call, %struct.gen_printio* %9)
  %10 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %call6 = call %struct.obj* @cdr(%struct.obj* %10)
  store %struct.obj* %call6, %struct.obj** %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.4
  %11 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp7 = icmp eq %struct.obj* %11, null
  br i1 %cmp7, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %for.cond
  br label %cond.end.13

cond.false.10:                                    ; preds = %for.cond
  %12 = load %struct.obj*, %struct.obj** %tmp, align 8
  %type11 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 1
  %13 = load i16, i16* %type11, align 2
  %conv12 = sext i16 %13 to i32
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.10, %cond.true.9
  %cond14 = phi i32 [ 0, %cond.true.9 ], [ %conv12, %cond.false.10 ]
  %cmp15 = icmp eq i32 %cond14, 1
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end.13
  %14 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.112, i32 0, i32 0))
  %15 = load %struct.obj*, %struct.obj** %tmp, align 8
  %call17 = call %struct.obj* @car(%struct.obj* %15)
  %16 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %call18 = call %struct.obj* @lprin1g(%struct.obj* %call17, %struct.gen_printio* %16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load %struct.obj*, %struct.obj** %tmp, align 8
  %call19 = call %struct.obj* @cdr(%struct.obj* %17)
  store %struct.obj* %call19, %struct.obj** %tmp, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end.13
  %18 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp20 = icmp ne %struct.obj* %18, null
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %for.end
  %19 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i32 0, i32 0))
  %20 = load %struct.obj*, %struct.obj** %tmp, align 8
  %21 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %call23 = call %struct.obj* @lprin1g(%struct.obj* %20, %struct.gen_printio* %21)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %for.end
  %22 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.114, i32 0, i32 0))
  br label %sw.epilog

sw.bb.25:                                         ; preds = %cond.end
  %23 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %23, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %24 = load double, double* %data, align 8
  %conv26 = fptosi double %24 to i64
  store i64 %conv26, i64* %n, align 8
  %25 = load i64, i64* %n, align 8
  %conv27 = sitofp i64 %25 to double
  %26 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %storage_as28 = getelementptr inbounds %struct.obj, %struct.obj* %26, i32 0, i32 2
  %flonum29 = bitcast %union.anon* %storage_as28 to %struct.anon.0*
  %data30 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum29, i32 0, i32 0
  %27 = load double, double* %data30, align 8
  %cmp31 = fcmp oeq double %conv27, %27
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %sw.bb.25
  %28 = load i8*, i8** @tkbuffer, align 8
  %29 = load i64, i64* %n, align 8
  %call34 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i32 0, i32 0), i64 %29) #6
  br label %if.end.39

if.else:                                          ; preds = %sw.bb.25
  %30 = load i8*, i8** @tkbuffer, align 8
  %31 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %storage_as35 = getelementptr inbounds %struct.obj, %struct.obj* %31, i32 0, i32 2
  %flonum36 = bitcast %union.anon* %storage_as35 to %struct.anon.0*
  %data37 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum36, i32 0, i32 0
  %32 = load double, double* %data37, align 8
  %call38 = call i32 (i8*, i8*, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.116, i32 0, i32 0), double %32) #6
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.then.33
  %33 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %34 = load i8*, i8** @tkbuffer, align 8
  call void @gput_st(%struct.gen_printio* %33, i8* %34)
  br label %sw.epilog

sw.bb.40:                                         ; preds = %cond.end
  %35 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %36 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %storage_as41 = getelementptr inbounds %struct.obj, %struct.obj* %36, i32 0, i32 2
  %symbol = bitcast %union.anon* %storage_as41 to %struct.anon.1*
  %pname = getelementptr inbounds %struct.anon.1, %struct.anon.1* %symbol, i32 0, i32 0
  %37 = load i8*, i8** %pname, align 8
  call void @gput_st(%struct.gen_printio* %35, i8* %37)
  br label %sw.epilog

sw.bb.42:                                         ; preds = %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end
  %38 = load i8*, i8** @tkbuffer, align 8
  %39 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %cmp43 = icmp eq %struct.obj* %39, null
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %sw.bb.42
  br label %cond.end.49

cond.false.46:                                    ; preds = %sw.bb.42
  %40 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %type47 = getelementptr inbounds %struct.obj, %struct.obj* %40, i32 0, i32 1
  %41 = load i16, i16* %type47, align 2
  %conv48 = sext i16 %41 to i32
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.46, %cond.true.45
  %cond50 = phi i32 [ 0, %cond.true.45 ], [ %conv48, %cond.false.46 ]
  %conv51 = sext i32 %cond50 to i64
  %call52 = call i8* @subr_kind_str(i64 %conv51)
  %call53 = call i32 (i8*, i8*, ...) @sprintf(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i32 0, i32 0), i8* %call52) #6
  %42 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %43 = load i8*, i8** @tkbuffer, align 8
  call void @gput_st(%struct.gen_printio* %42, i8* %43)
  %44 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %45 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %storage_as54 = getelementptr inbounds %struct.obj, %struct.obj* %45, i32 0, i32 2
  %subr = bitcast %union.anon* %storage_as54 to %struct.anon.9*
  %name = getelementptr inbounds %struct.anon.9, %struct.anon.9* %subr, i32 0, i32 0
  %46 = load i8*, i8** %name, align 8
  call void @gput_st(%struct.gen_printio* %44, i8* %46)
  %47 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.118, i32 0, i32 0))
  br label %sw.epilog

sw.bb.55:                                         ; preds = %cond.end
  %48 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.119, i32 0, i32 0))
  %49 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %storage_as56 = getelementptr inbounds %struct.obj, %struct.obj* %49, i32 0, i32 2
  %closure = bitcast %union.anon* %storage_as56 to %struct.anon.10*
  %code = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure, i32 0, i32 1
  %50 = load %struct.obj*, %struct.obj** %code, align 8
  %cmp57 = icmp eq %struct.obj* %50, null
  br i1 %cmp57, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %sw.bb.55
  br label %cond.end.66

cond.false.60:                                    ; preds = %sw.bb.55
  %51 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %storage_as61 = getelementptr inbounds %struct.obj, %struct.obj* %51, i32 0, i32 2
  %closure62 = bitcast %union.anon* %storage_as61 to %struct.anon.10*
  %code63 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure62, i32 0, i32 1
  %52 = load %struct.obj*, %struct.obj** %code63, align 8
  %type64 = getelementptr inbounds %struct.obj, %struct.obj* %52, i32 0, i32 1
  %53 = load i16, i16* %type64, align 2
  %conv65 = sext i16 %53 to i32
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.60, %cond.true.59
  %cond67 = phi i32 [ 0, %cond.true.59 ], [ %conv65, %cond.false.60 ]
  %cmp68 = icmp eq i32 %cond67, 1
  br i1 %cmp68, label %if.then.70, label %if.else.81

if.then.70:                                       ; preds = %cond.end.66
  %54 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %storage_as71 = getelementptr inbounds %struct.obj, %struct.obj* %54, i32 0, i32 2
  %closure72 = bitcast %union.anon* %storage_as71 to %struct.anon.10*
  %code73 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure72, i32 0, i32 1
  %55 = load %struct.obj*, %struct.obj** %code73, align 8
  %call74 = call %struct.obj* @car(%struct.obj* %55)
  %56 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %call75 = call %struct.obj* @lprin1g(%struct.obj* %call74, %struct.gen_printio* %56)
  %57 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.112, i32 0, i32 0))
  %58 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %storage_as76 = getelementptr inbounds %struct.obj, %struct.obj* %58, i32 0, i32 2
  %closure77 = bitcast %union.anon* %storage_as76 to %struct.anon.10*
  %code78 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure77, i32 0, i32 1
  %59 = load %struct.obj*, %struct.obj** %code78, align 8
  %call79 = call %struct.obj* @cdr(%struct.obj* %59)
  %60 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %call80 = call %struct.obj* @lprin1g(%struct.obj* %call79, %struct.gen_printio* %60)
  br label %if.end.86

if.else.81:                                       ; preds = %cond.end.66
  %61 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %storage_as82 = getelementptr inbounds %struct.obj, %struct.obj* %61, i32 0, i32 2
  %closure83 = bitcast %union.anon* %storage_as82 to %struct.anon.10*
  %code84 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure83, i32 0, i32 1
  %62 = load %struct.obj*, %struct.obj** %code84, align 8
  %63 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %call85 = call %struct.obj* @lprin1g(%struct.obj* %62, %struct.gen_printio* %63)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.81, %if.then.70
  %64 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.118, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %65 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %cmp87 = icmp eq %struct.obj* %65, null
  br i1 %cmp87, label %cond.true.89, label %cond.false.90

cond.true.89:                                     ; preds = %sw.default
  br label %cond.end.93

cond.false.90:                                    ; preds = %sw.default
  %66 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %type91 = getelementptr inbounds %struct.obj, %struct.obj* %66, i32 0, i32 1
  %67 = load i16, i16* %type91, align 2
  %conv92 = sext i16 %67 to i32
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.false.90, %cond.true.89
  %cond94 = phi i32 [ 0, %cond.true.89 ], [ %conv92, %cond.false.90 ]
  %conv95 = sext i32 %cond94 to i64
  %call96 = call %struct.user_type_hooks* @get_user_type_hooks(i64 %conv95)
  store %struct.user_type_hooks* %call96, %struct.user_type_hooks** %p, align 8
  %68 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %prin1 = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %68, i32 0, i32 4
  %69 = load void (%struct.obj*, %struct.gen_printio*)*, void (%struct.obj*, %struct.gen_printio*)** %prin1, align 8
  %tobool = icmp ne void (%struct.obj*, %struct.gen_printio*)* %69, null
  br i1 %tobool, label %if.then.97, label %if.else.99

if.then.97:                                       ; preds = %cond.end.93
  %70 = load %struct.user_type_hooks*, %struct.user_type_hooks** %p, align 8
  %prin198 = getelementptr inbounds %struct.user_type_hooks, %struct.user_type_hooks* %70, i32 0, i32 4
  %71 = load void (%struct.obj*, %struct.gen_printio*)*, void (%struct.obj*, %struct.gen_printio*)** %prin198, align 8
  %72 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %73 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void %71(%struct.obj* %72, %struct.gen_printio* %73)
  br label %if.end.109

if.else.99:                                       ; preds = %cond.end.93
  %74 = load i8*, i8** @tkbuffer, align 8
  %75 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %cmp100 = icmp eq %struct.obj* %75, null
  br i1 %cmp100, label %cond.true.102, label %cond.false.103

cond.true.102:                                    ; preds = %if.else.99
  br label %cond.end.106

cond.false.103:                                   ; preds = %if.else.99
  %76 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %type104 = getelementptr inbounds %struct.obj, %struct.obj* %76, i32 0, i32 1
  %77 = load i16, i16* %type104, align 2
  %conv105 = sext i16 %77 to i32
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.103, %cond.true.102
  %cond107 = phi i32 [ 0, %cond.true.102 ], [ %conv105, %cond.false.103 ]
  %78 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %call108 = call i32 (i8*, i8*, ...) @sprintf(i8* %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.120, i32 0, i32 0), i32 %cond107, %struct.obj* %78) #6
  %79 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %80 = load i8*, i8** @tkbuffer, align 8
  call void @gput_st(%struct.gen_printio* %79, i8* %80)
  br label %if.end.109

if.end.109:                                       ; preds = %cond.end.106, %if.then.97
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.109, %if.end.86, %cond.end.49, %sw.bb.40, %if.end.39, %if.end.24, %sw.bb
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @get_c_file(%struct.obj* %p, %struct._IO_FILE* %deflt) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %p.addr = alloca %struct.obj*, align 8
  %deflt.addr = alloca %struct._IO_FILE*, align 8
  store %struct.obj* %p, %struct.obj** %p.addr, align 8
  store %struct._IO_FILE* %deflt, %struct._IO_FILE** %deflt.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %deflt.addr, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %deflt.addr, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %cmp1 = icmp eq %struct.obj* %3, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 1
  %5 = load i16, i16* %type, align 2
  %conv = sext i16 %5 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp2 = icmp ne i32 %cond, 17
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  %6 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.134, i32 0, i32 0), %struct.obj* %6)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %cond.end
  %7 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 2
  %c_file = bitcast %union.anon* %storage_as to %struct.anon.17*
  %f = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %tobool6 = icmp ne %struct._IO_FILE* %8, null
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  %9 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %call8 = call %struct.obj* @err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.151, i32 0, i32 0), %struct.obj* %9)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  %10 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %storage_as10 = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %c_file11 = bitcast %union.anon* %storage_as10 to %struct.anon.17*
  %f12 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file11, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f12, align 8
  store %struct._IO_FILE* %11, %struct._IO_FILE** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %retval
  ret %struct._IO_FILE* %12
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lprin1f(%struct.obj* %exp, %struct._IO_FILE* %f) #0 {
entry:
  %exp.addr = alloca %struct.obj*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %s = alloca %struct.gen_printio, align 8
  store %struct.obj* %exp, %struct.obj** %exp.addr, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  %putc_fcn = getelementptr inbounds %struct.gen_printio, %struct.gen_printio* %s, i32 0, i32 0
  store i32 (i32, i8*)* null, i32 (i32, i8*)** %putc_fcn, align 8
  %puts_fcn = getelementptr inbounds %struct.gen_printio, %struct.gen_printio* %s, i32 0, i32 1
  store i32 (i8*, i8*)* @fputs_fcn, i32 (i8*, i8*)** %puts_fcn, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %1 = bitcast %struct._IO_FILE* %0 to i8*
  %cb_argument = getelementptr inbounds %struct.gen_printio, %struct.gen_printio* %s, i32 0, i32 2
  store i8* %1, i8** %cb_argument, align 8
  %2 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %call = call %struct.obj* @lprin1g(%struct.obj* %2, %struct.gen_printio* %s)
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lprin1(%struct.obj* %exp, %struct.obj* %lf) #0 {
entry:
  %exp.addr = alloca %struct.obj*, align 8
  %lf.addr = alloca %struct.obj*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  store %struct.obj* %exp, %struct.obj** %exp.addr, align 8
  store %struct.obj* %lf, %struct.obj** %lf.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %lf.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call %struct._IO_FILE* @get_c_file(%struct.obj* %0, %struct._IO_FILE* %1)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %2 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call1 = call %struct.obj* @lprin1f(%struct.obj* %2, %struct._IO_FILE* %3)
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lreadf(%struct._IO_FILE* %f) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %s = alloca %struct.gen_readio, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  %getc_fcn = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %s, i32 0, i32 0
  store i32 (i8*)* bitcast (i32 (%struct._IO_FILE*)* @f_getc to i32 (i8*)*), i32 (i8*)** %getc_fcn, align 8
  %ungetc_fcn = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %s, i32 0, i32 1
  store void (i32, i8*)* bitcast (void (i32, %struct._IO_FILE*)* @f_ungetc to void (i32, i8*)*), void (i32, i8*)** %ungetc_fcn, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %1 = bitcast %struct._IO_FILE* %0 to i8*
  %cb_argument = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %s, i32 0, i32 2
  store i8* %1, i8** %cb_argument, align 8
  %call = call %struct.obj* @readtl(%struct.gen_readio* %s)
  ret %struct.obj* %call
}

; Function Attrs: nounwind uwtable
define i32 @f_getc(%struct._IO_FILE* %f) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %iflag = alloca i64, align 8
  %dflag = alloca i64, align 8
  %c = alloca i32, align 4
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %iflag, align 8
  %0 = load i64, i64* @interrupt_differed, align 8
  store i64 %0, i64* %dflag, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call1 = call i32 @_IO_getc(%struct._IO_FILE* %1)
  store i32 %call1, i32* %c, align 4
  %2 = load i64, i64* %iflag, align 8
  %call2 = call i64 @no_interrupt(i64 %2)
  %3 = load i32, i32* %c, align 4
  ret i32 %3
}

declare i32 @_IO_getc(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @f_ungetc(i32 %c, %struct._IO_FILE* %f) #0 {
entry:
  %c.addr = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  store i32 %c, i32* %c.addr, align 4
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  %0 = load i32, i32* %c.addr, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i32 @ungetc(i32 %0, %struct._IO_FILE* %1)
  ret void
}

declare i32 @ungetc(i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define i32 @flush_ws(%struct.gen_readio* %f, i8* %eoferr) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.gen_readio*, align 8
  %eoferr.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %commentp = alloca i32, align 4
  store %struct.gen_readio* %f, %struct.gen_readio** %f.addr, align 8
  store i8* %eoferr, i8** %eoferr.addr, align 8
  store i32 0, i32* %commentp, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.18
  %0 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %getc_fcn = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %0, i32 0, i32 0
  %1 = load i32 (i8*)*, i32 (i8*)** %getc_fcn, align 8
  %2 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %cb_argument = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %2, i32 0, i32 2
  %3 = load i8*, i8** %cb_argument, align 8
  %call = call i32 %1(i8* %3)
  store i32 %call, i32* %c, align 4
  %4 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %while.body
  %5 = load i8*, i8** %eoferr.addr, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %6 = load i8*, i8** %eoferr.addr, align 8
  %call2 = call %struct.obj* @err(i8* %6, %struct.obj* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load i32, i32* %c, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.1
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %while.body
  %8 = load i32, i32* %commentp, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then.5, label %if.else.9

if.then.5:                                        ; preds = %if.end.3
  %9 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %9, 10
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  store i32 0, i32* %commentp, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.5
  br label %if.end.18

if.else.9:                                        ; preds = %if.end.3
  %10 = load i32, i32* %c, align 4
  %cmp10 = icmp eq i32 %10, 59
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.9
  store i32 1, i32* %commentp, align 4
  br label %if.end.17

if.else.12:                                       ; preds = %if.else.9
  %11 = load i32, i32* %c, align 4
  %idxprom = sext i32 %11 to i64
  %call13 = call i16** @__ctype_b_loc() #11
  %12 = load i16*, i16** %call13, align 8
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 %idxprom
  %13 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %13 to i32
  %and = and i32 %conv, 8192
  %tobool14 = icmp ne i32 %and, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.else.12
  %14 = load i32, i32* %c, align 4
  store i32 %14, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.else.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.11
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.8
  br label %while.body

return:                                           ; preds = %if.then.15, %if.else
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #7

; Function Attrs: nounwind uwtable
define %struct.obj* @readtl(%struct.gen_readio* %f) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %f.addr = alloca %struct.gen_readio*, align 8
  %c = alloca i32, align 4
  store %struct.gen_readio* %f, %struct.gen_readio** %f.addr, align 8
  %0 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %call = call i32 @flush_ws(%struct.gen_readio* %0, i8* null)
  store i32 %call, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** @eof_val, align 8
  store %struct.obj* %2, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %ungetc_fcn = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %3, i32 0, i32 1
  %4 = load void (i32, i8*)*, void (i32, i8*)** %ungetc_fcn, align 8
  %5 = load i32, i32* %c, align 4
  %6 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %cb_argument = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %6, i32 0, i32 2
  %7 = load i8*, i8** %cb_argument, align 8
  call void %4(i32 %5, i8* %7)
  %8 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %call1 = call %struct.obj* @lreadr(%struct.gen_readio* %8)
  store %struct.obj* %call1, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %9
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lreadr(%struct.gen_readio* %f) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %f.addr = alloca %struct.gen_readio*, align 8
  %c = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  store %struct.gen_readio* %f, %struct.gen_readio** %f.addr, align 8
  %0 = load i8*, i8** @tkbuffer, align 8
  store i8* %0, i8** %buffer, align 8
  %1 = bitcast %struct.gen_readio** %f.addr to i8*
  %2 = load i8*, i8** @stack_limit_ptr, align 8
  %cmp = icmp ult i8* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.gen_readio** %f.addr to i8*
  call void @err_stack(i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %buffer, align 8
  store i8* %4, i8** %p, align 8
  %5 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %call = call i32 @flush_ws(%struct.gen_readio* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.122, i32 0, i32 0))
  store i32 %call, i32* %c, align 4
  %6 = load i32, i32* %c, align 4
  switch i32 %6, label %sw.default.24 [
    i32 40, label %sw.bb
    i32 41, label %sw.bb.2
    i32 39, label %sw.bb.4
    i32 96, label %sw.bb.8
    i32 44, label %sw.bb.12
    i32 34, label %sw.bb.20
    i32 35, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %call1 = call %struct.obj* @lreadparen(%struct.gen_readio* %7)
  store %struct.obj* %call1, %struct.obj** %retval
  br label %return

sw.bb.2:                                          ; preds = %if.end
  %call3 = call %struct.obj* @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.123, i32 0, i32 0), %struct.obj* null)
  br label %sw.bb.4

sw.bb.4:                                          ; preds = %if.end, %sw.bb.2
  %8 = load %struct.obj*, %struct.obj** @sym_quote, align 8
  %9 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %call5 = call %struct.obj* @lreadr(%struct.gen_readio* %9)
  %call6 = call %struct.obj* @cons(%struct.obj* %call5, %struct.obj* null)
  %call7 = call %struct.obj* @cons(%struct.obj* %8, %struct.obj* %call6)
  store %struct.obj* %call7, %struct.obj** %retval
  br label %return

sw.bb.8:                                          ; preds = %if.end
  %call9 = call %struct.obj* @cintern(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.124, i32 0, i32 0))
  %10 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %call10 = call %struct.obj* @lreadr(%struct.gen_readio* %10)
  %call11 = call %struct.obj* @cons(%struct.obj* %call9, %struct.obj* %call10)
  store %struct.obj* %call11, %struct.obj** %retval
  br label %return

sw.bb.12:                                         ; preds = %if.end
  %11 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %getc_fcn = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %11, i32 0, i32 0
  %12 = load i32 (i8*)*, i32 (i8*)** %getc_fcn, align 8
  %13 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %cb_argument = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %13, i32 0, i32 2
  %14 = load i8*, i8** %cb_argument, align 8
  %call13 = call i32 %12(i8* %14)
  store i32 %call13, i32* %c, align 4
  %15 = load i32, i32* %c, align 4
  switch i32 %15, label %sw.default [
    i32 64, label %sw.bb.14
    i32 46, label %sw.bb.15
  ]

sw.bb.14:                                         ; preds = %sw.bb.12
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.125, i32 0, i32 0), i8** %p, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %sw.bb.12
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.126, i32 0, i32 0), i8** %p, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.12
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.127, i32 0, i32 0), i8** %p, align 8
  %16 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %ungetc_fcn = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %16, i32 0, i32 1
  %17 = load void (i32, i8*)*, void (i32, i8*)** %ungetc_fcn, align 8
  %18 = load i32, i32* %c, align 4
  %19 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %cb_argument16 = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %19, i32 0, i32 2
  %20 = load i8*, i8** %cb_argument16, align 8
  call void %17(i32 %18, i8* %20)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.15, %sw.bb.14
  %21 = load i8*, i8** %p, align 8
  %call17 = call %struct.obj* @cintern(i8* %21)
  %22 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %call18 = call %struct.obj* @lreadr(%struct.gen_readio* %22)
  %call19 = call %struct.obj* @cons(%struct.obj* %call17, %struct.obj* %call18)
  store %struct.obj* %call19, %struct.obj** %retval
  br label %return

sw.bb.20:                                         ; preds = %if.end
  %23 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %call21 = call %struct.obj* @lreadstring(%struct.gen_readio* %23)
  store %struct.obj* %call21, %struct.obj** %retval
  br label %return

sw.bb.22:                                         ; preds = %if.end
  %24 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %call23 = call %struct.obj* @lreadsharp(%struct.gen_readio* %24)
  store %struct.obj* %call23, %struct.obj** %retval
  br label %return

sw.default.24:                                    ; preds = %if.end
  %25 = load %struct.obj* (i32, %struct.gen_readio*)*, %struct.obj* (i32, %struct.gen_readio*)** @user_readm, align 8
  %cmp25 = icmp ne %struct.obj* (i32, %struct.gen_readio*)* %25, null
  br i1 %cmp25, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %sw.default.24
  %26 = load i8*, i8** @user_ch_readm, align 8
  %27 = load i32, i32* %c, align 4
  %call26 = call i8* @strchr(i8* %26, i32 %27) #8
  %tobool = icmp ne i8* %call26, null
  br i1 %tobool, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %land.lhs.true
  %28 = load %struct.obj* (i32, %struct.gen_readio*)*, %struct.obj* (i32, %struct.gen_readio*)** @user_readm, align 8
  %29 = load i32, i32* %c, align 4
  %30 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %call28 = call %struct.obj* %28(i32 %29, %struct.gen_readio* %30)
  store %struct.obj* %call28, %struct.obj** %retval
  br label %return

if.end.29:                                        ; preds = %land.lhs.true, %sw.default.24
  br label %sw.epilog.30

sw.epilog.30:                                     ; preds = %if.end.29
  %31 = load i32, i32* %c, align 4
  %conv = trunc i32 %31 to i8
  %32 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv, i8* %32, align 1
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog.30
  %33 = load i32, i32* %j, align 4
  %cmp31 = icmp slt i32 %33, 5120
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %getc_fcn33 = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %34, i32 0, i32 0
  %35 = load i32 (i8*)*, i32 (i8*)** %getc_fcn33, align 8
  %36 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %cb_argument34 = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %36, i32 0, i32 2
  %37 = load i8*, i8** %cb_argument34, align 8
  %call35 = call i32 %35(i8* %37)
  store i32 %call35, i32* %c, align 4
  %38 = load i32, i32* %c, align 4
  %cmp36 = icmp eq i32 %38, -1
  br i1 %cmp36, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %for.body
  %39 = load i8*, i8** %buffer, align 8
  %40 = load i32, i32* %j, align 4
  %conv39 = sext i32 %40 to i64
  %call40 = call %struct.obj* @lreadtk(i8* %39, i64 %conv39)
  store %struct.obj* %call40, %struct.obj** %retval
  br label %return

if.end.41:                                        ; preds = %for.body
  %41 = load i32, i32* %c, align 4
  %idxprom = sext i32 %41 to i64
  %call42 = call i16** @__ctype_b_loc() #11
  %42 = load i16*, i16** %call42, align 8
  %arrayidx = getelementptr inbounds i16, i16* %42, i64 %idxprom
  %43 = load i16, i16* %arrayidx, align 2
  %conv43 = zext i16 %43 to i32
  %and = and i32 %conv43, 8192
  %tobool44 = icmp ne i32 %and, 0
  br i1 %tobool44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.end.41
  %44 = load i8*, i8** %buffer, align 8
  %45 = load i32, i32* %j, align 4
  %conv46 = sext i32 %45 to i64
  %call47 = call %struct.obj* @lreadtk(i8* %44, i64 %conv46)
  store %struct.obj* %call47, %struct.obj** %retval
  br label %return

if.end.48:                                        ; preds = %if.end.41
  %46 = load i32, i32* %c, align 4
  %call49 = call i8* @strchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i32 0), i32 %46) #8
  %tobool50 = icmp ne i8* %call49, null
  br i1 %tobool50, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.48
  %47 = load i8*, i8** @user_te_readm, align 8
  %48 = load i32, i32* %c, align 4
  %call51 = call i8* @strchr(i8* %47, i32 %48) #8
  %tobool52 = icmp ne i8* %call51, null
  br i1 %tobool52, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %lor.lhs.false, %if.end.48
  %49 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %ungetc_fcn54 = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %49, i32 0, i32 1
  %50 = load void (i32, i8*)*, void (i32, i8*)** %ungetc_fcn54, align 8
  %51 = load i32, i32* %c, align 4
  %52 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %cb_argument55 = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %52, i32 0, i32 2
  %53 = load i8*, i8** %cb_argument55, align 8
  call void %50(i32 %51, i8* %53)
  %54 = load i8*, i8** %buffer, align 8
  %55 = load i32, i32* %j, align 4
  %conv56 = sext i32 %55 to i64
  %call57 = call %struct.obj* @lreadtk(i8* %54, i64 %conv56)
  store %struct.obj* %call57, %struct.obj** %retval
  br label %return

if.end.58:                                        ; preds = %lor.lhs.false
  %56 = load i32, i32* %c, align 4
  %conv59 = trunc i32 %56 to i8
  %57 = load i8*, i8** %p, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr60, i8** %p, align 8
  store i8 %conv59, i8* %57, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.58
  %58 = load i32, i32* %j, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call61 = call %struct.obj* @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.129, i32 0, i32 0), %struct.obj* null)
  store %struct.obj* %call61, %struct.obj** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.53, %if.then.45, %if.then.38, %if.then.27, %sw.bb.22, %sw.bb.20, %sw.epilog, %sw.bb.8, %sw.bb.4, %sw.bb
  %59 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %59
}

; Function Attrs: nounwind uwtable
define void @set_read_hooks(i8* %all_set, i8* %end_set, %struct.obj* (i32, %struct.gen_readio*)* %fcn1, %struct.obj* (i8*, i64, i32*)* %fcn2) #0 {
entry:
  %all_set.addr = alloca i8*, align 8
  %end_set.addr = alloca i8*, align 8
  %fcn1.addr = alloca %struct.obj* (i32, %struct.gen_readio*)*, align 8
  %fcn2.addr = alloca %struct.obj* (i8*, i64, i32*)*, align 8
  store i8* %all_set, i8** %all_set.addr, align 8
  store i8* %end_set, i8** %end_set.addr, align 8
  store %struct.obj* (i32, %struct.gen_readio*)* %fcn1, %struct.obj* (i32, %struct.gen_readio*)** %fcn1.addr, align 8
  store %struct.obj* (i8*, i64, i32*)* %fcn2, %struct.obj* (i8*, i64, i32*)** %fcn2.addr, align 8
  %0 = load i8*, i8** %all_set.addr, align 8
  store i8* %0, i8** @user_ch_readm, align 8
  %1 = load i8*, i8** %end_set.addr, align 8
  store i8* %1, i8** @user_te_readm, align 8
  %2 = load %struct.obj* (i32, %struct.gen_readio*)*, %struct.obj* (i32, %struct.gen_readio*)** %fcn1.addr, align 8
  store %struct.obj* (i32, %struct.gen_readio*)* %2, %struct.obj* (i32, %struct.gen_readio*)** @user_readm, align 8
  %3 = load %struct.obj* (i8*, i64, i32*)*, %struct.obj* (i8*, i64, i32*)** %fcn2.addr, align 8
  store %struct.obj* (i8*, i64, i32*)* %3, %struct.obj* (i8*, i64, i32*)** @user_readt, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lreadparen(%struct.gen_readio* %f) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %f.addr = alloca %struct.gen_readio*, align 8
  %c = alloca i32, align 4
  %tmp = alloca %struct.obj*, align 8
  store %struct.gen_readio* %f, %struct.gen_readio** %f.addr, align 8
  %0 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %call = call i32 @flush_ws(%struct.gen_readio* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.130, i32 0, i32 0))
  store i32 %call, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %1, 41
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %ungetc_fcn = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %2, i32 0, i32 1
  %3 = load void (i32, i8*)*, void (i32, i8*)** %ungetc_fcn, align 8
  %4 = load i32, i32* %c, align 4
  %5 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %cb_argument = getelementptr inbounds %struct.gen_readio, %struct.gen_readio* %5, i32 0, i32 2
  %6 = load i8*, i8** %cb_argument, align 8
  call void %3(i32 %4, i8* %6)
  %7 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %call1 = call %struct.obj* @lreadr(%struct.gen_readio* %7)
  store %struct.obj* %call1, %struct.obj** %tmp, align 8
  %8 = load %struct.obj*, %struct.obj** %tmp, align 8
  %9 = load %struct.obj*, %struct.obj** @sym_dot, align 8
  %cmp2 = icmp eq %struct.obj* %8, %9
  br i1 %cmp2, label %if.then.3, label %if.end.10

if.then.3:                                        ; preds = %if.end
  %10 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %call4 = call %struct.obj* @lreadr(%struct.gen_readio* %10)
  store %struct.obj* %call4, %struct.obj** %tmp, align 8
  %11 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %call5 = call i32 @flush_ws(%struct.gen_readio* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.130, i32 0, i32 0))
  store i32 %call5, i32* %c, align 4
  %12 = load i32, i32* %c, align 4
  %cmp6 = icmp ne i32 %12, 41
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.then.3
  %call8 = call %struct.obj* @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.131, i32 0, i32 0), %struct.obj* null)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.then.3
  %13 = load %struct.obj*, %struct.obj** %tmp, align 8
  store %struct.obj* %13, %struct.obj** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %14 = load %struct.obj*, %struct.obj** %tmp, align 8
  %15 = load %struct.gen_readio*, %struct.gen_readio** %f.addr, align 8
  %call11 = call %struct.obj* @lreadparen(%struct.gen_readio* %15)
  %call12 = call %struct.obj* @cons(%struct.obj* %14, %struct.obj* %call11)
  store %struct.obj* %call12, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.end.9, %if.then
  %16 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %16
}

declare %struct.obj* @lreadstring(%struct.gen_readio*) #3

declare %struct.obj* @lreadsharp(%struct.gen_readio*) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @lreadtk(i8* %buffer, i64 %j) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %buffer.addr = alloca i8*, align 8
  %j.addr = alloca i64, align 8
  %flag = alloca i32, align 4
  %tmp = alloca %struct.obj*, align 8
  %adigit = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %j, i64* %j.addr, align 8
  %0 = load i8*, i8** %buffer.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64, i64* %j.addr, align 8
  %2 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %1
  store i8 0, i8* %arrayidx, align 1
  %3 = load %struct.obj* (i8*, i64, i32*)*, %struct.obj* (i8*, i64, i32*)** @user_readt, align 8
  %cmp = icmp ne %struct.obj* (i8*, i64, i32*)* %3, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %4 = load %struct.obj* (i8*, i64, i32*)*, %struct.obj* (i8*, i64, i32*)** @user_readt, align 8
  %5 = load i8*, i8** %p, align 8
  %6 = load i64, i64* %j.addr, align 8
  %call = call %struct.obj* %4(i8* %5, i64 %6, i32* %flag)
  store %struct.obj* %call, %struct.obj** %tmp, align 8
  %7 = load i32, i32* %flag, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load %struct.obj*, %struct.obj** %tmp, align 8
  store %struct.obj* %8, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %9 = load i8*, i8** %p, align 8
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %cmp5 = icmp eq i32 %conv, 45
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %11 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 1
  store i8* %add.ptr, i8** %p, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.4
  store i32 0, i32* %adigit, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.8
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv9 = sext i8 %13 to i32
  %idxprom = sext i32 %conv9 to i64
  %call10 = call i16** @__ctype_b_loc() #11
  %14 = load i16*, i16** %call10, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %14, i64 %idxprom
  %15 = load i16, i16* %arrayidx11, align 2
  %conv12 = zext i16 %15 to i32
  %and = and i32 %conv12, 2048
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i8*, i8** %p, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %16, i64 1
  store i8* %add.ptr14, i8** %p, align 8
  store i32 1, i32* %adigit, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load i8*, i8** %p, align 8
  %18 = load i8, i8* %17, align 1
  %conv15 = sext i8 %18 to i32
  %cmp16 = icmp eq i32 %conv15, 46
  br i1 %cmp16, label %if.then.18, label %if.end.31

if.then.18:                                       ; preds = %while.end
  %19 = load i8*, i8** %p, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %add.ptr19, i8** %p, align 8
  br label %while.cond.20

while.cond.20:                                    ; preds = %while.body.28, %if.then.18
  %20 = load i8*, i8** %p, align 8
  %21 = load i8, i8* %20, align 1
  %conv21 = sext i8 %21 to i32
  %idxprom22 = sext i32 %conv21 to i64
  %call23 = call i16** @__ctype_b_loc() #11
  %22 = load i16*, i16** %call23, align 8
  %arrayidx24 = getelementptr inbounds i16, i16* %22, i64 %idxprom22
  %23 = load i16, i16* %arrayidx24, align 2
  %conv25 = zext i16 %23 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %while.body.28, label %while.end.30

while.body.28:                                    ; preds = %while.cond.20
  %24 = load i8*, i8** %p, align 8
  %add.ptr29 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %add.ptr29, i8** %p, align 8
  store i32 1, i32* %adigit, align 4
  br label %while.cond.20

while.end.30:                                     ; preds = %while.cond.20
  br label %if.end.31

if.end.31:                                        ; preds = %while.end.30, %while.end
  %25 = load i32, i32* %adigit, align 4
  %tobool32 = icmp ne i32 %25, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.end.31
  br label %a_symbol

if.end.34:                                        ; preds = %if.end.31
  %26 = load i8*, i8** %p, align 8
  %27 = load i8, i8* %26, align 1
  %conv35 = sext i8 %27 to i32
  %cmp36 = icmp eq i32 %conv35, 101
  br i1 %cmp36, label %if.then.38, label %if.end.70

if.then.38:                                       ; preds = %if.end.34
  %28 = load i8*, i8** %p, align 8
  %add.ptr39 = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %add.ptr39, i8** %p, align 8
  %29 = load i8*, i8** %p, align 8
  %30 = load i8, i8* %29, align 1
  %conv40 = sext i8 %30 to i32
  %cmp41 = icmp eq i32 %conv40, 45
  br i1 %cmp41, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.38
  %31 = load i8*, i8** %p, align 8
  %32 = load i8, i8* %31, align 1
  %conv43 = sext i8 %32 to i32
  %cmp44 = icmp eq i32 %conv43, 43
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %lor.lhs.false, %if.then.38
  %33 = load i8*, i8** %p, align 8
  %add.ptr47 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %add.ptr47, i8** %p, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %lor.lhs.false
  %34 = load i8*, i8** %p, align 8
  %35 = load i8, i8* %34, align 1
  %conv49 = sext i8 %35 to i32
  %idxprom50 = sext i32 %conv49 to i64
  %call51 = call i16** @__ctype_b_loc() #11
  %36 = load i16*, i16** %call51, align 8
  %arrayidx52 = getelementptr inbounds i16, i16* %36, i64 %idxprom50
  %37 = load i16, i16* %arrayidx52, align 2
  %conv53 = zext i16 %37 to i32
  %and54 = and i32 %conv53, 2048
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.else, label %if.then.56

if.then.56:                                       ; preds = %if.end.48
  br label %a_symbol

if.else:                                          ; preds = %if.end.48
  %38 = load i8*, i8** %p, align 8
  %add.ptr57 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %add.ptr57, i8** %p, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.else
  br label %while.cond.59

while.cond.59:                                    ; preds = %while.body.67, %if.end.58
  %39 = load i8*, i8** %p, align 8
  %40 = load i8, i8* %39, align 1
  %conv60 = sext i8 %40 to i32
  %idxprom61 = sext i32 %conv60 to i64
  %call62 = call i16** @__ctype_b_loc() #11
  %41 = load i16*, i16** %call62, align 8
  %arrayidx63 = getelementptr inbounds i16, i16* %41, i64 %idxprom61
  %42 = load i16, i16* %arrayidx63, align 2
  %conv64 = zext i16 %42 to i32
  %and65 = and i32 %conv64, 2048
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %while.body.67, label %while.end.69

while.body.67:                                    ; preds = %while.cond.59
  %43 = load i8*, i8** %p, align 8
  %add.ptr68 = getelementptr inbounds i8, i8* %43, i64 1
  store i8* %add.ptr68, i8** %p, align 8
  br label %while.cond.59

while.end.69:                                     ; preds = %while.cond.59
  br label %if.end.70

if.end.70:                                        ; preds = %while.end.69, %if.end.34
  %44 = load i8*, i8** %p, align 8
  %45 = load i8, i8* %44, align 1
  %tobool71 = icmp ne i8 %45, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.70
  br label %a_symbol

if.end.73:                                        ; preds = %if.end.70
  %46 = load i8*, i8** %buffer.addr, align 8
  %call74 = call double @atof(i8* %46) #8
  %call75 = call %struct.obj* @flocons(double %call74)
  store %struct.obj* %call75, %struct.obj** %retval
  br label %return

a_symbol:                                         ; preds = %if.then.72, %if.then.56, %if.then.33
  %47 = load i8*, i8** %buffer.addr, align 8
  %call76 = call %struct.obj* @rintern(i8* %47)
  store %struct.obj* %call76, %struct.obj** %retval
  br label %return

return:                                           ; preds = %a_symbol, %if.end.73, %if.then.3
  %48 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %48
}

; Function Attrs: nounwind readonly
declare double @atof(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @copy_list(%struct.obj* %x) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.obj** %x.addr to i8*
  %2 = load i8*, i8** @stack_limit_ptr, align 8
  %cmp1 = icmp ult i8* %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = bitcast %struct.obj** %x.addr to i8*
  call void @err_stack(i8* %3)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %4 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %4)
  %5 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call4 = call %struct.obj* @cdr(%struct.obj* %5)
  %call5 = call %struct.obj* @copy_list(%struct.obj* %call4)
  %call6 = call %struct.obj* @cons(%struct.obj* %call, %struct.obj* %call5)
  store %struct.obj* %call6, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  %6 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %6
}

; Function Attrs: nounwind uwtable
define %struct.obj* @apropos(%struct.obj* %matchl) #0 {
entry:
  %matchl.addr = alloca %struct.obj*, align 8
  %result = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  %ml = alloca %struct.obj*, align 8
  %pname = alloca i8*, align 8
  store %struct.obj* %matchl, %struct.obj** %matchl.addr, align 8
  store %struct.obj* null, %struct.obj** %result, align 8
  %0 = load %struct.obj*, %struct.obj** @oblistvar, align 8
  store %struct.obj* %0, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %l, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 1
  %3 = load i16, i16* %type, align 2
  %conv = sext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 1
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %5 = load %struct.obj*, %struct.obj** %car, align 8
  %call = call i8* @get_c_string(%struct.obj* %5)
  store i8* %call, i8** %pname, align 8
  %6 = load %struct.obj*, %struct.obj** %matchl.addr, align 8
  store %struct.obj* %6, %struct.obj** %ml, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %7 = load %struct.obj*, %struct.obj** %ml, align 8
  %cmp3 = icmp eq %struct.obj* %7, null
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %while.cond
  br label %cond.end.9

cond.false.6:                                     ; preds = %while.cond
  %8 = load %struct.obj*, %struct.obj** %ml, align 8
  %type7 = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 1
  %9 = load i16, i16* %type7, align 2
  %conv8 = sext i16 %9 to i32
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi i32 [ 0, %cond.true.5 ], [ %conv8, %cond.false.6 ]
  %cmp11 = icmp eq i32 %cond10, 1
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end.9
  %10 = load i8*, i8** %pname, align 8
  %11 = load %struct.obj*, %struct.obj** %ml, align 8
  %storage_as13 = getelementptr inbounds %struct.obj, %struct.obj* %11, i32 0, i32 2
  %cons14 = bitcast %union.anon* %storage_as13 to %struct.anon*
  %car15 = getelementptr inbounds %struct.anon, %struct.anon* %cons14, i32 0, i32 0
  %12 = load %struct.obj*, %struct.obj** %car15, align 8
  %call16 = call i8* @get_c_string(%struct.obj* %12)
  %call17 = call i8* @strstr(i8* %10, i8* %call16) #8
  %tobool = icmp ne i8* %call17, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end.9
  %13 = phi i1 [ false, %cond.end.9 ], [ %tobool, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load %struct.obj*, %struct.obj** %ml, align 8
  %storage_as18 = getelementptr inbounds %struct.obj, %struct.obj* %14, i32 0, i32 2
  %cons19 = bitcast %union.anon* %storage_as18 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons19, i32 0, i32 1
  %15 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %15, %struct.obj** %ml, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load %struct.obj*, %struct.obj** %ml, align 8
  %cmp20 = icmp eq %struct.obj* %16, null
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %17 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as22 = getelementptr inbounds %struct.obj, %struct.obj* %17, i32 0, i32 2
  %cons23 = bitcast %union.anon* %storage_as22 to %struct.anon*
  %car24 = getelementptr inbounds %struct.anon, %struct.anon* %cons23, i32 0, i32 0
  %18 = load %struct.obj*, %struct.obj** %car24, align 8
  %19 = load %struct.obj*, %struct.obj** %result, align 8
  %call25 = call %struct.obj* @cons(%struct.obj* %18, %struct.obj* %19)
  store %struct.obj* %call25, %struct.obj** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load %struct.obj*, %struct.obj** %l, align 8
  %storage_as26 = getelementptr inbounds %struct.obj, %struct.obj* %20, i32 0, i32 2
  %cons27 = bitcast %union.anon* %storage_as26 to %struct.anon*
  %cdr28 = getelementptr inbounds %struct.anon, %struct.anon* %cons27, i32 0, i32 1
  %21 = load %struct.obj*, %struct.obj** %cdr28, align 8
  store %struct.obj* %21, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %22 = load %struct.obj*, %struct.obj** %result, align 8
  ret %struct.obj* %22
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct.obj* @fopen_cg(%struct._IO_FILE* (i8*, i8*)* %fcn, i8* %name, i8* %how) #0 {
entry:
  %fcn.addr = alloca %struct._IO_FILE* (i8*, i8*)*, align 8
  %name.addr = alloca i8*, align 8
  %how.addr = alloca i8*, align 8
  %sym = alloca %struct.obj*, align 8
  %flag = alloca i64, align 8
  %errmsg = alloca [256 x i8], align 16
  store %struct._IO_FILE* (i8*, i8*)* %fcn, %struct._IO_FILE* (i8*, i8*)** %fcn.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %how, i8** %how.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %flag, align 8
  %call1 = call %struct.obj* @newcell(i64 17)
  store %struct.obj* %call1, %struct.obj** %sym, align 8
  %0 = load %struct.obj*, %struct.obj** %sym, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %0, i32 0, i32 2
  %c_file = bitcast %union.anon* %storage_as to %struct.anon.17*
  %f = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %f, align 8
  %1 = load %struct.obj*, %struct.obj** %sym, align 8
  %storage_as2 = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 2
  %c_file3 = bitcast %union.anon* %storage_as2 to %struct.anon.17*
  %name4 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file3, i32 0, i32 1
  store i8* null, i8** %name4, align 8
  %2 = load %struct._IO_FILE* (i8*, i8*)*, %struct._IO_FILE* (i8*, i8*)** %fcn.addr, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load i8*, i8** %how.addr, align 8
  %call5 = call %struct._IO_FILE* %2(i8* %3, i8* %4)
  %5 = load %struct.obj*, %struct.obj** %sym, align 8
  %storage_as6 = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %c_file7 = bitcast %union.anon* %storage_as6 to %struct.anon.17*
  %f8 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file7, i32 0, i32 0
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %f8, align 8
  %tobool = icmp ne %struct._IO_FILE* %call5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %errmsg, i32 0, i32 0
  %call9 = call i8* @safe_strcpy(i8* %arraydecay, i64 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.132, i32 0, i32 0))
  %arraydecay10 = getelementptr inbounds [256 x i8], [256 x i8]* %errmsg, i32 0, i32 0
  %6 = load i8*, i8** %name.addr, align 8
  %call11 = call i8* @safe_strcat(i8* %arraydecay10, i64 256, i8* %6)
  %arraydecay12 = getelementptr inbounds [256 x i8], [256 x i8]* %errmsg, i32 0, i32 0
  %call13 = call %struct.obj* @llast_c_errmsg(i32 -1)
  %call14 = call %struct.obj* @err(i8* %arraydecay12, %struct.obj* %call13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %name.addr, align 8
  %call15 = call i64 @strlen(i8* %7) #8
  %add = add i64 %call15, 1
  %call16 = call i8* @must_malloc(i64 %add)
  %8 = load %struct.obj*, %struct.obj** %sym, align 8
  %storage_as17 = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %c_file18 = bitcast %union.anon* %storage_as17 to %struct.anon.17*
  %name19 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file18, i32 0, i32 1
  store i8* %call16, i8** %name19, align 8
  %9 = load %struct.obj*, %struct.obj** %sym, align 8
  %storage_as20 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 2
  %c_file21 = bitcast %union.anon* %storage_as20 to %struct.anon.17*
  %name22 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file21, i32 0, i32 1
  %10 = load i8*, i8** %name22, align 8
  %11 = load i8*, i8** %name.addr, align 8
  %call23 = call i8* @strcpy(i8* %10, i8* %11) #6
  %12 = load i64, i64* %flag, align 8
  %call24 = call i64 @no_interrupt(i64 %12)
  %13 = load %struct.obj*, %struct.obj** %sym, align 8
  ret %struct.obj* %13
}

; Function Attrs: nounwind uwtable
define i8* @safe_strcpy(i8* %s1, i64 %size1, i8* %s2) #0 {
entry:
  %retval = alloca i8*, align 8
  %s1.addr = alloca i8*, align 8
  %size1.addr = alloca i64, align 8
  %s2.addr = alloca i8*, align 8
  %len2 = alloca i64, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i64 %size1, i64* %size1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i64, i64* %size1.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %s1.addr, align 8
  store i8* %1, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %s2.addr, align 8
  %call = call i64 @strlen(i8* %2) #8
  store i64 %call, i64* %len2, align 8
  %3 = load i64, i64* %len2, align 8
  %4 = load i64, i64* %size1.addr, align 8
  %cmp1 = icmp ult i64 %3, %4
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %5 = load i64, i64* %len2, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.then.2
  %6 = load i8*, i8** %s1.addr, align 8
  %7 = load i8*, i8** %s2.addr, align 8
  %8 = load i64, i64* %len2, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 %8, i32 1, i1 false)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.then.2
  %9 = load i64, i64* %len2, align 8
  %10 = load i8*, i8** %s1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %9
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %11 = load i8*, i8** %s1.addr, align 8
  %12 = load i8*, i8** %s2.addr, align 8
  %13 = load i64, i64* %size1.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 %13, i32 1, i1 false)
  %14 = load i64, i64* %size1.addr, align 8
  %sub = sub i64 %14, 1
  %15 = load i8*, i8** %s1.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %15, i64 %sub
  store i8 0, i8* %arrayidx5, align 1
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.end.4
  %16 = load i8*, i8** %s1.addr, align 8
  store i8* %16, i8** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  %17 = load i8*, i8** %retval
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define i8* @safe_strcat(i8* %s1, i64 %size1, i8* %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %size1.addr = alloca i64, align 8
  %s2.addr = alloca i8*, align 8
  %len1 = alloca i64, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i64 %size1, i64* %size1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i64, i64* %size1.addr, align 8
  %call = call i64 @safe_strlen(i8* %0, i64 %1)
  store i64 %call, i64* %len1, align 8
  %2 = load i64, i64* %len1, align 8
  %3 = load i8*, i8** %s1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %2
  %4 = load i64, i64* %size1.addr, align 8
  %5 = load i64, i64* %len1, align 8
  %sub = sub i64 %4, %5
  %6 = load i8*, i8** %s2.addr, align 8
  %call1 = call i8* @safe_strcpy(i8* %arrayidx, i64 %sub, i8* %6)
  %7 = load i8*, i8** %s1.addr, align 8
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define %struct.obj* @llast_c_errmsg(i32 %num) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %num.addr = alloca i32, align 4
  %xerrno = alloca i32, align 4
  %errmsg = alloca i8*, align 8
  store i32 %num, i32* %num.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call = call i32* @__errno_location() #11
  %1 = load i32, i32* %call, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %num.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %2, %cond.false ]
  store i32 %cond, i32* %xerrno, align 4
  %3 = load i32, i32* %xerrno, align 4
  %call1 = call i8* @strerror(i32 %3) #6
  store i8* %call1, i8** %errmsg, align 8
  %4 = load i8*, i8** %errmsg, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %5 = load i32, i32* %xerrno, align 4
  %conv = sitofp i32 %5 to double
  %call2 = call %struct.obj* @flocons(double %conv)
  store %struct.obj* %call2, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %6 = load i8*, i8** %errmsg, align 8
  %call3 = call %struct.obj* @cintern(i8* %6)
  store %struct.obj* %call3, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %7
}

; Function Attrs: nounwind uwtable
define %struct.obj* @fopen_c(i8* %name, i8* %how) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %how.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %how, i8** %how.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %how.addr, align 8
  %call = call %struct.obj* @fopen_cg(%struct._IO_FILE* (i8*, i8*)* @fopen, i8* %0, i8* %1)
  ret %struct.obj* %call
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @fopen_l(%struct.obj* %name, %struct.obj* %how) #0 {
entry:
  %name.addr = alloca %struct.obj*, align 8
  %how.addr = alloca %struct.obj*, align 8
  store %struct.obj* %name, %struct.obj** %name.addr, align 8
  store %struct.obj* %how, %struct.obj** %how.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %name.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %how.addr, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %how.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.133, i32 0, i32 0), %cond.true ], [ %call1, %cond.false ]
  %call2 = call %struct.obj* @fopen_c(i8* %call, i8* %cond)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind uwtable
define %struct.obj* @delq(%struct.obj* %elem, %struct.obj* %l) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %elem.addr = alloca %struct.obj*, align 8
  %l.addr = alloca %struct.obj*, align 8
  store %struct.obj* %elem, %struct.obj** %elem.addr, align 8
  store %struct.obj* %l, %struct.obj** %l.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %l.addr, align 8
  store %struct.obj* %1, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.obj** %elem.addr to i8*
  %3 = load i8*, i8** @stack_limit_ptr, align 8
  %cmp1 = icmp ult i8* %2, %3
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = bitcast %struct.obj** %elem.addr to i8*
  call void @err_stack(i8* %4)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load %struct.obj*, %struct.obj** %elem.addr, align 8
  %6 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %6)
  %cmp4 = icmp eq %struct.obj* %5, %call
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end.3
  %7 = load %struct.obj*, %struct.obj** %elem.addr, align 8
  %8 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call6 = call %struct.obj* @cdr(%struct.obj* %8)
  %call7 = call %struct.obj* @delq(%struct.obj* %7, %struct.obj* %call6)
  store %struct.obj* %call7, %struct.obj** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.3
  %9 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %10 = load %struct.obj*, %struct.obj** %elem.addr, align 8
  %11 = load %struct.obj*, %struct.obj** %l.addr, align 8
  %call9 = call %struct.obj* @cdr(%struct.obj* %11)
  %call10 = call %struct.obj* @delq(%struct.obj* %10, %struct.obj* %call9)
  %call11 = call %struct.obj* @setcdr(%struct.obj* %9, %struct.obj* %call10)
  %12 = load %struct.obj*, %struct.obj** %l.addr, align 8
  store %struct.obj* %12, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.5, %if.then
  %13 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %13
}

; Function Attrs: nounwind uwtable
define %struct.obj* @fclose_l(%struct.obj* %p) #0 {
entry:
  %p.addr = alloca %struct.obj*, align 8
  %flag = alloca i64, align 8
  store %struct.obj* %p, %struct.obj** %p.addr, align 8
  %call = call i64 @no_interrupt(i64 1)
  store i64 %call, i64* %flag, align 8
  %0 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %call3 = call %struct.obj* @err(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.134, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load %struct.obj*, %struct.obj** %p.addr, align 8
  call void @file_gc_free(%struct.obj* %4)
  %5 = load i64, i64* %flag, align 8
  %call4 = call i64 @no_interrupt(i64 %5)
  ret %struct.obj* null
}

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define %struct.obj* @require(%struct.obj* %fname) #0 {
entry:
  %fname.addr = alloca %struct.obj*, align 8
  %sym = alloca %struct.obj*, align 8
  store %struct.obj* %fname, %struct.obj** %fname.addr, align 8
  %call = call %struct.obj* @cintern(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.141, i32 0, i32 0))
  %0 = load %struct.obj*, %struct.obj** %fname.addr, align 8
  %call1 = call %struct.obj* @cintern(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.142, i32 0, i32 0))
  %call2 = call %struct.obj* @cons(%struct.obj* %call1, %struct.obj* null)
  %call3 = call %struct.obj* @cons(%struct.obj* %0, %struct.obj* %call2)
  %call4 = call %struct.obj* @cons(%struct.obj* %call, %struct.obj* %call3)
  %call5 = call %struct.obj* @string_append(%struct.obj* %call4)
  %call6 = call %struct.obj* @intern(%struct.obj* %call5)
  store %struct.obj* %call6, %struct.obj** %sym, align 8
  %1 = load %struct.obj*, %struct.obj** %sym, align 8
  %call7 = call %struct.obj* @symbol_boundp(%struct.obj* %1, %struct.obj* null)
  %cmp = icmp eq %struct.obj* %call7, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %sym, align 8
  %call8 = call %struct.obj* @symbol_value(%struct.obj* %2, %struct.obj* null)
  %cmp9 = icmp eq %struct.obj* %call8, null
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.obj*, %struct.obj** %fname.addr, align 8
  %4 = load %struct.obj*, %struct.obj** @sym_t, align 8
  %call10 = call %struct.obj* @load(%struct.obj* %3, %struct.obj* null, %struct.obj* %4)
  %5 = load %struct.obj*, %struct.obj** %sym, align 8
  %6 = load %struct.obj*, %struct.obj** @sym_t, align 8
  %call11 = call %struct.obj* @setvar(%struct.obj* %5, %struct.obj* %6, %struct.obj* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %7 = load %struct.obj*, %struct.obj** %sym, align 8
  ret %struct.obj* %7
}

declare %struct.obj* @funcall1(%struct.obj*, %struct.obj*) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @load(%struct.obj* %fname, %struct.obj* %cflag, %struct.obj* %rflag) #0 {
entry:
  %fname.addr = alloca %struct.obj*, align 8
  %cflag.addr = alloca %struct.obj*, align 8
  %rflag.addr = alloca %struct.obj*, align 8
  store %struct.obj* %fname, %struct.obj** %fname.addr, align 8
  store %struct.obj* %cflag, %struct.obj** %cflag.addr, align 8
  store %struct.obj* %rflag, %struct.obj** %rflag.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %fname.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %cflag.addr, align 8
  %cmp = icmp eq %struct.obj* %1, null
  %cond = select i1 %cmp, i32 0, i32 1
  %conv = sext i32 %cond to i64
  %2 = load %struct.obj*, %struct.obj** %rflag.addr, align 8
  %cmp1 = icmp eq %struct.obj* %2, null
  %cond3 = select i1 %cmp1, i32 0, i32 1
  %conv4 = sext i32 %cond3 to i64
  %call5 = call %struct.obj* @vload(i8* %call, i64 %conv, i64 %conv4)
  ret %struct.obj* %call5
}

declare %struct.obj* @string_append(%struct.obj*) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @save_forms(%struct.obj* %fname, %struct.obj* %forms, %struct.obj* %how) #0 {
entry:
  %fname.addr = alloca %struct.obj*, align 8
  %forms.addr = alloca %struct.obj*, align 8
  %how.addr = alloca %struct.obj*, align 8
  %cname = alloca i8*, align 8
  %chow = alloca i8*, align 8
  %l = alloca %struct.obj*, align 8
  %lf = alloca %struct.obj*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  store %struct.obj* %fname, %struct.obj** %fname.addr, align 8
  store %struct.obj* %forms, %struct.obj** %forms.addr, align 8
  store %struct.obj* %how, %struct.obj** %how.addr, align 8
  store i8* null, i8** %chow, align 8
  %0 = load %struct.obj*, %struct.obj** %fname.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  store i8* %call, i8** %cname, align 8
  %1 = load %struct.obj*, %struct.obj** %how.addr, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.143, i32 0, i32 0), i8** %chow, align 8
  br label %if.end.6

if.else:                                          ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %how.addr, align 8
  %call1 = call %struct.obj* @cintern(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.144, i32 0, i32 0))
  %cmp2 = icmp eq %struct.obj* %2, %call1
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.144, i32 0, i32 0), i8** %chow, align 8
  br label %if.end

if.else.4:                                        ; preds = %if.else
  %3 = load %struct.obj*, %struct.obj** %how.addr, align 8
  %call5 = call %struct.obj* @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.145, i32 0, i32 0), %struct.obj* %3)
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %4 = load i64, i64* @siod_verbose_level, align 8
  %cmp7 = icmp sge i64 %4, 3
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.6
  %5 = load i8*, i8** %chow, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp9 = icmp eq i32 %conv, 97
  %cond = select i1 %cmp9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0)
  call void @put_st(i8* %cond)
  call void @put_st(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.148, i32 0, i32 0))
  %7 = load i8*, i8** %cname, align 8
  call void @put_st(i8* %7)
  call void @put_st(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.121, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.6
  %8 = load i8*, i8** %cname, align 8
  %9 = load i8*, i8** %chow, align 8
  %call12 = call %struct.obj* @fopen_c(i8* %8, i8* %9)
  store %struct.obj* %call12, %struct.obj** %lf, align 8
  %10 = load %struct.obj*, %struct.obj** %lf, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %10, i32 0, i32 2
  %c_file = bitcast %union.anon* %storage_as to %struct.anon.17*
  %f13 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %c_file, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f13, align 8
  store %struct._IO_FILE* %11, %struct._IO_FILE** %f, align 8
  %12 = load %struct.obj*, %struct.obj** %forms.addr, align 8
  store %struct.obj* %12, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %13 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp14 = icmp ne %struct.obj* %13, null
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.obj*, %struct.obj** %l, align 8
  %call16 = call %struct.obj* @car(%struct.obj* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call17 = call %struct.obj* @lprin1f(%struct.obj* %call16, %struct._IO_FILE* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call18 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load %struct.obj*, %struct.obj** %l, align 8
  %call19 = call %struct.obj* @cdr(%struct.obj* %17)
  store %struct.obj* %call19, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.obj*, %struct.obj** %lf, align 8
  %call20 = call %struct.obj* @fclose_l(%struct.obj* %18)
  %19 = load i64, i64* @siod_verbose_level, align 8
  %cmp21 = icmp sge i64 %19, 3
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.end
  call void @put_st(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.140, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %for.end
  %20 = load %struct.obj*, %struct.obj** @sym_t, align 8
  ret %struct.obj* %20
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @quit() #0 {
entry:
  %call = call %struct.obj* @err(i8* null, %struct.obj* null)
  ret %struct.obj* %call
}

; Function Attrs: nounwind uwtable
define %struct.obj* @nullp(%struct.obj* %x) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** @sym_t, align 8
  store %struct.obj* %1, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  store %struct.obj* null, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %2
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @lgetc(%struct.obj* %p) #0 {
entry:
  %p.addr = alloca %struct.obj*, align 8
  %i = alloca i32, align 4
  store %struct.obj* %p, %struct.obj** %p.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call %struct._IO_FILE* @get_c_file(%struct.obj* %0, %struct._IO_FILE* %1)
  %call1 = call i32 @f_getc(%struct._IO_FILE* %call)
  store i32 %call1, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %i, align 4
  %conv = sitofp i32 %3 to double
  %call2 = call %struct.obj* @flocons(double %conv)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.obj* [ null, %cond.true ], [ %call2, %cond.false ]
  ret %struct.obj* %cond
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lungetc(%struct.obj* %ii, %struct.obj* %p) #0 {
entry:
  %ii.addr = alloca %struct.obj*, align 8
  %p.addr = alloca %struct.obj*, align 8
  %i = alloca i32, align 4
  store %struct.obj* %ii, %struct.obj** %ii.addr, align 8
  store %struct.obj* %p, %struct.obj** %p.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %ii.addr, align 8
  %cmp = icmp ne %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %ii.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %1)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call1 = call %struct._IO_FILE* @get_c_file(%struct.obj* %3, %struct._IO_FILE* %4)
  call void @f_ungetc(i32 %2, %struct._IO_FILE* %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lputc(%struct.obj* %c, %struct.obj* %p) #0 {
entry:
  %c.addr = alloca %struct.obj*, align 8
  %p.addr = alloca %struct.obj*, align 8
  %flag = alloca i64, align 8
  %i = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  store %struct.obj* %c, %struct.obj** %c.addr, align 8
  store %struct.obj* %p, %struct.obj** %p.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call %struct._IO_FILE* @get_c_file(%struct.obj* %0, %struct._IO_FILE* %1)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %2 = load %struct.obj*, %struct.obj** %c.addr, align 8
  %cmp = icmp eq %struct.obj* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.obj*, %struct.obj** %c.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 1
  %4 = load i16, i16* %type, align 2
  %conv = sext i16 %4 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 2
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %5 = load %struct.obj*, %struct.obj** %c.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %flonum = bitcast %union.anon* %storage_as to %struct.anon.0*
  %data = getelementptr inbounds %struct.anon.0, %struct.anon.0* %flonum, i32 0, i32 0
  %6 = load double, double* %data, align 8
  %conv3 = fptosi double %6 to i32
  store i32 %conv3, i32* %i, align 4
  br label %if.end

if.else:                                          ; preds = %cond.end
  %7 = load %struct.obj*, %struct.obj** %c.addr, align 8
  %call4 = call i8* @get_c_string(%struct.obj* %7)
  %8 = load i8, i8* %call4, align 1
  %conv5 = sext i8 %8 to i32
  store i32 %conv5, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call6 = call i64 @no_interrupt(i64 1)
  store i64 %call6, i64* %flag, align 8
  %9 = load i32, i32* %i, align 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call7 = call i32 @_IO_putc(i32 %9, %struct._IO_FILE* %10)
  %11 = load i64, i64* %flag, align 8
  %call8 = call i64 @no_interrupt(i64 %11)
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lputs(%struct.obj* %str, %struct.obj* %p) #0 {
entry:
  %str.addr = alloca %struct.obj*, align 8
  %p.addr = alloca %struct.obj*, align 8
  store %struct.obj* %str, %struct.obj** %str.addr, align 8
  store %struct.obj* %p, %struct.obj** %p.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call %struct._IO_FILE* @get_c_file(%struct.obj* %0, %struct._IO_FILE* %1)
  %2 = load %struct.obj*, %struct.obj** %str.addr, align 8
  %call1 = call i8* @get_c_string(%struct.obj* %2)
  call void @fput_st(%struct._IO_FILE* %call, i8* %call1)
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lftell(%struct.obj* %file) #0 {
entry:
  %file.addr = alloca %struct.obj*, align 8
  store %struct.obj* %file, %struct.obj** %file.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %file.addr, align 8
  %call = call %struct._IO_FILE* @get_c_file(%struct.obj* %0, %struct._IO_FILE* null)
  %call1 = call i64 @ftell(%struct._IO_FILE* %call)
  %conv = sitofp i64 %call1 to double
  %call2 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call2
}

declare i64 @ftell(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @lfseek(%struct.obj* %file, %struct.obj* %offset, %struct.obj* %direction) #0 {
entry:
  %file.addr = alloca %struct.obj*, align 8
  %offset.addr = alloca %struct.obj*, align 8
  %direction.addr = alloca %struct.obj*, align 8
  store %struct.obj* %file, %struct.obj** %file.addr, align 8
  store %struct.obj* %offset, %struct.obj** %offset.addr, align 8
  store %struct.obj* %direction, %struct.obj** %direction.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %file.addr, align 8
  %call = call %struct._IO_FILE* @get_c_file(%struct.obj* %0, %struct._IO_FILE* null)
  %1 = load %struct.obj*, %struct.obj** %offset.addr, align 8
  %call1 = call i64 @get_c_long(%struct.obj* %1)
  %2 = load %struct.obj*, %struct.obj** %direction.addr, align 8
  %call2 = call i64 @get_c_long(%struct.obj* %2)
  %conv = trunc i64 %call2 to i32
  %call3 = call i32 @fseek(%struct._IO_FILE* %call, i64 %call1, i32 %conv)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.obj*, %struct.obj** @sym_t, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.obj* [ null, %cond.true ], [ %3, %cond.false ]
  ret %struct.obj* %cond
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #3

; Function Attrs: nounwind uwtable
define %struct.obj* @parse_number(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  %c = alloca i8*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call i8* @get_c_string(%struct.obj* %0)
  store i8* %call, i8** %c, align 8
  %1 = load i8*, i8** %c, align 8
  %call1 = call double @atof(i8* %1) #8
  %call2 = call %struct.obj* @flocons(double %call1)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind uwtable
define void @init_subrs() #0 {
entry:
  call void @init_subrs_1()
  call void @init_subrs_a()
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_subrs_1() #0 {
entry:
  call void @init_subr_2(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @cons)
  call void @init_subr_1(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.154, i32 0, i32 0), %struct.obj* (%struct.obj*)* @car)
  call void @init_subr_1(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.155, i32 0, i32 0), %struct.obj* (%struct.obj*)* @cdr)
  call void @init_subr_2(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.156, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @setcar)
  call void @init_subr_2(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.157, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @setcdr)
  call void @init_subr_2n(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.158, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @plus)
  call void @init_subr_2n(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.159, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @difference)
  call void @init_subr_2n(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.141, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @ltimes)
  call void @init_subr_2n(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.137, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @Quotient)
  call void @init_subr_2n(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.160, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lmin)
  call void @init_subr_2n(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.161, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lmax)
  call void @init_subr_1(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.162, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lllabs)
  call void @init_subr_1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.163, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lsqrt)
  call void @init_subr_2(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.118, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @greaterp)
  call void @init_subr_2(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.164, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lessp)
  call void @init_subr_2(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.165, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @greaterEp)
  call void @init_subr_2(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lessEp)
  call void @init_subr_2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.167, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @eq)
  call void @init_subr_2(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.168, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @eql)
  call void @init_subr_2(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.169, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @eql)
  call void @init_subr_2(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.170, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @assq)
  call void @init_subr_2(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.171, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @delq)
  call void @init_subr_1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.172, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lread)
  call void @init_subr_1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.173, i32 0, i32 0), %struct.obj* (%struct.obj*)* @parser_read)
  %call = call %struct.obj* @cintern(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.174, i32 0, i32 0))
  %0 = load %struct.obj*, %struct.obj** @sym_t, align 8
  %call1 = call %struct.obj* @setvar(%struct.obj* %call, %struct.obj* %0, %struct.obj* null)
  call void @init_subr_0(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.175, i32 0, i32 0), %struct.obj* ()* @get_eof_val)
  call void @init_subr_2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.176, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lprint)
  call void @init_subr_2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.177, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lprin1)
  call void @init_subr_2(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.178, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @leval)
  call void @init_subr_2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.179, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lapply)
  call void @init_fsubr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.180, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @leval_define)
  call void @init_fsubr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @leval_lambda)
  call void @init_msubr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.181, i32 0, i32 0), %struct.obj* (%struct.obj**, %struct.obj**)* @leval_if)
  call void @init_fsubr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.182, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @leval_while)
  call void @init_msubr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), %struct.obj* (%struct.obj**, %struct.obj**)* @leval_progn)
  call void @init_fsubr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @leval_setq)
  call void @init_msubr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.183, i32 0, i32 0), %struct.obj* (%struct.obj**, %struct.obj**)* @leval_or)
  call void @init_msubr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.184, i32 0, i32 0), %struct.obj* (%struct.obj**, %struct.obj**)* @leval_and)
  call void @init_fsubr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.185, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @leval_catch)
  call void @init_subr_2(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.186, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lthrow)
  call void @init_fsubr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @leval_quote)
  call void @init_lsubr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.187, i32 0, i32 0), %struct.obj* (%struct.obj*)* @apropos)
  call void @init_lsubr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.188, i32 0, i32 0), %struct.obj* (%struct.obj*)* @siod_verbose)
  call void @init_subr_1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.189, i32 0, i32 0), %struct.obj* (%struct.obj*)* @copy_list)
  call void @init_lsubr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.190, i32 0, i32 0), %struct.obj* (%struct.obj*)* @gc_status)
  call void @init_lsubr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.191, i32 0, i32 0), %struct.obj* (%struct.obj*)* @user_gc)
  call void @init_subr_3(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.192, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @load)
  call void @init_subr_1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.193, i32 0, i32 0), %struct.obj* (%struct.obj*)* @require)
  call void @init_subr_1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i32 0, i32 0), %struct.obj* (%struct.obj*)* @consp)
  call void @init_subr_1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.195, i32 0, i32 0), %struct.obj* (%struct.obj*)* @symbolp)
  call void @init_subr_1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.196, i32 0, i32 0), %struct.obj* (%struct.obj*)* @numberp)
  call void @init_msubr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.96, i32 0, i32 0), %struct.obj* (%struct.obj**, %struct.obj**)* @leval_let)
  call void @init_subr_1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0), %struct.obj* (%struct.obj*)* @let_macro)
  call void @init_subr_1(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), %struct.obj* (%struct.obj*)* @letstar_macro)
  call void @init_subr_1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), %struct.obj* (%struct.obj*)* @letrec_macro)
  call void @init_subr_2(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.197, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @symbol_boundp)
  call void @init_subr_2(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.198, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @symbol_value)
  call void @init_subr_3(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.199, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @setvar)
  call void @init_fsubr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.200, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @leval_tenv)
  call void @init_subr_2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.201, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lerr)
  call void @init_subr_0(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), %struct.obj* ()* @quit)
  call void @init_subr_1(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.202, i32 0, i32 0), %struct.obj* (%struct.obj*)* @nullp)
  call void @init_subr_1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.203, i32 0, i32 0), %struct.obj* (%struct.obj*)* @nullp)
  call void @init_subr_2(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.204, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @envlookup)
  call void @init_subr_1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.205, i32 0, i32 0), %struct.obj* (%struct.obj*)* @reverse)
  call void @init_lsubr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.206, i32 0, i32 0), %struct.obj* (%struct.obj*)* @symbolconc)
  call void @init_subr_3(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.207, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @save_forms)
  call void @init_subr_2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.208, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @fopen_l)
  call void @init_subr_1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.209, i32 0, i32 0), %struct.obj* (%struct.obj*)* @fclose_l)
  call void @init_subr_1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.210, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lgetc)
  call void @init_subr_2(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.211, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lungetc)
  call void @init_subr_2(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.212, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lputc)
  call void @init_subr_2(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.213, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lputs)
  call void @init_subr_1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.214, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lftell)
  call void @init_subr_3(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.215, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*, %struct.obj*)* @lfseek)
  call void @init_subr_1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.216, i32 0, i32 0), %struct.obj* (%struct.obj*)* @parse_number)
  call void @init_subr_2(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.217, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @stack_limit)
  call void @init_subr_1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.218, i32 0, i32 0), %struct.obj* (%struct.obj*)* @intern)
  call void @init_subr_2(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.219, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @closure)
  call void @init_subr_1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.220, i32 0, i32 0), %struct.obj* (%struct.obj*)* @closure_code)
  call void @init_subr_1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.221, i32 0, i32 0), %struct.obj* (%struct.obj*)* @closure_env)
  call void @init_fsubr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.182, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @lwhile)
  call void @init_subr_1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.222, i32 0, i32 0), %struct.obj* (%struct.obj*)* @nreverse)
  call void @init_subr_0(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.223, i32 0, i32 0), %struct.obj* ()* @allocate_aheap)
  call void @init_subr_1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.224, i32 0, i32 0), %struct.obj* (%struct.obj*)* @gc_info)
  call void @init_subr_0(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.225, i32 0, i32 0), %struct.obj* ()* @lruntime)
  call void @init_subr_0(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.226, i32 0, i32 0), %struct.obj* ()* @lrealtime)
  call void @init_subr_1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.227, i32 0, i32 0), %struct.obj* (%struct.obj*)* @caar)
  call void @init_subr_1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.228, i32 0, i32 0), %struct.obj* (%struct.obj*)* @cadr)
  call void @init_subr_1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.229, i32 0, i32 0), %struct.obj* (%struct.obj*)* @cdar)
  call void @init_subr_1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.230, i32 0, i32 0), %struct.obj* (%struct.obj*)* @cddr)
  call void @init_subr_1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.231, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lrand)
  call void @init_subr_1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.232, i32 0, i32 0), %struct.obj* (%struct.obj*)* @lsrand)
  call void @init_subr_0(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.233, i32 0, i32 0), %struct.obj* ()* @lllast_c_errmsg)
  call void @init_subr_0(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.234, i32 0, i32 0), %struct.obj* ()* @os_classification)
  call void @init_slib_version()
  ret void
}

declare void @init_subrs_a() #3

; Function Attrs: nounwind uwtable
define %struct.obj* @closure_code(%struct.obj* %exp) #0 {
entry:
  %exp.addr = alloca %struct.obj*, align 8
  store %struct.obj* %exp, %struct.obj** %exp.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %0, i32 0, i32 2
  %closure = bitcast %union.anon* %storage_as to %struct.anon.10*
  %code = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure, i32 0, i32 1
  %1 = load %struct.obj*, %struct.obj** %code, align 8
  ret %struct.obj* %1
}

; Function Attrs: nounwind uwtable
define %struct.obj* @closure_env(%struct.obj* %exp) #0 {
entry:
  %exp.addr = alloca %struct.obj*, align 8
  store %struct.obj* %exp, %struct.obj** %exp.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %exp.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %0, i32 0, i32 2
  %closure = bitcast %union.anon* %storage_as to %struct.anon.10*
  %env = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure, i32 0, i32 0
  %1 = load %struct.obj*, %struct.obj** %env, align 8
  ret %struct.obj* %1
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lwhile(%struct.obj* %form, %struct.obj* %env) #0 {
entry:
  %form.addr = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  store %struct.obj* %form, %struct.obj** %form.addr, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load %struct.obj*, %struct.obj** %form.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %0)
  %1 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call1 = call %struct.obj* @leval(%struct.obj* %call, %struct.obj* %1)
  %cmp = icmp ne %struct.obj* %call1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.obj*, %struct.obj** %form.addr, align 8
  %call2 = call %struct.obj* @cdr(%struct.obj* %2)
  store %struct.obj* %call2, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %3 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp3 = icmp ne %struct.obj* %3, null
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %call4 = call %struct.obj* @car(%struct.obj* %4)
  %5 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call5 = call %struct.obj* @leval(%struct.obj* %call4, %struct.obj* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.obj*, %struct.obj** %l, align 8
  %call6 = call %struct.obj* @cdr(%struct.obj* %6)
  store %struct.obj* %call6, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define %struct.obj* @nreverse(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  %newp = alloca %struct.obj*, align 8
  %oldp = alloca %struct.obj*, align 8
  %nextp = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  store %struct.obj* null, %struct.obj** %newp, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  store %struct.obj* %0, %struct.obj** %oldp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %oldp, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %oldp, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 1
  %3 = load i16, i16* %type, align 2
  %conv = sext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 1
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %4 = load %struct.obj*, %struct.obj** %oldp, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  %5 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %5, %struct.obj** %nextp, align 8
  %6 = load %struct.obj*, %struct.obj** %newp, align 8
  %7 = load %struct.obj*, %struct.obj** %oldp, align 8
  %storage_as3 = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 2
  %cons4 = bitcast %union.anon* %storage_as3 to %struct.anon*
  %cdr5 = getelementptr inbounds %struct.anon, %struct.anon* %cons4, i32 0, i32 1
  store %struct.obj* %6, %struct.obj** %cdr5, align 8
  %8 = load %struct.obj*, %struct.obj** %oldp, align 8
  store %struct.obj* %8, %struct.obj** %newp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.obj*, %struct.obj** %nextp, align 8
  store %struct.obj* %9, %struct.obj** %oldp, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %10 = load %struct.obj*, %struct.obj** %newp, align 8
  ret %struct.obj* %10
}

; Function Attrs: nounwind uwtable
define %struct.obj* @siod_verbose(%struct.obj* %arg) #0 {
entry:
  %arg.addr = alloca %struct.obj*, align 8
  store %struct.obj* %arg, %struct.obj** %arg.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %arg.addr, align 8
  %cmp = icmp ne %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %arg.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %1)
  %call1 = call i64 @get_c_long(%struct.obj* %call)
  store i64 %call1, i64* @siod_verbose_level, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* @siod_verbose_level, align 8
  %conv = sitofp i64 %2 to double
  %call2 = call %struct.obj* @flocons(double %conv)
  ret %struct.obj* %call2
}

; Function Attrs: nounwind uwtable
define i32 @siod_verbose_check(i32 %level) #0 {
entry:
  %level.addr = alloca i32, align 4
  store i32 %level, i32* %level.addr, align 4
  %0 = load i64, i64* @siod_verbose_level, align 8
  %1 = load i32, i32* %level.addr, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp sge i64 %0, %conv
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lruntime() #0 {
entry:
  %call = call double @myruntime()
  %call1 = call %struct.obj* @flocons(double %call)
  %0 = load double, double* @gc_time_taken, align 8
  %call2 = call %struct.obj* @flocons(double %0)
  %call3 = call %struct.obj* @cons(%struct.obj* %call2, %struct.obj* null)
  %call4 = call %struct.obj* @cons(%struct.obj* %call1, %struct.obj* %call3)
  ret %struct.obj* %call4
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lrealtime() #0 {
entry:
  %call = call double @myrealtime()
  %call1 = call %struct.obj* @flocons(double %call)
  ret %struct.obj* %call1
}

; Function Attrs: nounwind uwtable
define %struct.obj* @cdar(%struct.obj* %x) #0 {
entry:
  %x.addr = alloca %struct.obj*, align 8
  store %struct.obj* %x, %struct.obj** %x.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %x.addr, align 8
  %call = call %struct.obj* @car(%struct.obj* %0)
  %call1 = call %struct.obj* @cdr(%struct.obj* %call)
  ret %struct.obj* %call1
}

; Function Attrs: nounwind uwtable
define %struct.obj* @lrand(%struct.obj* %m) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %m.addr = alloca %struct.obj*, align 8
  %res = alloca i64, align 8
  store %struct.obj* %m, %struct.obj** %m.addr, align 8
  %call = call i32 @rand() #6
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %res, align 8
  %0 = load %struct.obj*, %struct.obj** %m.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %res, align 8
  %conv2 = sitofp i64 %1 to double
  %call3 = call %struct.obj* @flocons(double %conv2)
  store %struct.obj* %call3, %struct.obj** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %res, align 8
  %3 = load %struct.obj*, %struct.obj** %m.addr, align 8
  %call4 = call i64 @get_c_long(%struct.obj* %3)
  %rem = srem i64 %2, %call4
  %conv5 = sitofp i64 %rem to double
  %call6 = call %struct.obj* @flocons(double %conv5)
  store %struct.obj* %call6, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %4
}

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: nounwind uwtable
define %struct.obj* @lsrand(%struct.obj* %s) #0 {
entry:
  %s.addr = alloca %struct.obj*, align 8
  store %struct.obj* %s, %struct.obj** %s.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %s.addr, align 8
  %call = call i64 @get_c_long(%struct.obj* %0)
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #6
  ret %struct.obj* null
}

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @a_true_value() #0 {
entry:
  %0 = load %struct.obj*, %struct.obj** @sym_t, align 8
  ret %struct.obj* %0
}

; Function Attrs: nounwind uwtable
define %struct.obj* @poparg(%struct.obj** %ptr, %struct.obj* %defaultv) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %ptr.addr = alloca %struct.obj**, align 8
  %defaultv.addr = alloca %struct.obj*, align 8
  %value = alloca %struct.obj*, align 8
  store %struct.obj** %ptr, %struct.obj*** %ptr.addr, align 8
  store %struct.obj* %defaultv, %struct.obj** %defaultv.addr, align 8
  %0 = load %struct.obj**, %struct.obj*** %ptr.addr, align 8
  %1 = load %struct.obj*, %struct.obj** %0, align 8
  %cmp = icmp eq %struct.obj* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.obj*, %struct.obj** %defaultv.addr, align 8
  store %struct.obj* %2, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.obj**, %struct.obj*** %ptr.addr, align 8
  %4 = load %struct.obj*, %struct.obj** %3, align 8
  %call = call %struct.obj* @car(%struct.obj* %4)
  store %struct.obj* %call, %struct.obj** %value, align 8
  %5 = load %struct.obj**, %struct.obj*** %ptr.addr, align 8
  %6 = load %struct.obj*, %struct.obj** %5, align 8
  %call1 = call %struct.obj* @cdr(%struct.obj* %6)
  %7 = load %struct.obj**, %struct.obj*** %ptr.addr, align 8
  store %struct.obj* %call1, %struct.obj** %7, align 8
  %8 = load %struct.obj*, %struct.obj** %value, align 8
  store %struct.obj* %8, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %9
}

; Function Attrs: nounwind uwtable
define i8* @last_c_errmsg(i32 %num) #0 {
entry:
  %num.addr = alloca i32, align 4
  %xerrno = alloca i32, align 4
  %errmsg = alloca i8*, align 8
  store i32 %num, i32* %num.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call = call i32* @__errno_location() #11
  %1 = load i32, i32* %call, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %num.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %2, %cond.false ]
  store i32 %cond, i32* %xerrno, align 4
  %3 = load i32, i32* %xerrno, align 4
  %call1 = call i8* @strerror(i32 %3) #6
  store i8* %call1, i8** %errmsg, align 8
  %4 = load i8*, i8** %errmsg, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %5 = load i32, i32* %xerrno, align 4
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @last_c_errmsg.serrmsg, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.152, i32 0, i32 0), i32 %5) #6
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @last_c_errmsg.serrmsg, i32 0, i32 0), i8** %errmsg, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %6 = load i8*, i8** %errmsg, align 8
  ret i8* %6
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind
declare i8* @strerror(i32) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @lllast_c_errmsg() #0 {
entry:
  %call = call %struct.obj* @llast_c_errmsg(i32 -1)
  ret %struct.obj* %call
}

; Function Attrs: nounwind uwtable
define i64 @safe_strlen(i8* %s, i64 %size) #0 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %end = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call i8* @memchr(i8* %0, i32 0, i64 %1) #8
  store i8* %call, i8** %end, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %end, align 8
  %3 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i64, i64* %size.addr, align 8
  store i64 %4, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i64, i64* %retval
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define internal %struct.obj* @parser_read(%struct.obj* %ignore) #0 {
entry:
  %ignore.addr = alloca %struct.obj*, align 8
  store %struct.obj* %ignore, %struct.obj** %ignore.addr, align 8
  %call = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.172, i32 0, i32 0))
  %call1 = call %struct.obj* @leval(%struct.obj* %call, %struct.obj* null)
  ret %struct.obj* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct.obj* @os_classification() #0 {
entry:
  %call = call %struct.obj* @cintern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.238, i32 0, i32 0))
  ret %struct.obj* %call
}

; Function Attrs: nounwind uwtable
define internal void @init_slib_version() #0 {
entry:
  %call = call %struct.obj* @cintern(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.239, i32 0, i32 0))
  %call1 = call %struct.obj* @cintern(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.240, i32 0, i32 0))
  %call2 = call %struct.obj* @setvar(%struct.obj* %call, %struct.obj* %call1, %struct.obj* null)
  ret void
}

; Function Attrs: nounwind uwtable
define void @err0() #0 {
entry:
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.235, i32 0, i32 0), %struct.obj* null)
  ret void
}

; Function Attrs: nounwind uwtable
define void @pr(%struct.obj* %p) #0 {
entry:
  %p.addr = alloca %struct.obj*, align 8
  store %struct.obj* %p, %struct.obj** %p.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %call = call i64 @looks_pointerp(%struct.obj* %0)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %p.addr, align 8
  %call1 = call %struct.obj* @lprint(%struct.obj* %1, %struct.obj* null)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @put_st(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.236, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @prp(%struct.obj** %p) #0 {
entry:
  %p.addr = alloca %struct.obj**, align 8
  store %struct.obj** %p, %struct.obj*** %p.addr, align 8
  %0 = load %struct.obj**, %struct.obj*** %p.addr, align 8
  %tobool = icmp ne %struct.obj** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.obj**, %struct.obj*** %p.addr, align 8
  %2 = load %struct.obj*, %struct.obj** %1, align 8
  call void @pr(%struct.obj* %2)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct.obj* @read_from_string(%struct.obj*) #3

; Function Attrs: nounwind uwtable
define internal i32 @rcsp_puts(i8* %from, i8* %cb) #0 {
entry:
  %from.addr = alloca i8*, align 8
  %cb.addr = alloca i8*, align 8
  %fromlen = alloca i64, align 8
  %intolen = alloca i64, align 8
  %cplen = alloca i64, align 8
  %p = alloca %struct.rcsp_puts*, align 8
  store i8* %from, i8** %from.addr, align 8
  store i8* %cb, i8** %cb.addr, align 8
  %0 = load i8*, i8** %cb.addr, align 8
  %1 = bitcast i8* %0 to %struct.rcsp_puts*
  store %struct.rcsp_puts* %1, %struct.rcsp_puts** %p, align 8
  %2 = load i8*, i8** %from.addr, align 8
  %call = call i64 @strlen(i8* %2) #8
  store i64 %call, i64* %fromlen, align 8
  %3 = load %struct.rcsp_puts*, %struct.rcsp_puts** %p, align 8
  %end = getelementptr inbounds %struct.rcsp_puts, %struct.rcsp_puts* %3, i32 0, i32 1
  %4 = load i8*, i8** %end, align 8
  %5 = load %struct.rcsp_puts*, %struct.rcsp_puts** %p, align 8
  %ptr = getelementptr inbounds %struct.rcsp_puts, %struct.rcsp_puts* %5, i32 0, i32 0
  %6 = load i8*, i8** %ptr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %intolen, align 8
  %7 = load i64, i64* %fromlen, align 8
  %8 = load i64, i64* %intolen, align 8
  %cmp = icmp sgt i64 %7, %8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %intolen, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load i64, i64* %fromlen, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %10, %cond.false ]
  store i64 %cond, i64* %cplen, align 8
  %11 = load %struct.rcsp_puts*, %struct.rcsp_puts** %p, align 8
  %ptr1 = getelementptr inbounds %struct.rcsp_puts, %struct.rcsp_puts* %11, i32 0, i32 0
  %12 = load i8*, i8** %ptr1, align 8
  %13 = load i8*, i8** %from.addr, align 8
  %14 = load i64, i64* %cplen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 %14, i32 1, i1 false)
  %15 = load i64, i64* %cplen, align 8
  %16 = load %struct.rcsp_puts*, %struct.rcsp_puts** %p, align 8
  %ptr2 = getelementptr inbounds %struct.rcsp_puts, %struct.rcsp_puts* %16, i32 0, i32 0
  %17 = load i8*, i8** %ptr2, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %15
  %18 = load %struct.rcsp_puts*, %struct.rcsp_puts** %p, align 8
  %ptr3 = getelementptr inbounds %struct.rcsp_puts, %struct.rcsp_puts* %18, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr3, align 8
  %19 = load %struct.rcsp_puts*, %struct.rcsp_puts** %p, align 8
  %ptr4 = getelementptr inbounds %struct.rcsp_puts, %struct.rcsp_puts* %19, i32 0, i32 0
  %20 = load i8*, i8** %ptr4, align 8
  store i8 0, i8* %20, align 1
  %21 = load i64, i64* %cplen, align 8
  %22 = load i64, i64* %fromlen, align 8
  %cmp5 = icmp ne i64 %21, %22
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %call6 = call %struct.obj* @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.237, i32 0, i32 0), %struct.obj* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind returns_twice }
attributes #11 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
