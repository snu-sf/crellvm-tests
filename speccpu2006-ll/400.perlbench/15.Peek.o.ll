; ModuleID = 'Peek.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.xpv = type { i8*, i64, i64 }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.interpreter = type { i8 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%union.any = type { i8* }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.xpviv = type { i8*, i64, i64, i64 }
%struct.xpvnv = type { i8*, i64, i64, i64, double }
%struct.xrv = type { %struct.sv* }

@PL_runops = external global i32 ()*, align 8
@PL_sv_arenaroot = external global %struct.sv*, align 8
@.str = private unnamed_addr constant [9 x i8] c"GVGV::GV\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"  busy\0A\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"    closure-template\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"     ref in args!\0A\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"    level %i: refs: %i, strings: %i in %i,\09argsarray: %i, argsstrings: %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"  total: refs: %i, strings: %i in %i,\09argsarrays: %i, argsstrings: %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"total: refs: %i, strings: %i in %i\09argsarray: %i, argsstrings: %i\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Cannot report mstats without Perl malloc\00", align 1
@PL_stack_sp = external global %struct.sv**, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_markstack_ptr = external global i32*, align 8
@.str.8 = private unnamed_addr constant [54 x i8] c"Usage: Devel::Peek::mstat(str=\22Devel::Peek::mstat: \22)\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Devel::Peek::mstat: \00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"%s: perl not compiled with DEBUGGING_MSTATS\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"Usage: Devel::Peek::fill_mstats(sv, level= 0)\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"Usage: Devel::Peek::mstats_fillhash(sv, level= 0)\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Usage: Devel::Peek::mstats2hash(sv, rv, level= 0)\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Usage: Devel::Peek::Dump(sv, lim=4)\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Devel::Peek::pv_limit\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Devel::Peek::dump_ops\00", align 1
@PL_dumpindent = external global i32, align 4
@PL_Xpv = external global %struct.xpv*, align 8
@.str.17 = private unnamed_addr constant [40 x i8] c"Usage: Devel::Peek::DumpArray(lim, ...)\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Elt No. %ld  0x%lx\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Usage: Devel::Peek::DumpProg()\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"dumpindent is %d\00", align 1
@PL_main_root = external global %struct.op*, align 8
@.str.21 = private unnamed_addr constant [33 x i8] c"Usage: Devel::Peek::SvREFCNT(sv)\00", align 1
@PL_op = external global %struct.op*, align 8
@PL_curpad = external global %struct.sv**, align 8
@.str.22 = private unnamed_addr constant [37 x i8] c"Usage: Devel::Peek::SvREFCNT_inc(sv)\00", align 1
@PL_Sv = external global %struct.sv*, align 8
@.str.23 = private unnamed_addr constant [37 x i8] c"Usage: Devel::Peek::SvREFCNT_dec(sv)\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"Usage: Devel::Peek::DeadCode()\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"Usage: Devel::Peek::CvGV(cv)\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"Usage: Devel::Peek::runops_debug(flag= -1)\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@.str.27 = private unnamed_addr constant [7 x i8] c"Peek.c\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"Devel::Peek::mstat\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"Devel::Peek::fill_mstats\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Devel::Peek::mstats_fillhash\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"\5C%;$\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"Devel::Peek::mstats2hash\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"$\5C%;$\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"Devel::Peek::Dump\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"Devel::Peek::DumpArray\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"Devel::Peek::DumpProg\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"Devel::Peek::SvREFCNT\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"Devel::Peek::SvREFCNT_inc\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"Devel::Peek::SvREFCNT_dec\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"Devel::Peek::DeadCode\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"Devel::Peek::CvGV\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"Devel::Peek::runops_debug\00", align 1

; Function Attrs: nounwind uwtable
define signext i8 @_runops_debug(i32 %flag) #0 {
entry:
  %flag.addr = alloca i32, align 4
  %d = alloca i8, align 1
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i32 ()*, i32 ()** @PL_runops, align 8
  %cmp = icmp eq i32 ()* %0, @Perl_runops_debug
  %conv = zext i1 %cmp to i32
  %conv1 = trunc i32 %conv to i8
  store i8 %conv1, i8* %d, align 1
  %1 = load i32, i32* %flag.addr, align 4
  %cmp2 = icmp sge i32 %1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %flag.addr, align 4
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 ()* @Perl_runops_debug, i32 ()* @Perl_runops_standard
  store i32 ()* %cond, i32 ()** @PL_runops, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, i8* %d, align 1
  ret i8 %3
}

declare i32 @Perl_runops_debug() #1

declare i32 @Perl_runops_standard() #1

; Function Attrs: nounwind uwtable
define %struct.sv* @DeadCode() #0 {
entry:
  %sva = alloca %struct.sv*, align 8
  %sv = alloca %struct.sv*, align 8
  %ret = alloca %struct.sv*, align 8
  %svend = alloca %struct.sv*, align 8
  %tm = alloca i32, align 4
  %tref = alloca i32, align 4
  %ts = alloca i32, align 4
  %ta = alloca i32, align 4
  %tas = alloca i32, align 4
  %cv = alloca %struct.cv*, align 8
  %padlist = alloca %struct.av*, align 8
  %argav = alloca %struct.av*, align 8
  %svp = alloca %struct.sv**, align 8
  %pad = alloca %struct.sv**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %levelm = alloca i32, align 4
  %totm = alloca i32, align 4
  %levelref = alloca i32, align 4
  %totref = alloca i32, align 4
  %levels = alloca i32, align 4
  %tots = alloca i32, align 4
  %levela = alloca i32, align 4
  %tota = alloca i32, align 4
  %levelas = alloca i32, align 4
  %totas = alloca i32, align 4
  %dumpit = alloca i32, align 4
  %args = alloca %struct.sv**, align 8
  %call = call %struct.av* @Perl_newAV()
  %0 = bitcast %struct.av* %call to %struct.sv*
  %call1 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %0)
  store %struct.sv* %call1, %struct.sv** %ret, align 8
  store i32 0, i32* %tm, align 4
  store i32 0, i32* %tref, align 4
  store i32 0, i32* %ts, align 4
  store i32 0, i32* %ta, align 4
  store i32 0, i32* %tas, align 4
  %1 = load %struct.sv*, %struct.sv** @PL_sv_arenaroot, align 8
  store %struct.sv* %1, %struct.sv** %sva, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.223, %entry
  %2 = load %struct.sv*, %struct.sv** %sva, align 8
  %tobool = icmp ne %struct.sv* %2, null
  br i1 %tobool, label %for.body, label %for.end.225

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sv*, %struct.sv** %sva, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 1
  %4 = load i32, i32* %sv_refcnt, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.sv*, %struct.sv** %sva, align 8
  %arrayidx = getelementptr inbounds %struct.sv, %struct.sv* %5, i64 %idxprom
  store %struct.sv* %arrayidx, %struct.sv** %svend, align 8
  %6 = load %struct.sv*, %struct.sv** %sva, align 8
  %add.ptr = getelementptr inbounds %struct.sv, %struct.sv* %6, i64 1
  store %struct.sv* %add.ptr, %struct.sv** %sv, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.221, %for.body
  %7 = load %struct.sv*, %struct.sv** %sv, align 8
  %8 = load %struct.sv*, %struct.sv** %svend, align 8
  %cmp = icmp ult %struct.sv* %7, %8
  br i1 %cmp, label %for.body.3, label %for.end.222

for.body.3:                                       ; preds = %for.cond.2
  %9 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 2
  %10 = load i32, i32* %sv_flags, align 4
  %and = and i32 %10, 255
  %cmp4 = icmp eq i32 %and, 12
  br i1 %cmp4, label %if.then, label %if.end.220

if.then:                                          ; preds = %for.body.3
  %11 = load %struct.sv*, %struct.sv** %sv, align 8
  %12 = bitcast %struct.sv* %11 to %struct.cv*
  store %struct.cv* %12, %struct.cv** %cv, align 8
  %13 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any = getelementptr inbounds %struct.cv, %struct.cv* %13, i32 0, i32 0
  %14 = load %struct.xpvcv*, %struct.xpvcv** %sv_any, align 8
  %xcv_padlist = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %14, i32 0, i32 15
  %15 = load %struct.av*, %struct.av** %xcv_padlist, align 8
  store %struct.av* %15, %struct.av** %padlist, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %totm, align 4
  store i32 0, i32* %totref, align 4
  store i32 0, i32* %tots, align 4
  store i32 0, i32* %tota, align 4
  store i32 0, i32* %totas, align 4
  store i32 0, i32* %dumpit, align 4
  %16 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any5 = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 0
  %17 = load i8*, i8** %sv_any5, align 8
  %18 = bitcast i8* %17 to %struct.xpvcv*
  %xcv_xsub = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %18, i32 0, i32 10
  %19 = load void (%struct.cv*)*, void (%struct.cv*)** %xcv_xsub, align 8
  %tobool6 = icmp ne void (%struct.cv*)* %19, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  br label %for.inc.221

if.end:                                           ; preds = %if.then
  %20 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any8 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 0
  %21 = load i8*, i8** %sv_any8, align 8
  %22 = bitcast i8* %21 to %struct.xpvcv*
  %xcv_gv = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %22, i32 0, i32 12
  %23 = load %struct.gv*, %struct.gv** %xcv_gv, align 8
  %tobool9 = icmp ne %struct.gv* %23, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end
  br label %for.inc.221

if.end.11:                                        ; preds = %if.end
  %24 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any12 = getelementptr inbounds %struct.cv, %struct.cv* %24, i32 0, i32 0
  %25 = load %struct.xpvcv*, %struct.xpvcv** %sv_any12, align 8
  %xcv_root = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %25, i32 0, i32 9
  %26 = load %struct.op*, %struct.op** %xcv_root, align 8
  %tobool13 = icmp ne %struct.op* %26, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.11
  br label %for.inc.221

if.end.15:                                        ; preds = %if.end.11
  %call16 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %27 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any17 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 0
  %28 = load i8*, i8** %sv_any17, align 8
  %29 = bitcast i8* %28 to %struct.xpvcv*
  %xcv_gv18 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %29, i32 0, i32 12
  %30 = load %struct.gv*, %struct.gv** %xcv_gv18, align 8
  call void @Perl_do_gvgv_dump(i32 0, %struct._PerlIO** %call16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.gv* %30)
  %31 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any19 = getelementptr inbounds %struct.cv, %struct.cv* %31, i32 0, i32 0
  %32 = load %struct.xpvcv*, %struct.xpvcv** %sv_any19, align 8
  %xcv_depth = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %32, i32 0, i32 14
  %33 = load i64, i64* %xcv_depth, align 8
  %tobool20 = icmp ne i64 %33, 0
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.15
  %call22 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %call23 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  br label %for.inc.221

if.end.24:                                        ; preds = %if.end.15
  %34 = load %struct.av*, %struct.av** %padlist, align 8
  %sv_any25 = getelementptr inbounds %struct.av, %struct.av* %34, i32 0, i32 0
  %35 = load %struct.xpvav*, %struct.xpvav** %sv_any25, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %35, i32 0, i32 0
  %36 = load i8*, i8** %xav_array, align 8
  %37 = bitcast i8* %36 to %struct.sv**
  store %struct.sv** %37, %struct.sv*** %svp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.197, %if.then.42, %if.end.24
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  %conv = sext i32 %inc to i64
  %39 = load %struct.av*, %struct.av** %padlist, align 8
  %40 = bitcast %struct.av* %39 to %struct.sv*
  %sv_flags26 = getelementptr inbounds %struct.sv, %struct.sv* %40, i32 0, i32 2
  %41 = load i32, i32* %sv_flags26, align 4
  %and27 = and i32 %41, 32768
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.cond
  %42 = load %struct.av*, %struct.av** %padlist, align 8
  %43 = bitcast %struct.av* %42 to %struct.sv*
  %call29 = call i32 @Perl_mg_size(%struct.sv* %43)
  %conv30 = sext i32 %call29 to i64
  br label %cond.end

cond.false:                                       ; preds = %while.cond
  %44 = load %struct.av*, %struct.av** %padlist, align 8
  %sv_any31 = getelementptr inbounds %struct.av, %struct.av* %44, i32 0, i32 0
  %45 = load %struct.xpvav*, %struct.xpvav** %sv_any31, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %45, i32 0, i32 1
  %46 = load i64, i64* %xav_fill, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv30, %cond.true ], [ %46, %cond.false ]
  %cmp32 = icmp sle i64 %conv, %cond
  br i1 %cmp32, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end
  %47 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %47 to i64
  %48 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx35 = getelementptr inbounds %struct.sv*, %struct.sv** %48, i64 %idxprom34
  %49 = load %struct.sv*, %struct.sv** %arrayidx35, align 8
  %50 = bitcast %struct.sv* %49 to %struct.av*
  %sv_any36 = getelementptr inbounds %struct.av, %struct.av* %50, i32 0, i32 0
  %51 = load %struct.xpvav*, %struct.xpvav** %sv_any36, align 8
  %xav_array37 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %51, i32 0, i32 0
  %52 = load i8*, i8** %xav_array37, align 8
  %53 = bitcast i8* %52 to %struct.sv**
  store %struct.sv** %53, %struct.sv*** %pad, align 8
  %54 = load %struct.sv**, %struct.sv*** %pad, align 8
  %arrayidx38 = getelementptr inbounds %struct.sv*, %struct.sv** %54, i64 0
  %55 = load %struct.sv*, %struct.sv** %arrayidx38, align 8
  %56 = bitcast %struct.sv* %55 to %struct.av*
  store %struct.av* %56, %struct.av** %argav, align 8
  %57 = load %struct.av*, %struct.av** %argav, align 8
  %tobool39 = icmp ne %struct.av* %57, null
  br i1 %tobool39, label %lor.lhs.false, label %if.then.42

lor.lhs.false:                                    ; preds = %while.body
  %58 = load %struct.av*, %struct.av** %argav, align 8
  %59 = bitcast %struct.av* %58 to %struct.sv*
  %cmp40 = icmp eq %struct.sv* %59, @PL_sv_undef
  br i1 %cmp40, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %lor.lhs.false, %while.body
  %call43 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %call44 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  br label %while.cond

if.end.45:                                        ; preds = %lor.lhs.false
  %60 = load %struct.av*, %struct.av** %argav, align 8
  %sv_any46 = getelementptr inbounds %struct.av, %struct.av* %60, i32 0, i32 0
  %61 = load %struct.xpvav*, %struct.xpvav** %sv_any46, align 8
  %xav_array47 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %61, i32 0, i32 0
  %62 = load i8*, i8** %xav_array47, align 8
  %63 = bitcast i8* %62 to %struct.sv**
  store %struct.sv** %63, %struct.sv*** %args, align 8
  store i32 0, i32* %levelas, align 4
  store i32 0, i32* %levelref, align 4
  store i32 0, i32* %levels, align 4
  store i32 0, i32* %levelm, align 4
  %64 = load %struct.av*, %struct.av** %argav, align 8
  %sv_any48 = getelementptr inbounds %struct.av, %struct.av* %64, i32 0, i32 0
  %65 = load %struct.xpvav*, %struct.xpvav** %sv_any48, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %65, i32 0, i32 2
  %66 = load i64, i64* %xav_max, align 8
  %add = add nsw i64 %66, 1
  %mul = mul i64 8, %add
  %conv49 = trunc i64 %mul to i32
  store i32 %conv49, i32* %levela, align 4
  %67 = load %struct.av*, %struct.av** %argav, align 8
  %sv_any50 = getelementptr inbounds %struct.av, %struct.av* %67, i32 0, i32 0
  %68 = load %struct.xpvav*, %struct.xpvav** %sv_any50, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %68, i32 0, i32 9
  %69 = load i8, i8* %xav_flags, align 1
  %conv51 = zext i8 %69 to i32
  %and52 = and i32 %conv51, 1
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.105

if.then.54:                                       ; preds = %if.end.45
  store i32 0, i32* %j, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc, %if.then.54
  %70 = load i32, i32* %j, align 4
  %conv56 = sext i32 %70 to i64
  %71 = load %struct.av*, %struct.av** %argav, align 8
  %72 = bitcast %struct.av* %71 to %struct.sv*
  %sv_flags57 = getelementptr inbounds %struct.sv, %struct.sv* %72, i32 0, i32 2
  %73 = load i32, i32* %sv_flags57, align 4
  %and58 = and i32 %73, 32768
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %cond.true.60, label %cond.false.63

cond.true.60:                                     ; preds = %for.cond.55
  %74 = load %struct.av*, %struct.av** %argav, align 8
  %75 = bitcast %struct.av* %74 to %struct.sv*
  %call61 = call i32 @Perl_mg_size(%struct.sv* %75)
  %conv62 = sext i32 %call61 to i64
  br label %cond.end.66

cond.false.63:                                    ; preds = %for.cond.55
  %76 = load %struct.av*, %struct.av** %argav, align 8
  %sv_any64 = getelementptr inbounds %struct.av, %struct.av* %76, i32 0, i32 0
  %77 = load %struct.xpvav*, %struct.xpvav** %sv_any64, align 8
  %xav_fill65 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %77, i32 0, i32 1
  %78 = load i64, i64* %xav_fill65, align 8
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.63, %cond.true.60
  %cond67 = phi i64 [ %conv62, %cond.true.60 ], [ %78, %cond.false.63 ]
  %cmp68 = icmp slt i64 %conv56, %cond67
  br i1 %cmp68, label %for.body.70, label %for.end

for.body.70:                                      ; preds = %cond.end.66
  %79 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %79 to i64
  %80 = load %struct.sv**, %struct.sv*** %args, align 8
  %arrayidx72 = getelementptr inbounds %struct.sv*, %struct.sv** %80, i64 %idxprom71
  %81 = load %struct.sv*, %struct.sv** %arrayidx72, align 8
  %sv_flags73 = getelementptr inbounds %struct.sv, %struct.sv* %81, i32 0, i32 2
  %82 = load i32, i32* %sv_flags73, align 4
  %and74 = and i32 %82, 524288
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %for.body.70
  %call77 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %call78 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  %83 = load i32, i32* %levelref, align 4
  %inc79 = add nsw i32 %83, 1
  store i32 %inc79, i32* %levelref, align 4
  br label %if.end.103

if.else:                                          ; preds = %for.body.70
  %84 = load i32, i32* %j, align 4
  %idxprom80 = sext i32 %84 to i64
  %85 = load %struct.sv**, %struct.sv*** %args, align 8
  %arrayidx81 = getelementptr inbounds %struct.sv*, %struct.sv** %85, i64 %idxprom80
  %86 = load %struct.sv*, %struct.sv** %arrayidx81, align 8
  %sv_flags82 = getelementptr inbounds %struct.sv, %struct.sv* %86, i32 0, i32 2
  %87 = load i32, i32* %sv_flags82, align 4
  %and83 = and i32 %87, 255
  %cmp84 = icmp uge i32 %and83, 4
  br i1 %cmp84, label %land.lhs.true, label %if.end.102

land.lhs.true:                                    ; preds = %if.else
  %88 = load i32, i32* %j, align 4
  %idxprom86 = sext i32 %88 to i64
  %89 = load %struct.sv**, %struct.sv*** %args, align 8
  %arrayidx87 = getelementptr inbounds %struct.sv*, %struct.sv** %89, i64 %idxprom86
  %90 = load %struct.sv*, %struct.sv** %arrayidx87, align 8
  %sv_any88 = getelementptr inbounds %struct.sv, %struct.sv* %90, i32 0, i32 0
  %91 = load i8*, i8** %sv_any88, align 8
  %92 = bitcast i8* %91 to %struct.xpv*
  %xpv_len = getelementptr inbounds %struct.xpv, %struct.xpv* %92, i32 0, i32 2
  %93 = load i64, i64* %xpv_len, align 8
  %tobool89 = icmp ne i64 %93, 0
  br i1 %tobool89, label %if.then.90, label %if.end.102

if.then.90:                                       ; preds = %land.lhs.true
  %94 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %94 to i64
  %95 = load %struct.sv**, %struct.sv*** %args, align 8
  %arrayidx92 = getelementptr inbounds %struct.sv*, %struct.sv** %95, i64 %idxprom91
  %96 = load %struct.sv*, %struct.sv** %arrayidx92, align 8
  %sv_any93 = getelementptr inbounds %struct.sv, %struct.sv* %96, i32 0, i32 0
  %97 = load i8*, i8** %sv_any93, align 8
  %98 = bitcast i8* %97 to %struct.xpv*
  %xpv_len94 = getelementptr inbounds %struct.xpv, %struct.xpv* %98, i32 0, i32 2
  %99 = load i64, i64* %xpv_len94, align 8
  %100 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %100 to i64
  %101 = load %struct.sv**, %struct.sv*** %args, align 8
  %arrayidx96 = getelementptr inbounds %struct.sv*, %struct.sv** %101, i64 %idxprom95
  %102 = load %struct.sv*, %struct.sv** %arrayidx96, align 8
  %sv_refcnt97 = getelementptr inbounds %struct.sv, %struct.sv* %102, i32 0, i32 1
  %103 = load i32, i32* %sv_refcnt97, align 4
  %conv98 = zext i32 %103 to i64
  %div = udiv i64 %99, %conv98
  %104 = load i32, i32* %levelas, align 4
  %conv99 = sext i32 %104 to i64
  %add100 = add i64 %conv99, %div
  %conv101 = trunc i64 %add100 to i32
  store i32 %conv101, i32* %levelas, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.90, %land.lhs.true, %if.else
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.76
  br label %for.inc

for.inc:                                          ; preds = %if.end.103
  %105 = load i32, i32* %j, align 4
  %inc104 = add nsw i32 %105, 1
  store i32 %inc104, i32* %j, align 4
  br label %for.cond.55

for.end:                                          ; preds = %cond.end.66
  br label %if.end.105

if.end.105:                                       ; preds = %for.end, %if.end.45
  store i32 1, i32* %j, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.184, %if.end.105
  %106 = load i32, i32* %j, align 4
  %conv107 = sext i32 %106 to i64
  %107 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx108 = getelementptr inbounds %struct.sv*, %struct.sv** %107, i64 1
  %108 = load %struct.sv*, %struct.sv** %arrayidx108, align 8
  %109 = bitcast %struct.sv* %108 to %struct.av*
  %110 = bitcast %struct.av* %109 to %struct.sv*
  %sv_flags109 = getelementptr inbounds %struct.sv, %struct.sv* %110, i32 0, i32 2
  %111 = load i32, i32* %sv_flags109, align 4
  %and110 = and i32 %111, 32768
  %tobool111 = icmp ne i32 %and110, 0
  br i1 %tobool111, label %cond.true.112, label %cond.false.116

cond.true.112:                                    ; preds = %for.cond.106
  %112 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx113 = getelementptr inbounds %struct.sv*, %struct.sv** %112, i64 1
  %113 = load %struct.sv*, %struct.sv** %arrayidx113, align 8
  %114 = bitcast %struct.sv* %113 to %struct.av*
  %115 = bitcast %struct.av* %114 to %struct.sv*
  %call114 = call i32 @Perl_mg_size(%struct.sv* %115)
  %conv115 = sext i32 %call114 to i64
  br label %cond.end.120

cond.false.116:                                   ; preds = %for.cond.106
  %116 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx117 = getelementptr inbounds %struct.sv*, %struct.sv** %116, i64 1
  %117 = load %struct.sv*, %struct.sv** %arrayidx117, align 8
  %118 = bitcast %struct.sv* %117 to %struct.av*
  %sv_any118 = getelementptr inbounds %struct.av, %struct.av* %118, i32 0, i32 0
  %119 = load %struct.xpvav*, %struct.xpvav** %sv_any118, align 8
  %xav_fill119 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %119, i32 0, i32 1
  %120 = load i64, i64* %xav_fill119, align 8
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.116, %cond.true.112
  %cond121 = phi i64 [ %conv115, %cond.true.112 ], [ %120, %cond.false.116 ]
  %cmp122 = icmp slt i64 %conv107, %cond121
  br i1 %cmp122, label %for.body.124, label %for.end.186

for.body.124:                                     ; preds = %cond.end.120
  %121 = load i32, i32* %j, align 4
  %idxprom125 = sext i32 %121 to i64
  %122 = load %struct.sv**, %struct.sv*** %pad, align 8
  %arrayidx126 = getelementptr inbounds %struct.sv*, %struct.sv** %122, i64 %idxprom125
  %123 = load %struct.sv*, %struct.sv** %arrayidx126, align 8
  %sv_flags127 = getelementptr inbounds %struct.sv, %struct.sv* %123, i32 0, i32 2
  %124 = load i32, i32* %sv_flags127, align 4
  %and128 = and i32 %124, 524288
  %tobool129 = icmp ne i32 %and128, 0
  br i1 %tobool129, label %if.then.130, label %if.else.135

if.then.130:                                      ; preds = %for.body.124
  %125 = load i32, i32* %levelref, align 4
  %inc131 = add nsw i32 %125, 1
  store i32 %inc131, i32* %levelref, align 4
  %call132 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %126 = load i32, i32* %j, align 4
  %idxprom133 = sext i32 %126 to i64
  %127 = load %struct.sv**, %struct.sv*** %pad, align 8
  %arrayidx134 = getelementptr inbounds %struct.sv*, %struct.sv** %127, i64 %idxprom133
  %128 = load %struct.sv*, %struct.sv** %arrayidx134, align 8
  call void @Perl_do_sv_dump(i32 0, %struct._PerlIO** %call132, %struct.sv* %128, i32 0, i32 4, i8 signext 0, i64 0)
  store i32 1, i32* %dumpit, align 4
  br label %if.end.183

if.else.135:                                      ; preds = %for.body.124
  %129 = load i32, i32* %j, align 4
  %idxprom136 = sext i32 %129 to i64
  %130 = load %struct.sv**, %struct.sv*** %pad, align 8
  %arrayidx137 = getelementptr inbounds %struct.sv*, %struct.sv** %130, i64 %idxprom136
  %131 = load %struct.sv*, %struct.sv** %arrayidx137, align 8
  %sv_flags138 = getelementptr inbounds %struct.sv, %struct.sv* %131, i32 0, i32 2
  %132 = load i32, i32* %sv_flags138, align 4
  %and139 = and i32 %132, 255
  %cmp140 = icmp uge i32 %and139, 10
  br i1 %cmp140, label %if.then.142, label %if.else.154

if.then.142:                                      ; preds = %if.else.135
  %133 = load i32, i32* %j, align 4
  %idxprom143 = sext i32 %133 to i64
  %134 = load %struct.sv**, %struct.sv*** %pad, align 8
  %arrayidx144 = getelementptr inbounds %struct.sv*, %struct.sv** %134, i64 %idxprom143
  %135 = load %struct.sv*, %struct.sv** %arrayidx144, align 8
  %sv_flags145 = getelementptr inbounds %struct.sv, %struct.sv* %135, i32 0, i32 2
  %136 = load i32, i32* %sv_flags145, align 4
  %and146 = and i32 %136, 1024
  %tobool147 = icmp ne i32 %and146, 0
  br i1 %tobool147, label %if.end.153, label %if.then.148

if.then.148:                                      ; preds = %if.then.142
  %137 = load i32, i32* %levelref, align 4
  %inc149 = add nsw i32 %137, 1
  store i32 %inc149, i32* %levelref, align 4
  %call150 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %138 = load i32, i32* %j, align 4
  %idxprom151 = sext i32 %138 to i64
  %139 = load %struct.sv**, %struct.sv*** %pad, align 8
  %arrayidx152 = getelementptr inbounds %struct.sv*, %struct.sv** %139, i64 %idxprom151
  %140 = load %struct.sv*, %struct.sv** %arrayidx152, align 8
  call void @Perl_do_sv_dump(i32 0, %struct._PerlIO** %call150, %struct.sv* %140, i32 0, i32 4, i8 signext 0, i64 0)
  store i32 1, i32* %dumpit, align 4
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.148, %if.then.142
  br label %if.end.182

if.else.154:                                      ; preds = %if.else.135
  %141 = load i32, i32* %j, align 4
  %idxprom155 = sext i32 %141 to i64
  %142 = load %struct.sv**, %struct.sv*** %pad, align 8
  %arrayidx156 = getelementptr inbounds %struct.sv*, %struct.sv** %142, i64 %idxprom155
  %143 = load %struct.sv*, %struct.sv** %arrayidx156, align 8
  %sv_flags157 = getelementptr inbounds %struct.sv, %struct.sv* %143, i32 0, i32 2
  %144 = load i32, i32* %sv_flags157, align 4
  %and158 = and i32 %144, 255
  %cmp159 = icmp uge i32 %and158, 4
  br i1 %cmp159, label %land.lhs.true.161, label %if.end.181

land.lhs.true.161:                                ; preds = %if.else.154
  %145 = load i32, i32* %j, align 4
  %idxprom162 = sext i32 %145 to i64
  %146 = load %struct.sv**, %struct.sv*** %pad, align 8
  %arrayidx163 = getelementptr inbounds %struct.sv*, %struct.sv** %146, i64 %idxprom162
  %147 = load %struct.sv*, %struct.sv** %arrayidx163, align 8
  %sv_any164 = getelementptr inbounds %struct.sv, %struct.sv* %147, i32 0, i32 0
  %148 = load i8*, i8** %sv_any164, align 8
  %149 = bitcast i8* %148 to %struct.xpv*
  %xpv_len165 = getelementptr inbounds %struct.xpv, %struct.xpv* %149, i32 0, i32 2
  %150 = load i64, i64* %xpv_len165, align 8
  %tobool166 = icmp ne i64 %150, 0
  br i1 %tobool166, label %if.then.167, label %if.end.181

if.then.167:                                      ; preds = %land.lhs.true.161
  %151 = load i32, i32* %levels, align 4
  %inc168 = add nsw i32 %151, 1
  store i32 %inc168, i32* %levels, align 4
  %152 = load i32, i32* %j, align 4
  %idxprom169 = sext i32 %152 to i64
  %153 = load %struct.sv**, %struct.sv*** %pad, align 8
  %arrayidx170 = getelementptr inbounds %struct.sv*, %struct.sv** %153, i64 %idxprom169
  %154 = load %struct.sv*, %struct.sv** %arrayidx170, align 8
  %sv_any171 = getelementptr inbounds %struct.sv, %struct.sv* %154, i32 0, i32 0
  %155 = load i8*, i8** %sv_any171, align 8
  %156 = bitcast i8* %155 to %struct.xpv*
  %xpv_len172 = getelementptr inbounds %struct.xpv, %struct.xpv* %156, i32 0, i32 2
  %157 = load i64, i64* %xpv_len172, align 8
  %158 = load i32, i32* %j, align 4
  %idxprom173 = sext i32 %158 to i64
  %159 = load %struct.sv**, %struct.sv*** %pad, align 8
  %arrayidx174 = getelementptr inbounds %struct.sv*, %struct.sv** %159, i64 %idxprom173
  %160 = load %struct.sv*, %struct.sv** %arrayidx174, align 8
  %sv_refcnt175 = getelementptr inbounds %struct.sv, %struct.sv* %160, i32 0, i32 1
  %161 = load i32, i32* %sv_refcnt175, align 4
  %conv176 = zext i32 %161 to i64
  %div177 = udiv i64 %157, %conv176
  %162 = load i32, i32* %levelm, align 4
  %conv178 = sext i32 %162 to i64
  %add179 = add i64 %conv178, %div177
  %conv180 = trunc i64 %add179 to i32
  store i32 %conv180, i32* %levelm, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.167, %land.lhs.true.161, %if.else.154
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.end.153
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.then.130
  br label %for.inc.184

for.inc.184:                                      ; preds = %if.end.183
  %163 = load i32, i32* %j, align 4
  %inc185 = add nsw i32 %163, 1
  store i32 %inc185, i32* %j, align 4
  br label %for.cond.106

for.end.186:                                      ; preds = %cond.end.120
  %call187 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %164 = load i32, i32* %i, align 4
  %165 = load i32, i32* %levelref, align 4
  %166 = load i32, i32* %levelm, align 4
  %167 = load i32, i32* %levels, align 4
  %168 = load i32, i32* %levela, align 4
  %169 = load i32, i32* %levelas, align 4
  %call188 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call187, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i32 0, i32 0), i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169)
  %170 = load i32, i32* %levelm, align 4
  %171 = load i32, i32* %totm, align 4
  %add189 = add nsw i32 %171, %170
  store i32 %add189, i32* %totm, align 4
  %172 = load i32, i32* %levela, align 4
  %173 = load i32, i32* %tota, align 4
  %add190 = add nsw i32 %173, %172
  store i32 %add190, i32* %tota, align 4
  %174 = load i32, i32* %levelas, align 4
  %175 = load i32, i32* %totas, align 4
  %add191 = add nsw i32 %175, %174
  store i32 %add191, i32* %totas, align 4
  %176 = load i32, i32* %levels, align 4
  %177 = load i32, i32* %tots, align 4
  %add192 = add nsw i32 %177, %176
  store i32 %add192, i32* %tots, align 4
  %178 = load i32, i32* %levelref, align 4
  %179 = load i32, i32* %totref, align 4
  %add193 = add nsw i32 %179, %178
  store i32 %add193, i32* %totref, align 4
  %180 = load i32, i32* %dumpit, align 4
  %tobool194 = icmp ne i32 %180, 0
  br i1 %tobool194, label %if.then.195, label %if.end.197

if.then.195:                                      ; preds = %for.end.186
  %call196 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %181 = load %struct.cv*, %struct.cv** %cv, align 8
  %182 = bitcast %struct.cv* %181 to %struct.sv*
  call void @Perl_do_sv_dump(i32 0, %struct._PerlIO** %call196, %struct.sv* %182, i32 0, i32 2, i8 signext 0, i64 0)
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.195, %for.end.186
  br label %while.cond

while.end:                                        ; preds = %cond.end
  %183 = load %struct.av*, %struct.av** %padlist, align 8
  %184 = bitcast %struct.av* %183 to %struct.sv*
  %sv_flags198 = getelementptr inbounds %struct.sv, %struct.sv* %184, i32 0, i32 2
  %185 = load i32, i32* %sv_flags198, align 4
  %and199 = and i32 %185, 32768
  %tobool200 = icmp ne i32 %and199, 0
  br i1 %tobool200, label %cond.true.201, label %cond.false.204

cond.true.201:                                    ; preds = %while.end
  %186 = load %struct.av*, %struct.av** %padlist, align 8
  %187 = bitcast %struct.av* %186 to %struct.sv*
  %call202 = call i32 @Perl_mg_size(%struct.sv* %187)
  %conv203 = sext i32 %call202 to i64
  br label %cond.end.207

cond.false.204:                                   ; preds = %while.end
  %188 = load %struct.av*, %struct.av** %padlist, align 8
  %sv_any205 = getelementptr inbounds %struct.av, %struct.av* %188, i32 0, i32 0
  %189 = load %struct.xpvav*, %struct.xpvav** %sv_any205, align 8
  %xav_fill206 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %189, i32 0, i32 1
  %190 = load i64, i64* %xav_fill206, align 8
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.false.204, %cond.true.201
  %cond208 = phi i64 [ %conv203, %cond.true.201 ], [ %190, %cond.false.204 ]
  %cmp209 = icmp sgt i64 %cond208, 1
  br i1 %cmp209, label %if.then.211, label %if.end.214

if.then.211:                                      ; preds = %cond.end.207
  %call212 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %191 = load i32, i32* %totref, align 4
  %192 = load i32, i32* %totm, align 4
  %193 = load i32, i32* %tots, align 4
  %194 = load i32, i32* %tota, align 4
  %195 = load i32, i32* %totas, align 4
  %call213 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call212, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i32 0, i32 0), i32 %191, i32 %192, i32 %193, i32 %194, i32 %195)
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.211, %cond.end.207
  %196 = load i32, i32* %totref, align 4
  %197 = load i32, i32* %tref, align 4
  %add215 = add nsw i32 %197, %196
  store i32 %add215, i32* %tref, align 4
  %198 = load i32, i32* %totm, align 4
  %199 = load i32, i32* %tm, align 4
  %add216 = add nsw i32 %199, %198
  store i32 %add216, i32* %tm, align 4
  %200 = load i32, i32* %tots, align 4
  %201 = load i32, i32* %ts, align 4
  %add217 = add nsw i32 %201, %200
  store i32 %add217, i32* %ts, align 4
  %202 = load i32, i32* %tota, align 4
  %203 = load i32, i32* %ta, align 4
  %add218 = add nsw i32 %203, %202
  store i32 %add218, i32* %ta, align 4
  %204 = load i32, i32* %totas, align 4
  %205 = load i32, i32* %tas, align 4
  %add219 = add nsw i32 %205, %204
  store i32 %add219, i32* %tas, align 4
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.214, %for.body.3
  br label %for.inc.221

for.inc.221:                                      ; preds = %if.end.220, %if.then.21, %if.then.14, %if.then.10, %if.then.7
  %206 = load %struct.sv*, %struct.sv** %sv, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv, %struct.sv* %206, i32 1
  store %struct.sv* %incdec.ptr, %struct.sv** %sv, align 8
  br label %for.cond.2

for.end.222:                                      ; preds = %for.cond.2
  br label %for.inc.223

for.inc.223:                                      ; preds = %for.end.222
  %207 = load %struct.sv*, %struct.sv** %sva, align 8
  %sv_any224 = getelementptr inbounds %struct.sv, %struct.sv* %207, i32 0, i32 0
  %208 = load i8*, i8** %sv_any224, align 8
  %209 = bitcast i8* %208 to %struct.sv*
  store %struct.sv* %209, %struct.sv** %sva, align 8
  br label %for.cond

for.end.225:                                      ; preds = %for.cond
  %call226 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %210 = load i32, i32* %tref, align 4
  %211 = load i32, i32* %tm, align 4
  %212 = load i32, i32* %ts, align 4
  %213 = load i32, i32* %ta, align 4
  %214 = load i32, i32* %tas, align 4
  %call227 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call226, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i32 0, i32 0), i32 %210, i32 %211, i32 %212, i32 %213, i32 %214)
  %215 = load %struct.sv*, %struct.sv** %ret, align 8
  ret %struct.sv* %215
}

declare %struct.sv* @Perl_newRV_noinc(%struct.sv*) #1

declare %struct.av* @Perl_newAV() #1

declare void @Perl_do_gvgv_dump(i32, %struct._PerlIO**, i8*, %struct.gv*) #1

declare %struct._PerlIO** @Perl_PerlIO_stderr() #1

declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #1

declare i32 @Perl_mg_size(%struct.sv*) #1

declare void @Perl_do_sv_dump(i32, %struct._PerlIO**, %struct.sv*, i32, i32, i8 signext, i64) #1

; Function Attrs: nounwind uwtable
define void @fill_mstats(%struct.sv* %sv, i32 %level) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %level.addr = alloca i32, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0))
  ret void
}

declare void @Perl_croak(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @mstats_fillhash(%struct.sv* %sv, i32 %level) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %level.addr = alloca i32, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @mstats2hash(%struct.sv* %sv, %struct.sv* %rv, i32 %level) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %rv.addr = alloca %struct.sv*, align 8
  %level.addr = alloca i32, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.sv* %rv, %struct.sv** %rv.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_Devel__Peek_mstat(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %str = alloca i8*, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
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
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* %items, align 4
  %cmp7 = icmp sgt i32 %9, 1
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %10 = load i32, i32* %items, align 4
  %cmp9 = icmp slt i32 %10, 1
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i8** %str, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.end
  %11 = load i32, i32* %ax, align 4
  %add12 = add nsw i32 %11, 0
  %idxprom = sext i32 %add12 to i64
  %12 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %12, i64 %idxprom
  %13 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 2
  %14 = load i32, i32* %sv_flags, align 4
  %and = and i32 %14, 262144
  %cmp13 = icmp eq i32 %and, 262144
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %15 = load i32, i32* %ax, align 4
  %add15 = add nsw i32 %15, 0
  %idxprom16 = sext i32 %add15 to i64
  %16 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx17 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i64 %idxprom16
  %17 = load %struct.sv*, %struct.sv** %arrayidx17, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 0
  %18 = load i8*, i8** %sv_any, align 8
  %19 = bitcast i8* %18 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %19, i32 0, i32 0
  %20 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %21 = load i32, i32* %ax, align 4
  %add18 = add nsw i32 %21, 0
  %idxprom19 = sext i32 %add18 to i64
  %22 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx20 = getelementptr inbounds %struct.sv*, %struct.sv** %22, i64 %idxprom19
  %23 = load %struct.sv*, %struct.sv** %arrayidx20, align 8
  %call = call i8* @Perl_sv_2pv_nolen(%struct.sv* %23)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %20, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %str, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %cond.end, %if.then.11
  %call22 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %24 = load i8*, i8** %str, align 8
  %call23 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i32 0, i32 0), i8* %24)
  store i64 0, i64* %tmpXSoff, align 8
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %26 = load i32, i32* %ax, align 4
  %idx.ext24 = sext i32 %26 to i64
  %add.ptr25 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idx.ext24
  %27 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %27, 1
  %add.ptr26 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr25, i64 %sub
  store %struct.sv** %add.ptr26, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @XS_Devel__Peek_fill_mstats(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %level = alloca i32, align 4
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
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
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* %items, align 4
  %cmp7 = icmp sgt i32 %9, 2
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %10 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %10, 0
  %idxprom = sext i32 %add9 to i64
  %11 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %11, i64 %idxprom
  %12 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %12, %struct.sv** %sv, align 8
  %13 = load i32, i32* %items, align 4
  %cmp10 = icmp slt i32 %13, 2
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  store i32 0, i32* %level, align 4
  br label %if.end.23

if.else:                                          ; preds = %if.end
  %14 = load i32, i32* %ax, align 4
  %add13 = add nsw i32 %14, 1
  %idxprom14 = sext i32 %add13 to i64
  %15 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx15 = getelementptr inbounds %struct.sv*, %struct.sv** %15, i64 %idxprom14
  %16 = load %struct.sv*, %struct.sv** %arrayidx15, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags, align 4
  %and = and i32 %17, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %18 = load i32, i32* %ax, align 4
  %add16 = add nsw i32 %18, 1
  %idxprom17 = sext i32 %add16 to i64
  %19 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx18 = getelementptr inbounds %struct.sv*, %struct.sv** %19, i64 %idxprom17
  %20 = load %struct.sv*, %struct.sv** %arrayidx18, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 0
  %21 = load i8*, i8** %sv_any, align 8
  %22 = bitcast i8* %21 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %22, i32 0, i32 3
  %23 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %24 = load i32, i32* %ax, align 4
  %add19 = add nsw i32 %24, 1
  %idxprom20 = sext i32 %add19 to i64
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx21 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idxprom20
  %26 = load %struct.sv*, %struct.sv** %arrayidx21, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %26)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %23, %cond.true ], [ %call, %cond.false ]
  %conv22 = trunc i64 %cond to i32
  store i32 %conv22, i32* %level, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %cond.end, %if.then.12
  %27 = load %struct.sv*, %struct.sv** %sv, align 8
  %28 = load i32, i32* %level, align 4
  call void @fill_mstats(%struct.sv* %27, i32 %28)
  store i64 0, i64* %tmpXSoff, align 8
  %29 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %30 = load i32, i32* %ax, align 4
  %idx.ext24 = sext i32 %30 to i64
  %add.ptr25 = getelementptr inbounds %struct.sv*, %struct.sv** %29, i64 %idx.ext24
  %31 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %31, 1
  %add.ptr26 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr25, i64 %sub
  store %struct.sv** %add.ptr26, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @XS_Devel__Peek_mstats_fillhash(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %level = alloca i32, align 4
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
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
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* %items, align 4
  %cmp7 = icmp sgt i32 %9, 2
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %10 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %10, 0
  %idxprom = sext i32 %add9 to i64
  %11 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %11, i64 %idxprom
  %12 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %12, %struct.sv** %sv, align 8
  %13 = load i32, i32* %items, align 4
  %cmp10 = icmp slt i32 %13, 2
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  store i32 0, i32* %level, align 4
  br label %if.end.23

if.else:                                          ; preds = %if.end
  %14 = load i32, i32* %ax, align 4
  %add13 = add nsw i32 %14, 1
  %idxprom14 = sext i32 %add13 to i64
  %15 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx15 = getelementptr inbounds %struct.sv*, %struct.sv** %15, i64 %idxprom14
  %16 = load %struct.sv*, %struct.sv** %arrayidx15, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags, align 4
  %and = and i32 %17, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %18 = load i32, i32* %ax, align 4
  %add16 = add nsw i32 %18, 1
  %idxprom17 = sext i32 %add16 to i64
  %19 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx18 = getelementptr inbounds %struct.sv*, %struct.sv** %19, i64 %idxprom17
  %20 = load %struct.sv*, %struct.sv** %arrayidx18, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 0
  %21 = load i8*, i8** %sv_any, align 8
  %22 = bitcast i8* %21 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %22, i32 0, i32 3
  %23 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %24 = load i32, i32* %ax, align 4
  %add19 = add nsw i32 %24, 1
  %idxprom20 = sext i32 %add19 to i64
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx21 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idxprom20
  %26 = load %struct.sv*, %struct.sv** %arrayidx21, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %26)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %23, %cond.true ], [ %call, %cond.false ]
  %conv22 = trunc i64 %cond to i32
  store i32 %conv22, i32* %level, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %cond.end, %if.then.12
  %27 = load %struct.sv*, %struct.sv** %sv, align 8
  %28 = load i32, i32* %level, align 4
  call void @mstats_fillhash(%struct.sv* %27, i32 %28)
  store i64 0, i64* %tmpXSoff, align 8
  %29 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %30 = load i32, i32* %ax, align 4
  %idx.ext24 = sext i32 %30 to i64
  %add.ptr25 = getelementptr inbounds %struct.sv*, %struct.sv** %29, i64 %idx.ext24
  %31 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %31, 1
  %add.ptr26 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr25, i64 %sub
  store %struct.sv** %add.ptr26, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_Devel__Peek_mstats2hash(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %rv = alloca %struct.sv*, align 8
  %level = alloca i32, align 4
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
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
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %8, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* %items, align 4
  %cmp7 = icmp sgt i32 %9, 3
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %10 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %10, 0
  %idxprom = sext i32 %add9 to i64
  %11 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %11, i64 %idxprom
  %12 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %12, %struct.sv** %sv, align 8
  %13 = load i32, i32* %ax, align 4
  %add10 = add nsw i32 %13, 1
  %idxprom11 = sext i32 %add10 to i64
  %14 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx12 = getelementptr inbounds %struct.sv*, %struct.sv** %14, i64 %idxprom11
  %15 = load %struct.sv*, %struct.sv** %arrayidx12, align 8
  store %struct.sv* %15, %struct.sv** %rv, align 8
  %16 = load i32, i32* %items, align 4
  %cmp13 = icmp slt i32 %16, 3
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end
  store i32 0, i32* %level, align 4
  br label %if.end.26

if.else:                                          ; preds = %if.end
  %17 = load i32, i32* %ax, align 4
  %add16 = add nsw i32 %17, 2
  %idxprom17 = sext i32 %add16 to i64
  %18 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx18 = getelementptr inbounds %struct.sv*, %struct.sv** %18, i64 %idxprom17
  %19 = load %struct.sv*, %struct.sv** %arrayidx18, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 2
  %20 = load i32, i32* %sv_flags, align 4
  %and = and i32 %20, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %21 = load i32, i32* %ax, align 4
  %add19 = add nsw i32 %21, 2
  %idxprom20 = sext i32 %add19 to i64
  %22 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx21 = getelementptr inbounds %struct.sv*, %struct.sv** %22, i64 %idxprom20
  %23 = load %struct.sv*, %struct.sv** %arrayidx21, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 0
  %24 = load i8*, i8** %sv_any, align 8
  %25 = bitcast i8* %24 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %25, i32 0, i32 3
  %26 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %27 = load i32, i32* %ax, align 4
  %add22 = add nsw i32 %27, 2
  %idxprom23 = sext i32 %add22 to i64
  %28 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx24 = getelementptr inbounds %struct.sv*, %struct.sv** %28, i64 %idxprom23
  %29 = load %struct.sv*, %struct.sv** %arrayidx24, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %29)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %26, %cond.true ], [ %call, %cond.false ]
  %conv25 = trunc i64 %cond to i32
  store i32 %conv25, i32* %level, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %cond.end, %if.then.15
  %30 = load %struct.sv*, %struct.sv** %sv, align 8
  %31 = load %struct.sv*, %struct.sv** %rv, align 8
  %32 = load i32, i32* %level, align 4
  call void @mstats2hash(%struct.sv* %30, %struct.sv* %31, i32 %32)
  store i64 0, i64* %tmpXSoff, align 8
  %33 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %34 = load i32, i32* %ax, align 4
  %idx.ext27 = sext i32 %34 to i64
  %add.ptr28 = getelementptr inbounds %struct.sv*, %struct.sv** %33, i64 %idx.ext27
  %35 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %35, 1
  %add.ptr29 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr28, i64 %sub
  store %struct.sv** %add.ptr29, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_Devel__Peek_Dump(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %lim = alloca i32, align 4
  %pv_lim_sv = alloca %struct.sv*, align 8
  %pv_lim = alloca i64, align 8
  %dumpop = alloca %struct.sv*, align 8
  %save_dumpindent = alloca i32, align 4
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
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
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* %items, align 4
  %cmp7 = icmp sgt i32 %9, 2
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %10 = load i32, i32* %items, align 4
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext9 = sext i32 %10 to i64
  %idx.neg = sub i64 0, %idx.ext9
  %add.ptr10 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i64 %idx.neg
  store %struct.sv** %add.ptr10, %struct.sv*** %sp, align 8
  %12 = load i32, i32* %ax, align 4
  %add11 = add nsw i32 %12, 0
  %idxprom = sext i32 %add11 to i64
  %13 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %13, i64 %idxprom
  %14 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %14, %struct.sv** %sv, align 8
  %15 = load i32, i32* %items, align 4
  %cmp12 = icmp slt i32 %15, 2
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end
  store i32 4, i32* %lim, align 4
  br label %if.end.25

if.else:                                          ; preds = %if.end
  %16 = load i32, i32* %ax, align 4
  %add15 = add nsw i32 %16, 1
  %idxprom16 = sext i32 %add15 to i64
  %17 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx17 = getelementptr inbounds %struct.sv*, %struct.sv** %17, i64 %idxprom16
  %18 = load %struct.sv*, %struct.sv** %arrayidx17, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 2
  %19 = load i32, i32* %sv_flags, align 4
  %and = and i32 %19, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %20 = load i32, i32* %ax, align 4
  %add18 = add nsw i32 %20, 1
  %idxprom19 = sext i32 %add18 to i64
  %21 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx20 = getelementptr inbounds %struct.sv*, %struct.sv** %21, i64 %idxprom19
  %22 = load %struct.sv*, %struct.sv** %arrayidx20, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 0
  %23 = load i8*, i8** %sv_any, align 8
  %24 = bitcast i8* %23 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %24, i32 0, i32 3
  %25 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %26 = load i32, i32* %ax, align 4
  %add21 = add nsw i32 %26, 1
  %idxprom22 = sext i32 %add21 to i64
  %27 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx23 = getelementptr inbounds %struct.sv*, %struct.sv** %27, i64 %idxprom22
  %28 = load %struct.sv*, %struct.sv** %arrayidx23, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %28)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %25, %cond.true ], [ %call, %cond.false ]
  %conv24 = trunc i64 %cond to i32
  store i32 %conv24, i32* %lim, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end, %if.then.14
  %call26 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i32 0)
  store %struct.sv* %call26, %struct.sv** %pv_lim_sv, align 8
  %29 = load %struct.sv*, %struct.sv** %pv_lim_sv, align 8
  %tobool27 = icmp ne %struct.sv* %29, null
  br i1 %tobool27, label %cond.true.28, label %cond.false.39

cond.true.28:                                     ; preds = %if.end.25
  %30 = load %struct.sv*, %struct.sv** %pv_lim_sv, align 8
  %sv_flags29 = getelementptr inbounds %struct.sv, %struct.sv* %30, i32 0, i32 2
  %31 = load i32, i32* %sv_flags29, align 4
  %and30 = and i32 %31, 65536
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %cond.true.32, label %cond.false.35

cond.true.32:                                     ; preds = %cond.true.28
  %32 = load %struct.sv*, %struct.sv** %pv_lim_sv, align 8
  %sv_any33 = getelementptr inbounds %struct.sv, %struct.sv* %32, i32 0, i32 0
  %33 = load i8*, i8** %sv_any33, align 8
  %34 = bitcast i8* %33 to %struct.xpviv*
  %xiv_iv34 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %34, i32 0, i32 3
  %35 = load i64, i64* %xiv_iv34, align 8
  br label %cond.end.37

cond.false.35:                                    ; preds = %cond.true.28
  %36 = load %struct.sv*, %struct.sv** %pv_lim_sv, align 8
  %call36 = call i64 @Perl_sv_2iv(%struct.sv* %36)
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.35, %cond.true.32
  %cond38 = phi i64 [ %35, %cond.true.32 ], [ %call36, %cond.false.35 ]
  br label %cond.end.40

cond.false.39:                                    ; preds = %if.end.25
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.end.37
  %cond41 = phi i64 [ %cond38, %cond.end.37 ], [ 0, %cond.false.39 ]
  store i64 %cond41, i64* %pv_lim, align 8
  %call42 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 0)
  store %struct.sv* %call42, %struct.sv** %dumpop, align 8
  %37 = load i32, i32* @PL_dumpindent, align 4
  store i32 %37, i32* %save_dumpindent, align 4
  store i32 2, i32* @PL_dumpindent, align 4
  %call43 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %38 = load %struct.sv*, %struct.sv** %sv, align 8
  %39 = load i32, i32* %lim, align 4
  %40 = load %struct.sv*, %struct.sv** %dumpop, align 8
  %tobool44 = icmp ne %struct.sv* %40, null
  br i1 %tobool44, label %land.rhs, label %land.end.94

land.rhs:                                         ; preds = %cond.end.40
  %41 = load %struct.sv*, %struct.sv** %dumpop, align 8
  %tobool45 = icmp ne %struct.sv* %41, null
  br i1 %tobool45, label %cond.false.47, label %cond.true.46

cond.true.46:                                     ; preds = %land.rhs
  br label %cond.end.91

cond.false.47:                                    ; preds = %land.rhs
  %42 = load %struct.sv*, %struct.sv** %dumpop, align 8
  %sv_flags48 = getelementptr inbounds %struct.sv, %struct.sv* %42, i32 0, i32 2
  %43 = load i32, i32* %sv_flags48, align 4
  %and49 = and i32 %43, 262144
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %cond.true.51, label %cond.false.65

cond.true.51:                                     ; preds = %cond.false.47
  %44 = load %struct.sv*, %struct.sv** %dumpop, align 8
  %sv_any52 = getelementptr inbounds %struct.sv, %struct.sv* %44, i32 0, i32 0
  %45 = load i8*, i8** %sv_any52, align 8
  %46 = bitcast i8* %45 to %struct.xpv*
  store %struct.xpv* %46, %struct.xpv** @PL_Xpv, align 8
  %tobool53 = icmp ne %struct.xpv* %46, null
  br i1 %tobool53, label %land.rhs.54, label %land.end.63

land.rhs.54:                                      ; preds = %cond.true.51
  %47 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %47, i32 0, i32 1
  %48 = load i64, i64* %xpv_cur, align 8
  %cmp55 = icmp ugt i64 %48, 1
  br i1 %cmp55, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.54
  %49 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur57 = getelementptr inbounds %struct.xpv, %struct.xpv* %49, i32 0, i32 1
  %50 = load i64, i64* %xpv_cur57, align 8
  %tobool58 = icmp ne i64 %50, 0
  br i1 %tobool58, label %land.rhs.59, label %land.end

land.rhs.59:                                      ; preds = %lor.rhs
  %51 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %51, i32 0, i32 0
  %52 = load i8*, i8** %xpv_pv, align 8
  %53 = load i8, i8* %52, align 1
  %conv60 = sext i8 %53 to i32
  %cmp61 = icmp ne i32 %conv60, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs.59, %lor.rhs
  %54 = phi i1 [ false, %lor.rhs ], [ %cmp61, %land.rhs.59 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs.54
  %55 = phi i1 [ true, %land.rhs.54 ], [ %54, %land.end ]
  br label %land.end.63

land.end.63:                                      ; preds = %lor.end, %cond.true.51
  %56 = phi i1 [ false, %cond.true.51 ], [ %55, %lor.end ]
  %cond64 = select i1 %56, i32 1, i32 0
  br label %cond.end.89

cond.false.65:                                    ; preds = %cond.false.47
  %57 = load %struct.sv*, %struct.sv** %dumpop, align 8
  %sv_flags66 = getelementptr inbounds %struct.sv, %struct.sv* %57, i32 0, i32 2
  %58 = load i32, i32* %sv_flags66, align 4
  %and67 = and i32 %58, 65536
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %cond.true.69, label %cond.false.74

cond.true.69:                                     ; preds = %cond.false.65
  %59 = load %struct.sv*, %struct.sv** %dumpop, align 8
  %sv_any70 = getelementptr inbounds %struct.sv, %struct.sv* %59, i32 0, i32 0
  %60 = load i8*, i8** %sv_any70, align 8
  %61 = bitcast i8* %60 to %struct.xpviv*
  %xiv_iv71 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %61, i32 0, i32 3
  %62 = load i64, i64* %xiv_iv71, align 8
  %cmp72 = icmp ne i64 %62, 0
  %conv73 = zext i1 %cmp72 to i32
  br label %cond.end.87

cond.false.74:                                    ; preds = %cond.false.65
  %63 = load %struct.sv*, %struct.sv** %dumpop, align 8
  %sv_flags75 = getelementptr inbounds %struct.sv, %struct.sv* %63, i32 0, i32 2
  %64 = load i32, i32* %sv_flags75, align 4
  %and76 = and i32 %64, 131072
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %cond.true.78, label %cond.false.82

cond.true.78:                                     ; preds = %cond.false.74
  %65 = load %struct.sv*, %struct.sv** %dumpop, align 8
  %sv_any79 = getelementptr inbounds %struct.sv, %struct.sv* %65, i32 0, i32 0
  %66 = load i8*, i8** %sv_any79, align 8
  %67 = bitcast i8* %66 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %67, i32 0, i32 4
  %68 = load double, double* %xnv_nv, align 8
  %cmp80 = fcmp une double %68, 0.000000e+00
  %conv81 = zext i1 %cmp80 to i32
  br label %cond.end.85

cond.false.82:                                    ; preds = %cond.false.74
  %69 = load %struct.sv*, %struct.sv** %dumpop, align 8
  %call83 = call signext i8 @Perl_sv_2bool(%struct.sv* %69)
  %conv84 = sext i8 %call83 to i32
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.82, %cond.true.78
  %cond86 = phi i32 [ %conv81, %cond.true.78 ], [ %conv84, %cond.false.82 ]
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.end.85, %cond.true.69
  %cond88 = phi i32 [ %conv73, %cond.true.69 ], [ %cond86, %cond.end.85 ]
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.end.87, %land.end.63
  %cond90 = phi i32 [ %cond64, %land.end.63 ], [ %cond88, %cond.end.87 ]
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.end.89, %cond.true.46
  %cond92 = phi i32 [ 0, %cond.true.46 ], [ %cond90, %cond.end.89 ]
  %tobool93 = icmp ne i32 %cond92, 0
  br label %land.end.94

land.end.94:                                      ; preds = %cond.end.91, %cond.end.40
  %70 = phi i1 [ false, %cond.end.40 ], [ %tobool93, %cond.end.91 ]
  %land.ext = zext i1 %70 to i32
  %conv95 = trunc i32 %land.ext to i8
  %71 = load i64, i64* %pv_lim, align 8
  call void @Perl_do_sv_dump(i32 0, %struct._PerlIO** %call43, %struct.sv* %38, i32 0, i32 %39, i8 signext %conv95, i64 %71)
  %72 = load i32, i32* %save_dumpindent, align 4
  store i32 %72, i32* @PL_dumpindent, align 4
  %73 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %73, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare %struct.sv* @Perl_get_sv(i8*, i32) #1

declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @XS_Devel__Peek_DumpArray(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %lim = alloca i32, align 4
  %i = alloca i64, align 8
  %pv_lim_sv = alloca %struct.sv*, align 8
  %pv_lim = alloca i64, align 8
  %dumpop = alloca %struct.sv*, align 8
  %save_dumpindent = alloca i32, align 4
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
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
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %items, align 4
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext7 = sext i32 %9 to i64
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idx.neg
  store %struct.sv** %add.ptr8, %struct.sv*** %sp, align 8
  %11 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %11, 0
  %idxprom = sext i32 %add9 to i64
  %12 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %12, i64 %idxprom
  %13 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 2
  %14 = load i32, i32* %sv_flags, align 4
  %and = and i32 %14, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %15 = load i32, i32* %ax, align 4
  %add10 = add nsw i32 %15, 0
  %idxprom11 = sext i32 %add10 to i64
  %16 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx12 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i64 %idxprom11
  %17 = load %struct.sv*, %struct.sv** %arrayidx12, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 0
  %18 = load i8*, i8** %sv_any, align 8
  %19 = bitcast i8* %18 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %19, i32 0, i32 3
  %20 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %21 = load i32, i32* %ax, align 4
  %add13 = add nsw i32 %21, 0
  %idxprom14 = sext i32 %add13 to i64
  %22 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx15 = getelementptr inbounds %struct.sv*, %struct.sv** %22, i64 %idxprom14
  %23 = load %struct.sv*, %struct.sv** %arrayidx15, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %23)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %20, %cond.true ], [ %call, %cond.false ]
  %conv16 = trunc i64 %cond to i32
  store i32 %conv16, i32* %lim, align 4
  %call17 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i32 0)
  store %struct.sv* %call17, %struct.sv** %pv_lim_sv, align 8
  %24 = load %struct.sv*, %struct.sv** %pv_lim_sv, align 8
  %tobool18 = icmp ne %struct.sv* %24, null
  br i1 %tobool18, label %cond.true.19, label %cond.false.30

cond.true.19:                                     ; preds = %cond.end
  %25 = load %struct.sv*, %struct.sv** %pv_lim_sv, align 8
  %sv_flags20 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 2
  %26 = load i32, i32* %sv_flags20, align 4
  %and21 = and i32 %26, 65536
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %cond.true.23, label %cond.false.26

cond.true.23:                                     ; preds = %cond.true.19
  %27 = load %struct.sv*, %struct.sv** %pv_lim_sv, align 8
  %sv_any24 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 0
  %28 = load i8*, i8** %sv_any24, align 8
  %29 = bitcast i8* %28 to %struct.xpviv*
  %xiv_iv25 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %29, i32 0, i32 3
  %30 = load i64, i64* %xiv_iv25, align 8
  br label %cond.end.28

cond.false.26:                                    ; preds = %cond.true.19
  %31 = load %struct.sv*, %struct.sv** %pv_lim_sv, align 8
  %call27 = call i64 @Perl_sv_2iv(%struct.sv* %31)
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.26, %cond.true.23
  %cond29 = phi i64 [ %30, %cond.true.23 ], [ %call27, %cond.false.26 ]
  br label %cond.end.31

cond.false.30:                                    ; preds = %cond.end
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.end.28
  %cond32 = phi i64 [ %cond29, %cond.end.28 ], [ 0, %cond.false.30 ]
  store i64 %cond32, i64* %pv_lim, align 8
  %call33 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 0)
  store %struct.sv* %call33, %struct.sv** %dumpop, align 8
  %32 = load i32, i32* @PL_dumpindent, align 4
  store i32 %32, i32* %save_dumpindent, align 4
  store i32 2, i32* @PL_dumpindent, align 4
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.31
  %33 = load i64, i64* %i, align 8
  %34 = load i32, i32* %items, align 4
  %conv34 = sext i32 %34 to i64
  %cmp35 = icmp slt i64 %33, %conv34
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call37 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %35 = load i64, i64* %i, align 8
  %sub = sub nsw i64 %35, 1
  %36 = load i32, i32* %ax, align 4
  %conv38 = sext i32 %36 to i64
  %37 = load i64, i64* %i, align 8
  %add39 = add nsw i64 %conv38, %37
  %38 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx40 = getelementptr inbounds %struct.sv*, %struct.sv** %38, i64 %add39
  %39 = load %struct.sv*, %struct.sv** %arrayidx40, align 8
  %40 = ptrtoint %struct.sv* %39 to i64
  %call41 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i64 %sub, i64 %40)
  %call42 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %41 = load i32, i32* %ax, align 4
  %conv43 = sext i32 %41 to i64
  %42 = load i64, i64* %i, align 8
  %add44 = add nsw i64 %conv43, %42
  %43 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx45 = getelementptr inbounds %struct.sv*, %struct.sv** %43, i64 %add44
  %44 = load %struct.sv*, %struct.sv** %arrayidx45, align 8
  %45 = load i32, i32* %lim, align 4
  %46 = load %struct.sv*, %struct.sv** %dumpop, align 8
  %tobool46 = icmp ne %struct.sv* %46, null
  br i1 %tobool46, label %land.rhs, label %land.end.96

land.rhs:                                         ; preds = %for.body
  %47 = load %struct.sv*, %struct.sv** %dumpop, align 8
  %tobool47 = icmp ne %struct.sv* %47, null
  br i1 %tobool47, label %cond.false.49, label %cond.true.48

cond.true.48:                                     ; preds = %land.rhs
  br label %cond.end.93

cond.false.49:                                    ; preds = %land.rhs
  %48 = load %struct.sv*, %struct.sv** %dumpop, align 8
  %sv_flags50 = getelementptr inbounds %struct.sv, %struct.sv* %48, i32 0, i32 2
  %49 = load i32, i32* %sv_flags50, align 4
  %and51 = and i32 %49, 262144
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %cond.true.53, label %cond.false.67

cond.true.53:                                     ; preds = %cond.false.49
  %50 = load %struct.sv*, %struct.sv** %dumpop, align 8
  %sv_any54 = getelementptr inbounds %struct.sv, %struct.sv* %50, i32 0, i32 0
  %51 = load i8*, i8** %sv_any54, align 8
  %52 = bitcast i8* %51 to %struct.xpv*
  store %struct.xpv* %52, %struct.xpv** @PL_Xpv, align 8
  %tobool55 = icmp ne %struct.xpv* %52, null
  br i1 %tobool55, label %land.rhs.56, label %land.end.65

land.rhs.56:                                      ; preds = %cond.true.53
  %53 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %53, i32 0, i32 1
  %54 = load i64, i64* %xpv_cur, align 8
  %cmp57 = icmp ugt i64 %54, 1
  br i1 %cmp57, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.56
  %55 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur59 = getelementptr inbounds %struct.xpv, %struct.xpv* %55, i32 0, i32 1
  %56 = load i64, i64* %xpv_cur59, align 8
  %tobool60 = icmp ne i64 %56, 0
  br i1 %tobool60, label %land.rhs.61, label %land.end

land.rhs.61:                                      ; preds = %lor.rhs
  %57 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %57, i32 0, i32 0
  %58 = load i8*, i8** %xpv_pv, align 8
  %59 = load i8, i8* %58, align 1
  %conv62 = sext i8 %59 to i32
  %cmp63 = icmp ne i32 %conv62, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs.61, %lor.rhs
  %60 = phi i1 [ false, %lor.rhs ], [ %cmp63, %land.rhs.61 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs.56
  %61 = phi i1 [ true, %land.rhs.56 ], [ %60, %land.end ]
  br label %land.end.65

land.end.65:                                      ; preds = %lor.end, %cond.true.53
  %62 = phi i1 [ false, %cond.true.53 ], [ %61, %lor.end ]
  %cond66 = select i1 %62, i32 1, i32 0
  br label %cond.end.91

cond.false.67:                                    ; preds = %cond.false.49
  %63 = load %struct.sv*, %struct.sv** %dumpop, align 8
  %sv_flags68 = getelementptr inbounds %struct.sv, %struct.sv* %63, i32 0, i32 2
  %64 = load i32, i32* %sv_flags68, align 4
  %and69 = and i32 %64, 65536
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %cond.true.71, label %cond.false.76

cond.true.71:                                     ; preds = %cond.false.67
  %65 = load %struct.sv*, %struct.sv** %dumpop, align 8
  %sv_any72 = getelementptr inbounds %struct.sv, %struct.sv* %65, i32 0, i32 0
  %66 = load i8*, i8** %sv_any72, align 8
  %67 = bitcast i8* %66 to %struct.xpviv*
  %xiv_iv73 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %67, i32 0, i32 3
  %68 = load i64, i64* %xiv_iv73, align 8
  %cmp74 = icmp ne i64 %68, 0
  %conv75 = zext i1 %cmp74 to i32
  br label %cond.end.89

cond.false.76:                                    ; preds = %cond.false.67
  %69 = load %struct.sv*, %struct.sv** %dumpop, align 8
  %sv_flags77 = getelementptr inbounds %struct.sv, %struct.sv* %69, i32 0, i32 2
  %70 = load i32, i32* %sv_flags77, align 4
  %and78 = and i32 %70, 131072
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %cond.true.80, label %cond.false.84

cond.true.80:                                     ; preds = %cond.false.76
  %71 = load %struct.sv*, %struct.sv** %dumpop, align 8
  %sv_any81 = getelementptr inbounds %struct.sv, %struct.sv* %71, i32 0, i32 0
  %72 = load i8*, i8** %sv_any81, align 8
  %73 = bitcast i8* %72 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %73, i32 0, i32 4
  %74 = load double, double* %xnv_nv, align 8
  %cmp82 = fcmp une double %74, 0.000000e+00
  %conv83 = zext i1 %cmp82 to i32
  br label %cond.end.87

cond.false.84:                                    ; preds = %cond.false.76
  %75 = load %struct.sv*, %struct.sv** %dumpop, align 8
  %call85 = call signext i8 @Perl_sv_2bool(%struct.sv* %75)
  %conv86 = sext i8 %call85 to i32
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.84, %cond.true.80
  %cond88 = phi i32 [ %conv83, %cond.true.80 ], [ %conv86, %cond.false.84 ]
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.end.87, %cond.true.71
  %cond90 = phi i32 [ %conv75, %cond.true.71 ], [ %cond88, %cond.end.87 ]
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.end.89, %land.end.65
  %cond92 = phi i32 [ %cond66, %land.end.65 ], [ %cond90, %cond.end.89 ]
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.end.91, %cond.true.48
  %cond94 = phi i32 [ 0, %cond.true.48 ], [ %cond92, %cond.end.91 ]
  %tobool95 = icmp ne i32 %cond94, 0
  br label %land.end.96

land.end.96:                                      ; preds = %cond.end.93, %for.body
  %76 = phi i1 [ false, %for.body ], [ %tobool95, %cond.end.93 ]
  %land.ext = zext i1 %76 to i32
  %conv97 = trunc i32 %land.ext to i8
  %77 = load i64, i64* %pv_lim, align 8
  call void @Perl_do_sv_dump(i32 0, %struct._PerlIO** %call42, %struct.sv* %44, i32 0, i32 %45, i8 signext %conv97, i64 %77)
  br label %for.inc

for.inc:                                          ; preds = %land.end.96
  %78 = load i64, i64* %i, align 8
  %inc = add nsw i64 %78, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %79 = load i32, i32* %save_dumpindent, align 4
  store i32 %79, i32* @PL_dumpindent, align 4
  %80 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %80, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_Devel__Peek_DumpProg(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
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
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %items, align 4
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext7 = sext i32 %9 to i64
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idx.neg
  store %struct.sv** %add.ptr8, %struct.sv*** %sp, align 8
  %11 = load i32, i32* @PL_dumpindent, align 4
  call void (i8*, ...) @Perl_warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 %11)
  %12 = load %struct.op*, %struct.op** @PL_main_root, align 8
  %tobool = icmp ne %struct.op* %12, null
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %13 = load %struct.op*, %struct.op** @PL_main_root, align 8
  call void @Perl_op_dump(%struct.op* %13)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %14 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %14, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare void @Perl_warn(i8*, ...) #1

declare void @Perl_op_dump(%struct.op*) #1

; Function Attrs: nounwind uwtable
define void @XS_Devel__Peek_SvREFCNT(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %RETVAL = alloca i32, align 4
  %targ = alloca %struct.sv*, align 8
  %tmp = alloca %struct.sv*, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
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
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %11, %struct.sv** %sv, align 8
  %12 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %12, i32 0, i32 7
  %13 = load i8, i8* %op_private, align 1
  %conv8 = zext i8 %13 to i32
  %and = and i32 %conv8, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %14, i32 0, i32 3
  %15 = load i64, i64* %op_targ, align 8
  %16 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx9 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i64 %15
  %17 = load %struct.sv*, %struct.sv** %arrayidx9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call %struct.sv* @Perl_sv_newmortal()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %17, %cond.true ], [ %call, %cond.false ]
  store %struct.sv* %cond, %struct.sv** %targ, align 8
  %18 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 1
  %19 = load i32, i32* %sv_refcnt, align 4
  store i32 %19, i32* %RETVAL, align 4
  %20 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %21 = load i32, i32* %ax, align 4
  %idx.ext10 = sext i32 %21 to i64
  %add.ptr11 = getelementptr inbounds %struct.sv*, %struct.sv** %20, i64 %idx.ext10
  %add.ptr12 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr11, i64 -1
  store %struct.sv** %add.ptr12, %struct.sv*** %sp, align 8
  %22 = load %struct.sv*, %struct.sv** %targ, align 8
  %23 = load i32, i32* %RETVAL, align 4
  %conv13 = sext i32 %23 to i64
  call void @Perl_sv_setiv(%struct.sv* %22, i64 %conv13)
  %24 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %24, i32 0, i32 2
  %25 = load i32, i32* %sv_flags, align 4
  %and14 = and i32 %25, 16384
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %cond.end
  %26 = load %struct.sv*, %struct.sv** %targ, align 8
  %call17 = call i32 @Perl_mg_set(%struct.sv* %26)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %cond.end
  %27 = load %struct.sv*, %struct.sv** %targ, align 8
  %28 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr19 = getelementptr inbounds %struct.sv*, %struct.sv** %28, i32 1
  store %struct.sv** %incdec.ptr19, %struct.sv*** %sp, align 8
  store %struct.sv* %27, %struct.sv** %incdec.ptr19, align 8
  store %struct.sv* %27, %struct.sv** %tmp
  %29 = load %struct.sv*, %struct.sv** %tmp
  store i64 1, i64* %tmpXSoff, align 8
  %30 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %31 = load i32, i32* %ax, align 4
  %idx.ext21 = sext i32 %31 to i64
  %add.ptr22 = getelementptr inbounds %struct.sv*, %struct.sv** %30, i64 %idx.ext21
  %32 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %32, 1
  %add.ptr23 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr22, i64 %sub
  store %struct.sv** %add.ptr23, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare %struct.sv* @Perl_sv_newmortal() #1

declare void @Perl_sv_setiv(%struct.sv*, i64) #1

declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @XS_Devel__Peek_SvREFCNT_inc(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %RETVAL = alloca %struct.sv*, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
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
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %items, align 4
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext7 = sext i32 %9 to i64
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idx.neg
  store %struct.sv** %add.ptr8, %struct.sv*** %sp, align 8
  %11 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %11, 0
  %idxprom = sext i32 %add9 to i64
  %12 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %12, i64 %idxprom
  %13 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %13, %struct.sv** %sv, align 8
  %14 = load %struct.sv*, %struct.sv** %sv, align 8
  store %struct.sv* %14, %struct.sv** @PL_Sv, align 8
  %15 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool = icmp ne %struct.sv* %15, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %16 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 1
  %17 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool10 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %18 = phi i1 [ false, %if.end ], [ %tobool10, %land.rhs ]
  %land.ext = zext i1 %18 to i32
  %19 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  store %struct.sv* %19, %struct.sv** %RETVAL, align 8
  %20 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %21 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr11 = getelementptr inbounds %struct.sv*, %struct.sv** %21, i32 1
  store %struct.sv** %incdec.ptr11, %struct.sv*** %sp, align 8
  store %struct.sv* %20, %struct.sv** %incdec.ptr11, align 8
  %22 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %22, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_Devel__Peek_SvREFCNT_dec(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
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
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %items, align 4
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext7 = sext i32 %9 to i64
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idx.neg
  store %struct.sv** %add.ptr8, %struct.sv*** %sp, align 8
  %11 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %11, 0
  %idxprom = sext i32 %add9 to i64
  %12 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %12, i64 %idxprom
  %13 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %13, %struct.sv** %sv, align 8
  %14 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_free(%struct.sv* %14)
  %15 = load %struct.sv*, %struct.sv** %sv, align 8
  %16 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr10 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i32 1
  store %struct.sv** %incdec.ptr10, %struct.sv*** %sp, align 8
  store %struct.sv* %15, %struct.sv** %incdec.ptr10, align 8
  %17 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %17, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @XS_Devel__Peek_DeadCode(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %RETVAL = alloca %struct.sv*, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
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
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call %struct.sv* @DeadCode()
  store %struct.sv* %call, %struct.sv** %RETVAL, align 8
  %9 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %10 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %10, 0
  %idxprom = sext i32 %add7 to i64
  %11 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %11, i64 %idxprom
  store %struct.sv* %9, %struct.sv** %arrayidx, align 8
  %12 = load i32, i32* %ax, align 4
  %add8 = add nsw i32 %12, 0
  %idxprom9 = sext i32 %add8 to i64
  %13 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx10 = getelementptr inbounds %struct.sv*, %struct.sv** %13, i64 %idxprom9
  %14 = load %struct.sv*, %struct.sv** %arrayidx10, align 8
  %call11 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %14)
  store i64 1, i64* %tmpXSoff, align 8
  %15 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %16 = load i32, i32* %ax, align 4
  %idx.ext12 = sext i32 %16 to i64
  %add.ptr13 = getelementptr inbounds %struct.sv*, %struct.sv** %15, i64 %idx.ext12
  %17 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %17, 1
  %add.ptr14 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr13, i64 %sub
  store %struct.sv** %add.ptr14, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @XS_Devel__Peek_CvGV(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %cv7 = alloca %struct.sv*, align 8
  %RETVAL = alloca %struct.sv*, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
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
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add8 = add nsw i32 %9, 0
  %idxprom = sext i32 %add8 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %11, %struct.sv** %cv7, align 8
  %12 = load %struct.sv*, %struct.sv** %cv7, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 2
  %13 = load i32, i32* %sv_flags, align 4
  %and = and i32 %13, 524288
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %14 = load %struct.sv*, %struct.sv** %cv7, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any, align 8
  %16 = bitcast i8* %15 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %16, i32 0, i32 0
  %17 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_flags9 = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 2
  %18 = load i32, i32* %sv_flags9, align 4
  %and10 = and i32 %18, 255
  %cmp11 = icmp eq i32 %and10, 12
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %19 = load %struct.sv*, %struct.sv** %cv7, align 8
  %sv_any13 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 0
  %20 = load i8*, i8** %sv_any13, align 8
  %21 = bitcast i8* %20 to %struct.xrv*
  %xrv_rv14 = getelementptr inbounds %struct.xrv, %struct.xrv* %21, i32 0, i32 0
  %22 = load %struct.sv*, %struct.sv** %xrv_rv14, align 8
  %23 = bitcast %struct.sv* %22 to %struct.cv*
  %sv_any15 = getelementptr inbounds %struct.cv, %struct.cv* %23, i32 0, i32 0
  %24 = load %struct.xpvcv*, %struct.xpvcv** %sv_any15, align 8
  %xcv_gv = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %24, i32 0, i32 12
  %25 = load %struct.gv*, %struct.gv** %xcv_gv, align 8
  %26 = bitcast %struct.gv* %25 to %struct.sv*
  store %struct.sv* %26, %struct.sv** @PL_Sv, align 8
  %27 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool16 = icmp ne %struct.sv* %27, null
  br i1 %tobool16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.true
  %28 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %28, i32 0, i32 1
  %29 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %29, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool17 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.true
  %30 = phi i1 [ false, %cond.true ], [ %tobool17, %land.rhs ]
  %land.ext = zext i1 %30 to i32
  %31 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.end
  %cond = phi %struct.sv* [ %31, %land.end ], [ @PL_sv_undef, %cond.false ]
  store %struct.sv* %cond, %struct.sv** %RETVAL, align 8
  %32 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %33 = load i32, i32* %ax, align 4
  %add18 = add nsw i32 %33, 0
  %idxprom19 = sext i32 %add18 to i64
  %34 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx20 = getelementptr inbounds %struct.sv*, %struct.sv** %34, i64 %idxprom19
  store %struct.sv* %32, %struct.sv** %arrayidx20, align 8
  %35 = load i32, i32* %ax, align 4
  %add21 = add nsw i32 %35, 0
  %idxprom22 = sext i32 %add21 to i64
  %36 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx23 = getelementptr inbounds %struct.sv*, %struct.sv** %36, i64 %idxprom22
  %37 = load %struct.sv*, %struct.sv** %arrayidx23, align 8
  %call = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %37)
  store i64 1, i64* %tmpXSoff, align 8
  %38 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %39 = load i32, i32* %ax, align 4
  %idx.ext24 = sext i32 %39 to i64
  %add.ptr25 = getelementptr inbounds %struct.sv*, %struct.sv** %38, i64 %idx.ext24
  %40 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %40, 1
  %add.ptr26 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr25, i64 %sub
  store %struct.sv** %add.ptr26, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_Devel__Peek_runops_debug(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %RETVAL = alloca i8, align 1
  %flag = alloca i32, align 4
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
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
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* %items, align 4
  %cmp7 = icmp sgt i32 %9, 1
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %10 = load i32, i32* %items, align 4
  %cmp9 = icmp slt i32 %10, 1
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  store i32 -1, i32* %flag, align 4
  br label %if.end.20

if.else:                                          ; preds = %if.end
  %11 = load i32, i32* %ax, align 4
  %add12 = add nsw i32 %11, 0
  %idxprom = sext i32 %add12 to i64
  %12 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %12, i64 %idxprom
  %13 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 2
  %14 = load i32, i32* %sv_flags, align 4
  %and = and i32 %14, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %15 = load i32, i32* %ax, align 4
  %add13 = add nsw i32 %15, 0
  %idxprom14 = sext i32 %add13 to i64
  %16 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx15 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i64 %idxprom14
  %17 = load %struct.sv*, %struct.sv** %arrayidx15, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 0
  %18 = load i8*, i8** %sv_any, align 8
  %19 = bitcast i8* %18 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %19, i32 0, i32 3
  %20 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %21 = load i32, i32* %ax, align 4
  %add16 = add nsw i32 %21, 0
  %idxprom17 = sext i32 %add16 to i64
  %22 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx18 = getelementptr inbounds %struct.sv*, %struct.sv** %22, i64 %idxprom17
  %23 = load %struct.sv*, %struct.sv** %arrayidx18, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %23)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %20, %cond.true ], [ %call, %cond.false ]
  %conv19 = trunc i64 %cond to i32
  store i32 %conv19, i32* %flag, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %cond.end, %if.then.11
  %24 = load i32, i32* %flag, align 4
  %call21 = call signext i8 @_runops_debug(i32 %24)
  store i8 %call21, i8* %RETVAL, align 1
  %25 = load i8, i8* %RETVAL, align 1
  %conv22 = sext i8 %25 to i32
  %tobool23 = icmp ne i32 %conv22, 0
  %cond24 = select i1 %tobool23, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  %26 = load i32, i32* %ax, align 4
  %add25 = add nsw i32 %26, 0
  %idxprom26 = sext i32 %add25 to i64
  %27 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx27 = getelementptr inbounds %struct.sv*, %struct.sv** %27, i64 %idxprom26
  store %struct.sv* %cond24, %struct.sv** %arrayidx27, align 8
  %28 = load i32, i32* %ax, align 4
  %add28 = add nsw i32 %28, 0
  %idxprom29 = sext i32 %add28 to i64
  %29 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx30 = getelementptr inbounds %struct.sv*, %struct.sv** %29, i64 %idxprom29
  %30 = load %struct.sv*, %struct.sv** %arrayidx30, align 8
  %call31 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %30)
  store i64 1, i64* %tmpXSoff, align 8
  %31 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %32 = load i32, i32* %ax, align 4
  %idx.ext32 = sext i32 %32 to i64
  %add.ptr33 = getelementptr inbounds %struct.sv*, %struct.sv** %31, i64 %idx.ext32
  %33 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %33, 1
  %add.ptr34 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr33, i64 %sub
  store %struct.sv** %add.ptr34, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @boot_Devel__Peek(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %file = alloca i8*, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
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
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8** %file, align 8
  %8 = load i8*, i8** %file, align 8
  %call = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0), void (%struct.cv*)* @XS_Devel__Peek_mstat, i8* %8)
  %9 = load i8*, i8** %file, align 8
  %call6 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0), void (%struct.cv*)* @XS_Devel__Peek_fill_mstats, i8* %9)
  %10 = load i8*, i8** %file, align 8
  %call7 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0), void (%struct.cv*)* @XS_Devel__Peek_mstats_fillhash, i8* %10)
  %11 = bitcast %struct.cv* %call7 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0))
  %12 = load i8*, i8** %file, align 8
  %call8 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0), void (%struct.cv*)* @XS_Devel__Peek_mstats2hash, i8* %12)
  %13 = bitcast %struct.cv* %call8 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0))
  %14 = load i8*, i8** %file, align 8
  %call9 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), void (%struct.cv*)* @XS_Devel__Peek_Dump, i8* %14)
  %15 = load i8*, i8** %file, align 8
  %call10 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0), void (%struct.cv*)* @XS_Devel__Peek_DumpArray, i8* %15)
  %16 = load i8*, i8** %file, align 8
  %call11 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), void (%struct.cv*)* @XS_Devel__Peek_DumpProg, i8* %16)
  %17 = load i8*, i8** %file, align 8
  %call12 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i32 0, i32 0), void (%struct.cv*)* @XS_Devel__Peek_SvREFCNT, i8* %17)
  %18 = load i8*, i8** %file, align 8
  %call13 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0), void (%struct.cv*)* @XS_Devel__Peek_SvREFCNT_inc, i8* %18)
  %19 = load i8*, i8** %file, align 8
  %call14 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0), void (%struct.cv*)* @XS_Devel__Peek_SvREFCNT_dec, i8* %19)
  %20 = load i8*, i8** %file, align 8
  %call15 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0), void (%struct.cv*)* @XS_Devel__Peek_DeadCode, i8* %20)
  %21 = load i8*, i8** %file, align 8
  %call16 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), void (%struct.cv*)* @XS_Devel__Peek_CvGV, i8* %21)
  %22 = load i8*, i8** %file, align 8
  %call17 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0), void (%struct.cv*)* @XS_Devel__Peek_runops_debug, i8* %22)
  %23 = load i32, i32* %ax, align 4
  %add18 = add nsw i32 %23, 0
  %idxprom = sext i32 %add18 to i64
  %24 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %24, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %26 = load i32, i32* %ax, align 4
  %idx.ext19 = sext i32 %26 to i64
  %add.ptr20 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idx.ext19
  %27 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %27, 1
  %add.ptr21 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr20, i64 %sub
  store %struct.sv** %add.ptr21, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
