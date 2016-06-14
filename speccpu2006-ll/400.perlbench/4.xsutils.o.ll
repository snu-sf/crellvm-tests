; ModuleID = 'xsutils.c'
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
%struct.xpv = type { i8*, i64, i64 }
%struct.xrv = type { %struct.sv* }
%struct.xpvmg = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv* }

@.str = private unnamed_addr constant [10 x i8] c"xsutils.c\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"attributes::bootstrap\00", align 1
@PL_stack_sp = external global %struct.sv**, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_markstack_ptr = external global i32*, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Usage: attributes::bootstrap $module\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"attributes::_warn_reserved\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"attributes::_modify_attrs\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"attributes::_guess_stash\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"attributes::_fetch_attrs\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"attributes::reftype\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"Usage: attributes::_modify_attrs $reference, @attributes\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Usage: attributes::_fetch_attrs $reference\00", align 1
@PL_stack_max = external global %struct.sv**, align 8
@.str.12 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"lvalue\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"unique\00", align 1
@PL_op = external global %struct.op*, align 8
@PL_curpad = external global %struct.sv**, align 8
@.str.16 = private unnamed_addr constant [43 x i8] c"Usage: attributes::_guess_stash $reference\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Usage: attributes::reftype $reference\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"Usage: attributes::_warn_reserved ()\00", align 1
@PL_curcop = external global %struct.cop*, align 8
@PL_dowarn = external global i8, align 1
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"share\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"A variable may not be unshared\00", align 1
@PL_sharehook = external global void (%struct.sv*)*, align 8
@.str.21 = private unnamed_addr constant [6 x i8] c"uniqu\00", align 1

; Function Attrs: nounwind uwtable
define void @Perl_boot_core_xsutils() #0 {
entry:
  %file = alloca i8*, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8** %file, align 8
  %0 = load i8*, i8** %file, align 8
  %call = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), void (%struct.cv*)* @XS_attributes_bootstrap, i8* %0)
  ret void
}

declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

; Function Attrs: nounwind uwtable
define void @XS_attributes_bootstrap(%struct.cv* %cv) #0 {
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
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8** %file, align 8
  %8 = load i32, i32* %items, align 4
  %cmp = icmp sgt i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %file, align 8
  %call = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), void (%struct.cv*)* @XS_attributes__warn_reserved, i8* %9)
  %10 = bitcast %struct.cv* %call to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0))
  %11 = load i8*, i8** %file, align 8
  %call7 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), void (%struct.cv*)* @XS_attributes__modify_attrs, i8* %11)
  %12 = load i8*, i8** %file, align 8
  %call8 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), void (%struct.cv*)* @XS_attributes__guess_stash, i8* %12)
  %13 = bitcast %struct.cv* %call8 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %14 = load i8*, i8** %file, align 8
  %call9 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), void (%struct.cv*)* @XS_attributes__fetch_attrs, i8* %14)
  %15 = bitcast %struct.cv* %call9 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %16 = load i8*, i8** %file, align 8
  %call10 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), void (%struct.cv*)* @XS_attributes_reftype, i8* %16)
  %17 = bitcast %struct.cv* %call10 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  store i64 0, i64* %tmpXSoff, align 8
  %18 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %19 = load i32, i32* %ax, align 4
  %idx.ext11 = sext i32 %19 to i64
  %add.ptr12 = getelementptr inbounds %struct.sv*, %struct.sv** %18, i64 %idx.ext11
  %20 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %20, 1
  %add.ptr13 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr12, i64 %sub
  store %struct.sv** %add.ptr13, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare void @Perl_croak(i8*, ...) #1

declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

; Function Attrs: nounwind uwtable
define void @XS_attributes__warn_reserved(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
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
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast7 = ptrtoint %struct.sv** %9 to i64
  %sub.ptr.rhs.cast8 = ptrtoint %struct.sv** %10 to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8
  %sub.ptr.div10 = sdiv exact i64 %sub.ptr.sub9, 8
  %cmp11 = icmp slt i64 %sub.ptr.div10, 1
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %12 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %11, %struct.sv** %12, i32 1)
  store %struct.sv** %call, %struct.sv*** %sp, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  %13 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %13, i32 0, i32 14
  %14 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp15 = icmp ne %struct.sv* %14, null
  br i1 %cmp15, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %if.end.14
  %15 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings17 = getelementptr inbounds %struct.cop, %struct.cop* %15, i32 0, i32 14
  %16 = load %struct.sv*, %struct.sv** %cop_warnings17, align 8
  %cmp18 = icmp ne %struct.sv* %16, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp18, label %land.lhs.true.20, label %lor.rhs

land.lhs.true.20:                                 ; preds = %land.lhs.true
  %17 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings21 = getelementptr inbounds %struct.cop, %struct.cop* %17, i32 0, i32 14
  %18 = load %struct.sv*, %struct.sv** %cop_warnings21, align 8
  %cmp22 = icmp eq %struct.sv* %18, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp22, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.20
  %19 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings24 = getelementptr inbounds %struct.cop, %struct.cop* %19, i32 0, i32 14
  %20 = load %struct.sv*, %struct.sv** %cop_warnings24, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 0
  %21 = load i8*, i8** %sv_any, align 8
  %22 = bitcast i8* %21 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %22, i32 0, i32 0
  %23 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 9
  %24 = load i8, i8* %arrayidx, align 1
  %conv25 = sext i8 %24 to i32
  %and = and i32 %conv25, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false, %land.lhs.true, %if.end.14
  %25 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings26 = getelementptr inbounds %struct.cop, %struct.cop* %25, i32 0, i32 14
  %26 = load %struct.sv*, %struct.sv** %cop_warnings26, align 8
  %cmp27 = icmp eq %struct.sv* %26, null
  br i1 %cmp27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %27 = load i8, i8* @PL_dowarn, align 1
  %conv29 = zext i8 %27 to i32
  %and30 = and i32 %conv29, 1
  %tobool31 = icmp ne i32 %and30, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %28 = phi i1 [ false, %lor.rhs ], [ %tobool31, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false, %land.lhs.true.20
  %29 = phi i1 [ true, %lor.lhs.false ], [ true, %land.lhs.true.20 ], [ %28, %land.end ]
  %cond = select i1 %29, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  %30 = load i32, i32* %ax, align 4
  %add32 = add nsw i32 %30, 0
  %idxprom = sext i32 %add32 to i64
  %31 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx33 = getelementptr inbounds %struct.sv*, %struct.sv** %31, i64 %idxprom
  store %struct.sv* %cond, %struct.sv** %arrayidx33, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %32 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %33 = load i32, i32* %ax, align 4
  %idx.ext34 = sext i32 %33 to i64
  %add.ptr35 = getelementptr inbounds %struct.sv*, %struct.sv** %32, i64 %idx.ext34
  %34 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %34, 1
  %add.ptr36 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr35, i64 %sub
  store %struct.sv** %add.ptr36, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_attributes__modify_attrs(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %rv = alloca %struct.sv*, align 8
  %sv = alloca %struct.sv*, align 8
  %tmpXSoff = alloca i64, align 8
  %tmpXSoff28 = alloca i64, align 8
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
  br label %usage

usage:                                            ; preds = %if.then.11, %if.then
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %usage, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %11, %struct.sv** %rv, align 8
  %12 = load %struct.sv*, %struct.sv** %rv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 2
  %13 = load i32, i32* %sv_flags, align 4
  %and = and i32 %13, 118423552
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.then.11

land.lhs.true:                                    ; preds = %if.end
  %14 = load %struct.sv*, %struct.sv** %rv, align 8
  %sv_flags8 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 2
  %15 = load i32, i32* %sv_flags8, align 4
  %and9 = and i32 %15, 524288
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true, %if.end
  br label %usage

if.end.12:                                        ; preds = %land.lhs.true
  %16 = load %struct.sv*, %struct.sv** %rv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 0
  %17 = load i8*, i8** %sv_any, align 8
  %18 = bitcast i8* %17 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %18, i32 0, i32 0
  %19 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  store %struct.sv* %19, %struct.sv** %sv, align 8
  %20 = load i32, i32* %items, align 4
  %cmp13 = icmp sgt i32 %20, 1
  br i1 %cmp13, label %if.then.15, label %if.end.27

if.then.15:                                       ; preds = %if.end.12
  %21 = load %struct.sv*, %struct.sv** %sv, align 8
  %22 = load i32, i32* %ax, align 4
  %add16 = add nsw i32 %22, 0
  %idxprom17 = sext i32 %add16 to i64
  %23 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx18 = getelementptr inbounds %struct.sv*, %struct.sv** %23, i64 %idxprom17
  %24 = load i32, i32* %ax, align 4
  %add19 = add nsw i32 %24, 1
  %idxprom20 = sext i32 %add19 to i64
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx21 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idxprom20
  %26 = load i32, i32* %items, align 4
  %sub = sub nsw i32 %26, 1
  %call = call i32 @modify_SV_attributes(%struct.sv* %21, %struct.sv** %arrayidx18, %struct.sv** %arrayidx21, i32 %sub)
  %conv22 = sext i32 %call to i64
  store i64 %conv22, i64* %tmpXSoff, align 8
  %27 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %28 = load i32, i32* %ax, align 4
  %idx.ext23 = sext i32 %28 to i64
  %add.ptr24 = getelementptr inbounds %struct.sv*, %struct.sv** %27, i64 %idx.ext23
  %29 = load i64, i64* %tmpXSoff, align 8
  %sub25 = sub nsw i64 %29, 1
  %add.ptr26 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr24, i64 %sub25
  store %struct.sv** %add.ptr26, %struct.sv*** @PL_stack_sp, align 8
  br label %return

if.end.27:                                        ; preds = %if.end.12
  store i64 0, i64* %tmpXSoff28, align 8
  %30 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %31 = load i32, i32* %ax, align 4
  %idx.ext29 = sext i32 %31 to i64
  %add.ptr30 = getelementptr inbounds %struct.sv*, %struct.sv** %30, i64 %idx.ext29
  %32 = load i64, i64* %tmpXSoff28, align 8
  %sub31 = sub nsw i64 %32, 1
  %add.ptr32 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr30, i64 %sub31
  store %struct.sv** %add.ptr32, %struct.sv*** @PL_stack_sp, align 8
  br label %return

return:                                           ; preds = %if.end.27, %if.then.15
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_attributes__guess_stash(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %rv = alloca %struct.sv*, align 8
  %sv = alloca %struct.sv*, align 8
  %targ = alloca %struct.sv*, align 8
  %stash = alloca %struct.hv*, align 8
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
  %8 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %8, i32 0, i32 7
  %9 = load i8, i8* %op_private, align 1
  %conv6 = zext i8 %9 to i32
  %and = and i32 %conv6, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %10, i32 0, i32 3
  %11 = load i64, i64* %op_targ, align 8
  %12 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %12, i64 %11
  %13 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call %struct.sv* @Perl_sv_newmortal()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %13, %cond.true ], [ %call, %cond.false ]
  store %struct.sv* %cond, %struct.sv** %targ, align 8
  %14 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %14, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %usage

usage:                                            ; preds = %if.then.18, %if.then
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %usage, %cond.end
  %15 = load i32, i32* %ax, align 4
  %add8 = add nsw i32 %15, 0
  %idxprom = sext i32 %add8 to i64
  %16 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx9 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i64 %idxprom
  %17 = load %struct.sv*, %struct.sv** %arrayidx9, align 8
  store %struct.sv* %17, %struct.sv** %rv, align 8
  %18 = load %struct.sv*, %struct.sv** %targ, align 8
  %19 = load i32, i32* %ax, align 4
  %add10 = add nsw i32 %19, 0
  %idxprom11 = sext i32 %add10 to i64
  %20 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx12 = getelementptr inbounds %struct.sv*, %struct.sv** %20, i64 %idxprom11
  store %struct.sv* %18, %struct.sv** %arrayidx12, align 8
  %21 = load %struct.sv*, %struct.sv** %rv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 2
  %22 = load i32, i32* %sv_flags, align 4
  %and13 = and i32 %22, 118423552
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %land.lhs.true, label %if.then.18

land.lhs.true:                                    ; preds = %if.end
  %23 = load %struct.sv*, %struct.sv** %rv, align 8
  %sv_flags15 = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 2
  %24 = load i32, i32* %sv_flags15, align 4
  %and16 = and i32 %24, 524288
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true, %if.end
  br label %usage

if.end.19:                                        ; preds = %land.lhs.true
  %25 = load %struct.sv*, %struct.sv** %rv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 0
  %26 = load i8*, i8** %sv_any, align 8
  %27 = bitcast i8* %26 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %27, i32 0, i32 0
  %28 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  store %struct.sv* %28, %struct.sv** %sv, align 8
  %29 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags20 = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 2
  %30 = load i32, i32* %sv_flags20, align 4
  %and21 = and i32 %30, 4096
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.19
  %31 = load %struct.sv*, %struct.sv** %targ, align 8
  %32 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any24 = getelementptr inbounds %struct.sv, %struct.sv* %32, i32 0, i32 0
  %33 = load i8*, i8** %sv_any24, align 8
  %34 = bitcast i8* %33 to %struct.xpvmg*
  %xmg_stash = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %34, i32 0, i32 6
  %35 = load %struct.hv*, %struct.hv** %xmg_stash, align 8
  %sv_any25 = getelementptr inbounds %struct.hv, %struct.hv* %35, i32 0, i32 0
  %36 = load %struct.xpvhv*, %struct.xpvhv** %sv_any25, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %36, i32 0, i32 10
  %37 = load i8*, i8** %xhv_name, align 8
  call void @Perl_sv_setpv(%struct.sv* %31, i8* %37)
  br label %if.end.106

if.else:                                          ; preds = %if.end.19
  store %struct.hv* null, %struct.hv** %stash, align 8
  %38 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags26 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 2
  %39 = load i32, i32* %sv_flags26, align 4
  %and27 = and i32 %39, 255
  switch i32 %and27, label %sw.default [
    i32 12, label %sw.bb
    i32 7, label %sw.bb.55
    i32 13, label %sw.bb.69
  ]

sw.bb:                                            ; preds = %if.else
  %40 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any28 = getelementptr inbounds %struct.sv, %struct.sv* %40, i32 0, i32 0
  %41 = load i8*, i8** %sv_any28, align 8
  %42 = bitcast i8* %41 to %struct.xpvcv*
  %xcv_gv = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %42, i32 0, i32 12
  %43 = load %struct.gv*, %struct.gv** %xcv_gv, align 8
  %tobool29 = icmp ne %struct.gv* %43, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.47

land.lhs.true.30:                                 ; preds = %sw.bb
  %44 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any31 = getelementptr inbounds %struct.sv, %struct.sv* %44, i32 0, i32 0
  %45 = load i8*, i8** %sv_any31, align 8
  %46 = bitcast i8* %45 to %struct.xpvcv*
  %xcv_gv32 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %46, i32 0, i32 12
  %47 = load %struct.gv*, %struct.gv** %xcv_gv32, align 8
  %sv_flags33 = getelementptr inbounds %struct.gv, %struct.gv* %47, i32 0, i32 2
  %48 = load i32, i32* %sv_flags33, align 4
  %and34 = and i32 %48, 255
  %cmp35 = icmp eq i32 %and34, 13
  br i1 %cmp35, label %land.lhs.true.37, label %if.else.47

land.lhs.true.37:                                 ; preds = %land.lhs.true.30
  %49 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any38 = getelementptr inbounds %struct.sv, %struct.sv* %49, i32 0, i32 0
  %50 = load i8*, i8** %sv_any38, align 8
  %51 = bitcast i8* %50 to %struct.xpvcv*
  %xcv_gv39 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %51, i32 0, i32 12
  %52 = load %struct.gv*, %struct.gv** %xcv_gv39, align 8
  %sv_any40 = getelementptr inbounds %struct.gv, %struct.gv* %52, i32 0, i32 0
  %53 = load %struct.xpvgv*, %struct.xpvgv** %sv_any40, align 8
  %xgv_stash = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %53, i32 0, i32 10
  %54 = load %struct.hv*, %struct.hv** %xgv_stash, align 8
  %tobool41 = icmp ne %struct.hv* %54, null
  br i1 %tobool41, label %if.then.42, label %if.else.47

if.then.42:                                       ; preds = %land.lhs.true.37
  %55 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any43 = getelementptr inbounds %struct.sv, %struct.sv* %55, i32 0, i32 0
  %56 = load i8*, i8** %sv_any43, align 8
  %57 = bitcast i8* %56 to %struct.xpvcv*
  %xcv_gv44 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %57, i32 0, i32 12
  %58 = load %struct.gv*, %struct.gv** %xcv_gv44, align 8
  %sv_any45 = getelementptr inbounds %struct.gv, %struct.gv* %58, i32 0, i32 0
  %59 = load %struct.xpvgv*, %struct.xpvgv** %sv_any45, align 8
  %xgv_stash46 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %59, i32 0, i32 10
  %60 = load %struct.hv*, %struct.hv** %xgv_stash46, align 8
  store %struct.hv* %60, %struct.hv** %stash, align 8
  br label %if.end.54

if.else.47:                                       ; preds = %land.lhs.true.37, %land.lhs.true.30, %sw.bb
  %61 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any48 = getelementptr inbounds %struct.sv, %struct.sv* %61, i32 0, i32 0
  %62 = load i8*, i8** %sv_any48, align 8
  %63 = bitcast i8* %62 to %struct.xpvcv*
  %xcv_stash = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %63, i32 0, i32 7
  %64 = load %struct.hv*, %struct.hv** %xcv_stash, align 8
  %tobool49 = icmp ne %struct.hv* %64, null
  br i1 %tobool49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %if.else.47
  %65 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any51 = getelementptr inbounds %struct.sv, %struct.sv* %65, i32 0, i32 0
  %66 = load i8*, i8** %sv_any51, align 8
  %67 = bitcast i8* %66 to %struct.xpvcv*
  %xcv_stash52 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %67, i32 0, i32 7
  %68 = load %struct.hv*, %struct.hv** %xcv_stash52, align 8
  store %struct.hv* %68, %struct.hv** %stash, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %if.else.47
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.42
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.else
  %69 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags56 = getelementptr inbounds %struct.sv, %struct.sv* %69, i32 0, i32 2
  %70 = load i32, i32* %sv_flags56, align 4
  %and57 = and i32 %70, 1048576
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %land.lhs.true.59, label %if.then.67

land.lhs.true.59:                                 ; preds = %sw.bb.55
  %71 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags60 = getelementptr inbounds %struct.sv, %struct.sv* %71, i32 0, i32 2
  %72 = load i32, i32* %sv_flags60, align 4
  %and61 = and i32 %72, 32768
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %cond.true.63, label %cond.false.66

cond.true.63:                                     ; preds = %land.lhs.true.59
  %73 = load %struct.sv*, %struct.sv** %sv, align 8
  %call64 = call %struct.magic* @Perl_mg_find(%struct.sv* %73, i32 42)
  %tobool65 = icmp ne %struct.magic* %call64, null
  br i1 %tobool65, label %if.end.68, label %if.then.67

cond.false.66:                                    ; preds = %land.lhs.true.59
  br i1 false, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %cond.false.66, %cond.true.63, %sw.bb.55
  br label %sw.epilog

if.end.68:                                        ; preds = %cond.false.66, %cond.true.63
  br label %sw.bb.69

sw.bb.69:                                         ; preds = %if.else, %if.end.68
  %74 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any70 = getelementptr inbounds %struct.sv, %struct.sv* %74, i32 0, i32 0
  %75 = load i8*, i8** %sv_any70, align 8
  %76 = bitcast i8* %75 to %struct.xpvgv*
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %76, i32 0, i32 7
  %77 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool71 = icmp ne %struct.gp* %77, null
  br i1 %tobool71, label %land.lhs.true.72, label %if.end.100

land.lhs.true.72:                                 ; preds = %sw.bb.69
  %78 = load %struct.sv*, %struct.sv** %sv, align 8
  %79 = bitcast %struct.sv* %78 to %struct.gv*
  %sv_any73 = getelementptr inbounds %struct.gv, %struct.gv* %79, i32 0, i32 0
  %80 = load %struct.xpvgv*, %struct.xpvgv** %sv_any73, align 8
  %xgv_gp74 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %80, i32 0, i32 7
  %81 = load %struct.gp*, %struct.gp** %xgv_gp74, align 8
  %gp_egv = getelementptr inbounds %struct.gp, %struct.gp* %81, i32 0, i32 6
  %82 = load %struct.gv*, %struct.gv** %gp_egv, align 8
  %tobool75 = icmp ne %struct.gv* %82, null
  br i1 %tobool75, label %cond.true.76, label %cond.false.80

cond.true.76:                                     ; preds = %land.lhs.true.72
  %83 = load %struct.sv*, %struct.sv** %sv, align 8
  %84 = bitcast %struct.sv* %83 to %struct.gv*
  %sv_any77 = getelementptr inbounds %struct.gv, %struct.gv* %84, i32 0, i32 0
  %85 = load %struct.xpvgv*, %struct.xpvgv** %sv_any77, align 8
  %xgv_gp78 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %85, i32 0, i32 7
  %86 = load %struct.gp*, %struct.gp** %xgv_gp78, align 8
  %gp_egv79 = getelementptr inbounds %struct.gp, %struct.gp* %86, i32 0, i32 6
  %87 = load %struct.gv*, %struct.gv** %gp_egv79, align 8
  br label %cond.end.81

cond.false.80:                                    ; preds = %land.lhs.true.72
  %88 = load %struct.sv*, %struct.sv** %sv, align 8
  %89 = bitcast %struct.sv* %88 to %struct.gv*
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.80, %cond.true.76
  %cond82 = phi %struct.gv* [ %87, %cond.true.76 ], [ %89, %cond.false.80 ]
  %sv_any83 = getelementptr inbounds %struct.gv, %struct.gv* %cond82, i32 0, i32 0
  %90 = load %struct.xpvgv*, %struct.xpvgv** %sv_any83, align 8
  %xgv_stash84 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %90, i32 0, i32 10
  %91 = load %struct.hv*, %struct.hv** %xgv_stash84, align 8
  %tobool85 = icmp ne %struct.hv* %91, null
  br i1 %tobool85, label %if.then.86, label %if.end.100

if.then.86:                                       ; preds = %cond.end.81
  %92 = load %struct.sv*, %struct.sv** %sv, align 8
  %93 = bitcast %struct.sv* %92 to %struct.gv*
  %sv_any87 = getelementptr inbounds %struct.gv, %struct.gv* %93, i32 0, i32 0
  %94 = load %struct.xpvgv*, %struct.xpvgv** %sv_any87, align 8
  %xgv_gp88 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %94, i32 0, i32 7
  %95 = load %struct.gp*, %struct.gp** %xgv_gp88, align 8
  %gp_egv89 = getelementptr inbounds %struct.gp, %struct.gp* %95, i32 0, i32 6
  %96 = load %struct.gv*, %struct.gv** %gp_egv89, align 8
  %tobool90 = icmp ne %struct.gv* %96, null
  br i1 %tobool90, label %cond.true.91, label %cond.false.95

cond.true.91:                                     ; preds = %if.then.86
  %97 = load %struct.sv*, %struct.sv** %sv, align 8
  %98 = bitcast %struct.sv* %97 to %struct.gv*
  %sv_any92 = getelementptr inbounds %struct.gv, %struct.gv* %98, i32 0, i32 0
  %99 = load %struct.xpvgv*, %struct.xpvgv** %sv_any92, align 8
  %xgv_gp93 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %99, i32 0, i32 7
  %100 = load %struct.gp*, %struct.gp** %xgv_gp93, align 8
  %gp_egv94 = getelementptr inbounds %struct.gp, %struct.gp* %100, i32 0, i32 6
  %101 = load %struct.gv*, %struct.gv** %gp_egv94, align 8
  br label %cond.end.96

cond.false.95:                                    ; preds = %if.then.86
  %102 = load %struct.sv*, %struct.sv** %sv, align 8
  %103 = bitcast %struct.sv* %102 to %struct.gv*
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.95, %cond.true.91
  %cond97 = phi %struct.gv* [ %101, %cond.true.91 ], [ %103, %cond.false.95 ]
  %sv_any98 = getelementptr inbounds %struct.gv, %struct.gv* %cond97, i32 0, i32 0
  %104 = load %struct.xpvgv*, %struct.xpvgv** %sv_any98, align 8
  %xgv_stash99 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %104, i32 0, i32 10
  %105 = load %struct.hv*, %struct.hv** %xgv_stash99, align 8
  store %struct.hv* %105, %struct.hv** %stash, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %cond.end.96, %cond.end.81, %sw.bb.69
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.100, %if.then.67, %if.end.54
  %106 = load %struct.hv*, %struct.hv** %stash, align 8
  %tobool101 = icmp ne %struct.hv* %106, null
  br i1 %tobool101, label %if.then.102, label %if.end.105

if.then.102:                                      ; preds = %sw.epilog
  %107 = load %struct.sv*, %struct.sv** %targ, align 8
  %108 = load %struct.hv*, %struct.hv** %stash, align 8
  %sv_any103 = getelementptr inbounds %struct.hv, %struct.hv* %108, i32 0, i32 0
  %109 = load %struct.xpvhv*, %struct.xpvhv** %sv_any103, align 8
  %xhv_name104 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %109, i32 0, i32 10
  %110 = load i8*, i8** %xhv_name104, align 8
  call void @Perl_sv_setpv(%struct.sv* %107, i8* %110)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.102, %sw.epilog
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then.23
  %111 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags107 = getelementptr inbounds %struct.sv, %struct.sv* %111, i32 0, i32 2
  %112 = load i32, i32* %sv_flags107, align 4
  %and108 = and i32 %112, 16384
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.end.106
  %113 = load %struct.sv*, %struct.sv** %targ, align 8
  %call111 = call i32 @Perl_mg_set(%struct.sv* %113)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %if.end.106
  store i64 1, i64* %tmpXSoff, align 8
  %114 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %115 = load i32, i32* %ax, align 4
  %idx.ext113 = sext i32 %115 to i64
  %add.ptr114 = getelementptr inbounds %struct.sv*, %struct.sv** %114, i64 %idx.ext113
  %116 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %116, 1
  %add.ptr115 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr114, i64 %sub
  store %struct.sv** %add.ptr115, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_attributes__fetch_attrs(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %rv = alloca %struct.sv*, align 8
  %sv = alloca %struct.sv*, align 8
  %cvflags = alloca i16, align 2
  %tmp = alloca %struct.sv*, align 8
  %tmp47 = alloca %struct.sv*, align 8
  %tmp65 = alloca %struct.sv*, align 8
  %tmp90 = alloca %struct.sv*, align 8
  %tmp115 = alloca %struct.sv*, align 8
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
  br label %usage

usage:                                            ; preds = %if.then.13, %if.then
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %usage, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %11, %struct.sv** %rv, align 8
  %12 = load i32, i32* %items, align 4
  %13 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext8 = sext i32 %12 to i64
  %idx.neg = sub i64 0, %idx.ext8
  %add.ptr9 = getelementptr inbounds %struct.sv*, %struct.sv** %13, i64 %idx.neg
  store %struct.sv** %add.ptr9, %struct.sv*** %sp, align 8
  %14 = load %struct.sv*, %struct.sv** %rv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 2
  %15 = load i32, i32* %sv_flags, align 4
  %and = and i32 %15, 118423552
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.then.13

land.lhs.true:                                    ; preds = %if.end
  %16 = load %struct.sv*, %struct.sv** %rv, align 8
  %sv_flags10 = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags10, align 4
  %and11 = and i32 %17, 524288
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true, %if.end
  br label %usage

if.end.14:                                        ; preds = %land.lhs.true
  %18 = load %struct.sv*, %struct.sv** %rv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 0
  %19 = load i8*, i8** %sv_any, align 8
  %20 = bitcast i8* %19 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %20, i32 0, i32 0
  %21 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  store %struct.sv* %21, %struct.sv** %sv, align 8
  %22 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags15 = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 2
  %23 = load i32, i32* %sv_flags15, align 4
  %and16 = and i32 %23, 255
  switch i32 %and16, label %sw.default [
    i32 12, label %sw.bb
    i32 13, label %sw.bb.95
  ]

sw.bb:                                            ; preds = %if.end.14
  %24 = load %struct.sv*, %struct.sv** %sv, align 8
  %25 = bitcast %struct.sv* %24 to %struct.cv*
  %sv_any17 = getelementptr inbounds %struct.cv, %struct.cv* %25, i32 0, i32 0
  %26 = load %struct.xpvcv*, %struct.xpvcv** %sv_any17, align 8
  %xcv_flags = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %26, i32 0, i32 17
  %27 = load i16, i16* %xcv_flags, align 2
  store i16 %27, i16* %cvflags, align 2
  %28 = load i16, i16* %cvflags, align 2
  %conv18 = zext i16 %28 to i32
  %and19 = and i32 %conv18, 128
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.33

if.then.21:                                       ; preds = %sw.bb
  %29 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %30 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast22 = ptrtoint %struct.sv** %29 to i64
  %sub.ptr.rhs.cast23 = ptrtoint %struct.sv** %30 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  %sub.ptr.div25 = sdiv exact i64 %sub.ptr.sub24, 8
  %cmp26 = icmp slt i64 %sub.ptr.div25, 1
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.21
  %31 = load %struct.sv**, %struct.sv*** %sp, align 8
  %32 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %31, %struct.sv** %32, i32 1)
  store %struct.sv** %call, %struct.sv*** %sp, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.then.21
  %call30 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i64 6)
  %call31 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call30)
  %33 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr32 = getelementptr inbounds %struct.sv*, %struct.sv** %33, i32 1
  store %struct.sv** %incdec.ptr32, %struct.sv*** %sp, align 8
  store %struct.sv* %call31, %struct.sv** %incdec.ptr32, align 8
  store %struct.sv* %call31, %struct.sv** %tmp
  %34 = load %struct.sv*, %struct.sv** %tmp
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.29, %sw.bb
  %35 = load i16, i16* %cvflags, align 2
  %conv34 = zext i16 %35 to i32
  %and35 = and i32 %conv34, 256
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.51

if.then.37:                                       ; preds = %if.end.33
  %36 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %37 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast38 = ptrtoint %struct.sv** %36 to i64
  %sub.ptr.rhs.cast39 = ptrtoint %struct.sv** %37 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %sub.ptr.div41 = sdiv exact i64 %sub.ptr.sub40, 8
  %cmp42 = icmp slt i64 %sub.ptr.div41, 1
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.then.37
  %38 = load %struct.sv**, %struct.sv*** %sp, align 8
  %39 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call45 = call %struct.sv** @Perl_stack_grow(%struct.sv** %38, %struct.sv** %39, i32 1)
  store %struct.sv** %call45, %struct.sv*** %sp, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.then.37
  %call48 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i64 6)
  %call49 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call48)
  %40 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr50 = getelementptr inbounds %struct.sv*, %struct.sv** %40, i32 1
  store %struct.sv** %incdec.ptr50, %struct.sv*** %sp, align 8
  store %struct.sv* %call49, %struct.sv** %incdec.ptr50, align 8
  store %struct.sv* %call49, %struct.sv** %tmp47
  %41 = load %struct.sv*, %struct.sv** %tmp47
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.46, %if.end.33
  %42 = load i16, i16* %cvflags, align 2
  %conv52 = zext i16 %42 to i32
  %and53 = and i32 %conv52, 64
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.69

if.then.55:                                       ; preds = %if.end.51
  %43 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %44 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast56 = ptrtoint %struct.sv** %43 to i64
  %sub.ptr.rhs.cast57 = ptrtoint %struct.sv** %44 to i64
  %sub.ptr.sub58 = sub i64 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57
  %sub.ptr.div59 = sdiv exact i64 %sub.ptr.sub58, 8
  %cmp60 = icmp slt i64 %sub.ptr.div59, 1
  br i1 %cmp60, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.then.55
  %45 = load %struct.sv**, %struct.sv*** %sp, align 8
  %46 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call63 = call %struct.sv** @Perl_stack_grow(%struct.sv** %45, %struct.sv** %46, i32 1)
  store %struct.sv** %call63, %struct.sv*** %sp, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.then.55
  %call66 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 6)
  %call67 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call66)
  %47 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr68 = getelementptr inbounds %struct.sv*, %struct.sv** %47, i32 1
  store %struct.sv** %incdec.ptr68, %struct.sv*** %sp, align 8
  store %struct.sv* %call67, %struct.sv** %incdec.ptr68, align 8
  store %struct.sv* %call67, %struct.sv** %tmp65
  %48 = load %struct.sv*, %struct.sv** %tmp65
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.64, %if.end.51
  %49 = load %struct.sv*, %struct.sv** %sv, align 8
  %50 = bitcast %struct.sv* %49 to %struct.cv*
  %sv_any70 = getelementptr inbounds %struct.cv, %struct.cv* %50, i32 0, i32 0
  %51 = load %struct.xpvcv*, %struct.xpvcv** %sv_any70, align 8
  %xcv_gv = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %51, i32 0, i32 12
  %52 = load %struct.gv*, %struct.gv** %xcv_gv, align 8
  %sv_any71 = getelementptr inbounds %struct.gv, %struct.gv* %52, i32 0, i32 0
  %53 = load %struct.xpvgv*, %struct.xpvgv** %sv_any71, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %53, i32 0, i32 7
  %54 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool72 = icmp ne %struct.gp* %54, null
  br i1 %tobool72, label %land.lhs.true.73, label %if.end.94

land.lhs.true.73:                                 ; preds = %if.end.69
  %55 = load %struct.sv*, %struct.sv** %sv, align 8
  %56 = bitcast %struct.sv* %55 to %struct.cv*
  %sv_any74 = getelementptr inbounds %struct.cv, %struct.cv* %56, i32 0, i32 0
  %57 = load %struct.xpvcv*, %struct.xpvcv** %sv_any74, align 8
  %xcv_gv75 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %57, i32 0, i32 12
  %58 = load %struct.gv*, %struct.gv** %xcv_gv75, align 8
  %sv_any76 = getelementptr inbounds %struct.gv, %struct.gv* %58, i32 0, i32 0
  %59 = load %struct.xpvgv*, %struct.xpvgv** %sv_any76, align 8
  %xgv_gp77 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %59, i32 0, i32 7
  %60 = load %struct.gp*, %struct.gp** %xgv_gp77, align 8
  %gp_flags = getelementptr inbounds %struct.gp, %struct.gp* %60, i32 0, i32 9
  %61 = load i32, i32* %gp_flags, align 4
  %and78 = and i32 %61, 1
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.94

if.then.80:                                       ; preds = %land.lhs.true.73
  %62 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %63 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast81 = ptrtoint %struct.sv** %62 to i64
  %sub.ptr.rhs.cast82 = ptrtoint %struct.sv** %63 to i64
  %sub.ptr.sub83 = sub i64 %sub.ptr.lhs.cast81, %sub.ptr.rhs.cast82
  %sub.ptr.div84 = sdiv exact i64 %sub.ptr.sub83, 8
  %cmp85 = icmp slt i64 %sub.ptr.div84, 1
  br i1 %cmp85, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %if.then.80
  %64 = load %struct.sv**, %struct.sv*** %sp, align 8
  %65 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call88 = call %struct.sv** @Perl_stack_grow(%struct.sv** %64, %struct.sv** %65, i32 1)
  store %struct.sv** %call88, %struct.sv*** %sp, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %if.then.80
  %call91 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i64 6)
  %call92 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call91)
  %66 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr93 = getelementptr inbounds %struct.sv*, %struct.sv** %66, i32 1
  store %struct.sv** %incdec.ptr93, %struct.sv*** %sp, align 8
  store %struct.sv* %call92, %struct.sv** %incdec.ptr93, align 8
  store %struct.sv* %call92, %struct.sv** %tmp90
  %67 = load %struct.sv*, %struct.sv** %tmp90
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.89, %land.lhs.true.73, %if.end.69
  br label %sw.epilog

sw.bb.95:                                         ; preds = %if.end.14
  %68 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any96 = getelementptr inbounds %struct.sv, %struct.sv* %68, i32 0, i32 0
  %69 = load i8*, i8** %sv_any96, align 8
  %70 = bitcast i8* %69 to %struct.xpvgv*
  %xgv_gp97 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %70, i32 0, i32 7
  %71 = load %struct.gp*, %struct.gp** %xgv_gp97, align 8
  %tobool98 = icmp ne %struct.gp* %71, null
  br i1 %tobool98, label %land.lhs.true.99, label %if.end.119

land.lhs.true.99:                                 ; preds = %sw.bb.95
  %72 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any100 = getelementptr inbounds %struct.sv, %struct.sv* %72, i32 0, i32 0
  %73 = load i8*, i8** %sv_any100, align 8
  %74 = bitcast i8* %73 to %struct.xpvgv*
  %xgv_gp101 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %74, i32 0, i32 7
  %75 = load %struct.gp*, %struct.gp** %xgv_gp101, align 8
  %gp_flags102 = getelementptr inbounds %struct.gp, %struct.gp* %75, i32 0, i32 9
  %76 = load i32, i32* %gp_flags102, align 4
  %and103 = and i32 %76, 1
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.119

if.then.105:                                      ; preds = %land.lhs.true.99
  %77 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %78 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast106 = ptrtoint %struct.sv** %77 to i64
  %sub.ptr.rhs.cast107 = ptrtoint %struct.sv** %78 to i64
  %sub.ptr.sub108 = sub i64 %sub.ptr.lhs.cast106, %sub.ptr.rhs.cast107
  %sub.ptr.div109 = sdiv exact i64 %sub.ptr.sub108, 8
  %cmp110 = icmp slt i64 %sub.ptr.div109, 1
  br i1 %cmp110, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.then.105
  %79 = load %struct.sv**, %struct.sv*** %sp, align 8
  %80 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call113 = call %struct.sv** @Perl_stack_grow(%struct.sv** %79, %struct.sv** %80, i32 1)
  store %struct.sv** %call113, %struct.sv*** %sp, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.then.105
  %call116 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i64 6)
  %call117 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call116)
  %81 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr118 = getelementptr inbounds %struct.sv*, %struct.sv** %81, i32 1
  store %struct.sv** %incdec.ptr118, %struct.sv*** %sp, align 8
  store %struct.sv* %call117, %struct.sv** %incdec.ptr118, align 8
  store %struct.sv* %call117, %struct.sv** %tmp115
  %82 = load %struct.sv*, %struct.sv** %tmp115
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.114, %land.lhs.true.99, %sw.bb.95
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.119, %if.end.94
  %83 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %83, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_attributes_reftype(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %rv = alloca %struct.sv*, align 8
  %sv = alloca %struct.sv*, align 8
  %targ = alloca %struct.sv*, align 8
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
  %8 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %8, i32 0, i32 7
  %9 = load i8, i8* %op_private, align 1
  %conv6 = zext i8 %9 to i32
  %and = and i32 %conv6, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %10, i32 0, i32 3
  %11 = load i64, i64* %op_targ, align 8
  %12 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %12, i64 %11
  %13 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call %struct.sv* @Perl_sv_newmortal()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %13, %cond.true ], [ %call, %cond.false ]
  store %struct.sv* %cond, %struct.sv** %targ, align 8
  %14 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %14, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %usage

usage:                                            ; preds = %if.then.24, %if.then
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %usage, %cond.end
  %15 = load i32, i32* %ax, align 4
  %add8 = add nsw i32 %15, 0
  %idxprom = sext i32 %add8 to i64
  %16 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx9 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i64 %idxprom
  %17 = load %struct.sv*, %struct.sv** %arrayidx9, align 8
  store %struct.sv* %17, %struct.sv** %rv, align 8
  %18 = load %struct.sv*, %struct.sv** %targ, align 8
  %19 = load i32, i32* %ax, align 4
  %add10 = add nsw i32 %19, 0
  %idxprom11 = sext i32 %add10 to i64
  %20 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx12 = getelementptr inbounds %struct.sv*, %struct.sv** %20, i64 %idxprom11
  store %struct.sv* %18, %struct.sv** %arrayidx12, align 8
  %21 = load %struct.sv*, %struct.sv** %rv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 2
  %22 = load i32, i32* %sv_flags, align 4
  %and13 = and i32 %22, 8192
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end
  %23 = load %struct.sv*, %struct.sv** %rv, align 8
  %call16 = call i32 @Perl_mg_get(%struct.sv* %23)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end
  %24 = load %struct.sv*, %struct.sv** %rv, align 8
  %sv_flags18 = getelementptr inbounds %struct.sv, %struct.sv* %24, i32 0, i32 2
  %25 = load i32, i32* %sv_flags18, align 4
  %and19 = and i32 %25, 118423552
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %land.lhs.true, label %if.then.24

land.lhs.true:                                    ; preds = %if.end.17
  %26 = load %struct.sv*, %struct.sv** %rv, align 8
  %sv_flags21 = getelementptr inbounds %struct.sv, %struct.sv* %26, i32 0, i32 2
  %27 = load i32, i32* %sv_flags21, align 4
  %and22 = and i32 %27, 524288
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true, %if.end.17
  br label %usage

if.end.25:                                        ; preds = %land.lhs.true
  %28 = load %struct.sv*, %struct.sv** %rv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %28, i32 0, i32 0
  %29 = load i8*, i8** %sv_any, align 8
  %30 = bitcast i8* %29 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %30, i32 0, i32 0
  %31 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  store %struct.sv* %31, %struct.sv** %sv, align 8
  %32 = load %struct.sv*, %struct.sv** %targ, align 8
  %33 = load %struct.sv*, %struct.sv** %sv, align 8
  %call26 = call i8* @Perl_sv_reftype(%struct.sv* %33, i32 0)
  call void @Perl_sv_setpv(%struct.sv* %32, i8* %call26)
  %34 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags27 = getelementptr inbounds %struct.sv, %struct.sv* %34, i32 0, i32 2
  %35 = load i32, i32* %sv_flags27, align 4
  %and28 = and i32 %35, 16384
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.25
  %36 = load %struct.sv*, %struct.sv** %targ, align 8
  %call31 = call i32 @Perl_mg_set(%struct.sv* %36)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.25
  store i64 1, i64* %tmpXSoff, align 8
  %37 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %38 = load i32, i32* %ax, align 4
  %idx.ext33 = sext i32 %38 to i64
  %add.ptr34 = getelementptr inbounds %struct.sv*, %struct.sv** %37, i64 %idx.ext33
  %39 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %39, 1
  %add.ptr35 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr34, i64 %sub
  store %struct.sv** %add.ptr35, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @modify_SV_attributes(%struct.sv* %sv, %struct.sv** %retlist, %struct.sv** %attrlist, i32 %numattrs) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %retlist.addr = alloca %struct.sv**, align 8
  %attrlist.addr = alloca %struct.sv**, align 8
  %numattrs.addr = alloca i32, align 4
  %attr = alloca %struct.sv*, align 8
  %name = alloca i8*, align 8
  %len = alloca i64, align 8
  %negated = alloca i8, align 1
  %nret = alloca i32, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.sv** %retlist, %struct.sv*** %retlist.addr, align 8
  store %struct.sv** %attrlist, %struct.sv*** %attrlist.addr, align 8
  store i32 %numattrs, i32* %numattrs.addr, align 4
  store i32 0, i32* %nret, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %numattrs.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load %struct.sv**, %struct.sv*** %attrlist.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %attrlist.addr, align 8
  %2 = load %struct.sv*, %struct.sv** %1, align 8
  store %struct.sv* %2, %struct.sv** %attr, align 8
  %tobool1 = icmp ne %struct.sv* %2, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %tobool1, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load %struct.sv*, %struct.sv** %attr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags, align 4
  %and = and i32 %5, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %6 = load %struct.sv*, %struct.sv** %attr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 0
  %7 = load i8*, i8** %sv_any, align 8
  %8 = bitcast i8* %7 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %8, i32 0, i32 1
  %9 = load i64, i64* %xpv_cur, align 8
  store i64 %9, i64* %len, align 8
  %10 = load %struct.sv*, %struct.sv** %attr, align 8
  %sv_any2 = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  %11 = load i8*, i8** %sv_any2, align 8
  %12 = bitcast i8* %11 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %12, i32 0, i32 0
  %13 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %14 = load %struct.sv*, %struct.sv** %attr, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %14, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %13, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %name, align 8
  %15 = load i8*, i8** %name, align 8
  %16 = load i8, i8* %15, align 1
  %conv = sext i8 %16 to i32
  %cmp3 = icmp eq i32 %conv, 45
  %conv4 = zext i1 %cmp3 to i32
  %conv5 = trunc i32 %conv4 to i8
  store i8 %conv5, i8* %negated, align 1
  %tobool6 = icmp ne i8 %conv5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %17 = load i8*, i8** %name, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr7, i8** %name, align 8
  %18 = load i64, i64* %len, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %19 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags8 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 2
  %20 = load i32, i32* %sv_flags8, align 4
  %and9 = and i32 %20, 255
  switch i32 %and9, label %sw.default [
    i32 12, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end
  %21 = load i64, i64* %len, align 8
  %conv10 = trunc i64 %21 to i32
  switch i32 %conv10, label %sw.epilog.67 [
    i32 6, label %sw.bb.11
  ]

sw.bb.11:                                         ; preds = %sw.bb
  %22 = load i8*, i8** %name, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 3
  %23 = load i8, i8* %arrayidx, align 1
  %conv12 = sext i8 %23 to i32
  switch i32 %conv12, label %sw.epilog [
    i32 108, label %sw.bb.13
    i32 107, label %sw.bb.29
    i32 104, label %sw.bb.48
  ]

sw.bb.13:                                         ; preds = %sw.bb.11
  %24 = load i8*, i8** %name, align 8
  %call14 = call i32 @memcmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i64 6)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.28, label %if.then.16

if.then.16:                                       ; preds = %sw.bb.13
  %25 = load i8, i8* %negated, align 1
  %tobool17 = icmp ne i8 %25, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.16
  %26 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %27 = bitcast %struct.sv* %26 to %struct.cv*
  %sv_any19 = getelementptr inbounds %struct.cv, %struct.cv* %27, i32 0, i32 0
  %28 = load %struct.xpvcv*, %struct.xpvcv** %sv_any19, align 8
  %xcv_flags = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %28, i32 0, i32 17
  %29 = load i16, i16* %xcv_flags, align 2
  %conv20 = zext i16 %29 to i32
  %and21 = and i32 %conv20, -257
  %conv22 = trunc i32 %and21 to i16
  store i16 %conv22, i16* %xcv_flags, align 2
  br label %if.end.27

if.else:                                          ; preds = %if.then.16
  %30 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %31 = bitcast %struct.sv* %30 to %struct.cv*
  %sv_any23 = getelementptr inbounds %struct.cv, %struct.cv* %31, i32 0, i32 0
  %32 = load %struct.xpvcv*, %struct.xpvcv** %sv_any23, align 8
  %xcv_flags24 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %32, i32 0, i32 17
  %33 = load i16, i16* %xcv_flags24, align 2
  %conv25 = zext i16 %33 to i32
  %or = or i32 %conv25, 256
  %conv26 = trunc i32 %or to i16
  store i16 %conv26, i16* %xcv_flags24, align 2
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.18
  br label %for.inc

if.end.28:                                        ; preds = %sw.bb.13
  br label %sw.epilog

sw.bb.29:                                         ; preds = %sw.bb.11
  %34 = load i8*, i8** %name, align 8
  %call30 = call i32 @memcmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i64 6)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.47, label %if.then.32

if.then.32:                                       ; preds = %sw.bb.29
  %35 = load i8, i8* %negated, align 1
  %tobool33 = icmp ne i8 %35, 0
  br i1 %tobool33, label %if.then.34, label %if.else.40

if.then.34:                                       ; preds = %if.then.32
  %36 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %37 = bitcast %struct.sv* %36 to %struct.cv*
  %sv_any35 = getelementptr inbounds %struct.cv, %struct.cv* %37, i32 0, i32 0
  %38 = load %struct.xpvcv*, %struct.xpvcv** %sv_any35, align 8
  %xcv_flags36 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %38, i32 0, i32 17
  %39 = load i16, i16* %xcv_flags36, align 2
  %conv37 = zext i16 %39 to i32
  %and38 = and i32 %conv37, -129
  %conv39 = trunc i32 %and38 to i16
  store i16 %conv39, i16* %xcv_flags36, align 2
  br label %if.end.46

if.else.40:                                       ; preds = %if.then.32
  %40 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %41 = bitcast %struct.sv* %40 to %struct.cv*
  %sv_any41 = getelementptr inbounds %struct.cv, %struct.cv* %41, i32 0, i32 0
  %42 = load %struct.xpvcv*, %struct.xpvcv** %sv_any41, align 8
  %xcv_flags42 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %42, i32 0, i32 17
  %43 = load i16, i16* %xcv_flags42, align 2
  %conv43 = zext i16 %43 to i32
  %or44 = or i32 %conv43, 128
  %conv45 = trunc i32 %or44 to i16
  store i16 %conv45, i16* %xcv_flags42, align 2
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.40, %if.then.34
  br label %for.inc

if.end.47:                                        ; preds = %sw.bb.29
  br label %sw.epilog

sw.bb.48:                                         ; preds = %sw.bb.11
  %44 = load i8*, i8** %name, align 8
  %call49 = call i32 @memcmp(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 6)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end.66, label %if.then.51

if.then.51:                                       ; preds = %sw.bb.48
  %45 = load i8, i8* %negated, align 1
  %tobool52 = icmp ne i8 %45, 0
  br i1 %tobool52, label %if.then.53, label %if.else.59

if.then.53:                                       ; preds = %if.then.51
  %46 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %47 = bitcast %struct.sv* %46 to %struct.cv*
  %sv_any54 = getelementptr inbounds %struct.cv, %struct.cv* %47, i32 0, i32 0
  %48 = load %struct.xpvcv*, %struct.xpvcv** %sv_any54, align 8
  %xcv_flags55 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %48, i32 0, i32 17
  %49 = load i16, i16* %xcv_flags55, align 2
  %conv56 = zext i16 %49 to i32
  %and57 = and i32 %conv56, -65
  %conv58 = trunc i32 %and57 to i16
  store i16 %conv58, i16* %xcv_flags55, align 2
  br label %if.end.65

if.else.59:                                       ; preds = %if.then.51
  %50 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %51 = bitcast %struct.sv* %50 to %struct.cv*
  %sv_any60 = getelementptr inbounds %struct.cv, %struct.cv* %51, i32 0, i32 0
  %52 = load %struct.xpvcv*, %struct.xpvcv** %sv_any60, align 8
  %xcv_flags61 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %52, i32 0, i32 17
  %53 = load i16, i16* %xcv_flags61, align 2
  %conv62 = zext i16 %53 to i32
  %or63 = or i32 %conv62, 64
  %conv64 = trunc i32 %or63 to i16
  store i16 %conv64, i16* %xcv_flags61, align 2
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.59, %if.then.53
  br label %for.inc

if.end.66:                                        ; preds = %sw.bb.48
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.11, %if.end.66, %if.end.47, %if.end.28
  br label %sw.epilog.67

sw.epilog.67:                                     ; preds = %sw.bb, %sw.epilog
  br label %sw.epilog.103

sw.default:                                       ; preds = %if.end
  %54 = load i64, i64* %len, align 8
  %conv68 = trunc i64 %54 to i32
  switch i32 %conv68, label %sw.epilog.102 [
    i32 6, label %sw.bb.69
  ]

sw.bb.69:                                         ; preds = %sw.default
  %55 = load i8*, i8** %name, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %55, i64 5
  %56 = load i8, i8* %arrayidx70, align 1
  %conv71 = sext i8 %56 to i32
  switch i32 %conv71, label %sw.epilog.101 [
    i32 100, label %sw.bb.72
    i32 101, label %sw.bb.80
  ]

sw.bb.72:                                         ; preds = %sw.bb.69
  %57 = load i8*, i8** %name, align 8
  %call73 = call i32 @memcmp(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i64 5)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.end.79, label %if.then.75

if.then.75:                                       ; preds = %sw.bb.72
  %58 = load i8, i8* %negated, align 1
  %tobool76 = icmp ne i8 %58, 0
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.then.75
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.then.75
  %59 = load void (%struct.sv*)*, void (%struct.sv*)** @PL_sharehook, align 8
  %60 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void %59(%struct.sv* %60)
  br label %for.inc

if.end.79:                                        ; preds = %sw.bb.72
  br label %sw.epilog.101

sw.bb.80:                                         ; preds = %sw.bb.69
  %61 = load i8*, i8** %name, align 8
  %call81 = call i32 @memcmp(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i64 5)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.end.100, label %if.then.83

if.then.83:                                       ; preds = %sw.bb.80
  %62 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags84 = getelementptr inbounds %struct.sv, %struct.sv* %62, i32 0, i32 2
  %63 = load i32, i32* %sv_flags84, align 4
  %and85 = and i32 %63, 255
  %cmp86 = icmp eq i32 %and85, 13
  br i1 %cmp86, label %if.then.88, label %if.end.99

if.then.88:                                       ; preds = %if.then.83
  %64 = load i8, i8* %negated, align 1
  %tobool89 = icmp ne i8 %64, 0
  br i1 %tobool89, label %if.then.90, label %if.else.93

if.then.90:                                       ; preds = %if.then.88
  %65 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any91 = getelementptr inbounds %struct.sv, %struct.sv* %65, i32 0, i32 0
  %66 = load i8*, i8** %sv_any91, align 8
  %67 = bitcast i8* %66 to %struct.xpvgv*
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %67, i32 0, i32 7
  %68 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_flags = getelementptr inbounds %struct.gp, %struct.gp* %68, i32 0, i32 9
  %69 = load i32, i32* %gp_flags, align 4
  %and92 = and i32 %69, -2
  store i32 %and92, i32* %gp_flags, align 4
  br label %if.end.98

if.else.93:                                       ; preds = %if.then.88
  %70 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any94 = getelementptr inbounds %struct.sv, %struct.sv* %70, i32 0, i32 0
  %71 = load i8*, i8** %sv_any94, align 8
  %72 = bitcast i8* %71 to %struct.xpvgv*
  %xgv_gp95 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %72, i32 0, i32 7
  %73 = load %struct.gp*, %struct.gp** %xgv_gp95, align 8
  %gp_flags96 = getelementptr inbounds %struct.gp, %struct.gp* %73, i32 0, i32 9
  %74 = load i32, i32* %gp_flags96, align 4
  %or97 = or i32 %74, 1
  store i32 %or97, i32* %gp_flags96, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.93, %if.then.90
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.83
  br label %for.inc

if.end.100:                                       ; preds = %sw.bb.80
  br label %sw.epilog.101

sw.epilog.101:                                    ; preds = %if.end.100, %sw.bb.69, %if.end.79
  br label %sw.epilog.102

sw.epilog.102:                                    ; preds = %sw.epilog.101, %sw.default
  br label %sw.epilog.103

sw.epilog.103:                                    ; preds = %sw.epilog.102, %sw.epilog.67
  %75 = load %struct.sv*, %struct.sv** %attr, align 8
  %76 = load %struct.sv**, %struct.sv*** %retlist.addr, align 8
  %incdec.ptr104 = getelementptr inbounds %struct.sv*, %struct.sv** %76, i32 1
  store %struct.sv** %incdec.ptr104, %struct.sv*** %retlist.addr, align 8
  store %struct.sv* %75, %struct.sv** %76, align 8
  %77 = load i32, i32* %nret, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %nret, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.103, %if.end.99, %if.end.78, %if.end.65, %if.end.46, %if.end.27
  %78 = load i32, i32* %numattrs.addr, align 4
  %dec105 = add nsw i32 %78, -1
  store i32 %dec105, i32* %numattrs.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %79 = load i32, i32* %nret, align 4
  ret i32 %79
}

declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

declare %struct.sv* @Perl_sv_newmortal() #1

declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #1

declare i32 @Perl_mg_set(%struct.sv*) #1

declare i32 @Perl_mg_get(%struct.sv*) #1

declare i8* @Perl_sv_reftype(%struct.sv*, i32) #1

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

declare i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
