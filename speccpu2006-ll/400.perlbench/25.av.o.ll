; ModuleID = 'av.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
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
%struct.xpv = type { i8*, i64, i64 }
%struct.xrv = type { %struct.sv* }
%struct.xpvmg = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv* }
%struct.xpviv = type { i8*, i64, i64, i64 }
%struct.xpvnv = type { i8*, i64, i64, i64, double }
%struct.xpvlv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i64, i64, %struct.sv*, i8 }

@PL_sv_undef = external global %struct.sv, align 8
@PL_Sv = external global %struct.sv*, align 8
@PL_stack_sp = external global %struct.sv**, align 8
@PL_tmps_floor = external global i32, align 4
@PL_tmps_ix = external global i32, align 4
@PL_curstackinfo = external global %struct.stackinfo*, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_curstack = external global %struct.av*, align 8
@PL_stack_max = external global %struct.sv**, align 8
@PL_markstack_ptr = external global i32*, align 8
@PL_markstack_max = external global i32*, align 8
@.str = private unnamed_addr constant [7 x i8] c"EXTEND\00", align 1
@PL_stderrgv = external global %struct.gv*, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"panic: POPSTACK\0A\00", align 1
@PL_nice_chunk_size = external global i32, align 4
@PL_nice_chunk = external global i8*, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"NEGATIVE_INDICES\00", align 1
@PL_Xpv = external global %struct.xpv*, align 8
@PL_no_modify = external constant [0 x i8], align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"PUSH\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"POP\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"UNSHIFT\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"SHIFT\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"panic: null array\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"STORESIZE\00", align 1
@PL_curcop = external global %struct.cop*, align 8
@PL_dowarn = external global i8, align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"pseudohash\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Pseudo-hashes are deprecated\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Can't coerce array into hash\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"No such pseudo-hash field \22%s\22\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Bad index while coercing array into hash\00", align 1

; Function Attrs: nounwind uwtable
define void @Perl_av_reify(%struct.av* %av) #0 {
entry:
  %av.addr = alloca %struct.av*, align 8
  %key = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  store %struct.av* %av, %struct.av** %av.addr, align 8
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %0, i32 0, i32 0
  %1 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %1, i32 0, i32 9
  %2 = load i8, i8* %xav_flags, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.av, %struct.av* %3, i32 0, i32 0
  %4 = load %struct.xpvav*, %struct.xpvav** %sv_any1, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %4, i32 0, i32 2
  %5 = load i64, i64* %xav_max, align 8
  %add = add nsw i64 %5, 1
  %conv2 = trunc i64 %add to i32
  store i32 %conv2, i32* %key, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load i32, i32* %key, align 4
  %conv3 = sext i32 %6 to i64
  %7 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any4 = getelementptr inbounds %struct.av, %struct.av* %7, i32 0, i32 0
  %8 = load %struct.xpvav*, %struct.xpvav** %sv_any4, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %8, i32 0, i32 1
  %9 = load i64, i64* %xav_fill, align 8
  %add5 = add nsw i64 %9, 1
  %cmp = icmp sgt i64 %conv3, %add5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %key, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %key, align 4
  %idxprom = sext i32 %dec to i64
  %11 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any7 = getelementptr inbounds %struct.av, %struct.av* %11, i32 0, i32 0
  %12 = load %struct.xpvav*, %struct.xpvav** %sv_any7, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %12, i32 0, i32 0
  %13 = load i8*, i8** %xav_array, align 8
  %14 = bitcast i8* %13 to %struct.sv**
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %14, i64 %idxprom
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.8

while.cond.8:                                     ; preds = %if.end.21, %while.end
  %15 = load i32, i32* %key, align 4
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %while.body.10, label %while.end.22

while.body.10:                                    ; preds = %while.cond.8
  %16 = load i32, i32* %key, align 4
  %dec11 = add nsw i32 %16, -1
  store i32 %dec11, i32* %key, align 4
  %idxprom12 = sext i32 %dec11 to i64
  %17 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any13 = getelementptr inbounds %struct.av, %struct.av* %17, i32 0, i32 0
  %18 = load %struct.xpvav*, %struct.xpvav** %sv_any13, align 8
  %xav_array14 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %18, i32 0, i32 0
  %19 = load i8*, i8** %xav_array14, align 8
  %20 = bitcast i8* %19 to %struct.sv**
  %arrayidx15 = getelementptr inbounds %struct.sv*, %struct.sv** %20, i64 %idxprom12
  %21 = load %struct.sv*, %struct.sv** %arrayidx15, align 8
  store %struct.sv* %21, %struct.sv** %sv, align 8
  %22 = load %struct.sv*, %struct.sv** %sv, align 8
  %cmp16 = icmp ne %struct.sv* %22, @PL_sv_undef
  br i1 %cmp16, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %while.body.10
  %23 = load %struct.sv*, %struct.sv** %sv, align 8
  store %struct.sv* %23, %struct.sv** @PL_Sv, align 8
  %24 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool19 = icmp ne %struct.sv* %24, null
  br i1 %tobool19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.18
  %25 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 1
  %26 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %26, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool20 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.18
  %27 = phi i1 [ false, %if.then.18 ], [ %tobool20, %land.rhs ]
  %land.ext = zext i1 %27 to i32
  %28 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %land.end, %while.body.10
  br label %while.cond.8

while.end.22:                                     ; preds = %while.cond.8
  %29 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any23 = getelementptr inbounds %struct.av, %struct.av* %29, i32 0, i32 0
  %30 = load %struct.xpvav*, %struct.xpvav** %sv_any23, align 8
  %xav_array24 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %30, i32 0, i32 0
  %31 = load i8*, i8** %xav_array24, align 8
  %32 = bitcast i8* %31 to %struct.sv**
  %33 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any25 = getelementptr inbounds %struct.av, %struct.av* %33, i32 0, i32 0
  %34 = load %struct.xpvav*, %struct.xpvav** %sv_any25, align 8
  %xav_alloc = getelementptr inbounds %struct.xpvav, %struct.xpvav* %34, i32 0, i32 7
  %35 = load %struct.sv**, %struct.sv*** %xav_alloc, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %32 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %35 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv26 = trunc i64 %sub.ptr.div to i32
  store i32 %conv26, i32* %key, align 4
  br label %while.cond.27

while.cond.27:                                    ; preds = %while.body.29, %while.end.22
  %36 = load i32, i32* %key, align 4
  %tobool28 = icmp ne i32 %36, 0
  br i1 %tobool28, label %while.body.29, label %while.end.35

while.body.29:                                    ; preds = %while.cond.27
  %37 = load i32, i32* %key, align 4
  %dec30 = add nsw i32 %37, -1
  store i32 %dec30, i32* %key, align 4
  %idxprom31 = sext i32 %dec30 to i64
  %38 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any32 = getelementptr inbounds %struct.av, %struct.av* %38, i32 0, i32 0
  %39 = load %struct.xpvav*, %struct.xpvav** %sv_any32, align 8
  %xav_alloc33 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %39, i32 0, i32 7
  %40 = load %struct.sv**, %struct.sv*** %xav_alloc33, align 8
  %arrayidx34 = getelementptr inbounds %struct.sv*, %struct.sv** %40, i64 %idxprom31
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx34, align 8
  br label %while.cond.27

while.end.35:                                     ; preds = %while.cond.27
  %41 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any36 = getelementptr inbounds %struct.av, %struct.av* %41, i32 0, i32 0
  %42 = load %struct.xpvav*, %struct.xpvav** %sv_any36, align 8
  %xav_flags37 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %42, i32 0, i32 9
  %43 = load i8, i8* %xav_flags37, align 1
  %conv38 = zext i8 %43 to i32
  %and39 = and i32 %conv38, -3
  %conv40 = trunc i32 %and39 to i8
  store i8 %conv40, i8* %xav_flags37, align 1
  %44 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any41 = getelementptr inbounds %struct.av, %struct.av* %44, i32 0, i32 0
  %45 = load %struct.xpvav*, %struct.xpvav** %sv_any41, align 8
  %xav_flags42 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %45, i32 0, i32 9
  %46 = load i8, i8* %xav_flags42, align 1
  %conv43 = zext i8 %46 to i32
  %or = or i32 %conv43, 1
  %conv44 = trunc i32 %or to i8
  store i8 %conv44, i8* %xav_flags42, align 1
  br label %return

return:                                           ; preds = %while.end.35, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_av_extend(%struct.av* %av, i32 %key) #0 {
entry:
  %av.addr = alloca %struct.av*, align 8
  %key.addr = alloca i32, align 4
  %mg = alloca %struct.magic*, align 8
  %sp = alloca %struct.sv**, align 8
  %next = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %tmp19 = alloca i32, align 4
  %sp48 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp96 = alloca %struct.av*, align 8
  %tmp98 = alloca %struct.stackinfo*, align 8
  %ary = alloca %struct.sv**, align 8
  %tmp112 = alloca i32, align 4
  %newmax = alloca i32, align 4
  %bytes = alloca i64, align 8
  %itmp = alloca i64, align 8
  %new_chunk = alloca i8*, align 8
  %new_chunk_size = alloca i32, align 4
  store %struct.av* %av, %struct.av** %av.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %1 = bitcast %struct.av* %0 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %1, i32 0, i32 2
  %2 = load i32, i32* %sv_flags, align 4
  %and = and i32 %2, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.av*, %struct.av** %av.addr, align 8
  %4 = bitcast %struct.av* %3 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %4, i32 80)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.magic* [ %call, %cond.true ], [ null, %cond.false ]
  store %struct.magic* %cond, %struct.magic** %mg, align 8
  %tobool1 = icmp ne %struct.magic* %cond, null
  br i1 %tobool1, label %if.then, label %if.end.103

if.then:                                          ; preds = %cond.end
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %5, %struct.sv*** %sp, align 8
  call void @Perl_push_scope()
  call void @Perl_save_int(i32* @PL_tmps_floor)
  %6 = load i32, i32* @PL_tmps_ix, align 4
  store i32 %6, i32* @PL_tmps_floor, align 4
  %7 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %7, i32 0, i32 6
  %8 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  store %struct.stackinfo* %8, %struct.stackinfo** %next, align 8
  %9 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %tobool2 = icmp ne %struct.stackinfo* %9, null
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %call4 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call4, %struct.stackinfo** %next, align 8
  %10 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %11 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %11, i32 0, i32 5
  store %struct.stackinfo* %10, %struct.stackinfo** %si_prev, align 8
  %12 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %13 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next5 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %13, i32 0, i32 6
  store %struct.stackinfo* %12, %struct.stackinfo** %si_next5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %14 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %14, i32 0, i32 4
  store i32 2, i32* %si_type, align 4
  %15 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %15, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %16 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %16, i32 0, i32 0
  %17 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %17, i32 0, i32 0
  %18 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %18, i32 0, i32 1
  store i64 0, i64* %xav_fill, align 8
  %19 = load %struct.sv**, %struct.sv*** %sp, align 8
  %20 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %19 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %21 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any6 = getelementptr inbounds %struct.av, %struct.av* %21, i32 0, i32 0
  %22 = load %struct.xpvav*, %struct.xpvav** %sv_any6, align 8
  %xav_fill7 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %22, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill7, align 8
  %23 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack8 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %23, i32 0, i32 0
  %24 = load %struct.av*, %struct.av** %si_stack8, align 8
  %sv_any9 = getelementptr inbounds %struct.av, %struct.av* %24, i32 0, i32 0
  %25 = load %struct.xpvav*, %struct.xpvav** %sv_any9, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %25, i32 0, i32 0
  %26 = load i8*, i8** %xav_array, align 8
  %27 = bitcast i8* %26 to %struct.sv**
  store %struct.sv** %27, %struct.sv*** @PL_stack_base, align 8
  %28 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %29 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack10 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %29, i32 0, i32 0
  %30 = load %struct.av*, %struct.av** %si_stack10, align 8
  %sv_any11 = getelementptr inbounds %struct.av, %struct.av* %30, i32 0, i32 0
  %31 = load %struct.xpvav*, %struct.xpvav** %sv_any11, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %31, i32 0, i32 2
  %32 = load i64, i64* %xav_max, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %28, i64 %32
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8
  %33 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %34 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack12 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %34, i32 0, i32 0
  %35 = load %struct.av*, %struct.av** %si_stack12, align 8
  %sv_any13 = getelementptr inbounds %struct.av, %struct.av* %35, i32 0, i32 0
  %36 = load %struct.xpvav*, %struct.xpvav** %sv_any13, align 8
  %xav_fill14 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %36, i32 0, i32 1
  %37 = load i64, i64* %xav_fill14, align 8
  %add.ptr15 = getelementptr inbounds %struct.sv*, %struct.sv** %33, i64 %37
  store %struct.sv** %add.ptr15, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr15, %struct.sv*** %sp, align 8
  %38 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack16 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %38, i32 0, i32 0
  %39 = load %struct.av*, %struct.av** %si_stack16, align 8
  store %struct.av* %39, %struct.av** @PL_curstack, align 8
  store %struct.av* %39, %struct.av** %tmp
  %40 = load %struct.av*, %struct.av** %tmp
  %41 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  store %struct.stackinfo* %41, %struct.stackinfo** @PL_curstackinfo, align 8
  %42 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %43 = load i32*, i32** @PL_markstack_max, align 8
  %cmp = icmp eq i32* %incdec.ptr, %43
  br i1 %cmp, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  call void @Perl_markstack_grow()
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end
  %44 = load %struct.sv**, %struct.sv*** %sp, align 8
  %45 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast20 = ptrtoint %struct.sv** %44 to i64
  %sub.ptr.rhs.cast21 = ptrtoint %struct.sv** %45 to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  %sub.ptr.div23 = sdiv exact i64 %sub.ptr.sub22, 8
  %conv = trunc i64 %sub.ptr.div23 to i32
  %46 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv, i32* %46, align 4
  store i32 %conv, i32* %tmp19
  %47 = load i32, i32* %tmp19
  %48 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %49 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast24 = ptrtoint %struct.sv** %48 to i64
  %sub.ptr.rhs.cast25 = ptrtoint %struct.sv** %49 to i64
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25
  %sub.ptr.div27 = sdiv exact i64 %sub.ptr.sub26, 8
  %cmp28 = icmp slt i64 %sub.ptr.div27, 2
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.18
  %50 = load %struct.sv**, %struct.sv*** %sp, align 8
  %51 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call31 = call %struct.sv** @Perl_stack_grow(%struct.sv** %50, %struct.sv** %51, i32 2)
  store %struct.sv** %call31, %struct.sv*** %sp, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.18
  %52 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %52, i32 0, i32 5
  %53 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool33 = icmp ne %struct.sv* %53, null
  br i1 %tobool33, label %cond.true.34, label %cond.false.36

cond.true.34:                                     ; preds = %if.end.32
  %54 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj35 = getelementptr inbounds %struct.magic, %struct.magic* %54, i32 0, i32 5
  %55 = load %struct.sv*, %struct.sv** %mg_obj35, align 8
  br label %cond.end.39

cond.false.36:                                    ; preds = %if.end.32
  %56 = load %struct.av*, %struct.av** %av.addr, align 8
  %57 = bitcast %struct.av* %56 to %struct.sv*
  %call37 = call %struct.sv* @Perl_newRV(%struct.sv* %57)
  %call38 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call37)
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.36, %cond.true.34
  %cond40 = phi %struct.sv* [ %55, %cond.true.34 ], [ %call38, %cond.false.36 ]
  %58 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr41 = getelementptr inbounds %struct.sv*, %struct.sv** %58, i32 1
  store %struct.sv** %incdec.ptr41, %struct.sv*** %sp, align 8
  store %struct.sv* %cond40, %struct.sv** %incdec.ptr41, align 8
  %59 = load i32, i32* %key.addr, align 4
  %add = add nsw i32 %59, 1
  %conv42 = sext i32 %add to i64
  %call43 = call %struct.sv* @Perl_newSViv(i64 %conv42)
  %call44 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call43)
  %60 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr45 = getelementptr inbounds %struct.sv*, %struct.sv** %60, i32 1
  store %struct.sv** %incdec.ptr45, %struct.sv*** %sp, align 8
  store %struct.sv* %call44, %struct.sv** %incdec.ptr45, align 8
  %61 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %61, %struct.sv*** @PL_stack_sp, align 8
  %call46 = call i32 @Perl_call_method(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 2)
  %62 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %62, %struct.sv*** %sp48, align 8
  %63 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev50 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %63, i32 0, i32 5
  %64 = load %struct.stackinfo*, %struct.stackinfo** %si_prev50, align 8
  store %struct.stackinfo* %64, %struct.stackinfo** %prev, align 8
  %65 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool51 = icmp ne %struct.stackinfo* %65, null
  br i1 %tobool51, label %if.end.78, label %if.then.52

if.then.52:                                       ; preds = %cond.end.39
  %66 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool53 = icmp ne %struct.gv* %66, null
  br i1 %tobool53, label %land.lhs.true, label %cond.false.73

land.lhs.true:                                    ; preds = %if.then.52
  %67 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags54 = getelementptr inbounds %struct.gv, %struct.gv* %67, i32 0, i32 2
  %68 = load i32, i32* %sv_flags54, align 4
  %and55 = and i32 %68, 255
  %cmp56 = icmp eq i32 %and55, 13
  br i1 %cmp56, label %land.lhs.true.58, label %cond.false.73

land.lhs.true.58:                                 ; preds = %land.lhs.true
  %69 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any59 = getelementptr inbounds %struct.gv, %struct.gv* %69, i32 0, i32 0
  %70 = load %struct.xpvgv*, %struct.xpvgv** %sv_any59, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %70, i32 0, i32 7
  %71 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %71, i32 0, i32 2
  %72 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool60 = icmp ne %struct.io* %72, null
  br i1 %tobool60, label %land.lhs.true.61, label %cond.false.73

land.lhs.true.61:                                 ; preds = %land.lhs.true.58
  %73 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any62 = getelementptr inbounds %struct.gv, %struct.gv* %73, i32 0, i32 0
  %74 = load %struct.xpvgv*, %struct.xpvgv** %sv_any62, align 8
  %xgv_gp63 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %74, i32 0, i32 7
  %75 = load %struct.gp*, %struct.gp** %xgv_gp63, align 8
  %gp_io64 = getelementptr inbounds %struct.gp, %struct.gp* %75, i32 0, i32 2
  %76 = load %struct.io*, %struct.io** %gp_io64, align 8
  %sv_any65 = getelementptr inbounds %struct.io, %struct.io* %76, i32 0, i32 0
  %77 = load %struct.xpvio*, %struct.xpvio** %sv_any65, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %77, i32 0, i32 8
  %78 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool66 = icmp ne %struct._PerlIO** %78, null
  br i1 %tobool66, label %cond.true.67, label %cond.false.73

cond.true.67:                                     ; preds = %land.lhs.true.61
  %79 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any68 = getelementptr inbounds %struct.gv, %struct.gv* %79, i32 0, i32 0
  %80 = load %struct.xpvgv*, %struct.xpvgv** %sv_any68, align 8
  %xgv_gp69 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %80, i32 0, i32 7
  %81 = load %struct.gp*, %struct.gp** %xgv_gp69, align 8
  %gp_io70 = getelementptr inbounds %struct.gp, %struct.gp* %81, i32 0, i32 2
  %82 = load %struct.io*, %struct.io** %gp_io70, align 8
  %sv_any71 = getelementptr inbounds %struct.io, %struct.io* %82, i32 0, i32 0
  %83 = load %struct.xpvio*, %struct.xpvio** %sv_any71, align 8
  %xio_ofp72 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %83, i32 0, i32 8
  %84 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp72, align 8
  br label %cond.end.75

cond.false.73:                                    ; preds = %land.lhs.true.61, %land.lhs.true.58, %land.lhs.true, %if.then.52
  %call74 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.73, %cond.true.67
  %cond76 = phi %struct._PerlIO** [ %84, %cond.true.67 ], [ %call74, %cond.false.73 ]
  %call77 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.78

if.end.78:                                        ; preds = %cond.end.75, %cond.end.39
  %85 = load %struct.sv**, %struct.sv*** %sp48, align 8
  %86 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast79 = ptrtoint %struct.sv** %85 to i64
  %sub.ptr.rhs.cast80 = ptrtoint %struct.sv** %86 to i64
  %sub.ptr.sub81 = sub i64 %sub.ptr.lhs.cast79, %sub.ptr.rhs.cast80
  %sub.ptr.div82 = sdiv exact i64 %sub.ptr.sub81, 8
  %87 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any83 = getelementptr inbounds %struct.av, %struct.av* %87, i32 0, i32 0
  %88 = load %struct.xpvav*, %struct.xpvav** %sv_any83, align 8
  %xav_fill84 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %88, i32 0, i32 1
  store i64 %sub.ptr.div82, i64* %xav_fill84, align 8
  %89 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack85 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %89, i32 0, i32 0
  %90 = load %struct.av*, %struct.av** %si_stack85, align 8
  %sv_any86 = getelementptr inbounds %struct.av, %struct.av* %90, i32 0, i32 0
  %91 = load %struct.xpvav*, %struct.xpvav** %sv_any86, align 8
  %xav_array87 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %91, i32 0, i32 0
  %92 = load i8*, i8** %xav_array87, align 8
  %93 = bitcast i8* %92 to %struct.sv**
  store %struct.sv** %93, %struct.sv*** @PL_stack_base, align 8
  %94 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %95 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack88 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %95, i32 0, i32 0
  %96 = load %struct.av*, %struct.av** %si_stack88, align 8
  %sv_any89 = getelementptr inbounds %struct.av, %struct.av* %96, i32 0, i32 0
  %97 = load %struct.xpvav*, %struct.xpvav** %sv_any89, align 8
  %xav_max90 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %97, i32 0, i32 2
  %98 = load i64, i64* %xav_max90, align 8
  %add.ptr91 = getelementptr inbounds %struct.sv*, %struct.sv** %94, i64 %98
  store %struct.sv** %add.ptr91, %struct.sv*** @PL_stack_max, align 8
  %99 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %100 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack92 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %100, i32 0, i32 0
  %101 = load %struct.av*, %struct.av** %si_stack92, align 8
  %sv_any93 = getelementptr inbounds %struct.av, %struct.av* %101, i32 0, i32 0
  %102 = load %struct.xpvav*, %struct.xpvav** %sv_any93, align 8
  %xav_fill94 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %102, i32 0, i32 1
  %103 = load i64, i64* %xav_fill94, align 8
  %add.ptr95 = getelementptr inbounds %struct.sv*, %struct.sv** %99, i64 %103
  store %struct.sv** %add.ptr95, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr95, %struct.sv*** %sp48, align 8
  %104 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack97 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %104, i32 0, i32 0
  %105 = load %struct.av*, %struct.av** %si_stack97, align 8
  store %struct.av* %105, %struct.av** @PL_curstack, align 8
  store %struct.av* %105, %struct.av** %tmp96
  %106 = load %struct.av*, %struct.av** %tmp96
  %107 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %107, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %107, %struct.stackinfo** %tmp98
  %108 = load %struct.stackinfo*, %struct.stackinfo** %tmp98
  %109 = load i32, i32* @PL_tmps_ix, align 4
  %110 = load i32, i32* @PL_tmps_floor, align 4
  %cmp99 = icmp sgt i32 %109, %110
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.78
  call void @Perl_free_tmps()
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %if.end.78
  call void @Perl_pop_scope()
  br label %if.end.300

if.end.103:                                       ; preds = %cond.end
  %111 = load i32, i32* %key.addr, align 4
  %conv104 = sext i32 %111 to i64
  %112 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any105 = getelementptr inbounds %struct.av, %struct.av* %112, i32 0, i32 0
  %113 = load %struct.xpvav*, %struct.xpvav** %sv_any105, align 8
  %xav_max106 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %113, i32 0, i32 2
  %114 = load i64, i64* %xav_max106, align 8
  %cmp107 = icmp sgt i64 %conv104, %114
  br i1 %cmp107, label %if.then.109, label %if.end.300

if.then.109:                                      ; preds = %if.end.103
  %115 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any114 = getelementptr inbounds %struct.av, %struct.av* %115, i32 0, i32 0
  %116 = load %struct.xpvav*, %struct.xpvav** %sv_any114, align 8
  %xav_alloc = getelementptr inbounds %struct.xpvav, %struct.xpvav* %116, i32 0, i32 7
  %117 = load %struct.sv**, %struct.sv*** %xav_alloc, align 8
  %118 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any115 = getelementptr inbounds %struct.av, %struct.av* %118, i32 0, i32 0
  %119 = load %struct.xpvav*, %struct.xpvav** %sv_any115, align 8
  %xav_array116 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %119, i32 0, i32 0
  %120 = load i8*, i8** %xav_array116, align 8
  %121 = bitcast i8* %120 to %struct.sv**
  %cmp117 = icmp ne %struct.sv** %117, %121
  br i1 %cmp117, label %if.then.119, label %if.else

if.then.119:                                      ; preds = %if.then.109
  %122 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any120 = getelementptr inbounds %struct.av, %struct.av* %122, i32 0, i32 0
  %123 = load %struct.xpvav*, %struct.xpvav** %sv_any120, align 8
  %xav_alloc121 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %123, i32 0, i32 7
  %124 = load %struct.sv**, %struct.sv*** %xav_alloc121, align 8
  %125 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any122 = getelementptr inbounds %struct.av, %struct.av* %125, i32 0, i32 0
  %126 = load %struct.xpvav*, %struct.xpvav** %sv_any122, align 8
  %xav_fill123 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %126, i32 0, i32 1
  %127 = load i64, i64* %xav_fill123, align 8
  %add.ptr124 = getelementptr inbounds %struct.sv*, %struct.sv** %124, i64 %127
  %add.ptr125 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr124, i64 1
  store %struct.sv** %add.ptr125, %struct.sv*** %ary, align 8
  %128 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any126 = getelementptr inbounds %struct.av, %struct.av* %128, i32 0, i32 0
  %129 = load %struct.xpvav*, %struct.xpvav** %sv_any126, align 8
  %xav_array127 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %129, i32 0, i32 0
  %130 = load i8*, i8** %xav_array127, align 8
  %131 = bitcast i8* %130 to %struct.sv**
  %132 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any128 = getelementptr inbounds %struct.av, %struct.av* %132, i32 0, i32 0
  %133 = load %struct.xpvav*, %struct.xpvav** %sv_any128, align 8
  %xav_alloc129 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %133, i32 0, i32 7
  %134 = load %struct.sv**, %struct.sv*** %xav_alloc129, align 8
  %sub.ptr.lhs.cast130 = ptrtoint %struct.sv** %131 to i64
  %sub.ptr.rhs.cast131 = ptrtoint %struct.sv** %134 to i64
  %sub.ptr.sub132 = sub i64 %sub.ptr.lhs.cast130, %sub.ptr.rhs.cast131
  %sub.ptr.div133 = sdiv exact i64 %sub.ptr.sub132, 8
  %conv134 = trunc i64 %sub.ptr.div133 to i32
  store i32 %conv134, i32* %tmp112, align 4
  %135 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any135 = getelementptr inbounds %struct.av, %struct.av* %135, i32 0, i32 0
  %136 = load %struct.xpvav*, %struct.xpvav** %sv_any135, align 8
  %xav_alloc136 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %136, i32 0, i32 7
  %137 = load %struct.sv**, %struct.sv*** %xav_alloc136, align 8
  %138 = bitcast %struct.sv** %137 to i8*
  %139 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any137 = getelementptr inbounds %struct.av, %struct.av* %139, i32 0, i32 0
  %140 = load %struct.xpvav*, %struct.xpvav** %sv_any137, align 8
  %xav_array138 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %140, i32 0, i32 0
  %141 = load i8*, i8** %xav_array138, align 8
  %142 = bitcast i8* %141 to %struct.sv**
  %143 = bitcast %struct.sv** %142 to i8*
  %144 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any139 = getelementptr inbounds %struct.av, %struct.av* %144, i32 0, i32 0
  %145 = load %struct.xpvav*, %struct.xpvav** %sv_any139, align 8
  %xav_fill140 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %145, i32 0, i32 1
  %146 = load i64, i64* %xav_fill140, align 8
  %add141 = add nsw i64 %146, 1
  %mul = mul i64 %add141, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %138, i8* %143, i64 %mul, i32 1, i1 false)
  %147 = load i32, i32* %tmp112, align 4
  %conv142 = sext i32 %147 to i64
  %148 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any143 = getelementptr inbounds %struct.av, %struct.av* %148, i32 0, i32 0
  %149 = load %struct.xpvav*, %struct.xpvav** %sv_any143, align 8
  %xav_max144 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %149, i32 0, i32 2
  %150 = load i64, i64* %xav_max144, align 8
  %add145 = add nsw i64 %150, %conv142
  store i64 %add145, i64* %xav_max144, align 8
  %151 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any146 = getelementptr inbounds %struct.av, %struct.av* %151, i32 0, i32 0
  %152 = load %struct.xpvav*, %struct.xpvav** %sv_any146, align 8
  %xav_alloc147 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %152, i32 0, i32 7
  %153 = load %struct.sv**, %struct.sv*** %xav_alloc147, align 8
  %154 = bitcast %struct.sv** %153 to i8*
  %155 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any148 = getelementptr inbounds %struct.av, %struct.av* %155, i32 0, i32 0
  %156 = load %struct.xpvav*, %struct.xpvav** %sv_any148, align 8
  %157 = bitcast %struct.xpvav* %156 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %157, i32 0, i32 0
  store i8* %154, i8** %xpv_pv, align 8
  %158 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any149 = getelementptr inbounds %struct.av, %struct.av* %158, i32 0, i32 0
  %159 = load %struct.xpvav*, %struct.xpvav** %sv_any149, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %159, i32 0, i32 9
  %160 = load i8, i8* %xav_flags, align 1
  %conv150 = zext i8 %160 to i32
  %and151 = and i32 %conv150, 1
  %tobool152 = icmp ne i32 %and151, 0
  br i1 %tobool152, label %if.then.153, label %if.end.155

if.then.153:                                      ; preds = %if.then.119
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.153
  %161 = load i32, i32* %tmp112, align 4
  %tobool154 = icmp ne i32 %161, 0
  br i1 %tobool154, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %162 = load i32, i32* %tmp112, align 4
  %dec = add nsw i32 %162, -1
  store i32 %dec, i32* %tmp112, align 4
  %idxprom = sext i32 %dec to i64
  %163 = load %struct.sv**, %struct.sv*** %ary, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %163, i64 %idxprom
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.155

if.end.155:                                       ; preds = %while.end, %if.then.119
  %164 = load i32, i32* %key.addr, align 4
  %conv156 = sext i32 %164 to i64
  %165 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any157 = getelementptr inbounds %struct.av, %struct.av* %165, i32 0, i32 0
  %166 = load %struct.xpvav*, %struct.xpvav** %sv_any157, align 8
  %xav_max158 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %166, i32 0, i32 2
  %167 = load i64, i64* %xav_max158, align 8
  %sub = sub nsw i64 %167, 10
  %cmp159 = icmp sgt i64 %conv156, %sub
  br i1 %cmp159, label %if.then.161, label %if.end.167

if.then.161:                                      ; preds = %if.end.155
  %168 = load i32, i32* %key.addr, align 4
  %conv162 = sext i32 %168 to i64
  %169 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any163 = getelementptr inbounds %struct.av, %struct.av* %169, i32 0, i32 0
  %170 = load %struct.xpvav*, %struct.xpvav** %sv_any163, align 8
  %xav_max164 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %170, i32 0, i32 2
  %171 = load i64, i64* %xav_max164, align 8
  %add165 = add nsw i64 %conv162, %171
  %conv166 = trunc i64 %add165 to i32
  store i32 %conv166, i32* %newmax, align 4
  br label %resize

if.end.167:                                       ; preds = %if.end.155
  br label %if.end.299

if.else:                                          ; preds = %if.then.109
  %172 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any168 = getelementptr inbounds %struct.av, %struct.av* %172, i32 0, i32 0
  %173 = load %struct.xpvav*, %struct.xpvav** %sv_any168, align 8
  %xav_alloc169 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %173, i32 0, i32 7
  %174 = load %struct.sv**, %struct.sv*** %xav_alloc169, align 8
  %tobool170 = icmp ne %struct.sv** %174, null
  br i1 %tobool170, label %if.then.171, label %if.else.258

if.then.171:                                      ; preds = %if.else
  %175 = load i32, i32* %key.addr, align 4
  %conv174 = sext i32 %175 to i64
  %176 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any175 = getelementptr inbounds %struct.av, %struct.av* %176, i32 0, i32 0
  %177 = load %struct.xpvav*, %struct.xpvav** %sv_any175, align 8
  %xav_max176 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %177, i32 0, i32 2
  %178 = load i64, i64* %xav_max176, align 8
  %div = sdiv i64 %178, 5
  %add177 = add nsw i64 %conv174, %div
  %conv178 = trunc i64 %add177 to i32
  store i32 %conv178, i32* %newmax, align 4
  br label %resize

resize:                                           ; preds = %if.then.171, %if.then.161
  %179 = load i32, i32* %newmax, align 4
  %add179 = add nsw i32 %179, 1
  %conv180 = sext i32 %add179 to i64
  %mul181 = mul i64 %conv180, 8
  store i64 %mul181, i64* %bytes, align 8
  store i64 16, i64* %itmp, align 8
  br label %while.cond.182

while.cond.182:                                   ; preds = %while.body.186, %resize
  %180 = load i64, i64* %itmp, align 8
  %sub183 = sub nsw i64 %180, 16
  %181 = load i64, i64* %bytes, align 8
  %cmp184 = icmp ult i64 %sub183, %181
  br i1 %cmp184, label %while.body.186, label %while.end.188

while.body.186:                                   ; preds = %while.cond.182
  %182 = load i64, i64* %itmp, align 8
  %183 = load i64, i64* %itmp, align 8
  %add187 = add nsw i64 %183, %182
  store i64 %add187, i64* %itmp, align 8
  br label %while.cond.182

while.end.188:                                    ; preds = %while.cond.182
  %184 = load i64, i64* %itmp, align 8
  %sub189 = sub nsw i64 %184, 16
  store i64 %sub189, i64* %itmp, align 8
  %185 = load i64, i64* %itmp, align 8
  %div190 = udiv i64 %185, 8
  store i64 %div190, i64* %itmp, align 8
  %186 = load i64, i64* %itmp, align 8
  %sub191 = sub nsw i64 %186, 1
  %conv192 = trunc i64 %sub191 to i32
  store i32 %conv192, i32* %newmax, align 4
  %187 = load i32, i32* %newmax, align 4
  %add193 = add nsw i32 %187, 1
  %conv194 = sext i32 %add193 to i64
  %mul195 = mul i64 %conv194, 8
  %call196 = call i8* @Perl_safesysmalloc(i64 %mul195)
  %188 = bitcast i8* %call196 to %struct.sv**
  store %struct.sv** %188, %struct.sv*** %ary, align 8
  %189 = load %struct.sv**, %struct.sv*** %ary, align 8
  %190 = bitcast %struct.sv** %189 to i8*
  %191 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any197 = getelementptr inbounds %struct.av, %struct.av* %191, i32 0, i32 0
  %192 = load %struct.xpvav*, %struct.xpvav** %sv_any197, align 8
  %xav_alloc198 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %192, i32 0, i32 7
  %193 = load %struct.sv**, %struct.sv*** %xav_alloc198, align 8
  %194 = bitcast %struct.sv** %193 to i8*
  %195 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any199 = getelementptr inbounds %struct.av, %struct.av* %195, i32 0, i32 0
  %196 = load %struct.xpvav*, %struct.xpvav** %sv_any199, align 8
  %xav_max200 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %196, i32 0, i32 2
  %197 = load i64, i64* %xav_max200, align 8
  %add201 = add nsw i64 %197, 1
  %mul202 = mul i64 %add201, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %190, i8* %194, i64 %mul202, i32 1, i1 false)
  %198 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any203 = getelementptr inbounds %struct.av, %struct.av* %198, i32 0, i32 0
  %199 = load %struct.xpvav*, %struct.xpvav** %sv_any203, align 8
  %xav_max204 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %199, i32 0, i32 2
  %200 = load i64, i64* %xav_max204, align 8
  %cmp205 = icmp sgt i64 %200, 64
  br i1 %cmp205, label %if.then.207, label %if.else.227

if.then.207:                                      ; preds = %while.end.188
  %201 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any210 = getelementptr inbounds %struct.av, %struct.av* %201, i32 0, i32 0
  %202 = load %struct.xpvav*, %struct.xpvav** %sv_any210, align 8
  %xav_alloc211 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %202, i32 0, i32 7
  %203 = load %struct.sv**, %struct.sv*** %xav_alloc211, align 8
  %204 = bitcast %struct.sv** %203 to i8*
  store i8* %204, i8** %new_chunk, align 8
  %205 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any212 = getelementptr inbounds %struct.av, %struct.av* %205, i32 0, i32 0
  %206 = load %struct.xpvav*, %struct.xpvav** %sv_any212, align 8
  %xav_max213 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %206, i32 0, i32 2
  %207 = load i64, i64* %xav_max213, align 8
  %add214 = add nsw i64 %207, 1
  %mul215 = mul i64 %add214, 8
  %conv216 = trunc i64 %mul215 to i32
  store i32 %conv216, i32* %new_chunk_size, align 4
  %208 = load i32, i32* %new_chunk_size, align 4
  %209 = load i32, i32* @PL_nice_chunk_size, align 4
  %cmp217 = icmp ugt i32 %208, %209
  br i1 %cmp217, label %if.then.219, label %if.else.223

if.then.219:                                      ; preds = %if.then.207
  %210 = load i8*, i8** @PL_nice_chunk, align 8
  %tobool220 = icmp ne i8* %210, null
  br i1 %tobool220, label %if.then.221, label %if.end.222

if.then.221:                                      ; preds = %if.then.219
  %211 = load i8*, i8** @PL_nice_chunk, align 8
  call void @Perl_safesysfree(i8* %211)
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.221, %if.then.219
  %212 = load i8*, i8** %new_chunk, align 8
  store i8* %212, i8** @PL_nice_chunk, align 8
  %213 = load i32, i32* %new_chunk_size, align 4
  store i32 %213, i32* @PL_nice_chunk_size, align 4
  br label %if.end.226

if.else.223:                                      ; preds = %if.then.207
  %214 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any224 = getelementptr inbounds %struct.av, %struct.av* %214, i32 0, i32 0
  %215 = load %struct.xpvav*, %struct.xpvav** %sv_any224, align 8
  %xav_alloc225 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %215, i32 0, i32 7
  %216 = load %struct.sv**, %struct.sv*** %xav_alloc225, align 8
  %217 = bitcast %struct.sv** %216 to i8*
  call void @Perl_safesysfree(i8* %217)
  br label %if.end.226

if.end.226:                                       ; preds = %if.else.223, %if.end.222
  br label %if.end.230

if.else.227:                                      ; preds = %while.end.188
  %218 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any228 = getelementptr inbounds %struct.av, %struct.av* %218, i32 0, i32 0
  %219 = load %struct.xpvav*, %struct.xpvav** %sv_any228, align 8
  %xav_alloc229 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %219, i32 0, i32 7
  %220 = load %struct.sv**, %struct.sv*** %xav_alloc229, align 8
  %221 = bitcast %struct.sv** %220 to i8*
  call void @Perl_safesysfree(i8* %221)
  br label %if.end.230

if.end.230:                                       ; preds = %if.else.227, %if.end.226
  %222 = load %struct.sv**, %struct.sv*** %ary, align 8
  %223 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any231 = getelementptr inbounds %struct.av, %struct.av* %223, i32 0, i32 0
  %224 = load %struct.xpvav*, %struct.xpvav** %sv_any231, align 8
  %xav_alloc232 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %224, i32 0, i32 7
  store %struct.sv** %222, %struct.sv*** %xav_alloc232, align 8
  %225 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any233 = getelementptr inbounds %struct.av, %struct.av* %225, i32 0, i32 0
  %226 = load %struct.xpvav*, %struct.xpvav** %sv_any233, align 8
  %xav_alloc234 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %226, i32 0, i32 7
  %227 = load %struct.sv**, %struct.sv*** %xav_alloc234, align 8
  %228 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any235 = getelementptr inbounds %struct.av, %struct.av* %228, i32 0, i32 0
  %229 = load %struct.xpvav*, %struct.xpvav** %sv_any235, align 8
  %xav_max236 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %229, i32 0, i32 2
  %230 = load i64, i64* %xav_max236, align 8
  %add.ptr237 = getelementptr inbounds %struct.sv*, %struct.sv** %227, i64 %230
  %add.ptr238 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr237, i64 1
  store %struct.sv** %add.ptr238, %struct.sv*** %ary, align 8
  %231 = load i32, i32* %newmax, align 4
  %conv239 = sext i32 %231 to i64
  %232 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any240 = getelementptr inbounds %struct.av, %struct.av* %232, i32 0, i32 0
  %233 = load %struct.xpvav*, %struct.xpvav** %sv_any240, align 8
  %xav_max241 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %233, i32 0, i32 2
  %234 = load i64, i64* %xav_max241, align 8
  %sub242 = sub nsw i64 %conv239, %234
  %conv243 = trunc i64 %sub242 to i32
  store i32 %conv243, i32* %tmp112, align 4
  %235 = load %struct.av*, %struct.av** %av.addr, align 8
  %236 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %cmp244 = icmp eq %struct.av* %235, %236
  br i1 %cmp244, label %if.then.246, label %if.end.257

if.then.246:                                      ; preds = %if.end.230
  %237 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any247 = getelementptr inbounds %struct.av, %struct.av* %237, i32 0, i32 0
  %238 = load %struct.xpvav*, %struct.xpvav** %sv_any247, align 8
  %xav_alloc248 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %238, i32 0, i32 7
  %239 = load %struct.sv**, %struct.sv*** %xav_alloc248, align 8
  %240 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %241 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast249 = ptrtoint %struct.sv** %240 to i64
  %sub.ptr.rhs.cast250 = ptrtoint %struct.sv** %241 to i64
  %sub.ptr.sub251 = sub i64 %sub.ptr.lhs.cast249, %sub.ptr.rhs.cast250
  %sub.ptr.div252 = sdiv exact i64 %sub.ptr.sub251, 8
  %add.ptr253 = getelementptr inbounds %struct.sv*, %struct.sv** %239, i64 %sub.ptr.div252
  store %struct.sv** %add.ptr253, %struct.sv*** @PL_stack_sp, align 8
  %242 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any254 = getelementptr inbounds %struct.av, %struct.av* %242, i32 0, i32 0
  %243 = load %struct.xpvav*, %struct.xpvav** %sv_any254, align 8
  %xav_alloc255 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %243, i32 0, i32 7
  %244 = load %struct.sv**, %struct.sv*** %xav_alloc255, align 8
  store %struct.sv** %244, %struct.sv*** @PL_stack_base, align 8
  %245 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %246 = load i32, i32* %newmax, align 4
  %idx.ext = sext i32 %246 to i64
  %add.ptr256 = getelementptr inbounds %struct.sv*, %struct.sv** %245, i64 %idx.ext
  store %struct.sv** %add.ptr256, %struct.sv*** @PL_stack_max, align 8
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.246, %if.end.230
  br label %if.end.277

if.else.258:                                      ; preds = %if.else
  %247 = load i32, i32* %key.addr, align 4
  %cmp259 = icmp slt i32 %247, 3
  br i1 %cmp259, label %cond.true.261, label %cond.false.262

cond.true.261:                                    ; preds = %if.else.258
  br label %cond.end.263

cond.false.262:                                   ; preds = %if.else.258
  %248 = load i32, i32* %key.addr, align 4
  br label %cond.end.263

cond.end.263:                                     ; preds = %cond.false.262, %cond.true.261
  %cond264 = phi i32 [ 3, %cond.true.261 ], [ %248, %cond.false.262 ]
  store i32 %cond264, i32* %newmax, align 4
  %249 = load i32, i32* %newmax, align 4
  %add265 = add nsw i32 %249, 1
  %conv266 = sext i32 %add265 to i64
  %mul267 = mul i64 %conv266, 8
  %call268 = call i8* @Perl_safesysmalloc(i64 %mul267)
  %250 = bitcast i8* %call268 to %struct.sv**
  %251 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any269 = getelementptr inbounds %struct.av, %struct.av* %251, i32 0, i32 0
  %252 = load %struct.xpvav*, %struct.xpvav** %sv_any269, align 8
  %xav_alloc270 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %252, i32 0, i32 7
  store %struct.sv** %250, %struct.sv*** %xav_alloc270, align 8
  %253 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any271 = getelementptr inbounds %struct.av, %struct.av* %253, i32 0, i32 0
  %254 = load %struct.xpvav*, %struct.xpvav** %sv_any271, align 8
  %xav_alloc272 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %254, i32 0, i32 7
  %255 = load %struct.sv**, %struct.sv*** %xav_alloc272, align 8
  %add.ptr273 = getelementptr inbounds %struct.sv*, %struct.sv** %255, i64 1
  store %struct.sv** %add.ptr273, %struct.sv*** %ary, align 8
  %256 = load i32, i32* %newmax, align 4
  store i32 %256, i32* %tmp112, align 4
  %257 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any274 = getelementptr inbounds %struct.av, %struct.av* %257, i32 0, i32 0
  %258 = load %struct.xpvav*, %struct.xpvav** %sv_any274, align 8
  %xav_alloc275 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %258, i32 0, i32 7
  %259 = load %struct.sv**, %struct.sv*** %xav_alloc275, align 8
  %arrayidx276 = getelementptr inbounds %struct.sv*, %struct.sv** %259, i64 0
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx276, align 8
  br label %if.end.277

if.end.277:                                       ; preds = %cond.end.263, %if.end.257
  %260 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any278 = getelementptr inbounds %struct.av, %struct.av* %260, i32 0, i32 0
  %261 = load %struct.xpvav*, %struct.xpvav** %sv_any278, align 8
  %xav_flags279 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %261, i32 0, i32 9
  %262 = load i8, i8* %xav_flags279, align 1
  %conv280 = zext i8 %262 to i32
  %and281 = and i32 %conv280, 1
  %tobool282 = icmp ne i32 %and281, 0
  br i1 %tobool282, label %if.then.283, label %if.end.291

if.then.283:                                      ; preds = %if.end.277
  br label %while.cond.284

while.cond.284:                                   ; preds = %while.body.286, %if.then.283
  %263 = load i32, i32* %tmp112, align 4
  %tobool285 = icmp ne i32 %263, 0
  br i1 %tobool285, label %while.body.286, label %while.end.290

while.body.286:                                   ; preds = %while.cond.284
  %264 = load i32, i32* %tmp112, align 4
  %dec287 = add nsw i32 %264, -1
  store i32 %dec287, i32* %tmp112, align 4
  %idxprom288 = sext i32 %dec287 to i64
  %265 = load %struct.sv**, %struct.sv*** %ary, align 8
  %arrayidx289 = getelementptr inbounds %struct.sv*, %struct.sv** %265, i64 %idxprom288
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx289, align 8
  br label %while.cond.284

while.end.290:                                    ; preds = %while.cond.284
  br label %if.end.291

if.end.291:                                       ; preds = %while.end.290, %if.end.277
  %266 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any292 = getelementptr inbounds %struct.av, %struct.av* %266, i32 0, i32 0
  %267 = load %struct.xpvav*, %struct.xpvav** %sv_any292, align 8
  %xav_alloc293 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %267, i32 0, i32 7
  %268 = load %struct.sv**, %struct.sv*** %xav_alloc293, align 8
  %269 = bitcast %struct.sv** %268 to i8*
  %270 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any294 = getelementptr inbounds %struct.av, %struct.av* %270, i32 0, i32 0
  %271 = load %struct.xpvav*, %struct.xpvav** %sv_any294, align 8
  %272 = bitcast %struct.xpvav* %271 to %struct.xpv*
  %xpv_pv295 = getelementptr inbounds %struct.xpv, %struct.xpv* %272, i32 0, i32 0
  store i8* %269, i8** %xpv_pv295, align 8
  %273 = load i32, i32* %newmax, align 4
  %conv296 = sext i32 %273 to i64
  %274 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any297 = getelementptr inbounds %struct.av, %struct.av* %274, i32 0, i32 0
  %275 = load %struct.xpvav*, %struct.xpvav** %sv_any297, align 8
  %xav_max298 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %275, i32 0, i32 2
  store i64 %conv296, i64* %xav_max298, align 8
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.291, %if.end.167
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.102, %if.end.299, %if.end.103
  ret void
}

declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #1

declare void @Perl_push_scope() #1

declare void @Perl_save_int(i32*) #1

declare %struct.stackinfo* @Perl_new_stackinfo(i32, i32) #1

declare void @Perl_markstack_grow() #1

declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

declare %struct.sv* @Perl_newRV(%struct.sv*) #1

declare %struct.sv* @Perl_newSViv(i64) #1

declare i32 @Perl_call_method(i8*, i32) #1

declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #1

declare %struct._PerlIO** @Perl_PerlIO_stderr() #1

declare void @Perl_my_exit(i32) #1

declare void @Perl_free_tmps() #1

declare void @Perl_pop_scope() #1

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @Perl_safesysfree(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.sv** @Perl_av_fetch(%struct.av* %av, i32 %key, i32 %lval) #0 {
entry:
  %retval = alloca %struct.sv**, align 8
  %av.addr = alloca %struct.av*, align 8
  %key.addr = alloca i32, align 4
  %lval.addr = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %tied_magic = alloca %struct.magic*, align 8
  %adjust_index = alloca i32, align 4
  %negative_indices_glob = alloca %struct.sv**, align 8
  store %struct.av* %av, %struct.av** %av.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %lval, i32* %lval.addr, align 4
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %tobool = icmp ne %struct.av* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.sv** null, %struct.sv*** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_flags = getelementptr inbounds %struct.av, %struct.av* %1, i32 0, i32 2
  %2 = load i32, i32* %sv_flags, align 4
  %and = and i32 %2, 32768
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end.112

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.av*, %struct.av** %av.addr, align 8
  %4 = bitcast %struct.av* %3 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %4, i32 80)
  store %struct.magic* %call, %struct.magic** %tied_magic, align 8
  %5 = load %struct.magic*, %struct.magic** %tied_magic, align 8
  %tobool3 = icmp ne %struct.magic* %5, null
  br i1 %tobool3, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.2
  %6 = load %struct.av*, %struct.av** %av.addr, align 8
  %7 = bitcast %struct.av* %6 to %struct.sv*
  %call4 = call %struct.magic* @Perl_mg_find(%struct.sv* %7, i32 68)
  %tobool5 = icmp ne %struct.magic* %call4, null
  br i1 %tobool5, label %if.then.6, label %if.end.111

if.then.6:                                        ; preds = %lor.lhs.false, %if.then.2
  store i32 1, i32* %adjust_index, align 4
  %8 = load %struct.magic*, %struct.magic** %tied_magic, align 8
  %tobool7 = icmp ne %struct.magic* %8, null
  br i1 %tobool7, label %land.lhs.true, label %if.end.80

land.lhs.true:                                    ; preds = %if.then.6
  %9 = load i32, i32* %key.addr, align 4
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then.8, label %if.end.80

if.then.8:                                        ; preds = %land.lhs.true
  %10 = load %struct.magic*, %struct.magic** %tied_magic, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %10, i32 0, i32 5
  %11 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool9 = icmp ne %struct.sv* %11, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  %12 = load %struct.magic*, %struct.magic** %tied_magic, align 8
  %mg_obj10 = getelementptr inbounds %struct.magic, %struct.magic* %12, i32 0, i32 5
  %13 = load %struct.sv*, %struct.sv** %mg_obj10, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.8
  %14 = load %struct.av*, %struct.av** %av.addr, align 8
  %15 = bitcast %struct.av* %14 to %struct.sv*
  %call11 = call %struct.sv* @Perl_newRV(%struct.sv* %15)
  %call12 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %13, %cond.true ], [ %call12, %cond.false ]
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %cond, i32 0, i32 0
  %16 = load i8*, i8** %sv_any, align 8
  %17 = bitcast i8* %16 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %17, i32 0, i32 0
  %18 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_any13 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 0
  %19 = load i8*, i8** %sv_any13, align 8
  %20 = bitcast i8* %19 to %struct.xpvmg*
  %xmg_stash = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %20, i32 0, i32 6
  %21 = load %struct.hv*, %struct.hv** %xmg_stash, align 8
  %call14 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i32 16, i32 0)
  store %struct.sv** %call14, %struct.sv*** %negative_indices_glob, align 8
  %22 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %tobool15 = icmp ne %struct.sv** %22, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.79

land.lhs.true.16:                                 ; preds = %cond.end
  %23 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %24 = load %struct.sv*, %struct.sv** %23, align 8
  %sv_any17 = getelementptr inbounds %struct.sv, %struct.sv* %24, i32 0, i32 0
  %25 = load i8*, i8** %sv_any17, align 8
  %26 = bitcast i8* %25 to %struct.xpvgv*
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %26, i32 0, i32 7
  %27 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %27, i32 0, i32 0
  %28 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %tobool18 = icmp ne %struct.sv* %28, null
  br i1 %tobool18, label %cond.false.20, label %cond.true.19

cond.true.19:                                     ; preds = %land.lhs.true.16
  br i1 false, label %if.then.78, label %if.end.79

cond.false.20:                                    ; preds = %land.lhs.true.16
  %29 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %30 = load %struct.sv*, %struct.sv** %29, align 8
  %sv_any21 = getelementptr inbounds %struct.sv, %struct.sv* %30, i32 0, i32 0
  %31 = load i8*, i8** %sv_any21, align 8
  %32 = bitcast i8* %31 to %struct.xpvgv*
  %xgv_gp22 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %32, i32 0, i32 7
  %33 = load %struct.gp*, %struct.gp** %xgv_gp22, align 8
  %gp_sv23 = getelementptr inbounds %struct.gp, %struct.gp* %33, i32 0, i32 0
  %34 = load %struct.sv*, %struct.sv** %gp_sv23, align 8
  %sv_flags24 = getelementptr inbounds %struct.sv, %struct.sv* %34, i32 0, i32 2
  %35 = load i32, i32* %sv_flags24, align 4
  %and25 = and i32 %35, 262144
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %cond.true.27, label %cond.false.43

cond.true.27:                                     ; preds = %cond.false.20
  %36 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %37 = load %struct.sv*, %struct.sv** %36, align 8
  %sv_any28 = getelementptr inbounds %struct.sv, %struct.sv* %37, i32 0, i32 0
  %38 = load i8*, i8** %sv_any28, align 8
  %39 = bitcast i8* %38 to %struct.xpvgv*
  %xgv_gp29 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %39, i32 0, i32 7
  %40 = load %struct.gp*, %struct.gp** %xgv_gp29, align 8
  %gp_sv30 = getelementptr inbounds %struct.gp, %struct.gp* %40, i32 0, i32 0
  %41 = load %struct.sv*, %struct.sv** %gp_sv30, align 8
  %sv_any31 = getelementptr inbounds %struct.sv, %struct.sv* %41, i32 0, i32 0
  %42 = load i8*, i8** %sv_any31, align 8
  %43 = bitcast i8* %42 to %struct.xpv*
  store %struct.xpv* %43, %struct.xpv** @PL_Xpv, align 8
  %tobool32 = icmp ne %struct.xpv* %43, null
  br i1 %tobool32, label %land.lhs.true.33, label %cond.false.42

land.lhs.true.33:                                 ; preds = %cond.true.27
  %44 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %44, i32 0, i32 1
  %45 = load i64, i64* %xpv_cur, align 8
  %cmp34 = icmp ugt i64 %45, 1
  br i1 %cmp34, label %cond.true.41, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %land.lhs.true.33
  %46 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur36 = getelementptr inbounds %struct.xpv, %struct.xpv* %46, i32 0, i32 1
  %47 = load i64, i64* %xpv_cur36, align 8
  %tobool37 = icmp ne i64 %47, 0
  br i1 %tobool37, label %land.lhs.true.38, label %cond.false.42

land.lhs.true.38:                                 ; preds = %lor.lhs.false.35
  %48 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %48, i32 0, i32 0
  %49 = load i8*, i8** %xpv_pv, align 8
  %50 = load i8, i8* %49, align 1
  %conv = sext i8 %50 to i32
  %cmp39 = icmp ne i32 %conv, 48
  br i1 %cmp39, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %land.lhs.true.38, %land.lhs.true.33
  br i1 true, label %if.then.78, label %if.end.79

cond.false.42:                                    ; preds = %land.lhs.true.38, %lor.lhs.false.35, %cond.true.27
  br i1 false, label %if.then.78, label %if.end.79

cond.false.43:                                    ; preds = %cond.false.20
  %51 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %52 = load %struct.sv*, %struct.sv** %51, align 8
  %sv_any44 = getelementptr inbounds %struct.sv, %struct.sv* %52, i32 0, i32 0
  %53 = load i8*, i8** %sv_any44, align 8
  %54 = bitcast i8* %53 to %struct.xpvgv*
  %xgv_gp45 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %54, i32 0, i32 7
  %55 = load %struct.gp*, %struct.gp** %xgv_gp45, align 8
  %gp_sv46 = getelementptr inbounds %struct.gp, %struct.gp* %55, i32 0, i32 0
  %56 = load %struct.sv*, %struct.sv** %gp_sv46, align 8
  %sv_flags47 = getelementptr inbounds %struct.sv, %struct.sv* %56, i32 0, i32 2
  %57 = load i32, i32* %sv_flags47, align 4
  %and48 = and i32 %57, 65536
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %cond.true.50, label %cond.false.57

cond.true.50:                                     ; preds = %cond.false.43
  %58 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %59 = load %struct.sv*, %struct.sv** %58, align 8
  %sv_any51 = getelementptr inbounds %struct.sv, %struct.sv* %59, i32 0, i32 0
  %60 = load i8*, i8** %sv_any51, align 8
  %61 = bitcast i8* %60 to %struct.xpvgv*
  %xgv_gp52 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %61, i32 0, i32 7
  %62 = load %struct.gp*, %struct.gp** %xgv_gp52, align 8
  %gp_sv53 = getelementptr inbounds %struct.gp, %struct.gp* %62, i32 0, i32 0
  %63 = load %struct.sv*, %struct.sv** %gp_sv53, align 8
  %sv_any54 = getelementptr inbounds %struct.sv, %struct.sv* %63, i32 0, i32 0
  %64 = load i8*, i8** %sv_any54, align 8
  %65 = bitcast i8* %64 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %65, i32 0, i32 3
  %66 = load i64, i64* %xiv_iv, align 8
  %cmp55 = icmp ne i64 %66, 0
  br i1 %cmp55, label %if.then.78, label %if.end.79

cond.false.57:                                    ; preds = %cond.false.43
  %67 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %68 = load %struct.sv*, %struct.sv** %67, align 8
  %sv_any58 = getelementptr inbounds %struct.sv, %struct.sv* %68, i32 0, i32 0
  %69 = load i8*, i8** %sv_any58, align 8
  %70 = bitcast i8* %69 to %struct.xpvgv*
  %xgv_gp59 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %70, i32 0, i32 7
  %71 = load %struct.gp*, %struct.gp** %xgv_gp59, align 8
  %gp_sv60 = getelementptr inbounds %struct.gp, %struct.gp* %71, i32 0, i32 0
  %72 = load %struct.sv*, %struct.sv** %gp_sv60, align 8
  %sv_flags61 = getelementptr inbounds %struct.sv, %struct.sv* %72, i32 0, i32 2
  %73 = load i32, i32* %sv_flags61, align 4
  %and62 = and i32 %73, 131072
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %cond.true.64, label %cond.false.71

cond.true.64:                                     ; preds = %cond.false.57
  %74 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %75 = load %struct.sv*, %struct.sv** %74, align 8
  %sv_any65 = getelementptr inbounds %struct.sv, %struct.sv* %75, i32 0, i32 0
  %76 = load i8*, i8** %sv_any65, align 8
  %77 = bitcast i8* %76 to %struct.xpvgv*
  %xgv_gp66 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %77, i32 0, i32 7
  %78 = load %struct.gp*, %struct.gp** %xgv_gp66, align 8
  %gp_sv67 = getelementptr inbounds %struct.gp, %struct.gp* %78, i32 0, i32 0
  %79 = load %struct.sv*, %struct.sv** %gp_sv67, align 8
  %sv_any68 = getelementptr inbounds %struct.sv, %struct.sv* %79, i32 0, i32 0
  %80 = load i8*, i8** %sv_any68, align 8
  %81 = bitcast i8* %80 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %81, i32 0, i32 4
  %82 = load double, double* %xnv_nv, align 8
  %cmp69 = fcmp une double %82, 0.000000e+00
  br i1 %cmp69, label %if.then.78, label %if.end.79

cond.false.71:                                    ; preds = %cond.false.57
  %83 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %84 = load %struct.sv*, %struct.sv** %83, align 8
  %sv_any72 = getelementptr inbounds %struct.sv, %struct.sv* %84, i32 0, i32 0
  %85 = load i8*, i8** %sv_any72, align 8
  %86 = bitcast i8* %85 to %struct.xpvgv*
  %xgv_gp73 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %86, i32 0, i32 7
  %87 = load %struct.gp*, %struct.gp** %xgv_gp73, align 8
  %gp_sv74 = getelementptr inbounds %struct.gp, %struct.gp* %87, i32 0, i32 0
  %88 = load %struct.sv*, %struct.sv** %gp_sv74, align 8
  %call75 = call signext i8 @Perl_sv_2bool(%struct.sv* %88)
  %conv76 = sext i8 %call75 to i32
  %tobool77 = icmp ne i32 %conv76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %cond.false.71, %cond.true.64, %cond.true.50, %cond.false.42, %cond.true.41, %cond.true.19
  store i32 0, i32* %adjust_index, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %cond.false.71, %cond.true.64, %cond.true.50, %cond.false.42, %cond.true.41, %cond.true.19, %cond.end
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %land.lhs.true, %if.then.6
  %89 = load i32, i32* %key.addr, align 4
  %cmp81 = icmp slt i32 %89, 0
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.103

land.lhs.true.83:                                 ; preds = %if.end.80
  %90 = load i32, i32* %adjust_index, align 4
  %tobool84 = icmp ne i32 %90, 0
  br i1 %tobool84, label %if.then.85, label %if.end.103

if.then.85:                                       ; preds = %land.lhs.true.83
  %91 = load %struct.av*, %struct.av** %av.addr, align 8
  %92 = bitcast %struct.av* %91 to %struct.sv*
  %sv_flags86 = getelementptr inbounds %struct.sv, %struct.sv* %92, i32 0, i32 2
  %93 = load i32, i32* %sv_flags86, align 4
  %and87 = and i32 %93, 32768
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %cond.true.89, label %cond.false.92

cond.true.89:                                     ; preds = %if.then.85
  %94 = load %struct.av*, %struct.av** %av.addr, align 8
  %95 = bitcast %struct.av* %94 to %struct.sv*
  %call90 = call i32 @Perl_mg_size(%struct.sv* %95)
  %conv91 = sext i32 %call90 to i64
  br label %cond.end.94

cond.false.92:                                    ; preds = %if.then.85
  %96 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any93 = getelementptr inbounds %struct.av, %struct.av* %96, i32 0, i32 0
  %97 = load %struct.xpvav*, %struct.xpvav** %sv_any93, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %97, i32 0, i32 1
  %98 = load i64, i64* %xav_fill, align 8
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.92, %cond.true.89
  %cond95 = phi i64 [ %conv91, %cond.true.89 ], [ %98, %cond.false.92 ]
  %add = add nsw i64 %cond95, 1
  %99 = load i32, i32* %key.addr, align 4
  %conv96 = sext i32 %99 to i64
  %add97 = add nsw i64 %conv96, %add
  %conv98 = trunc i64 %add97 to i32
  store i32 %conv98, i32* %key.addr, align 4
  %100 = load i32, i32* %key.addr, align 4
  %cmp99 = icmp slt i32 %100, 0
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %cond.end.94
  store %struct.sv** null, %struct.sv*** %retval
  br label %return

if.end.102:                                       ; preds = %cond.end.94
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %land.lhs.true.83, %if.end.80
  %call104 = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call104, %struct.sv** %sv, align 8
  %101 = load %struct.sv*, %struct.sv** %sv, align 8
  %call105 = call signext i8 @Perl_sv_upgrade(%struct.sv* %101, i32 9)
  %102 = load %struct.av*, %struct.av** %av.addr, align 8
  %103 = bitcast %struct.av* %102 to %struct.sv*
  %104 = load %struct.sv*, %struct.sv** %sv, align 8
  %105 = load i32, i32* %key.addr, align 4
  %call106 = call i32 @Perl_mg_copy(%struct.sv* %103, %struct.sv* %104, i8* null, i32 %105)
  %106 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any107 = getelementptr inbounds %struct.sv, %struct.sv* %106, i32 0, i32 0
  %107 = load i8*, i8** %sv_any107, align 8
  %108 = bitcast i8* %107 to %struct.xpvlv*
  %xlv_type = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %108, i32 0, i32 10
  store i8 116, i8* %xlv_type, align 1
  %109 = load %struct.sv*, %struct.sv** %sv, align 8
  %110 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any108 = getelementptr inbounds %struct.sv, %struct.sv* %110, i32 0, i32 0
  %111 = load i8*, i8** %sv_any108, align 8
  %112 = bitcast i8* %111 to %struct.xpvlv*
  %xlv_targ = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %112, i32 0, i32 9
  store %struct.sv* %109, %struct.sv** %xlv_targ, align 8
  %113 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any109 = getelementptr inbounds %struct.sv, %struct.sv* %113, i32 0, i32 0
  %114 = load i8*, i8** %sv_any109, align 8
  %115 = bitcast i8* %114 to %struct.xpvlv*
  %xlv_targ110 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %115, i32 0, i32 9
  store %struct.sv** %xlv_targ110, %struct.sv*** %retval
  br label %return

if.end.111:                                       ; preds = %lor.lhs.false
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.end
  %116 = load i32, i32* %key.addr, align 4
  %cmp113 = icmp slt i32 %116, 0
  br i1 %cmp113, label %if.then.115, label %if.end.135

if.then.115:                                      ; preds = %if.end.112
  %117 = load %struct.av*, %struct.av** %av.addr, align 8
  %118 = bitcast %struct.av* %117 to %struct.sv*
  %sv_flags116 = getelementptr inbounds %struct.sv, %struct.sv* %118, i32 0, i32 2
  %119 = load i32, i32* %sv_flags116, align 4
  %and117 = and i32 %119, 32768
  %tobool118 = icmp ne i32 %and117, 0
  br i1 %tobool118, label %cond.true.119, label %cond.false.122

cond.true.119:                                    ; preds = %if.then.115
  %120 = load %struct.av*, %struct.av** %av.addr, align 8
  %121 = bitcast %struct.av* %120 to %struct.sv*
  %call120 = call i32 @Perl_mg_size(%struct.sv* %121)
  %conv121 = sext i32 %call120 to i64
  br label %cond.end.125

cond.false.122:                                   ; preds = %if.then.115
  %122 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any123 = getelementptr inbounds %struct.av, %struct.av* %122, i32 0, i32 0
  %123 = load %struct.xpvav*, %struct.xpvav** %sv_any123, align 8
  %xav_fill124 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %123, i32 0, i32 1
  %124 = load i64, i64* %xav_fill124, align 8
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.122, %cond.true.119
  %cond126 = phi i64 [ %conv121, %cond.true.119 ], [ %124, %cond.false.122 ]
  %add127 = add nsw i64 %cond126, 1
  %125 = load i32, i32* %key.addr, align 4
  %conv128 = sext i32 %125 to i64
  %add129 = add nsw i64 %conv128, %add127
  %conv130 = trunc i64 %add129 to i32
  store i32 %conv130, i32* %key.addr, align 4
  %126 = load i32, i32* %key.addr, align 4
  %cmp131 = icmp slt i32 %126, 0
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %cond.end.125
  store %struct.sv** null, %struct.sv*** %retval
  br label %return

if.end.134:                                       ; preds = %cond.end.125
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.end.112
  %127 = load i32, i32* %key.addr, align 4
  %conv136 = sext i32 %127 to i64
  %128 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any137 = getelementptr inbounds %struct.av, %struct.av* %128, i32 0, i32 0
  %129 = load %struct.xpvav*, %struct.xpvav** %sv_any137, align 8
  %xav_fill138 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %129, i32 0, i32 1
  %130 = load i64, i64* %xav_fill138, align 8
  %cmp139 = icmp sgt i64 %conv136, %130
  br i1 %cmp139, label %if.then.141, label %if.end.147

if.then.141:                                      ; preds = %if.end.135
  %131 = load i32, i32* %lval.addr, align 4
  %tobool142 = icmp ne i32 %131, 0
  br i1 %tobool142, label %if.end.144, label %if.then.143

if.then.143:                                      ; preds = %if.then.141
  store %struct.sv** null, %struct.sv*** %retval
  br label %return

if.end.144:                                       ; preds = %if.then.141
  %call145 = call %struct.sv* @Perl_newSV(i64 0)
  store %struct.sv* %call145, %struct.sv** %sv, align 8
  %132 = load %struct.av*, %struct.av** %av.addr, align 8
  %133 = load i32, i32* %key.addr, align 4
  %134 = load %struct.sv*, %struct.sv** %sv, align 8
  %call146 = call %struct.sv** @Perl_av_store(%struct.av* %132, i32 %133, %struct.sv* %134)
  store %struct.sv** %call146, %struct.sv*** %retval
  br label %return

if.end.147:                                       ; preds = %if.end.135
  %135 = load i32, i32* %key.addr, align 4
  %idxprom = sext i32 %135 to i64
  %136 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any148 = getelementptr inbounds %struct.av, %struct.av* %136, i32 0, i32 0
  %137 = load %struct.xpvav*, %struct.xpvav** %sv_any148, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %137, i32 0, i32 0
  %138 = load i8*, i8** %xav_array, align 8
  %139 = bitcast i8* %138 to %struct.sv**
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %139, i64 %idxprom
  %140 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %cmp149 = icmp eq %struct.sv* %140, @PL_sv_undef
  br i1 %cmp149, label %if.then.151, label %if.else

if.then.151:                                      ; preds = %if.end.147
  br label %emptyness

emptyness:                                        ; preds = %if.then.176, %if.then.151
  %141 = load i32, i32* %lval.addr, align 4
  %tobool152 = icmp ne i32 %141, 0
  br i1 %tobool152, label %if.then.153, label %if.end.156

if.then.153:                                      ; preds = %emptyness
  %call154 = call %struct.sv* @Perl_newSV(i64 0)
  store %struct.sv* %call154, %struct.sv** %sv, align 8
  %142 = load %struct.av*, %struct.av** %av.addr, align 8
  %143 = load i32, i32* %key.addr, align 4
  %144 = load %struct.sv*, %struct.sv** %sv, align 8
  %call155 = call %struct.sv** @Perl_av_store(%struct.av* %142, i32 %143, %struct.sv* %144)
  store %struct.sv** %call155, %struct.sv*** %retval
  br label %return

if.end.156:                                       ; preds = %emptyness
  store %struct.sv** null, %struct.sv*** %retval
  br label %return

if.else:                                          ; preds = %if.end.147
  %145 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any157 = getelementptr inbounds %struct.av, %struct.av* %145, i32 0, i32 0
  %146 = load %struct.xpvav*, %struct.xpvav** %sv_any157, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %146, i32 0, i32 9
  %147 = load i8, i8* %xav_flags, align 1
  %conv158 = zext i8 %147 to i32
  %and159 = and i32 %conv158, 2
  %tobool160 = icmp ne i32 %and159, 0
  br i1 %tobool160, label %land.lhs.true.161, label %if.end.181

land.lhs.true.161:                                ; preds = %if.else
  %148 = load i32, i32* %key.addr, align 4
  %idxprom162 = sext i32 %148 to i64
  %149 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any163 = getelementptr inbounds %struct.av, %struct.av* %149, i32 0, i32 0
  %150 = load %struct.xpvav*, %struct.xpvav** %sv_any163, align 8
  %xav_array164 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %150, i32 0, i32 0
  %151 = load i8*, i8** %xav_array164, align 8
  %152 = bitcast i8* %151 to %struct.sv**
  %arrayidx165 = getelementptr inbounds %struct.sv*, %struct.sv** %152, i64 %idxprom162
  %153 = load %struct.sv*, %struct.sv** %arrayidx165, align 8
  %tobool166 = icmp ne %struct.sv* %153, null
  br i1 %tobool166, label %lor.lhs.false.167, label %if.then.176

lor.lhs.false.167:                                ; preds = %land.lhs.true.161
  %154 = load i32, i32* %key.addr, align 4
  %idxprom168 = sext i32 %154 to i64
  %155 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any169 = getelementptr inbounds %struct.av, %struct.av* %155, i32 0, i32 0
  %156 = load %struct.xpvav*, %struct.xpvav** %sv_any169, align 8
  %xav_array170 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %156, i32 0, i32 0
  %157 = load i8*, i8** %xav_array170, align 8
  %158 = bitcast i8* %157 to %struct.sv**
  %arrayidx171 = getelementptr inbounds %struct.sv*, %struct.sv** %158, i64 %idxprom168
  %159 = load %struct.sv*, %struct.sv** %arrayidx171, align 8
  %sv_flags172 = getelementptr inbounds %struct.sv, %struct.sv* %159, i32 0, i32 2
  %160 = load i32, i32* %sv_flags172, align 4
  %and173 = and i32 %160, 255
  %cmp174 = icmp eq i32 %and173, 255
  br i1 %cmp174, label %if.then.176, label %if.end.181

if.then.176:                                      ; preds = %lor.lhs.false.167, %land.lhs.true.161
  %161 = load i32, i32* %key.addr, align 4
  %idxprom177 = sext i32 %161 to i64
  %162 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any178 = getelementptr inbounds %struct.av, %struct.av* %162, i32 0, i32 0
  %163 = load %struct.xpvav*, %struct.xpvav** %sv_any178, align 8
  %xav_array179 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %163, i32 0, i32 0
  %164 = load i8*, i8** %xav_array179, align 8
  %165 = bitcast i8* %164 to %struct.sv**
  %arrayidx180 = getelementptr inbounds %struct.sv*, %struct.sv** %165, i64 %idxprom177
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx180, align 8
  br label %emptyness

if.end.181:                                       ; preds = %lor.lhs.false.167, %if.else
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181
  %166 = load i32, i32* %key.addr, align 4
  %idxprom183 = sext i32 %166 to i64
  %167 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any184 = getelementptr inbounds %struct.av, %struct.av* %167, i32 0, i32 0
  %168 = load %struct.xpvav*, %struct.xpvav** %sv_any184, align 8
  %xav_array185 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %168, i32 0, i32 0
  %169 = load i8*, i8** %xav_array185, align 8
  %170 = bitcast i8* %169 to %struct.sv**
  %arrayidx186 = getelementptr inbounds %struct.sv*, %struct.sv** %170, i64 %idxprom183
  store %struct.sv** %arrayidx186, %struct.sv*** %retval
  br label %return

return:                                           ; preds = %if.end.182, %if.end.156, %if.then.153, %if.end.144, %if.then.143, %if.then.133, %if.end.103, %if.then.101, %if.then
  %171 = load %struct.sv**, %struct.sv*** %retval
  ret %struct.sv** %171
}

declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

declare i32 @Perl_mg_size(%struct.sv*) #1

declare %struct.sv* @Perl_sv_newmortal() #1

declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

declare i32 @Perl_mg_copy(%struct.sv*, %struct.sv*, i8*, i32) #1

declare %struct.sv* @Perl_newSV(i64) #1

; Function Attrs: nounwind uwtable
define %struct.sv** @Perl_av_store(%struct.av* %av, i32 %key, %struct.sv* %val) #0 {
entry:
  %retval = alloca %struct.sv**, align 8
  %av.addr = alloca %struct.av*, align 8
  %key.addr = alloca i32, align 4
  %val.addr = alloca %struct.sv*, align 8
  %ary = alloca %struct.sv**, align 8
  %tied_magic = alloca %struct.magic*, align 8
  %adjust_index = alloca i32, align 4
  %negative_indices_glob = alloca %struct.sv**, align 8
  %mg = alloca %struct.magic*, align 8
  store %struct.av* %av, %struct.av** %av.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store %struct.sv* %val, %struct.sv** %val.addr, align 8
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %tobool = icmp ne %struct.av* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.sv** null, %struct.sv*** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %tobool1 = icmp ne %struct.sv* %1, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct.sv* @PL_sv_undef, %struct.sv** %val.addr, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_flags = getelementptr inbounds %struct.av, %struct.av* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags, align 4
  %and = and i32 %3, 32768
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then.5, label %if.end.105

if.then.5:                                        ; preds = %if.end.3
  %4 = load %struct.av*, %struct.av** %av.addr, align 8
  %5 = bitcast %struct.av* %4 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %5, i32 80)
  store %struct.magic* %call, %struct.magic** %tied_magic, align 8
  %6 = load %struct.magic*, %struct.magic** %tied_magic, align 8
  %tobool6 = icmp ne %struct.magic* %6, null
  br i1 %tobool6, label %if.then.7, label %if.end.104

if.then.7:                                        ; preds = %if.then.5
  %7 = load i32, i32* %key.addr, align 4
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then.8, label %if.end.98

if.then.8:                                        ; preds = %if.then.7
  store i32 1, i32* %adjust_index, align 4
  %8 = load %struct.magic*, %struct.magic** %tied_magic, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %8, i32 0, i32 5
  %9 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool9 = icmp ne %struct.sv* %9, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  %10 = load %struct.magic*, %struct.magic** %tied_magic, align 8
  %mg_obj10 = getelementptr inbounds %struct.magic, %struct.magic* %10, i32 0, i32 5
  %11 = load %struct.sv*, %struct.sv** %mg_obj10, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.8
  %12 = load %struct.av*, %struct.av** %av.addr, align 8
  %13 = bitcast %struct.av* %12 to %struct.sv*
  %call11 = call %struct.sv* @Perl_newRV(%struct.sv* %13)
  %call12 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %11, %cond.true ], [ %call12, %cond.false ]
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %cond, i32 0, i32 0
  %14 = load i8*, i8** %sv_any, align 8
  %15 = bitcast i8* %14 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %15, i32 0, i32 0
  %16 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_any13 = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 0
  %17 = load i8*, i8** %sv_any13, align 8
  %18 = bitcast i8* %17 to %struct.xpvmg*
  %xmg_stash = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %18, i32 0, i32 6
  %19 = load %struct.hv*, %struct.hv** %xmg_stash, align 8
  %call14 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i32 16, i32 0)
  store %struct.sv** %call14, %struct.sv*** %negative_indices_glob, align 8
  %20 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %tobool15 = icmp ne %struct.sv** %20, null
  br i1 %tobool15, label %land.lhs.true, label %if.end.77

land.lhs.true:                                    ; preds = %cond.end
  %21 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %22 = load %struct.sv*, %struct.sv** %21, align 8
  %sv_any16 = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 0
  %23 = load i8*, i8** %sv_any16, align 8
  %24 = bitcast i8* %23 to %struct.xpvgv*
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %24, i32 0, i32 7
  %25 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %25, i32 0, i32 0
  %26 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %tobool17 = icmp ne %struct.sv* %26, null
  br i1 %tobool17, label %cond.false.19, label %cond.true.18

cond.true.18:                                     ; preds = %land.lhs.true
  br i1 false, label %if.then.76, label %if.end.77

cond.false.19:                                    ; preds = %land.lhs.true
  %27 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %28 = load %struct.sv*, %struct.sv** %27, align 8
  %sv_any20 = getelementptr inbounds %struct.sv, %struct.sv* %28, i32 0, i32 0
  %29 = load i8*, i8** %sv_any20, align 8
  %30 = bitcast i8* %29 to %struct.xpvgv*
  %xgv_gp21 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %30, i32 0, i32 7
  %31 = load %struct.gp*, %struct.gp** %xgv_gp21, align 8
  %gp_sv22 = getelementptr inbounds %struct.gp, %struct.gp* %31, i32 0, i32 0
  %32 = load %struct.sv*, %struct.sv** %gp_sv22, align 8
  %sv_flags23 = getelementptr inbounds %struct.sv, %struct.sv* %32, i32 0, i32 2
  %33 = load i32, i32* %sv_flags23, align 4
  %and24 = and i32 %33, 262144
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %cond.true.26, label %cond.false.41

cond.true.26:                                     ; preds = %cond.false.19
  %34 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %35 = load %struct.sv*, %struct.sv** %34, align 8
  %sv_any27 = getelementptr inbounds %struct.sv, %struct.sv* %35, i32 0, i32 0
  %36 = load i8*, i8** %sv_any27, align 8
  %37 = bitcast i8* %36 to %struct.xpvgv*
  %xgv_gp28 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %37, i32 0, i32 7
  %38 = load %struct.gp*, %struct.gp** %xgv_gp28, align 8
  %gp_sv29 = getelementptr inbounds %struct.gp, %struct.gp* %38, i32 0, i32 0
  %39 = load %struct.sv*, %struct.sv** %gp_sv29, align 8
  %sv_any30 = getelementptr inbounds %struct.sv, %struct.sv* %39, i32 0, i32 0
  %40 = load i8*, i8** %sv_any30, align 8
  %41 = bitcast i8* %40 to %struct.xpv*
  store %struct.xpv* %41, %struct.xpv** @PL_Xpv, align 8
  %tobool31 = icmp ne %struct.xpv* %41, null
  br i1 %tobool31, label %land.lhs.true.32, label %cond.false.40

land.lhs.true.32:                                 ; preds = %cond.true.26
  %42 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %42, i32 0, i32 1
  %43 = load i64, i64* %xpv_cur, align 8
  %cmp33 = icmp ugt i64 %43, 1
  br i1 %cmp33, label %cond.true.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.32
  %44 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur34 = getelementptr inbounds %struct.xpv, %struct.xpv* %44, i32 0, i32 1
  %45 = load i64, i64* %xpv_cur34, align 8
  %tobool35 = icmp ne i64 %45, 0
  br i1 %tobool35, label %land.lhs.true.36, label %cond.false.40

land.lhs.true.36:                                 ; preds = %lor.lhs.false
  %46 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %46, i32 0, i32 0
  %47 = load i8*, i8** %xpv_pv, align 8
  %48 = load i8, i8* %47, align 1
  %conv = sext i8 %48 to i32
  %cmp37 = icmp ne i32 %conv, 48
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %land.lhs.true.36, %land.lhs.true.32
  br i1 true, label %if.then.76, label %if.end.77

cond.false.40:                                    ; preds = %land.lhs.true.36, %lor.lhs.false, %cond.true.26
  br i1 false, label %if.then.76, label %if.end.77

cond.false.41:                                    ; preds = %cond.false.19
  %49 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %50 = load %struct.sv*, %struct.sv** %49, align 8
  %sv_any42 = getelementptr inbounds %struct.sv, %struct.sv* %50, i32 0, i32 0
  %51 = load i8*, i8** %sv_any42, align 8
  %52 = bitcast i8* %51 to %struct.xpvgv*
  %xgv_gp43 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %52, i32 0, i32 7
  %53 = load %struct.gp*, %struct.gp** %xgv_gp43, align 8
  %gp_sv44 = getelementptr inbounds %struct.gp, %struct.gp* %53, i32 0, i32 0
  %54 = load %struct.sv*, %struct.sv** %gp_sv44, align 8
  %sv_flags45 = getelementptr inbounds %struct.sv, %struct.sv* %54, i32 0, i32 2
  %55 = load i32, i32* %sv_flags45, align 4
  %and46 = and i32 %55, 65536
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %cond.true.48, label %cond.false.55

cond.true.48:                                     ; preds = %cond.false.41
  %56 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %57 = load %struct.sv*, %struct.sv** %56, align 8
  %sv_any49 = getelementptr inbounds %struct.sv, %struct.sv* %57, i32 0, i32 0
  %58 = load i8*, i8** %sv_any49, align 8
  %59 = bitcast i8* %58 to %struct.xpvgv*
  %xgv_gp50 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %59, i32 0, i32 7
  %60 = load %struct.gp*, %struct.gp** %xgv_gp50, align 8
  %gp_sv51 = getelementptr inbounds %struct.gp, %struct.gp* %60, i32 0, i32 0
  %61 = load %struct.sv*, %struct.sv** %gp_sv51, align 8
  %sv_any52 = getelementptr inbounds %struct.sv, %struct.sv* %61, i32 0, i32 0
  %62 = load i8*, i8** %sv_any52, align 8
  %63 = bitcast i8* %62 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %63, i32 0, i32 3
  %64 = load i64, i64* %xiv_iv, align 8
  %cmp53 = icmp ne i64 %64, 0
  br i1 %cmp53, label %if.then.76, label %if.end.77

cond.false.55:                                    ; preds = %cond.false.41
  %65 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %66 = load %struct.sv*, %struct.sv** %65, align 8
  %sv_any56 = getelementptr inbounds %struct.sv, %struct.sv* %66, i32 0, i32 0
  %67 = load i8*, i8** %sv_any56, align 8
  %68 = bitcast i8* %67 to %struct.xpvgv*
  %xgv_gp57 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %68, i32 0, i32 7
  %69 = load %struct.gp*, %struct.gp** %xgv_gp57, align 8
  %gp_sv58 = getelementptr inbounds %struct.gp, %struct.gp* %69, i32 0, i32 0
  %70 = load %struct.sv*, %struct.sv** %gp_sv58, align 8
  %sv_flags59 = getelementptr inbounds %struct.sv, %struct.sv* %70, i32 0, i32 2
  %71 = load i32, i32* %sv_flags59, align 4
  %and60 = and i32 %71, 131072
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %cond.true.62, label %cond.false.69

cond.true.62:                                     ; preds = %cond.false.55
  %72 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %73 = load %struct.sv*, %struct.sv** %72, align 8
  %sv_any63 = getelementptr inbounds %struct.sv, %struct.sv* %73, i32 0, i32 0
  %74 = load i8*, i8** %sv_any63, align 8
  %75 = bitcast i8* %74 to %struct.xpvgv*
  %xgv_gp64 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %75, i32 0, i32 7
  %76 = load %struct.gp*, %struct.gp** %xgv_gp64, align 8
  %gp_sv65 = getelementptr inbounds %struct.gp, %struct.gp* %76, i32 0, i32 0
  %77 = load %struct.sv*, %struct.sv** %gp_sv65, align 8
  %sv_any66 = getelementptr inbounds %struct.sv, %struct.sv* %77, i32 0, i32 0
  %78 = load i8*, i8** %sv_any66, align 8
  %79 = bitcast i8* %78 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %79, i32 0, i32 4
  %80 = load double, double* %xnv_nv, align 8
  %cmp67 = fcmp une double %80, 0.000000e+00
  br i1 %cmp67, label %if.then.76, label %if.end.77

cond.false.69:                                    ; preds = %cond.false.55
  %81 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %82 = load %struct.sv*, %struct.sv** %81, align 8
  %sv_any70 = getelementptr inbounds %struct.sv, %struct.sv* %82, i32 0, i32 0
  %83 = load i8*, i8** %sv_any70, align 8
  %84 = bitcast i8* %83 to %struct.xpvgv*
  %xgv_gp71 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %84, i32 0, i32 7
  %85 = load %struct.gp*, %struct.gp** %xgv_gp71, align 8
  %gp_sv72 = getelementptr inbounds %struct.gp, %struct.gp* %85, i32 0, i32 0
  %86 = load %struct.sv*, %struct.sv** %gp_sv72, align 8
  %call73 = call signext i8 @Perl_sv_2bool(%struct.sv* %86)
  %conv74 = sext i8 %call73 to i32
  %tobool75 = icmp ne i32 %conv74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %cond.false.69, %cond.true.62, %cond.true.48, %cond.false.40, %cond.true.39, %cond.true.18
  store i32 0, i32* %adjust_index, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %cond.false.69, %cond.true.62, %cond.true.48, %cond.false.40, %cond.true.39, %cond.true.18, %cond.end
  %87 = load i32, i32* %adjust_index, align 4
  %tobool78 = icmp ne i32 %87, 0
  br i1 %tobool78, label %if.then.79, label %if.end.97

if.then.79:                                       ; preds = %if.end.77
  %88 = load %struct.av*, %struct.av** %av.addr, align 8
  %89 = bitcast %struct.av* %88 to %struct.sv*
  %sv_flags80 = getelementptr inbounds %struct.sv, %struct.sv* %89, i32 0, i32 2
  %90 = load i32, i32* %sv_flags80, align 4
  %and81 = and i32 %90, 32768
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %cond.true.83, label %cond.false.86

cond.true.83:                                     ; preds = %if.then.79
  %91 = load %struct.av*, %struct.av** %av.addr, align 8
  %92 = bitcast %struct.av* %91 to %struct.sv*
  %call84 = call i32 @Perl_mg_size(%struct.sv* %92)
  %conv85 = sext i32 %call84 to i64
  br label %cond.end.88

cond.false.86:                                    ; preds = %if.then.79
  %93 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any87 = getelementptr inbounds %struct.av, %struct.av* %93, i32 0, i32 0
  %94 = load %struct.xpvav*, %struct.xpvav** %sv_any87, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %94, i32 0, i32 1
  %95 = load i64, i64* %xav_fill, align 8
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.86, %cond.true.83
  %cond89 = phi i64 [ %conv85, %cond.true.83 ], [ %95, %cond.false.86 ]
  %add = add nsw i64 %cond89, 1
  %96 = load i32, i32* %key.addr, align 4
  %conv90 = sext i32 %96 to i64
  %add91 = add nsw i64 %conv90, %add
  %conv92 = trunc i64 %add91 to i32
  store i32 %conv92, i32* %key.addr, align 4
  %97 = load i32, i32* %key.addr, align 4
  %cmp93 = icmp slt i32 %97, 0
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %cond.end.88
  store %struct.sv** null, %struct.sv*** %retval
  br label %return

if.end.96:                                        ; preds = %cond.end.88
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.77
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.7
  %98 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %cmp99 = icmp ne %struct.sv* %98, @PL_sv_undef
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.end.98
  %99 = load %struct.av*, %struct.av** %av.addr, align 8
  %100 = bitcast %struct.av* %99 to %struct.sv*
  %101 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %102 = load i32, i32* %key.addr, align 4
  %call102 = call i32 @Perl_mg_copy(%struct.sv* %100, %struct.sv* %101, i8* null, i32 %102)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %if.end.98
  store %struct.sv** null, %struct.sv*** %retval
  br label %return

if.end.104:                                       ; preds = %if.then.5
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.3
  %103 = load i32, i32* %key.addr, align 4
  %cmp106 = icmp slt i32 %103, 0
  br i1 %cmp106, label %if.then.108, label %if.end.128

if.then.108:                                      ; preds = %if.end.105
  %104 = load %struct.av*, %struct.av** %av.addr, align 8
  %105 = bitcast %struct.av* %104 to %struct.sv*
  %sv_flags109 = getelementptr inbounds %struct.sv, %struct.sv* %105, i32 0, i32 2
  %106 = load i32, i32* %sv_flags109, align 4
  %and110 = and i32 %106, 32768
  %tobool111 = icmp ne i32 %and110, 0
  br i1 %tobool111, label %cond.true.112, label %cond.false.115

cond.true.112:                                    ; preds = %if.then.108
  %107 = load %struct.av*, %struct.av** %av.addr, align 8
  %108 = bitcast %struct.av* %107 to %struct.sv*
  %call113 = call i32 @Perl_mg_size(%struct.sv* %108)
  %conv114 = sext i32 %call113 to i64
  br label %cond.end.118

cond.false.115:                                   ; preds = %if.then.108
  %109 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any116 = getelementptr inbounds %struct.av, %struct.av* %109, i32 0, i32 0
  %110 = load %struct.xpvav*, %struct.xpvav** %sv_any116, align 8
  %xav_fill117 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %110, i32 0, i32 1
  %111 = load i64, i64* %xav_fill117, align 8
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.115, %cond.true.112
  %cond119 = phi i64 [ %conv114, %cond.true.112 ], [ %111, %cond.false.115 ]
  %add120 = add nsw i64 %cond119, 1
  %112 = load i32, i32* %key.addr, align 4
  %conv121 = sext i32 %112 to i64
  %add122 = add nsw i64 %conv121, %add120
  %conv123 = trunc i64 %add122 to i32
  store i32 %conv123, i32* %key.addr, align 4
  %113 = load i32, i32* %key.addr, align 4
  %cmp124 = icmp slt i32 %113, 0
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %cond.end.118
  store %struct.sv** null, %struct.sv*** %retval
  br label %return

if.end.127:                                       ; preds = %cond.end.118
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.end.105
  %114 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_flags129 = getelementptr inbounds %struct.av, %struct.av* %114, i32 0, i32 2
  %115 = load i32, i32* %sv_flags129, align 4
  %and130 = and i32 %115, 8388608
  %tobool131 = icmp ne i32 %and130, 0
  br i1 %tobool131, label %land.lhs.true.132, label %if.end.148

land.lhs.true.132:                                ; preds = %if.end.128
  %116 = load i32, i32* %key.addr, align 4
  %conv133 = sext i32 %116 to i64
  %117 = load %struct.av*, %struct.av** %av.addr, align 8
  %118 = bitcast %struct.av* %117 to %struct.sv*
  %sv_flags134 = getelementptr inbounds %struct.sv, %struct.sv* %118, i32 0, i32 2
  %119 = load i32, i32* %sv_flags134, align 4
  %and135 = and i32 %119, 32768
  %tobool136 = icmp ne i32 %and135, 0
  br i1 %tobool136, label %cond.true.137, label %cond.false.140

cond.true.137:                                    ; preds = %land.lhs.true.132
  %120 = load %struct.av*, %struct.av** %av.addr, align 8
  %121 = bitcast %struct.av* %120 to %struct.sv*
  %call138 = call i32 @Perl_mg_size(%struct.sv* %121)
  %conv139 = sext i32 %call138 to i64
  br label %cond.end.143

cond.false.140:                                   ; preds = %land.lhs.true.132
  %122 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any141 = getelementptr inbounds %struct.av, %struct.av* %122, i32 0, i32 0
  %123 = load %struct.xpvav*, %struct.xpvav** %sv_any141, align 8
  %xav_fill142 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %123, i32 0, i32 1
  %124 = load i64, i64* %xav_fill142, align 8
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.140, %cond.true.137
  %cond144 = phi i64 [ %conv139, %cond.true.137 ], [ %124, %cond.false.140 ]
  %cmp145 = icmp sge i64 %conv133, %cond144
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %cond.end.143
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_modify, i32 0, i32 0))
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %cond.end.143, %if.end.128
  %125 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any149 = getelementptr inbounds %struct.av, %struct.av* %125, i32 0, i32 0
  %126 = load %struct.xpvav*, %struct.xpvav** %sv_any149, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %126, i32 0, i32 9
  %127 = load i8, i8* %xav_flags, align 1
  %conv150 = zext i8 %127 to i32
  %and151 = and i32 %conv150, 1
  %tobool152 = icmp ne i32 %and151, 0
  br i1 %tobool152, label %if.end.160, label %land.lhs.true.153

land.lhs.true.153:                                ; preds = %if.end.148
  %128 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any154 = getelementptr inbounds %struct.av, %struct.av* %128, i32 0, i32 0
  %129 = load %struct.xpvav*, %struct.xpvav** %sv_any154, align 8
  %xav_flags155 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %129, i32 0, i32 9
  %130 = load i8, i8* %xav_flags155, align 1
  %conv156 = zext i8 %130 to i32
  %and157 = and i32 %conv156, 2
  %tobool158 = icmp ne i32 %and157, 0
  br i1 %tobool158, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %land.lhs.true.153
  %131 = load %struct.av*, %struct.av** %av.addr, align 8
  call void @Perl_av_reify(%struct.av* %131)
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.159, %land.lhs.true.153, %if.end.148
  %132 = load i32, i32* %key.addr, align 4
  %conv161 = sext i32 %132 to i64
  %133 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any162 = getelementptr inbounds %struct.av, %struct.av* %133, i32 0, i32 0
  %134 = load %struct.xpvav*, %struct.xpvav** %sv_any162, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %134, i32 0, i32 2
  %135 = load i64, i64* %xav_max, align 8
  %cmp163 = icmp sgt i64 %conv161, %135
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.end.160
  %136 = load %struct.av*, %struct.av** %av.addr, align 8
  %137 = load i32, i32* %key.addr, align 4
  call void @Perl_av_extend(%struct.av* %136, i32 %137)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.end.160
  %138 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any167 = getelementptr inbounds %struct.av, %struct.av* %138, i32 0, i32 0
  %139 = load %struct.xpvav*, %struct.xpvav** %sv_any167, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %139, i32 0, i32 0
  %140 = load i8*, i8** %xav_array, align 8
  %141 = bitcast i8* %140 to %struct.sv**
  store %struct.sv** %141, %struct.sv*** %ary, align 8
  %142 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any168 = getelementptr inbounds %struct.av, %struct.av* %142, i32 0, i32 0
  %143 = load %struct.xpvav*, %struct.xpvav** %sv_any168, align 8
  %xav_fill169 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %143, i32 0, i32 1
  %144 = load i64, i64* %xav_fill169, align 8
  %145 = load i32, i32* %key.addr, align 4
  %conv170 = sext i32 %145 to i64
  %cmp171 = icmp slt i64 %144, %conv170
  br i1 %cmp171, label %if.then.173, label %if.else

if.then.173:                                      ; preds = %if.end.166
  %146 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any174 = getelementptr inbounds %struct.av, %struct.av* %146, i32 0, i32 0
  %147 = load %struct.xpvav*, %struct.xpvav** %sv_any174, align 8
  %xav_flags175 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %147, i32 0, i32 9
  %148 = load i8, i8* %xav_flags175, align 1
  %conv176 = zext i8 %148 to i32
  %and177 = and i32 %conv176, 1
  %tobool178 = icmp ne i32 %and177, 0
  br i1 %tobool178, label %if.end.195, label %if.then.179

if.then.179:                                      ; preds = %if.then.173
  %149 = load %struct.av*, %struct.av** %av.addr, align 8
  %150 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %cmp180 = icmp eq %struct.av* %149, %150
  br i1 %cmp180, label %land.lhs.true.182, label %if.end.187

land.lhs.true.182:                                ; preds = %if.then.179
  %151 = load i32, i32* %key.addr, align 4
  %conv183 = sext i32 %151 to i64
  %152 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %153 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %152 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %153 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp184 = icmp sgt i64 %conv183, %sub.ptr.div
  br i1 %cmp184, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %land.lhs.true.182
  %154 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %155 = load i32, i32* %key.addr, align 4
  %idx.ext = sext i32 %155 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %154, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_sp, align 8
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.186, %land.lhs.true.182, %if.then.179
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.187
  %156 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any188 = getelementptr inbounds %struct.av, %struct.av* %156, i32 0, i32 0
  %157 = load %struct.xpvav*, %struct.xpvav** %sv_any188, align 8
  %xav_fill189 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %157, i32 0, i32 1
  %158 = load i64, i64* %xav_fill189, align 8
  %inc = add nsw i64 %158, 1
  store i64 %inc, i64* %xav_fill189, align 8
  %159 = load %struct.sv**, %struct.sv*** %ary, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %159, i64 %inc
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %160 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any190 = getelementptr inbounds %struct.av, %struct.av* %160, i32 0, i32 0
  %161 = load %struct.xpvav*, %struct.xpvav** %sv_any190, align 8
  %xav_fill191 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %161, i32 0, i32 1
  %162 = load i64, i64* %xav_fill191, align 8
  %163 = load i32, i32* %key.addr, align 4
  %conv192 = sext i32 %163 to i64
  %cmp193 = icmp slt i64 %162, %conv192
  br i1 %cmp193, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.195

if.end.195:                                       ; preds = %do.end, %if.then.173
  %164 = load i32, i32* %key.addr, align 4
  %conv196 = sext i32 %164 to i64
  %165 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any197 = getelementptr inbounds %struct.av, %struct.av* %165, i32 0, i32 0
  %166 = load %struct.xpvav*, %struct.xpvav** %sv_any197, align 8
  %xav_fill198 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %166, i32 0, i32 1
  store i64 %conv196, i64* %xav_fill198, align 8
  br label %if.end.207

if.else:                                          ; preds = %if.end.166
  %167 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any199 = getelementptr inbounds %struct.av, %struct.av* %167, i32 0, i32 0
  %168 = load %struct.xpvav*, %struct.xpvav** %sv_any199, align 8
  %xav_flags200 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %168, i32 0, i32 9
  %169 = load i8, i8* %xav_flags200, align 1
  %conv201 = zext i8 %169 to i32
  %and202 = and i32 %conv201, 1
  %tobool203 = icmp ne i32 %and202, 0
  br i1 %tobool203, label %if.then.204, label %if.end.206

if.then.204:                                      ; preds = %if.else
  %170 = load i32, i32* %key.addr, align 4
  %idxprom = sext i32 %170 to i64
  %171 = load %struct.sv**, %struct.sv*** %ary, align 8
  %arrayidx205 = getelementptr inbounds %struct.sv*, %struct.sv** %171, i64 %idxprom
  %172 = load %struct.sv*, %struct.sv** %arrayidx205, align 8
  call void @Perl_sv_free(%struct.sv* %172)
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.204, %if.else
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.end.195
  %173 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %174 = load i32, i32* %key.addr, align 4
  %idxprom208 = sext i32 %174 to i64
  %175 = load %struct.sv**, %struct.sv*** %ary, align 8
  %arrayidx209 = getelementptr inbounds %struct.sv*, %struct.sv** %175, i64 %idxprom208
  store %struct.sv* %173, %struct.sv** %arrayidx209, align 8
  %176 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_flags210 = getelementptr inbounds %struct.av, %struct.av* %176, i32 0, i32 2
  %177 = load i32, i32* %sv_flags210, align 4
  %and211 = and i32 %177, 16384
  %tobool212 = icmp ne i32 %and211, 0
  br i1 %tobool212, label %if.then.213, label %if.end.237

if.then.213:                                      ; preds = %if.end.207
  %178 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %cmp214 = icmp ne %struct.sv* %178, @PL_sv_undef
  br i1 %cmp214, label %if.then.216, label %if.end.235

if.then.216:                                      ; preds = %if.then.213
  %179 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any217 = getelementptr inbounds %struct.av, %struct.av* %179, i32 0, i32 0
  %180 = load %struct.xpvav*, %struct.xpvav** %sv_any217, align 8
  %181 = bitcast %struct.xpvav* %180 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %181, i32 0, i32 5
  %182 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  store %struct.magic* %182, %struct.magic** %mg, align 8
  %183 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %184 = load %struct.av*, %struct.av** %av.addr, align 8
  %185 = bitcast %struct.av* %184 to %struct.sv*
  %186 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_type = getelementptr inbounds %struct.magic, %struct.magic* %186, i32 0, i32 3
  %187 = load i8, i8* %mg_type, align 1
  %conv218 = sext i8 %187 to i32
  %cmp219 = icmp sge i32 %conv218, 65
  br i1 %cmp219, label %land.lhs.true.221, label %cond.false.230

land.lhs.true.221:                                ; preds = %if.then.216
  %188 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_type222 = getelementptr inbounds %struct.magic, %struct.magic* %188, i32 0, i32 3
  %189 = load i8, i8* %mg_type222, align 1
  %conv223 = sext i8 %189 to i32
  %cmp224 = icmp sle i32 %conv223, 90
  br i1 %cmp224, label %cond.true.226, label %cond.false.230

cond.true.226:                                    ; preds = %land.lhs.true.221
  %190 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_type227 = getelementptr inbounds %struct.magic, %struct.magic* %190, i32 0, i32 3
  %191 = load i8, i8* %mg_type227, align 1
  %conv228 = sext i8 %191 to i32
  %add229 = add nsw i32 %conv228, 32
  br label %cond.end.233

cond.false.230:                                   ; preds = %land.lhs.true.221, %if.then.216
  %192 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_type231 = getelementptr inbounds %struct.magic, %struct.magic* %192, i32 0, i32 3
  %193 = load i8, i8* %mg_type231, align 1
  %conv232 = sext i8 %193 to i32
  br label %cond.end.233

cond.end.233:                                     ; preds = %cond.false.230, %cond.true.226
  %cond234 = phi i32 [ %add229, %cond.true.226 ], [ %conv232, %cond.false.230 ]
  %194 = load i32, i32* %key.addr, align 4
  call void @Perl_sv_magic(%struct.sv* %183, %struct.sv* %185, i32 %cond234, i8* null, i32 %194)
  br label %if.end.235

if.end.235:                                       ; preds = %cond.end.233, %if.then.213
  %195 = load %struct.av*, %struct.av** %av.addr, align 8
  %196 = bitcast %struct.av* %195 to %struct.sv*
  %call236 = call i32 @Perl_mg_set(%struct.sv* %196)
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.235, %if.end.207
  %197 = load i32, i32* %key.addr, align 4
  %idxprom238 = sext i32 %197 to i64
  %198 = load %struct.sv**, %struct.sv*** %ary, align 8
  %arrayidx239 = getelementptr inbounds %struct.sv*, %struct.sv** %198, i64 %idxprom238
  store %struct.sv** %arrayidx239, %struct.sv*** %retval
  br label %return

return:                                           ; preds = %if.end.237, %if.then.126, %if.end.103, %if.then.95, %if.then
  %199 = load %struct.sv**, %struct.sv*** %retval
  ret %struct.sv** %199
}

declare void @Perl_croak(i8*, ...) #1

declare void @Perl_sv_free(%struct.sv*) #1

declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #1

declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define %struct.av* @Perl_newAV() #0 {
entry:
  %av = alloca %struct.av*, align 8
  %call = call %struct.sv* @Perl_newSV(i64 0)
  %0 = bitcast %struct.sv* %call to %struct.av*
  store %struct.av* %0, %struct.av** %av, align 8
  %1 = load %struct.av*, %struct.av** %av, align 8
  %2 = bitcast %struct.av* %1 to %struct.sv*
  %call1 = call signext i8 @Perl_sv_upgrade(%struct.sv* %2, i32 10)
  %3 = load %struct.av*, %struct.av** %av, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %3, i32 0, i32 0
  %4 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %4, i32 0, i32 9
  %5 = load i8, i8* %xav_flags, align 1
  %conv = zext i8 %5 to i32
  %or = or i32 %conv, 1
  %conv2 = trunc i32 %or to i8
  store i8 %conv2, i8* %xav_flags, align 1
  %6 = load %struct.av*, %struct.av** %av, align 8
  %sv_any3 = getelementptr inbounds %struct.av, %struct.av* %6, i32 0, i32 0
  %7 = load %struct.xpvav*, %struct.xpvav** %sv_any3, align 8
  %xav_alloc = getelementptr inbounds %struct.xpvav, %struct.xpvav* %7, i32 0, i32 7
  store %struct.sv** null, %struct.sv*** %xav_alloc, align 8
  %8 = load %struct.av*, %struct.av** %av, align 8
  %sv_any4 = getelementptr inbounds %struct.av, %struct.av* %8, i32 0, i32 0
  %9 = load %struct.xpvav*, %struct.xpvav** %sv_any4, align 8
  %10 = bitcast %struct.xpvav* %9 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %10, i32 0, i32 0
  store i8* null, i8** %xpv_pv, align 8
  %11 = load %struct.av*, %struct.av** %av, align 8
  %sv_any5 = getelementptr inbounds %struct.av, %struct.av* %11, i32 0, i32 0
  %12 = load %struct.xpvav*, %struct.xpvav** %sv_any5, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %12, i32 0, i32 1
  store i64 -1, i64* %xav_fill, align 8
  %13 = load %struct.av*, %struct.av** %av, align 8
  %sv_any6 = getelementptr inbounds %struct.av, %struct.av* %13, i32 0, i32 0
  %14 = load %struct.xpvav*, %struct.xpvav** %sv_any6, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %14, i32 0, i32 2
  store i64 -1, i64* %xav_max, align 8
  %15 = load %struct.av*, %struct.av** %av, align 8
  ret %struct.av* %15
}

; Function Attrs: nounwind uwtable
define %struct.av* @Perl_av_make(i32 %size, %struct.sv** %strp) #0 {
entry:
  %size.addr = alloca i32, align 4
  %strp.addr = alloca %struct.sv**, align 8
  %av = alloca %struct.av*, align 8
  %i = alloca i32, align 4
  %ary = alloca %struct.sv**, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.sv** %strp, %struct.sv*** %strp.addr, align 8
  %call = call %struct.sv* @Perl_newSV(i64 0)
  %0 = bitcast %struct.sv* %call to %struct.av*
  store %struct.av* %0, %struct.av** %av, align 8
  %1 = load %struct.av*, %struct.av** %av, align 8
  %2 = bitcast %struct.av* %1 to %struct.sv*
  %call1 = call signext i8 @Perl_sv_upgrade(%struct.sv* %2, i32 10)
  %3 = load %struct.av*, %struct.av** %av, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %3, i32 0, i32 0
  %4 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %4, i32 0, i32 9
  store i8 1, i8* %xav_flags, align 1
  %5 = load i32, i32* %size.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 %conv, 8
  %call2 = call i8* @Perl_safesysmalloc(i64 %mul)
  %7 = bitcast i8* %call2 to %struct.sv**
  store %struct.sv** %7, %struct.sv*** %ary, align 8
  %8 = load %struct.sv**, %struct.sv*** %ary, align 8
  %9 = load %struct.av*, %struct.av** %av, align 8
  %sv_any3 = getelementptr inbounds %struct.av, %struct.av* %9, i32 0, i32 0
  %10 = load %struct.xpvav*, %struct.xpvav** %sv_any3, align 8
  %xav_alloc = getelementptr inbounds %struct.xpvav, %struct.xpvav* %10, i32 0, i32 7
  store %struct.sv** %8, %struct.sv*** %xav_alloc, align 8
  %11 = load %struct.sv**, %struct.sv*** %ary, align 8
  %12 = bitcast %struct.sv** %11 to i8*
  %13 = load %struct.av*, %struct.av** %av, align 8
  %sv_any4 = getelementptr inbounds %struct.av, %struct.av* %13, i32 0, i32 0
  %14 = load %struct.xpvav*, %struct.xpvav** %sv_any4, align 8
  %15 = bitcast %struct.xpvav* %14 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %15, i32 0, i32 0
  store i8* %12, i8** %xpv_pv, align 8
  %16 = load i32, i32* %size.addr, align 4
  %sub = sub nsw i32 %16, 1
  %conv5 = sext i32 %sub to i64
  %17 = load %struct.av*, %struct.av** %av, align 8
  %sv_any6 = getelementptr inbounds %struct.av, %struct.av* %17, i32 0, i32 0
  %18 = load %struct.xpvav*, %struct.xpvav** %sv_any6, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %18, i32 0, i32 1
  store i64 %conv5, i64* %xav_fill, align 8
  %19 = load i32, i32* %size.addr, align 4
  %sub7 = sub nsw i32 %19, 1
  %conv8 = sext i32 %sub7 to i64
  %20 = load %struct.av*, %struct.av** %av, align 8
  %sv_any9 = getelementptr inbounds %struct.av, %struct.av* %20, i32 0, i32 0
  %21 = load %struct.xpvav*, %struct.xpvav** %sv_any9, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %21, i32 0, i32 2
  store i64 %conv8, i64* %xav_max, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %22, %23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call11 = call %struct.sv* @Perl_newSV(i64 0)
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.sv**, %struct.sv*** %ary, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idxprom
  store %struct.sv* %call11, %struct.sv** %arrayidx, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %26 to i64
  %27 = load %struct.sv**, %struct.sv*** %ary, align 8
  %arrayidx13 = getelementptr inbounds %struct.sv*, %struct.sv** %27, i64 %idxprom12
  %28 = load %struct.sv*, %struct.sv** %arrayidx13, align 8
  %29 = load %struct.sv**, %struct.sv*** %strp.addr, align 8
  %30 = load %struct.sv*, %struct.sv** %29, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %28, %struct.sv* %30, i32 2)
  %31 = load %struct.sv**, %struct.sv*** %strp.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %31, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %strp.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %33 = load %struct.av*, %struct.av** %av, align 8
  ret %struct.av* %33
}

declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: nounwind uwtable
define %struct.av* @Perl_av_fake(i32 %size, %struct.sv** %strp) #0 {
entry:
  %size.addr = alloca i32, align 4
  %strp.addr = alloca %struct.sv**, align 8
  %av = alloca %struct.av*, align 8
  %ary = alloca %struct.sv**, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.sv** %strp, %struct.sv*** %strp.addr, align 8
  %call = call %struct.sv* @Perl_newSV(i64 0)
  %0 = bitcast %struct.sv* %call to %struct.av*
  store %struct.av* %0, %struct.av** %av, align 8
  %1 = load %struct.av*, %struct.av** %av, align 8
  %2 = bitcast %struct.av* %1 to %struct.sv*
  %call1 = call signext i8 @Perl_sv_upgrade(%struct.sv* %2, i32 10)
  %3 = load i32, i32* %size.addr, align 4
  %add = add nsw i32 %3, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call2 = call i8* @Perl_safesysmalloc(i64 %mul)
  %4 = bitcast i8* %call2 to %struct.sv**
  store %struct.sv** %4, %struct.sv*** %ary, align 8
  %5 = load %struct.sv**, %struct.sv*** %ary, align 8
  %6 = load %struct.av*, %struct.av** %av, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %6, i32 0, i32 0
  %7 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_alloc = getelementptr inbounds %struct.xpvav, %struct.xpvav* %7, i32 0, i32 7
  store %struct.sv** %5, %struct.sv*** %xav_alloc, align 8
  %8 = load %struct.sv**, %struct.sv*** %ary, align 8
  %9 = bitcast %struct.sv** %8 to i8*
  %10 = load %struct.sv**, %struct.sv*** %strp.addr, align 8
  %11 = bitcast %struct.sv** %10 to i8*
  %12 = load i32, i32* %size.addr, align 4
  %conv3 = sext i32 %12 to i64
  %mul4 = mul i64 %conv3, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %11, i64 %mul4, i32 1, i1 false)
  %13 = load %struct.av*, %struct.av** %av, align 8
  %sv_any5 = getelementptr inbounds %struct.av, %struct.av* %13, i32 0, i32 0
  %14 = load %struct.xpvav*, %struct.xpvav** %sv_any5, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %14, i32 0, i32 9
  store i8 2, i8* %xav_flags, align 1
  %15 = load %struct.sv**, %struct.sv*** %ary, align 8
  %16 = bitcast %struct.sv** %15 to i8*
  %17 = load %struct.av*, %struct.av** %av, align 8
  %sv_any6 = getelementptr inbounds %struct.av, %struct.av* %17, i32 0, i32 0
  %18 = load %struct.xpvav*, %struct.xpvav** %sv_any6, align 8
  %19 = bitcast %struct.xpvav* %18 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %19, i32 0, i32 0
  store i8* %16, i8** %xpv_pv, align 8
  %20 = load i32, i32* %size.addr, align 4
  %sub = sub nsw i32 %20, 1
  %conv7 = sext i32 %sub to i64
  %21 = load %struct.av*, %struct.av** %av, align 8
  %sv_any8 = getelementptr inbounds %struct.av, %struct.av* %21, i32 0, i32 0
  %22 = load %struct.xpvav*, %struct.xpvav** %sv_any8, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %22, i32 0, i32 1
  store i64 %conv7, i64* %xav_fill, align 8
  %23 = load i32, i32* %size.addr, align 4
  %sub9 = sub nsw i32 %23, 1
  %conv10 = sext i32 %sub9 to i64
  %24 = load %struct.av*, %struct.av** %av, align 8
  %sv_any11 = getelementptr inbounds %struct.av, %struct.av* %24, i32 0, i32 0
  %25 = load %struct.xpvav*, %struct.xpvav** %sv_any11, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %25, i32 0, i32 2
  store i64 %conv10, i64* %xav_max, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %26 = load i32, i32* %size.addr, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %size.addr, align 4
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load %struct.sv**, %struct.sv*** %strp.addr, align 8
  %28 = load %struct.sv*, %struct.sv** %27, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %28, i32 0, i32 2
  %29 = load i32, i32* %sv_flags, align 4
  %and = and i32 %29, -2049
  store i32 %and, i32* %sv_flags, align 4
  %30 = load %struct.sv**, %struct.sv*** %strp.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %30, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %strp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %31 = load %struct.av*, %struct.av** %av, align 8
  ret %struct.av* %31
}

; Function Attrs: nounwind uwtable
define void @Perl_av_clear(%struct.av* %av) #0 {
entry:
  %av.addr = alloca %struct.av*, align 8
  %key = alloca i32, align 4
  %ary = alloca %struct.sv**, align 8
  %sv = alloca %struct.sv*, align 8
  store %struct.av* %av, %struct.av** %av.addr, align 8
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %tobool = icmp ne %struct.av* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_flags = getelementptr inbounds %struct.av, %struct.av* %1, i32 0, i32 2
  %2 = load i32, i32* %sv_flags, align 4
  %and = and i32 %2, 8388608
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_modify, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %3 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_flags4 = getelementptr inbounds %struct.av, %struct.av* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags4, align 4
  %and5 = and i32 %4, 32768
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.3
  %5 = load %struct.av*, %struct.av** %av.addr, align 8
  %6 = bitcast %struct.av* %5 to %struct.sv*
  %call = call i32 @Perl_mg_clear(%struct.sv* %6)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.3
  %7 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %7, i32 0, i32 0
  %8 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %8, i32 0, i32 2
  %9 = load i64, i64* %xav_max, align 8
  %cmp = icmp slt i64 %9, 0
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.8
  br label %return

if.end.10:                                        ; preds = %if.end.8
  %10 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any11 = getelementptr inbounds %struct.av, %struct.av* %10, i32 0, i32 0
  %11 = load %struct.xpvav*, %struct.xpvav** %sv_any11, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %11, i32 0, i32 9
  %12 = load i8, i8* %xav_flags, align 1
  %conv = zext i8 %12 to i32
  %and12 = and i32 %conv, 1
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %if.end.10
  %13 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any15 = getelementptr inbounds %struct.av, %struct.av* %13, i32 0, i32 0
  %14 = load %struct.xpvav*, %struct.xpvav** %sv_any15, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %14, i32 0, i32 0
  %15 = load i8*, i8** %xav_array, align 8
  %16 = bitcast i8* %15 to %struct.sv**
  store %struct.sv** %16, %struct.sv*** %ary, align 8
  %17 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any16 = getelementptr inbounds %struct.av, %struct.av* %17, i32 0, i32 0
  %18 = load %struct.xpvav*, %struct.xpvav** %sv_any16, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %18, i32 0, i32 1
  %19 = load i64, i64* %xav_fill, align 8
  %add = add nsw i64 %19, 1
  %conv17 = trunc i64 %add to i32
  store i32 %conv17, i32* %key, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.14
  %20 = load i32, i32* %key, align 4
  %tobool18 = icmp ne i32 %20, 0
  br i1 %tobool18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %key, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %key, align 4
  %idxprom = sext i32 %dec to i64
  %22 = load %struct.sv**, %struct.sv*** %ary, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %22, i64 %idxprom
  %23 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %23, %struct.sv** %sv, align 8
  %24 = load i32, i32* %key, align 4
  %idxprom19 = sext i32 %24 to i64
  %25 = load %struct.sv**, %struct.sv*** %ary, align 8
  %arrayidx20 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idxprom19
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx20, align 8
  %26 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_free(%struct.sv* %26)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.21

if.end.21:                                        ; preds = %while.end, %if.end.10
  %27 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any22 = getelementptr inbounds %struct.av, %struct.av* %27, i32 0, i32 0
  %28 = load %struct.xpvav*, %struct.xpvav** %sv_any22, align 8
  %xav_array23 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %28, i32 0, i32 0
  %29 = load i8*, i8** %xav_array23, align 8
  %30 = bitcast i8* %29 to %struct.sv**
  %31 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any24 = getelementptr inbounds %struct.av, %struct.av* %31, i32 0, i32 0
  %32 = load %struct.xpvav*, %struct.xpvav** %sv_any24, align 8
  %xav_alloc = getelementptr inbounds %struct.xpvav, %struct.xpvav* %32, i32 0, i32 7
  %33 = load %struct.sv**, %struct.sv*** %xav_alloc, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %30 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %33 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv25 = trunc i64 %sub.ptr.div to i32
  store i32 %conv25, i32* %key, align 4
  %tobool26 = icmp ne i32 %conv25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.35

if.then.27:                                       ; preds = %if.end.21
  %34 = load i32, i32* %key, align 4
  %conv28 = sext i32 %34 to i64
  %35 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any29 = getelementptr inbounds %struct.av, %struct.av* %35, i32 0, i32 0
  %36 = load %struct.xpvav*, %struct.xpvav** %sv_any29, align 8
  %xav_max30 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %36, i32 0, i32 2
  %37 = load i64, i64* %xav_max30, align 8
  %add31 = add nsw i64 %37, %conv28
  store i64 %add31, i64* %xav_max30, align 8
  %38 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any32 = getelementptr inbounds %struct.av, %struct.av* %38, i32 0, i32 0
  %39 = load %struct.xpvav*, %struct.xpvav** %sv_any32, align 8
  %xav_alloc33 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %39, i32 0, i32 7
  %40 = load %struct.sv**, %struct.sv*** %xav_alloc33, align 8
  %41 = bitcast %struct.sv** %40 to i8*
  %42 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any34 = getelementptr inbounds %struct.av, %struct.av* %42, i32 0, i32 0
  %43 = load %struct.xpvav*, %struct.xpvav** %sv_any34, align 8
  %44 = bitcast %struct.xpvav* %43 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %44, i32 0, i32 0
  store i8* %41, i8** %xpv_pv, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.27, %if.end.21
  %45 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any36 = getelementptr inbounds %struct.av, %struct.av* %45, i32 0, i32 0
  %46 = load %struct.xpvav*, %struct.xpvav** %sv_any36, align 8
  %xav_fill37 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %46, i32 0, i32 1
  store i64 -1, i64* %xav_fill37, align 8
  br label %return

return:                                           ; preds = %if.end.35, %if.then.9, %if.then
  ret void
}

declare i32 @Perl_mg_clear(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @Perl_av_undef(%struct.av* %av) #0 {
entry:
  %av.addr = alloca %struct.av*, align 8
  %key = alloca i32, align 4
  store %struct.av* %av, %struct.av** %av.addr, align 8
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %tobool = icmp ne %struct.av* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.27

if.end:                                           ; preds = %entry
  %1 = load %struct.av*, %struct.av** %av.addr, align 8
  %2 = bitcast %struct.av* %1 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags, align 4
  %and = and i32 %3, 32768
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load %struct.av*, %struct.av** %av.addr, align 8
  %5 = bitcast %struct.av* %4 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %5, i32 80)
  %tobool2 = icmp ne %struct.magic* %call, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

cond.false:                                       ; preds = %if.end
  br i1 false, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %cond.false, %cond.true
  %6 = load %struct.av*, %struct.av** %av.addr, align 8
  call void @Perl_av_fill(%struct.av* %6, i32 -1)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %cond.false, %cond.true
  %7 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %7, i32 0, i32 0
  %8 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %8, i32 0, i32 9
  %9 = load i8, i8* %xav_flags, align 1
  %conv = zext i8 %9 to i32
  %and5 = and i32 %conv, 1
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end.4
  %10 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any8 = getelementptr inbounds %struct.av, %struct.av* %10, i32 0, i32 0
  %11 = load %struct.xpvav*, %struct.xpvav** %sv_any8, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %11, i32 0, i32 1
  %12 = load i64, i64* %xav_fill, align 8
  %add = add nsw i64 %12, 1
  %conv9 = trunc i64 %add to i32
  store i32 %conv9, i32* %key, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.7
  %13 = load i32, i32* %key, align 4
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* %key, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %key, align 4
  %idxprom = sext i32 %dec to i64
  %15 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any11 = getelementptr inbounds %struct.av, %struct.av* %15, i32 0, i32 0
  %16 = load %struct.xpvav*, %struct.xpvav** %sv_any11, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %16, i32 0, i32 0
  %17 = load i8*, i8** %xav_array, align 8
  %18 = bitcast i8* %17 to %struct.sv**
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %18, i64 %idxprom
  %19 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  call void @Perl_sv_free(%struct.sv* %19)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.12

if.end.12:                                        ; preds = %while.end, %if.end.4
  %20 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any13 = getelementptr inbounds %struct.av, %struct.av* %20, i32 0, i32 0
  %21 = load %struct.xpvav*, %struct.xpvav** %sv_any13, align 8
  %xav_alloc = getelementptr inbounds %struct.xpvav, %struct.xpvav* %21, i32 0, i32 7
  %22 = load %struct.sv**, %struct.sv*** %xav_alloc, align 8
  %23 = bitcast %struct.sv** %22 to i8*
  call void @Perl_safesysfree(i8* %23)
  %24 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any14 = getelementptr inbounds %struct.av, %struct.av* %24, i32 0, i32 0
  %25 = load %struct.xpvav*, %struct.xpvav** %sv_any14, align 8
  %xav_alloc15 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %25, i32 0, i32 7
  store %struct.sv** null, %struct.sv*** %xav_alloc15, align 8
  %26 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any16 = getelementptr inbounds %struct.av, %struct.av* %26, i32 0, i32 0
  %27 = load %struct.xpvav*, %struct.xpvav** %sv_any16, align 8
  %28 = bitcast %struct.xpvav* %27 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %28, i32 0, i32 0
  store i8* null, i8** %xpv_pv, align 8
  %29 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any17 = getelementptr inbounds %struct.av, %struct.av* %29, i32 0, i32 0
  %30 = load %struct.xpvav*, %struct.xpvav** %sv_any17, align 8
  %xav_fill18 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %30, i32 0, i32 1
  store i64 -1, i64* %xav_fill18, align 8
  %31 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any19 = getelementptr inbounds %struct.av, %struct.av* %31, i32 0, i32 0
  %32 = load %struct.xpvav*, %struct.xpvav** %sv_any19, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %32, i32 0, i32 2
  store i64 -1, i64* %xav_max, align 8
  %33 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any20 = getelementptr inbounds %struct.av, %struct.av* %33, i32 0, i32 0
  %34 = load %struct.xpvav*, %struct.xpvav** %sv_any20, align 8
  %xav_arylen = getelementptr inbounds %struct.xpvav, %struct.xpvav* %34, i32 0, i32 8
  %35 = load %struct.sv*, %struct.sv** %xav_arylen, align 8
  %tobool21 = icmp ne %struct.sv* %35, null
  br i1 %tobool21, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %if.end.12
  %36 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any23 = getelementptr inbounds %struct.av, %struct.av* %36, i32 0, i32 0
  %37 = load %struct.xpvav*, %struct.xpvav** %sv_any23, align 8
  %xav_arylen24 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %37, i32 0, i32 8
  %38 = load %struct.sv*, %struct.sv** %xav_arylen24, align 8
  call void @Perl_sv_free(%struct.sv* %38)
  %39 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any25 = getelementptr inbounds %struct.av, %struct.av* %39, i32 0, i32 0
  %40 = load %struct.xpvav*, %struct.xpvav** %sv_any25, align 8
  %xav_arylen26 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %40, i32 0, i32 8
  store %struct.sv* null, %struct.sv** %xav_arylen26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then, %if.then.22, %if.end.12
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_av_fill(%struct.av* %av, i32 %fill) #0 {
entry:
  %av.addr = alloca %struct.av*, align 8
  %fill.addr = alloca i32, align 4
  %mg = alloca %struct.magic*, align 8
  %sp = alloca %struct.sv**, align 8
  %next = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %tmp25 = alloca i32, align 4
  %sp54 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp102 = alloca %struct.av*, align 8
  %tmp104 = alloca %struct.stackinfo*, align 8
  %key = alloca i32, align 4
  %ary = alloca %struct.sv**, align 8
  store %struct.av* %av, %struct.av** %av.addr, align 8
  store i32 %fill, i32* %fill.addr, align 4
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %tobool = icmp ne %struct.av* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %fill.addr, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 -1, i32* %fill.addr, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %2 = load %struct.av*, %struct.av** %av.addr, align 8
  %3 = bitcast %struct.av* %2 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and = and i32 %4, 32768
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.2
  %5 = load %struct.av*, %struct.av** %av.addr, align 8
  %6 = bitcast %struct.av* %5 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %6, i32 80)
  br label %cond.end

cond.false:                                       ; preds = %if.end.2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.magic* [ %call, %cond.true ], [ null, %cond.false ]
  store %struct.magic* %cond, %struct.magic** %mg, align 8
  %tobool4 = icmp ne %struct.magic* %cond, null
  br i1 %tobool4, label %if.then.5, label %if.end.109

if.then.5:                                        ; preds = %cond.end
  %7 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %7, %struct.sv*** %sp, align 8
  call void @Perl_push_scope()
  call void @Perl_save_int(i32* @PL_tmps_floor)
  %8 = load i32, i32* @PL_tmps_ix, align 4
  store i32 %8, i32* @PL_tmps_floor, align 4
  %9 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %9, i32 0, i32 6
  %10 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  store %struct.stackinfo* %10, %struct.stackinfo** %next, align 8
  %11 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %tobool6 = icmp ne %struct.stackinfo* %11, null
  br i1 %tobool6, label %if.end.10, label %if.then.7

if.then.7:                                        ; preds = %if.then.5
  %call8 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call8, %struct.stackinfo** %next, align 8
  %12 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %13 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %13, i32 0, i32 5
  store %struct.stackinfo* %12, %struct.stackinfo** %si_prev, align 8
  %14 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %15 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next9 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %15, i32 0, i32 6
  store %struct.stackinfo* %14, %struct.stackinfo** %si_next9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.then.5
  %16 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %16, i32 0, i32 4
  store i32 2, i32* %si_type, align 4
  %17 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %17, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %18 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %18, i32 0, i32 0
  %19 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %19, i32 0, i32 0
  %20 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %20, i32 0, i32 1
  store i64 0, i64* %xav_fill, align 8
  %21 = load %struct.sv**, %struct.sv*** %sp, align 8
  %22 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %21 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %23 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any11 = getelementptr inbounds %struct.av, %struct.av* %23, i32 0, i32 0
  %24 = load %struct.xpvav*, %struct.xpvav** %sv_any11, align 8
  %xav_fill12 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %24, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill12, align 8
  %25 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack13 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %25, i32 0, i32 0
  %26 = load %struct.av*, %struct.av** %si_stack13, align 8
  %sv_any14 = getelementptr inbounds %struct.av, %struct.av* %26, i32 0, i32 0
  %27 = load %struct.xpvav*, %struct.xpvav** %sv_any14, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %27, i32 0, i32 0
  %28 = load i8*, i8** %xav_array, align 8
  %29 = bitcast i8* %28 to %struct.sv**
  store %struct.sv** %29, %struct.sv*** @PL_stack_base, align 8
  %30 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %31 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack15 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %31, i32 0, i32 0
  %32 = load %struct.av*, %struct.av** %si_stack15, align 8
  %sv_any16 = getelementptr inbounds %struct.av, %struct.av* %32, i32 0, i32 0
  %33 = load %struct.xpvav*, %struct.xpvav** %sv_any16, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %33, i32 0, i32 2
  %34 = load i64, i64* %xav_max, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %30, i64 %34
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8
  %35 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %36 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack17 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %36, i32 0, i32 0
  %37 = load %struct.av*, %struct.av** %si_stack17, align 8
  %sv_any18 = getelementptr inbounds %struct.av, %struct.av* %37, i32 0, i32 0
  %38 = load %struct.xpvav*, %struct.xpvav** %sv_any18, align 8
  %xav_fill19 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %38, i32 0, i32 1
  %39 = load i64, i64* %xav_fill19, align 8
  %add.ptr20 = getelementptr inbounds %struct.sv*, %struct.sv** %35, i64 %39
  store %struct.sv** %add.ptr20, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr20, %struct.sv*** %sp, align 8
  %40 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack21 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %40, i32 0, i32 0
  %41 = load %struct.av*, %struct.av** %si_stack21, align 8
  store %struct.av* %41, %struct.av** @PL_curstack, align 8
  store %struct.av* %41, %struct.av** %tmp
  %42 = load %struct.av*, %struct.av** %tmp
  %43 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  store %struct.stackinfo* %43, %struct.stackinfo** @PL_curstackinfo, align 8
  %44 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %45 = load i32*, i32** @PL_markstack_max, align 8
  %cmp22 = icmp eq i32* %incdec.ptr, %45
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.10
  call void @Perl_markstack_grow()
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.10
  %46 = load %struct.sv**, %struct.sv*** %sp, align 8
  %47 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast26 = ptrtoint %struct.sv** %46 to i64
  %sub.ptr.rhs.cast27 = ptrtoint %struct.sv** %47 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %sub.ptr.div29 = sdiv exact i64 %sub.ptr.sub28, 8
  %conv = trunc i64 %sub.ptr.div29 to i32
  %48 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv, i32* %48, align 4
  store i32 %conv, i32* %tmp25
  %49 = load i32, i32* %tmp25
  %50 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %51 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast30 = ptrtoint %struct.sv** %50 to i64
  %sub.ptr.rhs.cast31 = ptrtoint %struct.sv** %51 to i64
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  %sub.ptr.div33 = sdiv exact i64 %sub.ptr.sub32, 8
  %cmp34 = icmp slt i64 %sub.ptr.div33, 2
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.24
  %52 = load %struct.sv**, %struct.sv*** %sp, align 8
  %53 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call37 = call %struct.sv** @Perl_stack_grow(%struct.sv** %52, %struct.sv** %53, i32 2)
  store %struct.sv** %call37, %struct.sv*** %sp, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.24
  %54 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %54, i32 0, i32 5
  %55 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool39 = icmp ne %struct.sv* %55, null
  br i1 %tobool39, label %cond.true.40, label %cond.false.42

cond.true.40:                                     ; preds = %if.end.38
  %56 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj41 = getelementptr inbounds %struct.magic, %struct.magic* %56, i32 0, i32 5
  %57 = load %struct.sv*, %struct.sv** %mg_obj41, align 8
  br label %cond.end.45

cond.false.42:                                    ; preds = %if.end.38
  %58 = load %struct.av*, %struct.av** %av.addr, align 8
  %59 = bitcast %struct.av* %58 to %struct.sv*
  %call43 = call %struct.sv* @Perl_newRV(%struct.sv* %59)
  %call44 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call43)
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.42, %cond.true.40
  %cond46 = phi %struct.sv* [ %57, %cond.true.40 ], [ %call44, %cond.false.42 ]
  %60 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr47 = getelementptr inbounds %struct.sv*, %struct.sv** %60, i32 1
  store %struct.sv** %incdec.ptr47, %struct.sv*** %sp, align 8
  store %struct.sv* %cond46, %struct.sv** %incdec.ptr47, align 8
  %61 = load i32, i32* %fill.addr, align 4
  %add = add nsw i32 %61, 1
  %conv48 = sext i32 %add to i64
  %call49 = call %struct.sv* @Perl_newSViv(i64 %conv48)
  %call50 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call49)
  %62 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr51 = getelementptr inbounds %struct.sv*, %struct.sv** %62, i32 1
  store %struct.sv** %incdec.ptr51, %struct.sv*** %sp, align 8
  store %struct.sv* %call50, %struct.sv** %incdec.ptr51, align 8
  %63 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %63, %struct.sv*** @PL_stack_sp, align 8
  %call52 = call i32 @Perl_call_method(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 2)
  %64 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %64, %struct.sv*** %sp54, align 8
  %65 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev56 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %65, i32 0, i32 5
  %66 = load %struct.stackinfo*, %struct.stackinfo** %si_prev56, align 8
  store %struct.stackinfo* %66, %struct.stackinfo** %prev, align 8
  %67 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool57 = icmp ne %struct.stackinfo* %67, null
  br i1 %tobool57, label %if.end.84, label %if.then.58

if.then.58:                                       ; preds = %cond.end.45
  %68 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool59 = icmp ne %struct.gv* %68, null
  br i1 %tobool59, label %land.lhs.true, label %cond.false.79

land.lhs.true:                                    ; preds = %if.then.58
  %69 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags60 = getelementptr inbounds %struct.gv, %struct.gv* %69, i32 0, i32 2
  %70 = load i32, i32* %sv_flags60, align 4
  %and61 = and i32 %70, 255
  %cmp62 = icmp eq i32 %and61, 13
  br i1 %cmp62, label %land.lhs.true.64, label %cond.false.79

land.lhs.true.64:                                 ; preds = %land.lhs.true
  %71 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any65 = getelementptr inbounds %struct.gv, %struct.gv* %71, i32 0, i32 0
  %72 = load %struct.xpvgv*, %struct.xpvgv** %sv_any65, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %72, i32 0, i32 7
  %73 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %73, i32 0, i32 2
  %74 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool66 = icmp ne %struct.io* %74, null
  br i1 %tobool66, label %land.lhs.true.67, label %cond.false.79

land.lhs.true.67:                                 ; preds = %land.lhs.true.64
  %75 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any68 = getelementptr inbounds %struct.gv, %struct.gv* %75, i32 0, i32 0
  %76 = load %struct.xpvgv*, %struct.xpvgv** %sv_any68, align 8
  %xgv_gp69 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %76, i32 0, i32 7
  %77 = load %struct.gp*, %struct.gp** %xgv_gp69, align 8
  %gp_io70 = getelementptr inbounds %struct.gp, %struct.gp* %77, i32 0, i32 2
  %78 = load %struct.io*, %struct.io** %gp_io70, align 8
  %sv_any71 = getelementptr inbounds %struct.io, %struct.io* %78, i32 0, i32 0
  %79 = load %struct.xpvio*, %struct.xpvio** %sv_any71, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %79, i32 0, i32 8
  %80 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool72 = icmp ne %struct._PerlIO** %80, null
  br i1 %tobool72, label %cond.true.73, label %cond.false.79

cond.true.73:                                     ; preds = %land.lhs.true.67
  %81 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any74 = getelementptr inbounds %struct.gv, %struct.gv* %81, i32 0, i32 0
  %82 = load %struct.xpvgv*, %struct.xpvgv** %sv_any74, align 8
  %xgv_gp75 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %82, i32 0, i32 7
  %83 = load %struct.gp*, %struct.gp** %xgv_gp75, align 8
  %gp_io76 = getelementptr inbounds %struct.gp, %struct.gp* %83, i32 0, i32 2
  %84 = load %struct.io*, %struct.io** %gp_io76, align 8
  %sv_any77 = getelementptr inbounds %struct.io, %struct.io* %84, i32 0, i32 0
  %85 = load %struct.xpvio*, %struct.xpvio** %sv_any77, align 8
  %xio_ofp78 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %85, i32 0, i32 8
  %86 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp78, align 8
  br label %cond.end.81

cond.false.79:                                    ; preds = %land.lhs.true.67, %land.lhs.true.64, %land.lhs.true, %if.then.58
  %call80 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.79, %cond.true.73
  %cond82 = phi %struct._PerlIO** [ %86, %cond.true.73 ], [ %call80, %cond.false.79 ]
  %call83 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.84

if.end.84:                                        ; preds = %cond.end.81, %cond.end.45
  %87 = load %struct.sv**, %struct.sv*** %sp54, align 8
  %88 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast85 = ptrtoint %struct.sv** %87 to i64
  %sub.ptr.rhs.cast86 = ptrtoint %struct.sv** %88 to i64
  %sub.ptr.sub87 = sub i64 %sub.ptr.lhs.cast85, %sub.ptr.rhs.cast86
  %sub.ptr.div88 = sdiv exact i64 %sub.ptr.sub87, 8
  %89 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any89 = getelementptr inbounds %struct.av, %struct.av* %89, i32 0, i32 0
  %90 = load %struct.xpvav*, %struct.xpvav** %sv_any89, align 8
  %xav_fill90 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %90, i32 0, i32 1
  store i64 %sub.ptr.div88, i64* %xav_fill90, align 8
  %91 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack91 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %91, i32 0, i32 0
  %92 = load %struct.av*, %struct.av** %si_stack91, align 8
  %sv_any92 = getelementptr inbounds %struct.av, %struct.av* %92, i32 0, i32 0
  %93 = load %struct.xpvav*, %struct.xpvav** %sv_any92, align 8
  %xav_array93 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %93, i32 0, i32 0
  %94 = load i8*, i8** %xav_array93, align 8
  %95 = bitcast i8* %94 to %struct.sv**
  store %struct.sv** %95, %struct.sv*** @PL_stack_base, align 8
  %96 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %97 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack94 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %97, i32 0, i32 0
  %98 = load %struct.av*, %struct.av** %si_stack94, align 8
  %sv_any95 = getelementptr inbounds %struct.av, %struct.av* %98, i32 0, i32 0
  %99 = load %struct.xpvav*, %struct.xpvav** %sv_any95, align 8
  %xav_max96 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %99, i32 0, i32 2
  %100 = load i64, i64* %xav_max96, align 8
  %add.ptr97 = getelementptr inbounds %struct.sv*, %struct.sv** %96, i64 %100
  store %struct.sv** %add.ptr97, %struct.sv*** @PL_stack_max, align 8
  %101 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %102 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack98 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %102, i32 0, i32 0
  %103 = load %struct.av*, %struct.av** %si_stack98, align 8
  %sv_any99 = getelementptr inbounds %struct.av, %struct.av* %103, i32 0, i32 0
  %104 = load %struct.xpvav*, %struct.xpvav** %sv_any99, align 8
  %xav_fill100 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %104, i32 0, i32 1
  %105 = load i64, i64* %xav_fill100, align 8
  %add.ptr101 = getelementptr inbounds %struct.sv*, %struct.sv** %101, i64 %105
  store %struct.sv** %add.ptr101, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr101, %struct.sv*** %sp54, align 8
  %106 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack103 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %106, i32 0, i32 0
  %107 = load %struct.av*, %struct.av** %si_stack103, align 8
  store %struct.av* %107, %struct.av** @PL_curstack, align 8
  store %struct.av* %107, %struct.av** %tmp102
  %108 = load %struct.av*, %struct.av** %tmp102
  %109 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %109, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %109, %struct.stackinfo** %tmp104
  %110 = load %struct.stackinfo*, %struct.stackinfo** %tmp104
  %111 = load i32, i32* @PL_tmps_ix, align 4
  %112 = load i32, i32* @PL_tmps_floor, align 4
  %cmp105 = icmp sgt i32 %111, %112
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.84
  call void @Perl_free_tmps()
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %if.end.84
  call void @Perl_pop_scope()
  br label %if.end.151

if.end.109:                                       ; preds = %cond.end
  %113 = load i32, i32* %fill.addr, align 4
  %conv110 = sext i32 %113 to i64
  %114 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any111 = getelementptr inbounds %struct.av, %struct.av* %114, i32 0, i32 0
  %115 = load %struct.xpvav*, %struct.xpvav** %sv_any111, align 8
  %xav_max112 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %115, i32 0, i32 2
  %116 = load i64, i64* %xav_max112, align 8
  %cmp113 = icmp sle i64 %conv110, %116
  br i1 %cmp113, label %if.then.115, label %if.else.149

if.then.115:                                      ; preds = %if.end.109
  %117 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any117 = getelementptr inbounds %struct.av, %struct.av* %117, i32 0, i32 0
  %118 = load %struct.xpvav*, %struct.xpvav** %sv_any117, align 8
  %xav_fill118 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %118, i32 0, i32 1
  %119 = load i64, i64* %xav_fill118, align 8
  %conv119 = trunc i64 %119 to i32
  store i32 %conv119, i32* %key, align 4
  %120 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any121 = getelementptr inbounds %struct.av, %struct.av* %120, i32 0, i32 0
  %121 = load %struct.xpvav*, %struct.xpvav** %sv_any121, align 8
  %xav_array122 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %121, i32 0, i32 0
  %122 = load i8*, i8** %xav_array122, align 8
  %123 = bitcast i8* %122 to %struct.sv**
  store %struct.sv** %123, %struct.sv*** %ary, align 8
  %124 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any123 = getelementptr inbounds %struct.av, %struct.av* %124, i32 0, i32 0
  %125 = load %struct.xpvav*, %struct.xpvav** %sv_any123, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %125, i32 0, i32 9
  %126 = load i8, i8* %xav_flags, align 1
  %conv124 = zext i8 %126 to i32
  %and125 = and i32 %conv124, 1
  %tobool126 = icmp ne i32 %and125, 0
  br i1 %tobool126, label %if.then.127, label %if.else

if.then.127:                                      ; preds = %if.then.115
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.127
  %127 = load i32, i32* %key, align 4
  %128 = load i32, i32* %fill.addr, align 4
  %cmp128 = icmp sgt i32 %127, %128
  br i1 %cmp128, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %129 = load i32, i32* %key, align 4
  %idxprom = sext i32 %129 to i64
  %130 = load %struct.sv**, %struct.sv*** %ary, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %130, i64 %idxprom
  %131 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  call void @Perl_sv_free(%struct.sv* %131)
  %132 = load i32, i32* %key, align 4
  %dec = add nsw i32 %132, -1
  store i32 %dec, i32* %key, align 4
  %idxprom130 = sext i32 %132 to i64
  %133 = load %struct.sv**, %struct.sv*** %ary, align 8
  %arrayidx131 = getelementptr inbounds %struct.sv*, %struct.sv** %133, i64 %idxprom130
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx131, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.139

if.else:                                          ; preds = %if.then.115
  br label %while.cond.132

while.cond.132:                                   ; preds = %while.body.135, %if.else
  %134 = load i32, i32* %key, align 4
  %135 = load i32, i32* %fill.addr, align 4
  %cmp133 = icmp slt i32 %134, %135
  br i1 %cmp133, label %while.body.135, label %while.end.138

while.body.135:                                   ; preds = %while.cond.132
  %136 = load i32, i32* %key, align 4
  %inc = add nsw i32 %136, 1
  store i32 %inc, i32* %key, align 4
  %idxprom136 = sext i32 %inc to i64
  %137 = load %struct.sv**, %struct.sv*** %ary, align 8
  %arrayidx137 = getelementptr inbounds %struct.sv*, %struct.sv** %137, i64 %idxprom136
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx137, align 8
  br label %while.cond.132

while.end.138:                                    ; preds = %while.cond.132
  br label %if.end.139

if.end.139:                                       ; preds = %while.end.138, %while.end
  %138 = load i32, i32* %fill.addr, align 4
  %conv140 = sext i32 %138 to i64
  %139 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any141 = getelementptr inbounds %struct.av, %struct.av* %139, i32 0, i32 0
  %140 = load %struct.xpvav*, %struct.xpvav** %sv_any141, align 8
  %xav_fill142 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %140, i32 0, i32 1
  store i64 %conv140, i64* %xav_fill142, align 8
  %141 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_flags143 = getelementptr inbounds %struct.av, %struct.av* %141, i32 0, i32 2
  %142 = load i32, i32* %sv_flags143, align 4
  %and144 = and i32 %142, 16384
  %tobool145 = icmp ne i32 %and144, 0
  br i1 %tobool145, label %if.then.146, label %if.end.148

if.then.146:                                      ; preds = %if.end.139
  %143 = load %struct.av*, %struct.av** %av.addr, align 8
  %144 = bitcast %struct.av* %143 to %struct.sv*
  %call147 = call i32 @Perl_mg_set(%struct.sv* %144)
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.146, %if.end.139
  br label %if.end.151

if.else.149:                                      ; preds = %if.end.109
  %145 = load %struct.av*, %struct.av** %av.addr, align 8
  %146 = load i32, i32* %fill.addr, align 4
  %call150 = call %struct.sv** @Perl_av_store(%struct.av* %145, i32 %146, %struct.sv* @PL_sv_undef)
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.108, %if.else.149, %if.end.148
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_av_push(%struct.av* %av, %struct.sv* %val) #0 {
entry:
  %av.addr = alloca %struct.av*, align 8
  %val.addr = alloca %struct.sv*, align 8
  %mg = alloca %struct.magic*, align 8
  %sp = alloca %struct.sv**, align 8
  %next = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %tmp27 = alloca i32, align 4
  %sp53 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp101 = alloca %struct.av*, align 8
  %tmp103 = alloca %struct.stackinfo*, align 8
  store %struct.av* %av, %struct.av** %av.addr, align 8
  store %struct.sv* %val, %struct.sv** %val.addr, align 8
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %tobool = icmp ne %struct.av* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_flags = getelementptr inbounds %struct.av, %struct.av* %1, i32 0, i32 2
  %2 = load i32, i32* %sv_flags, align 4
  %and = and i32 %2, 8388608
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_modify, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %3 = load %struct.av*, %struct.av** %av.addr, align 8
  %4 = bitcast %struct.av* %3 to %struct.sv*
  %sv_flags4 = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags4, align 4
  %and5 = and i32 %5, 32768
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.3
  %6 = load %struct.av*, %struct.av** %av.addr, align 8
  %7 = bitcast %struct.av* %6 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %7, i32 80)
  br label %cond.end

cond.false:                                       ; preds = %if.end.3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.magic* [ %call, %cond.true ], [ null, %cond.false ]
  store %struct.magic* %cond, %struct.magic** %mg, align 8
  %tobool7 = icmp ne %struct.magic* %cond, null
  br i1 %tobool7, label %if.then.8, label %if.end.104

if.then.8:                                        ; preds = %cond.end
  %8 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %8, %struct.sv*** %sp, align 8
  %9 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %9, i32 0, i32 6
  %10 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  store %struct.stackinfo* %10, %struct.stackinfo** %next, align 8
  %11 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %tobool9 = icmp ne %struct.stackinfo* %11, null
  br i1 %tobool9, label %if.end.13, label %if.then.10

if.then.10:                                       ; preds = %if.then.8
  %call11 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call11, %struct.stackinfo** %next, align 8
  %12 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %13 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %13, i32 0, i32 5
  store %struct.stackinfo* %12, %struct.stackinfo** %si_prev, align 8
  %14 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %15 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next12 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %15, i32 0, i32 6
  store %struct.stackinfo* %14, %struct.stackinfo** %si_next12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.then.8
  %16 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %16, i32 0, i32 4
  store i32 2, i32* %si_type, align 4
  %17 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %17, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %18 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %18, i32 0, i32 0
  %19 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %19, i32 0, i32 0
  %20 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %20, i32 0, i32 1
  store i64 0, i64* %xav_fill, align 8
  %21 = load %struct.sv**, %struct.sv*** %sp, align 8
  %22 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %21 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %23 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any14 = getelementptr inbounds %struct.av, %struct.av* %23, i32 0, i32 0
  %24 = load %struct.xpvav*, %struct.xpvav** %sv_any14, align 8
  %xav_fill15 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %24, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill15, align 8
  %25 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack16 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %25, i32 0, i32 0
  %26 = load %struct.av*, %struct.av** %si_stack16, align 8
  %sv_any17 = getelementptr inbounds %struct.av, %struct.av* %26, i32 0, i32 0
  %27 = load %struct.xpvav*, %struct.xpvav** %sv_any17, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %27, i32 0, i32 0
  %28 = load i8*, i8** %xav_array, align 8
  %29 = bitcast i8* %28 to %struct.sv**
  store %struct.sv** %29, %struct.sv*** @PL_stack_base, align 8
  %30 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %31 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack18 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %31, i32 0, i32 0
  %32 = load %struct.av*, %struct.av** %si_stack18, align 8
  %sv_any19 = getelementptr inbounds %struct.av, %struct.av* %32, i32 0, i32 0
  %33 = load %struct.xpvav*, %struct.xpvav** %sv_any19, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %33, i32 0, i32 2
  %34 = load i64, i64* %xav_max, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %30, i64 %34
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8
  %35 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %36 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack20 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %36, i32 0, i32 0
  %37 = load %struct.av*, %struct.av** %si_stack20, align 8
  %sv_any21 = getelementptr inbounds %struct.av, %struct.av* %37, i32 0, i32 0
  %38 = load %struct.xpvav*, %struct.xpvav** %sv_any21, align 8
  %xav_fill22 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %38, i32 0, i32 1
  %39 = load i64, i64* %xav_fill22, align 8
  %add.ptr23 = getelementptr inbounds %struct.sv*, %struct.sv** %35, i64 %39
  store %struct.sv** %add.ptr23, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr23, %struct.sv*** %sp, align 8
  %40 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack24 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %40, i32 0, i32 0
  %41 = load %struct.av*, %struct.av** %si_stack24, align 8
  store %struct.av* %41, %struct.av** @PL_curstack, align 8
  store %struct.av* %41, %struct.av** %tmp
  %42 = load %struct.av*, %struct.av** %tmp
  %43 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  store %struct.stackinfo* %43, %struct.stackinfo** @PL_curstackinfo, align 8
  %44 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %45 = load i32*, i32** @PL_markstack_max, align 8
  %cmp = icmp eq i32* %incdec.ptr, %45
  br i1 %cmp, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.13
  call void @Perl_markstack_grow()
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.13
  %46 = load %struct.sv**, %struct.sv*** %sp, align 8
  %47 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast28 = ptrtoint %struct.sv** %46 to i64
  %sub.ptr.rhs.cast29 = ptrtoint %struct.sv** %47 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %sub.ptr.div31 = sdiv exact i64 %sub.ptr.sub30, 8
  %conv = trunc i64 %sub.ptr.div31 to i32
  %48 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv, i32* %48, align 4
  store i32 %conv, i32* %tmp27
  %49 = load i32, i32* %tmp27
  %50 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %51 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast32 = ptrtoint %struct.sv** %50 to i64
  %sub.ptr.rhs.cast33 = ptrtoint %struct.sv** %51 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %sub.ptr.div35 = sdiv exact i64 %sub.ptr.sub34, 8
  %cmp36 = icmp slt i64 %sub.ptr.div35, 2
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.26
  %52 = load %struct.sv**, %struct.sv*** %sp, align 8
  %53 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call39 = call %struct.sv** @Perl_stack_grow(%struct.sv** %52, %struct.sv** %53, i32 2)
  store %struct.sv** %call39, %struct.sv*** %sp, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.26
  %54 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %54, i32 0, i32 5
  %55 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool41 = icmp ne %struct.sv* %55, null
  br i1 %tobool41, label %cond.true.42, label %cond.false.44

cond.true.42:                                     ; preds = %if.end.40
  %56 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj43 = getelementptr inbounds %struct.magic, %struct.magic* %56, i32 0, i32 5
  %57 = load %struct.sv*, %struct.sv** %mg_obj43, align 8
  br label %cond.end.47

cond.false.44:                                    ; preds = %if.end.40
  %58 = load %struct.av*, %struct.av** %av.addr, align 8
  %59 = bitcast %struct.av* %58 to %struct.sv*
  %call45 = call %struct.sv* @Perl_newRV(%struct.sv* %59)
  %call46 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call45)
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.44, %cond.true.42
  %cond48 = phi %struct.sv* [ %57, %cond.true.42 ], [ %call46, %cond.false.44 ]
  %60 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr49 = getelementptr inbounds %struct.sv*, %struct.sv** %60, i32 1
  store %struct.sv** %incdec.ptr49, %struct.sv*** %sp, align 8
  store %struct.sv* %cond48, %struct.sv** %incdec.ptr49, align 8
  %61 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %62 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr50 = getelementptr inbounds %struct.sv*, %struct.sv** %62, i32 1
  store %struct.sv** %incdec.ptr50, %struct.sv*** %sp, align 8
  store %struct.sv* %61, %struct.sv** %incdec.ptr50, align 8
  %63 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %63, %struct.sv*** @PL_stack_sp, align 8
  call void @Perl_push_scope()
  %call51 = call i32 @Perl_call_method(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 2)
  call void @Perl_pop_scope()
  %64 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %64, %struct.sv*** %sp53, align 8
  %65 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev55 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %65, i32 0, i32 5
  %66 = load %struct.stackinfo*, %struct.stackinfo** %si_prev55, align 8
  store %struct.stackinfo* %66, %struct.stackinfo** %prev, align 8
  %67 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool56 = icmp ne %struct.stackinfo* %67, null
  br i1 %tobool56, label %if.end.83, label %if.then.57

if.then.57:                                       ; preds = %cond.end.47
  %68 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool58 = icmp ne %struct.gv* %68, null
  br i1 %tobool58, label %land.lhs.true, label %cond.false.78

land.lhs.true:                                    ; preds = %if.then.57
  %69 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags59 = getelementptr inbounds %struct.gv, %struct.gv* %69, i32 0, i32 2
  %70 = load i32, i32* %sv_flags59, align 4
  %and60 = and i32 %70, 255
  %cmp61 = icmp eq i32 %and60, 13
  br i1 %cmp61, label %land.lhs.true.63, label %cond.false.78

land.lhs.true.63:                                 ; preds = %land.lhs.true
  %71 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any64 = getelementptr inbounds %struct.gv, %struct.gv* %71, i32 0, i32 0
  %72 = load %struct.xpvgv*, %struct.xpvgv** %sv_any64, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %72, i32 0, i32 7
  %73 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %73, i32 0, i32 2
  %74 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool65 = icmp ne %struct.io* %74, null
  br i1 %tobool65, label %land.lhs.true.66, label %cond.false.78

land.lhs.true.66:                                 ; preds = %land.lhs.true.63
  %75 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any67 = getelementptr inbounds %struct.gv, %struct.gv* %75, i32 0, i32 0
  %76 = load %struct.xpvgv*, %struct.xpvgv** %sv_any67, align 8
  %xgv_gp68 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %76, i32 0, i32 7
  %77 = load %struct.gp*, %struct.gp** %xgv_gp68, align 8
  %gp_io69 = getelementptr inbounds %struct.gp, %struct.gp* %77, i32 0, i32 2
  %78 = load %struct.io*, %struct.io** %gp_io69, align 8
  %sv_any70 = getelementptr inbounds %struct.io, %struct.io* %78, i32 0, i32 0
  %79 = load %struct.xpvio*, %struct.xpvio** %sv_any70, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %79, i32 0, i32 8
  %80 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool71 = icmp ne %struct._PerlIO** %80, null
  br i1 %tobool71, label %cond.true.72, label %cond.false.78

cond.true.72:                                     ; preds = %land.lhs.true.66
  %81 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any73 = getelementptr inbounds %struct.gv, %struct.gv* %81, i32 0, i32 0
  %82 = load %struct.xpvgv*, %struct.xpvgv** %sv_any73, align 8
  %xgv_gp74 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %82, i32 0, i32 7
  %83 = load %struct.gp*, %struct.gp** %xgv_gp74, align 8
  %gp_io75 = getelementptr inbounds %struct.gp, %struct.gp* %83, i32 0, i32 2
  %84 = load %struct.io*, %struct.io** %gp_io75, align 8
  %sv_any76 = getelementptr inbounds %struct.io, %struct.io* %84, i32 0, i32 0
  %85 = load %struct.xpvio*, %struct.xpvio** %sv_any76, align 8
  %xio_ofp77 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %85, i32 0, i32 8
  %86 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp77, align 8
  br label %cond.end.80

cond.false.78:                                    ; preds = %land.lhs.true.66, %land.lhs.true.63, %land.lhs.true, %if.then.57
  %call79 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.78, %cond.true.72
  %cond81 = phi %struct._PerlIO** [ %86, %cond.true.72 ], [ %call79, %cond.false.78 ]
  %call82 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.83

if.end.83:                                        ; preds = %cond.end.80, %cond.end.47
  %87 = load %struct.sv**, %struct.sv*** %sp53, align 8
  %88 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast84 = ptrtoint %struct.sv** %87 to i64
  %sub.ptr.rhs.cast85 = ptrtoint %struct.sv** %88 to i64
  %sub.ptr.sub86 = sub i64 %sub.ptr.lhs.cast84, %sub.ptr.rhs.cast85
  %sub.ptr.div87 = sdiv exact i64 %sub.ptr.sub86, 8
  %89 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any88 = getelementptr inbounds %struct.av, %struct.av* %89, i32 0, i32 0
  %90 = load %struct.xpvav*, %struct.xpvav** %sv_any88, align 8
  %xav_fill89 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %90, i32 0, i32 1
  store i64 %sub.ptr.div87, i64* %xav_fill89, align 8
  %91 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack90 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %91, i32 0, i32 0
  %92 = load %struct.av*, %struct.av** %si_stack90, align 8
  %sv_any91 = getelementptr inbounds %struct.av, %struct.av* %92, i32 0, i32 0
  %93 = load %struct.xpvav*, %struct.xpvav** %sv_any91, align 8
  %xav_array92 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %93, i32 0, i32 0
  %94 = load i8*, i8** %xav_array92, align 8
  %95 = bitcast i8* %94 to %struct.sv**
  store %struct.sv** %95, %struct.sv*** @PL_stack_base, align 8
  %96 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %97 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack93 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %97, i32 0, i32 0
  %98 = load %struct.av*, %struct.av** %si_stack93, align 8
  %sv_any94 = getelementptr inbounds %struct.av, %struct.av* %98, i32 0, i32 0
  %99 = load %struct.xpvav*, %struct.xpvav** %sv_any94, align 8
  %xav_max95 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %99, i32 0, i32 2
  %100 = load i64, i64* %xav_max95, align 8
  %add.ptr96 = getelementptr inbounds %struct.sv*, %struct.sv** %96, i64 %100
  store %struct.sv** %add.ptr96, %struct.sv*** @PL_stack_max, align 8
  %101 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %102 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack97 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %102, i32 0, i32 0
  %103 = load %struct.av*, %struct.av** %si_stack97, align 8
  %sv_any98 = getelementptr inbounds %struct.av, %struct.av* %103, i32 0, i32 0
  %104 = load %struct.xpvav*, %struct.xpvav** %sv_any98, align 8
  %xav_fill99 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %104, i32 0, i32 1
  %105 = load i64, i64* %xav_fill99, align 8
  %add.ptr100 = getelementptr inbounds %struct.sv*, %struct.sv** %101, i64 %105
  store %struct.sv** %add.ptr100, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr100, %struct.sv*** %sp53, align 8
  %106 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack102 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %106, i32 0, i32 0
  %107 = load %struct.av*, %struct.av** %si_stack102, align 8
  store %struct.av* %107, %struct.av** @PL_curstack, align 8
  store %struct.av* %107, %struct.av** %tmp101
  %108 = load %struct.av*, %struct.av** %tmp101
  %109 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %109, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %109, %struct.stackinfo** %tmp103
  %110 = load %struct.stackinfo*, %struct.stackinfo** %tmp103
  br label %return

if.end.104:                                       ; preds = %cond.end
  %111 = load %struct.av*, %struct.av** %av.addr, align 8
  %112 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any105 = getelementptr inbounds %struct.av, %struct.av* %112, i32 0, i32 0
  %113 = load %struct.xpvav*, %struct.xpvav** %sv_any105, align 8
  %xav_fill106 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %113, i32 0, i32 1
  %114 = load i64, i64* %xav_fill106, align 8
  %add = add nsw i64 %114, 1
  %conv107 = trunc i64 %add to i32
  %115 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %call108 = call %struct.sv** @Perl_av_store(%struct.av* %111, i32 %conv107, %struct.sv* %115)
  br label %return

return:                                           ; preds = %if.end.104, %if.end.83, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.sv* @Perl_av_pop(%struct.av* %av) #0 {
entry:
  %retval = alloca %struct.sv*, align 8
  %av.addr = alloca %struct.av*, align 8
  %retval1 = alloca %struct.sv*, align 8
  %mg = alloca %struct.magic*, align 8
  %sp = alloca %struct.sv**, align 8
  %next = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %tmp28 = alloca i32, align 4
  %tmp42 = alloca %struct.sv*, align 8
  %sp59 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp107 = alloca %struct.av*, align 8
  %tmp109 = alloca %struct.stackinfo*, align 8
  store %struct.av* %av, %struct.av** %av.addr, align 8
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %tobool = icmp ne %struct.av* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.sv* @PL_sv_undef, %struct.sv** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_flags = getelementptr inbounds %struct.av, %struct.av* %1, i32 0, i32 2
  %2 = load i32, i32* %sv_flags, align 4
  %and = and i32 %2, 8388608
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_modify, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %3 = load %struct.av*, %struct.av** %av.addr, align 8
  %4 = bitcast %struct.av* %3 to %struct.sv*
  %sv_flags5 = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags5, align 4
  %and6 = and i32 %5, 32768
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %6 = load %struct.av*, %struct.av** %av.addr, align 8
  %7 = bitcast %struct.av* %6 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %7, i32 80)
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.magic* [ %call, %cond.true ], [ null, %cond.false ]
  store %struct.magic* %cond, %struct.magic** %mg, align 8
  %tobool8 = icmp ne %struct.magic* %cond, null
  br i1 %tobool8, label %if.then.9, label %if.end.110

if.then.9:                                        ; preds = %cond.end
  %8 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %8, %struct.sv*** %sp, align 8
  %9 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %9, i32 0, i32 6
  %10 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  store %struct.stackinfo* %10, %struct.stackinfo** %next, align 8
  %11 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %tobool10 = icmp ne %struct.stackinfo* %11, null
  br i1 %tobool10, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %if.then.9
  %call12 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call12, %struct.stackinfo** %next, align 8
  %12 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %13 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %13, i32 0, i32 5
  store %struct.stackinfo* %12, %struct.stackinfo** %si_prev, align 8
  %14 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %15 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next13 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %15, i32 0, i32 6
  store %struct.stackinfo* %14, %struct.stackinfo** %si_next13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.then.9
  %16 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %16, i32 0, i32 4
  store i32 2, i32* %si_type, align 4
  %17 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %17, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %18 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %18, i32 0, i32 0
  %19 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %19, i32 0, i32 0
  %20 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %20, i32 0, i32 1
  store i64 0, i64* %xav_fill, align 8
  %21 = load %struct.sv**, %struct.sv*** %sp, align 8
  %22 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %21 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %23 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any15 = getelementptr inbounds %struct.av, %struct.av* %23, i32 0, i32 0
  %24 = load %struct.xpvav*, %struct.xpvav** %sv_any15, align 8
  %xav_fill16 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %24, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill16, align 8
  %25 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack17 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %25, i32 0, i32 0
  %26 = load %struct.av*, %struct.av** %si_stack17, align 8
  %sv_any18 = getelementptr inbounds %struct.av, %struct.av* %26, i32 0, i32 0
  %27 = load %struct.xpvav*, %struct.xpvav** %sv_any18, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %27, i32 0, i32 0
  %28 = load i8*, i8** %xav_array, align 8
  %29 = bitcast i8* %28 to %struct.sv**
  store %struct.sv** %29, %struct.sv*** @PL_stack_base, align 8
  %30 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %31 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack19 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %31, i32 0, i32 0
  %32 = load %struct.av*, %struct.av** %si_stack19, align 8
  %sv_any20 = getelementptr inbounds %struct.av, %struct.av* %32, i32 0, i32 0
  %33 = load %struct.xpvav*, %struct.xpvav** %sv_any20, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %33, i32 0, i32 2
  %34 = load i64, i64* %xav_max, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %30, i64 %34
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8
  %35 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %36 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack21 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %36, i32 0, i32 0
  %37 = load %struct.av*, %struct.av** %si_stack21, align 8
  %sv_any22 = getelementptr inbounds %struct.av, %struct.av* %37, i32 0, i32 0
  %38 = load %struct.xpvav*, %struct.xpvav** %sv_any22, align 8
  %xav_fill23 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %38, i32 0, i32 1
  %39 = load i64, i64* %xav_fill23, align 8
  %add.ptr24 = getelementptr inbounds %struct.sv*, %struct.sv** %35, i64 %39
  store %struct.sv** %add.ptr24, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr24, %struct.sv*** %sp, align 8
  %40 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack25 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %40, i32 0, i32 0
  %41 = load %struct.av*, %struct.av** %si_stack25, align 8
  store %struct.av* %41, %struct.av** @PL_curstack, align 8
  store %struct.av* %41, %struct.av** %tmp
  %42 = load %struct.av*, %struct.av** %tmp
  %43 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  store %struct.stackinfo* %43, %struct.stackinfo** @PL_curstackinfo, align 8
  %44 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %45 = load i32*, i32** @PL_markstack_max, align 8
  %cmp = icmp eq i32* %incdec.ptr, %45
  br i1 %cmp, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.14
  call void @Perl_markstack_grow()
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.14
  %46 = load %struct.sv**, %struct.sv*** %sp, align 8
  %47 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast29 = ptrtoint %struct.sv** %46 to i64
  %sub.ptr.rhs.cast30 = ptrtoint %struct.sv** %47 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %sub.ptr.div32 = sdiv exact i64 %sub.ptr.sub31, 8
  %conv = trunc i64 %sub.ptr.div32 to i32
  %48 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv, i32* %48, align 4
  store i32 %conv, i32* %tmp28
  %49 = load i32, i32* %tmp28
  %50 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %51 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast33 = ptrtoint %struct.sv** %50 to i64
  %sub.ptr.rhs.cast34 = ptrtoint %struct.sv** %51 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %sub.ptr.div36 = sdiv exact i64 %sub.ptr.sub35, 8
  %cmp37 = icmp slt i64 %sub.ptr.div36, 1
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.27
  %52 = load %struct.sv**, %struct.sv*** %sp, align 8
  %53 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call40 = call %struct.sv** @Perl_stack_grow(%struct.sv** %52, %struct.sv** %53, i32 1)
  store %struct.sv** %call40, %struct.sv*** %sp, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.27
  %54 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %54, i32 0, i32 5
  %55 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool43 = icmp ne %struct.sv* %55, null
  br i1 %tobool43, label %cond.true.44, label %cond.false.46

cond.true.44:                                     ; preds = %if.end.41
  %56 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj45 = getelementptr inbounds %struct.magic, %struct.magic* %56, i32 0, i32 5
  %57 = load %struct.sv*, %struct.sv** %mg_obj45, align 8
  br label %cond.end.49

cond.false.46:                                    ; preds = %if.end.41
  %58 = load %struct.av*, %struct.av** %av.addr, align 8
  %59 = bitcast %struct.av* %58 to %struct.sv*
  %call47 = call %struct.sv* @Perl_newRV(%struct.sv* %59)
  %call48 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call47)
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.46, %cond.true.44
  %cond50 = phi %struct.sv* [ %57, %cond.true.44 ], [ %call48, %cond.false.46 ]
  %60 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr51 = getelementptr inbounds %struct.sv*, %struct.sv** %60, i32 1
  store %struct.sv** %incdec.ptr51, %struct.sv*** %sp, align 8
  store %struct.sv* %cond50, %struct.sv** %incdec.ptr51, align 8
  store %struct.sv* %cond50, %struct.sv** %tmp42
  %61 = load %struct.sv*, %struct.sv** %tmp42
  %62 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %62, %struct.sv*** @PL_stack_sp, align 8
  call void @Perl_push_scope()
  %call52 = call i32 @Perl_call_method(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 0)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %cond.end.49
  %63 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %incdec.ptr55 = getelementptr inbounds %struct.sv*, %struct.sv** %63, i32 -1
  store %struct.sv** %incdec.ptr55, %struct.sv*** @PL_stack_sp, align 8
  %64 = load %struct.sv*, %struct.sv** %63, align 8
  %call56 = call %struct.sv* @Perl_newSVsv(%struct.sv* %64)
  store %struct.sv* %call56, %struct.sv** %retval1, align 8
  br label %if.end.57

if.else:                                          ; preds = %cond.end.49
  store %struct.sv* @PL_sv_undef, %struct.sv** %retval1, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.else, %if.then.54
  call void @Perl_pop_scope()
  %65 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %65, %struct.sv*** %sp59, align 8
  %66 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev61 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %66, i32 0, i32 5
  %67 = load %struct.stackinfo*, %struct.stackinfo** %si_prev61, align 8
  store %struct.stackinfo* %67, %struct.stackinfo** %prev, align 8
  %68 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool62 = icmp ne %struct.stackinfo* %68, null
  br i1 %tobool62, label %if.end.89, label %if.then.63

if.then.63:                                       ; preds = %if.end.57
  %69 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool64 = icmp ne %struct.gv* %69, null
  br i1 %tobool64, label %land.lhs.true, label %cond.false.84

land.lhs.true:                                    ; preds = %if.then.63
  %70 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags65 = getelementptr inbounds %struct.gv, %struct.gv* %70, i32 0, i32 2
  %71 = load i32, i32* %sv_flags65, align 4
  %and66 = and i32 %71, 255
  %cmp67 = icmp eq i32 %and66, 13
  br i1 %cmp67, label %land.lhs.true.69, label %cond.false.84

land.lhs.true.69:                                 ; preds = %land.lhs.true
  %72 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any70 = getelementptr inbounds %struct.gv, %struct.gv* %72, i32 0, i32 0
  %73 = load %struct.xpvgv*, %struct.xpvgv** %sv_any70, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %73, i32 0, i32 7
  %74 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %74, i32 0, i32 2
  %75 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool71 = icmp ne %struct.io* %75, null
  br i1 %tobool71, label %land.lhs.true.72, label %cond.false.84

land.lhs.true.72:                                 ; preds = %land.lhs.true.69
  %76 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any73 = getelementptr inbounds %struct.gv, %struct.gv* %76, i32 0, i32 0
  %77 = load %struct.xpvgv*, %struct.xpvgv** %sv_any73, align 8
  %xgv_gp74 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %77, i32 0, i32 7
  %78 = load %struct.gp*, %struct.gp** %xgv_gp74, align 8
  %gp_io75 = getelementptr inbounds %struct.gp, %struct.gp* %78, i32 0, i32 2
  %79 = load %struct.io*, %struct.io** %gp_io75, align 8
  %sv_any76 = getelementptr inbounds %struct.io, %struct.io* %79, i32 0, i32 0
  %80 = load %struct.xpvio*, %struct.xpvio** %sv_any76, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %80, i32 0, i32 8
  %81 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool77 = icmp ne %struct._PerlIO** %81, null
  br i1 %tobool77, label %cond.true.78, label %cond.false.84

cond.true.78:                                     ; preds = %land.lhs.true.72
  %82 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any79 = getelementptr inbounds %struct.gv, %struct.gv* %82, i32 0, i32 0
  %83 = load %struct.xpvgv*, %struct.xpvgv** %sv_any79, align 8
  %xgv_gp80 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %83, i32 0, i32 7
  %84 = load %struct.gp*, %struct.gp** %xgv_gp80, align 8
  %gp_io81 = getelementptr inbounds %struct.gp, %struct.gp* %84, i32 0, i32 2
  %85 = load %struct.io*, %struct.io** %gp_io81, align 8
  %sv_any82 = getelementptr inbounds %struct.io, %struct.io* %85, i32 0, i32 0
  %86 = load %struct.xpvio*, %struct.xpvio** %sv_any82, align 8
  %xio_ofp83 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %86, i32 0, i32 8
  %87 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp83, align 8
  br label %cond.end.86

cond.false.84:                                    ; preds = %land.lhs.true.72, %land.lhs.true.69, %land.lhs.true, %if.then.63
  %call85 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.84, %cond.true.78
  %cond87 = phi %struct._PerlIO** [ %87, %cond.true.78 ], [ %call85, %cond.false.84 ]
  %call88 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.89

if.end.89:                                        ; preds = %cond.end.86, %if.end.57
  %88 = load %struct.sv**, %struct.sv*** %sp59, align 8
  %89 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast90 = ptrtoint %struct.sv** %88 to i64
  %sub.ptr.rhs.cast91 = ptrtoint %struct.sv** %89 to i64
  %sub.ptr.sub92 = sub i64 %sub.ptr.lhs.cast90, %sub.ptr.rhs.cast91
  %sub.ptr.div93 = sdiv exact i64 %sub.ptr.sub92, 8
  %90 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any94 = getelementptr inbounds %struct.av, %struct.av* %90, i32 0, i32 0
  %91 = load %struct.xpvav*, %struct.xpvav** %sv_any94, align 8
  %xav_fill95 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %91, i32 0, i32 1
  store i64 %sub.ptr.div93, i64* %xav_fill95, align 8
  %92 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack96 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %92, i32 0, i32 0
  %93 = load %struct.av*, %struct.av** %si_stack96, align 8
  %sv_any97 = getelementptr inbounds %struct.av, %struct.av* %93, i32 0, i32 0
  %94 = load %struct.xpvav*, %struct.xpvav** %sv_any97, align 8
  %xav_array98 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %94, i32 0, i32 0
  %95 = load i8*, i8** %xav_array98, align 8
  %96 = bitcast i8* %95 to %struct.sv**
  store %struct.sv** %96, %struct.sv*** @PL_stack_base, align 8
  %97 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %98 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack99 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %98, i32 0, i32 0
  %99 = load %struct.av*, %struct.av** %si_stack99, align 8
  %sv_any100 = getelementptr inbounds %struct.av, %struct.av* %99, i32 0, i32 0
  %100 = load %struct.xpvav*, %struct.xpvav** %sv_any100, align 8
  %xav_max101 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %100, i32 0, i32 2
  %101 = load i64, i64* %xav_max101, align 8
  %add.ptr102 = getelementptr inbounds %struct.sv*, %struct.sv** %97, i64 %101
  store %struct.sv** %add.ptr102, %struct.sv*** @PL_stack_max, align 8
  %102 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %103 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack103 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %103, i32 0, i32 0
  %104 = load %struct.av*, %struct.av** %si_stack103, align 8
  %sv_any104 = getelementptr inbounds %struct.av, %struct.av* %104, i32 0, i32 0
  %105 = load %struct.xpvav*, %struct.xpvav** %sv_any104, align 8
  %xav_fill105 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %105, i32 0, i32 1
  %106 = load i64, i64* %xav_fill105, align 8
  %add.ptr106 = getelementptr inbounds %struct.sv*, %struct.sv** %102, i64 %106
  store %struct.sv** %add.ptr106, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr106, %struct.sv*** %sp59, align 8
  %107 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack108 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %107, i32 0, i32 0
  %108 = load %struct.av*, %struct.av** %si_stack108, align 8
  store %struct.av* %108, %struct.av** @PL_curstack, align 8
  store %struct.av* %108, %struct.av** %tmp107
  %109 = load %struct.av*, %struct.av** %tmp107
  %110 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %110, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %110, %struct.stackinfo** %tmp109
  %111 = load %struct.stackinfo*, %struct.stackinfo** %tmp109
  %112 = load %struct.sv*, %struct.sv** %retval1, align 8
  store %struct.sv* %112, %struct.sv** %retval
  br label %return

if.end.110:                                       ; preds = %cond.end
  %113 = load %struct.av*, %struct.av** %av.addr, align 8
  %114 = bitcast %struct.av* %113 to %struct.sv*
  %sv_flags111 = getelementptr inbounds %struct.sv, %struct.sv* %114, i32 0, i32 2
  %115 = load i32, i32* %sv_flags111, align 4
  %and112 = and i32 %115, 32768
  %tobool113 = icmp ne i32 %and112, 0
  br i1 %tobool113, label %cond.true.114, label %cond.false.117

cond.true.114:                                    ; preds = %if.end.110
  %116 = load %struct.av*, %struct.av** %av.addr, align 8
  %117 = bitcast %struct.av* %116 to %struct.sv*
  %call115 = call i32 @Perl_mg_size(%struct.sv* %117)
  %conv116 = sext i32 %call115 to i64
  br label %cond.end.120

cond.false.117:                                   ; preds = %if.end.110
  %118 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any118 = getelementptr inbounds %struct.av, %struct.av* %118, i32 0, i32 0
  %119 = load %struct.xpvav*, %struct.xpvav** %sv_any118, align 8
  %xav_fill119 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %119, i32 0, i32 1
  %120 = load i64, i64* %xav_fill119, align 8
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.117, %cond.true.114
  %cond121 = phi i64 [ %conv116, %cond.true.114 ], [ %120, %cond.false.117 ]
  %cmp122 = icmp slt i64 %cond121, 0
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %cond.end.120
  store %struct.sv* @PL_sv_undef, %struct.sv** %retval
  br label %return

if.end.125:                                       ; preds = %cond.end.120
  %121 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any126 = getelementptr inbounds %struct.av, %struct.av* %121, i32 0, i32 0
  %122 = load %struct.xpvav*, %struct.xpvav** %sv_any126, align 8
  %xav_fill127 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %122, i32 0, i32 1
  %123 = load i64, i64* %xav_fill127, align 8
  %124 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any128 = getelementptr inbounds %struct.av, %struct.av* %124, i32 0, i32 0
  %125 = load %struct.xpvav*, %struct.xpvav** %sv_any128, align 8
  %xav_array129 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %125, i32 0, i32 0
  %126 = load i8*, i8** %xav_array129, align 8
  %127 = bitcast i8* %126 to %struct.sv**
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %127, i64 %123
  %128 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %128, %struct.sv** %retval1, align 8
  %129 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any130 = getelementptr inbounds %struct.av, %struct.av* %129, i32 0, i32 0
  %130 = load %struct.xpvav*, %struct.xpvav** %sv_any130, align 8
  %xav_fill131 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %130, i32 0, i32 1
  %131 = load i64, i64* %xav_fill131, align 8
  %dec = add nsw i64 %131, -1
  store i64 %dec, i64* %xav_fill131, align 8
  %132 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any132 = getelementptr inbounds %struct.av, %struct.av* %132, i32 0, i32 0
  %133 = load %struct.xpvav*, %struct.xpvav** %sv_any132, align 8
  %xav_array133 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %133, i32 0, i32 0
  %134 = load i8*, i8** %xav_array133, align 8
  %135 = bitcast i8* %134 to %struct.sv**
  %arrayidx134 = getelementptr inbounds %struct.sv*, %struct.sv** %135, i64 %131
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx134, align 8
  %136 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_flags135 = getelementptr inbounds %struct.av, %struct.av* %136, i32 0, i32 2
  %137 = load i32, i32* %sv_flags135, align 4
  %and136 = and i32 %137, 16384
  %tobool137 = icmp ne i32 %and136, 0
  br i1 %tobool137, label %if.then.138, label %if.end.140

if.then.138:                                      ; preds = %if.end.125
  %138 = load %struct.av*, %struct.av** %av.addr, align 8
  %139 = bitcast %struct.av* %138 to %struct.sv*
  %call139 = call i32 @Perl_mg_set(%struct.sv* %139)
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.138, %if.end.125
  %140 = load %struct.sv*, %struct.sv** %retval1, align 8
  store %struct.sv* %140, %struct.sv** %retval
  br label %return

return:                                           ; preds = %if.end.140, %if.then.124, %if.end.89, %if.then
  %141 = load %struct.sv*, %struct.sv** %retval
  ret %struct.sv* %141
}

declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @Perl_av_unshift(%struct.av* %av, i32 %num) #0 {
entry:
  %av.addr = alloca %struct.av*, align 8
  %num.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ary = alloca %struct.sv**, align 8
  %mg = alloca %struct.magic*, align 8
  %slide = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %next = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %tmp27 = alloca i32, align 4
  %sp57 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp105 = alloca %struct.av*, align 8
  %tmp107 = alloca %struct.stackinfo*, align 8
  store %struct.av* %av, %struct.av** %av.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %tobool = icmp ne %struct.av* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.191

if.end:                                           ; preds = %entry
  %1 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_flags = getelementptr inbounds %struct.av, %struct.av* %1, i32 0, i32 2
  %2 = load i32, i32* %sv_flags, align 4
  %and = and i32 %2, 8388608
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_modify, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %3 = load %struct.av*, %struct.av** %av.addr, align 8
  %4 = bitcast %struct.av* %3 to %struct.sv*
  %sv_flags4 = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags4, align 4
  %and5 = and i32 %5, 32768
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.3
  %6 = load %struct.av*, %struct.av** %av.addr, align 8
  %7 = bitcast %struct.av* %6 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %7, i32 80)
  br label %cond.end

cond.false:                                       ; preds = %if.end.3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.magic* [ %call, %cond.true ], [ null, %cond.false ]
  store %struct.magic* %cond, %struct.magic** %mg, align 8
  %tobool7 = icmp ne %struct.magic* %cond, null
  br i1 %tobool7, label %if.then.8, label %if.end.108

if.then.8:                                        ; preds = %cond.end
  %8 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %8, %struct.sv*** %sp, align 8
  %9 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %9, i32 0, i32 6
  %10 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  store %struct.stackinfo* %10, %struct.stackinfo** %next, align 8
  %11 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %tobool9 = icmp ne %struct.stackinfo* %11, null
  br i1 %tobool9, label %if.end.13, label %if.then.10

if.then.10:                                       ; preds = %if.then.8
  %call11 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call11, %struct.stackinfo** %next, align 8
  %12 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %13 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %13, i32 0, i32 5
  store %struct.stackinfo* %12, %struct.stackinfo** %si_prev, align 8
  %14 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %15 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next12 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %15, i32 0, i32 6
  store %struct.stackinfo* %14, %struct.stackinfo** %si_next12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.then.8
  %16 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %16, i32 0, i32 4
  store i32 2, i32* %si_type, align 4
  %17 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %17, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %18 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %18, i32 0, i32 0
  %19 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %19, i32 0, i32 0
  %20 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %20, i32 0, i32 1
  store i64 0, i64* %xav_fill, align 8
  %21 = load %struct.sv**, %struct.sv*** %sp, align 8
  %22 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %21 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %23 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any14 = getelementptr inbounds %struct.av, %struct.av* %23, i32 0, i32 0
  %24 = load %struct.xpvav*, %struct.xpvav** %sv_any14, align 8
  %xav_fill15 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %24, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill15, align 8
  %25 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack16 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %25, i32 0, i32 0
  %26 = load %struct.av*, %struct.av** %si_stack16, align 8
  %sv_any17 = getelementptr inbounds %struct.av, %struct.av* %26, i32 0, i32 0
  %27 = load %struct.xpvav*, %struct.xpvav** %sv_any17, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %27, i32 0, i32 0
  %28 = load i8*, i8** %xav_array, align 8
  %29 = bitcast i8* %28 to %struct.sv**
  store %struct.sv** %29, %struct.sv*** @PL_stack_base, align 8
  %30 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %31 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack18 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %31, i32 0, i32 0
  %32 = load %struct.av*, %struct.av** %si_stack18, align 8
  %sv_any19 = getelementptr inbounds %struct.av, %struct.av* %32, i32 0, i32 0
  %33 = load %struct.xpvav*, %struct.xpvav** %sv_any19, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %33, i32 0, i32 2
  %34 = load i64, i64* %xav_max, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %30, i64 %34
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8
  %35 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %36 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack20 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %36, i32 0, i32 0
  %37 = load %struct.av*, %struct.av** %si_stack20, align 8
  %sv_any21 = getelementptr inbounds %struct.av, %struct.av* %37, i32 0, i32 0
  %38 = load %struct.xpvav*, %struct.xpvav** %sv_any21, align 8
  %xav_fill22 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %38, i32 0, i32 1
  %39 = load i64, i64* %xav_fill22, align 8
  %add.ptr23 = getelementptr inbounds %struct.sv*, %struct.sv** %35, i64 %39
  store %struct.sv** %add.ptr23, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr23, %struct.sv*** %sp, align 8
  %40 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack24 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %40, i32 0, i32 0
  %41 = load %struct.av*, %struct.av** %si_stack24, align 8
  store %struct.av* %41, %struct.av** @PL_curstack, align 8
  store %struct.av* %41, %struct.av** %tmp
  %42 = load %struct.av*, %struct.av** %tmp
  %43 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  store %struct.stackinfo* %43, %struct.stackinfo** @PL_curstackinfo, align 8
  %44 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %45 = load i32*, i32** @PL_markstack_max, align 8
  %cmp = icmp eq i32* %incdec.ptr, %45
  br i1 %cmp, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.13
  call void @Perl_markstack_grow()
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.13
  %46 = load %struct.sv**, %struct.sv*** %sp, align 8
  %47 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast28 = ptrtoint %struct.sv** %46 to i64
  %sub.ptr.rhs.cast29 = ptrtoint %struct.sv** %47 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %sub.ptr.div31 = sdiv exact i64 %sub.ptr.sub30, 8
  %conv = trunc i64 %sub.ptr.div31 to i32
  %48 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv, i32* %48, align 4
  store i32 %conv, i32* %tmp27
  %49 = load i32, i32* %tmp27
  %50 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %51 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast32 = ptrtoint %struct.sv** %50 to i64
  %sub.ptr.rhs.cast33 = ptrtoint %struct.sv** %51 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %sub.ptr.div35 = sdiv exact i64 %sub.ptr.sub34, 8
  %52 = load i32, i32* %num.addr, align 4
  %add = add nsw i32 1, %52
  %conv36 = sext i32 %add to i64
  %cmp37 = icmp slt i64 %sub.ptr.div35, %conv36
  br i1 %cmp37, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.end.26
  %53 = load %struct.sv**, %struct.sv*** %sp, align 8
  %54 = load %struct.sv**, %struct.sv*** %sp, align 8
  %55 = load i32, i32* %num.addr, align 4
  %add40 = add nsw i32 1, %55
  %call41 = call %struct.sv** @Perl_stack_grow(%struct.sv** %53, %struct.sv** %54, i32 %add40)
  store %struct.sv** %call41, %struct.sv*** %sp, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.end.26
  %56 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %56, i32 0, i32 5
  %57 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool43 = icmp ne %struct.sv* %57, null
  br i1 %tobool43, label %cond.true.44, label %cond.false.46

cond.true.44:                                     ; preds = %if.end.42
  %58 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj45 = getelementptr inbounds %struct.magic, %struct.magic* %58, i32 0, i32 5
  %59 = load %struct.sv*, %struct.sv** %mg_obj45, align 8
  br label %cond.end.49

cond.false.46:                                    ; preds = %if.end.42
  %60 = load %struct.av*, %struct.av** %av.addr, align 8
  %61 = bitcast %struct.av* %60 to %struct.sv*
  %call47 = call %struct.sv* @Perl_newRV(%struct.sv* %61)
  %call48 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call47)
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.46, %cond.true.44
  %cond50 = phi %struct.sv* [ %59, %cond.true.44 ], [ %call48, %cond.false.46 ]
  %62 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr51 = getelementptr inbounds %struct.sv*, %struct.sv** %62, i32 1
  store %struct.sv** %incdec.ptr51, %struct.sv*** %sp, align 8
  store %struct.sv* %cond50, %struct.sv** %incdec.ptr51, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.49
  %63 = load i32, i32* %num.addr, align 4
  %dec = add nsw i32 %63, -1
  store i32 %dec, i32* %num.addr, align 4
  %cmp52 = icmp sgt i32 %63, 0
  br i1 %cmp52, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %64 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr54 = getelementptr inbounds %struct.sv*, %struct.sv** %64, i32 1
  store %struct.sv** %incdec.ptr54, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr54, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %65 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %65, %struct.sv*** @PL_stack_sp, align 8
  call void @Perl_push_scope()
  %call55 = call i32 @Perl_call_method(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 2)
  call void @Perl_pop_scope()
  %66 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %66, %struct.sv*** %sp57, align 8
  %67 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev59 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %67, i32 0, i32 5
  %68 = load %struct.stackinfo*, %struct.stackinfo** %si_prev59, align 8
  store %struct.stackinfo* %68, %struct.stackinfo** %prev, align 8
  %69 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool60 = icmp ne %struct.stackinfo* %69, null
  br i1 %tobool60, label %if.end.87, label %if.then.61

if.then.61:                                       ; preds = %while.end
  %70 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool62 = icmp ne %struct.gv* %70, null
  br i1 %tobool62, label %land.lhs.true, label %cond.false.82

land.lhs.true:                                    ; preds = %if.then.61
  %71 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags63 = getelementptr inbounds %struct.gv, %struct.gv* %71, i32 0, i32 2
  %72 = load i32, i32* %sv_flags63, align 4
  %and64 = and i32 %72, 255
  %cmp65 = icmp eq i32 %and64, 13
  br i1 %cmp65, label %land.lhs.true.67, label %cond.false.82

land.lhs.true.67:                                 ; preds = %land.lhs.true
  %73 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any68 = getelementptr inbounds %struct.gv, %struct.gv* %73, i32 0, i32 0
  %74 = load %struct.xpvgv*, %struct.xpvgv** %sv_any68, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %74, i32 0, i32 7
  %75 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %75, i32 0, i32 2
  %76 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool69 = icmp ne %struct.io* %76, null
  br i1 %tobool69, label %land.lhs.true.70, label %cond.false.82

land.lhs.true.70:                                 ; preds = %land.lhs.true.67
  %77 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any71 = getelementptr inbounds %struct.gv, %struct.gv* %77, i32 0, i32 0
  %78 = load %struct.xpvgv*, %struct.xpvgv** %sv_any71, align 8
  %xgv_gp72 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %78, i32 0, i32 7
  %79 = load %struct.gp*, %struct.gp** %xgv_gp72, align 8
  %gp_io73 = getelementptr inbounds %struct.gp, %struct.gp* %79, i32 0, i32 2
  %80 = load %struct.io*, %struct.io** %gp_io73, align 8
  %sv_any74 = getelementptr inbounds %struct.io, %struct.io* %80, i32 0, i32 0
  %81 = load %struct.xpvio*, %struct.xpvio** %sv_any74, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %81, i32 0, i32 8
  %82 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool75 = icmp ne %struct._PerlIO** %82, null
  br i1 %tobool75, label %cond.true.76, label %cond.false.82

cond.true.76:                                     ; preds = %land.lhs.true.70
  %83 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any77 = getelementptr inbounds %struct.gv, %struct.gv* %83, i32 0, i32 0
  %84 = load %struct.xpvgv*, %struct.xpvgv** %sv_any77, align 8
  %xgv_gp78 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %84, i32 0, i32 7
  %85 = load %struct.gp*, %struct.gp** %xgv_gp78, align 8
  %gp_io79 = getelementptr inbounds %struct.gp, %struct.gp* %85, i32 0, i32 2
  %86 = load %struct.io*, %struct.io** %gp_io79, align 8
  %sv_any80 = getelementptr inbounds %struct.io, %struct.io* %86, i32 0, i32 0
  %87 = load %struct.xpvio*, %struct.xpvio** %sv_any80, align 8
  %xio_ofp81 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %87, i32 0, i32 8
  %88 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp81, align 8
  br label %cond.end.84

cond.false.82:                                    ; preds = %land.lhs.true.70, %land.lhs.true.67, %land.lhs.true, %if.then.61
  %call83 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.82, %cond.true.76
  %cond85 = phi %struct._PerlIO** [ %88, %cond.true.76 ], [ %call83, %cond.false.82 ]
  %call86 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.87

if.end.87:                                        ; preds = %cond.end.84, %while.end
  %89 = load %struct.sv**, %struct.sv*** %sp57, align 8
  %90 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast88 = ptrtoint %struct.sv** %89 to i64
  %sub.ptr.rhs.cast89 = ptrtoint %struct.sv** %90 to i64
  %sub.ptr.sub90 = sub i64 %sub.ptr.lhs.cast88, %sub.ptr.rhs.cast89
  %sub.ptr.div91 = sdiv exact i64 %sub.ptr.sub90, 8
  %91 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any92 = getelementptr inbounds %struct.av, %struct.av* %91, i32 0, i32 0
  %92 = load %struct.xpvav*, %struct.xpvav** %sv_any92, align 8
  %xav_fill93 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %92, i32 0, i32 1
  store i64 %sub.ptr.div91, i64* %xav_fill93, align 8
  %93 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack94 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %93, i32 0, i32 0
  %94 = load %struct.av*, %struct.av** %si_stack94, align 8
  %sv_any95 = getelementptr inbounds %struct.av, %struct.av* %94, i32 0, i32 0
  %95 = load %struct.xpvav*, %struct.xpvav** %sv_any95, align 8
  %xav_array96 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %95, i32 0, i32 0
  %96 = load i8*, i8** %xav_array96, align 8
  %97 = bitcast i8* %96 to %struct.sv**
  store %struct.sv** %97, %struct.sv*** @PL_stack_base, align 8
  %98 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %99 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack97 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %99, i32 0, i32 0
  %100 = load %struct.av*, %struct.av** %si_stack97, align 8
  %sv_any98 = getelementptr inbounds %struct.av, %struct.av* %100, i32 0, i32 0
  %101 = load %struct.xpvav*, %struct.xpvav** %sv_any98, align 8
  %xav_max99 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %101, i32 0, i32 2
  %102 = load i64, i64* %xav_max99, align 8
  %add.ptr100 = getelementptr inbounds %struct.sv*, %struct.sv** %98, i64 %102
  store %struct.sv** %add.ptr100, %struct.sv*** @PL_stack_max, align 8
  %103 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %104 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack101 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %104, i32 0, i32 0
  %105 = load %struct.av*, %struct.av** %si_stack101, align 8
  %sv_any102 = getelementptr inbounds %struct.av, %struct.av* %105, i32 0, i32 0
  %106 = load %struct.xpvav*, %struct.xpvav** %sv_any102, align 8
  %xav_fill103 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %106, i32 0, i32 1
  %107 = load i64, i64* %xav_fill103, align 8
  %add.ptr104 = getelementptr inbounds %struct.sv*, %struct.sv** %103, i64 %107
  store %struct.sv** %add.ptr104, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr104, %struct.sv*** %sp57, align 8
  %108 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack106 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %108, i32 0, i32 0
  %109 = load %struct.av*, %struct.av** %si_stack106, align 8
  store %struct.av* %109, %struct.av** @PL_curstack, align 8
  store %struct.av* %109, %struct.av** %tmp105
  %110 = load %struct.av*, %struct.av** %tmp105
  %111 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %111, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %111, %struct.stackinfo** %tmp107
  %112 = load %struct.stackinfo*, %struct.stackinfo** %tmp107
  br label %if.end.191

if.end.108:                                       ; preds = %cond.end
  %113 = load i32, i32* %num.addr, align 4
  %cmp109 = icmp sle i32 %113, 0
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.108
  br label %if.end.191

if.end.112:                                       ; preds = %if.end.108
  %114 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any113 = getelementptr inbounds %struct.av, %struct.av* %114, i32 0, i32 0
  %115 = load %struct.xpvav*, %struct.xpvav** %sv_any113, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %115, i32 0, i32 9
  %116 = load i8, i8* %xav_flags, align 1
  %conv114 = zext i8 %116 to i32
  %and115 = and i32 %conv114, 1
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %if.end.124, label %land.lhs.true.117

land.lhs.true.117:                                ; preds = %if.end.112
  %117 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any118 = getelementptr inbounds %struct.av, %struct.av* %117, i32 0, i32 0
  %118 = load %struct.xpvav*, %struct.xpvav** %sv_any118, align 8
  %xav_flags119 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %118, i32 0, i32 9
  %119 = load i8, i8* %xav_flags119, align 1
  %conv120 = zext i8 %119 to i32
  %and121 = and i32 %conv120, 2
  %tobool122 = icmp ne i32 %and121, 0
  br i1 %tobool122, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %land.lhs.true.117
  %120 = load %struct.av*, %struct.av** %av.addr, align 8
  call void @Perl_av_reify(%struct.av* %120)
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.123, %land.lhs.true.117, %if.end.112
  %121 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any125 = getelementptr inbounds %struct.av, %struct.av* %121, i32 0, i32 0
  %122 = load %struct.xpvav*, %struct.xpvav** %sv_any125, align 8
  %xav_array126 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %122, i32 0, i32 0
  %123 = load i8*, i8** %xav_array126, align 8
  %124 = bitcast i8* %123 to %struct.sv**
  %125 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any127 = getelementptr inbounds %struct.av, %struct.av* %125, i32 0, i32 0
  %126 = load %struct.xpvav*, %struct.xpvav** %sv_any127, align 8
  %xav_alloc = getelementptr inbounds %struct.xpvav, %struct.xpvav* %126, i32 0, i32 7
  %127 = load %struct.sv**, %struct.sv*** %xav_alloc, align 8
  %sub.ptr.lhs.cast128 = ptrtoint %struct.sv** %124 to i64
  %sub.ptr.rhs.cast129 = ptrtoint %struct.sv** %127 to i64
  %sub.ptr.sub130 = sub i64 %sub.ptr.lhs.cast128, %sub.ptr.rhs.cast129
  %sub.ptr.div131 = sdiv exact i64 %sub.ptr.sub130, 8
  %conv132 = trunc i64 %sub.ptr.div131 to i32
  store i32 %conv132, i32* %i, align 4
  %128 = load i32, i32* %i, align 4
  %tobool133 = icmp ne i32 %128, 0
  br i1 %tobool133, label %if.then.134, label %if.end.151

if.then.134:                                      ; preds = %if.end.124
  %129 = load i32, i32* %i, align 4
  %130 = load i32, i32* %num.addr, align 4
  %cmp135 = icmp sgt i32 %129, %130
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.then.134
  %131 = load i32, i32* %num.addr, align 4
  store i32 %131, i32* %i, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %if.then.134
  %132 = load i32, i32* %i, align 4
  %133 = load i32, i32* %num.addr, align 4
  %sub = sub nsw i32 %133, %132
  store i32 %sub, i32* %num.addr, align 4
  %134 = load i32, i32* %i, align 4
  %conv139 = sext i32 %134 to i64
  %135 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any140 = getelementptr inbounds %struct.av, %struct.av* %135, i32 0, i32 0
  %136 = load %struct.xpvav*, %struct.xpvav** %sv_any140, align 8
  %xav_max141 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %136, i32 0, i32 2
  %137 = load i64, i64* %xav_max141, align 8
  %add142 = add nsw i64 %137, %conv139
  store i64 %add142, i64* %xav_max141, align 8
  %138 = load i32, i32* %i, align 4
  %conv143 = sext i32 %138 to i64
  %139 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any144 = getelementptr inbounds %struct.av, %struct.av* %139, i32 0, i32 0
  %140 = load %struct.xpvav*, %struct.xpvav** %sv_any144, align 8
  %xav_fill145 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %140, i32 0, i32 1
  %141 = load i64, i64* %xav_fill145, align 8
  %add146 = add nsw i64 %141, %conv143
  store i64 %add146, i64* %xav_fill145, align 8
  %142 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any147 = getelementptr inbounds %struct.av, %struct.av* %142, i32 0, i32 0
  %143 = load %struct.xpvav*, %struct.xpvav** %sv_any147, align 8
  %xav_array148 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %143, i32 0, i32 0
  %144 = load i8*, i8** %xav_array148, align 8
  %145 = bitcast i8* %144 to %struct.sv**
  %146 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %146 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr149 = getelementptr inbounds %struct.sv*, %struct.sv** %145, i64 %idx.neg
  %147 = bitcast %struct.sv** %add.ptr149 to i8*
  %148 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any150 = getelementptr inbounds %struct.av, %struct.av* %148, i32 0, i32 0
  %149 = load %struct.xpvav*, %struct.xpvav** %sv_any150, align 8
  %150 = bitcast %struct.xpvav* %149 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %150, i32 0, i32 0
  store i8* %147, i8** %xpv_pv, align 8
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.138, %if.end.124
  %151 = load i32, i32* %num.addr, align 4
  %tobool152 = icmp ne i32 %151, 0
  br i1 %tobool152, label %if.then.153, label %if.end.191

if.then.153:                                      ; preds = %if.end.151
  %152 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any154 = getelementptr inbounds %struct.av, %struct.av* %152, i32 0, i32 0
  %153 = load %struct.xpvav*, %struct.xpvav** %sv_any154, align 8
  %xav_fill155 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %153, i32 0, i32 1
  %154 = load i64, i64* %xav_fill155, align 8
  %conv156 = trunc i64 %154 to i32
  store i32 %conv156, i32* %i, align 4
  %155 = load i32, i32* %i, align 4
  %cmp157 = icmp sgt i32 %155, 0
  br i1 %cmp157, label %cond.true.159, label %cond.false.160

cond.true.159:                                    ; preds = %if.then.153
  %156 = load i32, i32* %i, align 4
  br label %cond.end.161

cond.false.160:                                   ; preds = %if.then.153
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.160, %cond.true.159
  %cond162 = phi i32 [ %156, %cond.true.159 ], [ 0, %cond.false.160 ]
  store i32 %cond162, i32* %slide, align 4
  %157 = load i32, i32* %slide, align 4
  %158 = load i32, i32* %num.addr, align 4
  %add163 = add nsw i32 %158, %157
  store i32 %add163, i32* %num.addr, align 4
  %159 = load %struct.av*, %struct.av** %av.addr, align 8
  %160 = load i32, i32* %i, align 4
  %161 = load i32, i32* %num.addr, align 4
  %add164 = add nsw i32 %160, %161
  call void @Perl_av_extend(%struct.av* %159, i32 %add164)
  %162 = load i32, i32* %num.addr, align 4
  %conv165 = sext i32 %162 to i64
  %163 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any166 = getelementptr inbounds %struct.av, %struct.av* %163, i32 0, i32 0
  %164 = load %struct.xpvav*, %struct.xpvav** %sv_any166, align 8
  %xav_fill167 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %164, i32 0, i32 1
  %165 = load i64, i64* %xav_fill167, align 8
  %add168 = add nsw i64 %165, %conv165
  store i64 %add168, i64* %xav_fill167, align 8
  %166 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any169 = getelementptr inbounds %struct.av, %struct.av* %166, i32 0, i32 0
  %167 = load %struct.xpvav*, %struct.xpvav** %sv_any169, align 8
  %xav_array170 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %167, i32 0, i32 0
  %168 = load i8*, i8** %xav_array170, align 8
  %169 = bitcast i8* %168 to %struct.sv**
  store %struct.sv** %169, %struct.sv*** %ary, align 8
  %170 = load %struct.sv**, %struct.sv*** %ary, align 8
  %171 = load i32, i32* %num.addr, align 4
  %idx.ext171 = sext i32 %171 to i64
  %add.ptr172 = getelementptr inbounds %struct.sv*, %struct.sv** %170, i64 %idx.ext171
  %172 = bitcast %struct.sv** %add.ptr172 to i8*
  %173 = load %struct.sv**, %struct.sv*** %ary, align 8
  %174 = bitcast %struct.sv** %173 to i8*
  %175 = load i32, i32* %i, align 4
  %add173 = add nsw i32 %175, 1
  %conv174 = sext i32 %add173 to i64
  %mul = mul i64 %conv174, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %172, i8* %174, i64 %mul, i32 1, i1 false)
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end.161
  %176 = load i32, i32* %num.addr, align 4
  %dec175 = add nsw i32 %176, -1
  store i32 %dec175, i32* %num.addr, align 4
  %idxprom = sext i32 %dec175 to i64
  %177 = load %struct.sv**, %struct.sv*** %ary, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %177, i64 %idxprom
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %178 = load i32, i32* %num.addr, align 4
  %tobool176 = icmp ne i32 %178, 0
  br i1 %tobool176, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %179 = load i32, i32* %slide, align 4
  %conv177 = sext i32 %179 to i64
  %180 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any178 = getelementptr inbounds %struct.av, %struct.av* %180, i32 0, i32 0
  %181 = load %struct.xpvav*, %struct.xpvav** %sv_any178, align 8
  %xav_max179 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %181, i32 0, i32 2
  %182 = load i64, i64* %xav_max179, align 8
  %sub180 = sub nsw i64 %182, %conv177
  store i64 %sub180, i64* %xav_max179, align 8
  %183 = load i32, i32* %slide, align 4
  %conv181 = sext i32 %183 to i64
  %184 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any182 = getelementptr inbounds %struct.av, %struct.av* %184, i32 0, i32 0
  %185 = load %struct.xpvav*, %struct.xpvav** %sv_any182, align 8
  %xav_fill183 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %185, i32 0, i32 1
  %186 = load i64, i64* %xav_fill183, align 8
  %sub184 = sub nsw i64 %186, %conv181
  store i64 %sub184, i64* %xav_fill183, align 8
  %187 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any185 = getelementptr inbounds %struct.av, %struct.av* %187, i32 0, i32 0
  %188 = load %struct.xpvav*, %struct.xpvav** %sv_any185, align 8
  %xav_array186 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %188, i32 0, i32 0
  %189 = load i8*, i8** %xav_array186, align 8
  %190 = bitcast i8* %189 to %struct.sv**
  %191 = load i32, i32* %slide, align 4
  %idx.ext187 = sext i32 %191 to i64
  %add.ptr188 = getelementptr inbounds %struct.sv*, %struct.sv** %190, i64 %idx.ext187
  %192 = bitcast %struct.sv** %add.ptr188 to i8*
  %193 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any189 = getelementptr inbounds %struct.av, %struct.av* %193, i32 0, i32 0
  %194 = load %struct.xpvav*, %struct.xpvav** %sv_any189, align 8
  %195 = bitcast %struct.xpvav* %194 to %struct.xpv*
  %xpv_pv190 = getelementptr inbounds %struct.xpv, %struct.xpv* %195, i32 0, i32 0
  store i8* %192, i8** %xpv_pv190, align 8
  br label %if.end.191

if.end.191:                                       ; preds = %if.then, %if.end.87, %if.then.111, %do.end, %if.end.151
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.sv* @Perl_av_shift(%struct.av* %av) #0 {
entry:
  %retval = alloca %struct.sv*, align 8
  %av.addr = alloca %struct.av*, align 8
  %retval1 = alloca %struct.sv*, align 8
  %mg = alloca %struct.magic*, align 8
  %sp = alloca %struct.sv**, align 8
  %next = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %tmp28 = alloca i32, align 4
  %tmp42 = alloca %struct.sv*, align 8
  %sp59 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp107 = alloca %struct.av*, align 8
  %tmp109 = alloca %struct.stackinfo*, align 8
  store %struct.av* %av, %struct.av** %av.addr, align 8
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %tobool = icmp ne %struct.av* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.sv* @PL_sv_undef, %struct.sv** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_flags = getelementptr inbounds %struct.av, %struct.av* %1, i32 0, i32 2
  %2 = load i32, i32* %sv_flags, align 4
  %and = and i32 %2, 8388608
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_modify, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %3 = load %struct.av*, %struct.av** %av.addr, align 8
  %4 = bitcast %struct.av* %3 to %struct.sv*
  %sv_flags5 = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags5, align 4
  %and6 = and i32 %5, 32768
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %6 = load %struct.av*, %struct.av** %av.addr, align 8
  %7 = bitcast %struct.av* %6 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %7, i32 80)
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.magic* [ %call, %cond.true ], [ null, %cond.false ]
  store %struct.magic* %cond, %struct.magic** %mg, align 8
  %tobool8 = icmp ne %struct.magic* %cond, null
  br i1 %tobool8, label %if.then.9, label %if.end.110

if.then.9:                                        ; preds = %cond.end
  %8 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %8, %struct.sv*** %sp, align 8
  %9 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %9, i32 0, i32 6
  %10 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  store %struct.stackinfo* %10, %struct.stackinfo** %next, align 8
  %11 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %tobool10 = icmp ne %struct.stackinfo* %11, null
  br i1 %tobool10, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %if.then.9
  %call12 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call12, %struct.stackinfo** %next, align 8
  %12 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %13 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %13, i32 0, i32 5
  store %struct.stackinfo* %12, %struct.stackinfo** %si_prev, align 8
  %14 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %15 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next13 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %15, i32 0, i32 6
  store %struct.stackinfo* %14, %struct.stackinfo** %si_next13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.then.9
  %16 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %16, i32 0, i32 4
  store i32 2, i32* %si_type, align 4
  %17 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %17, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %18 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %18, i32 0, i32 0
  %19 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %19, i32 0, i32 0
  %20 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %20, i32 0, i32 1
  store i64 0, i64* %xav_fill, align 8
  %21 = load %struct.sv**, %struct.sv*** %sp, align 8
  %22 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %21 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %23 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any15 = getelementptr inbounds %struct.av, %struct.av* %23, i32 0, i32 0
  %24 = load %struct.xpvav*, %struct.xpvav** %sv_any15, align 8
  %xav_fill16 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %24, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill16, align 8
  %25 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack17 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %25, i32 0, i32 0
  %26 = load %struct.av*, %struct.av** %si_stack17, align 8
  %sv_any18 = getelementptr inbounds %struct.av, %struct.av* %26, i32 0, i32 0
  %27 = load %struct.xpvav*, %struct.xpvav** %sv_any18, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %27, i32 0, i32 0
  %28 = load i8*, i8** %xav_array, align 8
  %29 = bitcast i8* %28 to %struct.sv**
  store %struct.sv** %29, %struct.sv*** @PL_stack_base, align 8
  %30 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %31 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack19 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %31, i32 0, i32 0
  %32 = load %struct.av*, %struct.av** %si_stack19, align 8
  %sv_any20 = getelementptr inbounds %struct.av, %struct.av* %32, i32 0, i32 0
  %33 = load %struct.xpvav*, %struct.xpvav** %sv_any20, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %33, i32 0, i32 2
  %34 = load i64, i64* %xav_max, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %30, i64 %34
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8
  %35 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %36 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack21 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %36, i32 0, i32 0
  %37 = load %struct.av*, %struct.av** %si_stack21, align 8
  %sv_any22 = getelementptr inbounds %struct.av, %struct.av* %37, i32 0, i32 0
  %38 = load %struct.xpvav*, %struct.xpvav** %sv_any22, align 8
  %xav_fill23 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %38, i32 0, i32 1
  %39 = load i64, i64* %xav_fill23, align 8
  %add.ptr24 = getelementptr inbounds %struct.sv*, %struct.sv** %35, i64 %39
  store %struct.sv** %add.ptr24, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr24, %struct.sv*** %sp, align 8
  %40 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack25 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %40, i32 0, i32 0
  %41 = load %struct.av*, %struct.av** %si_stack25, align 8
  store %struct.av* %41, %struct.av** @PL_curstack, align 8
  store %struct.av* %41, %struct.av** %tmp
  %42 = load %struct.av*, %struct.av** %tmp
  %43 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  store %struct.stackinfo* %43, %struct.stackinfo** @PL_curstackinfo, align 8
  %44 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %45 = load i32*, i32** @PL_markstack_max, align 8
  %cmp = icmp eq i32* %incdec.ptr, %45
  br i1 %cmp, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.14
  call void @Perl_markstack_grow()
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.14
  %46 = load %struct.sv**, %struct.sv*** %sp, align 8
  %47 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast29 = ptrtoint %struct.sv** %46 to i64
  %sub.ptr.rhs.cast30 = ptrtoint %struct.sv** %47 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %sub.ptr.div32 = sdiv exact i64 %sub.ptr.sub31, 8
  %conv = trunc i64 %sub.ptr.div32 to i32
  %48 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv, i32* %48, align 4
  store i32 %conv, i32* %tmp28
  %49 = load i32, i32* %tmp28
  %50 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %51 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast33 = ptrtoint %struct.sv** %50 to i64
  %sub.ptr.rhs.cast34 = ptrtoint %struct.sv** %51 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %sub.ptr.div36 = sdiv exact i64 %sub.ptr.sub35, 8
  %cmp37 = icmp slt i64 %sub.ptr.div36, 1
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.27
  %52 = load %struct.sv**, %struct.sv*** %sp, align 8
  %53 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call40 = call %struct.sv** @Perl_stack_grow(%struct.sv** %52, %struct.sv** %53, i32 1)
  store %struct.sv** %call40, %struct.sv*** %sp, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.27
  %54 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %54, i32 0, i32 5
  %55 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool43 = icmp ne %struct.sv* %55, null
  br i1 %tobool43, label %cond.true.44, label %cond.false.46

cond.true.44:                                     ; preds = %if.end.41
  %56 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_obj45 = getelementptr inbounds %struct.magic, %struct.magic* %56, i32 0, i32 5
  %57 = load %struct.sv*, %struct.sv** %mg_obj45, align 8
  br label %cond.end.49

cond.false.46:                                    ; preds = %if.end.41
  %58 = load %struct.av*, %struct.av** %av.addr, align 8
  %59 = bitcast %struct.av* %58 to %struct.sv*
  %call47 = call %struct.sv* @Perl_newRV(%struct.sv* %59)
  %call48 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call47)
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.46, %cond.true.44
  %cond50 = phi %struct.sv* [ %57, %cond.true.44 ], [ %call48, %cond.false.46 ]
  %60 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr51 = getelementptr inbounds %struct.sv*, %struct.sv** %60, i32 1
  store %struct.sv** %incdec.ptr51, %struct.sv*** %sp, align 8
  store %struct.sv* %cond50, %struct.sv** %incdec.ptr51, align 8
  store %struct.sv* %cond50, %struct.sv** %tmp42
  %61 = load %struct.sv*, %struct.sv** %tmp42
  %62 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %62, %struct.sv*** @PL_stack_sp, align 8
  call void @Perl_push_scope()
  %call52 = call i32 @Perl_call_method(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 0)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %cond.end.49
  %63 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %incdec.ptr55 = getelementptr inbounds %struct.sv*, %struct.sv** %63, i32 -1
  store %struct.sv** %incdec.ptr55, %struct.sv*** @PL_stack_sp, align 8
  %64 = load %struct.sv*, %struct.sv** %63, align 8
  %call56 = call %struct.sv* @Perl_newSVsv(%struct.sv* %64)
  store %struct.sv* %call56, %struct.sv** %retval1, align 8
  br label %if.end.57

if.else:                                          ; preds = %cond.end.49
  store %struct.sv* @PL_sv_undef, %struct.sv** %retval1, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.else, %if.then.54
  call void @Perl_pop_scope()
  %65 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %65, %struct.sv*** %sp59, align 8
  %66 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev61 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %66, i32 0, i32 5
  %67 = load %struct.stackinfo*, %struct.stackinfo** %si_prev61, align 8
  store %struct.stackinfo* %67, %struct.stackinfo** %prev, align 8
  %68 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool62 = icmp ne %struct.stackinfo* %68, null
  br i1 %tobool62, label %if.end.89, label %if.then.63

if.then.63:                                       ; preds = %if.end.57
  %69 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool64 = icmp ne %struct.gv* %69, null
  br i1 %tobool64, label %land.lhs.true, label %cond.false.84

land.lhs.true:                                    ; preds = %if.then.63
  %70 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags65 = getelementptr inbounds %struct.gv, %struct.gv* %70, i32 0, i32 2
  %71 = load i32, i32* %sv_flags65, align 4
  %and66 = and i32 %71, 255
  %cmp67 = icmp eq i32 %and66, 13
  br i1 %cmp67, label %land.lhs.true.69, label %cond.false.84

land.lhs.true.69:                                 ; preds = %land.lhs.true
  %72 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any70 = getelementptr inbounds %struct.gv, %struct.gv* %72, i32 0, i32 0
  %73 = load %struct.xpvgv*, %struct.xpvgv** %sv_any70, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %73, i32 0, i32 7
  %74 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %74, i32 0, i32 2
  %75 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool71 = icmp ne %struct.io* %75, null
  br i1 %tobool71, label %land.lhs.true.72, label %cond.false.84

land.lhs.true.72:                                 ; preds = %land.lhs.true.69
  %76 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any73 = getelementptr inbounds %struct.gv, %struct.gv* %76, i32 0, i32 0
  %77 = load %struct.xpvgv*, %struct.xpvgv** %sv_any73, align 8
  %xgv_gp74 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %77, i32 0, i32 7
  %78 = load %struct.gp*, %struct.gp** %xgv_gp74, align 8
  %gp_io75 = getelementptr inbounds %struct.gp, %struct.gp* %78, i32 0, i32 2
  %79 = load %struct.io*, %struct.io** %gp_io75, align 8
  %sv_any76 = getelementptr inbounds %struct.io, %struct.io* %79, i32 0, i32 0
  %80 = load %struct.xpvio*, %struct.xpvio** %sv_any76, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %80, i32 0, i32 8
  %81 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool77 = icmp ne %struct._PerlIO** %81, null
  br i1 %tobool77, label %cond.true.78, label %cond.false.84

cond.true.78:                                     ; preds = %land.lhs.true.72
  %82 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any79 = getelementptr inbounds %struct.gv, %struct.gv* %82, i32 0, i32 0
  %83 = load %struct.xpvgv*, %struct.xpvgv** %sv_any79, align 8
  %xgv_gp80 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %83, i32 0, i32 7
  %84 = load %struct.gp*, %struct.gp** %xgv_gp80, align 8
  %gp_io81 = getelementptr inbounds %struct.gp, %struct.gp* %84, i32 0, i32 2
  %85 = load %struct.io*, %struct.io** %gp_io81, align 8
  %sv_any82 = getelementptr inbounds %struct.io, %struct.io* %85, i32 0, i32 0
  %86 = load %struct.xpvio*, %struct.xpvio** %sv_any82, align 8
  %xio_ofp83 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %86, i32 0, i32 8
  %87 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp83, align 8
  br label %cond.end.86

cond.false.84:                                    ; preds = %land.lhs.true.72, %land.lhs.true.69, %land.lhs.true, %if.then.63
  %call85 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.84, %cond.true.78
  %cond87 = phi %struct._PerlIO** [ %87, %cond.true.78 ], [ %call85, %cond.false.84 ]
  %call88 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.89

if.end.89:                                        ; preds = %cond.end.86, %if.end.57
  %88 = load %struct.sv**, %struct.sv*** %sp59, align 8
  %89 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast90 = ptrtoint %struct.sv** %88 to i64
  %sub.ptr.rhs.cast91 = ptrtoint %struct.sv** %89 to i64
  %sub.ptr.sub92 = sub i64 %sub.ptr.lhs.cast90, %sub.ptr.rhs.cast91
  %sub.ptr.div93 = sdiv exact i64 %sub.ptr.sub92, 8
  %90 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any94 = getelementptr inbounds %struct.av, %struct.av* %90, i32 0, i32 0
  %91 = load %struct.xpvav*, %struct.xpvav** %sv_any94, align 8
  %xav_fill95 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %91, i32 0, i32 1
  store i64 %sub.ptr.div93, i64* %xav_fill95, align 8
  %92 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack96 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %92, i32 0, i32 0
  %93 = load %struct.av*, %struct.av** %si_stack96, align 8
  %sv_any97 = getelementptr inbounds %struct.av, %struct.av* %93, i32 0, i32 0
  %94 = load %struct.xpvav*, %struct.xpvav** %sv_any97, align 8
  %xav_array98 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %94, i32 0, i32 0
  %95 = load i8*, i8** %xav_array98, align 8
  %96 = bitcast i8* %95 to %struct.sv**
  store %struct.sv** %96, %struct.sv*** @PL_stack_base, align 8
  %97 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %98 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack99 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %98, i32 0, i32 0
  %99 = load %struct.av*, %struct.av** %si_stack99, align 8
  %sv_any100 = getelementptr inbounds %struct.av, %struct.av* %99, i32 0, i32 0
  %100 = load %struct.xpvav*, %struct.xpvav** %sv_any100, align 8
  %xav_max101 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %100, i32 0, i32 2
  %101 = load i64, i64* %xav_max101, align 8
  %add.ptr102 = getelementptr inbounds %struct.sv*, %struct.sv** %97, i64 %101
  store %struct.sv** %add.ptr102, %struct.sv*** @PL_stack_max, align 8
  %102 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %103 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack103 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %103, i32 0, i32 0
  %104 = load %struct.av*, %struct.av** %si_stack103, align 8
  %sv_any104 = getelementptr inbounds %struct.av, %struct.av* %104, i32 0, i32 0
  %105 = load %struct.xpvav*, %struct.xpvav** %sv_any104, align 8
  %xav_fill105 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %105, i32 0, i32 1
  %106 = load i64, i64* %xav_fill105, align 8
  %add.ptr106 = getelementptr inbounds %struct.sv*, %struct.sv** %102, i64 %106
  store %struct.sv** %add.ptr106, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr106, %struct.sv*** %sp59, align 8
  %107 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack108 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %107, i32 0, i32 0
  %108 = load %struct.av*, %struct.av** %si_stack108, align 8
  store %struct.av* %108, %struct.av** @PL_curstack, align 8
  store %struct.av* %108, %struct.av** %tmp107
  %109 = load %struct.av*, %struct.av** %tmp107
  %110 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %110, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %110, %struct.stackinfo** %tmp109
  %111 = load %struct.stackinfo*, %struct.stackinfo** %tmp109
  %112 = load %struct.sv*, %struct.sv** %retval1, align 8
  store %struct.sv* %112, %struct.sv** %retval
  br label %return

if.end.110:                                       ; preds = %cond.end
  %113 = load %struct.av*, %struct.av** %av.addr, align 8
  %114 = bitcast %struct.av* %113 to %struct.sv*
  %sv_flags111 = getelementptr inbounds %struct.sv, %struct.sv* %114, i32 0, i32 2
  %115 = load i32, i32* %sv_flags111, align 4
  %and112 = and i32 %115, 32768
  %tobool113 = icmp ne i32 %and112, 0
  br i1 %tobool113, label %cond.true.114, label %cond.false.117

cond.true.114:                                    ; preds = %if.end.110
  %116 = load %struct.av*, %struct.av** %av.addr, align 8
  %117 = bitcast %struct.av* %116 to %struct.sv*
  %call115 = call i32 @Perl_mg_size(%struct.sv* %117)
  %conv116 = sext i32 %call115 to i64
  br label %cond.end.120

cond.false.117:                                   ; preds = %if.end.110
  %118 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any118 = getelementptr inbounds %struct.av, %struct.av* %118, i32 0, i32 0
  %119 = load %struct.xpvav*, %struct.xpvav** %sv_any118, align 8
  %xav_fill119 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %119, i32 0, i32 1
  %120 = load i64, i64* %xav_fill119, align 8
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.117, %cond.true.114
  %cond121 = phi i64 [ %conv116, %cond.true.114 ], [ %120, %cond.false.117 ]
  %cmp122 = icmp slt i64 %cond121, 0
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %cond.end.120
  store %struct.sv* @PL_sv_undef, %struct.sv** %retval
  br label %return

if.end.125:                                       ; preds = %cond.end.120
  %121 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any126 = getelementptr inbounds %struct.av, %struct.av* %121, i32 0, i32 0
  %122 = load %struct.xpvav*, %struct.xpvav** %sv_any126, align 8
  %xav_array127 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %122, i32 0, i32 0
  %123 = load i8*, i8** %xav_array127, align 8
  %124 = bitcast i8* %123 to %struct.sv**
  %125 = load %struct.sv*, %struct.sv** %124, align 8
  store %struct.sv* %125, %struct.sv** %retval1, align 8
  %126 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any128 = getelementptr inbounds %struct.av, %struct.av* %126, i32 0, i32 0
  %127 = load %struct.xpvav*, %struct.xpvav** %sv_any128, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %127, i32 0, i32 9
  %128 = load i8, i8* %xav_flags, align 1
  %conv129 = zext i8 %128 to i32
  %and130 = and i32 %conv129, 1
  %tobool131 = icmp ne i32 %and130, 0
  br i1 %tobool131, label %if.then.132, label %if.end.135

if.then.132:                                      ; preds = %if.end.125
  %129 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any133 = getelementptr inbounds %struct.av, %struct.av* %129, i32 0, i32 0
  %130 = load %struct.xpvav*, %struct.xpvav** %sv_any133, align 8
  %xav_array134 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %130, i32 0, i32 0
  %131 = load i8*, i8** %xav_array134, align 8
  %132 = bitcast i8* %131 to %struct.sv**
  store %struct.sv* @PL_sv_undef, %struct.sv** %132, align 8
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.132, %if.end.125
  %133 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any136 = getelementptr inbounds %struct.av, %struct.av* %133, i32 0, i32 0
  %134 = load %struct.xpvav*, %struct.xpvav** %sv_any136, align 8
  %xav_array137 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %134, i32 0, i32 0
  %135 = load i8*, i8** %xav_array137, align 8
  %136 = bitcast i8* %135 to %struct.sv**
  %add.ptr138 = getelementptr inbounds %struct.sv*, %struct.sv** %136, i64 1
  %137 = bitcast %struct.sv** %add.ptr138 to i8*
  %138 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any139 = getelementptr inbounds %struct.av, %struct.av* %138, i32 0, i32 0
  %139 = load %struct.xpvav*, %struct.xpvav** %sv_any139, align 8
  %140 = bitcast %struct.xpvav* %139 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %140, i32 0, i32 0
  store i8* %137, i8** %xpv_pv, align 8
  %141 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any140 = getelementptr inbounds %struct.av, %struct.av* %141, i32 0, i32 0
  %142 = load %struct.xpvav*, %struct.xpvav** %sv_any140, align 8
  %xav_max141 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %142, i32 0, i32 2
  %143 = load i64, i64* %xav_max141, align 8
  %dec = add nsw i64 %143, -1
  store i64 %dec, i64* %xav_max141, align 8
  %144 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any142 = getelementptr inbounds %struct.av, %struct.av* %144, i32 0, i32 0
  %145 = load %struct.xpvav*, %struct.xpvav** %sv_any142, align 8
  %xav_fill143 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %145, i32 0, i32 1
  %146 = load i64, i64* %xav_fill143, align 8
  %dec144 = add nsw i64 %146, -1
  store i64 %dec144, i64* %xav_fill143, align 8
  %147 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_flags145 = getelementptr inbounds %struct.av, %struct.av* %147, i32 0, i32 2
  %148 = load i32, i32* %sv_flags145, align 4
  %and146 = and i32 %148, 16384
  %tobool147 = icmp ne i32 %and146, 0
  br i1 %tobool147, label %if.then.148, label %if.end.150

if.then.148:                                      ; preds = %if.end.135
  %149 = load %struct.av*, %struct.av** %av.addr, align 8
  %150 = bitcast %struct.av* %149 to %struct.sv*
  %call149 = call i32 @Perl_mg_set(%struct.sv* %150)
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.148, %if.end.135
  %151 = load %struct.sv*, %struct.sv** %retval1, align 8
  store %struct.sv* %151, %struct.sv** %retval
  br label %return

return:                                           ; preds = %if.end.150, %if.then.124, %if.end.89, %if.then
  %152 = load %struct.sv*, %struct.sv** %retval
  ret %struct.sv* %152
}

; Function Attrs: nounwind uwtable
define i32 @Perl_av_len(%struct.av* %av) #0 {
entry:
  %av.addr = alloca %struct.av*, align 8
  store %struct.av* %av, %struct.av** %av.addr, align 8
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %1 = bitcast %struct.av* %0 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %1, i32 0, i32 2
  %2 = load i32, i32* %sv_flags, align 4
  %and = and i32 %2, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.av*, %struct.av** %av.addr, align 8
  %4 = bitcast %struct.av* %3 to %struct.sv*
  %call = call i32 @Perl_mg_size(%struct.sv* %4)
  %conv = sext i32 %call to i64
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %5, i32 0, i32 0
  %6 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %6, i32 0, i32 1
  %7 = load i64, i64* %xav_fill, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %7, %cond.false ]
  %conv1 = trunc i64 %cond to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define %struct.sv* @Perl_av_delete(%struct.av* %av, i32 %key, i32 %flags) #0 {
entry:
  %retval = alloca %struct.sv*, align 8
  %av.addr = alloca %struct.av*, align 8
  %key.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %tied_magic = alloca %struct.magic*, align 8
  %svp = alloca %struct.sv**, align 8
  %adjust_index = alloca i32, align 4
  %negative_indices_glob = alloca %struct.sv**, align 8
  store %struct.av* %av, %struct.av** %av.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %tobool = icmp ne %struct.av* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.sv* null, %struct.sv** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_flags = getelementptr inbounds %struct.av, %struct.av* %1, i32 0, i32 2
  %2 = load i32, i32* %sv_flags, align 4
  %and = and i32 %2, 8388608
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_modify, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %3 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_flags4 = getelementptr inbounds %struct.av, %struct.av* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags4, align 4
  %and5 = and i32 %4, 32768
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.118

if.then.7:                                        ; preds = %if.end.3
  %5 = load %struct.av*, %struct.av** %av.addr, align 8
  %6 = bitcast %struct.av* %5 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %6, i32 80)
  store %struct.magic* %call, %struct.magic** %tied_magic, align 8
  %7 = load %struct.magic*, %struct.magic** %tied_magic, align 8
  %tobool8 = icmp ne %struct.magic* %7, null
  br i1 %tobool8, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.7
  %8 = load %struct.av*, %struct.av** %av.addr, align 8
  %9 = bitcast %struct.av* %8 to %struct.sv*
  %call9 = call %struct.magic* @Perl_mg_find(%struct.sv* %9, i32 68)
  %tobool10 = icmp ne %struct.magic* %call9, null
  br i1 %tobool10, label %if.then.11, label %if.end.117

if.then.11:                                       ; preds = %lor.lhs.false, %if.then.7
  %10 = load i32, i32* %key.addr, align 4
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then.12, label %if.end.106

if.then.12:                                       ; preds = %if.then.11
  store i32 1, i32* %adjust_index, align 4
  %11 = load %struct.magic*, %struct.magic** %tied_magic, align 8
  %tobool13 = icmp ne %struct.magic* %11, null
  br i1 %tobool13, label %if.then.14, label %if.end.85

if.then.14:                                       ; preds = %if.then.12
  %12 = load %struct.magic*, %struct.magic** %tied_magic, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %12, i32 0, i32 5
  %13 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool15 = icmp ne %struct.sv* %13, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  %14 = load %struct.magic*, %struct.magic** %tied_magic, align 8
  %mg_obj16 = getelementptr inbounds %struct.magic, %struct.magic* %14, i32 0, i32 5
  %15 = load %struct.sv*, %struct.sv** %mg_obj16, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  %16 = load %struct.av*, %struct.av** %av.addr, align 8
  %17 = bitcast %struct.av* %16 to %struct.sv*
  %call17 = call %struct.sv* @Perl_newRV(%struct.sv* %17)
  %call18 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call17)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %15, %cond.true ], [ %call18, %cond.false ]
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %cond, i32 0, i32 0
  %18 = load i8*, i8** %sv_any, align 8
  %19 = bitcast i8* %18 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %19, i32 0, i32 0
  %20 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_any19 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 0
  %21 = load i8*, i8** %sv_any19, align 8
  %22 = bitcast i8* %21 to %struct.xpvmg*
  %xmg_stash = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %22, i32 0, i32 6
  %23 = load %struct.hv*, %struct.hv** %xmg_stash, align 8
  %call20 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i32 16, i32 0)
  store %struct.sv** %call20, %struct.sv*** %negative_indices_glob, align 8
  %24 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %tobool21 = icmp ne %struct.sv** %24, null
  br i1 %tobool21, label %land.lhs.true, label %if.end.84

land.lhs.true:                                    ; preds = %cond.end
  %25 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %26 = load %struct.sv*, %struct.sv** %25, align 8
  %sv_any22 = getelementptr inbounds %struct.sv, %struct.sv* %26, i32 0, i32 0
  %27 = load i8*, i8** %sv_any22, align 8
  %28 = bitcast i8* %27 to %struct.xpvgv*
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %28, i32 0, i32 7
  %29 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %29, i32 0, i32 0
  %30 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %tobool23 = icmp ne %struct.sv* %30, null
  br i1 %tobool23, label %cond.false.25, label %cond.true.24

cond.true.24:                                     ; preds = %land.lhs.true
  br i1 false, label %if.then.83, label %if.end.84

cond.false.25:                                    ; preds = %land.lhs.true
  %31 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %32 = load %struct.sv*, %struct.sv** %31, align 8
  %sv_any26 = getelementptr inbounds %struct.sv, %struct.sv* %32, i32 0, i32 0
  %33 = load i8*, i8** %sv_any26, align 8
  %34 = bitcast i8* %33 to %struct.xpvgv*
  %xgv_gp27 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %34, i32 0, i32 7
  %35 = load %struct.gp*, %struct.gp** %xgv_gp27, align 8
  %gp_sv28 = getelementptr inbounds %struct.gp, %struct.gp* %35, i32 0, i32 0
  %36 = load %struct.sv*, %struct.sv** %gp_sv28, align 8
  %sv_flags29 = getelementptr inbounds %struct.sv, %struct.sv* %36, i32 0, i32 2
  %37 = load i32, i32* %sv_flags29, align 4
  %and30 = and i32 %37, 262144
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %cond.true.32, label %cond.false.48

cond.true.32:                                     ; preds = %cond.false.25
  %38 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %39 = load %struct.sv*, %struct.sv** %38, align 8
  %sv_any33 = getelementptr inbounds %struct.sv, %struct.sv* %39, i32 0, i32 0
  %40 = load i8*, i8** %sv_any33, align 8
  %41 = bitcast i8* %40 to %struct.xpvgv*
  %xgv_gp34 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %41, i32 0, i32 7
  %42 = load %struct.gp*, %struct.gp** %xgv_gp34, align 8
  %gp_sv35 = getelementptr inbounds %struct.gp, %struct.gp* %42, i32 0, i32 0
  %43 = load %struct.sv*, %struct.sv** %gp_sv35, align 8
  %sv_any36 = getelementptr inbounds %struct.sv, %struct.sv* %43, i32 0, i32 0
  %44 = load i8*, i8** %sv_any36, align 8
  %45 = bitcast i8* %44 to %struct.xpv*
  store %struct.xpv* %45, %struct.xpv** @PL_Xpv, align 8
  %tobool37 = icmp ne %struct.xpv* %45, null
  br i1 %tobool37, label %land.lhs.true.38, label %cond.false.47

land.lhs.true.38:                                 ; preds = %cond.true.32
  %46 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %46, i32 0, i32 1
  %47 = load i64, i64* %xpv_cur, align 8
  %cmp39 = icmp ugt i64 %47, 1
  br i1 %cmp39, label %cond.true.46, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %land.lhs.true.38
  %48 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur41 = getelementptr inbounds %struct.xpv, %struct.xpv* %48, i32 0, i32 1
  %49 = load i64, i64* %xpv_cur41, align 8
  %tobool42 = icmp ne i64 %49, 0
  br i1 %tobool42, label %land.lhs.true.43, label %cond.false.47

land.lhs.true.43:                                 ; preds = %lor.lhs.false.40
  %50 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %50, i32 0, i32 0
  %51 = load i8*, i8** %xpv_pv, align 8
  %52 = load i8, i8* %51, align 1
  %conv = sext i8 %52 to i32
  %cmp44 = icmp ne i32 %conv, 48
  br i1 %cmp44, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %land.lhs.true.43, %land.lhs.true.38
  br i1 true, label %if.then.83, label %if.end.84

cond.false.47:                                    ; preds = %land.lhs.true.43, %lor.lhs.false.40, %cond.true.32
  br i1 false, label %if.then.83, label %if.end.84

cond.false.48:                                    ; preds = %cond.false.25
  %53 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %54 = load %struct.sv*, %struct.sv** %53, align 8
  %sv_any49 = getelementptr inbounds %struct.sv, %struct.sv* %54, i32 0, i32 0
  %55 = load i8*, i8** %sv_any49, align 8
  %56 = bitcast i8* %55 to %struct.xpvgv*
  %xgv_gp50 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %56, i32 0, i32 7
  %57 = load %struct.gp*, %struct.gp** %xgv_gp50, align 8
  %gp_sv51 = getelementptr inbounds %struct.gp, %struct.gp* %57, i32 0, i32 0
  %58 = load %struct.sv*, %struct.sv** %gp_sv51, align 8
  %sv_flags52 = getelementptr inbounds %struct.sv, %struct.sv* %58, i32 0, i32 2
  %59 = load i32, i32* %sv_flags52, align 4
  %and53 = and i32 %59, 65536
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %cond.true.55, label %cond.false.62

cond.true.55:                                     ; preds = %cond.false.48
  %60 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %61 = load %struct.sv*, %struct.sv** %60, align 8
  %sv_any56 = getelementptr inbounds %struct.sv, %struct.sv* %61, i32 0, i32 0
  %62 = load i8*, i8** %sv_any56, align 8
  %63 = bitcast i8* %62 to %struct.xpvgv*
  %xgv_gp57 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %63, i32 0, i32 7
  %64 = load %struct.gp*, %struct.gp** %xgv_gp57, align 8
  %gp_sv58 = getelementptr inbounds %struct.gp, %struct.gp* %64, i32 0, i32 0
  %65 = load %struct.sv*, %struct.sv** %gp_sv58, align 8
  %sv_any59 = getelementptr inbounds %struct.sv, %struct.sv* %65, i32 0, i32 0
  %66 = load i8*, i8** %sv_any59, align 8
  %67 = bitcast i8* %66 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %67, i32 0, i32 3
  %68 = load i64, i64* %xiv_iv, align 8
  %cmp60 = icmp ne i64 %68, 0
  br i1 %cmp60, label %if.then.83, label %if.end.84

cond.false.62:                                    ; preds = %cond.false.48
  %69 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %70 = load %struct.sv*, %struct.sv** %69, align 8
  %sv_any63 = getelementptr inbounds %struct.sv, %struct.sv* %70, i32 0, i32 0
  %71 = load i8*, i8** %sv_any63, align 8
  %72 = bitcast i8* %71 to %struct.xpvgv*
  %xgv_gp64 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %72, i32 0, i32 7
  %73 = load %struct.gp*, %struct.gp** %xgv_gp64, align 8
  %gp_sv65 = getelementptr inbounds %struct.gp, %struct.gp* %73, i32 0, i32 0
  %74 = load %struct.sv*, %struct.sv** %gp_sv65, align 8
  %sv_flags66 = getelementptr inbounds %struct.sv, %struct.sv* %74, i32 0, i32 2
  %75 = load i32, i32* %sv_flags66, align 4
  %and67 = and i32 %75, 131072
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %cond.true.69, label %cond.false.76

cond.true.69:                                     ; preds = %cond.false.62
  %76 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %77 = load %struct.sv*, %struct.sv** %76, align 8
  %sv_any70 = getelementptr inbounds %struct.sv, %struct.sv* %77, i32 0, i32 0
  %78 = load i8*, i8** %sv_any70, align 8
  %79 = bitcast i8* %78 to %struct.xpvgv*
  %xgv_gp71 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %79, i32 0, i32 7
  %80 = load %struct.gp*, %struct.gp** %xgv_gp71, align 8
  %gp_sv72 = getelementptr inbounds %struct.gp, %struct.gp* %80, i32 0, i32 0
  %81 = load %struct.sv*, %struct.sv** %gp_sv72, align 8
  %sv_any73 = getelementptr inbounds %struct.sv, %struct.sv* %81, i32 0, i32 0
  %82 = load i8*, i8** %sv_any73, align 8
  %83 = bitcast i8* %82 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %83, i32 0, i32 4
  %84 = load double, double* %xnv_nv, align 8
  %cmp74 = fcmp une double %84, 0.000000e+00
  br i1 %cmp74, label %if.then.83, label %if.end.84

cond.false.76:                                    ; preds = %cond.false.62
  %85 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %86 = load %struct.sv*, %struct.sv** %85, align 8
  %sv_any77 = getelementptr inbounds %struct.sv, %struct.sv* %86, i32 0, i32 0
  %87 = load i8*, i8** %sv_any77, align 8
  %88 = bitcast i8* %87 to %struct.xpvgv*
  %xgv_gp78 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %88, i32 0, i32 7
  %89 = load %struct.gp*, %struct.gp** %xgv_gp78, align 8
  %gp_sv79 = getelementptr inbounds %struct.gp, %struct.gp* %89, i32 0, i32 0
  %90 = load %struct.sv*, %struct.sv** %gp_sv79, align 8
  %call80 = call signext i8 @Perl_sv_2bool(%struct.sv* %90)
  %conv81 = sext i8 %call80 to i32
  %tobool82 = icmp ne i32 %conv81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %cond.false.76, %cond.true.69, %cond.true.55, %cond.false.47, %cond.true.46, %cond.true.24
  store i32 0, i32* %adjust_index, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %cond.false.76, %cond.true.69, %cond.true.55, %cond.false.47, %cond.true.46, %cond.true.24, %cond.end
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.12
  %91 = load i32, i32* %adjust_index, align 4
  %tobool86 = icmp ne i32 %91, 0
  br i1 %tobool86, label %if.then.87, label %if.end.105

if.then.87:                                       ; preds = %if.end.85
  %92 = load %struct.av*, %struct.av** %av.addr, align 8
  %93 = bitcast %struct.av* %92 to %struct.sv*
  %sv_flags88 = getelementptr inbounds %struct.sv, %struct.sv* %93, i32 0, i32 2
  %94 = load i32, i32* %sv_flags88, align 4
  %and89 = and i32 %94, 32768
  %tobool90 = icmp ne i32 %and89, 0
  br i1 %tobool90, label %cond.true.91, label %cond.false.94

cond.true.91:                                     ; preds = %if.then.87
  %95 = load %struct.av*, %struct.av** %av.addr, align 8
  %96 = bitcast %struct.av* %95 to %struct.sv*
  %call92 = call i32 @Perl_mg_size(%struct.sv* %96)
  %conv93 = sext i32 %call92 to i64
  br label %cond.end.96

cond.false.94:                                    ; preds = %if.then.87
  %97 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any95 = getelementptr inbounds %struct.av, %struct.av* %97, i32 0, i32 0
  %98 = load %struct.xpvav*, %struct.xpvav** %sv_any95, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %98, i32 0, i32 1
  %99 = load i64, i64* %xav_fill, align 8
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.94, %cond.true.91
  %cond97 = phi i64 [ %conv93, %cond.true.91 ], [ %99, %cond.false.94 ]
  %add = add nsw i64 %cond97, 1
  %100 = load i32, i32* %key.addr, align 4
  %conv98 = sext i32 %100 to i64
  %add99 = add nsw i64 %conv98, %add
  %conv100 = trunc i64 %add99 to i32
  store i32 %conv100, i32* %key.addr, align 4
  %101 = load i32, i32* %key.addr, align 4
  %cmp101 = icmp slt i32 %101, 0
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %cond.end.96
  store %struct.sv* null, %struct.sv** %retval
  br label %return

if.end.104:                                       ; preds = %cond.end.96
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.85
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then.11
  %102 = load %struct.av*, %struct.av** %av.addr, align 8
  %103 = load i32, i32* %key.addr, align 4
  %call107 = call %struct.sv** @Perl_av_fetch(%struct.av* %102, i32 %103, i32 1)
  store %struct.sv** %call107, %struct.sv*** %svp, align 8
  %104 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool108 = icmp ne %struct.sv** %104, null
  br i1 %tobool108, label %if.then.109, label %if.end.116

if.then.109:                                      ; preds = %if.end.106
  %105 = load %struct.sv**, %struct.sv*** %svp, align 8
  %106 = load %struct.sv*, %struct.sv** %105, align 8
  store %struct.sv* %106, %struct.sv** %sv, align 8
  %107 = load %struct.sv*, %struct.sv** %sv, align 8
  %call110 = call i32 @Perl_mg_clear(%struct.sv* %107)
  %108 = load %struct.sv*, %struct.sv** %sv, align 8
  %call111 = call %struct.magic* @Perl_mg_find(%struct.sv* %108, i32 112)
  %tobool112 = icmp ne %struct.magic* %call111, null
  br i1 %tobool112, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %if.then.109
  %109 = load %struct.sv*, %struct.sv** %sv, align 8
  %call114 = call i32 @Perl_sv_unmagic(%struct.sv* %109, i32 112)
  %110 = load %struct.sv*, %struct.sv** %sv, align 8
  store %struct.sv* %110, %struct.sv** %retval
  br label %return

if.end.115:                                       ; preds = %if.then.109
  store %struct.sv* null, %struct.sv** %retval
  br label %return

if.end.116:                                       ; preds = %if.end.106
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %lor.lhs.false
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.end.3
  %111 = load i32, i32* %key.addr, align 4
  %cmp119 = icmp slt i32 %111, 0
  br i1 %cmp119, label %if.then.121, label %if.end.141

if.then.121:                                      ; preds = %if.end.118
  %112 = load %struct.av*, %struct.av** %av.addr, align 8
  %113 = bitcast %struct.av* %112 to %struct.sv*
  %sv_flags122 = getelementptr inbounds %struct.sv, %struct.sv* %113, i32 0, i32 2
  %114 = load i32, i32* %sv_flags122, align 4
  %and123 = and i32 %114, 32768
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %cond.true.125, label %cond.false.128

cond.true.125:                                    ; preds = %if.then.121
  %115 = load %struct.av*, %struct.av** %av.addr, align 8
  %116 = bitcast %struct.av* %115 to %struct.sv*
  %call126 = call i32 @Perl_mg_size(%struct.sv* %116)
  %conv127 = sext i32 %call126 to i64
  br label %cond.end.131

cond.false.128:                                   ; preds = %if.then.121
  %117 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any129 = getelementptr inbounds %struct.av, %struct.av* %117, i32 0, i32 0
  %118 = load %struct.xpvav*, %struct.xpvav** %sv_any129, align 8
  %xav_fill130 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %118, i32 0, i32 1
  %119 = load i64, i64* %xav_fill130, align 8
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.128, %cond.true.125
  %cond132 = phi i64 [ %conv127, %cond.true.125 ], [ %119, %cond.false.128 ]
  %add133 = add nsw i64 %cond132, 1
  %120 = load i32, i32* %key.addr, align 4
  %conv134 = sext i32 %120 to i64
  %add135 = add nsw i64 %conv134, %add133
  %conv136 = trunc i64 %add135 to i32
  store i32 %conv136, i32* %key.addr, align 4
  %121 = load i32, i32* %key.addr, align 4
  %cmp137 = icmp slt i32 %121, 0
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %cond.end.131
  store %struct.sv* null, %struct.sv** %retval
  br label %return

if.end.140:                                       ; preds = %cond.end.131
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.end.118
  %122 = load i32, i32* %key.addr, align 4
  %conv142 = sext i32 %122 to i64
  %123 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any143 = getelementptr inbounds %struct.av, %struct.av* %123, i32 0, i32 0
  %124 = load %struct.xpvav*, %struct.xpvav** %sv_any143, align 8
  %xav_fill144 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %124, i32 0, i32 1
  %125 = load i64, i64* %xav_fill144, align 8
  %cmp145 = icmp sgt i64 %conv142, %125
  br i1 %cmp145, label %if.then.147, label %if.else

if.then.147:                                      ; preds = %if.end.141
  store %struct.sv* null, %struct.sv** %retval
  br label %return

if.else:                                          ; preds = %if.end.141
  %126 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any148 = getelementptr inbounds %struct.av, %struct.av* %126, i32 0, i32 0
  %127 = load %struct.xpvav*, %struct.xpvav** %sv_any148, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %127, i32 0, i32 9
  %128 = load i8, i8* %xav_flags, align 1
  %conv149 = zext i8 %128 to i32
  %and150 = and i32 %conv149, 1
  %tobool151 = icmp ne i32 %and150, 0
  br i1 %tobool151, label %if.end.159, label %land.lhs.true.152

land.lhs.true.152:                                ; preds = %if.else
  %129 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any153 = getelementptr inbounds %struct.av, %struct.av* %129, i32 0, i32 0
  %130 = load %struct.xpvav*, %struct.xpvav** %sv_any153, align 8
  %xav_flags154 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %130, i32 0, i32 9
  %131 = load i8, i8* %xav_flags154, align 1
  %conv155 = zext i8 %131 to i32
  %and156 = and i32 %conv155, 2
  %tobool157 = icmp ne i32 %and156, 0
  br i1 %tobool157, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %land.lhs.true.152
  %132 = load %struct.av*, %struct.av** %av.addr, align 8
  call void @Perl_av_reify(%struct.av* %132)
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.158, %land.lhs.true.152, %if.else
  %133 = load i32, i32* %key.addr, align 4
  %idxprom = sext i32 %133 to i64
  %134 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any160 = getelementptr inbounds %struct.av, %struct.av* %134, i32 0, i32 0
  %135 = load %struct.xpvav*, %struct.xpvav** %sv_any160, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %135, i32 0, i32 0
  %136 = load i8*, i8** %xav_array, align 8
  %137 = bitcast i8* %136 to %struct.sv**
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %137, i64 %idxprom
  %138 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %138, %struct.sv** %sv, align 8
  %139 = load i32, i32* %key.addr, align 4
  %conv161 = sext i32 %139 to i64
  %140 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any162 = getelementptr inbounds %struct.av, %struct.av* %140, i32 0, i32 0
  %141 = load %struct.xpvav*, %struct.xpvav** %sv_any162, align 8
  %xav_fill163 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %141, i32 0, i32 1
  %142 = load i64, i64* %xav_fill163, align 8
  %cmp164 = icmp eq i64 %conv161, %142
  br i1 %cmp164, label %if.then.166, label %if.else.182

if.then.166:                                      ; preds = %if.end.159
  %143 = load i32, i32* %key.addr, align 4
  %idxprom167 = sext i32 %143 to i64
  %144 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any168 = getelementptr inbounds %struct.av, %struct.av* %144, i32 0, i32 0
  %145 = load %struct.xpvav*, %struct.xpvav** %sv_any168, align 8
  %xav_array169 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %145, i32 0, i32 0
  %146 = load i8*, i8** %xav_array169, align 8
  %147 = bitcast i8* %146 to %struct.sv**
  %arrayidx170 = getelementptr inbounds %struct.sv*, %struct.sv** %147, i64 %idxprom167
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx170, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then.166
  %148 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any171 = getelementptr inbounds %struct.av, %struct.av* %148, i32 0, i32 0
  %149 = load %struct.xpvav*, %struct.xpvav** %sv_any171, align 8
  %xav_fill172 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %149, i32 0, i32 1
  %150 = load i64, i64* %xav_fill172, align 8
  %dec = add nsw i64 %150, -1
  store i64 %dec, i64* %xav_fill172, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %151 = load i32, i32* %key.addr, align 4
  %dec173 = add nsw i32 %151, -1
  store i32 %dec173, i32* %key.addr, align 4
  %cmp174 = icmp sge i32 %dec173, 0
  br i1 %cmp174, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %152 = load i32, i32* %key.addr, align 4
  %idxprom176 = sext i32 %152 to i64
  %153 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any177 = getelementptr inbounds %struct.av, %struct.av* %153, i32 0, i32 0
  %154 = load %struct.xpvav*, %struct.xpvav** %sv_any177, align 8
  %xav_array178 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %154, i32 0, i32 0
  %155 = load i8*, i8** %xav_array178, align 8
  %156 = bitcast i8* %155 to %struct.sv**
  %arrayidx179 = getelementptr inbounds %struct.sv*, %struct.sv** %156, i64 %idxprom176
  %157 = load %struct.sv*, %struct.sv** %arrayidx179, align 8
  %cmp180 = icmp eq %struct.sv* %157, @PL_sv_undef
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %158 = phi i1 [ false, %do.cond ], [ %cmp180, %land.rhs ]
  br i1 %158, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end.187

if.else.182:                                      ; preds = %if.end.159
  %159 = load i32, i32* %key.addr, align 4
  %idxprom183 = sext i32 %159 to i64
  %160 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any184 = getelementptr inbounds %struct.av, %struct.av* %160, i32 0, i32 0
  %161 = load %struct.xpvav*, %struct.xpvav** %sv_any184, align 8
  %xav_array185 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %161, i32 0, i32 0
  %162 = load i8*, i8** %xav_array185, align 8
  %163 = bitcast i8* %162 to %struct.sv**
  %arrayidx186 = getelementptr inbounds %struct.sv*, %struct.sv** %163, i64 %idxprom183
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx186, align 8
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.182, %do.end
  %164 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_flags188 = getelementptr inbounds %struct.av, %struct.av* %164, i32 0, i32 2
  %165 = load i32, i32* %sv_flags188, align 4
  %and189 = and i32 %165, 16384
  %tobool190 = icmp ne i32 %and189, 0
  br i1 %tobool190, label %if.then.191, label %if.end.193

if.then.191:                                      ; preds = %if.end.187
  %166 = load %struct.av*, %struct.av** %av.addr, align 8
  %167 = bitcast %struct.av* %166 to %struct.sv*
  %call192 = call i32 @Perl_mg_set(%struct.sv* %167)
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.191, %if.end.187
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193
  %168 = load i32, i32* %flags.addr, align 4
  %and195 = and i32 %168, 2
  %tobool196 = icmp ne i32 %and195, 0
  br i1 %tobool196, label %if.then.197, label %if.else.198

if.then.197:                                      ; preds = %if.end.194
  %169 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_free(%struct.sv* %169)
  store %struct.sv* null, %struct.sv** %sv, align 8
  br label %if.end.207

if.else.198:                                      ; preds = %if.end.194
  %170 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any199 = getelementptr inbounds %struct.av, %struct.av* %170, i32 0, i32 0
  %171 = load %struct.xpvav*, %struct.xpvav** %sv_any199, align 8
  %xav_flags200 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %171, i32 0, i32 9
  %172 = load i8, i8* %xav_flags200, align 1
  %conv201 = zext i8 %172 to i32
  %and202 = and i32 %conv201, 1
  %tobool203 = icmp ne i32 %and202, 0
  br i1 %tobool203, label %if.then.204, label %if.end.206

if.then.204:                                      ; preds = %if.else.198
  %173 = load %struct.sv*, %struct.sv** %sv, align 8
  %call205 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %173)
  store %struct.sv* %call205, %struct.sv** %sv, align 8
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.204, %if.else.198
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.then.197
  %174 = load %struct.sv*, %struct.sv** %sv, align 8
  store %struct.sv* %174, %struct.sv** %retval
  br label %return

return:                                           ; preds = %if.end.207, %if.then.147, %if.then.139, %if.end.115, %if.then.113, %if.then.103, %if.then
  %175 = load %struct.sv*, %struct.sv** %retval
  ret %struct.sv* %175
}

declare i32 @Perl_sv_unmagic(%struct.sv*, i32) #1

; Function Attrs: nounwind uwtable
define signext i8 @Perl_av_exists(%struct.av* %av, i32 %key) #0 {
entry:
  %retval = alloca i8, align 1
  %av.addr = alloca %struct.av*, align 8
  %key.addr = alloca i32, align 4
  %tied_magic = alloca %struct.magic*, align 8
  %sv = alloca %struct.sv*, align 8
  %mg = alloca %struct.magic*, align 8
  %adjust_index = alloca i32, align 4
  %negative_indices_glob = alloca %struct.sv**, align 8
  store %struct.av* %av, %struct.av** %av.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %tobool = icmp ne %struct.av* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_flags = getelementptr inbounds %struct.av, %struct.av* %1, i32 0, i32 2
  %2 = load i32, i32* %sv_flags, align 4
  %and = and i32 %2, 32768
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end.161

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.av*, %struct.av** %av.addr, align 8
  %4 = bitcast %struct.av* %3 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %4, i32 80)
  store %struct.magic* %call, %struct.magic** %tied_magic, align 8
  %5 = load %struct.magic*, %struct.magic** %tied_magic, align 8
  %tobool3 = icmp ne %struct.magic* %5, null
  br i1 %tobool3, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.2
  %6 = load %struct.av*, %struct.av** %av.addr, align 8
  %7 = bitcast %struct.av* %6 to %struct.sv*
  %call4 = call %struct.magic* @Perl_mg_find(%struct.sv* %7, i32 68)
  %tobool5 = icmp ne %struct.magic* %call4, null
  br i1 %tobool5, label %if.then.6, label %if.end.160

if.then.6:                                        ; preds = %lor.lhs.false, %if.then.2
  %call7 = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call7, %struct.sv** %sv, align 8
  %8 = load i32, i32* %key.addr, align 4
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then.8, label %if.end.102

if.then.8:                                        ; preds = %if.then.6
  store i32 1, i32* %adjust_index, align 4
  %9 = load %struct.magic*, %struct.magic** %tied_magic, align 8
  %tobool9 = icmp ne %struct.magic* %9, null
  br i1 %tobool9, label %if.then.10, label %if.end.81

if.then.10:                                       ; preds = %if.then.8
  %10 = load %struct.magic*, %struct.magic** %tied_magic, align 8
  %mg_obj = getelementptr inbounds %struct.magic, %struct.magic* %10, i32 0, i32 5
  %11 = load %struct.sv*, %struct.sv** %mg_obj, align 8
  %tobool11 = icmp ne %struct.sv* %11, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.10
  %12 = load %struct.magic*, %struct.magic** %tied_magic, align 8
  %mg_obj12 = getelementptr inbounds %struct.magic, %struct.magic* %12, i32 0, i32 5
  %13 = load %struct.sv*, %struct.sv** %mg_obj12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.10
  %14 = load %struct.av*, %struct.av** %av.addr, align 8
  %15 = bitcast %struct.av* %14 to %struct.sv*
  %call13 = call %struct.sv* @Perl_newRV(%struct.sv* %15)
  %call14 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call13)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %13, %cond.true ], [ %call14, %cond.false ]
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %cond, i32 0, i32 0
  %16 = load i8*, i8** %sv_any, align 8
  %17 = bitcast i8* %16 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %17, i32 0, i32 0
  %18 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_any15 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 0
  %19 = load i8*, i8** %sv_any15, align 8
  %20 = bitcast i8* %19 to %struct.xpvmg*
  %xmg_stash = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %20, i32 0, i32 6
  %21 = load %struct.hv*, %struct.hv** %xmg_stash, align 8
  %call16 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i32 16, i32 0)
  store %struct.sv** %call16, %struct.sv*** %negative_indices_glob, align 8
  %22 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %tobool17 = icmp ne %struct.sv** %22, null
  br i1 %tobool17, label %land.lhs.true, label %if.end.80

land.lhs.true:                                    ; preds = %cond.end
  %23 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %24 = load %struct.sv*, %struct.sv** %23, align 8
  %sv_any18 = getelementptr inbounds %struct.sv, %struct.sv* %24, i32 0, i32 0
  %25 = load i8*, i8** %sv_any18, align 8
  %26 = bitcast i8* %25 to %struct.xpvgv*
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %26, i32 0, i32 7
  %27 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %27, i32 0, i32 0
  %28 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %tobool19 = icmp ne %struct.sv* %28, null
  br i1 %tobool19, label %cond.false.21, label %cond.true.20

cond.true.20:                                     ; preds = %land.lhs.true
  br i1 false, label %if.then.79, label %if.end.80

cond.false.21:                                    ; preds = %land.lhs.true
  %29 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %30 = load %struct.sv*, %struct.sv** %29, align 8
  %sv_any22 = getelementptr inbounds %struct.sv, %struct.sv* %30, i32 0, i32 0
  %31 = load i8*, i8** %sv_any22, align 8
  %32 = bitcast i8* %31 to %struct.xpvgv*
  %xgv_gp23 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %32, i32 0, i32 7
  %33 = load %struct.gp*, %struct.gp** %xgv_gp23, align 8
  %gp_sv24 = getelementptr inbounds %struct.gp, %struct.gp* %33, i32 0, i32 0
  %34 = load %struct.sv*, %struct.sv** %gp_sv24, align 8
  %sv_flags25 = getelementptr inbounds %struct.sv, %struct.sv* %34, i32 0, i32 2
  %35 = load i32, i32* %sv_flags25, align 4
  %and26 = and i32 %35, 262144
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %cond.true.28, label %cond.false.44

cond.true.28:                                     ; preds = %cond.false.21
  %36 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %37 = load %struct.sv*, %struct.sv** %36, align 8
  %sv_any29 = getelementptr inbounds %struct.sv, %struct.sv* %37, i32 0, i32 0
  %38 = load i8*, i8** %sv_any29, align 8
  %39 = bitcast i8* %38 to %struct.xpvgv*
  %xgv_gp30 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %39, i32 0, i32 7
  %40 = load %struct.gp*, %struct.gp** %xgv_gp30, align 8
  %gp_sv31 = getelementptr inbounds %struct.gp, %struct.gp* %40, i32 0, i32 0
  %41 = load %struct.sv*, %struct.sv** %gp_sv31, align 8
  %sv_any32 = getelementptr inbounds %struct.sv, %struct.sv* %41, i32 0, i32 0
  %42 = load i8*, i8** %sv_any32, align 8
  %43 = bitcast i8* %42 to %struct.xpv*
  store %struct.xpv* %43, %struct.xpv** @PL_Xpv, align 8
  %tobool33 = icmp ne %struct.xpv* %43, null
  br i1 %tobool33, label %land.lhs.true.34, label %cond.false.43

land.lhs.true.34:                                 ; preds = %cond.true.28
  %44 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %44, i32 0, i32 1
  %45 = load i64, i64* %xpv_cur, align 8
  %cmp35 = icmp ugt i64 %45, 1
  br i1 %cmp35, label %cond.true.42, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %land.lhs.true.34
  %46 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur37 = getelementptr inbounds %struct.xpv, %struct.xpv* %46, i32 0, i32 1
  %47 = load i64, i64* %xpv_cur37, align 8
  %tobool38 = icmp ne i64 %47, 0
  br i1 %tobool38, label %land.lhs.true.39, label %cond.false.43

land.lhs.true.39:                                 ; preds = %lor.lhs.false.36
  %48 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %48, i32 0, i32 0
  %49 = load i8*, i8** %xpv_pv, align 8
  %50 = load i8, i8* %49, align 1
  %conv = sext i8 %50 to i32
  %cmp40 = icmp ne i32 %conv, 48
  br i1 %cmp40, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %land.lhs.true.39, %land.lhs.true.34
  br i1 true, label %if.then.79, label %if.end.80

cond.false.43:                                    ; preds = %land.lhs.true.39, %lor.lhs.false.36, %cond.true.28
  br i1 false, label %if.then.79, label %if.end.80

cond.false.44:                                    ; preds = %cond.false.21
  %51 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %52 = load %struct.sv*, %struct.sv** %51, align 8
  %sv_any45 = getelementptr inbounds %struct.sv, %struct.sv* %52, i32 0, i32 0
  %53 = load i8*, i8** %sv_any45, align 8
  %54 = bitcast i8* %53 to %struct.xpvgv*
  %xgv_gp46 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %54, i32 0, i32 7
  %55 = load %struct.gp*, %struct.gp** %xgv_gp46, align 8
  %gp_sv47 = getelementptr inbounds %struct.gp, %struct.gp* %55, i32 0, i32 0
  %56 = load %struct.sv*, %struct.sv** %gp_sv47, align 8
  %sv_flags48 = getelementptr inbounds %struct.sv, %struct.sv* %56, i32 0, i32 2
  %57 = load i32, i32* %sv_flags48, align 4
  %and49 = and i32 %57, 65536
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %cond.true.51, label %cond.false.58

cond.true.51:                                     ; preds = %cond.false.44
  %58 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %59 = load %struct.sv*, %struct.sv** %58, align 8
  %sv_any52 = getelementptr inbounds %struct.sv, %struct.sv* %59, i32 0, i32 0
  %60 = load i8*, i8** %sv_any52, align 8
  %61 = bitcast i8* %60 to %struct.xpvgv*
  %xgv_gp53 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %61, i32 0, i32 7
  %62 = load %struct.gp*, %struct.gp** %xgv_gp53, align 8
  %gp_sv54 = getelementptr inbounds %struct.gp, %struct.gp* %62, i32 0, i32 0
  %63 = load %struct.sv*, %struct.sv** %gp_sv54, align 8
  %sv_any55 = getelementptr inbounds %struct.sv, %struct.sv* %63, i32 0, i32 0
  %64 = load i8*, i8** %sv_any55, align 8
  %65 = bitcast i8* %64 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %65, i32 0, i32 3
  %66 = load i64, i64* %xiv_iv, align 8
  %cmp56 = icmp ne i64 %66, 0
  br i1 %cmp56, label %if.then.79, label %if.end.80

cond.false.58:                                    ; preds = %cond.false.44
  %67 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %68 = load %struct.sv*, %struct.sv** %67, align 8
  %sv_any59 = getelementptr inbounds %struct.sv, %struct.sv* %68, i32 0, i32 0
  %69 = load i8*, i8** %sv_any59, align 8
  %70 = bitcast i8* %69 to %struct.xpvgv*
  %xgv_gp60 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %70, i32 0, i32 7
  %71 = load %struct.gp*, %struct.gp** %xgv_gp60, align 8
  %gp_sv61 = getelementptr inbounds %struct.gp, %struct.gp* %71, i32 0, i32 0
  %72 = load %struct.sv*, %struct.sv** %gp_sv61, align 8
  %sv_flags62 = getelementptr inbounds %struct.sv, %struct.sv* %72, i32 0, i32 2
  %73 = load i32, i32* %sv_flags62, align 4
  %and63 = and i32 %73, 131072
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %cond.true.65, label %cond.false.72

cond.true.65:                                     ; preds = %cond.false.58
  %74 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %75 = load %struct.sv*, %struct.sv** %74, align 8
  %sv_any66 = getelementptr inbounds %struct.sv, %struct.sv* %75, i32 0, i32 0
  %76 = load i8*, i8** %sv_any66, align 8
  %77 = bitcast i8* %76 to %struct.xpvgv*
  %xgv_gp67 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %77, i32 0, i32 7
  %78 = load %struct.gp*, %struct.gp** %xgv_gp67, align 8
  %gp_sv68 = getelementptr inbounds %struct.gp, %struct.gp* %78, i32 0, i32 0
  %79 = load %struct.sv*, %struct.sv** %gp_sv68, align 8
  %sv_any69 = getelementptr inbounds %struct.sv, %struct.sv* %79, i32 0, i32 0
  %80 = load i8*, i8** %sv_any69, align 8
  %81 = bitcast i8* %80 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %81, i32 0, i32 4
  %82 = load double, double* %xnv_nv, align 8
  %cmp70 = fcmp une double %82, 0.000000e+00
  br i1 %cmp70, label %if.then.79, label %if.end.80

cond.false.72:                                    ; preds = %cond.false.58
  %83 = load %struct.sv**, %struct.sv*** %negative_indices_glob, align 8
  %84 = load %struct.sv*, %struct.sv** %83, align 8
  %sv_any73 = getelementptr inbounds %struct.sv, %struct.sv* %84, i32 0, i32 0
  %85 = load i8*, i8** %sv_any73, align 8
  %86 = bitcast i8* %85 to %struct.xpvgv*
  %xgv_gp74 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %86, i32 0, i32 7
  %87 = load %struct.gp*, %struct.gp** %xgv_gp74, align 8
  %gp_sv75 = getelementptr inbounds %struct.gp, %struct.gp* %87, i32 0, i32 0
  %88 = load %struct.sv*, %struct.sv** %gp_sv75, align 8
  %call76 = call signext i8 @Perl_sv_2bool(%struct.sv* %88)
  %conv77 = sext i8 %call76 to i32
  %tobool78 = icmp ne i32 %conv77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %cond.false.72, %cond.true.65, %cond.true.51, %cond.false.43, %cond.true.42, %cond.true.20
  store i32 0, i32* %adjust_index, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %cond.false.72, %cond.true.65, %cond.true.51, %cond.false.43, %cond.true.42, %cond.true.20, %cond.end
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.8
  %89 = load i32, i32* %adjust_index, align 4
  %tobool82 = icmp ne i32 %89, 0
  br i1 %tobool82, label %if.then.83, label %if.end.101

if.then.83:                                       ; preds = %if.end.81
  %90 = load %struct.av*, %struct.av** %av.addr, align 8
  %91 = bitcast %struct.av* %90 to %struct.sv*
  %sv_flags84 = getelementptr inbounds %struct.sv, %struct.sv* %91, i32 0, i32 2
  %92 = load i32, i32* %sv_flags84, align 4
  %and85 = and i32 %92, 32768
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %cond.true.87, label %cond.false.90

cond.true.87:                                     ; preds = %if.then.83
  %93 = load %struct.av*, %struct.av** %av.addr, align 8
  %94 = bitcast %struct.av* %93 to %struct.sv*
  %call88 = call i32 @Perl_mg_size(%struct.sv* %94)
  %conv89 = sext i32 %call88 to i64
  br label %cond.end.92

cond.false.90:                                    ; preds = %if.then.83
  %95 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any91 = getelementptr inbounds %struct.av, %struct.av* %95, i32 0, i32 0
  %96 = load %struct.xpvav*, %struct.xpvav** %sv_any91, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %96, i32 0, i32 1
  %97 = load i64, i64* %xav_fill, align 8
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.90, %cond.true.87
  %cond93 = phi i64 [ %conv89, %cond.true.87 ], [ %97, %cond.false.90 ]
  %add = add nsw i64 %cond93, 1
  %98 = load i32, i32* %key.addr, align 4
  %conv94 = sext i32 %98 to i64
  %add95 = add nsw i64 %conv94, %add
  %conv96 = trunc i64 %add95 to i32
  store i32 %conv96, i32* %key.addr, align 4
  %99 = load i32, i32* %key.addr, align 4
  %cmp97 = icmp slt i32 %99, 0
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %cond.end.92
  store i8 0, i8* %retval
  br label %return

if.end.100:                                       ; preds = %cond.end.92
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.end.81
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.6
  %100 = load %struct.av*, %struct.av** %av.addr, align 8
  %101 = bitcast %struct.av* %100 to %struct.sv*
  %102 = load %struct.sv*, %struct.sv** %sv, align 8
  %103 = load i32, i32* %key.addr, align 4
  %call103 = call i32 @Perl_mg_copy(%struct.sv* %101, %struct.sv* %102, i8* null, i32 %103)
  %104 = load %struct.sv*, %struct.sv** %sv, align 8
  %call104 = call %struct.magic* @Perl_mg_find(%struct.sv* %104, i32 112)
  store %struct.magic* %call104, %struct.magic** %mg, align 8
  %105 = load %struct.magic*, %struct.magic** %mg, align 8
  %tobool105 = icmp ne %struct.magic* %105, null
  br i1 %tobool105, label %if.then.106, label %if.end.159

if.then.106:                                      ; preds = %if.end.102
  %106 = load %struct.sv*, %struct.sv** %sv, align 8
  %107 = load %struct.magic*, %struct.magic** %mg, align 8
  %call107 = call i32 @Perl_magic_existspack(%struct.sv* %106, %struct.magic* %107)
  %108 = load %struct.sv*, %struct.sv** %sv, align 8
  %tobool108 = icmp ne %struct.sv* %108, null
  br i1 %tobool108, label %cond.false.110, label %cond.true.109

cond.true.109:                                    ; preds = %if.then.106
  br label %cond.end.156

cond.false.110:                                   ; preds = %if.then.106
  %109 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags111 = getelementptr inbounds %struct.sv, %struct.sv* %109, i32 0, i32 2
  %110 = load i32, i32* %sv_flags111, align 4
  %and112 = and i32 %110, 262144
  %tobool113 = icmp ne i32 %and112, 0
  br i1 %tobool113, label %cond.true.114, label %cond.false.129

cond.true.114:                                    ; preds = %cond.false.110
  %111 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any115 = getelementptr inbounds %struct.sv, %struct.sv* %111, i32 0, i32 0
  %112 = load i8*, i8** %sv_any115, align 8
  %113 = bitcast i8* %112 to %struct.xpv*
  store %struct.xpv* %113, %struct.xpv** @PL_Xpv, align 8
  %tobool116 = icmp ne %struct.xpv* %113, null
  br i1 %tobool116, label %land.rhs, label %land.end.127

land.rhs:                                         ; preds = %cond.true.114
  %114 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur117 = getelementptr inbounds %struct.xpv, %struct.xpv* %114, i32 0, i32 1
  %115 = load i64, i64* %xpv_cur117, align 8
  %cmp118 = icmp ugt i64 %115, 1
  br i1 %cmp118, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %116 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur120 = getelementptr inbounds %struct.xpv, %struct.xpv* %116, i32 0, i32 1
  %117 = load i64, i64* %xpv_cur120, align 8
  %tobool121 = icmp ne i64 %117, 0
  br i1 %tobool121, label %land.rhs.122, label %land.end

land.rhs.122:                                     ; preds = %lor.rhs
  %118 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv123 = getelementptr inbounds %struct.xpv, %struct.xpv* %118, i32 0, i32 0
  %119 = load i8*, i8** %xpv_pv123, align 8
  %120 = load i8, i8* %119, align 1
  %conv124 = sext i8 %120 to i32
  %cmp125 = icmp ne i32 %conv124, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs.122, %lor.rhs
  %121 = phi i1 [ false, %lor.rhs ], [ %cmp125, %land.rhs.122 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %122 = phi i1 [ true, %land.rhs ], [ %121, %land.end ]
  br label %land.end.127

land.end.127:                                     ; preds = %lor.end, %cond.true.114
  %123 = phi i1 [ false, %cond.true.114 ], [ %122, %lor.end ]
  %cond128 = select i1 %123, i32 1, i32 0
  br label %cond.end.154

cond.false.129:                                   ; preds = %cond.false.110
  %124 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags130 = getelementptr inbounds %struct.sv, %struct.sv* %124, i32 0, i32 2
  %125 = load i32, i32* %sv_flags130, align 4
  %and131 = and i32 %125, 65536
  %tobool132 = icmp ne i32 %and131, 0
  br i1 %tobool132, label %cond.true.133, label %cond.false.138

cond.true.133:                                    ; preds = %cond.false.129
  %126 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any134 = getelementptr inbounds %struct.sv, %struct.sv* %126, i32 0, i32 0
  %127 = load i8*, i8** %sv_any134, align 8
  %128 = bitcast i8* %127 to %struct.xpviv*
  %xiv_iv135 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %128, i32 0, i32 3
  %129 = load i64, i64* %xiv_iv135, align 8
  %cmp136 = icmp ne i64 %129, 0
  %conv137 = zext i1 %cmp136 to i32
  br label %cond.end.152

cond.false.138:                                   ; preds = %cond.false.129
  %130 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags139 = getelementptr inbounds %struct.sv, %struct.sv* %130, i32 0, i32 2
  %131 = load i32, i32* %sv_flags139, align 4
  %and140 = and i32 %131, 131072
  %tobool141 = icmp ne i32 %and140, 0
  br i1 %tobool141, label %cond.true.142, label %cond.false.147

cond.true.142:                                    ; preds = %cond.false.138
  %132 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any143 = getelementptr inbounds %struct.sv, %struct.sv* %132, i32 0, i32 0
  %133 = load i8*, i8** %sv_any143, align 8
  %134 = bitcast i8* %133 to %struct.xpvnv*
  %xnv_nv144 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %134, i32 0, i32 4
  %135 = load double, double* %xnv_nv144, align 8
  %cmp145 = fcmp une double %135, 0.000000e+00
  %conv146 = zext i1 %cmp145 to i32
  br label %cond.end.150

cond.false.147:                                   ; preds = %cond.false.138
  %136 = load %struct.sv*, %struct.sv** %sv, align 8
  %call148 = call signext i8 @Perl_sv_2bool(%struct.sv* %136)
  %conv149 = sext i8 %call148 to i32
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.147, %cond.true.142
  %cond151 = phi i32 [ %conv146, %cond.true.142 ], [ %conv149, %cond.false.147 ]
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.end.150, %cond.true.133
  %cond153 = phi i32 [ %conv137, %cond.true.133 ], [ %cond151, %cond.end.150 ]
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.end.152, %land.end.127
  %cond155 = phi i32 [ %cond128, %land.end.127 ], [ %cond153, %cond.end.152 ]
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.end.154, %cond.true.109
  %cond157 = phi i32 [ 0, %cond.true.109 ], [ %cond155, %cond.end.154 ]
  %conv158 = trunc i32 %cond157 to i8
  store i8 %conv158, i8* %retval
  br label %return

if.end.159:                                       ; preds = %if.end.102
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %lor.lhs.false
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.end
  %137 = load i32, i32* %key.addr, align 4
  %cmp162 = icmp slt i32 %137, 0
  br i1 %cmp162, label %if.then.164, label %if.end.184

if.then.164:                                      ; preds = %if.end.161
  %138 = load %struct.av*, %struct.av** %av.addr, align 8
  %139 = bitcast %struct.av* %138 to %struct.sv*
  %sv_flags165 = getelementptr inbounds %struct.sv, %struct.sv* %139, i32 0, i32 2
  %140 = load i32, i32* %sv_flags165, align 4
  %and166 = and i32 %140, 32768
  %tobool167 = icmp ne i32 %and166, 0
  br i1 %tobool167, label %cond.true.168, label %cond.false.171

cond.true.168:                                    ; preds = %if.then.164
  %141 = load %struct.av*, %struct.av** %av.addr, align 8
  %142 = bitcast %struct.av* %141 to %struct.sv*
  %call169 = call i32 @Perl_mg_size(%struct.sv* %142)
  %conv170 = sext i32 %call169 to i64
  br label %cond.end.174

cond.false.171:                                   ; preds = %if.then.164
  %143 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any172 = getelementptr inbounds %struct.av, %struct.av* %143, i32 0, i32 0
  %144 = load %struct.xpvav*, %struct.xpvav** %sv_any172, align 8
  %xav_fill173 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %144, i32 0, i32 1
  %145 = load i64, i64* %xav_fill173, align 8
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.171, %cond.true.168
  %cond175 = phi i64 [ %conv170, %cond.true.168 ], [ %145, %cond.false.171 ]
  %add176 = add nsw i64 %cond175, 1
  %146 = load i32, i32* %key.addr, align 4
  %conv177 = sext i32 %146 to i64
  %add178 = add nsw i64 %conv177, %add176
  %conv179 = trunc i64 %add178 to i32
  store i32 %conv179, i32* %key.addr, align 4
  %147 = load i32, i32* %key.addr, align 4
  %cmp180 = icmp slt i32 %147, 0
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %cond.end.174
  store i8 0, i8* %retval
  br label %return

if.end.183:                                       ; preds = %cond.end.174
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.end.161
  %148 = load i32, i32* %key.addr, align 4
  %conv185 = sext i32 %148 to i64
  %149 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any186 = getelementptr inbounds %struct.av, %struct.av* %149, i32 0, i32 0
  %150 = load %struct.xpvav*, %struct.xpvav** %sv_any186, align 8
  %xav_fill187 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %150, i32 0, i32 1
  %151 = load i64, i64* %xav_fill187, align 8
  %cmp188 = icmp sle i64 %conv185, %151
  br i1 %cmp188, label %land.lhs.true.190, label %if.else

land.lhs.true.190:                                ; preds = %if.end.184
  %152 = load i32, i32* %key.addr, align 4
  %idxprom = sext i32 %152 to i64
  %153 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any191 = getelementptr inbounds %struct.av, %struct.av* %153, i32 0, i32 0
  %154 = load %struct.xpvav*, %struct.xpvav** %sv_any191, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %154, i32 0, i32 0
  %155 = load i8*, i8** %xav_array, align 8
  %156 = bitcast i8* %155 to %struct.sv**
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %156, i64 %idxprom
  %157 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %cmp192 = icmp ne %struct.sv* %157, @PL_sv_undef
  br i1 %cmp192, label %land.lhs.true.194, label %if.else

land.lhs.true.194:                                ; preds = %land.lhs.true.190
  %158 = load i32, i32* %key.addr, align 4
  %idxprom195 = sext i32 %158 to i64
  %159 = load %struct.av*, %struct.av** %av.addr, align 8
  %sv_any196 = getelementptr inbounds %struct.av, %struct.av* %159, i32 0, i32 0
  %160 = load %struct.xpvav*, %struct.xpvav** %sv_any196, align 8
  %xav_array197 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %160, i32 0, i32 0
  %161 = load i8*, i8** %xav_array197, align 8
  %162 = bitcast i8* %161 to %struct.sv**
  %arrayidx198 = getelementptr inbounds %struct.sv*, %struct.sv** %162, i64 %idxprom195
  %163 = load %struct.sv*, %struct.sv** %arrayidx198, align 8
  %tobool199 = icmp ne %struct.sv* %163, null
  br i1 %tobool199, label %if.then.200, label %if.else

if.then.200:                                      ; preds = %land.lhs.true.194
  store i8 1, i8* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.194, %land.lhs.true.190, %if.end.184
  store i8 0, i8* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.200, %if.then.182, %cond.end.156, %if.then.99, %if.then
  %164 = load i8, i8* %retval
  ret i8 %164
}

declare i32 @Perl_magic_existspack(%struct.sv*, %struct.magic*) #1

; Function Attrs: nounwind uwtable
define %struct.hv* @Perl_avhv_keys(%struct.av* %av) #0 {
entry:
  %retval = alloca %struct.hv*, align 8
  %av.addr = alloca %struct.av*, align 8
  %keysp = alloca %struct.sv**, align 8
  %sv = alloca %struct.sv*, align 8
  store %struct.av* %av, %struct.av** %av.addr, align 8
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %call = call %struct.sv** @Perl_av_fetch(%struct.av* %0, i32 0, i32 0)
  store %struct.sv** %call, %struct.sv*** %keysp, align 8
  %1 = load %struct.sv**, %struct.sv*** %keysp, align 8
  %tobool = icmp ne %struct.sv** %1, null
  br i1 %tobool, label %if.then, label %if.end.37

if.then:                                          ; preds = %entry
  %2 = load %struct.sv**, %struct.sv*** %keysp, align 8
  %3 = load %struct.sv*, %struct.sv** %2, align 8
  store %struct.sv* %3, %struct.sv** %sv, align 8
  %4 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags, align 4
  %and = and i32 %5, 8192
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.sv*, %struct.sv** %sv, align 8
  %call3 = call i32 @Perl_mg_get(%struct.sv* %6)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %7 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags4 = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 2
  %8 = load i32, i32* %sv_flags4, align 4
  %and5 = and i32 %8, 524288
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.36

if.then.7:                                        ; preds = %if.end
  %9 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %9, i32 0, i32 14
  %10 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp = icmp ne %struct.sv* %10, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.16

land.lhs.true:                                    ; preds = %if.then.7
  %11 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings8 = getelementptr inbounds %struct.cop, %struct.cop* %11, i32 0, i32 14
  %12 = load %struct.sv*, %struct.sv** %cop_warnings8, align 8
  %cmp9 = icmp ne %struct.sv* %12, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp9, label %land.lhs.true.10, label %lor.lhs.false.16

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %13 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings11 = getelementptr inbounds %struct.cop, %struct.cop* %13, i32 0, i32 14
  %14 = load %struct.sv*, %struct.sv** %cop_warnings11, align 8
  %cmp12 = icmp eq %struct.sv* %14, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp12, label %land.lhs.true.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.10
  %15 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings13 = getelementptr inbounds %struct.cop, %struct.cop* %15, i32 0, i32 14
  %16 = load %struct.sv*, %struct.sv** %cop_warnings13, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 0
  %17 = load i8*, i8** %sv_any, align 8
  %18 = bitcast i8* %17 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %18, i32 0, i32 0
  %19 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %20 to i32
  %and14 = and i32 %conv, 16
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %land.lhs.true.24, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false, %land.lhs.true, %if.then.7
  %21 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings17 = getelementptr inbounds %struct.cop, %struct.cop* %21, i32 0, i32 14
  %22 = load %struct.sv*, %struct.sv** %cop_warnings17, align 8
  %cmp18 = icmp eq %struct.sv* %22, null
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.28

land.lhs.true.20:                                 ; preds = %lor.lhs.false.16
  %23 = load i8, i8* @PL_dowarn, align 1
  %conv21 = zext i8 %23 to i32
  %and22 = and i32 %conv21, 1
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.28

land.lhs.true.24:                                 ; preds = %land.lhs.true.20, %lor.lhs.false, %land.lhs.true.10
  %24 = load %struct.sv*, %struct.sv** %sv, align 8
  %call25 = call i32 @Perl_sv_isa(%struct.sv* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0))
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %land.lhs.true.24
  call void (i32, i8*, ...) @Perl_warner(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %land.lhs.true.24, %land.lhs.true.20, %lor.lhs.false.16
  %25 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any29 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 0
  %26 = load i8*, i8** %sv_any29, align 8
  %27 = bitcast i8* %26 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %27, i32 0, i32 0
  %28 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  store %struct.sv* %28, %struct.sv** %sv, align 8
  %29 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags30 = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 2
  %30 = load i32, i32* %sv_flags30, align 4
  %and31 = and i32 %30, 255
  %cmp32 = icmp eq i32 %and31, 11
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.28
  %31 = load %struct.sv*, %struct.sv** %sv, align 8
  %32 = bitcast %struct.sv* %31 to %struct.hv*
  store %struct.hv* %32, %struct.hv** %retval
  br label %return

if.end.35:                                        ; preds = %if.end.28
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0))
  store %struct.hv* null, %struct.hv** %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.then.34
  %33 = load %struct.hv*, %struct.hv** %retval
  ret %struct.hv* %33
}

declare i32 @Perl_mg_get(%struct.sv*) #1

declare i32 @Perl_sv_isa(%struct.sv*, i8*) #1

declare void @Perl_warner(i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.sv** @Perl_avhv_store_ent(%struct.av* %av, %struct.sv* %keysv, %struct.sv* %val, i32 %hash) #0 {
entry:
  %av.addr = alloca %struct.av*, align 8
  %keysv.addr = alloca %struct.sv*, align 8
  %val.addr = alloca %struct.sv*, align 8
  %hash.addr = alloca i32, align 4
  store %struct.av* %av, %struct.av** %av.addr, align 8
  store %struct.sv* %keysv, %struct.sv** %keysv.addr, align 8
  store %struct.sv* %val, %struct.sv** %val.addr, align 8
  store i32 %hash, i32* %hash.addr, align 4
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %1 = load %struct.av*, %struct.av** %av.addr, align 8
  %2 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %3 = load i32, i32* %hash.addr, align 4
  %call = call i32 @S_avhv_index(%struct.av* %1, %struct.sv* %2, i32 %3)
  %4 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %call1 = call %struct.sv** @Perl_av_store(%struct.av* %0, i32 %call, %struct.sv* %4)
  ret %struct.sv** %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @S_avhv_index(%struct.av* %av, %struct.sv* %keysv, i32 %hash) #0 {
entry:
  %av.addr = alloca %struct.av*, align 8
  %keysv.addr = alloca %struct.sv*, align 8
  %hash.addr = alloca i32, align 4
  %keys = alloca %struct.hv*, align 8
  %he = alloca %struct.he*, align 8
  %n_a = alloca i64, align 8
  store %struct.av* %av, %struct.av** %av.addr, align 8
  store %struct.sv* %keysv, %struct.sv** %keysv.addr, align 8
  store i32 %hash, i32* %hash.addr, align 4
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %call = call %struct.hv* @Perl_avhv_keys(%struct.av* %0)
  store %struct.hv* %call, %struct.hv** %keys, align 8
  %1 = load %struct.hv*, %struct.hv** %keys, align 8
  %2 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %3 = load i32, i32* %hash.addr, align 4
  %call1 = call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %1, %struct.sv* %2, i32 0, i32 %3)
  store %struct.he* %call1, %struct.he** %he, align 8
  %4 = load %struct.he*, %struct.he** %he, align 8
  %tobool = icmp ne %struct.he* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 2
  %6 = load i32, i32* %sv_flags, align 4
  %and = and i32 %6, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 0
  %8 = load i8*, i8** %sv_any, align 8
  %9 = bitcast i8* %8 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %9, i32 0, i32 1
  %10 = load i64, i64* %xpv_cur, align 8
  store i64 %10, i64* %n_a, align 8
  %11 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %sv_any2 = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 0
  %12 = load i8*, i8** %sv_any2, align 8
  %13 = bitcast i8* %12 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %13, i32 0, i32 0
  %14 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %15 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %call3 = call i8* @Perl_sv_2pv_flags(%struct.sv* %15, i64* %n_a, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %14, %cond.true ], [ %call3, %cond.false ]
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0), i8* %cond)
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %16 = load %struct.he*, %struct.he** %he, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %16, i32 0, i32 2
  %17 = load %struct.sv*, %struct.sv** %hent_val, align 8
  %call4 = call i32 @S_avhv_index_sv(%struct.sv* %17)
  ret i32 %call4
}

; Function Attrs: nounwind uwtable
define %struct.sv** @Perl_avhv_fetch_ent(%struct.av* %av, %struct.sv* %keysv, i32 %lval, i32 %hash) #0 {
entry:
  %av.addr = alloca %struct.av*, align 8
  %keysv.addr = alloca %struct.sv*, align 8
  %lval.addr = alloca i32, align 4
  %hash.addr = alloca i32, align 4
  store %struct.av* %av, %struct.av** %av.addr, align 8
  store %struct.sv* %keysv, %struct.sv** %keysv.addr, align 8
  store i32 %lval, i32* %lval.addr, align 4
  store i32 %hash, i32* %hash.addr, align 4
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %1 = load %struct.av*, %struct.av** %av.addr, align 8
  %2 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %3 = load i32, i32* %hash.addr, align 4
  %call = call i32 @S_avhv_index(%struct.av* %1, %struct.sv* %2, i32 %3)
  %4 = load i32, i32* %lval.addr, align 4
  %call1 = call %struct.sv** @Perl_av_fetch(%struct.av* %0, i32 %call, i32 %4)
  ret %struct.sv** %call1
}

; Function Attrs: nounwind uwtable
define %struct.sv* @Perl_avhv_delete_ent(%struct.av* %av, %struct.sv* %keysv, i32 %flags, i32 %hash) #0 {
entry:
  %retval = alloca %struct.sv*, align 8
  %av.addr = alloca %struct.av*, align 8
  %keysv.addr = alloca %struct.sv*, align 8
  %flags.addr = alloca i32, align 4
  %hash.addr = alloca i32, align 4
  %keys = alloca %struct.hv*, align 8
  %he = alloca %struct.he*, align 8
  store %struct.av* %av, %struct.av** %av.addr, align 8
  store %struct.sv* %keysv, %struct.sv** %keysv.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %hash, i32* %hash.addr, align 4
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %call = call %struct.hv* @Perl_avhv_keys(%struct.av* %0)
  store %struct.hv* %call, %struct.hv** %keys, align 8
  %1 = load %struct.hv*, %struct.hv** %keys, align 8
  %2 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %3 = load i32, i32* %hash.addr, align 4
  %call1 = call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %1, %struct.sv* %2, i32 0, i32 %3)
  store %struct.he* %call1, %struct.he** %he, align 8
  %4 = load %struct.he*, %struct.he** %he, align 8
  %tobool = icmp ne %struct.he* %4, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.he*, %struct.he** %he, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %5, i32 0, i32 2
  %6 = load %struct.sv*, %struct.sv** %hent_val, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 2
  %7 = load i32, i32* %sv_flags, align 4
  %and = and i32 %7, 118423552
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.sv* null, %struct.sv** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.av*, %struct.av** %av.addr, align 8
  %9 = load %struct.he*, %struct.he** %he, align 8
  %hent_val3 = getelementptr inbounds %struct.he, %struct.he* %9, i32 0, i32 2
  %10 = load %struct.sv*, %struct.sv** %hent_val3, align 8
  %call4 = call i32 @S_avhv_index_sv(%struct.sv* %10)
  %11 = load i32, i32* %flags.addr, align 4
  %call5 = call %struct.sv* @Perl_av_delete(%struct.av* %8, i32 %call4, i32 %11)
  store %struct.sv* %call5, %struct.sv** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct.sv*, %struct.sv** %retval
  ret %struct.sv* %12
}

declare %struct.he* @Perl_hv_fetch_ent(%struct.hv*, %struct.sv*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @S_avhv_index_sv(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %index = alloca i32, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %4, i32 0, i32 3
  %5 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %call, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %index, align 4
  %7 = load i32, i32* %index, align 4
  %cmp = icmp slt i32 %7, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %8 = load i32, i32* %index, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_avhv_exists_ent(%struct.av* %av, %struct.sv* %keysv, i32 %hash) #0 {
entry:
  %retval = alloca i8, align 1
  %av.addr = alloca %struct.av*, align 8
  %keysv.addr = alloca %struct.sv*, align 8
  %hash.addr = alloca i32, align 4
  %keys = alloca %struct.hv*, align 8
  %he = alloca %struct.he*, align 8
  store %struct.av* %av, %struct.av** %av.addr, align 8
  store %struct.sv* %keysv, %struct.sv** %keysv.addr, align 8
  store i32 %hash, i32* %hash.addr, align 4
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %call = call %struct.hv* @Perl_avhv_keys(%struct.av* %0)
  store %struct.hv* %call, %struct.hv** %keys, align 8
  %1 = load %struct.hv*, %struct.hv** %keys, align 8
  %2 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %3 = load i32, i32* %hash.addr, align 4
  %call1 = call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %1, %struct.sv* %2, i32 0, i32 %3)
  store %struct.he* %call1, %struct.he** %he, align 8
  %4 = load %struct.he*, %struct.he** %he, align 8
  %tobool = icmp ne %struct.he* %4, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.he*, %struct.he** %he, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %5, i32 0, i32 2
  %6 = load %struct.sv*, %struct.sv** %hent_val, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 2
  %7 = load i32, i32* %sv_flags, align 4
  %and = and i32 %7, 118423552
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.av*, %struct.av** %av.addr, align 8
  %9 = load %struct.he*, %struct.he** %he, align 8
  %hent_val3 = getelementptr inbounds %struct.he, %struct.he* %9, i32 0, i32 2
  %10 = load %struct.sv*, %struct.sv** %hent_val3, align 8
  %call4 = call i32 @S_avhv_index_sv(%struct.sv* %10)
  %call5 = call signext i8 @Perl_av_exists(%struct.av* %8, i32 %call4)
  store i8 %call5, i8* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i8, i8* %retval
  ret i8 %11
}

; Function Attrs: nounwind uwtable
define %struct.he* @Perl_avhv_iternext(%struct.av* %av) #0 {
entry:
  %av.addr = alloca %struct.av*, align 8
  %keys = alloca %struct.hv*, align 8
  store %struct.av* %av, %struct.av** %av.addr, align 8
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %call = call %struct.hv* @Perl_avhv_keys(%struct.av* %0)
  store %struct.hv* %call, %struct.hv** %keys, align 8
  %1 = load %struct.hv*, %struct.hv** %keys, align 8
  %call1 = call %struct.he* @Perl_hv_iternext(%struct.hv* %1)
  ret %struct.he* %call1
}

declare %struct.he* @Perl_hv_iternext(%struct.hv*) #1

; Function Attrs: nounwind uwtable
define %struct.sv* @Perl_avhv_iterval(%struct.av* %av, %struct.he* %entry1) #0 {
entry:
  %av.addr = alloca %struct.av*, align 8
  %entry.addr = alloca %struct.he*, align 8
  %sv = alloca %struct.sv*, align 8
  store %struct.av* %av, %struct.av** %av.addr, align 8
  store %struct.he* %entry1, %struct.he** %entry.addr, align 8
  %0 = load %struct.av*, %struct.av** %av.addr, align 8
  %call = call %struct.hv* @Perl_avhv_keys(%struct.av* %0)
  %1 = load %struct.he*, %struct.he** %entry.addr, align 8
  %call2 = call %struct.sv* @Perl_hv_iterval(%struct.hv* %call, %struct.he* %1)
  store %struct.sv* %call2, %struct.sv** %sv, align 8
  %2 = load %struct.av*, %struct.av** %av.addr, align 8
  %3 = load %struct.sv*, %struct.sv** %sv, align 8
  %call3 = call i32 @S_avhv_index_sv(%struct.sv* %3)
  %call4 = call %struct.sv** @Perl_av_fetch(%struct.av* %2, i32 %call3, i32 1)
  %4 = load %struct.sv*, %struct.sv** %call4, align 8
  ret %struct.sv* %4
}

declare %struct.sv* @Perl_hv_iterval(%struct.hv*, %struct.he*) #1

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

declare i64 @Perl_sv_2iv(%struct.sv*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
