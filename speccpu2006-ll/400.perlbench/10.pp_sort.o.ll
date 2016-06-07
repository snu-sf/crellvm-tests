; ModuleID = 'pp_sort.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
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
%struct.jmpenv = type { [1 x %struct.__jmp_buf_tag], %struct.jmpenv*, i32, i8 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.context = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }
%struct.xpviv = type { i8*, i64, i64, i64 }
%struct.off_runs = type { i64, i64 }
%struct.listop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op* }
%struct.unop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op* }
%struct.xpv = type { i8*, i64, i64 }
%struct.block_sub = type { %struct.cv*, %struct.gv*, %struct.gv*, %struct.av*, %struct.av*, i64, i8, i8, %struct.av* }
%struct.xpvnv = type { i8*, i64, i64, i64, double }
%struct.partition_stack_entry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"sort::hints\00", align 1
@PL_stack_sp = external global %struct.sv**, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_markstack_ptr = external global i32*, align 8
@PL_op = external global %struct.op*, align 8
@PL_sv_undef = external global %struct.sv, align 8
@PL_sortcop = external global %struct.op*, align 8
@PL_curcop = external global %struct.cop*, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"$$\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Undefined sort subroutine \22%_\22 called\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Undefined subroutine in sort\00", align 1
@PL_ppaddr = external global [0 x %struct.op* ()*], align 8
@PL_savestack_ix = external global i32, align 4
@PL_savestack_max = external global i32, align 4
@PL_comppad = external global %struct.av*, align 8
@PL_savestack = external global %union.any*, align 8
@PL_curpad = external global %struct.sv**, align 8
@PL_stack_max = external global %struct.sv**, align 8
@PL_top_env = external global %struct.jmpenv*, align 8
@PL_tmps_floor = external global i32, align 4
@PL_tmps_ix = external global i32, align 4
@PL_curstackinfo = external global %struct.stackinfo*, align 8
@PL_curstack = external global %struct.av*, align 8
@PL_sortstash = external global %struct.hv*, align 8
@PL_firstgv = external global %struct.gv*, align 8
@PL_secondgv = external global %struct.gv*, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@PL_markstack = external global i32*, align 8
@PL_scopestack_ix = external global i32, align 4
@PL_retstack_ix = external global i32, align 4
@PL_curpm = external global %struct.pmop*, align 8
@PL_Sv = external global %struct.sv*, align 8
@PL_sortcxix = external global i32, align 4
@PL_defgv = external global %struct.gv*, align 8
@PL_stderrgv = external global %struct.gv*, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"panic: POPSTACK\0A\00", align 1
@PL_sort_RealCmp = external global i32 (%struct.sv*, %struct.sv*)*, align 8
@PL_runops = external global i32 ()*, align 8
@.str.7 = private unnamed_addr constant [43 x i8] c"Sort subroutine didn't return single value\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Sort subroutine didn't return a numeric value\00", align 1
@PL_markstack_max = external global i32*, align 8
@PL_amagic_generation = external global i64, align 8

; Function Attrs: nounwind uwtable
define void @Perl_sortsv(%struct.sv** %array, i64 %nmemb, i32 (%struct.sv*, %struct.sv*)* %cmp) #0 {
entry:
  %array.addr = alloca %struct.sv**, align 8
  %nmemb.addr = alloca i64, align 8
  %cmp.addr = alloca i32 (%struct.sv*, %struct.sv*)*, align 8
  %sortsvp = alloca void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)*, align 8
  %hintsv = alloca %struct.sv*, align 8
  %hints = alloca i32, align 4
  store %struct.sv** %array, %struct.sv*** %array.addr, align 8
  store i64 %nmemb, i64* %nmemb.addr, align 8
  store i32 (%struct.sv*, %struct.sv*)* %cmp, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  store void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)* @S_mergesortsv, void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)** %sortsvp, align 8
  %call = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 2, i32 1)
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %call, i32 0, i32 0
  %0 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %0, i32 0, i32 7
  %1 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %1, i32 0, i32 0
  %2 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  store %struct.sv* %2, %struct.sv** %hintsv, align 8
  %3 = load %struct.sv*, %struct.sv** %hintsv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and = and i32 %4, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false.7

cond.true:                                        ; preds = %entry
  %5 = load %struct.sv*, %struct.sv** %hintsv, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 2
  %6 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %6, 65536
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %cond.true.4, label %cond.false

cond.true.4:                                      ; preds = %cond.true
  %7 = load %struct.sv*, %struct.sv** %hintsv, align 8
  %sv_any5 = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 0
  %8 = load i8*, i8** %sv_any5, align 8
  %9 = bitcast i8* %8 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %9, i32 0, i32 3
  %10 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %11 = load %struct.sv*, %struct.sv** %hintsv, align 8
  %call6 = call i64 @Perl_sv_2iv(%struct.sv* %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.4
  %cond = phi i64 [ %10, %cond.true.4 ], [ %call6, %cond.false ]
  %conv = trunc i64 %cond to i32
  br label %cond.end.8

cond.false.7:                                     ; preds = %entry
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.end
  %cond9 = phi i32 [ %conv, %cond.end ], [ 0, %cond.false.7 ]
  store i32 %cond9, i32* %hints, align 4
  %12 = load i32, i32* %hints, align 4
  %and10 = and i32 %12, 1
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.8
  store void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)* @S_qsortsv, void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)** %sortsvp, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.8
  store void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)* @S_mergesortsv, void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)** %sortsvp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)*, void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)** %sortsvp, align 8
  %14 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %15 = load i64, i64* %nmemb.addr, align 8
  %16 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  call void %13(%struct.sv** %14, i64 %15, i32 (%struct.sv*, %struct.sv*)* %16, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @S_mergesortsv(%struct.sv** %base, i64 %nmemb, i32 (%struct.sv*, %struct.sv*)* %cmp, i32 %flags) #0 {
entry:
  %base.addr = alloca %struct.sv**, align 8
  %nmemb.addr = alloca i64, align 8
  %cmp.addr = alloca i32 (%struct.sv*, %struct.sv*)*, align 8
  %flags.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %run = alloca i64, align 8
  %runs = alloca i64, align 8
  %offset = alloca i64, align 8
  %sense = alloca i32, align 4
  %level = alloca i32, align 4
  %iwhich = alloca i32, align 4
  %f1 = alloca %struct.sv**, align 8
  %f2 = alloca %struct.sv**, align 8
  %t = alloca %struct.sv**, align 8
  %b = alloca %struct.sv**, align 8
  %p = alloca %struct.sv**, align 8
  %tp2 = alloca %struct.sv**, align 8
  %l1 = alloca %struct.sv**, align 8
  %l2 = alloca %struct.sv**, align 8
  %q = alloca %struct.sv**, align 8
  %aux = alloca %struct.sv**, align 8
  %list1 = alloca %struct.sv**, align 8
  %list2 = alloca %struct.sv**, align 8
  %p1 = alloca %struct.sv**, align 8
  %small = alloca [200 x %struct.sv*], align 16
  %which = alloca [3 x %struct.sv**], align 16
  %stack = alloca [60 x %struct.off_runs], align 16
  %stackp = alloca %struct.off_runs*, align 8
  %savecmp = alloca i32 (%struct.sv*, %struct.sv*)*, align 8
  store %struct.sv** %base, %struct.sv*** %base.addr, align 8
  store i64 %nmemb, i64* %nmemb.addr, align 8
  store i32 (%struct.sv*, %struct.sv*)* %cmp, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 (%struct.sv*, %struct.sv*)* null, i32 (%struct.sv*, %struct.sv*)** %savecmp, align 8
  %0 = load i64, i64* %nmemb.addr, align 8
  %cmp1 = icmp ule i64 %0, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %flags.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8
  store i32 (%struct.sv*, %struct.sv*)* %2, i32 (%struct.sv*, %struct.sv*)** %savecmp, align 8
  %3 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  store i32 (%struct.sv*, %struct.sv*)* %3, i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8
  store i32 (%struct.sv*, %struct.sv*)* @cmp_desc, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %4 = load i64, i64* %nmemb.addr, align 8
  %cmp4 = icmp ule i64 %4, 200
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  %arraydecay = getelementptr inbounds [200 x %struct.sv*], [200 x %struct.sv*]* %small, i32 0, i32 0
  store %struct.sv** %arraydecay, %struct.sv*** %aux, align 8
  br label %if.end.6

if.else:                                          ; preds = %if.end.3
  %5 = load i64, i64* %nmemb.addr, align 8
  %mul = mul i64 %5, 8
  %call = call i8* @Perl_safesysmalloc(i64 %mul)
  %6 = bitcast i8* %call to %struct.sv**
  store %struct.sv** %6, %struct.sv*** %aux, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  store i32 0, i32* %level, align 4
  %arraydecay7 = getelementptr inbounds [60 x %struct.off_runs], [60 x %struct.off_runs]* %stack, i32 0, i32 0
  store %struct.off_runs* %arraydecay7, %struct.off_runs** %stackp, align 8
  %7 = load %struct.sv**, %struct.sv*** %base.addr, align 8
  %8 = load %struct.sv**, %struct.sv*** %aux, align 8
  %9 = load i64, i64* %nmemb.addr, align 8
  %10 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  %call8 = call i64 @dynprep(%struct.sv** %7, %struct.sv** %8, i64 %9, i32 (%struct.sv*, %struct.sv*)* %10)
  %11 = load %struct.off_runs*, %struct.off_runs** %stackp, align 8
  %runs9 = getelementptr inbounds %struct.off_runs, %struct.off_runs* %11, i32 0, i32 1
  store i64 %call8, i64* %runs9, align 8
  store i64 0, i64* %offset, align 8
  %12 = load %struct.off_runs*, %struct.off_runs** %stackp, align 8
  %offset10 = getelementptr inbounds %struct.off_runs, %struct.off_runs* %12, i32 0, i32 0
  store i64 0, i64* %offset10, align 8
  %13 = load %struct.sv**, %struct.sv*** %base.addr, align 8
  %arrayidx = getelementptr inbounds [3 x %struct.sv**], [3 x %struct.sv**]* %which, i32 0, i64 2
  store %struct.sv** %13, %struct.sv*** %arrayidx, align 8
  %arrayidx11 = getelementptr inbounds [3 x %struct.sv**], [3 x %struct.sv**]* %which, i32 0, i64 0
  store %struct.sv** %13, %struct.sv*** %arrayidx11, align 8
  %14 = load %struct.sv**, %struct.sv*** %aux, align 8
  %arrayidx12 = getelementptr inbounds [3 x %struct.sv**], [3 x %struct.sv**]* %which, i32 0, i64 1
  store %struct.sv** %14, %struct.sv*** %arrayidx12, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.183, %if.end.6
  %15 = load %struct.off_runs*, %struct.off_runs** %stackp, align 8
  %runs13 = getelementptr inbounds %struct.off_runs, %struct.off_runs* %15, i32 0, i32 1
  %16 = load i64, i64* %runs13, align 8
  store i64 %16, i64* %runs, align 8
  %cmp14 = icmp eq i64 %16, 0
  br i1 %cmp14, label %if.then.15, label %if.end.122

if.then.15:                                       ; preds = %for.cond
  %17 = load i32, i32* %level, align 4
  %and = and i32 %17, 1
  store i32 %and, i32* %iwhich, align 4
  %18 = load i32, i32* %iwhich, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [3 x %struct.sv**], [3 x %struct.sv**]* %which, i32 0, i64 %idxprom
  %19 = load %struct.sv**, %struct.sv*** %arrayidx16, align 8
  store %struct.sv** %19, %struct.sv*** %list1, align 8
  %20 = load i32, i32* %iwhich, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %iwhich, align 4
  %idxprom17 = sext i32 %inc to i64
  %arrayidx18 = getelementptr inbounds [3 x %struct.sv**], [3 x %struct.sv**]* %which, i32 0, i64 %idxprom17
  %21 = load %struct.sv**, %struct.sv*** %arrayidx18, align 8
  store %struct.sv** %21, %struct.sv*** %list2, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond.118, %if.then.15
  %22 = load %struct.off_runs*, %struct.off_runs** %stackp, align 8
  %offset19 = getelementptr inbounds %struct.off_runs, %struct.off_runs* %22, i32 0, i32 0
  %23 = load i64, i64* %offset19, align 8
  store i64 %23, i64* %offset, align 8
  %24 = load %struct.sv**, %struct.sv*** %list1, align 8
  %25 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %24, i64 %25
  store %struct.sv** %add.ptr, %struct.sv*** %p1, align 8
  store %struct.sv** %add.ptr, %struct.sv*** %f1, align 8
  %26 = load %struct.sv**, %struct.sv*** %list2, align 8
  %27 = load i64, i64* %offset, align 8
  %add.ptr20 = getelementptr inbounds %struct.sv*, %struct.sv** %26, i64 %27
  store %struct.sv** %add.ptr20, %struct.sv*** %tp2, align 8
  store %struct.sv** %add.ptr20, %struct.sv*** %p, align 8
  %28 = load %struct.sv**, %struct.sv*** %p, align 8
  %29 = bitcast %struct.sv** %28 to %struct.sv***
  %30 = load %struct.sv**, %struct.sv*** %29, align 8
  store %struct.sv** %30, %struct.sv*** %t, align 8
  %31 = load %struct.sv**, %struct.sv*** %list1, align 8
  %32 = bitcast %struct.sv** %31 to i8*
  %33 = load %struct.sv**, %struct.sv*** %t, align 8
  %34 = bitcast %struct.sv** %33 to i8*
  %35 = load %struct.sv**, %struct.sv*** %list2, align 8
  %36 = bitcast %struct.sv** %35 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %36 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr21 = getelementptr inbounds i8, i8* %32, i64 %sub.ptr.sub
  %37 = bitcast i8* %add.ptr21 to %struct.sv**
  store %struct.sv** %37, %struct.sv*** %l1, align 8
  store %struct.sv** %37, %struct.sv*** %f2, align 8
  %38 = load %struct.sv**, %struct.sv*** %t, align 8
  %39 = bitcast %struct.sv** %38 to %struct.sv***
  %40 = load %struct.sv**, %struct.sv*** %39, align 8
  store %struct.sv** %40, %struct.sv*** %t, align 8
  %41 = load %struct.sv**, %struct.sv*** %list1, align 8
  %42 = bitcast %struct.sv** %41 to i8*
  %43 = load %struct.sv**, %struct.sv*** %t, align 8
  %44 = bitcast %struct.sv** %43 to i8*
  %45 = load %struct.sv**, %struct.sv*** %list2, align 8
  %46 = bitcast %struct.sv** %45 to i8*
  %sub.ptr.lhs.cast22 = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast23 = ptrtoint i8* %46 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  %add.ptr25 = getelementptr inbounds i8, i8* %42, i64 %sub.ptr.sub24
  %47 = bitcast i8* %add.ptr25 to %struct.sv**
  store %struct.sv** %47, %struct.sv*** %l2, align 8
  %48 = load %struct.sv**, %struct.sv*** %t, align 8
  %49 = load %struct.sv**, %struct.sv*** %list2, align 8
  %sub.ptr.lhs.cast26 = ptrtoint %struct.sv** %48 to i64
  %sub.ptr.rhs.cast27 = ptrtoint %struct.sv** %49 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub28, 8
  store i64 %sub.ptr.div, i64* %offset, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.89, %do.body
  %50 = load %struct.sv**, %struct.sv*** %f1, align 8
  %51 = load %struct.sv**, %struct.sv*** %l1, align 8
  %cmp29 = icmp ult %struct.sv** %50, %51
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %52 = load %struct.sv**, %struct.sv*** %f2, align 8
  %53 = load %struct.sv**, %struct.sv*** %l2, align 8
  %cmp30 = icmp ult %struct.sv** %52, %53
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %54 = phi i1 [ false, %while.cond ], [ %cmp30, %land.rhs ]
  br i1 %54, label %while.body, label %while.end.90

while.body:                                       ; preds = %land.end
  %55 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  %56 = load %struct.sv**, %struct.sv*** %f1, align 8
  %57 = load %struct.sv*, %struct.sv** %56, align 8
  %58 = load %struct.sv**, %struct.sv*** %f2, align 8
  %59 = load %struct.sv*, %struct.sv** %58, align 8
  %call31 = call i32 %55(%struct.sv* %57, %struct.sv* %59)
  %cmp32 = icmp sle i32 %call31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %while.body
  %60 = load %struct.sv**, %struct.sv*** %f2, align 8
  store %struct.sv** %60, %struct.sv*** %q, align 8
  %61 = load %struct.sv**, %struct.sv*** %f1, align 8
  store %struct.sv** %61, %struct.sv*** %b, align 8
  %62 = load %struct.sv**, %struct.sv*** %l1, align 8
  store %struct.sv** %62, %struct.sv*** %t, align 8
  store i32 -1, i32* %sense, align 4
  br label %if.end.35

if.else.34:                                       ; preds = %while.body
  %63 = load %struct.sv**, %struct.sv*** %f1, align 8
  store %struct.sv** %63, %struct.sv*** %q, align 8
  %64 = load %struct.sv**, %struct.sv*** %f2, align 8
  store %struct.sv** %64, %struct.sv*** %b, align 8
  %65 = load %struct.sv**, %struct.sv*** %l2, align 8
  store %struct.sv** %65, %struct.sv*** %t, align 8
  store i32 0, i32* %sense, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %if.then.33
  store i64 1, i64* %i, align 8
  store i64 0, i64* %run, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %if.end.57, %if.end.35
  %66 = load %struct.sv**, %struct.sv*** %b, align 8
  %67 = load i64, i64* %i, align 8
  %add.ptr37 = getelementptr inbounds %struct.sv*, %struct.sv** %66, i64 %67
  store %struct.sv** %add.ptr37, %struct.sv*** %p, align 8
  %68 = load %struct.sv**, %struct.sv*** %t, align 8
  %cmp38 = icmp uge %struct.sv** %add.ptr37, %68
  br i1 %cmp38, label %if.then.39, label %if.else.47

if.then.39:                                       ; preds = %for.cond.36
  %69 = load %struct.sv**, %struct.sv*** %t, align 8
  %add.ptr40 = getelementptr inbounds %struct.sv*, %struct.sv** %69, i64 -1
  store %struct.sv** %add.ptr40, %struct.sv*** %p, align 8
  %70 = load %struct.sv**, %struct.sv*** %b, align 8
  %cmp41 = icmp ugt %struct.sv** %add.ptr40, %70
  br i1 %cmp41, label %land.lhs.true, label %if.else.45

land.lhs.true:                                    ; preds = %if.then.39
  %71 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  %72 = load %struct.sv**, %struct.sv*** %q, align 8
  %73 = load %struct.sv*, %struct.sv** %72, align 8
  %74 = load %struct.sv**, %struct.sv*** %p, align 8
  %75 = load %struct.sv*, %struct.sv** %74, align 8
  %call42 = call i32 %71(%struct.sv* %73, %struct.sv* %75)
  %76 = load i32, i32* %sense, align 4
  %cmp43 = icmp sle i32 %call42, %76
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %land.lhs.true
  %77 = load %struct.sv**, %struct.sv*** %p, align 8
  store %struct.sv** %77, %struct.sv*** %t, align 8
  br label %if.end.46

if.else.45:                                       ; preds = %land.lhs.true, %if.then.39
  %78 = load %struct.sv**, %struct.sv*** %p, align 8
  store %struct.sv** %78, %struct.sv*** %b, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.45, %if.then.44
  br label %for.end

if.else.47:                                       ; preds = %for.cond.36
  %79 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  %80 = load %struct.sv**, %struct.sv*** %q, align 8
  %81 = load %struct.sv*, %struct.sv** %80, align 8
  %82 = load %struct.sv**, %struct.sv*** %p, align 8
  %83 = load %struct.sv*, %struct.sv** %82, align 8
  %call48 = call i32 %79(%struct.sv* %81, %struct.sv* %83)
  %84 = load i32, i32* %sense, align 4
  %cmp49 = icmp sle i32 %call48, %84
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.else.47
  %85 = load %struct.sv**, %struct.sv*** %p, align 8
  store %struct.sv** %85, %struct.sv*** %t, align 8
  br label %for.end

if.else.51:                                       ; preds = %if.else.47
  %86 = load %struct.sv**, %struct.sv*** %p, align 8
  store %struct.sv** %86, %struct.sv*** %b, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52
  %87 = load i64, i64* %run, align 8
  %inc54 = add nsw i64 %87, 1
  store i64 %inc54, i64* %run, align 8
  %cmp55 = icmp sge i64 %inc54, 6
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.53
  %88 = load i64, i64* %i, align 8
  %89 = load i64, i64* %i, align 8
  %add = add nsw i64 %89, %88
  store i64 %add, i64* %i, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.53
  br label %for.cond.36

for.end:                                          ; preds = %if.then.50, %if.end.46
  %90 = load %struct.sv**, %struct.sv*** %b, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %90, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %b, align 8
  br label %while.cond.58

while.cond.58:                                    ; preds = %if.end.71, %for.end
  %91 = load %struct.sv**, %struct.sv*** %b, align 8
  %92 = load %struct.sv**, %struct.sv*** %t, align 8
  %cmp59 = icmp ult %struct.sv** %91, %92
  br i1 %cmp59, label %while.body.60, label %while.end

while.body.60:                                    ; preds = %while.cond.58
  %93 = load %struct.sv**, %struct.sv*** %b, align 8
  %94 = load %struct.sv**, %struct.sv*** %t, align 8
  %95 = load %struct.sv**, %struct.sv*** %b, align 8
  %sub.ptr.lhs.cast61 = ptrtoint %struct.sv** %94 to i64
  %sub.ptr.rhs.cast62 = ptrtoint %struct.sv** %95 to i64
  %sub.ptr.sub63 = sub i64 %sub.ptr.lhs.cast61, %sub.ptr.rhs.cast62
  %sub.ptr.div64 = sdiv exact i64 %sub.ptr.sub63, 8
  %sub = sub nsw i64 %sub.ptr.div64, 1
  %div = sdiv i64 %sub, 2
  %add.ptr65 = getelementptr inbounds %struct.sv*, %struct.sv** %93, i64 %div
  store %struct.sv** %add.ptr65, %struct.sv*** %p, align 8
  %96 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  %97 = load %struct.sv**, %struct.sv*** %q, align 8
  %98 = load %struct.sv*, %struct.sv** %97, align 8
  %99 = load %struct.sv**, %struct.sv*** %p, align 8
  %100 = load %struct.sv*, %struct.sv** %99, align 8
  %call66 = call i32 %96(%struct.sv* %98, %struct.sv* %100)
  %101 = load i32, i32* %sense, align 4
  %cmp67 = icmp sle i32 %call66, %101
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %while.body.60
  %102 = load %struct.sv**, %struct.sv*** %p, align 8
  store %struct.sv** %102, %struct.sv*** %t, align 8
  br label %if.end.71

if.else.69:                                       ; preds = %while.body.60
  %103 = load %struct.sv**, %struct.sv*** %p, align 8
  %add.ptr70 = getelementptr inbounds %struct.sv*, %struct.sv** %103, i64 1
  store %struct.sv** %add.ptr70, %struct.sv*** %b, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.69, %if.then.68
  br label %while.cond.58

while.end:                                        ; preds = %while.cond.58
  %104 = load %struct.sv**, %struct.sv*** %q, align 8
  %105 = load %struct.sv**, %struct.sv*** %f1, align 8
  %cmp72 = icmp eq %struct.sv** %104, %105
  br i1 %cmp72, label %if.then.73, label %if.else.80

if.then.73:                                       ; preds = %while.end
  br label %do.body.74

do.body.74:                                       ; preds = %do.cond, %if.then.73
  %106 = load %struct.sv**, %struct.sv*** %f2, align 8
  %incdec.ptr75 = getelementptr inbounds %struct.sv*, %struct.sv** %106, i32 1
  store %struct.sv** %incdec.ptr75, %struct.sv*** %f2, align 8
  %107 = load %struct.sv*, %struct.sv** %106, align 8
  %108 = load %struct.sv**, %struct.sv*** %tp2, align 8
  %incdec.ptr76 = getelementptr inbounds %struct.sv*, %struct.sv** %108, i32 1
  store %struct.sv** %incdec.ptr76, %struct.sv*** %tp2, align 8
  store %struct.sv* %107, %struct.sv** %108, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body.74
  %109 = load %struct.sv**, %struct.sv*** %f2, align 8
  %110 = load %struct.sv**, %struct.sv*** %t, align 8
  %cmp77 = icmp ult %struct.sv** %109, %110
  br i1 %cmp77, label %do.body.74, label %do.end

do.end:                                           ; preds = %do.cond
  %111 = load %struct.sv**, %struct.sv*** %f1, align 8
  %incdec.ptr78 = getelementptr inbounds %struct.sv*, %struct.sv** %111, i32 1
  store %struct.sv** %incdec.ptr78, %struct.sv*** %f1, align 8
  %112 = load %struct.sv*, %struct.sv** %111, align 8
  %113 = load %struct.sv**, %struct.sv*** %tp2, align 8
  %incdec.ptr79 = getelementptr inbounds %struct.sv*, %struct.sv** %113, i32 1
  store %struct.sv** %incdec.ptr79, %struct.sv*** %tp2, align 8
  store %struct.sv* %112, %struct.sv** %113, align 8
  br label %if.end.89

if.else.80:                                       ; preds = %while.end
  br label %do.body.81

do.body.81:                                       ; preds = %do.cond.84, %if.else.80
  %114 = load %struct.sv**, %struct.sv*** %f1, align 8
  %incdec.ptr82 = getelementptr inbounds %struct.sv*, %struct.sv** %114, i32 1
  store %struct.sv** %incdec.ptr82, %struct.sv*** %f1, align 8
  %115 = load %struct.sv*, %struct.sv** %114, align 8
  %116 = load %struct.sv**, %struct.sv*** %tp2, align 8
  %incdec.ptr83 = getelementptr inbounds %struct.sv*, %struct.sv** %116, i32 1
  store %struct.sv** %incdec.ptr83, %struct.sv*** %tp2, align 8
  store %struct.sv* %115, %struct.sv** %116, align 8
  br label %do.cond.84

do.cond.84:                                       ; preds = %do.body.81
  %117 = load %struct.sv**, %struct.sv*** %f1, align 8
  %118 = load %struct.sv**, %struct.sv*** %t, align 8
  %cmp85 = icmp ult %struct.sv** %117, %118
  br i1 %cmp85, label %do.body.81, label %do.end.86

do.end.86:                                        ; preds = %do.cond.84
  %119 = load %struct.sv**, %struct.sv*** %f2, align 8
  %incdec.ptr87 = getelementptr inbounds %struct.sv*, %struct.sv** %119, i32 1
  store %struct.sv** %incdec.ptr87, %struct.sv*** %f2, align 8
  %120 = load %struct.sv*, %struct.sv** %119, align 8
  %121 = load %struct.sv**, %struct.sv*** %tp2, align 8
  %incdec.ptr88 = getelementptr inbounds %struct.sv*, %struct.sv** %121, i32 1
  store %struct.sv** %incdec.ptr88, %struct.sv*** %tp2, align 8
  store %struct.sv* %120, %struct.sv** %121, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %do.end.86, %do.end
  br label %while.cond

while.end.90:                                     ; preds = %land.end
  %122 = load %struct.sv**, %struct.sv*** %f1, align 8
  %123 = load %struct.sv**, %struct.sv*** %l1, align 8
  %cmp91 = icmp eq %struct.sv** %122, %123
  br i1 %cmp91, label %if.then.92, label %if.else.102

if.then.92:                                       ; preds = %while.end.90
  %124 = load %struct.sv**, %struct.sv*** %f2, align 8
  %125 = load %struct.sv**, %struct.sv*** %l2, align 8
  %cmp93 = icmp ult %struct.sv** %124, %125
  br i1 %cmp93, label %if.then.94, label %if.end.101

if.then.94:                                       ; preds = %if.then.92
  br label %do.body.95

do.body.95:                                       ; preds = %do.cond.98, %if.then.94
  %126 = load %struct.sv**, %struct.sv*** %f2, align 8
  %incdec.ptr96 = getelementptr inbounds %struct.sv*, %struct.sv** %126, i32 1
  store %struct.sv** %incdec.ptr96, %struct.sv*** %f2, align 8
  %127 = load %struct.sv*, %struct.sv** %126, align 8
  %128 = load %struct.sv**, %struct.sv*** %tp2, align 8
  %incdec.ptr97 = getelementptr inbounds %struct.sv*, %struct.sv** %128, i32 1
  store %struct.sv** %incdec.ptr97, %struct.sv*** %tp2, align 8
  store %struct.sv* %127, %struct.sv** %128, align 8
  br label %do.cond.98

do.cond.98:                                       ; preds = %do.body.95
  %129 = load %struct.sv**, %struct.sv*** %f2, align 8
  %130 = load %struct.sv**, %struct.sv*** %l2, align 8
  %cmp99 = icmp ult %struct.sv** %129, %130
  br i1 %cmp99, label %do.body.95, label %do.end.100

do.end.100:                                       ; preds = %do.cond.98
  br label %if.end.101

if.end.101:                                       ; preds = %do.end.100, %if.then.92
  br label %if.end.109

if.else.102:                                      ; preds = %while.end.90
  br label %do.body.103

do.body.103:                                      ; preds = %do.cond.106, %if.else.102
  %131 = load %struct.sv**, %struct.sv*** %f1, align 8
  %incdec.ptr104 = getelementptr inbounds %struct.sv*, %struct.sv** %131, i32 1
  store %struct.sv** %incdec.ptr104, %struct.sv*** %f1, align 8
  %132 = load %struct.sv*, %struct.sv** %131, align 8
  %133 = load %struct.sv**, %struct.sv*** %tp2, align 8
  %incdec.ptr105 = getelementptr inbounds %struct.sv*, %struct.sv** %133, i32 1
  store %struct.sv** %incdec.ptr105, %struct.sv*** %tp2, align 8
  store %struct.sv* %132, %struct.sv** %133, align 8
  br label %do.cond.106

do.cond.106:                                      ; preds = %do.body.103
  %134 = load %struct.sv**, %struct.sv*** %f1, align 8
  %135 = load %struct.sv**, %struct.sv*** %l1, align 8
  %cmp107 = icmp ult %struct.sv** %134, %135
  br i1 %cmp107, label %do.body.103, label %do.end.108

do.end.108:                                       ; preds = %do.cond.106
  br label %if.end.109

if.end.109:                                       ; preds = %do.end.108, %if.end.101
  %136 = load %struct.sv**, %struct.sv*** %list1, align 8
  %137 = bitcast %struct.sv** %136 to i8*
  %138 = load %struct.sv**, %struct.sv*** %tp2, align 8
  %139 = bitcast %struct.sv** %138 to i8*
  %140 = load %struct.sv**, %struct.sv*** %list2, align 8
  %141 = bitcast %struct.sv** %140 to i8*
  %sub.ptr.lhs.cast110 = ptrtoint i8* %139 to i64
  %sub.ptr.rhs.cast111 = ptrtoint i8* %141 to i64
  %sub.ptr.sub112 = sub i64 %sub.ptr.lhs.cast110, %sub.ptr.rhs.cast111
  %add.ptr113 = getelementptr inbounds i8, i8* %137, i64 %sub.ptr.sub112
  %142 = bitcast i8* %add.ptr113 to %struct.sv**
  %143 = load %struct.sv**, %struct.sv*** %p1, align 8
  %144 = bitcast %struct.sv** %143 to %struct.sv***
  store %struct.sv** %142, %struct.sv*** %144, align 8
  store %struct.sv** %142, %struct.sv*** %p1, align 8
  %145 = load i32, i32* %level, align 4
  %dec = add nsw i32 %145, -1
  store i32 %dec, i32* %level, align 4
  %cmp114 = icmp eq i32 %dec, 0
  br i1 %cmp114, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.end.109
  br label %done

if.end.116:                                       ; preds = %if.end.109
  %146 = load %struct.off_runs*, %struct.off_runs** %stackp, align 8
  %incdec.ptr117 = getelementptr inbounds %struct.off_runs, %struct.off_runs* %146, i32 -1
  store %struct.off_runs* %incdec.ptr117, %struct.off_runs** %stackp, align 8
  %147 = load %struct.sv**, %struct.sv*** %list1, align 8
  store %struct.sv** %147, %struct.sv*** %t, align 8
  %148 = load %struct.sv**, %struct.sv*** %list2, align 8
  store %struct.sv** %148, %struct.sv*** %list1, align 8
  %149 = load %struct.sv**, %struct.sv*** %t, align 8
  store %struct.sv** %149, %struct.sv*** %list2, align 8
  br label %do.cond.118

do.cond.118:                                      ; preds = %if.end.116
  %150 = load %struct.off_runs*, %struct.off_runs** %stackp, align 8
  %runs119 = getelementptr inbounds %struct.off_runs, %struct.off_runs* %150, i32 0, i32 1
  %151 = load i64, i64* %runs119, align 8
  store i64 %151, i64* %runs, align 8
  %cmp120 = icmp eq i64 %151, 0
  br i1 %cmp120, label %do.body, label %do.end.121

do.end.121:                                       ; preds = %do.cond.118
  br label %if.end.122

if.end.122:                                       ; preds = %do.end.121, %for.cond
  %152 = load %struct.off_runs*, %struct.off_runs** %stackp, align 8
  %runs123 = getelementptr inbounds %struct.off_runs, %struct.off_runs* %152, i32 0, i32 1
  store i64 0, i64* %runs123, align 8
  br label %while.cond.124

while.cond.124:                                   ; preds = %while.body.126, %if.end.122
  %153 = load i64, i64* %runs, align 8
  %cmp125 = icmp sgt i64 %153, 2
  br i1 %cmp125, label %while.body.126, label %while.end.133

while.body.126:                                   ; preds = %while.cond.124
  %154 = load i32, i32* %level, align 4
  %inc127 = add nsw i32 %154, 1
  store i32 %inc127, i32* %level, align 4
  %155 = load %struct.off_runs*, %struct.off_runs** %stackp, align 8
  %incdec.ptr128 = getelementptr inbounds %struct.off_runs, %struct.off_runs* %155, i32 1
  store %struct.off_runs* %incdec.ptr128, %struct.off_runs** %stackp, align 8
  %156 = load i64, i64* %offset, align 8
  %157 = load %struct.off_runs*, %struct.off_runs** %stackp, align 8
  %offset129 = getelementptr inbounds %struct.off_runs, %struct.off_runs* %157, i32 0, i32 0
  store i64 %156, i64* %offset129, align 8
  %158 = load i64, i64* %runs, align 8
  %div130 = sdiv i64 %158, 2
  %159 = load %struct.off_runs*, %struct.off_runs** %stackp, align 8
  %runs131 = getelementptr inbounds %struct.off_runs, %struct.off_runs* %159, i32 0, i32 1
  store i64 %div130, i64* %runs131, align 8
  %160 = load i64, i64* %runs, align 8
  %sub132 = sub nsw i64 %160, %div130
  store i64 %sub132, i64* %runs, align 8
  br label %while.cond.124

while.end.133:                                    ; preds = %while.cond.124
  %161 = load i32, i32* %level, align 4
  %and134 = and i32 %161, 1
  store i32 %and134, i32* %iwhich, align 4
  %162 = load i64, i64* %runs, align 8
  %cmp135 = icmp eq i64 %162, 1
  br i1 %cmp135, label %if.then.136, label %if.else.157

if.then.136:                                      ; preds = %while.end.133
  %163 = load i32, i32* %iwhich, align 4
  %tobool137 = icmp ne i32 %163, 0
  br i1 %tobool137, label %if.then.138, label %if.else.152

if.then.138:                                      ; preds = %if.then.136
  %164 = load %struct.sv**, %struct.sv*** %base.addr, align 8
  %165 = load i64, i64* %offset, align 8
  %add.ptr139 = getelementptr inbounds %struct.sv*, %struct.sv** %164, i64 %165
  store %struct.sv** %add.ptr139, %struct.sv*** %b, align 8
  store %struct.sv** %add.ptr139, %struct.sv*** %f1, align 8
  %166 = load %struct.sv**, %struct.sv*** %aux, align 8
  %167 = load i64, i64* %offset, align 8
  %add.ptr140 = getelementptr inbounds %struct.sv*, %struct.sv** %166, i64 %167
  store %struct.sv** %add.ptr140, %struct.sv*** %f2, align 8
  %168 = load %struct.sv**, %struct.sv*** %f2, align 8
  %169 = bitcast %struct.sv** %168 to %struct.sv***
  %170 = load %struct.sv**, %struct.sv*** %169, align 8
  store %struct.sv** %170, %struct.sv*** %t, align 8
  %171 = load %struct.sv**, %struct.sv*** %t, align 8
  %172 = load %struct.sv**, %struct.sv*** %aux, align 8
  %sub.ptr.lhs.cast141 = ptrtoint %struct.sv** %171 to i64
  %sub.ptr.rhs.cast142 = ptrtoint %struct.sv** %172 to i64
  %sub.ptr.sub143 = sub i64 %sub.ptr.lhs.cast141, %sub.ptr.rhs.cast142
  %sub.ptr.div144 = sdiv exact i64 %sub.ptr.sub143, 8
  store i64 %sub.ptr.div144, i64* %offset, align 8
  %173 = load %struct.sv**, %struct.sv*** %base.addr, align 8
  %174 = load i64, i64* %offset, align 8
  %add.ptr145 = getelementptr inbounds %struct.sv*, %struct.sv** %173, i64 %174
  store %struct.sv** %add.ptr145, %struct.sv*** %t, align 8
  br label %do.body.146

do.body.146:                                      ; preds = %do.cond.149, %if.then.138
  %175 = load %struct.sv**, %struct.sv*** %f1, align 8
  %incdec.ptr147 = getelementptr inbounds %struct.sv*, %struct.sv** %175, i32 1
  store %struct.sv** %incdec.ptr147, %struct.sv*** %f1, align 8
  %176 = load %struct.sv*, %struct.sv** %175, align 8
  %177 = load %struct.sv**, %struct.sv*** %f2, align 8
  %incdec.ptr148 = getelementptr inbounds %struct.sv*, %struct.sv** %177, i32 1
  store %struct.sv** %incdec.ptr148, %struct.sv*** %f2, align 8
  store %struct.sv* %176, %struct.sv** %177, align 8
  br label %do.cond.149

do.cond.149:                                      ; preds = %do.body.146
  %178 = load %struct.sv**, %struct.sv*** %f1, align 8
  %179 = load %struct.sv**, %struct.sv*** %t, align 8
  %cmp150 = icmp ult %struct.sv** %178, %179
  br i1 %cmp150, label %do.body.146, label %do.end.151

do.end.151:                                       ; preds = %do.cond.149
  %180 = load %struct.sv**, %struct.sv*** %t, align 8
  %181 = load %struct.sv**, %struct.sv*** %b, align 8
  %182 = bitcast %struct.sv** %181 to %struct.sv***
  store %struct.sv** %180, %struct.sv*** %182, align 8
  br label %if.end.156

if.else.152:                                      ; preds = %if.then.136
  %183 = load i32, i32* %level, align 4
  %cmp153 = icmp eq i32 %183, 0
  br i1 %cmp153, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.else.152
  br label %done

if.end.155:                                       ; preds = %if.else.152
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %do.end.151
  br label %if.end.183

if.else.157:                                      ; preds = %while.end.133
  %184 = load i32, i32* %level, align 4
  %inc158 = add nsw i32 %184, 1
  store i32 %inc158, i32* %level, align 4
  %185 = load %struct.off_runs*, %struct.off_runs** %stackp, align 8
  %incdec.ptr159 = getelementptr inbounds %struct.off_runs, %struct.off_runs* %185, i32 1
  store %struct.off_runs* %incdec.ptr159, %struct.off_runs** %stackp, align 8
  %186 = load i64, i64* %offset, align 8
  %187 = load %struct.off_runs*, %struct.off_runs** %stackp, align 8
  %offset160 = getelementptr inbounds %struct.off_runs, %struct.off_runs* %187, i32 0, i32 0
  store i64 %186, i64* %offset160, align 8
  %188 = load %struct.off_runs*, %struct.off_runs** %stackp, align 8
  %runs161 = getelementptr inbounds %struct.off_runs, %struct.off_runs* %188, i32 0, i32 1
  store i64 0, i64* %runs161, align 8
  %189 = load i32, i32* %iwhich, align 4
  %tobool162 = icmp ne i32 %189, 0
  br i1 %tobool162, label %if.end.182, label %if.then.163

if.then.163:                                      ; preds = %if.else.157
  %190 = load %struct.sv**, %struct.sv*** %base.addr, align 8
  %191 = load i64, i64* %offset, align 8
  %add.ptr164 = getelementptr inbounds %struct.sv*, %struct.sv** %190, i64 %191
  store %struct.sv** %add.ptr164, %struct.sv*** %b, align 8
  store %struct.sv** %add.ptr164, %struct.sv*** %f1, align 8
  %192 = load %struct.sv**, %struct.sv*** %aux, align 8
  %193 = load i64, i64* %offset, align 8
  %add.ptr165 = getelementptr inbounds %struct.sv*, %struct.sv** %192, i64 %193
  store %struct.sv** %add.ptr165, %struct.sv*** %f2, align 8
  %194 = load %struct.sv**, %struct.sv*** %f2, align 8
  %195 = bitcast %struct.sv** %194 to %struct.sv***
  %196 = load %struct.sv**, %struct.sv*** %195, align 8
  store %struct.sv** %196, %struct.sv*** %t, align 8
  %197 = load %struct.sv**, %struct.sv*** %t, align 8
  %198 = load %struct.sv**, %struct.sv*** %aux, align 8
  %sub.ptr.lhs.cast166 = ptrtoint %struct.sv** %197 to i64
  %sub.ptr.rhs.cast167 = ptrtoint %struct.sv** %198 to i64
  %sub.ptr.sub168 = sub i64 %sub.ptr.lhs.cast166, %sub.ptr.rhs.cast167
  %sub.ptr.div169 = sdiv exact i64 %sub.ptr.sub168, 8
  store i64 %sub.ptr.div169, i64* %offset, align 8
  %199 = load %struct.sv**, %struct.sv*** %base.addr, align 8
  %200 = load i64, i64* %offset, align 8
  %add.ptr170 = getelementptr inbounds %struct.sv*, %struct.sv** %199, i64 %200
  store %struct.sv** %add.ptr170, %struct.sv*** %p, align 8
  %201 = load %struct.sv**, %struct.sv*** %t, align 8
  %202 = bitcast %struct.sv** %201 to %struct.sv***
  %203 = load %struct.sv**, %struct.sv*** %202, align 8
  store %struct.sv** %203, %struct.sv*** %t, align 8
  %204 = load %struct.sv**, %struct.sv*** %base.addr, align 8
  %205 = load %struct.sv**, %struct.sv*** %t, align 8
  %206 = load %struct.sv**, %struct.sv*** %aux, align 8
  %sub.ptr.lhs.cast171 = ptrtoint %struct.sv** %205 to i64
  %sub.ptr.rhs.cast172 = ptrtoint %struct.sv** %206 to i64
  %sub.ptr.sub173 = sub i64 %sub.ptr.lhs.cast171, %sub.ptr.rhs.cast172
  %sub.ptr.div174 = sdiv exact i64 %sub.ptr.sub173, 8
  %add.ptr175 = getelementptr inbounds %struct.sv*, %struct.sv** %204, i64 %sub.ptr.div174
  store %struct.sv** %add.ptr175, %struct.sv*** %t, align 8
  br label %do.body.176

do.body.176:                                      ; preds = %do.cond.179, %if.then.163
  %207 = load %struct.sv**, %struct.sv*** %f1, align 8
  %incdec.ptr177 = getelementptr inbounds %struct.sv*, %struct.sv** %207, i32 1
  store %struct.sv** %incdec.ptr177, %struct.sv*** %f1, align 8
  %208 = load %struct.sv*, %struct.sv** %207, align 8
  %209 = load %struct.sv**, %struct.sv*** %f2, align 8
  %incdec.ptr178 = getelementptr inbounds %struct.sv*, %struct.sv** %209, i32 1
  store %struct.sv** %incdec.ptr178, %struct.sv*** %f2, align 8
  store %struct.sv* %208, %struct.sv** %209, align 8
  br label %do.cond.179

do.cond.179:                                      ; preds = %do.body.176
  %210 = load %struct.sv**, %struct.sv*** %f1, align 8
  %211 = load %struct.sv**, %struct.sv*** %t, align 8
  %cmp180 = icmp ult %struct.sv** %210, %211
  br i1 %cmp180, label %do.body.176, label %do.end.181

do.end.181:                                       ; preds = %do.cond.179
  %212 = load %struct.sv**, %struct.sv*** %p, align 8
  %213 = load %struct.sv**, %struct.sv*** %b, align 8
  %214 = bitcast %struct.sv** %213 to %struct.sv***
  store %struct.sv** %212, %struct.sv*** %214, align 8
  %215 = load %struct.sv**, %struct.sv*** %t, align 8
  %216 = load %struct.sv**, %struct.sv*** %p, align 8
  %217 = bitcast %struct.sv** %216 to %struct.sv***
  store %struct.sv** %215, %struct.sv*** %217, align 8
  br label %if.end.182

if.end.182:                                       ; preds = %do.end.181, %if.else.157
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.end.156
  br label %for.cond

done:                                             ; preds = %if.then.154, %if.then.115
  %218 = load %struct.sv**, %struct.sv*** %aux, align 8
  %arraydecay184 = getelementptr inbounds [200 x %struct.sv*], [200 x %struct.sv*]* %small, i32 0, i32 0
  %cmp185 = icmp ne %struct.sv** %218, %arraydecay184
  br i1 %cmp185, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %done
  %219 = load %struct.sv**, %struct.sv*** %aux, align 8
  %220 = bitcast %struct.sv** %219 to i8*
  call void @Perl_safesysfree(i8* %220)
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.186, %done
  %221 = load i32, i32* %flags.addr, align 4
  %tobool188 = icmp ne i32 %221, 0
  br i1 %tobool188, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.end.187
  %222 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %savecmp, align 8
  store i32 (%struct.sv*, %struct.sv*)* %222, i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.189, %if.end.187
  br label %return

return:                                           ; preds = %if.end.190, %if.then
  ret void
}

declare %struct.gv* @Perl_gv_fetchpv(i8*, i32, i32) #1

declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define internal void @S_qsortsv(%struct.sv** %list1, i64 %nmemb, i32 (%struct.sv*, %struct.sv*)* %cmp, i32 %flags) #0 {
entry:
  %list1.addr = alloca %struct.sv**, align 8
  %nmemb.addr = alloca i64, align 8
  %cmp.addr = alloca i32 (%struct.sv*, %struct.sv*)*, align 8
  %flags.addr = alloca i32, align 4
  %hintsv = alloca %struct.sv*, align 8
  %pp = alloca %struct.sv***, align 8
  %q = alloca %struct.sv**, align 8
  %n = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %small = alloca [200 x %struct.sv**], align 16
  %indir = alloca %struct.sv***, align 8
  %tmp = alloca %struct.sv*, align 8
  %savecmp = alloca i32 (%struct.sv*, %struct.sv*)*, align 8
  %savecmp55 = alloca i32 (%struct.sv*, %struct.sv*)*, align 8
  store %struct.sv** %list1, %struct.sv*** %list1.addr, align 8
  store i64 %nmemb, i64* %nmemb.addr, align 8
  store i32 (%struct.sv*, %struct.sv*)* %cmp, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %call = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 2, i32 1)
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %call, i32 0, i32 0
  %0 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %0, i32 0, i32 7
  %1 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %1, i32 0, i32 0
  %2 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  store %struct.sv* %2, %struct.sv** %hintsv, align 8
  %3 = load %struct.sv*, %struct.sv** %hintsv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and = and i32 %4, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false.7

cond.true:                                        ; preds = %entry
  %5 = load %struct.sv*, %struct.sv** %hintsv, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 2
  %6 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %6, 65536
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %cond.true.4, label %cond.false

cond.true.4:                                      ; preds = %cond.true
  %7 = load %struct.sv*, %struct.sv** %hintsv, align 8
  %sv_any5 = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 0
  %8 = load i8*, i8** %sv_any5, align 8
  %9 = bitcast i8* %8 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %9, i32 0, i32 3
  %10 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %11 = load %struct.sv*, %struct.sv** %hintsv, align 8
  %call6 = call i64 @Perl_sv_2iv(%struct.sv* %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.4
  %cond = phi i64 [ %10, %cond.true.4 ], [ %call6, %cond.false ]
  %conv = trunc i64 %cond to i32
  br label %cond.end.8

cond.false.7:                                     ; preds = %entry
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.end
  %cond9 = phi i32 [ %conv, %cond.end ], [ 0, %cond.false.7 ]
  %and10 = and i32 %cond9, 256
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then, label %if.else.51

if.then:                                          ; preds = %cond.end.8
  %12 = load i64, i64* %nmemb.addr, align 8
  %cmp13 = icmp ule i64 %12, 1
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then
  br label %if.end.58

if.end:                                           ; preds = %if.then
  %13 = load i64, i64* %nmemb.addr, align 8
  %cmp16 = icmp ule i64 %13, 200
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end
  %arraydecay = getelementptr inbounds [200 x %struct.sv**], [200 x %struct.sv**]* %small, i32 0, i32 0
  store %struct.sv*** %arraydecay, %struct.sv**** %indir, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.end
  %14 = load i64, i64* %nmemb.addr, align 8
  %mul = mul i64 %14, 8
  %call19 = call i8* @Perl_safesysmalloc(i64 %mul)
  %15 = bitcast i8* %call19 to %struct.sv***
  store %struct.sv*** %15, %struct.sv**** %indir, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  %16 = load i64, i64* %nmemb.addr, align 8
  store i64 %16, i64* %n, align 8
  %17 = load %struct.sv***, %struct.sv**** %indir, align 8
  store %struct.sv*** %17, %struct.sv**** %pp, align 8
  %18 = load %struct.sv**, %struct.sv*** %list1.addr, align 8
  store %struct.sv** %18, %struct.sv*** %q, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end.20
  %19 = load i64, i64* %n, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %n, align 8
  %tobool21 = icmp ne i64 %19, 0
  br i1 %tobool21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.sv**, %struct.sv*** %q, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %20, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %q, align 8
  %21 = load %struct.sv***, %struct.sv**** %pp, align 8
  %incdec.ptr22 = getelementptr inbounds %struct.sv**, %struct.sv*** %21, i32 1
  store %struct.sv*** %incdec.ptr22, %struct.sv**** %pp, align 8
  store %struct.sv** %20, %struct.sv*** %21, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8
  store i32 (%struct.sv*, %struct.sv*)* %22, i32 (%struct.sv*, %struct.sv*)** %savecmp, align 8
  %23 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  store i32 (%struct.sv*, %struct.sv*)* %23, i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8
  %24 = load %struct.sv***, %struct.sv**** %indir, align 8
  %25 = bitcast %struct.sv*** %24 to %struct.sv**
  %26 = load i64, i64* %nmemb.addr, align 8
  %27 = load i32, i32* %flags.addr, align 4
  %tobool23 = icmp ne i32 %27, 0
  %cond24 = select i1 %tobool23, i32 (%struct.sv*, %struct.sv*)* @cmpindir_desc, i32 (%struct.sv*, %struct.sv*)* @cmpindir
  call void @S_qsortsvu(%struct.sv** %25, i64 %26, i32 (%struct.sv*, %struct.sv*)* %cond24)
  %28 = load %struct.sv***, %struct.sv**** %indir, align 8
  store %struct.sv*** %28, %struct.sv**** %pp, align 8
  %29 = load %struct.sv**, %struct.sv*** %list1.addr, align 8
  store %struct.sv** %29, %struct.sv*** %q, align 8
  %30 = load i64, i64* %nmemb.addr, align 8
  store i64 %30, i64* %n, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %if.end.44, %for.end
  %31 = load i64, i64* %n, align 8
  %dec26 = add i64 %31, -1
  store i64 %dec26, i64* %n, align 8
  %tobool27 = icmp ne i64 %31, 0
  br i1 %tobool27, label %for.body.28, label %for.end.45

for.body.28:                                      ; preds = %for.cond.25
  %32 = load i64, i64* %n, align 8
  %33 = load %struct.sv***, %struct.sv**** %pp, align 8
  %arrayidx = getelementptr inbounds %struct.sv**, %struct.sv*** %33, i64 %32
  %34 = load %struct.sv**, %struct.sv*** %arrayidx, align 8
  %35 = load %struct.sv**, %struct.sv*** %q, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %34 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %35 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %j, align 8
  %36 = load i64, i64* %n, align 8
  %37 = load i64, i64* %j, align 8
  %cmp29 = icmp ne i64 %36, %37
  br i1 %cmp29, label %if.then.31, label %if.end.44

if.then.31:                                       ; preds = %for.body.28
  %38 = load i64, i64* %j, align 8
  %39 = load %struct.sv**, %struct.sv*** %q, align 8
  %arrayidx32 = getelementptr inbounds %struct.sv*, %struct.sv** %39, i64 %38
  %40 = load %struct.sv*, %struct.sv** %arrayidx32, align 8
  store %struct.sv* %40, %struct.sv** %tmp, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.31
  %41 = load i64, i64* %j, align 8
  %42 = load %struct.sv***, %struct.sv**** %pp, align 8
  %arrayidx33 = getelementptr inbounds %struct.sv**, %struct.sv*** %42, i64 %41
  %43 = load %struct.sv**, %struct.sv*** %arrayidx33, align 8
  %44 = load %struct.sv*, %struct.sv** %43, align 8
  %45 = load i64, i64* %j, align 8
  %46 = load %struct.sv**, %struct.sv*** %q, align 8
  %arrayidx34 = getelementptr inbounds %struct.sv*, %struct.sv** %46, i64 %45
  store %struct.sv* %44, %struct.sv** %arrayidx34, align 8
  %47 = load i64, i64* %j, align 8
  %48 = load %struct.sv***, %struct.sv**** %pp, align 8
  %arrayidx35 = getelementptr inbounds %struct.sv**, %struct.sv*** %48, i64 %47
  %49 = load %struct.sv**, %struct.sv*** %arrayidx35, align 8
  %50 = load %struct.sv**, %struct.sv*** %q, align 8
  %sub.ptr.lhs.cast36 = ptrtoint %struct.sv** %49 to i64
  %sub.ptr.rhs.cast37 = ptrtoint %struct.sv** %50 to i64
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37
  %sub.ptr.div39 = sdiv exact i64 %sub.ptr.sub38, 8
  store i64 %sub.ptr.div39, i64* %i, align 8
  %51 = load %struct.sv**, %struct.sv*** %q, align 8
  %52 = load i64, i64* %j, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %51, i64 %52
  %53 = load i64, i64* %j, align 8
  %54 = load %struct.sv***, %struct.sv**** %pp, align 8
  %arrayidx40 = getelementptr inbounds %struct.sv**, %struct.sv*** %54, i64 %53
  store %struct.sv** %add.ptr, %struct.sv*** %arrayidx40, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %55 = load i64, i64* %i, align 8
  store i64 %55, i64* %j, align 8
  %56 = load i64, i64* %n, align 8
  %cmp41 = icmp ne i64 %55, %56
  br i1 %cmp41, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %57 = load %struct.sv*, %struct.sv** %tmp, align 8
  %58 = load i64, i64* %n, align 8
  %59 = load %struct.sv**, %struct.sv*** %q, align 8
  %arrayidx43 = getelementptr inbounds %struct.sv*, %struct.sv** %59, i64 %58
  store %struct.sv* %57, %struct.sv** %arrayidx43, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %do.end, %for.body.28
  br label %for.cond.25

for.end.45:                                       ; preds = %for.cond.25
  %60 = load %struct.sv***, %struct.sv**** %indir, align 8
  %arraydecay46 = getelementptr inbounds [200 x %struct.sv**], [200 x %struct.sv**]* %small, i32 0, i32 0
  %cmp47 = icmp ne %struct.sv*** %60, %arraydecay46
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.end.45
  %61 = load %struct.sv***, %struct.sv**** %indir, align 8
  %62 = bitcast %struct.sv*** %61 to i8*
  call void @Perl_safesysfree(i8* %62)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %for.end.45
  %63 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %savecmp, align 8
  store i32 (%struct.sv*, %struct.sv*)* %63, i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8
  br label %if.end.58

if.else.51:                                       ; preds = %cond.end.8
  %64 = load i32, i32* %flags.addr, align 4
  %tobool52 = icmp ne i32 %64, 0
  br i1 %tobool52, label %if.then.53, label %if.else.56

if.then.53:                                       ; preds = %if.else.51
  %65 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8
  store i32 (%struct.sv*, %struct.sv*)* %65, i32 (%struct.sv*, %struct.sv*)** %savecmp55, align 8
  %66 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  store i32 (%struct.sv*, %struct.sv*)* %66, i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8
  store i32 (%struct.sv*, %struct.sv*)* @cmp_desc, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  %67 = load %struct.sv**, %struct.sv*** %list1.addr, align 8
  %68 = load i64, i64* %nmemb.addr, align 8
  %69 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  call void @S_qsortsvu(%struct.sv** %67, i64 %68, i32 (%struct.sv*, %struct.sv*)* %69)
  %70 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %savecmp55, align 8
  store i32 (%struct.sv*, %struct.sv*)* %70, i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8
  br label %if.end.57

if.else.56:                                       ; preds = %if.else.51
  %71 = load %struct.sv**, %struct.sv*** %list1.addr, align 8
  %72 = load i64, i64* %nmemb.addr, align 8
  %73 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  call void @S_qsortsvu(%struct.sv** %71, i64 %72, i32 (%struct.sv*, %struct.sv*)* %73)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.56, %if.then.53
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.15, %if.end.57, %if.end.50
  ret void
}

; Function Attrs: nounwind uwtable
define void @S_sortsv_desc(%struct.sv** %array, i64 %nmemb, i32 (%struct.sv*, %struct.sv*)* %cmp) #0 {
entry:
  %array.addr = alloca %struct.sv**, align 8
  %nmemb.addr = alloca i64, align 8
  %cmp.addr = alloca i32 (%struct.sv*, %struct.sv*)*, align 8
  %sortsvp = alloca void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)*, align 8
  %hintsv = alloca %struct.sv*, align 8
  %hints = alloca i32, align 4
  store %struct.sv** %array, %struct.sv*** %array.addr, align 8
  store i64 %nmemb, i64* %nmemb.addr, align 8
  store i32 (%struct.sv*, %struct.sv*)* %cmp, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  store void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)* @S_mergesortsv, void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)** %sortsvp, align 8
  %call = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 2, i32 1)
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %call, i32 0, i32 0
  %0 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %0, i32 0, i32 7
  %1 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %1, i32 0, i32 0
  %2 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  store %struct.sv* %2, %struct.sv** %hintsv, align 8
  %3 = load %struct.sv*, %struct.sv** %hintsv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and = and i32 %4, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false.7

cond.true:                                        ; preds = %entry
  %5 = load %struct.sv*, %struct.sv** %hintsv, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 2
  %6 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %6, 65536
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %cond.true.4, label %cond.false

cond.true.4:                                      ; preds = %cond.true
  %7 = load %struct.sv*, %struct.sv** %hintsv, align 8
  %sv_any5 = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 0
  %8 = load i8*, i8** %sv_any5, align 8
  %9 = bitcast i8* %8 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %9, i32 0, i32 3
  %10 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %11 = load %struct.sv*, %struct.sv** %hintsv, align 8
  %call6 = call i64 @Perl_sv_2iv(%struct.sv* %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.4
  %cond = phi i64 [ %10, %cond.true.4 ], [ %call6, %cond.false ]
  %conv = trunc i64 %cond to i32
  br label %cond.end.8

cond.false.7:                                     ; preds = %entry
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.end
  %cond9 = phi i32 [ %conv, %cond.end ], [ 0, %cond.false.7 ]
  store i32 %cond9, i32* %hints, align 4
  %12 = load i32, i32* %hints, align 4
  %and10 = and i32 %12, 1
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.8
  store void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)* @S_qsortsv, void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)** %sortsvp, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.8
  store void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)* @S_mergesortsv, void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)** %sortsvp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)*, void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*, i32)** %sortsvp, align 8
  %14 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %15 = load i64, i64* %nmemb.addr, align 8
  %16 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  call void %13(%struct.sv** %14, i64 %15, i32 (%struct.sv*, %struct.sv*)* %16, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_sort() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %origmark = alloca i32, align 4
  %p1 = alloca %struct.sv**, align 8
  %p2 = alloca %struct.sv**, align 8
  %max = alloca i32, align 4
  %i = alloca i32, align 4
  %av = alloca %struct.av*, align 8
  %stash = alloca %struct.hv*, align 8
  %gv = alloca %struct.gv*, align 8
  %cv = alloca %struct.cv*, align 8
  %gimme = alloca i32, align 4
  %nextop = alloca %struct.op*, align 8
  %overloading = alloca i32, align 4
  %hasargs = alloca i8, align 1
  %is_xsub = alloca i32, align 4
  %sorting_av = alloca i32, align 4
  %priv = alloca i8, align 1
  %flags = alloca i8, align 1
  %sortsvp = alloca void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*)*, align 8
  %kid = alloca %struct.op*, align 8
  %n_a = alloca i64, align 8
  %proto = alloca i8*, align 8
  %tmpstr = alloca %struct.sv*, align 8
  %tmp = alloca i32, align 4
  %markoff = alloca i32, align 4
  %svp = alloca %struct.sv**, align 8
  %n_a177 = alloca i64, align 8
  %start = alloca %struct.sv**, align 8
  %cx = alloca %struct.context*, align 8
  %newsp = alloca %struct.sv**, align 8
  %oldcatch = alloca i8, align 1
  %next = alloca %struct.stackinfo*, align 8
  %tmp232 = alloca %struct.av*, align 8
  %av341 = alloca %struct.av*, align 8
  %sp411 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp461 = alloca %struct.av*, align 8
  %tmp463 = alloca %struct.stackinfo*, align 8
  %markoff474 = alloca i32, align 4
  %q = alloca %struct.sv**, align 8
  %tmp527 = alloca %struct.sv*, align 8
  %sv = alloca %struct.sv*, align 8
  %base = alloca %struct.sv**, align 8
  %didstore = alloca %struct.sv**, align 8
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
  %6 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %7 = load i32, i32* %origmark, align 4
  %idx.ext1 = sext i32 %7 to i64
  %add.ptr2 = getelementptr inbounds %struct.sv*, %struct.sv** %6, i64 %idx.ext1
  %add.ptr3 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr2, i64 1
  store %struct.sv** %add.ptr3, %struct.sv*** %p1, align 8
  store %struct.av* null, %struct.av** %av, align 8
  store %struct.cv* null, %struct.cv** %cv, align 8
  %8 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %8, i32 0, i32 6
  %9 = load i8, i8* %op_flags, align 1
  %conv4 = zext i8 %9 to i32
  %and = and i32 %conv4, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags5 = getelementptr inbounds %struct.op, %struct.op* %10, i32 0, i32 6
  %11 = load i8, i8* %op_flags5, align 1
  %conv6 = zext i8 %11 to i32
  %and7 = and i32 %conv6, 3
  %cmp = icmp eq i32 %and7, 3
  %cond = select i1 %cmp, i32 1, i32 0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i32 @Perl_dowantarray()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond9 = phi i32 [ %cond, %cond.true ], [ %call, %cond.false ]
  store i32 %cond9, i32* %gimme, align 4
  %12 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %12, i32 0, i32 0
  %13 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %13, %struct.op** %nextop, align 8
  store i32 0, i32* %overloading, align 4
  store i8 0, i8* %hasargs, align 1
  store i32 0, i32* %is_xsub, align 4
  store i32 0, i32* %sorting_av, align 4
  %14 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %14, i32 0, i32 7
  %15 = load i8, i8* %op_private, align 1
  store i8 %15, i8* %priv, align 1
  %16 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags10 = getelementptr inbounds %struct.op, %struct.op* %16, i32 0, i32 6
  %17 = load i8, i8* %op_flags10, align 1
  store i8 %17, i8* %flags, align 1
  store void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*)* @Perl_sortsv, void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*)** %sortsvp, align 8
  %18 = load i32, i32* %gimme, align 4
  %cmp11 = icmp ne i32 %18, 1
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %19 = load %struct.sv**, %struct.sv*** %mark, align 8
  store %struct.sv** %19, %struct.sv*** %sp, align 8
  %20 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr13 = getelementptr inbounds %struct.sv*, %struct.sv** %20, i32 1
  store %struct.sv** %incdec.ptr13, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr13, align 8
  %21 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %21, %struct.sv*** @PL_stack_sp, align 8
  %22 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next14 = getelementptr inbounds %struct.op, %struct.op* %22, i32 0, i32 0
  %23 = load %struct.op*, %struct.op** %op_next14, align 8
  store %struct.op* %23, %struct.op** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  call void @Perl_push_scope()
  call void @Perl_save_vptr(i8* bitcast (%struct.op** @PL_sortcop to i8*))
  %24 = load i8, i8* %flags, align 1
  %conv15 = zext i8 %24 to i32
  %and16 = and i32 %conv15, 64
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.91

if.then.18:                                       ; preds = %if.end
  %25 = load i8, i8* %flags, align 1
  %conv19 = zext i8 %25 to i32
  %and20 = and i32 %conv19, 128
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.then.18
  %26 = load %struct.op*, %struct.op** @PL_op, align 8
  %27 = bitcast %struct.op* %26 to %struct.listop*
  %op_first = getelementptr inbounds %struct.listop, %struct.listop* %27, i32 0, i32 8
  %28 = load %struct.op*, %struct.op** %op_first, align 8
  %op_sibling = getelementptr inbounds %struct.op, %struct.op* %28, i32 0, i32 1
  %29 = load %struct.op*, %struct.op** %op_sibling, align 8
  store %struct.op* %29, %struct.op** %kid, align 8
  %30 = load %struct.op*, %struct.op** %kid, align 8
  %31 = bitcast %struct.op* %30 to %struct.unop*
  %op_first23 = getelementptr inbounds %struct.unop, %struct.unop* %31, i32 0, i32 8
  %32 = load %struct.op*, %struct.op** %op_first23, align 8
  store %struct.op* %32, %struct.op** %kid, align 8
  %33 = load %struct.op*, %struct.op** %kid, align 8
  %34 = bitcast %struct.op* %33 to %struct.unop*
  %op_first24 = getelementptr inbounds %struct.unop, %struct.unop* %34, i32 0, i32 8
  %35 = load %struct.op*, %struct.op** %op_first24, align 8
  store %struct.op* %35, %struct.op** %kid, align 8
  %36 = load %struct.op*, %struct.op** %kid, align 8
  %op_next25 = getelementptr inbounds %struct.op, %struct.op* %36, i32 0, i32 0
  %37 = load %struct.op*, %struct.op** %op_next25, align 8
  store %struct.op* %37, %struct.op** @PL_sortcop, align 8
  %38 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_stash = getelementptr inbounds %struct.cop, %struct.cop* %38, i32 0, i32 9
  %39 = load %struct.hv*, %struct.hv** %cop_stash, align 8
  store %struct.hv* %39, %struct.hv** %stash, align 8
  br label %if.end.90

if.else:                                          ; preds = %if.then.18
  %40 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr26 = getelementptr inbounds %struct.sv*, %struct.sv** %40, i32 1
  store %struct.sv** %incdec.ptr26, %struct.sv*** %mark, align 8
  %41 = load %struct.sv*, %struct.sv** %incdec.ptr26, align 8
  %call27 = call %struct.cv* @Perl_sv_2cv(%struct.sv* %41, %struct.hv** %stash, %struct.gv** %gv, i32 0)
  store %struct.cv* %call27, %struct.cv** %cv, align 8
  %42 = load %struct.cv*, %struct.cv** %cv, align 8
  %tobool28 = icmp ne %struct.cv* %42, null
  br i1 %tobool28, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %if.else
  %43 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_flags = getelementptr inbounds %struct.cv, %struct.cv* %43, i32 0, i32 2
  %44 = load i32, i32* %sv_flags, align 4
  %and29 = and i32 %44, 262144
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.48

if.then.31:                                       ; preds = %land.lhs.true
  %45 = load %struct.cv*, %struct.cv** %cv, align 8
  %46 = bitcast %struct.cv* %45 to %struct.sv*
  %sv_flags32 = getelementptr inbounds %struct.sv, %struct.sv* %46, i32 0, i32 2
  %47 = load i32, i32* %sv_flags32, align 4
  %and33 = and i32 %47, 262144
  %cmp34 = icmp eq i32 %and33, 262144
  br i1 %cmp34, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %if.then.31
  %48 = load %struct.cv*, %struct.cv** %cv, align 8
  %49 = bitcast %struct.cv* %48 to %struct.sv*
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %49, i32 0, i32 0
  %50 = load i8*, i8** %sv_any, align 8
  %51 = bitcast i8* %50 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %51, i32 0, i32 1
  %52 = load i64, i64* %xpv_cur, align 8
  store i64 %52, i64* %n_a, align 8
  %53 = load %struct.cv*, %struct.cv** %cv, align 8
  %54 = bitcast %struct.cv* %53 to %struct.sv*
  %sv_any37 = getelementptr inbounds %struct.sv, %struct.sv* %54, i32 0, i32 0
  %55 = load i8*, i8** %sv_any37, align 8
  %56 = bitcast i8* %55 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %56, i32 0, i32 0
  %57 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.40

cond.false.38:                                    ; preds = %if.then.31
  %58 = load %struct.cv*, %struct.cv** %cv, align 8
  %59 = bitcast %struct.cv* %58 to %struct.sv*
  %call39 = call i8* @Perl_sv_2pv_flags(%struct.sv* %59, i64* %n_a, i32 2)
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.38, %cond.true.36
  %cond41 = phi i8* [ %57, %cond.true.36 ], [ %call39, %cond.false.38 ]
  store i8* %cond41, i8** %proto, align 8
  %60 = load i8*, i8** %proto, align 8
  %tobool42 = icmp ne i8* %60, null
  br i1 %tobool42, label %land.lhs.true.43, label %if.end.47

land.lhs.true.43:                                 ; preds = %cond.end.40
  %61 = load i8*, i8** %proto, align 8
  %call44 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %land.lhs.true.43
  store i8 1, i8* %hasargs, align 1
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %land.lhs.true.43, %cond.end.40
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %land.lhs.true, %if.else
  %62 = load %struct.cv*, %struct.cv** %cv, align 8
  %tobool49 = icmp ne %struct.cv* %62, null
  br i1 %tobool49, label %land.lhs.true.50, label %if.then.53

land.lhs.true.50:                                 ; preds = %if.end.48
  %63 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any51 = getelementptr inbounds %struct.cv, %struct.cv* %63, i32 0, i32 0
  %64 = load %struct.xpvcv*, %struct.xpvcv** %sv_any51, align 8
  %xcv_root = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %64, i32 0, i32 9
  %65 = load %struct.op*, %struct.op** %xcv_root, align 8
  %tobool52 = icmp ne %struct.op* %65, null
  br i1 %tobool52, label %if.end.67, label %if.then.53

if.then.53:                                       ; preds = %land.lhs.true.50, %if.end.48
  %66 = load %struct.cv*, %struct.cv** %cv, align 8
  %tobool54 = icmp ne %struct.cv* %66, null
  br i1 %tobool54, label %land.lhs.true.55, label %if.else.59

land.lhs.true.55:                                 ; preds = %if.then.53
  %67 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any56 = getelementptr inbounds %struct.cv, %struct.cv* %67, i32 0, i32 0
  %68 = load %struct.xpvcv*, %struct.xpvcv** %sv_any56, align 8
  %xcv_xsub = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %68, i32 0, i32 10
  %69 = load void (%struct.cv*)*, void (%struct.cv*)** %xcv_xsub, align 8
  %tobool57 = icmp ne void (%struct.cv*)* %69, null
  br i1 %tobool57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %land.lhs.true.55
  store i32 1, i32* %is_xsub, align 4
  br label %if.end.66

if.else.59:                                       ; preds = %land.lhs.true.55, %if.then.53
  %70 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool60 = icmp ne %struct.gv* %70, null
  br i1 %tobool60, label %if.then.61, label %if.else.64

if.then.61:                                       ; preds = %if.else.59
  %call62 = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call62, %struct.sv** %tmpstr, align 8
  %71 = load %struct.sv*, %struct.sv** %tmpstr, align 8
  %72 = load %struct.gv*, %struct.gv** %gv, align 8
  call void @Perl_gv_efullname4(%struct.sv* %71, %struct.gv* %72, i8* null, i8 signext 1)
  %73 = load %struct.sv*, %struct.sv** %tmpstr, align 8
  %call63 = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0), %struct.sv* %73)
  store %struct.op* %call63, %struct.op** %retval
  br label %return

if.else.64:                                       ; preds = %if.else.59
  %call65 = call %struct.op* (i8*, ...) @Perl_die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0))
  store %struct.op* %call65, %struct.op** %retval
  br label %return

if.end.66:                                        ; preds = %if.then.58
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %land.lhs.true.50
  %74 = load i32, i32* %is_xsub, align 4
  %tobool68 = icmp ne i32 %74, 0
  br i1 %tobool68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %if.end.67
  %75 = load %struct.cv*, %struct.cv** %cv, align 8
  %76 = bitcast %struct.cv* %75 to %struct.op*
  store %struct.op* %76, %struct.op** @PL_sortcop, align 8
  br label %if.end.89

if.else.70:                                       ; preds = %if.end.67
  %77 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any71 = getelementptr inbounds %struct.cv, %struct.cv* %77, i32 0, i32 0
  %78 = load %struct.xpvcv*, %struct.xpvcv** %sv_any71, align 8
  %xcv_start = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %78, i32 0, i32 8
  %79 = load %struct.op*, %struct.op** %xcv_start, align 8
  store %struct.op* %79, %struct.op** @PL_sortcop, align 8
  %80 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any72 = getelementptr inbounds %struct.cv, %struct.cv* %80, i32 0, i32 0
  %81 = load %struct.xpvcv*, %struct.xpvcv** %sv_any72, align 8
  %xcv_root73 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %81, i32 0, i32 9
  %82 = load %struct.op*, %struct.op** %xcv_root73, align 8
  %op_ppaddr = getelementptr inbounds %struct.op, %struct.op* %82, i32 0, i32 2
  %83 = bitcast %struct.op* ()** %op_ppaddr to i8*
  call void @Perl_save_vptr(i8* %83)
  %84 = load %struct.op* ()*, %struct.op* ()** getelementptr inbounds ([0 x %struct.op* ()*], [0 x %struct.op* ()*]* @PL_ppaddr, i32 0, i64 0), align 8
  %85 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any74 = getelementptr inbounds %struct.cv, %struct.cv* %85, i32 0, i32 0
  %86 = load %struct.xpvcv*, %struct.xpvcv** %sv_any74, align 8
  %xcv_root75 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %86, i32 0, i32 9
  %87 = load %struct.op*, %struct.op** %xcv_root75, align 8
  %op_ppaddr76 = getelementptr inbounds %struct.op, %struct.op* %87, i32 0, i32 2
  store %struct.op* ()* %84, %struct.op* ()** %op_ppaddr76, align 8
  %88 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %88, 2
  %89 = load i32, i32* @PL_savestack_max, align 4
  %cmp77 = icmp sgt i32 %add, %89
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.else.70
  call void @Perl_savestack_grow()
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %if.else.70
  %90 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %91 = bitcast %struct.av* %90 to %struct.sv*
  %92 = bitcast %struct.sv* %91 to i8*
  %93 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %93, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %93 to i64
  %94 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %94, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %92, i8** %any_ptr, align 8
  %95 = load i32, i32* @PL_savestack_ix, align 4
  %inc81 = add nsw i32 %95, 1
  store i32 %inc81, i32* @PL_savestack_ix, align 4
  %idxprom82 = sext i32 %95 to i64
  %96 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx83 = getelementptr inbounds %union.any, %union.any* %96, i64 %idxprom82
  %any_i32 = bitcast %union.any* %arrayidx83 to i32*
  store i32 33, i32* %any_i32, align 4
  store i32 33, i32* %tmp
  %97 = load i32, i32* %tmp
  %98 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any84 = getelementptr inbounds %struct.cv, %struct.cv* %98, i32 0, i32 0
  %99 = load %struct.xpvcv*, %struct.xpvcv** %sv_any84, align 8
  %xcv_padlist = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %99, i32 0, i32 15
  %100 = load %struct.av*, %struct.av** %xcv_padlist, align 8
  %sv_any85 = getelementptr inbounds %struct.av, %struct.av* %100, i32 0, i32 0
  %101 = load %struct.xpvav*, %struct.xpvav** %sv_any85, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %101, i32 0, i32 0
  %102 = load i8*, i8** %xav_array, align 8
  %103 = bitcast i8* %102 to %struct.sv**
  %arrayidx86 = getelementptr inbounds %struct.sv*, %struct.sv** %103, i64 1
  %104 = load %struct.sv*, %struct.sv** %arrayidx86, align 8
  %105 = bitcast %struct.sv* %104 to %struct.av*
  store %struct.av* %105, %struct.av** @PL_comppad, align 8
  %106 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %sv_any87 = getelementptr inbounds %struct.av, %struct.av* %106, i32 0, i32 0
  %107 = load %struct.xpvav*, %struct.xpvav** %sv_any87, align 8
  %xav_array88 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %107, i32 0, i32 0
  %108 = load i8*, i8** %xav_array88, align 8
  %109 = bitcast i8* %108 to %struct.sv**
  store %struct.sv** %109, %struct.sv*** @PL_curpad, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.80, %if.then.69
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.22
  br label %if.end.93

if.else.91:                                       ; preds = %if.end
  store %struct.op* null, %struct.op** @PL_sortcop, align 8
  %110 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_stash92 = getelementptr inbounds %struct.cop, %struct.cop* %110, i32 0, i32 9
  %111 = load %struct.hv*, %struct.hv** %cop_stash92, align 8
  store %struct.hv* %111, %struct.hv** %stash, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.91, %if.end.90
  %112 = load i8, i8* %priv, align 1
  %conv94 = zext i8 %112 to i32
  %and95 = and i32 %conv94, 8
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %if.then.97, label %if.else.148

if.then.97:                                       ; preds = %if.end.93
  %113 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr98 = getelementptr inbounds i32, i32* %113, i32 -1
  store i32* %incdec.ptr98, i32** @PL_markstack_ptr, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.sv**, %struct.sv*** %sp, align 8
  %116 = load %struct.sv*, %struct.sv** %115, align 8
  %117 = bitcast %struct.sv* %116 to %struct.av*
  store %struct.av* %117, %struct.av** %av, align 8
  %118 = load %struct.av*, %struct.av** %av, align 8
  %119 = bitcast %struct.av* %118 to %struct.sv*
  %sv_flags99 = getelementptr inbounds %struct.sv, %struct.sv* %119, i32 0, i32 2
  %120 = load i32, i32* %sv_flags99, align 4
  %and100 = and i32 %120, 32768
  %tobool101 = icmp ne i32 %and100, 0
  br i1 %tobool101, label %cond.true.102, label %cond.false.105

cond.true.102:                                    ; preds = %if.then.97
  %121 = load %struct.av*, %struct.av** %av, align 8
  %122 = bitcast %struct.av* %121 to %struct.sv*
  %call103 = call i32 @Perl_mg_size(%struct.sv* %122)
  %conv104 = sext i32 %call103 to i64
  br label %cond.end.107

cond.false.105:                                   ; preds = %if.then.97
  %123 = load %struct.av*, %struct.av** %av, align 8
  %sv_any106 = getelementptr inbounds %struct.av, %struct.av* %123, i32 0, i32 0
  %124 = load %struct.xpvav*, %struct.xpvav** %sv_any106, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %124, i32 0, i32 1
  %125 = load i64, i64* %xav_fill, align 8
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.105, %cond.true.102
  %cond108 = phi i64 [ %conv104, %cond.true.102 ], [ %125, %cond.false.105 ]
  %add109 = add nsw i64 %cond108, 1
  %conv110 = trunc i64 %add109 to i32
  store i32 %conv110, i32* %max, align 4
  %126 = load %struct.av*, %struct.av** %av, align 8
  %sv_flags111 = getelementptr inbounds %struct.av, %struct.av* %126, i32 0, i32 2
  %127 = load i32, i32* %sv_flags111, align 4
  %and112 = and i32 %127, 57344
  %tobool113 = icmp ne i32 %and112, 0
  br i1 %tobool113, label %if.then.114, label %if.else.144

if.then.114:                                      ; preds = %cond.end.107
  %128 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %129 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast115 = ptrtoint %struct.sv** %128 to i64
  %sub.ptr.rhs.cast116 = ptrtoint %struct.sv** %129 to i64
  %sub.ptr.sub117 = sub i64 %sub.ptr.lhs.cast115, %sub.ptr.rhs.cast116
  %sub.ptr.div118 = sdiv exact i64 %sub.ptr.sub117, 8
  %130 = load i32, i32* %max, align 4
  %conv119 = sext i32 %130 to i64
  %cmp120 = icmp slt i64 %sub.ptr.div118, %conv119
  br i1 %cmp120, label %if.then.122, label %if.end.132

if.then.122:                                      ; preds = %if.then.114
  %131 = load %struct.sv**, %struct.sv*** %mark, align 8
  %132 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast124 = ptrtoint %struct.sv** %131 to i64
  %sub.ptr.rhs.cast125 = ptrtoint %struct.sv** %132 to i64
  %sub.ptr.sub126 = sub i64 %sub.ptr.lhs.cast124, %sub.ptr.rhs.cast125
  %sub.ptr.div127 = sdiv exact i64 %sub.ptr.sub126, 8
  %conv128 = trunc i64 %sub.ptr.div127 to i32
  store i32 %conv128, i32* %markoff, align 4
  %133 = load %struct.sv**, %struct.sv*** %sp, align 8
  %134 = load %struct.sv**, %struct.sv*** %sp, align 8
  %135 = load i32, i32* %max, align 4
  %call129 = call %struct.sv** @Perl_stack_grow(%struct.sv** %133, %struct.sv** %134, i32 %135)
  store %struct.sv** %call129, %struct.sv*** %sp, align 8
  %136 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %137 = load i32, i32* %markoff, align 4
  %idx.ext130 = sext i32 %137 to i64
  %add.ptr131 = getelementptr inbounds %struct.sv*, %struct.sv** %136, i64 %idx.ext130
  store %struct.sv** %add.ptr131, %struct.sv*** %mark, align 8
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.122, %if.then.114
  %138 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %138, %struct.sv*** %p2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.132
  %139 = load i32, i32* %i, align 4
  %140 = load i32, i32* %max, align 4
  %cmp133 = icmp slt i32 %139, %140
  br i1 %cmp133, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %141 = load %struct.av*, %struct.av** %av, align 8
  %142 = load i32, i32* %i, align 4
  %call136 = call %struct.sv** @Perl_av_fetch(%struct.av* %141, i32 %142, i32 0)
  store %struct.sv** %call136, %struct.sv*** %svp, align 8
  %143 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool137 = icmp ne %struct.sv** %143, null
  br i1 %tobool137, label %cond.true.138, label %cond.false.139

cond.true.138:                                    ; preds = %for.body
  %144 = load %struct.sv**, %struct.sv*** %svp, align 8
  %145 = load %struct.sv*, %struct.sv** %144, align 8
  br label %cond.end.140

cond.false.139:                                   ; preds = %for.body
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.139, %cond.true.138
  %cond141 = phi %struct.sv* [ %145, %cond.true.138 ], [ null, %cond.false.139 ]
  %146 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr142 = getelementptr inbounds %struct.sv*, %struct.sv** %146, i32 1
  store %struct.sv** %incdec.ptr142, %struct.sv*** %sp, align 8
  store %struct.sv* %cond141, %struct.sv** %146, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.140
  %147 = load i32, i32* %i, align 4
  %inc143 = add nsw i32 %147, 1
  store i32 %inc143, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.147

if.else.144:                                      ; preds = %cond.end.107
  %148 = load %struct.av*, %struct.av** %av, align 8
  %sv_any145 = getelementptr inbounds %struct.av, %struct.av* %148, i32 0, i32 0
  %149 = load %struct.xpvav*, %struct.xpvav** %sv_any145, align 8
  %xav_array146 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %149, i32 0, i32 0
  %150 = load i8*, i8** %xav_array146, align 8
  %151 = bitcast i8* %150 to %struct.sv**
  store %struct.sv** %151, %struct.sv*** %p2, align 8
  store %struct.sv** %151, %struct.sv*** %p1, align 8
  store i32 1, i32* %sorting_av, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.144, %for.end
  br label %if.end.155

if.else.148:                                      ; preds = %if.end.93
  %152 = load %struct.sv**, %struct.sv*** %mark, align 8
  %add.ptr149 = getelementptr inbounds %struct.sv*, %struct.sv** %152, i64 1
  store %struct.sv** %add.ptr149, %struct.sv*** %p2, align 8
  %153 = load %struct.sv**, %struct.sv*** %sp, align 8
  %154 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast150 = ptrtoint %struct.sv** %153 to i64
  %sub.ptr.rhs.cast151 = ptrtoint %struct.sv** %154 to i64
  %sub.ptr.sub152 = sub i64 %sub.ptr.lhs.cast150, %sub.ptr.rhs.cast151
  %sub.ptr.div153 = sdiv exact i64 %sub.ptr.sub152, 8
  %conv154 = trunc i64 %sub.ptr.div153 to i32
  store i32 %conv154, i32* %max, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.148, %if.end.147
  %155 = load i8, i8* %priv, align 1
  %conv156 = zext i8 %155 to i32
  %and157 = and i32 %conv156, 16
  %tobool158 = icmp ne i32 %and157, 0
  br i1 %tobool158, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.end.155
  store void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*)* @S_sortsv_desc, void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*)** %sortsvp, align 8
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.159, %if.end.155
  %156 = load i32, i32* %max, align 4
  store i32 %156, i32* %i, align 4
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.189, %if.end.160
  %157 = load i32, i32* %i, align 4
  %cmp162 = icmp sgt i32 %157, 0
  br i1 %cmp162, label %for.body.164, label %for.end.191

for.body.164:                                     ; preds = %for.cond.161
  %158 = load %struct.sv**, %struct.sv*** %p2, align 8
  %incdec.ptr165 = getelementptr inbounds %struct.sv*, %struct.sv** %158, i32 1
  store %struct.sv** %incdec.ptr165, %struct.sv*** %p2, align 8
  %159 = load %struct.sv*, %struct.sv** %158, align 8
  %160 = load %struct.sv**, %struct.sv*** %p1, align 8
  store %struct.sv* %159, %struct.sv** %160, align 8
  %tobool166 = icmp ne %struct.sv* %159, null
  br i1 %tobool166, label %if.then.167, label %if.else.187

if.then.167:                                      ; preds = %for.body.164
  %161 = load %struct.sv**, %struct.sv*** %p1, align 8
  %162 = load %struct.sv*, %struct.sv** %161, align 8
  %sv_flags168 = getelementptr inbounds %struct.sv, %struct.sv* %162, i32 0, i32 2
  %163 = load i32, i32* %sv_flags168, align 4
  %and169 = and i32 %163, -2049
  store i32 %and169, i32* %sv_flags168, align 4
  %164 = load %struct.op*, %struct.op** @PL_sortcop, align 8
  %tobool170 = icmp ne %struct.op* %164, null
  br i1 %tobool170, label %if.end.185, label %land.lhs.true.171

land.lhs.true.171:                                ; preds = %if.then.167
  %165 = load %struct.sv**, %struct.sv*** %p1, align 8
  %166 = load %struct.sv*, %struct.sv** %165, align 8
  %sv_flags172 = getelementptr inbounds %struct.sv, %struct.sv* %166, i32 0, i32 2
  %167 = load i32, i32* %sv_flags172, align 4
  %and173 = and i32 %167, 262144
  %tobool174 = icmp ne i32 %and173, 0
  br i1 %tobool174, label %if.end.185, label %if.then.175

if.then.175:                                      ; preds = %land.lhs.true.171
  %168 = load %struct.sv**, %struct.sv*** %p1, align 8
  %169 = load %struct.sv*, %struct.sv** %168, align 8
  %sv_flags178 = getelementptr inbounds %struct.sv, %struct.sv* %169, i32 0, i32 2
  %170 = load i32, i32* %sv_flags178, align 4
  %and179 = and i32 %170, 268435456
  %tobool180 = icmp ne i32 %and179, 0
  br i1 %tobool180, label %if.then.181, label %if.else.182

if.then.181:                                      ; preds = %if.then.175
  store i32 1, i32* %overloading, align 4
  br label %if.end.184

if.else.182:                                      ; preds = %if.then.175
  %171 = load %struct.sv**, %struct.sv*** %p1, align 8
  %172 = load %struct.sv*, %struct.sv** %171, align 8
  %call183 = call i8* @Perl_sv_2pv_flags(%struct.sv* %172, i64* %n_a177, i32 2)
  br label %if.end.184

if.end.184:                                       ; preds = %if.else.182, %if.then.181
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %land.lhs.true.171, %if.then.167
  %173 = load %struct.sv**, %struct.sv*** %p1, align 8
  %incdec.ptr186 = getelementptr inbounds %struct.sv*, %struct.sv** %173, i32 1
  store %struct.sv** %incdec.ptr186, %struct.sv*** %p1, align 8
  br label %if.end.188

if.else.187:                                      ; preds = %for.body.164
  %174 = load i32, i32* %max, align 4
  %dec = add nsw i32 %174, -1
  store i32 %dec, i32* %max, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.else.187, %if.end.185
  br label %for.inc.189

for.inc.189:                                      ; preds = %if.end.188
  %175 = load i32, i32* %i, align 4
  %dec190 = add nsw i32 %175, -1
  store i32 %dec190, i32* %i, align 4
  br label %for.cond.161

for.end.191:                                      ; preds = %for.cond.161
  %176 = load i32, i32* %sorting_av, align 4
  %tobool192 = icmp ne i32 %176, 0
  br i1 %tobool192, label %if.then.193, label %if.end.197

if.then.193:                                      ; preds = %for.end.191
  %177 = load i32, i32* %max, align 4
  %sub = sub nsw i32 %177, 1
  %conv194 = sext i32 %sub to i64
  %178 = load %struct.av*, %struct.av** %av, align 8
  %sv_any195 = getelementptr inbounds %struct.av, %struct.av* %178, i32 0, i32 0
  %179 = load %struct.xpvav*, %struct.xpvav** %sv_any195, align 8
  %xav_fill196 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %179, i32 0, i32 1
  store i64 %conv194, i64* %xav_fill196, align 8
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.193, %for.end.191
  %180 = load i32, i32* %max, align 4
  %cmp198 = icmp sgt i32 %180, 1
  br i1 %cmp198, label %if.then.200, label %if.end.531

if.then.200:                                      ; preds = %if.end.197
  %181 = load %struct.op*, %struct.op** @PL_sortcop, align 8
  %tobool202 = icmp ne %struct.op* %181, null
  br i1 %tobool202, label %if.then.203, label %if.else.465

if.then.203:                                      ; preds = %if.then.200
  %182 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_mustcatch = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %182, i32 0, i32 3
  %183 = load i8, i8* %je_mustcatch, align 1
  store i8 %183, i8* %oldcatch, align 1
  call void @Perl_save_int(i32* @PL_tmps_floor)
  %184 = load i32, i32* @PL_tmps_ix, align 4
  store i32 %184, i32* @PL_tmps_floor, align 4
  call void @Perl_save_op()
  %185 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_mustcatch207 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %185, i32 0, i32 3
  store i8 1, i8* %je_mustcatch207, align 1
  %186 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %186, i32 0, i32 6
  %187 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  store %struct.stackinfo* %187, %struct.stackinfo** %next, align 8
  %188 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %tobool209 = icmp ne %struct.stackinfo* %188, null
  br i1 %tobool209, label %if.end.213, label %if.then.210

if.then.210:                                      ; preds = %if.then.203
  %call211 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call211, %struct.stackinfo** %next, align 8
  %189 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %190 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %190, i32 0, i32 5
  store %struct.stackinfo* %189, %struct.stackinfo** %si_prev, align 8
  %191 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %192 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next212 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %192, i32 0, i32 6
  store %struct.stackinfo* %191, %struct.stackinfo** %si_next212, align 8
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.210, %if.then.203
  %193 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %193, i32 0, i32 4
  store i32 3, i32* %si_type, align 4
  %194 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %194, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %195 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %195, i32 0, i32 0
  %196 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any214 = getelementptr inbounds %struct.av, %struct.av* %196, i32 0, i32 0
  %197 = load %struct.xpvav*, %struct.xpvav** %sv_any214, align 8
  %xav_fill215 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %197, i32 0, i32 1
  store i64 0, i64* %xav_fill215, align 8
  %198 = load %struct.sv**, %struct.sv*** %sp, align 8
  %199 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast216 = ptrtoint %struct.sv** %198 to i64
  %sub.ptr.rhs.cast217 = ptrtoint %struct.sv** %199 to i64
  %sub.ptr.sub218 = sub i64 %sub.ptr.lhs.cast216, %sub.ptr.rhs.cast217
  %sub.ptr.div219 = sdiv exact i64 %sub.ptr.sub218, 8
  %200 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any220 = getelementptr inbounds %struct.av, %struct.av* %200, i32 0, i32 0
  %201 = load %struct.xpvav*, %struct.xpvav** %sv_any220, align 8
  %xav_fill221 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %201, i32 0, i32 1
  store i64 %sub.ptr.div219, i64* %xav_fill221, align 8
  %202 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack222 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %202, i32 0, i32 0
  %203 = load %struct.av*, %struct.av** %si_stack222, align 8
  %sv_any223 = getelementptr inbounds %struct.av, %struct.av* %203, i32 0, i32 0
  %204 = load %struct.xpvav*, %struct.xpvav** %sv_any223, align 8
  %xav_array224 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %204, i32 0, i32 0
  %205 = load i8*, i8** %xav_array224, align 8
  %206 = bitcast i8* %205 to %struct.sv**
  store %struct.sv** %206, %struct.sv*** @PL_stack_base, align 8
  %207 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %208 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack225 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %208, i32 0, i32 0
  %209 = load %struct.av*, %struct.av** %si_stack225, align 8
  %sv_any226 = getelementptr inbounds %struct.av, %struct.av* %209, i32 0, i32 0
  %210 = load %struct.xpvav*, %struct.xpvav** %sv_any226, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %210, i32 0, i32 2
  %211 = load i64, i64* %xav_max, align 8
  %add.ptr227 = getelementptr inbounds %struct.sv*, %struct.sv** %207, i64 %211
  store %struct.sv** %add.ptr227, %struct.sv*** @PL_stack_max, align 8
  %212 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %213 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack228 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %213, i32 0, i32 0
  %214 = load %struct.av*, %struct.av** %si_stack228, align 8
  %sv_any229 = getelementptr inbounds %struct.av, %struct.av* %214, i32 0, i32 0
  %215 = load %struct.xpvav*, %struct.xpvav** %sv_any229, align 8
  %xav_fill230 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %215, i32 0, i32 1
  %216 = load i64, i64* %xav_fill230, align 8
  %add.ptr231 = getelementptr inbounds %struct.sv*, %struct.sv** %212, i64 %216
  store %struct.sv** %add.ptr231, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr231, %struct.sv*** %sp, align 8
  %217 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack233 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %217, i32 0, i32 0
  %218 = load %struct.av*, %struct.av** %si_stack233, align 8
  store %struct.av* %218, %struct.av** @PL_curstack, align 8
  store %struct.av* %218, %struct.av** %tmp232
  %219 = load %struct.av*, %struct.av** %tmp232
  %220 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  store %struct.stackinfo* %220, %struct.stackinfo** @PL_curstackinfo, align 8
  %221 = load i8, i8* %hasargs, align 1
  %tobool234 = icmp ne i8 %221, 0
  br i1 %tobool234, label %if.end.251, label %land.lhs.true.235

land.lhs.true.235:                                ; preds = %if.end.213
  %222 = load i32, i32* %is_xsub, align 4
  %tobool236 = icmp ne i32 %222, 0
  br i1 %tobool236, label %if.end.251, label %if.then.237

if.then.237:                                      ; preds = %land.lhs.true.235
  %223 = load %struct.hv*, %struct.hv** @PL_sortstash, align 8
  %224 = load %struct.hv*, %struct.hv** %stash, align 8
  %cmp238 = icmp ne %struct.hv* %223, %224
  br i1 %cmp238, label %if.then.243, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.237
  %225 = load %struct.gv*, %struct.gv** @PL_firstgv, align 8
  %tobool240 = icmp ne %struct.gv* %225, null
  br i1 %tobool240, label %lor.lhs.false.241, label %if.then.243

lor.lhs.false.241:                                ; preds = %lor.lhs.false
  %226 = load %struct.gv*, %struct.gv** @PL_secondgv, align 8
  %tobool242 = icmp ne %struct.gv* %226, null
  br i1 %tobool242, label %if.end.246, label %if.then.243

if.then.243:                                      ; preds = %lor.lhs.false.241, %lor.lhs.false, %if.then.237
  call void @Perl_save_sptr(%struct.sv** bitcast (%struct.gv** @PL_firstgv to %struct.sv**))
  call void @Perl_save_sptr(%struct.sv** bitcast (%struct.gv** @PL_secondgv to %struct.sv**))
  %call244 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i32 1, i32 4)
  store %struct.gv* %call244, %struct.gv** @PL_firstgv, align 8
  %call245 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i32 1, i32 4)
  store %struct.gv* %call245, %struct.gv** @PL_secondgv, align 8
  %227 = load %struct.hv*, %struct.hv** %stash, align 8
  store %struct.hv* %227, %struct.hv** @PL_sortstash, align 8
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.243, %lor.lhs.false.241
  %228 = load %struct.gv*, %struct.gv** @PL_firstgv, align 8
  %sv_any247 = getelementptr inbounds %struct.gv, %struct.gv* %228, i32 0, i32 0
  %229 = load %struct.xpvgv*, %struct.xpvgv** %sv_any247, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %229, i32 0, i32 7
  %230 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %230, i32 0, i32 0
  call void @Perl_save_sptr(%struct.sv** %gp_sv)
  %231 = load %struct.gv*, %struct.gv** @PL_secondgv, align 8
  %sv_any248 = getelementptr inbounds %struct.gv, %struct.gv* %231, i32 0, i32 0
  %232 = load %struct.xpvgv*, %struct.xpvgv** %sv_any248, align 8
  %xgv_gp249 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %232, i32 0, i32 7
  %233 = load %struct.gp*, %struct.gp** %xgv_gp249, align 8
  %gp_sv250 = getelementptr inbounds %struct.gp, %struct.gp* %233, i32 0, i32 0
  call void @Perl_save_sptr(%struct.sv** %gp_sv250)
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.246, %land.lhs.true.235, %if.end.213
  %234 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix252 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %234, i32 0, i32 2
  %235 = load i32, i32* %si_cxix252, align 4
  %236 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxmax = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %236, i32 0, i32 3
  %237 = load i32, i32* %si_cxmax, align 4
  %cmp253 = icmp slt i32 %235, %237
  br i1 %cmp253, label %cond.true.255, label %cond.false.258

cond.true.255:                                    ; preds = %if.end.251
  %238 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix256 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %238, i32 0, i32 2
  %239 = load i32, i32* %si_cxix256, align 4
  %inc257 = add nsw i32 %239, 1
  store i32 %inc257, i32* %si_cxix256, align 4
  br label %cond.end.261

cond.false.258:                                   ; preds = %if.end.251
  %call259 = call i32 @Perl_cxinc()
  %240 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix260 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %240, i32 0, i32 2
  store i32 %call259, i32* %si_cxix260, align 4
  br label %cond.end.261

cond.end.261:                                     ; preds = %cond.false.258, %cond.true.255
  %cond262 = phi i32 [ %inc257, %cond.true.255 ], [ %call259, %cond.false.258 ]
  %241 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix263 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %241, i32 0, i32 2
  %242 = load i32, i32* %si_cxix263, align 4
  %idxprom264 = sext i32 %242 to i64
  %243 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxstack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %243, i32 0, i32 1
  %244 = load %struct.context*, %struct.context** %si_cxstack, align 8
  %arrayidx265 = getelementptr inbounds %struct.context, %struct.context* %244, i64 %idxprom264
  store %struct.context* %arrayidx265, %struct.context** %cx, align 8
  %245 = load %struct.context*, %struct.context** %cx, align 8
  %cx_type = getelementptr inbounds %struct.context, %struct.context* %245, i32 0, i32 0
  store i32 0, i32* %cx_type, align 4
  %246 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %247 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast266 = ptrtoint %struct.sv** %246 to i64
  %sub.ptr.rhs.cast267 = ptrtoint %struct.sv** %247 to i64
  %sub.ptr.sub268 = sub i64 %sub.ptr.lhs.cast266, %sub.ptr.rhs.cast267
  %sub.ptr.div269 = sdiv exact i64 %sub.ptr.sub268, 8
  %conv270 = trunc i64 %sub.ptr.div269 to i32
  %248 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u = getelementptr inbounds %struct.context, %struct.context* %248, i32 0, i32 1
  %cx_blk = bitcast %union.anon.0* %cx_u to %struct.block*
  %blku_oldsp = getelementptr inbounds %struct.block, %struct.block* %cx_blk, i32 0, i32 0
  store i32 %conv270, i32* %blku_oldsp, align 4
  %249 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %250 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u271 = getelementptr inbounds %struct.context, %struct.context* %250, i32 0, i32 1
  %cx_blk272 = bitcast %union.anon.0* %cx_u271 to %struct.block*
  %blku_oldcop = getelementptr inbounds %struct.block, %struct.block* %cx_blk272, i32 0, i32 1
  store %struct.cop* %249, %struct.cop** %blku_oldcop, align 8
  %251 = load i32*, i32** @PL_markstack_ptr, align 8
  %252 = load i32*, i32** @PL_markstack, align 8
  %sub.ptr.lhs.cast273 = ptrtoint i32* %251 to i64
  %sub.ptr.rhs.cast274 = ptrtoint i32* %252 to i64
  %sub.ptr.sub275 = sub i64 %sub.ptr.lhs.cast273, %sub.ptr.rhs.cast274
  %sub.ptr.div276 = sdiv exact i64 %sub.ptr.sub275, 4
  %conv277 = trunc i64 %sub.ptr.div276 to i32
  %253 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u278 = getelementptr inbounds %struct.context, %struct.context* %253, i32 0, i32 1
  %cx_blk279 = bitcast %union.anon.0* %cx_u278 to %struct.block*
  %blku_oldmarksp = getelementptr inbounds %struct.block, %struct.block* %cx_blk279, i32 0, i32 3
  store i32 %conv277, i32* %blku_oldmarksp, align 4
  %254 = load i32, i32* @PL_scopestack_ix, align 4
  %255 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u280 = getelementptr inbounds %struct.context, %struct.context* %255, i32 0, i32 1
  %cx_blk281 = bitcast %union.anon.0* %cx_u280 to %struct.block*
  %blku_oldscopesp = getelementptr inbounds %struct.block, %struct.block* %cx_blk281, i32 0, i32 4
  store i32 %254, i32* %blku_oldscopesp, align 4
  %256 = load i32, i32* @PL_retstack_ix, align 4
  %257 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u282 = getelementptr inbounds %struct.context, %struct.context* %257, i32 0, i32 1
  %cx_blk283 = bitcast %union.anon.0* %cx_u282 to %struct.block*
  %blku_oldretsp = getelementptr inbounds %struct.block, %struct.block* %cx_blk283, i32 0, i32 2
  store i32 %256, i32* %blku_oldretsp, align 4
  %258 = load %struct.pmop*, %struct.pmop** @PL_curpm, align 8
  %259 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u284 = getelementptr inbounds %struct.context, %struct.context* %259, i32 0, i32 1
  %cx_blk285 = bitcast %union.anon.0* %cx_u284 to %struct.block*
  %blku_oldpm = getelementptr inbounds %struct.block, %struct.block* %cx_blk285, i32 0, i32 5
  store %struct.pmop* %258, %struct.pmop** %blku_oldpm, align 8
  %260 = load i32, i32* %gimme, align 4
  %conv286 = trunc i32 %260 to i8
  %261 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u287 = getelementptr inbounds %struct.context, %struct.context* %261, i32 0, i32 1
  %cx_blk288 = bitcast %union.anon.0* %cx_u287 to %struct.block*
  %blku_gimme = getelementptr inbounds %struct.block, %struct.block* %cx_blk288, i32 0, i32 6
  store i8 %conv286, i8* %blku_gimme, align 1
  %262 = load i8, i8* %flags, align 1
  %conv289 = zext i8 %262 to i32
  %and290 = and i32 %conv289, 128
  %tobool291 = icmp ne i32 %and290, 0
  br i1 %tobool291, label %if.end.333, label %if.then.292

if.then.292:                                      ; preds = %cond.end.261
  %263 = load %struct.context*, %struct.context** %cx, align 8
  %cx_type293 = getelementptr inbounds %struct.context, %struct.context* %263, i32 0, i32 0
  store i32 1, i32* %cx_type293, align 4
  %264 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u294 = getelementptr inbounds %struct.context, %struct.context* %264, i32 0, i32 1
  %cx_blk295 = bitcast %union.anon.0* %cx_u294 to %struct.block*
  %blku_gimme296 = getelementptr inbounds %struct.block, %struct.block* %cx_blk295, i32 0, i32 6
  store i8 0, i8* %blku_gimme296, align 1
  %265 = load %struct.cv*, %struct.cv** %cv, align 8
  %266 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u297 = getelementptr inbounds %struct.context, %struct.context* %266, i32 0, i32 1
  %cx_blk298 = bitcast %union.anon.0* %cx_u297 to %struct.block*
  %blk_u = getelementptr inbounds %struct.block, %struct.block* %cx_blk298, i32 0, i32 7
  %blku_sub = bitcast %union.anon.1* %blk_u to %struct.block_sub*
  %cv299 = getelementptr inbounds %struct.block_sub, %struct.block_sub* %blku_sub, i32 0, i32 0
  store %struct.cv* %265, %struct.cv** %cv299, align 8
  %267 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any300 = getelementptr inbounds %struct.cv, %struct.cv* %267, i32 0, i32 0
  %268 = load %struct.xpvcv*, %struct.xpvcv** %sv_any300, align 8
  %xcv_depth = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %268, i32 0, i32 14
  %269 = load i64, i64* %xcv_depth, align 8
  %270 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u301 = getelementptr inbounds %struct.context, %struct.context* %270, i32 0, i32 1
  %cx_blk302 = bitcast %union.anon.0* %cx_u301 to %struct.block*
  %blk_u303 = getelementptr inbounds %struct.block, %struct.block* %cx_blk302, i32 0, i32 7
  %blku_sub304 = bitcast %union.anon.1* %blk_u303 to %struct.block_sub*
  %olddepth = getelementptr inbounds %struct.block_sub, %struct.block_sub* %blku_sub304, i32 0, i32 5
  store i64 %269, i64* %olddepth, align 8
  %271 = load i8, i8* %hasargs, align 1
  %272 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u305 = getelementptr inbounds %struct.context, %struct.context* %272, i32 0, i32 1
  %cx_blk306 = bitcast %union.anon.0* %cx_u305 to %struct.block*
  %blk_u307 = getelementptr inbounds %struct.block, %struct.block* %cx_blk306, i32 0, i32 7
  %blku_sub308 = bitcast %union.anon.1* %blk_u307 to %struct.block_sub*
  %hasargs309 = getelementptr inbounds %struct.block_sub, %struct.block_sub* %blku_sub308, i32 0, i32 6
  store i8 %271, i8* %hasargs309, align 1
  %273 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any310 = getelementptr inbounds %struct.cv, %struct.cv* %273, i32 0, i32 0
  %274 = load %struct.xpvcv*, %struct.xpvcv** %sv_any310, align 8
  %xcv_depth311 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %274, i32 0, i32 14
  %275 = load i64, i64* %xcv_depth311, align 8
  %tobool312 = icmp ne i64 %275, 0
  br i1 %tobool312, label %if.end.324, label %if.then.313

if.then.313:                                      ; preds = %if.then.292
  %276 = load %struct.cv*, %struct.cv** %cv, align 8
  %277 = bitcast %struct.cv* %276 to %struct.sv*
  store %struct.sv* %277, %struct.sv** @PL_Sv, align 8
  %278 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool314 = icmp ne %struct.sv* %278, null
  br i1 %tobool314, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.313
  %279 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %279, i32 0, i32 1
  %280 = load i32, i32* %sv_refcnt, align 4
  %inc315 = add i32 %280, 1
  store i32 %inc315, i32* %sv_refcnt, align 4
  %tobool316 = icmp ne i32 %inc315, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.313
  %281 = phi i1 [ false, %if.then.313 ], [ %tobool316, %land.rhs ]
  %land.ext = zext i1 %281 to i32
  %282 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %283 = load %struct.cv*, %struct.cv** %cv, align 8
  %284 = bitcast %struct.cv* %283 to %struct.sv*
  store %struct.sv* %284, %struct.sv** @PL_Sv, align 8
  %285 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool317 = icmp ne %struct.sv* %285, null
  br i1 %tobool317, label %land.rhs.318, label %land.end.322

land.rhs.318:                                     ; preds = %land.end
  %286 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt319 = getelementptr inbounds %struct.sv, %struct.sv* %286, i32 0, i32 1
  %287 = load i32, i32* %sv_refcnt319, align 4
  %inc320 = add i32 %287, 1
  store i32 %inc320, i32* %sv_refcnt319, align 4
  %tobool321 = icmp ne i32 %inc320, 0
  br label %land.end.322

land.end.322:                                     ; preds = %land.rhs.318, %land.end
  %288 = phi i1 [ false, %land.end ], [ %tobool321, %land.rhs.318 ]
  %land.ext323 = zext i1 %288 to i32
  %289 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %290 = load %struct.cv*, %struct.cv** %cv, align 8
  %291 = bitcast %struct.cv* %290 to %struct.sv*
  call void @Perl_save_freesv(%struct.sv* %291)
  br label %if.end.324

if.end.324:                                       ; preds = %land.end.322, %if.then.292
  %292 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private325 = getelementptr inbounds %struct.op, %struct.op* %292, i32 0, i32 7
  %293 = load i8, i8* %op_private325, align 1
  %conv326 = zext i8 %293 to i32
  %and327 = and i32 %conv326, 132
  %conv328 = trunc i32 %and327 to i8
  %294 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u329 = getelementptr inbounds %struct.context, %struct.context* %294, i32 0, i32 1
  %cx_blk330 = bitcast %union.anon.0* %cx_u329 to %struct.block*
  %blk_u331 = getelementptr inbounds %struct.block, %struct.block* %cx_blk330, i32 0, i32 7
  %blku_sub332 = bitcast %union.anon.1* %blk_u331 to %struct.block_sub*
  %lval = getelementptr inbounds %struct.block_sub, %struct.block_sub* %blku_sub332, i32 0, i32 7
  store i8 %conv328, i8* %lval, align 1
  br label %if.end.333

if.end.333:                                       ; preds = %if.end.324, %cond.end.261
  %295 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix334 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %295, i32 0, i32 2
  %296 = load i32, i32* %si_cxix334, align 4
  store i32 %296, i32* @PL_sortcxix, align 4
  %297 = load i8, i8* %hasargs, align 1
  %conv335 = sext i8 %297 to i32
  %tobool336 = icmp ne i32 %conv335, 0
  br i1 %tobool336, label %land.lhs.true.337, label %if.end.367

land.lhs.true.337:                                ; preds = %if.end.333
  %298 = load i32, i32* %is_xsub, align 4
  %tobool338 = icmp ne i32 %298, 0
  br i1 %tobool338, label %if.end.367, label %if.then.339

if.then.339:                                      ; preds = %land.lhs.true.337
  %299 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx342 = getelementptr inbounds %struct.sv*, %struct.sv** %299, i64 0
  %300 = load %struct.sv*, %struct.sv** %arrayidx342, align 8
  %301 = bitcast %struct.sv* %300 to %struct.av*
  store %struct.av* %301, %struct.av** %av341, align 8
  %302 = load %struct.gv*, %struct.gv** @PL_defgv, align 8
  %sv_any343 = getelementptr inbounds %struct.gv, %struct.gv* %302, i32 0, i32 0
  %303 = load %struct.xpvgv*, %struct.xpvgv** %sv_any343, align 8
  %xgv_gp344 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %303, i32 0, i32 7
  %304 = load %struct.gp*, %struct.gp** %xgv_gp344, align 8
  %gp_av = getelementptr inbounds %struct.gp, %struct.gp* %304, i32 0, i32 4
  %305 = load %struct.av*, %struct.av** %gp_av, align 8
  %306 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u345 = getelementptr inbounds %struct.context, %struct.context* %306, i32 0, i32 1
  %cx_blk346 = bitcast %union.anon.0* %cx_u345 to %struct.block*
  %blk_u347 = getelementptr inbounds %struct.block, %struct.block* %cx_blk346, i32 0, i32 7
  %blku_sub348 = bitcast %union.anon.1* %blk_u347 to %struct.block_sub*
  %savearray = getelementptr inbounds %struct.block_sub, %struct.block_sub* %blku_sub348, i32 0, i32 3
  store %struct.av* %305, %struct.av** %savearray, align 8
  %307 = load %struct.av*, %struct.av** %av341, align 8
  %308 = bitcast %struct.av* %307 to %struct.sv*
  store %struct.sv* %308, %struct.sv** @PL_Sv, align 8
  %309 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool349 = icmp ne %struct.sv* %309, null
  br i1 %tobool349, label %land.rhs.350, label %land.end.354

land.rhs.350:                                     ; preds = %if.then.339
  %310 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt351 = getelementptr inbounds %struct.sv, %struct.sv* %310, i32 0, i32 1
  %311 = load i32, i32* %sv_refcnt351, align 4
  %inc352 = add i32 %311, 1
  store i32 %inc352, i32* %sv_refcnt351, align 4
  %tobool353 = icmp ne i32 %inc352, 0
  br label %land.end.354

land.end.354:                                     ; preds = %land.rhs.350, %if.then.339
  %312 = phi i1 [ false, %if.then.339 ], [ %tobool353, %land.rhs.350 ]
  %land.ext355 = zext i1 %312 to i32
  %313 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %314 = bitcast %struct.sv* %313 to %struct.av*
  %315 = load %struct.gv*, %struct.gv** @PL_defgv, align 8
  %sv_any356 = getelementptr inbounds %struct.gv, %struct.gv* %315, i32 0, i32 0
  %316 = load %struct.xpvgv*, %struct.xpvgv** %sv_any356, align 8
  %xgv_gp357 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %316, i32 0, i32 7
  %317 = load %struct.gp*, %struct.gp** %xgv_gp357, align 8
  %gp_av358 = getelementptr inbounds %struct.gp, %struct.gp* %317, i32 0, i32 4
  store %struct.av* %314, %struct.av** %gp_av358, align 8
  %318 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %319 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u359 = getelementptr inbounds %struct.context, %struct.context* %319, i32 0, i32 1
  %cx_blk360 = bitcast %union.anon.0* %cx_u359 to %struct.block*
  %blk_u361 = getelementptr inbounds %struct.block, %struct.block* %cx_blk360, i32 0, i32 7
  %blku_sub362 = bitcast %union.anon.1* %blk_u361 to %struct.block_sub*
  %oldcomppad = getelementptr inbounds %struct.block_sub, %struct.block_sub* %blku_sub362, i32 0, i32 8
  store %struct.av* %318, %struct.av** %oldcomppad, align 8
  %320 = load %struct.av*, %struct.av** %av341, align 8
  %321 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u363 = getelementptr inbounds %struct.context, %struct.context* %321, i32 0, i32 1
  %cx_blk364 = bitcast %union.anon.0* %cx_u363 to %struct.block*
  %blk_u365 = getelementptr inbounds %struct.block, %struct.block* %cx_blk364, i32 0, i32 7
  %blku_sub366 = bitcast %union.anon.1* %blk_u365 to %struct.block_sub*
  %argarray = getelementptr inbounds %struct.block_sub, %struct.block_sub* %blku_sub366, i32 0, i32 4
  store %struct.av* %320, %struct.av** %argarray, align 8
  br label %if.end.367

if.end.367:                                       ; preds = %land.end.354, %land.lhs.true.337, %if.end.333
  %322 = load %struct.sv**, %struct.sv*** %p1, align 8
  %323 = load i32, i32* %max, align 4
  %idx.ext368 = sext i32 %323 to i64
  %idx.neg = sub i64 0, %idx.ext368
  %add.ptr369 = getelementptr inbounds %struct.sv*, %struct.sv** %322, i64 %idx.neg
  store %struct.sv** %add.ptr369, %struct.sv*** %start, align 8
  %324 = load void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*)*, void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*)** %sortsvp, align 8
  %325 = load %struct.sv**, %struct.sv*** %start, align 8
  %326 = load i32, i32* %max, align 4
  %conv370 = sext i32 %326 to i64
  %327 = load i32, i32* %is_xsub, align 4
  %tobool371 = icmp ne i32 %327, 0
  br i1 %tobool371, label %cond.true.372, label %cond.false.373

cond.true.372:                                    ; preds = %if.end.367
  br label %cond.end.377

cond.false.373:                                   ; preds = %if.end.367
  %328 = load i8, i8* %hasargs, align 1
  %conv374 = sext i8 %328 to i32
  %tobool375 = icmp ne i32 %conv374, 0
  %cond376 = select i1 %tobool375, i32 (%struct.sv*, %struct.sv*)* @sortcv_stacked, i32 (%struct.sv*, %struct.sv*)* @sortcv
  br label %cond.end.377

cond.end.377:                                     ; preds = %cond.false.373, %cond.true.372
  %cond378 = phi i32 (%struct.sv*, %struct.sv*)* [ @sortcv_xsub, %cond.true.372 ], [ %cond376, %cond.false.373 ]
  call void %324(%struct.sv** %325, i64 %conv370, i32 (%struct.sv*, %struct.sv*)* %cond378)
  %329 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix379 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %329, i32 0, i32 2
  %330 = load i32, i32* %si_cxix379, align 4
  %dec380 = add nsw i32 %330, -1
  store i32 %dec380, i32* %si_cxix379, align 4
  %idxprom381 = sext i32 %330 to i64
  %331 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxstack382 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %331, i32 0, i32 1
  %332 = load %struct.context*, %struct.context** %si_cxstack382, align 8
  %arrayidx383 = getelementptr inbounds %struct.context, %struct.context* %332, i64 %idxprom381
  store %struct.context* %arrayidx383, %struct.context** %cx, align 8
  %333 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %334 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u384 = getelementptr inbounds %struct.context, %struct.context* %334, i32 0, i32 1
  %cx_blk385 = bitcast %union.anon.0* %cx_u384 to %struct.block*
  %blku_oldsp386 = getelementptr inbounds %struct.block, %struct.block* %cx_blk385, i32 0, i32 0
  %335 = load i32, i32* %blku_oldsp386, align 4
  %idx.ext387 = sext i32 %335 to i64
  %add.ptr388 = getelementptr inbounds %struct.sv*, %struct.sv** %333, i64 %idx.ext387
  store %struct.sv** %add.ptr388, %struct.sv*** %newsp, align 8
  %336 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u389 = getelementptr inbounds %struct.context, %struct.context* %336, i32 0, i32 1
  %cx_blk390 = bitcast %union.anon.0* %cx_u389 to %struct.block*
  %blku_oldcop391 = getelementptr inbounds %struct.block, %struct.block* %cx_blk390, i32 0, i32 1
  %337 = load %struct.cop*, %struct.cop** %blku_oldcop391, align 8
  store volatile %struct.cop* %337, %struct.cop** @PL_curcop, align 8
  %338 = load i32*, i32** @PL_markstack, align 8
  %339 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u392 = getelementptr inbounds %struct.context, %struct.context* %339, i32 0, i32 1
  %cx_blk393 = bitcast %union.anon.0* %cx_u392 to %struct.block*
  %blku_oldmarksp394 = getelementptr inbounds %struct.block, %struct.block* %cx_blk393, i32 0, i32 3
  %340 = load i32, i32* %blku_oldmarksp394, align 4
  %idx.ext395 = sext i32 %340 to i64
  %add.ptr396 = getelementptr inbounds i32, i32* %338, i64 %idx.ext395
  store i32* %add.ptr396, i32** @PL_markstack_ptr, align 8
  %341 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u397 = getelementptr inbounds %struct.context, %struct.context* %341, i32 0, i32 1
  %cx_blk398 = bitcast %union.anon.0* %cx_u397 to %struct.block*
  %blku_oldscopesp399 = getelementptr inbounds %struct.block, %struct.block* %cx_blk398, i32 0, i32 4
  %342 = load i32, i32* %blku_oldscopesp399, align 4
  store i32 %342, i32* @PL_scopestack_ix, align 4
  %343 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u400 = getelementptr inbounds %struct.context, %struct.context* %343, i32 0, i32 1
  %cx_blk401 = bitcast %union.anon.0* %cx_u400 to %struct.block*
  %blku_oldretsp402 = getelementptr inbounds %struct.block, %struct.block* %cx_blk401, i32 0, i32 2
  %344 = load i32, i32* %blku_oldretsp402, align 4
  store i32 %344, i32* @PL_retstack_ix, align 4
  %345 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u403 = getelementptr inbounds %struct.context, %struct.context* %345, i32 0, i32 1
  %cx_blk404 = bitcast %union.anon.0* %cx_u403 to %struct.block*
  %blku_oldpm405 = getelementptr inbounds %struct.block, %struct.block* %cx_blk404, i32 0, i32 5
  %346 = load %struct.pmop*, %struct.pmop** %blku_oldpm405, align 8
  store %struct.pmop* %346, %struct.pmop** @PL_curpm, align 8
  %347 = load %struct.context*, %struct.context** %cx, align 8
  %cx_u406 = getelementptr inbounds %struct.context, %struct.context* %347, i32 0, i32 1
  %cx_blk407 = bitcast %union.anon.0* %cx_u406 to %struct.block*
  %blku_gimme408 = getelementptr inbounds %struct.block, %struct.block* %cx_blk407, i32 0, i32 6
  %348 = load i8, i8* %blku_gimme408, align 1
  %conv409 = zext i8 %348 to i32
  store i32 %conv409, i32* %gimme, align 4
  %349 = load %struct.sv**, %struct.sv*** %newsp, align 8
  store %struct.sv** %349, %struct.sv*** @PL_stack_sp, align 8
  %350 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %350, %struct.sv*** %sp411, align 8
  %351 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev413 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %351, i32 0, i32 5
  %352 = load %struct.stackinfo*, %struct.stackinfo** %si_prev413, align 8
  store %struct.stackinfo* %352, %struct.stackinfo** %prev, align 8
  %353 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool414 = icmp ne %struct.stackinfo* %353, null
  br i1 %tobool414, label %if.end.443, label %if.then.415

if.then.415:                                      ; preds = %cond.end.377
  %354 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool416 = icmp ne %struct.gv* %354, null
  br i1 %tobool416, label %land.lhs.true.417, label %cond.false.438

land.lhs.true.417:                                ; preds = %if.then.415
  %355 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags418 = getelementptr inbounds %struct.gv, %struct.gv* %355, i32 0, i32 2
  %356 = load i32, i32* %sv_flags418, align 4
  %and419 = and i32 %356, 255
  %cmp420 = icmp eq i32 %and419, 13
  br i1 %cmp420, label %land.lhs.true.422, label %cond.false.438

land.lhs.true.422:                                ; preds = %land.lhs.true.417
  %357 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any423 = getelementptr inbounds %struct.gv, %struct.gv* %357, i32 0, i32 0
  %358 = load %struct.xpvgv*, %struct.xpvgv** %sv_any423, align 8
  %xgv_gp424 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %358, i32 0, i32 7
  %359 = load %struct.gp*, %struct.gp** %xgv_gp424, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %359, i32 0, i32 2
  %360 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool425 = icmp ne %struct.io* %360, null
  br i1 %tobool425, label %land.lhs.true.426, label %cond.false.438

land.lhs.true.426:                                ; preds = %land.lhs.true.422
  %361 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any427 = getelementptr inbounds %struct.gv, %struct.gv* %361, i32 0, i32 0
  %362 = load %struct.xpvgv*, %struct.xpvgv** %sv_any427, align 8
  %xgv_gp428 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %362, i32 0, i32 7
  %363 = load %struct.gp*, %struct.gp** %xgv_gp428, align 8
  %gp_io429 = getelementptr inbounds %struct.gp, %struct.gp* %363, i32 0, i32 2
  %364 = load %struct.io*, %struct.io** %gp_io429, align 8
  %sv_any430 = getelementptr inbounds %struct.io, %struct.io* %364, i32 0, i32 0
  %365 = load %struct.xpvio*, %struct.xpvio** %sv_any430, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %365, i32 0, i32 8
  %366 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool431 = icmp ne %struct._PerlIO** %366, null
  br i1 %tobool431, label %cond.true.432, label %cond.false.438

cond.true.432:                                    ; preds = %land.lhs.true.426
  %367 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any433 = getelementptr inbounds %struct.gv, %struct.gv* %367, i32 0, i32 0
  %368 = load %struct.xpvgv*, %struct.xpvgv** %sv_any433, align 8
  %xgv_gp434 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %368, i32 0, i32 7
  %369 = load %struct.gp*, %struct.gp** %xgv_gp434, align 8
  %gp_io435 = getelementptr inbounds %struct.gp, %struct.gp* %369, i32 0, i32 2
  %370 = load %struct.io*, %struct.io** %gp_io435, align 8
  %sv_any436 = getelementptr inbounds %struct.io, %struct.io* %370, i32 0, i32 0
  %371 = load %struct.xpvio*, %struct.xpvio** %sv_any436, align 8
  %xio_ofp437 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %371, i32 0, i32 8
  %372 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp437, align 8
  br label %cond.end.440

cond.false.438:                                   ; preds = %land.lhs.true.426, %land.lhs.true.422, %land.lhs.true.417, %if.then.415
  %call439 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.440

cond.end.440:                                     ; preds = %cond.false.438, %cond.true.432
  %cond441 = phi %struct._PerlIO** [ %372, %cond.true.432 ], [ %call439, %cond.false.438 ]
  %call442 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond441, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.443

if.end.443:                                       ; preds = %cond.end.440, %cond.end.377
  %373 = load %struct.sv**, %struct.sv*** %sp411, align 8
  %374 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast444 = ptrtoint %struct.sv** %373 to i64
  %sub.ptr.rhs.cast445 = ptrtoint %struct.sv** %374 to i64
  %sub.ptr.sub446 = sub i64 %sub.ptr.lhs.cast444, %sub.ptr.rhs.cast445
  %sub.ptr.div447 = sdiv exact i64 %sub.ptr.sub446, 8
  %375 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any448 = getelementptr inbounds %struct.av, %struct.av* %375, i32 0, i32 0
  %376 = load %struct.xpvav*, %struct.xpvav** %sv_any448, align 8
  %xav_fill449 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %376, i32 0, i32 1
  store i64 %sub.ptr.div447, i64* %xav_fill449, align 8
  %377 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack450 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %377, i32 0, i32 0
  %378 = load %struct.av*, %struct.av** %si_stack450, align 8
  %sv_any451 = getelementptr inbounds %struct.av, %struct.av* %378, i32 0, i32 0
  %379 = load %struct.xpvav*, %struct.xpvav** %sv_any451, align 8
  %xav_array452 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %379, i32 0, i32 0
  %380 = load i8*, i8** %xav_array452, align 8
  %381 = bitcast i8* %380 to %struct.sv**
  store %struct.sv** %381, %struct.sv*** @PL_stack_base, align 8
  %382 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %383 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack453 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %383, i32 0, i32 0
  %384 = load %struct.av*, %struct.av** %si_stack453, align 8
  %sv_any454 = getelementptr inbounds %struct.av, %struct.av* %384, i32 0, i32 0
  %385 = load %struct.xpvav*, %struct.xpvav** %sv_any454, align 8
  %xav_max455 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %385, i32 0, i32 2
  %386 = load i64, i64* %xav_max455, align 8
  %add.ptr456 = getelementptr inbounds %struct.sv*, %struct.sv** %382, i64 %386
  store %struct.sv** %add.ptr456, %struct.sv*** @PL_stack_max, align 8
  %387 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %388 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack457 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %388, i32 0, i32 0
  %389 = load %struct.av*, %struct.av** %si_stack457, align 8
  %sv_any458 = getelementptr inbounds %struct.av, %struct.av* %389, i32 0, i32 0
  %390 = load %struct.xpvav*, %struct.xpvav** %sv_any458, align 8
  %xav_fill459 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %390, i32 0, i32 1
  %391 = load i64, i64* %xav_fill459, align 8
  %add.ptr460 = getelementptr inbounds %struct.sv*, %struct.sv** %387, i64 %391
  store %struct.sv** %add.ptr460, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr460, %struct.sv*** %sp411, align 8
  %392 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack462 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %392, i32 0, i32 0
  %393 = load %struct.av*, %struct.av** %si_stack462, align 8
  store %struct.av* %393, %struct.av** @PL_curstack, align 8
  store %struct.av* %393, %struct.av** %tmp461
  %394 = load %struct.av*, %struct.av** %tmp461
  %395 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %395, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %395, %struct.stackinfo** %tmp463
  %396 = load %struct.stackinfo*, %struct.stackinfo** %tmp463
  %397 = load i8, i8* %oldcatch, align 1
  %398 = load %struct.jmpenv*, %struct.jmpenv** @PL_top_env, align 8
  %je_mustcatch464 = getelementptr inbounds %struct.jmpenv, %struct.jmpenv* %398, i32 0, i32 3
  store i8 %397, i8* %je_mustcatch464, align 1
  br label %if.end.515

if.else.465:                                      ; preds = %if.then.200
  %399 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %400 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast466 = ptrtoint %struct.sv** %399 to i64
  %sub.ptr.rhs.cast467 = ptrtoint %struct.sv** %400 to i64
  %sub.ptr.sub468 = sub i64 %sub.ptr.lhs.cast466, %sub.ptr.rhs.cast467
  %sub.ptr.div469 = sdiv exact i64 %sub.ptr.sub468, 8
  %cmp470 = icmp slt i64 %sub.ptr.div469, 20
  br i1 %cmp470, label %if.then.472, label %if.end.483

if.then.472:                                      ; preds = %if.else.465
  %401 = load %struct.sv**, %struct.sv*** %mark, align 8
  %402 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast475 = ptrtoint %struct.sv** %401 to i64
  %sub.ptr.rhs.cast476 = ptrtoint %struct.sv** %402 to i64
  %sub.ptr.sub477 = sub i64 %sub.ptr.lhs.cast475, %sub.ptr.rhs.cast476
  %sub.ptr.div478 = sdiv exact i64 %sub.ptr.sub477, 8
  %conv479 = trunc i64 %sub.ptr.div478 to i32
  store i32 %conv479, i32* %markoff474, align 4
  %403 = load %struct.sv**, %struct.sv*** %sp, align 8
  %404 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call480 = call %struct.sv** @Perl_stack_grow(%struct.sv** %403, %struct.sv** %404, i32 20)
  store %struct.sv** %call480, %struct.sv*** %sp, align 8
  %405 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %406 = load i32, i32* %markoff474, align 4
  %idx.ext481 = sext i32 %406 to i64
  %add.ptr482 = getelementptr inbounds %struct.sv*, %struct.sv** %405, i64 %idx.ext481
  store %struct.sv** %add.ptr482, %struct.sv*** %mark, align 8
  br label %if.end.483

if.end.483:                                       ; preds = %if.then.472, %if.else.465
  %407 = load i32, i32* %sorting_av, align 4
  %tobool484 = icmp ne i32 %407, 0
  br i1 %tobool484, label %cond.true.485, label %cond.false.488

cond.true.485:                                    ; preds = %if.end.483
  %408 = load %struct.av*, %struct.av** %av, align 8
  %sv_any486 = getelementptr inbounds %struct.av, %struct.av* %408, i32 0, i32 0
  %409 = load %struct.xpvav*, %struct.xpvav** %sv_any486, align 8
  %xav_array487 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %409, i32 0, i32 0
  %410 = load i8*, i8** %xav_array487, align 8
  %411 = bitcast i8* %410 to %struct.sv**
  br label %cond.end.492

cond.false.488:                                   ; preds = %if.end.483
  %412 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %413 = load i32, i32* %origmark, align 4
  %idx.ext489 = sext i32 %413 to i64
  %add.ptr490 = getelementptr inbounds %struct.sv*, %struct.sv** %412, i64 %idx.ext489
  %add.ptr491 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr490, i64 1
  br label %cond.end.492

cond.end.492:                                     ; preds = %cond.false.488, %cond.true.485
  %cond493 = phi %struct.sv** [ %411, %cond.true.485 ], [ %add.ptr491, %cond.false.488 ]
  store %struct.sv** %cond493, %struct.sv*** %start, align 8
  %414 = load void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*)*, void (%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*)** %sortsvp, align 8
  %415 = load %struct.sv**, %struct.sv*** %start, align 8
  %416 = load i32, i32* %max, align 4
  %conv494 = sext i32 %416 to i64
  %417 = load i8, i8* %priv, align 1
  %conv495 = zext i8 %417 to i32
  %and496 = and i32 %conv495, 1
  %tobool497 = icmp ne i32 %and496, 0
  br i1 %tobool497, label %cond.true.498, label %cond.false.510

cond.true.498:                                    ; preds = %cond.end.492
  %418 = load i8, i8* %priv, align 1
  %conv499 = zext i8 %418 to i32
  %and500 = and i32 %conv499, 2
  %tobool501 = icmp ne i32 %and500, 0
  br i1 %tobool501, label %cond.true.502, label %cond.false.505

cond.true.502:                                    ; preds = %cond.true.498
  %419 = load i32, i32* %overloading, align 4
  %tobool503 = icmp ne i32 %419, 0
  %cond504 = select i1 %tobool503, i32 (%struct.sv*, %struct.sv*)* @amagic_i_ncmp, i32 (%struct.sv*, %struct.sv*)* @sv_i_ncmp
  br label %cond.end.508

cond.false.505:                                   ; preds = %cond.true.498
  %420 = load i32, i32* %overloading, align 4
  %tobool506 = icmp ne i32 %420, 0
  %cond507 = select i1 %tobool506, i32 (%struct.sv*, %struct.sv*)* @amagic_ncmp, i32 (%struct.sv*, %struct.sv*)* @sv_ncmp
  br label %cond.end.508

cond.end.508:                                     ; preds = %cond.false.505, %cond.true.502
  %cond509 = phi i32 (%struct.sv*, %struct.sv*)* [ %cond504, %cond.true.502 ], [ %cond507, %cond.false.505 ]
  br label %cond.end.513

cond.false.510:                                   ; preds = %cond.end.492
  %421 = load i32, i32* %overloading, align 4
  %tobool511 = icmp ne i32 %421, 0
  %cond512 = select i1 %tobool511, i32 (%struct.sv*, %struct.sv*)* @amagic_cmp, i32 (%struct.sv*, %struct.sv*)* @Perl_sv_cmp
  br label %cond.end.513

cond.end.513:                                     ; preds = %cond.false.510, %cond.end.508
  %cond514 = phi i32 (%struct.sv*, %struct.sv*)* [ %cond509, %cond.end.508 ], [ %cond512, %cond.false.510 ]
  call void %414(%struct.sv** %415, i64 %conv494, i32 (%struct.sv*, %struct.sv*)* %cond514)
  br label %if.end.515

if.end.515:                                       ; preds = %cond.end.513, %if.end.443
  %422 = load i8, i8* %priv, align 1
  %conv516 = zext i8 %422 to i32
  %and517 = and i32 %conv516, 4
  %tobool518 = icmp ne i32 %and517, 0
  br i1 %tobool518, label %if.then.519, label %if.end.530

if.then.519:                                      ; preds = %if.end.515
  %423 = load %struct.sv**, %struct.sv*** %start, align 8
  %424 = load i32, i32* %max, align 4
  %idx.ext521 = sext i32 %424 to i64
  %add.ptr522 = getelementptr inbounds %struct.sv*, %struct.sv** %423, i64 %idx.ext521
  %add.ptr523 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr522, i64 -1
  store %struct.sv** %add.ptr523, %struct.sv*** %q, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.519
  %425 = load %struct.sv**, %struct.sv*** %start, align 8
  %426 = load %struct.sv**, %struct.sv*** %q, align 8
  %cmp524 = icmp ult %struct.sv** %425, %426
  br i1 %cmp524, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %427 = load %struct.sv**, %struct.sv*** %start, align 8
  %428 = load %struct.sv*, %struct.sv** %427, align 8
  store %struct.sv* %428, %struct.sv** %tmp527, align 8
  %429 = load %struct.sv**, %struct.sv*** %q, align 8
  %430 = load %struct.sv*, %struct.sv** %429, align 8
  %431 = load %struct.sv**, %struct.sv*** %start, align 8
  %incdec.ptr528 = getelementptr inbounds %struct.sv*, %struct.sv** %431, i32 1
  store %struct.sv** %incdec.ptr528, %struct.sv*** %start, align 8
  store %struct.sv* %430, %struct.sv** %431, align 8
  %432 = load %struct.sv*, %struct.sv** %tmp527, align 8
  %433 = load %struct.sv**, %struct.sv*** %q, align 8
  %incdec.ptr529 = getelementptr inbounds %struct.sv*, %struct.sv** %433, i32 -1
  store %struct.sv** %incdec.ptr529, %struct.sv*** %q, align 8
  store %struct.sv* %432, %struct.sv** %433, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.530

if.end.530:                                       ; preds = %while.end, %if.end.515
  br label %if.end.531

if.end.531:                                       ; preds = %if.end.530, %if.end.197
  %434 = load %struct.av*, %struct.av** %av, align 8
  %tobool532 = icmp ne %struct.av* %434, null
  br i1 %tobool532, label %land.lhs.true.533, label %if.end.574

land.lhs.true.533:                                ; preds = %if.end.531
  %435 = load i32, i32* %sorting_av, align 4
  %tobool534 = icmp ne i32 %435, 0
  br i1 %tobool534, label %if.end.574, label %if.then.535

if.then.535:                                      ; preds = %land.lhs.true.533
  %436 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %437 = load i32, i32* %origmark, align 4
  %idx.ext539 = sext i32 %437 to i64
  %add.ptr540 = getelementptr inbounds %struct.sv*, %struct.sv** %436, i64 %idx.ext539
  %add.ptr541 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr540, i64 1
  store %struct.sv** %add.ptr541, %struct.sv*** %base, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.542

for.cond.542:                                     ; preds = %for.inc.551, %if.then.535
  %438 = load i32, i32* %i, align 4
  %439 = load i32, i32* %max, align 4
  %cmp543 = icmp slt i32 %438, %439
  br i1 %cmp543, label %for.body.545, label %for.end.553

for.body.545:                                     ; preds = %for.cond.542
  %440 = load i32, i32* %i, align 4
  %idxprom546 = sext i32 %440 to i64
  %441 = load %struct.sv**, %struct.sv*** %base, align 8
  %arrayidx547 = getelementptr inbounds %struct.sv*, %struct.sv** %441, i64 %idxprom546
  %442 = load %struct.sv*, %struct.sv** %arrayidx547, align 8
  %call548 = call %struct.sv* @Perl_newSVsv(%struct.sv* %442)
  store %struct.sv* %call548, %struct.sv** %sv, align 8
  %443 = load %struct.sv*, %struct.sv** %sv, align 8
  %444 = load i32, i32* %i, align 4
  %idxprom549 = sext i32 %444 to i64
  %445 = load %struct.sv**, %struct.sv*** %base, align 8
  %arrayidx550 = getelementptr inbounds %struct.sv*, %struct.sv** %445, i64 %idxprom549
  store %struct.sv* %443, %struct.sv** %arrayidx550, align 8
  br label %for.inc.551

for.inc.551:                                      ; preds = %for.body.545
  %446 = load i32, i32* %i, align 4
  %inc552 = add nsw i32 %446, 1
  store i32 %inc552, i32* %i, align 4
  br label %for.cond.542

for.end.553:                                      ; preds = %for.cond.542
  %447 = load %struct.av*, %struct.av** %av, align 8
  call void @Perl_av_clear(%struct.av* %447)
  %448 = load %struct.av*, %struct.av** %av, align 8
  %449 = load i32, i32* %max, align 4
  call void @Perl_av_extend(%struct.av* %448, i32 %449)
  store i32 0, i32* %i, align 4
  br label %for.cond.554

for.cond.554:                                     ; preds = %for.inc.571, %for.end.553
  %450 = load i32, i32* %i, align 4
  %451 = load i32, i32* %max, align 4
  %cmp555 = icmp slt i32 %450, %451
  br i1 %cmp555, label %for.body.557, label %for.end.573

for.body.557:                                     ; preds = %for.cond.554
  %452 = load i32, i32* %i, align 4
  %idxprom558 = sext i32 %452 to i64
  %453 = load %struct.sv**, %struct.sv*** %base, align 8
  %arrayidx559 = getelementptr inbounds %struct.sv*, %struct.sv** %453, i64 %idxprom558
  %454 = load %struct.sv*, %struct.sv** %arrayidx559, align 8
  store %struct.sv* %454, %struct.sv** %sv, align 8
  %455 = load %struct.av*, %struct.av** %av, align 8
  %456 = load i32, i32* %i, align 4
  %457 = load %struct.sv*, %struct.sv** %sv, align 8
  %call560 = call %struct.sv** @Perl_av_store(%struct.av* %455, i32 %456, %struct.sv* %457)
  store %struct.sv** %call560, %struct.sv*** %didstore, align 8
  %458 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags561 = getelementptr inbounds %struct.sv, %struct.sv* %458, i32 0, i32 2
  %459 = load i32, i32* %sv_flags561, align 4
  %and562 = and i32 %459, 16384
  %tobool563 = icmp ne i32 %and562, 0
  br i1 %tobool563, label %if.then.564, label %if.end.566

if.then.564:                                      ; preds = %for.body.557
  %460 = load %struct.sv*, %struct.sv** %sv, align 8
  %call565 = call i32 @Perl_mg_set(%struct.sv* %460)
  br label %if.end.566

if.end.566:                                       ; preds = %if.then.564, %for.body.557
  %461 = load %struct.sv**, %struct.sv*** %didstore, align 8
  %tobool567 = icmp ne %struct.sv** %461, null
  br i1 %tobool567, label %if.end.570, label %if.then.568

if.then.568:                                      ; preds = %if.end.566
  %462 = load %struct.sv*, %struct.sv** %sv, align 8
  %call569 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %462)
  br label %if.end.570

if.end.570:                                       ; preds = %if.then.568, %if.end.566
  br label %for.inc.571

for.inc.571:                                      ; preds = %if.end.570
  %463 = load i32, i32* %i, align 4
  %inc572 = add nsw i32 %463, 1
  store i32 %inc572, i32* %i, align 4
  br label %for.cond.554

for.end.573:                                      ; preds = %for.cond.554
  br label %if.end.574

if.end.574:                                       ; preds = %for.end.573, %land.lhs.true.533, %if.end.531
  call void @Perl_pop_scope()
  %464 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %465 = load i32, i32* %origmark, align 4
  %idx.ext575 = sext i32 %465 to i64
  %add.ptr576 = getelementptr inbounds %struct.sv*, %struct.sv** %464, i64 %idx.ext575
  %466 = load i32, i32* %sorting_av, align 4
  %tobool577 = icmp ne i32 %466, 0
  br i1 %tobool577, label %cond.true.578, label %cond.false.579

cond.true.578:                                    ; preds = %if.end.574
  br label %cond.end.580

cond.false.579:                                   ; preds = %if.end.574
  %467 = load i32, i32* %max, align 4
  br label %cond.end.580

cond.end.580:                                     ; preds = %cond.false.579, %cond.true.578
  %cond581 = phi i32 [ 0, %cond.true.578 ], [ %467, %cond.false.579 ]
  %idx.ext582 = sext i32 %cond581 to i64
  %add.ptr583 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr576, i64 %idx.ext582
  store %struct.sv** %add.ptr583, %struct.sv*** @PL_stack_sp, align 8
  %468 = load %struct.op*, %struct.op** %nextop, align 8
  store %struct.op* %468, %struct.op** %retval
  br label %return

return:                                           ; preds = %cond.end.580, %if.else.64, %if.then.61, %if.then
  %469 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %469
}

declare i32 @Perl_dowantarray() #1

declare void @Perl_push_scope() #1

declare void @Perl_save_vptr(i8*) #1

declare %struct.cv* @Perl_sv_2cv(%struct.sv*, %struct.hv**, %struct.gv**, i32) #1

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

declare i32 @strcmp(i8*, i8*) #1

declare %struct.sv* @Perl_sv_newmortal() #1

declare void @Perl_gv_efullname4(%struct.sv*, %struct.gv*, i8*, i8 signext) #1

declare %struct.op* @Perl_die(i8*, ...) #1

declare void @Perl_savestack_grow() #1

declare i32 @Perl_mg_size(%struct.sv*) #1

declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #1

declare void @Perl_save_int(i32*) #1

declare void @Perl_save_op() #1

declare %struct.stackinfo* @Perl_new_stackinfo(i32, i32) #1

declare void @Perl_save_sptr(%struct.sv**) #1

declare i32 @Perl_cxinc() #1

declare void @Perl_save_freesv(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sortcv_xsub(%struct.sv* %a, %struct.sv* %b) #0 {
entry:
  %a.addr = alloca %struct.sv*, align 8
  %b.addr = alloca %struct.sv*, align 8
  %sp = alloca %struct.sv**, align 8
  %oldsaveix = alloca i32, align 4
  %oldscopeix = alloca i32, align 4
  %result = alloca i32, align 4
  %cv = alloca %struct.cv*, align 8
  %tmp = alloca i32, align 4
  store %struct.sv* %a, %struct.sv** %a.addr, align 8
  store %struct.sv* %b, %struct.sv** %b.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load i32, i32* @PL_savestack_ix, align 4
  store i32 %1, i32* %oldsaveix, align 4
  %2 = load i32, i32* @PL_scopestack_ix, align 4
  store i32 %2, i32* %oldscopeix, align 4
  %3 = load %struct.op*, %struct.op** @PL_sortcop, align 8
  %4 = bitcast %struct.op* %3 to %struct.cv*
  store %struct.cv* %4, %struct.cv** %cv, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  store %struct.sv** %5, %struct.sv*** %sp, align 8
  %6 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %6, i32 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %7 = load i32*, i32** @PL_markstack_max, align 8
  %cmp = icmp eq i32* %incdec.ptr, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_markstack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.sv**, %struct.sv*** %sp, align 8
  %9 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %8 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  %10 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv, i32* %10, align 4
  store i32 %conv, i32* %tmp
  %11 = load i32, i32* %tmp
  %12 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %13 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %12 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %13 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %cmp5 = icmp slt i64 %sub.ptr.div4, 2
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %14 = load %struct.sv**, %struct.sv*** %sp, align 8
  %15 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %14, %struct.sv** %15, i32 2)
  store %struct.sv** %call, %struct.sv*** %sp, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %16 = load %struct.sv*, %struct.sv** %a.addr, align 8
  %17 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr9 = getelementptr inbounds %struct.sv*, %struct.sv** %17, i32 1
  store %struct.sv** %incdec.ptr9, %struct.sv*** %sp, align 8
  store %struct.sv* %16, %struct.sv** %incdec.ptr9, align 8
  %18 = load %struct.sv*, %struct.sv** %b.addr, align 8
  %19 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr10 = getelementptr inbounds %struct.sv*, %struct.sv** %19, i32 1
  store %struct.sv** %incdec.ptr10, %struct.sv*** %sp, align 8
  store %struct.sv* %18, %struct.sv** %incdec.ptr10, align 8
  %20 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %20, %struct.sv*** @PL_stack_sp, align 8
  %21 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any = getelementptr inbounds %struct.cv, %struct.cv* %21, i32 0, i32 0
  %22 = load %struct.xpvcv*, %struct.xpvcv** %sv_any, align 8
  %xcv_xsub = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %22, i32 0, i32 10
  %23 = load void (%struct.cv*)*, void (%struct.cv*)** %xcv_xsub, align 8
  %24 = load %struct.cv*, %struct.cv** %cv, align 8
  call void %23(%struct.cv* %24)
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %26 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %26, i64 1
  %cmp11 = icmp ne %struct.sv** %25, %add.ptr
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.8
  %27 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %28 = load %struct.sv*, %struct.sv** %27, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %28, i32 0, i32 2
  %29 = load i32, i32* %sv_flags, align 4
  %and = and i32 %29, 50331648
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.14
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.14
  %30 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %31 = load %struct.sv*, %struct.sv** %30, align 8
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %31, i32 0, i32 2
  %32 = load i32, i32* %sv_flags17, align 4
  %and18 = and i32 %32, 65536
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %33 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %34 = load %struct.sv*, %struct.sv** %33, align 8
  %sv_any20 = getelementptr inbounds %struct.sv, %struct.sv* %34, i32 0, i32 0
  %35 = load i8*, i8** %sv_any20, align 8
  %36 = bitcast i8* %35 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %36, i32 0, i32 3
  %37 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  %38 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %39 = load %struct.sv*, %struct.sv** %38, align 8
  %call21 = call i64 @Perl_sv_2iv(%struct.sv* %39)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %37, %cond.true ], [ %call21, %cond.false ]
  %conv22 = trunc i64 %cond to i32
  store i32 %conv22, i32* %result, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %40 = load i32, i32* @PL_scopestack_ix, align 4
  %41 = load i32, i32* %oldscopeix, align 4
  %cmp23 = icmp sgt i32 %40, %41
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @Perl_pop_scope()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load i32, i32* %oldsaveix, align 4
  call void @Perl_leave_scope(i32 %42)
  %43 = load i32, i32* %result, align 4
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal i32 @sortcv_stacked(%struct.sv* %a, %struct.sv* %b) #0 {
entry:
  %a.addr = alloca %struct.sv*, align 8
  %b.addr = alloca %struct.sv*, align 8
  %oldsaveix = alloca i32, align 4
  %oldscopeix = alloca i32, align 4
  %result = alloca i32, align 4
  %av = alloca %struct.av*, align 8
  %ary = alloca %struct.sv**, align 8
  store %struct.sv* %a, %struct.sv** %a.addr, align 8
  store %struct.sv* %b, %struct.sv** %b.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  store i32 %0, i32* %oldsaveix, align 4
  %1 = load i32, i32* @PL_scopestack_ix, align 4
  store i32 %1, i32* %oldscopeix, align 4
  %2 = load %struct.gv*, %struct.gv** @PL_defgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %2, i32 0, i32 0
  %3 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %3, i32 0, i32 7
  %4 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_av = getelementptr inbounds %struct.gp, %struct.gp* %4, i32 0, i32 4
  %5 = load %struct.av*, %struct.av** %gp_av, align 8
  store %struct.av* %5, %struct.av** %av, align 8
  %6 = load %struct.av*, %struct.av** %av, align 8
  %sv_any1 = getelementptr inbounds %struct.av, %struct.av* %6, i32 0, i32 0
  %7 = load %struct.xpvav*, %struct.xpvav** %sv_any1, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %7, i32 0, i32 2
  %8 = load i64, i64* %xav_max, align 8
  %cmp = icmp slt i64 %8, 1
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %9 = load %struct.av*, %struct.av** %av, align 8
  %sv_any2 = getelementptr inbounds %struct.av, %struct.av* %9, i32 0, i32 0
  %10 = load %struct.xpvav*, %struct.xpvav** %sv_any2, align 8
  %xav_alloc = getelementptr inbounds %struct.xpvav, %struct.xpvav* %10, i32 0, i32 7
  %11 = load %struct.sv**, %struct.sv*** %xav_alloc, align 8
  store %struct.sv** %11, %struct.sv*** %ary, align 8
  %12 = load %struct.av*, %struct.av** %av, align 8
  %sv_any3 = getelementptr inbounds %struct.av, %struct.av* %12, i32 0, i32 0
  %13 = load %struct.xpvav*, %struct.xpvav** %sv_any3, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %13, i32 0, i32 0
  %14 = load i8*, i8** %xav_array, align 8
  %15 = bitcast i8* %14 to %struct.sv**
  %16 = load %struct.sv**, %struct.sv*** %ary, align 8
  %cmp4 = icmp ne %struct.sv** %15, %16
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %17 = load %struct.av*, %struct.av** %av, align 8
  %sv_any6 = getelementptr inbounds %struct.av, %struct.av* %17, i32 0, i32 0
  %18 = load %struct.xpvav*, %struct.xpvav** %sv_any6, align 8
  %xav_array7 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %18, i32 0, i32 0
  %19 = load i8*, i8** %xav_array7, align 8
  %20 = bitcast i8* %19 to %struct.sv**
  %21 = load %struct.av*, %struct.av** %av, align 8
  %sv_any8 = getelementptr inbounds %struct.av, %struct.av* %21, i32 0, i32 0
  %22 = load %struct.xpvav*, %struct.xpvav** %sv_any8, align 8
  %xav_alloc9 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %22, i32 0, i32 7
  %23 = load %struct.sv**, %struct.sv*** %xav_alloc9, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %20 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %24 = load %struct.av*, %struct.av** %av, align 8
  %sv_any10 = getelementptr inbounds %struct.av, %struct.av* %24, i32 0, i32 0
  %25 = load %struct.xpvav*, %struct.xpvav** %sv_any10, align 8
  %xav_max11 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %25, i32 0, i32 2
  %26 = load i64, i64* %xav_max11, align 8
  %add = add nsw i64 %26, %sub.ptr.div
  store i64 %add, i64* %xav_max11, align 8
  %27 = load %struct.sv**, %struct.sv*** %ary, align 8
  %28 = bitcast %struct.sv** %27 to i8*
  %29 = load %struct.av*, %struct.av** %av, align 8
  %sv_any12 = getelementptr inbounds %struct.av, %struct.av* %29, i32 0, i32 0
  %30 = load %struct.xpvav*, %struct.xpvav** %sv_any12, align 8
  %31 = bitcast %struct.xpvav* %30 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %31, i32 0, i32 0
  store i8* %28, i8** %xpv_pv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %32 = load %struct.av*, %struct.av** %av, align 8
  %sv_any13 = getelementptr inbounds %struct.av, %struct.av* %32, i32 0, i32 0
  %33 = load %struct.xpvav*, %struct.xpvav** %sv_any13, align 8
  %xav_max14 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %33, i32 0, i32 2
  %34 = load i64, i64* %xav_max14, align 8
  %cmp15 = icmp slt i64 %34, 1
  br i1 %cmp15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end
  %35 = load %struct.av*, %struct.av** %av, align 8
  %sv_any17 = getelementptr inbounds %struct.av, %struct.av* %35, i32 0, i32 0
  %36 = load %struct.xpvav*, %struct.xpvav** %sv_any17, align 8
  %xav_max18 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %36, i32 0, i32 2
  store i64 1, i64* %xav_max18, align 8
  %37 = load %struct.sv**, %struct.sv*** %ary, align 8
  %38 = bitcast %struct.sv** %37 to i8*
  %call = call i8* @Perl_safesysrealloc(i8* %38, i64 16)
  %39 = bitcast i8* %call to %struct.sv**
  store %struct.sv** %39, %struct.sv*** %ary, align 8
  %40 = load %struct.sv**, %struct.sv*** %ary, align 8
  %41 = bitcast %struct.sv** %40 to i8*
  %42 = load %struct.av*, %struct.av** %av, align 8
  %sv_any19 = getelementptr inbounds %struct.av, %struct.av* %42, i32 0, i32 0
  %43 = load %struct.xpvav*, %struct.xpvav** %sv_any19, align 8
  %44 = bitcast %struct.xpvav* %43 to %struct.xpv*
  %xpv_pv20 = getelementptr inbounds %struct.xpv, %struct.xpv* %44, i32 0, i32 0
  store i8* %41, i8** %xpv_pv20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %if.end
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %entry
  %45 = load %struct.av*, %struct.av** %av, align 8
  %sv_any23 = getelementptr inbounds %struct.av, %struct.av* %45, i32 0, i32 0
  %46 = load %struct.xpvav*, %struct.xpvav** %sv_any23, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %46, i32 0, i32 1
  store i64 1, i64* %xav_fill, align 8
  %47 = load %struct.sv*, %struct.sv** %a.addr, align 8
  %48 = load %struct.av*, %struct.av** %av, align 8
  %sv_any24 = getelementptr inbounds %struct.av, %struct.av* %48, i32 0, i32 0
  %49 = load %struct.xpvav*, %struct.xpvav** %sv_any24, align 8
  %xav_array25 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %49, i32 0, i32 0
  %50 = load i8*, i8** %xav_array25, align 8
  %51 = bitcast i8* %50 to %struct.sv**
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %51, i64 0
  store %struct.sv* %47, %struct.sv** %arrayidx, align 8
  %52 = load %struct.sv*, %struct.sv** %b.addr, align 8
  %53 = load %struct.av*, %struct.av** %av, align 8
  %sv_any26 = getelementptr inbounds %struct.av, %struct.av* %53, i32 0, i32 0
  %54 = load %struct.xpvav*, %struct.xpvav** %sv_any26, align 8
  %xav_array27 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %54, i32 0, i32 0
  %55 = load i8*, i8** %xav_array27, align 8
  %56 = bitcast i8* %55 to %struct.sv**
  %arrayidx28 = getelementptr inbounds %struct.sv*, %struct.sv** %56, i64 1
  store %struct.sv* %52, %struct.sv** %arrayidx28, align 8
  %57 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  store %struct.sv** %57, %struct.sv*** @PL_stack_sp, align 8
  %58 = load %struct.op*, %struct.op** @PL_sortcop, align 8
  store %struct.op* %58, %struct.op** @PL_op, align 8
  %59 = load i32 ()*, i32 ()** @PL_runops, align 8
  %call29 = call i32 %59()
  %60 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %61 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %61, i64 1
  %cmp30 = icmp ne %struct.sv** %60, %add.ptr
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.22
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.22
  %62 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %63 = load %struct.sv*, %struct.sv** %62, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %63, i32 0, i32 2
  %64 = load i32, i32* %sv_flags, align 4
  %and = and i32 %64, 50331648
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.end.32
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.32
  %65 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %66 = load %struct.sv*, %struct.sv** %65, align 8
  %sv_flags35 = getelementptr inbounds %struct.sv, %struct.sv* %66, i32 0, i32 2
  %67 = load i32, i32* %sv_flags35, align 4
  %and36 = and i32 %67, 65536
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.34
  %68 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %69 = load %struct.sv*, %struct.sv** %68, align 8
  %sv_any38 = getelementptr inbounds %struct.sv, %struct.sv* %69, i32 0, i32 0
  %70 = load i8*, i8** %sv_any38, align 8
  %71 = bitcast i8* %70 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %71, i32 0, i32 3
  %72 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.34
  %73 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %74 = load %struct.sv*, %struct.sv** %73, align 8
  %call39 = call i64 @Perl_sv_2iv(%struct.sv* %74)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %72, %cond.true ], [ %call39, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %result, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %75 = load i32, i32* @PL_scopestack_ix, align 4
  %76 = load i32, i32* %oldscopeix, align 4
  %cmp40 = icmp sgt i32 %75, %76
  br i1 %cmp40, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @Perl_pop_scope()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %77 = load i32, i32* %oldsaveix, align 4
  call void @Perl_leave_scope(i32 %77)
  %78 = load i32, i32* %result, align 4
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define internal i32 @sortcv(%struct.sv* %a, %struct.sv* %b) #0 {
entry:
  %a.addr = alloca %struct.sv*, align 8
  %b.addr = alloca %struct.sv*, align 8
  %oldsaveix = alloca i32, align 4
  %oldscopeix = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.sv* %a, %struct.sv** %a.addr, align 8
  store %struct.sv* %b, %struct.sv** %b.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  store i32 %0, i32* %oldsaveix, align 4
  %1 = load i32, i32* @PL_scopestack_ix, align 4
  store i32 %1, i32* %oldscopeix, align 4
  %2 = load %struct.sv*, %struct.sv** %a.addr, align 8
  %3 = load %struct.gv*, %struct.gv** @PL_firstgv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %3, i32 0, i32 0
  %4 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %4, i32 0, i32 7
  %5 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %5, i32 0, i32 0
  store %struct.sv* %2, %struct.sv** %gp_sv, align 8
  %6 = load %struct.sv*, %struct.sv** %b.addr, align 8
  %7 = load %struct.gv*, %struct.gv** @PL_secondgv, align 8
  %sv_any1 = getelementptr inbounds %struct.gv, %struct.gv* %7, i32 0, i32 0
  %8 = load %struct.xpvgv*, %struct.xpvgv** %sv_any1, align 8
  %xgv_gp2 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %8, i32 0, i32 7
  %9 = load %struct.gp*, %struct.gp** %xgv_gp2, align 8
  %gp_sv3 = getelementptr inbounds %struct.gp, %struct.gp* %9, i32 0, i32 0
  store %struct.sv* %6, %struct.sv** %gp_sv3, align 8
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  store %struct.sv** %10, %struct.sv*** @PL_stack_sp, align 8
  %11 = load %struct.op*, %struct.op** @PL_sortcop, align 8
  store %struct.op* %11, %struct.op** @PL_op, align 8
  %12 = load i32 ()*, i32 ()** @PL_runops, align 8
  %call = call i32 %12()
  %13 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %14 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %14, i64 1
  %cmp = icmp ne %struct.sv** %13, %add.ptr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %16 = load %struct.sv*, %struct.sv** %15, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags, align 4
  %and = and i32 %17, 50331648
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %18 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %19 = load %struct.sv*, %struct.sv** %18, align 8
  %sv_flags6 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 2
  %20 = load i32, i32* %sv_flags6, align 4
  %and7 = and i32 %20, 65536
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %21 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %22 = load %struct.sv*, %struct.sv** %21, align 8
  %sv_any9 = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 0
  %23 = load i8*, i8** %sv_any9, align 8
  %24 = bitcast i8* %23 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %24, i32 0, i32 3
  %25 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  %26 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %27 = load %struct.sv*, %struct.sv** %26, align 8
  %call10 = call i64 @Perl_sv_2iv(%struct.sv* %27)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %25, %cond.true ], [ %call10, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %result, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %28 = load i32, i32* @PL_scopestack_ix, align 4
  %29 = load i32, i32* %oldscopeix, align 4
  %cmp11 = icmp sgt i32 %28, %29
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @Perl_pop_scope()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %30 = load i32, i32* %oldsaveix, align 4
  call void @Perl_leave_scope(i32 %30)
  %31 = load i32, i32* %result, align 4
  ret i32 %31
}

declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #1

declare %struct._PerlIO** @Perl_PerlIO_stderr() #1

declare void @Perl_my_exit(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @amagic_i_ncmp(%struct.sv* %a, %struct.sv* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.sv*, align 8
  %b.addr = alloca %struct.sv*, align 8
  %tmpsv = alloca %struct.sv*, align 8
  %d = alloca double, align 8
  %i = alloca i32, align 4
  store %struct.sv* %a, %struct.sv** %a.addr, align 8
  store %struct.sv* %b, %struct.sv** %b.addr, align 8
  store %struct.sv* null, %struct.sv** %tmpsv, align 8
  %0 = load i64, i64* @PL_amagic_generation, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** %a.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %1, i32 0, i32 2
  %2 = load i32, i32* %sv_flags, align 4
  %and = and i32 %2, 268435456
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load %struct.sv*, %struct.sv** %b.addr, align 8
  %sv_flags2 = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags2, align 4
  %and3 = and i32 %4, 268435456
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %lor.lhs.false, %if.then
  %5 = load %struct.sv*, %struct.sv** %a.addr, align 8
  %6 = load %struct.sv*, %struct.sv** %b.addr, align 8
  %call = call %struct.sv* @Perl_amagic_call(%struct.sv* %5, %struct.sv* %6, i32 34, i32 0)
  store %struct.sv* %call, %struct.sv** %tmpsv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %lor.lhs.false
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %7 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %tobool7 = icmp ne %struct.sv* %7, null
  br i1 %tobool7, label %if.then.8, label %if.end.30

if.then.8:                                        ; preds = %if.end.6
  %8 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_flags9 = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 2
  %9 = load i32, i32* %sv_flags9, align 4
  %and10 = and i32 %9, 65536
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.then.8
  %10 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  %11 = load i8*, i8** %sv_any, align 8
  %12 = bitcast i8* %11 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %12, i32 0, i32 3
  %13 = load i64, i64* %xiv_iv, align 8
  %conv = trunc i64 %13 to i32
  store i32 %conv, i32* %i, align 4
  %14 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.12
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.12
  %15 = load i32, i32* %i, align 4
  %tobool16 = icmp ne i32 %15, 0
  %cond = select i1 %tobool16, i32 -1, i32 0
  store i32 %cond, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.8
  %16 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_flags18 = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags18, align 4
  %and19 = and i32 %17, 131072
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %18 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any21 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 0
  %19 = load i8*, i8** %sv_any21, align 8
  %20 = bitcast i8* %19 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %20, i32 0, i32 4
  %21 = load double, double* %xnv_nv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  %22 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %call22 = call double @Perl_sv_2nv(%struct.sv* %22)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond23 = phi double [ %21, %cond.true ], [ %call22, %cond.false ]
  store double %cond23, double* %d, align 8
  %23 = load double, double* %d, align 8
  %cmp24 = fcmp ogt double %23, 0.000000e+00
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %cond.end
  %24 = load double, double* %d, align 8
  %tobool28 = fcmp une double %24, 0.000000e+00
  %cond29 = select i1 %tobool28, i32 -1, i32 0
  store i32 %cond29, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.6
  %25 = load %struct.sv*, %struct.sv** %a.addr, align 8
  %26 = load %struct.sv*, %struct.sv** %b.addr, align 8
  %call31 = call i32 @sv_i_ncmp(%struct.sv* %25, %struct.sv* %26)
  store i32 %call31, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.end.27, %if.then.26, %if.end.15, %if.then.14
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @sv_i_ncmp(%struct.sv* %a, %struct.sv* %b) #0 {
entry:
  %a.addr = alloca %struct.sv*, align 8
  %b.addr = alloca %struct.sv*, align 8
  %iv1 = alloca i64, align 8
  %iv2 = alloca i64, align 8
  store %struct.sv* %a, %struct.sv** %a.addr, align 8
  store %struct.sv* %b, %struct.sv** %b.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %a.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %a.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %4, i32 0, i32 3
  %5 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.sv*, %struct.sv** %a.addr, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %call, %cond.false ]
  store i64 %cond, i64* %iv1, align 8
  %7 = load %struct.sv*, %struct.sv** %b.addr, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 2
  %8 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %8, 65536
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %cond.true.4, label %cond.false.7

cond.true.4:                                      ; preds = %cond.end
  %9 = load %struct.sv*, %struct.sv** %b.addr, align 8
  %sv_any5 = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 0
  %10 = load i8*, i8** %sv_any5, align 8
  %11 = bitcast i8* %10 to %struct.xpviv*
  %xiv_iv6 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %11, i32 0, i32 3
  %12 = load i64, i64* %xiv_iv6, align 8
  br label %cond.end.9

cond.false.7:                                     ; preds = %cond.end
  %13 = load %struct.sv*, %struct.sv** %b.addr, align 8
  %call8 = call i64 @Perl_sv_2iv(%struct.sv* %13)
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.7, %cond.true.4
  %cond10 = phi i64 [ %12, %cond.true.4 ], [ %call8, %cond.false.7 ]
  store i64 %cond10, i64* %iv2, align 8
  %14 = load i64, i64* %iv1, align 8
  %15 = load i64, i64* %iv2, align 8
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end.9
  br label %cond.end.15

cond.false.12:                                    ; preds = %cond.end.9
  %16 = load i64, i64* %iv1, align 8
  %17 = load i64, i64* %iv2, align 8
  %cmp13 = icmp sgt i64 %16, %17
  %cond14 = select i1 %cmp13, i32 1, i32 0
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.12, %cond.true.11
  %cond16 = phi i32 [ -1, %cond.true.11 ], [ %cond14, %cond.false.12 ]
  ret i32 %cond16
}

; Function Attrs: nounwind uwtable
define internal i32 @amagic_ncmp(%struct.sv* %a, %struct.sv* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.sv*, align 8
  %b.addr = alloca %struct.sv*, align 8
  %tmpsv = alloca %struct.sv*, align 8
  %d = alloca double, align 8
  %i = alloca i32, align 4
  store %struct.sv* %a, %struct.sv** %a.addr, align 8
  store %struct.sv* %b, %struct.sv** %b.addr, align 8
  store %struct.sv* null, %struct.sv** %tmpsv, align 8
  %0 = load i64, i64* @PL_amagic_generation, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** %a.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %1, i32 0, i32 2
  %2 = load i32, i32* %sv_flags, align 4
  %and = and i32 %2, 268435456
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load %struct.sv*, %struct.sv** %b.addr, align 8
  %sv_flags2 = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags2, align 4
  %and3 = and i32 %4, 268435456
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %lor.lhs.false, %if.then
  %5 = load %struct.sv*, %struct.sv** %a.addr, align 8
  %6 = load %struct.sv*, %struct.sv** %b.addr, align 8
  %call = call %struct.sv* @Perl_amagic_call(%struct.sv* %5, %struct.sv* %6, i32 34, i32 0)
  store %struct.sv* %call, %struct.sv** %tmpsv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %lor.lhs.false
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %7 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %tobool7 = icmp ne %struct.sv* %7, null
  br i1 %tobool7, label %if.then.8, label %if.end.30

if.then.8:                                        ; preds = %if.end.6
  %8 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_flags9 = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 2
  %9 = load i32, i32* %sv_flags9, align 4
  %and10 = and i32 %9, 65536
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.then.8
  %10 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  %11 = load i8*, i8** %sv_any, align 8
  %12 = bitcast i8* %11 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %12, i32 0, i32 3
  %13 = load i64, i64* %xiv_iv, align 8
  %conv = trunc i64 %13 to i32
  store i32 %conv, i32* %i, align 4
  %14 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.12
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.12
  %15 = load i32, i32* %i, align 4
  %tobool16 = icmp ne i32 %15, 0
  %cond = select i1 %tobool16, i32 -1, i32 0
  store i32 %cond, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.8
  %16 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_flags18 = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags18, align 4
  %and19 = and i32 %17, 131072
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %18 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any21 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 0
  %19 = load i8*, i8** %sv_any21, align 8
  %20 = bitcast i8* %19 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %20, i32 0, i32 4
  %21 = load double, double* %xnv_nv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  %22 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %call22 = call double @Perl_sv_2nv(%struct.sv* %22)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond23 = phi double [ %21, %cond.true ], [ %call22, %cond.false ]
  store double %cond23, double* %d, align 8
  %23 = load double, double* %d, align 8
  %cmp24 = fcmp ogt double %23, 0.000000e+00
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %cond.end
  %24 = load double, double* %d, align 8
  %tobool28 = fcmp une double %24, 0.000000e+00
  %cond29 = select i1 %tobool28, i32 -1, i32 0
  store i32 %cond29, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.6
  %25 = load %struct.sv*, %struct.sv** %a.addr, align 8
  %26 = load %struct.sv*, %struct.sv** %b.addr, align 8
  %call31 = call i32 @sv_ncmp(%struct.sv* %25, %struct.sv* %26)
  store i32 %call31, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.end.27, %if.then.26, %if.end.15, %if.then.14
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @sv_ncmp(%struct.sv* %a, %struct.sv* %b) #0 {
entry:
  %a.addr = alloca %struct.sv*, align 8
  %b.addr = alloca %struct.sv*, align 8
  %nv1 = alloca double, align 8
  %nv2 = alloca double, align 8
  store %struct.sv* %a, %struct.sv** %a.addr, align 8
  store %struct.sv* %b, %struct.sv** %b.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %a.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 131072
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %a.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %4, i32 0, i32 4
  %5 = load double, double* %xnv_nv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.sv*, %struct.sv** %a.addr, align 8
  %call = call double @Perl_sv_2nv(%struct.sv* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %5, %cond.true ], [ %call, %cond.false ]
  store double %cond, double* %nv1, align 8
  %7 = load %struct.sv*, %struct.sv** %b.addr, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 2
  %8 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %8, 131072
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %cond.true.4, label %cond.false.7

cond.true.4:                                      ; preds = %cond.end
  %9 = load %struct.sv*, %struct.sv** %b.addr, align 8
  %sv_any5 = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 0
  %10 = load i8*, i8** %sv_any5, align 8
  %11 = bitcast i8* %10 to %struct.xpvnv*
  %xnv_nv6 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %11, i32 0, i32 4
  %12 = load double, double* %xnv_nv6, align 8
  br label %cond.end.9

cond.false.7:                                     ; preds = %cond.end
  %13 = load %struct.sv*, %struct.sv** %b.addr, align 8
  %call8 = call double @Perl_sv_2nv(%struct.sv* %13)
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.7, %cond.true.4
  %cond10 = phi double [ %12, %cond.true.4 ], [ %call8, %cond.false.7 ]
  store double %cond10, double* %nv2, align 8
  %14 = load double, double* %nv1, align 8
  %15 = load double, double* %nv2, align 8
  %cmp = fcmp olt double %14, %15
  br i1 %cmp, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end.9
  br label %cond.end.15

cond.false.12:                                    ; preds = %cond.end.9
  %16 = load double, double* %nv1, align 8
  %17 = load double, double* %nv2, align 8
  %cmp13 = fcmp ogt double %16, %17
  %cond14 = select i1 %cmp13, i32 1, i32 0
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.12, %cond.true.11
  %cond16 = phi i32 [ -1, %cond.true.11 ], [ %cond14, %cond.false.12 ]
  ret i32 %cond16
}

; Function Attrs: nounwind uwtable
define internal i32 @amagic_cmp(%struct.sv* %str1, %struct.sv* %str2) #0 {
entry:
  %retval = alloca i32, align 4
  %str1.addr = alloca %struct.sv*, align 8
  %str2.addr = alloca %struct.sv*, align 8
  %tmpsv = alloca %struct.sv*, align 8
  %d = alloca double, align 8
  %i = alloca i32, align 4
  store %struct.sv* %str1, %struct.sv** %str1.addr, align 8
  store %struct.sv* %str2, %struct.sv** %str2.addr, align 8
  store %struct.sv* null, %struct.sv** %tmpsv, align 8
  %0 = load i64, i64* @PL_amagic_generation, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** %str1.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %1, i32 0, i32 2
  %2 = load i32, i32* %sv_flags, align 4
  %and = and i32 %2, 268435456
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load %struct.sv*, %struct.sv** %str2.addr, align 8
  %sv_flags2 = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags2, align 4
  %and3 = and i32 %4, 268435456
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %lor.lhs.false, %if.then
  %5 = load %struct.sv*, %struct.sv** %str1.addr, align 8
  %6 = load %struct.sv*, %struct.sv** %str2.addr, align 8
  %call = call %struct.sv* @Perl_amagic_call(%struct.sv* %5, %struct.sv* %6, i32 35, i32 0)
  store %struct.sv* %call, %struct.sv** %tmpsv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %lor.lhs.false
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %7 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %tobool7 = icmp ne %struct.sv* %7, null
  br i1 %tobool7, label %if.then.8, label %if.end.30

if.then.8:                                        ; preds = %if.end.6
  %8 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_flags9 = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 2
  %9 = load i32, i32* %sv_flags9, align 4
  %and10 = and i32 %9, 65536
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.then.8
  %10 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  %11 = load i8*, i8** %sv_any, align 8
  %12 = bitcast i8* %11 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %12, i32 0, i32 3
  %13 = load i64, i64* %xiv_iv, align 8
  %conv = trunc i64 %13 to i32
  store i32 %conv, i32* %i, align 4
  %14 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.12
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.12
  %15 = load i32, i32* %i, align 4
  %tobool16 = icmp ne i32 %15, 0
  %cond = select i1 %tobool16, i32 -1, i32 0
  store i32 %cond, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.8
  %16 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_flags18 = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags18, align 4
  %and19 = and i32 %17, 131072
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %18 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %sv_any21 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 0
  %19 = load i8*, i8** %sv_any21, align 8
  %20 = bitcast i8* %19 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %20, i32 0, i32 4
  %21 = load double, double* %xnv_nv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  %22 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  %call22 = call double @Perl_sv_2nv(%struct.sv* %22)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond23 = phi double [ %21, %cond.true ], [ %call22, %cond.false ]
  store double %cond23, double* %d, align 8
  %23 = load double, double* %d, align 8
  %cmp24 = fcmp ogt double %23, 0.000000e+00
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %cond.end
  %24 = load double, double* %d, align 8
  %tobool28 = fcmp une double %24, 0.000000e+00
  %cond29 = select i1 %tobool28, i32 -1, i32 0
  store i32 %cond29, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.6
  %25 = load %struct.sv*, %struct.sv** %str1.addr, align 8
  %26 = load %struct.sv*, %struct.sv** %str2.addr, align 8
  %call31 = call i32 @Perl_sv_cmp(%struct.sv* %25, %struct.sv* %26)
  store i32 %call31, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.end.27, %if.then.26, %if.end.15, %if.then.14
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare i32 @Perl_sv_cmp(%struct.sv*, %struct.sv*) #1

declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

declare void @Perl_av_clear(%struct.av*) #1

declare void @Perl_av_extend(%struct.av*, i32) #1

declare %struct.sv** @Perl_av_store(%struct.av*, i32, %struct.sv*) #1

declare i32 @Perl_mg_set(%struct.sv*) #1

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

declare void @Perl_pop_scope() #1

; Function Attrs: nounwind uwtable
define internal i32 @cmp_desc(%struct.sv* %a, %struct.sv* %b) #0 {
entry:
  %a.addr = alloca %struct.sv*, align 8
  %b.addr = alloca %struct.sv*, align 8
  store %struct.sv* %a, %struct.sv** %a.addr, align 8
  store %struct.sv* %b, %struct.sv** %b.addr, align 8
  %0 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8
  %1 = load %struct.sv*, %struct.sv** %a.addr, align 8
  %2 = load %struct.sv*, %struct.sv** %b.addr, align 8
  %call = call i32 %0(%struct.sv* %1, %struct.sv* %2)
  %sub = sub nsw i32 0, %call
  ret i32 %sub
}

declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @dynprep(%struct.sv** %list1, %struct.sv** %list2, i64 %nmemb, i32 (%struct.sv*, %struct.sv*)* %cmp) #0 {
entry:
  %list1.addr = alloca %struct.sv**, align 8
  %list2.addr = alloca %struct.sv**, align 8
  %nmemb.addr = alloca i64, align 8
  %cmp.addr = alloca i32 (%struct.sv*, %struct.sv*)*, align 8
  %sense = alloca i32, align 4
  %b = alloca %struct.sv**, align 8
  %p = alloca %struct.sv**, align 8
  %q = alloca %struct.sv**, align 8
  %t = alloca %struct.sv**, align 8
  %p2 = alloca %struct.sv**, align 8
  %c = alloca %struct.sv*, align 8
  %last = alloca %struct.sv**, align 8
  %r = alloca %struct.sv**, align 8
  %savep = alloca %struct.sv**, align 8
  %runs = alloca i64, align 8
  store %struct.sv** %list1, %struct.sv*** %list1.addr, align 8
  store %struct.sv** %list2, %struct.sv*** %list2.addr, align 8
  store i64 %nmemb, i64* %nmemb.addr, align 8
  store i32 (%struct.sv*, %struct.sv*)* %cmp, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  store i64 0, i64* %runs, align 8
  %0 = load %struct.sv**, %struct.sv*** %list1.addr, align 8
  store %struct.sv** %0, %struct.sv*** %b, align 8
  %1 = load %struct.sv**, %struct.sv*** %b, align 8
  %2 = load i64, i64* %nmemb.addr, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %2
  store %struct.sv** %add.ptr, %struct.sv*** %last, align 8
  %3 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  %4 = load %struct.sv**, %struct.sv*** %b, align 8
  %5 = load %struct.sv*, %struct.sv** %4, align 8
  %6 = load %struct.sv**, %struct.sv*** %b, align 8
  %add.ptr1 = getelementptr inbounds %struct.sv*, %struct.sv** %6, i64 1
  %7 = load %struct.sv*, %struct.sv** %add.ptr1, align 8
  %call = call i32 %3(%struct.sv* %5, %struct.sv* %7)
  %cmp2 = icmp sgt i32 %call, 0
  %conv = zext i1 %cmp2 to i32
  store i32 %conv, i32* %sense, align 4
  %8 = load %struct.sv**, %struct.sv*** %list2.addr, align 8
  store %struct.sv** %8, %struct.sv*** %p2, align 8
  br label %for.cond

for.cond:                                         ; preds = %do.end, %entry
  %9 = load %struct.sv**, %struct.sv*** %b, align 8
  %10 = load %struct.sv**, %struct.sv*** %last, align 8
  %cmp3 = icmp ult %struct.sv** %9, %10
  br i1 %cmp3, label %for.body, label %for.end.107

for.body:                                         ; preds = %for.cond
  %11 = load %struct.sv**, %struct.sv*** %b, align 8
  %add.ptr5 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i64 2
  store %struct.sv** %add.ptr5, %struct.sv*** %p, align 8
  %12 = load %struct.sv**, %struct.sv*** %p, align 8
  store %struct.sv** %12, %struct.sv*** %t, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %13 = load %struct.sv**, %struct.sv*** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %13, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %p, align 8
  %14 = load %struct.sv**, %struct.sv*** %last, align 8
  %cmp7 = icmp ult %struct.sv** %incdec.ptr, %14
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %15 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  %16 = load %struct.sv**, %struct.sv*** %t, align 8
  %17 = load %struct.sv*, %struct.sv** %16, align 8
  %18 = load %struct.sv**, %struct.sv*** %p, align 8
  %19 = load %struct.sv*, %struct.sv** %18, align 8
  %call10 = call i32 %15(%struct.sv* %17, %struct.sv* %19)
  %cmp11 = icmp sgt i32 %call10, 0
  %conv12 = zext i1 %cmp11 to i32
  %20 = load i32, i32* %sense, align 4
  %cmp13 = icmp ne i32 %conv12, %20
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.9
  br label %for.end

if.end:                                           ; preds = %for.body.9
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load %struct.sv**, %struct.sv*** %p, align 8
  %incdec.ptr15 = getelementptr inbounds %struct.sv*, %struct.sv** %21, i32 1
  store %struct.sv** %incdec.ptr15, %struct.sv*** %p, align 8
  store %struct.sv** %incdec.ptr15, %struct.sv*** %t, align 8
  br label %for.cond.6

for.end:                                          ; preds = %if.then, %for.cond.6
  %22 = load %struct.sv**, %struct.sv*** %b, align 8
  store %struct.sv** %22, %struct.sv*** %q, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end
  %23 = load %struct.sv**, %struct.sv*** %b, align 8
  %add.ptr16 = getelementptr inbounds %struct.sv*, %struct.sv** %23, i64 16
  store %struct.sv** %add.ptr16, %struct.sv*** %r, align 8
  store %struct.sv** %add.ptr16, %struct.sv*** %p, align 8
  %24 = load %struct.sv**, %struct.sv*** %r, align 8
  %25 = load %struct.sv**, %struct.sv*** %t, align 8
  %cmp17 = icmp uge %struct.sv** %24, %25
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %do.body
  %26 = load %struct.sv**, %struct.sv*** %t, align 8
  store %struct.sv** %26, %struct.sv*** %r, align 8
  store %struct.sv** %26, %struct.sv*** %p, align 8
  br label %if.end.48

if.else:                                          ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %27 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  %28 = load %struct.sv**, %struct.sv*** %p, align 8
  %add.ptr20 = getelementptr inbounds %struct.sv*, %struct.sv** %28, i64 -1
  %29 = load %struct.sv*, %struct.sv** %add.ptr20, align 8
  %30 = load %struct.sv**, %struct.sv*** %p, align 8
  %31 = load %struct.sv*, %struct.sv** %30, align 8
  %call21 = call i32 %27(%struct.sv* %29, %struct.sv* %31)
  %cmp22 = icmp sgt i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %32 = load i32, i32* %sense, align 4
  %cmp24 = icmp eq i32 %conv23, %32
  br i1 %cmp24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %33 = load %struct.sv**, %struct.sv*** %p, align 8
  %add.ptr26 = getelementptr inbounds %struct.sv*, %struct.sv** %33, i64 -2
  store %struct.sv** %add.ptr26, %struct.sv*** %p, align 8
  %34 = load %struct.sv**, %struct.sv*** %q, align 8
  %cmp27 = icmp ugt %struct.sv** %add.ptr26, %34
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %35 = phi i1 [ false, %while.cond ], [ %cmp27, %land.rhs ]
  br i1 %35, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %36 = load %struct.sv**, %struct.sv*** %p, align 8
  %37 = load %struct.sv**, %struct.sv*** %q, align 8
  %cmp29 = icmp ule %struct.sv** %36, %37
  br i1 %cmp29, label %if.then.31, label %if.end.47

if.then.31:                                       ; preds = %while.end
  %38 = load %struct.sv**, %struct.sv*** %r, align 8
  store %struct.sv** %38, %struct.sv*** %q, align 8
  store %struct.sv** %38, %struct.sv*** %p, align 8
  br label %while.cond.32

while.cond.32:                                    ; preds = %while.body.44, %if.then.31
  %39 = load %struct.sv**, %struct.sv*** %p, align 8
  %add.ptr33 = getelementptr inbounds %struct.sv*, %struct.sv** %39, i64 2
  store %struct.sv** %add.ptr33, %struct.sv*** %p, align 8
  %40 = load %struct.sv**, %struct.sv*** %t, align 8
  %cmp34 = icmp ult %struct.sv** %add.ptr33, %40
  br i1 %cmp34, label %land.rhs.36, label %land.end.43

land.rhs.36:                                      ; preds = %while.cond.32
  %41 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  %42 = load %struct.sv**, %struct.sv*** %p, align 8
  %add.ptr37 = getelementptr inbounds %struct.sv*, %struct.sv** %42, i64 -1
  %43 = load %struct.sv*, %struct.sv** %add.ptr37, align 8
  %44 = load %struct.sv**, %struct.sv*** %p, align 8
  %45 = load %struct.sv*, %struct.sv** %44, align 8
  %call38 = call i32 %41(%struct.sv* %43, %struct.sv* %45)
  %cmp39 = icmp sgt i32 %call38, 0
  %conv40 = zext i1 %cmp39 to i32
  %46 = load i32, i32* %sense, align 4
  %cmp41 = icmp eq i32 %conv40, %46
  br label %land.end.43

land.end.43:                                      ; preds = %land.rhs.36, %while.cond.32
  %47 = phi i1 [ false, %while.cond.32 ], [ %cmp41, %land.rhs.36 ]
  br i1 %47, label %while.body.44, label %while.end.45

while.body.44:                                    ; preds = %land.end.43
  %48 = load %struct.sv**, %struct.sv*** %p, align 8
  store %struct.sv** %48, %struct.sv*** %q, align 8
  br label %while.cond.32

while.end.45:                                     ; preds = %land.end.43
  %49 = load %struct.sv**, %struct.sv*** %q, align 8
  %add.ptr46 = getelementptr inbounds %struct.sv*, %struct.sv** %49, i64 2
  store %struct.sv** %add.ptr46, %struct.sv*** %p, align 8
  store %struct.sv** %add.ptr46, %struct.sv*** %r, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %while.end.45, %while.end
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.19
  %50 = load %struct.sv**, %struct.sv*** %q, align 8
  %51 = load %struct.sv**, %struct.sv*** %b, align 8
  %cmp49 = icmp ugt %struct.sv** %50, %51
  br i1 %cmp49, label %if.then.51, label %if.end.77

if.then.51:                                       ; preds = %if.end.48
  %52 = load %struct.sv**, %struct.sv*** %p, align 8
  store %struct.sv** %52, %struct.sv*** %savep, align 8
  %53 = load %struct.sv**, %struct.sv*** %q, align 8
  %add.ptr52 = getelementptr inbounds %struct.sv*, %struct.sv** %53, i64 2
  store %struct.sv** %add.ptr52, %struct.sv*** %q, align 8
  store %struct.sv** %add.ptr52, %struct.sv*** %p, align 8
  %54 = load %struct.sv**, %struct.sv*** %p, align 8
  %55 = load %struct.sv**, %struct.sv*** %t, align 8
  %cmp53 = icmp eq %struct.sv** %54, %55
  br i1 %cmp53, label %land.lhs.true, label %if.end.66

land.lhs.true:                                    ; preds = %if.then.51
  %56 = load %struct.sv**, %struct.sv*** %t, align 8
  %add.ptr55 = getelementptr inbounds %struct.sv*, %struct.sv** %56, i64 1
  %57 = load %struct.sv**, %struct.sv*** %last, align 8
  %cmp56 = icmp eq %struct.sv** %add.ptr55, %57
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.66

land.lhs.true.58:                                 ; preds = %land.lhs.true
  %58 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %cmp.addr, align 8
  %59 = load %struct.sv**, %struct.sv*** %p, align 8
  %add.ptr59 = getelementptr inbounds %struct.sv*, %struct.sv** %59, i64 -1
  %60 = load %struct.sv*, %struct.sv** %add.ptr59, align 8
  %61 = load %struct.sv**, %struct.sv*** %p, align 8
  %62 = load %struct.sv*, %struct.sv** %61, align 8
  %call60 = call i32 %58(%struct.sv* %60, %struct.sv* %62)
  %cmp61 = icmp sgt i32 %call60, 0
  %conv62 = zext i1 %cmp61 to i32
  %63 = load i32, i32* %sense, align 4
  %cmp63 = icmp eq i32 %conv62, %63
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %land.lhs.true.58
  %64 = load %struct.sv**, %struct.sv*** %last, align 8
  store %struct.sv** %64, %struct.sv*** %q, align 8
  store %struct.sv** %64, %struct.sv*** %p, align 8
  store %struct.sv** %64, %struct.sv*** %r, align 8
  store %struct.sv** %64, %struct.sv*** %savep, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %land.lhs.true.58, %land.lhs.true, %if.then.51
  %65 = load %struct.sv**, %struct.sv*** %p2, align 8
  %66 = load %struct.sv**, %struct.sv*** %p, align 8
  %67 = load %struct.sv**, %struct.sv*** %b, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %66 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %67 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add.ptr67 = getelementptr inbounds %struct.sv*, %struct.sv** %65, i64 %sub.ptr.div
  %68 = load %struct.sv**, %struct.sv*** %p2, align 8
  %69 = bitcast %struct.sv** %68 to %struct.sv***
  store %struct.sv** %add.ptr67, %struct.sv*** %69, align 8
  store %struct.sv** %add.ptr67, %struct.sv*** %p2, align 8
  %70 = load i64, i64* %runs, align 8
  %inc = add nsw i64 %70, 1
  store i64 %inc, i64* %runs, align 8
  %71 = load i32, i32* %sense, align 4
  %tobool = icmp ne i32 %71, 0
  br i1 %tobool, label %if.then.68, label %if.end.76

if.then.68:                                       ; preds = %if.end.66
  br label %while.cond.69

while.cond.69:                                    ; preds = %while.body.73, %if.then.68
  %72 = load %struct.sv**, %struct.sv*** %b, align 8
  %73 = load %struct.sv**, %struct.sv*** %p, align 8
  %incdec.ptr70 = getelementptr inbounds %struct.sv*, %struct.sv** %73, i32 -1
  store %struct.sv** %incdec.ptr70, %struct.sv*** %p, align 8
  %cmp71 = icmp ult %struct.sv** %72, %incdec.ptr70
  br i1 %cmp71, label %while.body.73, label %while.end.75

while.body.73:                                    ; preds = %while.cond.69
  %74 = load %struct.sv**, %struct.sv*** %b, align 8
  %75 = load %struct.sv*, %struct.sv** %74, align 8
  store %struct.sv* %75, %struct.sv** %c, align 8
  %76 = load %struct.sv**, %struct.sv*** %p, align 8
  %77 = load %struct.sv*, %struct.sv** %76, align 8
  %78 = load %struct.sv**, %struct.sv*** %b, align 8
  %incdec.ptr74 = getelementptr inbounds %struct.sv*, %struct.sv** %78, i32 1
  store %struct.sv** %incdec.ptr74, %struct.sv*** %b, align 8
  store %struct.sv* %77, %struct.sv** %78, align 8
  %79 = load %struct.sv*, %struct.sv** %c, align 8
  %80 = load %struct.sv**, %struct.sv*** %p, align 8
  store %struct.sv* %79, %struct.sv** %80, align 8
  br label %while.cond.69

while.end.75:                                     ; preds = %while.cond.69
  br label %if.end.76

if.end.76:                                        ; preds = %while.end.75, %if.end.66
  %81 = load %struct.sv**, %struct.sv*** %savep, align 8
  store %struct.sv** %81, %struct.sv*** %p, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.48
  br label %while.cond.78

while.cond.78:                                    ; preds = %if.end.91, %if.end.77
  %82 = load %struct.sv**, %struct.sv*** %q, align 8
  %83 = load %struct.sv**, %struct.sv*** %p, align 8
  %cmp79 = icmp ult %struct.sv** %82, %83
  br i1 %cmp79, label %while.body.81, label %while.end.92

while.body.81:                                    ; preds = %while.cond.78
  %84 = load %struct.sv**, %struct.sv*** %p2, align 8
  %add.ptr82 = getelementptr inbounds %struct.sv*, %struct.sv** %84, i64 2
  %85 = load %struct.sv**, %struct.sv*** %p2, align 8
  %86 = bitcast %struct.sv** %85 to %struct.sv***
  store %struct.sv** %add.ptr82, %struct.sv*** %86, align 8
  store %struct.sv** %add.ptr82, %struct.sv*** %p2, align 8
  %87 = load i64, i64* %runs, align 8
  %inc83 = add nsw i64 %87, 1
  store i64 %inc83, i64* %runs, align 8
  %88 = load i32, i32* %sense, align 4
  %tobool84 = icmp ne i32 %88, 0
  br i1 %tobool84, label %if.then.85, label %if.else.89

if.then.85:                                       ; preds = %while.body.81
  %89 = load %struct.sv**, %struct.sv*** %q, align 8
  %incdec.ptr86 = getelementptr inbounds %struct.sv*, %struct.sv** %89, i32 1
  store %struct.sv** %incdec.ptr86, %struct.sv*** %q, align 8
  %90 = load %struct.sv*, %struct.sv** %89, align 8
  store %struct.sv* %90, %struct.sv** %c, align 8
  %91 = load %struct.sv**, %struct.sv*** %q, align 8
  %92 = load %struct.sv*, %struct.sv** %91, align 8
  %93 = load %struct.sv**, %struct.sv*** %q, align 8
  %add.ptr87 = getelementptr inbounds %struct.sv*, %struct.sv** %93, i64 -1
  store %struct.sv* %92, %struct.sv** %add.ptr87, align 8
  %94 = load %struct.sv*, %struct.sv** %c, align 8
  %95 = load %struct.sv**, %struct.sv*** %q, align 8
  %incdec.ptr88 = getelementptr inbounds %struct.sv*, %struct.sv** %95, i32 1
  store %struct.sv** %incdec.ptr88, %struct.sv*** %q, align 8
  store %struct.sv* %94, %struct.sv** %95, align 8
  br label %if.end.91

if.else.89:                                       ; preds = %while.body.81
  %96 = load %struct.sv**, %struct.sv*** %q, align 8
  %add.ptr90 = getelementptr inbounds %struct.sv*, %struct.sv** %96, i64 2
  store %struct.sv** %add.ptr90, %struct.sv*** %q, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.89, %if.then.85
  br label %while.cond.78

while.end.92:                                     ; preds = %while.cond.78
  %97 = load %struct.sv**, %struct.sv*** %p, align 8
  store %struct.sv** %97, %struct.sv*** %b, align 8
  %98 = load %struct.sv**, %struct.sv*** %t, align 8
  %cmp93 = icmp eq %struct.sv** %97, %98
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.103

land.lhs.true.95:                                 ; preds = %while.end.92
  %99 = load %struct.sv**, %struct.sv*** %t, align 8
  %add.ptr96 = getelementptr inbounds %struct.sv*, %struct.sv** %99, i64 1
  %100 = load %struct.sv**, %struct.sv*** %last, align 8
  %cmp97 = icmp eq %struct.sv** %add.ptr96, %100
  br i1 %cmp97, label %if.then.99, label %if.end.103

if.then.99:                                       ; preds = %land.lhs.true.95
  %101 = load %struct.sv**, %struct.sv*** %p2, align 8
  %add.ptr100 = getelementptr inbounds %struct.sv*, %struct.sv** %101, i64 1
  %102 = load %struct.sv**, %struct.sv*** %p2, align 8
  %103 = bitcast %struct.sv** %102 to %struct.sv***
  store %struct.sv** %add.ptr100, %struct.sv*** %103, align 8
  %104 = load i64, i64* %runs, align 8
  %inc101 = add nsw i64 %104, 1
  store i64 %inc101, i64* %runs, align 8
  %105 = load %struct.sv**, %struct.sv*** %b, align 8
  %incdec.ptr102 = getelementptr inbounds %struct.sv*, %struct.sv** %105, i32 1
  store %struct.sv** %incdec.ptr102, %struct.sv*** %b, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.99, %land.lhs.true.95, %while.end.92
  %106 = load %struct.sv**, %struct.sv*** %r, align 8
  store %struct.sv** %106, %struct.sv*** %q, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.103
  %107 = load %struct.sv**, %struct.sv*** %b, align 8
  %108 = load %struct.sv**, %struct.sv*** %t, align 8
  %cmp104 = icmp ult %struct.sv** %107, %108
  br i1 %cmp104, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %109 = load i32, i32* %sense, align 4
  %tobool106 = icmp ne i32 %109, 0
  %lnot = xor i1 %tobool106, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %sense, align 4
  br label %for.cond

for.end.107:                                      ; preds = %for.cond
  %110 = load i64, i64* %runs, align 8
  ret i64 %110
}

declare void @Perl_safesysfree(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @S_qsortsvu(%struct.sv** %array, i64 %num_elts, i32 (%struct.sv*, %struct.sv*)* %compare) #0 {
entry:
  %array.addr = alloca %struct.sv**, align 8
  %num_elts.addr = alloca i64, align 8
  %compare.addr = alloca i32 (%struct.sv*, %struct.sv*)*, align 8
  %temp = alloca %struct.sv*, align 8
  %partition_stack = alloca [32 x %struct.partition_stack_entry], align 16
  %next_stack_entry = alloca i32, align 4
  %part_left = alloca i32, align 4
  %part_right = alloca i32, align 4
  %qsort_break_even = alloca i32, align 4
  %swapped = alloca i32, align 4
  %n = alloca i64, align 8
  %j = alloca i64, align 8
  %q = alloca %struct.sv**, align 8
  %pc_left = alloca i32, align 4
  %pc_right = alloca i32, align 4
  %u_right = alloca i32, align 4
  %u_left = alloca i32, align 4
  %s = alloca i32, align 4
  %tmp = alloca %struct.sv*, align 8
  %tmp63 = alloca %struct.sv*, align 8
  %tmp79 = alloca %struct.sv*, align 8
  %tmp113 = alloca %struct.sv*, align 8
  %tmp143 = alloca %struct.sv*, align 8
  %tmp157 = alloca %struct.sv*, align 8
  %tmp173 = alloca %struct.sv*, align 8
  %tmp189 = alloca %struct.sv*, align 8
  %tmp201 = alloca %struct.sv*, align 8
  %still_work_on_left = alloca i32, align 4
  %still_work_on_right = alloca i32, align 4
  %tmp239 = alloca %struct.sv*, align 8
  %tmp275 = alloca %struct.sv*, align 8
  %tmp294 = alloca %struct.sv*, align 8
  %tmp311 = alloca %struct.sv*, align 8
  %tmp326 = alloca %struct.sv*, align 8
  %tmp347 = alloca %struct.sv*, align 8
  %tmp362 = alloca %struct.sv*, align 8
  %i = alloca i32, align 4
  %j445 = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.sv** %array, %struct.sv*** %array.addr, align 8
  store i64 %num_elts, i64* %num_elts.addr, align 8
  store i32 (%struct.sv*, %struct.sv*)* %compare, i32 (%struct.sv*, %struct.sv*)** %compare.addr, align 8
  store i32 0, i32* %next_stack_entry, align 4
  %0 = load i64, i64* %num_elts.addr, align 8
  %cmp = icmp ule i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.503

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %num_elts.addr, align 8
  %cmp1 = icmp ugt i64 %1, 255
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  %2 = load i64, i64* %num_elts.addr, align 8
  store i64 %2, i64* %n, align 8
  %3 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  store %struct.sv** %3, %struct.sv*** %q, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then.2
  %4 = load i64, i64* %n, align 8
  %cmp3 = icmp ugt i64 %4, 1
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %n, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %n, align 8
  %conv = uitofp i64 %5 to double
  %call = call double @spec_rand()
  %mul = fmul double %conv, %call
  %conv4 = fptoui double %mul to i64
  store i64 %conv4, i64* %j, align 8
  %6 = load i64, i64* %j, align 8
  %7 = load %struct.sv**, %struct.sv*** %q, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %7, i64 %6
  %8 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %8, %struct.sv** %temp, align 8
  %9 = load i64, i64* %n, align 8
  %10 = load %struct.sv**, %struct.sv*** %q, align 8
  %arrayidx5 = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %9
  %11 = load %struct.sv*, %struct.sv** %arrayidx5, align 8
  %12 = load i64, i64* %j, align 8
  %13 = load %struct.sv**, %struct.sv*** %q, align 8
  %arrayidx6 = getelementptr inbounds %struct.sv*, %struct.sv** %13, i64 %12
  store %struct.sv* %11, %struct.sv** %arrayidx6, align 8
  %14 = load %struct.sv*, %struct.sv** %temp, align 8
  %15 = load i64, i64* %n, align 8
  %16 = load %struct.sv**, %struct.sv*** %q, align 8
  %arrayidx7 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i64 %15
  store %struct.sv* %14, %struct.sv** %arrayidx7, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.8

if.end.8:                                         ; preds = %for.end, %if.end
  store i32 0, i32* %part_left, align 4
  %17 = load i64, i64* %num_elts.addr, align 8
  %sub = sub i64 %17, 1
  %conv9 = trunc i64 %sub to i32
  store i32 %conv9, i32* %part_right, align 4
  store i32 6, i32* %qsort_break_even, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %if.end.502, %if.end.8
  %18 = load i32, i32* %part_right, align 4
  %19 = load i32, i32* %part_left, align 4
  %sub11 = sub nsw i32 %18, %19
  %20 = load i32, i32* %qsort_break_even, align 4
  %cmp12 = icmp sge i32 %sub11, %20
  br i1 %cmp12, label %if.then.14, label %if.else.437

if.then.14:                                       ; preds = %for.cond.10
  %21 = load i32, i32* %part_left, align 4
  %22 = load i32, i32* %part_right, align 4
  %add = add nsw i32 %21, %22
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %pc_left, align 4
  %23 = load i32, i32* %pc_left, align 4
  store i32 %23, i32* %pc_right, align 4
  %24 = load i32, i32* %pc_left, align 4
  %sub15 = sub nsw i32 %24, 1
  store i32 %sub15, i32* %u_right, align 4
  %25 = load i32, i32* %pc_right, align 4
  %add16 = add nsw i32 %25, 1
  store i32 %add16, i32* %u_left, align 4
  store i32 0, i32* %swapped, align 4
  %26 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %compare.addr, align 8
  %27 = load i32, i32* %u_right, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.sv*, %struct.sv** %28, i64 %idxprom
  %29 = load %struct.sv*, %struct.sv** %arrayidx17, align 8
  %30 = load i32, i32* %pc_left, align 4
  %idxprom18 = sext i32 %30 to i64
  %31 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct.sv*, %struct.sv** %31, i64 %idxprom18
  %32 = load %struct.sv*, %struct.sv** %arrayidx19, align 8
  %call20 = call i32 %26(%struct.sv* %29, %struct.sv* %32)
  store i32 %call20, i32* %s, align 4
  %33 = load i32, i32* %s, align 4
  %cmp21 = icmp slt i32 %33, 0
  br i1 %cmp21, label %if.then.23, label %if.else.86

if.then.23:                                       ; preds = %if.then.14
  %34 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %compare.addr, align 8
  %35 = load i32, i32* %pc_left, align 4
  %idxprom24 = sext i32 %35 to i64
  %36 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct.sv*, %struct.sv** %36, i64 %idxprom24
  %37 = load %struct.sv*, %struct.sv** %arrayidx25, align 8
  %38 = load i32, i32* %u_left, align 4
  %idxprom26 = sext i32 %38 to i64
  %39 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct.sv*, %struct.sv** %39, i64 %idxprom26
  %40 = load %struct.sv*, %struct.sv** %arrayidx27, align 8
  %call28 = call i32 %34(%struct.sv* %37, %struct.sv* %40)
  store i32 %call28, i32* %s, align 4
  %41 = load i32, i32* %s, align 4
  %cmp29 = icmp eq i32 %41, 0
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.then.23
  %42 = load i32, i32* %pc_right, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %pc_right, align 4
  br label %if.end.85

if.else:                                          ; preds = %if.then.23
  %43 = load i32, i32* %s, align 4
  %cmp32 = icmp sgt i32 %43, 0
  br i1 %cmp32, label %if.then.34, label %if.end.84

if.then.34:                                       ; preds = %if.else
  %44 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %compare.addr, align 8
  %45 = load i32, i32* %u_right, align 4
  %idxprom35 = sext i32 %45 to i64
  %46 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.sv*, %struct.sv** %46, i64 %idxprom35
  %47 = load %struct.sv*, %struct.sv** %arrayidx36, align 8
  %48 = load i32, i32* %u_left, align 4
  %idxprom37 = sext i32 %48 to i64
  %49 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.sv*, %struct.sv** %49, i64 %idxprom37
  %50 = load %struct.sv*, %struct.sv** %arrayidx38, align 8
  %call39 = call i32 %44(%struct.sv* %47, %struct.sv* %50)
  store i32 %call39, i32* %s, align 4
  %51 = load i32, i32* %s, align 4
  %cmp40 = icmp slt i32 %51, 0
  br i1 %cmp40, label %if.then.42, label %if.else.52

if.then.42:                                       ; preds = %if.then.34
  %52 = load i32, i32* %swapped, align 4
  %inc43 = add nsw i32 %52, 1
  store i32 %inc43, i32* %swapped, align 4
  %53 = load i32, i32* %pc_left, align 4
  %idxprom44 = sext i32 %53 to i64
  %54 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct.sv*, %struct.sv** %54, i64 %idxprom44
  %55 = load %struct.sv*, %struct.sv** %arrayidx45, align 8
  store %struct.sv* %55, %struct.sv** %temp, align 8
  %56 = load i32, i32* %u_left, align 4
  %idxprom46 = sext i32 %56 to i64
  %57 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct.sv*, %struct.sv** %57, i64 %idxprom46
  %58 = load %struct.sv*, %struct.sv** %arrayidx47, align 8
  %59 = load i32, i32* %pc_left, align 4
  %idxprom48 = sext i32 %59 to i64
  %60 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct.sv*, %struct.sv** %60, i64 %idxprom48
  store %struct.sv* %58, %struct.sv** %arrayidx49, align 8
  %61 = load %struct.sv*, %struct.sv** %temp, align 8
  %62 = load i32, i32* %u_left, align 4
  %idxprom50 = sext i32 %62 to i64
  %63 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct.sv*, %struct.sv** %63, i64 %idxprom50
  store %struct.sv* %61, %struct.sv** %arrayidx51, align 8
  store %struct.sv* %61, %struct.sv** %tmp
  %64 = load %struct.sv*, %struct.sv** %tmp
  br label %if.end.83

if.else.52:                                       ; preds = %if.then.34
  %65 = load i32, i32* %s, align 4
  %cmp53 = icmp eq i32 %65, 0
  br i1 %cmp53, label %if.then.55, label %if.else.67

if.then.55:                                       ; preds = %if.else.52
  %66 = load i32, i32* %swapped, align 4
  %inc56 = add nsw i32 %66, 1
  store i32 %inc56, i32* %swapped, align 4
  %67 = load i32, i32* %pc_left, align 4
  %idxprom57 = sext i32 %67 to i64
  %68 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx58 = getelementptr inbounds %struct.sv*, %struct.sv** %68, i64 %idxprom57
  %69 = load %struct.sv*, %struct.sv** %arrayidx58, align 8
  store %struct.sv* %69, %struct.sv** %temp, align 8
  %70 = load i32, i32* %u_left, align 4
  %idxprom59 = sext i32 %70 to i64
  %71 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx60 = getelementptr inbounds %struct.sv*, %struct.sv** %71, i64 %idxprom59
  %72 = load %struct.sv*, %struct.sv** %arrayidx60, align 8
  %73 = load i32, i32* %pc_left, align 4
  %idxprom61 = sext i32 %73 to i64
  %74 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx62 = getelementptr inbounds %struct.sv*, %struct.sv** %74, i64 %idxprom61
  store %struct.sv* %72, %struct.sv** %arrayidx62, align 8
  %75 = load %struct.sv*, %struct.sv** %temp, align 8
  %76 = load i32, i32* %u_left, align 4
  %idxprom64 = sext i32 %76 to i64
  %77 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx65 = getelementptr inbounds %struct.sv*, %struct.sv** %77, i64 %idxprom64
  store %struct.sv* %75, %struct.sv** %arrayidx65, align 8
  store %struct.sv* %75, %struct.sv** %tmp63
  %78 = load %struct.sv*, %struct.sv** %tmp63
  %79 = load i32, i32* %pc_left, align 4
  %dec66 = add nsw i32 %79, -1
  store i32 %dec66, i32* %pc_left, align 4
  br label %if.end.82

if.else.67:                                       ; preds = %if.else.52
  %80 = load i32, i32* %swapped, align 4
  %inc68 = add nsw i32 %80, 1
  store i32 %inc68, i32* %swapped, align 4
  %81 = load i32, i32* %pc_left, align 4
  %idxprom69 = sext i32 %81 to i64
  %82 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct.sv*, %struct.sv** %82, i64 %idxprom69
  %83 = load %struct.sv*, %struct.sv** %arrayidx70, align 8
  store %struct.sv* %83, %struct.sv** %temp, align 8
  %84 = load i32, i32* %u_right, align 4
  %idxprom71 = sext i32 %84 to i64
  %85 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx72 = getelementptr inbounds %struct.sv*, %struct.sv** %85, i64 %idxprom71
  %86 = load %struct.sv*, %struct.sv** %arrayidx72, align 8
  %87 = load i32, i32* %pc_left, align 4
  %idxprom73 = sext i32 %87 to i64
  %88 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx74 = getelementptr inbounds %struct.sv*, %struct.sv** %88, i64 %idxprom73
  store %struct.sv* %86, %struct.sv** %arrayidx74, align 8
  %89 = load i32, i32* %u_left, align 4
  %idxprom75 = sext i32 %89 to i64
  %90 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx76 = getelementptr inbounds %struct.sv*, %struct.sv** %90, i64 %idxprom75
  %91 = load %struct.sv*, %struct.sv** %arrayidx76, align 8
  %92 = load i32, i32* %u_right, align 4
  %idxprom77 = sext i32 %92 to i64
  %93 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx78 = getelementptr inbounds %struct.sv*, %struct.sv** %93, i64 %idxprom77
  store %struct.sv* %91, %struct.sv** %arrayidx78, align 8
  %94 = load %struct.sv*, %struct.sv** %temp, align 8
  %95 = load i32, i32* %u_left, align 4
  %idxprom80 = sext i32 %95 to i64
  %96 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx81 = getelementptr inbounds %struct.sv*, %struct.sv** %96, i64 %idxprom80
  store %struct.sv* %94, %struct.sv** %arrayidx81, align 8
  store %struct.sv* %94, %struct.sv** %tmp79
  %97 = load %struct.sv*, %struct.sv** %tmp79
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.67, %if.then.55
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.42
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.else
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.31
  br label %if.end.207

if.else.86:                                       ; preds = %if.then.14
  %98 = load i32, i32* %s, align 4
  %cmp87 = icmp eq i32 %98, 0
  br i1 %cmp87, label %if.then.89, label %if.else.119

if.then.89:                                       ; preds = %if.else.86
  %99 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %compare.addr, align 8
  %100 = load i32, i32* %pc_left, align 4
  %idxprom90 = sext i32 %100 to i64
  %101 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx91 = getelementptr inbounds %struct.sv*, %struct.sv** %101, i64 %idxprom90
  %102 = load %struct.sv*, %struct.sv** %arrayidx91, align 8
  %103 = load i32, i32* %u_left, align 4
  %idxprom92 = sext i32 %103 to i64
  %104 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx93 = getelementptr inbounds %struct.sv*, %struct.sv** %104, i64 %idxprom92
  %105 = load %struct.sv*, %struct.sv** %arrayidx93, align 8
  %call94 = call i32 %99(%struct.sv* %102, %struct.sv* %105)
  store i32 %call94, i32* %s, align 4
  %106 = load i32, i32* %s, align 4
  %cmp95 = icmp slt i32 %106, 0
  br i1 %cmp95, label %if.then.97, label %if.else.99

if.then.97:                                       ; preds = %if.then.89
  %107 = load i32, i32* %pc_left, align 4
  %dec98 = add nsw i32 %107, -1
  store i32 %dec98, i32* %pc_left, align 4
  br label %if.end.118

if.else.99:                                       ; preds = %if.then.89
  %108 = load i32, i32* %s, align 4
  %cmp100 = icmp eq i32 %108, 0
  br i1 %cmp100, label %if.then.102, label %if.else.105

if.then.102:                                      ; preds = %if.else.99
  %109 = load i32, i32* %pc_left, align 4
  %dec103 = add nsw i32 %109, -1
  store i32 %dec103, i32* %pc_left, align 4
  %110 = load i32, i32* %pc_right, align 4
  %inc104 = add nsw i32 %110, 1
  store i32 %inc104, i32* %pc_right, align 4
  br label %if.end.117

if.else.105:                                      ; preds = %if.else.99
  %111 = load i32, i32* %swapped, align 4
  %inc106 = add nsw i32 %111, 1
  store i32 %inc106, i32* %swapped, align 4
  %112 = load i32, i32* %u_right, align 4
  %idxprom107 = sext i32 %112 to i64
  %113 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx108 = getelementptr inbounds %struct.sv*, %struct.sv** %113, i64 %idxprom107
  %114 = load %struct.sv*, %struct.sv** %arrayidx108, align 8
  store %struct.sv* %114, %struct.sv** %temp, align 8
  %115 = load i32, i32* %u_left, align 4
  %idxprom109 = sext i32 %115 to i64
  %116 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx110 = getelementptr inbounds %struct.sv*, %struct.sv** %116, i64 %idxprom109
  %117 = load %struct.sv*, %struct.sv** %arrayidx110, align 8
  %118 = load i32, i32* %u_right, align 4
  %idxprom111 = sext i32 %118 to i64
  %119 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx112 = getelementptr inbounds %struct.sv*, %struct.sv** %119, i64 %idxprom111
  store %struct.sv* %117, %struct.sv** %arrayidx112, align 8
  %120 = load %struct.sv*, %struct.sv** %temp, align 8
  %121 = load i32, i32* %u_left, align 4
  %idxprom114 = sext i32 %121 to i64
  %122 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx115 = getelementptr inbounds %struct.sv*, %struct.sv** %122, i64 %idxprom114
  store %struct.sv* %120, %struct.sv** %arrayidx115, align 8
  store %struct.sv* %120, %struct.sv** %tmp113
  %123 = load %struct.sv*, %struct.sv** %tmp113
  %124 = load i32, i32* %pc_right, align 4
  %inc116 = add nsw i32 %124, 1
  store i32 %inc116, i32* %pc_right, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.105, %if.then.102
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.then.97
  br label %if.end.206

if.else.119:                                      ; preds = %if.else.86
  %125 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %compare.addr, align 8
  %126 = load i32, i32* %pc_left, align 4
  %idxprom120 = sext i32 %126 to i64
  %127 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx121 = getelementptr inbounds %struct.sv*, %struct.sv** %127, i64 %idxprom120
  %128 = load %struct.sv*, %struct.sv** %arrayidx121, align 8
  %129 = load i32, i32* %u_left, align 4
  %idxprom122 = sext i32 %129 to i64
  %130 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx123 = getelementptr inbounds %struct.sv*, %struct.sv** %130, i64 %idxprom122
  %131 = load %struct.sv*, %struct.sv** %arrayidx123, align 8
  %call124 = call i32 %125(%struct.sv* %128, %struct.sv* %131)
  store i32 %call124, i32* %s, align 4
  %132 = load i32, i32* %s, align 4
  %cmp125 = icmp slt i32 %132, 0
  br i1 %cmp125, label %if.then.127, label %if.else.178

if.then.127:                                      ; preds = %if.else.119
  %133 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %compare.addr, align 8
  %134 = load i32, i32* %u_right, align 4
  %idxprom128 = sext i32 %134 to i64
  %135 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx129 = getelementptr inbounds %struct.sv*, %struct.sv** %135, i64 %idxprom128
  %136 = load %struct.sv*, %struct.sv** %arrayidx129, align 8
  %137 = load i32, i32* %u_left, align 4
  %idxprom130 = sext i32 %137 to i64
  %138 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx131 = getelementptr inbounds %struct.sv*, %struct.sv** %138, i64 %idxprom130
  %139 = load %struct.sv*, %struct.sv** %arrayidx131, align 8
  %call132 = call i32 %133(%struct.sv* %136, %struct.sv* %139)
  store i32 %call132, i32* %s, align 4
  %140 = load i32, i32* %s, align 4
  %cmp133 = icmp slt i32 %140, 0
  br i1 %cmp133, label %if.then.135, label %if.else.146

if.then.135:                                      ; preds = %if.then.127
  %141 = load i32, i32* %swapped, align 4
  %inc136 = add nsw i32 %141, 1
  store i32 %inc136, i32* %swapped, align 4
  %142 = load i32, i32* %u_right, align 4
  %idxprom137 = sext i32 %142 to i64
  %143 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx138 = getelementptr inbounds %struct.sv*, %struct.sv** %143, i64 %idxprom137
  %144 = load %struct.sv*, %struct.sv** %arrayidx138, align 8
  store %struct.sv* %144, %struct.sv** %temp, align 8
  %145 = load i32, i32* %pc_left, align 4
  %idxprom139 = sext i32 %145 to i64
  %146 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx140 = getelementptr inbounds %struct.sv*, %struct.sv** %146, i64 %idxprom139
  %147 = load %struct.sv*, %struct.sv** %arrayidx140, align 8
  %148 = load i32, i32* %u_right, align 4
  %idxprom141 = sext i32 %148 to i64
  %149 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx142 = getelementptr inbounds %struct.sv*, %struct.sv** %149, i64 %idxprom141
  store %struct.sv* %147, %struct.sv** %arrayidx142, align 8
  %150 = load %struct.sv*, %struct.sv** %temp, align 8
  %151 = load i32, i32* %pc_left, align 4
  %idxprom144 = sext i32 %151 to i64
  %152 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx145 = getelementptr inbounds %struct.sv*, %struct.sv** %152, i64 %idxprom144
  store %struct.sv* %150, %struct.sv** %arrayidx145, align 8
  store %struct.sv* %150, %struct.sv** %tmp143
  %153 = load %struct.sv*, %struct.sv** %tmp143
  br label %if.end.177

if.else.146:                                      ; preds = %if.then.127
  %154 = load i32, i32* %s, align 4
  %cmp147 = icmp eq i32 %154, 0
  br i1 %cmp147, label %if.then.149, label %if.else.161

if.then.149:                                      ; preds = %if.else.146
  %155 = load i32, i32* %swapped, align 4
  %inc150 = add nsw i32 %155, 1
  store i32 %inc150, i32* %swapped, align 4
  %156 = load i32, i32* %u_right, align 4
  %idxprom151 = sext i32 %156 to i64
  %157 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx152 = getelementptr inbounds %struct.sv*, %struct.sv** %157, i64 %idxprom151
  %158 = load %struct.sv*, %struct.sv** %arrayidx152, align 8
  store %struct.sv* %158, %struct.sv** %temp, align 8
  %159 = load i32, i32* %pc_left, align 4
  %idxprom153 = sext i32 %159 to i64
  %160 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx154 = getelementptr inbounds %struct.sv*, %struct.sv** %160, i64 %idxprom153
  %161 = load %struct.sv*, %struct.sv** %arrayidx154, align 8
  %162 = load i32, i32* %u_right, align 4
  %idxprom155 = sext i32 %162 to i64
  %163 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx156 = getelementptr inbounds %struct.sv*, %struct.sv** %163, i64 %idxprom155
  store %struct.sv* %161, %struct.sv** %arrayidx156, align 8
  %164 = load %struct.sv*, %struct.sv** %temp, align 8
  %165 = load i32, i32* %pc_left, align 4
  %idxprom158 = sext i32 %165 to i64
  %166 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx159 = getelementptr inbounds %struct.sv*, %struct.sv** %166, i64 %idxprom158
  store %struct.sv* %164, %struct.sv** %arrayidx159, align 8
  store %struct.sv* %164, %struct.sv** %tmp157
  %167 = load %struct.sv*, %struct.sv** %tmp157
  %168 = load i32, i32* %pc_right, align 4
  %inc160 = add nsw i32 %168, 1
  store i32 %inc160, i32* %pc_right, align 4
  br label %if.end.176

if.else.161:                                      ; preds = %if.else.146
  %169 = load i32, i32* %swapped, align 4
  %inc162 = add nsw i32 %169, 1
  store i32 %inc162, i32* %swapped, align 4
  %170 = load i32, i32* %u_right, align 4
  %idxprom163 = sext i32 %170 to i64
  %171 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx164 = getelementptr inbounds %struct.sv*, %struct.sv** %171, i64 %idxprom163
  %172 = load %struct.sv*, %struct.sv** %arrayidx164, align 8
  store %struct.sv* %172, %struct.sv** %temp, align 8
  %173 = load i32, i32* %pc_left, align 4
  %idxprom165 = sext i32 %173 to i64
  %174 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx166 = getelementptr inbounds %struct.sv*, %struct.sv** %174, i64 %idxprom165
  %175 = load %struct.sv*, %struct.sv** %arrayidx166, align 8
  %176 = load i32, i32* %u_right, align 4
  %idxprom167 = sext i32 %176 to i64
  %177 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx168 = getelementptr inbounds %struct.sv*, %struct.sv** %177, i64 %idxprom167
  store %struct.sv* %175, %struct.sv** %arrayidx168, align 8
  %178 = load i32, i32* %u_left, align 4
  %idxprom169 = sext i32 %178 to i64
  %179 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx170 = getelementptr inbounds %struct.sv*, %struct.sv** %179, i64 %idxprom169
  %180 = load %struct.sv*, %struct.sv** %arrayidx170, align 8
  %181 = load i32, i32* %pc_left, align 4
  %idxprom171 = sext i32 %181 to i64
  %182 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx172 = getelementptr inbounds %struct.sv*, %struct.sv** %182, i64 %idxprom171
  store %struct.sv* %180, %struct.sv** %arrayidx172, align 8
  %183 = load %struct.sv*, %struct.sv** %temp, align 8
  %184 = load i32, i32* %u_left, align 4
  %idxprom174 = sext i32 %184 to i64
  %185 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx175 = getelementptr inbounds %struct.sv*, %struct.sv** %185, i64 %idxprom174
  store %struct.sv* %183, %struct.sv** %arrayidx175, align 8
  store %struct.sv* %183, %struct.sv** %tmp173
  %186 = load %struct.sv*, %struct.sv** %tmp173
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.161, %if.then.149
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.then.135
  br label %if.end.205

if.else.178:                                      ; preds = %if.else.119
  %187 = load i32, i32* %s, align 4
  %cmp179 = icmp eq i32 %187, 0
  br i1 %cmp179, label %if.then.181, label %if.else.193

if.then.181:                                      ; preds = %if.else.178
  %188 = load i32, i32* %swapped, align 4
  %inc182 = add nsw i32 %188, 1
  store i32 %inc182, i32* %swapped, align 4
  %189 = load i32, i32* %u_right, align 4
  %idxprom183 = sext i32 %189 to i64
  %190 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx184 = getelementptr inbounds %struct.sv*, %struct.sv** %190, i64 %idxprom183
  %191 = load %struct.sv*, %struct.sv** %arrayidx184, align 8
  store %struct.sv* %191, %struct.sv** %temp, align 8
  %192 = load i32, i32* %u_left, align 4
  %idxprom185 = sext i32 %192 to i64
  %193 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx186 = getelementptr inbounds %struct.sv*, %struct.sv** %193, i64 %idxprom185
  %194 = load %struct.sv*, %struct.sv** %arrayidx186, align 8
  %195 = load i32, i32* %u_right, align 4
  %idxprom187 = sext i32 %195 to i64
  %196 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx188 = getelementptr inbounds %struct.sv*, %struct.sv** %196, i64 %idxprom187
  store %struct.sv* %194, %struct.sv** %arrayidx188, align 8
  %197 = load %struct.sv*, %struct.sv** %temp, align 8
  %198 = load i32, i32* %u_left, align 4
  %idxprom190 = sext i32 %198 to i64
  %199 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx191 = getelementptr inbounds %struct.sv*, %struct.sv** %199, i64 %idxprom190
  store %struct.sv* %197, %struct.sv** %arrayidx191, align 8
  store %struct.sv* %197, %struct.sv** %tmp189
  %200 = load %struct.sv*, %struct.sv** %tmp189
  %201 = load i32, i32* %pc_left, align 4
  %dec192 = add nsw i32 %201, -1
  store i32 %dec192, i32* %pc_left, align 4
  br label %if.end.204

if.else.193:                                      ; preds = %if.else.178
  %202 = load i32, i32* %swapped, align 4
  %inc194 = add nsw i32 %202, 1
  store i32 %inc194, i32* %swapped, align 4
  %203 = load i32, i32* %u_right, align 4
  %idxprom195 = sext i32 %203 to i64
  %204 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx196 = getelementptr inbounds %struct.sv*, %struct.sv** %204, i64 %idxprom195
  %205 = load %struct.sv*, %struct.sv** %arrayidx196, align 8
  store %struct.sv* %205, %struct.sv** %temp, align 8
  %206 = load i32, i32* %u_left, align 4
  %idxprom197 = sext i32 %206 to i64
  %207 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx198 = getelementptr inbounds %struct.sv*, %struct.sv** %207, i64 %idxprom197
  %208 = load %struct.sv*, %struct.sv** %arrayidx198, align 8
  %209 = load i32, i32* %u_right, align 4
  %idxprom199 = sext i32 %209 to i64
  %210 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx200 = getelementptr inbounds %struct.sv*, %struct.sv** %210, i64 %idxprom199
  store %struct.sv* %208, %struct.sv** %arrayidx200, align 8
  %211 = load %struct.sv*, %struct.sv** %temp, align 8
  %212 = load i32, i32* %u_left, align 4
  %idxprom202 = sext i32 %212 to i64
  %213 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx203 = getelementptr inbounds %struct.sv*, %struct.sv** %213, i64 %idxprom202
  store %struct.sv* %211, %struct.sv** %arrayidx203, align 8
  store %struct.sv* %211, %struct.sv** %tmp201
  %214 = load %struct.sv*, %struct.sv** %tmp201
  br label %if.end.204

if.end.204:                                       ; preds = %if.else.193, %if.then.181
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.end.177
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.end.118
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.end.85
  %215 = load i32, i32* %u_right, align 4
  %dec208 = add nsw i32 %215, -1
  store i32 %dec208, i32* %u_right, align 4
  %216 = load i32, i32* %u_left, align 4
  %inc209 = add nsw i32 %216, 1
  store i32 %inc209, i32* %u_left, align 4
  br label %for.cond.210

for.cond.210:                                     ; preds = %if.end.370, %if.end.207
  br label %while.cond

while.cond:                                       ; preds = %if.end.246, %for.cond.210
  %217 = load i32, i32* %u_right, align 4
  %218 = load i32, i32* %part_left, align 4
  %cmp213 = icmp sge i32 %217, %218
  %conv214 = zext i1 %cmp213 to i32
  store i32 %conv214, i32* %still_work_on_left, align 4
  br i1 %cmp213, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %219 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %compare.addr, align 8
  %220 = load i32, i32* %u_right, align 4
  %idxprom215 = sext i32 %220 to i64
  %221 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx216 = getelementptr inbounds %struct.sv*, %struct.sv** %221, i64 %idxprom215
  %222 = load %struct.sv*, %struct.sv** %arrayidx216, align 8
  %223 = load i32, i32* %pc_left, align 4
  %idxprom217 = sext i32 %223 to i64
  %224 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx218 = getelementptr inbounds %struct.sv*, %struct.sv** %224, i64 %idxprom217
  %225 = load %struct.sv*, %struct.sv** %arrayidx218, align 8
  %call219 = call i32 %219(%struct.sv* %222, %struct.sv* %225)
  store i32 %call219, i32* %s, align 4
  %226 = load i32, i32* %s, align 4
  %cmp220 = icmp slt i32 %226, 0
  br i1 %cmp220, label %if.then.222, label %if.else.224

if.then.222:                                      ; preds = %while.body
  %227 = load i32, i32* %u_right, align 4
  %dec223 = add nsw i32 %227, -1
  store i32 %dec223, i32* %u_right, align 4
  br label %if.end.246

if.else.224:                                      ; preds = %while.body
  %228 = load i32, i32* %s, align 4
  %cmp225 = icmp eq i32 %228, 0
  br i1 %cmp225, label %if.then.227, label %if.else.244

if.then.227:                                      ; preds = %if.else.224
  %229 = load i32, i32* %pc_left, align 4
  %dec228 = add nsw i32 %229, -1
  store i32 %dec228, i32* %pc_left, align 4
  %230 = load i32, i32* %pc_left, align 4
  %231 = load i32, i32* %u_right, align 4
  %cmp229 = icmp ne i32 %230, %231
  br i1 %cmp229, label %if.then.231, label %if.end.242

if.then.231:                                      ; preds = %if.then.227
  %232 = load i32, i32* %swapped, align 4
  %inc232 = add nsw i32 %232, 1
  store i32 %inc232, i32* %swapped, align 4
  %233 = load i32, i32* %u_right, align 4
  %idxprom233 = sext i32 %233 to i64
  %234 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx234 = getelementptr inbounds %struct.sv*, %struct.sv** %234, i64 %idxprom233
  %235 = load %struct.sv*, %struct.sv** %arrayidx234, align 8
  store %struct.sv* %235, %struct.sv** %temp, align 8
  %236 = load i32, i32* %pc_left, align 4
  %idxprom235 = sext i32 %236 to i64
  %237 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx236 = getelementptr inbounds %struct.sv*, %struct.sv** %237, i64 %idxprom235
  %238 = load %struct.sv*, %struct.sv** %arrayidx236, align 8
  %239 = load i32, i32* %u_right, align 4
  %idxprom237 = sext i32 %239 to i64
  %240 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx238 = getelementptr inbounds %struct.sv*, %struct.sv** %240, i64 %idxprom237
  store %struct.sv* %238, %struct.sv** %arrayidx238, align 8
  %241 = load %struct.sv*, %struct.sv** %temp, align 8
  %242 = load i32, i32* %pc_left, align 4
  %idxprom240 = sext i32 %242 to i64
  %243 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx241 = getelementptr inbounds %struct.sv*, %struct.sv** %243, i64 %idxprom240
  store %struct.sv* %241, %struct.sv** %arrayidx241, align 8
  store %struct.sv* %241, %struct.sv** %tmp239
  %244 = load %struct.sv*, %struct.sv** %tmp239
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.231, %if.then.227
  %245 = load i32, i32* %u_right, align 4
  %dec243 = add nsw i32 %245, -1
  store i32 %dec243, i32* %u_right, align 4
  br label %if.end.245

if.else.244:                                      ; preds = %if.else.224
  br label %while.end

if.end.245:                                       ; preds = %if.end.242
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %if.then.222
  br label %while.cond

while.end:                                        ; preds = %if.else.244, %while.cond
  br label %while.cond.247

while.cond.247:                                   ; preds = %if.end.282, %while.end
  %246 = load i32, i32* %u_left, align 4
  %247 = load i32, i32* %part_right, align 4
  %cmp248 = icmp sle i32 %246, %247
  %conv249 = zext i1 %cmp248 to i32
  store i32 %conv249, i32* %still_work_on_right, align 4
  br i1 %cmp248, label %while.body.250, label %while.end.283

while.body.250:                                   ; preds = %while.cond.247
  %248 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %compare.addr, align 8
  %249 = load i32, i32* %pc_right, align 4
  %idxprom251 = sext i32 %249 to i64
  %250 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx252 = getelementptr inbounds %struct.sv*, %struct.sv** %250, i64 %idxprom251
  %251 = load %struct.sv*, %struct.sv** %arrayidx252, align 8
  %252 = load i32, i32* %u_left, align 4
  %idxprom253 = sext i32 %252 to i64
  %253 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx254 = getelementptr inbounds %struct.sv*, %struct.sv** %253, i64 %idxprom253
  %254 = load %struct.sv*, %struct.sv** %arrayidx254, align 8
  %call255 = call i32 %248(%struct.sv* %251, %struct.sv* %254)
  store i32 %call255, i32* %s, align 4
  %255 = load i32, i32* %s, align 4
  %cmp256 = icmp slt i32 %255, 0
  br i1 %cmp256, label %if.then.258, label %if.else.260

if.then.258:                                      ; preds = %while.body.250
  %256 = load i32, i32* %u_left, align 4
  %inc259 = add nsw i32 %256, 1
  store i32 %inc259, i32* %u_left, align 4
  br label %if.end.282

if.else.260:                                      ; preds = %while.body.250
  %257 = load i32, i32* %s, align 4
  %cmp261 = icmp eq i32 %257, 0
  br i1 %cmp261, label %if.then.263, label %if.else.280

if.then.263:                                      ; preds = %if.else.260
  %258 = load i32, i32* %pc_right, align 4
  %inc264 = add nsw i32 %258, 1
  store i32 %inc264, i32* %pc_right, align 4
  %259 = load i32, i32* %pc_right, align 4
  %260 = load i32, i32* %u_left, align 4
  %cmp265 = icmp ne i32 %259, %260
  br i1 %cmp265, label %if.then.267, label %if.end.278

if.then.267:                                      ; preds = %if.then.263
  %261 = load i32, i32* %swapped, align 4
  %inc268 = add nsw i32 %261, 1
  store i32 %inc268, i32* %swapped, align 4
  %262 = load i32, i32* %pc_right, align 4
  %idxprom269 = sext i32 %262 to i64
  %263 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx270 = getelementptr inbounds %struct.sv*, %struct.sv** %263, i64 %idxprom269
  %264 = load %struct.sv*, %struct.sv** %arrayidx270, align 8
  store %struct.sv* %264, %struct.sv** %temp, align 8
  %265 = load i32, i32* %u_left, align 4
  %idxprom271 = sext i32 %265 to i64
  %266 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx272 = getelementptr inbounds %struct.sv*, %struct.sv** %266, i64 %idxprom271
  %267 = load %struct.sv*, %struct.sv** %arrayidx272, align 8
  %268 = load i32, i32* %pc_right, align 4
  %idxprom273 = sext i32 %268 to i64
  %269 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx274 = getelementptr inbounds %struct.sv*, %struct.sv** %269, i64 %idxprom273
  store %struct.sv* %267, %struct.sv** %arrayidx274, align 8
  %270 = load %struct.sv*, %struct.sv** %temp, align 8
  %271 = load i32, i32* %u_left, align 4
  %idxprom276 = sext i32 %271 to i64
  %272 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx277 = getelementptr inbounds %struct.sv*, %struct.sv** %272, i64 %idxprom276
  store %struct.sv* %270, %struct.sv** %arrayidx277, align 8
  store %struct.sv* %270, %struct.sv** %tmp275
  %273 = load %struct.sv*, %struct.sv** %tmp275
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.267, %if.then.263
  %274 = load i32, i32* %u_left, align 4
  %inc279 = add nsw i32 %274, 1
  store i32 %inc279, i32* %u_left, align 4
  br label %if.end.281

if.else.280:                                      ; preds = %if.else.260
  br label %while.end.283

if.end.281:                                       ; preds = %if.end.278
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.281, %if.then.258
  br label %while.cond.247

while.end.283:                                    ; preds = %if.else.280, %while.cond.247
  %275 = load i32, i32* %still_work_on_left, align 4
  %tobool = icmp ne i32 %275, 0
  br i1 %tobool, label %if.then.284, label %if.else.333

if.then.284:                                      ; preds = %while.end.283
  %276 = load i32, i32* %still_work_on_right, align 4
  %tobool285 = icmp ne i32 %276, 0
  br i1 %tobool285, label %if.then.286, label %if.else.299

if.then.286:                                      ; preds = %if.then.284
  %277 = load i32, i32* %swapped, align 4
  %inc287 = add nsw i32 %277, 1
  store i32 %inc287, i32* %swapped, align 4
  %278 = load i32, i32* %u_right, align 4
  %idxprom288 = sext i32 %278 to i64
  %279 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx289 = getelementptr inbounds %struct.sv*, %struct.sv** %279, i64 %idxprom288
  %280 = load %struct.sv*, %struct.sv** %arrayidx289, align 8
  store %struct.sv* %280, %struct.sv** %temp, align 8
  %281 = load i32, i32* %u_left, align 4
  %idxprom290 = sext i32 %281 to i64
  %282 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx291 = getelementptr inbounds %struct.sv*, %struct.sv** %282, i64 %idxprom290
  %283 = load %struct.sv*, %struct.sv** %arrayidx291, align 8
  %284 = load i32, i32* %u_right, align 4
  %idxprom292 = sext i32 %284 to i64
  %285 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx293 = getelementptr inbounds %struct.sv*, %struct.sv** %285, i64 %idxprom292
  store %struct.sv* %283, %struct.sv** %arrayidx293, align 8
  %286 = load %struct.sv*, %struct.sv** %temp, align 8
  %287 = load i32, i32* %u_left, align 4
  %idxprom295 = sext i32 %287 to i64
  %288 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx296 = getelementptr inbounds %struct.sv*, %struct.sv** %288, i64 %idxprom295
  store %struct.sv* %286, %struct.sv** %arrayidx296, align 8
  store %struct.sv* %286, %struct.sv** %tmp294
  %289 = load %struct.sv*, %struct.sv** %tmp294
  %290 = load i32, i32* %u_right, align 4
  %dec297 = add nsw i32 %290, -1
  store i32 %dec297, i32* %u_right, align 4
  %291 = load i32, i32* %u_left, align 4
  %inc298 = add nsw i32 %291, 1
  store i32 %inc298, i32* %u_left, align 4
  br label %if.end.332

if.else.299:                                      ; preds = %if.then.284
  %292 = load i32, i32* %pc_left, align 4
  %dec300 = add nsw i32 %292, -1
  store i32 %dec300, i32* %pc_left, align 4
  %293 = load i32, i32* %pc_left, align 4
  %294 = load i32, i32* %u_right, align 4
  %cmp301 = icmp eq i32 %293, %294
  br i1 %cmp301, label %if.then.303, label %if.else.314

if.then.303:                                      ; preds = %if.else.299
  %295 = load i32, i32* %swapped, align 4
  %inc304 = add nsw i32 %295, 1
  store i32 %inc304, i32* %swapped, align 4
  %296 = load i32, i32* %u_right, align 4
  %idxprom305 = sext i32 %296 to i64
  %297 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx306 = getelementptr inbounds %struct.sv*, %struct.sv** %297, i64 %idxprom305
  %298 = load %struct.sv*, %struct.sv** %arrayidx306, align 8
  store %struct.sv* %298, %struct.sv** %temp, align 8
  %299 = load i32, i32* %pc_right, align 4
  %idxprom307 = sext i32 %299 to i64
  %300 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx308 = getelementptr inbounds %struct.sv*, %struct.sv** %300, i64 %idxprom307
  %301 = load %struct.sv*, %struct.sv** %arrayidx308, align 8
  %302 = load i32, i32* %u_right, align 4
  %idxprom309 = sext i32 %302 to i64
  %303 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx310 = getelementptr inbounds %struct.sv*, %struct.sv** %303, i64 %idxprom309
  store %struct.sv* %301, %struct.sv** %arrayidx310, align 8
  %304 = load %struct.sv*, %struct.sv** %temp, align 8
  %305 = load i32, i32* %pc_right, align 4
  %idxprom312 = sext i32 %305 to i64
  %306 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx313 = getelementptr inbounds %struct.sv*, %struct.sv** %306, i64 %idxprom312
  store %struct.sv* %304, %struct.sv** %arrayidx313, align 8
  store %struct.sv* %304, %struct.sv** %tmp311
  %307 = load %struct.sv*, %struct.sv** %tmp311
  br label %if.end.329

if.else.314:                                      ; preds = %if.else.299
  %308 = load i32, i32* %swapped, align 4
  %inc315 = add nsw i32 %308, 1
  store i32 %inc315, i32* %swapped, align 4
  %309 = load i32, i32* %u_right, align 4
  %idxprom316 = sext i32 %309 to i64
  %310 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx317 = getelementptr inbounds %struct.sv*, %struct.sv** %310, i64 %idxprom316
  %311 = load %struct.sv*, %struct.sv** %arrayidx317, align 8
  store %struct.sv* %311, %struct.sv** %temp, align 8
  %312 = load i32, i32* %pc_left, align 4
  %idxprom318 = sext i32 %312 to i64
  %313 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx319 = getelementptr inbounds %struct.sv*, %struct.sv** %313, i64 %idxprom318
  %314 = load %struct.sv*, %struct.sv** %arrayidx319, align 8
  %315 = load i32, i32* %u_right, align 4
  %idxprom320 = sext i32 %315 to i64
  %316 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx321 = getelementptr inbounds %struct.sv*, %struct.sv** %316, i64 %idxprom320
  store %struct.sv* %314, %struct.sv** %arrayidx321, align 8
  %317 = load i32, i32* %pc_right, align 4
  %idxprom322 = sext i32 %317 to i64
  %318 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx323 = getelementptr inbounds %struct.sv*, %struct.sv** %318, i64 %idxprom322
  %319 = load %struct.sv*, %struct.sv** %arrayidx323, align 8
  %320 = load i32, i32* %pc_left, align 4
  %idxprom324 = sext i32 %320 to i64
  %321 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx325 = getelementptr inbounds %struct.sv*, %struct.sv** %321, i64 %idxprom324
  store %struct.sv* %319, %struct.sv** %arrayidx325, align 8
  %322 = load %struct.sv*, %struct.sv** %temp, align 8
  %323 = load i32, i32* %pc_right, align 4
  %idxprom327 = sext i32 %323 to i64
  %324 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx328 = getelementptr inbounds %struct.sv*, %struct.sv** %324, i64 %idxprom327
  store %struct.sv* %322, %struct.sv** %arrayidx328, align 8
  store %struct.sv* %322, %struct.sv** %tmp326
  %325 = load %struct.sv*, %struct.sv** %tmp326
  br label %if.end.329

if.end.329:                                       ; preds = %if.else.314, %if.then.303
  %326 = load i32, i32* %pc_right, align 4
  %dec330 = add nsw i32 %326, -1
  store i32 %dec330, i32* %pc_right, align 4
  %327 = load i32, i32* %u_right, align 4
  %dec331 = add nsw i32 %327, -1
  store i32 %dec331, i32* %u_right, align 4
  br label %if.end.332

if.end.332:                                       ; preds = %if.end.329, %if.then.286
  br label %if.end.370

if.else.333:                                      ; preds = %while.end.283
  %328 = load i32, i32* %still_work_on_right, align 4
  %tobool334 = icmp ne i32 %328, 0
  br i1 %tobool334, label %if.then.335, label %if.else.368

if.then.335:                                      ; preds = %if.else.333
  %329 = load i32, i32* %pc_right, align 4
  %inc336 = add nsw i32 %329, 1
  store i32 %inc336, i32* %pc_right, align 4
  %330 = load i32, i32* %pc_right, align 4
  %331 = load i32, i32* %u_left, align 4
  %cmp337 = icmp eq i32 %330, %331
  br i1 %cmp337, label %if.then.339, label %if.else.350

if.then.339:                                      ; preds = %if.then.335
  %332 = load i32, i32* %swapped, align 4
  %inc340 = add nsw i32 %332, 1
  store i32 %inc340, i32* %swapped, align 4
  %333 = load i32, i32* %u_left, align 4
  %idxprom341 = sext i32 %333 to i64
  %334 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx342 = getelementptr inbounds %struct.sv*, %struct.sv** %334, i64 %idxprom341
  %335 = load %struct.sv*, %struct.sv** %arrayidx342, align 8
  store %struct.sv* %335, %struct.sv** %temp, align 8
  %336 = load i32, i32* %pc_left, align 4
  %idxprom343 = sext i32 %336 to i64
  %337 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx344 = getelementptr inbounds %struct.sv*, %struct.sv** %337, i64 %idxprom343
  %338 = load %struct.sv*, %struct.sv** %arrayidx344, align 8
  %339 = load i32, i32* %u_left, align 4
  %idxprom345 = sext i32 %339 to i64
  %340 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx346 = getelementptr inbounds %struct.sv*, %struct.sv** %340, i64 %idxprom345
  store %struct.sv* %338, %struct.sv** %arrayidx346, align 8
  %341 = load %struct.sv*, %struct.sv** %temp, align 8
  %342 = load i32, i32* %pc_left, align 4
  %idxprom348 = sext i32 %342 to i64
  %343 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx349 = getelementptr inbounds %struct.sv*, %struct.sv** %343, i64 %idxprom348
  store %struct.sv* %341, %struct.sv** %arrayidx349, align 8
  store %struct.sv* %341, %struct.sv** %tmp347
  %344 = load %struct.sv*, %struct.sv** %tmp347
  br label %if.end.365

if.else.350:                                      ; preds = %if.then.335
  %345 = load i32, i32* %swapped, align 4
  %inc351 = add nsw i32 %345, 1
  store i32 %inc351, i32* %swapped, align 4
  %346 = load i32, i32* %pc_right, align 4
  %idxprom352 = sext i32 %346 to i64
  %347 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx353 = getelementptr inbounds %struct.sv*, %struct.sv** %347, i64 %idxprom352
  %348 = load %struct.sv*, %struct.sv** %arrayidx353, align 8
  store %struct.sv* %348, %struct.sv** %temp, align 8
  %349 = load i32, i32* %pc_left, align 4
  %idxprom354 = sext i32 %349 to i64
  %350 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx355 = getelementptr inbounds %struct.sv*, %struct.sv** %350, i64 %idxprom354
  %351 = load %struct.sv*, %struct.sv** %arrayidx355, align 8
  %352 = load i32, i32* %pc_right, align 4
  %idxprom356 = sext i32 %352 to i64
  %353 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx357 = getelementptr inbounds %struct.sv*, %struct.sv** %353, i64 %idxprom356
  store %struct.sv* %351, %struct.sv** %arrayidx357, align 8
  %354 = load i32, i32* %u_left, align 4
  %idxprom358 = sext i32 %354 to i64
  %355 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx359 = getelementptr inbounds %struct.sv*, %struct.sv** %355, i64 %idxprom358
  %356 = load %struct.sv*, %struct.sv** %arrayidx359, align 8
  %357 = load i32, i32* %pc_left, align 4
  %idxprom360 = sext i32 %357 to i64
  %358 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx361 = getelementptr inbounds %struct.sv*, %struct.sv** %358, i64 %idxprom360
  store %struct.sv* %356, %struct.sv** %arrayidx361, align 8
  %359 = load %struct.sv*, %struct.sv** %temp, align 8
  %360 = load i32, i32* %u_left, align 4
  %idxprom363 = sext i32 %360 to i64
  %361 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx364 = getelementptr inbounds %struct.sv*, %struct.sv** %361, i64 %idxprom363
  store %struct.sv* %359, %struct.sv** %arrayidx364, align 8
  store %struct.sv* %359, %struct.sv** %tmp362
  %362 = load %struct.sv*, %struct.sv** %tmp362
  br label %if.end.365

if.end.365:                                       ; preds = %if.else.350, %if.then.339
  %363 = load i32, i32* %pc_left, align 4
  %inc366 = add nsw i32 %363, 1
  store i32 %inc366, i32* %pc_left, align 4
  %364 = load i32, i32* %u_left, align 4
  %inc367 = add nsw i32 %364, 1
  store i32 %inc367, i32* %u_left, align 4
  br label %if.end.369

if.else.368:                                      ; preds = %if.else.333
  br label %for.end.371

if.end.369:                                       ; preds = %if.end.365
  br label %if.end.370

if.end.370:                                       ; preds = %if.end.369, %if.end.332
  br label %for.cond.210

for.end.371:                                      ; preds = %if.else.368
  %365 = load i32, i32* %swapped, align 4
  %cmp372 = icmp slt i32 %365, 3
  br i1 %cmp372, label %if.then.374, label %if.else.376

if.then.374:                                      ; preds = %for.end.371
  %366 = load i32, i32* %qsort_break_even, align 4
  %mul375 = mul nsw i32 %366, 2
  store i32 %mul375, i32* %qsort_break_even, align 4
  br label %if.end.377

if.else.376:                                      ; preds = %for.end.371
  store i32 6, i32* %qsort_break_even, align 4
  br label %if.end.377

if.end.377:                                       ; preds = %if.else.376, %if.then.374
  %367 = load i32, i32* %part_left, align 4
  %368 = load i32, i32* %pc_left, align 4
  %cmp378 = icmp slt i32 %367, %368
  br i1 %cmp378, label %if.then.380, label %if.else.415

if.then.380:                                      ; preds = %if.end.377
  %369 = load i32, i32* %pc_right, align 4
  %370 = load i32, i32* %part_right, align 4
  %cmp381 = icmp slt i32 %369, %370
  br i1 %cmp381, label %if.then.383, label %if.else.412

if.then.383:                                      ; preds = %if.then.380
  %371 = load i32, i32* %part_right, align 4
  %372 = load i32, i32* %pc_right, align 4
  %sub384 = sub nsw i32 %371, %372
  %373 = load i32, i32* %pc_left, align 4
  %374 = load i32, i32* %part_left, align 4
  %sub385 = sub nsw i32 %373, %374
  %cmp386 = icmp sgt i32 %sub384, %sub385
  br i1 %cmp386, label %if.then.388, label %if.else.398

if.then.388:                                      ; preds = %if.then.383
  %375 = load i32, i32* %pc_right, align 4
  %add389 = add nsw i32 %375, 1
  %376 = load i32, i32* %next_stack_entry, align 4
  %idxprom390 = sext i32 %376 to i64
  %arrayidx391 = getelementptr inbounds [32 x %struct.partition_stack_entry], [32 x %struct.partition_stack_entry]* %partition_stack, i32 0, i64 %idxprom390
  %left = getelementptr inbounds %struct.partition_stack_entry, %struct.partition_stack_entry* %arrayidx391, i32 0, i32 0
  store i32 %add389, i32* %left, align 4
  %377 = load i32, i32* %part_right, align 4
  %378 = load i32, i32* %next_stack_entry, align 4
  %idxprom392 = sext i32 %378 to i64
  %arrayidx393 = getelementptr inbounds [32 x %struct.partition_stack_entry], [32 x %struct.partition_stack_entry]* %partition_stack, i32 0, i64 %idxprom392
  %right = getelementptr inbounds %struct.partition_stack_entry, %struct.partition_stack_entry* %arrayidx393, i32 0, i32 1
  store i32 %377, i32* %right, align 4
  %379 = load i32, i32* %qsort_break_even, align 4
  %380 = load i32, i32* %next_stack_entry, align 4
  %idxprom394 = sext i32 %380 to i64
  %arrayidx395 = getelementptr inbounds [32 x %struct.partition_stack_entry], [32 x %struct.partition_stack_entry]* %partition_stack, i32 0, i64 %idxprom394
  %qsort_break_even396 = getelementptr inbounds %struct.partition_stack_entry, %struct.partition_stack_entry* %arrayidx395, i32 0, i32 2
  store i32 %379, i32* %qsort_break_even396, align 4
  %381 = load i32, i32* %pc_left, align 4
  %sub397 = sub nsw i32 %381, 1
  store i32 %sub397, i32* %part_right, align 4
  br label %if.end.410

if.else.398:                                      ; preds = %if.then.383
  %382 = load i32, i32* %part_left, align 4
  %383 = load i32, i32* %next_stack_entry, align 4
  %idxprom399 = sext i32 %383 to i64
  %arrayidx400 = getelementptr inbounds [32 x %struct.partition_stack_entry], [32 x %struct.partition_stack_entry]* %partition_stack, i32 0, i64 %idxprom399
  %left401 = getelementptr inbounds %struct.partition_stack_entry, %struct.partition_stack_entry* %arrayidx400, i32 0, i32 0
  store i32 %382, i32* %left401, align 4
  %384 = load i32, i32* %pc_left, align 4
  %sub402 = sub nsw i32 %384, 1
  %385 = load i32, i32* %next_stack_entry, align 4
  %idxprom403 = sext i32 %385 to i64
  %arrayidx404 = getelementptr inbounds [32 x %struct.partition_stack_entry], [32 x %struct.partition_stack_entry]* %partition_stack, i32 0, i64 %idxprom403
  %right405 = getelementptr inbounds %struct.partition_stack_entry, %struct.partition_stack_entry* %arrayidx404, i32 0, i32 1
  store i32 %sub402, i32* %right405, align 4
  %386 = load i32, i32* %qsort_break_even, align 4
  %387 = load i32, i32* %next_stack_entry, align 4
  %idxprom406 = sext i32 %387 to i64
  %arrayidx407 = getelementptr inbounds [32 x %struct.partition_stack_entry], [32 x %struct.partition_stack_entry]* %partition_stack, i32 0, i64 %idxprom406
  %qsort_break_even408 = getelementptr inbounds %struct.partition_stack_entry, %struct.partition_stack_entry* %arrayidx407, i32 0, i32 2
  store i32 %386, i32* %qsort_break_even408, align 4
  %388 = load i32, i32* %pc_right, align 4
  %add409 = add nsw i32 %388, 1
  store i32 %add409, i32* %part_left, align 4
  br label %if.end.410

if.end.410:                                       ; preds = %if.else.398, %if.then.388
  %389 = load i32, i32* %next_stack_entry, align 4
  %inc411 = add nsw i32 %389, 1
  store i32 %inc411, i32* %next_stack_entry, align 4
  br label %if.end.414

if.else.412:                                      ; preds = %if.then.380
  %390 = load i32, i32* %pc_left, align 4
  %sub413 = sub nsw i32 %390, 1
  store i32 %sub413, i32* %part_right, align 4
  br label %if.end.414

if.end.414:                                       ; preds = %if.else.412, %if.end.410
  br label %if.end.436

if.else.415:                                      ; preds = %if.end.377
  %391 = load i32, i32* %pc_right, align 4
  %392 = load i32, i32* %part_right, align 4
  %cmp416 = icmp slt i32 %391, %392
  br i1 %cmp416, label %if.then.418, label %if.else.420

if.then.418:                                      ; preds = %if.else.415
  %393 = load i32, i32* %pc_right, align 4
  %add419 = add nsw i32 %393, 1
  store i32 %add419, i32* %part_left, align 4
  br label %if.end.435

if.else.420:                                      ; preds = %if.else.415
  %394 = load i32, i32* %next_stack_entry, align 4
  %cmp421 = icmp eq i32 %394, 0
  br i1 %cmp421, label %if.then.423, label %if.end.424

if.then.423:                                      ; preds = %if.else.420
  br label %for.end.503

if.end.424:                                       ; preds = %if.else.420
  %395 = load i32, i32* %next_stack_entry, align 4
  %dec425 = add nsw i32 %395, -1
  store i32 %dec425, i32* %next_stack_entry, align 4
  %396 = load i32, i32* %next_stack_entry, align 4
  %idxprom426 = sext i32 %396 to i64
  %arrayidx427 = getelementptr inbounds [32 x %struct.partition_stack_entry], [32 x %struct.partition_stack_entry]* %partition_stack, i32 0, i64 %idxprom426
  %left428 = getelementptr inbounds %struct.partition_stack_entry, %struct.partition_stack_entry* %arrayidx427, i32 0, i32 0
  %397 = load i32, i32* %left428, align 4
  store i32 %397, i32* %part_left, align 4
  %398 = load i32, i32* %next_stack_entry, align 4
  %idxprom429 = sext i32 %398 to i64
  %arrayidx430 = getelementptr inbounds [32 x %struct.partition_stack_entry], [32 x %struct.partition_stack_entry]* %partition_stack, i32 0, i64 %idxprom429
  %right431 = getelementptr inbounds %struct.partition_stack_entry, %struct.partition_stack_entry* %arrayidx430, i32 0, i32 1
  %399 = load i32, i32* %right431, align 4
  store i32 %399, i32* %part_right, align 4
  %400 = load i32, i32* %next_stack_entry, align 4
  %idxprom432 = sext i32 %400 to i64
  %arrayidx433 = getelementptr inbounds [32 x %struct.partition_stack_entry], [32 x %struct.partition_stack_entry]* %partition_stack, i32 0, i64 %idxprom432
  %qsort_break_even434 = getelementptr inbounds %struct.partition_stack_entry, %struct.partition_stack_entry* %arrayidx433, i32 0, i32 2
  %401 = load i32, i32* %qsort_break_even434, align 4
  store i32 %401, i32* %qsort_break_even, align 4
  br label %if.end.435

if.end.435:                                       ; preds = %if.end.424, %if.then.418
  br label %if.end.436

if.end.436:                                       ; preds = %if.end.435, %if.end.414
  br label %if.end.502

if.else.437:                                      ; preds = %for.cond.10
  %402 = load i32, i32* %part_left, align 4
  %add439 = add nsw i32 %402, 1
  store i32 %add439, i32* %i, align 4
  br label %for.cond.440

for.cond.440:                                     ; preds = %for.inc.485, %if.else.437
  %403 = load i32, i32* %i, align 4
  %404 = load i32, i32* %part_right, align 4
  %cmp441 = icmp sle i32 %403, %404
  br i1 %cmp441, label %for.body.443, label %for.end.487

for.body.443:                                     ; preds = %for.cond.440
  %405 = load i32, i32* %i, align 4
  %sub446 = sub nsw i32 %405, 1
  store i32 %sub446, i32* %j445, align 4
  br label %for.cond.447

for.cond.447:                                     ; preds = %for.inc, %for.body.443
  %406 = load i32, i32* %j445, align 4
  %407 = load i32, i32* %part_left, align 4
  %cmp448 = icmp sge i32 %406, %407
  br i1 %cmp448, label %for.body.450, label %for.end.461

for.body.450:                                     ; preds = %for.cond.447
  %408 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** %compare.addr, align 8
  %409 = load i32, i32* %i, align 4
  %idxprom451 = sext i32 %409 to i64
  %410 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx452 = getelementptr inbounds %struct.sv*, %struct.sv** %410, i64 %idxprom451
  %411 = load %struct.sv*, %struct.sv** %arrayidx452, align 8
  %412 = load i32, i32* %j445, align 4
  %idxprom453 = sext i32 %412 to i64
  %413 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx454 = getelementptr inbounds %struct.sv*, %struct.sv** %413, i64 %idxprom453
  %414 = load %struct.sv*, %struct.sv** %arrayidx454, align 8
  %call455 = call i32 %408(%struct.sv* %411, %struct.sv* %414)
  %cmp456 = icmp sge i32 %call455, 0
  br i1 %cmp456, label %if.then.458, label %if.end.459

if.then.458:                                      ; preds = %for.body.450
  br label %for.end.461

if.end.459:                                       ; preds = %for.body.450
  br label %for.inc

for.inc:                                          ; preds = %if.end.459
  %415 = load i32, i32* %j445, align 4
  %dec460 = add nsw i32 %415, -1
  store i32 %dec460, i32* %j445, align 4
  br label %for.cond.447

for.end.461:                                      ; preds = %if.then.458, %for.cond.447
  %416 = load i32, i32* %j445, align 4
  %inc462 = add nsw i32 %416, 1
  store i32 %inc462, i32* %j445, align 4
  %417 = load i32, i32* %j445, align 4
  %418 = load i32, i32* %i, align 4
  %cmp463 = icmp ne i32 %417, %418
  br i1 %cmp463, label %if.then.465, label %if.end.484

if.then.465:                                      ; preds = %for.end.461
  %419 = load i32, i32* %i, align 4
  %idxprom467 = sext i32 %419 to i64
  %420 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx468 = getelementptr inbounds %struct.sv*, %struct.sv** %420, i64 %idxprom467
  %421 = load %struct.sv*, %struct.sv** %arrayidx468, align 8
  store %struct.sv* %421, %struct.sv** %temp, align 8
  %422 = load i32, i32* %i, align 4
  %sub469 = sub nsw i32 %422, 1
  store i32 %sub469, i32* %k, align 4
  br label %for.cond.470

for.cond.470:                                     ; preds = %for.inc.479, %if.then.465
  %423 = load i32, i32* %k, align 4
  %424 = load i32, i32* %j445, align 4
  %cmp471 = icmp sge i32 %423, %424
  br i1 %cmp471, label %for.body.473, label %for.end.481

for.body.473:                                     ; preds = %for.cond.470
  %425 = load i32, i32* %k, align 4
  %idxprom474 = sext i32 %425 to i64
  %426 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx475 = getelementptr inbounds %struct.sv*, %struct.sv** %426, i64 %idxprom474
  %427 = load %struct.sv*, %struct.sv** %arrayidx475, align 8
  %428 = load i32, i32* %k, align 4
  %add476 = add nsw i32 %428, 1
  %idxprom477 = sext i32 %add476 to i64
  %429 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx478 = getelementptr inbounds %struct.sv*, %struct.sv** %429, i64 %idxprom477
  store %struct.sv* %427, %struct.sv** %arrayidx478, align 8
  br label %for.inc.479

for.inc.479:                                      ; preds = %for.body.473
  %430 = load i32, i32* %k, align 4
  %dec480 = add nsw i32 %430, -1
  store i32 %dec480, i32* %k, align 4
  br label %for.cond.470

for.end.481:                                      ; preds = %for.cond.470
  %431 = load %struct.sv*, %struct.sv** %temp, align 8
  %432 = load i32, i32* %j445, align 4
  %idxprom482 = sext i32 %432 to i64
  %433 = load %struct.sv**, %struct.sv*** %array.addr, align 8
  %arrayidx483 = getelementptr inbounds %struct.sv*, %struct.sv** %433, i64 %idxprom482
  store %struct.sv* %431, %struct.sv** %arrayidx483, align 8
  br label %if.end.484

if.end.484:                                       ; preds = %for.end.481, %for.end.461
  br label %for.inc.485

for.inc.485:                                      ; preds = %if.end.484
  %434 = load i32, i32* %i, align 4
  %inc486 = add nsw i32 %434, 1
  store i32 %inc486, i32* %i, align 4
  br label %for.cond.440

for.end.487:                                      ; preds = %for.cond.440
  %435 = load i32, i32* %next_stack_entry, align 4
  %cmp488 = icmp eq i32 %435, 0
  br i1 %cmp488, label %if.then.490, label %if.end.491

if.then.490:                                      ; preds = %for.end.487
  br label %for.end.503

if.end.491:                                       ; preds = %for.end.487
  %436 = load i32, i32* %next_stack_entry, align 4
  %dec492 = add nsw i32 %436, -1
  store i32 %dec492, i32* %next_stack_entry, align 4
  %437 = load i32, i32* %next_stack_entry, align 4
  %idxprom493 = sext i32 %437 to i64
  %arrayidx494 = getelementptr inbounds [32 x %struct.partition_stack_entry], [32 x %struct.partition_stack_entry]* %partition_stack, i32 0, i64 %idxprom493
  %left495 = getelementptr inbounds %struct.partition_stack_entry, %struct.partition_stack_entry* %arrayidx494, i32 0, i32 0
  %438 = load i32, i32* %left495, align 4
  store i32 %438, i32* %part_left, align 4
  %439 = load i32, i32* %next_stack_entry, align 4
  %idxprom496 = sext i32 %439 to i64
  %arrayidx497 = getelementptr inbounds [32 x %struct.partition_stack_entry], [32 x %struct.partition_stack_entry]* %partition_stack, i32 0, i64 %idxprom496
  %right498 = getelementptr inbounds %struct.partition_stack_entry, %struct.partition_stack_entry* %arrayidx497, i32 0, i32 1
  %440 = load i32, i32* %right498, align 4
  store i32 %440, i32* %part_right, align 4
  %441 = load i32, i32* %next_stack_entry, align 4
  %idxprom499 = sext i32 %441 to i64
  %arrayidx500 = getelementptr inbounds [32 x %struct.partition_stack_entry], [32 x %struct.partition_stack_entry]* %partition_stack, i32 0, i64 %idxprom499
  %qsort_break_even501 = getelementptr inbounds %struct.partition_stack_entry, %struct.partition_stack_entry* %arrayidx500, i32 0, i32 2
  %442 = load i32, i32* %qsort_break_even501, align 4
  store i32 %442, i32* %qsort_break_even, align 4
  br label %if.end.502

if.end.502:                                       ; preds = %if.end.491, %if.end.436
  br label %for.cond.10

for.end.503:                                      ; preds = %if.then, %if.then.490, %if.then.423
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cmpindir_desc(%struct.sv* %a, %struct.sv* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.sv*, align 8
  %b.addr = alloca %struct.sv*, align 8
  %sense = alloca i32, align 4
  %ap = alloca %struct.sv**, align 8
  %bp = alloca %struct.sv**, align 8
  store %struct.sv* %a, %struct.sv** %a.addr, align 8
  store %struct.sv* %b, %struct.sv** %b.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %a.addr, align 8
  %1 = bitcast %struct.sv* %0 to %struct.sv**
  store %struct.sv** %1, %struct.sv*** %ap, align 8
  %2 = load %struct.sv*, %struct.sv** %b.addr, align 8
  %3 = bitcast %struct.sv* %2 to %struct.sv**
  store %struct.sv** %3, %struct.sv*** %bp, align 8
  %4 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8
  %5 = load %struct.sv**, %struct.sv*** %ap, align 8
  %6 = load %struct.sv*, %struct.sv** %5, align 8
  %7 = load %struct.sv**, %struct.sv*** %bp, align 8
  %8 = load %struct.sv*, %struct.sv** %7, align 8
  %call = call i32 %4(%struct.sv* %6, %struct.sv* %8)
  store i32 %call, i32* %sense, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %sense, align 4
  %sub = sub nsw i32 0, %9
  store i32 %sub, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.sv**, %struct.sv*** %ap, align 8
  %11 = load %struct.sv**, %struct.sv*** %bp, align 8
  %cmp = icmp ugt %struct.sv** %10, %11
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %12 = load %struct.sv**, %struct.sv*** %ap, align 8
  %13 = load %struct.sv**, %struct.sv*** %bp, align 8
  %cmp1 = icmp ult %struct.sv** %12, %13
  %cond = select i1 %cmp1, i32 -1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond2, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @cmpindir(%struct.sv* %a, %struct.sv* %b) #0 {
entry:
  %a.addr = alloca %struct.sv*, align 8
  %b.addr = alloca %struct.sv*, align 8
  %sense = alloca i32, align 4
  %ap = alloca %struct.sv**, align 8
  %bp = alloca %struct.sv**, align 8
  store %struct.sv* %a, %struct.sv** %a.addr, align 8
  store %struct.sv* %b, %struct.sv** %b.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %a.addr, align 8
  %1 = bitcast %struct.sv* %0 to %struct.sv**
  store %struct.sv** %1, %struct.sv*** %ap, align 8
  %2 = load %struct.sv*, %struct.sv** %b.addr, align 8
  %3 = bitcast %struct.sv* %2 to %struct.sv**
  store %struct.sv** %3, %struct.sv*** %bp, align 8
  %4 = load i32 (%struct.sv*, %struct.sv*)*, i32 (%struct.sv*, %struct.sv*)** @PL_sort_RealCmp, align 8
  %5 = load %struct.sv**, %struct.sv*** %ap, align 8
  %6 = load %struct.sv*, %struct.sv** %5, align 8
  %7 = load %struct.sv**, %struct.sv*** %bp, align 8
  %8 = load %struct.sv*, %struct.sv** %7, align 8
  %call = call i32 %4(%struct.sv* %6, %struct.sv* %8)
  store i32 %call, i32* %sense, align 4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.sv**, %struct.sv*** %ap, align 8
  %10 = load %struct.sv**, %struct.sv*** %bp, align 8
  %cmp1 = icmp ugt %struct.sv** %9, %10
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %11 = load %struct.sv**, %struct.sv*** %ap, align 8
  %12 = load %struct.sv**, %struct.sv*** %bp, align 8
  %cmp2 = icmp ult %struct.sv** %11, %12
  %cond = select i1 %cmp2, i32 -1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond3 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond3, i32* %sense, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %13 = load i32, i32* %sense, align 4
  ret i32 %13
}

declare double @spec_rand() #1

declare void @Perl_croak(i8*, ...) #1

declare void @Perl_leave_scope(i32) #1

declare i8* @Perl_safesysrealloc(i8*, i64) #1

declare void @Perl_markstack_grow() #1

declare double @Perl_sv_2nv(%struct.sv*) #1

declare %struct.sv* @Perl_amagic_call(%struct.sv*, %struct.sv*, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
