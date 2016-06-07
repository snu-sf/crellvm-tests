; ModuleID = 'gv.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.interpreter = type { i8 }
%struct.sv = type { i8*, i32, i32 }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
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
%struct.xpv = type { i8*, i64, i64 }
%struct.jmpenv = type { [1 x %struct.__jmp_buf_tag], %struct.jmpenv*, i32, i8 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.context = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }
%struct.xpvmg = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv* }
%struct.xpvnv = type { i8*, i64, i64, i64, double }
%struct.am_table = type { i32, i64, i32, [66 x %struct.cv*], i64 }
%struct.xpviv = type { i8*, i64, i64, i64 }
%struct.binop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op* }
%struct.xrv = type { %struct.sv* }

@.str = private unnamed_addr constant [21 x i8] c"Bad symbol for array\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Bad symbol for hash\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Bad symbol for filehandle\00", align 1
@PL_defstash = external global %struct.hv*, align 8
@PL_perldb = external global i32, align 4
@PL_curcop = external global %struct.cop*, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_Sv = external global %struct.sv*, align 8
@PL_compcv = external global %struct.cv*, align 8
@PL_sub_generation = external global i32, align 4
@PL_curstash = external global %struct.hv*, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"UNIVERSAL\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Can't use anonymous symbol table for method lookup\00", align 1
@.str.6 = private unnamed_addr constant [77 x i8] c"Recursive inheritance detected while looking for method '%s' in package '%s'\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ISA\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"::SUPER\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Cannot create %s::ISA\00", align 1
@PL_dowarn = external global i8, align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Can't locate package %_ for @%s::ISA\00", align 1
@Perl_gv_fetchmeth_autoload.autoload = private unnamed_addr constant [9 x i8] c"AUTOLOAD\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"SUPER\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"%s::SUPER\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"unimport\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@Perl_gv_autoload4.autoload = private unnamed_addr constant [9 x i8] c"AUTOLOAD\00", align 1
@.str.15 = private unnamed_addr constant [66 x i8] c"Use of inherited AUTOLOAD for non-method %s::%.*s() is deprecated\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@PL_tainting = external global i8, align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"main::\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"INC\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"ENV\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"SIG\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"STDIN\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"STDOUT\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"STDERR\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"ARGV\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"ARGVOUT\00", align 1
@PL_compiling = external global %struct.cop, align 8
@PL_hints = external global i32, align 4
@.str.26 = private unnamed_addr constant [32 x i8] c"Variable \22%c%s\22 is not imported\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"\09(Did you mean &%s instead?)\0A\00", align 1
@.str.28 = private unnamed_addr constant [52 x i8] c"Global symbol \22%s%s\22 requires explicit package name\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@PL_nullstash = external global %struct.hv*, align 8
@.str.32 = private unnamed_addr constant [30 x i8] c"Had to create %s unexpectedly\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"RGV\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"XPORT\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"SA\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"AnyDBM_File::ISA\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"NDBM_File\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"DB_File\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"GDBM_File\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"SDBM_File\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"ODBM_File\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"VERLOAD\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"IG\00", align 1
@PL_psig_ptr = external global %struct.sv**, align 8
@PL_psig_name = external global %struct.sv**, align 8
@PL_psig_pend = external global i32*, align 8
@PL_sig_name = external global [0 x i8*], align 8
@.str.44 = private unnamed_addr constant [7 x i8] c"ERSION\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"NCODING\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"PEN\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"AINT\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"NICODE\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"TF8LOCALE\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"ARNING_BITS\00", align 1
@PL_sawampersand = external global i8, align 1
@PL_chopset = external global i8*, align 8
@.str.51 = private unnamed_addr constant [25 x i8] c"Use of $%s is deprecated\00", align 1
@PL_defoutgv = external global %struct.gv*, align 8
@.str.52 = private unnamed_addr constant [2 x i8] c"\0C\00", align 1
@PL_formfeed = external global %struct.sv*, align 8
@.str.53 = private unnamed_addr constant [2 x i8] c"\1C\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"%8.6f\00", align 1
@PL_patchlevel = external global %struct.sv*, align 8
@.str.55 = private unnamed_addr constant [9 x i8] c"__ANON__\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@PL_stashcache = external global %struct.hv*, align 8
@.str.58 = private unnamed_addr constant [13 x i8] c"FileHandle::\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"IO::Handle::\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"/lib/\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c".pm\00", align 1
@.str.62 = private unnamed_addr constant [44 x i8] c"Name \22%s::%s\22 used only once: possible typo\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"%s::_GEN_%ld\00", align 1
@PL_gensym = external global i32, align 4
@.str.64 = private unnamed_addr constant [43 x i8] c"Attempt to free unreferenced glob pointers\00", align 1
@PL_amagic_generation = external global i64, align 8
@PL_AMG_names = external global [66 x i8*], align 16
@PL_Xpv = external global %struct.xpv*, align 8
@.str.65 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"overload\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.68 = private unnamed_addr constant [56 x i8] c"%s method `%.256s' overloading `%s' in package `%.256s'\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"Stub found while resolving\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"Can't resolve\00", align 1
@.str.71 = private unnamed_addr constant [52 x i8] c"Operation `%s': no method found,%sargument %s%s%s%s\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"\0A\09left \00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"in overloaded package \00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"has no overloaded magic\00", align 1
@.str.76 = private unnamed_addr constant [41 x i8] c",\0A\09right argument in overloaded package \00", align 1
@.str.77 = private unnamed_addr constant [42 x i8] c",\0A\09right argument has no overloaded magic\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"%_\00", align 1
@PL_stack_sp = external global %struct.sv**, align 8
@PL_top_env = external global %struct.jmpenv*, align 8
@PL_curstackinfo = external global %struct.stackinfo*, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_curstack = external global %struct.av*, align 8
@PL_stack_max = external global %struct.sv**, align 8
@PL_op = external global %struct.op*, align 8
@PL_debstash = external global %struct.hv*, align 8
@PL_sv_no = external global %struct.sv, align 8
@PL_runops = external global i32 ()*, align 8
@PL_stderrgv = external global %struct.gv*, align 8
@.str.79 = private unnamed_addr constant [17 x i8] c"panic: POPSTACK\0A\00", align 1
@.str.80 = private unnamed_addr constant [39 x i8] c"Copy method did not return a reference\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"Errno\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"TIEHASH\00", align 1
@.str.83 = private unnamed_addr constant [48 x i8] c"Can't use %%! because Errno.pm is not available\00", align 1

; Function Attrs: nounwind uwtable
define %struct.gv* @Perl_gv_AVadd(%struct.gv* %gv) #0 {
entry:
  %gv.addr = alloca %struct.gv*, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  %0 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool = icmp ne %struct.gv* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %2 = bitcast %struct.gv* %1 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags, align 4
  %and = and i32 %3, 255
  %cmp = icmp ne i32 %and, 13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %4 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %4, i32 0, i32 0
  %5 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %5, i32 0, i32 7
  %6 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_av = getelementptr inbounds %struct.gp, %struct.gp* %6, i32 0, i32 4
  %7 = load %struct.av*, %struct.av** %gp_av, align 8
  %tobool1 = icmp ne %struct.av* %7, null
  br i1 %tobool1, label %if.end.6, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call = call %struct.av* @Perl_newAV()
  %8 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any3 = getelementptr inbounds %struct.gv, %struct.gv* %8, i32 0, i32 0
  %9 = load %struct.xpvgv*, %struct.xpvgv** %sv_any3, align 8
  %xgv_gp4 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %9, i32 0, i32 7
  %10 = load %struct.gp*, %struct.gp** %xgv_gp4, align 8
  %gp_av5 = getelementptr inbounds %struct.gp, %struct.gp* %10, i32 0, i32 4
  store %struct.av* %call, %struct.av** %gp_av5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.2, %if.end
  %11 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  ret %struct.gv* %11
}

declare void @Perl_croak(i8*, ...) #1

declare %struct.av* @Perl_newAV() #1

; Function Attrs: nounwind uwtable
define %struct.gv* @Perl_gv_HVadd(%struct.gv* %gv) #0 {
entry:
  %gv.addr = alloca %struct.gv*, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  %0 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool = icmp ne %struct.gv* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %2 = bitcast %struct.gv* %1 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags, align 4
  %and = and i32 %3, 255
  %cmp = icmp ne i32 %and, 13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %4 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %4, i32 0, i32 0
  %5 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %5, i32 0, i32 7
  %6 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_hv = getelementptr inbounds %struct.gp, %struct.gp* %6, i32 0, i32 5
  %7 = load %struct.hv*, %struct.hv** %gp_hv, align 8
  %tobool1 = icmp ne %struct.hv* %7, null
  br i1 %tobool1, label %if.end.6, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call = call %struct.hv* @Perl_newHV()
  %8 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any3 = getelementptr inbounds %struct.gv, %struct.gv* %8, i32 0, i32 0
  %9 = load %struct.xpvgv*, %struct.xpvgv** %sv_any3, align 8
  %xgv_gp4 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %9, i32 0, i32 7
  %10 = load %struct.gp*, %struct.gp** %xgv_gp4, align 8
  %gp_hv5 = getelementptr inbounds %struct.gp, %struct.gp* %10, i32 0, i32 5
  store %struct.hv* %call, %struct.hv** %gp_hv5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.2, %if.end
  %11 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  ret %struct.gv* %11
}

declare %struct.hv* @Perl_newHV() #1

; Function Attrs: nounwind uwtable
define %struct.gv* @Perl_gv_IOadd(%struct.gv* %gv) #0 {
entry:
  %gv.addr = alloca %struct.gv*, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  %0 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool = icmp ne %struct.gv* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %2 = bitcast %struct.gv* %1 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags, align 4
  %and = and i32 %3, 255
  %cmp = icmp ne i32 %and, 13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %4 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %4, i32 0, i32 0
  %5 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %5, i32 0, i32 7
  %6 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %6, i32 0, i32 2
  %7 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool1 = icmp ne %struct.io* %7, null
  br i1 %tobool1, label %if.end.6, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call = call %struct.io* @Perl_newIO()
  %8 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any3 = getelementptr inbounds %struct.gv, %struct.gv* %8, i32 0, i32 0
  %9 = load %struct.xpvgv*, %struct.xpvgv** %sv_any3, align 8
  %xgv_gp4 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %9, i32 0, i32 7
  %10 = load %struct.gp*, %struct.gp** %xgv_gp4, align 8
  %gp_io5 = getelementptr inbounds %struct.gp, %struct.gp* %10, i32 0, i32 2
  store %struct.io* %call, %struct.io** %gp_io5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.2, %if.end
  %11 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  ret %struct.gv* %11
}

; Function Attrs: nounwind uwtable
define %struct.io* @Perl_newIO() #0 {
entry:
  %io = alloca %struct.io*, align 8
  %iogv = alloca %struct.gv*, align 8
  %call = call %struct.sv* @Perl_newSV(i64 0)
  %0 = bitcast %struct.sv* %call to %struct.io*
  store %struct.io* %0, %struct.io** %io, align 8
  %1 = load %struct.io*, %struct.io** %io, align 8
  %2 = bitcast %struct.io* %1 to %struct.sv*
  %call1 = call signext i8 @Perl_sv_upgrade(%struct.sv* %2, i32 15)
  %3 = load %struct.io*, %struct.io** %io, align 8
  %sv_refcnt = getelementptr inbounds %struct.io, %struct.io* %3, i32 0, i32 1
  store i32 1, i32* %sv_refcnt, align 4
  %4 = load %struct.io*, %struct.io** %io, align 8
  %sv_flags = getelementptr inbounds %struct.io, %struct.io* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags, align 4
  %or = or i32 %5, 4096
  store i32 %or, i32* %sv_flags, align 4
  %6 = load %struct.hv*, %struct.hv** @PL_stashcache, align 8
  call void @Perl_hv_clear(%struct.hv* %6)
  %call2 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i32 0, i32 0), i32 0, i32 11)
  store %struct.gv* %call2, %struct.gv** %iogv, align 8
  %7 = load %struct.gv*, %struct.gv** %iogv, align 8
  %tobool = icmp ne %struct.gv* %7, null
  br i1 %tobool, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.gv*, %struct.gv** %iogv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %8, i32 0, i32 0
  %9 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %9, i32 0, i32 7
  %10 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_hv = getelementptr inbounds %struct.gp, %struct.gp* %10, i32 0, i32 5
  %11 = load %struct.hv*, %struct.hv** %gp_hv, align 8
  %tobool3 = icmp ne %struct.hv* %11, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.then

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %12 = load %struct.gv*, %struct.gv** %iogv, align 8
  %sv_any5 = getelementptr inbounds %struct.gv, %struct.gv* %12, i32 0, i32 0
  %13 = load %struct.xpvgv*, %struct.xpvgv** %sv_any5, align 8
  %xgv_gp6 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %13, i32 0, i32 7
  %14 = load %struct.gp*, %struct.gp** %xgv_gp6, align 8
  %gp_hv7 = getelementptr inbounds %struct.gp, %struct.gp* %14, i32 0, i32 5
  %15 = load %struct.hv*, %struct.hv** %gp_hv7, align 8
  %sv_any8 = getelementptr inbounds %struct.hv, %struct.hv* %15, i32 0, i32 0
  %16 = load %struct.xpvhv*, %struct.xpvhv** %sv_any8, align 8
  %xhv_array = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %16, i32 0, i32 0
  %17 = bitcast i8** %xhv_array to %struct.he***
  %18 = load %struct.he**, %struct.he*** %17, align 8
  %tobool9 = icmp ne %struct.he** %18, null
  br i1 %tobool9, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.4, %land.lhs.true, %entry
  %call10 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i32 1, i32 11)
  store %struct.gv* %call10, %struct.gv** %iogv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.4
  %19 = load %struct.gv*, %struct.gv** %iogv, align 8
  %sv_any11 = getelementptr inbounds %struct.gv, %struct.gv* %19, i32 0, i32 0
  %20 = load %struct.xpvgv*, %struct.xpvgv** %sv_any11, align 8
  %xgv_gp12 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %20, i32 0, i32 7
  %21 = load %struct.gp*, %struct.gp** %xgv_gp12, align 8
  %gp_hv13 = getelementptr inbounds %struct.gp, %struct.gp* %21, i32 0, i32 5
  %22 = load %struct.hv*, %struct.hv** %gp_hv13, align 8
  %23 = bitcast %struct.hv* %22 to %struct.sv*
  store %struct.sv* %23, %struct.sv** @PL_Sv, align 8
  %24 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool14 = icmp ne %struct.sv* %24, null
  br i1 %tobool14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %25 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt15 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 1
  %26 = load i32, i32* %sv_refcnt15, align 4
  %inc = add i32 %26, 1
  store i32 %inc, i32* %sv_refcnt15, align 4
  %tobool16 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %27 = phi i1 [ false, %if.end ], [ %tobool16, %land.rhs ]
  %land.ext = zext i1 %27 to i32
  %28 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %29 = bitcast %struct.sv* %28 to %struct.hv*
  %30 = load %struct.io*, %struct.io** %io, align 8
  %sv_any17 = getelementptr inbounds %struct.io, %struct.io* %30, i32 0, i32 0
  %31 = load %struct.xpvio*, %struct.xpvio** %sv_any17, align 8
  %32 = bitcast %struct.xpvio* %31 to %struct.xpvmg*
  %xmg_stash = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %32, i32 0, i32 6
  store %struct.hv* %29, %struct.hv** %xmg_stash, align 8
  %33 = load %struct.io*, %struct.io** %io, align 8
  ret %struct.io* %33
}

; Function Attrs: nounwind uwtable
define %struct.gv* @Perl_gv_fetchfile(i8* %name) #0 {
entry:
  %retval = alloca %struct.gv*, align 8
  %name.addr = alloca i8*, align 8
  %smallbuf = alloca [256 x i8], align 16
  %tmpbuf = alloca i8*, align 8
  %tmplen = alloca i64, align 8
  %gv = alloca %struct.gv*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  %tobool = icmp ne %struct.hv* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.gv* null, %struct.gv** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %1)
  %add = add i64 %call, 2
  store i64 %add, i64* %tmplen, align 8
  %2 = load i64, i64* %tmplen, align 8
  %cmp = icmp ult i64 %2, 256
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %smallbuf, i32 0, i32 0
  store i8* %arraydecay, i8** %tmpbuf, align 8
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %3 = load i64, i64* %tmplen, align 8
  %add2 = add i64 %3, 1
  %mul = mul i64 %add2, 1
  %call3 = call i8* @Perl_safesysmalloc(i64 %mul)
  store i8* %call3, i8** %tmpbuf, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.1
  %4 = load i8*, i8** %tmpbuf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  store i8 95, i8* %arrayidx, align 1
  %5 = load i8*, i8** %tmpbuf, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %5, i64 1
  store i8 60, i8* %arrayidx5, align 1
  %6 = load i8*, i8** %tmpbuf, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 2
  %7 = load i8*, i8** %name.addr, align 8
  %call6 = call i8* @strcpy(i8* %add.ptr, i8* %7)
  %8 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  %9 = load i8*, i8** %tmpbuf, align 8
  %10 = load i64, i64* %tmplen, align 8
  %conv = trunc i64 %10 to i32
  %call7 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %8, i8* %9, i32 %conv, i32 1)
  %11 = bitcast %struct.sv** %call7 to %struct.gv**
  %12 = load %struct.gv*, %struct.gv** %11, align 8
  store %struct.gv* %12, %struct.gv** %gv, align 8
  %13 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %13, i32 0, i32 2
  %14 = load i32, i32* %sv_flags, align 4
  %and = and i32 %14, 255
  %cmp8 = icmp eq i32 %and, 13
  br i1 %cmp8, label %if.end.29, label %if.then.10

if.then.10:                                       ; preds = %if.end.4
  %15 = load %struct.gv*, %struct.gv** %gv, align 8
  %16 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  %17 = load i8*, i8** %tmpbuf, align 8
  %18 = load i64, i64* %tmplen, align 8
  call void @Perl_gv_init(%struct.gv* %15, %struct.hv* %16, i8* %17, i64 %18, i32 0)
  %19 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %19, i32 0, i32 0
  %20 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %20, i32 0, i32 7
  %21 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %21, i32 0, i32 0
  %22 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %23 = load i8*, i8** %name.addr, align 8
  call void @Perl_sv_setpv(%struct.sv* %22, i8* %23)
  %24 = load i32, i32* @PL_perldb, align 4
  %tobool11 = icmp ne i32 %24, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.then.10
  %25 = load i32, i32* @PL_perldb, align 4
  %and12 = and i32 %25, 2
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.28

if.then.14:                                       ; preds = %land.lhs.true
  %26 = load %struct.gv*, %struct.gv** %gv, align 8
  %call15 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %26)
  %sv_any16 = getelementptr inbounds %struct.gv, %struct.gv* %call15, i32 0, i32 0
  %27 = load %struct.xpvgv*, %struct.xpvgv** %sv_any16, align 8
  %xgv_gp17 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %27, i32 0, i32 7
  %28 = load %struct.gp*, %struct.gp** %xgv_gp17, align 8
  %gp_hv = getelementptr inbounds %struct.gp, %struct.gp* %28, i32 0, i32 5
  %29 = load %struct.hv*, %struct.hv** %gp_hv, align 8
  %tobool18 = icmp ne %struct.hv* %29, null
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  %30 = load %struct.gv*, %struct.gv** %gv, align 8
  %call19 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %30)
  %sv_any20 = getelementptr inbounds %struct.gv, %struct.gv* %call19, i32 0, i32 0
  %31 = load %struct.xpvgv*, %struct.xpvgv** %sv_any20, align 8
  %xgv_gp21 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %31, i32 0, i32 7
  %32 = load %struct.gp*, %struct.gp** %xgv_gp21, align 8
  %gp_hv22 = getelementptr inbounds %struct.gp, %struct.gp* %32, i32 0, i32 5
  %33 = load %struct.hv*, %struct.hv** %gp_hv22, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  %34 = load %struct.gv*, %struct.gv** %gv, align 8
  %call23 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %34)
  %call24 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %call23)
  %sv_any25 = getelementptr inbounds %struct.gv, %struct.gv* %call24, i32 0, i32 0
  %35 = load %struct.xpvgv*, %struct.xpvgv** %sv_any25, align 8
  %xgv_gp26 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %35, i32 0, i32 7
  %36 = load %struct.gp*, %struct.gp** %xgv_gp26, align 8
  %gp_hv27 = getelementptr inbounds %struct.gp, %struct.gp* %36, i32 0, i32 5
  %37 = load %struct.hv*, %struct.hv** %gp_hv27, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.hv* [ %33, %cond.true ], [ %37, %cond.false ]
  call void @Perl_hv_magic(%struct.hv* %cond, %struct.gv* null, i32 76)
  br label %if.end.28

if.end.28:                                        ; preds = %cond.end, %land.lhs.true, %if.then.10
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.4
  %38 = load i8*, i8** %tmpbuf, align 8
  %arraydecay30 = getelementptr inbounds [256 x i8], [256 x i8]* %smallbuf, i32 0, i32 0
  %cmp31 = icmp ne i8* %38, %arraydecay30
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.29
  %39 = load i8*, i8** %tmpbuf, align 8
  call void @Perl_safesysfree(i8* %39)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.29
  %40 = load %struct.gv*, %struct.gv** %gv, align 8
  store %struct.gv* %40, %struct.gv** %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then
  %41 = load %struct.gv*, %struct.gv** %retval
  ret %struct.gv* %41
}

declare i64 @strlen(i8*) #1

declare i8* @Perl_safesysmalloc(i64) #1

declare i8* @strcpy(i8*, i8*) #1

declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @Perl_gv_init(%struct.gv* %gv, %struct.hv* %stash, i8* %name, i64 %len, i32 %multi) #0 {
entry:
  %gv.addr = alloca %struct.gv*, align 8
  %stash.addr = alloca %struct.hv*, align 8
  %name.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %multi.addr = alloca i32, align 4
  %gp = alloca %struct.gp*, align 8
  %doproto = alloca i8, align 1
  %proto = alloca i8*, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  store %struct.hv* %stash, %struct.hv** %stash.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %multi, i32* %multi.addr, align 4
  %0 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 255
  %cmp = icmp ugt i32 %and, 0
  %conv = zext i1 %cmp to i32
  %conv1 = trunc i32 %conv to i8
  store i8 %conv1, i8* %doproto, align 1
  %2 = load i8, i8* %doproto, align 1
  %conv2 = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv2, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_flags3 = getelementptr inbounds %struct.gv, %struct.gv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags3, align 4
  %and4 = and i32 %4, 262144
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %5 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %5, i32 0, i32 0
  %6 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %7 = bitcast %struct.xpvgv* %6 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %7, i32 0, i32 0
  %8 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %8, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %proto, align 8
  %9 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %10 = bitcast %struct.gv* %9 to %struct.sv*
  %call = call signext i8 @Perl_sv_upgrade(%struct.sv* %10, i32 13)
  %11 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any6 = getelementptr inbounds %struct.gv, %struct.gv* %11, i32 0, i32 0
  %12 = load %struct.xpvgv*, %struct.xpvgv** %sv_any6, align 8
  %13 = bitcast %struct.xpvgv* %12 to %struct.xpv*
  %xpv_len = getelementptr inbounds %struct.xpv, %struct.xpv* %13, i32 0, i32 2
  %14 = load i64, i64* %xpv_len, align 8
  %tobool7 = icmp ne i64 %14, 0
  br i1 %tobool7, label %if.then, label %if.end.18

if.then:                                          ; preds = %cond.end
  %15 = load i8*, i8** %proto, align 8
  %tobool8 = icmp ne i8* %15, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %16 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any10 = getelementptr inbounds %struct.gv, %struct.gv* %16, i32 0, i32 0
  %17 = load %struct.xpvgv*, %struct.xpvgv** %sv_any10, align 8
  %18 = bitcast %struct.xpvgv* %17 to %struct.xpv*
  %xpv_pv11 = getelementptr inbounds %struct.xpv, %struct.xpv* %18, i32 0, i32 0
  store i8* null, i8** %xpv_pv11, align 8
  %19 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any12 = getelementptr inbounds %struct.gv, %struct.gv* %19, i32 0, i32 0
  %20 = load %struct.xpvgv*, %struct.xpvgv** %sv_any12, align 8
  %21 = bitcast %struct.xpvgv* %20 to %struct.xpv*
  %xpv_len13 = getelementptr inbounds %struct.xpv, %struct.xpv* %21, i32 0, i32 2
  store i64 0, i64* %xpv_len13, align 8
  %22 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_flags14 = getelementptr inbounds %struct.gv, %struct.gv* %22, i32 0, i32 2
  %23 = load i32, i32* %sv_flags14, align 4
  %and15 = and i32 %23, -67371009
  store i32 %and15, i32* %sv_flags14, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %24 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any16 = getelementptr inbounds %struct.gv, %struct.gv* %24, i32 0, i32 0
  %25 = load %struct.xpvgv*, %struct.xpvgv** %sv_any16, align 8
  %26 = bitcast %struct.xpvgv* %25 to %struct.xpv*
  %xpv_pv17 = getelementptr inbounds %struct.xpv, %struct.xpv* %26, i32 0, i32 0
  %27 = load i8*, i8** %xpv_pv17, align 8
  call void @Perl_safesysfree(i8* %27)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %cond.end
  %call19 = call i8* @Perl_safesysmalloc(i64 88)
  %28 = bitcast i8* %call19 to %struct.gp*
  store %struct.gp* %28, %struct.gp** %gp, align 8
  %29 = load %struct.gp*, %struct.gp** %gp, align 8
  %30 = bitcast %struct.gp* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 88, i32 1, i1 false)
  %31 = load %struct.gp*, %struct.gp** %gp, align 8
  %call20 = call %struct.gp* @Perl_gp_ref(%struct.gp* %31)
  %32 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any21 = getelementptr inbounds %struct.gv, %struct.gv* %32, i32 0, i32 0
  %33 = load %struct.xpvgv*, %struct.xpvgv** %sv_any21, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %33, i32 0, i32 7
  store %struct.gp* %call20, %struct.gp** %xgv_gp, align 8
  %call22 = call %struct.sv* @Perl_newSV(i64 0)
  %34 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any23 = getelementptr inbounds %struct.gv, %struct.gv* %34, i32 0, i32 0
  %35 = load %struct.xpvgv*, %struct.xpvgv** %sv_any23, align 8
  %xgv_gp24 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %35, i32 0, i32 7
  %36 = load %struct.gp*, %struct.gp** %xgv_gp24, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %36, i32 0, i32 0
  store %struct.sv* %call22, %struct.sv** %gp_sv, align 8
  %37 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_line = getelementptr inbounds %struct.cop, %struct.cop* %37, i32 0, i32 13
  %38 = load i32, i32* %cop_line, align 4
  %39 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any25 = getelementptr inbounds %struct.gv, %struct.gv* %39, i32 0, i32 0
  %40 = load %struct.xpvgv*, %struct.xpvgv** %sv_any25, align 8
  %xgv_gp26 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %40, i32 0, i32 7
  %41 = load %struct.gp*, %struct.gp** %xgv_gp26, align 8
  %gp_line = getelementptr inbounds %struct.gp, %struct.gp* %41, i32 0, i32 10
  store i32 %38, i32* %gp_line, align 4
  %42 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv = getelementptr inbounds %struct.cop, %struct.cop* %42, i32 0, i32 10
  %43 = load %struct.gv*, %struct.gv** %cop_filegv, align 8
  %tobool27 = icmp ne %struct.gv* %43, null
  br i1 %tobool27, label %cond.true.28, label %cond.false.34

cond.true.28:                                     ; preds = %if.end.18
  %44 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv29 = getelementptr inbounds %struct.cop, %struct.cop* %44, i32 0, i32 10
  %45 = load %struct.gv*, %struct.gv** %cop_filegv29, align 8
  %sv_any30 = getelementptr inbounds %struct.gv, %struct.gv* %45, i32 0, i32 0
  %46 = load %struct.xpvgv*, %struct.xpvgv** %sv_any30, align 8
  %xgv_gp31 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %46, i32 0, i32 7
  %47 = load %struct.gp*, %struct.gp** %xgv_gp31, align 8
  %gp_sv32 = getelementptr inbounds %struct.gp, %struct.gp* %47, i32 0, i32 0
  %48 = load %struct.sv*, %struct.sv** %gp_sv32, align 8
  %tobool33 = icmp ne %struct.sv* %48, null
  br i1 %tobool33, label %cond.true.35, label %cond.false.49

cond.false.34:                                    ; preds = %if.end.18
  br i1 false, label %cond.true.35, label %cond.false.49

cond.true.35:                                     ; preds = %cond.false.34, %cond.true.28
  %49 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv36 = getelementptr inbounds %struct.cop, %struct.cop* %49, i32 0, i32 10
  %50 = load %struct.gv*, %struct.gv** %cop_filegv36, align 8
  %tobool37 = icmp ne %struct.gv* %50, null
  br i1 %tobool37, label %cond.true.38, label %cond.false.43

cond.true.38:                                     ; preds = %cond.true.35
  %51 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv39 = getelementptr inbounds %struct.cop, %struct.cop* %51, i32 0, i32 10
  %52 = load %struct.gv*, %struct.gv** %cop_filegv39, align 8
  %sv_any40 = getelementptr inbounds %struct.gv, %struct.gv* %52, i32 0, i32 0
  %53 = load %struct.xpvgv*, %struct.xpvgv** %sv_any40, align 8
  %xgv_gp41 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %53, i32 0, i32 7
  %54 = load %struct.gp*, %struct.gp** %xgv_gp41, align 8
  %gp_sv42 = getelementptr inbounds %struct.gp, %struct.gp* %54, i32 0, i32 0
  %55 = load %struct.sv*, %struct.sv** %gp_sv42, align 8
  br label %cond.end.44

cond.false.43:                                    ; preds = %cond.true.35
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.38
  %cond45 = phi %struct.sv* [ %55, %cond.true.38 ], [ null, %cond.false.43 ]
  %sv_any46 = getelementptr inbounds %struct.sv, %struct.sv* %cond45, i32 0, i32 0
  %56 = load i8*, i8** %sv_any46, align 8
  %57 = bitcast i8* %56 to %struct.xpv*
  %xpv_pv47 = getelementptr inbounds %struct.xpv, %struct.xpv* %57, i32 0, i32 0
  %58 = load i8*, i8** %xpv_pv47, align 8
  %tobool48 = icmp ne i8* %58, null
  br i1 %tobool48, label %cond.true.50, label %cond.false.76

cond.false.49:                                    ; preds = %cond.false.34, %cond.true.28
  br i1 false, label %cond.true.50, label %cond.false.76

cond.true.50:                                     ; preds = %cond.false.49, %cond.end.44
  %59 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv51 = getelementptr inbounds %struct.cop, %struct.cop* %59, i32 0, i32 10
  %60 = load %struct.gv*, %struct.gv** %cop_filegv51, align 8
  %tobool52 = icmp ne %struct.gv* %60, null
  br i1 %tobool52, label %cond.true.53, label %cond.false.59

cond.true.53:                                     ; preds = %cond.true.50
  %61 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv54 = getelementptr inbounds %struct.cop, %struct.cop* %61, i32 0, i32 10
  %62 = load %struct.gv*, %struct.gv** %cop_filegv54, align 8
  %sv_any55 = getelementptr inbounds %struct.gv, %struct.gv* %62, i32 0, i32 0
  %63 = load %struct.xpvgv*, %struct.xpvgv** %sv_any55, align 8
  %xgv_gp56 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %63, i32 0, i32 7
  %64 = load %struct.gp*, %struct.gp** %xgv_gp56, align 8
  %gp_sv57 = getelementptr inbounds %struct.gp, %struct.gp* %64, i32 0, i32 0
  %65 = load %struct.sv*, %struct.sv** %gp_sv57, align 8
  %tobool58 = icmp ne %struct.sv* %65, null
  br i1 %tobool58, label %cond.true.60, label %cond.false.73

cond.false.59:                                    ; preds = %cond.true.50
  br i1 false, label %cond.true.60, label %cond.false.73

cond.true.60:                                     ; preds = %cond.false.59, %cond.true.53
  %66 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv61 = getelementptr inbounds %struct.cop, %struct.cop* %66, i32 0, i32 10
  %67 = load %struct.gv*, %struct.gv** %cop_filegv61, align 8
  %tobool62 = icmp ne %struct.gv* %67, null
  br i1 %tobool62, label %cond.true.63, label %cond.false.68

cond.true.63:                                     ; preds = %cond.true.60
  %68 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv64 = getelementptr inbounds %struct.cop, %struct.cop* %68, i32 0, i32 10
  %69 = load %struct.gv*, %struct.gv** %cop_filegv64, align 8
  %sv_any65 = getelementptr inbounds %struct.gv, %struct.gv* %69, i32 0, i32 0
  %70 = load %struct.xpvgv*, %struct.xpvgv** %sv_any65, align 8
  %xgv_gp66 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %70, i32 0, i32 7
  %71 = load %struct.gp*, %struct.gp** %xgv_gp66, align 8
  %gp_sv67 = getelementptr inbounds %struct.gp, %struct.gp* %71, i32 0, i32 0
  %72 = load %struct.sv*, %struct.sv** %gp_sv67, align 8
  br label %cond.end.69

cond.false.68:                                    ; preds = %cond.true.60
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.68, %cond.true.63
  %cond70 = phi %struct.sv* [ %72, %cond.true.63 ], [ null, %cond.false.68 ]
  %sv_any71 = getelementptr inbounds %struct.sv, %struct.sv* %cond70, i32 0, i32 0
  %73 = load i8*, i8** %sv_any71, align 8
  %74 = bitcast i8* %73 to %struct.xpv*
  %xpv_pv72 = getelementptr inbounds %struct.xpv, %struct.xpv* %74, i32 0, i32 0
  %75 = load i8*, i8** %xpv_pv72, align 8
  br label %cond.end.74

cond.false.73:                                    ; preds = %cond.false.59, %cond.true.53
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.73, %cond.end.69
  %cond75 = phi i8* [ %75, %cond.end.69 ], [ null, %cond.false.73 ]
  br label %cond.end.77

cond.false.76:                                    ; preds = %cond.false.49, %cond.end.44
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.76, %cond.end.74
  %cond78 = phi i8* [ %cond75, %cond.end.74 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), %cond.false.76 ]
  %76 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any79 = getelementptr inbounds %struct.gv, %struct.gv* %76, i32 0, i32 0
  %77 = load %struct.xpvgv*, %struct.xpvgv** %sv_any79, align 8
  %xgv_gp80 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %77, i32 0, i32 7
  %78 = load %struct.gp*, %struct.gp** %xgv_gp80, align 8
  %gp_file = getelementptr inbounds %struct.gp, %struct.gp* %78, i32 0, i32 11
  store i8* %cond78, i8** %gp_file, align 8
  %79 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any81 = getelementptr inbounds %struct.gv, %struct.gv* %79, i32 0, i32 0
  %80 = load %struct.xpvgv*, %struct.xpvgv** %sv_any81, align 8
  %xgv_gp82 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %80, i32 0, i32 7
  %81 = load %struct.gp*, %struct.gp** %xgv_gp82, align 8
  %gp_cvgen = getelementptr inbounds %struct.gp, %struct.gp* %81, i32 0, i32 8
  store i32 0, i32* %gp_cvgen, align 4
  %82 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %83 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any83 = getelementptr inbounds %struct.gv, %struct.gv* %83, i32 0, i32 0
  %84 = load %struct.xpvgv*, %struct.xpvgv** %sv_any83, align 8
  %xgv_gp84 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %84, i32 0, i32 7
  %85 = load %struct.gp*, %struct.gp** %xgv_gp84, align 8
  %gp_egv = getelementptr inbounds %struct.gp, %struct.gp* %85, i32 0, i32 6
  store %struct.gv* %82, %struct.gv** %gp_egv, align 8
  %86 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %87 = bitcast %struct.gv* %86 to %struct.sv*
  %88 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %89 = bitcast %struct.gv* %88 to %struct.sv*
  call void @Perl_sv_magic(%struct.sv* %87, %struct.sv* %89, i32 42, i8* null, i32 0)
  %90 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %91 = bitcast %struct.hv* %90 to %struct.sv*
  store %struct.sv* %91, %struct.sv** @PL_Sv, align 8
  %92 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool85 = icmp ne %struct.sv* %92, null
  br i1 %tobool85, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end.77
  %93 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %93, i32 0, i32 1
  %94 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %94, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool86 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end.77
  %95 = phi i1 [ false, %cond.end.77 ], [ %tobool86, %land.rhs ]
  %land.ext = zext i1 %95 to i32
  %96 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %97 = bitcast %struct.sv* %96 to %struct.hv*
  %98 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any87 = getelementptr inbounds %struct.gv, %struct.gv* %98, i32 0, i32 0
  %99 = load %struct.xpvgv*, %struct.xpvgv** %sv_any87, align 8
  %xgv_stash = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %99, i32 0, i32 10
  store %struct.hv* %97, %struct.hv** %xgv_stash, align 8
  %100 = load i8*, i8** %name.addr, align 8
  %101 = load i64, i64* %len.addr, align 8
  %conv88 = trunc i64 %101 to i32
  %call89 = call i8* @Perl_savepvn(i8* %100, i32 %conv88)
  %102 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any90 = getelementptr inbounds %struct.gv, %struct.gv* %102, i32 0, i32 0
  %103 = load %struct.xpvgv*, %struct.xpvgv** %sv_any90, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %103, i32 0, i32 8
  store i8* %call89, i8** %xgv_name, align 8
  %104 = load i64, i64* %len.addr, align 8
  %105 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any91 = getelementptr inbounds %struct.gv, %struct.gv* %105, i32 0, i32 0
  %106 = load %struct.xpvgv*, %struct.xpvgv** %sv_any91, align 8
  %xgv_namelen = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %106, i32 0, i32 9
  store i64 %104, i64* %xgv_namelen, align 8
  %107 = load i32, i32* %multi.addr, align 4
  %tobool92 = icmp ne i32 %107, 0
  br i1 %tobool92, label %if.then.95, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end
  %108 = load i8, i8* %doproto, align 1
  %conv93 = sext i8 %108 to i32
  %tobool94 = icmp ne i32 %conv93, 0
  br i1 %tobool94, label %if.then.95, label %if.end.99

if.then.95:                                       ; preds = %lor.lhs.false, %land.end
  %109 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any96 = getelementptr inbounds %struct.gv, %struct.gv* %109, i32 0, i32 0
  %110 = load %struct.xpvgv*, %struct.xpvgv** %sv_any96, align 8
  %xgv_flags = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %110, i32 0, i32 11
  %111 = load i8, i8* %xgv_flags, align 1
  %conv97 = zext i8 %111 to i32
  %or = or i32 %conv97, 2
  %conv98 = trunc i32 %or to i8
  store i8 %conv98, i8* %xgv_flags, align 1
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.95, %lor.lhs.false
  %112 = load i8, i8* %doproto, align 1
  %tobool100 = icmp ne i8 %112, 0
  br i1 %tobool100, label %if.then.101, label %if.end.151

if.then.101:                                      ; preds = %if.end.99
  %113 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_flags102 = getelementptr inbounds %struct.gv, %struct.gv* %113, i32 0, i32 2
  %114 = load i32, i32* %sv_flags102, align 4
  %and103 = and i32 %114, 2130640895
  store i32 %and103, i32* %sv_flags102, align 4
  call void @Perl_push_scope()
  %call104 = call i32 @Perl_start_subparse(i32 0, i32 0)
  %115 = load %struct.cv*, %struct.cv** @PL_compcv, align 8
  %116 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any105 = getelementptr inbounds %struct.gv, %struct.gv* %116, i32 0, i32 0
  %117 = load %struct.xpvgv*, %struct.xpvgv** %sv_any105, align 8
  %xgv_gp106 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %117, i32 0, i32 7
  %118 = load %struct.gp*, %struct.gp** %xgv_gp106, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %118, i32 0, i32 7
  store %struct.cv* %115, %struct.cv** %gp_cv, align 8
  call void @Perl_pop_scope()
  %119 = load i32, i32* @PL_sub_generation, align 4
  %inc107 = add i32 %119, 1
  store i32 %inc107, i32* @PL_sub_generation, align 4
  %120 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %121 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any108 = getelementptr inbounds %struct.gv, %struct.gv* %121, i32 0, i32 0
  %122 = load %struct.xpvgv*, %struct.xpvgv** %sv_any108, align 8
  %xgv_gp109 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %122, i32 0, i32 7
  %123 = load %struct.gp*, %struct.gp** %xgv_gp109, align 8
  %gp_cv110 = getelementptr inbounds %struct.gp, %struct.gp* %123, i32 0, i32 7
  %124 = load %struct.cv*, %struct.cv** %gp_cv110, align 8
  %sv_any111 = getelementptr inbounds %struct.cv, %struct.cv* %124, i32 0, i32 0
  %125 = load %struct.xpvcv*, %struct.xpvcv** %sv_any111, align 8
  %xcv_gv = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %125, i32 0, i32 12
  store %struct.gv* %120, %struct.gv** %xcv_gv, align 8
  %126 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv112 = getelementptr inbounds %struct.cop, %struct.cop* %126, i32 0, i32 10
  %127 = load %struct.gv*, %struct.gv** %cop_filegv112, align 8
  %tobool113 = icmp ne %struct.gv* %127, null
  br i1 %tobool113, label %cond.true.114, label %cond.false.120

cond.true.114:                                    ; preds = %if.then.101
  %128 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv115 = getelementptr inbounds %struct.cop, %struct.cop* %128, i32 0, i32 10
  %129 = load %struct.gv*, %struct.gv** %cop_filegv115, align 8
  %sv_any116 = getelementptr inbounds %struct.gv, %struct.gv* %129, i32 0, i32 0
  %130 = load %struct.xpvgv*, %struct.xpvgv** %sv_any116, align 8
  %xgv_gp117 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %130, i32 0, i32 7
  %131 = load %struct.gp*, %struct.gp** %xgv_gp117, align 8
  %gp_sv118 = getelementptr inbounds %struct.gp, %struct.gp* %131, i32 0, i32 0
  %132 = load %struct.sv*, %struct.sv** %gp_sv118, align 8
  %tobool119 = icmp ne %struct.sv* %132, null
  br i1 %tobool119, label %cond.true.121, label %cond.false.134

cond.false.120:                                   ; preds = %if.then.101
  br i1 false, label %cond.true.121, label %cond.false.134

cond.true.121:                                    ; preds = %cond.false.120, %cond.true.114
  %133 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv122 = getelementptr inbounds %struct.cop, %struct.cop* %133, i32 0, i32 10
  %134 = load %struct.gv*, %struct.gv** %cop_filegv122, align 8
  %tobool123 = icmp ne %struct.gv* %134, null
  br i1 %tobool123, label %cond.true.124, label %cond.false.129

cond.true.124:                                    ; preds = %cond.true.121
  %135 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv125 = getelementptr inbounds %struct.cop, %struct.cop* %135, i32 0, i32 10
  %136 = load %struct.gv*, %struct.gv** %cop_filegv125, align 8
  %sv_any126 = getelementptr inbounds %struct.gv, %struct.gv* %136, i32 0, i32 0
  %137 = load %struct.xpvgv*, %struct.xpvgv** %sv_any126, align 8
  %xgv_gp127 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %137, i32 0, i32 7
  %138 = load %struct.gp*, %struct.gp** %xgv_gp127, align 8
  %gp_sv128 = getelementptr inbounds %struct.gp, %struct.gp* %138, i32 0, i32 0
  %139 = load %struct.sv*, %struct.sv** %gp_sv128, align 8
  br label %cond.end.130

cond.false.129:                                   ; preds = %cond.true.121
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.false.129, %cond.true.124
  %cond131 = phi %struct.sv* [ %139, %cond.true.124 ], [ null, %cond.false.129 ]
  %sv_any132 = getelementptr inbounds %struct.sv, %struct.sv* %cond131, i32 0, i32 0
  %140 = load i8*, i8** %sv_any132, align 8
  %141 = bitcast i8* %140 to %struct.xpv*
  %xpv_pv133 = getelementptr inbounds %struct.xpv, %struct.xpv* %141, i32 0, i32 0
  %142 = load i8*, i8** %xpv_pv133, align 8
  br label %cond.end.135

cond.false.134:                                   ; preds = %cond.false.120, %cond.true.114
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.134, %cond.end.130
  %cond136 = phi i8* [ %142, %cond.end.130 ], [ null, %cond.false.134 ]
  %143 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any137 = getelementptr inbounds %struct.gv, %struct.gv* %143, i32 0, i32 0
  %144 = load %struct.xpvgv*, %struct.xpvgv** %sv_any137, align 8
  %xgv_gp138 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %144, i32 0, i32 7
  %145 = load %struct.gp*, %struct.gp** %xgv_gp138, align 8
  %gp_cv139 = getelementptr inbounds %struct.gp, %struct.gp* %145, i32 0, i32 7
  %146 = load %struct.cv*, %struct.cv** %gp_cv139, align 8
  %sv_any140 = getelementptr inbounds %struct.cv, %struct.cv* %146, i32 0, i32 0
  %147 = load %struct.xpvcv*, %struct.xpvcv** %sv_any140, align 8
  %xcv_file = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %147, i32 0, i32 13
  store i8* %cond136, i8** %xcv_file, align 8
  %148 = load %struct.hv*, %struct.hv** @PL_curstash, align 8
  %149 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any141 = getelementptr inbounds %struct.gv, %struct.gv* %149, i32 0, i32 0
  %150 = load %struct.xpvgv*, %struct.xpvgv** %sv_any141, align 8
  %xgv_gp142 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %150, i32 0, i32 7
  %151 = load %struct.gp*, %struct.gp** %xgv_gp142, align 8
  %gp_cv143 = getelementptr inbounds %struct.gp, %struct.gp* %151, i32 0, i32 7
  %152 = load %struct.cv*, %struct.cv** %gp_cv143, align 8
  %sv_any144 = getelementptr inbounds %struct.cv, %struct.cv* %152, i32 0, i32 0
  %153 = load %struct.xpvcv*, %struct.xpvcv** %sv_any144, align 8
  %xcv_stash = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %153, i32 0, i32 7
  store %struct.hv* %148, %struct.hv** %xcv_stash, align 8
  %154 = load i8*, i8** %proto, align 8
  %tobool145 = icmp ne i8* %154, null
  br i1 %tobool145, label %if.then.146, label %if.end.150

if.then.146:                                      ; preds = %cond.end.135
  %155 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any147 = getelementptr inbounds %struct.gv, %struct.gv* %155, i32 0, i32 0
  %156 = load %struct.xpvgv*, %struct.xpvgv** %sv_any147, align 8
  %xgv_gp148 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %156, i32 0, i32 7
  %157 = load %struct.gp*, %struct.gp** %xgv_gp148, align 8
  %gp_cv149 = getelementptr inbounds %struct.gp, %struct.gp* %157, i32 0, i32 7
  %158 = load %struct.cv*, %struct.cv** %gp_cv149, align 8
  %159 = bitcast %struct.cv* %158 to %struct.sv*
  %160 = load i8*, i8** %proto, align 8
  call void @Perl_sv_setpv(%struct.sv* %159, i8* %160)
  %161 = load i8*, i8** %proto, align 8
  call void @Perl_safesysfree(i8* %161)
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.146, %cond.end.135
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.end.99
  ret void
}

declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

declare void @Perl_hv_magic(%struct.hv*, %struct.gv*, i32) #1

declare void @Perl_safesysfree(i8*) #1

declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define %struct.gp* @Perl_gp_ref(%struct.gp* %gp) #0 {
entry:
  %retval = alloca %struct.gp*, align 8
  %gp.addr = alloca %struct.gp*, align 8
  store %struct.gp* %gp, %struct.gp** %gp.addr, align 8
  %0 = load %struct.gp*, %struct.gp** %gp.addr, align 8
  %tobool = icmp ne %struct.gp* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.gp* null, %struct.gp** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gp*, %struct.gp** %gp.addr, align 8
  %gp_refcnt = getelementptr inbounds %struct.gp, %struct.gp* %1, i32 0, i32 1
  %2 = load i32, i32* %gp_refcnt, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %gp_refcnt, align 4
  %3 = load %struct.gp*, %struct.gp** %gp.addr, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %3, i32 0, i32 7
  %4 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  %tobool1 = icmp ne %struct.cv* %4, null
  br i1 %tobool1, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.gp*, %struct.gp** %gp.addr, align 8
  %gp_cvgen = getelementptr inbounds %struct.gp, %struct.gp* %5, i32 0, i32 8
  %6 = load i32, i32* %gp_cvgen, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  %7 = load %struct.gp*, %struct.gp** %gp.addr, align 8
  %gp_cv5 = getelementptr inbounds %struct.gp, %struct.gp* %7, i32 0, i32 7
  %8 = load %struct.cv*, %struct.cv** %gp_cv5, align 8
  %9 = bitcast %struct.cv* %8 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %9)
  %10 = load %struct.gp*, %struct.gp** %gp.addr, align 8
  %gp_cv6 = getelementptr inbounds %struct.gp, %struct.gp* %10, i32 0, i32 7
  store %struct.cv* null, %struct.cv** %gp_cv6, align 8
  %11 = load %struct.gp*, %struct.gp** %gp.addr, align 8
  %gp_cvgen7 = getelementptr inbounds %struct.gp, %struct.gp* %11, i32 0, i32 8
  store i32 0, i32* %gp_cvgen7, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.then.2
  %12 = load i32, i32* @PL_sub_generation, align 4
  %inc8 = add i32 %12, 1
  store i32 %inc8, i32* @PL_sub_generation, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  %13 = load %struct.gp*, %struct.gp** %gp.addr, align 8
  store %struct.gp* %13, %struct.gp** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  %14 = load %struct.gp*, %struct.gp** %retval
  ret %struct.gp* %14
}

declare %struct.sv* @Perl_newSV(i64) #1

declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #1

declare i8* @Perl_savepvn(i8*, i32) #1

declare void @Perl_push_scope() #1

declare i32 @Perl_start_subparse(i32, i32) #1

declare void @Perl_pop_scope() #1

; Function Attrs: nounwind uwtable
define %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %stash, i8* %name, i64 %len, i32 %level) #0 {
entry:
  %retval = alloca %struct.gv*, align 8
  %stash.addr = alloca %struct.hv*, align 8
  %name.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %level.addr = alloca i32, align 4
  %av = alloca %struct.av*, align 8
  %topgv = alloca %struct.gv*, align 8
  %gv = alloca %struct.gv*, align 8
  %gvp = alloca %struct.gv**, align 8
  %cv = alloca %struct.cv*, align 8
  %packname = alloca i8*, align 8
  %packlen = alloca i64, align 8
  %basestash = alloca %struct.hv*, align 8
  %svp = alloca %struct.sv**, align 8
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %basestash118 = alloca %struct.hv*, align 8
  %lastchance = alloca %struct.hv*, align 8
  store %struct.hv* %stash, %struct.hv** %stash.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %tobool = icmp ne %struct.hv* %0, null
  br i1 %tobool, label %if.end.3, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %level.addr, align 4
  %call = call %struct.hv* @Perl_gv_stashpvn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 9, i32 0)
  store %struct.hv* %call, %struct.hv** %stash.addr, align 8
  %tobool1 = icmp ne %struct.hv* %call, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store %struct.gv* null, %struct.gv** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %1 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %1, i32 0, i32 0
  %2 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %2, i32 0, i32 10
  %3 = load i8*, i8** %xhv_name, align 8
  %tobool4 = icmp ne i8* %3, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %4 = load i32, i32* %level.addr, align 4
  %cmp = icmp sgt i32 %4, 100
  br i1 %cmp, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %5 = load i32, i32* %level.addr, align 4
  %cmp7 = icmp slt i32 %5, -100
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.6
  %6 = load i8*, i8** %name.addr, align 8
  %7 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %sv_any9 = getelementptr inbounds %struct.hv, %struct.hv* %7, i32 0, i32 0
  %8 = load %struct.xpvhv*, %struct.xpvhv** %sv_any9, align 8
  %xhv_name10 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %8, i32 0, i32 10
  %9 = load i8*, i8** %xhv_name10, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.6, i32 0, i32 0), i8* %6, i8* %9)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %lor.lhs.false
  %10 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %11 = load i8*, i8** %name.addr, align 8
  %12 = load i64, i64* %len.addr, align 8
  %conv = trunc i64 %12 to i32
  %13 = load i32, i32* %level.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %10, i8* %11, i32 %conv, i32 %conv13)
  %14 = bitcast %struct.sv** %call14 to %struct.gv**
  store %struct.gv** %14, %struct.gv*** %gvp, align 8
  %15 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %tobool15 = icmp ne %struct.gv** %15, null
  br i1 %tobool15, label %if.else, label %if.then.16

if.then.16:                                       ; preds = %if.end.11
  store %struct.gv* null, %struct.gv** %topgv, align 8
  br label %if.end.50

if.else:                                          ; preds = %if.end.11
  %16 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %17 = load %struct.gv*, %struct.gv** %16, align 8
  store %struct.gv* %17, %struct.gv** %topgv, align 8
  %18 = load %struct.gv*, %struct.gv** %topgv, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %18, i32 0, i32 2
  %19 = load i32, i32* %sv_flags, align 4
  %and = and i32 %19, 255
  %cmp17 = icmp ne i32 %and, 13
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.else
  %20 = load %struct.gv*, %struct.gv** %topgv, align 8
  %21 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %22 = load i8*, i8** %name.addr, align 8
  %23 = load i64, i64* %len.addr, align 8
  call void @Perl_gv_init(%struct.gv* %20, %struct.hv* %21, i8* %22, i64 %23, i32 1)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.else
  %24 = load %struct.gv*, %struct.gv** %topgv, align 8
  %sv_any21 = getelementptr inbounds %struct.gv, %struct.gv* %24, i32 0, i32 0
  %25 = load %struct.xpvgv*, %struct.xpvgv** %sv_any21, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %25, i32 0, i32 7
  %26 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %26, i32 0, i32 7
  %27 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  store %struct.cv* %27, %struct.cv** %cv, align 8
  %tobool22 = icmp ne %struct.cv* %27, null
  br i1 %tobool22, label %if.then.23, label %if.else.41

if.then.23:                                       ; preds = %if.end.20
  %28 = load %struct.gv*, %struct.gv** %topgv, align 8
  %sv_any24 = getelementptr inbounds %struct.gv, %struct.gv* %28, i32 0, i32 0
  %29 = load %struct.xpvgv*, %struct.xpvgv** %sv_any24, align 8
  %xgv_gp25 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %29, i32 0, i32 7
  %30 = load %struct.gp*, %struct.gp** %xgv_gp25, align 8
  %gp_cvgen = getelementptr inbounds %struct.gp, %struct.gp* %30, i32 0, i32 8
  %31 = load i32, i32* %gp_cvgen, align 4
  %tobool26 = icmp ne i32 %31, 0
  br i1 %tobool26, label %lor.lhs.false.27, label %if.then.33

lor.lhs.false.27:                                 ; preds = %if.then.23
  %32 = load %struct.gv*, %struct.gv** %topgv, align 8
  %sv_any28 = getelementptr inbounds %struct.gv, %struct.gv* %32, i32 0, i32 0
  %33 = load %struct.xpvgv*, %struct.xpvgv** %sv_any28, align 8
  %xgv_gp29 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %33, i32 0, i32 7
  %34 = load %struct.gp*, %struct.gp** %xgv_gp29, align 8
  %gp_cvgen30 = getelementptr inbounds %struct.gp, %struct.gp* %34, i32 0, i32 8
  %35 = load i32, i32* %gp_cvgen30, align 4
  %36 = load i32, i32* @PL_sub_generation, align 4
  %cmp31 = icmp eq i32 %35, %36
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %lor.lhs.false.27, %if.then.23
  %37 = load %struct.gv*, %struct.gv** %topgv, align 8
  store %struct.gv* %37, %struct.gv** %retval
  br label %return

if.end.34:                                        ; preds = %lor.lhs.false.27
  %38 = load %struct.cv*, %struct.cv** %cv, align 8
  %39 = bitcast %struct.cv* %38 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %39)
  store %struct.cv* null, %struct.cv** %cv, align 8
  %40 = load %struct.gv*, %struct.gv** %topgv, align 8
  %sv_any35 = getelementptr inbounds %struct.gv, %struct.gv* %40, i32 0, i32 0
  %41 = load %struct.xpvgv*, %struct.xpvgv** %sv_any35, align 8
  %xgv_gp36 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %41, i32 0, i32 7
  %42 = load %struct.gp*, %struct.gp** %xgv_gp36, align 8
  %gp_cv37 = getelementptr inbounds %struct.gp, %struct.gp* %42, i32 0, i32 7
  store %struct.cv* null, %struct.cv** %gp_cv37, align 8
  %43 = load %struct.gv*, %struct.gv** %topgv, align 8
  %sv_any38 = getelementptr inbounds %struct.gv, %struct.gv* %43, i32 0, i32 0
  %44 = load %struct.xpvgv*, %struct.xpvgv** %sv_any38, align 8
  %xgv_gp39 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %44, i32 0, i32 7
  %45 = load %struct.gp*, %struct.gp** %xgv_gp39, align 8
  %gp_cvgen40 = getelementptr inbounds %struct.gp, %struct.gp* %45, i32 0, i32 8
  store i32 0, i32* %gp_cvgen40, align 4
  br label %if.end.49

if.else.41:                                       ; preds = %if.end.20
  %46 = load %struct.gv*, %struct.gv** %topgv, align 8
  %sv_any42 = getelementptr inbounds %struct.gv, %struct.gv* %46, i32 0, i32 0
  %47 = load %struct.xpvgv*, %struct.xpvgv** %sv_any42, align 8
  %xgv_gp43 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %47, i32 0, i32 7
  %48 = load %struct.gp*, %struct.gp** %xgv_gp43, align 8
  %gp_cvgen44 = getelementptr inbounds %struct.gp, %struct.gp* %48, i32 0, i32 8
  %49 = load i32, i32* %gp_cvgen44, align 4
  %50 = load i32, i32* @PL_sub_generation, align 4
  %cmp45 = icmp eq i32 %49, %50
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.else.41
  store %struct.gv* null, %struct.gv** %retval
  br label %return

if.end.48:                                        ; preds = %if.else.41
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.34
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.16
  %51 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %call51 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 3, i32 0)
  %52 = bitcast %struct.sv** %call51 to %struct.gv**
  store %struct.gv** %52, %struct.gv*** %gvp, align 8
  %53 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %tobool52 = icmp ne %struct.gv** %53, null
  br i1 %tobool52, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end.50
  %54 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %55 = load %struct.gv*, %struct.gv** %54, align 8
  store %struct.gv* %55, %struct.gv** %gv, align 8
  %tobool53 = icmp ne %struct.gv* %55, null
  br i1 %tobool53, label %land.lhs.true.54, label %cond.false

land.lhs.true.54:                                 ; preds = %land.lhs.true
  %56 = load %struct.gv*, %struct.gv** %gv, align 8
  %cmp55 = icmp ne %struct.gv* %56, bitcast (%struct.sv* @PL_sv_undef to %struct.gv*)
  br i1 %cmp55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.54
  %57 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any57 = getelementptr inbounds %struct.gv, %struct.gv* %57, i32 0, i32 0
  %58 = load %struct.xpvgv*, %struct.xpvgv** %sv_any57, align 8
  %xgv_gp58 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %58, i32 0, i32 7
  %59 = load %struct.gp*, %struct.gp** %xgv_gp58, align 8
  %gp_av = getelementptr inbounds %struct.gp, %struct.gp* %59, i32 0, i32 4
  %60 = load %struct.av*, %struct.av** %gp_av, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.54, %land.lhs.true, %if.end.50
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.av* [ %60, %cond.true ], [ null, %cond.false ]
  store %struct.av* %cond, %struct.av** %av, align 8
  %61 = load %struct.av*, %struct.av** %av, align 8
  %tobool59 = icmp ne %struct.av* %61, null
  br i1 %tobool59, label %lor.lhs.false.60, label %if.then.63

lor.lhs.false.60:                                 ; preds = %cond.end
  %62 = load %struct.av*, %struct.av** %av, align 8
  %sv_any61 = getelementptr inbounds %struct.av, %struct.av* %62, i32 0, i32 0
  %63 = load %struct.xpvav*, %struct.xpvav** %sv_any61, align 8
  %64 = bitcast %struct.xpvav* %63 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %64, i32 0, i32 5
  %65 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  %tobool62 = icmp ne %struct.magic* %65, null
  br i1 %tobool62, label %if.end.111, label %if.then.63

if.then.63:                                       ; preds = %lor.lhs.false.60, %cond.end
  %66 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %sv_any64 = getelementptr inbounds %struct.hv, %struct.hv* %66, i32 0, i32 0
  %67 = load %struct.xpvhv*, %struct.xpvhv** %sv_any64, align 8
  %xhv_name65 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %67, i32 0, i32 10
  %68 = load i8*, i8** %xhv_name65, align 8
  store i8* %68, i8** %packname, align 8
  %69 = load i8*, i8** %packname, align 8
  %call66 = call i64 @strlen(i8* %69)
  store i64 %call66, i64* %packlen, align 8
  %70 = load i64, i64* %packlen, align 8
  %cmp67 = icmp uge i64 %70, 7
  br i1 %cmp67, label %land.lhs.true.69, label %if.end.110

land.lhs.true.69:                                 ; preds = %if.then.63
  %71 = load i8*, i8** %packname, align 8
  %72 = load i64, i64* %packlen, align 8
  %add.ptr = getelementptr inbounds i8, i8* %71, i64 %72
  %add.ptr70 = getelementptr inbounds i8, i8* %add.ptr, i64 -7
  %call71 = call i32 @strcmp(i8* %add.ptr70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0))
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.end.110, label %if.then.73

if.then.73:                                       ; preds = %land.lhs.true.69
  %73 = load i64, i64* %packlen, align 8
  %sub = sub i64 %73, 7
  store i64 %sub, i64* %packlen, align 8
  %74 = load i8*, i8** %packname, align 8
  %75 = load i64, i64* %packlen, align 8
  %conv74 = trunc i64 %75 to i32
  %call75 = call %struct.hv* @Perl_gv_stashpvn(i8* %74, i32 %conv74, i32 1)
  store %struct.hv* %call75, %struct.hv** %basestash, align 8
  %76 = load %struct.hv*, %struct.hv** %basestash, align 8
  %call76 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 3, i32 0)
  %77 = bitcast %struct.sv** %call76 to %struct.gv**
  store %struct.gv** %77, %struct.gv*** %gvp, align 8
  %78 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %tobool77 = icmp ne %struct.gv** %78, null
  br i1 %tobool77, label %land.lhs.true.78, label %if.end.109

land.lhs.true.78:                                 ; preds = %if.then.73
  %79 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %80 = load %struct.gv*, %struct.gv** %79, align 8
  store %struct.gv* %80, %struct.gv** %gv, align 8
  %cmp79 = icmp ne %struct.gv* %80, bitcast (%struct.sv* @PL_sv_undef to %struct.gv*)
  br i1 %cmp79, label %land.lhs.true.81, label %if.end.109

land.lhs.true.81:                                 ; preds = %land.lhs.true.78
  %81 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any82 = getelementptr inbounds %struct.gv, %struct.gv* %81, i32 0, i32 0
  %82 = load %struct.xpvgv*, %struct.xpvgv** %sv_any82, align 8
  %xgv_gp83 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %82, i32 0, i32 7
  %83 = load %struct.gp*, %struct.gp** %xgv_gp83, align 8
  %gp_av84 = getelementptr inbounds %struct.gp, %struct.gp* %83, i32 0, i32 4
  %84 = load %struct.av*, %struct.av** %gp_av84, align 8
  store %struct.av* %84, %struct.av** %av, align 8
  %tobool85 = icmp ne %struct.av* %84, null
  br i1 %tobool85, label %if.then.86, label %if.end.109

if.then.86:                                       ; preds = %land.lhs.true.81
  %85 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %call87 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 3, i32 1)
  %86 = bitcast %struct.sv** %call87 to %struct.gv**
  store %struct.gv** %86, %struct.gv*** %gvp, align 8
  %87 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %tobool88 = icmp ne %struct.gv** %87, null
  br i1 %tobool88, label %lor.lhs.false.89, label %if.then.91

lor.lhs.false.89:                                 ; preds = %if.then.86
  %88 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %89 = load %struct.gv*, %struct.gv** %88, align 8
  store %struct.gv* %89, %struct.gv** %gv, align 8
  %tobool90 = icmp ne %struct.gv* %89, null
  br i1 %tobool90, label %if.end.94, label %if.then.91

if.then.91:                                       ; preds = %lor.lhs.false.89, %if.then.86
  %90 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %sv_any92 = getelementptr inbounds %struct.hv, %struct.hv* %90, i32 0, i32 0
  %91 = load %struct.xpvhv*, %struct.xpvhv** %sv_any92, align 8
  %xhv_name93 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %91, i32 0, i32 10
  %92 = load i8*, i8** %xhv_name93, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i8* %92)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %lor.lhs.false.89
  %93 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_flags95 = getelementptr inbounds %struct.gv, %struct.gv* %93, i32 0, i32 2
  %94 = load i32, i32* %sv_flags95, align 4
  %and96 = and i32 %94, 255
  %cmp97 = icmp ne i32 %and96, 13
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.94
  %95 = load %struct.gv*, %struct.gv** %gv, align 8
  %96 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  call void @Perl_gv_init(%struct.gv* %95, %struct.hv* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i64 3, i32 1)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %if.end.94
  %97 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any101 = getelementptr inbounds %struct.gv, %struct.gv* %97, i32 0, i32 0
  %98 = load %struct.xpvgv*, %struct.xpvgv** %sv_any101, align 8
  %xgv_gp102 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %98, i32 0, i32 7
  %99 = load %struct.gp*, %struct.gp** %xgv_gp102, align 8
  %gp_av103 = getelementptr inbounds %struct.gp, %struct.gp* %99, i32 0, i32 4
  %100 = load %struct.av*, %struct.av** %gp_av103, align 8
  %101 = bitcast %struct.av* %100 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %101)
  %102 = load %struct.av*, %struct.av** %av, align 8
  %103 = bitcast %struct.av* %102 to %struct.sv*
  store %struct.sv* %103, %struct.sv** @PL_Sv, align 8
  %104 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool104 = icmp ne %struct.sv* %104, null
  br i1 %tobool104, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.100
  %105 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %105, i32 0, i32 1
  %106 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %106, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool105 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.100
  %107 = phi i1 [ false, %if.end.100 ], [ %tobool105, %land.rhs ]
  %land.ext = zext i1 %107 to i32
  %108 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %109 = bitcast %struct.sv* %108 to %struct.av*
  %110 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any106 = getelementptr inbounds %struct.gv, %struct.gv* %110, i32 0, i32 0
  %111 = load %struct.xpvgv*, %struct.xpvgv** %sv_any106, align 8
  %xgv_gp107 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %111, i32 0, i32 7
  %112 = load %struct.gp*, %struct.gp** %xgv_gp107, align 8
  %gp_av108 = getelementptr inbounds %struct.gp, %struct.gp* %112, i32 0, i32 4
  store %struct.av* %109, %struct.av** %gp_av108, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %land.end, %land.lhs.true.81, %land.lhs.true.78, %if.then.73
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %land.lhs.true.69, %if.then.63
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %lor.lhs.false.60
  %113 = load %struct.av*, %struct.av** %av, align 8
  %tobool112 = icmp ne %struct.av* %113, null
  br i1 %tobool112, label %if.then.113, label %if.end.163

if.then.113:                                      ; preds = %if.end.111
  %114 = load %struct.av*, %struct.av** %av, align 8
  %sv_any114 = getelementptr inbounds %struct.av, %struct.av* %114, i32 0, i32 0
  %115 = load %struct.xpvav*, %struct.xpvav** %sv_any114, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %115, i32 0, i32 0
  %116 = load i8*, i8** %xav_array, align 8
  %117 = bitcast i8* %116 to %struct.sv**
  store %struct.sv** %117, %struct.sv*** %svp, align 8
  %118 = load %struct.av*, %struct.av** %av, align 8
  %sv_any115 = getelementptr inbounds %struct.av, %struct.av* %118, i32 0, i32 0
  %119 = load %struct.xpvav*, %struct.xpvav** %sv_any115, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %119, i32 0, i32 1
  %120 = load i64, i64* %xav_fill, align 8
  %add = add nsw i64 %120, 1
  %conv116 = trunc i64 %add to i32
  store i32 %conv116, i32* %items, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.162, %if.end.149, %if.then.113
  %121 = load i32, i32* %items, align 4
  %dec = add nsw i32 %121, -1
  store i32 %dec, i32* %items, align 4
  %tobool117 = icmp ne i32 %121, 0
  br i1 %tobool117, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %122 = load %struct.sv**, %struct.sv*** %svp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %122, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %svp, align 8
  %123 = load %struct.sv*, %struct.sv** %122, align 8
  store %struct.sv* %123, %struct.sv** %sv, align 8
  %124 = load %struct.sv*, %struct.sv** %sv, align 8
  %call119 = call %struct.hv* @Perl_gv_stashsv(%struct.sv* %124, i32 0)
  store %struct.hv* %call119, %struct.hv** %basestash118, align 8
  %125 = load %struct.hv*, %struct.hv** %basestash118, align 8
  %tobool120 = icmp ne %struct.hv* %125, null
  br i1 %tobool120, label %if.end.150, label %if.then.121

if.then.121:                                      ; preds = %while.body
  %126 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %126, i32 0, i32 14
  %127 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp122 = icmp ne %struct.sv* %127, null
  br i1 %cmp122, label %land.lhs.true.124, label %lor.lhs.false.138

land.lhs.true.124:                                ; preds = %if.then.121
  %128 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings125 = getelementptr inbounds %struct.cop, %struct.cop* %128, i32 0, i32 14
  %129 = load %struct.sv*, %struct.sv** %cop_warnings125, align 8
  %cmp126 = icmp ne %struct.sv* %129, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp126, label %land.lhs.true.128, label %lor.lhs.false.138

land.lhs.true.128:                                ; preds = %land.lhs.true.124
  %130 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings129 = getelementptr inbounds %struct.cop, %struct.cop* %130, i32 0, i32 14
  %131 = load %struct.sv*, %struct.sv** %cop_warnings129, align 8
  %cmp130 = icmp eq %struct.sv* %131, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp130, label %if.then.146, label %lor.lhs.false.132

lor.lhs.false.132:                                ; preds = %land.lhs.true.128
  %132 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings133 = getelementptr inbounds %struct.cop, %struct.cop* %132, i32 0, i32 14
  %133 = load %struct.sv*, %struct.sv** %cop_warnings133, align 8
  %sv_any134 = getelementptr inbounds %struct.sv, %struct.sv* %133, i32 0, i32 0
  %134 = load i8*, i8** %sv_any134, align 8
  %135 = bitcast i8* %134 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %135, i32 0, i32 0
  %136 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %136, i64 3
  %137 = load i8, i8* %arrayidx, align 1
  %conv135 = sext i8 %137 to i32
  %and136 = and i32 %conv135, 1
  %tobool137 = icmp ne i32 %and136, 0
  br i1 %tobool137, label %if.then.146, label %lor.lhs.false.138

lor.lhs.false.138:                                ; preds = %lor.lhs.false.132, %land.lhs.true.124, %if.then.121
  %138 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings139 = getelementptr inbounds %struct.cop, %struct.cop* %138, i32 0, i32 14
  %139 = load %struct.sv*, %struct.sv** %cop_warnings139, align 8
  %cmp140 = icmp eq %struct.sv* %139, null
  br i1 %cmp140, label %land.lhs.true.142, label %if.end.149

land.lhs.true.142:                                ; preds = %lor.lhs.false.138
  %140 = load i8, i8* @PL_dowarn, align 1
  %conv143 = zext i8 %140 to i32
  %and144 = and i32 %conv143, 1
  %tobool145 = icmp ne i32 %and144, 0
  br i1 %tobool145, label %if.then.146, label %if.end.149

if.then.146:                                      ; preds = %land.lhs.true.142, %lor.lhs.false.132, %land.lhs.true.128
  %141 = load %struct.sv*, %struct.sv** %sv, align 8
  %142 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %sv_any147 = getelementptr inbounds %struct.hv, %struct.hv* %142, i32 0, i32 0
  %143 = load %struct.xpvhv*, %struct.xpvhv** %sv_any147, align 8
  %xhv_name148 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %143, i32 0, i32 10
  %144 = load i8*, i8** %xhv_name148, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0), %struct.sv* %141, i8* %144)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.146, %land.lhs.true.142, %lor.lhs.false.138
  br label %while.cond

if.end.150:                                       ; preds = %while.body
  %145 = load %struct.hv*, %struct.hv** %basestash118, align 8
  %146 = load i8*, i8** %name.addr, align 8
  %147 = load i64, i64* %len.addr, align 8
  %148 = load i32, i32* %level.addr, align 4
  %cmp151 = icmp sge i32 %148, 0
  br i1 %cmp151, label %cond.true.153, label %cond.false.155

cond.true.153:                                    ; preds = %if.end.150
  %149 = load i32, i32* %level.addr, align 4
  %add154 = add nsw i32 %149, 1
  br label %cond.end.157

cond.false.155:                                   ; preds = %if.end.150
  %150 = load i32, i32* %level.addr, align 4
  %sub156 = sub nsw i32 %150, 1
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.155, %cond.true.153
  %cond158 = phi i32 [ %add154, %cond.true.153 ], [ %sub156, %cond.false.155 ]
  %call159 = call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %145, i8* %146, i64 %147, i32 %cond158)
  store %struct.gv* %call159, %struct.gv** %gv, align 8
  %151 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool160 = icmp ne %struct.gv* %151, null
  br i1 %tobool160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %cond.end.157
  br label %gotcha

if.end.162:                                       ; preds = %cond.end.157
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.163

if.end.163:                                       ; preds = %while.end, %if.end.111
  %152 = load i32, i32* %level.addr, align 4
  %cmp164 = icmp eq i32 %152, 0
  br i1 %cmp164, label %if.then.169, label %lor.lhs.false.166

lor.lhs.false.166:                                ; preds = %if.end.163
  %153 = load i32, i32* %level.addr, align 4
  %cmp167 = icmp eq i32 %153, -1
  br i1 %cmp167, label %if.then.169, label %if.end.240

if.then.169:                                      ; preds = %lor.lhs.false.166, %if.end.163
  %call170 = call %struct.hv* @Perl_gv_stashpvn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 9, i32 0)
  store %struct.hv* %call170, %struct.hv** %lastchance, align 8
  %tobool171 = icmp ne %struct.hv* %call170, null
  br i1 %tobool171, label %if.then.172, label %if.end.239

if.then.172:                                      ; preds = %if.then.169
  %154 = load %struct.hv*, %struct.hv** %lastchance, align 8
  %155 = load i8*, i8** %name.addr, align 8
  %156 = load i64, i64* %len.addr, align 8
  %157 = load i32, i32* %level.addr, align 4
  %cmp173 = icmp sge i32 %157, 0
  br i1 %cmp173, label %cond.true.175, label %cond.false.177

cond.true.175:                                    ; preds = %if.then.172
  %158 = load i32, i32* %level.addr, align 4
  %add176 = add nsw i32 %158, 1
  br label %cond.end.179

cond.false.177:                                   ; preds = %if.then.172
  %159 = load i32, i32* %level.addr, align 4
  %sub178 = sub nsw i32 %159, 1
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.false.177, %cond.true.175
  %cond180 = phi i32 [ %add176, %cond.true.175 ], [ %sub178, %cond.false.177 ]
  %call181 = call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %154, i8* %155, i64 %156, i32 %cond180)
  store %struct.gv* %call181, %struct.gv** %gv, align 8
  %tobool182 = icmp ne %struct.gv* %call181, null
  br i1 %tobool182, label %if.then.183, label %if.else.225

if.then.183:                                      ; preds = %cond.end.179
  br label %gotcha

gotcha:                                           ; preds = %if.then.183, %if.then.161
  %160 = load %struct.gv*, %struct.gv** %topgv, align 8
  %tobool184 = icmp ne %struct.gv* %160, null
  br i1 %tobool184, label %land.lhs.true.185, label %if.end.224

land.lhs.true.185:                                ; preds = %gotcha
  %161 = load %struct.gv*, %struct.gv** %topgv, align 8
  %sv_any186 = getelementptr inbounds %struct.gv, %struct.gv* %161, i32 0, i32 0
  %162 = load %struct.xpvgv*, %struct.xpvgv** %sv_any186, align 8
  %xgv_gp187 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %162, i32 0, i32 7
  %163 = load %struct.gp*, %struct.gp** %xgv_gp187, align 8
  %gp_refcnt = getelementptr inbounds %struct.gp, %struct.gp* %163, i32 0, i32 1
  %164 = load i32, i32* %gp_refcnt, align 4
  %cmp188 = icmp eq i32 %164, 1
  br i1 %cmp188, label %land.lhs.true.190, label %if.end.224

land.lhs.true.190:                                ; preds = %land.lhs.true.185
  %165 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any191 = getelementptr inbounds %struct.gv, %struct.gv* %165, i32 0, i32 0
  %166 = load %struct.xpvgv*, %struct.xpvgv** %sv_any191, align 8
  %xgv_gp192 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %166, i32 0, i32 7
  %167 = load %struct.gp*, %struct.gp** %xgv_gp192, align 8
  %gp_cv193 = getelementptr inbounds %struct.gp, %struct.gp* %167, i32 0, i32 7
  %168 = load %struct.cv*, %struct.cv** %gp_cv193, align 8
  store %struct.cv* %168, %struct.cv** %cv, align 8
  %tobool194 = icmp ne %struct.cv* %168, null
  br i1 %tobool194, label %land.lhs.true.195, label %if.end.224

land.lhs.true.195:                                ; preds = %land.lhs.true.190
  %169 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any196 = getelementptr inbounds %struct.cv, %struct.cv* %169, i32 0, i32 0
  %170 = load %struct.xpvcv*, %struct.xpvcv** %sv_any196, align 8
  %xcv_root = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %170, i32 0, i32 9
  %171 = load %struct.op*, %struct.op** %xcv_root, align 8
  %tobool197 = icmp ne %struct.op* %171, null
  br i1 %tobool197, label %if.then.201, label %lor.lhs.false.198

lor.lhs.false.198:                                ; preds = %land.lhs.true.195
  %172 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any199 = getelementptr inbounds %struct.cv, %struct.cv* %172, i32 0, i32 0
  %173 = load %struct.xpvcv*, %struct.xpvcv** %sv_any199, align 8
  %xcv_xsub = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %173, i32 0, i32 10
  %174 = load void (%struct.cv*)*, void (%struct.cv*)** %xcv_xsub, align 8
  %tobool200 = icmp ne void (%struct.cv*)* %174, null
  br i1 %tobool200, label %if.then.201, label %if.end.224

if.then.201:                                      ; preds = %lor.lhs.false.198, %land.lhs.true.195
  %175 = load %struct.gv*, %struct.gv** %topgv, align 8
  %sv_any202 = getelementptr inbounds %struct.gv, %struct.gv* %175, i32 0, i32 0
  %176 = load %struct.xpvgv*, %struct.xpvgv** %sv_any202, align 8
  %xgv_gp203 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %176, i32 0, i32 7
  %177 = load %struct.gp*, %struct.gp** %xgv_gp203, align 8
  %gp_cv204 = getelementptr inbounds %struct.gp, %struct.gp* %177, i32 0, i32 7
  %178 = load %struct.cv*, %struct.cv** %gp_cv204, align 8
  store %struct.cv* %178, %struct.cv** %cv, align 8
  %tobool205 = icmp ne %struct.cv* %178, null
  br i1 %tobool205, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.then.201
  %179 = load %struct.cv*, %struct.cv** %cv, align 8
  %180 = bitcast %struct.cv* %179 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %180)
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.206, %if.then.201
  %181 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any208 = getelementptr inbounds %struct.gv, %struct.gv* %181, i32 0, i32 0
  %182 = load %struct.xpvgv*, %struct.xpvgv** %sv_any208, align 8
  %xgv_gp209 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %182, i32 0, i32 7
  %183 = load %struct.gp*, %struct.gp** %xgv_gp209, align 8
  %gp_cv210 = getelementptr inbounds %struct.gp, %struct.gp* %183, i32 0, i32 7
  %184 = load %struct.cv*, %struct.cv** %gp_cv210, align 8
  %185 = bitcast %struct.cv* %184 to %struct.sv*
  store %struct.sv* %185, %struct.sv** @PL_Sv, align 8
  %186 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool211 = icmp ne %struct.sv* %186, null
  br i1 %tobool211, label %land.rhs.212, label %land.end.216

land.rhs.212:                                     ; preds = %if.end.207
  %187 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt213 = getelementptr inbounds %struct.sv, %struct.sv* %187, i32 0, i32 1
  %188 = load i32, i32* %sv_refcnt213, align 4
  %inc214 = add i32 %188, 1
  store i32 %inc214, i32* %sv_refcnt213, align 4
  %tobool215 = icmp ne i32 %inc214, 0
  br label %land.end.216

land.end.216:                                     ; preds = %land.rhs.212, %if.end.207
  %189 = phi i1 [ false, %if.end.207 ], [ %tobool215, %land.rhs.212 ]
  %land.ext217 = zext i1 %189 to i32
  %190 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %191 = bitcast %struct.sv* %190 to %struct.cv*
  %192 = load %struct.gv*, %struct.gv** %topgv, align 8
  %sv_any218 = getelementptr inbounds %struct.gv, %struct.gv* %192, i32 0, i32 0
  %193 = load %struct.xpvgv*, %struct.xpvgv** %sv_any218, align 8
  %xgv_gp219 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %193, i32 0, i32 7
  %194 = load %struct.gp*, %struct.gp** %xgv_gp219, align 8
  %gp_cv220 = getelementptr inbounds %struct.gp, %struct.gp* %194, i32 0, i32 7
  store %struct.cv* %191, %struct.cv** %gp_cv220, align 8
  %195 = load i32, i32* @PL_sub_generation, align 4
  %196 = load %struct.gv*, %struct.gv** %topgv, align 8
  %sv_any221 = getelementptr inbounds %struct.gv, %struct.gv* %196, i32 0, i32 0
  %197 = load %struct.xpvgv*, %struct.xpvgv** %sv_any221, align 8
  %xgv_gp222 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %197, i32 0, i32 7
  %198 = load %struct.gp*, %struct.gp** %xgv_gp222, align 8
  %gp_cvgen223 = getelementptr inbounds %struct.gp, %struct.gp* %198, i32 0, i32 8
  store i32 %195, i32* %gp_cvgen223, align 4
  br label %if.end.224

if.end.224:                                       ; preds = %land.end.216, %lor.lhs.false.198, %land.lhs.true.190, %land.lhs.true.185, %gotcha
  %199 = load %struct.gv*, %struct.gv** %gv, align 8
  store %struct.gv* %199, %struct.gv** %retval
  br label %return

if.else.225:                                      ; preds = %cond.end.179
  %200 = load %struct.gv*, %struct.gv** %topgv, align 8
  %tobool226 = icmp ne %struct.gv* %200, null
  br i1 %tobool226, label %land.lhs.true.227, label %if.end.237

land.lhs.true.227:                                ; preds = %if.else.225
  %201 = load %struct.gv*, %struct.gv** %topgv, align 8
  %sv_any228 = getelementptr inbounds %struct.gv, %struct.gv* %201, i32 0, i32 0
  %202 = load %struct.xpvgv*, %struct.xpvgv** %sv_any228, align 8
  %xgv_gp229 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %202, i32 0, i32 7
  %203 = load %struct.gp*, %struct.gp** %xgv_gp229, align 8
  %gp_refcnt230 = getelementptr inbounds %struct.gp, %struct.gp* %203, i32 0, i32 1
  %204 = load i32, i32* %gp_refcnt230, align 4
  %cmp231 = icmp eq i32 %204, 1
  br i1 %cmp231, label %if.then.233, label %if.end.237

if.then.233:                                      ; preds = %land.lhs.true.227
  %205 = load i32, i32* @PL_sub_generation, align 4
  %206 = load %struct.gv*, %struct.gv** %topgv, align 8
  %sv_any234 = getelementptr inbounds %struct.gv, %struct.gv* %206, i32 0, i32 0
  %207 = load %struct.xpvgv*, %struct.xpvgv** %sv_any234, align 8
  %xgv_gp235 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %207, i32 0, i32 7
  %208 = load %struct.gp*, %struct.gp** %xgv_gp235, align 8
  %gp_cvgen236 = getelementptr inbounds %struct.gp, %struct.gp* %208, i32 0, i32 8
  store i32 %205, i32* %gp_cvgen236, align 4
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.233, %land.lhs.true.227, %if.else.225
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %if.then.169
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %lor.lhs.false.166
  store %struct.gv* null, %struct.gv** %retval
  br label %return

return:                                           ; preds = %if.end.240, %if.end.224, %if.then.47, %if.then.33, %if.then.2
  %209 = load %struct.gv*, %struct.gv** %retval
  ret %struct.gv* %209
}

; Function Attrs: nounwind uwtable
define %struct.hv* @Perl_gv_stashpvn(i8* %name, i32 %namelen, i32 %create) #0 {
entry:
  %retval = alloca %struct.hv*, align 8
  %name.addr = alloca i8*, align 8
  %namelen.addr = alloca i32, align 4
  %create.addr = alloca i32, align 4
  %smallbuf = alloca [256 x i8], align 16
  %tmpbuf = alloca i8*, align 8
  %stash = alloca %struct.hv*, align 8
  %tmpgv = alloca %struct.gv*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %namelen, i32* %namelen.addr, align 4
  store i32 %create, i32* %create.addr, align 4
  %0 = load i32, i32* %namelen.addr, align 4
  %add = add i32 %0, 3
  %conv = zext i32 %add to i64
  %cmp = icmp ult i64 %conv, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %smallbuf, i32 0, i32 0
  store i8* %arraydecay, i8** %tmpbuf, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %namelen.addr, align 4
  %add2 = add i32 %1, 3
  %conv3 = zext i32 %add2 to i64
  %mul = mul i64 %conv3, 1
  %call = call i8* @Perl_safesysmalloc(i64 %mul)
  store i8* %call, i8** %tmpbuf, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i8*, i8** %tmpbuf, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load i32, i32* %namelen.addr, align 4
  %conv4 = zext i32 %4 to i64
  %mul5 = mul i64 %conv4, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 %mul5, i32 1, i1 false)
  %5 = load i32, i32* %namelen.addr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %namelen.addr, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load i8*, i8** %tmpbuf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  store i8 58, i8* %arrayidx, align 1
  %7 = load i32, i32* %namelen.addr, align 4
  %inc6 = add i32 %7, 1
  store i32 %inc6, i32* %namelen.addr, align 4
  %idxprom7 = zext i32 %7 to i64
  %8 = load i8*, i8** %tmpbuf, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 %idxprom7
  store i8 58, i8* %arrayidx8, align 1
  %9 = load i32, i32* %namelen.addr, align 4
  %idxprom9 = zext i32 %9 to i64
  %10 = load i8*, i8** %tmpbuf, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %10, i64 %idxprom9
  store i8 0, i8* %arrayidx10, align 1
  %11 = load i8*, i8** %tmpbuf, align 8
  %12 = load i32, i32* %create.addr, align 4
  %call11 = call %struct.gv* @Perl_gv_fetchpv(i8* %11, i32 %12, i32 11)
  store %struct.gv* %call11, %struct.gv** %tmpgv, align 8
  %13 = load i8*, i8** %tmpbuf, align 8
  %arraydecay12 = getelementptr inbounds [256 x i8], [256 x i8]* %smallbuf, i32 0, i32 0
  %cmp13 = icmp ne i8* %13, %arraydecay12
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  %14 = load i8*, i8** %tmpbuf, align 8
  call void @Perl_safesysfree(i8* %14)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end
  %15 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %tobool = icmp ne %struct.gv* %15, null
  br i1 %tobool, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.16
  store %struct.hv* null, %struct.hv** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.16
  %16 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %16, i32 0, i32 0
  %17 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %17, i32 0, i32 7
  %18 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_hv = getelementptr inbounds %struct.gp, %struct.gp* %18, i32 0, i32 5
  %19 = load %struct.hv*, %struct.hv** %gp_hv, align 8
  %tobool19 = icmp ne %struct.hv* %19, null
  br i1 %tobool19, label %if.end.25, label %if.then.20

if.then.20:                                       ; preds = %if.end.18
  %call21 = call %struct.hv* @Perl_newHV()
  %20 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any22 = getelementptr inbounds %struct.gv, %struct.gv* %20, i32 0, i32 0
  %21 = load %struct.xpvgv*, %struct.xpvgv** %sv_any22, align 8
  %xgv_gp23 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %21, i32 0, i32 7
  %22 = load %struct.gp*, %struct.gp** %xgv_gp23, align 8
  %gp_hv24 = getelementptr inbounds %struct.gp, %struct.gp* %22, i32 0, i32 5
  store %struct.hv* %call21, %struct.hv** %gp_hv24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.20, %if.end.18
  %23 = load %struct.gv*, %struct.gv** %tmpgv, align 8
  %sv_any26 = getelementptr inbounds %struct.gv, %struct.gv* %23, i32 0, i32 0
  %24 = load %struct.xpvgv*, %struct.xpvgv** %sv_any26, align 8
  %xgv_gp27 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %24, i32 0, i32 7
  %25 = load %struct.gp*, %struct.gp** %xgv_gp27, align 8
  %gp_hv28 = getelementptr inbounds %struct.gp, %struct.gp* %25, i32 0, i32 5
  %26 = load %struct.hv*, %struct.hv** %gp_hv28, align 8
  store %struct.hv* %26, %struct.hv** %stash, align 8
  %27 = load %struct.hv*, %struct.hv** %stash, align 8
  %sv_any29 = getelementptr inbounds %struct.hv, %struct.hv* %27, i32 0, i32 0
  %28 = load %struct.xpvhv*, %struct.xpvhv** %sv_any29, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %28, i32 0, i32 10
  %29 = load i8*, i8** %xhv_name, align 8
  %tobool30 = icmp ne i8* %29, null
  br i1 %tobool30, label %if.end.35, label %if.then.31

if.then.31:                                       ; preds = %if.end.25
  %30 = load i8*, i8** %name.addr, align 8
  %call32 = call i8* @Perl_savepv(i8* %30)
  %31 = load %struct.hv*, %struct.hv** %stash, align 8
  %sv_any33 = getelementptr inbounds %struct.hv, %struct.hv* %31, i32 0, i32 0
  %32 = load %struct.xpvhv*, %struct.xpvhv** %sv_any33, align 8
  %xhv_name34 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %32, i32 0, i32 10
  store i8* %call32, i8** %xhv_name34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %if.end.25
  %33 = load %struct.hv*, %struct.hv** %stash, align 8
  store %struct.hv* %33, %struct.hv** %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then.17
  %34 = load %struct.hv*, %struct.hv** %retval
  ret %struct.hv* %34
}

declare void @Perl_sv_free(%struct.sv*) #1

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.hv* @Perl_gv_stashsv(%struct.sv* %sv, i32 %create) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %create.addr = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i32 %create, i32* %create.addr, align 4
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
  store i8* %cond, i8** %ptr, align 8
  %11 = load i8*, i8** %ptr, align 8
  %12 = load i64, i64* %len, align 8
  %conv = trunc i64 %12 to i32
  %13 = load i32, i32* %create.addr, align 4
  %call2 = call %struct.hv* @Perl_gv_stashpvn(i8* %11, i32 %conv, i32 %13)
  ret %struct.hv* %call2
}

declare void @Perl_warner(i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.gv* @Perl_gv_fetchmeth_autoload(%struct.hv* %stash, i8* %name, i64 %len, i32 %level) #0 {
entry:
  %retval = alloca %struct.gv*, align 8
  %stash.addr = alloca %struct.hv*, align 8
  %name.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %level.addr = alloca i32, align 4
  %gv = alloca %struct.gv*, align 8
  %autoload = alloca [9 x i8], align 1
  %autolen = alloca i64, align 8
  %cv = alloca %struct.cv*, align 8
  %gvp = alloca %struct.gv**, align 8
  store %struct.hv* %stash, %struct.hv** %stash.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %3 = load i32, i32* %level.addr, align 4
  %call = call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %0, i8* %1, i64 %2, i32 %3)
  store %struct.gv* %call, %struct.gv** %gv, align 8
  %4 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool = icmp ne %struct.gv* %4, null
  br i1 %tobool, label %if.end.28, label %if.then

if.then:                                          ; preds = %entry
  %5 = bitcast [9 x i8]* %autoload to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @Perl_gv_fetchmeth_autoload.autoload, i32 0, i32 0), i64 9, i32 1, i1 false)
  store i64 8, i64* %autolen, align 8
  %6 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %tobool1 = icmp ne %struct.hv* %6, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store %struct.gv* null, %struct.gv** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load i64, i64* %len.addr, align 8
  %8 = load i64, i64* %autolen, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %9 = load i8*, i8** %name.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %autoload, i32 0, i32 0
  %10 = load i64, i64* %autolen, align 8
  %call3 = call i32 @strncmp(i8* %9, i8* %arraydecay, i64 %10)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  store %struct.gv* null, %struct.gv** %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %if.end
  %11 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %arraydecay7 = getelementptr inbounds [9 x i8], [9 x i8]* %autoload, i32 0, i32 0
  %12 = load i64, i64* %autolen, align 8
  %call8 = call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %11, i8* %arraydecay7, i64 %12, i32 0)
  store %struct.gv* %call8, %struct.gv** %gv, align 8
  %tobool9 = icmp ne %struct.gv* %call8, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.6
  store %struct.gv* null, %struct.gv** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %13 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %13, i32 0, i32 0
  %14 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %14, i32 0, i32 7
  %15 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %15, i32 0, i32 7
  %16 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  store %struct.cv* %16, %struct.cv** %cv, align 8
  %17 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any12 = getelementptr inbounds %struct.cv, %struct.cv* %17, i32 0, i32 0
  %18 = load %struct.xpvcv*, %struct.xpvcv** %sv_any12, align 8
  %xcv_root = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %18, i32 0, i32 9
  %19 = load %struct.op*, %struct.op** %xcv_root, align 8
  %tobool13 = icmp ne %struct.op* %19, null
  br i1 %tobool13, label %if.end.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %20 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any14 = getelementptr inbounds %struct.cv, %struct.cv* %20, i32 0, i32 0
  %21 = load %struct.xpvcv*, %struct.xpvcv** %sv_any14, align 8
  %xcv_xsub = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %21, i32 0, i32 10
  %22 = load void (%struct.cv*)*, void (%struct.cv*)** %xcv_xsub, align 8
  %tobool15 = icmp ne void (%struct.cv*)* %22, null
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %lor.lhs.false
  store %struct.gv* null, %struct.gv** %retval
  br label %return

if.end.17:                                        ; preds = %lor.lhs.false, %if.end.11
  %23 = load i32, i32* %level.addr, align 4
  %cmp18 = icmp slt i32 %23, 0
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.17
  %24 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %25 = load i8*, i8** %name.addr, align 8
  %26 = load i64, i64* %len.addr, align 8
  %call20 = call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %24, i8* %25, i64 %26, i32 0)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.17
  %27 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %28 = load i8*, i8** %name.addr, align 8
  %29 = load i64, i64* %len.addr, align 8
  %conv = trunc i64 %29 to i32
  %30 = load i32, i32* %level.addr, align 4
  %cmp22 = icmp sge i32 %30, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %27, i8* %28, i32 %conv, i32 %conv23)
  %31 = bitcast %struct.sv** %call24 to %struct.gv**
  store %struct.gv** %31, %struct.gv*** %gvp, align 8
  %32 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %tobool25 = icmp ne %struct.gv** %32, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.end.21
  store %struct.gv* null, %struct.gv** %retval
  br label %return

if.end.27:                                        ; preds = %if.end.21
  %33 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %34 = load %struct.gv*, %struct.gv** %33, align 8
  store %struct.gv* %34, %struct.gv** %retval
  br label %return

if.end.28:                                        ; preds = %entry
  %35 = load %struct.gv*, %struct.gv** %gv, align 8
  store %struct.gv* %35, %struct.gv** %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.end.27, %if.then.26, %if.then.16, %if.then.10, %if.then.5, %if.then.2
  %36 = load %struct.gv*, %struct.gv** %retval
  ret %struct.gv* %36
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct.gv* @Perl_gv_fetchmethod(%struct.hv* %stash, i8* %name) #0 {
entry:
  %stash.addr = alloca %struct.hv*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.hv* %stash, %struct.hv** %stash.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv* %0, i8* %1, i32 1)
  ret %struct.gv* %call
}

; Function Attrs: nounwind uwtable
define %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv* %stash, i8* %name, i32 %autoload) #0 {
entry:
  %stash.addr = alloca %struct.hv*, align 8
  %name.addr = alloca i8*, align 8
  %autoload.addr = alloca i32, align 4
  %nend = alloca i8*, align 8
  %nsplit = alloca i8*, align 8
  %gv = alloca %struct.gv*, align 8
  %ostash = alloca %struct.hv*, align 8
  %origname = alloca i8*, align 8
  %tmpstr = alloca %struct.sv*, align 8
  %cv = alloca %struct.cv*, align 8
  %stubgv = alloca %struct.gv*, align 8
  %autogv = alloca %struct.gv*, align 8
  store %struct.hv* %stash, %struct.hv** %stash.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %autoload, i32* %autoload.addr, align 4
  store i8* null, i8** %nsplit, align 8
  %0 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  store %struct.hv* %0, %struct.hv** %ostash, align 8
  %1 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %tobool = icmp ne %struct.hv* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %sv_flags = getelementptr inbounds %struct.hv, %struct.hv* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags, align 4
  %and = and i32 %3, 255
  %cmp = icmp ult i32 %and, 11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct.hv* null, %struct.hv** %stash.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i8*, i8** %name.addr, align 8
  store i8* %4, i8** %nend, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i8*, i8** %nend, align 8
  %6 = load i8, i8* %5, align 1
  %tobool1 = icmp ne i8 %6, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %nend, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp2 = icmp eq i32 %conv, 39
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %for.body
  %9 = load i8*, i8** %nend, align 8
  store i8* %9, i8** %nsplit, align 8
  br label %if.end.14

if.else:                                          ; preds = %for.body
  %10 = load i8*, i8** %nend, align 8
  %11 = load i8, i8* %10, align 1
  %conv5 = sext i8 %11 to i32
  %cmp6 = icmp eq i32 %conv5, 58
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.13

land.lhs.true.8:                                  ; preds = %if.else
  %12 = load i8*, i8** %nend, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %add.ptr, align 1
  %conv9 = sext i8 %13 to i32
  %cmp10 = icmp eq i32 %conv9, 58
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true.8
  %14 = load i8*, i8** %nend, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %nend, align 8
  store i8* %incdec.ptr, i8** %nsplit, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %land.lhs.true.8, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.4
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %15 = load i8*, i8** %nend, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr15, i8** %nend, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i8*, i8** %nsplit, align 8
  %tobool16 = icmp ne i8* %16, null
  br i1 %tobool16, label %if.then.17, label %if.end.70

if.then.17:                                       ; preds = %for.end
  %17 = load i8*, i8** %name.addr, align 8
  store i8* %17, i8** %origname, align 8
  %18 = load i8*, i8** %nsplit, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %add.ptr18, i8** %name.addr, align 8
  %19 = load i8*, i8** %nsplit, align 8
  %20 = load i8, i8* %19, align 1
  %conv19 = sext i8 %20 to i32
  %cmp20 = icmp eq i32 %conv19, 58
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.then.17
  %21 = load i8*, i8** %nsplit, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %incdec.ptr23, i8** %nsplit, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.then.17
  %22 = load i8*, i8** %nsplit, align 8
  %23 = load i8*, i8** %origname, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp25 = icmp eq i64 %sub.ptr.sub, 5
  br i1 %cmp25, label %land.lhs.true.27, label %if.else.38

land.lhs.true.27:                                 ; preds = %if.end.24
  %24 = load i8*, i8** %origname, align 8
  %call = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i64 5)
  %tobool28 = icmp ne i32 %call, 0
  br i1 %tobool28, label %if.else.38, label %if.then.29

if.then.29:                                       ; preds = %land.lhs.true.27
  %25 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_stash = getelementptr inbounds %struct.cop, %struct.cop* %25, i32 0, i32 9
  %26 = load %struct.hv*, %struct.hv** %cop_stash, align 8
  %tobool30 = icmp ne %struct.hv* %26, null
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.29
  %27 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_stash31 = getelementptr inbounds %struct.cop, %struct.cop* %27, i32 0, i32 9
  %28 = load %struct.hv*, %struct.hv** %cop_stash31, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %28, i32 0, i32 0
  %29 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %29, i32 0, i32 10
  %30 = load i8*, i8** %xhv_name, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %30, %cond.true ], [ null, %cond.false ]
  %call32 = call %struct.sv* (i8*, ...) @Perl_newSVpvf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* %cond)
  %call33 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call32)
  store %struct.sv* %call33, %struct.sv** %tmpstr, align 8
  %31 = load %struct.sv*, %struct.sv** %tmpstr, align 8
  %sv_any34 = getelementptr inbounds %struct.sv, %struct.sv* %31, i32 0, i32 0
  %32 = load i8*, i8** %sv_any34, align 8
  %33 = bitcast i8* %32 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %33, i32 0, i32 0
  %34 = load i8*, i8** %xpv_pv, align 8
  %35 = load %struct.sv*, %struct.sv** %tmpstr, align 8
  %sv_any35 = getelementptr inbounds %struct.sv, %struct.sv* %35, i32 0, i32 0
  %36 = load i8*, i8** %sv_any35, align 8
  %37 = bitcast i8* %36 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %37, i32 0, i32 1
  %38 = load i64, i64* %xpv_cur, align 8
  %conv36 = trunc i64 %38 to i32
  %call37 = call %struct.hv* @Perl_gv_stashpvn(i8* %34, i32 %conv36, i32 1)
  store %struct.hv* %call37, %struct.hv** %stash.addr, align 8
  br label %if.end.69

if.else.38:                                       ; preds = %land.lhs.true.27, %if.end.24
  %39 = load i8*, i8** %origname, align 8
  %40 = load i8*, i8** %nsplit, align 8
  %41 = load i8*, i8** %origname, align 8
  %sub.ptr.lhs.cast39 = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast40 = ptrtoint i8* %41 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  %conv42 = trunc i64 %sub.ptr.sub41 to i32
  %call43 = call %struct.hv* @Perl_gv_stashpvn(i8* %39, i32 %conv42, i32 0)
  store %struct.hv* %call43, %struct.hv** %stash.addr, align 8
  %42 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %tobool44 = icmp ne %struct.hv* %42, null
  br i1 %tobool44, label %if.end.68, label %land.lhs.true.45

land.lhs.true.45:                                 ; preds = %if.else.38
  %43 = load i8*, i8** %nsplit, align 8
  %44 = load i8*, i8** %origname, align 8
  %sub.ptr.lhs.cast46 = ptrtoint i8* %43 to i64
  %sub.ptr.rhs.cast47 = ptrtoint i8* %44 to i64
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47
  %cmp49 = icmp sge i64 %sub.ptr.sub48, 7
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.68

land.lhs.true.51:                                 ; preds = %land.lhs.true.45
  %45 = load i8*, i8** %nsplit, align 8
  %add.ptr52 = getelementptr inbounds i8, i8* %45, i64 -7
  %call53 = call i32 @strncmp(i8* %add.ptr52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i64 7)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.68, label %land.lhs.true.55

land.lhs.true.55:                                 ; preds = %land.lhs.true.51
  %46 = load i8*, i8** %origname, align 8
  %47 = load i8*, i8** %nsplit, align 8
  %48 = load i8*, i8** %origname, align 8
  %sub.ptr.lhs.cast56 = ptrtoint i8* %47 to i64
  %sub.ptr.rhs.cast57 = ptrtoint i8* %48 to i64
  %sub.ptr.sub58 = sub i64 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57
  %sub = sub nsw i64 %sub.ptr.sub58, 7
  %conv59 = trunc i64 %sub to i32
  %call60 = call %struct.hv* @Perl_gv_stashpvn(i8* %46, i32 %conv59, i32 0)
  %tobool61 = icmp ne %struct.hv* %call60, null
  br i1 %tobool61, label %if.then.62, label %if.end.68

if.then.62:                                       ; preds = %land.lhs.true.55
  %49 = load i8*, i8** %origname, align 8
  %50 = load i8*, i8** %nsplit, align 8
  %51 = load i8*, i8** %origname, align 8
  %sub.ptr.lhs.cast63 = ptrtoint i8* %50 to i64
  %sub.ptr.rhs.cast64 = ptrtoint i8* %51 to i64
  %sub.ptr.sub65 = sub i64 %sub.ptr.lhs.cast63, %sub.ptr.rhs.cast64
  %conv66 = trunc i64 %sub.ptr.sub65 to i32
  %call67 = call %struct.hv* @Perl_gv_stashpvn(i8* %49, i32 %conv66, i32 1)
  store %struct.hv* %call67, %struct.hv** %stash.addr, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.62, %land.lhs.true.55, %land.lhs.true.51, %land.lhs.true.45, %if.else.38
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %cond.end
  %52 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  store %struct.hv* %52, %struct.hv** %ostash, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %for.end
  %53 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %54 = load i8*, i8** %name.addr, align 8
  %55 = load i8*, i8** %nend, align 8
  %56 = load i8*, i8** %name.addr, align 8
  %sub.ptr.lhs.cast71 = ptrtoint i8* %55 to i64
  %sub.ptr.rhs.cast72 = ptrtoint i8* %56 to i64
  %sub.ptr.sub73 = sub i64 %sub.ptr.lhs.cast71, %sub.ptr.rhs.cast72
  %call74 = call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %53, i8* %54, i64 %sub.ptr.sub73, i32 0)
  store %struct.gv* %call74, %struct.gv** %gv, align 8
  %57 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool75 = icmp ne %struct.gv* %57, null
  br i1 %tobool75, label %if.else.91, label %if.then.76

if.then.76:                                       ; preds = %if.end.70
  %58 = load i8*, i8** %name.addr, align 8
  %call77 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0))
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %lor.lhs.false, label %if.then.81

lor.lhs.false:                                    ; preds = %if.then.76
  %59 = load i8*, i8** %name.addr, align 8
  %call79 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0))
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.else.82, label %if.then.81

if.then.81:                                       ; preds = %lor.lhs.false, %if.then.76
  store %struct.gv* bitcast (%struct.sv* @PL_sv_yes to %struct.gv*), %struct.gv** %gv, align 8
  br label %if.end.90

if.else.82:                                       ; preds = %lor.lhs.false
  %60 = load i32, i32* %autoload.addr, align 4
  %tobool83 = icmp ne i32 %60, 0
  br i1 %tobool83, label %if.then.84, label %if.end.89

if.then.84:                                       ; preds = %if.else.82
  %61 = load %struct.hv*, %struct.hv** %ostash, align 8
  %62 = load i8*, i8** %name.addr, align 8
  %63 = load i8*, i8** %nend, align 8
  %64 = load i8*, i8** %name.addr, align 8
  %sub.ptr.lhs.cast85 = ptrtoint i8* %63 to i64
  %sub.ptr.rhs.cast86 = ptrtoint i8* %64 to i64
  %sub.ptr.sub87 = sub i64 %sub.ptr.lhs.cast85, %sub.ptr.rhs.cast86
  %call88 = call %struct.gv* @Perl_gv_autoload4(%struct.hv* %61, i8* %62, i64 %sub.ptr.sub87, i32 1)
  store %struct.gv* %call88, %struct.gv** %gv, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.84, %if.else.82
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.81
  br label %if.end.125

if.else.91:                                       ; preds = %if.end.70
  %65 = load i32, i32* %autoload.addr, align 4
  %tobool92 = icmp ne i32 %65, 0
  br i1 %tobool92, label %if.then.93, label %if.end.124

if.then.93:                                       ; preds = %if.else.91
  %66 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any94 = getelementptr inbounds %struct.gv, %struct.gv* %66, i32 0, i32 0
  %67 = load %struct.xpvgv*, %struct.xpvgv** %sv_any94, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %67, i32 0, i32 7
  %68 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %68, i32 0, i32 7
  %69 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  store %struct.cv* %69, %struct.cv** %cv, align 8
  %70 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any95 = getelementptr inbounds %struct.cv, %struct.cv* %70, i32 0, i32 0
  %71 = load %struct.xpvcv*, %struct.xpvcv** %sv_any95, align 8
  %xcv_root = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %71, i32 0, i32 9
  %72 = load %struct.op*, %struct.op** %xcv_root, align 8
  %tobool96 = icmp ne %struct.op* %72, null
  br i1 %tobool96, label %if.end.123, label %land.lhs.true.97

land.lhs.true.97:                                 ; preds = %if.then.93
  %73 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any98 = getelementptr inbounds %struct.cv, %struct.cv* %73, i32 0, i32 0
  %74 = load %struct.xpvcv*, %struct.xpvcv** %sv_any98, align 8
  %xcv_xsub = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %74, i32 0, i32 10
  %75 = load void (%struct.cv*)*, void (%struct.cv*)** %xcv_xsub, align 8
  %tobool99 = icmp ne void (%struct.cv*)* %75, null
  br i1 %tobool99, label %if.end.123, label %if.then.100

if.then.100:                                      ; preds = %land.lhs.true.97
  %76 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any101 = getelementptr inbounds %struct.cv, %struct.cv* %76, i32 0, i32 0
  %77 = load %struct.xpvcv*, %struct.xpvcv** %sv_any101, align 8
  %xcv_flags = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %77, i32 0, i32 17
  %78 = load i16, i16* %xcv_flags, align 2
  %conv102 = zext i16 %78 to i32
  %and103 = and i32 %conv102, 4
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %if.then.105, label %if.else.106

if.then.105:                                      ; preds = %if.then.100
  %79 = load %struct.gv*, %struct.gv** %gv, align 8
  store %struct.gv* %79, %struct.gv** %stubgv, align 8
  br label %if.end.115

if.else.106:                                      ; preds = %if.then.100
  %80 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any107 = getelementptr inbounds %struct.cv, %struct.cv* %80, i32 0, i32 0
  %81 = load %struct.xpvcv*, %struct.xpvcv** %sv_any107, align 8
  %xcv_gv = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %81, i32 0, i32 12
  %82 = load %struct.gv*, %struct.gv** %xcv_gv, align 8
  store %struct.gv* %82, %struct.gv** %stubgv, align 8
  %83 = load %struct.gv*, %struct.gv** %stubgv, align 8
  %sv_any108 = getelementptr inbounds %struct.gv, %struct.gv* %83, i32 0, i32 0
  %84 = load %struct.xpvgv*, %struct.xpvgv** %sv_any108, align 8
  %xgv_gp109 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %84, i32 0, i32 7
  %85 = load %struct.gp*, %struct.gp** %xgv_gp109, align 8
  %gp_cv110 = getelementptr inbounds %struct.gp, %struct.gp* %85, i32 0, i32 7
  %86 = load %struct.cv*, %struct.cv** %gp_cv110, align 8
  %87 = load %struct.cv*, %struct.cv** %cv, align 8
  %cmp111 = icmp ne %struct.cv* %86, %87
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.else.106
  %88 = load %struct.gv*, %struct.gv** %gv, align 8
  store %struct.gv* %88, %struct.gv** %stubgv, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %if.else.106
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.then.105
  %89 = load %struct.gv*, %struct.gv** %stubgv, align 8
  %sv_any116 = getelementptr inbounds %struct.gv, %struct.gv* %89, i32 0, i32 0
  %90 = load %struct.xpvgv*, %struct.xpvgv** %sv_any116, align 8
  %xgv_stash = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %90, i32 0, i32 10
  %91 = load %struct.hv*, %struct.hv** %xgv_stash, align 8
  %92 = load %struct.gv*, %struct.gv** %stubgv, align 8
  %sv_any117 = getelementptr inbounds %struct.gv, %struct.gv* %92, i32 0, i32 0
  %93 = load %struct.xpvgv*, %struct.xpvgv** %sv_any117, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %93, i32 0, i32 8
  %94 = load i8*, i8** %xgv_name, align 8
  %95 = load %struct.gv*, %struct.gv** %stubgv, align 8
  %sv_any118 = getelementptr inbounds %struct.gv, %struct.gv* %95, i32 0, i32 0
  %96 = load %struct.xpvgv*, %struct.xpvgv** %sv_any118, align 8
  %xgv_namelen = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %96, i32 0, i32 9
  %97 = load i64, i64* %xgv_namelen, align 8
  %call119 = call %struct.gv* @Perl_gv_autoload4(%struct.hv* %91, i8* %94, i64 %97, i32 1)
  store %struct.gv* %call119, %struct.gv** %autogv, align 8
  %98 = load %struct.gv*, %struct.gv** %autogv, align 8
  %tobool120 = icmp ne %struct.gv* %98, null
  br i1 %tobool120, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.end.115
  %99 = load %struct.gv*, %struct.gv** %autogv, align 8
  store %struct.gv* %99, %struct.gv** %gv, align 8
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.121, %if.end.115
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %land.lhs.true.97, %if.then.93
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.else.91
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.end.90
  %100 = load %struct.gv*, %struct.gv** %gv, align 8
  ret %struct.gv* %100
}

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

declare %struct.sv* @Perl_newSVpvf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.gv* @Perl_gv_autoload4(%struct.hv* %stash, i8* %name, i64 %len, i32 %method) #0 {
entry:
  %retval = alloca %struct.gv*, align 8
  %stash.addr = alloca %struct.hv*, align 8
  %name.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %method.addr = alloca i32, align 4
  %autoload = alloca [9 x i8], align 1
  %autolen = alloca i64, align 8
  %gv = alloca %struct.gv*, align 8
  %cv = alloca %struct.cv*, align 8
  %varstash = alloca %struct.hv*, align 8
  %vargv = alloca %struct.gv*, align 8
  %varsv = alloca %struct.sv*, align 8
  %packname = alloca i8*, align 8
  store %struct.hv* %stash, %struct.hv** %stash.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %method, i32* %method.addr, align 4
  %0 = bitcast [9 x i8]* %autoload to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @Perl_gv_autoload4.autoload, i32 0, i32 0), i64 9, i32 1, i1 false)
  store i64 8, i64* %autolen, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** %packname, align 8
  %1 = load i64, i64* %len.addr, align 8
  %2 = load i64, i64* %autolen, align 8
  %cmp = icmp eq i64 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** %name.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %autoload, i32 0, i32 0
  %4 = load i64, i64* %autolen, align 8
  %call = call i32 @strncmp(i8* %3, i8* %arraydecay, i64 %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct.gv* null, %struct.gv** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %tobool1 = icmp ne %struct.hv* %5, null
  br i1 %tobool1, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %sv_flags = getelementptr inbounds %struct.hv, %struct.hv* %6, i32 0, i32 2
  %7 = load i32, i32* %sv_flags, align 4
  %and = and i32 %7, 255
  %cmp3 = icmp ult i32 %and, 11
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  %8 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %9 = bitcast %struct.hv* %8 to %struct.sv*
  %sv_flags5 = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 2
  %10 = load i32, i32* %sv_flags5, align 4
  %and6 = and i32 %10, 262144
  %cmp7 = icmp eq i32 %and6, 262144
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.4
  %11 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %12 = bitcast %struct.hv* %11 to %struct.sv*
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 0
  %13 = load i8*, i8** %sv_any, align 8
  %14 = bitcast i8* %13 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %14, i32 0, i32 0
  %15 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.4
  %16 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %17 = bitcast %struct.hv* %16 to %struct.sv*
  %call8 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %17)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %15, %cond.true ], [ %call8, %cond.false ]
  store i8* %cond, i8** %packname, align 8
  store %struct.hv* null, %struct.hv** %stash.addr, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.then.2
  %18 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %sv_any9 = getelementptr inbounds %struct.hv, %struct.hv* %18, i32 0, i32 0
  %19 = load %struct.xpvhv*, %struct.xpvhv** %sv_any9, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %19, i32 0, i32 10
  %20 = load i8*, i8** %xhv_name, align 8
  store i8* %20, i8** %packname, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %cond.end
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %21 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %arraydecay12 = getelementptr inbounds [9 x i8], [9 x i8]* %autoload, i32 0, i32 0
  %22 = load i64, i64* %autolen, align 8
  %call13 = call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %21, i8* %arraydecay12, i64 %22, i32 0)
  store %struct.gv* %call13, %struct.gv** %gv, align 8
  %tobool14 = icmp ne %struct.gv* %call13, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.11
  store %struct.gv* null, %struct.gv** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.11
  %23 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any17 = getelementptr inbounds %struct.gv, %struct.gv* %23, i32 0, i32 0
  %24 = load %struct.xpvgv*, %struct.xpvgv** %sv_any17, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %24, i32 0, i32 7
  %25 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %25, i32 0, i32 7
  %26 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  store %struct.cv* %26, %struct.cv** %cv, align 8
  %27 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any18 = getelementptr inbounds %struct.cv, %struct.cv* %27, i32 0, i32 0
  %28 = load %struct.xpvcv*, %struct.xpvcv** %sv_any18, align 8
  %xcv_root = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %28, i32 0, i32 9
  %29 = load %struct.op*, %struct.op** %xcv_root, align 8
  %tobool19 = icmp ne %struct.op* %29, null
  br i1 %tobool19, label %if.end.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %30 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any20 = getelementptr inbounds %struct.cv, %struct.cv* %30, i32 0, i32 0
  %31 = load %struct.xpvcv*, %struct.xpvcv** %sv_any20, align 8
  %xcv_xsub = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %31, i32 0, i32 10
  %32 = load void (%struct.cv*)*, void (%struct.cv*)** %xcv_xsub, align 8
  %tobool21 = icmp ne void (%struct.cv*)* %32, null
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %lor.lhs.false
  store %struct.gv* null, %struct.gv** %retval
  br label %return

if.end.23:                                        ; preds = %lor.lhs.false, %if.end.16
  %33 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %33, i32 0, i32 14
  %34 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp24 = icmp ne %struct.sv* %34, null
  br i1 %cmp24, label %land.lhs.true.25, label %lor.lhs.false.45

land.lhs.true.25:                                 ; preds = %if.end.23
  %35 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings26 = getelementptr inbounds %struct.cop, %struct.cop* %35, i32 0, i32 14
  %36 = load %struct.sv*, %struct.sv** %cop_warnings26, align 8
  %cmp27 = icmp ne %struct.sv* %36, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp27, label %land.lhs.true.28, label %lor.lhs.false.45

land.lhs.true.28:                                 ; preds = %land.lhs.true.25
  %37 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings29 = getelementptr inbounds %struct.cop, %struct.cop* %37, i32 0, i32 14
  %38 = load %struct.sv*, %struct.sv** %cop_warnings29, align 8
  %cmp30 = icmp eq %struct.sv* %38, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp30, label %land.lhs.true.53, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %land.lhs.true.28
  %39 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings32 = getelementptr inbounds %struct.cop, %struct.cop* %39, i32 0, i32 14
  %40 = load %struct.sv*, %struct.sv** %cop_warnings32, align 8
  %sv_any33 = getelementptr inbounds %struct.sv, %struct.sv* %40, i32 0, i32 0
  %41 = load i8*, i8** %sv_any33, align 8
  %42 = bitcast i8* %41 to %struct.xpv*
  %xpv_pv34 = getelementptr inbounds %struct.xpv, %struct.xpv* %42, i32 0, i32 0
  %43 = load i8*, i8** %xpv_pv34, align 8
  %arrayidx = getelementptr inbounds i8, i8* %43, i64 0
  %44 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %44 to i32
  %and35 = and i32 %conv, 16
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %land.lhs.true.53, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.31
  %45 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings38 = getelementptr inbounds %struct.cop, %struct.cop* %45, i32 0, i32 14
  %46 = load %struct.sv*, %struct.sv** %cop_warnings38, align 8
  %sv_any39 = getelementptr inbounds %struct.sv, %struct.sv* %46, i32 0, i32 0
  %47 = load i8*, i8** %sv_any39, align 8
  %48 = bitcast i8* %47 to %struct.xpv*
  %xpv_pv40 = getelementptr inbounds %struct.xpv, %struct.xpv* %48, i32 0, i32 0
  %49 = load i8*, i8** %xpv_pv40, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %49, i64 7
  %50 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %50 to i32
  %and43 = and i32 %conv42, 1
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %land.lhs.true.53, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.37, %land.lhs.true.25, %if.end.23
  %51 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings46 = getelementptr inbounds %struct.cop, %struct.cop* %51, i32 0, i32 14
  %52 = load %struct.sv*, %struct.sv** %cop_warnings46, align 8
  %cmp47 = icmp eq %struct.sv* %52, null
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.65

land.lhs.true.49:                                 ; preds = %lor.lhs.false.45
  %53 = load i8, i8* @PL_dowarn, align 1
  %conv50 = zext i8 %53 to i32
  %and51 = and i32 %conv50, 1
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %land.lhs.true.53, label %if.end.65

land.lhs.true.53:                                 ; preds = %land.lhs.true.49, %lor.lhs.false.37, %lor.lhs.false.31, %land.lhs.true.28
  %54 = load i32, i32* %method.addr, align 4
  %tobool54 = icmp ne i32 %54, 0
  br i1 %tobool54, label %if.end.65, label %land.lhs.true.55

land.lhs.true.55:                                 ; preds = %land.lhs.true.53
  %55 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any56 = getelementptr inbounds %struct.gv, %struct.gv* %55, i32 0, i32 0
  %56 = load %struct.xpvgv*, %struct.xpvgv** %sv_any56, align 8
  %xgv_gp57 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %56, i32 0, i32 7
  %57 = load %struct.gp*, %struct.gp** %xgv_gp57, align 8
  %gp_cvgen = getelementptr inbounds %struct.gp, %struct.gp* %57, i32 0, i32 8
  %58 = load i32, i32* %gp_cvgen, align 4
  %tobool58 = icmp ne i32 %58, 0
  br i1 %tobool58, label %if.then.63, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %land.lhs.true.55
  %59 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any60 = getelementptr inbounds %struct.gv, %struct.gv* %59, i32 0, i32 0
  %60 = load %struct.xpvgv*, %struct.xpvgv** %sv_any60, align 8
  %xgv_stash = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %60, i32 0, i32 10
  %61 = load %struct.hv*, %struct.hv** %xgv_stash, align 8
  %62 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %cmp61 = icmp ne %struct.hv* %61, %62
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %lor.lhs.false.59, %land.lhs.true.55
  %63 = load i8*, i8** %packname, align 8
  %64 = load i64, i64* %len.addr, align 8
  %conv64 = trunc i64 %64 to i32
  %65 = load i8*, i8** %name.addr, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 7170, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.15, i32 0, i32 0), i8* %63, i32 %conv64, i8* %65)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %lor.lhs.false.59, %land.lhs.true.53, %land.lhs.true.49, %lor.lhs.false.45
  %66 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any66 = getelementptr inbounds %struct.cv, %struct.cv* %66, i32 0, i32 0
  %67 = load %struct.xpvcv*, %struct.xpvcv** %sv_any66, align 8
  %xcv_xsub67 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %67, i32 0, i32 10
  %68 = load void (%struct.cv*)*, void (%struct.cv*)** %xcv_xsub67, align 8
  %tobool68 = icmp ne void (%struct.cv*)* %68, null
  br i1 %tobool68, label %if.then.69, label %if.end.74

if.then.69:                                       ; preds = %if.end.65
  %69 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %70 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any70 = getelementptr inbounds %struct.cv, %struct.cv* %70, i32 0, i32 0
  %71 = load %struct.xpvcv*, %struct.xpvcv** %sv_any70, align 8
  %xcv_stash = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %71, i32 0, i32 7
  store %struct.hv* %69, %struct.hv** %xcv_stash, align 8
  %72 = load i8*, i8** %name.addr, align 8
  %73 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any71 = getelementptr inbounds %struct.cv, %struct.cv* %73, i32 0, i32 0
  %74 = load %struct.xpvcv*, %struct.xpvcv** %sv_any71, align 8
  %75 = bitcast %struct.xpvcv* %74 to %struct.xpv*
  %xpv_pv72 = getelementptr inbounds %struct.xpv, %struct.xpv* %75, i32 0, i32 0
  store i8* %72, i8** %xpv_pv72, align 8
  %76 = load i64, i64* %len.addr, align 8
  %77 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any73 = getelementptr inbounds %struct.cv, %struct.cv* %77, i32 0, i32 0
  %78 = load %struct.xpvcv*, %struct.xpvcv** %sv_any73, align 8
  %79 = bitcast %struct.xpvcv* %78 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %79, i32 0, i32 1
  store i64 %76, i64* %xpv_cur, align 8
  %80 = load %struct.gv*, %struct.gv** %gv, align 8
  store %struct.gv* %80, %struct.gv** %retval
  br label %return

if.end.74:                                        ; preds = %if.end.65
  %81 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any75 = getelementptr inbounds %struct.cv, %struct.cv* %81, i32 0, i32 0
  %82 = load %struct.xpvcv*, %struct.xpvcv** %sv_any75, align 8
  %xcv_gv = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %82, i32 0, i32 12
  %83 = load %struct.gv*, %struct.gv** %xcv_gv, align 8
  %sv_any76 = getelementptr inbounds %struct.gv, %struct.gv* %83, i32 0, i32 0
  %84 = load %struct.xpvgv*, %struct.xpvgv** %sv_any76, align 8
  %xgv_stash77 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %84, i32 0, i32 10
  %85 = load %struct.hv*, %struct.hv** %xgv_stash77, align 8
  store %struct.hv* %85, %struct.hv** %varstash, align 8
  %86 = load %struct.hv*, %struct.hv** %varstash, align 8
  %arraydecay78 = getelementptr inbounds [9 x i8], [9 x i8]* %autoload, i32 0, i32 0
  %87 = load i64, i64* %autolen, align 8
  %conv79 = trunc i64 %87 to i32
  %call80 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %86, i8* %arraydecay78, i32 %conv79, i32 1)
  %88 = bitcast %struct.sv** %call80 to %struct.gv**
  %89 = load %struct.gv*, %struct.gv** %88, align 8
  store %struct.gv* %89, %struct.gv** %vargv, align 8
  call void @Perl_push_scope()
  %90 = load %struct.gv*, %struct.gv** %vargv, align 8
  %sv_flags81 = getelementptr inbounds %struct.gv, %struct.gv* %90, i32 0, i32 2
  %91 = load i32, i32* %sv_flags81, align 4
  %and82 = and i32 %91, 255
  %cmp83 = icmp eq i32 %and82, 13
  br i1 %cmp83, label %if.end.87, label %if.then.85

if.then.85:                                       ; preds = %if.end.74
  %92 = load %struct.gv*, %struct.gv** %vargv, align 8
  %93 = load %struct.hv*, %struct.hv** %varstash, align 8
  %arraydecay86 = getelementptr inbounds [9 x i8], [9 x i8]* %autoload, i32 0, i32 0
  %94 = load i64, i64* %autolen, align 8
  call void @Perl_gv_init(%struct.gv* %92, %struct.hv* %93, i8* %arraydecay86, i64 %94, i32 0)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %if.end.74
  call void @Perl_pop_scope()
  %95 = load %struct.gv*, %struct.gv** %vargv, align 8
  %sv_any88 = getelementptr inbounds %struct.gv, %struct.gv* %95, i32 0, i32 0
  %96 = load %struct.xpvgv*, %struct.xpvgv** %sv_any88, align 8
  %xgv_gp89 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %96, i32 0, i32 7
  %97 = load %struct.gp*, %struct.gp** %xgv_gp89, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %97, i32 0, i32 0
  %98 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  store %struct.sv* %98, %struct.sv** %varsv, align 8
  %99 = load %struct.sv*, %struct.sv** %varsv, align 8
  %100 = load i8*, i8** %packname, align 8
  call void @Perl_sv_setpv(%struct.sv* %99, i8* %100)
  %101 = load %struct.sv*, %struct.sv** %varsv, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i64 2, i32 2)
  %102 = load %struct.sv*, %struct.sv** %varsv, align 8
  %103 = load i8*, i8** %name.addr, align 8
  %104 = load i64, i64* %len.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %102, i8* %103, i64 %104, i32 2)
  %105 = load i8, i8* @PL_tainting, align 1
  %tobool90 = icmp ne i8 %105, 0
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.87
  %106 = load %struct.sv*, %struct.sv** %varsv, align 8
  call void @Perl_sv_untaint(%struct.sv* %106)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.end.87
  %107 = load %struct.gv*, %struct.gv** %gv, align 8
  store %struct.gv* %107, %struct.gv** %retval
  br label %return

return:                                           ; preds = %if.end.92, %if.then.69, %if.then.22, %if.then.15, %if.then
  %108 = load %struct.gv*, %struct.gv** %retval
  ret %struct.gv* %108
}

declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #1

declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #1

declare void @Perl_sv_untaint(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define %struct.hv* @Perl_gv_stashpv(i8* %name, i32 %create) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %create.addr = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %create, i32* %create.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %1)
  %conv = trunc i64 %call to i32
  %2 = load i32, i32* %create.addr, align 4
  %call1 = call %struct.hv* @Perl_gv_stashpvn(i8* %0, i32 %conv, i32 %2)
  ret %struct.hv* %call1
}

; Function Attrs: nounwind uwtable
define %struct.gv* @Perl_gv_fetchpv(i8* %nambeg, i32 %add, i32 %sv_type) #0 {
entry:
  %retval = alloca %struct.gv*, align 8
  %nambeg.addr = alloca i8*, align 8
  %add.addr = alloca i32, align 4
  %sv_type.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  %gv = alloca %struct.gv*, align 8
  %gvp = alloca %struct.gv**, align 8
  %len = alloca i32, align 4
  %namend = alloca i8*, align 8
  %stash = alloca %struct.hv*, align 8
  %smallbuf = alloca [256 x i8], align 16
  %tmpbuf = alloca i8*, align 8
  %global = alloca i8, align 1
  %err = alloca %struct.sv*, align 8
  %name2 = alloca i8*, align 8
  %av = alloca %struct.av*, align 8
  %pname = alloca i8*, align 8
  %hv = alloca %struct.hv*, align 8
  %hv598 = alloca %struct.hv*, align 8
  %i = alloca i32, align 4
  %init = alloca %struct.sv**, align 8
  %end = alloca i8*, align 8
  %av736 = alloca %struct.av*, align 8
  %av811 = alloca %struct.av*, align 8
  %sv = alloca %struct.sv*, align 8
  %sv871 = alloca %struct.sv*, align 8
  store i8* %nambeg, i8** %nambeg.addr, align 8
  store i32 %add, i32* %add.addr, align 4
  store i32 %sv_type, i32* %sv_type.addr, align 4
  %0 = load i8*, i8** %nambeg.addr, align 8
  store i8* %0, i8** %name, align 8
  store %struct.gv* null, %struct.gv** %gv, align 8
  store %struct.hv* null, %struct.hv** %stash, align 8
  %1 = load i8*, i8** %name, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** %name, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp sge i32 %conv2, 65
  br i1 %cmp3, label %land.lhs.true.5, label %lor.lhs.false

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %5 = load i8*, i8** %name, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %6 to i32
  %cmp8 = icmp sle i32 %conv7, 90
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.5, %land.lhs.true
  %7 = load i8*, i8** %name, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %8 to i32
  %cmp12 = icmp sge i32 %conv11, 97
  br i1 %cmp12, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %lor.lhs.false
  %9 = load i8*, i8** %name, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %10 to i32
  %cmp17 = icmp sle i32 %conv16, 122
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.14, %land.lhs.true.5
  %11 = load i8*, i8** %name, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.14, %lor.lhs.false, %entry
  %12 = load i8*, i8** %name, align 8
  store i8* %12, i8** %namend, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i8*, i8** %namend, align 8
  %14 = load i8, i8* %13, align 1
  %tobool = icmp ne i8 %14, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i8*, i8** %namend, align 8
  %16 = load i8, i8* %15, align 1
  %conv19 = sext i8 %16 to i32
  %cmp20 = icmp eq i32 %conv19, 58
  br i1 %cmp20, label %land.lhs.true.22, label %lor.lhs.false.27

land.lhs.true.22:                                 ; preds = %for.body
  %17 = load i8*, i8** %namend, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %18 to i32
  %cmp25 = icmp eq i32 %conv24, 58
  br i1 %cmp25, label %if.then.35, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %land.lhs.true.22, %for.body
  %19 = load i8*, i8** %namend, align 8
  %20 = load i8, i8* %19, align 1
  %conv28 = sext i8 %20 to i32
  %cmp29 = icmp eq i32 %conv28, 39
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.128

land.lhs.true.31:                                 ; preds = %lor.lhs.false.27
  %21 = load i8*, i8** %namend, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %22 to i32
  %tobool34 = icmp ne i32 %conv33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.128

if.then.35:                                       ; preds = %land.lhs.true.31, %land.lhs.true.22
  %23 = load %struct.hv*, %struct.hv** %stash, align 8
  %tobool36 = icmp ne %struct.hv* %23, null
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.then.35
  %24 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  store %struct.hv* %24, %struct.hv** %stash, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.then.35
  %25 = load %struct.hv*, %struct.hv** %stash, align 8
  %tobool39 = icmp ne %struct.hv* %25, null
  br i1 %tobool39, label %lor.lhs.false.40, label %if.then.42

lor.lhs.false.40:                                 ; preds = %if.end.38
  %26 = load %struct.hv*, %struct.hv** %stash, align 8
  %sv_refcnt = getelementptr inbounds %struct.hv, %struct.hv* %26, i32 0, i32 1
  %27 = load i32, i32* %sv_refcnt, align 4
  %tobool41 = icmp ne i32 %27, 0
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %lor.lhs.false.40, %if.end.38
  store %struct.gv* null, %struct.gv** %retval
  br label %return

if.end.43:                                        ; preds = %lor.lhs.false.40
  %28 = load i8*, i8** %namend, align 8
  %29 = load i8*, i8** %name, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv44 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv44, i32* %len, align 4
  %30 = load i32, i32* %len, align 4
  %cmp45 = icmp sgt i32 %30, 0
  br i1 %cmp45, label %if.then.47, label %if.end.111

if.then.47:                                       ; preds = %if.end.43
  %31 = load i32, i32* %len, align 4
  %add48 = add nsw i32 %31, 3
  %conv49 = sext i32 %add48 to i64
  %cmp50 = icmp ult i64 %conv49, 256
  br i1 %cmp50, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %if.then.47
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %smallbuf, i32 0, i32 0
  store i8* %arraydecay, i8** %tmpbuf, align 8
  br label %if.end.55

if.else:                                          ; preds = %if.then.47
  %32 = load i32, i32* %len, align 4
  %add53 = add nsw i32 %32, 3
  %conv54 = sext i32 %add53 to i64
  %mul = mul i64 %conv54, 1
  %call = call i8* @Perl_safesysmalloc(i64 %mul)
  store i8* %call, i8** %tmpbuf, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.then.52
  %33 = load i8*, i8** %tmpbuf, align 8
  %34 = load i8*, i8** %name, align 8
  %35 = load i32, i32* %len, align 4
  %conv56 = sext i32 %35 to i64
  %mul57 = mul i64 %conv56, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 %mul57, i32 1, i1 false)
  %36 = load i32, i32* %len, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %len, align 4
  %idxprom = sext i32 %36 to i64
  %37 = load i8*, i8** %tmpbuf, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %37, i64 %idxprom
  store i8 58, i8* %arrayidx58, align 1
  %38 = load i32, i32* %len, align 4
  %inc59 = add nsw i32 %38, 1
  store i32 %inc59, i32* %len, align 4
  %idxprom60 = sext i32 %38 to i64
  %39 = load i8*, i8** %tmpbuf, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %39, i64 %idxprom60
  store i8 58, i8* %arrayidx61, align 1
  %40 = load i32, i32* %len, align 4
  %idxprom62 = sext i32 %40 to i64
  %41 = load i8*, i8** %tmpbuf, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %41, i64 %idxprom62
  store i8 0, i8* %arrayidx63, align 1
  %42 = load %struct.hv*, %struct.hv** %stash, align 8
  %43 = load i8*, i8** %tmpbuf, align 8
  %44 = load i32, i32* %len, align 4
  %45 = load i32, i32* %add.addr, align 4
  %call64 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %42, i8* %43, i32 %44, i32 %45)
  %46 = bitcast %struct.sv** %call64 to %struct.gv**
  store %struct.gv** %46, %struct.gv*** %gvp, align 8
  %47 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %tobool65 = icmp ne %struct.gv** %47, null
  br i1 %tobool65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.55
  %48 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %49 = load %struct.gv*, %struct.gv** %48, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.55
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gv* [ %49, %cond.true ], [ null, %cond.false ]
  store %struct.gv* %cond, %struct.gv** %gv, align 8
  %50 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool66 = icmp ne %struct.gv* %50, null
  br i1 %tobool66, label %land.lhs.true.67, label %if.end.80

land.lhs.true.67:                                 ; preds = %cond.end
  %51 = load %struct.gv*, %struct.gv** %gv, align 8
  %cmp68 = icmp ne %struct.gv* %51, bitcast (%struct.sv* @PL_sv_undef to %struct.gv*)
  br i1 %cmp68, label %if.then.70, label %if.end.80

if.then.70:                                       ; preds = %land.lhs.true.67
  %52 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %52, i32 0, i32 2
  %53 = load i32, i32* %sv_flags, align 4
  %and = and i32 %53, 255
  %cmp71 = icmp ne i32 %and, 13
  br i1 %cmp71, label %if.then.73, label %if.else.76

if.then.73:                                       ; preds = %if.then.70
  %54 = load %struct.gv*, %struct.gv** %gv, align 8
  %55 = load %struct.hv*, %struct.hv** %stash, align 8
  %56 = load i8*, i8** %tmpbuf, align 8
  %57 = load i32, i32* %len, align 4
  %conv74 = sext i32 %57 to i64
  %58 = load i32, i32* %add.addr, align 4
  %and75 = and i32 %58, 2
  call void @Perl_gv_init(%struct.gv* %54, %struct.hv* %55, i8* %56, i64 %conv74, i32 %and75)
  br label %if.end.79

if.else.76:                                       ; preds = %if.then.70
  %59 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %59, i32 0, i32 0
  %60 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_flags = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %60, i32 0, i32 11
  %61 = load i8, i8* %xgv_flags, align 1
  %conv77 = zext i8 %61 to i32
  %or = or i32 %conv77, 2
  %conv78 = trunc i32 %or to i8
  store i8 %conv78, i8* %xgv_flags, align 1
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.then.73
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %land.lhs.true.67, %cond.end
  %62 = load i8*, i8** %tmpbuf, align 8
  %arraydecay81 = getelementptr inbounds [256 x i8], [256 x i8]* %smallbuf, i32 0, i32 0
  %cmp82 = icmp ne i8* %62, %arraydecay81
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.80
  %63 = load i8*, i8** %tmpbuf, align 8
  call void @Perl_safesysfree(i8* %63)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.end.80
  %64 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool86 = icmp ne %struct.gv* %64, null
  br i1 %tobool86, label %lor.lhs.false.87, label %if.then.90

lor.lhs.false.87:                                 ; preds = %if.end.85
  %65 = load %struct.gv*, %struct.gv** %gv, align 8
  %cmp88 = icmp eq %struct.gv* %65, bitcast (%struct.sv* @PL_sv_undef to %struct.gv*)
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %lor.lhs.false.87, %if.end.85
  store %struct.gv* null, %struct.gv** %retval
  br label %return

if.end.91:                                        ; preds = %lor.lhs.false.87
  %66 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any92 = getelementptr inbounds %struct.gv, %struct.gv* %66, i32 0, i32 0
  %67 = load %struct.xpvgv*, %struct.xpvgv** %sv_any92, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %67, i32 0, i32 7
  %68 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_hv = getelementptr inbounds %struct.gp, %struct.gp* %68, i32 0, i32 5
  %69 = load %struct.hv*, %struct.hv** %gp_hv, align 8
  store %struct.hv* %69, %struct.hv** %stash, align 8
  %tobool93 = icmp ne %struct.hv* %69, null
  br i1 %tobool93, label %if.end.99, label %if.then.94

if.then.94:                                       ; preds = %if.end.91
  %call95 = call %struct.hv* @Perl_newHV()
  %70 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any96 = getelementptr inbounds %struct.gv, %struct.gv* %70, i32 0, i32 0
  %71 = load %struct.xpvgv*, %struct.xpvgv** %sv_any96, align 8
  %xgv_gp97 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %71, i32 0, i32 7
  %72 = load %struct.gp*, %struct.gp** %xgv_gp97, align 8
  %gp_hv98 = getelementptr inbounds %struct.gp, %struct.gp* %72, i32 0, i32 5
  store %struct.hv* %call95, %struct.hv** %gp_hv98, align 8
  store %struct.hv* %call95, %struct.hv** %stash, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.94, %if.end.91
  %73 = load %struct.hv*, %struct.hv** %stash, align 8
  %sv_any100 = getelementptr inbounds %struct.hv, %struct.hv* %73, i32 0, i32 0
  %74 = load %struct.xpvhv*, %struct.xpvhv** %sv_any100, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %74, i32 0, i32 10
  %75 = load i8*, i8** %xhv_name, align 8
  %tobool101 = icmp ne i8* %75, null
  br i1 %tobool101, label %if.end.110, label %if.then.102

if.then.102:                                      ; preds = %if.end.99
  %76 = load i8*, i8** %nambeg.addr, align 8
  %77 = load i8*, i8** %namend, align 8
  %78 = load i8*, i8** %nambeg.addr, align 8
  %sub.ptr.lhs.cast103 = ptrtoint i8* %77 to i64
  %sub.ptr.rhs.cast104 = ptrtoint i8* %78 to i64
  %sub.ptr.sub105 = sub i64 %sub.ptr.lhs.cast103, %sub.ptr.rhs.cast104
  %conv106 = trunc i64 %sub.ptr.sub105 to i32
  %call107 = call i8* @Perl_savepvn(i8* %76, i32 %conv106)
  %79 = load %struct.hv*, %struct.hv** %stash, align 8
  %sv_any108 = getelementptr inbounds %struct.hv, %struct.hv* %79, i32 0, i32 0
  %80 = load %struct.xpvhv*, %struct.xpvhv** %sv_any108, align 8
  %xhv_name109 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %80, i32 0, i32 10
  store i8* %call107, i8** %xhv_name109, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.102, %if.end.99
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.end.43
  %81 = load i8*, i8** %namend, align 8
  %82 = load i8, i8* %81, align 1
  %conv112 = sext i8 %82 to i32
  %cmp113 = icmp eq i32 %conv112, 58
  br i1 %cmp113, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %if.end.111
  %83 = load i8*, i8** %namend, align 8
  %incdec.ptr116 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr116, i8** %namend, align 8
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %if.end.111
  %84 = load i8*, i8** %namend, align 8
  %incdec.ptr118 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr118, i8** %namend, align 8
  %85 = load i8*, i8** %namend, align 8
  store i8* %85, i8** %name, align 8
  %86 = load i8*, i8** %name, align 8
  %87 = load i8, i8* %86, align 1
  %tobool119 = icmp ne i8 %87, 0
  br i1 %tobool119, label %if.end.127, label %if.then.120

if.then.120:                                      ; preds = %if.end.117
  %88 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool121 = icmp ne %struct.gv* %88, null
  br i1 %tobool121, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %if.then.120
  %89 = load %struct.gv*, %struct.gv** %gv, align 8
  br label %cond.end.125

cond.false.123:                                   ; preds = %if.then.120
  %90 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  %call124 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 6, i32 1)
  %91 = load %struct.sv*, %struct.sv** %call124, align 8
  %92 = bitcast %struct.sv* %91 to %struct.gv*
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.123, %cond.true.122
  %cond126 = phi %struct.gv* [ %89, %cond.true.122 ], [ %92, %cond.false.123 ]
  store %struct.gv* %cond126, %struct.gv** %retval
  br label %return

if.end.127:                                       ; preds = %if.end.117
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %land.lhs.true.31, %lor.lhs.false.27
  br label %for.inc

for.inc:                                          ; preds = %if.end.128
  %93 = load i8*, i8** %namend, align 8
  %incdec.ptr129 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr129, i8** %namend, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %94 = load i8*, i8** %namend, align 8
  %95 = load i8*, i8** %name, align 8
  %sub.ptr.lhs.cast130 = ptrtoint i8* %94 to i64
  %sub.ptr.rhs.cast131 = ptrtoint i8* %95 to i64
  %sub.ptr.sub132 = sub i64 %sub.ptr.lhs.cast130, %sub.ptr.rhs.cast131
  %conv133 = trunc i64 %sub.ptr.sub132 to i32
  store i32 %conv133, i32* %len, align 4
  %96 = load %struct.hv*, %struct.hv** %stash, align 8
  %tobool134 = icmp ne %struct.hv* %96, null
  br i1 %tobool134, label %if.end.313, label %if.then.135

if.then.135:                                      ; preds = %for.end
  %97 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private = getelementptr inbounds %struct.cop, %struct.cop* %97, i32 0, i32 7
  %98 = load i8, i8* %op_private, align 1
  %conv136 = zext i8 %98 to i32
  %and137 = and i32 %conv136, 8
  %tobool138 = icmp ne i32 %and137, 0
  br i1 %tobool138, label %cond.true.143, label %lor.lhs.false.139

lor.lhs.false.139:                                ; preds = %if.then.135
  %99 = load i8*, i8** %name, align 8
  %100 = load i8, i8* %99, align 1
  %conv140 = zext i8 %100 to i32
  %cmp141 = icmp slt i32 %conv140, 192
  br i1 %cmp141, label %cond.true.143, label %cond.false.163

cond.true.143:                                    ; preds = %lor.lhs.false.139, %if.then.135
  %101 = load i8*, i8** %name, align 8
  %102 = load i8, i8* %101, align 1
  %conv144 = sext i8 %102 to i32
  %cmp145 = icmp sge i32 %conv144, 65
  br i1 %cmp145, label %land.lhs.true.147, label %lor.lhs.false.151

land.lhs.true.147:                                ; preds = %cond.true.143
  %103 = load i8*, i8** %name, align 8
  %104 = load i8, i8* %103, align 1
  %conv148 = sext i8 %104 to i32
  %cmp149 = icmp sle i32 %conv148, 90
  br i1 %cmp149, label %if.then.170, label %lor.lhs.false.151

lor.lhs.false.151:                                ; preds = %land.lhs.true.147, %cond.true.143
  %105 = load i8*, i8** %name, align 8
  %106 = load i8, i8* %105, align 1
  %conv152 = sext i8 %106 to i32
  %cmp153 = icmp sge i32 %conv152, 97
  br i1 %cmp153, label %land.lhs.true.155, label %lor.lhs.false.159

land.lhs.true.155:                                ; preds = %lor.lhs.false.151
  %107 = load i8*, i8** %name, align 8
  %108 = load i8, i8* %107, align 1
  %conv156 = sext i8 %108 to i32
  %cmp157 = icmp sle i32 %conv156, 122
  br i1 %cmp157, label %if.then.170, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %land.lhs.true.155, %lor.lhs.false.151
  %109 = load i8*, i8** %name, align 8
  %110 = load i8, i8* %109, align 1
  %conv160 = sext i8 %110 to i32
  %cmp161 = icmp eq i32 %conv160, 95
  br i1 %cmp161, label %if.then.170, label %if.else.311

cond.false.163:                                   ; preds = %lor.lhs.false.139
  %111 = load i8*, i8** %name, align 8
  %call164 = call signext i8 @Perl_is_utf8_idcont(i8* %111)
  %conv165 = sext i8 %call164 to i32
  %tobool166 = icmp ne i32 %conv165, 0
  br i1 %tobool166, label %land.lhs.true.167, label %if.else.311

land.lhs.true.167:                                ; preds = %cond.false.163
  %112 = load i8*, i8** %name, align 8
  %call168 = call signext i8 @Perl_is_utf8_digit(i8* %112)
  %tobool169 = icmp ne i8 %call168, 0
  br i1 %tobool169, label %if.else.311, label %if.then.170

if.then.170:                                      ; preds = %land.lhs.true.167, %lor.lhs.false.159, %land.lhs.true.155, %land.lhs.true.147
  store i8 0, i8* %global, align 1
  %113 = load i8*, i8** %name, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %113, i64 1
  %114 = load i8, i8* %arrayidx171, align 1
  %conv172 = sext i8 %114 to i32
  switch i32 %conv172, label %sw.epilog [
    i32 0, label %sw.bb
    i32 78, label %sw.bb.178
    i32 73, label %sw.bb.186
    i32 84, label %sw.bb.191
    i32 82, label %sw.bb.202
  ]

sw.bb:                                            ; preds = %if.then.170
  %115 = load i8*, i8** %name, align 8
  %116 = load i8, i8* %115, align 1
  %conv173 = sext i8 %116 to i32
  %cmp174 = icmp eq i32 %conv173, 95
  br i1 %cmp174, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %sw.bb
  store i8 1, i8* %global, align 1
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.176, %sw.bb
  br label %sw.epilog

sw.bb.178:                                        ; preds = %if.then.170
  %117 = load i8*, i8** %name, align 8
  %call179 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0))
  %tobool180 = icmp ne i32 %call179, 0
  br i1 %tobool180, label %lor.lhs.false.181, label %if.then.184

lor.lhs.false.181:                                ; preds = %sw.bb.178
  %118 = load i8*, i8** %name, align 8
  %call182 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0))
  %tobool183 = icmp ne i32 %call182, 0
  br i1 %tobool183, label %if.end.185, label %if.then.184

if.then.184:                                      ; preds = %lor.lhs.false.181, %sw.bb.178
  store i8 1, i8* %global, align 1
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.184, %lor.lhs.false.181
  br label %sw.epilog

sw.bb.186:                                        ; preds = %if.then.170
  %119 = load i8*, i8** %name, align 8
  %call187 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0))
  %tobool188 = icmp ne i32 %call187, 0
  br i1 %tobool188, label %if.end.190, label %if.then.189

if.then.189:                                      ; preds = %sw.bb.186
  store i8 1, i8* %global, align 1
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.189, %sw.bb.186
  br label %sw.epilog

sw.bb.191:                                        ; preds = %if.then.170
  %120 = load i8*, i8** %name, align 8
  %call192 = call i32 @strcmp(i8* %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0))
  %tobool193 = icmp ne i32 %call192, 0
  br i1 %tobool193, label %lor.lhs.false.194, label %if.then.200

lor.lhs.false.194:                                ; preds = %sw.bb.191
  %121 = load i8*, i8** %name, align 8
  %call195 = call i32 @strcmp(i8* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0))
  %tobool196 = icmp ne i32 %call195, 0
  br i1 %tobool196, label %lor.lhs.false.197, label %if.then.200

lor.lhs.false.197:                                ; preds = %lor.lhs.false.194
  %122 = load i8*, i8** %name, align 8
  %call198 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0))
  %tobool199 = icmp ne i32 %call198, 0
  br i1 %tobool199, label %if.end.201, label %if.then.200

if.then.200:                                      ; preds = %lor.lhs.false.197, %lor.lhs.false.194, %sw.bb.191
  store i8 1, i8* %global, align 1
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.200, %lor.lhs.false.197
  br label %sw.epilog

sw.bb.202:                                        ; preds = %if.then.170
  %123 = load i8*, i8** %name, align 8
  %call203 = call i32 @strcmp(i8* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0))
  %tobool204 = icmp ne i32 %call203, 0
  br i1 %tobool204, label %lor.lhs.false.205, label %if.then.208

lor.lhs.false.205:                                ; preds = %sw.bb.202
  %124 = load i8*, i8** %name, align 8
  %call206 = call i32 @strcmp(i8* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0))
  %tobool207 = icmp ne i32 %call206, 0
  br i1 %tobool207, label %if.end.209, label %if.then.208

if.then.208:                                      ; preds = %lor.lhs.false.205, %sw.bb.202
  store i8 1, i8* %global, align 1
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.208, %lor.lhs.false.205
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.170, %if.end.209, %if.end.201, %if.end.190, %if.end.185, %if.end.177
  %125 = load i8, i8* %global, align 1
  %tobool210 = icmp ne i8 %125, 0
  br i1 %tobool210, label %if.then.211, label %if.else.212

if.then.211:                                      ; preds = %sw.epilog
  %126 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  store %struct.hv* %126, %struct.hv** %stash, align 8
  br label %if.end.310

if.else.212:                                      ; preds = %sw.epilog
  %127 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cmp213 = icmp eq %struct.cop* %127, @PL_compiling
  br i1 %cmp213, label %if.then.215, label %if.else.308

if.then.215:                                      ; preds = %if.else.212
  %128 = load %struct.hv*, %struct.hv** @PL_curstash, align 8
  store %struct.hv* %128, %struct.hv** %stash, align 8
  %129 = load i32, i32* %add.addr, align 4
  %tobool216 = icmp ne i32 %129, 0
  br i1 %tobool216, label %land.lhs.true.217, label %if.end.307

land.lhs.true.217:                                ; preds = %if.then.215
  %130 = load i32, i32* @PL_hints, align 4
  %and218 = and i32 %130, 1024
  %tobool219 = icmp ne i32 %and218, 0
  br i1 %tobool219, label %land.lhs.true.220, label %if.end.307

land.lhs.true.220:                                ; preds = %land.lhs.true.217
  %131 = load i32, i32* %sv_type.addr, align 4
  %cmp221 = icmp ne i32 %131, 12
  br i1 %cmp221, label %land.lhs.true.223, label %if.end.307

land.lhs.true.223:                                ; preds = %land.lhs.true.220
  %132 = load i32, i32* %sv_type.addr, align 4
  %cmp224 = icmp ne i32 %132, 13
  br i1 %cmp224, label %land.lhs.true.226, label %if.end.307

land.lhs.true.226:                                ; preds = %land.lhs.true.223
  %133 = load i32, i32* %sv_type.addr, align 4
  %cmp227 = icmp ne i32 %133, 14
  br i1 %cmp227, label %land.lhs.true.229, label %if.end.307

land.lhs.true.229:                                ; preds = %land.lhs.true.226
  %134 = load i32, i32* %sv_type.addr, align 4
  %cmp230 = icmp ne i32 %134, 15
  br i1 %cmp230, label %land.lhs.true.232, label %if.end.307

land.lhs.true.232:                                ; preds = %land.lhs.true.229
  %135 = load i32, i32* %len, align 4
  %cmp233 = icmp eq i32 %135, 1
  br i1 %cmp233, label %land.lhs.true.235, label %if.then.246

land.lhs.true.235:                                ; preds = %land.lhs.true.232
  %136 = load i32, i32* %sv_type.addr, align 4
  %cmp236 = icmp eq i32 %136, 4
  br i1 %cmp236, label %land.lhs.true.238, label %if.then.246

land.lhs.true.238:                                ; preds = %land.lhs.true.235
  %137 = load i8*, i8** %name, align 8
  %138 = load i8, i8* %137, align 1
  %conv239 = sext i8 %138 to i32
  %cmp240 = icmp eq i32 %conv239, 97
  br i1 %cmp240, label %if.end.307, label %lor.lhs.false.242

lor.lhs.false.242:                                ; preds = %land.lhs.true.238
  %139 = load i8*, i8** %name, align 8
  %140 = load i8, i8* %139, align 1
  %conv243 = sext i8 %140 to i32
  %cmp244 = icmp eq i32 %conv243, 98
  br i1 %cmp244, label %if.end.307, label %if.then.246

if.then.246:                                      ; preds = %lor.lhs.false.242, %land.lhs.true.235, %land.lhs.true.232
  %141 = load %struct.hv*, %struct.hv** %stash, align 8
  %142 = load i8*, i8** %name, align 8
  %143 = load i32, i32* %len, align 4
  %call247 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %141, i8* %142, i32 %143, i32 0)
  %144 = bitcast %struct.sv** %call247 to %struct.gv**
  store %struct.gv** %144, %struct.gv*** %gvp, align 8
  %145 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %tobool248 = icmp ne %struct.gv** %145, null
  br i1 %tobool248, label %lor.lhs.false.249, label %if.then.257

lor.lhs.false.249:                                ; preds = %if.then.246
  %146 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %147 = load %struct.gv*, %struct.gv** %146, align 8
  %cmp250 = icmp eq %struct.gv* %147, bitcast (%struct.sv* @PL_sv_undef to %struct.gv*)
  br i1 %cmp250, label %if.then.257, label %lor.lhs.false.252

lor.lhs.false.252:                                ; preds = %lor.lhs.false.249
  %148 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %149 = load %struct.gv*, %struct.gv** %148, align 8
  %sv_flags253 = getelementptr inbounds %struct.gv, %struct.gv* %149, i32 0, i32 2
  %150 = load i32, i32* %sv_flags253, align 4
  %and254 = and i32 %150, 255
  %cmp255 = icmp ne i32 %and254, 13
  br i1 %cmp255, label %if.then.257, label %if.else.258

if.then.257:                                      ; preds = %lor.lhs.false.252, %lor.lhs.false.249, %if.then.246
  store %struct.hv* null, %struct.hv** %stash, align 8
  br label %if.end.306

if.else.258:                                      ; preds = %lor.lhs.false.252
  %151 = load i32, i32* %sv_type.addr, align 4
  %cmp259 = icmp eq i32 %151, 4
  br i1 %cmp259, label %land.lhs.true.261, label %lor.lhs.false.267

land.lhs.true.261:                                ; preds = %if.else.258
  %152 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %153 = load %struct.gv*, %struct.gv** %152, align 8
  %sv_any262 = getelementptr inbounds %struct.gv, %struct.gv* %153, i32 0, i32 0
  %154 = load %struct.xpvgv*, %struct.xpvgv** %sv_any262, align 8
  %xgv_flags263 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %154, i32 0, i32 11
  %155 = load i8, i8* %xgv_flags263, align 1
  %conv264 = zext i8 %155 to i32
  %and265 = and i32 %conv264, 16
  %tobool266 = icmp ne i32 %and265, 0
  br i1 %tobool266, label %lor.lhs.false.267, label %if.then.285

lor.lhs.false.267:                                ; preds = %land.lhs.true.261, %if.else.258
  %156 = load i32, i32* %sv_type.addr, align 4
  %cmp268 = icmp eq i32 %156, 10
  br i1 %cmp268, label %land.lhs.true.270, label %lor.lhs.false.276

land.lhs.true.270:                                ; preds = %lor.lhs.false.267
  %157 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %158 = load %struct.gv*, %struct.gv** %157, align 8
  %sv_any271 = getelementptr inbounds %struct.gv, %struct.gv* %158, i32 0, i32 0
  %159 = load %struct.xpvgv*, %struct.xpvgv** %sv_any271, align 8
  %xgv_flags272 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %159, i32 0, i32 11
  %160 = load i8, i8* %xgv_flags272, align 1
  %conv273 = zext i8 %160 to i32
  %and274 = and i32 %conv273, 32
  %tobool275 = icmp ne i32 %and274, 0
  br i1 %tobool275, label %lor.lhs.false.276, label %if.then.285

lor.lhs.false.276:                                ; preds = %land.lhs.true.270, %lor.lhs.false.267
  %161 = load i32, i32* %sv_type.addr, align 4
  %cmp277 = icmp eq i32 %161, 11
  br i1 %cmp277, label %land.lhs.true.279, label %if.end.305

land.lhs.true.279:                                ; preds = %lor.lhs.false.276
  %162 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %163 = load %struct.gv*, %struct.gv** %162, align 8
  %sv_any280 = getelementptr inbounds %struct.gv, %struct.gv* %163, i32 0, i32 0
  %164 = load %struct.xpvgv*, %struct.xpvgv** %sv_any280, align 8
  %xgv_flags281 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %164, i32 0, i32 11
  %165 = load i8, i8* %xgv_flags281, align 1
  %conv282 = zext i8 %165 to i32
  %and283 = and i32 %conv282, 64
  %tobool284 = icmp ne i32 %and283, 0
  br i1 %tobool284, label %if.end.305, label %if.then.285

if.then.285:                                      ; preds = %land.lhs.true.279, %land.lhs.true.270, %land.lhs.true.261
  %166 = load i32, i32* %sv_type.addr, align 4
  %cmp286 = icmp eq i32 %166, 10
  br i1 %cmp286, label %cond.true.288, label %cond.false.289

cond.true.288:                                    ; preds = %if.then.285
  br label %cond.end.293

cond.false.289:                                   ; preds = %if.then.285
  %167 = load i32, i32* %sv_type.addr, align 4
  %cmp290 = icmp eq i32 %167, 11
  %cond292 = select i1 %cmp290, i32 37, i32 36
  br label %cond.end.293

cond.end.293:                                     ; preds = %cond.false.289, %cond.true.288
  %cond294 = phi i32 [ 64, %cond.true.288 ], [ %cond292, %cond.false.289 ]
  %168 = load i8*, i8** %name, align 8
  call void (i8*, ...) @Perl_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i32 0, i32 0), i32 %cond294, i8* %168)
  %169 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %170 = load %struct.gv*, %struct.gv** %169, align 8
  %sv_any295 = getelementptr inbounds %struct.gv, %struct.gv* %170, i32 0, i32 0
  %171 = load %struct.xpvgv*, %struct.xpvgv** %sv_any295, align 8
  %xgv_gp296 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %171, i32 0, i32 7
  %172 = load %struct.gp*, %struct.gp** %xgv_gp296, align 8
  %gp_cvgen = getelementptr inbounds %struct.gp, %struct.gp* %172, i32 0, i32 8
  %173 = load i32, i32* %gp_cvgen, align 4
  %tobool297 = icmp ne i32 %173, 0
  br i1 %tobool297, label %cond.true.298, label %cond.false.299

cond.true.298:                                    ; preds = %cond.end.293
  br i1 false, label %if.then.303, label %if.end.304

cond.false.299:                                   ; preds = %cond.end.293
  %174 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %175 = load %struct.gv*, %struct.gv** %174, align 8
  %sv_any300 = getelementptr inbounds %struct.gv, %struct.gv* %175, i32 0, i32 0
  %176 = load %struct.xpvgv*, %struct.xpvgv** %sv_any300, align 8
  %xgv_gp301 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %176, i32 0, i32 7
  %177 = load %struct.gp*, %struct.gp** %xgv_gp301, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %177, i32 0, i32 7
  %178 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  %tobool302 = icmp ne %struct.cv* %178, null
  br i1 %tobool302, label %if.then.303, label %if.end.304

if.then.303:                                      ; preds = %cond.false.299, %cond.true.298
  %179 = load i8*, i8** %name, align 8
  call void (i8*, ...) @Perl_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i32 0, i32 0), i8* %179)
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.303, %cond.false.299, %cond.true.298
  store %struct.hv* null, %struct.hv** %stash, align 8
  br label %if.end.305

if.end.305:                                       ; preds = %if.end.304, %land.lhs.true.279, %lor.lhs.false.276
  br label %if.end.306

if.end.306:                                       ; preds = %if.end.305, %if.then.257
  br label %if.end.307

if.end.307:                                       ; preds = %if.end.306, %lor.lhs.false.242, %land.lhs.true.238, %land.lhs.true.229, %land.lhs.true.226, %land.lhs.true.223, %land.lhs.true.220, %land.lhs.true.217, %if.then.215
  br label %if.end.309

if.else.308:                                      ; preds = %if.else.212
  %180 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_stash = getelementptr inbounds %struct.cop, %struct.cop* %180, i32 0, i32 9
  %181 = load %struct.hv*, %struct.hv** %cop_stash, align 8
  store %struct.hv* %181, %struct.hv** %stash, align 8
  br label %if.end.309

if.end.309:                                       ; preds = %if.else.308, %if.end.307
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %if.then.211
  br label %if.end.312

if.else.311:                                      ; preds = %land.lhs.true.167, %cond.false.163, %lor.lhs.false.159
  %182 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  store %struct.hv* %182, %struct.hv** %stash, align 8
  br label %if.end.312

if.end.312:                                       ; preds = %if.else.311, %if.end.310
  br label %if.end.313

if.end.313:                                       ; preds = %if.end.312, %for.end
  %183 = load %struct.hv*, %struct.hv** %stash, align 8
  %tobool314 = icmp ne %struct.hv* %183, null
  br i1 %tobool314, label %if.end.342, label %if.then.315

if.then.315:                                      ; preds = %if.end.313
  %184 = load i32, i32* %add.addr, align 4
  %tobool316 = icmp ne i32 %184, 0
  br i1 %tobool316, label %if.then.317, label %if.else.340

if.then.317:                                      ; preds = %if.then.315
  %185 = load i32, i32* %sv_type.addr, align 4
  %cmp318 = icmp eq i32 %185, 4
  br i1 %cmp318, label %cond.true.320, label %cond.false.321

cond.true.320:                                    ; preds = %if.then.317
  br label %cond.end.331

cond.false.321:                                   ; preds = %if.then.317
  %186 = load i32, i32* %sv_type.addr, align 4
  %cmp322 = icmp eq i32 %186, 10
  br i1 %cmp322, label %cond.true.324, label %cond.false.325

cond.true.324:                                    ; preds = %cond.false.321
  br label %cond.end.329

cond.false.325:                                   ; preds = %cond.false.321
  %187 = load i32, i32* %sv_type.addr, align 4
  %cmp326 = icmp eq i32 %187, 11
  %cond328 = select i1 %cmp326, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)
  br label %cond.end.329

cond.end.329:                                     ; preds = %cond.false.325, %cond.true.324
  %cond330 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), %cond.true.324 ], [ %cond328, %cond.false.325 ]
  br label %cond.end.331

cond.end.331:                                     ; preds = %cond.end.329, %cond.true.320
  %cond332 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), %cond.true.320 ], [ %cond330, %cond.end.329 ]
  %188 = load i8*, i8** %name, align 8
  %call333 = call %struct.sv* (i8*, ...) @Perl_mess(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.28, i32 0, i32 0), i8* %cond332, i8* %188)
  store %struct.sv* %call333, %struct.sv** %err, align 8
  %189 = load i32, i32* @PL_hints, align 4
  %and334 = and i32 %189, 8388608
  %tobool335 = icmp ne i32 %and334, 0
  br i1 %tobool335, label %if.then.336, label %if.end.339

if.then.336:                                      ; preds = %cond.end.331
  %190 = load %struct.sv*, %struct.sv** %err, align 8
  %sv_flags337 = getelementptr inbounds %struct.sv, %struct.sv* %190, i32 0, i32 2
  %191 = load i32, i32* %sv_flags337, align 4
  %or338 = or i32 %191, 536870912
  store i32 %or338, i32* %sv_flags337, align 4
  br label %if.end.339

if.end.339:                                       ; preds = %if.then.336, %cond.end.331
  %192 = load %struct.sv*, %struct.sv** %err, align 8
  call void @Perl_qerror(%struct.sv* %192)
  %193 = load %struct.hv*, %struct.hv** @PL_nullstash, align 8
  store %struct.hv* %193, %struct.hv** %stash, align 8
  br label %if.end.341

if.else.340:                                      ; preds = %if.then.315
  store %struct.gv* null, %struct.gv** %retval
  br label %return

if.end.341:                                       ; preds = %if.end.339
  br label %if.end.342

if.end.342:                                       ; preds = %if.end.341, %if.end.313
  %194 = load %struct.hv*, %struct.hv** %stash, align 8
  %sv_refcnt343 = getelementptr inbounds %struct.hv, %struct.hv* %194, i32 0, i32 1
  %195 = load i32, i32* %sv_refcnt343, align 4
  %tobool344 = icmp ne i32 %195, 0
  br i1 %tobool344, label %if.end.346, label %if.then.345

if.then.345:                                      ; preds = %if.end.342
  store %struct.gv* null, %struct.gv** %retval
  br label %return

if.end.346:                                       ; preds = %if.end.342
  %196 = load %struct.hv*, %struct.hv** %stash, align 8
  %197 = load i8*, i8** %name, align 8
  %198 = load i32, i32* %len, align 4
  %199 = load i32, i32* %add.addr, align 4
  %call347 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %196, i8* %197, i32 %198, i32 %199)
  %200 = bitcast %struct.sv** %call347 to %struct.gv**
  store %struct.gv** %200, %struct.gv*** %gvp, align 8
  %201 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %tobool348 = icmp ne %struct.gv** %201, null
  br i1 %tobool348, label %lor.lhs.false.349, label %if.then.352

lor.lhs.false.349:                                ; preds = %if.end.346
  %202 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %203 = load %struct.gv*, %struct.gv** %202, align 8
  %cmp350 = icmp eq %struct.gv* %203, bitcast (%struct.sv* @PL_sv_undef to %struct.gv*)
  br i1 %cmp350, label %if.then.352, label %if.end.353

if.then.352:                                      ; preds = %lor.lhs.false.349, %if.end.346
  store %struct.gv* null, %struct.gv** %retval
  br label %return

if.end.353:                                       ; preds = %lor.lhs.false.349
  %204 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %205 = load %struct.gv*, %struct.gv** %204, align 8
  store %struct.gv* %205, %struct.gv** %gv, align 8
  %206 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_flags354 = getelementptr inbounds %struct.gv, %struct.gv* %206, i32 0, i32 2
  %207 = load i32, i32* %sv_flags354, align 4
  %and355 = and i32 %207, 255
  %cmp356 = icmp eq i32 %and355, 13
  br i1 %cmp356, label %if.then.358, label %if.else.378

if.then.358:                                      ; preds = %if.end.353
  %208 = load i32, i32* %add.addr, align 4
  %tobool359 = icmp ne i32 %208, 0
  br i1 %tobool359, label %if.then.360, label %if.end.377

if.then.360:                                      ; preds = %if.then.358
  %209 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any361 = getelementptr inbounds %struct.gv, %struct.gv* %209, i32 0, i32 0
  %210 = load %struct.xpvgv*, %struct.xpvgv** %sv_any361, align 8
  %xgv_flags362 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %210, i32 0, i32 11
  %211 = load i8, i8* %xgv_flags362, align 1
  %conv363 = zext i8 %211 to i32
  %or364 = or i32 %conv363, 2
  %conv365 = trunc i32 %or364 to i8
  store i8 %conv365, i8* %xgv_flags362, align 1
  %212 = load %struct.gv*, %struct.gv** %gv, align 8
  %213 = load i32, i32* %sv_type.addr, align 4
  call void @S_gv_init_sv(%struct.gv* %212, i32 %213)
  %214 = load i8*, i8** %name, align 8
  %215 = load i8, i8* %214, align 1
  %conv366 = sext i8 %215 to i32
  %cmp367 = icmp eq i32 %conv366, 33
  br i1 %cmp367, label %land.lhs.true.369, label %if.end.376

land.lhs.true.369:                                ; preds = %if.then.360
  %216 = load i32, i32* %sv_type.addr, align 4
  %cmp370 = icmp eq i32 %216, 11
  br i1 %cmp370, label %land.lhs.true.372, label %if.end.376

land.lhs.true.372:                                ; preds = %land.lhs.true.369
  %217 = load i32, i32* %len, align 4
  %cmp373 = icmp eq i32 %217, 1
  br i1 %cmp373, label %if.then.375, label %if.end.376

if.then.375:                                      ; preds = %land.lhs.true.372
  %218 = load %struct.gv*, %struct.gv** %gv, align 8
  call void @S_require_errno(%struct.gv* %218)
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.375, %land.lhs.true.372, %land.lhs.true.369, %if.then.360
  br label %if.end.377

if.end.377:                                       ; preds = %if.end.376, %if.then.358
  %219 = load %struct.gv*, %struct.gv** %gv, align 8
  store %struct.gv* %219, %struct.gv** %retval
  br label %return

if.else.378:                                      ; preds = %if.end.353
  %220 = load i32, i32* %add.addr, align 4
  %and379 = and i32 %220, 16
  %tobool380 = icmp ne i32 %and379, 0
  br i1 %tobool380, label %if.then.381, label %if.end.382

if.then.381:                                      ; preds = %if.else.378
  %221 = load %struct.gv*, %struct.gv** %gv, align 8
  store %struct.gv* %221, %struct.gv** %retval
  br label %return

if.end.382:                                       ; preds = %if.else.378
  br label %if.end.383

if.end.383:                                       ; preds = %if.end.382
  %222 = load i32, i32* %add.addr, align 4
  %and384 = and i32 %222, 4
  %tobool385 = icmp ne i32 %and384, 0
  br i1 %tobool385, label %land.lhs.true.386, label %if.end.405

land.lhs.true.386:                                ; preds = %if.end.383
  %223 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %223, i32 0, i32 14
  %224 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp387 = icmp eq %struct.sv* %224, null
  br i1 %cmp387, label %if.then.404, label %lor.lhs.false.389

lor.lhs.false.389:                                ; preds = %land.lhs.true.386
  %225 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings390 = getelementptr inbounds %struct.cop, %struct.cop* %225, i32 0, i32 14
  %226 = load %struct.sv*, %struct.sv** %cop_warnings390, align 8
  %cmp391 = icmp eq %struct.sv* %226, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp391, label %if.then.404, label %lor.lhs.false.393

lor.lhs.false.393:                                ; preds = %lor.lhs.false.389
  %227 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings394 = getelementptr inbounds %struct.cop, %struct.cop* %227, i32 0, i32 14
  %228 = load %struct.sv*, %struct.sv** %cop_warnings394, align 8
  %cmp395 = icmp ne %struct.sv* %228, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp395, label %land.lhs.true.397, label %if.end.405

land.lhs.true.397:                                ; preds = %lor.lhs.false.393
  %229 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings398 = getelementptr inbounds %struct.cop, %struct.cop* %229, i32 0, i32 14
  %230 = load %struct.sv*, %struct.sv** %cop_warnings398, align 8
  %sv_any399 = getelementptr inbounds %struct.sv, %struct.sv* %230, i32 0, i32 0
  %231 = load i8*, i8** %sv_any399, align 8
  %232 = bitcast i8* %231 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %232, i32 0, i32 0
  %233 = load i8*, i8** %xpv_pv, align 8
  %arrayidx400 = getelementptr inbounds i8, i8* %233, i64 6
  %234 = load i8, i8* %arrayidx400, align 1
  %conv401 = sext i8 %234 to i32
  %and402 = and i32 %conv401, 1
  %tobool403 = icmp ne i32 %and402, 0
  br i1 %tobool403, label %if.then.404, label %if.end.405

if.then.404:                                      ; preds = %land.lhs.true.397, %lor.lhs.false.389, %land.lhs.true.386
  %235 = load i8*, i8** %nambeg.addr, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i32 0, i32 0), i8* %235)
  br label %if.end.405

if.end.405:                                       ; preds = %if.then.404, %land.lhs.true.397, %lor.lhs.false.393, %if.end.383
  %236 = load %struct.gv*, %struct.gv** %gv, align 8
  %237 = load %struct.hv*, %struct.hv** %stash, align 8
  %238 = load i8*, i8** %name, align 8
  %239 = load i32, i32* %len, align 4
  %conv406 = sext i32 %239 to i64
  %240 = load i32, i32* %add.addr, align 4
  %and407 = and i32 %240, 2
  call void @Perl_gv_init(%struct.gv* %236, %struct.hv* %237, i8* %238, i64 %conv406, i32 %and407)
  %241 = load %struct.gv*, %struct.gv** %gv, align 8
  %242 = load i32, i32* %sv_type.addr, align 4
  call void @S_gv_init_sv(%struct.gv* %241, i32 %242)
  %243 = load i8*, i8** %name, align 8
  %arrayidx408 = getelementptr inbounds i8, i8* %243, i64 0
  %244 = load i8, i8* %arrayidx408, align 1
  %conv409 = sext i8 %244 to i32
  %cmp410 = icmp sge i32 %conv409, 65
  br i1 %cmp410, label %land.lhs.true.412, label %lor.lhs.false.417

land.lhs.true.412:                                ; preds = %if.end.405
  %245 = load i8*, i8** %name, align 8
  %arrayidx413 = getelementptr inbounds i8, i8* %245, i64 0
  %246 = load i8, i8* %arrayidx413, align 1
  %conv414 = sext i8 %246 to i32
  %cmp415 = icmp sle i32 %conv414, 90
  br i1 %cmp415, label %land.lhs.true.427, label %lor.lhs.false.417

lor.lhs.false.417:                                ; preds = %land.lhs.true.412, %if.end.405
  %247 = load i8*, i8** %name, align 8
  %arrayidx418 = getelementptr inbounds i8, i8* %247, i64 0
  %248 = load i8, i8* %arrayidx418, align 1
  %conv419 = sext i8 %248 to i32
  %cmp420 = icmp sge i32 %conv419, 97
  br i1 %cmp420, label %land.lhs.true.422, label %if.end.469

land.lhs.true.422:                                ; preds = %lor.lhs.false.417
  %249 = load i8*, i8** %name, align 8
  %arrayidx423 = getelementptr inbounds i8, i8* %249, i64 0
  %250 = load i8, i8* %arrayidx423, align 1
  %conv424 = sext i8 %250 to i32
  %cmp425 = icmp sle i32 %conv424, 122
  br i1 %cmp425, label %land.lhs.true.427, label %if.end.469

land.lhs.true.427:                                ; preds = %land.lhs.true.422, %land.lhs.true.412
  %251 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings428 = getelementptr inbounds %struct.cop, %struct.cop* %251, i32 0, i32 14
  %252 = load %struct.sv*, %struct.sv** %cop_warnings428, align 8
  %cmp429 = icmp ne %struct.sv* %252, null
  br i1 %cmp429, label %cond.true.431, label %cond.false.459

cond.true.431:                                    ; preds = %land.lhs.true.427
  %253 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings432 = getelementptr inbounds %struct.cop, %struct.cop* %253, i32 0, i32 14
  %254 = load %struct.sv*, %struct.sv** %cop_warnings432, align 8
  %cmp433 = icmp ne %struct.sv* %254, null
  br i1 %cmp433, label %land.lhs.true.435, label %lor.lhs.false.451

land.lhs.true.435:                                ; preds = %cond.true.431
  %255 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings436 = getelementptr inbounds %struct.cop, %struct.cop* %255, i32 0, i32 14
  %256 = load %struct.sv*, %struct.sv** %cop_warnings436, align 8
  %cmp437 = icmp ne %struct.sv* %256, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp437, label %land.lhs.true.439, label %lor.lhs.false.451

land.lhs.true.439:                                ; preds = %land.lhs.true.435
  %257 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings440 = getelementptr inbounds %struct.cop, %struct.cop* %257, i32 0, i32 14
  %258 = load %struct.sv*, %struct.sv** %cop_warnings440, align 8
  %cmp441 = icmp eq %struct.sv* %258, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp441, label %if.end.469, label %lor.lhs.false.443

lor.lhs.false.443:                                ; preds = %land.lhs.true.439
  %259 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings444 = getelementptr inbounds %struct.cop, %struct.cop* %259, i32 0, i32 14
  %260 = load %struct.sv*, %struct.sv** %cop_warnings444, align 8
  %sv_any445 = getelementptr inbounds %struct.sv, %struct.sv* %260, i32 0, i32 0
  %261 = load i8*, i8** %sv_any445, align 8
  %262 = bitcast i8* %261 to %struct.xpv*
  %xpv_pv446 = getelementptr inbounds %struct.xpv, %struct.xpv* %262, i32 0, i32 0
  %263 = load i8*, i8** %xpv_pv446, align 8
  %arrayidx447 = getelementptr inbounds i8, i8* %263, i64 3
  %264 = load i8, i8* %arrayidx447, align 1
  %conv448 = sext i8 %264 to i32
  %and449 = and i32 %conv448, 16
  %tobool450 = icmp ne i32 %and449, 0
  br i1 %tobool450, label %if.end.469, label %lor.lhs.false.451

lor.lhs.false.451:                                ; preds = %lor.lhs.false.443, %land.lhs.true.435, %cond.true.431
  %265 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings452 = getelementptr inbounds %struct.cop, %struct.cop* %265, i32 0, i32 14
  %266 = load %struct.sv*, %struct.sv** %cop_warnings452, align 8
  %cmp453 = icmp eq %struct.sv* %266, null
  br i1 %cmp453, label %land.lhs.true.455, label %if.then.463

land.lhs.true.455:                                ; preds = %lor.lhs.false.451
  %267 = load i8, i8* @PL_dowarn, align 1
  %conv456 = zext i8 %267 to i32
  %and457 = and i32 %conv456, 1
  %tobool458 = icmp ne i32 %and457, 0
  br i1 %tobool458, label %if.end.469, label %if.then.463

cond.false.459:                                   ; preds = %land.lhs.true.427
  %268 = load i8, i8* @PL_dowarn, align 1
  %conv460 = zext i8 %268 to i32
  %and461 = and i32 %conv460, 1
  %tobool462 = icmp ne i32 %and461, 0
  br i1 %tobool462, label %if.end.469, label %if.then.463

if.then.463:                                      ; preds = %cond.false.459, %land.lhs.true.455, %lor.lhs.false.451
  %269 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any464 = getelementptr inbounds %struct.gv, %struct.gv* %269, i32 0, i32 0
  %270 = load %struct.xpvgv*, %struct.xpvgv** %sv_any464, align 8
  %xgv_flags465 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %270, i32 0, i32 11
  %271 = load i8, i8* %xgv_flags465, align 1
  %conv466 = zext i8 %271 to i32
  %or467 = or i32 %conv466, 2
  %conv468 = trunc i32 %or467 to i8
  store i8 %conv468, i8* %xgv_flags465, align 1
  br label %if.end.469

if.end.469:                                       ; preds = %if.then.463, %cond.false.459, %land.lhs.true.455, %lor.lhs.false.443, %land.lhs.true.439, %land.lhs.true.422, %lor.lhs.false.417
  %272 = load i32, i32* %len, align 4
  %cmp470 = icmp sgt i32 %272, 1
  br i1 %cmp470, label %if.then.472, label %if.else.704

if.then.472:                                      ; preds = %if.end.469
  %273 = load i8*, i8** %name, align 8
  %274 = load i8, i8* %273, align 1
  %conv473 = sext i8 %274 to i32
  %cmp474 = icmp sgt i32 %conv473, 86
  br i1 %cmp474, label %if.then.476, label %if.else.477

if.then.476:                                      ; preds = %if.then.472
  br label %if.end.703

if.else.477:                                      ; preds = %if.then.472
  %275 = load i8*, i8** %name, align 8
  %add.ptr = getelementptr inbounds i8, i8* %275, i64 1
  store i8* %add.ptr, i8** %name2, align 8
  %276 = load i8*, i8** %name, align 8
  %277 = load i8, i8* %276, align 1
  %conv478 = sext i8 %277 to i32
  switch i32 %conv478, label %sw.epilog.702 [
    i32 65, label %sw.bb.479
    i32 69, label %sw.bb.514
    i32 73, label %sw.bb.524
    i32 79, label %sw.bb.569
    i32 83, label %sw.bb.594
    i32 86, label %sw.bb.649
    i32 5, label %sw.bb.659
    i32 15, label %sw.bb.664
    i32 20, label %sw.bb.669
    i32 21, label %sw.bb.674
    i32 23, label %sw.bb.683
    i32 49, label %sw.bb.688
    i32 50, label %sw.bb.688
    i32 51, label %sw.bb.688
    i32 52, label %sw.bb.688
    i32 53, label %sw.bb.688
    i32 54, label %sw.bb.688
    i32 55, label %sw.bb.688
    i32 56, label %sw.bb.688
    i32 57, label %sw.bb.688
  ]

sw.bb.479:                                        ; preds = %if.else.477
  %278 = load i8*, i8** %name2, align 8
  %call480 = call i32 @strcmp(i8* %278, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0))
  %tobool481 = icmp ne i32 %call480, 0
  br i1 %tobool481, label %if.end.513, label %if.then.482

if.then.482:                                      ; preds = %sw.bb.479
  %279 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool483 = icmp ne %struct.gv* %279, null
  br i1 %tobool483, label %land.lhs.true.484, label %cond.false.497

land.lhs.true.484:                                ; preds = %if.then.482
  %280 = load %struct.gv*, %struct.gv** %gv, align 8
  %281 = bitcast %struct.gv* %280 to %struct.sv*
  %sv_flags485 = getelementptr inbounds %struct.sv, %struct.sv* %281, i32 0, i32 2
  %282 = load i32, i32* %sv_flags485, align 4
  %and486 = and i32 %282, 255
  %cmp487 = icmp eq i32 %and486, 13
  br i1 %cmp487, label %land.lhs.true.489, label %cond.false.497

land.lhs.true.489:                                ; preds = %land.lhs.true.484
  %283 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any490 = getelementptr inbounds %struct.gv, %struct.gv* %283, i32 0, i32 0
  %284 = load %struct.xpvgv*, %struct.xpvgv** %sv_any490, align 8
  %xgv_gp491 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %284, i32 0, i32 7
  %285 = load %struct.gp*, %struct.gp** %xgv_gp491, align 8
  %tobool492 = icmp ne %struct.gp* %285, null
  br i1 %tobool492, label %cond.true.493, label %cond.false.497

cond.true.493:                                    ; preds = %land.lhs.true.489
  %286 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any494 = getelementptr inbounds %struct.gv, %struct.gv* %286, i32 0, i32 0
  %287 = load %struct.xpvgv*, %struct.xpvgv** %sv_any494, align 8
  %xgv_gp495 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %287, i32 0, i32 7
  %288 = load %struct.gp*, %struct.gp** %xgv_gp495, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %288, i32 0, i32 2
  %289 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool496 = icmp ne %struct.io* %289, null
  br i1 %tobool496, label %cond.true.498, label %cond.false.502

cond.false.497:                                   ; preds = %land.lhs.true.489, %land.lhs.true.484, %if.then.482
  br i1 false, label %cond.true.498, label %cond.false.502

cond.true.498:                                    ; preds = %cond.false.497, %cond.true.493
  %290 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any499 = getelementptr inbounds %struct.gv, %struct.gv* %290, i32 0, i32 0
  %291 = load %struct.xpvgv*, %struct.xpvgv** %sv_any499, align 8
  %xgv_gp500 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %291, i32 0, i32 7
  %292 = load %struct.gp*, %struct.gp** %xgv_gp500, align 8
  %gp_io501 = getelementptr inbounds %struct.gp, %struct.gp* %292, i32 0, i32 2
  %293 = load %struct.io*, %struct.io** %gp_io501, align 8
  br label %cond.end.507

cond.false.502:                                   ; preds = %cond.false.497, %cond.true.493
  %294 = load %struct.gv*, %struct.gv** %gv, align 8
  %call503 = call %struct.gv* @Perl_gv_IOadd(%struct.gv* %294)
  %sv_any504 = getelementptr inbounds %struct.gv, %struct.gv* %call503, i32 0, i32 0
  %295 = load %struct.xpvgv*, %struct.xpvgv** %sv_any504, align 8
  %xgv_gp505 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %295, i32 0, i32 7
  %296 = load %struct.gp*, %struct.gp** %xgv_gp505, align 8
  %gp_io506 = getelementptr inbounds %struct.gp, %struct.gp* %296, i32 0, i32 2
  %297 = load %struct.io*, %struct.io** %gp_io506, align 8
  br label %cond.end.507

cond.end.507:                                     ; preds = %cond.false.502, %cond.true.498
  %cond508 = phi %struct.io* [ %293, %cond.true.498 ], [ %297, %cond.false.502 ]
  %sv_any509 = getelementptr inbounds %struct.io, %struct.io* %cond508, i32 0, i32 0
  %298 = load %struct.xpvio*, %struct.xpvio** %sv_any509, align 8
  %xio_flags = getelementptr inbounds %struct.xpvio, %struct.xpvio* %298, i32 0, i32 22
  %299 = load i8, i8* %xio_flags, align 1
  %conv510 = sext i8 %299 to i32
  %or511 = or i32 %conv510, 3
  %conv512 = trunc i32 %or511 to i8
  store i8 %conv512, i8* %xio_flags, align 1
  br label %if.end.513

if.end.513:                                       ; preds = %cond.end.507, %sw.bb.479
  br label %sw.epilog.702

sw.bb.514:                                        ; preds = %if.else.477
  %300 = load i8*, i8** %name2, align 8
  %call515 = call i32 @strncmp(i8* %300, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i64 5)
  %tobool516 = icmp ne i32 %call515, 0
  br i1 %tobool516, label %if.end.523, label %if.then.517

if.then.517:                                      ; preds = %sw.bb.514
  %301 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any518 = getelementptr inbounds %struct.gv, %struct.gv* %301, i32 0, i32 0
  %302 = load %struct.xpvgv*, %struct.xpvgv** %sv_any518, align 8
  %xgv_flags519 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %302, i32 0, i32 11
  %303 = load i8, i8* %xgv_flags519, align 1
  %conv520 = zext i8 %303 to i32
  %or521 = or i32 %conv520, 2
  %conv522 = trunc i32 %or521 to i8
  store i8 %conv522, i8* %xgv_flags519, align 1
  br label %if.end.523

if.end.523:                                       ; preds = %if.then.517, %sw.bb.514
  br label %sw.epilog.702

sw.bb.524:                                        ; preds = %if.else.477
  %304 = load i8*, i8** %name2, align 8
  %call525 = call i32 @strcmp(i8* %304, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0))
  %tobool526 = icmp ne i32 %call525, 0
  br i1 %tobool526, label %if.end.568, label %if.then.527

if.then.527:                                      ; preds = %sw.bb.524
  %305 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any528 = getelementptr inbounds %struct.gv, %struct.gv* %305, i32 0, i32 0
  %306 = load %struct.xpvgv*, %struct.xpvgv** %sv_any528, align 8
  %xgv_gp529 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %306, i32 0, i32 7
  %307 = load %struct.gp*, %struct.gp** %xgv_gp529, align 8
  %gp_av = getelementptr inbounds %struct.gp, %struct.gp* %307, i32 0, i32 4
  %308 = load %struct.av*, %struct.av** %gp_av, align 8
  %tobool530 = icmp ne %struct.av* %308, null
  br i1 %tobool530, label %cond.true.531, label %cond.false.535

cond.true.531:                                    ; preds = %if.then.527
  %309 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any532 = getelementptr inbounds %struct.gv, %struct.gv* %309, i32 0, i32 0
  %310 = load %struct.xpvgv*, %struct.xpvgv** %sv_any532, align 8
  %xgv_gp533 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %310, i32 0, i32 7
  %311 = load %struct.gp*, %struct.gp** %xgv_gp533, align 8
  %gp_av534 = getelementptr inbounds %struct.gp, %struct.gp* %311, i32 0, i32 4
  %312 = load %struct.av*, %struct.av** %gp_av534, align 8
  br label %cond.end.540

cond.false.535:                                   ; preds = %if.then.527
  %313 = load %struct.gv*, %struct.gv** %gv, align 8
  %call536 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %313)
  %sv_any537 = getelementptr inbounds %struct.gv, %struct.gv* %call536, i32 0, i32 0
  %314 = load %struct.xpvgv*, %struct.xpvgv** %sv_any537, align 8
  %xgv_gp538 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %314, i32 0, i32 7
  %315 = load %struct.gp*, %struct.gp** %xgv_gp538, align 8
  %gp_av539 = getelementptr inbounds %struct.gp, %struct.gp* %315, i32 0, i32 4
  %316 = load %struct.av*, %struct.av** %gp_av539, align 8
  br label %cond.end.540

cond.end.540:                                     ; preds = %cond.false.535, %cond.true.531
  %cond541 = phi %struct.av* [ %312, %cond.true.531 ], [ %316, %cond.false.535 ]
  store %struct.av* %cond541, %struct.av** %av, align 8
  %317 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any542 = getelementptr inbounds %struct.gv, %struct.gv* %317, i32 0, i32 0
  %318 = load %struct.xpvgv*, %struct.xpvgv** %sv_any542, align 8
  %xgv_flags543 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %318, i32 0, i32 11
  %319 = load i8, i8* %xgv_flags543, align 1
  %conv544 = zext i8 %319 to i32
  %or545 = or i32 %conv544, 2
  %conv546 = trunc i32 %or545 to i8
  store i8 %conv546, i8* %xgv_flags543, align 1
  %320 = load %struct.av*, %struct.av** %av, align 8
  %321 = bitcast %struct.av* %320 to %struct.sv*
  %322 = load %struct.gv*, %struct.gv** %gv, align 8
  %323 = bitcast %struct.gv* %322 to %struct.sv*
  call void @Perl_sv_magic(%struct.sv* %321, %struct.sv* %323, i32 73, i8* null, i32 0)
  %324 = load i32, i32* %add.addr, align 4
  %and547 = and i32 %324, 2
  %tobool548 = icmp ne i32 %and547, 0
  br i1 %tobool548, label %land.lhs.true.549, label %if.end.567

land.lhs.true.549:                                ; preds = %cond.end.540
  %325 = load i8*, i8** %nambeg.addr, align 8
  %call550 = call i32 @strcmp(i8* %325, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0))
  %tobool551 = icmp ne i32 %call550, 0
  br i1 %tobool551, label %if.end.567, label %land.lhs.true.552

land.lhs.true.552:                                ; preds = %land.lhs.true.549
  %326 = load %struct.av*, %struct.av** %av, align 8
  %sv_any553 = getelementptr inbounds %struct.av, %struct.av* %326, i32 0, i32 0
  %327 = load %struct.xpvav*, %struct.xpvav** %sv_any553, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %327, i32 0, i32 1
  %328 = load i64, i64* %xav_fill, align 8
  %cmp554 = icmp eq i64 %328, -1
  br i1 %cmp554, label %if.then.556, label %if.end.567

if.then.556:                                      ; preds = %land.lhs.true.552
  %329 = load %struct.av*, %struct.av** %av, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8** %pname, align 8
  %call557 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i64 9)
  call void @Perl_av_push(%struct.av* %329, %struct.sv* %call557)
  %330 = load i8*, i8** %pname, align 8
  %call558 = call %struct.hv* @Perl_gv_stashpvn(i8* %330, i32 9, i32 1)
  %331 = load %struct.av*, %struct.av** %av, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i8** %pname, align 8
  %call559 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i64 7)
  call void @Perl_av_push(%struct.av* %331, %struct.sv* %call559)
  %332 = load i8*, i8** %pname, align 8
  %call560 = call %struct.hv* @Perl_gv_stashpvn(i8* %332, i32 7, i32 1)
  %333 = load %struct.av*, %struct.av** %av, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8** %pname, align 8
  %call561 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i64 9)
  call void @Perl_av_push(%struct.av* %333, %struct.sv* %call561)
  %334 = load i8*, i8** %pname, align 8
  %call562 = call %struct.hv* @Perl_gv_stashpvn(i8* %334, i32 9, i32 1)
  %335 = load %struct.av*, %struct.av** %av, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8** %pname, align 8
  %call563 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i64 9)
  call void @Perl_av_push(%struct.av* %335, %struct.sv* %call563)
  %336 = load i8*, i8** %pname, align 8
  %call564 = call %struct.hv* @Perl_gv_stashpvn(i8* %336, i32 9, i32 1)
  %337 = load %struct.av*, %struct.av** %av, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8** %pname, align 8
  %call565 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i64 9)
  call void @Perl_av_push(%struct.av* %337, %struct.sv* %call565)
  %338 = load i8*, i8** %pname, align 8
  %call566 = call %struct.hv* @Perl_gv_stashpvn(i8* %338, i32 9, i32 1)
  br label %if.end.567

if.end.567:                                       ; preds = %if.then.556, %land.lhs.true.552, %land.lhs.true.549, %cond.end.540
  br label %if.end.568

if.end.568:                                       ; preds = %if.end.567, %sw.bb.524
  br label %sw.epilog.702

sw.bb.569:                                        ; preds = %if.else.477
  %339 = load i8*, i8** %name2, align 8
  %call570 = call i32 @strcmp(i8* %339, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0))
  %tobool571 = icmp ne i32 %call570, 0
  br i1 %tobool571, label %if.end.593, label %if.then.572

if.then.572:                                      ; preds = %sw.bb.569
  %340 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any573 = getelementptr inbounds %struct.gv, %struct.gv* %340, i32 0, i32 0
  %341 = load %struct.xpvgv*, %struct.xpvgv** %sv_any573, align 8
  %xgv_gp574 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %341, i32 0, i32 7
  %342 = load %struct.gp*, %struct.gp** %xgv_gp574, align 8
  %gp_hv575 = getelementptr inbounds %struct.gp, %struct.gp* %342, i32 0, i32 5
  %343 = load %struct.hv*, %struct.hv** %gp_hv575, align 8
  %tobool576 = icmp ne %struct.hv* %343, null
  br i1 %tobool576, label %cond.true.577, label %cond.false.581

cond.true.577:                                    ; preds = %if.then.572
  %344 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any578 = getelementptr inbounds %struct.gv, %struct.gv* %344, i32 0, i32 0
  %345 = load %struct.xpvgv*, %struct.xpvgv** %sv_any578, align 8
  %xgv_gp579 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %345, i32 0, i32 7
  %346 = load %struct.gp*, %struct.gp** %xgv_gp579, align 8
  %gp_hv580 = getelementptr inbounds %struct.gp, %struct.gp* %346, i32 0, i32 5
  %347 = load %struct.hv*, %struct.hv** %gp_hv580, align 8
  br label %cond.end.586

cond.false.581:                                   ; preds = %if.then.572
  %348 = load %struct.gv*, %struct.gv** %gv, align 8
  %call582 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %348)
  %sv_any583 = getelementptr inbounds %struct.gv, %struct.gv* %call582, i32 0, i32 0
  %349 = load %struct.xpvgv*, %struct.xpvgv** %sv_any583, align 8
  %xgv_gp584 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %349, i32 0, i32 7
  %350 = load %struct.gp*, %struct.gp** %xgv_gp584, align 8
  %gp_hv585 = getelementptr inbounds %struct.gp, %struct.gp* %350, i32 0, i32 5
  %351 = load %struct.hv*, %struct.hv** %gp_hv585, align 8
  br label %cond.end.586

cond.end.586:                                     ; preds = %cond.false.581, %cond.true.577
  %cond587 = phi %struct.hv* [ %347, %cond.true.577 ], [ %351, %cond.false.581 ]
  store %struct.hv* %cond587, %struct.hv** %hv, align 8
  %352 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any588 = getelementptr inbounds %struct.gv, %struct.gv* %352, i32 0, i32 0
  %353 = load %struct.xpvgv*, %struct.xpvgv** %sv_any588, align 8
  %xgv_flags589 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %353, i32 0, i32 11
  %354 = load i8, i8* %xgv_flags589, align 1
  %conv590 = zext i8 %354 to i32
  %or591 = or i32 %conv590, 2
  %conv592 = trunc i32 %or591 to i8
  store i8 %conv592, i8* %xgv_flags589, align 1
  %355 = load %struct.hv*, %struct.hv** %hv, align 8
  call void @Perl_hv_magic(%struct.hv* %355, %struct.gv* null, i32 65)
  br label %if.end.593

if.end.593:                                       ; preds = %cond.end.586, %sw.bb.569
  br label %sw.epilog.702

sw.bb.594:                                        ; preds = %if.else.477
  %356 = load i8*, i8** %name2, align 8
  %call595 = call i32 @strcmp(i8* %356, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0))
  %tobool596 = icmp ne i32 %call595, 0
  br i1 %tobool596, label %if.end.648, label %if.then.597

if.then.597:                                      ; preds = %sw.bb.594
  %357 = load %struct.sv**, %struct.sv*** @PL_psig_ptr, align 8
  %tobool599 = icmp ne %struct.sv** %357, null
  br i1 %tobool599, label %if.end.604, label %if.then.600

if.then.600:                                      ; preds = %if.then.597
  %call601 = call i8* @Perl_safesysmalloc(i64 128)
  %358 = bitcast i8* %call601 to %struct.sv**
  store %struct.sv** %358, %struct.sv*** @PL_psig_ptr, align 8
  %359 = load %struct.sv**, %struct.sv*** @PL_psig_ptr, align 8
  %360 = bitcast %struct.sv** %359 to i8*
  call void @llvm.memset.p0i8.i64(i8* %360, i8 0, i64 128, i32 1, i1 false)
  %call602 = call i8* @Perl_safesysmalloc(i64 128)
  %361 = bitcast i8* %call602 to %struct.sv**
  store %struct.sv** %361, %struct.sv*** @PL_psig_name, align 8
  %362 = load %struct.sv**, %struct.sv*** @PL_psig_name, align 8
  %363 = bitcast %struct.sv** %362 to i8*
  call void @llvm.memset.p0i8.i64(i8* %363, i8 0, i64 128, i32 1, i1 false)
  %call603 = call i8* @Perl_safesysmalloc(i64 64)
  %364 = bitcast i8* %call603 to i32*
  store i32* %364, i32** @PL_psig_pend, align 8
  %365 = load i32*, i32** @PL_psig_pend, align 8
  %366 = bitcast i32* %365 to i8*
  call void @llvm.memset.p0i8.i64(i8* %366, i8 0, i64 64, i32 1, i1 false)
  br label %if.end.604

if.end.604:                                       ; preds = %if.then.600, %if.then.597
  %367 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any605 = getelementptr inbounds %struct.gv, %struct.gv* %367, i32 0, i32 0
  %368 = load %struct.xpvgv*, %struct.xpvgv** %sv_any605, align 8
  %xgv_flags606 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %368, i32 0, i32 11
  %369 = load i8, i8* %xgv_flags606, align 1
  %conv607 = zext i8 %369 to i32
  %or608 = or i32 %conv607, 2
  %conv609 = trunc i32 %or608 to i8
  store i8 %conv609, i8* %xgv_flags606, align 1
  %370 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any610 = getelementptr inbounds %struct.gv, %struct.gv* %370, i32 0, i32 0
  %371 = load %struct.xpvgv*, %struct.xpvgv** %sv_any610, align 8
  %xgv_gp611 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %371, i32 0, i32 7
  %372 = load %struct.gp*, %struct.gp** %xgv_gp611, align 8
  %gp_hv612 = getelementptr inbounds %struct.gp, %struct.gp* %372, i32 0, i32 5
  %373 = load %struct.hv*, %struct.hv** %gp_hv612, align 8
  %tobool613 = icmp ne %struct.hv* %373, null
  br i1 %tobool613, label %cond.true.614, label %cond.false.618

cond.true.614:                                    ; preds = %if.end.604
  %374 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any615 = getelementptr inbounds %struct.gv, %struct.gv* %374, i32 0, i32 0
  %375 = load %struct.xpvgv*, %struct.xpvgv** %sv_any615, align 8
  %xgv_gp616 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %375, i32 0, i32 7
  %376 = load %struct.gp*, %struct.gp** %xgv_gp616, align 8
  %gp_hv617 = getelementptr inbounds %struct.gp, %struct.gp* %376, i32 0, i32 5
  %377 = load %struct.hv*, %struct.hv** %gp_hv617, align 8
  br label %cond.end.623

cond.false.618:                                   ; preds = %if.end.604
  %378 = load %struct.gv*, %struct.gv** %gv, align 8
  %call619 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %378)
  %sv_any620 = getelementptr inbounds %struct.gv, %struct.gv* %call619, i32 0, i32 0
  %379 = load %struct.xpvgv*, %struct.xpvgv** %sv_any620, align 8
  %xgv_gp621 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %379, i32 0, i32 7
  %380 = load %struct.gp*, %struct.gp** %xgv_gp621, align 8
  %gp_hv622 = getelementptr inbounds %struct.gp, %struct.gp* %380, i32 0, i32 5
  %381 = load %struct.hv*, %struct.hv** %gp_hv622, align 8
  br label %cond.end.623

cond.end.623:                                     ; preds = %cond.false.618, %cond.true.614
  %cond624 = phi %struct.hv* [ %377, %cond.true.614 ], [ %381, %cond.false.618 ]
  store %struct.hv* %cond624, %struct.hv** %hv598, align 8
  %382 = load %struct.hv*, %struct.hv** %hv598, align 8
  call void @Perl_hv_magic(%struct.hv* %382, %struct.gv* null, i32 83)
  store i32 1, i32* %i, align 4
  br label %for.cond.625

for.cond.625:                                     ; preds = %for.inc.645, %cond.end.623
  %383 = load i32, i32* %i, align 4
  %cmp626 = icmp slt i32 %383, 16
  br i1 %cmp626, label %for.body.628, label %for.end.647

for.body.628:                                     ; preds = %for.cond.625
  %384 = load %struct.hv*, %struct.hv** %hv598, align 8
  %385 = load i32, i32* %i, align 4
  %idxprom629 = sext i32 %385 to i64
  %arrayidx630 = getelementptr inbounds [0 x i8*], [0 x i8*]* @PL_sig_name, i32 0, i64 %idxprom629
  %386 = load i8*, i8** %arrayidx630, align 8
  %387 = load i32, i32* %i, align 4
  %idxprom631 = sext i32 %387 to i64
  %arrayidx632 = getelementptr inbounds [0 x i8*], [0 x i8*]* @PL_sig_name, i32 0, i64 %idxprom631
  %388 = load i8*, i8** %arrayidx632, align 8
  %call633 = call i64 @strlen(i8* %388)
  %conv634 = trunc i64 %call633 to i32
  %call635 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %384, i8* %386, i32 %conv634, i32 1)
  store %struct.sv** %call635, %struct.sv*** %init, align 8
  %389 = load %struct.sv**, %struct.sv*** %init, align 8
  %tobool636 = icmp ne %struct.sv** %389, null
  br i1 %tobool636, label %if.then.637, label %if.end.638

if.then.637:                                      ; preds = %for.body.628
  %390 = load %struct.sv**, %struct.sv*** %init, align 8
  %391 = load %struct.sv*, %struct.sv** %390, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %391, %struct.sv* @PL_sv_undef, i32 2)
  br label %if.end.638

if.end.638:                                       ; preds = %if.then.637, %for.body.628
  %392 = load i32, i32* %i, align 4
  %idxprom639 = sext i32 %392 to i64
  %393 = load %struct.sv**, %struct.sv*** @PL_psig_ptr, align 8
  %arrayidx640 = getelementptr inbounds %struct.sv*, %struct.sv** %393, i64 %idxprom639
  store %struct.sv* null, %struct.sv** %arrayidx640, align 8
  %394 = load i32, i32* %i, align 4
  %idxprom641 = sext i32 %394 to i64
  %395 = load %struct.sv**, %struct.sv*** @PL_psig_name, align 8
  %arrayidx642 = getelementptr inbounds %struct.sv*, %struct.sv** %395, i64 %idxprom641
  store %struct.sv* null, %struct.sv** %arrayidx642, align 8
  %396 = load i32, i32* %i, align 4
  %idxprom643 = sext i32 %396 to i64
  %397 = load i32*, i32** @PL_psig_pend, align 8
  %arrayidx644 = getelementptr inbounds i32, i32* %397, i64 %idxprom643
  store i32 0, i32* %arrayidx644, align 4
  br label %for.inc.645

for.inc.645:                                      ; preds = %if.end.638
  %398 = load i32, i32* %i, align 4
  %inc646 = add nsw i32 %398, 1
  store i32 %inc646, i32* %i, align 4
  br label %for.cond.625

for.end.647:                                      ; preds = %for.cond.625
  br label %if.end.648

if.end.648:                                       ; preds = %for.end.647, %sw.bb.594
  br label %sw.epilog.702

sw.bb.649:                                        ; preds = %if.else.477
  %399 = load i8*, i8** %name2, align 8
  %call650 = call i32 @strcmp(i8* %399, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0))
  %tobool651 = icmp ne i32 %call650, 0
  br i1 %tobool651, label %if.end.658, label %if.then.652

if.then.652:                                      ; preds = %sw.bb.649
  %400 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any653 = getelementptr inbounds %struct.gv, %struct.gv* %400, i32 0, i32 0
  %401 = load %struct.xpvgv*, %struct.xpvgv** %sv_any653, align 8
  %xgv_flags654 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %401, i32 0, i32 11
  %402 = load i8, i8* %xgv_flags654, align 1
  %conv655 = zext i8 %402 to i32
  %or656 = or i32 %conv655, 2
  %conv657 = trunc i32 %or656 to i8
  store i8 %conv657, i8* %xgv_flags654, align 1
  br label %if.end.658

if.end.658:                                       ; preds = %if.then.652, %sw.bb.649
  br label %sw.epilog.702

sw.bb.659:                                        ; preds = %if.else.477
  %403 = load i8*, i8** %name2, align 8
  %call660 = call i32 @strcmp(i8* %403, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0))
  %tobool661 = icmp ne i32 %call660, 0
  br i1 %tobool661, label %if.end.663, label %if.then.662

if.then.662:                                      ; preds = %sw.bb.659
  br label %magicalize

if.end.663:                                       ; preds = %sw.bb.659
  br label %sw.epilog.702

sw.bb.664:                                        ; preds = %if.else.477
  %404 = load i8*, i8** %name2, align 8
  %call665 = call i32 @strcmp(i8* %404, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0))
  %tobool666 = icmp ne i32 %call665, 0
  br i1 %tobool666, label %if.end.668, label %if.then.667

if.then.667:                                      ; preds = %sw.bb.664
  br label %magicalize

if.end.668:                                       ; preds = %sw.bb.664
  br label %sw.epilog.702

sw.bb.669:                                        ; preds = %if.else.477
  %405 = load i8*, i8** %name2, align 8
  %call670 = call i32 @strcmp(i8* %405, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0))
  %tobool671 = icmp ne i32 %call670, 0
  br i1 %tobool671, label %if.end.673, label %if.then.672

if.then.672:                                      ; preds = %sw.bb.669
  br label %ro_magicalize

if.end.673:                                       ; preds = %sw.bb.669
  br label %sw.epilog.702

sw.bb.674:                                        ; preds = %if.else.477
  %406 = load i8*, i8** %name2, align 8
  %call675 = call i32 @strcmp(i8* %406, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0))
  %tobool676 = icmp ne i32 %call675, 0
  br i1 %tobool676, label %if.end.678, label %if.then.677

if.then.677:                                      ; preds = %sw.bb.674
  br label %ro_magicalize

if.end.678:                                       ; preds = %sw.bb.674
  %407 = load i8*, i8** %name2, align 8
  %call679 = call i32 @strcmp(i8* %407, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0))
  %tobool680 = icmp ne i32 %call679, 0
  br i1 %tobool680, label %if.end.682, label %if.then.681

if.then.681:                                      ; preds = %if.end.678
  br label %ro_magicalize

if.end.682:                                       ; preds = %if.end.678
  br label %sw.epilog.702

sw.bb.683:                                        ; preds = %if.else.477
  %408 = load i8*, i8** %name2, align 8
  %call684 = call i32 @strcmp(i8* %408, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0))
  %tobool685 = icmp ne i32 %call684, 0
  br i1 %tobool685, label %if.end.687, label %if.then.686

if.then.686:                                      ; preds = %sw.bb.683
  br label %magicalize

if.end.687:                                       ; preds = %sw.bb.683
  br label %sw.epilog.702

sw.bb.688:                                        ; preds = %if.else.477, %if.else.477, %if.else.477, %if.else.477, %if.else.477, %if.else.477, %if.else.477, %if.else.477, %if.else.477
  %409 = load i8*, i8** %name, align 8
  %410 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %410 to i64
  %add.ptr689 = getelementptr inbounds i8, i8* %409, i64 %idx.ext
  store i8* %add.ptr689, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.701, %sw.bb.688
  %411 = load i8*, i8** %end, align 8
  %incdec.ptr690 = getelementptr inbounds i8, i8* %411, i32 -1
  store i8* %incdec.ptr690, i8** %end, align 8
  %412 = load i8*, i8** %name, align 8
  %cmp691 = icmp ugt i8* %incdec.ptr690, %412
  br i1 %cmp691, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %413 = load i8*, i8** %end, align 8
  %414 = load i8, i8* %413, align 1
  %conv693 = sext i8 %414 to i32
  %cmp694 = icmp sge i32 %conv693, 48
  br i1 %cmp694, label %land.lhs.true.696, label %if.then.700

land.lhs.true.696:                                ; preds = %while.body
  %415 = load i8*, i8** %end, align 8
  %416 = load i8, i8* %415, align 1
  %conv697 = sext i8 %416 to i32
  %cmp698 = icmp sle i32 %conv697, 57
  br i1 %cmp698, label %if.end.701, label %if.then.700

if.then.700:                                      ; preds = %land.lhs.true.696, %while.body
  %417 = load %struct.gv*, %struct.gv** %gv, align 8
  store %struct.gv* %417, %struct.gv** %retval
  br label %return

if.end.701:                                       ; preds = %land.lhs.true.696
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %ro_magicalize

sw.epilog.702:                                    ; preds = %if.else.477, %if.end.687, %if.end.682, %if.end.673, %if.end.668, %if.end.663, %if.end.658, %if.end.648, %if.end.593, %if.end.568, %if.end.523, %if.end.513
  br label %if.end.703

if.end.703:                                       ; preds = %sw.epilog.702, %if.then.476
  br label %if.end.883

if.else.704:                                      ; preds = %if.end.469
  %418 = load i8*, i8** %name, align 8
  %419 = load i8, i8* %418, align 1
  %conv705 = sext i8 %419 to i32
  switch i32 %conv705, label %sw.epilog.882 [
    i32 38, label %sw.bb.706
    i32 96, label %sw.bb.706
    i32 39, label %sw.bb.706
    i32 58, label %sw.bb.723
    i32 63, label %sw.bb.726
    i32 33, label %sw.bb.727
    i32 45, label %sw.bb.735
    i32 35, label %sw.bb.754
    i32 42, label %sw.bb.754
    i32 124, label %sw.bb.795
    i32 43, label %sw.bb.810
    i32 19, label %sw.bb.829
    i32 49, label %sw.bb.829
    i32 50, label %sw.bb.829
    i32 51, label %sw.bb.829
    i32 52, label %sw.bb.829
    i32 53, label %sw.bb.829
    i32 54, label %sw.bb.829
    i32 55, label %sw.bb.829
    i32 56, label %sw.bb.829
    i32 57, label %sw.bb.829
    i32 91, label %sw.bb.835
    i32 94, label %sw.bb.835
    i32 126, label %sw.bb.835
    i32 61, label %sw.bb.835
    i32 37, label %sw.bb.835
    i32 46, label %sw.bb.835
    i32 40, label %sw.bb.835
    i32 41, label %sw.bb.835
    i32 60, label %sw.bb.835
    i32 62, label %sw.bb.835
    i32 44, label %sw.bb.835
    i32 92, label %sw.bb.835
    i32 47, label %sw.bb.835
    i32 1, label %sw.bb.835
    i32 3, label %sw.bb.835
    i32 4, label %sw.bb.835
    i32 5, label %sw.bb.835
    i32 6, label %sw.bb.835
    i32 8, label %sw.bb.835
    i32 9, label %sw.bb.835
    i32 14, label %sw.bb.835
    i32 15, label %sw.bb.835
    i32 16, label %sw.bb.835
    i32 20, label %sw.bb.835
    i32 23, label %sw.bb.835
    i32 12, label %sw.bb.839
    i32 59, label %sw.bb.846
    i32 93, label %sw.bb.850
    i32 22, label %sw.bb.870
  ]

sw.bb.706:                                        ; preds = %if.else.704, %if.else.704, %if.else.704
  %420 = load i32, i32* %sv_type.addr, align 4
  %cmp707 = icmp eq i32 %420, 10
  br i1 %cmp707, label %if.then.721, label %lor.lhs.false.709

lor.lhs.false.709:                                ; preds = %sw.bb.706
  %421 = load i32, i32* %sv_type.addr, align 4
  %cmp710 = icmp eq i32 %421, 11
  br i1 %cmp710, label %if.then.721, label %lor.lhs.false.712

lor.lhs.false.712:                                ; preds = %lor.lhs.false.709
  %422 = load i32, i32* %sv_type.addr, align 4
  %cmp713 = icmp eq i32 %422, 12
  br i1 %cmp713, label %if.then.721, label %lor.lhs.false.715

lor.lhs.false.715:                                ; preds = %lor.lhs.false.712
  %423 = load i32, i32* %sv_type.addr, align 4
  %cmp716 = icmp eq i32 %423, 14
  br i1 %cmp716, label %if.then.721, label %lor.lhs.false.718

lor.lhs.false.718:                                ; preds = %lor.lhs.false.715
  %424 = load i32, i32* %sv_type.addr, align 4
  %cmp719 = icmp eq i32 %424, 15
  br i1 %cmp719, label %if.then.721, label %if.end.722

if.then.721:                                      ; preds = %lor.lhs.false.718, %lor.lhs.false.715, %lor.lhs.false.712, %lor.lhs.false.709, %sw.bb.706
  br label %sw.epilog.882

if.end.722:                                       ; preds = %lor.lhs.false.718
  store i8 1, i8* @PL_sawampersand, align 1
  br label %ro_magicalize

sw.bb.723:                                        ; preds = %if.else.704
  %425 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any724 = getelementptr inbounds %struct.gv, %struct.gv* %425, i32 0, i32 0
  %426 = load %struct.xpvgv*, %struct.xpvgv** %sv_any724, align 8
  %xgv_gp725 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %426, i32 0, i32 7
  %427 = load %struct.gp*, %struct.gp** %xgv_gp725, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %427, i32 0, i32 0
  %428 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %429 = load i8*, i8** @PL_chopset, align 8
  call void @Perl_sv_setpv(%struct.sv* %428, i8* %429)
  br label %magicalize

sw.bb.726:                                        ; preds = %if.else.704
  br label %magicalize

sw.bb.727:                                        ; preds = %if.else.704
  %430 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any728 = getelementptr inbounds %struct.gv, %struct.gv* %430, i32 0, i32 0
  %431 = load %struct.xpvgv*, %struct.xpvgv** %sv_any728, align 8
  %xgv_gp729 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %431, i32 0, i32 7
  %432 = load %struct.gp*, %struct.gp** %xgv_gp729, align 8
  %gp_sv730 = getelementptr inbounds %struct.gp, %struct.gp* %432, i32 0, i32 0
  %433 = load %struct.sv*, %struct.sv** %gp_sv730, align 8
  %434 = load %struct.gv*, %struct.gv** %gv, align 8
  %435 = bitcast %struct.gv* %434 to %struct.sv*
  %436 = load i8*, i8** %name, align 8
  %437 = load i32, i32* %len, align 4
  call void @Perl_sv_magic(%struct.sv* %433, %struct.sv* %435, i32 0, i8* %436, i32 %437)
  %438 = load i32, i32* %sv_type.addr, align 4
  %cmp731 = icmp eq i32 %438, 11
  br i1 %cmp731, label %if.then.733, label %if.end.734

if.then.733:                                      ; preds = %sw.bb.727
  %439 = load %struct.gv*, %struct.gv** %gv, align 8
  call void @S_require_errno(%struct.gv* %439)
  br label %if.end.734

if.end.734:                                       ; preds = %if.then.733, %sw.bb.727
  br label %sw.epilog.882

sw.bb.735:                                        ; preds = %if.else.704
  %440 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any737 = getelementptr inbounds %struct.gv, %struct.gv* %440, i32 0, i32 0
  %441 = load %struct.xpvgv*, %struct.xpvgv** %sv_any737, align 8
  %xgv_gp738 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %441, i32 0, i32 7
  %442 = load %struct.gp*, %struct.gp** %xgv_gp738, align 8
  %gp_av739 = getelementptr inbounds %struct.gp, %struct.gp* %442, i32 0, i32 4
  %443 = load %struct.av*, %struct.av** %gp_av739, align 8
  %tobool740 = icmp ne %struct.av* %443, null
  br i1 %tobool740, label %cond.true.741, label %cond.false.745

cond.true.741:                                    ; preds = %sw.bb.735
  %444 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any742 = getelementptr inbounds %struct.gv, %struct.gv* %444, i32 0, i32 0
  %445 = load %struct.xpvgv*, %struct.xpvgv** %sv_any742, align 8
  %xgv_gp743 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %445, i32 0, i32 7
  %446 = load %struct.gp*, %struct.gp** %xgv_gp743, align 8
  %gp_av744 = getelementptr inbounds %struct.gp, %struct.gp* %446, i32 0, i32 4
  %447 = load %struct.av*, %struct.av** %gp_av744, align 8
  br label %cond.end.750

cond.false.745:                                   ; preds = %sw.bb.735
  %448 = load %struct.gv*, %struct.gv** %gv, align 8
  %call746 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %448)
  %sv_any747 = getelementptr inbounds %struct.gv, %struct.gv* %call746, i32 0, i32 0
  %449 = load %struct.xpvgv*, %struct.xpvgv** %sv_any747, align 8
  %xgv_gp748 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %449, i32 0, i32 7
  %450 = load %struct.gp*, %struct.gp** %xgv_gp748, align 8
  %gp_av749 = getelementptr inbounds %struct.gp, %struct.gp* %450, i32 0, i32 4
  %451 = load %struct.av*, %struct.av** %gp_av749, align 8
  br label %cond.end.750

cond.end.750:                                     ; preds = %cond.false.745, %cond.true.741
  %cond751 = phi %struct.av* [ %447, %cond.true.741 ], [ %451, %cond.false.745 ]
  store %struct.av* %cond751, %struct.av** %av736, align 8
  %452 = load %struct.av*, %struct.av** %av736, align 8
  %453 = bitcast %struct.av* %452 to %struct.sv*
  call void @Perl_sv_magic(%struct.sv* %453, %struct.sv* null, i32 68, i8* null, i32 0)
  %454 = load %struct.av*, %struct.av** %av736, align 8
  %sv_flags752 = getelementptr inbounds %struct.av, %struct.av* %454, i32 0, i32 2
  %455 = load i32, i32* %sv_flags752, align 4
  %or753 = or i32 %455, 8388608
  store i32 %or753, i32* %sv_flags752, align 4
  br label %magicalize

sw.bb.754:                                        ; preds = %if.else.704, %if.else.704
  %456 = load i32, i32* %sv_type.addr, align 4
  %cmp755 = icmp eq i32 %456, 4
  br i1 %cmp755, label %land.lhs.true.757, label %if.end.794

land.lhs.true.757:                                ; preds = %sw.bb.754
  %457 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings758 = getelementptr inbounds %struct.cop, %struct.cop* %457, i32 0, i32 14
  %458 = load %struct.sv*, %struct.sv** %cop_warnings758, align 8
  %cmp759 = icmp ne %struct.sv* %458, null
  br i1 %cmp759, label %land.lhs.true.761, label %lor.lhs.false.785

land.lhs.true.761:                                ; preds = %land.lhs.true.757
  %459 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings762 = getelementptr inbounds %struct.cop, %struct.cop* %459, i32 0, i32 14
  %460 = load %struct.sv*, %struct.sv** %cop_warnings762, align 8
  %cmp763 = icmp ne %struct.sv* %460, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp763, label %land.lhs.true.765, label %lor.lhs.false.785

land.lhs.true.765:                                ; preds = %land.lhs.true.761
  %461 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings766 = getelementptr inbounds %struct.cop, %struct.cop* %461, i32 0, i32 14
  %462 = load %struct.sv*, %struct.sv** %cop_warnings766, align 8
  %cmp767 = icmp eq %struct.sv* %462, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp767, label %if.then.793, label %lor.lhs.false.769

lor.lhs.false.769:                                ; preds = %land.lhs.true.765
  %463 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings770 = getelementptr inbounds %struct.cop, %struct.cop* %463, i32 0, i32 14
  %464 = load %struct.sv*, %struct.sv** %cop_warnings770, align 8
  %sv_any771 = getelementptr inbounds %struct.sv, %struct.sv* %464, i32 0, i32 0
  %465 = load i8*, i8** %sv_any771, align 8
  %466 = bitcast i8* %465 to %struct.xpv*
  %xpv_pv772 = getelementptr inbounds %struct.xpv, %struct.xpv* %466, i32 0, i32 0
  %467 = load i8*, i8** %xpv_pv772, align 8
  %arrayidx773 = getelementptr inbounds i8, i8* %467, i64 0
  %468 = load i8, i8* %arrayidx773, align 1
  %conv774 = sext i8 %468 to i32
  %and775 = and i32 %conv774, 16
  %tobool776 = icmp ne i32 %and775, 0
  br i1 %tobool776, label %if.then.793, label %lor.lhs.false.777

lor.lhs.false.777:                                ; preds = %lor.lhs.false.769
  %469 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings778 = getelementptr inbounds %struct.cop, %struct.cop* %469, i32 0, i32 14
  %470 = load %struct.sv*, %struct.sv** %cop_warnings778, align 8
  %sv_any779 = getelementptr inbounds %struct.sv, %struct.sv* %470, i32 0, i32 0
  %471 = load i8*, i8** %sv_any779, align 8
  %472 = bitcast i8* %471 to %struct.xpv*
  %xpv_pv780 = getelementptr inbounds %struct.xpv, %struct.xpv* %472, i32 0, i32 0
  %473 = load i8*, i8** %xpv_pv780, align 8
  %arrayidx781 = getelementptr inbounds i8, i8* %473, i64 7
  %474 = load i8, i8* %arrayidx781, align 1
  %conv782 = sext i8 %474 to i32
  %and783 = and i32 %conv782, 1
  %tobool784 = icmp ne i32 %and783, 0
  br i1 %tobool784, label %if.then.793, label %lor.lhs.false.785

lor.lhs.false.785:                                ; preds = %lor.lhs.false.777, %land.lhs.true.761, %land.lhs.true.757
  %475 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings786 = getelementptr inbounds %struct.cop, %struct.cop* %475, i32 0, i32 14
  %476 = load %struct.sv*, %struct.sv** %cop_warnings786, align 8
  %cmp787 = icmp eq %struct.sv* %476, null
  br i1 %cmp787, label %land.lhs.true.789, label %if.end.794

land.lhs.true.789:                                ; preds = %lor.lhs.false.785
  %477 = load i8, i8* @PL_dowarn, align 1
  %conv790 = zext i8 %477 to i32
  %and791 = and i32 %conv790, 1
  %tobool792 = icmp ne i32 %and791, 0
  br i1 %tobool792, label %if.then.793, label %if.end.794

if.then.793:                                      ; preds = %land.lhs.true.789, %lor.lhs.false.777, %lor.lhs.false.769, %land.lhs.true.765
  %478 = load i8*, i8** %name, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 7170, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i32 0, i32 0), i8* %478)
  br label %if.end.794

if.end.794:                                       ; preds = %if.then.793, %land.lhs.true.789, %lor.lhs.false.785, %sw.bb.754
  br label %magicalize

sw.bb.795:                                        ; preds = %if.else.704
  %479 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any796 = getelementptr inbounds %struct.gv, %struct.gv* %479, i32 0, i32 0
  %480 = load %struct.xpvgv*, %struct.xpvgv** %sv_any796, align 8
  %xgv_gp797 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %480, i32 0, i32 7
  %481 = load %struct.gp*, %struct.gp** %xgv_gp797, align 8
  %gp_sv798 = getelementptr inbounds %struct.gp, %struct.gp* %481, i32 0, i32 0
  %482 = load %struct.sv*, %struct.sv** %gp_sv798, align 8
  %483 = load %struct.gv*, %struct.gv** @PL_defoutgv, align 8
  %sv_any799 = getelementptr inbounds %struct.gv, %struct.gv* %483, i32 0, i32 0
  %484 = load %struct.xpvgv*, %struct.xpvgv** %sv_any799, align 8
  %xgv_gp800 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %484, i32 0, i32 7
  %485 = load %struct.gp*, %struct.gp** %xgv_gp800, align 8
  %gp_io801 = getelementptr inbounds %struct.gp, %struct.gp* %485, i32 0, i32 2
  %486 = load %struct.io*, %struct.io** %gp_io801, align 8
  %sv_any802 = getelementptr inbounds %struct.io, %struct.io* %486, i32 0, i32 0
  %487 = load %struct.xpvio*, %struct.xpvio** %sv_any802, align 8
  %xio_flags803 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %487, i32 0, i32 22
  %488 = load i8, i8* %xio_flags803, align 1
  %conv804 = sext i8 %488 to i32
  %and805 = and i32 %conv804, 4
  %conv806 = sext i32 %and805 to i64
  %cmp807 = icmp ne i64 %conv806, 0
  %conv808 = zext i1 %cmp807 to i32
  %conv809 = sext i32 %conv808 to i64
  call void @Perl_sv_setiv(%struct.sv* %482, i64 %conv809)
  br label %magicalize

sw.bb.810:                                        ; preds = %if.else.704
  %489 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any812 = getelementptr inbounds %struct.gv, %struct.gv* %489, i32 0, i32 0
  %490 = load %struct.xpvgv*, %struct.xpvgv** %sv_any812, align 8
  %xgv_gp813 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %490, i32 0, i32 7
  %491 = load %struct.gp*, %struct.gp** %xgv_gp813, align 8
  %gp_av814 = getelementptr inbounds %struct.gp, %struct.gp* %491, i32 0, i32 4
  %492 = load %struct.av*, %struct.av** %gp_av814, align 8
  %tobool815 = icmp ne %struct.av* %492, null
  br i1 %tobool815, label %cond.true.816, label %cond.false.820

cond.true.816:                                    ; preds = %sw.bb.810
  %493 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any817 = getelementptr inbounds %struct.gv, %struct.gv* %493, i32 0, i32 0
  %494 = load %struct.xpvgv*, %struct.xpvgv** %sv_any817, align 8
  %xgv_gp818 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %494, i32 0, i32 7
  %495 = load %struct.gp*, %struct.gp** %xgv_gp818, align 8
  %gp_av819 = getelementptr inbounds %struct.gp, %struct.gp* %495, i32 0, i32 4
  %496 = load %struct.av*, %struct.av** %gp_av819, align 8
  br label %cond.end.825

cond.false.820:                                   ; preds = %sw.bb.810
  %497 = load %struct.gv*, %struct.gv** %gv, align 8
  %call821 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %497)
  %sv_any822 = getelementptr inbounds %struct.gv, %struct.gv* %call821, i32 0, i32 0
  %498 = load %struct.xpvgv*, %struct.xpvgv** %sv_any822, align 8
  %xgv_gp823 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %498, i32 0, i32 7
  %499 = load %struct.gp*, %struct.gp** %xgv_gp823, align 8
  %gp_av824 = getelementptr inbounds %struct.gp, %struct.gp* %499, i32 0, i32 4
  %500 = load %struct.av*, %struct.av** %gp_av824, align 8
  br label %cond.end.825

cond.end.825:                                     ; preds = %cond.false.820, %cond.true.816
  %cond826 = phi %struct.av* [ %496, %cond.true.816 ], [ %500, %cond.false.820 ]
  store %struct.av* %cond826, %struct.av** %av811, align 8
  %501 = load %struct.av*, %struct.av** %av811, align 8
  %502 = bitcast %struct.av* %501 to %struct.sv*
  %503 = load %struct.av*, %struct.av** %av811, align 8
  %504 = bitcast %struct.av* %503 to %struct.sv*
  call void @Perl_sv_magic(%struct.sv* %502, %struct.sv* %504, i32 68, i8* null, i32 0)
  %505 = load %struct.av*, %struct.av** %av811, align 8
  %sv_flags827 = getelementptr inbounds %struct.av, %struct.av* %505, i32 0, i32 2
  %506 = load i32, i32* %sv_flags827, align 4
  %or828 = or i32 %506, 8388608
  store i32 %or828, i32* %sv_flags827, align 4
  br label %sw.bb.829

sw.bb.829:                                        ; preds = %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %cond.end.825
  br label %ro_magicalize

ro_magicalize:                                    ; preds = %sw.bb.829, %if.end.722, %while.end, %if.then.681, %if.then.677, %if.then.672
  %507 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any830 = getelementptr inbounds %struct.gv, %struct.gv* %507, i32 0, i32 0
  %508 = load %struct.xpvgv*, %struct.xpvgv** %sv_any830, align 8
  %xgv_gp831 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %508, i32 0, i32 7
  %509 = load %struct.gp*, %struct.gp** %xgv_gp831, align 8
  %gp_sv832 = getelementptr inbounds %struct.gp, %struct.gp* %509, i32 0, i32 0
  %510 = load %struct.sv*, %struct.sv** %gp_sv832, align 8
  %sv_flags833 = getelementptr inbounds %struct.sv, %struct.sv* %510, i32 0, i32 2
  %511 = load i32, i32* %sv_flags833, align 4
  %or834 = or i32 %511, 8388608
  store i32 %or834, i32* %sv_flags833, align 4
  br label %sw.bb.835

sw.bb.835:                                        ; preds = %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %if.else.704, %ro_magicalize
  br label %magicalize

magicalize:                                       ; preds = %sw.bb.835, %sw.bb.795, %if.end.794, %cond.end.750, %sw.bb.726, %sw.bb.723, %if.then.686, %if.then.667, %if.then.662
  %512 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any836 = getelementptr inbounds %struct.gv, %struct.gv* %512, i32 0, i32 0
  %513 = load %struct.xpvgv*, %struct.xpvgv** %sv_any836, align 8
  %xgv_gp837 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %513, i32 0, i32 7
  %514 = load %struct.gp*, %struct.gp** %xgv_gp837, align 8
  %gp_sv838 = getelementptr inbounds %struct.gp, %struct.gp* %514, i32 0, i32 0
  %515 = load %struct.sv*, %struct.sv** %gp_sv838, align 8
  %516 = load %struct.gv*, %struct.gv** %gv, align 8
  %517 = bitcast %struct.gv* %516 to %struct.sv*
  %518 = load i8*, i8** %name, align 8
  %519 = load i32, i32* %len, align 4
  call void @Perl_sv_magic(%struct.sv* %515, %struct.sv* %517, i32 0, i8* %518, i32 %519)
  br label %sw.epilog.882

sw.bb.839:                                        ; preds = %if.else.704
  %520 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any840 = getelementptr inbounds %struct.gv, %struct.gv* %520, i32 0, i32 0
  %521 = load %struct.xpvgv*, %struct.xpvgv** %sv_any840, align 8
  %xgv_gp841 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %521, i32 0, i32 7
  %522 = load %struct.gp*, %struct.gp** %xgv_gp841, align 8
  %gp_sv842 = getelementptr inbounds %struct.gp, %struct.gp* %522, i32 0, i32 0
  %523 = load %struct.sv*, %struct.sv** %gp_sv842, align 8
  call void @Perl_sv_setpv(%struct.sv* %523, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0))
  %524 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any843 = getelementptr inbounds %struct.gv, %struct.gv* %524, i32 0, i32 0
  %525 = load %struct.xpvgv*, %struct.xpvgv** %sv_any843, align 8
  %xgv_gp844 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %525, i32 0, i32 7
  %526 = load %struct.gp*, %struct.gp** %xgv_gp844, align 8
  %gp_sv845 = getelementptr inbounds %struct.gp, %struct.gp* %526, i32 0, i32 0
  %527 = load %struct.sv*, %struct.sv** %gp_sv845, align 8
  store %struct.sv* %527, %struct.sv** @PL_formfeed, align 8
  br label %sw.epilog.882

sw.bb.846:                                        ; preds = %if.else.704
  %528 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any847 = getelementptr inbounds %struct.gv, %struct.gv* %528, i32 0, i32 0
  %529 = load %struct.xpvgv*, %struct.xpvgv** %sv_any847, align 8
  %xgv_gp848 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %529, i32 0, i32 7
  %530 = load %struct.gp*, %struct.gp** %xgv_gp848, align 8
  %gp_sv849 = getelementptr inbounds %struct.gp, %struct.gp* %530, i32 0, i32 0
  %531 = load %struct.sv*, %struct.sv** %gp_sv849, align 8
  call void @Perl_sv_setpv(%struct.sv* %531, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0))
  br label %sw.epilog.882

sw.bb.850:                                        ; preds = %if.else.704
  %532 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any851 = getelementptr inbounds %struct.gv, %struct.gv* %532, i32 0, i32 0
  %533 = load %struct.xpvgv*, %struct.xpvgv** %sv_any851, align 8
  %xgv_gp852 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %533, i32 0, i32 7
  %534 = load %struct.gp*, %struct.gp** %xgv_gp852, align 8
  %gp_sv853 = getelementptr inbounds %struct.gp, %struct.gp* %534, i32 0, i32 0
  %535 = load %struct.sv*, %struct.sv** %gp_sv853, align 8
  store %struct.sv* %535, %struct.sv** %sv, align 8
  %536 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags854 = getelementptr inbounds %struct.sv, %struct.sv* %536, i32 0, i32 2
  %537 = load i32, i32* %sv_flags854, align 4
  %and855 = and i32 %537, 255
  %cmp856 = icmp uge i32 %and855, 6
  br i1 %cmp856, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb.850
  %538 = load %struct.sv*, %struct.sv** %sv, align 8
  %call858 = call signext i8 @Perl_sv_upgrade(%struct.sv* %538, i32 6)
  %conv859 = sext i8 %call858 to i32
  %tobool860 = icmp ne i32 %conv859, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb.850
  %539 = phi i1 [ true, %sw.bb.850 ], [ %tobool860, %lor.rhs ]
  %lor.ext = zext i1 %539 to i32
  %540 = load %struct.sv*, %struct.sv** %sv, align 8
  %541 = load %struct.sv*, %struct.sv** @PL_patchlevel, align 8
  %sv_any861 = getelementptr inbounds %struct.sv, %struct.sv* %541, i32 0, i32 0
  %542 = load i8*, i8** %sv_any861, align 8
  %543 = bitcast i8* %542 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %543, i32 0, i32 4
  %544 = load double, double* %xnv_nv, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_setpvf(%struct.sv* %540, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), double %544)
  %545 = load %struct.sv*, %struct.sv** @PL_patchlevel, align 8
  %sv_any862 = getelementptr inbounds %struct.sv, %struct.sv* %545, i32 0, i32 0
  %546 = load i8*, i8** %sv_any862, align 8
  %547 = bitcast i8* %546 to %struct.xpvnv*
  %xnv_nv863 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %547, i32 0, i32 4
  %548 = load double, double* %xnv_nv863, align 8
  %549 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any864 = getelementptr inbounds %struct.sv, %struct.sv* %549, i32 0, i32 0
  %550 = load i8*, i8** %sv_any864, align 8
  %551 = bitcast i8* %550 to %struct.xpvnv*
  %xnv_nv865 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %551, i32 0, i32 4
  store double %548, double* %xnv_nv865, align 8
  %552 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags866 = getelementptr inbounds %struct.sv, %struct.sv* %552, i32 0, i32 2
  %553 = load i32, i32* %sv_flags866, align 4
  %or867 = or i32 %553, 33685504
  store i32 %or867, i32* %sv_flags866, align 4
  %554 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags868 = getelementptr inbounds %struct.sv, %struct.sv* %554, i32 0, i32 2
  %555 = load i32, i32* %sv_flags868, align 4
  %or869 = or i32 %555, 8388608
  store i32 %or869, i32* %sv_flags868, align 4
  br label %sw.epilog.882

sw.bb.870:                                        ; preds = %if.else.704
  %556 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any872 = getelementptr inbounds %struct.gv, %struct.gv* %556, i32 0, i32 0
  %557 = load %struct.xpvgv*, %struct.xpvgv** %sv_any872, align 8
  %xgv_gp873 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %557, i32 0, i32 7
  %558 = load %struct.gp*, %struct.gp** %xgv_gp873, align 8
  %gp_sv874 = getelementptr inbounds %struct.gp, %struct.gp* %558, i32 0, i32 0
  %559 = load %struct.sv*, %struct.sv** %gp_sv874, align 8
  store %struct.sv* %559, %struct.sv** %sv871, align 8
  %560 = load %struct.sv*, %struct.sv** @PL_patchlevel, align 8
  store %struct.sv* %560, %struct.sv** @PL_Sv, align 8
  %561 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool875 = icmp ne %struct.sv* %561, null
  br i1 %tobool875, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb.870
  %562 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt876 = getelementptr inbounds %struct.sv, %struct.sv* %562, i32 0, i32 1
  %563 = load i32, i32* %sv_refcnt876, align 4
  %inc877 = add i32 %563, 1
  store i32 %inc877, i32* %sv_refcnt876, align 4
  %tobool878 = icmp ne i32 %inc877, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb.870
  %564 = phi i1 [ false, %sw.bb.870 ], [ %tobool878, %land.rhs ]
  %land.ext = zext i1 %564 to i32
  %565 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %566 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any879 = getelementptr inbounds %struct.gv, %struct.gv* %566, i32 0, i32 0
  %567 = load %struct.xpvgv*, %struct.xpvgv** %sv_any879, align 8
  %xgv_gp880 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %567, i32 0, i32 7
  %568 = load %struct.gp*, %struct.gp** %xgv_gp880, align 8
  %gp_sv881 = getelementptr inbounds %struct.gp, %struct.gp* %568, i32 0, i32 0
  store %struct.sv* %565, %struct.sv** %gp_sv881, align 8
  %569 = load %struct.sv*, %struct.sv** %sv871, align 8
  call void @Perl_sv_free(%struct.sv* %569)
  br label %sw.epilog.882

sw.epilog.882:                                    ; preds = %if.else.704, %land.end, %lor.end, %sw.bb.846, %sw.bb.839, %magicalize, %if.end.734, %if.then.721
  br label %if.end.883

if.end.883:                                       ; preds = %sw.epilog.882, %if.end.703
  %570 = load %struct.gv*, %struct.gv** %gv, align 8
  store %struct.gv* %570, %struct.gv** %retval
  br label %return

return:                                           ; preds = %if.end.883, %if.then.700, %if.then.381, %if.end.377, %if.then.352, %if.then.345, %if.else.340, %cond.end.125, %if.then.90, %if.then.42
  %571 = load %struct.gv*, %struct.gv** %retval
  ret %struct.gv* %571
}

declare i8* @Perl_savepv(i8*) #1

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

declare signext i8 @Perl_is_utf8_idcont(i8*) #1

declare signext i8 @Perl_is_utf8_digit(i8*) #1

declare void @Perl_warn(i8*, ...) #1

declare %struct.sv* @Perl_mess(i8*, ...) #1

declare void @Perl_qerror(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define internal void @S_gv_init_sv(%struct.gv* %gv, i32 %sv_type) #0 {
entry:
  %gv.addr = alloca %struct.gv*, align 8
  %sv_type.addr = alloca i32, align 4
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  store i32 %sv_type, i32* %sv_type.addr, align 4
  %0 = load i32, i32* %sv_type.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 10, label %sw.bb.14
    i32 11, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool = icmp ne %struct.gv* %1, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %sw.bb
  %2 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %3 = bitcast %struct.gv* %2 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and = and i32 %4, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true.1, label %cond.false

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %5 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %5, i32 0, i32 0
  %6 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %6, i32 0, i32 7
  %7 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool2 = icmp ne %struct.gp* %7, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.1
  %8 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any3 = getelementptr inbounds %struct.gv, %struct.gv* %8, i32 0, i32 0
  %9 = load %struct.xpvgv*, %struct.xpvgv** %sv_any3, align 8
  %xgv_gp4 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %9, i32 0, i32 7
  %10 = load %struct.gp*, %struct.gp** %xgv_gp4, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %10, i32 0, i32 2
  %11 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool5 = icmp ne %struct.io* %11, null
  br i1 %tobool5, label %cond.true.6, label %cond.false.10

cond.false:                                       ; preds = %land.lhs.true.1, %land.lhs.true, %sw.bb
  br i1 false, label %cond.true.6, label %cond.false.10

cond.true.6:                                      ; preds = %cond.false, %cond.true
  %12 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any7 = getelementptr inbounds %struct.gv, %struct.gv* %12, i32 0, i32 0
  %13 = load %struct.xpvgv*, %struct.xpvgv** %sv_any7, align 8
  %xgv_gp8 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %13, i32 0, i32 7
  %14 = load %struct.gp*, %struct.gp** %xgv_gp8, align 8
  %gp_io9 = getelementptr inbounds %struct.gp, %struct.gp* %14, i32 0, i32 2
  %15 = load %struct.io*, %struct.io** %gp_io9, align 8
  br label %cond.end

cond.false.10:                                    ; preds = %cond.false, %cond.true
  %16 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %call = call %struct.gv* @Perl_gv_IOadd(%struct.gv* %16)
  %sv_any11 = getelementptr inbounds %struct.gv, %struct.gv* %call, i32 0, i32 0
  %17 = load %struct.xpvgv*, %struct.xpvgv** %sv_any11, align 8
  %xgv_gp12 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %17, i32 0, i32 7
  %18 = load %struct.gp*, %struct.gp** %xgv_gp12, align 8
  %gp_io13 = getelementptr inbounds %struct.gp, %struct.gp* %18, i32 0, i32 2
  %19 = load %struct.io*, %struct.io** %gp_io13, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.10, %cond.true.6
  %cond = phi %struct.io* [ %15, %cond.true.6 ], [ %19, %cond.false.10 ]
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %20 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any15 = getelementptr inbounds %struct.gv, %struct.gv* %20, i32 0, i32 0
  %21 = load %struct.xpvgv*, %struct.xpvgv** %sv_any15, align 8
  %xgv_gp16 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %21, i32 0, i32 7
  %22 = load %struct.gp*, %struct.gp** %xgv_gp16, align 8
  %gp_av = getelementptr inbounds %struct.gp, %struct.gp* %22, i32 0, i32 4
  %23 = load %struct.av*, %struct.av** %gp_av, align 8
  %tobool17 = icmp ne %struct.av* %23, null
  br i1 %tobool17, label %cond.true.18, label %cond.false.22

cond.true.18:                                     ; preds = %sw.bb.14
  %24 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any19 = getelementptr inbounds %struct.gv, %struct.gv* %24, i32 0, i32 0
  %25 = load %struct.xpvgv*, %struct.xpvgv** %sv_any19, align 8
  %xgv_gp20 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %25, i32 0, i32 7
  %26 = load %struct.gp*, %struct.gp** %xgv_gp20, align 8
  %gp_av21 = getelementptr inbounds %struct.gp, %struct.gp* %26, i32 0, i32 4
  %27 = load %struct.av*, %struct.av** %gp_av21, align 8
  br label %cond.end.27

cond.false.22:                                    ; preds = %sw.bb.14
  %28 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %call23 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %28)
  %sv_any24 = getelementptr inbounds %struct.gv, %struct.gv* %call23, i32 0, i32 0
  %29 = load %struct.xpvgv*, %struct.xpvgv** %sv_any24, align 8
  %xgv_gp25 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %29, i32 0, i32 7
  %30 = load %struct.gp*, %struct.gp** %xgv_gp25, align 8
  %gp_av26 = getelementptr inbounds %struct.gp, %struct.gp* %30, i32 0, i32 4
  %31 = load %struct.av*, %struct.av** %gp_av26, align 8
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.22, %cond.true.18
  %cond28 = phi %struct.av* [ %27, %cond.true.18 ], [ %31, %cond.false.22 ]
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %32 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any30 = getelementptr inbounds %struct.gv, %struct.gv* %32, i32 0, i32 0
  %33 = load %struct.xpvgv*, %struct.xpvgv** %sv_any30, align 8
  %xgv_gp31 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %33, i32 0, i32 7
  %34 = load %struct.gp*, %struct.gp** %xgv_gp31, align 8
  %gp_hv = getelementptr inbounds %struct.gp, %struct.gp* %34, i32 0, i32 5
  %35 = load %struct.hv*, %struct.hv** %gp_hv, align 8
  %tobool32 = icmp ne %struct.hv* %35, null
  br i1 %tobool32, label %cond.true.33, label %cond.false.37

cond.true.33:                                     ; preds = %sw.bb.29
  %36 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any34 = getelementptr inbounds %struct.gv, %struct.gv* %36, i32 0, i32 0
  %37 = load %struct.xpvgv*, %struct.xpvgv** %sv_any34, align 8
  %xgv_gp35 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %37, i32 0, i32 7
  %38 = load %struct.gp*, %struct.gp** %xgv_gp35, align 8
  %gp_hv36 = getelementptr inbounds %struct.gp, %struct.gp* %38, i32 0, i32 5
  %39 = load %struct.hv*, %struct.hv** %gp_hv36, align 8
  br label %cond.end.42

cond.false.37:                                    ; preds = %sw.bb.29
  %40 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %call38 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %40)
  %sv_any39 = getelementptr inbounds %struct.gv, %struct.gv* %call38, i32 0, i32 0
  %41 = load %struct.xpvgv*, %struct.xpvgv** %sv_any39, align 8
  %xgv_gp40 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %41, i32 0, i32 7
  %42 = load %struct.gp*, %struct.gp** %xgv_gp40, align 8
  %gp_hv41 = getelementptr inbounds %struct.gp, %struct.gp* %42, i32 0, i32 5
  %43 = load %struct.hv*, %struct.hv** %gp_hv41, align 8
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.37, %cond.true.33
  %cond43 = phi %struct.hv* [ %39, %cond.true.33 ], [ %43, %cond.false.37 ]
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end.42, %cond.end.27, %cond.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @S_require_errno(%struct.gv* %gv) #0 {
entry:
  %gv.addr = alloca %struct.gv*, align 8
  %stash = alloca %struct.hv*, align 8
  %sp = alloca %struct.sv**, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  %call = call %struct.hv* @Perl_gv_stashpvn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0), i32 5, i32 0)
  store %struct.hv* %call, %struct.hv** %stash, align 8
  %0 = load %struct.hv*, %struct.hv** %stash, align 8
  %tobool = icmp ne %struct.hv* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.hv*, %struct.hv** %stash, align 8
  %call1 = call %struct.gv* @Perl_gv_fetchmethod(%struct.hv* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0))
  %tobool2 = icmp ne %struct.gv* %call1, null
  br i1 %tobool2, label %if.end.11, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %2, %struct.sv*** %sp, align 8
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %3, %struct.sv*** @PL_stack_sp, align 8
  call void @Perl_push_scope()
  %4 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %call3 = call %struct.sv* @Perl_save_scalar(%struct.gv* %4)
  %call4 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0), i64 5)
  call void (i32, %struct.sv*, %struct.sv*, ...) @Perl_load_module(i32 2, %struct.sv* %call4, %struct.sv* null)
  call void @Perl_pop_scope()
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %5, %struct.sv*** %sp, align 8
  %call5 = call %struct.hv* @Perl_gv_stashpvn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0), i32 5, i32 0)
  store %struct.hv* %call5, %struct.hv** %stash, align 8
  %6 = load %struct.hv*, %struct.hv** %stash, align 8
  %tobool6 = icmp ne %struct.hv* %6, null
  br i1 %tobool6, label %lor.lhs.false.7, label %if.then.10

lor.lhs.false.7:                                  ; preds = %if.then
  %7 = load %struct.hv*, %struct.hv** %stash, align 8
  %call8 = call %struct.gv* @Perl_gv_fetchmethod(%struct.hv* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0))
  %tobool9 = icmp ne %struct.gv* %call8, null
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %lor.lhs.false.7, %if.then
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.83, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.10, %lor.lhs.false.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %lor.lhs.false
  ret void
}

declare void @Perl_av_push(%struct.av*, %struct.sv*) #1

declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

declare void @Perl_sv_setiv(%struct.sv*, i64) #1

declare void @Perl_sv_setpvf(%struct.sv*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @Perl_gv_fullname4(%struct.sv* %sv, %struct.gv* %gv, i8* %prefix, i8 signext %keepmain) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %gv.addr = alloca %struct.gv*, align 8
  %prefix.addr = alloca i8*, align 8
  %keepmain.addr = alloca i8, align 1
  %name = alloca i8*, align 8
  %hv = alloca %struct.hv*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store i8 %keepmain, i8* %keepmain.addr, align 1
  %0 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %0, i32 0, i32 0
  %1 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_stash = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %1, i32 0, i32 10
  %2 = load %struct.hv*, %struct.hv** %xgv_stash, align 8
  store %struct.hv* %2, %struct.hv** %hv, align 8
  %3 = load %struct.hv*, %struct.hv** %hv, align 8
  %tobool = icmp ne %struct.hv* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags, align 4
  %and = and i32 %5, 1223753727
  store i32 %and, i32* %sv_flags, align 4
  %6 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 2
  %7 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %7, 2097152
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %8 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i32 @Perl_sv_backoff(%struct.sv* %8)
  %tobool4 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %9 = phi i1 [ false, %if.then ], [ %tobool4, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %11 = load i8*, i8** %prefix.addr, align 8
  %tobool5 = icmp ne i8* %11, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load i8*, i8** %prefix.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), %cond.false ]
  call void @Perl_sv_setpv(%struct.sv* %10, i8* %cond)
  %13 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_any6 = getelementptr inbounds %struct.hv, %struct.hv* %13, i32 0, i32 0
  %14 = load %struct.xpvhv*, %struct.xpvhv** %sv_any6, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %14, i32 0, i32 10
  %15 = load i8*, i8** %xhv_name, align 8
  store i8* %15, i8** %name, align 8
  %16 = load i8*, i8** %name, align 8
  %tobool7 = icmp ne i8* %16, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %cond.end
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i8** %name, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %cond.end
  %17 = load i8, i8* %keepmain.addr, align 1
  %conv = sext i8 %17 to i32
  %tobool10 = icmp ne i32 %conv, 0
  br i1 %tobool10, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %18 = load i8*, i8** %name, align 8
  %call11 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0))
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %if.end.9
  %19 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %20 = load i8*, i8** %name, align 8
  call void @Perl_sv_catpv(%struct.sv* %19, i8* %20)
  %21 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i64 2, i32 2)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %lor.lhs.false
  %22 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %23 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any15 = getelementptr inbounds %struct.gv, %struct.gv* %23, i32 0, i32 0
  %24 = load %struct.xpvgv*, %struct.xpvgv** %sv_any15, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %24, i32 0, i32 8
  %25 = load i8*, i8** %xgv_name, align 8
  %26 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any16 = getelementptr inbounds %struct.gv, %struct.gv* %26, i32 0, i32 0
  %27 = load %struct.xpvgv*, %struct.xpvgv** %sv_any16, align 8
  %xgv_namelen = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %27, i32 0, i32 9
  %28 = load i64, i64* %xgv_namelen, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %22, i8* %25, i64 %28, i32 2)
  br label %return

return:                                           ; preds = %if.end.14, %land.end
  ret void
}

declare i32 @Perl_sv_backoff(%struct.sv*) #1

declare void @Perl_sv_catpv(%struct.sv*, i8*) #1

; Function Attrs: nounwind uwtable
define void @Perl_gv_fullname3(%struct.sv* %sv, %struct.gv* %gv, i8* %prefix) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %gv.addr = alloca %struct.gv*, align 8
  %prefix.addr = alloca i8*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %1 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %2 = load i8*, i8** %prefix.addr, align 8
  call void @Perl_gv_fullname4(%struct.sv* %0, %struct.gv* %1, i8* %2, i8 signext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_gv_efullname4(%struct.sv* %sv, %struct.gv* %gv, i8* %prefix, i8 signext %keepmain) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %gv.addr = alloca %struct.gv*, align 8
  %prefix.addr = alloca i8*, align 8
  %keepmain.addr = alloca i8, align 1
  %egv = alloca %struct.gv*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store i8 %keepmain, i8* %keepmain.addr, align 1
  %0 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %0, i32 0, i32 0
  %1 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %1, i32 0, i32 7
  %2 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_egv = getelementptr inbounds %struct.gp, %struct.gp* %2, i32 0, i32 6
  %3 = load %struct.gv*, %struct.gv** %gp_egv, align 8
  store %struct.gv* %3, %struct.gv** %egv, align 8
  %4 = load %struct.gv*, %struct.gv** %egv, align 8
  %tobool = icmp ne %struct.gv* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  store %struct.gv* %5, %struct.gv** %egv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %7 = load %struct.gv*, %struct.gv** %egv, align 8
  %8 = load i8*, i8** %prefix.addr, align 8
  %9 = load i8, i8* %keepmain.addr, align 1
  call void @Perl_gv_fullname4(%struct.sv* %6, %struct.gv* %7, i8* %8, i8 signext %9)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_gv_efullname3(%struct.sv* %sv, %struct.gv* %gv, i8* %prefix) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %gv.addr = alloca %struct.gv*, align 8
  %prefix.addr = alloca i8*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %1 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %2 = load i8*, i8** %prefix.addr, align 8
  call void @Perl_gv_efullname4(%struct.sv* %0, %struct.gv* %1, i8* %2, i8 signext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_gv_fullname(%struct.sv* %sv, %struct.gv* %gv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %gv.addr = alloca %struct.gv*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %1 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %3 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %4 = bitcast %struct.gv* %3 to %struct.sv*
  %cmp = icmp eq %struct.sv* %2, %4
  %cond = select i1 %cmp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)
  call void @Perl_gv_fullname4(%struct.sv* %0, %struct.gv* %1, i8* %cond, i8 signext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_gv_efullname(%struct.sv* %sv, %struct.gv* %gv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %gv.addr = alloca %struct.gv*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %1 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %3 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %4 = bitcast %struct.gv* %3 to %struct.sv*
  %cmp = icmp eq %struct.sv* %2, %4
  %cond = select i1 %cmp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)
  call void @Perl_gv_efullname4(%struct.sv* %0, %struct.gv* %1, i8* %cond, i8 signext 1)
  ret void
}

declare void @Perl_hv_clear(%struct.hv*) #1

; Function Attrs: nounwind uwtable
define void @Perl_gv_check(%struct.hv* %stash) #0 {
entry:
  %stash.addr = alloca %struct.hv*, align 8
  %entry1 = alloca %struct.he*, align 8
  %i = alloca i32, align 4
  %gv = alloca %struct.gv*, align 8
  %hv = alloca %struct.hv*, align 8
  %file = alloca i8*, align 8
  store %struct.hv* %stash, %struct.hv** %stash.addr, align 8
  %0 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %0, i32 0, i32 0
  %1 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  %xhv_array = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %1, i32 0, i32 0
  %2 = bitcast i8** %xhv_array to %struct.he***
  %3 = load %struct.he**, %struct.he*** %2, align 8
  %tobool = icmp ne %struct.he** %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end.90

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.89, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %sv_any2 = getelementptr inbounds %struct.hv, %struct.hv* %5, i32 0, i32 0
  %6 = load %struct.xpvhv*, %struct.xpvhv** %sv_any2, align 8
  %xhv_max = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %6, i32 0, i32 2
  %7 = load i64, i64* %xhv_max, align 8
  %conv = trunc i64 %7 to i32
  %cmp = icmp sle i32 %4, %conv
  br i1 %cmp, label %for.body, label %for.end.90

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %sv_any4 = getelementptr inbounds %struct.hv, %struct.hv* %9, i32 0, i32 0
  %10 = load %struct.xpvhv*, %struct.xpvhv** %sv_any4, align 8
  %xhv_array5 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %10, i32 0, i32 0
  %11 = bitcast i8** %xhv_array5 to %struct.he***
  %12 = load %struct.he**, %struct.he*** %11, align 8
  %arrayidx = getelementptr inbounds %struct.he*, %struct.he** %12, i64 %idxprom
  %13 = load %struct.he*, %struct.he** %arrayidx, align 8
  store %struct.he* %13, %struct.he** %entry1, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %14 = load %struct.he*, %struct.he** %entry1, align 8
  %tobool7 = icmp ne %struct.he* %14, null
  br i1 %tobool7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %15 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek = getelementptr inbounds %struct.he, %struct.he* %15, i32 0, i32 1
  %16 = load %struct.hek*, %struct.hek** %hent_hek, align 8
  %hek_len = getelementptr inbounds %struct.hek, %struct.hek* %16, i32 0, i32 1
  %17 = load i32, i32* %hek_len, align 4
  %sub = sub nsw i32 %17, 1
  %idxprom9 = sext i32 %sub to i64
  %18 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek10 = getelementptr inbounds %struct.he, %struct.he* %18, i32 0, i32 1
  %19 = load %struct.hek*, %struct.hek** %hent_hek10, align 8
  %hek_key = getelementptr inbounds %struct.hek, %struct.hek* %19, i32 0, i32 2
  %arrayidx11 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key, i32 0, i64 %idxprom9
  %20 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %20 to i32
  %cmp13 = icmp eq i32 %conv12, 58
  br i1 %cmp13, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.8
  %21 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %21, i32 0, i32 2
  %22 = load %struct.sv*, %struct.sv** %hent_val, align 8
  %23 = bitcast %struct.sv* %22 to %struct.gv*
  store %struct.gv* %23, %struct.gv** %gv, align 8
  %tobool15 = icmp ne %struct.gv* %23, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.else

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %24 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %24, i32 0, i32 2
  %25 = load i32, i32* %sv_flags, align 4
  %and = and i32 %25, 255
  %cmp17 = icmp eq i32 %and, 13
  br i1 %cmp17, label %land.lhs.true.19, label %if.else

land.lhs.true.19:                                 ; preds = %land.lhs.true.16
  %26 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any20 = getelementptr inbounds %struct.gv, %struct.gv* %26, i32 0, i32 0
  %27 = load %struct.xpvgv*, %struct.xpvgv** %sv_any20, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %27, i32 0, i32 7
  %28 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_hv = getelementptr inbounds %struct.gp, %struct.gp* %28, i32 0, i32 5
  %29 = load %struct.hv*, %struct.hv** %gp_hv, align 8
  store %struct.hv* %29, %struct.hv** %hv, align 8
  %tobool21 = icmp ne %struct.hv* %29, null
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %land.lhs.true.19
  %30 = load %struct.hv*, %struct.hv** %hv, align 8
  %31 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  %cmp23 = icmp ne %struct.hv* %30, %31
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.29

land.lhs.true.25:                                 ; preds = %if.then.22
  %32 = load %struct.hv*, %struct.hv** %hv, align 8
  %33 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %cmp26 = icmp ne %struct.hv* %32, %33
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true.25
  %34 = load %struct.hv*, %struct.hv** %hv, align 8
  call void @Perl_gv_check(%struct.hv* %34)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %land.lhs.true.25, %if.then.22
  br label %if.end.88

if.else:                                          ; preds = %land.lhs.true.19, %land.lhs.true.16, %land.lhs.true, %for.body.8
  %35 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek30 = getelementptr inbounds %struct.he, %struct.he* %35, i32 0, i32 1
  %36 = load %struct.hek*, %struct.hek** %hent_hek30, align 8
  %hek_key31 = getelementptr inbounds %struct.hek, %struct.hek* %36, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key31, i32 0, i32 0
  %37 = load i8, i8* %arraydecay, align 1
  %conv32 = sext i8 %37 to i32
  %cmp33 = icmp sge i32 %conv32, 65
  br i1 %cmp33, label %land.lhs.true.35, label %lor.lhs.false

land.lhs.true.35:                                 ; preds = %if.else
  %38 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek36 = getelementptr inbounds %struct.he, %struct.he* %38, i32 0, i32 1
  %39 = load %struct.hek*, %struct.hek** %hent_hek36, align 8
  %hek_key37 = getelementptr inbounds %struct.hek, %struct.hek* %39, i32 0, i32 2
  %arraydecay38 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key37, i32 0, i32 0
  %40 = load i8, i8* %arraydecay38, align 1
  %conv39 = sext i8 %40 to i32
  %cmp40 = icmp sle i32 %conv39, 90
  br i1 %cmp40, label %if.then.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.35, %if.else
  %41 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek42 = getelementptr inbounds %struct.he, %struct.he* %41, i32 0, i32 1
  %42 = load %struct.hek*, %struct.hek** %hent_hek42, align 8
  %hek_key43 = getelementptr inbounds %struct.hek, %struct.hek* %42, i32 0, i32 2
  %arraydecay44 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key43, i32 0, i32 0
  %43 = load i8, i8* %arraydecay44, align 1
  %conv45 = sext i8 %43 to i32
  %cmp46 = icmp sge i32 %conv45, 97
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.87

land.lhs.true.48:                                 ; preds = %lor.lhs.false
  %44 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek49 = getelementptr inbounds %struct.he, %struct.he* %44, i32 0, i32 1
  %45 = load %struct.hek*, %struct.hek** %hent_hek49, align 8
  %hek_key50 = getelementptr inbounds %struct.hek, %struct.hek* %45, i32 0, i32 2
  %arraydecay51 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key50, i32 0, i32 0
  %46 = load i8, i8* %arraydecay51, align 1
  %conv52 = sext i8 %46 to i32
  %cmp53 = icmp sle i32 %conv52, 122
  br i1 %cmp53, label %if.then.55, label %if.end.87

if.then.55:                                       ; preds = %land.lhs.true.48, %land.lhs.true.35
  %47 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val56 = getelementptr inbounds %struct.he, %struct.he* %47, i32 0, i32 2
  %48 = load %struct.sv*, %struct.sv** %hent_val56, align 8
  %49 = bitcast %struct.sv* %48 to %struct.gv*
  store %struct.gv* %49, %struct.gv** %gv, align 8
  %50 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_flags57 = getelementptr inbounds %struct.gv, %struct.gv* %50, i32 0, i32 2
  %51 = load i32, i32* %sv_flags57, align 4
  %and58 = and i32 %51, 255
  %cmp59 = icmp ne i32 %and58, 13
  br i1 %cmp59, label %if.then.66, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %if.then.55
  %52 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any62 = getelementptr inbounds %struct.gv, %struct.gv* %52, i32 0, i32 0
  %53 = load %struct.xpvgv*, %struct.xpvgv** %sv_any62, align 8
  %xgv_flags = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %53, i32 0, i32 11
  %54 = load i8, i8* %xgv_flags, align 1
  %conv63 = zext i8 %54 to i32
  %and64 = and i32 %conv63, 2
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %lor.lhs.false.61, %if.then.55
  br label %for.inc

if.end.67:                                        ; preds = %lor.lhs.false.61
  %55 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any68 = getelementptr inbounds %struct.gv, %struct.gv* %55, i32 0, i32 0
  %56 = load %struct.xpvgv*, %struct.xpvgv** %sv_any68, align 8
  %xgv_gp69 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %56, i32 0, i32 7
  %57 = load %struct.gp*, %struct.gp** %xgv_gp69, align 8
  %gp_file = getelementptr inbounds %struct.gp, %struct.gp* %57, i32 0, i32 11
  %58 = load i8*, i8** %gp_file, align 8
  store i8* %58, i8** %file, align 8
  %59 = load i8*, i8** %file, align 8
  %tobool70 = icmp ne i8* %59, null
  br i1 %tobool70, label %land.lhs.true.71, label %if.end.81

land.lhs.true.71:                                 ; preds = %if.end.67
  %60 = load i8*, i8** %file, align 8
  %61 = load i8, i8* %60, align 1
  %conv72 = sext i8 %61 to i32
  %cmp73 = icmp eq i32 %conv72, 47
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.81

land.lhs.true.75:                                 ; preds = %land.lhs.true.71
  %62 = load i8*, i8** %file, align 8
  %call = call i8* @Perl_instr(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0))
  %tobool76 = icmp ne i8* %call, null
  br i1 %tobool76, label %if.then.80, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %land.lhs.true.75
  %63 = load i8*, i8** %file, align 8
  %call78 = call i8* @Perl_instr(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0))
  %tobool79 = icmp ne i8* %call78, null
  br i1 %tobool79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %lor.lhs.false.77, %land.lhs.true.75
  br label %for.inc

if.end.81:                                        ; preds = %lor.lhs.false.77, %land.lhs.true.71, %if.end.67
  %64 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any82 = getelementptr inbounds %struct.gv, %struct.gv* %64, i32 0, i32 0
  %65 = load %struct.xpvgv*, %struct.xpvgv** %sv_any82, align 8
  %xgv_gp83 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %65, i32 0, i32 7
  %66 = load %struct.gp*, %struct.gp** %xgv_gp83, align 8
  %gp_line = getelementptr inbounds %struct.gp, %struct.gp* %66, i32 0, i32 10
  %67 = load i32, i32* %gp_line, align 4
  %68 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_line = getelementptr inbounds %struct.cop, %struct.cop* %68, i32 0, i32 13
  store i32 %67, i32* %cop_line, align 4
  %69 = load i8*, i8** %file, align 8
  %call84 = call %struct.gv* @Perl_gv_fetchfile(i8* %69)
  %70 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv = getelementptr inbounds %struct.cop, %struct.cop* %70, i32 0, i32 10
  store %struct.gv* %call84, %struct.gv** %cop_filegv, align 8
  %71 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %sv_any85 = getelementptr inbounds %struct.hv, %struct.hv* %71, i32 0, i32 0
  %72 = load %struct.xpvhv*, %struct.xpvhv** %sv_any85, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %72, i32 0, i32 10
  %73 = load i8*, i8** %xhv_name, align 8
  %74 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any86 = getelementptr inbounds %struct.gv, %struct.gv* %74, i32 0, i32 0
  %75 = load %struct.xpvgv*, %struct.xpvgv** %sv_any86, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %75, i32 0, i32 8
  %76 = load i8*, i8** %xgv_name, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.62, i32 0, i32 0), i8* %73, i8* %76)
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.81, %land.lhs.true.48, %lor.lhs.false
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.end.29
  br label %for.inc

for.inc:                                          ; preds = %if.end.88, %if.then.80, %if.then.66
  %77 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next = getelementptr inbounds %struct.he, %struct.he* %77, i32 0, i32 0
  %78 = load %struct.he*, %struct.he** %hent_next, align 8
  store %struct.he* %78, %struct.he** %entry1, align 8
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.end
  %79 = load i32, i32* %i, align 4
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.90:                                       ; preds = %if.then, %for.cond
  ret void
}

declare i8* @Perl_instr(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.gv* @Perl_newGVgen(i8* %pack) #0 {
entry:
  %pack.addr = alloca i8*, align 8
  store i8* %pack, i8** %pack.addr, align 8
  %0 = load i8*, i8** %pack.addr, align 8
  %1 = load i32, i32* @PL_gensym, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @PL_gensym, align 4
  %conv = sext i32 %1 to i64
  %call = call i8* (i8*, ...) @Perl_form(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i32 0, i32 0), i8* %0, i64 %conv)
  %call1 = call %struct.gv* @Perl_gv_fetchpv(i8* %call, i32 1, i32 13)
  ret %struct.gv* %call1
}

declare i8* @Perl_form(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @Perl_gp_free(%struct.gv* %gv) #0 {
entry:
  %gv.addr = alloca %struct.gv*, align 8
  %gp = alloca %struct.gp*, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  %0 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %tobool = icmp ne %struct.gv* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %1, i32 0, i32 0
  %2 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %2, i32 0, i32 7
  %3 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  store %struct.gp* %3, %struct.gp** %gp, align 8
  %tobool1 = icmp ne %struct.gp* %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_refcnt = getelementptr inbounds %struct.gp, %struct.gp* %4, i32 0, i32 1
  %5 = load i32, i32* %gp_refcnt, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then.2, label %if.end.15

if.then.2:                                        ; preds = %if.end
  %6 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %6, i32 0, i32 14
  %7 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp3 = icmp eq %struct.sv* %7, null
  br i1 %cmp3, label %if.then.13, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %if.then.2
  %8 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings5 = getelementptr inbounds %struct.cop, %struct.cop* %8, i32 0, i32 14
  %9 = load %struct.sv*, %struct.sv** %cop_warnings5, align 8
  %cmp6 = icmp eq %struct.sv* %9, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp6, label %if.then.13, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %10 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings8 = getelementptr inbounds %struct.cop, %struct.cop* %10, i32 0, i32 14
  %11 = load %struct.sv*, %struct.sv** %cop_warnings8, align 8
  %cmp9 = icmp ne %struct.sv* %11, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp9, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %lor.lhs.false.7
  %12 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings10 = getelementptr inbounds %struct.cop, %struct.cop* %12, i32 0, i32 14
  %13 = load %struct.sv*, %struct.sv** %cop_warnings10, align 8
  %sv_any11 = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 0
  %14 = load i8*, i8** %sv_any11, align 8
  %15 = bitcast i8* %14 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %15, i32 0, i32 0
  %16 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 6
  %17 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %17 to i32
  %and = and i32 %conv, 1
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true, %lor.lhs.false.4, %if.then.2
  call void (i32, i8*, ...) @Perl_warner(i32 24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.64, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %land.lhs.true, %lor.lhs.false.7
  br label %return

if.end.15:                                        ; preds = %if.end
  %18 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %18, i32 0, i32 7
  %19 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  %tobool16 = icmp ne %struct.cv* %19, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %20 = load i32, i32* @PL_sub_generation, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* @PL_sub_generation, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  %21 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_refcnt19 = getelementptr inbounds %struct.gp, %struct.gp* %21, i32 0, i32 1
  %22 = load i32, i32* %gp_refcnt19, align 4
  %dec = add i32 %22, -1
  store i32 %dec, i32* %gp_refcnt19, align 4
  %cmp20 = icmp ugt i32 %dec, 0
  br i1 %cmp20, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %if.end.18
  %23 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_egv = getelementptr inbounds %struct.gp, %struct.gp* %23, i32 0, i32 6
  %24 = load %struct.gv*, %struct.gv** %gp_egv, align 8
  %25 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %cmp23 = icmp eq %struct.gv* %24, %25
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.22
  %26 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_egv26 = getelementptr inbounds %struct.gp, %struct.gp* %26, i32 0, i32 6
  store %struct.gv* null, %struct.gv** %gp_egv26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.then.22
  br label %return

if.end.28:                                        ; preds = %if.end.18
  %27 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %27, i32 0, i32 0
  %28 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %tobool29 = icmp ne %struct.sv* %28, null
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.28
  %29 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_sv31 = getelementptr inbounds %struct.gp, %struct.gp* %29, i32 0, i32 0
  %30 = load %struct.sv*, %struct.sv** %gp_sv31, align 8
  call void @Perl_sv_free(%struct.sv* %30)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.28
  %31 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_av = getelementptr inbounds %struct.gp, %struct.gp* %31, i32 0, i32 4
  %32 = load %struct.av*, %struct.av** %gp_av, align 8
  %tobool33 = icmp ne %struct.av* %32, null
  br i1 %tobool33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.32
  %33 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_av35 = getelementptr inbounds %struct.gp, %struct.gp* %33, i32 0, i32 4
  %34 = load %struct.av*, %struct.av** %gp_av35, align 8
  %35 = bitcast %struct.av* %34 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %35)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.32
  %36 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_hv = getelementptr inbounds %struct.gp, %struct.gp* %36, i32 0, i32 5
  %37 = load %struct.hv*, %struct.hv** %gp_hv, align 8
  %tobool37 = icmp ne %struct.hv* %37, null
  br i1 %tobool37, label %if.then.38, label %if.end.55

if.then.38:                                       ; preds = %if.end.36
  %38 = load %struct.hv*, %struct.hv** @PL_stashcache, align 8
  %tobool39 = icmp ne %struct.hv* %38, null
  br i1 %tobool39, label %land.lhs.true.40, label %if.end.53

land.lhs.true.40:                                 ; preds = %if.then.38
  %39 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_hv41 = getelementptr inbounds %struct.gp, %struct.gp* %39, i32 0, i32 5
  %40 = load %struct.hv*, %struct.hv** %gp_hv41, align 8
  %sv_any42 = getelementptr inbounds %struct.hv, %struct.hv* %40, i32 0, i32 0
  %41 = load %struct.xpvhv*, %struct.xpvhv** %sv_any42, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %41, i32 0, i32 10
  %42 = load i8*, i8** %xhv_name, align 8
  %tobool43 = icmp ne i8* %42, null
  br i1 %tobool43, label %if.then.44, label %if.end.53

if.then.44:                                       ; preds = %land.lhs.true.40
  %43 = load %struct.hv*, %struct.hv** @PL_stashcache, align 8
  %44 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_hv45 = getelementptr inbounds %struct.gp, %struct.gp* %44, i32 0, i32 5
  %45 = load %struct.hv*, %struct.hv** %gp_hv45, align 8
  %sv_any46 = getelementptr inbounds %struct.hv, %struct.hv* %45, i32 0, i32 0
  %46 = load %struct.xpvhv*, %struct.xpvhv** %sv_any46, align 8
  %xhv_name47 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %46, i32 0, i32 10
  %47 = load i8*, i8** %xhv_name47, align 8
  %48 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_hv48 = getelementptr inbounds %struct.gp, %struct.gp* %48, i32 0, i32 5
  %49 = load %struct.hv*, %struct.hv** %gp_hv48, align 8
  %sv_any49 = getelementptr inbounds %struct.hv, %struct.hv* %49, i32 0, i32 0
  %50 = load %struct.xpvhv*, %struct.xpvhv** %sv_any49, align 8
  %xhv_name50 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %50, i32 0, i32 10
  %51 = load i8*, i8** %xhv_name50, align 8
  %call = call i64 @strlen(i8* %51)
  %conv51 = trunc i64 %call to i32
  %call52 = call %struct.sv* @Perl_hv_delete(%struct.hv* %43, i8* %47, i32 %conv51, i32 2)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.44, %land.lhs.true.40, %if.then.38
  %52 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_hv54 = getelementptr inbounds %struct.gp, %struct.gp* %52, i32 0, i32 5
  %53 = load %struct.hv*, %struct.hv** %gp_hv54, align 8
  %54 = bitcast %struct.hv* %53 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %54)
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.53, %if.end.36
  %55 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %55, i32 0, i32 2
  %56 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool56 = icmp ne %struct.io* %56, null
  br i1 %tobool56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.55
  %57 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_io58 = getelementptr inbounds %struct.gp, %struct.gp* %57, i32 0, i32 2
  %58 = load %struct.io*, %struct.io** %gp_io58, align 8
  %59 = bitcast %struct.io* %58 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %59)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.55
  %60 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_cv60 = getelementptr inbounds %struct.gp, %struct.gp* %60, i32 0, i32 7
  %61 = load %struct.cv*, %struct.cv** %gp_cv60, align 8
  %tobool61 = icmp ne %struct.cv* %61, null
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.59
  %62 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_cv63 = getelementptr inbounds %struct.gp, %struct.gp* %62, i32 0, i32 7
  %63 = load %struct.cv*, %struct.cv** %gp_cv63, align 8
  %64 = bitcast %struct.cv* %63 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %64)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.59
  %65 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_form = getelementptr inbounds %struct.gp, %struct.gp* %65, i32 0, i32 3
  %66 = load %struct.cv*, %struct.cv** %gp_form, align 8
  %tobool65 = icmp ne %struct.cv* %66, null
  br i1 %tobool65, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.end.64
  %67 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_form67 = getelementptr inbounds %struct.gp, %struct.gp* %67, i32 0, i32 3
  %68 = load %struct.cv*, %struct.cv** %gp_form67, align 8
  %69 = bitcast %struct.cv* %68 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %69)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.end.64
  %70 = load %struct.gp*, %struct.gp** %gp, align 8
  %71 = bitcast %struct.gp* %70 to i8*
  call void @Perl_safesysfree(i8* %71)
  %72 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any69 = getelementptr inbounds %struct.gv, %struct.gv* %72, i32 0, i32 0
  %73 = load %struct.xpvgv*, %struct.xpvgv** %sv_any69, align 8
  %xgv_gp70 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %73, i32 0, i32 7
  store %struct.gp* null, %struct.gp** %xgv_gp70, align 8
  br label %return

return:                                           ; preds = %if.end.68, %if.end.27, %if.end.14, %if.then
  ret void
}

declare %struct.sv* @Perl_hv_delete(%struct.hv*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_magic_freeovrld(%struct.sv* %sv, %struct.magic* %mg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %mg.addr = alloca %struct.magic*, align 8
  %amtp = alloca %struct.am_table*, align 8
  %i = alloca i32, align 4
  %cv = alloca %struct.cv*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.magic* %mg, %struct.magic** %mg.addr, align 8
  %0 = load %struct.magic*, %struct.magic** %mg.addr, align 8
  %mg_ptr = getelementptr inbounds %struct.magic, %struct.magic* %0, i32 0, i32 6
  %1 = load i8*, i8** %mg_ptr, align 8
  %2 = bitcast i8* %1 to %struct.am_table*
  store %struct.am_table* %2, %struct.am_table** %amtp, align 8
  %3 = load %struct.am_table*, %struct.am_table** %amtp, align 8
  %tobool = icmp ne %struct.am_table* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.am_table*, %struct.am_table** %amtp, align 8
  %flags = getelementptr inbounds %struct.am_table, %struct.am_table* %4, i32 0, i32 2
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then, label %if.end.7

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %6, 66
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.am_table*, %struct.am_table** %amtp, align 8
  %table = getelementptr inbounds %struct.am_table, %struct.am_table* %8, i32 0, i32 3
  %arrayidx = getelementptr inbounds [66 x %struct.cv*], [66 x %struct.cv*]* %table, i32 0, i64 %idxprom
  %9 = load %struct.cv*, %struct.cv** %arrayidx, align 8
  store %struct.cv* %9, %struct.cv** %cv, align 8
  %10 = load %struct.cv*, %struct.cv** %cv, align 8
  %cmp2 = icmp ne %struct.cv* %10, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %for.body
  %11 = load %struct.cv*, %struct.cv** %cv, align 8
  %12 = bitcast %struct.cv* %11 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %12)
  %13 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct.am_table*, %struct.am_table** %amtp, align 8
  %table5 = getelementptr inbounds %struct.am_table, %struct.am_table* %14, i32 0, i32 3
  %arrayidx6 = getelementptr inbounds [66 x %struct.cv*], [66 x %struct.cv*]* %table5, i32 0, i64 %idxprom4
  store %struct.cv* null, %struct.cv** %arrayidx6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.7

if.end.7:                                         ; preds = %for.end, %land.lhs.true, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_Gv_AMupdate(%struct.hv* %stash) #0 {
entry:
  %retval = alloca i8, align 1
  %stash.addr = alloca %struct.hv*, align 8
  %gv = alloca %struct.gv*, align 8
  %cv = alloca %struct.cv*, align 8
  %mg = alloca %struct.magic*, align 8
  %amtp = alloca %struct.am_table*, align 8
  %amt = alloca %struct.am_table, align 8
  %filled = alloca i32, align 4
  %have_ovl = alloca i32, align 4
  %i = alloca i32, align 4
  %lim = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %cooky = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %l = alloca i64, align 8
  %ngv = alloca %struct.gv*, align 8
  %gvsv = alloca %struct.sv*, align 8
  %name = alloca i8*, align 8
  store %struct.hv* %stash, %struct.hv** %stash.addr, align 8
  %0 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %1 = bitcast %struct.hv* %0 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %1, i32 99)
  store %struct.magic* %call, %struct.magic** %mg, align 8
  %2 = load %struct.magic*, %struct.magic** %mg, align 8
  %tobool = icmp ne %struct.magic* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_ptr = getelementptr inbounds %struct.magic, %struct.magic* %3, i32 0, i32 6
  %4 = load i8*, i8** %mg_ptr, align 8
  %5 = bitcast i8* %4 to %struct.am_table*
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.am_table* [ %5, %cond.true ], [ null, %cond.false ]
  store %struct.am_table* %cond, %struct.am_table** %amtp, align 8
  %6 = load %struct.magic*, %struct.magic** %mg, align 8
  %tobool1 = icmp ne %struct.magic* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %7 = load %struct.am_table*, %struct.am_table** %amtp, align 8
  %was_ok_am = getelementptr inbounds %struct.am_table, %struct.am_table* %7, i32 0, i32 1
  %8 = load i64, i64* %was_ok_am, align 8
  %9 = load i64, i64* @PL_amagic_generation, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %10 = load %struct.am_table*, %struct.am_table** %amtp, align 8
  %was_ok_sub = getelementptr inbounds %struct.am_table, %struct.am_table* %10, i32 0, i32 0
  %11 = load i32, i32* %was_ok_sub, align 4
  %12 = load i32, i32* @PL_sub_generation, align 4
  %cmp3 = icmp eq i32 %11, %12
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  %13 = load %struct.am_table*, %struct.am_table** %amtp, align 8
  %flags = getelementptr inbounds %struct.am_table, %struct.am_table* %13, i32 0, i32 2
  %14 = load i32, i32* %flags, align 4
  %and = and i32 %14, 2
  %conv = trunc i32 %and to i8
  store i8 %conv, i8* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.2, %land.lhs.true, %cond.end
  %15 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %16 = bitcast %struct.hv* %15 to %struct.sv*
  %call4 = call i32 @Perl_sv_unmagic(%struct.sv* %16, i32 99)
  %17 = bitcast %struct.am_table* %amt to i8*
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 560, i32 1, i1 false)
  %18 = load i64, i64* @PL_amagic_generation, align 8
  %was_ok_am5 = getelementptr inbounds %struct.am_table, %struct.am_table* %amt, i32 0, i32 1
  store i64 %18, i64* %was_ok_am5, align 8
  %19 = load i32, i32* @PL_sub_generation, align 4
  %was_ok_sub6 = getelementptr inbounds %struct.am_table, %struct.am_table* %amt, i32 0, i32 0
  store i32 %19, i32* %was_ok_sub6, align 4
  %fallback = getelementptr inbounds %struct.am_table, %struct.am_table* %amt, i32 0, i32 4
  store i64 2, i64* %fallback, align 8
  %flags7 = getelementptr inbounds %struct.am_table, %struct.am_table* %amt, i32 0, i32 2
  store i32 0, i32* %flags7, align 4
  store i32 0, i32* %filled, align 4
  store i32 0, i32* %have_ovl, align 4
  store i32 1, i32* %lim, align 4
  store %struct.sv* null, %struct.sv** %sv, align 8
  %20 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %21 = load i8*, i8** getelementptr inbounds ([66 x i8*], [66 x i8*]* @PL_AMG_names, i32 0, i64 0), align 8
  %call8 = call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %20, i8* %21, i64 2, i32 -1)
  store %struct.gv* %call8, %struct.gv** %gv, align 8
  %22 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool9 = icmp ne %struct.gv* %22, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %23 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %23, i32 0, i32 0
  %24 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %24, i32 0, i32 7
  %25 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %25, i32 0, i32 0
  %26 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  store %struct.sv* %26, %struct.sv** %sv, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %27 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool12 = icmp ne %struct.gv* %27, null
  br i1 %tobool12, label %if.else, label %if.then.13

if.then.13:                                       ; preds = %if.end.11
  store i32 65, i32* %lim, align 4
  br label %if.end.63

if.else:                                          ; preds = %if.end.11
  %28 = load %struct.sv*, %struct.sv** %sv, align 8
  %tobool14 = icmp ne %struct.sv* %28, null
  br i1 %tobool14, label %cond.false.16, label %cond.true.15

cond.true.15:                                     ; preds = %if.else
  br i1 false, label %if.then.53, label %if.else.55

cond.false.16:                                    ; preds = %if.else
  %29 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 2
  %30 = load i32, i32* %sv_flags, align 4
  %and17 = and i32 %30, 262144
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %cond.true.19, label %cond.false.33

cond.true.19:                                     ; preds = %cond.false.16
  %31 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any20 = getelementptr inbounds %struct.sv, %struct.sv* %31, i32 0, i32 0
  %32 = load i8*, i8** %sv_any20, align 8
  %33 = bitcast i8* %32 to %struct.xpv*
  store %struct.xpv* %33, %struct.xpv** @PL_Xpv, align 8
  %tobool21 = icmp ne %struct.xpv* %33, null
  br i1 %tobool21, label %land.lhs.true.22, label %cond.false.32

land.lhs.true.22:                                 ; preds = %cond.true.19
  %34 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %34, i32 0, i32 1
  %35 = load i64, i64* %xpv_cur, align 8
  %cmp23 = icmp ugt i64 %35, 1
  br i1 %cmp23, label %cond.true.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.22
  %36 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur25 = getelementptr inbounds %struct.xpv, %struct.xpv* %36, i32 0, i32 1
  %37 = load i64, i64* %xpv_cur25, align 8
  %tobool26 = icmp ne i64 %37, 0
  br i1 %tobool26, label %land.lhs.true.27, label %cond.false.32

land.lhs.true.27:                                 ; preds = %lor.lhs.false
  %38 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %38, i32 0, i32 0
  %39 = load i8*, i8** %xpv_pv, align 8
  %40 = load i8, i8* %39, align 1
  %conv28 = sext i8 %40 to i32
  %cmp29 = icmp ne i32 %conv28, 48
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %land.lhs.true.27, %land.lhs.true.22
  br i1 true, label %if.then.53, label %if.else.55

cond.false.32:                                    ; preds = %land.lhs.true.27, %lor.lhs.false, %cond.true.19
  br i1 false, label %if.then.53, label %if.else.55

cond.false.33:                                    ; preds = %cond.false.16
  %41 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags34 = getelementptr inbounds %struct.sv, %struct.sv* %41, i32 0, i32 2
  %42 = load i32, i32* %sv_flags34, align 4
  %and35 = and i32 %42, 65536
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %cond.true.37, label %cond.false.41

cond.true.37:                                     ; preds = %cond.false.33
  %43 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any38 = getelementptr inbounds %struct.sv, %struct.sv* %43, i32 0, i32 0
  %44 = load i8*, i8** %sv_any38, align 8
  %45 = bitcast i8* %44 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %45, i32 0, i32 3
  %46 = load i64, i64* %xiv_iv, align 8
  %cmp39 = icmp ne i64 %46, 0
  br i1 %cmp39, label %if.then.53, label %if.else.55

cond.false.41:                                    ; preds = %cond.false.33
  %47 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags42 = getelementptr inbounds %struct.sv, %struct.sv* %47, i32 0, i32 2
  %48 = load i32, i32* %sv_flags42, align 4
  %and43 = and i32 %48, 131072
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %cond.true.45, label %cond.false.49

cond.true.45:                                     ; preds = %cond.false.41
  %49 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any46 = getelementptr inbounds %struct.sv, %struct.sv* %49, i32 0, i32 0
  %50 = load i8*, i8** %sv_any46, align 8
  %51 = bitcast i8* %50 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %51, i32 0, i32 4
  %52 = load double, double* %xnv_nv, align 8
  %cmp47 = fcmp une double %52, 0.000000e+00
  br i1 %cmp47, label %if.then.53, label %if.else.55

cond.false.49:                                    ; preds = %cond.false.41
  %53 = load %struct.sv*, %struct.sv** %sv, align 8
  %call50 = call signext i8 @Perl_sv_2bool(%struct.sv* %53)
  %conv51 = sext i8 %call50 to i32
  %tobool52 = icmp ne i32 %conv51, 0
  br i1 %tobool52, label %if.then.53, label %if.else.55

if.then.53:                                       ; preds = %cond.false.49, %cond.true.45, %cond.true.37, %cond.false.32, %cond.true.31, %cond.true.15
  %fallback54 = getelementptr inbounds %struct.am_table, %struct.am_table* %amt, i32 0, i32 4
  store i64 3, i64* %fallback54, align 8
  br label %if.end.62

if.else.55:                                       ; preds = %cond.false.49, %cond.true.45, %cond.true.37, %cond.false.32, %cond.true.31, %cond.true.15
  %54 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags56 = getelementptr inbounds %struct.sv, %struct.sv* %54, i32 0, i32 2
  %55 = load i32, i32* %sv_flags56, align 4
  %and57 = and i32 %55, 118423552
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.else.55
  %fallback60 = getelementptr inbounds %struct.am_table, %struct.am_table* %amt, i32 0, i32 4
  store i64 1, i64* %fallback60, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %if.else.55
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.53
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.13
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.63
  %56 = load i32, i32* %i, align 4
  %57 = load i32, i32* %lim, align 4
  %cmp64 = icmp slt i32 %56, %57
  br i1 %cmp64, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %58 = load i32, i32* %i, align 4
  %idxprom = sext i32 %58 to i64
  %table = getelementptr inbounds %struct.am_table, %struct.am_table* %amt, i32 0, i32 3
  %arrayidx = getelementptr inbounds [66 x %struct.cv*], [66 x %struct.cv*]* %table, i32 0, i64 %idxprom
  store %struct.cv* null, %struct.cv** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %59 = load i32, i32* %i, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.165, %for.end
  %60 = load i32, i32* %i, align 4
  %cmp67 = icmp slt i32 %60, 66
  br i1 %cmp67, label %for.body.69, label %for.end.167

for.body.69:                                      ; preds = %for.cond.66
  %61 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %61 to i64
  %arrayidx71 = getelementptr inbounds [66 x i8*], [66 x i8*]* @PL_AMG_names, i32 0, i64 %idxprom70
  %62 = load i8*, i8** %arrayidx71, align 8
  store i8* %62, i8** %cooky, align 8
  %63 = load i32, i32* %i, align 4
  %cmp72 = icmp sge i32 %63, 65
  br i1 %cmp72, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %for.body.69
  %64 = load i8*, i8** %cooky, align 8
  br label %cond.end.78

cond.false.75:                                    ; preds = %for.body.69
  %65 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %65 to i64
  %arrayidx77 = getelementptr inbounds [66 x i8*], [66 x i8*]* @PL_AMG_names, i32 0, i64 %idxprom76
  %66 = load i8*, i8** %arrayidx77, align 8
  %add.ptr = getelementptr inbounds i8, i8* %66, i64 1
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.75, %cond.true.74
  %cond79 = phi i8* [ %64, %cond.true.74 ], [ %add.ptr, %cond.false.75 ]
  store i8* %cond79, i8** %cp, align 8
  %67 = load i8*, i8** %cooky, align 8
  %call80 = call i64 @strlen(i8* %67)
  store i64 %call80, i64* %l, align 8
  %68 = load i32, i32* %i, align 4
  %cmp81 = icmp sge i32 %68, 65
  br i1 %cmp81, label %if.then.83, label %if.else.85

if.then.83:                                       ; preds = %cond.end.78
  %69 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %70 = load i8*, i8** %cooky, align 8
  %71 = load i64, i64* %l, align 8
  %call84 = call %struct.gv* @Perl_gv_fetchmeth_autoload(%struct.hv* %69, i8* %70, i64 %71, i32 0)
  store %struct.gv* %call84, %struct.gv** %gv, align 8
  br label %if.end.87

if.else.85:                                       ; preds = %cond.end.78
  %72 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %73 = load i8*, i8** %cooky, align 8
  %74 = load i64, i64* %l, align 8
  %call86 = call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %72, i8* %73, i64 %74, i32 -1)
  store %struct.gv* %call86, %struct.gv** %gv, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.85, %if.then.83
  store %struct.cv* null, %struct.cv** %cv, align 8
  %75 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool88 = icmp ne %struct.gv* %75, null
  br i1 %tobool88, label %land.lhs.true.89, label %if.else.154

land.lhs.true.89:                                 ; preds = %if.end.87
  %76 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any90 = getelementptr inbounds %struct.gv, %struct.gv* %76, i32 0, i32 0
  %77 = load %struct.xpvgv*, %struct.xpvgv** %sv_any90, align 8
  %xgv_gp91 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %77, i32 0, i32 7
  %78 = load %struct.gp*, %struct.gp** %xgv_gp91, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %78, i32 0, i32 7
  %79 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  store %struct.cv* %79, %struct.cv** %cv, align 8
  %tobool92 = icmp ne %struct.cv* %79, null
  br i1 %tobool92, label %if.then.93, label %if.else.154

if.then.93:                                       ; preds = %land.lhs.true.89
  %80 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any94 = getelementptr inbounds %struct.cv, %struct.cv* %80, i32 0, i32 0
  %81 = load %struct.xpvcv*, %struct.xpvcv** %sv_any94, align 8
  %xcv_gv = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %81, i32 0, i32 12
  %82 = load %struct.gv*, %struct.gv** %xcv_gv, align 8
  %sv_any95 = getelementptr inbounds %struct.gv, %struct.gv* %82, i32 0, i32 0
  %83 = load %struct.xpvgv*, %struct.xpvgv** %sv_any95, align 8
  %xgv_namelen = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %83, i32 0, i32 9
  %84 = load i64, i64* %xgv_namelen, align 8
  %cmp96 = icmp eq i64 %84, 3
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.149

land.lhs.true.98:                                 ; preds = %if.then.93
  %85 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any99 = getelementptr inbounds %struct.cv, %struct.cv* %85, i32 0, i32 0
  %86 = load %struct.xpvcv*, %struct.xpvcv** %sv_any99, align 8
  %xcv_gv100 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %86, i32 0, i32 12
  %87 = load %struct.gv*, %struct.gv** %xcv_gv100, align 8
  %sv_any101 = getelementptr inbounds %struct.gv, %struct.gv* %87, i32 0, i32 0
  %88 = load %struct.xpvgv*, %struct.xpvgv** %sv_any101, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %88, i32 0, i32 8
  %89 = load i8*, i8** %xgv_name, align 8
  %call102 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0))
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.end.149, label %land.lhs.true.104

land.lhs.true.104:                                ; preds = %land.lhs.true.98
  %90 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any105 = getelementptr inbounds %struct.cv, %struct.cv* %90, i32 0, i32 0
  %91 = load %struct.xpvcv*, %struct.xpvcv** %sv_any105, align 8
  %xcv_gv106 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %91, i32 0, i32 12
  %92 = load %struct.gv*, %struct.gv** %xcv_gv106, align 8
  %sv_any107 = getelementptr inbounds %struct.gv, %struct.gv* %92, i32 0, i32 0
  %93 = load %struct.xpvgv*, %struct.xpvgv** %sv_any107, align 8
  %xgv_stash = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %93, i32 0, i32 10
  %94 = load %struct.hv*, %struct.hv** %xgv_stash, align 8
  %sv_any108 = getelementptr inbounds %struct.hv, %struct.hv* %94, i32 0, i32 0
  %95 = load %struct.xpvhv*, %struct.xpvhv** %sv_any108, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %95, i32 0, i32 10
  %96 = load i8*, i8** %xhv_name, align 8
  %call109 = call i32 @strcmp(i8* %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0))
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.end.149, label %if.then.111

if.then.111:                                      ; preds = %land.lhs.true.104
  store %struct.gv* null, %struct.gv** %ngv, align 8
  %97 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any112 = getelementptr inbounds %struct.gv, %struct.gv* %97, i32 0, i32 0
  %98 = load %struct.xpvgv*, %struct.xpvgv** %sv_any112, align 8
  %xgv_gp113 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %98, i32 0, i32 7
  %99 = load %struct.gp*, %struct.gp** %xgv_gp113, align 8
  %gp_sv114 = getelementptr inbounds %struct.gp, %struct.gp* %99, i32 0, i32 0
  %100 = load %struct.sv*, %struct.sv** %gp_sv114, align 8
  %sv_flags115 = getelementptr inbounds %struct.sv, %struct.sv* %100, i32 0, i32 2
  %101 = load i32, i32* %sv_flags115, align 4
  %and116 = and i32 %101, 262144
  %tobool117 = icmp ne i32 %and116, 0
  br i1 %tobool117, label %lor.lhs.false.118, label %if.then.126

lor.lhs.false.118:                                ; preds = %if.then.111
  %102 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %103 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any119 = getelementptr inbounds %struct.gv, %struct.gv* %103, i32 0, i32 0
  %104 = load %struct.xpvgv*, %struct.xpvgv** %sv_any119, align 8
  %xgv_gp120 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %104, i32 0, i32 7
  %105 = load %struct.gp*, %struct.gp** %xgv_gp120, align 8
  %gp_sv121 = getelementptr inbounds %struct.gp, %struct.gp* %105, i32 0, i32 0
  %106 = load %struct.sv*, %struct.sv** %gp_sv121, align 8
  %sv_any122 = getelementptr inbounds %struct.sv, %struct.sv* %106, i32 0, i32 0
  %107 = load i8*, i8** %sv_any122, align 8
  %108 = bitcast i8* %107 to %struct.xpv*
  %xpv_pv123 = getelementptr inbounds %struct.xpv, %struct.xpv* %108, i32 0, i32 0
  %109 = load i8*, i8** %xpv_pv123, align 8
  %call124 = call %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv* %102, i8* %109, i32 0)
  store %struct.gv* %call124, %struct.gv** %ngv, align 8
  %tobool125 = icmp ne %struct.gv* %call124, null
  br i1 %tobool125, label %if.end.145, label %if.then.126

if.then.126:                                      ; preds = %lor.lhs.false.118, %if.then.111
  %110 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any127 = getelementptr inbounds %struct.gv, %struct.gv* %110, i32 0, i32 0
  %111 = load %struct.xpvgv*, %struct.xpvgv** %sv_any127, align 8
  %xgv_gp128 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %111, i32 0, i32 7
  %112 = load %struct.gp*, %struct.gp** %xgv_gp128, align 8
  %gp_sv129 = getelementptr inbounds %struct.gp, %struct.gp* %112, i32 0, i32 0
  %113 = load %struct.sv*, %struct.sv** %gp_sv129, align 8
  store %struct.sv* %113, %struct.sv** %gvsv, align 8
  %114 = load %struct.sv*, %struct.sv** %gvsv, align 8
  %sv_flags130 = getelementptr inbounds %struct.sv, %struct.sv* %114, i32 0, i32 2
  %115 = load i32, i32* %sv_flags130, align 4
  %and131 = and i32 %115, 262144
  %tobool132 = icmp ne i32 %and131, 0
  br i1 %tobool132, label %cond.true.133, label %cond.false.136

cond.true.133:                                    ; preds = %if.then.126
  %116 = load %struct.sv*, %struct.sv** %gvsv, align 8
  %sv_any134 = getelementptr inbounds %struct.sv, %struct.sv* %116, i32 0, i32 0
  %117 = load i8*, i8** %sv_any134, align 8
  %118 = bitcast i8* %117 to %struct.xpv*
  %xpv_pv135 = getelementptr inbounds %struct.xpv, %struct.xpv* %118, i32 0, i32 0
  %119 = load i8*, i8** %xpv_pv135, align 8
  br label %cond.end.137

cond.false.136:                                   ; preds = %if.then.126
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.136, %cond.true.133
  %cond138 = phi i8* [ %119, %cond.true.133 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), %cond.false.136 ]
  store i8* %cond138, i8** %name, align 8
  %120 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any139 = getelementptr inbounds %struct.gv, %struct.gv* %120, i32 0, i32 0
  %121 = load %struct.xpvgv*, %struct.xpvgv** %sv_any139, align 8
  %xgv_gp140 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %121, i32 0, i32 7
  %122 = load %struct.gp*, %struct.gp** %xgv_gp140, align 8
  %gp_cvgen = getelementptr inbounds %struct.gp, %struct.gp* %122, i32 0, i32 8
  %123 = load i32, i32* %gp_cvgen, align 4
  %tobool141 = icmp ne i32 %123, 0
  %cond142 = select i1 %tobool141, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.70, i32 0, i32 0)
  %124 = load i8*, i8** %name, align 8
  %125 = load i8*, i8** %cp, align 8
  %126 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %sv_any143 = getelementptr inbounds %struct.hv, %struct.hv* %126, i32 0, i32 0
  %127 = load %struct.xpvhv*, %struct.xpvhv** %sv_any143, align 8
  %xhv_name144 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %127, i32 0, i32 10
  %128 = load i8*, i8** %xhv_name144, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.68, i32 0, i32 0), i8* %cond142, i8* %124, i8* %125, i8* %128)
  br label %if.end.145

if.end.145:                                       ; preds = %cond.end.137, %lor.lhs.false.118
  %129 = load %struct.gv*, %struct.gv** %ngv, align 8
  store %struct.gv* %129, %struct.gv** %gv, align 8
  %sv_any146 = getelementptr inbounds %struct.gv, %struct.gv* %129, i32 0, i32 0
  %130 = load %struct.xpvgv*, %struct.xpvgv** %sv_any146, align 8
  %xgv_gp147 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %130, i32 0, i32 7
  %131 = load %struct.gp*, %struct.gp** %xgv_gp147, align 8
  %gp_cv148 = getelementptr inbounds %struct.gp, %struct.gp* %131, i32 0, i32 7
  %132 = load %struct.cv*, %struct.cv** %gp_cv148, align 8
  store %struct.cv* %132, %struct.cv** %cv, align 8
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.145, %land.lhs.true.104, %land.lhs.true.98, %if.then.93
  store i32 1, i32* %filled, align 4
  %133 = load i32, i32* %i, align 4
  %cmp150 = icmp slt i32 %133, 65
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.end.149
  store i32 1, i32* %have_ovl, align 4
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.152, %if.end.149
  br label %if.end.158

if.else.154:                                      ; preds = %land.lhs.true.89, %if.end.87
  %134 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool155 = icmp ne %struct.gv* %134, null
  br i1 %tobool155, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.else.154
  %135 = load %struct.gv*, %struct.gv** %gv, align 8
  %136 = bitcast %struct.gv* %135 to %struct.cv*
  store %struct.cv* %136, %struct.cv** %cv, align 8
  store i32 1, i32* %filled, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.156, %if.else.154
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.end.153
  %137 = load %struct.cv*, %struct.cv** %cv, align 8
  %138 = bitcast %struct.cv* %137 to %struct.sv*
  store %struct.sv* %138, %struct.sv** @PL_Sv, align 8
  %139 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool159 = icmp ne %struct.sv* %139, null
  br i1 %tobool159, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.158
  %140 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %140, i32 0, i32 1
  %141 = load i32, i32* %sv_refcnt, align 4
  %inc160 = add i32 %141, 1
  store i32 %inc160, i32* %sv_refcnt, align 4
  %tobool161 = icmp ne i32 %inc160, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.158
  %142 = phi i1 [ false, %if.end.158 ], [ %tobool161, %land.rhs ]
  %land.ext = zext i1 %142 to i32
  %143 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %144 = bitcast %struct.sv* %143 to %struct.cv*
  %145 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %145 to i64
  %table163 = getelementptr inbounds %struct.am_table, %struct.am_table* %amt, i32 0, i32 3
  %arrayidx164 = getelementptr inbounds [66 x %struct.cv*], [66 x %struct.cv*]* %table163, i32 0, i64 %idxprom162
  store %struct.cv* %144, %struct.cv** %arrayidx164, align 8
  br label %for.inc.165

for.inc.165:                                      ; preds = %land.end
  %146 = load i32, i32* %i, align 4
  %inc166 = add nsw i32 %146, 1
  store i32 %inc166, i32* %i, align 4
  br label %for.cond.66

for.end.167:                                      ; preds = %for.cond.66
  %147 = load i32, i32* %filled, align 4
  %tobool168 = icmp ne i32 %147, 0
  br i1 %tobool168, label %if.then.169, label %if.end.177

if.then.169:                                      ; preds = %for.end.167
  %flags170 = getelementptr inbounds %struct.am_table, %struct.am_table* %amt, i32 0, i32 2
  %148 = load i32, i32* %flags170, align 4
  %or = or i32 %148, 1
  store i32 %or, i32* %flags170, align 4
  %149 = load i32, i32* %have_ovl, align 4
  %tobool171 = icmp ne i32 %149, 0
  br i1 %tobool171, label %if.then.172, label %if.end.175

if.then.172:                                      ; preds = %if.then.169
  %flags173 = getelementptr inbounds %struct.am_table, %struct.am_table* %amt, i32 0, i32 2
  %150 = load i32, i32* %flags173, align 4
  %or174 = or i32 %150, 2
  store i32 %or174, i32* %flags173, align 4
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.172, %if.then.169
  %151 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %152 = bitcast %struct.hv* %151 to %struct.sv*
  %153 = bitcast %struct.am_table* %amt to i8*
  call void @Perl_sv_magic(%struct.sv* %152, %struct.sv* null, i32 99, i8* %153, i32 560)
  %154 = load i32, i32* %have_ovl, align 4
  %conv176 = trunc i32 %154 to i8
  store i8 %conv176, i8* %retval
  br label %return

if.end.177:                                       ; preds = %for.end.167
  %flags178 = getelementptr inbounds %struct.am_table, %struct.am_table* %amt, i32 0, i32 2
  %155 = load i32, i32* %flags178, align 4
  %and179 = and i32 %155, -2
  store i32 %and179, i32* %flags178, align 4
  %156 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %157 = bitcast %struct.hv* %156 to %struct.sv*
  %158 = bitcast %struct.am_table* %amt to i8*
  call void @Perl_sv_magic(%struct.sv* %157, %struct.sv* null, i32 99, i8* %158, i32 24)
  store i8 0, i8* %retval
  br label %return

return:                                           ; preds = %if.end.177, %if.end.175, %if.then
  %159 = load i8, i8* %retval
  ret i8 %159
}

declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #1

declare i32 @Perl_sv_unmagic(%struct.sv*, i32) #1

declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define %struct.cv* @Perl_gv_handler(%struct.hv* %stash, i32 %id) #0 {
entry:
  %retval = alloca %struct.cv*, align 8
  %stash.addr = alloca %struct.hv*, align 8
  %id.addr = alloca i32, align 4
  %mg = alloca %struct.magic*, align 8
  %amtp = alloca %struct.am_table*, align 8
  %ret = alloca %struct.cv*, align 8
  %gv = alloca %struct.gv*, align 8
  store %struct.hv* %stash, %struct.hv** %stash.addr, align 8
  store i32 %id, i32* %id.addr, align 4
  %0 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %tobool = icmp ne %struct.hv* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %1, i32 0, i32 0
  %2 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %2, i32 0, i32 10
  %3 = load i8*, i8** %xhv_name, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.cv* null, %struct.cv** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %5 = bitcast %struct.hv* %4 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %5, i32 99)
  store %struct.magic* %call, %struct.magic** %mg, align 8
  %6 = load %struct.magic*, %struct.magic** %mg, align 8
  %tobool2 = icmp ne %struct.magic* %6, null
  br i1 %tobool2, label %if.end.6, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %do_update

do_update:                                        ; preds = %if.then.9, %if.then.3
  %7 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %call4 = call signext i8 @Perl_Gv_AMupdate(%struct.hv* %7)
  %8 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %9 = bitcast %struct.hv* %8 to %struct.sv*
  %call5 = call %struct.magic* @Perl_mg_find(%struct.sv* %9, i32 99)
  store %struct.magic* %call5, %struct.magic** %mg, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %do_update, %if.end
  %10 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_ptr = getelementptr inbounds %struct.magic, %struct.magic* %10, i32 0, i32 6
  %11 = load i8*, i8** %mg_ptr, align 8
  %12 = bitcast i8* %11 to %struct.am_table*
  store %struct.am_table* %12, %struct.am_table** %amtp, align 8
  %13 = load %struct.am_table*, %struct.am_table** %amtp, align 8
  %was_ok_am = getelementptr inbounds %struct.am_table, %struct.am_table* %13, i32 0, i32 1
  %14 = load i64, i64* %was_ok_am, align 8
  %15 = load i64, i64* @PL_amagic_generation, align 8
  %cmp = icmp ne i64 %14, %15
  br i1 %cmp, label %if.then.9, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.end.6
  %16 = load %struct.am_table*, %struct.am_table** %amtp, align 8
  %was_ok_sub = getelementptr inbounds %struct.am_table, %struct.am_table* %16, i32 0, i32 0
  %17 = load i32, i32* %was_ok_sub, align 4
  %18 = load i32, i32* @PL_sub_generation, align 4
  %cmp8 = icmp ne i32 %17, %18
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false.7, %if.end.6
  br label %do_update

if.end.10:                                        ; preds = %lor.lhs.false.7
  %19 = load %struct.am_table*, %struct.am_table** %amtp, align 8
  %flags = getelementptr inbounds %struct.am_table, %struct.am_table* %19, i32 0, i32 2
  %20 = load i32, i32* %flags, align 4
  %and = and i32 %20, 1
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %if.then.12, label %if.end.30

if.then.12:                                       ; preds = %if.end.10
  %21 = load i32, i32* %id.addr, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.am_table*, %struct.am_table** %amtp, align 8
  %table = getelementptr inbounds %struct.am_table, %struct.am_table* %22, i32 0, i32 3
  %arrayidx = getelementptr inbounds [66 x %struct.cv*], [66 x %struct.cv*]* %table, i32 0, i64 %idxprom
  %23 = load %struct.cv*, %struct.cv** %arrayidx, align 8
  store %struct.cv* %23, %struct.cv** %ret, align 8
  %24 = load %struct.cv*, %struct.cv** %ret, align 8
  %tobool13 = icmp ne %struct.cv* %24, null
  br i1 %tobool13, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.then.12
  %25 = load %struct.cv*, %struct.cv** %ret, align 8
  %sv_flags = getelementptr inbounds %struct.cv, %struct.cv* %25, i32 0, i32 2
  %26 = load i32, i32* %sv_flags, align 4
  %and14 = and i32 %26, 255
  %cmp15 = icmp eq i32 %and14, 13
  br i1 %cmp15, label %if.then.16, label %if.end.29

if.then.16:                                       ; preds = %land.lhs.true
  %27 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %28 = load i32, i32* %id.addr, align 4
  %idxprom17 = sext i32 %28 to i64
  %arrayidx18 = getelementptr inbounds [66 x i8*], [66 x i8*]* @PL_AMG_names, i32 0, i64 %idxprom17
  %29 = load i8*, i8** %arrayidx18, align 8
  %call19 = call %struct.gv* @Perl_gv_fetchmethod(%struct.hv* %27, i8* %29)
  store %struct.gv* %call19, %struct.gv** %gv, align 8
  %30 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool20 = icmp ne %struct.gv* %30, null
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.28

land.lhs.true.21:                                 ; preds = %if.then.16
  %31 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any22 = getelementptr inbounds %struct.gv, %struct.gv* %31, i32 0, i32 0
  %32 = load %struct.xpvgv*, %struct.xpvgv** %sv_any22, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %32, i32 0, i32 7
  %33 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %33, i32 0, i32 7
  %34 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  %tobool23 = icmp ne %struct.cv* %34, null
  br i1 %tobool23, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %land.lhs.true.21
  %35 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any25 = getelementptr inbounds %struct.gv, %struct.gv* %35, i32 0, i32 0
  %36 = load %struct.xpvgv*, %struct.xpvgv** %sv_any25, align 8
  %xgv_gp26 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %36, i32 0, i32 7
  %37 = load %struct.gp*, %struct.gp** %xgv_gp26, align 8
  %gp_cv27 = getelementptr inbounds %struct.gp, %struct.gp* %37, i32 0, i32 7
  %38 = load %struct.cv*, %struct.cv** %gp_cv27, align 8
  store %struct.cv* %38, %struct.cv** %retval
  br label %return

if.end.28:                                        ; preds = %land.lhs.true.21, %if.then.16
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %land.lhs.true, %if.then.12
  %39 = load %struct.cv*, %struct.cv** %ret, align 8
  store %struct.cv* %39, %struct.cv** %retval
  br label %return

if.end.30:                                        ; preds = %if.end.10
  store %struct.cv* null, %struct.cv** %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.end.29, %if.then.24, %if.then
  %40 = load %struct.cv*, %struct.cv** %retval
  ret %struct.cv* %40
}

; Function Attrs: nounwind uwtable
define %struct.sv* @Perl_amagic_call(%struct.sv* %left, %struct.sv* %right, i32 %method, i32 %flags) #0 {
entry:
  %retval = alloca %struct.sv*, align 8
  %left.addr = alloca %struct.sv*, align 8
  %right.addr = alloca %struct.sv*, align 8
  %method.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %mg = alloca %struct.magic*, align 8
  %cv = alloca %struct.cv*, align 8
  %cvp = alloca %struct.cv**, align 8
  %ocvp = alloca %struct.cv**, align 8
  %amtp = alloca %struct.am_table*, align 8
  %oamtp = alloca %struct.am_table*, align 8
  %off = alloca i32, align 4
  %off1 = alloca i32, align 4
  %lr = alloca i32, align 4
  %assign = alloca i32, align 4
  %notfound = alloca i32, align 4
  %postpr = alloca i32, align 4
  %force_cpy = alloca i32, align 4
  %assignshift = alloca i32, align 4
  %stash = alloca %struct.hv*, align 8
  %logic = alloca i32, align 4
  %tmpRef = alloca %struct.sv*, align 8
  %newref = alloca %struct.sv*, align 8
  %nullsv = alloca %struct.sv*, align 8
  %lessp = alloca %struct.sv*, align 8
  %lessp171 = alloca %struct.sv*, align 8
  %msg = alloca %struct.sv*, align 8
  %tmpRef385 = alloca %struct.sv*, align 8
  %sp = alloca %struct.sv**, align 8
  %myop = alloca %struct.binop, align 8
  %res = alloca %struct.sv*, align 8
  %oldcatch = alloca i8, align 1
  %next = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %sp481 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp530 = alloca %struct.av*, align 8
  %tmp532 = alloca %struct.stackinfo*, align 8
  %ans = alloca i32, align 4
  store %struct.sv* %left, %struct.sv** %left.addr, align 8
  store %struct.sv* %right, %struct.sv** %right.addr, align 8
  store i32 %method, i32* %method.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store %struct.cv* null, %struct.cv** %cv, align 8
  store %struct.cv** null, %struct.cv*** %cvp, align 8
  store %struct.cv** null, %struct.cv*** %ocvp, align 8
  store %struct.am_table* null, %struct.am_table** %amtp, align 8
  store %struct.am_table* null, %struct.am_table** %oamtp, align 8
  store i32 0, i32* %off, align 4
  store i32 0, i32* %lr, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 4, %0
  store i32 %and, i32* %assign, align 4
  store i32 0, i32* %notfound, align 4
  store i32 0, i32* %postpr, align 4
  store i32 0, i32* %force_cpy, align 4
  %1 = load i32, i32* %assign, align 4
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %assignshift, align 4
  store %struct.hv* null, %struct.hv** %stash, align 8
  %2 = load i32, i32* %flags.addr, align 4
  %and1 = and i32 2, %2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and3 = and i32 %4, 268435456
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %land.lhs.true.5, label %if.else

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %5 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 0
  %6 = load i8*, i8** %sv_any, align 8
  %7 = bitcast i8* %6 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %7, i32 0, i32 0
  %8 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_any6 = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 0
  %9 = load i8*, i8** %sv_any6, align 8
  %10 = bitcast i8* %9 to %struct.xpvmg*
  %xmg_stash = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %10, i32 0, i32 6
  %11 = load %struct.hv*, %struct.hv** %xmg_stash, align 8
  store %struct.hv* %11, %struct.hv** %stash, align 8
  %tobool7 = icmp ne %struct.hv* %11, null
  br i1 %tobool7, label %land.lhs.true.8, label %if.else

land.lhs.true.8:                                  ; preds = %land.lhs.true.5
  %12 = load %struct.hv*, %struct.hv** %stash, align 8
  %13 = bitcast %struct.hv* %12 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %13, i32 99)
  store %struct.magic* %call, %struct.magic** %mg, align 8
  %tobool9 = icmp ne %struct.magic* %call, null
  br i1 %tobool9, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %land.lhs.true.8
  %14 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_ptr = getelementptr inbounds %struct.magic, %struct.magic* %14, i32 0, i32 6
  %15 = load i8*, i8** %mg_ptr, align 8
  %16 = bitcast i8* %15 to %struct.am_table*
  %flags11 = getelementptr inbounds %struct.am_table, %struct.am_table* %16, i32 0, i32 2
  %17 = load i32, i32* %flags11, align 4
  %and12 = and i32 %17, 1
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.10
  %18 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_ptr14 = getelementptr inbounds %struct.magic, %struct.magic* %18, i32 0, i32 6
  %19 = load i8*, i8** %mg_ptr14, align 8
  %20 = bitcast i8* %19 to %struct.am_table*
  store %struct.am_table* %20, %struct.am_table** %amtp, align 8
  store %struct.am_table* %20, %struct.am_table** %oamtp, align 8
  %table = getelementptr inbounds %struct.am_table, %struct.am_table* %20, i32 0, i32 3
  %arraydecay = getelementptr inbounds [66 x %struct.cv*], [66 x %struct.cv*]* %table, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond15 = phi %struct.cv** [ %arraydecay, %cond.true ], [ null, %cond.false ]
  store %struct.cv** %cond15, %struct.cv*** %cvp, align 8
  store %struct.cv** %cond15, %struct.cv*** %ocvp, align 8
  %tobool16 = icmp ne %struct.cv** %cond15, null
  br i1 %tobool16, label %land.lhs.true.17, label %if.else

land.lhs.true.17:                                 ; preds = %cond.end
  %21 = load i32, i32* %method.addr, align 4
  %22 = load i32, i32* %assignshift, align 4
  %add = add nsw i32 %21, %22
  store i32 %add, i32* %off, align 4
  %idxprom = sext i32 %add to i64
  %23 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx = getelementptr inbounds %struct.cv*, %struct.cv** %23, i64 %idxprom
  %24 = load %struct.cv*, %struct.cv** %arrayidx, align 8
  store %struct.cv* %24, %struct.cv** %cv, align 8
  %tobool18 = icmp ne %struct.cv* %24, null
  br i1 %tobool18, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.17
  %25 = load i32, i32* %assign, align 4
  %tobool19 = icmp ne i32 %25, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.else

land.lhs.true.20:                                 ; preds = %lor.lhs.false
  %26 = load %struct.am_table*, %struct.am_table** %amtp, align 8
  %fallback = getelementptr inbounds %struct.am_table, %struct.am_table* %26, i32 0, i32 4
  %27 = load i64, i64* %fallback, align 8
  %cmp = icmp sgt i64 %27, 1
  br i1 %cmp, label %land.lhs.true.21, label %if.else

land.lhs.true.21:                                 ; preds = %land.lhs.true.20
  %28 = load i32, i32* %method.addr, align 4
  store i32 %28, i32* %off, align 4
  %idxprom22 = sext i32 %28 to i64
  %29 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx23 = getelementptr inbounds %struct.cv*, %struct.cv** %29, i64 %idxprom22
  %30 = load %struct.cv*, %struct.cv** %arrayidx23, align 8
  store %struct.cv* %30, %struct.cv** %cv, align 8
  %tobool24 = icmp ne %struct.cv* %30, null
  br i1 %tobool24, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.21, %land.lhs.true.17
  store i32 -1, i32* %lr, align 4
  br label %if.end.370

if.else:                                          ; preds = %land.lhs.true.21, %land.lhs.true.20, %lor.lhs.false, %cond.end, %land.lhs.true.8, %land.lhs.true.5, %land.lhs.true, %entry
  %31 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %tobool25 = icmp ne %struct.cv** %31, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.else.207

land.lhs.true.26:                                 ; preds = %if.else
  %32 = load %struct.am_table*, %struct.am_table** %amtp, align 8
  %fallback27 = getelementptr inbounds %struct.am_table, %struct.am_table* %32, i32 0, i32 4
  %33 = load i64, i64* %fallback27, align 8
  %cmp28 = icmp sgt i64 %33, 1
  br i1 %cmp28, label %land.lhs.true.29, label %if.else.207

land.lhs.true.29:                                 ; preds = %land.lhs.true.26
  %34 = load i32, i32* %flags.addr, align 4
  %and30 = and i32 %34, 8
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then.32, label %if.else.207

if.then.32:                                       ; preds = %land.lhs.true.29
  %35 = load i32, i32* %method.addr, align 4
  switch i32 %35, label %sw.default [
    i32 44, label %sw.bb
    i32 45, label %sw.bb.40
    i32 2, label %sw.bb.49
    i32 5, label %sw.bb.54
    i32 4, label %sw.bb.62
    i32 42, label %sw.bb.70
    i32 56, label %sw.bb.81
    i32 1, label %sw.bb.101
    i32 57, label %sw.bb.195
    i32 64, label %sw.bb.202
    i32 63, label %sw.bb.202
    i32 58, label %sw.bb.203
    i32 59, label %sw.bb.203
    i32 60, label %sw.bb.203
    i32 61, label %sw.bb.203
    i32 62, label %sw.bb.203
  ]

sw.bb:                                            ; preds = %if.then.32
  store i32 1, i32* %force_cpy, align 4
  store i32 7, i32* %off, align 4
  %36 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx33 = getelementptr inbounds %struct.cv*, %struct.cv** %36, i64 7
  %37 = load %struct.cv*, %struct.cv** %arrayidx33, align 8
  store %struct.cv* %37, %struct.cv** %cv, align 8
  %tobool34 = icmp ne %struct.cv* %37, null
  br i1 %tobool34, label %if.then.39, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %sw.bb
  store i32 6, i32* %off, align 4
  %38 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx36 = getelementptr inbounds %struct.cv*, %struct.cv** %38, i64 6
  %39 = load %struct.cv*, %struct.cv** %arrayidx36, align 8
  store %struct.cv* %39, %struct.cv** %cv, align 8
  %tobool37 = icmp ne %struct.cv* %39, null
  br i1 %tobool37, label %land.lhs.true.38, label %if.end

land.lhs.true.38:                                 ; preds = %lor.lhs.false.35
  store i32 0, i32* %force_cpy, align 4
  store i32 1, i32* %postpr, align 4
  br i1 true, label %if.then.39, label %if.end

if.then.39:                                       ; preds = %land.lhs.true.38, %sw.bb
  store %struct.sv* @PL_sv_yes, %struct.sv** %right.addr, align 8
  store i32 -1, i32* %lr, align 4
  store i32 1, i32* %assign, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.39, %land.lhs.true.38, %lor.lhs.false.35
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.then.32
  store i32 1, i32* %force_cpy, align 4
  store i32 9, i32* %off, align 4
  %40 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx41 = getelementptr inbounds %struct.cv*, %struct.cv** %40, i64 9
  %41 = load %struct.cv*, %struct.cv** %arrayidx41, align 8
  store %struct.cv* %41, %struct.cv** %cv, align 8
  %tobool42 = icmp ne %struct.cv* %41, null
  br i1 %tobool42, label %if.then.47, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %sw.bb.40
  store i32 8, i32* %off, align 4
  %42 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx44 = getelementptr inbounds %struct.cv*, %struct.cv** %42, i64 8
  %43 = load %struct.cv*, %struct.cv** %arrayidx44, align 8
  store %struct.cv* %43, %struct.cv** %cv, align 8
  %tobool45 = icmp ne %struct.cv* %43, null
  br i1 %tobool45, label %land.lhs.true.46, label %if.end.48

land.lhs.true.46:                                 ; preds = %lor.lhs.false.43
  store i32 0, i32* %force_cpy, align 4
  store i32 1, i32* %postpr, align 4
  br i1 true, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %land.lhs.true.46, %sw.bb.40
  store %struct.sv* @PL_sv_yes, %struct.sv** %right.addr, align 8
  store i32 -1, i32* %lr, align 4
  store i32 1, i32* %assign, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %land.lhs.true.46, %lor.lhs.false.43
  br label %sw.epilog

sw.bb.49:                                         ; preds = %if.then.32
  store i32 5, i32* %off, align 4
  %44 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx50 = getelementptr inbounds %struct.cv*, %struct.cv** %44, i64 5
  %45 = load %struct.cv*, %struct.cv** %arrayidx50, align 8
  store %struct.cv* %45, %struct.cv** %cv, align 8
  %tobool51 = icmp ne %struct.cv* %45, null
  br i1 %tobool51, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb.49
  store i32 4, i32* %off, align 4
  %46 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx52 = getelementptr inbounds %struct.cv*, %struct.cv** %46, i64 4
  %47 = load %struct.cv*, %struct.cv** %arrayidx52, align 8
  store %struct.cv* %47, %struct.cv** %cv, align 8
  %tobool53 = icmp ne %struct.cv* %47, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb.49
  %48 = phi i1 [ true, %sw.bb.49 ], [ %tobool53, %lor.rhs ]
  %lor.ext = zext i1 %48 to i32
  br label %sw.epilog

sw.bb.54:                                         ; preds = %if.then.32
  store i32 4, i32* %off, align 4
  %49 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx55 = getelementptr inbounds %struct.cv*, %struct.cv** %49, i64 4
  %50 = load %struct.cv*, %struct.cv** %arrayidx55, align 8
  store %struct.cv* %50, %struct.cv** %cv, align 8
  %tobool56 = icmp ne %struct.cv* %50, null
  br i1 %tobool56, label %lor.end.60, label %lor.rhs.57

lor.rhs.57:                                       ; preds = %sw.bb.54
  store i32 2, i32* %off, align 4
  %51 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx58 = getelementptr inbounds %struct.cv*, %struct.cv** %51, i64 2
  %52 = load %struct.cv*, %struct.cv** %arrayidx58, align 8
  store %struct.cv* %52, %struct.cv** %cv, align 8
  %tobool59 = icmp ne %struct.cv* %52, null
  br label %lor.end.60

lor.end.60:                                       ; preds = %lor.rhs.57, %sw.bb.54
  %53 = phi i1 [ true, %sw.bb.54 ], [ %tobool59, %lor.rhs.57 ]
  %lor.ext61 = zext i1 %53 to i32
  br label %sw.epilog

sw.bb.62:                                         ; preds = %if.then.32
  store i32 5, i32* %off, align 4
  %54 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx63 = getelementptr inbounds %struct.cv*, %struct.cv** %54, i64 5
  %55 = load %struct.cv*, %struct.cv** %arrayidx63, align 8
  store %struct.cv* %55, %struct.cv** %cv, align 8
  %tobool64 = icmp ne %struct.cv* %55, null
  br i1 %tobool64, label %lor.end.68, label %lor.rhs.65

lor.rhs.65:                                       ; preds = %sw.bb.62
  store i32 2, i32* %off, align 4
  %56 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx66 = getelementptr inbounds %struct.cv*, %struct.cv** %56, i64 2
  %57 = load %struct.cv*, %struct.cv** %arrayidx66, align 8
  store %struct.cv* %57, %struct.cv** %cv, align 8
  %tobool67 = icmp ne %struct.cv* %57, null
  br label %lor.end.68

lor.end.68:                                       ; preds = %lor.rhs.65, %sw.bb.62
  %58 = phi i1 [ true, %sw.bb.62 ], [ %tobool67, %lor.rhs.65 ]
  %lor.ext69 = zext i1 %58 to i32
  br label %sw.epilog

sw.bb.70:                                         ; preds = %if.then.32
  store i32 2, i32* %off, align 4
  %59 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx71 = getelementptr inbounds %struct.cv*, %struct.cv** %59, i64 2
  %60 = load %struct.cv*, %struct.cv** %arrayidx71, align 8
  store %struct.cv* %60, %struct.cv** %cv, align 8
  %tobool72 = icmp ne %struct.cv* %60, null
  br i1 %tobool72, label %lor.end.79, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %sw.bb.70
  store i32 5, i32* %off, align 4
  %61 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx74 = getelementptr inbounds %struct.cv*, %struct.cv** %61, i64 5
  %62 = load %struct.cv*, %struct.cv** %arrayidx74, align 8
  store %struct.cv* %62, %struct.cv** %cv, align 8
  %tobool75 = icmp ne %struct.cv* %62, null
  br i1 %tobool75, label %lor.end.79, label %lor.rhs.76

lor.rhs.76:                                       ; preds = %lor.lhs.false.73
  store i32 4, i32* %off, align 4
  %63 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx77 = getelementptr inbounds %struct.cv*, %struct.cv** %63, i64 4
  %64 = load %struct.cv*, %struct.cv** %arrayidx77, align 8
  store %struct.cv* %64, %struct.cv** %cv, align 8
  %tobool78 = icmp ne %struct.cv* %64, null
  br label %lor.end.79

lor.end.79:                                       ; preds = %lor.rhs.76, %lor.lhs.false.73, %sw.bb.70
  %65 = phi i1 [ true, %lor.lhs.false.73 ], [ true, %sw.bb.70 ], [ %tobool78, %lor.rhs.76 ]
  %lor.ext80 = zext i1 %65 to i32
  store i32 1, i32* %postpr, align 4
  br label %sw.epilog

sw.bb.81:                                         ; preds = %if.then.32
  %66 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %sv_any82 = getelementptr inbounds %struct.sv, %struct.sv* %66, i32 0, i32 0
  %67 = load i8*, i8** %sv_any82, align 8
  %68 = bitcast i8* %67 to %struct.xrv*
  %xrv_rv83 = getelementptr inbounds %struct.xrv, %struct.xrv* %68, i32 0, i32 0
  %69 = load %struct.sv*, %struct.sv** %xrv_rv83, align 8
  store %struct.sv* %69, %struct.sv** %tmpRef, align 8
  %70 = load %struct.sv*, %struct.sv** %tmpRef, align 8
  %sv_flags84 = getelementptr inbounds %struct.sv, %struct.sv* %70, i32 0, i32 2
  %71 = load i32, i32* %sv_flags84, align 4
  %and85 = and i32 %71, 524288
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.end.100, label %land.lhs.true.87

land.lhs.true.87:                                 ; preds = %sw.bb.81
  %72 = load %struct.sv*, %struct.sv** %tmpRef, align 8
  %sv_flags88 = getelementptr inbounds %struct.sv, %struct.sv* %72, i32 0, i32 2
  %73 = load i32, i32* %sv_flags88, align 4
  %and89 = and i32 %73, 255
  %cmp90 = icmp ule i32 %and89, 7
  br i1 %cmp90, label %if.then.91, label %if.end.100

if.then.91:                                       ; preds = %land.lhs.true.87
  %74 = load %struct.sv*, %struct.sv** %tmpRef, align 8
  %call92 = call %struct.sv* @Perl_newSVsv(%struct.sv* %74)
  store %struct.sv* %call92, %struct.sv** %newref, align 8
  %75 = load %struct.sv*, %struct.sv** %newref, align 8
  %sv_flags93 = getelementptr inbounds %struct.sv, %struct.sv* %75, i32 0, i32 2
  %76 = load i32, i32* %sv_flags93, align 4
  %or = or i32 %76, 4096
  store i32 %or, i32* %sv_flags93, align 4
  %77 = load %struct.sv*, %struct.sv** %tmpRef, align 8
  %sv_any94 = getelementptr inbounds %struct.sv, %struct.sv* %77, i32 0, i32 0
  %78 = load i8*, i8** %sv_any94, align 8
  %79 = bitcast i8* %78 to %struct.xpvmg*
  %xmg_stash95 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %79, i32 0, i32 6
  %80 = load %struct.hv*, %struct.hv** %xmg_stash95, align 8
  %81 = bitcast %struct.hv* %80 to %struct.sv*
  store %struct.sv* %81, %struct.sv** @PL_Sv, align 8
  %82 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool96 = icmp ne %struct.sv* %82, null
  br i1 %tobool96, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.91
  %83 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %83, i32 0, i32 1
  %84 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %84, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool97 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.91
  %85 = phi i1 [ false, %if.then.91 ], [ %tobool97, %land.rhs ]
  %land.ext = zext i1 %85 to i32
  %86 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %87 = bitcast %struct.sv* %86 to %struct.hv*
  %88 = load %struct.sv*, %struct.sv** %newref, align 8
  %sv_any98 = getelementptr inbounds %struct.sv, %struct.sv* %88, i32 0, i32 0
  %89 = load i8*, i8** %sv_any98, align 8
  %90 = bitcast i8* %89 to %struct.xpvmg*
  %xmg_stash99 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %90, i32 0, i32 6
  store %struct.hv* %87, %struct.hv** %xmg_stash99, align 8
  %91 = load %struct.sv*, %struct.sv** %newref, align 8
  store %struct.sv* %91, %struct.sv** %retval
  br label %return

if.end.100:                                       ; preds = %land.lhs.true.87, %sw.bb.81
  br label %sw.epilog

sw.bb.101:                                        ; preds = %if.then.32
  store i32 28, i32* %off1, align 4
  %92 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx102 = getelementptr inbounds %struct.cv*, %struct.cv** %92, i64 28
  %93 = load %struct.cv*, %struct.cv** %arrayidx102, align 8
  %tobool103 = icmp ne %struct.cv* %93, null
  br i1 %tobool103, label %land.lhs.true.107, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %sw.bb.101
  store i32 34, i32* %off1, align 4
  %94 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx105 = getelementptr inbounds %struct.cv*, %struct.cv** %94, i64 34
  %95 = load %struct.cv*, %struct.cv** %arrayidx105, align 8
  %tobool106 = icmp ne %struct.cv* %95, null
  br i1 %tobool106, label %land.lhs.true.107, label %if.end.194

land.lhs.true.107:                                ; preds = %lor.lhs.false.104, %sw.bb.101
  store i32 57, i32* %off, align 4
  %96 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx108 = getelementptr inbounds %struct.cv*, %struct.cv** %96, i64 57
  %97 = load %struct.cv*, %struct.cv** %arrayidx108, align 8
  store %struct.cv* %97, %struct.cv** %cv, align 8
  %tobool109 = icmp ne %struct.cv* %97, null
  br i1 %tobool109, label %if.then.113, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %land.lhs.true.107
  store i32 8, i32* %off, align 4
  %98 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx111 = getelementptr inbounds %struct.cv*, %struct.cv** %98, i64 8
  %99 = load %struct.cv*, %struct.cv** %arrayidx111, align 8
  store %struct.cv* %99, %struct.cv** %cv, align 8
  %tobool112 = icmp ne %struct.cv* %99, null
  br i1 %tobool112, label %if.then.113, label %if.end.194

if.then.113:                                      ; preds = %lor.lhs.false.110, %land.lhs.true.107
  %call114 = call %struct.sv* @Perl_newSViv(i64 0)
  %call115 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call114)
  store %struct.sv* %call115, %struct.sv** %nullsv, align 8
  %100 = load i32, i32* %off1, align 4
  %cmp116 = icmp eq i32 %100, 28
  br i1 %cmp116, label %if.then.117, label %if.else.170

if.then.117:                                      ; preds = %if.then.113
  %101 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %102 = load %struct.sv*, %struct.sv** %nullsv, align 8
  %call118 = call %struct.sv* @Perl_amagic_call(%struct.sv* %101, %struct.sv* %102, i32 28, i32 1)
  store %struct.sv* %call118, %struct.sv** %lessp, align 8
  %103 = load %struct.sv*, %struct.sv** %lessp, align 8
  %tobool119 = icmp ne %struct.sv* %103, null
  br i1 %tobool119, label %cond.false.121, label %cond.true.120

cond.true.120:                                    ; preds = %if.then.117
  br label %cond.end.168

cond.false.121:                                   ; preds = %if.then.117
  %104 = load %struct.sv*, %struct.sv** %lessp, align 8
  %sv_flags122 = getelementptr inbounds %struct.sv, %struct.sv* %104, i32 0, i32 2
  %105 = load i32, i32* %sv_flags122, align 4
  %and123 = and i32 %105, 262144
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %cond.true.125, label %cond.false.143

cond.true.125:                                    ; preds = %cond.false.121
  %106 = load %struct.sv*, %struct.sv** %lessp, align 8
  %sv_any126 = getelementptr inbounds %struct.sv, %struct.sv* %106, i32 0, i32 0
  %107 = load i8*, i8** %sv_any126, align 8
  %108 = bitcast i8* %107 to %struct.xpv*
  store %struct.xpv* %108, %struct.xpv** @PL_Xpv, align 8
  %tobool127 = icmp ne %struct.xpv* %108, null
  br i1 %tobool127, label %land.rhs.128, label %land.end.140

land.rhs.128:                                     ; preds = %cond.true.125
  %109 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %109, i32 0, i32 1
  %110 = load i64, i64* %xpv_cur, align 8
  %cmp129 = icmp ugt i64 %110, 1
  br i1 %cmp129, label %lor.end.138, label %lor.rhs.130

lor.rhs.130:                                      ; preds = %land.rhs.128
  %111 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur131 = getelementptr inbounds %struct.xpv, %struct.xpv* %111, i32 0, i32 1
  %112 = load i64, i64* %xpv_cur131, align 8
  %tobool132 = icmp ne i64 %112, 0
  br i1 %tobool132, label %land.rhs.133, label %land.end.136

land.rhs.133:                                     ; preds = %lor.rhs.130
  %113 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %113, i32 0, i32 0
  %114 = load i8*, i8** %xpv_pv, align 8
  %115 = load i8, i8* %114, align 1
  %conv = sext i8 %115 to i32
  %cmp134 = icmp ne i32 %conv, 48
  br label %land.end.136

land.end.136:                                     ; preds = %land.rhs.133, %lor.rhs.130
  %116 = phi i1 [ false, %lor.rhs.130 ], [ %cmp134, %land.rhs.133 ]
  br label %lor.end.138

lor.end.138:                                      ; preds = %land.end.136, %land.rhs.128
  %117 = phi i1 [ true, %land.rhs.128 ], [ %116, %land.end.136 ]
  br label %land.end.140

land.end.140:                                     ; preds = %lor.end.138, %cond.true.125
  %118 = phi i1 [ false, %cond.true.125 ], [ %117, %lor.end.138 ]
  %cond142 = select i1 %118, i32 1, i32 0
  br label %cond.end.166

cond.false.143:                                   ; preds = %cond.false.121
  %119 = load %struct.sv*, %struct.sv** %lessp, align 8
  %sv_flags144 = getelementptr inbounds %struct.sv, %struct.sv* %119, i32 0, i32 2
  %120 = load i32, i32* %sv_flags144, align 4
  %and145 = and i32 %120, 65536
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %cond.true.147, label %cond.false.151

cond.true.147:                                    ; preds = %cond.false.143
  %121 = load %struct.sv*, %struct.sv** %lessp, align 8
  %sv_any148 = getelementptr inbounds %struct.sv, %struct.sv* %121, i32 0, i32 0
  %122 = load i8*, i8** %sv_any148, align 8
  %123 = bitcast i8* %122 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %123, i32 0, i32 3
  %124 = load i64, i64* %xiv_iv, align 8
  %cmp149 = icmp ne i64 %124, 0
  %conv150 = zext i1 %cmp149 to i32
  br label %cond.end.164

cond.false.151:                                   ; preds = %cond.false.143
  %125 = load %struct.sv*, %struct.sv** %lessp, align 8
  %sv_flags152 = getelementptr inbounds %struct.sv, %struct.sv* %125, i32 0, i32 2
  %126 = load i32, i32* %sv_flags152, align 4
  %and153 = and i32 %126, 131072
  %tobool154 = icmp ne i32 %and153, 0
  br i1 %tobool154, label %cond.true.155, label %cond.false.159

cond.true.155:                                    ; preds = %cond.false.151
  %127 = load %struct.sv*, %struct.sv** %lessp, align 8
  %sv_any156 = getelementptr inbounds %struct.sv, %struct.sv* %127, i32 0, i32 0
  %128 = load i8*, i8** %sv_any156, align 8
  %129 = bitcast i8* %128 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %129, i32 0, i32 4
  %130 = load double, double* %xnv_nv, align 8
  %cmp157 = fcmp une double %130, 0.000000e+00
  %conv158 = zext i1 %cmp157 to i32
  br label %cond.end.162

cond.false.159:                                   ; preds = %cond.false.151
  %131 = load %struct.sv*, %struct.sv** %lessp, align 8
  %call160 = call signext i8 @Perl_sv_2bool(%struct.sv* %131)
  %conv161 = sext i8 %call160 to i32
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.159, %cond.true.155
  %cond163 = phi i32 [ %conv158, %cond.true.155 ], [ %conv161, %cond.false.159 ]
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.end.162, %cond.true.147
  %cond165 = phi i32 [ %conv150, %cond.true.147 ], [ %cond163, %cond.end.162 ]
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.end.164, %land.end.140
  %cond167 = phi i32 [ %cond142, %land.end.140 ], [ %cond165, %cond.end.164 ]
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.end.166, %cond.true.120
  %cond169 = phi i32 [ 0, %cond.true.120 ], [ %cond167, %cond.end.166 ]
  store i32 %cond169, i32* %logic, align 4
  br label %if.end.185

if.else.170:                                      ; preds = %if.then.113
  %132 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %133 = load %struct.sv*, %struct.sv** %nullsv, align 8
  %call172 = call %struct.sv* @Perl_amagic_call(%struct.sv* %132, %struct.sv* %133, i32 34, i32 1)
  store %struct.sv* %call172, %struct.sv** %lessp171, align 8
  %134 = load %struct.sv*, %struct.sv** %lessp171, align 8
  %sv_flags173 = getelementptr inbounds %struct.sv, %struct.sv* %134, i32 0, i32 2
  %135 = load i32, i32* %sv_flags173, align 4
  %and174 = and i32 %135, 131072
  %tobool175 = icmp ne i32 %and174, 0
  br i1 %tobool175, label %cond.true.176, label %cond.false.179

cond.true.176:                                    ; preds = %if.else.170
  %136 = load %struct.sv*, %struct.sv** %lessp171, align 8
  %sv_any177 = getelementptr inbounds %struct.sv, %struct.sv* %136, i32 0, i32 0
  %137 = load i8*, i8** %sv_any177, align 8
  %138 = bitcast i8* %137 to %struct.xpvnv*
  %xnv_nv178 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %138, i32 0, i32 4
  %139 = load double, double* %xnv_nv178, align 8
  br label %cond.end.181

cond.false.179:                                   ; preds = %if.else.170
  %140 = load %struct.sv*, %struct.sv** %lessp171, align 8
  %call180 = call double @Perl_sv_2nv(%struct.sv* %140)
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.179, %cond.true.176
  %cond182 = phi double [ %139, %cond.true.176 ], [ %call180, %cond.false.179 ]
  %cmp183 = fcmp olt double %cond182, 0.000000e+00
  %conv184 = zext i1 %cmp183 to i32
  store i32 %conv184, i32* %logic, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %cond.end.181, %cond.end.168
  %141 = load i32, i32* %logic, align 4
  %tobool186 = icmp ne i32 %141, 0
  br i1 %tobool186, label %if.then.187, label %if.else.192

if.then.187:                                      ; preds = %if.end.185
  %142 = load i32, i32* %off, align 4
  %cmp188 = icmp eq i32 %142, 8
  br i1 %cmp188, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %if.then.187
  %143 = load %struct.sv*, %struct.sv** %left.addr, align 8
  store %struct.sv* %143, %struct.sv** %right.addr, align 8
  %144 = load %struct.sv*, %struct.sv** %nullsv, align 8
  store %struct.sv* %144, %struct.sv** %left.addr, align 8
  store i32 1, i32* %lr, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.190, %if.then.187
  br label %if.end.193

if.else.192:                                      ; preds = %if.end.185
  %145 = load %struct.sv*, %struct.sv** %left.addr, align 8
  store %struct.sv* %145, %struct.sv** %retval
  br label %return

if.end.193:                                       ; preds = %if.end.191
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %lor.lhs.false.110, %lor.lhs.false.104
  br label %sw.epilog

sw.bb.195:                                        ; preds = %if.then.32
  store i32 8, i32* %off, align 4
  %146 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx196 = getelementptr inbounds %struct.cv*, %struct.cv** %146, i64 8
  %147 = load %struct.cv*, %struct.cv** %arrayidx196, align 8
  store %struct.cv* %147, %struct.cv** %cv, align 8
  %tobool197 = icmp ne %struct.cv* %147, null
  br i1 %tobool197, label %if.then.198, label %if.end.201

if.then.198:                                      ; preds = %sw.bb.195
  %148 = load %struct.sv*, %struct.sv** %left.addr, align 8
  store %struct.sv* %148, %struct.sv** %right.addr, align 8
  %call199 = call %struct.sv* @Perl_newSViv(i64 0)
  %call200 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call199)
  store %struct.sv* %call200, %struct.sv** %left.addr, align 8
  store i32 1, i32* %lr, align 4
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.198, %sw.bb.195
  br label %sw.epilog

sw.bb.202:                                        ; preds = %if.then.32, %if.then.32
  store %struct.sv* null, %struct.sv** %retval
  br label %return

sw.bb.203:                                        ; preds = %if.then.32, %if.then.32, %if.then.32, %if.then.32, %if.then.32
  %149 = load %struct.sv*, %struct.sv** %left.addr, align 8
  store %struct.sv* %149, %struct.sv** %retval
  br label %return

sw.default:                                       ; preds = %if.then.32
  br label %not_found

sw.epilog:                                        ; preds = %if.end.201, %if.end.194, %if.end.100, %lor.end.79, %lor.end.68, %lor.end.60, %lor.end, %if.end.48, %if.end
  %150 = load %struct.cv*, %struct.cv** %cv, align 8
  %tobool204 = icmp ne %struct.cv* %150, null
  br i1 %tobool204, label %if.end.206, label %if.then.205

if.then.205:                                      ; preds = %sw.epilog
  br label %not_found

if.end.206:                                       ; preds = %sw.epilog
  br label %if.end.369

if.else.207:                                      ; preds = %land.lhs.true.29, %land.lhs.true.26, %if.else
  %151 = load i32, i32* %flags.addr, align 4
  %and208 = and i32 1, %151
  %tobool209 = icmp ne i32 %and208, 0
  br i1 %tobool209, label %if.else.241, label %land.lhs.true.210

land.lhs.true.210:                                ; preds = %if.else.207
  %152 = load %struct.sv*, %struct.sv** %right.addr, align 8
  %sv_flags211 = getelementptr inbounds %struct.sv, %struct.sv* %152, i32 0, i32 2
  %153 = load i32, i32* %sv_flags211, align 4
  %and212 = and i32 %153, 268435456
  %tobool213 = icmp ne i32 %and212, 0
  br i1 %tobool213, label %land.lhs.true.214, label %if.else.241

land.lhs.true.214:                                ; preds = %land.lhs.true.210
  %154 = load %struct.sv*, %struct.sv** %right.addr, align 8
  %sv_any215 = getelementptr inbounds %struct.sv, %struct.sv* %154, i32 0, i32 0
  %155 = load i8*, i8** %sv_any215, align 8
  %156 = bitcast i8* %155 to %struct.xrv*
  %xrv_rv216 = getelementptr inbounds %struct.xrv, %struct.xrv* %156, i32 0, i32 0
  %157 = load %struct.sv*, %struct.sv** %xrv_rv216, align 8
  %sv_any217 = getelementptr inbounds %struct.sv, %struct.sv* %157, i32 0, i32 0
  %158 = load i8*, i8** %sv_any217, align 8
  %159 = bitcast i8* %158 to %struct.xpvmg*
  %xmg_stash218 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %159, i32 0, i32 6
  %160 = load %struct.hv*, %struct.hv** %xmg_stash218, align 8
  store %struct.hv* %160, %struct.hv** %stash, align 8
  %tobool219 = icmp ne %struct.hv* %160, null
  br i1 %tobool219, label %land.lhs.true.220, label %if.else.241

land.lhs.true.220:                                ; preds = %land.lhs.true.214
  %161 = load %struct.hv*, %struct.hv** %stash, align 8
  %162 = bitcast %struct.hv* %161 to %struct.sv*
  %call221 = call %struct.magic* @Perl_mg_find(%struct.sv* %162, i32 99)
  store %struct.magic* %call221, %struct.magic** %mg, align 8
  %tobool222 = icmp ne %struct.magic* %call221, null
  br i1 %tobool222, label %land.lhs.true.223, label %if.else.241

land.lhs.true.223:                                ; preds = %land.lhs.true.220
  %163 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_ptr224 = getelementptr inbounds %struct.magic, %struct.magic* %163, i32 0, i32 6
  %164 = load i8*, i8** %mg_ptr224, align 8
  %165 = bitcast i8* %164 to %struct.am_table*
  %flags225 = getelementptr inbounds %struct.am_table, %struct.am_table* %165, i32 0, i32 2
  %166 = load i32, i32* %flags225, align 4
  %and226 = and i32 %166, 1
  %tobool227 = icmp ne i32 %and226, 0
  br i1 %tobool227, label %cond.true.228, label %cond.false.232

cond.true.228:                                    ; preds = %land.lhs.true.223
  %167 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_ptr229 = getelementptr inbounds %struct.magic, %struct.magic* %167, i32 0, i32 6
  %168 = load i8*, i8** %mg_ptr229, align 8
  %169 = bitcast i8* %168 to %struct.am_table*
  store %struct.am_table* %169, %struct.am_table** %amtp, align 8
  %table230 = getelementptr inbounds %struct.am_table, %struct.am_table* %169, i32 0, i32 3
  %arraydecay231 = getelementptr inbounds [66 x %struct.cv*], [66 x %struct.cv*]* %table230, i32 0, i32 0
  br label %cond.end.233

cond.false.232:                                   ; preds = %land.lhs.true.223
  br label %cond.end.233

cond.end.233:                                     ; preds = %cond.false.232, %cond.true.228
  %cond234 = phi %struct.cv** [ %arraydecay231, %cond.true.228 ], [ null, %cond.false.232 ]
  store %struct.cv** %cond234, %struct.cv*** %cvp, align 8
  %tobool235 = icmp ne %struct.cv** %cond234, null
  br i1 %tobool235, label %land.lhs.true.236, label %if.else.241

land.lhs.true.236:                                ; preds = %cond.end.233
  %170 = load i32, i32* %method.addr, align 4
  store i32 %170, i32* %off, align 4
  %idxprom237 = sext i32 %170 to i64
  %171 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx238 = getelementptr inbounds %struct.cv*, %struct.cv** %171, i64 %idxprom237
  %172 = load %struct.cv*, %struct.cv** %arrayidx238, align 8
  store %struct.cv* %172, %struct.cv** %cv, align 8
  %tobool239 = icmp ne %struct.cv* %172, null
  br i1 %tobool239, label %if.then.240, label %if.else.241

if.then.240:                                      ; preds = %land.lhs.true.236
  store i32 1, i32* %lr, align 4
  br label %if.end.368

if.else.241:                                      ; preds = %land.lhs.true.236, %cond.end.233, %land.lhs.true.220, %land.lhs.true.214, %land.lhs.true.210, %if.else.207
  %173 = load %struct.cv**, %struct.cv*** %ocvp, align 8
  %tobool242 = icmp ne %struct.cv** %173, null
  br i1 %tobool242, label %land.lhs.true.243, label %lor.lhs.false.250

land.lhs.true.243:                                ; preds = %if.else.241
  %174 = load %struct.am_table*, %struct.am_table** %oamtp, align 8
  %fallback244 = getelementptr inbounds %struct.am_table, %struct.am_table* %174, i32 0, i32 4
  %175 = load i64, i64* %fallback244, align 8
  %cmp245 = icmp sgt i64 %175, 1
  br i1 %cmp245, label %land.lhs.true.247, label %lor.lhs.false.250

land.lhs.true.247:                                ; preds = %land.lhs.true.243
  %176 = load %struct.cv**, %struct.cv*** %ocvp, align 8
  store %struct.cv** %176, %struct.cv*** %cvp, align 8
  %tobool248 = icmp ne %struct.cv** %176, null
  br i1 %tobool248, label %land.lhs.true.249, label %lor.lhs.false.250

land.lhs.true.249:                                ; preds = %land.lhs.true.247
  store i32 -1, i32* %lr, align 4
  br i1 true, label %land.lhs.true.257, label %lor.lhs.false.250

lor.lhs.false.250:                                ; preds = %land.lhs.true.249, %land.lhs.true.247, %land.lhs.true.243, %if.else.241
  %177 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %tobool251 = icmp ne %struct.cv** %177, null
  br i1 %tobool251, label %land.lhs.true.252, label %if.else.286

land.lhs.true.252:                                ; preds = %lor.lhs.false.250
  %178 = load %struct.am_table*, %struct.am_table** %amtp, align 8
  %fallback253 = getelementptr inbounds %struct.am_table, %struct.am_table* %178, i32 0, i32 4
  %179 = load i64, i64* %fallback253, align 8
  %cmp254 = icmp sgt i64 %179, 1
  br i1 %cmp254, label %land.lhs.true.256, label %if.else.286

land.lhs.true.256:                                ; preds = %land.lhs.true.252
  store i32 1, i32* %lr, align 4
  br i1 true, label %land.lhs.true.257, label %if.else.286

land.lhs.true.257:                                ; preds = %land.lhs.true.256, %land.lhs.true.249
  %180 = load i32, i32* %flags.addr, align 4
  %and258 = and i32 %180, 8
  %tobool259 = icmp ne i32 %and258, 0
  br i1 %tobool259, label %if.else.286, label %if.then.260

if.then.260:                                      ; preds = %land.lhs.true.257
  %181 = load i32, i32* %method.addr, align 4
  %cmp261 = icmp eq i32 %181, 54
  br i1 %cmp261, label %if.then.272, label %lor.lhs.false.263

lor.lhs.false.263:                                ; preds = %if.then.260
  %182 = load i32, i32* %method.addr, align 4
  %cmp264 = icmp eq i32 %182, 55
  br i1 %cmp264, label %if.then.272, label %lor.lhs.false.266

lor.lhs.false.266:                                ; preds = %lor.lhs.false.263
  %183 = load i32, i32* %method.addr, align 4
  %cmp267 = icmp eq i32 %183, 52
  br i1 %cmp267, label %if.then.272, label %lor.lhs.false.269

lor.lhs.false.269:                                ; preds = %lor.lhs.false.266
  %184 = load i32, i32* %method.addr, align 4
  %cmp270 = icmp eq i32 %184, 53
  br i1 %cmp270, label %if.then.272, label %if.end.273

if.then.272:                                      ; preds = %lor.lhs.false.269, %lor.lhs.false.266, %lor.lhs.false.263, %if.then.260
  store %struct.sv* null, %struct.sv** %retval
  br label %return

if.end.273:                                       ; preds = %lor.lhs.false.269
  store i32 -1, i32* %off, align 4
  %185 = load i32, i32* %method.addr, align 4
  switch i32 %185, label %sw.epilog.276 [
    i32 28, label %sw.bb.274
    i32 29, label %sw.bb.274
    i32 30, label %sw.bb.274
    i32 31, label %sw.bb.274
    i32 32, label %sw.bb.274
    i32 33, label %sw.bb.274
    i32 36, label %sw.bb.275
    i32 37, label %sw.bb.275
    i32 38, label %sw.bb.275
    i32 39, label %sw.bb.275
    i32 40, label %sw.bb.275
    i32 41, label %sw.bb.275
  ]

sw.bb.274:                                        ; preds = %if.end.273, %if.end.273, %if.end.273, %if.end.273, %if.end.273, %if.end.273
  store i32 1, i32* %postpr, align 4
  store i32 34, i32* %off, align 4
  br label %sw.epilog.276

sw.bb.275:                                        ; preds = %if.end.273, %if.end.273, %if.end.273, %if.end.273, %if.end.273, %if.end.273
  store i32 1, i32* %postpr, align 4
  store i32 35, i32* %off, align 4
  br label %sw.epilog.276

sw.epilog.276:                                    ; preds = %if.end.273, %sw.bb.275, %sw.bb.274
  %186 = load i32, i32* %off, align 4
  %cmp277 = icmp ne i32 %186, -1
  br i1 %cmp277, label %if.then.279, label %if.end.282

if.then.279:                                      ; preds = %sw.epilog.276
  %187 = load i32, i32* %off, align 4
  %idxprom280 = sext i32 %187 to i64
  %188 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx281 = getelementptr inbounds %struct.cv*, %struct.cv** %188, i64 %idxprom280
  %189 = load %struct.cv*, %struct.cv** %arrayidx281, align 8
  store %struct.cv* %189, %struct.cv** %cv, align 8
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.279, %sw.epilog.276
  %190 = load %struct.cv*, %struct.cv** %cv, align 8
  %tobool283 = icmp ne %struct.cv* %190, null
  br i1 %tobool283, label %if.end.285, label %if.then.284

if.then.284:                                      ; preds = %if.end.282
  br label %not_found

if.end.285:                                       ; preds = %if.end.282
  br label %if.end.367

if.else.286:                                      ; preds = %land.lhs.true.257, %land.lhs.true.256, %land.lhs.true.252, %lor.lhs.false.250
  br label %not_found

not_found:                                        ; preds = %if.else.286, %if.then.284, %if.then.205, %sw.default
  %191 = load i32, i32* %method.addr, align 4
  switch i32 %191, label %sw.epilog.288 [
    i32 58, label %sw.bb.287
    i32 59, label %sw.bb.287
    i32 60, label %sw.bb.287
    i32 61, label %sw.bb.287
    i32 62, label %sw.bb.287
  ]

sw.bb.287:                                        ; preds = %not_found, %not_found, %not_found, %not_found, %not_found
  %192 = load %struct.sv*, %struct.sv** %left.addr, align 8
  store %struct.sv* %192, %struct.sv** %retval
  br label %return

sw.epilog.288:                                    ; preds = %not_found
  %193 = load %struct.cv**, %struct.cv*** %ocvp, align 8
  %tobool289 = icmp ne %struct.cv** %193, null
  br i1 %tobool289, label %land.lhs.true.290, label %if.else.294

land.lhs.true.290:                                ; preds = %sw.epilog.288
  %194 = load %struct.cv**, %struct.cv*** %ocvp, align 8
  %arrayidx291 = getelementptr inbounds %struct.cv*, %struct.cv** %194, i64 3
  %195 = load %struct.cv*, %struct.cv** %arrayidx291, align 8
  store %struct.cv* %195, %struct.cv** %cv, align 8
  %tobool292 = icmp ne %struct.cv* %195, null
  br i1 %tobool292, label %if.then.293, label %if.else.294

if.then.293:                                      ; preds = %land.lhs.true.290
  store i32 1, i32* %notfound, align 4
  store i32 -1, i32* %lr, align 4
  br label %if.end.361

if.else.294:                                      ; preds = %land.lhs.true.290, %sw.epilog.288
  %196 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %tobool295 = icmp ne %struct.cv** %196, null
  br i1 %tobool295, label %land.lhs.true.296, label %if.else.300

land.lhs.true.296:                                ; preds = %if.else.294
  %197 = load %struct.cv**, %struct.cv*** %cvp, align 8
  %arrayidx297 = getelementptr inbounds %struct.cv*, %struct.cv** %197, i64 3
  %198 = load %struct.cv*, %struct.cv** %arrayidx297, align 8
  store %struct.cv* %198, %struct.cv** %cv, align 8
  %tobool298 = icmp ne %struct.cv* %198, null
  br i1 %tobool298, label %if.then.299, label %if.else.300

if.then.299:                                      ; preds = %land.lhs.true.296
  store i32 1, i32* %notfound, align 4
  store i32 1, i32* %lr, align 4
  br label %if.end.360

if.else.300:                                      ; preds = %land.lhs.true.296, %if.else.294
  %199 = load i32, i32* %off, align 4
  %cmp301 = icmp eq i32 %199, -1
  br i1 %cmp301, label %if.then.303, label %if.end.304

if.then.303:                                      ; preds = %if.else.300
  %200 = load i32, i32* %method.addr, align 4
  store i32 %200, i32* %off, align 4
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.303, %if.else.300
  %201 = load i32, i32* %method.addr, align 4
  %202 = load i32, i32* %assignshift, align 4
  %add305 = add nsw i32 %201, %202
  %idxprom306 = sext i32 %add305 to i64
  %arrayidx307 = getelementptr inbounds [66 x i8*], [66 x i8*]* @PL_AMG_names, i32 0, i64 %idxprom306
  %203 = load i8*, i8** %arrayidx307, align 8
  %add.ptr = getelementptr inbounds i8, i8* %203, i64 1
  %204 = load i32, i32* %flags.addr, align 4
  %and308 = and i32 %204, 8
  %tobool309 = icmp ne i32 %and308, 0
  %cond310 = select i1 %tobool309, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0)
  %205 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %sv_flags311 = getelementptr inbounds %struct.sv, %struct.sv* %205, i32 0, i32 2
  %206 = load i32, i32* %sv_flags311, align 4
  %and312 = and i32 %206, 268435456
  %tobool313 = icmp ne i32 %and312, 0
  %cond314 = select i1 %tobool313, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.75, i32 0, i32 0)
  %207 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %sv_flags315 = getelementptr inbounds %struct.sv, %struct.sv* %207, i32 0, i32 2
  %208 = load i32, i32* %sv_flags315, align 4
  %and316 = and i32 %208, 268435456
  %tobool317 = icmp ne i32 %and316, 0
  br i1 %tobool317, label %cond.true.318, label %cond.false.324

cond.true.318:                                    ; preds = %if.end.304
  %209 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %sv_any319 = getelementptr inbounds %struct.sv, %struct.sv* %209, i32 0, i32 0
  %210 = load i8*, i8** %sv_any319, align 8
  %211 = bitcast i8* %210 to %struct.xrv*
  %xrv_rv320 = getelementptr inbounds %struct.xrv, %struct.xrv* %211, i32 0, i32 0
  %212 = load %struct.sv*, %struct.sv** %xrv_rv320, align 8
  %sv_any321 = getelementptr inbounds %struct.sv, %struct.sv* %212, i32 0, i32 0
  %213 = load i8*, i8** %sv_any321, align 8
  %214 = bitcast i8* %213 to %struct.xpvmg*
  %xmg_stash322 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %214, i32 0, i32 6
  %215 = load %struct.hv*, %struct.hv** %xmg_stash322, align 8
  %sv_any323 = getelementptr inbounds %struct.hv, %struct.hv* %215, i32 0, i32 0
  %216 = load %struct.xpvhv*, %struct.xpvhv** %sv_any323, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %216, i32 0, i32 10
  %217 = load i8*, i8** %xhv_name, align 8
  br label %cond.end.325

cond.false.324:                                   ; preds = %if.end.304
  br label %cond.end.325

cond.end.325:                                     ; preds = %cond.false.324, %cond.true.318
  %cond326 = phi i8* [ %217, %cond.true.318 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), %cond.false.324 ]
  %218 = load %struct.sv*, %struct.sv** %right.addr, align 8
  %sv_flags327 = getelementptr inbounds %struct.sv, %struct.sv* %218, i32 0, i32 2
  %219 = load i32, i32* %sv_flags327, align 4
  %and328 = and i32 %219, 268435456
  %tobool329 = icmp ne i32 %and328, 0
  br i1 %tobool329, label %cond.true.330, label %cond.false.331

cond.true.330:                                    ; preds = %cond.end.325
  br label %cond.end.335

cond.false.331:                                   ; preds = %cond.end.325
  %220 = load i32, i32* %flags.addr, align 4
  %and332 = and i32 %220, 8
  %tobool333 = icmp ne i32 %and332, 0
  %cond334 = select i1 %tobool333, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.77, i32 0, i32 0)
  br label %cond.end.335

cond.end.335:                                     ; preds = %cond.false.331, %cond.true.330
  %cond336 = phi i8* [ getelementptr inbounds ([41 x i8], [41 x i8]* @.str.76, i32 0, i32 0), %cond.true.330 ], [ %cond334, %cond.false.331 ]
  %221 = load %struct.sv*, %struct.sv** %right.addr, align 8
  %sv_flags337 = getelementptr inbounds %struct.sv, %struct.sv* %221, i32 0, i32 2
  %222 = load i32, i32* %sv_flags337, align 4
  %and338 = and i32 %222, 268435456
  %tobool339 = icmp ne i32 %and338, 0
  br i1 %tobool339, label %cond.true.340, label %cond.false.347

cond.true.340:                                    ; preds = %cond.end.335
  %223 = load %struct.sv*, %struct.sv** %right.addr, align 8
  %sv_any341 = getelementptr inbounds %struct.sv, %struct.sv* %223, i32 0, i32 0
  %224 = load i8*, i8** %sv_any341, align 8
  %225 = bitcast i8* %224 to %struct.xrv*
  %xrv_rv342 = getelementptr inbounds %struct.xrv, %struct.xrv* %225, i32 0, i32 0
  %226 = load %struct.sv*, %struct.sv** %xrv_rv342, align 8
  %sv_any343 = getelementptr inbounds %struct.sv, %struct.sv* %226, i32 0, i32 0
  %227 = load i8*, i8** %sv_any343, align 8
  %228 = bitcast i8* %227 to %struct.xpvmg*
  %xmg_stash344 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %228, i32 0, i32 6
  %229 = load %struct.hv*, %struct.hv** %xmg_stash344, align 8
  %sv_any345 = getelementptr inbounds %struct.hv, %struct.hv* %229, i32 0, i32 0
  %230 = load %struct.xpvhv*, %struct.xpvhv** %sv_any345, align 8
  %xhv_name346 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %230, i32 0, i32 10
  %231 = load i8*, i8** %xhv_name346, align 8
  br label %cond.end.348

cond.false.347:                                   ; preds = %cond.end.335
  br label %cond.end.348

cond.end.348:                                     ; preds = %cond.false.347, %cond.true.340
  %cond349 = phi i8* [ %231, %cond.true.340 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), %cond.false.347 ]
  %call350 = call %struct.sv* (i8*, ...) @Perl_newSVpvf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.71, i32 0, i32 0), i8* %add.ptr, i8* %cond310, i8* %cond314, i8* %cond326, i8* %cond336, i8* %cond349)
  %call351 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call350)
  store %struct.sv* %call351, %struct.sv** %msg, align 8
  %232 = load %struct.am_table*, %struct.am_table** %amtp, align 8
  %tobool352 = icmp ne %struct.am_table* %232, null
  br i1 %tobool352, label %land.lhs.true.353, label %if.else.358

land.lhs.true.353:                                ; preds = %cond.end.348
  %233 = load %struct.am_table*, %struct.am_table** %amtp, align 8
  %fallback354 = getelementptr inbounds %struct.am_table, %struct.am_table* %233, i32 0, i32 4
  %234 = load i64, i64* %fallback354, align 8
  %cmp355 = icmp sge i64 %234, 3
  br i1 %cmp355, label %if.then.357, label %if.else.358

if.then.357:                                      ; preds = %land.lhs.true.353
  br label %if.end.359

if.else.358:                                      ; preds = %land.lhs.true.353, %cond.end.348
  %235 = load %struct.sv*, %struct.sv** %msg, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), %struct.sv* %235)
  br label %if.end.359

if.end.359:                                       ; preds = %if.else.358, %if.then.357
  store %struct.sv* null, %struct.sv** %retval
  br label %return

if.end.360:                                       ; preds = %if.then.299
  br label %if.end.361

if.end.361:                                       ; preds = %if.end.360, %if.then.293
  %236 = load i32, i32* %force_cpy, align 4
  %tobool362 = icmp ne i32 %236, 0
  br i1 %tobool362, label %lor.end.365, label %lor.rhs.363

lor.rhs.363:                                      ; preds = %if.end.361
  %237 = load i32, i32* %assign, align 4
  %tobool364 = icmp ne i32 %237, 0
  br label %lor.end.365

lor.end.365:                                      ; preds = %lor.rhs.363, %if.end.361
  %238 = phi i1 [ true, %if.end.361 ], [ %tobool364, %lor.rhs.363 ]
  %lor.ext366 = zext i1 %238 to i32
  store i32 %lor.ext366, i32* %force_cpy, align 4
  br label %if.end.367

if.end.367:                                       ; preds = %lor.end.365, %if.end.285
  br label %if.end.368

if.end.368:                                       ; preds = %if.end.367, %if.then.240
  br label %if.end.369

if.end.369:                                       ; preds = %if.end.368, %if.end.206
  br label %if.end.370

if.end.370:                                       ; preds = %if.end.369, %if.then
  %239 = load i32, i32* %method.addr, align 4
  %240 = load i32, i32* %assignshift, align 4
  %add371 = add nsw i32 %239, %240
  %241 = load i32, i32* %off, align 4
  %cmp372 = icmp eq i32 %add371, %241
  br i1 %cmp372, label %land.lhs.true.374, label %lor.lhs.false.382

land.lhs.true.374:                                ; preds = %if.end.370
  %242 = load i32, i32* %assign, align 4
  %tobool375 = icmp ne i32 %242, 0
  br i1 %tobool375, label %if.then.384, label %lor.lhs.false.376

lor.lhs.false.376:                                ; preds = %land.lhs.true.374
  %243 = load i32, i32* %method.addr, align 4
  %cmp377 = icmp eq i32 %243, 44
  br i1 %cmp377, label %if.then.384, label %lor.lhs.false.379

lor.lhs.false.379:                                ; preds = %lor.lhs.false.376
  %244 = load i32, i32* %method.addr, align 4
  %cmp380 = icmp eq i32 %244, 45
  br i1 %cmp380, label %if.then.384, label %lor.lhs.false.382

lor.lhs.false.382:                                ; preds = %lor.lhs.false.379, %if.end.370
  %245 = load i32, i32* %force_cpy, align 4
  %tobool383 = icmp ne i32 %245, 0
  br i1 %tobool383, label %if.then.384, label %if.end.396

if.then.384:                                      ; preds = %lor.lhs.false.382, %lor.lhs.false.379, %lor.lhs.false.376, %land.lhs.true.374
  %246 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %sv_any386 = getelementptr inbounds %struct.sv, %struct.sv* %246, i32 0, i32 0
  %247 = load i8*, i8** %sv_any386, align 8
  %248 = bitcast i8* %247 to %struct.xrv*
  %xrv_rv387 = getelementptr inbounds %struct.xrv, %struct.xrv* %248, i32 0, i32 0
  %249 = load %struct.sv*, %struct.sv** %xrv_rv387, align 8
  store %struct.sv* %249, %struct.sv** %tmpRef385, align 8
  %250 = load %struct.sv*, %struct.sv** %tmpRef385, align 8
  %sv_refcnt388 = getelementptr inbounds %struct.sv, %struct.sv* %250, i32 0, i32 1
  %251 = load i32, i32* %sv_refcnt388, align 4
  %cmp389 = icmp ugt i32 %251, 1
  br i1 %cmp389, label %if.then.391, label %if.end.395

if.then.391:                                      ; preds = %if.then.384
  %252 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %call392 = call %struct.sv* @Perl_amagic_call(%struct.sv* %252, %struct.sv* @PL_sv_undef, i32 56, i32 9)
  %253 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %sv_any393 = getelementptr inbounds %struct.sv, %struct.sv* %253, i32 0, i32 0
  %254 = load i8*, i8** %sv_any393, align 8
  %255 = bitcast i8* %254 to %struct.xrv*
  %xrv_rv394 = getelementptr inbounds %struct.xrv, %struct.xrv* %255, i32 0, i32 0
  store %struct.sv* %call392, %struct.sv** %xrv_rv394, align 8
  %256 = load %struct.sv*, %struct.sv** %tmpRef385, align 8
  call void @Perl_sv_free(%struct.sv* %256)
  br label %if.end.395

if.end.395:                                       ; preds = %if.then.391, %if.then.384
  br label %if.end.396

if.end.396:                                       ; preds = %if.end.395, %lor.lhs.false.382
  %257 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %257, %struct.sv*** %sp, align 8
  %258 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_mustcatch = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %258, i32 0, i32 3
  %259 = load i8, i8* %je_mustcatch, align 1
  store i8 %259, i8* %oldcatch, align 1
  %260 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_mustcatch397 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %260, i32 0, i32 3
  store i8 1, i8* %je_mustcatch397, align 1
  %261 = bitcast %struct.binop* %myop to i8*
  call void @llvm.memset.p0i8.i64(i8* %261, i8 0, i64 56, i32 1, i1 false)
  %262 = bitcast %struct.binop* %myop to %struct.op*
  %op_last = getelementptr inbounds %struct.binop, %struct.binop* %myop, i32 0, i32 9
  store %struct.op* %262, %struct.op** %op_last, align 8
  %op_next = getelementptr inbounds %struct.binop, %struct.binop* %myop, i32 0, i32 0
  store %struct.op* null, %struct.op** %op_next, align 8
  %op_flags = getelementptr inbounds %struct.binop, %struct.binop* %myop, i32 0, i32 6
  store i8 66, i8* %op_flags, align 1
  %263 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %263, i32 0, i32 6
  %264 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  store %struct.stackinfo* %264, %struct.stackinfo** %next, align 8
  %265 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %tobool398 = icmp ne %struct.stackinfo* %265, null
  br i1 %tobool398, label %if.end.402, label %if.then.399

if.then.399:                                      ; preds = %if.end.396
  %call400 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call400, %struct.stackinfo** %next, align 8
  %266 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %267 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %267, i32 0, i32 5
  store %struct.stackinfo* %266, %struct.stackinfo** %si_prev, align 8
  %268 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %269 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next401 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %269, i32 0, i32 6
  store %struct.stackinfo* %268, %struct.stackinfo** %si_next401, align 8
  br label %if.end.402

if.end.402:                                       ; preds = %if.then.399, %if.end.396
  %270 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %270, i32 0, i32 4
  store i32 5, i32* %si_type, align 4
  %271 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %271, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %272 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %272, i32 0, i32 0
  %273 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any403 = getelementptr inbounds %struct.av, %struct.av* %273, i32 0, i32 0
  %274 = load %struct.xpvav*, %struct.xpvav** %sv_any403, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %274, i32 0, i32 1
  store i64 0, i64* %xav_fill, align 8
  %275 = load %struct.sv**, %struct.sv*** %sp, align 8
  %276 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %275 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %276 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %277 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any404 = getelementptr inbounds %struct.av, %struct.av* %277, i32 0, i32 0
  %278 = load %struct.xpvav*, %struct.xpvav** %sv_any404, align 8
  %xav_fill405 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %278, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill405, align 8
  %279 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack406 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %279, i32 0, i32 0
  %280 = load %struct.av*, %struct.av** %si_stack406, align 8
  %sv_any407 = getelementptr inbounds %struct.av, %struct.av* %280, i32 0, i32 0
  %281 = load %struct.xpvav*, %struct.xpvav** %sv_any407, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %281, i32 0, i32 0
  %282 = load i8*, i8** %xav_array, align 8
  %283 = bitcast i8* %282 to %struct.sv**
  store %struct.sv** %283, %struct.sv*** @PL_stack_base, align 8
  %284 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %285 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack408 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %285, i32 0, i32 0
  %286 = load %struct.av*, %struct.av** %si_stack408, align 8
  %sv_any409 = getelementptr inbounds %struct.av, %struct.av* %286, i32 0, i32 0
  %287 = load %struct.xpvav*, %struct.xpvav** %sv_any409, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %287, i32 0, i32 2
  %288 = load i64, i64* %xav_max, align 8
  %add.ptr410 = getelementptr inbounds %struct.sv*, %struct.sv** %284, i64 %288
  store %struct.sv** %add.ptr410, %struct.sv*** @PL_stack_max, align 8
  %289 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %290 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack411 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %290, i32 0, i32 0
  %291 = load %struct.av*, %struct.av** %si_stack411, align 8
  %sv_any412 = getelementptr inbounds %struct.av, %struct.av* %291, i32 0, i32 0
  %292 = load %struct.xpvav*, %struct.xpvav** %sv_any412, align 8
  %xav_fill413 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %292, i32 0, i32 1
  %293 = load i64, i64* %xav_fill413, align 8
  %add.ptr414 = getelementptr inbounds %struct.sv*, %struct.sv** %289, i64 %293
  store %struct.sv** %add.ptr414, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr414, %struct.sv*** %sp, align 8
  %294 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack415 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %294, i32 0, i32 0
  %295 = load %struct.av*, %struct.av** %si_stack415, align 8
  store %struct.av* %295, %struct.av** @PL_curstack, align 8
  store %struct.av* %295, %struct.av** %tmp
  %296 = load %struct.av*, %struct.av** %tmp
  %297 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  store %struct.stackinfo* %297, %struct.stackinfo** @PL_curstackinfo, align 8
  call void @Perl_push_scope()
  call void @Perl_save_op()
  %298 = bitcast %struct.binop* %myop to %struct.op*
  store %struct.op* %298, %struct.op** @PL_op, align 8
  %299 = load i32, i32* @PL_perldb, align 4
  %tobool416 = icmp ne i32 %299, 0
  br i1 %tobool416, label %land.lhs.true.417, label %if.end.427

land.lhs.true.417:                                ; preds = %if.end.402
  %300 = load i32, i32* @PL_perldb, align 4
  %and418 = and i32 %300, 1
  %tobool419 = icmp ne i32 %and418, 0
  br i1 %tobool419, label %land.lhs.true.420, label %if.end.427

land.lhs.true.420:                                ; preds = %land.lhs.true.417
  %301 = load %struct.hv*, %struct.hv** @PL_curstash, align 8
  %302 = load %struct.hv*, %struct.hv** @PL_debstash, align 8
  %cmp421 = icmp ne %struct.hv* %301, %302
  br i1 %cmp421, label %if.then.423, label %if.end.427

if.then.423:                                      ; preds = %land.lhs.true.420
  %303 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %303, i32 0, i32 7
  %304 = load i8, i8* %op_private, align 1
  %conv424 = zext i8 %304 to i32
  %or425 = or i32 %conv424, 16
  %conv426 = trunc i32 %or425 to i8
  store i8 %conv426, i8* %op_private, align 1
  br label %if.end.427

if.end.427:                                       ; preds = %if.then.423, %land.lhs.true.420, %land.lhs.true.417, %if.end.402
  %305 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %305, %struct.sv*** @PL_stack_sp, align 8
  %call428 = call %struct.op* @Perl_pp_pushmark()
  %306 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %307 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast429 = ptrtoint %struct.sv** %306 to i64
  %sub.ptr.rhs.cast430 = ptrtoint %struct.sv** %307 to i64
  %sub.ptr.sub431 = sub i64 %sub.ptr.lhs.cast429, %sub.ptr.rhs.cast430
  %sub.ptr.div432 = sdiv exact i64 %sub.ptr.sub431, 8
  %308 = load i32, i32* %notfound, align 4
  %add433 = add nsw i32 %308, 5
  %conv434 = sext i32 %add433 to i64
  %cmp435 = icmp slt i64 %sub.ptr.div432, %conv434
  br i1 %cmp435, label %if.then.437, label %if.end.440

if.then.437:                                      ; preds = %if.end.427
  %309 = load %struct.sv**, %struct.sv*** %sp, align 8
  %310 = load %struct.sv**, %struct.sv*** %sp, align 8
  %311 = load i32, i32* %notfound, align 4
  %add438 = add nsw i32 %311, 5
  %call439 = call %struct.sv** @Perl_stack_grow(%struct.sv** %309, %struct.sv** %310, i32 %add438)
  store %struct.sv** %call439, %struct.sv*** %sp, align 8
  br label %if.end.440

if.end.440:                                       ; preds = %if.then.437, %if.end.427
  %312 = load i32, i32* %lr, align 4
  %cmp441 = icmp sgt i32 %312, 0
  br i1 %cmp441, label %cond.true.443, label %cond.false.444

cond.true.443:                                    ; preds = %if.end.440
  %313 = load %struct.sv*, %struct.sv** %right.addr, align 8
  br label %cond.end.445

cond.false.444:                                   ; preds = %if.end.440
  %314 = load %struct.sv*, %struct.sv** %left.addr, align 8
  br label %cond.end.445

cond.end.445:                                     ; preds = %cond.false.444, %cond.true.443
  %cond446 = phi %struct.sv* [ %313, %cond.true.443 ], [ %314, %cond.false.444 ]
  %315 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %315, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  store %struct.sv* %cond446, %struct.sv** %incdec.ptr, align 8
  %316 = load i32, i32* %lr, align 4
  %cmp447 = icmp sgt i32 %316, 0
  br i1 %cmp447, label %cond.true.449, label %cond.false.450

cond.true.449:                                    ; preds = %cond.end.445
  %317 = load %struct.sv*, %struct.sv** %left.addr, align 8
  br label %cond.end.451

cond.false.450:                                   ; preds = %cond.end.445
  %318 = load %struct.sv*, %struct.sv** %right.addr, align 8
  br label %cond.end.451

cond.end.451:                                     ; preds = %cond.false.450, %cond.true.449
  %cond452 = phi %struct.sv* [ %317, %cond.true.449 ], [ %318, %cond.false.450 ]
  %319 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr453 = getelementptr inbounds %struct.sv*, %struct.sv** %319, i32 1
  store %struct.sv** %incdec.ptr453, %struct.sv*** %sp, align 8
  store %struct.sv* %cond452, %struct.sv** %incdec.ptr453, align 8
  %320 = load i32, i32* %lr, align 4
  %cmp454 = icmp sgt i32 %320, 0
  br i1 %cmp454, label %cond.true.456, label %cond.false.457

cond.true.456:                                    ; preds = %cond.end.451
  br label %cond.end.460

cond.false.457:                                   ; preds = %cond.end.451
  %321 = load i32, i32* %assign, align 4
  %tobool458 = icmp ne i32 %321, 0
  %cond459 = select i1 %tobool458, %struct.sv* @PL_sv_undef, %struct.sv* @PL_sv_no
  br label %cond.end.460

cond.end.460:                                     ; preds = %cond.false.457, %cond.true.456
  %cond461 = phi %struct.sv* [ @PL_sv_yes, %cond.true.456 ], [ %cond459, %cond.false.457 ]
  %322 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr462 = getelementptr inbounds %struct.sv*, %struct.sv** %322, i32 1
  store %struct.sv** %incdec.ptr462, %struct.sv*** %sp, align 8
  store %struct.sv* %cond461, %struct.sv** %incdec.ptr462, align 8
  %323 = load i32, i32* %notfound, align 4
  %tobool463 = icmp ne i32 %323, 0
  br i1 %tobool463, label %if.then.464, label %if.end.472

if.then.464:                                      ; preds = %cond.end.460
  %324 = load i32, i32* %method.addr, align 4
  %325 = load i32, i32* %assignshift, align 4
  %add465 = add nsw i32 %324, %325
  %idxprom466 = sext i32 %add465 to i64
  %arrayidx467 = getelementptr inbounds [66 x i8*], [66 x i8*]* @PL_AMG_names, i32 0, i64 %idxprom466
  %326 = load i8*, i8** %arrayidx467, align 8
  %add.ptr468 = getelementptr inbounds i8, i8* %326, i64 1
  %call469 = call %struct.sv* @Perl_newSVpv(i8* %add.ptr468, i64 0)
  %call470 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call469)
  %327 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr471 = getelementptr inbounds %struct.sv*, %struct.sv** %327, i32 1
  store %struct.sv** %incdec.ptr471, %struct.sv*** %sp, align 8
  store %struct.sv* %call470, %struct.sv** %incdec.ptr471, align 8
  br label %if.end.472

if.end.472:                                       ; preds = %if.then.464, %cond.end.460
  %328 = load %struct.cv*, %struct.cv** %cv, align 8
  %329 = bitcast %struct.cv* %328 to %struct.sv*
  %330 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr473 = getelementptr inbounds %struct.sv*, %struct.sv** %330, i32 1
  store %struct.sv** %incdec.ptr473, %struct.sv*** %sp, align 8
  store %struct.sv* %329, %struct.sv** %incdec.ptr473, align 8
  %331 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %331, %struct.sv*** @PL_stack_sp, align 8
  %call474 = call %struct.op* @Perl_pp_entersub()
  store %struct.op* %call474, %struct.op** @PL_op, align 8
  %tobool475 = icmp ne %struct.op* %call474, null
  br i1 %tobool475, label %if.then.476, label %if.end.478

if.then.476:                                      ; preds = %if.end.472
  %332 = load i32 ()*, i32 ()** @PL_runops, align 8
  %call477 = call i32 %332()
  br label %if.end.478

if.end.478:                                       ; preds = %if.then.476, %if.end.472
  call void @Perl_pop_scope()
  %333 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %333, %struct.sv*** %sp, align 8
  %334 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr479 = getelementptr inbounds %struct.sv*, %struct.sv** %334, i32 -1
  store %struct.sv** %incdec.ptr479, %struct.sv*** %sp, align 8
  %335 = load %struct.sv*, %struct.sv** %334, align 8
  store %struct.sv* %335, %struct.sv** %res, align 8
  %336 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %336, %struct.sv*** @PL_stack_sp, align 8
  %337 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %337, %struct.sv*** %sp481, align 8
  %338 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev483 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %338, i32 0, i32 5
  %339 = load %struct.stackinfo*, %struct.stackinfo** %si_prev483, align 8
  store %struct.stackinfo* %339, %struct.stackinfo** %prev, align 8
  %340 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool484 = icmp ne %struct.stackinfo* %340, null
  br i1 %tobool484, label %if.end.512, label %if.then.485

if.then.485:                                      ; preds = %if.end.478
  %341 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool486 = icmp ne %struct.gv* %341, null
  br i1 %tobool486, label %land.lhs.true.487, label %cond.false.507

land.lhs.true.487:                                ; preds = %if.then.485
  %342 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags488 = getelementptr inbounds %struct.gv, %struct.gv* %342, i32 0, i32 2
  %343 = load i32, i32* %sv_flags488, align 4
  %and489 = and i32 %343, 255
  %cmp490 = icmp eq i32 %and489, 13
  br i1 %cmp490, label %land.lhs.true.492, label %cond.false.507

land.lhs.true.492:                                ; preds = %land.lhs.true.487
  %344 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any493 = getelementptr inbounds %struct.gv, %struct.gv* %344, i32 0, i32 0
  %345 = load %struct.xpvgv*, %struct.xpvgv** %sv_any493, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %345, i32 0, i32 7
  %346 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %346, i32 0, i32 2
  %347 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool494 = icmp ne %struct.io* %347, null
  br i1 %tobool494, label %land.lhs.true.495, label %cond.false.507

land.lhs.true.495:                                ; preds = %land.lhs.true.492
  %348 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any496 = getelementptr inbounds %struct.gv, %struct.gv* %348, i32 0, i32 0
  %349 = load %struct.xpvgv*, %struct.xpvgv** %sv_any496, align 8
  %xgv_gp497 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %349, i32 0, i32 7
  %350 = load %struct.gp*, %struct.gp** %xgv_gp497, align 8
  %gp_io498 = getelementptr inbounds %struct.gp, %struct.gp* %350, i32 0, i32 2
  %351 = load %struct.io*, %struct.io** %gp_io498, align 8
  %sv_any499 = getelementptr inbounds %struct.io, %struct.io* %351, i32 0, i32 0
  %352 = load %struct.xpvio*, %struct.xpvio** %sv_any499, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %352, i32 0, i32 8
  %353 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool500 = icmp ne %struct._PerlIO** %353, null
  br i1 %tobool500, label %cond.true.501, label %cond.false.507

cond.true.501:                                    ; preds = %land.lhs.true.495
  %354 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any502 = getelementptr inbounds %struct.gv, %struct.gv* %354, i32 0, i32 0
  %355 = load %struct.xpvgv*, %struct.xpvgv** %sv_any502, align 8
  %xgv_gp503 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %355, i32 0, i32 7
  %356 = load %struct.gp*, %struct.gp** %xgv_gp503, align 8
  %gp_io504 = getelementptr inbounds %struct.gp, %struct.gp* %356, i32 0, i32 2
  %357 = load %struct.io*, %struct.io** %gp_io504, align 8
  %sv_any505 = getelementptr inbounds %struct.io, %struct.io* %357, i32 0, i32 0
  %358 = load %struct.xpvio*, %struct.xpvio** %sv_any505, align 8
  %xio_ofp506 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %358, i32 0, i32 8
  %359 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp506, align 8
  br label %cond.end.509

cond.false.507:                                   ; preds = %land.lhs.true.495, %land.lhs.true.492, %land.lhs.true.487, %if.then.485
  %call508 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.509

cond.end.509:                                     ; preds = %cond.false.507, %cond.true.501
  %cond510 = phi %struct._PerlIO** [ %359, %cond.true.501 ], [ %call508, %cond.false.507 ]
  %call511 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond510, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.512

if.end.512:                                       ; preds = %cond.end.509, %if.end.478
  %360 = load %struct.sv**, %struct.sv*** %sp481, align 8
  %361 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast513 = ptrtoint %struct.sv** %360 to i64
  %sub.ptr.rhs.cast514 = ptrtoint %struct.sv** %361 to i64
  %sub.ptr.sub515 = sub i64 %sub.ptr.lhs.cast513, %sub.ptr.rhs.cast514
  %sub.ptr.div516 = sdiv exact i64 %sub.ptr.sub515, 8
  %362 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any517 = getelementptr inbounds %struct.av, %struct.av* %362, i32 0, i32 0
  %363 = load %struct.xpvav*, %struct.xpvav** %sv_any517, align 8
  %xav_fill518 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %363, i32 0, i32 1
  store i64 %sub.ptr.div516, i64* %xav_fill518, align 8
  %364 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack519 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %364, i32 0, i32 0
  %365 = load %struct.av*, %struct.av** %si_stack519, align 8
  %sv_any520 = getelementptr inbounds %struct.av, %struct.av* %365, i32 0, i32 0
  %366 = load %struct.xpvav*, %struct.xpvav** %sv_any520, align 8
  %xav_array521 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %366, i32 0, i32 0
  %367 = load i8*, i8** %xav_array521, align 8
  %368 = bitcast i8* %367 to %struct.sv**
  store %struct.sv** %368, %struct.sv*** @PL_stack_base, align 8
  %369 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %370 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack522 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %370, i32 0, i32 0
  %371 = load %struct.av*, %struct.av** %si_stack522, align 8
  %sv_any523 = getelementptr inbounds %struct.av, %struct.av* %371, i32 0, i32 0
  %372 = load %struct.xpvav*, %struct.xpvav** %sv_any523, align 8
  %xav_max524 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %372, i32 0, i32 2
  %373 = load i64, i64* %xav_max524, align 8
  %add.ptr525 = getelementptr inbounds %struct.sv*, %struct.sv** %369, i64 %373
  store %struct.sv** %add.ptr525, %struct.sv*** @PL_stack_max, align 8
  %374 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %375 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack526 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %375, i32 0, i32 0
  %376 = load %struct.av*, %struct.av** %si_stack526, align 8
  %sv_any527 = getelementptr inbounds %struct.av, %struct.av* %376, i32 0, i32 0
  %377 = load %struct.xpvav*, %struct.xpvav** %sv_any527, align 8
  %xav_fill528 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %377, i32 0, i32 1
  %378 = load i64, i64* %xav_fill528, align 8
  %add.ptr529 = getelementptr inbounds %struct.sv*, %struct.sv** %374, i64 %378
  store %struct.sv** %add.ptr529, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr529, %struct.sv*** %sp481, align 8
  %379 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack531 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %379, i32 0, i32 0
  %380 = load %struct.av*, %struct.av** %si_stack531, align 8
  store %struct.av* %380, %struct.av** @PL_curstack, align 8
  store %struct.av* %380, %struct.av** %tmp530
  %381 = load %struct.av*, %struct.av** %tmp530
  %382 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %382, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %382, %struct.stackinfo** %tmp532
  %383 = load %struct.stackinfo*, %struct.stackinfo** %tmp532
  %384 = load i8, i8* %oldcatch, align 1
  %385 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_mustcatch533 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %385, i32 0, i32 3
  store i8 %384, i8* %je_mustcatch533, align 1
  %386 = load i32, i32* %postpr, align 4
  %tobool534 = icmp ne i32 %386, 0
  br i1 %tobool534, label %if.then.535, label %if.else.682

if.then.535:                                      ; preds = %if.end.512
  store i32 0, i32* %ans, align 4
  %387 = load i32, i32* %method.addr, align 4
  switch i32 %387, label %sw.epilog.679 [
    i32 29, label %sw.bb.537
    i32 37, label %sw.bb.537
    i32 28, label %sw.bb.550
    i32 36, label %sw.bb.550
    i32 31, label %sw.bb.563
    i32 39, label %sw.bb.563
    i32 30, label %sw.bb.576
    i32 38, label %sw.bb.576
    i32 32, label %sw.bb.589
    i32 40, label %sw.bb.589
    i32 33, label %sw.bb.602
    i32 41, label %sw.bb.602
    i32 44, label %sw.bb.615
    i32 45, label %sw.bb.615
    i32 42, label %sw.bb.620
  ]

sw.bb.537:                                        ; preds = %if.then.535, %if.then.535
  %388 = load %struct.sv*, %struct.sv** %res, align 8
  %sv_flags538 = getelementptr inbounds %struct.sv, %struct.sv* %388, i32 0, i32 2
  %389 = load i32, i32* %sv_flags538, align 4
  %and539 = and i32 %389, 65536
  %tobool540 = icmp ne i32 %and539, 0
  br i1 %tobool540, label %cond.true.541, label %cond.false.544

cond.true.541:                                    ; preds = %sw.bb.537
  %390 = load %struct.sv*, %struct.sv** %res, align 8
  %sv_any542 = getelementptr inbounds %struct.sv, %struct.sv* %390, i32 0, i32 0
  %391 = load i8*, i8** %sv_any542, align 8
  %392 = bitcast i8* %391 to %struct.xpviv*
  %xiv_iv543 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %392, i32 0, i32 3
  %393 = load i64, i64* %xiv_iv543, align 8
  br label %cond.end.546

cond.false.544:                                   ; preds = %sw.bb.537
  %394 = load %struct.sv*, %struct.sv** %res, align 8
  %call545 = call i64 @Perl_sv_2iv(%struct.sv* %394)
  br label %cond.end.546

cond.end.546:                                     ; preds = %cond.false.544, %cond.true.541
  %cond547 = phi i64 [ %393, %cond.true.541 ], [ %call545, %cond.false.544 ]
  %cmp548 = icmp sle i64 %cond547, 0
  %conv549 = zext i1 %cmp548 to i32
  store i32 %conv549, i32* %ans, align 4
  br label %sw.epilog.679

sw.bb.550:                                        ; preds = %if.then.535, %if.then.535
  %395 = load %struct.sv*, %struct.sv** %res, align 8
  %sv_flags551 = getelementptr inbounds %struct.sv, %struct.sv* %395, i32 0, i32 2
  %396 = load i32, i32* %sv_flags551, align 4
  %and552 = and i32 %396, 65536
  %tobool553 = icmp ne i32 %and552, 0
  br i1 %tobool553, label %cond.true.554, label %cond.false.557

cond.true.554:                                    ; preds = %sw.bb.550
  %397 = load %struct.sv*, %struct.sv** %res, align 8
  %sv_any555 = getelementptr inbounds %struct.sv, %struct.sv* %397, i32 0, i32 0
  %398 = load i8*, i8** %sv_any555, align 8
  %399 = bitcast i8* %398 to %struct.xpviv*
  %xiv_iv556 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %399, i32 0, i32 3
  %400 = load i64, i64* %xiv_iv556, align 8
  br label %cond.end.559

cond.false.557:                                   ; preds = %sw.bb.550
  %401 = load %struct.sv*, %struct.sv** %res, align 8
  %call558 = call i64 @Perl_sv_2iv(%struct.sv* %401)
  br label %cond.end.559

cond.end.559:                                     ; preds = %cond.false.557, %cond.true.554
  %cond560 = phi i64 [ %400, %cond.true.554 ], [ %call558, %cond.false.557 ]
  %cmp561 = icmp slt i64 %cond560, 0
  %conv562 = zext i1 %cmp561 to i32
  store i32 %conv562, i32* %ans, align 4
  br label %sw.epilog.679

sw.bb.563:                                        ; preds = %if.then.535, %if.then.535
  %402 = load %struct.sv*, %struct.sv** %res, align 8
  %sv_flags564 = getelementptr inbounds %struct.sv, %struct.sv* %402, i32 0, i32 2
  %403 = load i32, i32* %sv_flags564, align 4
  %and565 = and i32 %403, 65536
  %tobool566 = icmp ne i32 %and565, 0
  br i1 %tobool566, label %cond.true.567, label %cond.false.570

cond.true.567:                                    ; preds = %sw.bb.563
  %404 = load %struct.sv*, %struct.sv** %res, align 8
  %sv_any568 = getelementptr inbounds %struct.sv, %struct.sv* %404, i32 0, i32 0
  %405 = load i8*, i8** %sv_any568, align 8
  %406 = bitcast i8* %405 to %struct.xpviv*
  %xiv_iv569 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %406, i32 0, i32 3
  %407 = load i64, i64* %xiv_iv569, align 8
  br label %cond.end.572

cond.false.570:                                   ; preds = %sw.bb.563
  %408 = load %struct.sv*, %struct.sv** %res, align 8
  %call571 = call i64 @Perl_sv_2iv(%struct.sv* %408)
  br label %cond.end.572

cond.end.572:                                     ; preds = %cond.false.570, %cond.true.567
  %cond573 = phi i64 [ %407, %cond.true.567 ], [ %call571, %cond.false.570 ]
  %cmp574 = icmp sge i64 %cond573, 0
  %conv575 = zext i1 %cmp574 to i32
  store i32 %conv575, i32* %ans, align 4
  br label %sw.epilog.679

sw.bb.576:                                        ; preds = %if.then.535, %if.then.535
  %409 = load %struct.sv*, %struct.sv** %res, align 8
  %sv_flags577 = getelementptr inbounds %struct.sv, %struct.sv* %409, i32 0, i32 2
  %410 = load i32, i32* %sv_flags577, align 4
  %and578 = and i32 %410, 65536
  %tobool579 = icmp ne i32 %and578, 0
  br i1 %tobool579, label %cond.true.580, label %cond.false.583

cond.true.580:                                    ; preds = %sw.bb.576
  %411 = load %struct.sv*, %struct.sv** %res, align 8
  %sv_any581 = getelementptr inbounds %struct.sv, %struct.sv* %411, i32 0, i32 0
  %412 = load i8*, i8** %sv_any581, align 8
  %413 = bitcast i8* %412 to %struct.xpviv*
  %xiv_iv582 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %413, i32 0, i32 3
  %414 = load i64, i64* %xiv_iv582, align 8
  br label %cond.end.585

cond.false.583:                                   ; preds = %sw.bb.576
  %415 = load %struct.sv*, %struct.sv** %res, align 8
  %call584 = call i64 @Perl_sv_2iv(%struct.sv* %415)
  br label %cond.end.585

cond.end.585:                                     ; preds = %cond.false.583, %cond.true.580
  %cond586 = phi i64 [ %414, %cond.true.580 ], [ %call584, %cond.false.583 ]
  %cmp587 = icmp sgt i64 %cond586, 0
  %conv588 = zext i1 %cmp587 to i32
  store i32 %conv588, i32* %ans, align 4
  br label %sw.epilog.679

sw.bb.589:                                        ; preds = %if.then.535, %if.then.535
  %416 = load %struct.sv*, %struct.sv** %res, align 8
  %sv_flags590 = getelementptr inbounds %struct.sv, %struct.sv* %416, i32 0, i32 2
  %417 = load i32, i32* %sv_flags590, align 4
  %and591 = and i32 %417, 65536
  %tobool592 = icmp ne i32 %and591, 0
  br i1 %tobool592, label %cond.true.593, label %cond.false.596

cond.true.593:                                    ; preds = %sw.bb.589
  %418 = load %struct.sv*, %struct.sv** %res, align 8
  %sv_any594 = getelementptr inbounds %struct.sv, %struct.sv* %418, i32 0, i32 0
  %419 = load i8*, i8** %sv_any594, align 8
  %420 = bitcast i8* %419 to %struct.xpviv*
  %xiv_iv595 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %420, i32 0, i32 3
  %421 = load i64, i64* %xiv_iv595, align 8
  br label %cond.end.598

cond.false.596:                                   ; preds = %sw.bb.589
  %422 = load %struct.sv*, %struct.sv** %res, align 8
  %call597 = call i64 @Perl_sv_2iv(%struct.sv* %422)
  br label %cond.end.598

cond.end.598:                                     ; preds = %cond.false.596, %cond.true.593
  %cond599 = phi i64 [ %421, %cond.true.593 ], [ %call597, %cond.false.596 ]
  %cmp600 = icmp eq i64 %cond599, 0
  %conv601 = zext i1 %cmp600 to i32
  store i32 %conv601, i32* %ans, align 4
  br label %sw.epilog.679

sw.bb.602:                                        ; preds = %if.then.535, %if.then.535
  %423 = load %struct.sv*, %struct.sv** %res, align 8
  %sv_flags603 = getelementptr inbounds %struct.sv, %struct.sv* %423, i32 0, i32 2
  %424 = load i32, i32* %sv_flags603, align 4
  %and604 = and i32 %424, 65536
  %tobool605 = icmp ne i32 %and604, 0
  br i1 %tobool605, label %cond.true.606, label %cond.false.609

cond.true.606:                                    ; preds = %sw.bb.602
  %425 = load %struct.sv*, %struct.sv** %res, align 8
  %sv_any607 = getelementptr inbounds %struct.sv, %struct.sv* %425, i32 0, i32 0
  %426 = load i8*, i8** %sv_any607, align 8
  %427 = bitcast i8* %426 to %struct.xpviv*
  %xiv_iv608 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %427, i32 0, i32 3
  %428 = load i64, i64* %xiv_iv608, align 8
  br label %cond.end.611

cond.false.609:                                   ; preds = %sw.bb.602
  %429 = load %struct.sv*, %struct.sv** %res, align 8
  %call610 = call i64 @Perl_sv_2iv(%struct.sv* %429)
  br label %cond.end.611

cond.end.611:                                     ; preds = %cond.false.609, %cond.true.606
  %cond612 = phi i64 [ %428, %cond.true.606 ], [ %call610, %cond.false.609 ]
  %cmp613 = icmp ne i64 %cond612, 0
  %conv614 = zext i1 %cmp613 to i32
  store i32 %conv614, i32* %ans, align 4
  br label %sw.epilog.679

sw.bb.615:                                        ; preds = %if.then.535, %if.then.535
  %430 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %431 = load %struct.sv*, %struct.sv** %res, align 8
  %cmp616 = icmp ne %struct.sv* %430, %431
  br i1 %cmp616, label %if.then.618, label %if.end.619

if.then.618:                                      ; preds = %sw.bb.615
  %432 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %433 = load %struct.sv*, %struct.sv** %res, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %432, %struct.sv* %433, i32 2)
  br label %if.end.619

if.end.619:                                       ; preds = %if.then.618, %sw.bb.615
  %434 = load %struct.sv*, %struct.sv** %left.addr, align 8
  store %struct.sv* %434, %struct.sv** %retval
  br label %return

sw.bb.620:                                        ; preds = %if.then.535
  %435 = load %struct.sv*, %struct.sv** %res, align 8
  %tobool621 = icmp ne %struct.sv* %435, null
  br i1 %tobool621, label %cond.false.623, label %cond.true.622

cond.true.622:                                    ; preds = %sw.bb.620
  br label %cond.end.676

cond.false.623:                                   ; preds = %sw.bb.620
  %436 = load %struct.sv*, %struct.sv** %res, align 8
  %sv_flags624 = getelementptr inbounds %struct.sv, %struct.sv* %436, i32 0, i32 2
  %437 = load i32, i32* %sv_flags624, align 4
  %and625 = and i32 %437, 262144
  %tobool626 = icmp ne i32 %and625, 0
  br i1 %tobool626, label %cond.true.627, label %cond.false.649

cond.true.627:                                    ; preds = %cond.false.623
  %438 = load %struct.sv*, %struct.sv** %res, align 8
  %sv_any628 = getelementptr inbounds %struct.sv, %struct.sv* %438, i32 0, i32 0
  %439 = load i8*, i8** %sv_any628, align 8
  %440 = bitcast i8* %439 to %struct.xpv*
  store %struct.xpv* %440, %struct.xpv** @PL_Xpv, align 8
  %tobool629 = icmp ne %struct.xpv* %440, null
  br i1 %tobool629, label %land.rhs.630, label %land.end.646

land.rhs.630:                                     ; preds = %cond.true.627
  %441 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur631 = getelementptr inbounds %struct.xpv, %struct.xpv* %441, i32 0, i32 1
  %442 = load i64, i64* %xpv_cur631, align 8
  %cmp632 = icmp ugt i64 %442, 1
  br i1 %cmp632, label %lor.end.644, label %lor.rhs.634

lor.rhs.634:                                      ; preds = %land.rhs.630
  %443 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur635 = getelementptr inbounds %struct.xpv, %struct.xpv* %443, i32 0, i32 1
  %444 = load i64, i64* %xpv_cur635, align 8
  %tobool636 = icmp ne i64 %444, 0
  br i1 %tobool636, label %land.rhs.637, label %land.end.642

land.rhs.637:                                     ; preds = %lor.rhs.634
  %445 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv638 = getelementptr inbounds %struct.xpv, %struct.xpv* %445, i32 0, i32 0
  %446 = load i8*, i8** %xpv_pv638, align 8
  %447 = load i8, i8* %446, align 1
  %conv639 = sext i8 %447 to i32
  %cmp640 = icmp ne i32 %conv639, 48
  br label %land.end.642

land.end.642:                                     ; preds = %land.rhs.637, %lor.rhs.634
  %448 = phi i1 [ false, %lor.rhs.634 ], [ %cmp640, %land.rhs.637 ]
  br label %lor.end.644

lor.end.644:                                      ; preds = %land.end.642, %land.rhs.630
  %449 = phi i1 [ true, %land.rhs.630 ], [ %448, %land.end.642 ]
  br label %land.end.646

land.end.646:                                     ; preds = %lor.end.644, %cond.true.627
  %450 = phi i1 [ false, %cond.true.627 ], [ %449, %lor.end.644 ]
  %cond648 = select i1 %450, i32 1, i32 0
  br label %cond.end.674

cond.false.649:                                   ; preds = %cond.false.623
  %451 = load %struct.sv*, %struct.sv** %res, align 8
  %sv_flags650 = getelementptr inbounds %struct.sv, %struct.sv* %451, i32 0, i32 2
  %452 = load i32, i32* %sv_flags650, align 4
  %and651 = and i32 %452, 65536
  %tobool652 = icmp ne i32 %and651, 0
  br i1 %tobool652, label %cond.true.653, label %cond.false.658

cond.true.653:                                    ; preds = %cond.false.649
  %453 = load %struct.sv*, %struct.sv** %res, align 8
  %sv_any654 = getelementptr inbounds %struct.sv, %struct.sv* %453, i32 0, i32 0
  %454 = load i8*, i8** %sv_any654, align 8
  %455 = bitcast i8* %454 to %struct.xpviv*
  %xiv_iv655 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %455, i32 0, i32 3
  %456 = load i64, i64* %xiv_iv655, align 8
  %cmp656 = icmp ne i64 %456, 0
  %conv657 = zext i1 %cmp656 to i32
  br label %cond.end.672

cond.false.658:                                   ; preds = %cond.false.649
  %457 = load %struct.sv*, %struct.sv** %res, align 8
  %sv_flags659 = getelementptr inbounds %struct.sv, %struct.sv* %457, i32 0, i32 2
  %458 = load i32, i32* %sv_flags659, align 4
  %and660 = and i32 %458, 131072
  %tobool661 = icmp ne i32 %and660, 0
  br i1 %tobool661, label %cond.true.662, label %cond.false.667

cond.true.662:                                    ; preds = %cond.false.658
  %459 = load %struct.sv*, %struct.sv** %res, align 8
  %sv_any663 = getelementptr inbounds %struct.sv, %struct.sv* %459, i32 0, i32 0
  %460 = load i8*, i8** %sv_any663, align 8
  %461 = bitcast i8* %460 to %struct.xpvnv*
  %xnv_nv664 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %461, i32 0, i32 4
  %462 = load double, double* %xnv_nv664, align 8
  %cmp665 = fcmp une double %462, 0.000000e+00
  %conv666 = zext i1 %cmp665 to i32
  br label %cond.end.670

cond.false.667:                                   ; preds = %cond.false.658
  %463 = load %struct.sv*, %struct.sv** %res, align 8
  %call668 = call signext i8 @Perl_sv_2bool(%struct.sv* %463)
  %conv669 = sext i8 %call668 to i32
  br label %cond.end.670

cond.end.670:                                     ; preds = %cond.false.667, %cond.true.662
  %cond671 = phi i32 [ %conv666, %cond.true.662 ], [ %conv669, %cond.false.667 ]
  br label %cond.end.672

cond.end.672:                                     ; preds = %cond.end.670, %cond.true.653
  %cond673 = phi i32 [ %conv657, %cond.true.653 ], [ %cond671, %cond.end.670 ]
  br label %cond.end.674

cond.end.674:                                     ; preds = %cond.end.672, %land.end.646
  %cond675 = phi i32 [ %cond648, %land.end.646 ], [ %cond673, %cond.end.672 ]
  br label %cond.end.676

cond.end.676:                                     ; preds = %cond.end.674, %cond.true.622
  %cond677 = phi i32 [ 0, %cond.true.622 ], [ %cond675, %cond.end.674 ]
  %tobool678 = icmp ne i32 %cond677, 0
  %lnot = xor i1 %tobool678, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %ans, align 4
  br label %sw.epilog.679

sw.epilog.679:                                    ; preds = %if.then.535, %cond.end.676, %cond.end.611, %cond.end.598, %cond.end.585, %cond.end.572, %cond.end.559, %cond.end.546
  %464 = load i32, i32* %ans, align 4
  %tobool680 = icmp ne i32 %464, 0
  %cond681 = select i1 %tobool680, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  store %struct.sv* %cond681, %struct.sv** %retval
  br label %return

if.else.682:                                      ; preds = %if.end.512
  %465 = load i32, i32* %method.addr, align 4
  %cmp683 = icmp eq i32 %465, 56
  br i1 %cmp683, label %if.then.685, label %if.else.700

if.then.685:                                      ; preds = %if.else.682
  %466 = load %struct.sv*, %struct.sv** %res, align 8
  %sv_flags686 = getelementptr inbounds %struct.sv, %struct.sv* %466, i32 0, i32 2
  %467 = load i32, i32* %sv_flags686, align 4
  %and687 = and i32 %467, 524288
  %tobool688 = icmp ne i32 %and687, 0
  br i1 %tobool688, label %if.end.690, label %if.then.689

if.then.689:                                      ; preds = %if.then.685
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.80, i32 0, i32 0))
  br label %if.end.690

if.end.690:                                       ; preds = %if.then.689, %if.then.685
  %468 = load %struct.sv*, %struct.sv** %res, align 8
  %sv_any691 = getelementptr inbounds %struct.sv, %struct.sv* %468, i32 0, i32 0
  %469 = load i8*, i8** %sv_any691, align 8
  %470 = bitcast i8* %469 to %struct.xrv*
  %xrv_rv692 = getelementptr inbounds %struct.xrv, %struct.xrv* %470, i32 0, i32 0
  %471 = load %struct.sv*, %struct.sv** %xrv_rv692, align 8
  store %struct.sv* %471, %struct.sv** @PL_Sv, align 8
  %472 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool693 = icmp ne %struct.sv* %472, null
  br i1 %tobool693, label %land.rhs.694, label %land.end.698

land.rhs.694:                                     ; preds = %if.end.690
  %473 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt695 = getelementptr inbounds %struct.sv, %struct.sv* %473, i32 0, i32 1
  %474 = load i32, i32* %sv_refcnt695, align 4
  %inc696 = add i32 %474, 1
  store i32 %inc696, i32* %sv_refcnt695, align 4
  %tobool697 = icmp ne i32 %inc696, 0
  br label %land.end.698

land.end.698:                                     ; preds = %land.rhs.694, %if.end.690
  %475 = phi i1 [ false, %if.end.690 ], [ %tobool697, %land.rhs.694 ]
  %land.ext699 = zext i1 %475 to i32
  %476 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  store %struct.sv* %476, %struct.sv** %retval
  br label %return

if.else.700:                                      ; preds = %if.else.682
  %477 = load %struct.sv*, %struct.sv** %res, align 8
  store %struct.sv* %477, %struct.sv** %retval
  br label %return

return:                                           ; preds = %if.else.700, %land.end.698, %sw.epilog.679, %if.end.619, %if.end.359, %sw.bb.287, %if.then.272, %sw.bb.203, %sw.bb.202, %if.else.192, %land.end
  %478 = load %struct.sv*, %struct.sv** %retval
  ret %struct.sv* %478
}

declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

declare %struct.sv* @Perl_newSViv(i64) #1

declare double @Perl_sv_2nv(%struct.sv*) #1

declare %struct.stackinfo* @Perl_new_stackinfo(i32, i32) #1

declare void @Perl_save_op() #1

declare %struct.op* @Perl_pp_pushmark() #1

declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

declare %struct.sv* @Perl_newSVpv(i8*, i64) #1

declare %struct.op* @Perl_pp_entersub() #1

declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #1

declare %struct._PerlIO** @Perl_PerlIO_stderr() #1

declare void @Perl_my_exit(i32) #1

declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_gv_magical(i8* %name, i64 %len, i32 %flags) #0 {
entry:
  %retval = alloca i8, align 1
  %name.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %name1 = alloca i8*, align 8
  %end = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp ugt i64 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 1
  store i8* %add.ptr, i8** %name1, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  switch i32 %conv, label %sw.epilog [
    i32 73, label %sw.bb
    i32 79, label %sw.bb.12
    i32 83, label %sw.bb.18
    i32 15, label %sw.bb.33
    i32 20, label %sw.bb.38
    i32 21, label %sw.bb.43
    i32 23, label %sw.bb.52
    i32 49, label %sw.bb.57
    i32 50, label %sw.bb.57
    i32 51, label %sw.bb.57
    i32 52, label %sw.bb.57
    i32 53, label %sw.bb.57
    i32 54, label %sw.bb.57
    i32 55, label %sw.bb.57
    i32 56, label %sw.bb.57
    i32 57, label %sw.bb.57
  ]

sw.bb:                                            ; preds = %if.then
  %4 = load i64, i64* %len.addr, align 8
  %cmp1 = icmp eq i64 %4, 3
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %5 = load i8*, i8** %name1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 83
  br i1 %cmp4, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %7 = load i8*, i8** %name.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %8 to i32
  %cmp9 = icmp eq i32 %conv8, 65
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %land.lhs.true.6
  br label %yes

if.end:                                           ; preds = %land.lhs.true.6, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.then
  %9 = load i64, i64* %len.addr, align 8
  %cmp13 = icmp eq i64 %9, 8
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.17

land.lhs.true.15:                                 ; preds = %sw.bb.12
  %10 = load i8*, i8** %name1, align 8
  %call = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true.15
  br label %yes

if.end.17:                                        ; preds = %land.lhs.true.15, %sw.bb.12
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.then
  %11 = load i64, i64* %len.addr, align 8
  %cmp19 = icmp eq i64 %11, 3
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.32

land.lhs.true.21:                                 ; preds = %sw.bb.18
  %12 = load i8*, i8** %name.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %13 to i32
  %cmp24 = icmp eq i32 %conv23, 73
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.32

land.lhs.true.26:                                 ; preds = %land.lhs.true.21
  %14 = load i8*, i8** %name.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %15 to i32
  %cmp29 = icmp eq i32 %conv28, 71
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %land.lhs.true.26
  br label %yes

if.end.32:                                        ; preds = %land.lhs.true.26, %land.lhs.true.21, %sw.bb.18
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.then
  %16 = load i8*, i8** %name1, align 8
  %call34 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0))
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %sw.bb.33
  br label %yes

if.end.37:                                        ; preds = %sw.bb.33
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.then
  %17 = load i8*, i8** %name1, align 8
  %call39 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0))
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %sw.bb.38
  br label %yes

if.end.42:                                        ; preds = %sw.bb.38
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.then
  %18 = load i8*, i8** %name1, align 8
  %call44 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0))
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %sw.bb.43
  br label %yes

if.end.47:                                        ; preds = %sw.bb.43
  %19 = load i8*, i8** %name1, align 8
  %call48 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0))
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %if.end.47
  br label %yes

if.end.51:                                        ; preds = %if.end.47
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.then
  %20 = load i8*, i8** %name1, align 8
  %call53 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0))
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %sw.bb.52
  br label %yes

if.end.56:                                        ; preds = %sw.bb.52
  br label %sw.epilog

sw.bb.57:                                         ; preds = %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then
  %21 = load i8*, i8** %name.addr, align 8
  %22 = load i64, i64* %len.addr, align 8
  %add.ptr58 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %add.ptr58, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.69, %sw.bb.57
  %23 = load i8*, i8** %end, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 -1
  store i8* %incdec.ptr, i8** %end, align 8
  %24 = load i8*, i8** %name.addr, align 8
  %cmp59 = icmp ugt i8* %incdec.ptr, %24
  br i1 %cmp59, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load i8*, i8** %end, align 8
  %26 = load i8, i8* %25, align 1
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp sge i32 %conv61, 48
  br i1 %cmp62, label %land.lhs.true.64, label %if.then.68

land.lhs.true.64:                                 ; preds = %while.body
  %27 = load i8*, i8** %end, align 8
  %28 = load i8, i8* %27, align 1
  %conv65 = sext i8 %28 to i32
  %cmp66 = icmp sle i32 %conv65, 57
  br i1 %cmp66, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %land.lhs.true.64, %while.body
  store i8 0, i8* %retval
  br label %return

if.end.69:                                        ; preds = %land.lhs.true.64
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %yes

sw.epilog:                                        ; preds = %if.then, %if.end.56, %if.end.51, %if.end.42, %if.end.37, %if.end.32, %if.end.17, %if.end
  br label %if.end.73

if.else:                                          ; preds = %entry
  %29 = load i8*, i8** %name.addr, align 8
  %30 = load i8, i8* %29, align 1
  %conv70 = sext i8 %30 to i32
  switch i32 %conv70, label %sw.default [
    i32 38, label %sw.bb.71
    i32 96, label %sw.bb.71
    i32 39, label %sw.bb.71
    i32 58, label %sw.bb.71
    i32 63, label %sw.bb.71
    i32 33, label %sw.bb.71
    i32 45, label %sw.bb.71
    i32 42, label %sw.bb.71
    i32 35, label %sw.bb.71
    i32 91, label %sw.bb.71
    i32 94, label %sw.bb.71
    i32 126, label %sw.bb.71
    i32 61, label %sw.bb.71
    i32 37, label %sw.bb.71
    i32 46, label %sw.bb.71
    i32 40, label %sw.bb.71
    i32 41, label %sw.bb.71
    i32 60, label %sw.bb.71
    i32 62, label %sw.bb.71
    i32 44, label %sw.bb.71
    i32 92, label %sw.bb.71
    i32 47, label %sw.bb.71
    i32 124, label %sw.bb.71
    i32 43, label %sw.bb.71
    i32 59, label %sw.bb.71
    i32 93, label %sw.bb.71
    i32 1, label %sw.bb.71
    i32 3, label %sw.bb.71
    i32 4, label %sw.bb.71
    i32 5, label %sw.bb.71
    i32 6, label %sw.bb.71
    i32 8, label %sw.bb.71
    i32 9, label %sw.bb.71
    i32 12, label %sw.bb.71
    i32 14, label %sw.bb.71
    i32 15, label %sw.bb.71
    i32 16, label %sw.bb.71
    i32 19, label %sw.bb.71
    i32 20, label %sw.bb.71
    i32 22, label %sw.bb.71
    i32 23, label %sw.bb.71
    i32 49, label %sw.bb.71
    i32 50, label %sw.bb.71
    i32 51, label %sw.bb.71
    i32 52, label %sw.bb.71
    i32 53, label %sw.bb.71
    i32 54, label %sw.bb.71
    i32 55, label %sw.bb.71
    i32 56, label %sw.bb.71
    i32 57, label %sw.bb.71
  ]

sw.bb.71:                                         ; preds = %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else
  br label %yes

yes:                                              ; preds = %sw.bb.71, %while.end, %if.then.55, %if.then.50, %if.then.46, %if.then.41, %if.then.36, %if.then.31, %if.then.16, %if.then.11
  store i8 1, i8* %retval
  br label %return

sw.default:                                       ; preds = %if.else
  br label %sw.epilog.72

sw.epilog.72:                                     ; preds = %sw.default
  br label %if.end.73

if.end.73:                                        ; preds = %sw.epilog.72, %sw.epilog
  store i8 0, i8* %retval
  br label %return

return:                                           ; preds = %if.end.73, %yes, %if.then.68
  %31 = load i8, i8* %retval
  ret i8 %31
}

declare %struct.sv* @Perl_save_scalar(%struct.gv*) #1

declare void @Perl_load_module(i32, %struct.sv*, %struct.sv*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
