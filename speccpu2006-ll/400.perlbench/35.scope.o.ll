; ModuleID = 'scope.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.interpreter = type { i8 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.context = type { i32, %union.anon }
%union.anon = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon.0, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon.0 = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }
%struct.xpvmg = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv* }
%struct.xpv = type { i8*, i64, i64 }

@PL_stack_sp = external global %struct.sv**, align 8
@PL_curstack = external global %struct.av*, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_sv_undef = external global %struct.sv, align 8
@PL_curstackinfo = external global %struct.stackinfo*, align 8
@PL_retstack_ix = external global i32, align 4
@PL_retstack_max = external global i32, align 4
@PL_retstack = external global %struct.op**, align 8
@PL_scopestack_ix = external global i32, align 4
@PL_scopestack_max = external global i32, align 4
@PL_scopestack = external global i32*, align 8
@PL_savestack_ix = external global i32, align 4
@PL_markstack_max = external global i32*, align 8
@PL_markstack = external global i32*, align 8
@PL_markstack_ptr = external global i32*, align 8
@PL_savestack_max = external global i32, align 4
@PL_savestack = external global %union.any*, align 8
@PL_tmps_max = external global i32, align 4
@PL_tmps_ix = external global i32, align 4
@PL_tmps_stack = external global %struct.sv**, align 8
@PL_tmps_floor = external global i32, align 4
@PL_Sv = external global %struct.sv*, align 8
@PL_sub_generation = external global i32, align 4
@PL_curcop = external global %struct.cop*, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_localizing = external global i32, align 4
@PL_curpad = external global %struct.sv**, align 8
@PL_comppad = external global %struct.av*, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"panic: save_threadsv called in non-threaded perl\00", align 1
@PL_op = external global %struct.op*, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"panic: corrupt saved stack index\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"panic: leave_scope pad code\00", align 1
@PL_hints = external global i32, align 4
@PL_hintgv = external global %struct.gv*, align 8
@PL_stack_max = external global %struct.sv**, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"panic: leave_scope inconsistency\00", align 1
@PL_tainted = external global i8, align 1
@PL_tainting = external global i8, align 1

; Function Attrs: nounwind uwtable
define %struct.sv** @Perl_stack_grow(%struct.sv** %sp, %struct.sv** %p, i32 %n) #0 {
entry:
  %sp.addr = alloca %struct.sv**, align 8
  %p.addr = alloca %struct.sv**, align 8
  %n.addr = alloca i32, align 4
  store %struct.sv** %sp, %struct.sv*** %sp.addr, align 8
  store %struct.sv** %p, %struct.sv*** %p.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.sv**, %struct.sv*** %sp.addr, align 8
  store %struct.sv** %0, %struct.sv*** @PL_stack_sp, align 8
  %1 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %2 = load %struct.sv**, %struct.sv*** %p.addr, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %2 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %4 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %4 to i64
  %add = add nsw i64 %sub.ptr.div, %conv
  %add1 = add nsw i64 %add, 128
  %conv2 = trunc i64 %add1 to i32
  call void @Perl_av_extend(%struct.av* %1, i32 %conv2)
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  ret %struct.sv** %5
}

declare void @Perl_av_extend(%struct.av*, i32) #1

; Function Attrs: nounwind uwtable
define %struct.stackinfo* @Perl_new_stackinfo(i32 %stitems, i32 %cxitems) #0 {
entry:
  %stitems.addr = alloca i32, align 4
  %cxitems.addr = alloca i32, align 4
  %si = alloca %struct.stackinfo*, align 8
  store i32 %stitems, i32* %stitems.addr, align 4
  store i32 %cxitems, i32* %cxitems.addr, align 4
  %call = call i8* @Perl_safesysmalloc(i64 56)
  %0 = bitcast i8* %call to %struct.stackinfo*
  store %struct.stackinfo* %0, %struct.stackinfo** %si, align 8
  %call1 = call %struct.av* @Perl_newAV()
  %1 = load %struct.stackinfo*, %struct.stackinfo** %si, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %1, i32 0, i32 0
  store %struct.av* %call1, %struct.av** %si_stack, align 8
  %2 = load %struct.stackinfo*, %struct.stackinfo** %si, align 8
  %si_stack2 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %2, i32 0, i32 0
  %3 = load %struct.av*, %struct.av** %si_stack2, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %3, i32 0, i32 0
  %4 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %4, i32 0, i32 9
  %5 = load i8, i8* %xav_flags, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, -2
  %conv3 = trunc i32 %and to i8
  store i8 %conv3, i8* %xav_flags, align 1
  %6 = load %struct.stackinfo*, %struct.stackinfo** %si, align 8
  %si_stack4 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %6, i32 0, i32 0
  %7 = load %struct.av*, %struct.av** %si_stack4, align 8
  %8 = load i32, i32* %stitems.addr, align 4
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load i32, i32* %stitems.addr, align 4
  %sub = sub nsw i32 %9, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  call void @Perl_av_extend(%struct.av* %7, i32 %cond)
  %10 = load %struct.stackinfo*, %struct.stackinfo** %si, align 8
  %si_stack6 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %10, i32 0, i32 0
  %11 = load %struct.av*, %struct.av** %si_stack6, align 8
  %sv_any7 = getelementptr inbounds %struct.av, %struct.av* %11, i32 0, i32 0
  %12 = load %struct.xpvav*, %struct.xpvav** %sv_any7, align 8
  %xav_alloc = getelementptr inbounds %struct.xpvav, %struct.xpvav* %12, i32 0, i32 7
  %13 = load %struct.sv**, %struct.sv*** %xav_alloc, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %13, i64 0
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx, align 8
  %14 = load %struct.stackinfo*, %struct.stackinfo** %si, align 8
  %si_stack8 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %14, i32 0, i32 0
  %15 = load %struct.av*, %struct.av** %si_stack8, align 8
  %sv_any9 = getelementptr inbounds %struct.av, %struct.av* %15, i32 0, i32 0
  %16 = load %struct.xpvav*, %struct.xpvav** %sv_any9, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %16, i32 0, i32 1
  store i64 0, i64* %xav_fill, align 8
  %17 = load %struct.stackinfo*, %struct.stackinfo** %si, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %17, i32 0, i32 5
  store %struct.stackinfo* null, %struct.stackinfo** %si_prev, align 8
  %18 = load %struct.stackinfo*, %struct.stackinfo** %si, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %18, i32 0, i32 6
  store %struct.stackinfo* null, %struct.stackinfo** %si_next, align 8
  %19 = load i32, i32* %cxitems.addr, align 4
  %sub10 = sub nsw i32 %19, 1
  %20 = load %struct.stackinfo*, %struct.stackinfo** %si, align 8
  %si_cxmax = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %20, i32 0, i32 3
  store i32 %sub10, i32* %si_cxmax, align 4
  %21 = load %struct.stackinfo*, %struct.stackinfo** %si, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %21, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %22 = load %struct.stackinfo*, %struct.stackinfo** %si, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %22, i32 0, i32 4
  store i32 0, i32* %si_type, align 4
  %23 = load i32, i32* %cxitems.addr, align 4
  %conv11 = sext i32 %23 to i64
  %mul = mul i64 %conv11, 144
  %call12 = call i8* @Perl_safesysmalloc(i64 %mul)
  %24 = bitcast i8* %call12 to %struct.context*
  %25 = load %struct.stackinfo*, %struct.stackinfo** %si, align 8
  %si_cxstack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %25, i32 0, i32 1
  store %struct.context* %24, %struct.context** %si_cxstack, align 8
  %26 = load %struct.stackinfo*, %struct.stackinfo** %si, align 8
  %si_cxstack13 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %26, i32 0, i32 1
  %27 = load %struct.context*, %struct.context** %si_cxstack13, align 8
  %28 = bitcast %struct.context* %27 to i8*
  %29 = load i32, i32* %cxitems.addr, align 4
  %conv14 = sext i32 %29 to i64
  %mul15 = mul i64 %conv14, 144
  call void @llvm.memset.p0i8.i64(i8* %28, i8 -85, i64 %mul15, i32 1, i1 false)
  %30 = load %struct.stackinfo*, %struct.stackinfo** %si, align 8
  ret %struct.stackinfo* %30
}

declare i8* @Perl_safesysmalloc(i64) #1

declare %struct.av* @Perl_newAV() #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @Perl_cxinc() #0 {
entry:
  %old_max = alloca i64, align 8
  %0 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxmax = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %0, i32 0, i32 3
  %1 = load i32, i32* %si_cxmax, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* %old_max, align 8
  %2 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxmax1 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %2, i32 0, i32 3
  %3 = load i32, i32* %si_cxmax1, align 4
  %mul = mul nsw i32 %3, 3
  %div = sdiv i32 %mul, 2
  %4 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxmax2 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %4, i32 0, i32 3
  store i32 %div, i32* %si_cxmax2, align 4
  %5 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxstack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %5, i32 0, i32 1
  %6 = load %struct.context*, %struct.context** %si_cxstack, align 8
  %7 = bitcast %struct.context* %6 to i8*
  %8 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxmax3 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %8, i32 0, i32 3
  %9 = load i32, i32* %si_cxmax3, align 4
  %add = add nsw i32 %9, 1
  %conv4 = sext i32 %add to i64
  %mul5 = mul i64 %conv4, 144
  %call = call i8* @Perl_safesysrealloc(i8* %7, i64 %mul5)
  %10 = bitcast i8* %call to %struct.context*
  %11 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxstack6 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %11, i32 0, i32 1
  store %struct.context* %10, %struct.context** %si_cxstack6, align 8
  %12 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxstack7 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %12, i32 0, i32 1
  %13 = load %struct.context*, %struct.context** %si_cxstack7, align 8
  %14 = load i64, i64* %old_max, align 8
  %add.ptr = getelementptr inbounds %struct.context, %struct.context* %13, i64 %14
  %add.ptr8 = getelementptr inbounds %struct.context, %struct.context* %add.ptr, i64 1
  %15 = bitcast %struct.context* %add.ptr8 to i8*
  %16 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxmax9 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %16, i32 0, i32 3
  %17 = load i32, i32* %si_cxmax9, align 4
  %conv10 = sext i32 %17 to i64
  %18 = load i64, i64* %old_max, align 8
  %sub = sub nsw i64 %conv10, %18
  %mul11 = mul i64 %sub, 144
  call void @llvm.memset.p0i8.i64(i8* %15, i8 -85, i64 %mul11, i32 1, i1 false)
  %19 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %19, i32 0, i32 2
  %20 = load i32, i32* %si_cxix, align 4
  %add12 = add nsw i32 %20, 1
  ret i32 %add12
}

declare i8* @Perl_safesysrealloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @Perl_push_return(%struct.op* %retop) #0 {
entry:
  %retop.addr = alloca %struct.op*, align 8
  store %struct.op* %retop, %struct.op** %retop.addr, align 8
  %0 = load i32, i32* @PL_retstack_ix, align 4
  %1 = load i32, i32* @PL_retstack_max, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @PL_retstack_max, align 4
  %mul = mul nsw i32 %2, 3
  %div = sdiv i32 %mul, 2
  store i32 %div, i32* @PL_retstack_max, align 4
  %3 = load %struct.op**, %struct.op*** @PL_retstack, align 8
  %4 = bitcast %struct.op** %3 to i8*
  %5 = load i32, i32* @PL_retstack_max, align 4
  %conv = sext i32 %5 to i64
  %mul1 = mul i64 %conv, 8
  %call = call i8* @Perl_safesysrealloc(i8* %4, i64 %mul1)
  %6 = bitcast i8* %call to %struct.op**
  store %struct.op** %6, %struct.op*** @PL_retstack, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.op*, %struct.op** %retop.addr, align 8
  %8 = load i32, i32* @PL_retstack_ix, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @PL_retstack_ix, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.op**, %struct.op*** @PL_retstack, align 8
  %arrayidx = getelementptr inbounds %struct.op*, %struct.op** %9, i64 %idxprom
  store %struct.op* %7, %struct.op** %arrayidx, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pop_return() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %0 = load i32, i32* @PL_retstack_ix, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @PL_retstack_ix, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* @PL_retstack_ix, align 4
  %idxprom = sext i32 %dec to i64
  %2 = load %struct.op**, %struct.op*** @PL_retstack, align 8
  %arrayidx = getelementptr inbounds %struct.op*, %struct.op** %2, i64 %idxprom
  %3 = load %struct.op*, %struct.op** %arrayidx, align 8
  store %struct.op* %3, %struct.op** %retval
  br label %return

if.else:                                          ; preds = %entry
  store %struct.op* null, %struct.op** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %4
}

; Function Attrs: nounwind uwtable
define void @Perl_push_scope() #0 {
entry:
  %0 = load i32, i32* @PL_scopestack_ix, align 4
  %1 = load i32, i32* @PL_scopestack_max, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @PL_scopestack_max, align 4
  %mul = mul nsw i32 %2, 3
  %div = sdiv i32 %mul, 2
  store i32 %div, i32* @PL_scopestack_max, align 4
  %3 = load i32*, i32** @PL_scopestack, align 8
  %4 = bitcast i32* %3 to i8*
  %5 = load i32, i32* @PL_scopestack_max, align 4
  %conv = sext i32 %5 to i64
  %mul1 = mul i64 %conv, 4
  %call = call i8* @Perl_safesysrealloc(i8* %4, i64 %mul1)
  %6 = bitcast i8* %call to i32*
  store i32* %6, i32** @PL_scopestack, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* @PL_savestack_ix, align 4
  %8 = load i32, i32* @PL_scopestack_ix, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @PL_scopestack_ix, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32*, i32** @PL_scopestack, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  store i32 %7, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_pop_scope() #0 {
entry:
  %oldsave = alloca i32, align 4
  %0 = load i32, i32* @PL_scopestack_ix, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @PL_scopestack_ix, align 4
  %idxprom = sext i32 %dec to i64
  %1 = load i32*, i32** @PL_scopestack, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %oldsave, align 4
  %3 = load i32, i32* @PL_savestack_ix, align 4
  %4 = load i32, i32* %oldsave, align 4
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %oldsave, align 4
  call void @Perl_leave_scope(i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_leave_scope(i32 %base) #0 {
entry:
  %base.addr = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %value = alloca %struct.sv*, align 8
  %gv = alloca %struct.gv*, align 8
  %av = alloca %struct.av*, align 8
  %hv = alloca %struct.hv*, align 8
  %ptr = alloca i8*, align 8
  %str = alloca i8*, align 8
  %i = alloca i32, align 4
  %goner = alloca %struct.av*, align 8
  %goner181 = alloca %struct.hv*, align 8
  %padflags = alloca i32, align 4
  %oval = alloca %struct.sv*, align 8
  %off = alloca i64, align 8
  %sp = alloca %struct.sv**, align 8
  %t = alloca %struct.av*, align 8
  %f = alloca %struct.av*, align 8
  %tmp = alloca %struct.av*, align 8
  store i32 %base, i32* %base.addr, align 4
  %0 = load i32, i32* %base.addr, align 4
  %cmp = icmp slt i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.662, %if.end
  %1 = load i32, i32* @PL_savestack_ix, align 4
  %2 = load i32, i32* %base.addr, align 4
  %cmp1 = icmp sgt i32 %1, %2
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* @PL_savestack_ix, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %dec to i64
  %4 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %4, i64 %idxprom
  %any_i32 = bitcast %union.any* %arrayidx to i32*
  %5 = load i32, i32* %any_i32, align 4
  switch i32 %5, label %sw.default.661 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
    i32 34, label %sw.bb.20
    i32 37, label %sw.bb.32
    i32 29, label %sw.bb.44
    i32 13, label %sw.bb.53
    i32 2, label %sw.bb.125
    i32 3, label %sw.bb.168
    i32 4, label %sw.bb.212
    i32 5, label %sw.bb.221
    i32 38, label %sw.bb.229
    i32 6, label %sw.bb.237
    i32 23, label %sw.bb.246
    i32 32, label %sw.bb.256
    i32 7, label %sw.bb.266
    i32 8, label %sw.bb.274
    i32 31, label %sw.bb.283
    i32 11, label %sw.bb.283
    i32 10, label %sw.bb.292
    i32 9, label %sw.bb.301
    i32 12, label %sw.bb.310
    i32 14, label %sw.bb.315
    i32 15, label %sw.bb.361
    i32 36, label %sw.bb.366
    i32 16, label %sw.bb.372
    i32 17, label %sw.bb.377
    i32 18, label %sw.bb.382
    i32 19, label %sw.bb.445
    i32 20, label %sw.bb.459
    i32 30, label %sw.bb.467
    i32 21, label %sw.bb.475
    i32 28, label %sw.bb.475
    i32 22, label %sw.bb.480
    i32 24, label %sw.bb.485
    i32 25, label %sw.bb.536
    i32 26, label %sw.bb.576
    i32 27, label %sw.bb.581
    i32 33, label %sw.bb.615
    i32 35, label %sw.bb.625
    i32 40, label %sw.bb.644
  ]

sw.bb:                                            ; preds = %while.body
  %6 = load i32, i32* @PL_savestack_ix, align 4
  %dec2 = add nsw i32 %6, -1
  store i32 %dec2, i32* @PL_savestack_ix, align 4
  %idxprom3 = sext i32 %dec2 to i64
  %7 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx4 = getelementptr inbounds %union.any, %union.any* %7, i64 %idxprom3
  %any_ptr = bitcast %union.any* %arrayidx4 to i8**
  %8 = load i8*, i8** %any_ptr, align 8
  %9 = bitcast i8* %8 to %struct.sv*
  store %struct.sv* %9, %struct.sv** %value, align 8
  %10 = load i32, i32* @PL_savestack_ix, align 4
  %dec5 = add nsw i32 %10, -1
  store i32 %dec5, i32* @PL_savestack_ix, align 4
  %idxprom6 = sext i32 %dec5 to i64
  %11 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx7 = getelementptr inbounds %union.any, %union.any* %11, i64 %idxprom6
  %any_ptr8 = bitcast %union.any* %arrayidx7 to i8**
  %12 = load i8*, i8** %any_ptr8, align 8
  %13 = bitcast i8* %12 to %struct.sv*
  store %struct.sv* %13, %struct.sv** %sv, align 8
  %14 = load %struct.sv*, %struct.sv** %sv, align 8
  %15 = load %struct.sv*, %struct.sv** %value, align 8
  call void @Perl_sv_replace(%struct.sv* %14, %struct.sv* %15)
  store i32 2, i32* @PL_localizing, align 4
  %16 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags, align 4
  %and = and i32 %17, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %sw.bb
  %18 = load %struct.sv*, %struct.sv** %sv, align 8
  %call = call i32 @Perl_mg_set(%struct.sv* %18)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %sw.bb
  store i32 0, i32* @PL_localizing, align 4
  br label %sw.epilog.662

sw.bb.11:                                         ; preds = %while.body
  %19 = load i32, i32* @PL_savestack_ix, align 4
  %dec12 = add nsw i32 %19, -1
  store i32 %dec12, i32* @PL_savestack_ix, align 4
  %idxprom13 = sext i32 %dec12 to i64
  %20 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx14 = getelementptr inbounds %union.any, %union.any* %20, i64 %idxprom13
  %any_ptr15 = bitcast %union.any* %arrayidx14 to i8**
  %21 = load i8*, i8** %any_ptr15, align 8
  %22 = bitcast i8* %21 to %struct.sv*
  store %struct.sv* %22, %struct.sv** %value, align 8
  %23 = load i32, i32* @PL_savestack_ix, align 4
  %dec16 = add nsw i32 %23, -1
  store i32 %dec16, i32* @PL_savestack_ix, align 4
  %idxprom17 = sext i32 %dec16 to i64
  %24 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx18 = getelementptr inbounds %union.any, %union.any* %24, i64 %idxprom17
  %any_ptr19 = bitcast %union.any* %arrayidx18 to i8**
  %25 = load i8*, i8** %any_ptr19, align 8
  %26 = bitcast i8* %25 to %struct.gv*
  store %struct.gv* %26, %struct.gv** %gv, align 8
  %27 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %27, i32 0, i32 0
  %28 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %28, i32 0, i32 7
  %29 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %29, i32 0, i32 0
  %30 = bitcast %struct.sv** %gp_sv to i8*
  store i8* %30, i8** %ptr, align 8
  %31 = load %struct.gv*, %struct.gv** %gv, align 8
  %32 = bitcast %struct.gv* %31 to %struct.av*
  store %struct.av* %32, %struct.av** %av, align 8
  br label %restore_sv

sw.bb.20:                                         ; preds = %while.body
  %33 = load i32, i32* @PL_savestack_ix, align 4
  %dec21 = add nsw i32 %33, -1
  store i32 %dec21, i32* @PL_savestack_ix, align 4
  %idxprom22 = sext i32 %dec21 to i64
  %34 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx23 = getelementptr inbounds %union.any, %union.any* %34, i64 %idxprom22
  %any_ptr24 = bitcast %union.any* %arrayidx23 to i8**
  %35 = load i8*, i8** %any_ptr24, align 8
  store i8* %35, i8** %str, align 8
  %36 = load i32, i32* @PL_savestack_ix, align 4
  %dec25 = add nsw i32 %36, -1
  store i32 %dec25, i32* @PL_savestack_ix, align 4
  %idxprom26 = sext i32 %dec25 to i64
  %37 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx27 = getelementptr inbounds %union.any, %union.any* %37, i64 %idxprom26
  %any_ptr28 = bitcast %union.any* %arrayidx27 to i8**
  %38 = load i8*, i8** %any_ptr28, align 8
  store i8* %38, i8** %ptr, align 8
  %39 = load i8*, i8** %ptr, align 8
  %40 = bitcast i8* %39 to i8**
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %str, align 8
  %cmp29 = icmp ne i8* %41, %42
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %sw.bb.20
  %43 = load i8*, i8** %ptr, align 8
  %44 = bitcast i8* %43 to i8**
  %45 = load i8*, i8** %44, align 8
  call void @Perl_safesysfree(i8* %45)
  %46 = load i8*, i8** %str, align 8
  %47 = load i8*, i8** %ptr, align 8
  %48 = bitcast i8* %47 to i8**
  store i8* %46, i8** %48, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %sw.bb.20
  br label %sw.epilog.662

sw.bb.32:                                         ; preds = %while.body
  %49 = load i32, i32* @PL_savestack_ix, align 4
  %dec33 = add nsw i32 %49, -1
  store i32 %dec33, i32* @PL_savestack_ix, align 4
  %idxprom34 = sext i32 %dec33 to i64
  %50 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx35 = getelementptr inbounds %union.any, %union.any* %50, i64 %idxprom34
  %any_ptr36 = bitcast %union.any* %arrayidx35 to i8**
  %51 = load i8*, i8** %any_ptr36, align 8
  store i8* %51, i8** %str, align 8
  %52 = load i32, i32* @PL_savestack_ix, align 4
  %dec37 = add nsw i32 %52, -1
  store i32 %dec37, i32* @PL_savestack_ix, align 4
  %idxprom38 = sext i32 %dec37 to i64
  %53 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx39 = getelementptr inbounds %union.any, %union.any* %53, i64 %idxprom38
  %any_ptr40 = bitcast %union.any* %arrayidx39 to i8**
  %54 = load i8*, i8** %any_ptr40, align 8
  store i8* %54, i8** %ptr, align 8
  %55 = load i8*, i8** %ptr, align 8
  %56 = bitcast i8* %55 to i8**
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %str, align 8
  %cmp41 = icmp ne i8* %57, %58
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %sw.bb.32
  %59 = load i8*, i8** %ptr, align 8
  %60 = bitcast i8* %59 to i8**
  %61 = load i8*, i8** %60, align 8
  call void @free(i8* %61)
  %62 = load i8*, i8** %str, align 8
  %63 = load i8*, i8** %ptr, align 8
  %64 = bitcast i8* %63 to i8**
  store i8* %62, i8** %64, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %sw.bb.32
  br label %sw.epilog.662

sw.bb.44:                                         ; preds = %while.body
  %65 = load i32, i32* @PL_savestack_ix, align 4
  %dec45 = add nsw i32 %65, -1
  store i32 %dec45, i32* @PL_savestack_ix, align 4
  %idxprom46 = sext i32 %dec45 to i64
  %66 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx47 = getelementptr inbounds %union.any, %union.any* %66, i64 %idxprom46
  %any_ptr48 = bitcast %union.any* %arrayidx47 to i8**
  %67 = load i8*, i8** %any_ptr48, align 8
  %68 = bitcast i8* %67 to %struct.sv*
  store %struct.sv* %68, %struct.sv** %value, align 8
  %69 = load i32, i32* @PL_savestack_ix, align 4
  %dec49 = add nsw i32 %69, -1
  store i32 %dec49, i32* @PL_savestack_ix, align 4
  %idxprom50 = sext i32 %dec49 to i64
  %70 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx51 = getelementptr inbounds %union.any, %union.any* %70, i64 %idxprom50
  %any_ptr52 = bitcast %union.any* %arrayidx51 to i8**
  %71 = load i8*, i8** %any_ptr52, align 8
  store i8* %71, i8** %ptr, align 8
  %72 = load i8*, i8** %ptr, align 8
  %73 = bitcast i8* %72 to %struct.sv**
  %74 = load %struct.sv*, %struct.sv** %73, align 8
  store %struct.sv* %74, %struct.sv** %sv, align 8
  %75 = load %struct.sv*, %struct.sv** %value, align 8
  %76 = load i8*, i8** %ptr, align 8
  %77 = bitcast i8* %76 to %struct.sv**
  store %struct.sv* %75, %struct.sv** %77, align 8
  %78 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_free(%struct.sv* %78)
  %79 = load %struct.sv*, %struct.sv** %value, align 8
  call void @Perl_sv_free(%struct.sv* %79)
  br label %sw.epilog.662

sw.bb.53:                                         ; preds = %while.body
  %80 = load i32, i32* @PL_savestack_ix, align 4
  %dec54 = add nsw i32 %80, -1
  store i32 %dec54, i32* @PL_savestack_ix, align 4
  %idxprom55 = sext i32 %dec54 to i64
  %81 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx56 = getelementptr inbounds %union.any, %union.any* %81, i64 %idxprom55
  %any_ptr57 = bitcast %union.any* %arrayidx56 to i8**
  %82 = load i8*, i8** %any_ptr57, align 8
  %83 = bitcast i8* %82 to %struct.sv*
  store %struct.sv* %83, %struct.sv** %value, align 8
  %84 = load i32, i32* @PL_savestack_ix, align 4
  %dec58 = add nsw i32 %84, -1
  store i32 %dec58, i32* @PL_savestack_ix, align 4
  %idxprom59 = sext i32 %dec58 to i64
  %85 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx60 = getelementptr inbounds %union.any, %union.any* %85, i64 %idxprom59
  %any_ptr61 = bitcast %union.any* %arrayidx60 to i8**
  %86 = load i8*, i8** %any_ptr61, align 8
  store i8* %86, i8** %ptr, align 8
  store %struct.av* null, %struct.av** %av, align 8
  br label %restore_sv

restore_sv:                                       ; preds = %if.end.573, %if.end.533, %sw.bb.53, %sw.bb.11
  %87 = load i8*, i8** %ptr, align 8
  %88 = bitcast i8* %87 to %struct.sv**
  %89 = load %struct.sv*, %struct.sv** %88, align 8
  store %struct.sv* %89, %struct.sv** %sv, align 8
  %90 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags62 = getelementptr inbounds %struct.sv, %struct.sv* %90, i32 0, i32 2
  %91 = load i32, i32* %sv_flags62, align 4
  %and63 = and i32 %91, 255
  %cmp64 = icmp uge i32 %and63, 7
  br i1 %cmp64, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %restore_sv
  %92 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any65 = getelementptr inbounds %struct.sv, %struct.sv* %92, i32 0, i32 0
  %93 = load i8*, i8** %sv_any65, align 8
  %94 = bitcast i8* %93 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %94, i32 0, i32 5
  %95 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  %tobool66 = icmp ne %struct.magic* %95, null
  br i1 %tobool66, label %land.lhs.true.67, label %if.else

land.lhs.true.67:                                 ; preds = %land.lhs.true
  %96 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags68 = getelementptr inbounds %struct.sv, %struct.sv* %96, i32 0, i32 2
  %97 = load i32, i32* %sv_flags68, align 4
  %and69 = and i32 %97, 255
  %cmp70 = icmp ne i32 %and69, 13
  br i1 %cmp70, label %if.then.71, label %if.else

if.then.71:                                       ; preds = %land.lhs.true.67
  %98 = load %struct.sv*, %struct.sv** %value, align 8
  %sv_flags72 = getelementptr inbounds %struct.sv, %struct.sv* %98, i32 0, i32 2
  %99 = load i32, i32* %sv_flags72, align 4
  %and73 = and i32 %99, 255
  %100 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags74 = getelementptr inbounds %struct.sv, %struct.sv* %100, i32 0, i32 2
  %101 = load i32, i32* %sv_flags74, align 4
  %and75 = and i32 %101, 255
  %cmp76 = icmp uge i32 %and73, %and75
  br i1 %cmp76, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.71
  %102 = load %struct.sv*, %struct.sv** %value, align 8
  %103 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags77 = getelementptr inbounds %struct.sv, %struct.sv* %103, i32 0, i32 2
  %104 = load i32, i32* %sv_flags77, align 4
  %and78 = and i32 %104, 255
  %call79 = call signext i8 @Perl_sv_upgrade(%struct.sv* %102, i32 %and78)
  %conv = sext i8 %call79 to i32
  %tobool80 = icmp ne i32 %conv, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.71
  %105 = phi i1 [ true, %if.then.71 ], [ %tobool80, %lor.rhs ]
  %lor.ext = zext i1 %105 to i32
  %106 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any81 = getelementptr inbounds %struct.sv, %struct.sv* %106, i32 0, i32 0
  %107 = load i8*, i8** %sv_any81, align 8
  %108 = bitcast i8* %107 to %struct.xpvmg*
  %xmg_magic82 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %108, i32 0, i32 5
  %109 = load %struct.magic*, %struct.magic** %xmg_magic82, align 8
  %110 = load %struct.sv*, %struct.sv** %value, align 8
  %sv_any83 = getelementptr inbounds %struct.sv, %struct.sv* %110, i32 0, i32 0
  %111 = load i8*, i8** %sv_any83, align 8
  %112 = bitcast i8* %111 to %struct.xpvmg*
  %xmg_magic84 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %112, i32 0, i32 5
  store %struct.magic* %109, %struct.magic** %xmg_magic84, align 8
  %113 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags85 = getelementptr inbounds %struct.sv, %struct.sv* %113, i32 0, i32 2
  %114 = load i32, i32* %sv_flags85, align 4
  %and86 = and i32 %114, 57344
  %115 = load %struct.sv*, %struct.sv** %value, align 8
  %sv_flags87 = getelementptr inbounds %struct.sv, %struct.sv* %115, i32 0, i32 2
  %116 = load i32, i32* %sv_flags87, align 4
  %or = or i32 %116, %and86
  store i32 %or, i32* %sv_flags87, align 4
  %117 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags88 = getelementptr inbounds %struct.sv, %struct.sv* %117, i32 0, i32 2
  %118 = load i32, i32* %sv_flags88, align 4
  %and89 = and i32 %118, -57345
  store i32 %and89, i32* %sv_flags88, align 4
  %119 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any90 = getelementptr inbounds %struct.sv, %struct.sv* %119, i32 0, i32 0
  %120 = load i8*, i8** %sv_any90, align 8
  %121 = bitcast i8* %120 to %struct.xpvmg*
  %xmg_magic91 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %121, i32 0, i32 5
  store %struct.magic* null, %struct.magic** %xmg_magic91, align 8
  br label %if.end.115

if.else:                                          ; preds = %land.lhs.true.67, %land.lhs.true, %restore_sv
  %122 = load %struct.sv*, %struct.sv** %value, align 8
  %sv_flags92 = getelementptr inbounds %struct.sv, %struct.sv* %122, i32 0, i32 2
  %123 = load i32, i32* %sv_flags92, align 4
  %and93 = and i32 %123, 255
  %cmp94 = icmp uge i32 %and93, 7
  br i1 %cmp94, label %land.lhs.true.96, label %if.end.114

land.lhs.true.96:                                 ; preds = %if.else
  %124 = load %struct.sv*, %struct.sv** %value, align 8
  %sv_any97 = getelementptr inbounds %struct.sv, %struct.sv* %124, i32 0, i32 0
  %125 = load i8*, i8** %sv_any97, align 8
  %126 = bitcast i8* %125 to %struct.xpvmg*
  %xmg_magic98 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %126, i32 0, i32 5
  %127 = load %struct.magic*, %struct.magic** %xmg_magic98, align 8
  %tobool99 = icmp ne %struct.magic* %127, null
  br i1 %tobool99, label %land.lhs.true.100, label %if.end.114

land.lhs.true.100:                                ; preds = %land.lhs.true.96
  %128 = load %struct.sv*, %struct.sv** %value, align 8
  %sv_flags101 = getelementptr inbounds %struct.sv, %struct.sv* %128, i32 0, i32 2
  %129 = load i32, i32* %sv_flags101, align 4
  %and102 = and i32 %129, 255
  %cmp103 = icmp ne i32 %and102, 13
  br i1 %cmp103, label %if.then.105, label %if.end.114

if.then.105:                                      ; preds = %land.lhs.true.100
  %130 = load %struct.sv*, %struct.sv** %value, align 8
  %sv_flags106 = getelementptr inbounds %struct.sv, %struct.sv* %130, i32 0, i32 2
  %131 = load i32, i32* %sv_flags106, align 4
  %and107 = and i32 %131, 100663296
  %shr = lshr i32 %and107, 8
  %132 = load %struct.sv*, %struct.sv** %value, align 8
  %sv_flags108 = getelementptr inbounds %struct.sv, %struct.sv* %132, i32 0, i32 2
  %133 = load i32, i32* %sv_flags108, align 4
  %or109 = or i32 %133, %shr
  store i32 %or109, i32* %sv_flags108, align 4
  %134 = load %struct.sv*, %struct.sv** %value, align 8
  %sv_flags110 = getelementptr inbounds %struct.sv, %struct.sv* %134, i32 0, i32 2
  %135 = load i32, i32* %sv_flags110, align 4
  %and111 = and i32 %135, -57345
  store i32 %and111, i32* %sv_flags110, align 4
  %136 = load %struct.sv*, %struct.sv** %value, align 8
  %sv_any112 = getelementptr inbounds %struct.sv, %struct.sv* %136, i32 0, i32 0
  %137 = load i8*, i8** %sv_any112, align 8
  %138 = bitcast i8* %137 to %struct.xpvmg*
  %xmg_magic113 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %138, i32 0, i32 5
  store %struct.magic* null, %struct.magic** %xmg_magic113, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.105, %land.lhs.true.100, %land.lhs.true.96, %if.else
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %lor.end
  %139 = load %struct.sv*, %struct.sv** %value, align 8
  %140 = load i8*, i8** %ptr, align 8
  %141 = bitcast i8* %140 to %struct.sv**
  store %struct.sv* %139, %struct.sv** %141, align 8
  %142 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_free(%struct.sv* %142)
  store i32 2, i32* @PL_localizing, align 4
  %143 = load %struct.sv*, %struct.sv** %value, align 8
  %sv_flags116 = getelementptr inbounds %struct.sv, %struct.sv* %143, i32 0, i32 2
  %144 = load i32, i32* %sv_flags116, align 4
  %and117 = and i32 %144, 16384
  %tobool118 = icmp ne i32 %and117, 0
  br i1 %tobool118, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %if.end.115
  %145 = load %struct.sv*, %struct.sv** %value, align 8
  %call120 = call i32 @Perl_mg_set(%struct.sv* %145)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %if.end.115
  store i32 0, i32* @PL_localizing, align 4
  %146 = load %struct.sv*, %struct.sv** %value, align 8
  call void @Perl_sv_free(%struct.sv* %146)
  %147 = load %struct.av*, %struct.av** %av, align 8
  %tobool122 = icmp ne %struct.av* %147, null
  br i1 %tobool122, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.end.121
  %148 = load %struct.av*, %struct.av** %av, align 8
  %149 = bitcast %struct.av* %148 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %149)
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.123, %if.end.121
  br label %sw.epilog.662

sw.bb.125:                                        ; preds = %while.body
  %150 = load i32, i32* @PL_savestack_ix, align 4
  %dec126 = add nsw i32 %150, -1
  store i32 %dec126, i32* @PL_savestack_ix, align 4
  %idxprom127 = sext i32 %dec126 to i64
  %151 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx128 = getelementptr inbounds %union.any, %union.any* %151, i64 %idxprom127
  %any_ptr129 = bitcast %union.any* %arrayidx128 to i8**
  %152 = load i8*, i8** %any_ptr129, align 8
  %153 = bitcast i8* %152 to %struct.av*
  store %struct.av* %153, %struct.av** %av, align 8
  %154 = load i32, i32* @PL_savestack_ix, align 4
  %dec130 = add nsw i32 %154, -1
  store i32 %dec130, i32* @PL_savestack_ix, align 4
  %idxprom131 = sext i32 %dec130 to i64
  %155 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx132 = getelementptr inbounds %union.any, %union.any* %155, i64 %idxprom131
  %any_ptr133 = bitcast %union.any* %arrayidx132 to i8**
  %156 = load i8*, i8** %any_ptr133, align 8
  %157 = bitcast i8* %156 to %struct.gv*
  store %struct.gv* %157, %struct.gv** %gv, align 8
  %158 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any134 = getelementptr inbounds %struct.gv, %struct.gv* %158, i32 0, i32 0
  %159 = load %struct.xpvgv*, %struct.xpvgv** %sv_any134, align 8
  %xgv_gp135 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %159, i32 0, i32 7
  %160 = load %struct.gp*, %struct.gp** %xgv_gp135, align 8
  %gp_av = getelementptr inbounds %struct.gp, %struct.gp* %160, i32 0, i32 4
  %161 = load %struct.av*, %struct.av** %gp_av, align 8
  %tobool136 = icmp ne %struct.av* %161, null
  br i1 %tobool136, label %if.then.137, label %if.end.153

if.then.137:                                      ; preds = %sw.bb.125
  %162 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any138 = getelementptr inbounds %struct.gv, %struct.gv* %162, i32 0, i32 0
  %163 = load %struct.xpvgv*, %struct.xpvgv** %sv_any138, align 8
  %xgv_gp139 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %163, i32 0, i32 7
  %164 = load %struct.gp*, %struct.gp** %xgv_gp139, align 8
  %gp_av140 = getelementptr inbounds %struct.gp, %struct.gp* %164, i32 0, i32 4
  %165 = load %struct.av*, %struct.av** %gp_av140, align 8
  store %struct.av* %165, %struct.av** %goner, align 8
  %166 = load %struct.av*, %struct.av** %goner, align 8
  %sv_any141 = getelementptr inbounds %struct.av, %struct.av* %166, i32 0, i32 0
  %167 = load %struct.xpvav*, %struct.xpvav** %sv_any141, align 8
  %168 = bitcast %struct.xpvav* %167 to %struct.xpvmg*
  %xmg_magic142 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %168, i32 0, i32 5
  %169 = load %struct.magic*, %struct.magic** %xmg_magic142, align 8
  %170 = load %struct.av*, %struct.av** %av, align 8
  %sv_any143 = getelementptr inbounds %struct.av, %struct.av* %170, i32 0, i32 0
  %171 = load %struct.xpvav*, %struct.xpvav** %sv_any143, align 8
  %172 = bitcast %struct.xpvav* %171 to %struct.xpvmg*
  %xmg_magic144 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %172, i32 0, i32 5
  store %struct.magic* %169, %struct.magic** %xmg_magic144, align 8
  %173 = load %struct.av*, %struct.av** %goner, align 8
  %sv_flags145 = getelementptr inbounds %struct.av, %struct.av* %173, i32 0, i32 2
  %174 = load i32, i32* %sv_flags145, align 4
  %and146 = and i32 %174, 57344
  %175 = load %struct.av*, %struct.av** %av, align 8
  %176 = bitcast %struct.av* %175 to %struct.sv*
  %sv_flags147 = getelementptr inbounds %struct.sv, %struct.sv* %176, i32 0, i32 2
  %177 = load i32, i32* %sv_flags147, align 4
  %or148 = or i32 %177, %and146
  store i32 %or148, i32* %sv_flags147, align 4
  %178 = load %struct.av*, %struct.av** %goner, align 8
  %sv_flags149 = getelementptr inbounds %struct.av, %struct.av* %178, i32 0, i32 2
  %179 = load i32, i32* %sv_flags149, align 4
  %and150 = and i32 %179, -57345
  store i32 %and150, i32* %sv_flags149, align 4
  %180 = load %struct.av*, %struct.av** %goner, align 8
  %sv_any151 = getelementptr inbounds %struct.av, %struct.av* %180, i32 0, i32 0
  %181 = load %struct.xpvav*, %struct.xpvav** %sv_any151, align 8
  %182 = bitcast %struct.xpvav* %181 to %struct.xpvmg*
  %xmg_magic152 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %182, i32 0, i32 5
  store %struct.magic* null, %struct.magic** %xmg_magic152, align 8
  %183 = load %struct.av*, %struct.av** %goner, align 8
  %184 = bitcast %struct.av* %183 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %184)
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.137, %sw.bb.125
  %185 = load %struct.av*, %struct.av** %av, align 8
  %186 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any154 = getelementptr inbounds %struct.gv, %struct.gv* %186, i32 0, i32 0
  %187 = load %struct.xpvgv*, %struct.xpvgv** %sv_any154, align 8
  %xgv_gp155 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %187, i32 0, i32 7
  %188 = load %struct.gp*, %struct.gp** %xgv_gp155, align 8
  %gp_av156 = getelementptr inbounds %struct.gp, %struct.gp* %188, i32 0, i32 4
  store %struct.av* %185, %struct.av** %gp_av156, align 8
  %189 = load %struct.av*, %struct.av** %av, align 8
  %sv_flags157 = getelementptr inbounds %struct.av, %struct.av* %189, i32 0, i32 2
  %190 = load i32, i32* %sv_flags157, align 4
  %and158 = and i32 %190, 57344
  %tobool159 = icmp ne i32 %and158, 0
  br i1 %tobool159, label %if.then.160, label %if.end.167

if.then.160:                                      ; preds = %if.end.153
  store i32 2, i32* @PL_localizing, align 4
  %191 = load %struct.av*, %struct.av** %av, align 8
  %192 = bitcast %struct.av* %191 to %struct.sv*
  %sv_flags161 = getelementptr inbounds %struct.sv, %struct.sv* %192, i32 0, i32 2
  %193 = load i32, i32* %sv_flags161, align 4
  %and162 = and i32 %193, 16384
  %tobool163 = icmp ne i32 %and162, 0
  br i1 %tobool163, label %if.then.164, label %if.end.166

if.then.164:                                      ; preds = %if.then.160
  %194 = load %struct.av*, %struct.av** %av, align 8
  %195 = bitcast %struct.av* %194 to %struct.sv*
  %call165 = call i32 @Perl_mg_set(%struct.sv* %195)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.164, %if.then.160
  store i32 0, i32* @PL_localizing, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.153
  br label %sw.epilog.662

sw.bb.168:                                        ; preds = %while.body
  %196 = load i32, i32* @PL_savestack_ix, align 4
  %dec169 = add nsw i32 %196, -1
  store i32 %dec169, i32* @PL_savestack_ix, align 4
  %idxprom170 = sext i32 %dec169 to i64
  %197 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx171 = getelementptr inbounds %union.any, %union.any* %197, i64 %idxprom170
  %any_ptr172 = bitcast %union.any* %arrayidx171 to i8**
  %198 = load i8*, i8** %any_ptr172, align 8
  %199 = bitcast i8* %198 to %struct.hv*
  store %struct.hv* %199, %struct.hv** %hv, align 8
  %200 = load i32, i32* @PL_savestack_ix, align 4
  %dec173 = add nsw i32 %200, -1
  store i32 %dec173, i32* @PL_savestack_ix, align 4
  %idxprom174 = sext i32 %dec173 to i64
  %201 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx175 = getelementptr inbounds %union.any, %union.any* %201, i64 %idxprom174
  %any_ptr176 = bitcast %union.any* %arrayidx175 to i8**
  %202 = load i8*, i8** %any_ptr176, align 8
  %203 = bitcast i8* %202 to %struct.gv*
  store %struct.gv* %203, %struct.gv** %gv, align 8
  %204 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any177 = getelementptr inbounds %struct.gv, %struct.gv* %204, i32 0, i32 0
  %205 = load %struct.xpvgv*, %struct.xpvgv** %sv_any177, align 8
  %xgv_gp178 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %205, i32 0, i32 7
  %206 = load %struct.gp*, %struct.gp** %xgv_gp178, align 8
  %gp_hv = getelementptr inbounds %struct.gp, %struct.gp* %206, i32 0, i32 5
  %207 = load %struct.hv*, %struct.hv** %gp_hv, align 8
  %tobool179 = icmp ne %struct.hv* %207, null
  br i1 %tobool179, label %if.then.180, label %if.end.197

if.then.180:                                      ; preds = %sw.bb.168
  %208 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any182 = getelementptr inbounds %struct.gv, %struct.gv* %208, i32 0, i32 0
  %209 = load %struct.xpvgv*, %struct.xpvgv** %sv_any182, align 8
  %xgv_gp183 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %209, i32 0, i32 7
  %210 = load %struct.gp*, %struct.gp** %xgv_gp183, align 8
  %gp_hv184 = getelementptr inbounds %struct.gp, %struct.gp* %210, i32 0, i32 5
  %211 = load %struct.hv*, %struct.hv** %gp_hv184, align 8
  store %struct.hv* %211, %struct.hv** %goner181, align 8
  %212 = load %struct.hv*, %struct.hv** %goner181, align 8
  %sv_any185 = getelementptr inbounds %struct.hv, %struct.hv* %212, i32 0, i32 0
  %213 = load %struct.xpvhv*, %struct.xpvhv** %sv_any185, align 8
  %214 = bitcast %struct.xpvhv* %213 to %struct.xpvmg*
  %xmg_magic186 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %214, i32 0, i32 5
  %215 = load %struct.magic*, %struct.magic** %xmg_magic186, align 8
  %216 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_any187 = getelementptr inbounds %struct.hv, %struct.hv* %216, i32 0, i32 0
  %217 = load %struct.xpvhv*, %struct.xpvhv** %sv_any187, align 8
  %218 = bitcast %struct.xpvhv* %217 to %struct.xpvmg*
  %xmg_magic188 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %218, i32 0, i32 5
  store %struct.magic* %215, %struct.magic** %xmg_magic188, align 8
  %219 = load %struct.hv*, %struct.hv** %goner181, align 8
  %sv_flags189 = getelementptr inbounds %struct.hv, %struct.hv* %219, i32 0, i32 2
  %220 = load i32, i32* %sv_flags189, align 4
  %and190 = and i32 %220, 57344
  %221 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_flags191 = getelementptr inbounds %struct.hv, %struct.hv* %221, i32 0, i32 2
  %222 = load i32, i32* %sv_flags191, align 4
  %or192 = or i32 %222, %and190
  store i32 %or192, i32* %sv_flags191, align 4
  %223 = load %struct.hv*, %struct.hv** %goner181, align 8
  %sv_flags193 = getelementptr inbounds %struct.hv, %struct.hv* %223, i32 0, i32 2
  %224 = load i32, i32* %sv_flags193, align 4
  %and194 = and i32 %224, -57345
  store i32 %and194, i32* %sv_flags193, align 4
  %225 = load %struct.hv*, %struct.hv** %goner181, align 8
  %sv_any195 = getelementptr inbounds %struct.hv, %struct.hv* %225, i32 0, i32 0
  %226 = load %struct.xpvhv*, %struct.xpvhv** %sv_any195, align 8
  %227 = bitcast %struct.xpvhv* %226 to %struct.xpvmg*
  %xmg_magic196 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %227, i32 0, i32 5
  store %struct.magic* null, %struct.magic** %xmg_magic196, align 8
  %228 = load %struct.hv*, %struct.hv** %goner181, align 8
  %229 = bitcast %struct.hv* %228 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %229)
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.180, %sw.bb.168
  %230 = load %struct.hv*, %struct.hv** %hv, align 8
  %231 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any198 = getelementptr inbounds %struct.gv, %struct.gv* %231, i32 0, i32 0
  %232 = load %struct.xpvgv*, %struct.xpvgv** %sv_any198, align 8
  %xgv_gp199 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %232, i32 0, i32 7
  %233 = load %struct.gp*, %struct.gp** %xgv_gp199, align 8
  %gp_hv200 = getelementptr inbounds %struct.gp, %struct.gp* %233, i32 0, i32 5
  store %struct.hv* %230, %struct.hv** %gp_hv200, align 8
  %234 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_flags201 = getelementptr inbounds %struct.hv, %struct.hv* %234, i32 0, i32 2
  %235 = load i32, i32* %sv_flags201, align 4
  %and202 = and i32 %235, 57344
  %tobool203 = icmp ne i32 %and202, 0
  br i1 %tobool203, label %if.then.204, label %if.end.211

if.then.204:                                      ; preds = %if.end.197
  store i32 2, i32* @PL_localizing, align 4
  %236 = load %struct.hv*, %struct.hv** %hv, align 8
  %237 = bitcast %struct.hv* %236 to %struct.sv*
  %sv_flags205 = getelementptr inbounds %struct.sv, %struct.sv* %237, i32 0, i32 2
  %238 = load i32, i32* %sv_flags205, align 4
  %and206 = and i32 %238, 16384
  %tobool207 = icmp ne i32 %and206, 0
  br i1 %tobool207, label %if.then.208, label %if.end.210

if.then.208:                                      ; preds = %if.then.204
  %239 = load %struct.hv*, %struct.hv** %hv, align 8
  %240 = bitcast %struct.hv* %239 to %struct.sv*
  %call209 = call i32 @Perl_mg_set(%struct.sv* %240)
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.208, %if.then.204
  store i32 0, i32* @PL_localizing, align 4
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.end.197
  br label %sw.epilog.662

sw.bb.212:                                        ; preds = %while.body
  %241 = load i32, i32* @PL_savestack_ix, align 4
  %dec213 = add nsw i32 %241, -1
  store i32 %dec213, i32* @PL_savestack_ix, align 4
  %idxprom214 = sext i32 %dec213 to i64
  %242 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx215 = getelementptr inbounds %union.any, %union.any* %242, i64 %idxprom214
  %any_ptr216 = bitcast %union.any* %arrayidx215 to i8**
  %243 = load i8*, i8** %any_ptr216, align 8
  store i8* %243, i8** %ptr, align 8
  %244 = load i32, i32* @PL_savestack_ix, align 4
  %dec217 = add nsw i32 %244, -1
  store i32 %dec217, i32* @PL_savestack_ix, align 4
  %idxprom218 = sext i32 %dec217 to i64
  %245 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx219 = getelementptr inbounds %union.any, %union.any* %245, i64 %idxprom218
  %any_i32220 = bitcast %union.any* %arrayidx219 to i32*
  %246 = load i32, i32* %any_i32220, align 4
  %247 = load i8*, i8** %ptr, align 8
  %248 = bitcast i8* %247 to i32*
  store i32 %246, i32* %248, align 4
  br label %sw.epilog.662

sw.bb.221:                                        ; preds = %while.body
  %249 = load i32, i32* @PL_savestack_ix, align 4
  %dec222 = add nsw i32 %249, -1
  store i32 %dec222, i32* @PL_savestack_ix, align 4
  %idxprom223 = sext i32 %dec222 to i64
  %250 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx224 = getelementptr inbounds %union.any, %union.any* %250, i64 %idxprom223
  %any_ptr225 = bitcast %union.any* %arrayidx224 to i8**
  %251 = load i8*, i8** %any_ptr225, align 8
  store i8* %251, i8** %ptr, align 8
  %252 = load i32, i32* @PL_savestack_ix, align 4
  %dec226 = add nsw i32 %252, -1
  store i32 %dec226, i32* @PL_savestack_ix, align 4
  %idxprom227 = sext i32 %dec226 to i64
  %253 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx228 = getelementptr inbounds %union.any, %union.any* %253, i64 %idxprom227
  %any_long = bitcast %union.any* %arrayidx228 to i64*
  %254 = load i64, i64* %any_long, align 8
  %255 = load i8*, i8** %ptr, align 8
  %256 = bitcast i8* %255 to i64*
  store i64 %254, i64* %256, align 8
  br label %sw.epilog.662

sw.bb.229:                                        ; preds = %while.body
  %257 = load i32, i32* @PL_savestack_ix, align 4
  %dec230 = add nsw i32 %257, -1
  store i32 %dec230, i32* @PL_savestack_ix, align 4
  %idxprom231 = sext i32 %dec230 to i64
  %258 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx232 = getelementptr inbounds %union.any, %union.any* %258, i64 %idxprom231
  %any_ptr233 = bitcast %union.any* %arrayidx232 to i8**
  %259 = load i8*, i8** %any_ptr233, align 8
  store i8* %259, i8** %ptr, align 8
  %260 = load i32, i32* @PL_savestack_ix, align 4
  %dec234 = add nsw i32 %260, -1
  store i32 %dec234, i32* @PL_savestack_ix, align 4
  %idxprom235 = sext i32 %dec234 to i64
  %261 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx236 = getelementptr inbounds %union.any, %union.any* %261, i64 %idxprom235
  %any_bool = bitcast %union.any* %arrayidx236 to i8*
  %262 = load i8, i8* %any_bool, align 1
  %263 = load i8*, i8** %ptr, align 8
  store i8 %262, i8* %263, align 1
  br label %sw.epilog.662

sw.bb.237:                                        ; preds = %while.body
  %264 = load i32, i32* @PL_savestack_ix, align 4
  %dec238 = add nsw i32 %264, -1
  store i32 %dec238, i32* @PL_savestack_ix, align 4
  %idxprom239 = sext i32 %dec238 to i64
  %265 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx240 = getelementptr inbounds %union.any, %union.any* %265, i64 %idxprom239
  %any_ptr241 = bitcast %union.any* %arrayidx240 to i8**
  %266 = load i8*, i8** %any_ptr241, align 8
  store i8* %266, i8** %ptr, align 8
  %267 = load i32, i32* @PL_savestack_ix, align 4
  %dec242 = add nsw i32 %267, -1
  store i32 %dec242, i32* @PL_savestack_ix, align 4
  %idxprom243 = sext i32 %dec242 to i64
  %268 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx244 = getelementptr inbounds %union.any, %union.any* %268, i64 %idxprom243
  %any_i32245 = bitcast %union.any* %arrayidx244 to i32*
  %269 = load i32, i32* %any_i32245, align 4
  %270 = load i8*, i8** %ptr, align 8
  %271 = bitcast i8* %270 to i32*
  store i32 %269, i32* %271, align 4
  br label %sw.epilog.662

sw.bb.246:                                        ; preds = %while.body
  %272 = load i32, i32* @PL_savestack_ix, align 4
  %dec247 = add nsw i32 %272, -1
  store i32 %dec247, i32* @PL_savestack_ix, align 4
  %idxprom248 = sext i32 %dec247 to i64
  %273 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx249 = getelementptr inbounds %union.any, %union.any* %273, i64 %idxprom248
  %any_ptr250 = bitcast %union.any* %arrayidx249 to i8**
  %274 = load i8*, i8** %any_ptr250, align 8
  store i8* %274, i8** %ptr, align 8
  %275 = load i32, i32* @PL_savestack_ix, align 4
  %dec251 = add nsw i32 %275, -1
  store i32 %dec251, i32* @PL_savestack_ix, align 4
  %idxprom252 = sext i32 %dec251 to i64
  %276 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx253 = getelementptr inbounds %union.any, %union.any* %276, i64 %idxprom252
  %any_i32254 = bitcast %union.any* %arrayidx253 to i32*
  %277 = load i32, i32* %any_i32254, align 4
  %conv255 = trunc i32 %277 to i16
  %278 = load i8*, i8** %ptr, align 8
  %279 = bitcast i8* %278 to i16*
  store i16 %conv255, i16* %279, align 2
  br label %sw.epilog.662

sw.bb.256:                                        ; preds = %while.body
  %280 = load i32, i32* @PL_savestack_ix, align 4
  %dec257 = add nsw i32 %280, -1
  store i32 %dec257, i32* @PL_savestack_ix, align 4
  %idxprom258 = sext i32 %dec257 to i64
  %281 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx259 = getelementptr inbounds %union.any, %union.any* %281, i64 %idxprom258
  %any_ptr260 = bitcast %union.any* %arrayidx259 to i8**
  %282 = load i8*, i8** %any_ptr260, align 8
  store i8* %282, i8** %ptr, align 8
  %283 = load i32, i32* @PL_savestack_ix, align 4
  %dec261 = add nsw i32 %283, -1
  store i32 %dec261, i32* @PL_savestack_ix, align 4
  %idxprom262 = sext i32 %dec261 to i64
  %284 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx263 = getelementptr inbounds %union.any, %union.any* %284, i64 %idxprom262
  %any_i32264 = bitcast %union.any* %arrayidx263 to i32*
  %285 = load i32, i32* %any_i32264, align 4
  %conv265 = trunc i32 %285 to i8
  %286 = load i8*, i8** %ptr, align 8
  store i8 %conv265, i8* %286, align 1
  br label %sw.epilog.662

sw.bb.266:                                        ; preds = %while.body
  %287 = load i32, i32* @PL_savestack_ix, align 4
  %dec267 = add nsw i32 %287, -1
  store i32 %dec267, i32* @PL_savestack_ix, align 4
  %idxprom268 = sext i32 %dec267 to i64
  %288 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx269 = getelementptr inbounds %union.any, %union.any* %288, i64 %idxprom268
  %any_ptr270 = bitcast %union.any* %arrayidx269 to i8**
  %289 = load i8*, i8** %any_ptr270, align 8
  store i8* %289, i8** %ptr, align 8
  %290 = load i32, i32* @PL_savestack_ix, align 4
  %dec271 = add nsw i32 %290, -1
  store i32 %dec271, i32* @PL_savestack_ix, align 4
  %idxprom272 = sext i32 %dec271 to i64
  %291 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx273 = getelementptr inbounds %union.any, %union.any* %291, i64 %idxprom272
  %any_iv = bitcast %union.any* %arrayidx273 to i64*
  %292 = load i64, i64* %any_iv, align 8
  %293 = load i8*, i8** %ptr, align 8
  %294 = bitcast i8* %293 to i64*
  store i64 %292, i64* %294, align 8
  br label %sw.epilog.662

sw.bb.274:                                        ; preds = %while.body
  %295 = load i32, i32* @PL_savestack_ix, align 4
  %dec275 = add nsw i32 %295, -1
  store i32 %dec275, i32* @PL_savestack_ix, align 4
  %idxprom276 = sext i32 %dec275 to i64
  %296 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx277 = getelementptr inbounds %union.any, %union.any* %296, i64 %idxprom276
  %any_ptr278 = bitcast %union.any* %arrayidx277 to i8**
  %297 = load i8*, i8** %any_ptr278, align 8
  store i8* %297, i8** %ptr, align 8
  %298 = load i32, i32* @PL_savestack_ix, align 4
  %dec279 = add nsw i32 %298, -1
  store i32 %dec279, i32* @PL_savestack_ix, align 4
  %idxprom280 = sext i32 %dec279 to i64
  %299 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx281 = getelementptr inbounds %union.any, %union.any* %299, i64 %idxprom280
  %any_ptr282 = bitcast %union.any* %arrayidx281 to i8**
  %300 = load i8*, i8** %any_ptr282, align 8
  %301 = bitcast i8* %300 to %struct.sv*
  %302 = load i8*, i8** %ptr, align 8
  %303 = bitcast i8* %302 to %struct.sv**
  store %struct.sv* %301, %struct.sv** %303, align 8
  br label %sw.epilog.662

sw.bb.283:                                        ; preds = %while.body, %while.body
  %304 = load i32, i32* @PL_savestack_ix, align 4
  %dec284 = add nsw i32 %304, -1
  store i32 %dec284, i32* @PL_savestack_ix, align 4
  %idxprom285 = sext i32 %dec284 to i64
  %305 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx286 = getelementptr inbounds %union.any, %union.any* %305, i64 %idxprom285
  %any_ptr287 = bitcast %union.any* %arrayidx286 to i8**
  %306 = load i8*, i8** %any_ptr287, align 8
  store i8* %306, i8** %ptr, align 8
  %307 = load i32, i32* @PL_savestack_ix, align 4
  %dec288 = add nsw i32 %307, -1
  store i32 %dec288, i32* @PL_savestack_ix, align 4
  %idxprom289 = sext i32 %dec288 to i64
  %308 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx290 = getelementptr inbounds %union.any, %union.any* %308, i64 %idxprom289
  %any_ptr291 = bitcast %union.any* %arrayidx290 to i8**
  %309 = load i8*, i8** %any_ptr291, align 8
  %310 = load i8*, i8** %ptr, align 8
  %311 = bitcast i8* %310 to i8**
  store i8* %309, i8** %311, align 8
  br label %sw.epilog.662

sw.bb.292:                                        ; preds = %while.body
  %312 = load i32, i32* @PL_savestack_ix, align 4
  %dec293 = add nsw i32 %312, -1
  store i32 %dec293, i32* @PL_savestack_ix, align 4
  %idxprom294 = sext i32 %dec293 to i64
  %313 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx295 = getelementptr inbounds %union.any, %union.any* %313, i64 %idxprom294
  %any_ptr296 = bitcast %union.any* %arrayidx295 to i8**
  %314 = load i8*, i8** %any_ptr296, align 8
  store i8* %314, i8** %ptr, align 8
  %315 = load i32, i32* @PL_savestack_ix, align 4
  %dec297 = add nsw i32 %315, -1
  store i32 %dec297, i32* @PL_savestack_ix, align 4
  %idxprom298 = sext i32 %dec297 to i64
  %316 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx299 = getelementptr inbounds %union.any, %union.any* %316, i64 %idxprom298
  %any_ptr300 = bitcast %union.any* %arrayidx299 to i8**
  %317 = load i8*, i8** %any_ptr300, align 8
  %318 = bitcast i8* %317 to %struct.hv*
  %319 = load i8*, i8** %ptr, align 8
  %320 = bitcast i8* %319 to %struct.hv**
  store %struct.hv* %318, %struct.hv** %320, align 8
  br label %sw.epilog.662

sw.bb.301:                                        ; preds = %while.body
  %321 = load i32, i32* @PL_savestack_ix, align 4
  %dec302 = add nsw i32 %321, -1
  store i32 %dec302, i32* @PL_savestack_ix, align 4
  %idxprom303 = sext i32 %dec302 to i64
  %322 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx304 = getelementptr inbounds %union.any, %union.any* %322, i64 %idxprom303
  %any_ptr305 = bitcast %union.any* %arrayidx304 to i8**
  %323 = load i8*, i8** %any_ptr305, align 8
  store i8* %323, i8** %ptr, align 8
  %324 = load i32, i32* @PL_savestack_ix, align 4
  %dec306 = add nsw i32 %324, -1
  store i32 %dec306, i32* @PL_savestack_ix, align 4
  %idxprom307 = sext i32 %dec306 to i64
  %325 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx308 = getelementptr inbounds %union.any, %union.any* %325, i64 %idxprom307
  %any_ptr309 = bitcast %union.any* %arrayidx308 to i8**
  %326 = load i8*, i8** %any_ptr309, align 8
  %327 = bitcast i8* %326 to %struct.av*
  %328 = load i8*, i8** %ptr, align 8
  %329 = bitcast i8* %328 to %struct.av**
  store %struct.av* %327, %struct.av** %329, align 8
  br label %sw.epilog.662

sw.bb.310:                                        ; preds = %while.body
  %330 = load i32, i32* @PL_savestack_ix, align 4
  %dec311 = add nsw i32 %330, -1
  store i32 %dec311, i32* @PL_savestack_ix, align 4
  %idxprom312 = sext i32 %dec311 to i64
  %331 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx313 = getelementptr inbounds %union.any, %union.any* %331, i64 %idxprom312
  %any_ptr314 = bitcast %union.any* %arrayidx313 to i8**
  %332 = load i8*, i8** %any_ptr314, align 8
  %333 = bitcast i8* %332 to %struct.gv*
  store %struct.gv* %333, %struct.gv** %gv, align 8
  %334 = load %struct.gv*, %struct.gv** %gv, align 8
  %335 = bitcast %struct.gv* %334 to %struct.sv*
  call void @Perl_sv_clear(%struct.sv* %335)
  br label %sw.epilog.662

sw.bb.315:                                        ; preds = %while.body
  %336 = load i32, i32* @PL_savestack_ix, align 4
  %dec316 = add nsw i32 %336, -1
  store i32 %dec316, i32* @PL_savestack_ix, align 4
  %idxprom317 = sext i32 %dec316 to i64
  %337 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx318 = getelementptr inbounds %union.any, %union.any* %337, i64 %idxprom317
  %any_ptr319 = bitcast %union.any* %arrayidx318 to i8**
  %338 = load i8*, i8** %any_ptr319, align 8
  store i8* %338, i8** %ptr, align 8
  %339 = load i32, i32* @PL_savestack_ix, align 4
  %dec320 = add nsw i32 %339, -1
  store i32 %dec320, i32* @PL_savestack_ix, align 4
  %idxprom321 = sext i32 %dec320 to i64
  %340 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx322 = getelementptr inbounds %union.any, %union.any* %340, i64 %idxprom321
  %any_ptr323 = bitcast %union.any* %arrayidx322 to i8**
  %341 = load i8*, i8** %any_ptr323, align 8
  %342 = bitcast i8* %341 to %struct.gv*
  store %struct.gv* %342, %struct.gv** %gv, align 8
  %343 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any324 = getelementptr inbounds %struct.gv, %struct.gv* %343, i32 0, i32 0
  %344 = load %struct.xpvgv*, %struct.xpvgv** %sv_any324, align 8
  %345 = bitcast %struct.xpvgv* %344 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %345, i32 0, i32 0
  %346 = load i8*, i8** %xpv_pv, align 8
  %tobool325 = icmp ne i8* %346, null
  br i1 %tobool325, label %land.lhs.true.326, label %if.end.333

land.lhs.true.326:                                ; preds = %sw.bb.315
  %347 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any327 = getelementptr inbounds %struct.gv, %struct.gv* %347, i32 0, i32 0
  %348 = load %struct.xpvgv*, %struct.xpvgv** %sv_any327, align 8
  %349 = bitcast %struct.xpvgv* %348 to %struct.xpv*
  %xpv_len = getelementptr inbounds %struct.xpv, %struct.xpv* %349, i32 0, i32 2
  %350 = load i64, i64* %xpv_len, align 8
  %cmp328 = icmp ugt i64 %350, 0
  br i1 %cmp328, label %if.then.330, label %if.end.333

if.then.330:                                      ; preds = %land.lhs.true.326
  %351 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any331 = getelementptr inbounds %struct.gv, %struct.gv* %351, i32 0, i32 0
  %352 = load %struct.xpvgv*, %struct.xpvgv** %sv_any331, align 8
  %353 = bitcast %struct.xpvgv* %352 to %struct.xpv*
  %xpv_pv332 = getelementptr inbounds %struct.xpv, %struct.xpv* %353, i32 0, i32 0
  %354 = load i8*, i8** %xpv_pv332, align 8
  call void @Perl_safesysfree(i8* %354)
  br label %if.end.333

if.end.333:                                       ; preds = %if.then.330, %land.lhs.true.326, %sw.bb.315
  %355 = load i32, i32* @PL_savestack_ix, align 4
  %dec334 = add nsw i32 %355, -1
  store i32 %dec334, i32* @PL_savestack_ix, align 4
  %idxprom335 = sext i32 %dec334 to i64
  %356 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx336 = getelementptr inbounds %union.any, %union.any* %356, i64 %idxprom335
  %any_ptr337 = bitcast %union.any* %arrayidx336 to i8**
  %357 = load i8*, i8** %any_ptr337, align 8
  %358 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any338 = getelementptr inbounds %struct.gv, %struct.gv* %358, i32 0, i32 0
  %359 = load %struct.xpvgv*, %struct.xpvgv** %sv_any338, align 8
  %360 = bitcast %struct.xpvgv* %359 to %struct.xpv*
  %xpv_pv339 = getelementptr inbounds %struct.xpv, %struct.xpv* %360, i32 0, i32 0
  store i8* %357, i8** %xpv_pv339, align 8
  %361 = load i32, i32* @PL_savestack_ix, align 4
  %dec340 = add nsw i32 %361, -1
  store i32 %dec340, i32* @PL_savestack_ix, align 4
  %idxprom341 = sext i32 %dec340 to i64
  %362 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx342 = getelementptr inbounds %union.any, %union.any* %362, i64 %idxprom341
  %any_iv343 = bitcast %union.any* %arrayidx342 to i64*
  %363 = load i64, i64* %any_iv343, align 8
  %364 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any344 = getelementptr inbounds %struct.gv, %struct.gv* %364, i32 0, i32 0
  %365 = load %struct.xpvgv*, %struct.xpvgv** %sv_any344, align 8
  %366 = bitcast %struct.xpvgv* %365 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %366, i32 0, i32 1
  store i64 %363, i64* %xpv_cur, align 8
  %367 = load i32, i32* @PL_savestack_ix, align 4
  %dec345 = add nsw i32 %367, -1
  store i32 %dec345, i32* @PL_savestack_ix, align 4
  %idxprom346 = sext i32 %dec345 to i64
  %368 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx347 = getelementptr inbounds %union.any, %union.any* %368, i64 %idxprom346
  %any_iv348 = bitcast %union.any* %arrayidx347 to i64*
  %369 = load i64, i64* %any_iv348, align 8
  %370 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any349 = getelementptr inbounds %struct.gv, %struct.gv* %370, i32 0, i32 0
  %371 = load %struct.xpvgv*, %struct.xpvgv** %sv_any349, align 8
  %372 = bitcast %struct.xpvgv* %371 to %struct.xpv*
  %xpv_len350 = getelementptr inbounds %struct.xpv, %struct.xpv* %372, i32 0, i32 2
  store i64 %369, i64* %xpv_len350, align 8
  %373 = load %struct.gv*, %struct.gv** %gv, align 8
  call void @Perl_gp_free(%struct.gv* %373)
  %374 = load i8*, i8** %ptr, align 8
  %375 = bitcast i8* %374 to %struct.gp*
  %376 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any351 = getelementptr inbounds %struct.gv, %struct.gv* %376, i32 0, i32 0
  %377 = load %struct.xpvgv*, %struct.xpvgv** %sv_any351, align 8
  %xgv_gp352 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %377, i32 0, i32 7
  store %struct.gp* %375, %struct.gp** %xgv_gp352, align 8
  %378 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any353 = getelementptr inbounds %struct.gv, %struct.gv* %378, i32 0, i32 0
  %379 = load %struct.xpvgv*, %struct.xpvgv** %sv_any353, align 8
  %xgv_gp354 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %379, i32 0, i32 7
  %380 = load %struct.gp*, %struct.gp** %xgv_gp354, align 8
  %gp_cvgen = getelementptr inbounds %struct.gp, %struct.gp* %380, i32 0, i32 8
  %381 = load i32, i32* %gp_cvgen, align 4
  %tobool355 = icmp ne i32 %381, 0
  br i1 %tobool355, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.333
  br i1 false, label %if.then.359, label %if.end.360

cond.false:                                       ; preds = %if.end.333
  %382 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any356 = getelementptr inbounds %struct.gv, %struct.gv* %382, i32 0, i32 0
  %383 = load %struct.xpvgv*, %struct.xpvgv** %sv_any356, align 8
  %xgv_gp357 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %383, i32 0, i32 7
  %384 = load %struct.gp*, %struct.gp** %xgv_gp357, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %384, i32 0, i32 7
  %385 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  %tobool358 = icmp ne %struct.cv* %385, null
  br i1 %tobool358, label %if.then.359, label %if.end.360

if.then.359:                                      ; preds = %cond.false, %cond.true
  %386 = load i32, i32* @PL_sub_generation, align 4
  %inc = add i32 %386, 1
  store i32 %inc, i32* @PL_sub_generation, align 4
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.359, %cond.false, %cond.true
  %387 = load %struct.gv*, %struct.gv** %gv, align 8
  %388 = bitcast %struct.gv* %387 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %388)
  br label %sw.epilog.662

sw.bb.361:                                        ; preds = %while.body
  %389 = load i32, i32* @PL_savestack_ix, align 4
  %dec362 = add nsw i32 %389, -1
  store i32 %dec362, i32* @PL_savestack_ix, align 4
  %idxprom363 = sext i32 %dec362 to i64
  %390 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx364 = getelementptr inbounds %union.any, %union.any* %390, i64 %idxprom363
  %any_ptr365 = bitcast %union.any* %arrayidx364 to i8**
  %391 = load i8*, i8** %any_ptr365, align 8
  store i8* %391, i8** %ptr, align 8
  %392 = load i8*, i8** %ptr, align 8
  %393 = bitcast i8* %392 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %393)
  br label %sw.epilog.662

sw.bb.366:                                        ; preds = %while.body
  %394 = load i32, i32* @PL_savestack_ix, align 4
  %dec367 = add nsw i32 %394, -1
  store i32 %dec367, i32* @PL_savestack_ix, align 4
  %idxprom368 = sext i32 %dec367 to i64
  %395 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx369 = getelementptr inbounds %union.any, %union.any* %395, i64 %idxprom368
  %any_ptr370 = bitcast %union.any* %arrayidx369 to i8**
  %396 = load i8*, i8** %any_ptr370, align 8
  store i8* %396, i8** %ptr, align 8
  %397 = load i8*, i8** %ptr, align 8
  %398 = bitcast i8* %397 to %struct.sv*
  %call371 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %398)
  br label %sw.epilog.662

sw.bb.372:                                        ; preds = %while.body
  %399 = load i32, i32* @PL_savestack_ix, align 4
  %dec373 = add nsw i32 %399, -1
  store i32 %dec373, i32* @PL_savestack_ix, align 4
  %idxprom374 = sext i32 %dec373 to i64
  %400 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx375 = getelementptr inbounds %union.any, %union.any* %400, i64 %idxprom374
  %any_ptr376 = bitcast %union.any* %arrayidx375 to i8**
  %401 = load i8*, i8** %any_ptr376, align 8
  store i8* %401, i8** %ptr, align 8
  %402 = load i8*, i8** %ptr, align 8
  %403 = bitcast i8* %402 to %struct.op*
  call void @Perl_op_free(%struct.op* %403)
  br label %sw.epilog.662

sw.bb.377:                                        ; preds = %while.body
  %404 = load i32, i32* @PL_savestack_ix, align 4
  %dec378 = add nsw i32 %404, -1
  store i32 %dec378, i32* @PL_savestack_ix, align 4
  %idxprom379 = sext i32 %dec378 to i64
  %405 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx380 = getelementptr inbounds %union.any, %union.any* %405, i64 %idxprom379
  %any_ptr381 = bitcast %union.any* %arrayidx380 to i8**
  %406 = load i8*, i8** %any_ptr381, align 8
  store i8* %406, i8** %ptr, align 8
  %407 = load i8*, i8** %ptr, align 8
  call void @Perl_safesysfree(i8* %407)
  br label %sw.epilog.662

sw.bb.382:                                        ; preds = %while.body
  %408 = load i32, i32* @PL_savestack_ix, align 4
  %dec383 = add nsw i32 %408, -1
  store i32 %dec383, i32* @PL_savestack_ix, align 4
  %idxprom384 = sext i32 %dec383 to i64
  %409 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx385 = getelementptr inbounds %union.any, %union.any* %409, i64 %idxprom384
  %any_long386 = bitcast %union.any* %arrayidx385 to i64*
  %410 = load i64, i64* %any_long386, align 8
  %411 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx387 = getelementptr inbounds %struct.sv*, %struct.sv** %411, i64 %410
  %412 = bitcast %struct.sv** %arrayidx387 to i8*
  store i8* %412, i8** %ptr, align 8
  %413 = load i8*, i8** %ptr, align 8
  %414 = bitcast i8* %413 to %struct.sv**
  %415 = load %struct.sv*, %struct.sv** %414, align 8
  store %struct.sv* %415, %struct.sv** %sv, align 8
  %416 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %416, i32 0, i32 1
  %417 = load i32, i32* %sv_refcnt, align 4
  %cmp388 = icmp ule i32 %417, 1
  br i1 %cmp388, label %land.lhs.true.390, label %if.else.430

land.lhs.true.390:                                ; preds = %sw.bb.382
  %418 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags391 = getelementptr inbounds %struct.sv, %struct.sv* %418, i32 0, i32 2
  %419 = load i32, i32* %sv_flags391, align 4
  %and392 = and i32 %419, 4096
  %tobool393 = icmp ne i32 %and392, 0
  br i1 %tobool393, label %if.else.430, label %if.then.394

if.then.394:                                      ; preds = %land.lhs.true.390
  %420 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags395 = getelementptr inbounds %struct.sv, %struct.sv* %420, i32 0, i32 2
  %421 = load i32, i32* %sv_flags395, align 4
  %and396 = and i32 %421, 1024
  %tobool397 = icmp ne i32 %and396, 0
  br i1 %tobool397, label %land.lhs.true.398, label %if.end.405

land.lhs.true.398:                                ; preds = %if.then.394
  %422 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags399 = getelementptr inbounds %struct.sv, %struct.sv* %422, i32 0, i32 2
  %423 = load i32, i32* %sv_flags399, align 4
  %and400 = and i32 %423, 1048576
  %tobool401 = icmp ne i32 %and400, 0
  br i1 %tobool401, label %if.end.405, label %if.then.402

if.then.402:                                      ; preds = %land.lhs.true.398
  %424 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags403 = getelementptr inbounds %struct.sv, %struct.sv* %424, i32 0, i32 2
  %425 = load i32, i32* %sv_flags403, align 4
  %and404 = and i32 %425, -8388609
  store i32 %and404, i32* %sv_flags403, align 4
  br label %if.end.405

if.end.405:                                       ; preds = %if.then.402, %land.lhs.true.398, %if.then.394
  %426 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags406 = getelementptr inbounds %struct.sv, %struct.sv* %426, i32 0, i32 2
  %427 = load i32, i32* %sv_flags406, align 4
  %and407 = and i32 %427, 9961472
  %tobool408 = icmp ne i32 %and407, 0
  br i1 %tobool408, label %if.then.409, label %if.end.410

if.then.409:                                      ; preds = %if.end.405
  %428 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_force_normal_flags(%struct.sv* %428, i32 1)
  br label %if.end.410

if.end.410:                                       ; preds = %if.then.409, %if.end.405
  %429 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags411 = getelementptr inbounds %struct.sv, %struct.sv* %429, i32 0, i32 2
  %430 = load i32, i32* %sv_flags411, align 4
  %and412 = and i32 %430, 57344
  %tobool413 = icmp ne i32 %and412, 0
  br i1 %tobool413, label %if.then.414, label %if.end.416

if.then.414:                                      ; preds = %if.end.410
  %431 = load %struct.sv*, %struct.sv** %sv, align 8
  %call415 = call i32 @Perl_mg_free(%struct.sv* %431)
  br label %if.end.416

if.end.416:                                       ; preds = %if.then.414, %if.end.410
  %432 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags417 = getelementptr inbounds %struct.sv, %struct.sv* %432, i32 0, i32 2
  %433 = load i32, i32* %sv_flags417, align 4
  %and418 = and i32 %433, 255
  switch i32 %and418, label %sw.default [
    i32 0, label %sw.bb.419
    i32 10, label %sw.bb.420
    i32 11, label %sw.bb.421
    i32 12, label %sw.bb.422
  ]

sw.bb.419:                                        ; preds = %if.end.416
  br label %sw.epilog

sw.bb.420:                                        ; preds = %if.end.416
  %434 = load %struct.sv*, %struct.sv** %sv, align 8
  %435 = bitcast %struct.sv* %434 to %struct.av*
  call void @Perl_av_clear(%struct.av* %435)
  br label %sw.epilog

sw.bb.421:                                        ; preds = %if.end.416
  %436 = load %struct.sv*, %struct.sv** %sv, align 8
  %437 = bitcast %struct.sv* %436 to %struct.hv*
  call void @Perl_hv_clear(%struct.hv* %437)
  br label %sw.epilog

sw.bb.422:                                        ; preds = %if.end.416
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.default

sw.default:                                       ; preds = %if.end.416, %sw.bb.422
  %438 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags423 = getelementptr inbounds %struct.sv, %struct.sv* %438, i32 0, i32 2
  %439 = load i32, i32* %sv_flags423, align 4
  %and424 = and i32 %439, 1223753727
  store i32 %and424, i32* %sv_flags423, align 4
  %440 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags425 = getelementptr inbounds %struct.sv, %struct.sv* %440, i32 0, i32 2
  %441 = load i32, i32* %sv_flags425, align 4
  %and426 = and i32 %441, 2097152
  %tobool427 = icmp ne i32 %and426, 0
  br i1 %tobool427, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.default
  %442 = load %struct.sv*, %struct.sv** %sv, align 8
  %call428 = call i32 @Perl_sv_backoff(%struct.sv* %442)
  %tobool429 = icmp ne i32 %call428, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.default
  %443 = phi i1 [ false, %sw.default ], [ %tobool429, %land.rhs ]
  %land.ext = zext i1 %443 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.end, %sw.bb.421, %sw.bb.420, %sw.bb.419
  br label %if.end.444

if.else.430:                                      ; preds = %land.lhs.true.390, %sw.bb.382
  %444 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags431 = getelementptr inbounds %struct.sv, %struct.sv* %444, i32 0, i32 2
  %445 = load i32, i32* %sv_flags431, align 4
  %and432 = and i32 %445, 1792
  store i32 %and432, i32* %padflags, align 4
  %446 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags433 = getelementptr inbounds %struct.sv, %struct.sv* %446, i32 0, i32 2
  %447 = load i32, i32* %sv_flags433, align 4
  %and434 = and i32 %447, 255
  switch i32 %and434, label %sw.default.439 [
    i32 10, label %sw.bb.435
    i32 11, label %sw.bb.437
  ]

sw.bb.435:                                        ; preds = %if.else.430
  %call436 = call %struct.av* @Perl_newAV()
  %448 = bitcast %struct.av* %call436 to %struct.sv*
  %449 = load i8*, i8** %ptr, align 8
  %450 = bitcast i8* %449 to %struct.sv**
  store %struct.sv* %448, %struct.sv** %450, align 8
  br label %sw.epilog.441

sw.bb.437:                                        ; preds = %if.else.430
  %call438 = call %struct.hv* @Perl_newHV()
  %451 = bitcast %struct.hv* %call438 to %struct.sv*
  %452 = load i8*, i8** %ptr, align 8
  %453 = bitcast i8* %452 to %struct.sv**
  store %struct.sv* %451, %struct.sv** %453, align 8
  br label %sw.epilog.441

sw.default.439:                                   ; preds = %if.else.430
  %call440 = call %struct.sv* @Perl_newSV(i64 0)
  %454 = load i8*, i8** %ptr, align 8
  %455 = bitcast i8* %454 to %struct.sv**
  store %struct.sv* %call440, %struct.sv** %455, align 8
  br label %sw.epilog.441

sw.epilog.441:                                    ; preds = %sw.default.439, %sw.bb.437, %sw.bb.435
  %456 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_free(%struct.sv* %456)
  %457 = load i32, i32* %padflags, align 4
  %458 = load i8*, i8** %ptr, align 8
  %459 = bitcast i8* %458 to %struct.sv**
  %460 = load %struct.sv*, %struct.sv** %459, align 8
  %sv_flags442 = getelementptr inbounds %struct.sv, %struct.sv* %460, i32 0, i32 2
  %461 = load i32, i32* %sv_flags442, align 4
  %or443 = or i32 %461, %457
  store i32 %or443, i32* %sv_flags442, align 4
  br label %if.end.444

if.end.444:                                       ; preds = %sw.epilog.441, %sw.epilog
  br label %sw.epilog.662

sw.bb.445:                                        ; preds = %while.body
  %462 = load i32, i32* @PL_savestack_ix, align 4
  %dec446 = add nsw i32 %462, -1
  store i32 %dec446, i32* @PL_savestack_ix, align 4
  %idxprom447 = sext i32 %dec446 to i64
  %463 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx448 = getelementptr inbounds %union.any, %union.any* %463, i64 %idxprom447
  %any_ptr449 = bitcast %union.any* %arrayidx448 to i8**
  %464 = load i8*, i8** %any_ptr449, align 8
  store i8* %464, i8** %ptr, align 8
  %465 = load i8*, i8** %ptr, align 8
  %466 = bitcast i8* %465 to %struct.hv*
  store %struct.hv* %466, %struct.hv** %hv, align 8
  %467 = load i32, i32* @PL_savestack_ix, align 4
  %dec450 = add nsw i32 %467, -1
  store i32 %dec450, i32* @PL_savestack_ix, align 4
  %idxprom451 = sext i32 %dec450 to i64
  %468 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx452 = getelementptr inbounds %union.any, %union.any* %468, i64 %idxprom451
  %any_ptr453 = bitcast %union.any* %arrayidx452 to i8**
  %469 = load i8*, i8** %any_ptr453, align 8
  store i8* %469, i8** %ptr, align 8
  %470 = load %struct.hv*, %struct.hv** %hv, align 8
  %471 = load i8*, i8** %ptr, align 8
  %472 = load i32, i32* @PL_savestack_ix, align 4
  %dec454 = add nsw i32 %472, -1
  store i32 %dec454, i32* @PL_savestack_ix, align 4
  %idxprom455 = sext i32 %dec454 to i64
  %473 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx456 = getelementptr inbounds %union.any, %union.any* %473, i64 %idxprom455
  %any_i32457 = bitcast %union.any* %arrayidx456 to i32*
  %474 = load i32, i32* %any_i32457, align 4
  %call458 = call %struct.sv* @Perl_hv_delete(%struct.hv* %470, i8* %471, i32 %474, i32 2)
  %475 = load %struct.hv*, %struct.hv** %hv, align 8
  %476 = bitcast %struct.hv* %475 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %476)
  %477 = load i8*, i8** %ptr, align 8
  call void @Perl_safesysfree(i8* %477)
  br label %sw.epilog.662

sw.bb.459:                                        ; preds = %while.body
  %478 = load i32, i32* @PL_savestack_ix, align 4
  %dec460 = add nsw i32 %478, -1
  store i32 %dec460, i32* @PL_savestack_ix, align 4
  %idxprom461 = sext i32 %dec460 to i64
  %479 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx462 = getelementptr inbounds %union.any, %union.any* %479, i64 %idxprom461
  %any_ptr463 = bitcast %union.any* %arrayidx462 to i8**
  %480 = load i8*, i8** %any_ptr463, align 8
  store i8* %480, i8** %ptr, align 8
  %481 = load i32, i32* @PL_savestack_ix, align 4
  %dec464 = add nsw i32 %481, -1
  store i32 %dec464, i32* @PL_savestack_ix, align 4
  %idxprom465 = sext i32 %dec464 to i64
  %482 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx466 = getelementptr inbounds %union.any, %union.any* %482, i64 %idxprom465
  %any_dptr = bitcast %union.any* %arrayidx466 to void (i8*)**
  %483 = load void (i8*)*, void (i8*)** %any_dptr, align 8
  %484 = load i8*, i8** %ptr, align 8
  call void %483(i8* %484)
  br label %sw.epilog.662

sw.bb.467:                                        ; preds = %while.body
  %485 = load i32, i32* @PL_savestack_ix, align 4
  %dec468 = add nsw i32 %485, -1
  store i32 %dec468, i32* @PL_savestack_ix, align 4
  %idxprom469 = sext i32 %dec468 to i64
  %486 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx470 = getelementptr inbounds %union.any, %union.any* %486, i64 %idxprom469
  %any_ptr471 = bitcast %union.any* %arrayidx470 to i8**
  %487 = load i8*, i8** %any_ptr471, align 8
  store i8* %487, i8** %ptr, align 8
  %488 = load i32, i32* @PL_savestack_ix, align 4
  %dec472 = add nsw i32 %488, -1
  store i32 %dec472, i32* @PL_savestack_ix, align 4
  %idxprom473 = sext i32 %dec472 to i64
  %489 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx474 = getelementptr inbounds %union.any, %union.any* %489, i64 %idxprom473
  %any_dxptr = bitcast %union.any* %arrayidx474 to void (i8*)**
  %490 = load void (i8*)*, void (i8*)** %any_dxptr, align 8
  %491 = load i8*, i8** %ptr, align 8
  call void %490(i8* %491)
  br label %sw.epilog.662

sw.bb.475:                                        ; preds = %while.body, %while.body
  %492 = load i32, i32* @PL_savestack_ix, align 4
  %dec476 = add nsw i32 %492, -1
  store i32 %dec476, i32* @PL_savestack_ix, align 4
  %idxprom477 = sext i32 %dec476 to i64
  %493 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx478 = getelementptr inbounds %union.any, %union.any* %493, i64 %idxprom477
  %any_i32479 = bitcast %union.any* %arrayidx478 to i32*
  %494 = load i32, i32* %any_i32479, align 4
  store i32 %494, i32* %i, align 4
  %495 = load i32, i32* %i, align 4
  %496 = load i32, i32* @PL_savestack_ix, align 4
  %sub = sub nsw i32 %496, %495
  store i32 %sub, i32* @PL_savestack_ix, align 4
  br label %sw.epilog.662

sw.bb.480:                                        ; preds = %while.body
  %497 = load i32, i32* @PL_savestack_ix, align 4
  %dec481 = add nsw i32 %497, -1
  store i32 %dec481, i32* @PL_savestack_ix, align 4
  %idxprom482 = sext i32 %dec481 to i64
  %498 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx483 = getelementptr inbounds %union.any, %union.any* %498, i64 %idxprom482
  %any_i32484 = bitcast %union.any* %arrayidx483 to i32*
  %499 = load i32, i32* %any_i32484, align 4
  store i32 %499, i32* %i, align 4
  %500 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %501 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %501 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %500, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_sp, align 8
  br label %sw.epilog.662

sw.bb.485:                                        ; preds = %while.body
  %502 = load i32, i32* @PL_savestack_ix, align 4
  %dec486 = add nsw i32 %502, -1
  store i32 %dec486, i32* @PL_savestack_ix, align 4
  %idxprom487 = sext i32 %dec486 to i64
  %503 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx488 = getelementptr inbounds %union.any, %union.any* %503, i64 %idxprom487
  %any_ptr489 = bitcast %union.any* %arrayidx488 to i8**
  %504 = load i8*, i8** %any_ptr489, align 8
  %505 = bitcast i8* %504 to %struct.sv*
  store %struct.sv* %505, %struct.sv** %value, align 8
  %506 = load i32, i32* @PL_savestack_ix, align 4
  %dec490 = add nsw i32 %506, -1
  store i32 %dec490, i32* @PL_savestack_ix, align 4
  %idxprom491 = sext i32 %dec490 to i64
  %507 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx492 = getelementptr inbounds %union.any, %union.any* %507, i64 %idxprom491
  %any_i32493 = bitcast %union.any* %arrayidx492 to i32*
  %508 = load i32, i32* %any_i32493, align 4
  store i32 %508, i32* %i, align 4
  %509 = load i32, i32* @PL_savestack_ix, align 4
  %dec494 = add nsw i32 %509, -1
  store i32 %dec494, i32* @PL_savestack_ix, align 4
  %idxprom495 = sext i32 %dec494 to i64
  %510 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx496 = getelementptr inbounds %union.any, %union.any* %510, i64 %idxprom495
  %any_ptr497 = bitcast %union.any* %arrayidx496 to i8**
  %511 = load i8*, i8** %any_ptr497, align 8
  %512 = bitcast i8* %511 to %struct.av*
  store %struct.av* %512, %struct.av** %av, align 8
  %513 = load %struct.av*, %struct.av** %av, align 8
  %sv_any498 = getelementptr inbounds %struct.av, %struct.av* %513, i32 0, i32 0
  %514 = load %struct.xpvav*, %struct.xpvav** %sv_any498, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %514, i32 0, i32 9
  %515 = load i8, i8* %xav_flags, align 1
  %conv499 = zext i8 %515 to i32
  %and500 = and i32 %conv499, 1
  %tobool501 = icmp ne i32 %and500, 0
  br i1 %tobool501, label %if.end.509, label %land.lhs.true.502

land.lhs.true.502:                                ; preds = %sw.bb.485
  %516 = load %struct.av*, %struct.av** %av, align 8
  %sv_any503 = getelementptr inbounds %struct.av, %struct.av* %516, i32 0, i32 0
  %517 = load %struct.xpvav*, %struct.xpvav** %sv_any503, align 8
  %xav_flags504 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %517, i32 0, i32 9
  %518 = load i8, i8* %xav_flags504, align 1
  %conv505 = zext i8 %518 to i32
  %and506 = and i32 %conv505, 2
  %tobool507 = icmp ne i32 %and506, 0
  br i1 %tobool507, label %if.then.508, label %if.end.509

if.then.508:                                      ; preds = %land.lhs.true.502
  %519 = load %struct.sv*, %struct.sv** %value, align 8
  call void @Perl_sv_free(%struct.sv* %519)
  br label %if.end.509

if.end.509:                                       ; preds = %if.then.508, %land.lhs.true.502, %sw.bb.485
  %520 = load %struct.av*, %struct.av** %av, align 8
  %521 = load i32, i32* %i, align 4
  %call510 = call %struct.sv** @Perl_av_fetch(%struct.av* %520, i32 %521, i32 1)
  %522 = bitcast %struct.sv** %call510 to i8*
  store i8* %522, i8** %ptr, align 8
  %523 = load i8*, i8** %ptr, align 8
  %tobool511 = icmp ne i8* %523, null
  br i1 %tobool511, label %if.then.512, label %if.end.535

if.then.512:                                      ; preds = %if.end.509
  %524 = load i8*, i8** %ptr, align 8
  %525 = bitcast i8* %524 to %struct.sv**
  %526 = load %struct.sv*, %struct.sv** %525, align 8
  store %struct.sv* %526, %struct.sv** %sv, align 8
  %527 = load %struct.sv*, %struct.sv** %sv, align 8
  %tobool513 = icmp ne %struct.sv* %527, null
  br i1 %tobool513, label %land.lhs.true.514, label %if.end.534

land.lhs.true.514:                                ; preds = %if.then.512
  %528 = load %struct.sv*, %struct.sv** %sv, align 8
  %cmp515 = icmp ne %struct.sv* %528, @PL_sv_undef
  br i1 %cmp515, label %if.then.517, label %if.end.534

if.then.517:                                      ; preds = %land.lhs.true.514
  %529 = load %struct.av*, %struct.av** %av, align 8
  %530 = bitcast %struct.av* %529 to %struct.sv*
  %sv_flags518 = getelementptr inbounds %struct.sv, %struct.sv* %530, i32 0, i32 2
  %531 = load i32, i32* %sv_flags518, align 4
  %and519 = and i32 %531, 32768
  %tobool520 = icmp ne i32 %and519, 0
  br i1 %tobool520, label %cond.true.521, label %cond.false.524

cond.true.521:                                    ; preds = %if.then.517
  %532 = load %struct.av*, %struct.av** %av, align 8
  %533 = bitcast %struct.av* %532 to %struct.sv*
  %call522 = call %struct.magic* @Perl_mg_find(%struct.sv* %533, i32 80)
  %tobool523 = icmp ne %struct.magic* %call522, null
  br i1 %tobool523, label %if.then.525, label %if.end.533

cond.false.524:                                   ; preds = %if.then.517
  br i1 false, label %if.then.525, label %if.end.533

if.then.525:                                      ; preds = %cond.false.524, %cond.true.521
  %534 = load %struct.sv*, %struct.sv** %sv, align 8
  store %struct.sv* %534, %struct.sv** @PL_Sv, align 8
  %535 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool526 = icmp ne %struct.sv* %535, null
  br i1 %tobool526, label %land.rhs.527, label %land.end.531

land.rhs.527:                                     ; preds = %if.then.525
  %536 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt528 = getelementptr inbounds %struct.sv, %struct.sv* %536, i32 0, i32 1
  %537 = load i32, i32* %sv_refcnt528, align 4
  %inc529 = add i32 %537, 1
  store i32 %inc529, i32* %sv_refcnt528, align 4
  %tobool530 = icmp ne i32 %inc529, 0
  br label %land.end.531

land.end.531:                                     ; preds = %land.rhs.527, %if.then.525
  %538 = phi i1 [ false, %if.then.525 ], [ %tobool530, %land.rhs.527 ]
  %land.ext532 = zext i1 %538 to i32
  %539 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  br label %if.end.533

if.end.533:                                       ; preds = %land.end.531, %cond.false.524, %cond.true.521
  br label %restore_sv

if.end.534:                                       ; preds = %land.lhs.true.514, %if.then.512
  br label %if.end.535

if.end.535:                                       ; preds = %if.end.534, %if.end.509
  %540 = load %struct.av*, %struct.av** %av, align 8
  %541 = bitcast %struct.av* %540 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %541)
  %542 = load %struct.sv*, %struct.sv** %value, align 8
  call void @Perl_sv_free(%struct.sv* %542)
  br label %sw.epilog.662

sw.bb.536:                                        ; preds = %while.body
  %543 = load i32, i32* @PL_savestack_ix, align 4
  %dec537 = add nsw i32 %543, -1
  store i32 %dec537, i32* @PL_savestack_ix, align 4
  %idxprom538 = sext i32 %dec537 to i64
  %544 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx539 = getelementptr inbounds %union.any, %union.any* %544, i64 %idxprom538
  %any_ptr540 = bitcast %union.any* %arrayidx539 to i8**
  %545 = load i8*, i8** %any_ptr540, align 8
  %546 = bitcast i8* %545 to %struct.sv*
  store %struct.sv* %546, %struct.sv** %value, align 8
  %547 = load i32, i32* @PL_savestack_ix, align 4
  %dec541 = add nsw i32 %547, -1
  store i32 %dec541, i32* @PL_savestack_ix, align 4
  %idxprom542 = sext i32 %dec541 to i64
  %548 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx543 = getelementptr inbounds %union.any, %union.any* %548, i64 %idxprom542
  %any_ptr544 = bitcast %union.any* %arrayidx543 to i8**
  %549 = load i8*, i8** %any_ptr544, align 8
  %550 = bitcast i8* %549 to %struct.sv*
  store %struct.sv* %550, %struct.sv** %sv, align 8
  %551 = load i32, i32* @PL_savestack_ix, align 4
  %dec545 = add nsw i32 %551, -1
  store i32 %dec545, i32* @PL_savestack_ix, align 4
  %idxprom546 = sext i32 %dec545 to i64
  %552 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx547 = getelementptr inbounds %union.any, %union.any* %552, i64 %idxprom546
  %any_ptr548 = bitcast %union.any* %arrayidx547 to i8**
  %553 = load i8*, i8** %any_ptr548, align 8
  %554 = bitcast i8* %553 to %struct.hv*
  store %struct.hv* %554, %struct.hv** %hv, align 8
  %555 = load %struct.hv*, %struct.hv** %hv, align 8
  %556 = load %struct.sv*, %struct.sv** %sv, align 8
  %call549 = call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %555, %struct.sv* %556, i32 1, i32 0)
  %557 = bitcast %struct.he* %call549 to i8*
  store i8* %557, i8** %ptr, align 8
  %558 = load i8*, i8** %ptr, align 8
  %tobool550 = icmp ne i8* %558, null
  br i1 %tobool550, label %if.then.551, label %if.end.575

if.then.551:                                      ; preds = %sw.bb.536
  %559 = load i8*, i8** %ptr, align 8
  %560 = bitcast i8* %559 to %struct.he*
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %560, i32 0, i32 2
  %561 = load %struct.sv*, %struct.sv** %hent_val, align 8
  store %struct.sv* %561, %struct.sv** %oval, align 8
  %562 = load %struct.sv*, %struct.sv** %oval, align 8
  %tobool552 = icmp ne %struct.sv* %562, null
  br i1 %tobool552, label %land.lhs.true.553, label %if.end.574

land.lhs.true.553:                                ; preds = %if.then.551
  %563 = load %struct.sv*, %struct.sv** %oval, align 8
  %cmp554 = icmp ne %struct.sv* %563, @PL_sv_undef
  br i1 %cmp554, label %if.then.556, label %if.end.574

if.then.556:                                      ; preds = %land.lhs.true.553
  %564 = load i8*, i8** %ptr, align 8
  %565 = bitcast i8* %564 to %struct.he*
  %hent_val557 = getelementptr inbounds %struct.he, %struct.he* %565, i32 0, i32 2
  %566 = bitcast %struct.sv** %hent_val557 to i8*
  store i8* %566, i8** %ptr, align 8
  %567 = load %struct.hv*, %struct.hv** %hv, align 8
  %568 = bitcast %struct.hv* %567 to %struct.sv*
  %sv_flags558 = getelementptr inbounds %struct.sv, %struct.sv* %568, i32 0, i32 2
  %569 = load i32, i32* %sv_flags558, align 4
  %and559 = and i32 %569, 32768
  %tobool560 = icmp ne i32 %and559, 0
  br i1 %tobool560, label %cond.true.561, label %cond.false.564

cond.true.561:                                    ; preds = %if.then.556
  %570 = load %struct.hv*, %struct.hv** %hv, align 8
  %571 = bitcast %struct.hv* %570 to %struct.sv*
  %call562 = call %struct.magic* @Perl_mg_find(%struct.sv* %571, i32 80)
  %tobool563 = icmp ne %struct.magic* %call562, null
  br i1 %tobool563, label %if.then.565, label %if.end.573

cond.false.564:                                   ; preds = %if.then.556
  br i1 false, label %if.then.565, label %if.end.573

if.then.565:                                      ; preds = %cond.false.564, %cond.true.561
  %572 = load i8*, i8** %ptr, align 8
  %573 = bitcast i8* %572 to %struct.sv**
  %574 = load %struct.sv*, %struct.sv** %573, align 8
  store %struct.sv* %574, %struct.sv** @PL_Sv, align 8
  %575 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool566 = icmp ne %struct.sv* %575, null
  br i1 %tobool566, label %land.rhs.567, label %land.end.571

land.rhs.567:                                     ; preds = %if.then.565
  %576 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt568 = getelementptr inbounds %struct.sv, %struct.sv* %576, i32 0, i32 1
  %577 = load i32, i32* %sv_refcnt568, align 4
  %inc569 = add i32 %577, 1
  store i32 %inc569, i32* %sv_refcnt568, align 4
  %tobool570 = icmp ne i32 %inc569, 0
  br label %land.end.571

land.end.571:                                     ; preds = %land.rhs.567, %if.then.565
  %578 = phi i1 [ false, %if.then.565 ], [ %tobool570, %land.rhs.567 ]
  %land.ext572 = zext i1 %578 to i32
  %579 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  br label %if.end.573

if.end.573:                                       ; preds = %land.end.571, %cond.false.564, %cond.true.561
  %580 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_free(%struct.sv* %580)
  %581 = load %struct.hv*, %struct.hv** %hv, align 8
  %582 = bitcast %struct.hv* %581 to %struct.av*
  store %struct.av* %582, %struct.av** %av, align 8
  br label %restore_sv

if.end.574:                                       ; preds = %land.lhs.true.553, %if.then.551
  br label %if.end.575

if.end.575:                                       ; preds = %if.end.574, %sw.bb.536
  %583 = load %struct.hv*, %struct.hv** %hv, align 8
  %584 = bitcast %struct.hv* %583 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %584)
  %585 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_free(%struct.sv* %585)
  %586 = load %struct.sv*, %struct.sv** %value, align 8
  call void @Perl_sv_free(%struct.sv* %586)
  br label %sw.epilog.662

sw.bb.576:                                        ; preds = %while.body
  %587 = load i32, i32* @PL_savestack_ix, align 4
  %dec577 = add nsw i32 %587, -1
  store i32 %dec577, i32* @PL_savestack_ix, align 4
  %idxprom578 = sext i32 %dec577 to i64
  %588 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx579 = getelementptr inbounds %union.any, %union.any* %588, i64 %idxprom578
  %any_ptr580 = bitcast %union.any* %arrayidx579 to i8**
  %589 = load i8*, i8** %any_ptr580, align 8
  %590 = bitcast i8* %589 to %struct.op*
  store %struct.op* %590, %struct.op** @PL_op, align 8
  br label %sw.epilog.662

sw.bb.581:                                        ; preds = %while.body
  %591 = load i32, i32* @PL_hints, align 4
  %and582 = and i32 %591, 131072
  %tobool583 = icmp ne i32 %and582, 0
  br i1 %tobool583, label %land.lhs.true.584, label %if.end.596

land.lhs.true.584:                                ; preds = %sw.bb.581
  %592 = load %struct.gv*, %struct.gv** @PL_hintgv, align 8
  %sv_any585 = getelementptr inbounds %struct.gv, %struct.gv* %592, i32 0, i32 0
  %593 = load %struct.xpvgv*, %struct.xpvgv** %sv_any585, align 8
  %xgv_gp586 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %593, i32 0, i32 7
  %594 = load %struct.gp*, %struct.gp** %xgv_gp586, align 8
  %gp_hv587 = getelementptr inbounds %struct.gp, %struct.gp* %594, i32 0, i32 5
  %595 = load %struct.hv*, %struct.hv** %gp_hv587, align 8
  %tobool588 = icmp ne %struct.hv* %595, null
  br i1 %tobool588, label %if.then.589, label %if.end.596

if.then.589:                                      ; preds = %land.lhs.true.584
  %596 = load %struct.gv*, %struct.gv** @PL_hintgv, align 8
  %sv_any590 = getelementptr inbounds %struct.gv, %struct.gv* %596, i32 0, i32 0
  %597 = load %struct.xpvgv*, %struct.xpvgv** %sv_any590, align 8
  %xgv_gp591 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %597, i32 0, i32 7
  %598 = load %struct.gp*, %struct.gp** %xgv_gp591, align 8
  %gp_hv592 = getelementptr inbounds %struct.gp, %struct.gp* %598, i32 0, i32 5
  %599 = load %struct.hv*, %struct.hv** %gp_hv592, align 8
  %600 = bitcast %struct.hv* %599 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %600)
  %601 = load %struct.gv*, %struct.gv** @PL_hintgv, align 8
  %sv_any593 = getelementptr inbounds %struct.gv, %struct.gv* %601, i32 0, i32 0
  %602 = load %struct.xpvgv*, %struct.xpvgv** %sv_any593, align 8
  %xgv_gp594 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %602, i32 0, i32 7
  %603 = load %struct.gp*, %struct.gp** %xgv_gp594, align 8
  %gp_hv595 = getelementptr inbounds %struct.gp, %struct.gp* %603, i32 0, i32 5
  store %struct.hv* null, %struct.hv** %gp_hv595, align 8
  br label %if.end.596

if.end.596:                                       ; preds = %if.then.589, %land.lhs.true.584, %sw.bb.581
  %604 = load i32, i32* @PL_savestack_ix, align 4
  %dec597 = add nsw i32 %604, -1
  store i32 %dec597, i32* @PL_savestack_ix, align 4
  %idxprom598 = sext i32 %dec597 to i64
  %605 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx599 = getelementptr inbounds %union.any, %union.any* %605, i64 %idxprom598
  %any_i32600 = bitcast %union.any* %arrayidx599 to i32*
  %606 = load i32, i32* %any_i32600, align 4
  store i32 %606, i32* @PL_hints, align 4
  %607 = load i32, i32* @PL_hints, align 4
  %and601 = and i32 %607, 131072
  %tobool602 = icmp ne i32 %and601, 0
  br i1 %tobool602, label %if.then.603, label %if.end.614

if.then.603:                                      ; preds = %if.end.596
  %608 = load %struct.gv*, %struct.gv** @PL_hintgv, align 8
  %sv_any604 = getelementptr inbounds %struct.gv, %struct.gv* %608, i32 0, i32 0
  %609 = load %struct.xpvgv*, %struct.xpvgv** %sv_any604, align 8
  %xgv_gp605 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %609, i32 0, i32 7
  %610 = load %struct.gp*, %struct.gp** %xgv_gp605, align 8
  %gp_hv606 = getelementptr inbounds %struct.gp, %struct.gp* %610, i32 0, i32 5
  %611 = load %struct.hv*, %struct.hv** %gp_hv606, align 8
  %612 = bitcast %struct.hv* %611 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %612)
  %613 = load i32, i32* @PL_savestack_ix, align 4
  %dec607 = add nsw i32 %613, -1
  store i32 %dec607, i32* @PL_savestack_ix, align 4
  %idxprom608 = sext i32 %dec607 to i64
  %614 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx609 = getelementptr inbounds %union.any, %union.any* %614, i64 %idxprom608
  %any_ptr610 = bitcast %union.any* %arrayidx609 to i8**
  %615 = load i8*, i8** %any_ptr610, align 8
  %616 = bitcast i8* %615 to %struct.hv*
  %617 = load %struct.gv*, %struct.gv** @PL_hintgv, align 8
  %sv_any611 = getelementptr inbounds %struct.gv, %struct.gv* %617, i32 0, i32 0
  %618 = load %struct.xpvgv*, %struct.xpvgv** %sv_any611, align 8
  %xgv_gp612 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %618, i32 0, i32 7
  %619 = load %struct.gp*, %struct.gp** %xgv_gp612, align 8
  %gp_hv613 = getelementptr inbounds %struct.gp, %struct.gp* %619, i32 0, i32 5
  store %struct.hv* %616, %struct.hv** %gp_hv613, align 8
  br label %if.end.614

if.end.614:                                       ; preds = %if.then.603, %if.end.596
  br label %sw.epilog.662

sw.bb.615:                                        ; preds = %while.body
  %620 = load i32, i32* @PL_savestack_ix, align 4
  %dec616 = add nsw i32 %620, -1
  store i32 %dec616, i32* @PL_savestack_ix, align 4
  %idxprom617 = sext i32 %dec616 to i64
  %621 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx618 = getelementptr inbounds %union.any, %union.any* %621, i64 %idxprom617
  %any_ptr619 = bitcast %union.any* %arrayidx618 to i8**
  %622 = load i8*, i8** %any_ptr619, align 8
  %623 = bitcast i8* %622 to %struct.av*
  store %struct.av* %623, %struct.av** @PL_comppad, align 8
  %624 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %tobool620 = icmp ne %struct.av* %624, null
  br i1 %tobool620, label %if.then.621, label %if.else.623

if.then.621:                                      ; preds = %sw.bb.615
  %625 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %sv_any622 = getelementptr inbounds %struct.av, %struct.av* %625, i32 0, i32 0
  %626 = load %struct.xpvav*, %struct.xpvav** %sv_any622, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %626, i32 0, i32 0
  %627 = load i8*, i8** %xav_array, align 8
  %628 = bitcast i8* %627 to %struct.sv**
  store %struct.sv** %628, %struct.sv*** @PL_curpad, align 8
  br label %if.end.624

if.else.623:                                      ; preds = %sw.bb.615
  store %struct.sv** null, %struct.sv*** @PL_curpad, align 8
  br label %if.end.624

if.end.624:                                       ; preds = %if.else.623, %if.then.621
  br label %sw.epilog.662

sw.bb.625:                                        ; preds = %while.body
  %629 = load i32, i32* @PL_savestack_ix, align 4
  %dec626 = add nsw i32 %629, -1
  store i32 %dec626, i32* @PL_savestack_ix, align 4
  %idxprom627 = sext i32 %dec626 to i64
  %630 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx628 = getelementptr inbounds %union.any, %union.any* %630, i64 %idxprom627
  %any_long629 = bitcast %union.any* %arrayidx628 to i64*
  %631 = load i64, i64* %any_long629, align 8
  store i64 %631, i64* %off, align 8
  %632 = load i32, i32* @PL_savestack_ix, align 4
  %dec630 = add nsw i32 %632, -1
  store i32 %dec630, i32* @PL_savestack_ix, align 4
  %idxprom631 = sext i32 %dec630 to i64
  %633 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx632 = getelementptr inbounds %union.any, %union.any* %633, i64 %idxprom631
  %any_ptr633 = bitcast %union.any* %arrayidx632 to i8**
  %634 = load i8*, i8** %any_ptr633, align 8
  store i8* %634, i8** %ptr, align 8
  %635 = load i8*, i8** %ptr, align 8
  %tobool634 = icmp ne i8* %635, null
  br i1 %tobool634, label %if.then.635, label %if.end.643

if.then.635:                                      ; preds = %sw.bb.625
  %636 = load i32, i32* @PL_savestack_ix, align 4
  %dec636 = add nsw i32 %636, -1
  store i32 %dec636, i32* @PL_savestack_ix, align 4
  %idxprom637 = sext i32 %dec636 to i64
  %637 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx638 = getelementptr inbounds %union.any, %union.any* %637, i64 %idxprom637
  %any_ptr639 = bitcast %union.any* %arrayidx638 to i8**
  %638 = load i8*, i8** %any_ptr639, align 8
  %639 = bitcast i8* %638 to %struct.sv*
  %640 = load i64, i64* %off, align 8
  %641 = load i8*, i8** %ptr, align 8
  %642 = bitcast i8* %641 to %struct.av*
  %sv_any640 = getelementptr inbounds %struct.av, %struct.av* %642, i32 0, i32 0
  %643 = load %struct.xpvav*, %struct.xpvav** %sv_any640, align 8
  %xav_array641 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %643, i32 0, i32 0
  %644 = load i8*, i8** %xav_array641, align 8
  %645 = bitcast i8* %644 to %struct.sv**
  %arrayidx642 = getelementptr inbounds %struct.sv*, %struct.sv** %645, i64 %640
  store %struct.sv* %639, %struct.sv** %arrayidx642, align 8
  br label %if.end.643

if.end.643:                                       ; preds = %if.then.635, %sw.bb.625
  br label %sw.epilog.662

sw.bb.644:                                        ; preds = %while.body
  %646 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %646, %struct.sv*** %sp, align 8
  %647 = load i32, i32* @PL_savestack_ix, align 4
  %dec645 = add nsw i32 %647, -1
  store i32 %dec645, i32* @PL_savestack_ix, align 4
  %idxprom646 = sext i32 %dec645 to i64
  %648 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx647 = getelementptr inbounds %union.any, %union.any* %648, i64 %idxprom646
  %any_ptr648 = bitcast %union.any* %arrayidx647 to i8**
  %649 = load i8*, i8** %any_ptr648, align 8
  %650 = bitcast i8* %649 to %struct.av*
  store %struct.av* %650, %struct.av** %t, align 8
  %651 = load i32, i32* @PL_savestack_ix, align 4
  %dec649 = add nsw i32 %651, -1
  store i32 %dec649, i32* @PL_savestack_ix, align 4
  %idxprom650 = sext i32 %dec649 to i64
  %652 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx651 = getelementptr inbounds %union.any, %union.any* %652, i64 %idxprom650
  %any_ptr652 = bitcast %union.any* %arrayidx651 to i8**
  %653 = load i8*, i8** %any_ptr652, align 8
  %654 = bitcast i8* %653 to %struct.av*
  store %struct.av* %654, %struct.av** %f, align 8
  %655 = load %struct.sv**, %struct.sv*** %sp, align 8
  %656 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %655 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %656 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %657 = load %struct.av*, %struct.av** %t, align 8
  %sv_any653 = getelementptr inbounds %struct.av, %struct.av* %657, i32 0, i32 0
  %658 = load %struct.xpvav*, %struct.xpvav** %sv_any653, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %658, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill, align 8
  %659 = load %struct.av*, %struct.av** %f, align 8
  %sv_any654 = getelementptr inbounds %struct.av, %struct.av* %659, i32 0, i32 0
  %660 = load %struct.xpvav*, %struct.xpvav** %sv_any654, align 8
  %xav_array655 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %660, i32 0, i32 0
  %661 = load i8*, i8** %xav_array655, align 8
  %662 = bitcast i8* %661 to %struct.sv**
  store %struct.sv** %662, %struct.sv*** @PL_stack_base, align 8
  %663 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %664 = load %struct.av*, %struct.av** %f, align 8
  %sv_any656 = getelementptr inbounds %struct.av, %struct.av* %664, i32 0, i32 0
  %665 = load %struct.xpvav*, %struct.xpvav** %sv_any656, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %665, i32 0, i32 2
  %666 = load i64, i64* %xav_max, align 8
  %add.ptr657 = getelementptr inbounds %struct.sv*, %struct.sv** %663, i64 %666
  store %struct.sv** %add.ptr657, %struct.sv*** @PL_stack_max, align 8
  %667 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %668 = load %struct.av*, %struct.av** %f, align 8
  %sv_any658 = getelementptr inbounds %struct.av, %struct.av* %668, i32 0, i32 0
  %669 = load %struct.xpvav*, %struct.xpvav** %sv_any658, align 8
  %xav_fill659 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %669, i32 0, i32 1
  %670 = load i64, i64* %xav_fill659, align 8
  %add.ptr660 = getelementptr inbounds %struct.sv*, %struct.sv** %667, i64 %670
  store %struct.sv** %add.ptr660, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr660, %struct.sv*** %sp, align 8
  %671 = load %struct.av*, %struct.av** %f, align 8
  store %struct.av* %671, %struct.av** @PL_curstack, align 8
  store %struct.av* %671, %struct.av** %tmp
  %672 = load %struct.av*, %struct.av** %tmp
  %673 = load %struct.av*, %struct.av** %f, align 8
  %674 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %674, i32 0, i32 0
  store %struct.av* %673, %struct.av** %si_stack, align 8
  br label %sw.epilog.662

sw.default.661:                                   ; preds = %while.body
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  br label %sw.epilog.662

sw.epilog.662:                                    ; preds = %sw.default.661, %sw.bb.644, %if.end.643, %if.end.624, %if.end.614, %sw.bb.576, %if.end.575, %if.end.535, %sw.bb.480, %sw.bb.475, %sw.bb.467, %sw.bb.459, %sw.bb.445, %if.end.444, %sw.bb.377, %sw.bb.372, %sw.bb.366, %sw.bb.361, %if.end.360, %sw.bb.310, %sw.bb.301, %sw.bb.292, %sw.bb.283, %sw.bb.274, %sw.bb.266, %sw.bb.256, %sw.bb.246, %sw.bb.237, %sw.bb.229, %sw.bb.221, %sw.bb.212, %if.end.211, %if.end.167, %if.end.124, %sw.bb.44, %if.end.43, %if.end.31, %if.end.10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_markstack_grow() #0 {
entry:
  %oldmax = alloca i32, align 4
  %newmax = alloca i32, align 4
  %0 = load i32*, i32** @PL_markstack_max, align 8
  %1 = load i32*, i32** @PL_markstack, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %oldmax, align 4
  %2 = load i32, i32* %oldmax, align 4
  %mul = mul nsw i32 %2, 3
  %div = sdiv i32 %mul, 2
  store i32 %div, i32* %newmax, align 4
  %3 = load i32*, i32** @PL_markstack, align 8
  %4 = bitcast i32* %3 to i8*
  %5 = load i32, i32* %newmax, align 4
  %conv1 = sext i32 %5 to i64
  %mul2 = mul i64 %conv1, 4
  %call = call i8* @Perl_safesysrealloc(i8* %4, i64 %mul2)
  %6 = bitcast i8* %call to i32*
  store i32* %6, i32** @PL_markstack, align 8
  %7 = load i32*, i32** @PL_markstack, align 8
  %8 = load i32, i32* %oldmax, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i32, i32* %7, i64 %idx.ext
  store i32* %add.ptr, i32** @PL_markstack_ptr, align 8
  %9 = load i32*, i32** @PL_markstack, align 8
  %10 = load i32, i32* %newmax, align 4
  %idx.ext3 = sext i32 %10 to i64
  %add.ptr4 = getelementptr inbounds i32, i32* %9, i64 %idx.ext3
  store i32* %add.ptr4, i32** @PL_markstack_max, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_savestack_grow() #0 {
entry:
  %0 = load i32, i32* @PL_savestack_max, align 4
  %mul = mul nsw i32 %0, 3
  %div = sdiv i32 %mul, 2
  %add = add nsw i32 %div, 4
  store i32 %add, i32* @PL_savestack_max, align 4
  %1 = load %union.any*, %union.any** @PL_savestack, align 8
  %2 = bitcast %union.any* %1 to i8*
  %3 = load i32, i32* @PL_savestack_max, align 4
  %conv = sext i32 %3 to i64
  %mul1 = mul i64 %conv, 8
  %call = call i8* @Perl_safesysrealloc(i8* %2, i64 %mul1)
  %4 = bitcast i8* %call to %union.any*
  store %union.any* %4, %union.any** @PL_savestack, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_savestack_grow_cnt(i32 %need) #0 {
entry:
  %need.addr = alloca i32, align 4
  store i32 %need, i32* %need.addr, align 4
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %1 = load i32, i32* %need.addr, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* @PL_savestack_max, align 4
  %2 = load %union.any*, %union.any** @PL_savestack, align 8
  %3 = bitcast %union.any* %2 to i8*
  %4 = load i32, i32* @PL_savestack_max, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @Perl_safesysrealloc(i8* %3, i64 %mul)
  %5 = bitcast i8* %call to %union.any*
  store %union.any* %5, %union.any** @PL_savestack, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_tmps_grow(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @PL_tmps_max, align 4
  %cmp1 = icmp slt i32 %1, 512
  %cond = select i1 %cmp1, i32 128, i32 512
  store i32 %cond, i32* %n.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @PL_tmps_ix, align 4
  %3 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %2, %3
  %add2 = add nsw i32 %add, 1
  store i32 %add2, i32* @PL_tmps_max, align 4
  %4 = load %struct.sv**, %struct.sv*** @PL_tmps_stack, align 8
  %5 = bitcast %struct.sv** %4 to i8*
  %6 = load i32, i32* @PL_tmps_max, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @Perl_safesysrealloc(i8* %5, i64 %mul)
  %7 = bitcast i8* %call to %struct.sv**
  store %struct.sv** %7, %struct.sv*** @PL_tmps_stack, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_free_tmps() #0 {
entry:
  %myfloor = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %0 = load i32, i32* @PL_tmps_floor, align 4
  store i32 %0, i32* %myfloor, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* @PL_tmps_ix, align 4
  %2 = load i32, i32* %myfloor, align 4
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* @PL_tmps_ix, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.sv**, %struct.sv*** @PL_tmps_stack, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %4, i64 %idxprom
  %5 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %5, %struct.sv** %sv, align 8
  %6 = load i32, i32* @PL_tmps_ix, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* @PL_tmps_ix, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.sv**, %struct.sv*** @PL_tmps_stack, align 8
  %arrayidx2 = getelementptr inbounds %struct.sv*, %struct.sv** %7, i64 %idxprom1
  store %struct.sv* null, %struct.sv** %arrayidx2, align 8
  %8 = load %struct.sv*, %struct.sv** %sv, align 8
  %tobool = icmp ne %struct.sv* %8, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %9 = load %struct.sv*, %struct.sv** %sv, align 8
  %cmp3 = icmp ne %struct.sv* %9, @PL_sv_undef
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 2
  %11 = load i32, i32* %sv_flags, align 4
  %and = and i32 %11, -2049
  store i32 %and, i32* %sv_flags, align 4
  %12 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_free(%struct.sv* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define %struct.sv* @Perl_save_scalar(%struct.gv* %gv) #0 {
entry:
  %gv.addr = alloca %struct.gv*, align 8
  %sptr = alloca %struct.sv**, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  %0 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %0, i32 0, i32 0
  %1 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %1, i32 0, i32 7
  %2 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %2, i32 0, i32 0
  store %struct.sv** %gp_sv, %struct.sv*** %sptr, align 8
  %3 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %3, 3
  %4 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %6 = bitcast %struct.gv* %5 to %struct.sv*
  store %struct.sv* %6, %struct.sv** @PL_Sv, align 8
  %7 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool = icmp ne %struct.sv* %7, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %8 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 1
  %9 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool1 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %10 = phi i1 [ false, %if.end ], [ %tobool1, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  %11 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %12 = bitcast %struct.sv* %11 to i8*
  %13 = load i32, i32* @PL_savestack_ix, align 4
  %inc2 = add nsw i32 %13, 1
  store i32 %inc2, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %14, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %12, i8** %any_ptr, align 8
  %15 = load %struct.sv**, %struct.sv*** %sptr, align 8
  %16 = load %struct.sv*, %struct.sv** %15, align 8
  store %struct.sv* %16, %struct.sv** @PL_Sv, align 8
  %17 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool3 = icmp ne %struct.sv* %17, null
  br i1 %tobool3, label %land.rhs.4, label %land.end.8

land.rhs.4:                                       ; preds = %land.end
  %18 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt5 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 1
  %19 = load i32, i32* %sv_refcnt5, align 4
  %inc6 = add i32 %19, 1
  store i32 %inc6, i32* %sv_refcnt5, align 4
  %tobool7 = icmp ne i32 %inc6, 0
  br label %land.end.8

land.end.8:                                       ; preds = %land.rhs.4, %land.end
  %20 = phi i1 [ false, %land.end ], [ %tobool7, %land.rhs.4 ]
  %land.ext9 = zext i1 %20 to i32
  %21 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %22 = bitcast %struct.sv* %21 to i8*
  %23 = load i32, i32* @PL_savestack_ix, align 4
  %inc10 = add nsw i32 %23, 1
  store i32 %inc10, i32* @PL_savestack_ix, align 4
  %idxprom11 = sext i32 %23 to i64
  %24 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx12 = getelementptr inbounds %union.any, %union.any* %24, i64 %idxprom11
  %any_ptr13 = bitcast %union.any* %arrayidx12 to i8**
  store i8* %22, i8** %any_ptr13, align 8
  %25 = load i32, i32* @PL_savestack_ix, align 4
  %inc14 = add nsw i32 %25, 1
  store i32 %inc14, i32* @PL_savestack_ix, align 4
  %idxprom15 = sext i32 %25 to i64
  %26 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx16 = getelementptr inbounds %union.any, %union.any* %26, i64 %idxprom15
  %any_i32 = bitcast %union.any* %arrayidx16 to i32*
  store i32 1, i32* %any_i32, align 4
  %27 = load %struct.sv**, %struct.sv*** %sptr, align 8
  %call = call %struct.sv* @S_save_scalar_at(%struct.sv** %27)
  ret %struct.sv* %call
}

; Function Attrs: nounwind uwtable
define internal %struct.sv* @S_save_scalar_at(%struct.sv** %sptr) #0 {
entry:
  %sptr.addr = alloca %struct.sv**, align 8
  %sv = alloca %struct.sv*, align 8
  %osv = alloca %struct.sv*, align 8
  %mg = alloca %struct.magic*, align 8
  %oldtainted = alloca i8, align 1
  store %struct.sv** %sptr, %struct.sv*** %sptr.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** %sptr.addr, align 8
  %1 = load %struct.sv*, %struct.sv** %0, align 8
  store %struct.sv* %1, %struct.sv** %osv, align 8
  %call = call %struct.sv* @Perl_newSV(i64 0)
  %2 = load %struct.sv**, %struct.sv*** %sptr.addr, align 8
  store %struct.sv* %call, %struct.sv** %2, align 8
  store %struct.sv* %call, %struct.sv** %sv, align 8
  %3 = load %struct.sv*, %struct.sv** %osv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and = and i32 %4, 255
  %cmp = icmp uge i32 %and, 7
  br i1 %cmp, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.sv*, %struct.sv** %osv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 0
  %6 = load i8*, i8** %sv_any, align 8
  %7 = bitcast i8* %6 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %7, i32 0, i32 5
  %8 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  %tobool = icmp ne %struct.magic* %8, null
  br i1 %tobool, label %land.lhs.true.1, label %if.end.40

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %9 = load %struct.sv*, %struct.sv** %osv, align 8
  %sv_flags2 = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 2
  %10 = load i32, i32* %sv_flags2, align 4
  %and3 = and i32 %10, 255
  %cmp4 = icmp ne i32 %and3, 13
  br i1 %cmp4, label %if.then, label %if.end.40

if.then:                                          ; preds = %land.lhs.true.1
  %11 = load %struct.sv*, %struct.sv** %sv, align 8
  %12 = load %struct.sv*, %struct.sv** %osv, align 8
  %sv_flags5 = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 2
  %13 = load i32, i32* %sv_flags5, align 4
  %and6 = and i32 %13, 255
  %call7 = call signext i8 @Perl_sv_upgrade(%struct.sv* %11, i32 %and6)
  %14 = load %struct.sv*, %struct.sv** %osv, align 8
  %sv_flags8 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 2
  %15 = load i32, i32* %sv_flags8, align 4
  %and9 = and i32 %15, 8192
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.25

if.then.11:                                       ; preds = %if.then
  %16 = load i8, i8* @PL_tainted, align 1
  store i8 %16, i8* %oldtainted, align 1
  %17 = load %struct.sv*, %struct.sv** %osv, align 8
  %call12 = call i32 @Perl_mg_get(%struct.sv* %17)
  %18 = load i8, i8* @PL_tainting, align 1
  %conv = sext i8 %18 to i32
  %tobool13 = icmp ne i32 %conv, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %if.then.11
  %19 = load i8, i8* @PL_tainted, align 1
  %conv15 = sext i8 %19 to i32
  %tobool16 = icmp ne i32 %conv15, 0
  br i1 %tobool16, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %land.lhs.true.14
  %20 = load %struct.sv*, %struct.sv** %osv, align 8
  %call18 = call %struct.magic* @Perl_mg_find(%struct.sv* %20, i32 116)
  store %struct.magic* %call18, %struct.magic** %mg, align 8
  %tobool19 = icmp ne %struct.magic* %call18, null
  br i1 %tobool19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %land.lhs.true.17
  %21 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %21, i32 0, i32 5
  call void @Perl_save_sptr(%struct.sv** %mg_obj)
  %22 = load %struct.sv*, %struct.sv** %osv, align 8
  %23 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj21 = getelementptr inbounds %struct.magic, %struct.magic* %23, i32 0, i32 5
  store %struct.sv* %22, %struct.sv** %mg_obj21, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.20, %land.lhs.true.17, %land.lhs.true.14, %if.then.11
  %24 = load %struct.sv*, %struct.sv** %osv, align 8
  %sv_flags22 = getelementptr inbounds %struct.sv, %struct.sv* %24, i32 0, i32 2
  %25 = load i32, i32* %sv_flags22, align 4
  %and23 = and i32 %25, 100663296
  %shr = lshr i32 %and23, 8
  %26 = load %struct.sv*, %struct.sv** %osv, align 8
  %sv_flags24 = getelementptr inbounds %struct.sv, %struct.sv* %26, i32 0, i32 2
  %27 = load i32, i32* %sv_flags24, align 4
  %or = or i32 %27, %shr
  store i32 %or, i32* %sv_flags24, align 4
  %28 = load i8, i8* %oldtainted, align 1
  store i8 %28, i8* @PL_tainted, align 1
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then
  %29 = load %struct.sv*, %struct.sv** %osv, align 8
  %sv_any26 = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 0
  %30 = load i8*, i8** %sv_any26, align 8
  %31 = bitcast i8* %30 to %struct.xpvmg*
  %xmg_magic27 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %31, i32 0, i32 5
  %32 = load %struct.magic*, %struct.magic** %xmg_magic27, align 8
  %33 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any28 = getelementptr inbounds %struct.sv, %struct.sv* %33, i32 0, i32 0
  %34 = load i8*, i8** %sv_any28, align 8
  %35 = bitcast i8* %34 to %struct.xpvmg*
  %xmg_magic29 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %35, i32 0, i32 5
  store %struct.magic* %32, %struct.magic** %xmg_magic29, align 8
  %36 = load %struct.sv*, %struct.sv** %osv, align 8
  %sv_flags30 = getelementptr inbounds %struct.sv, %struct.sv* %36, i32 0, i32 2
  %37 = load i32, i32* %sv_flags30, align 4
  %and31 = and i32 %37, 57344
  %38 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags32 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 2
  %39 = load i32, i32* %sv_flags32, align 4
  %or33 = or i32 %39, %and31
  store i32 %or33, i32* %sv_flags32, align 4
  store i32 1, i32* @PL_localizing, align 4
  %40 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags34 = getelementptr inbounds %struct.sv, %struct.sv* %40, i32 0, i32 2
  %41 = load i32, i32* %sv_flags34, align 4
  %and35 = and i32 %41, 16384
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.end.25
  %42 = load %struct.sv*, %struct.sv** %sv, align 8
  %call38 = call i32 @Perl_mg_set(%struct.sv* %42)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.end.25
  store i32 0, i32* @PL_localizing, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true.1, %land.lhs.true, %entry
  %43 = load %struct.sv*, %struct.sv** %sv, align 8
  ret %struct.sv* %43
}

; Function Attrs: nounwind uwtable
define %struct.sv* @Perl_save_svref(%struct.sv** %sptr) #0 {
entry:
  %sptr.addr = alloca %struct.sv**, align 8
  store %struct.sv** %sptr, %struct.sv*** %sptr.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 3
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.sv**, %struct.sv*** %sptr.addr, align 8
  %3 = bitcast %struct.sv** %2 to i8*
  %4 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %5, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %3, i8** %any_ptr, align 8
  %6 = load %struct.sv**, %struct.sv*** %sptr.addr, align 8
  %7 = load %struct.sv*, %struct.sv** %6, align 8
  store %struct.sv* %7, %struct.sv** @PL_Sv, align 8
  %8 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool = icmp ne %struct.sv* %8, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %9 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 1
  %10 = load i32, i32* %sv_refcnt, align 4
  %inc1 = add i32 %10, 1
  store i32 %inc1, i32* %sv_refcnt, align 4
  %tobool2 = icmp ne i32 %inc1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %11 = phi i1 [ false, %if.end ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  %12 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %13 = bitcast %struct.sv* %12 to i8*
  %14 = load i32, i32* @PL_savestack_ix, align 4
  %inc3 = add nsw i32 %14, 1
  store i32 %inc3, i32* @PL_savestack_ix, align 4
  %idxprom4 = sext i32 %14 to i64
  %15 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx5 = getelementptr inbounds %union.any, %union.any* %15, i64 %idxprom4
  %any_ptr6 = bitcast %union.any* %arrayidx5 to i8**
  store i8* %13, i8** %any_ptr6, align 8
  %16 = load i32, i32* @PL_savestack_ix, align 4
  %inc7 = add nsw i32 %16, 1
  store i32 %inc7, i32* @PL_savestack_ix, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx9 = getelementptr inbounds %union.any, %union.any* %17, i64 %idxprom8
  %any_i32 = bitcast %union.any* %arrayidx9 to i32*
  store i32 13, i32* %any_i32, align 4
  %18 = load %struct.sv**, %struct.sv*** %sptr.addr, align 8
  %call = call %struct.sv* @S_save_scalar_at(%struct.sv** %18)
  ret %struct.sv* %call
}

; Function Attrs: nounwind uwtable
define void @Perl_save_generic_svref(%struct.sv** %sptr) #0 {
entry:
  %sptr.addr = alloca %struct.sv**, align 8
  store %struct.sv** %sptr, %struct.sv*** %sptr.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 3
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.sv**, %struct.sv*** %sptr.addr, align 8
  %3 = bitcast %struct.sv** %2 to i8*
  %4 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %5, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %3, i8** %any_ptr, align 8
  %6 = load %struct.sv**, %struct.sv*** %sptr.addr, align 8
  %7 = load %struct.sv*, %struct.sv** %6, align 8
  store %struct.sv* %7, %struct.sv** @PL_Sv, align 8
  %8 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool = icmp ne %struct.sv* %8, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %9 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 1
  %10 = load i32, i32* %sv_refcnt, align 4
  %inc1 = add i32 %10, 1
  store i32 %inc1, i32* %sv_refcnt, align 4
  %tobool2 = icmp ne i32 %inc1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %11 = phi i1 [ false, %if.end ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  %12 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %13 = bitcast %struct.sv* %12 to i8*
  %14 = load i32, i32* @PL_savestack_ix, align 4
  %inc3 = add nsw i32 %14, 1
  store i32 %inc3, i32* @PL_savestack_ix, align 4
  %idxprom4 = sext i32 %14 to i64
  %15 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx5 = getelementptr inbounds %union.any, %union.any* %15, i64 %idxprom4
  %any_ptr6 = bitcast %union.any* %arrayidx5 to i8**
  store i8* %13, i8** %any_ptr6, align 8
  %16 = load i32, i32* @PL_savestack_ix, align 4
  %inc7 = add nsw i32 %16, 1
  store i32 %inc7, i32* @PL_savestack_ix, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx9 = getelementptr inbounds %union.any, %union.any* %17, i64 %idxprom8
  %any_i32 = bitcast %union.any* %arrayidx9 to i32*
  store i32 29, i32* %any_i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_generic_pvref(i8** %str) #0 {
entry:
  %str.addr = alloca i8**, align 8
  store i8** %str, i8*** %str.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 3
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8**, i8*** %str.addr, align 8
  %3 = bitcast i8** %2 to i8*
  %4 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %5, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %3, i8** %any_ptr, align 8
  %6 = load i8**, i8*** %str.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %8, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %9, i64 %idxprom2
  %any_ptr4 = bitcast %union.any* %arrayidx3 to i8**
  store i8* %7, i8** %any_ptr4, align 8
  %10 = load i32, i32* @PL_savestack_ix, align 4
  %inc5 = add nsw i32 %10, 1
  store i32 %inc5, i32* @PL_savestack_ix, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx7 = getelementptr inbounds %union.any, %union.any* %11, i64 %idxprom6
  %any_i32 = bitcast %union.any* %arrayidx7 to i32*
  store i32 34, i32* %any_i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_shared_pvref(i8** %str) #0 {
entry:
  %str.addr = alloca i8**, align 8
  store i8** %str, i8*** %str.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 3
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8**, i8*** %str.addr, align 8
  %3 = bitcast i8** %2 to i8*
  %4 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %5, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %3, i8** %any_ptr, align 8
  %6 = load i8**, i8*** %str.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %8, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %9, i64 %idxprom2
  %any_ptr4 = bitcast %union.any* %arrayidx3 to i8**
  store i8* %7, i8** %any_ptr4, align 8
  %10 = load i32, i32* @PL_savestack_ix, align 4
  %inc5 = add nsw i32 %10, 1
  store i32 %inc5, i32* @PL_savestack_ix, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx7 = getelementptr inbounds %union.any, %union.any* %11, i64 %idxprom6
  %any_i32 = bitcast %union.any* %arrayidx7 to i32*
  store i32 37, i32* %any_i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_gp(%struct.gv* %gv, i32 %empty) #0 {
entry:
  %gv.addr = alloca %struct.gv*, align 8
  %empty.addr = alloca i32, align 4
  %gp = alloca %struct.gp*, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  store i32 %empty, i32* %empty.addr, align 4
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 6
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow_cnt(i32 6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %2, i32 0, i32 0
  %3 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %4 = bitcast %struct.xpvgv* %3 to %struct.xpv*
  %xpv_len = getelementptr inbounds %struct.xpv, %struct.xpv* %4, i32 0, i32 2
  %5 = load i64, i64* %xpv_len, align 8
  %6 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %7, i64 %idxprom
  %any_iv = bitcast %union.any* %arrayidx to i64*
  store i64 %5, i64* %any_iv, align 8
  %8 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.gv, %struct.gv* %8, i32 0, i32 0
  %9 = load %struct.xpvgv*, %struct.xpvgv** %sv_any1, align 8
  %10 = bitcast %struct.xpvgv* %9 to %struct.xpv*
  %xpv_len2 = getelementptr inbounds %struct.xpv, %struct.xpv* %10, i32 0, i32 2
  store i64 0, i64* %xpv_len2, align 8
  %11 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any3 = getelementptr inbounds %struct.gv, %struct.gv* %11, i32 0, i32 0
  %12 = load %struct.xpvgv*, %struct.xpvgv** %sv_any3, align 8
  %13 = bitcast %struct.xpvgv* %12 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %13, i32 0, i32 1
  %14 = load i64, i64* %xpv_cur, align 8
  %15 = load i32, i32* @PL_savestack_ix, align 4
  %inc4 = add nsw i32 %15, 1
  store i32 %inc4, i32* @PL_savestack_ix, align 4
  %idxprom5 = sext i32 %15 to i64
  %16 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx6 = getelementptr inbounds %union.any, %union.any* %16, i64 %idxprom5
  %any_iv7 = bitcast %union.any* %arrayidx6 to i64*
  store i64 %14, i64* %any_iv7, align 8
  %17 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any8 = getelementptr inbounds %struct.gv, %struct.gv* %17, i32 0, i32 0
  %18 = load %struct.xpvgv*, %struct.xpvgv** %sv_any8, align 8
  %19 = bitcast %struct.xpvgv* %18 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %19, i32 0, i32 0
  %20 = load i8*, i8** %xpv_pv, align 8
  %21 = load i32, i32* @PL_savestack_ix, align 4
  %inc9 = add nsw i32 %21, 1
  store i32 %inc9, i32* @PL_savestack_ix, align 4
  %idxprom10 = sext i32 %21 to i64
  %22 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx11 = getelementptr inbounds %union.any, %union.any* %22, i64 %idxprom10
  %any_ptr = bitcast %union.any* %arrayidx11 to i8**
  store i8* %20, i8** %any_ptr, align 8
  %23 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.gv, %struct.gv* %23, i32 0, i32 2
  %24 = load i32, i32* %sv_flags, align 4
  %and = and i32 %24, -67371009
  store i32 %and, i32* %sv_flags, align 4
  %25 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %26 = bitcast %struct.gv* %25 to %struct.sv*
  store %struct.sv* %26, %struct.sv** @PL_Sv, align 8
  %27 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool = icmp ne %struct.sv* %27, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %28 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %28, i32 0, i32 1
  %29 = load i32, i32* %sv_refcnt, align 4
  %inc12 = add i32 %29, 1
  store i32 %inc12, i32* %sv_refcnt, align 4
  %tobool13 = icmp ne i32 %inc12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %30 = phi i1 [ false, %if.end ], [ %tobool13, %land.rhs ]
  %land.ext = zext i1 %30 to i32
  %31 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %32 = bitcast %struct.sv* %31 to i8*
  %33 = load i32, i32* @PL_savestack_ix, align 4
  %inc14 = add nsw i32 %33, 1
  store i32 %inc14, i32* @PL_savestack_ix, align 4
  %idxprom15 = sext i32 %33 to i64
  %34 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx16 = getelementptr inbounds %union.any, %union.any* %34, i64 %idxprom15
  %any_ptr17 = bitcast %union.any* %arrayidx16 to i8**
  store i8* %32, i8** %any_ptr17, align 8
  %35 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any18 = getelementptr inbounds %struct.gv, %struct.gv* %35, i32 0, i32 0
  %36 = load %struct.xpvgv*, %struct.xpvgv** %sv_any18, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %36, i32 0, i32 7
  %37 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %38 = bitcast %struct.gp* %37 to i8*
  %39 = load i32, i32* @PL_savestack_ix, align 4
  %inc19 = add nsw i32 %39, 1
  store i32 %inc19, i32* @PL_savestack_ix, align 4
  %idxprom20 = sext i32 %39 to i64
  %40 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx21 = getelementptr inbounds %union.any, %union.any* %40, i64 %idxprom20
  %any_ptr22 = bitcast %union.any* %arrayidx21 to i8**
  store i8* %38, i8** %any_ptr22, align 8
  %41 = load i32, i32* @PL_savestack_ix, align 4
  %inc23 = add nsw i32 %41, 1
  store i32 %inc23, i32* @PL_savestack_ix, align 4
  %idxprom24 = sext i32 %41 to i64
  %42 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx25 = getelementptr inbounds %union.any, %union.any* %42, i64 %idxprom24
  %any_i32 = bitcast %union.any* %arrayidx25 to i32*
  store i32 14, i32* %any_i32, align 4
  %43 = load i32, i32* %empty.addr, align 4
  %tobool26 = icmp ne i32 %43, 0
  br i1 %tobool26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %land.end
  %call = call i8* @Perl_safesysmalloc(i64 88)
  %44 = bitcast i8* %call to %struct.gp*
  store %struct.gp* %44, %struct.gp** %gp, align 8
  %45 = load %struct.gp*, %struct.gp** %gp, align 8
  %46 = bitcast %struct.gp* %45 to i8*
  call void @llvm.memset.p0i8.i64(i8* %46, i8 0, i64 88, i32 1, i1 false)
  %47 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any28 = getelementptr inbounds %struct.gv, %struct.gv* %47, i32 0, i32 0
  %48 = load %struct.xpvgv*, %struct.xpvgv** %sv_any28, align 8
  %xgv_gp29 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %48, i32 0, i32 7
  %49 = load %struct.gp*, %struct.gp** %xgv_gp29, align 8
  %gp_cvgen = getelementptr inbounds %struct.gp, %struct.gp* %49, i32 0, i32 8
  %50 = load i32, i32* %gp_cvgen, align 4
  %tobool30 = icmp ne i32 %50, 0
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.27
  br i1 false, label %if.then.34, label %if.end.36

cond.false:                                       ; preds = %if.then.27
  %51 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any31 = getelementptr inbounds %struct.gv, %struct.gv* %51, i32 0, i32 0
  %52 = load %struct.xpvgv*, %struct.xpvgv** %sv_any31, align 8
  %xgv_gp32 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %52, i32 0, i32 7
  %53 = load %struct.gp*, %struct.gp** %xgv_gp32, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %53, i32 0, i32 7
  %54 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  %tobool33 = icmp ne %struct.cv* %54, null
  br i1 %tobool33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %cond.false, %cond.true
  %55 = load i32, i32* @PL_sub_generation, align 4
  %inc35 = add i32 %55, 1
  store i32 %inc35, i32* @PL_sub_generation, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %cond.false, %cond.true
  %56 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any37 = getelementptr inbounds %struct.gv, %struct.gv* %56, i32 0, i32 0
  %57 = load %struct.xpvgv*, %struct.xpvgv** %sv_any37, align 8
  %xgv_gp38 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %57, i32 0, i32 7
  %58 = load %struct.gp*, %struct.gp** %xgv_gp38, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %58, i32 0, i32 2
  %59 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool39 = icmp ne %struct.io* %59, null
  br i1 %tobool39, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %if.end.36
  %60 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any40 = getelementptr inbounds %struct.gv, %struct.gv* %60, i32 0, i32 0
  %61 = load %struct.xpvgv*, %struct.xpvgv** %sv_any40, align 8
  %xgv_gp41 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %61, i32 0, i32 7
  %62 = load %struct.gp*, %struct.gp** %xgv_gp41, align 8
  %gp_io42 = getelementptr inbounds %struct.gp, %struct.gp* %62, i32 0, i32 2
  %63 = load %struct.io*, %struct.io** %gp_io42, align 8
  %sv_any43 = getelementptr inbounds %struct.io, %struct.io* %63, i32 0, i32 0
  %64 = load %struct.xpvio*, %struct.xpvio** %sv_any43, align 8
  %xio_flags = getelementptr inbounds %struct.xpvio, %struct.xpvio* %64, i32 0, i32 22
  %65 = load i8, i8* %xio_flags, align 1
  %conv = sext i8 %65 to i32
  %and44 = and i32 %conv, 1
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.54

if.then.46:                                       ; preds = %land.lhs.true
  %call47 = call %struct.io* @Perl_newIO()
  %66 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_io48 = getelementptr inbounds %struct.gp, %struct.gp* %66, i32 0, i32 2
  store %struct.io* %call47, %struct.io** %gp_io48, align 8
  %67 = load %struct.gp*, %struct.gp** %gp, align 8
  %gp_io49 = getelementptr inbounds %struct.gp, %struct.gp* %67, i32 0, i32 2
  %68 = load %struct.io*, %struct.io** %gp_io49, align 8
  %sv_any50 = getelementptr inbounds %struct.io, %struct.io* %68, i32 0, i32 0
  %69 = load %struct.xpvio*, %struct.xpvio** %sv_any50, align 8
  %xio_flags51 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %69, i32 0, i32 22
  %70 = load i8, i8* %xio_flags51, align 1
  %conv52 = sext i8 %70 to i32
  %or = or i32 %conv52, 3
  %conv53 = trunc i32 %or to i8
  store i8 %conv53, i8* %xio_flags51, align 1
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.46, %land.lhs.true, %if.end.36
  %71 = load %struct.gp*, %struct.gp** %gp, align 8
  %call55 = call %struct.gp* @Perl_gp_ref(%struct.gp* %71)
  %72 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any56 = getelementptr inbounds %struct.gv, %struct.gv* %72, i32 0, i32 0
  %73 = load %struct.xpvgv*, %struct.xpvgv** %sv_any56, align 8
  %xgv_gp57 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %73, i32 0, i32 7
  store %struct.gp* %call55, %struct.gp** %xgv_gp57, align 8
  %call58 = call %struct.sv* @Perl_newSV(i64 0)
  %74 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any59 = getelementptr inbounds %struct.gv, %struct.gv* %74, i32 0, i32 0
  %75 = load %struct.xpvgv*, %struct.xpvgv** %sv_any59, align 8
  %xgv_gp60 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %75, i32 0, i32 7
  %76 = load %struct.gp*, %struct.gp** %xgv_gp60, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %76, i32 0, i32 0
  store %struct.sv* %call58, %struct.sv** %gp_sv, align 8
  %77 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_line = getelementptr inbounds %struct.cop, %struct.cop* %77, i32 0, i32 13
  %78 = load i32, i32* %cop_line, align 4
  %79 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any61 = getelementptr inbounds %struct.gv, %struct.gv* %79, i32 0, i32 0
  %80 = load %struct.xpvgv*, %struct.xpvgv** %sv_any61, align 8
  %xgv_gp62 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %80, i32 0, i32 7
  %81 = load %struct.gp*, %struct.gp** %xgv_gp62, align 8
  %gp_line = getelementptr inbounds %struct.gp, %struct.gp* %81, i32 0, i32 10
  store i32 %78, i32* %gp_line, align 4
  %82 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv = getelementptr inbounds %struct.cop, %struct.cop* %82, i32 0, i32 10
  %83 = load %struct.gv*, %struct.gv** %cop_filegv, align 8
  %tobool63 = icmp ne %struct.gv* %83, null
  br i1 %tobool63, label %cond.true.64, label %cond.false.70

cond.true.64:                                     ; preds = %if.end.54
  %84 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv65 = getelementptr inbounds %struct.cop, %struct.cop* %84, i32 0, i32 10
  %85 = load %struct.gv*, %struct.gv** %cop_filegv65, align 8
  %sv_any66 = getelementptr inbounds %struct.gv, %struct.gv* %85, i32 0, i32 0
  %86 = load %struct.xpvgv*, %struct.xpvgv** %sv_any66, align 8
  %xgv_gp67 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %86, i32 0, i32 7
  %87 = load %struct.gp*, %struct.gp** %xgv_gp67, align 8
  %gp_sv68 = getelementptr inbounds %struct.gp, %struct.gp* %87, i32 0, i32 0
  %88 = load %struct.sv*, %struct.sv** %gp_sv68, align 8
  %tobool69 = icmp ne %struct.sv* %88, null
  br i1 %tobool69, label %cond.true.71, label %cond.false.83

cond.false.70:                                    ; preds = %if.end.54
  br i1 false, label %cond.true.71, label %cond.false.83

cond.true.71:                                     ; preds = %cond.false.70, %cond.true.64
  %89 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv72 = getelementptr inbounds %struct.cop, %struct.cop* %89, i32 0, i32 10
  %90 = load %struct.gv*, %struct.gv** %cop_filegv72, align 8
  %tobool73 = icmp ne %struct.gv* %90, null
  br i1 %tobool73, label %cond.true.74, label %cond.false.79

cond.true.74:                                     ; preds = %cond.true.71
  %91 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv75 = getelementptr inbounds %struct.cop, %struct.cop* %91, i32 0, i32 10
  %92 = load %struct.gv*, %struct.gv** %cop_filegv75, align 8
  %sv_any76 = getelementptr inbounds %struct.gv, %struct.gv* %92, i32 0, i32 0
  %93 = load %struct.xpvgv*, %struct.xpvgv** %sv_any76, align 8
  %xgv_gp77 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %93, i32 0, i32 7
  %94 = load %struct.gp*, %struct.gp** %xgv_gp77, align 8
  %gp_sv78 = getelementptr inbounds %struct.gp, %struct.gp* %94, i32 0, i32 0
  %95 = load %struct.sv*, %struct.sv** %gp_sv78, align 8
  br label %cond.end

cond.false.79:                                    ; preds = %cond.true.71
  br label %cond.end

cond.end:                                         ; preds = %cond.false.79, %cond.true.74
  %cond = phi %struct.sv* [ %95, %cond.true.74 ], [ null, %cond.false.79 ]
  %sv_any80 = getelementptr inbounds %struct.sv, %struct.sv* %cond, i32 0, i32 0
  %96 = load i8*, i8** %sv_any80, align 8
  %97 = bitcast i8* %96 to %struct.xpv*
  %xpv_pv81 = getelementptr inbounds %struct.xpv, %struct.xpv* %97, i32 0, i32 0
  %98 = load i8*, i8** %xpv_pv81, align 8
  %tobool82 = icmp ne i8* %98, null
  br i1 %tobool82, label %cond.true.84, label %cond.false.110

cond.false.83:                                    ; preds = %cond.false.70, %cond.true.64
  br i1 false, label %cond.true.84, label %cond.false.110

cond.true.84:                                     ; preds = %cond.false.83, %cond.end
  %99 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv85 = getelementptr inbounds %struct.cop, %struct.cop* %99, i32 0, i32 10
  %100 = load %struct.gv*, %struct.gv** %cop_filegv85, align 8
  %tobool86 = icmp ne %struct.gv* %100, null
  br i1 %tobool86, label %cond.true.87, label %cond.false.93

cond.true.87:                                     ; preds = %cond.true.84
  %101 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv88 = getelementptr inbounds %struct.cop, %struct.cop* %101, i32 0, i32 10
  %102 = load %struct.gv*, %struct.gv** %cop_filegv88, align 8
  %sv_any89 = getelementptr inbounds %struct.gv, %struct.gv* %102, i32 0, i32 0
  %103 = load %struct.xpvgv*, %struct.xpvgv** %sv_any89, align 8
  %xgv_gp90 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %103, i32 0, i32 7
  %104 = load %struct.gp*, %struct.gp** %xgv_gp90, align 8
  %gp_sv91 = getelementptr inbounds %struct.gp, %struct.gp* %104, i32 0, i32 0
  %105 = load %struct.sv*, %struct.sv** %gp_sv91, align 8
  %tobool92 = icmp ne %struct.sv* %105, null
  br i1 %tobool92, label %cond.true.94, label %cond.false.107

cond.false.93:                                    ; preds = %cond.true.84
  br i1 false, label %cond.true.94, label %cond.false.107

cond.true.94:                                     ; preds = %cond.false.93, %cond.true.87
  %106 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv95 = getelementptr inbounds %struct.cop, %struct.cop* %106, i32 0, i32 10
  %107 = load %struct.gv*, %struct.gv** %cop_filegv95, align 8
  %tobool96 = icmp ne %struct.gv* %107, null
  br i1 %tobool96, label %cond.true.97, label %cond.false.102

cond.true.97:                                     ; preds = %cond.true.94
  %108 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_filegv98 = getelementptr inbounds %struct.cop, %struct.cop* %108, i32 0, i32 10
  %109 = load %struct.gv*, %struct.gv** %cop_filegv98, align 8
  %sv_any99 = getelementptr inbounds %struct.gv, %struct.gv* %109, i32 0, i32 0
  %110 = load %struct.xpvgv*, %struct.xpvgv** %sv_any99, align 8
  %xgv_gp100 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %110, i32 0, i32 7
  %111 = load %struct.gp*, %struct.gp** %xgv_gp100, align 8
  %gp_sv101 = getelementptr inbounds %struct.gp, %struct.gp* %111, i32 0, i32 0
  %112 = load %struct.sv*, %struct.sv** %gp_sv101, align 8
  br label %cond.end.103

cond.false.102:                                   ; preds = %cond.true.94
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.102, %cond.true.97
  %cond104 = phi %struct.sv* [ %112, %cond.true.97 ], [ null, %cond.false.102 ]
  %sv_any105 = getelementptr inbounds %struct.sv, %struct.sv* %cond104, i32 0, i32 0
  %113 = load i8*, i8** %sv_any105, align 8
  %114 = bitcast i8* %113 to %struct.xpv*
  %xpv_pv106 = getelementptr inbounds %struct.xpv, %struct.xpv* %114, i32 0, i32 0
  %115 = load i8*, i8** %xpv_pv106, align 8
  br label %cond.end.108

cond.false.107:                                   ; preds = %cond.false.93, %cond.true.87
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.107, %cond.end.103
  %cond109 = phi i8* [ %115, %cond.end.103 ], [ null, %cond.false.107 ]
  br label %cond.end.111

cond.false.110:                                   ; preds = %cond.false.83, %cond.end
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.110, %cond.end.108
  %cond112 = phi i8* [ %cond109, %cond.end.108 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), %cond.false.110 ]
  %116 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any113 = getelementptr inbounds %struct.gv, %struct.gv* %116, i32 0, i32 0
  %117 = load %struct.xpvgv*, %struct.xpvgv** %sv_any113, align 8
  %xgv_gp114 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %117, i32 0, i32 7
  %118 = load %struct.gp*, %struct.gp** %xgv_gp114, align 8
  %gp_file = getelementptr inbounds %struct.gp, %struct.gp* %118, i32 0, i32 11
  store i8* %cond112, i8** %gp_file, align 8
  %119 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %120 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any115 = getelementptr inbounds %struct.gv, %struct.gv* %120, i32 0, i32 0
  %121 = load %struct.xpvgv*, %struct.xpvgv** %sv_any115, align 8
  %xgv_gp116 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %121, i32 0, i32 7
  %122 = load %struct.gp*, %struct.gp** %xgv_gp116, align 8
  %gp_egv = getelementptr inbounds %struct.gp, %struct.gp* %122, i32 0, i32 6
  store %struct.gv* %119, %struct.gv** %gp_egv, align 8
  br label %if.end.124

if.else:                                          ; preds = %land.end
  %123 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any117 = getelementptr inbounds %struct.gv, %struct.gv* %123, i32 0, i32 0
  %124 = load %struct.xpvgv*, %struct.xpvgv** %sv_any117, align 8
  %xgv_gp118 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %124, i32 0, i32 7
  %125 = load %struct.gp*, %struct.gp** %xgv_gp118, align 8
  %call119 = call %struct.gp* @Perl_gp_ref(%struct.gp* %125)
  %126 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any120 = getelementptr inbounds %struct.gv, %struct.gv* %126, i32 0, i32 0
  %127 = load %struct.xpvgv*, %struct.xpvgv** %sv_any120, align 8
  %xgv_flags = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %127, i32 0, i32 11
  %128 = load i8, i8* %xgv_flags, align 1
  %conv121 = zext i8 %128 to i32
  %or122 = or i32 %conv121, 1
  %conv123 = trunc i32 %or122 to i8
  store i8 %conv123, i8* %xgv_flags, align 1
  br label %if.end.124

if.end.124:                                       ; preds = %if.else, %cond.end.111
  ret void
}

declare %struct.io* @Perl_newIO() #1

declare %struct.gp* @Perl_gp_ref(%struct.gp*) #1

declare %struct.sv* @Perl_newSV(i64) #1

; Function Attrs: nounwind uwtable
define %struct.av* @Perl_save_ary(%struct.gv* %gv) #0 {
entry:
  %gv.addr = alloca %struct.gv*, align 8
  %oav = alloca %struct.av*, align 8
  %av = alloca %struct.av*, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  %0 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %0, i32 0, i32 0
  %1 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %1, i32 0, i32 7
  %2 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_av = getelementptr inbounds %struct.gp, %struct.gp* %2, i32 0, i32 4
  %3 = load %struct.av*, %struct.av** %gp_av, align 8
  %tobool = icmp ne %struct.av* %3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.gv, %struct.gv* %4, i32 0, i32 0
  %5 = load %struct.xpvgv*, %struct.xpvgv** %sv_any1, align 8
  %xgv_gp2 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %5, i32 0, i32 7
  %6 = load %struct.gp*, %struct.gp** %xgv_gp2, align 8
  %gp_av3 = getelementptr inbounds %struct.gp, %struct.gp* %6, i32 0, i32 4
  %7 = load %struct.av*, %struct.av** %gp_av3, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %call = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %8)
  %sv_any4 = getelementptr inbounds %struct.gv, %struct.gv* %call, i32 0, i32 0
  %9 = load %struct.xpvgv*, %struct.xpvgv** %sv_any4, align 8
  %xgv_gp5 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %9, i32 0, i32 7
  %10 = load %struct.gp*, %struct.gp** %xgv_gp5, align 8
  %gp_av6 = getelementptr inbounds %struct.gp, %struct.gp* %10, i32 0, i32 4
  %11 = load %struct.av*, %struct.av** %gp_av6, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.av* [ %7, %cond.true ], [ %11, %cond.false ]
  store %struct.av* %cond, %struct.av** %oav, align 8
  %12 = load %struct.av*, %struct.av** %oav, align 8
  %sv_any7 = getelementptr inbounds %struct.av, %struct.av* %12, i32 0, i32 0
  %13 = load %struct.xpvav*, %struct.xpvav** %sv_any7, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %13, i32 0, i32 9
  %14 = load i8, i8* %xav_flags, align 1
  %conv = zext i8 %14 to i32
  %and = and i32 %conv, 1
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %15 = load %struct.av*, %struct.av** %oav, align 8
  %sv_any9 = getelementptr inbounds %struct.av, %struct.av* %15, i32 0, i32 0
  %16 = load %struct.xpvav*, %struct.xpvav** %sv_any9, align 8
  %xav_flags10 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %16, i32 0, i32 9
  %17 = load i8, i8* %xav_flags10, align 1
  %conv11 = zext i8 %17 to i32
  %and12 = and i32 %conv11, 2
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %18 = load %struct.av*, %struct.av** %oav, align 8
  call void @Perl_av_reify(%struct.av* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end
  %19 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %19, 3
  %20 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %20
  br i1 %cmp, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  call void @Perl_savestack_grow()
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end
  %21 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %22 = bitcast %struct.gv* %21 to i8*
  %23 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %24, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %22, i8** %any_ptr, align 8
  %25 = load %struct.av*, %struct.av** %oav, align 8
  %26 = bitcast %struct.av* %25 to i8*
  %27 = load i32, i32* @PL_savestack_ix, align 4
  %inc17 = add nsw i32 %27, 1
  store i32 %inc17, i32* @PL_savestack_ix, align 4
  %idxprom18 = sext i32 %27 to i64
  %28 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx19 = getelementptr inbounds %union.any, %union.any* %28, i64 %idxprom18
  %any_ptr20 = bitcast %union.any* %arrayidx19 to i8**
  store i8* %26, i8** %any_ptr20, align 8
  %29 = load i32, i32* @PL_savestack_ix, align 4
  %inc21 = add nsw i32 %29, 1
  store i32 %inc21, i32* @PL_savestack_ix, align 4
  %idxprom22 = sext i32 %29 to i64
  %30 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx23 = getelementptr inbounds %union.any, %union.any* %30, i64 %idxprom22
  %any_i32 = bitcast %union.any* %arrayidx23 to i32*
  store i32 2, i32* %any_i32, align 4
  %31 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any24 = getelementptr inbounds %struct.gv, %struct.gv* %31, i32 0, i32 0
  %32 = load %struct.xpvgv*, %struct.xpvgv** %sv_any24, align 8
  %xgv_gp25 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %32, i32 0, i32 7
  %33 = load %struct.gp*, %struct.gp** %xgv_gp25, align 8
  %gp_av26 = getelementptr inbounds %struct.gp, %struct.gp* %33, i32 0, i32 4
  store %struct.av* null, %struct.av** %gp_av26, align 8
  %34 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any27 = getelementptr inbounds %struct.gv, %struct.gv* %34, i32 0, i32 0
  %35 = load %struct.xpvgv*, %struct.xpvgv** %sv_any27, align 8
  %xgv_gp28 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %35, i32 0, i32 7
  %36 = load %struct.gp*, %struct.gp** %xgv_gp28, align 8
  %gp_av29 = getelementptr inbounds %struct.gp, %struct.gp* %36, i32 0, i32 4
  %37 = load %struct.av*, %struct.av** %gp_av29, align 8
  %tobool30 = icmp ne %struct.av* %37, null
  br i1 %tobool30, label %cond.true.31, label %cond.false.35

cond.true.31:                                     ; preds = %if.end.16
  %38 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any32 = getelementptr inbounds %struct.gv, %struct.gv* %38, i32 0, i32 0
  %39 = load %struct.xpvgv*, %struct.xpvgv** %sv_any32, align 8
  %xgv_gp33 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %39, i32 0, i32 7
  %40 = load %struct.gp*, %struct.gp** %xgv_gp33, align 8
  %gp_av34 = getelementptr inbounds %struct.gp, %struct.gp* %40, i32 0, i32 4
  %41 = load %struct.av*, %struct.av** %gp_av34, align 8
  br label %cond.end.40

cond.false.35:                                    ; preds = %if.end.16
  %42 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %call36 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %42)
  %sv_any37 = getelementptr inbounds %struct.gv, %struct.gv* %call36, i32 0, i32 0
  %43 = load %struct.xpvgv*, %struct.xpvgv** %sv_any37, align 8
  %xgv_gp38 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %43, i32 0, i32 7
  %44 = load %struct.gp*, %struct.gp** %xgv_gp38, align 8
  %gp_av39 = getelementptr inbounds %struct.gp, %struct.gp* %44, i32 0, i32 4
  %45 = load %struct.av*, %struct.av** %gp_av39, align 8
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.35, %cond.true.31
  %cond41 = phi %struct.av* [ %41, %cond.true.31 ], [ %45, %cond.false.35 ]
  store %struct.av* %cond41, %struct.av** %av, align 8
  %46 = load %struct.av*, %struct.av** %oav, align 8
  %sv_any42 = getelementptr inbounds %struct.av, %struct.av* %46, i32 0, i32 0
  %47 = load %struct.xpvav*, %struct.xpvav** %sv_any42, align 8
  %48 = bitcast %struct.xpvav* %47 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %48, i32 0, i32 5
  %49 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  %tobool43 = icmp ne %struct.magic* %49, null
  br i1 %tobool43, label %if.then.44, label %if.end.61

if.then.44:                                       ; preds = %cond.end.40
  %50 = load %struct.av*, %struct.av** %oav, align 8
  %sv_any45 = getelementptr inbounds %struct.av, %struct.av* %50, i32 0, i32 0
  %51 = load %struct.xpvav*, %struct.xpvav** %sv_any45, align 8
  %52 = bitcast %struct.xpvav* %51 to %struct.xpvmg*
  %xmg_magic46 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %52, i32 0, i32 5
  %53 = load %struct.magic*, %struct.magic** %xmg_magic46, align 8
  %54 = load %struct.av*, %struct.av** %av, align 8
  %sv_any47 = getelementptr inbounds %struct.av, %struct.av* %54, i32 0, i32 0
  %55 = load %struct.xpvav*, %struct.xpvav** %sv_any47, align 8
  %56 = bitcast %struct.xpvav* %55 to %struct.xpvmg*
  %xmg_magic48 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %56, i32 0, i32 5
  store %struct.magic* %53, %struct.magic** %xmg_magic48, align 8
  %57 = load %struct.av*, %struct.av** %oav, align 8
  %sv_flags = getelementptr inbounds %struct.av, %struct.av* %57, i32 0, i32 2
  %58 = load i32, i32* %sv_flags, align 4
  %and49 = and i32 %58, 57344
  %59 = load %struct.av*, %struct.av** %av, align 8
  %60 = bitcast %struct.av* %59 to %struct.sv*
  %sv_flags50 = getelementptr inbounds %struct.sv, %struct.sv* %60, i32 0, i32 2
  %61 = load i32, i32* %sv_flags50, align 4
  %or = or i32 %61, %and49
  store i32 %or, i32* %sv_flags50, align 4
  %62 = load %struct.av*, %struct.av** %oav, align 8
  %sv_flags51 = getelementptr inbounds %struct.av, %struct.av* %62, i32 0, i32 2
  %63 = load i32, i32* %sv_flags51, align 4
  %and52 = and i32 %63, -57345
  store i32 %and52, i32* %sv_flags51, align 4
  %64 = load %struct.av*, %struct.av** %oav, align 8
  %sv_any53 = getelementptr inbounds %struct.av, %struct.av* %64, i32 0, i32 0
  %65 = load %struct.xpvav*, %struct.xpvav** %sv_any53, align 8
  %66 = bitcast %struct.xpvav* %65 to %struct.xpvmg*
  %xmg_magic54 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %66, i32 0, i32 5
  store %struct.magic* null, %struct.magic** %xmg_magic54, align 8
  store i32 1, i32* @PL_localizing, align 4
  %67 = load %struct.av*, %struct.av** %av, align 8
  %68 = bitcast %struct.av* %67 to %struct.sv*
  %sv_flags55 = getelementptr inbounds %struct.sv, %struct.sv* %68, i32 0, i32 2
  %69 = load i32, i32* %sv_flags55, align 4
  %and56 = and i32 %69, 16384
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.then.44
  %70 = load %struct.av*, %struct.av** %av, align 8
  %71 = bitcast %struct.av* %70 to %struct.sv*
  %call59 = call i32 @Perl_mg_set(%struct.sv* %71)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.then.44
  store i32 0, i32* @PL_localizing, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %cond.end.40
  %72 = load %struct.av*, %struct.av** %av, align 8
  ret %struct.av* %72
}

declare %struct.gv* @Perl_gv_AVadd(%struct.gv*) #1

declare void @Perl_av_reify(%struct.av*) #1

declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define %struct.hv* @Perl_save_hash(%struct.gv* %gv) #0 {
entry:
  %gv.addr = alloca %struct.gv*, align 8
  %ohv = alloca %struct.hv*, align 8
  %hv = alloca %struct.hv*, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 3
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %3 = bitcast %struct.gv* %2 to i8*
  %4 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %5, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %3, i8** %any_ptr, align 8
  %6 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any = getelementptr inbounds %struct.gv, %struct.gv* %6, i32 0, i32 0
  %7 = load %struct.xpvgv*, %struct.xpvgv** %sv_any, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %7, i32 0, i32 7
  %8 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_hv = getelementptr inbounds %struct.gp, %struct.gp* %8, i32 0, i32 5
  %9 = load %struct.hv*, %struct.hv** %gp_hv, align 8
  %tobool = icmp ne %struct.hv* %9, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.gv, %struct.gv* %10, i32 0, i32 0
  %11 = load %struct.xpvgv*, %struct.xpvgv** %sv_any1, align 8
  %xgv_gp2 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %11, i32 0, i32 7
  %12 = load %struct.gp*, %struct.gp** %xgv_gp2, align 8
  %gp_hv3 = getelementptr inbounds %struct.gp, %struct.gp* %12, i32 0, i32 5
  %13 = load %struct.hv*, %struct.hv** %gp_hv3, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %14 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %call = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %14)
  %sv_any4 = getelementptr inbounds %struct.gv, %struct.gv* %call, i32 0, i32 0
  %15 = load %struct.xpvgv*, %struct.xpvgv** %sv_any4, align 8
  %xgv_gp5 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %15, i32 0, i32 7
  %16 = load %struct.gp*, %struct.gp** %xgv_gp5, align 8
  %gp_hv6 = getelementptr inbounds %struct.gp, %struct.gp* %16, i32 0, i32 5
  %17 = load %struct.hv*, %struct.hv** %gp_hv6, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.hv* [ %13, %cond.true ], [ %17, %cond.false ]
  store %struct.hv* %cond, %struct.hv** %ohv, align 8
  %18 = bitcast %struct.hv* %cond to i8*
  %19 = load i32, i32* @PL_savestack_ix, align 4
  %inc7 = add nsw i32 %19, 1
  store i32 %inc7, i32* @PL_savestack_ix, align 4
  %idxprom8 = sext i32 %19 to i64
  %20 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx9 = getelementptr inbounds %union.any, %union.any* %20, i64 %idxprom8
  %any_ptr10 = bitcast %union.any* %arrayidx9 to i8**
  store i8* %18, i8** %any_ptr10, align 8
  %21 = load i32, i32* @PL_savestack_ix, align 4
  %inc11 = add nsw i32 %21, 1
  store i32 %inc11, i32* @PL_savestack_ix, align 4
  %idxprom12 = sext i32 %21 to i64
  %22 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx13 = getelementptr inbounds %union.any, %union.any* %22, i64 %idxprom12
  %any_i32 = bitcast %union.any* %arrayidx13 to i32*
  store i32 3, i32* %any_i32, align 4
  %23 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any14 = getelementptr inbounds %struct.gv, %struct.gv* %23, i32 0, i32 0
  %24 = load %struct.xpvgv*, %struct.xpvgv** %sv_any14, align 8
  %xgv_gp15 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %24, i32 0, i32 7
  %25 = load %struct.gp*, %struct.gp** %xgv_gp15, align 8
  %gp_hv16 = getelementptr inbounds %struct.gp, %struct.gp* %25, i32 0, i32 5
  store %struct.hv* null, %struct.hv** %gp_hv16, align 8
  %26 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any17 = getelementptr inbounds %struct.gv, %struct.gv* %26, i32 0, i32 0
  %27 = load %struct.xpvgv*, %struct.xpvgv** %sv_any17, align 8
  %xgv_gp18 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %27, i32 0, i32 7
  %28 = load %struct.gp*, %struct.gp** %xgv_gp18, align 8
  %gp_hv19 = getelementptr inbounds %struct.gp, %struct.gp* %28, i32 0, i32 5
  %29 = load %struct.hv*, %struct.hv** %gp_hv19, align 8
  %tobool20 = icmp ne %struct.hv* %29, null
  br i1 %tobool20, label %cond.true.21, label %cond.false.25

cond.true.21:                                     ; preds = %cond.end
  %30 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %sv_any22 = getelementptr inbounds %struct.gv, %struct.gv* %30, i32 0, i32 0
  %31 = load %struct.xpvgv*, %struct.xpvgv** %sv_any22, align 8
  %xgv_gp23 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %31, i32 0, i32 7
  %32 = load %struct.gp*, %struct.gp** %xgv_gp23, align 8
  %gp_hv24 = getelementptr inbounds %struct.gp, %struct.gp* %32, i32 0, i32 5
  %33 = load %struct.hv*, %struct.hv** %gp_hv24, align 8
  br label %cond.end.30

cond.false.25:                                    ; preds = %cond.end
  %34 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %call26 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %34)
  %sv_any27 = getelementptr inbounds %struct.gv, %struct.gv* %call26, i32 0, i32 0
  %35 = load %struct.xpvgv*, %struct.xpvgv** %sv_any27, align 8
  %xgv_gp28 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %35, i32 0, i32 7
  %36 = load %struct.gp*, %struct.gp** %xgv_gp28, align 8
  %gp_hv29 = getelementptr inbounds %struct.gp, %struct.gp* %36, i32 0, i32 5
  %37 = load %struct.hv*, %struct.hv** %gp_hv29, align 8
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.25, %cond.true.21
  %cond31 = phi %struct.hv* [ %33, %cond.true.21 ], [ %37, %cond.false.25 ]
  store %struct.hv* %cond31, %struct.hv** %hv, align 8
  %38 = load %struct.hv*, %struct.hv** %ohv, align 8
  %sv_any32 = getelementptr inbounds %struct.hv, %struct.hv* %38, i32 0, i32 0
  %39 = load %struct.xpvhv*, %struct.xpvhv** %sv_any32, align 8
  %40 = bitcast %struct.xpvhv* %39 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %40, i32 0, i32 5
  %41 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  %tobool33 = icmp ne %struct.magic* %41, null
  br i1 %tobool33, label %if.then.34, label %if.end.50

if.then.34:                                       ; preds = %cond.end.30
  %42 = load %struct.hv*, %struct.hv** %ohv, align 8
  %sv_any35 = getelementptr inbounds %struct.hv, %struct.hv* %42, i32 0, i32 0
  %43 = load %struct.xpvhv*, %struct.xpvhv** %sv_any35, align 8
  %44 = bitcast %struct.xpvhv* %43 to %struct.xpvmg*
  %xmg_magic36 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %44, i32 0, i32 5
  %45 = load %struct.magic*, %struct.magic** %xmg_magic36, align 8
  %46 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_any37 = getelementptr inbounds %struct.hv, %struct.hv* %46, i32 0, i32 0
  %47 = load %struct.xpvhv*, %struct.xpvhv** %sv_any37, align 8
  %48 = bitcast %struct.xpvhv* %47 to %struct.xpvmg*
  %xmg_magic38 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %48, i32 0, i32 5
  store %struct.magic* %45, %struct.magic** %xmg_magic38, align 8
  %49 = load %struct.hv*, %struct.hv** %ohv, align 8
  %sv_flags = getelementptr inbounds %struct.hv, %struct.hv* %49, i32 0, i32 2
  %50 = load i32, i32* %sv_flags, align 4
  %and = and i32 %50, 57344
  %51 = load %struct.hv*, %struct.hv** %hv, align 8
  %52 = bitcast %struct.hv* %51 to %struct.sv*
  %sv_flags39 = getelementptr inbounds %struct.sv, %struct.sv* %52, i32 0, i32 2
  %53 = load i32, i32* %sv_flags39, align 4
  %or = or i32 %53, %and
  store i32 %or, i32* %sv_flags39, align 4
  %54 = load %struct.hv*, %struct.hv** %ohv, align 8
  %sv_flags40 = getelementptr inbounds %struct.hv, %struct.hv* %54, i32 0, i32 2
  %55 = load i32, i32* %sv_flags40, align 4
  %and41 = and i32 %55, -57345
  store i32 %and41, i32* %sv_flags40, align 4
  %56 = load %struct.hv*, %struct.hv** %ohv, align 8
  %sv_any42 = getelementptr inbounds %struct.hv, %struct.hv* %56, i32 0, i32 0
  %57 = load %struct.xpvhv*, %struct.xpvhv** %sv_any42, align 8
  %58 = bitcast %struct.xpvhv* %57 to %struct.xpvmg*
  %xmg_magic43 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %58, i32 0, i32 5
  store %struct.magic* null, %struct.magic** %xmg_magic43, align 8
  store i32 1, i32* @PL_localizing, align 4
  %59 = load %struct.hv*, %struct.hv** %hv, align 8
  %60 = bitcast %struct.hv* %59 to %struct.sv*
  %sv_flags44 = getelementptr inbounds %struct.sv, %struct.sv* %60, i32 0, i32 2
  %61 = load i32, i32* %sv_flags44, align 4
  %and45 = and i32 %61, 16384
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.then.34
  %62 = load %struct.hv*, %struct.hv** %hv, align 8
  %63 = bitcast %struct.hv* %62 to %struct.sv*
  %call48 = call i32 @Perl_mg_set(%struct.sv* %63)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.then.34
  store i32 0, i32* @PL_localizing, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %cond.end.30
  %64 = load %struct.hv*, %struct.hv** %hv, align 8
  ret %struct.hv* %64
}

declare %struct.gv* @Perl_gv_HVadd(%struct.gv*) #1

; Function Attrs: nounwind uwtable
define void @Perl_save_item(%struct.sv* %item) #0 {
entry:
  %item.addr = alloca %struct.sv*, align 8
  %sv = alloca %struct.sv*, align 8
  store %struct.sv* %item, %struct.sv** %item.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %item.addr, align 8
  %call = call %struct.sv* @Perl_newSVsv(%struct.sv* %0)
  store %struct.sv* %call, %struct.sv** %sv, align 8
  %1 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %1, 3
  %2 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.sv*, %struct.sv** %item.addr, align 8
  %4 = bitcast %struct.sv* %3 to i8*
  %5 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %6, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %4, i8** %any_ptr, align 8
  %7 = load %struct.sv*, %struct.sv** %sv, align 8
  %8 = bitcast %struct.sv* %7 to i8*
  %9 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %9, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %10, i64 %idxprom2
  %any_ptr4 = bitcast %union.any* %arrayidx3 to i8**
  store i8* %8, i8** %any_ptr4, align 8
  %11 = load i32, i32* @PL_savestack_ix, align 4
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, i32* @PL_savestack_ix, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx7 = getelementptr inbounds %union.any, %union.any* %12, i64 %idxprom6
  %any_i32 = bitcast %union.any* %arrayidx7 to i32*
  store i32 0, i32* %any_i32, align 4
  ret void
}

declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @Perl_save_int(i32* %intp) #0 {
entry:
  %intp.addr = alloca i32*, align 8
  store i32* %intp, i32** %intp.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 3
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32*, i32** %intp.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %5, i64 %idxprom
  %any_i32 = bitcast %union.any* %arrayidx to i32*
  store i32 %3, i32* %any_i32, align 4
  %6 = load i32*, i32** %intp.addr, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %8, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %9, i64 %idxprom2
  %any_ptr = bitcast %union.any* %arrayidx3 to i8**
  store i8* %7, i8** %any_ptr, align 8
  %10 = load i32, i32* @PL_savestack_ix, align 4
  %inc4 = add nsw i32 %10, 1
  store i32 %inc4, i32* @PL_savestack_ix, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx6 = getelementptr inbounds %union.any, %union.any* %11, i64 %idxprom5
  %any_i327 = bitcast %union.any* %arrayidx6 to i32*
  store i32 4, i32* %any_i327, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_long(i64* %longp) #0 {
entry:
  %longp.addr = alloca i64*, align 8
  store i64* %longp, i64** %longp.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 3
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64*, i64** %longp.addr, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %5, i64 %idxprom
  %any_long = bitcast %union.any* %arrayidx to i64*
  store i64 %3, i64* %any_long, align 8
  %6 = load i64*, i64** %longp.addr, align 8
  %7 = bitcast i64* %6 to i8*
  %8 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %8, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %9, i64 %idxprom2
  %any_ptr = bitcast %union.any* %arrayidx3 to i8**
  store i8* %7, i8** %any_ptr, align 8
  %10 = load i32, i32* @PL_savestack_ix, align 4
  %inc4 = add nsw i32 %10, 1
  store i32 %inc4, i32* @PL_savestack_ix, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx6 = getelementptr inbounds %union.any, %union.any* %11, i64 %idxprom5
  %any_i32 = bitcast %union.any* %arrayidx6 to i32*
  store i32 5, i32* %any_i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_bool(i8* %boolp) #0 {
entry:
  %boolp.addr = alloca i8*, align 8
  store i8* %boolp, i8** %boolp.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 3
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %boolp.addr, align 8
  %3 = load i8, i8* %2, align 1
  %4 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %5, i64 %idxprom
  %any_bool = bitcast %union.any* %arrayidx to i8*
  store i8 %3, i8* %any_bool, align 1
  %6 = load i8*, i8** %boolp.addr, align 8
  %7 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %7, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %8, i64 %idxprom2
  %any_ptr = bitcast %union.any* %arrayidx3 to i8**
  store i8* %6, i8** %any_ptr, align 8
  %9 = load i32, i32* @PL_savestack_ix, align 4
  %inc4 = add nsw i32 %9, 1
  store i32 %inc4, i32* @PL_savestack_ix, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx6 = getelementptr inbounds %union.any, %union.any* %10, i64 %idxprom5
  %any_i32 = bitcast %union.any* %arrayidx6 to i32*
  store i32 38, i32* %any_i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_I32(i32* %intp) #0 {
entry:
  %intp.addr = alloca i32*, align 8
  store i32* %intp, i32** %intp.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 3
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32*, i32** %intp.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %5, i64 %idxprom
  %any_i32 = bitcast %union.any* %arrayidx to i32*
  store i32 %3, i32* %any_i32, align 4
  %6 = load i32*, i32** %intp.addr, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %8, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %9, i64 %idxprom2
  %any_ptr = bitcast %union.any* %arrayidx3 to i8**
  store i8* %7, i8** %any_ptr, align 8
  %10 = load i32, i32* @PL_savestack_ix, align 4
  %inc4 = add nsw i32 %10, 1
  store i32 %inc4, i32* @PL_savestack_ix, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx6 = getelementptr inbounds %union.any, %union.any* %11, i64 %idxprom5
  %any_i327 = bitcast %union.any* %arrayidx6 to i32*
  store i32 6, i32* %any_i327, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_I16(i16* %intp) #0 {
entry:
  %intp.addr = alloca i16*, align 8
  store i16* %intp, i16** %intp.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 3
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i16*, i16** %intp.addr, align 8
  %3 = load i16, i16* %2, align 2
  %conv = sext i16 %3 to i32
  %4 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %5, i64 %idxprom
  %any_i32 = bitcast %union.any* %arrayidx to i32*
  store i32 %conv, i32* %any_i32, align 4
  %6 = load i16*, i16** %intp.addr, align 8
  %7 = bitcast i16* %6 to i8*
  %8 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %8, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %9, i64 %idxprom2
  %any_ptr = bitcast %union.any* %arrayidx3 to i8**
  store i8* %7, i8** %any_ptr, align 8
  %10 = load i32, i32* @PL_savestack_ix, align 4
  %inc4 = add nsw i32 %10, 1
  store i32 %inc4, i32* @PL_savestack_ix, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx6 = getelementptr inbounds %union.any, %union.any* %11, i64 %idxprom5
  %any_i327 = bitcast %union.any* %arrayidx6 to i32*
  store i32 23, i32* %any_i327, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_I8(i8* %bytep) #0 {
entry:
  %bytep.addr = alloca i8*, align 8
  store i8* %bytep, i8** %bytep.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 3
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %bytep.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %4 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %5, i64 %idxprom
  %any_i32 = bitcast %union.any* %arrayidx to i32*
  store i32 %conv, i32* %any_i32, align 4
  %6 = load i8*, i8** %bytep.addr, align 8
  %7 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %7, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %8, i64 %idxprom2
  %any_ptr = bitcast %union.any* %arrayidx3 to i8**
  store i8* %6, i8** %any_ptr, align 8
  %9 = load i32, i32* @PL_savestack_ix, align 4
  %inc4 = add nsw i32 %9, 1
  store i32 %inc4, i32* @PL_savestack_ix, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx6 = getelementptr inbounds %union.any, %union.any* %10, i64 %idxprom5
  %any_i327 = bitcast %union.any* %arrayidx6 to i32*
  store i32 32, i32* %any_i327, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_iv(i64* %ivp) #0 {
entry:
  %ivp.addr = alloca i64*, align 8
  store i64* %ivp, i64** %ivp.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 3
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64*, i64** %ivp.addr, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %5, i64 %idxprom
  %any_iv = bitcast %union.any* %arrayidx to i64*
  store i64 %3, i64* %any_iv, align 8
  %6 = load i64*, i64** %ivp.addr, align 8
  %7 = bitcast i64* %6 to i8*
  %8 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %8, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %9, i64 %idxprom2
  %any_ptr = bitcast %union.any* %arrayidx3 to i8**
  store i8* %7, i8** %any_ptr, align 8
  %10 = load i32, i32* @PL_savestack_ix, align 4
  %inc4 = add nsw i32 %10, 1
  store i32 %inc4, i32* @PL_savestack_ix, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx6 = getelementptr inbounds %union.any, %union.any* %11, i64 %idxprom5
  %any_i32 = bitcast %union.any* %arrayidx6 to i32*
  store i32 7, i32* %any_i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_pptr(i8** %pptr) #0 {
entry:
  %pptr.addr = alloca i8**, align 8
  store i8** %pptr, i8*** %pptr.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 3
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8**, i8*** %pptr.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %5, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %3, i8** %any_ptr, align 8
  %6 = load i8**, i8*** %pptr.addr, align 8
  %7 = bitcast i8** %6 to i8*
  %8 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %8, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %9, i64 %idxprom2
  %any_ptr4 = bitcast %union.any* %arrayidx3 to i8**
  store i8* %7, i8** %any_ptr4, align 8
  %10 = load i32, i32* @PL_savestack_ix, align 4
  %inc5 = add nsw i32 %10, 1
  store i32 %inc5, i32* @PL_savestack_ix, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx7 = getelementptr inbounds %union.any, %union.any* %11, i64 %idxprom6
  %any_i32 = bitcast %union.any* %arrayidx7 to i32*
  store i32 11, i32* %any_i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_vptr(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 3
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %ptr.addr, align 8
  %3 = bitcast i8* %2 to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %6, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %4, i8** %any_ptr, align 8
  %7 = load i8*, i8** %ptr.addr, align 8
  %8 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %8, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %9, i64 %idxprom2
  %any_ptr4 = bitcast %union.any* %arrayidx3 to i8**
  store i8* %7, i8** %any_ptr4, align 8
  %10 = load i32, i32* @PL_savestack_ix, align 4
  %inc5 = add nsw i32 %10, 1
  store i32 %inc5, i32* @PL_savestack_ix, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx7 = getelementptr inbounds %union.any, %union.any* %11, i64 %idxprom6
  %any_i32 = bitcast %union.any* %arrayidx7 to i32*
  store i32 31, i32* %any_i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_sptr(%struct.sv** %sptr) #0 {
entry:
  %sptr.addr = alloca %struct.sv**, align 8
  store %struct.sv** %sptr, %struct.sv*** %sptr.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 3
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.sv**, %struct.sv*** %sptr.addr, align 8
  %3 = load %struct.sv*, %struct.sv** %2, align 8
  %4 = bitcast %struct.sv* %3 to i8*
  %5 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %6, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %4, i8** %any_ptr, align 8
  %7 = load %struct.sv**, %struct.sv*** %sptr.addr, align 8
  %8 = bitcast %struct.sv** %7 to i8*
  %9 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %9, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %10, i64 %idxprom2
  %any_ptr4 = bitcast %union.any* %arrayidx3 to i8**
  store i8* %8, i8** %any_ptr4, align 8
  %11 = load i32, i32* @PL_savestack_ix, align 4
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, i32* @PL_savestack_ix, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx7 = getelementptr inbounds %union.any, %union.any* %12, i64 %idxprom6
  %any_i32 = bitcast %union.any* %arrayidx7 to i32*
  store i32 8, i32* %any_i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_padsv(i64 %off) #0 {
entry:
  %off.addr = alloca i64, align 8
  store i64 %off, i64* %off.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 4
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %off.addr, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 %2
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %5 = bitcast %struct.sv* %4 to i8*
  %6 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx1 = getelementptr inbounds %union.any, %union.any* %7, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx1 to i8**
  store i8* %5, i8** %any_ptr, align 8
  %8 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %9 = bitcast %struct.av* %8 to i8*
  %10 = load i32, i32* @PL_savestack_ix, align 4
  %inc2 = add nsw i32 %10, 1
  store i32 %inc2, i32* @PL_savestack_ix, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx4 = getelementptr inbounds %union.any, %union.any* %11, i64 %idxprom3
  %any_ptr5 = bitcast %union.any* %arrayidx4 to i8**
  store i8* %9, i8** %any_ptr5, align 8
  %12 = load i64, i64* %off.addr, align 8
  %13 = load i32, i32* @PL_savestack_ix, align 4
  %inc6 = add nsw i32 %13, 1
  store i32 %inc6, i32* @PL_savestack_ix, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx8 = getelementptr inbounds %union.any, %union.any* %14, i64 %idxprom7
  %any_long = bitcast %union.any* %arrayidx8 to i64*
  store i64 %12, i64* %any_long, align 8
  %15 = load i32, i32* @PL_savestack_ix, align 4
  %inc9 = add nsw i32 %15, 1
  store i32 %inc9, i32* @PL_savestack_ix, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx11 = getelementptr inbounds %union.any, %union.any* %16, i64 %idxprom10
  %any_i32 = bitcast %union.any* %arrayidx11 to i32*
  store i32 35, i32* %any_i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.sv** @Perl_save_threadsv(i64 %i) #0 {
entry:
  %i.addr = alloca i64, align 8
  store i64 %i, i64* %i.addr, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0))
  ret %struct.sv** null
}

declare void @Perl_croak(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @Perl_save_nogv(%struct.gv* %gv) #0 {
entry:
  %gv.addr = alloca %struct.gv*, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 2
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %3 = bitcast %struct.gv* %2 to i8*
  %4 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %5, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %3, i8** %any_ptr, align 8
  %6 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %6, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %7, i64 %idxprom2
  %any_i32 = bitcast %union.any* %arrayidx3 to i32*
  store i32 12, i32* %any_i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_hptr(%struct.hv** %hptr) #0 {
entry:
  %hptr.addr = alloca %struct.hv**, align 8
  store %struct.hv** %hptr, %struct.hv*** %hptr.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 3
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.hv**, %struct.hv*** %hptr.addr, align 8
  %3 = load %struct.hv*, %struct.hv** %2, align 8
  %4 = bitcast %struct.hv* %3 to i8*
  %5 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %6, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %4, i8** %any_ptr, align 8
  %7 = load %struct.hv**, %struct.hv*** %hptr.addr, align 8
  %8 = bitcast %struct.hv** %7 to i8*
  %9 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %9, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %10, i64 %idxprom2
  %any_ptr4 = bitcast %union.any* %arrayidx3 to i8**
  store i8* %8, i8** %any_ptr4, align 8
  %11 = load i32, i32* @PL_savestack_ix, align 4
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, i32* @PL_savestack_ix, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx7 = getelementptr inbounds %union.any, %union.any* %12, i64 %idxprom6
  %any_i32 = bitcast %union.any* %arrayidx7 to i32*
  store i32 10, i32* %any_i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_aptr(%struct.av** %aptr) #0 {
entry:
  %aptr.addr = alloca %struct.av**, align 8
  store %struct.av** %aptr, %struct.av*** %aptr.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 3
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.av**, %struct.av*** %aptr.addr, align 8
  %3 = load %struct.av*, %struct.av** %2, align 8
  %4 = bitcast %struct.av* %3 to i8*
  %5 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %6, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %4, i8** %any_ptr, align 8
  %7 = load %struct.av**, %struct.av*** %aptr.addr, align 8
  %8 = bitcast %struct.av** %7 to i8*
  %9 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %9, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %10, i64 %idxprom2
  %any_ptr4 = bitcast %union.any* %arrayidx3 to i8**
  store i8* %8, i8** %any_ptr4, align 8
  %11 = load i32, i32* @PL_savestack_ix, align 4
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, i32* @PL_savestack_ix, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx7 = getelementptr inbounds %union.any, %union.any* %12, i64 %idxprom6
  %any_i32 = bitcast %union.any* %arrayidx7 to i32*
  store i32 9, i32* %any_i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_freesv(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 2
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %3 = bitcast %struct.sv* %2 to i8*
  %4 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %5, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %3, i8** %any_ptr, align 8
  %6 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %6, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %7, i64 %idxprom2
  %any_i32 = bitcast %union.any* %arrayidx3 to i32*
  store i32 15, i32* %any_i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_mortalizesv(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 2
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %3 = bitcast %struct.sv* %2 to i8*
  %4 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %5, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %3, i8** %any_ptr, align 8
  %6 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %6, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %7, i64 %idxprom2
  %any_i32 = bitcast %union.any* %arrayidx3 to i32*
  store i32 36, i32* %any_i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_freeop(%struct.op* %o) #0 {
entry:
  %o.addr = alloca %struct.op*, align 8
  store %struct.op* %o, %struct.op** %o.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 2
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.op*, %struct.op** %o.addr, align 8
  %3 = bitcast %struct.op* %2 to i8*
  %4 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %5, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %3, i8** %any_ptr, align 8
  %6 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %6, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %7, i64 %idxprom2
  %any_i32 = bitcast %union.any* %arrayidx3 to i32*
  store i32 16, i32* %any_i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_freepv(i8* %pv) #0 {
entry:
  %pv.addr = alloca i8*, align 8
  store i8* %pv, i8** %pv.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 2
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %pv.addr, align 8
  %3 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %4, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %2, i8** %any_ptr, align 8
  %5 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %5, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %6, i64 %idxprom2
  %any_i32 = bitcast %union.any* %arrayidx3 to i32*
  store i32 17, i32* %any_i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_clearsv(%struct.sv** %svp) #0 {
entry:
  %svp.addr = alloca %struct.sv**, align 8
  store %struct.sv** %svp, %struct.sv*** %svp.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 2
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.sv**, %struct.sv*** %svp.addr, align 8
  %3 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %2 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %4 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %5, i64 %idxprom
  %any_long = bitcast %union.any* %arrayidx to i64*
  store i64 %sub.ptr.div, i64* %any_long, align 8
  %6 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %6, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %7, i64 %idxprom2
  %any_i32 = bitcast %union.any* %arrayidx3 to i32*
  store i32 18, i32* %any_i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_delete(%struct.hv* %hv, i8* %key, i32 %klen) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %key.addr = alloca i8*, align 8
  %klen.addr = alloca i32, align 4
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %klen, i32* %klen.addr, align 4
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 4
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %klen.addr, align 4
  %3 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %4, i64 %idxprom
  %any_i32 = bitcast %union.any* %arrayidx to i32*
  store i32 %2, i32* %any_i32, align 4
  %5 = load i8*, i8** %key.addr, align 8
  %6 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %6, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %7, i64 %idxprom2
  %any_ptr = bitcast %union.any* %arrayidx3 to i8**
  store i8* %5, i8** %any_ptr, align 8
  %8 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %9 = bitcast %struct.hv* %8 to %struct.sv*
  store %struct.sv* %9, %struct.sv** @PL_Sv, align 8
  %10 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool = icmp ne %struct.sv* %10, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %11 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 1
  %12 = load i32, i32* %sv_refcnt, align 4
  %inc4 = add i32 %12, 1
  store i32 %inc4, i32* %sv_refcnt, align 4
  %tobool5 = icmp ne i32 %inc4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %13 = phi i1 [ false, %if.end ], [ %tobool5, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  %14 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %15 = bitcast %struct.sv* %14 to i8*
  %16 = load i32, i32* @PL_savestack_ix, align 4
  %inc6 = add nsw i32 %16, 1
  store i32 %inc6, i32* @PL_savestack_ix, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx8 = getelementptr inbounds %union.any, %union.any* %17, i64 %idxprom7
  %any_ptr9 = bitcast %union.any* %arrayidx8 to i8**
  store i8* %15, i8** %any_ptr9, align 8
  %18 = load i32, i32* @PL_savestack_ix, align 4
  %inc10 = add nsw i32 %18, 1
  store i32 %inc10, i32* @PL_savestack_ix, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx12 = getelementptr inbounds %union.any, %union.any* %19, i64 %idxprom11
  %any_i3213 = bitcast %union.any* %arrayidx12 to i32*
  store i32 19, i32* %any_i3213, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_list(%struct.sv** %sarg, i32 %maxsarg) #0 {
entry:
  %sarg.addr = alloca %struct.sv**, align 8
  %maxsarg.addr = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %i = alloca i32, align 4
  store %struct.sv** %sarg, %struct.sv*** %sarg.addr, align 8
  store i32 %maxsarg, i32* %maxsarg.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %maxsarg.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call %struct.sv* @Perl_newSV(i64 0)
  store %struct.sv* %call, %struct.sv** %sv, align 8
  %2 = load %struct.sv*, %struct.sv** %sv, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.sv**, %struct.sv*** %sarg.addr, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %4, i64 %idxprom
  %5 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %2, %struct.sv* %5, i32 2)
  %6 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %6, 3
  %7 = load i32, i32* @PL_savestack_max, align 4
  %cmp1 = icmp sgt i32 %add, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.sv**, %struct.sv*** %sarg.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.sv*, %struct.sv** %9, i64 %idxprom2
  %10 = load %struct.sv*, %struct.sv** %arrayidx3, align 8
  %11 = bitcast %struct.sv* %10 to i8*
  %12 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx5 = getelementptr inbounds %union.any, %union.any* %13, i64 %idxprom4
  %any_ptr = bitcast %union.any* %arrayidx5 to i8**
  store i8* %11, i8** %any_ptr, align 8
  %14 = load %struct.sv*, %struct.sv** %sv, align 8
  %15 = bitcast %struct.sv* %14 to i8*
  %16 = load i32, i32* @PL_savestack_ix, align 4
  %inc6 = add nsw i32 %16, 1
  store i32 %inc6, i32* @PL_savestack_ix, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx8 = getelementptr inbounds %union.any, %union.any* %17, i64 %idxprom7
  %any_ptr9 = bitcast %union.any* %arrayidx8 to i8**
  store i8* %15, i8** %any_ptr9, align 8
  %18 = load i32, i32* @PL_savestack_ix, align 4
  %inc10 = add nsw i32 %18, 1
  store i32 %inc10, i32* @PL_savestack_ix, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx12 = getelementptr inbounds %union.any, %union.any* %19, i64 %idxprom11
  %any_i32 = bitcast %union.any* %arrayidx12 to i32*
  store i32 0, i32* %any_i32, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %20, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: nounwind uwtable
define void @Perl_save_destructor(void (i8*)* %f, i8* %p) #0 {
entry:
  %f.addr = alloca void (i8*)*, align 8
  %p.addr = alloca i8*, align 8
  store void (i8*)* %f, void (i8*)** %f.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 3
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load void (i8*)*, void (i8*)** %f.addr, align 8
  %3 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %4, i64 %idxprom
  %any_dptr = bitcast %union.any* %arrayidx to void (i8*)**
  store void (i8*)* %2, void (i8*)** %any_dptr, align 8
  %5 = load i8*, i8** %p.addr, align 8
  %6 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %6, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %7, i64 %idxprom2
  %any_ptr = bitcast %union.any* %arrayidx3 to i8**
  store i8* %5, i8** %any_ptr, align 8
  %8 = load i32, i32* @PL_savestack_ix, align 4
  %inc4 = add nsw i32 %8, 1
  store i32 %inc4, i32* @PL_savestack_ix, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx6 = getelementptr inbounds %union.any, %union.any* %9, i64 %idxprom5
  %any_i32 = bitcast %union.any* %arrayidx6 to i32*
  store i32 20, i32* %any_i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_destructor_x(void (i8*)* %f, i8* %p) #0 {
entry:
  %f.addr = alloca void (i8*)*, align 8
  %p.addr = alloca i8*, align 8
  store void (i8*)* %f, void (i8*)** %f.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 3
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load void (i8*)*, void (i8*)** %f.addr, align 8
  %3 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %4, i64 %idxprom
  %any_dxptr = bitcast %union.any* %arrayidx to void (i8*)**
  store void (i8*)* %2, void (i8*)** %any_dxptr, align 8
  %5 = load i8*, i8** %p.addr, align 8
  %6 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %6, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %7, i64 %idxprom2
  %any_ptr = bitcast %union.any* %arrayidx3 to i8**
  store i8* %5, i8** %any_ptr, align 8
  %8 = load i32, i32* @PL_savestack_ix, align 4
  %inc4 = add nsw i32 %8, 1
  store i32 %inc4, i32* @PL_savestack_ix, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx6 = getelementptr inbounds %union.any, %union.any* %9, i64 %idxprom5
  %any_i32 = bitcast %union.any* %arrayidx6 to i32*
  store i32 30, i32* %any_i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_aelem(%struct.av* %av, i32 %idx, %struct.sv** %sptr) #0 {
entry:
  %av.addr = alloca %struct.av*, align 8
  %idx.addr = alloca i32, align 4
  %sptr.addr = alloca %struct.sv**, align 8
  %sv = alloca %struct.sv*, align 8
  store %struct.av* %av, %struct.av** %av.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store %struct.sv** %sptr, %struct.sv*** %sptr.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 4
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.av*, %struct.av** %av.addr, align 8
  %3 = bitcast %struct.av* %2 to %struct.sv*
  store %struct.sv* %3, %struct.sv** @PL_Sv, align 8
  %4 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool = icmp ne %struct.sv* %4, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %5 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 1
  %6 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool1 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %7 = phi i1 [ false, %if.end ], [ %tobool1, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  %8 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %9 = bitcast %struct.sv* %8 to i8*
  %10 = load i32, i32* @PL_savestack_ix, align 4
  %inc2 = add nsw i32 %10, 1
  store i32 %inc2, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %11, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %9, i8** %any_ptr, align 8
  %12 = load i32, i32* %idx.addr, align 4
  %13 = load i32, i32* @PL_savestack_ix, align 4
  %inc3 = add nsw i32 %13, 1
  store i32 %inc3, i32* @PL_savestack_ix, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx5 = getelementptr inbounds %union.any, %union.any* %14, i64 %idxprom4
  %any_i32 = bitcast %union.any* %arrayidx5 to i32*
  store i32 %12, i32* %any_i32, align 4
  %15 = load %struct.sv**, %struct.sv*** %sptr.addr, align 8
  %16 = load %struct.sv*, %struct.sv** %15, align 8
  store %struct.sv* %16, %struct.sv** @PL_Sv, align 8
  %17 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool6 = icmp ne %struct.sv* %17, null
  br i1 %tobool6, label %land.rhs.7, label %land.end.11

land.rhs.7:                                       ; preds = %land.end
  %18 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt8 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 1
  %19 = load i32, i32* %sv_refcnt8, align 4
  %inc9 = add i32 %19, 1
  store i32 %inc9, i32* %sv_refcnt8, align 4
  %tobool10 = icmp ne i32 %inc9, 0
  br label %land.end.11

land.end.11:                                      ; preds = %land.rhs.7, %land.end
  %20 = phi i1 [ false, %land.end ], [ %tobool10, %land.rhs.7 ]
  %land.ext12 = zext i1 %20 to i32
  %21 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %22 = bitcast %struct.sv* %21 to i8*
  %23 = load i32, i32* @PL_savestack_ix, align 4
  %inc13 = add nsw i32 %23, 1
  store i32 %inc13, i32* @PL_savestack_ix, align 4
  %idxprom14 = sext i32 %23 to i64
  %24 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx15 = getelementptr inbounds %union.any, %union.any* %24, i64 %idxprom14
  %any_ptr16 = bitcast %union.any* %arrayidx15 to i8**
  store i8* %22, i8** %any_ptr16, align 8
  %25 = load i32, i32* @PL_savestack_ix, align 4
  %inc17 = add nsw i32 %25, 1
  store i32 %inc17, i32* @PL_savestack_ix, align 4
  %idxprom18 = sext i32 %25 to i64
  %26 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx19 = getelementptr inbounds %union.any, %union.any* %26, i64 %idxprom18
  %any_i3220 = bitcast %union.any* %arrayidx19 to i32*
  store i32 24, i32* %any_i3220, align 4
  %27 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %27, i32 0, i32 0
  %28 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %28, i32 0, i32 9
  %29 = load i8, i8* %xav_flags, align 1
  %conv = zext i8 %29 to i32
  %and = and i32 %conv, 1
  %tobool21 = icmp ne i32 %and, 0
  br i1 %tobool21, label %if.end.35, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.end.11
  %30 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any22 = getelementptr inbounds %struct.av, %struct.av* %30, i32 0, i32 0
  %31 = load %struct.xpvav*, %struct.xpvav** %sv_any22, align 8
  %xav_flags23 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %31, i32 0, i32 9
  %32 = load i8, i8* %xav_flags23, align 1
  %conv24 = zext i8 %32 to i32
  %and25 = and i32 %conv24, 2
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.35

if.then.27:                                       ; preds = %land.lhs.true
  %33 = load %struct.sv**, %struct.sv*** %sptr.addr, align 8
  %34 = load %struct.sv*, %struct.sv** %33, align 8
  store %struct.sv* %34, %struct.sv** @PL_Sv, align 8
  %35 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool28 = icmp ne %struct.sv* %35, null
  br i1 %tobool28, label %land.rhs.29, label %land.end.33

land.rhs.29:                                      ; preds = %if.then.27
  %36 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt30 = getelementptr inbounds %struct.sv, %struct.sv* %36, i32 0, i32 1
  %37 = load i32, i32* %sv_refcnt30, align 4
  %inc31 = add i32 %37, 1
  store i32 %inc31, i32* %sv_refcnt30, align 4
  %tobool32 = icmp ne i32 %inc31, 0
  br label %land.end.33

land.end.33:                                      ; preds = %land.rhs.29, %if.then.27
  %38 = phi i1 [ false, %if.then.27 ], [ %tobool32, %land.rhs.29 ]
  %land.ext34 = zext i1 %38 to i32
  %39 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %land.end.33, %land.lhs.true, %land.end.11
  %40 = load %struct.sv**, %struct.sv*** %sptr.addr, align 8
  %call = call %struct.sv* @S_save_scalar_at(%struct.sv** %40)
  %41 = load %struct.sv**, %struct.sv*** %sptr.addr, align 8
  %42 = load %struct.sv*, %struct.sv** %41, align 8
  store %struct.sv* %42, %struct.sv** %sv, align 8
  %43 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %43, i32 0, i32 2
  %44 = load i32, i32* %sv_flags, align 4
  %and36 = and i32 %44, 32768
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.35
  %45 = load %struct.sv*, %struct.sv** %sv, align 8
  %call38 = call %struct.magic* @Perl_mg_find(%struct.sv* %45, i32 112)
  %tobool39 = icmp ne %struct.magic* %call38, null
  br i1 %tobool39, label %if.then.40, label %if.end.42

cond.false:                                       ; preds = %if.end.35
  br i1 false, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %cond.false, %cond.true
  %46 = load %struct.sv*, %struct.sv** %sv, align 8
  %call41 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %46)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %cond.false, %cond.true
  ret void
}

declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #1

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @Perl_save_helem(%struct.hv* %hv, %struct.sv* %key, %struct.sv** %sptr) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %key.addr = alloca %struct.sv*, align 8
  %sptr.addr = alloca %struct.sv**, align 8
  %sv = alloca %struct.sv*, align 8
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store %struct.sv* %key, %struct.sv** %key.addr, align 8
  store %struct.sv** %sptr, %struct.sv*** %sptr.addr, align 8
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 4
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %3 = bitcast %struct.hv* %2 to %struct.sv*
  store %struct.sv* %3, %struct.sv** @PL_Sv, align 8
  %4 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool = icmp ne %struct.sv* %4, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %5 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 1
  %6 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool1 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %7 = phi i1 [ false, %if.end ], [ %tobool1, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  %8 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %9 = bitcast %struct.sv* %8 to i8*
  %10 = load i32, i32* @PL_savestack_ix, align 4
  %inc2 = add nsw i32 %10, 1
  store i32 %inc2, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %11, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %9, i8** %any_ptr, align 8
  %12 = load %struct.sv*, %struct.sv** %key.addr, align 8
  store %struct.sv* %12, %struct.sv** @PL_Sv, align 8
  %13 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool3 = icmp ne %struct.sv* %13, null
  br i1 %tobool3, label %land.rhs.4, label %land.end.8

land.rhs.4:                                       ; preds = %land.end
  %14 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt5 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 1
  %15 = load i32, i32* %sv_refcnt5, align 4
  %inc6 = add i32 %15, 1
  store i32 %inc6, i32* %sv_refcnt5, align 4
  %tobool7 = icmp ne i32 %inc6, 0
  br label %land.end.8

land.end.8:                                       ; preds = %land.rhs.4, %land.end
  %16 = phi i1 [ false, %land.end ], [ %tobool7, %land.rhs.4 ]
  %land.ext9 = zext i1 %16 to i32
  %17 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %18 = bitcast %struct.sv* %17 to i8*
  %19 = load i32, i32* @PL_savestack_ix, align 4
  %inc10 = add nsw i32 %19, 1
  store i32 %inc10, i32* @PL_savestack_ix, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx12 = getelementptr inbounds %union.any, %union.any* %20, i64 %idxprom11
  %any_ptr13 = bitcast %union.any* %arrayidx12 to i8**
  store i8* %18, i8** %any_ptr13, align 8
  %21 = load %struct.sv**, %struct.sv*** %sptr.addr, align 8
  %22 = load %struct.sv*, %struct.sv** %21, align 8
  store %struct.sv* %22, %struct.sv** @PL_Sv, align 8
  %23 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool14 = icmp ne %struct.sv* %23, null
  br i1 %tobool14, label %land.rhs.15, label %land.end.19

land.rhs.15:                                      ; preds = %land.end.8
  %24 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt16 = getelementptr inbounds %struct.sv, %struct.sv* %24, i32 0, i32 1
  %25 = load i32, i32* %sv_refcnt16, align 4
  %inc17 = add i32 %25, 1
  store i32 %inc17, i32* %sv_refcnt16, align 4
  %tobool18 = icmp ne i32 %inc17, 0
  br label %land.end.19

land.end.19:                                      ; preds = %land.rhs.15, %land.end.8
  %26 = phi i1 [ false, %land.end.8 ], [ %tobool18, %land.rhs.15 ]
  %land.ext20 = zext i1 %26 to i32
  %27 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %28 = bitcast %struct.sv* %27 to i8*
  %29 = load i32, i32* @PL_savestack_ix, align 4
  %inc21 = add nsw i32 %29, 1
  store i32 %inc21, i32* @PL_savestack_ix, align 4
  %idxprom22 = sext i32 %29 to i64
  %30 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx23 = getelementptr inbounds %union.any, %union.any* %30, i64 %idxprom22
  %any_ptr24 = bitcast %union.any* %arrayidx23 to i8**
  store i8* %28, i8** %any_ptr24, align 8
  %31 = load i32, i32* @PL_savestack_ix, align 4
  %inc25 = add nsw i32 %31, 1
  store i32 %inc25, i32* @PL_savestack_ix, align 4
  %idxprom26 = sext i32 %31 to i64
  %32 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx27 = getelementptr inbounds %union.any, %union.any* %32, i64 %idxprom26
  %any_i32 = bitcast %union.any* %arrayidx27 to i32*
  store i32 25, i32* %any_i32, align 4
  %33 = load %struct.sv**, %struct.sv*** %sptr.addr, align 8
  %call = call %struct.sv* @S_save_scalar_at(%struct.sv** %33)
  %34 = load %struct.sv**, %struct.sv*** %sptr.addr, align 8
  %35 = load %struct.sv*, %struct.sv** %34, align 8
  store %struct.sv* %35, %struct.sv** %sv, align 8
  %36 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %36, i32 0, i32 2
  %37 = load i32, i32* %sv_flags, align 4
  %and = and i32 %37, 32768
  %tobool28 = icmp ne i32 %and, 0
  br i1 %tobool28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end.19
  %38 = load %struct.sv*, %struct.sv** %sv, align 8
  %call29 = call %struct.magic* @Perl_mg_find(%struct.sv* %38, i32 112)
  %tobool30 = icmp ne %struct.magic* %call29, null
  br i1 %tobool30, label %if.then.31, label %if.end.33

cond.false:                                       ; preds = %land.end.19
  br i1 false, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %cond.false, %cond.true
  %39 = load %struct.sv*, %struct.sv** %sv, align 8
  %call32 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %39)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %cond.false, %cond.true
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_save_op() #0 {
entry:
  %0 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %0, 2
  %1 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.op*, %struct.op** @PL_op, align 8
  %3 = bitcast %struct.op* %2 to i8*
  %4 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %5, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %3, i8** %any_ptr, align 8
  %6 = load i32, i32* @PL_savestack_ix, align 4
  %inc1 = add nsw i32 %6, 1
  store i32 %inc1, i32* @PL_savestack_ix, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx3 = getelementptr inbounds %union.any, %union.any* %7, i64 %idxprom2
  %any_i32 = bitcast %union.any* %arrayidx3 to i32*
  store i32 26, i32* %any_i32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Perl_save_alloc(i32 %size, i32 %pad) #0 {
entry:
  %size.addr = alloca i32, align 4
  %pad.addr = alloca i32, align 4
  %start = alloca i32, align 4
  %elems = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 %pad, i32* %pad.addr, align 4
  %0 = load i32, i32* %pad.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load i32, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %2, i64 %idxprom
  %3 = bitcast %union.any* %arrayidx to i8*
  %4 = load %union.any*, %union.any** @PL_savestack, align 8
  %5 = bitcast %union.any* %4 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %conv, %sub.ptr.sub
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, i32* %start, align 4
  %6 = load i32, i32* %size.addr, align 4
  %7 = load i32, i32* %pad.addr, align 4
  %add2 = add nsw i32 %6, %7
  %sub = sub nsw i32 %add2, 1
  %conv3 = sext i32 %sub to i64
  %div = udiv i64 %conv3, 8
  %add4 = add i64 1, %div
  %conv5 = trunc i64 %add4 to i32
  store i32 %conv5, i32* %elems, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %8 = load i32, i32* @PL_savestack_ix, align 4
  %9 = load i32, i32* %elems, align 4
  %add6 = add nsw i32 %8, %9
  %add7 = add nsw i32 %add6, 2
  %10 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add7, %10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @Perl_savestack_grow()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %elems, align 4
  %12 = load i32, i32* @PL_savestack_ix, align 4
  %add9 = add nsw i32 %12, %11
  store i32 %add9, i32* @PL_savestack_ix, align 4
  %13 = load i32, i32* %elems, align 4
  %14 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx11 = getelementptr inbounds %union.any, %union.any* %15, i64 %idxprom10
  %any_i32 = bitcast %union.any* %arrayidx11 to i32*
  store i32 %13, i32* %any_i32, align 4
  %16 = load i32, i32* @PL_savestack_ix, align 4
  %inc12 = add nsw i32 %16, 1
  store i32 %inc12, i32* @PL_savestack_ix, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx14 = getelementptr inbounds %union.any, %union.any* %17, i64 %idxprom13
  %any_i3215 = bitcast %union.any* %arrayidx14 to i32*
  store i32 28, i32* %any_i3215, align 4
  %18 = load i32, i32* %start, align 4
  ret i32 %18
}

declare void @Perl_sv_replace(%struct.sv*, %struct.sv*) #1

declare void @Perl_safesysfree(i8*) #1

declare void @free(i8*) #1

declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

declare void @Perl_sv_clear(%struct.sv*) #1

declare void @Perl_gp_free(%struct.gv*) #1

declare void @Perl_op_free(%struct.op*) #1

declare void @Perl_sv_force_normal_flags(%struct.sv*, i32) #1

declare i32 @Perl_mg_free(%struct.sv*) #1

declare void @Perl_av_clear(%struct.av*) #1

declare void @Perl_hv_clear(%struct.hv*) #1

declare i32 @Perl_sv_backoff(%struct.sv*) #1

declare %struct.hv* @Perl_newHV() #1

declare %struct.sv* @Perl_hv_delete(%struct.hv*, i8*, i32, i32) #1

declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #1

declare %struct.he* @Perl_hv_fetch_ent(%struct.hv*, %struct.sv*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @Perl_cx_dump(%struct.context* %cx) #0 {
entry:
  %cx.addr = alloca %struct.context*, align 8
  store %struct.context* %cx, %struct.context** %cx.addr, align 8
  ret void
}

declare i32 @Perl_mg_get(%struct.sv*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
