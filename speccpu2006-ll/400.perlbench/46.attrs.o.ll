; ModuleID = 'attrs.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, {}*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
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
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
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
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.xpv = type { i8*, i64, i64 }
%struct.xrv = type { %struct.sv* }

@PL_stack_sp = external global %struct.sv**, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_markstack_ptr = external global i32*, align 8
@.str = private unnamed_addr constant [22 x i8] c"Usage: %s(Class, ...)\00", align 1
@PL_compcv = external global %struct.cv*, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"can't set attributes outside a subroutine scope\00", align 1
@PL_curcop = external global %struct.cop*, align 8
@PL_dowarn = external global i8, align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"pragma \22attrs\22 is deprecated, use \22sub NAME : ATTRS\22 instead\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"invalid attribute name %s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Usage: attrs::get(sub)\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"invalid subroutine reference or name\00", align 1
@PL_stack_max = external global %struct.sv**, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"attrs.c\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"attrs::unimport\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"attrs::import\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"attrs::get\00", align 1
@PL_sv_yes = external global %struct.sv, align 8

; Function Attrs: nounwind uwtable
define void @XS_attrs_import(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %ix = alloca i32, align 4
  %i = alloca i32, align 4
  %n_a = alloca i64, align 8
  %attr = alloca i8*, align 8
  %flag = alloca i16, align 2
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
  %8 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %sv_any = getelementptr inbounds %struct.cv, %struct.cv* %8, i32 0, i32 0
  %9 = load %struct.xpvcv*, %struct.xpvcv** %sv_any, align 8
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %9, i32 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  %10 = load i32, i32* %any_i32, align 4
  store i32 %10, i32* %ix, align 4
  %11 = load i32, i32* %items, align 4
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext6 = sext i32 %11 to i64
  %idx.neg = sub i64 0, %idx.ext6
  %add.ptr7 = getelementptr inbounds %struct.sv*, %struct.sv** %12, i64 %idx.neg
  store %struct.sv** %add.ptr7, %struct.sv*** %sp, align 8
  %13 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %13, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %sv_any9 = getelementptr inbounds %struct.cv, %struct.cv* %14, i32 0, i32 0
  %15 = load %struct.xpvcv*, %struct.xpvcv** %sv_any9, align 8
  %xcv_gv = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %15, i32 0, i32 12
  %16 = load %struct.gv*, %struct.gv** %xcv_gv, align 8
  %sv_any10 = getelementptr inbounds %struct.gv, %struct.gv* %16, i32 0, i32 0
  %17 = load %struct.xpvgv*, %struct.xpvgv** %sv_any10, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %17, i32 0, i32 8
  %18 = load i8*, i8** %xgv_name, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.cv*, %struct.cv** @PL_compcv, align 8
  %tobool = icmp ne %struct.cv* %19, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.13

lor.lhs.false:                                    ; preds = %if.end
  %20 = load %struct.cv*, %struct.cv** @PL_compcv, align 8
  %sv_any11 = getelementptr inbounds %struct.cv, %struct.cv* %20, i32 0, i32 0
  %21 = load %struct.xpvcv*, %struct.xpvcv** %sv_any11, align 8
  %xcv_outside = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %21, i32 0, i32 16
  %22 = load %struct.cv*, %struct.cv** %xcv_outside, align 8
  store %struct.cv* %22, %struct.cv** %cv.addr, align 8
  %tobool12 = icmp ne %struct.cv* %22, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %lor.lhs.false, %if.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %lor.lhs.false
  %23 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %23, i32 0, i32 14
  %24 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp15 = icmp ne %struct.sv* %24, null
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false.29

land.lhs.true:                                    ; preds = %if.end.14
  %25 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings17 = getelementptr inbounds %struct.cop, %struct.cop* %25, i32 0, i32 14
  %26 = load %struct.sv*, %struct.sv** %cop_warnings17, align 8
  %cmp18 = icmp ne %struct.sv* %26, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp18, label %land.lhs.true.20, label %lor.lhs.false.29

land.lhs.true.20:                                 ; preds = %land.lhs.true
  %27 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings21 = getelementptr inbounds %struct.cop, %struct.cop* %27, i32 0, i32 14
  %28 = load %struct.sv*, %struct.sv** %cop_warnings21, align 8
  %cmp22 = icmp eq %struct.sv* %28, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp22, label %if.then.37, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %land.lhs.true.20
  %29 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings25 = getelementptr inbounds %struct.cop, %struct.cop* %29, i32 0, i32 14
  %30 = load %struct.sv*, %struct.sv** %cop_warnings25, align 8
  %sv_any26 = getelementptr inbounds %struct.sv, %struct.sv* %30, i32 0, i32 0
  %31 = load i8*, i8** %sv_any26, align 8
  %32 = bitcast i8* %31 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %32, i32 0, i32 0
  %33 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx, align 1
  %conv27 = sext i8 %34 to i32
  %and = and i32 %conv27, 16
  %tobool28 = icmp ne i32 %and, 0
  br i1 %tobool28, label %if.then.37, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.24, %land.lhs.true, %if.end.14
  %35 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings30 = getelementptr inbounds %struct.cop, %struct.cop* %35, i32 0, i32 14
  %36 = load %struct.sv*, %struct.sv** %cop_warnings30, align 8
  %cmp31 = icmp eq %struct.sv* %36, null
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.38

land.lhs.true.33:                                 ; preds = %lor.lhs.false.29
  %37 = load i8, i8* @PL_dowarn, align 1
  %conv34 = zext i8 %37 to i32
  %and35 = and i32 %conv34, 1
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %land.lhs.true.33, %lor.lhs.false.24, %land.lhs.true.20
  call void (i32, i8*, ...) @Perl_warner(i32 2, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %land.lhs.true.33, %lor.lhs.false.29
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.38
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %items, align 4
  %cmp39 = icmp slt i32 %38, %39
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i32, i32* %ax, align 4
  %41 = load i32, i32* %i, align 4
  %add41 = add nsw i32 %40, %41
  %idxprom = sext i32 %add41 to i64
  %42 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx42 = getelementptr inbounds %struct.sv*, %struct.sv** %42, i64 %idxprom
  %43 = load %struct.sv*, %struct.sv** %arrayidx42, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %43, i32 0, i32 2
  %44 = load i32, i32* %sv_flags, align 4
  %and43 = and i32 %44, 262144
  %cmp44 = icmp eq i32 %and43, 262144
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %45 = load i32, i32* %ax, align 4
  %46 = load i32, i32* %i, align 4
  %add46 = add nsw i32 %45, %46
  %idxprom47 = sext i32 %add46 to i64
  %47 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx48 = getelementptr inbounds %struct.sv*, %struct.sv** %47, i64 %idxprom47
  %48 = load %struct.sv*, %struct.sv** %arrayidx48, align 8
  %sv_any49 = getelementptr inbounds %struct.sv, %struct.sv* %48, i32 0, i32 0
  %49 = load i8*, i8** %sv_any49, align 8
  %50 = bitcast i8* %49 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %50, i32 0, i32 1
  %51 = load i64, i64* %xpv_cur, align 8
  store i64 %51, i64* %n_a, align 8
  %52 = load i32, i32* %ax, align 4
  %53 = load i32, i32* %i, align 4
  %add50 = add nsw i32 %52, %53
  %idxprom51 = sext i32 %add50 to i64
  %54 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx52 = getelementptr inbounds %struct.sv*, %struct.sv** %54, i64 %idxprom51
  %55 = load %struct.sv*, %struct.sv** %arrayidx52, align 8
  %sv_any53 = getelementptr inbounds %struct.sv, %struct.sv* %55, i32 0, i32 0
  %56 = load i8*, i8** %sv_any53, align 8
  %57 = bitcast i8* %56 to %struct.xpv*
  %xpv_pv54 = getelementptr inbounds %struct.xpv, %struct.xpv* %57, i32 0, i32 0
  %58 = load i8*, i8** %xpv_pv54, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %59 = load i32, i32* %ax, align 4
  %60 = load i32, i32* %i, align 4
  %add55 = add nsw i32 %59, %60
  %idxprom56 = sext i32 %add55 to i64
  %61 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx57 = getelementptr inbounds %struct.sv*, %struct.sv** %61, i64 %idxprom56
  %62 = load %struct.sv*, %struct.sv** %arrayidx57, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %62, i64* %n_a, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %58, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %attr, align 8
  %63 = load i8*, i8** %attr, align 8
  %call58 = call zeroext i16 @get_flag(i8* %63)
  store i16 %call58, i16* %flag, align 2
  %64 = load i16, i16* %flag, align 2
  %tobool59 = icmp ne i16 %64, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %cond.end
  %65 = load i8*, i8** %attr, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8* %65)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %cond.end
  %66 = load i32, i32* %ix, align 4
  %tobool62 = icmp ne i32 %66, 0
  br i1 %tobool62, label %if.then.63, label %if.else

if.then.63:                                       ; preds = %if.end.61
  %67 = load i16, i16* %flag, align 2
  %conv64 = zext i16 %67 to i32
  %neg = xor i32 %conv64, -1
  %68 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %sv_any65 = getelementptr inbounds %struct.cv, %struct.cv* %68, i32 0, i32 0
  %69 = load %struct.xpvcv*, %struct.xpvcv** %sv_any65, align 8
  %xcv_flags = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %69, i32 0, i32 17
  %70 = load i16, i16* %xcv_flags, align 2
  %conv66 = zext i16 %70 to i32
  %and67 = and i32 %conv66, %neg
  %conv68 = trunc i32 %and67 to i16
  store i16 %conv68, i16* %xcv_flags, align 2
  br label %if.end.74

if.else:                                          ; preds = %if.end.61
  %71 = load i16, i16* %flag, align 2
  %conv69 = zext i16 %71 to i32
  %72 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %sv_any70 = getelementptr inbounds %struct.cv, %struct.cv* %72, i32 0, i32 0
  %73 = load %struct.xpvcv*, %struct.xpvcv** %sv_any70, align 8
  %xcv_flags71 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %73, i32 0, i32 17
  %74 = load i16, i16* %xcv_flags71, align 2
  %conv72 = zext i16 %74 to i32
  %or = or i32 %conv72, %conv69
  %conv73 = trunc i32 %or to i16
  store i16 %conv73, i16* %xcv_flags71, align 2
  br label %if.end.74

if.end.74:                                        ; preds = %if.else, %if.then.63
  br label %for.inc

for.inc:                                          ; preds = %if.end.74
  %75 = load i32, i32* %i, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %76 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %76, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare void @Perl_croak(i8*, ...) #1

declare void @Perl_warner(i32, i8*, ...) #1

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: nounwind uwtable
define internal zeroext i16 @get_flag(i8* %attr) #0 {
entry:
  %retval = alloca i16, align 2
  %attr.addr = alloca i8*, align 8
  store i8* %attr, i8** %attr.addr, align 8
  %0 = load i8*, i8** %attr.addr, align 8
  %call = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i64 6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i16 64, i16* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %attr.addr, align 8
  %call1 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i64 6)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else.4, label %if.then.3

if.then.3:                                        ; preds = %if.else
  store i16 128, i16* %retval
  br label %return

if.else.4:                                        ; preds = %if.else
  store i16 0, i16* %retval
  br label %return

return:                                           ; preds = %if.else.4, %if.then.3, %if.then
  %2 = load i16, i16* %retval
  ret i16 %2
}

; Function Attrs: nounwind uwtable
define void @XS_attrs_get(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sub = alloca %struct.sv*, align 8
  %n_a = alloca i64, align 8
  %name = alloca i8*, align 8
  %tmp = alloca %struct.sv*, align 8
  %tmp61 = alloca %struct.sv*, align 8
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
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
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
  store %struct.sv* %13, %struct.sv** %sub, align 8
  %14 = load %struct.sv*, %struct.sv** %sub, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 2
  %15 = load i32, i32* %sv_flags, align 4
  %and = and i32 %15, 524288
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %16 = load %struct.sv*, %struct.sv** %sub, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 0
  %17 = load i8*, i8** %sv_any, align 8
  %18 = bitcast i8* %17 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %18, i32 0, i32 0
  %19 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  store %struct.sv* %19, %struct.sv** %sub, align 8
  %20 = load %struct.sv*, %struct.sv** %sub, align 8
  %sv_flags11 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 2
  %21 = load i32, i32* %sv_flags11, align 4
  %and12 = and i32 %21, 255
  %cmp13 = icmp ne i32 %and12, 12
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.10
  store %struct.sv* null, %struct.sv** %sub, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.10
  br label %if.end.24

if.else:                                          ; preds = %if.end
  %22 = load %struct.sv*, %struct.sv** %sub, align 8
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 2
  %23 = load i32, i32* %sv_flags17, align 4
  %and18 = and i32 %23, 262144
  %cmp19 = icmp eq i32 %and18, 262144
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %24 = load %struct.sv*, %struct.sv** %sub, align 8
  %sv_any21 = getelementptr inbounds %struct.sv, %struct.sv* %24, i32 0, i32 0
  %25 = load i8*, i8** %sv_any21, align 8
  %26 = bitcast i8* %25 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %26, i32 0, i32 1
  %27 = load i64, i64* %xpv_cur, align 8
  store i64 %27, i64* %n_a, align 8
  %28 = load %struct.sv*, %struct.sv** %sub, align 8
  %sv_any22 = getelementptr inbounds %struct.sv, %struct.sv* %28, i32 0, i32 0
  %29 = load i8*, i8** %sv_any22, align 8
  %30 = bitcast i8* %29 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %30, i32 0, i32 0
  %31 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %32 = load %struct.sv*, %struct.sv** %sub, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %32, i64* %n_a, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %31, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %name, align 8
  %33 = load i8*, i8** %name, align 8
  %call23 = call %struct.cv* @Perl_get_cv(i8* %33, i32 0)
  %34 = bitcast %struct.cv* %call23 to %struct.sv*
  store %struct.sv* %34, %struct.sv** %sub, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %cond.end, %if.end.16
  %35 = load %struct.sv*, %struct.sv** %sub, align 8
  %tobool25 = icmp ne %struct.sv* %35, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.end.24
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.24
  %36 = load %struct.sv*, %struct.sv** %sub, align 8
  %sv_any28 = getelementptr inbounds %struct.sv, %struct.sv* %36, i32 0, i32 0
  %37 = load i8*, i8** %sv_any28, align 8
  %38 = bitcast i8* %37 to %struct.xpvcv*
  %xcv_flags = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %38, i32 0, i32 17
  %39 = load i16, i16* %xcv_flags, align 2
  %conv29 = zext i16 %39 to i32
  %and30 = and i32 %conv29, 64
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.45

if.then.32:                                       ; preds = %if.end.27
  %40 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %41 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast33 = ptrtoint %struct.sv** %40 to i64
  %sub.ptr.rhs.cast34 = ptrtoint %struct.sv** %41 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %sub.ptr.div36 = sdiv exact i64 %sub.ptr.sub35, 8
  %cmp37 = icmp slt i64 %sub.ptr.div36, 1
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.then.32
  %42 = load %struct.sv**, %struct.sv*** %sp, align 8
  %43 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call40 = call %struct.sv** @Perl_stack_grow(%struct.sv** %42, %struct.sv** %43, i32 1)
  store %struct.sv** %call40, %struct.sv*** %sp, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.then.32
  %call42 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i64 6)
  %call43 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call42)
  %44 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr44 = getelementptr inbounds %struct.sv*, %struct.sv** %44, i32 1
  store %struct.sv** %incdec.ptr44, %struct.sv*** %sp, align 8
  store %struct.sv* %call43, %struct.sv** %incdec.ptr44, align 8
  store %struct.sv* %call43, %struct.sv** %tmp
  %45 = load %struct.sv*, %struct.sv** %tmp
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.41, %if.end.27
  %46 = load %struct.sv*, %struct.sv** %sub, align 8
  %sv_any46 = getelementptr inbounds %struct.sv, %struct.sv* %46, i32 0, i32 0
  %47 = load i8*, i8** %sv_any46, align 8
  %48 = bitcast i8* %47 to %struct.xpvcv*
  %xcv_flags47 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %48, i32 0, i32 17
  %49 = load i16, i16* %xcv_flags47, align 2
  %conv48 = zext i16 %49 to i32
  %and49 = and i32 %conv48, 128
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.65

if.then.51:                                       ; preds = %if.end.45
  %50 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %51 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast52 = ptrtoint %struct.sv** %50 to i64
  %sub.ptr.rhs.cast53 = ptrtoint %struct.sv** %51 to i64
  %sub.ptr.sub54 = sub i64 %sub.ptr.lhs.cast52, %sub.ptr.rhs.cast53
  %sub.ptr.div55 = sdiv exact i64 %sub.ptr.sub54, 8
  %cmp56 = icmp slt i64 %sub.ptr.div55, 1
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.then.51
  %52 = load %struct.sv**, %struct.sv*** %sp, align 8
  %53 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call59 = call %struct.sv** @Perl_stack_grow(%struct.sv** %52, %struct.sv** %53, i32 1)
  store %struct.sv** %call59, %struct.sv*** %sp, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.then.51
  %call62 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i64 6)
  %call63 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call62)
  %54 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr64 = getelementptr inbounds %struct.sv*, %struct.sv** %54, i32 1
  store %struct.sv** %incdec.ptr64, %struct.sv*** %sp, align 8
  store %struct.sv* %call63, %struct.sv** %incdec.ptr64, align 8
  store %struct.sv* %call63, %struct.sv** %tmp61
  %55 = load %struct.sv*, %struct.sv** %tmp61
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.60, %if.end.45
  %56 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %56, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare %struct.cv* @Perl_get_cv(i8*, i32) #1

declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @boot_attrs(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %file = alloca i8*, align 8
  %cv6 = alloca %struct.cv*, align 8
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
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8** %file, align 8
  %8 = load i8*, i8** %file, align 8
  %call = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), void (%struct.cv*)* @XS_attrs_import, i8* %8)
  store %struct.cv* %call, %struct.cv** %cv6, align 8
  %9 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any = getelementptr inbounds %struct.cv, %struct.cv* %9, i32 0, i32 0
  %10 = load %struct.xpvcv*, %struct.xpvcv** %sv_any, align 8
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %10, i32 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  store i32 1, i32* %any_i32, align 4
  %11 = load i8*, i8** %file, align 8
  %call7 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), void (%struct.cv*)* @XS_attrs_import, i8* %11)
  store %struct.cv* %call7, %struct.cv** %cv6, align 8
  %12 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any8 = getelementptr inbounds %struct.cv, %struct.cv* %12, i32 0, i32 0
  %13 = load %struct.xpvcv*, %struct.xpvcv** %sv_any8, align 8
  %xcv_xsubany9 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %13, i32 0, i32 11
  %any_i3210 = bitcast %union.any* %xcv_xsubany9 to i32*
  store i32 0, i32* %any_i3210, align 4
  %14 = load i8*, i8** %file, align 8
  %call11 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), void (%struct.cv*)* @XS_attrs_get, i8* %14)
  %15 = load i32, i32* %ax, align 4
  %add12 = add nsw i32 %15, 0
  %idxprom = sext i32 %add12 to i64
  %16 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %16, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %17 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %18 = load i32, i32* %ax, align 4
  %idx.ext13 = sext i32 %18 to i64
  %add.ptr14 = getelementptr inbounds %struct.sv*, %struct.sv** %17, i64 %idx.ext13
  %19 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %19, 1
  %add.ptr15 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr14, i64 %sub
  store %struct.sv** %add.ptr15, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

declare i32 @strncmp(i8*, i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
