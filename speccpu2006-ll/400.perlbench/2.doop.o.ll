; ModuleID = 'doop.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.sv = type { i8*, i32, i32 }
%struct.xpv = type { i8*, i64, i64 }
%struct.svop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.sv* }
%struct.xrv = type { %struct.sv* }
%struct.xpvuv = type { i8*, i64, i64, i64 }
%struct.pvop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.xpvlv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i64, i64, %struct.sv*, i8 }
%struct.xpviv = type { i8*, i64, i64, i64 }

@PL_op = external global %struct.op*, align 8
@PL_no_modify = external constant [0 x i8], align 1
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_tainting = external global i8, align 1
@PL_curcop = external global %struct.cop*, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Illegal number of bits in vec\00", align 1
@PL_dowarn = external global i8, align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Bit vector size > 32 non-portable\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Negative offset to vec in lvalue context\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@PL_rs = external global %struct.sv*, align 8
@PL_encoding = external global %struct.sv*, align 8
@PL_tainted = external global i8, align 1
@PL_stack_sp = external global %struct.sv**, align 8
@PL_curpad = external global %struct.sv**, align 8
@PL_Sv = external global %struct.sv*, align 8
@PL_stack_max = external global %struct.sv**, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"FINAL\00", align 1
@PL_utf8skip = external constant [0 x i8], align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"panic: do_trans_simple_utf8 line %d\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"panic: do_trans_simple line %d\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"panic: do_trans_count line %d\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"panic: do_trans_complex_utf8 line %d\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"panic: do_trans_complex line %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @Perl_do_trans(%struct.sv* %sv) #0 {
entry:
  %retval = alloca i32, align 4
  %sv.addr = alloca %struct.sv*, align 8
  %len = alloca i64, align 8
  %hasutf = alloca i32, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  %0 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %0, i32 0, i32 7
  %1 = load i8, i8* %op_private, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 3
  store i32 %and, i32* %hasutf, align 4
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags, align 4
  %and1 = and i32 %3, 8388608
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %4 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags2 = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags2, align 4
  %and3 = and i32 %5, 1048576
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %6 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_force_normal(%struct.sv* %6)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %7 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags6 = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 2
  %8 = load i32, i32* %sv_flags6, align 4
  %and7 = and i32 %8, 8388608
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end
  %9 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private9 = getelementptr inbounds %struct.op, %struct.op* %9, i32 0, i32 7
  %10 = load i8, i8* %op_private9, align 1
  %conv10 = zext i8 %10 to i32
  %and11 = and i32 %conv10, 4
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_modify, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %land.lhs.true, %if.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  %11 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags16 = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 2
  %12 = load i32, i32* %sv_flags16, align 4
  %and17 = and i32 %12, 262144
  %cmp = icmp eq i32 %and17, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  %13 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 0
  %14 = load i8*, i8** %sv_any, align 8
  %15 = bitcast i8* %14 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %15, i32 0, i32 1
  %16 = load i64, i64* %xpv_cur, align 8
  store i64 %16, i64* %len, align 8
  %17 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any19 = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 0
  %18 = load i8*, i8** %sv_any19, align 8
  %19 = bitcast i8* %18 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %19, i32 0, i32 0
  %20 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.15
  %21 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %21, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %20, %cond.true ], [ %call, %cond.false ]
  %22 = load i64, i64* %len, align 8
  %tobool20 = icmp ne i64 %22, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %cond.end
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %cond.end
  %23 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private23 = getelementptr inbounds %struct.op, %struct.op* %23, i32 0, i32 7
  %24 = load i8, i8* %op_private23, align 1
  %conv24 = zext i8 %24 to i32
  %and25 = and i32 %conv24, 4
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.end.49, label %if.then.27

if.then.27:                                       ; preds = %if.end.22
  %25 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags28 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 2
  %26 = load i32, i32* %sv_flags28, align 4
  %and29 = and i32 %26, 67108864
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.end.45, label %if.then.31

if.then.31:                                       ; preds = %if.then.27
  %27 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags32 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 2
  %28 = load i32, i32* %sv_flags32, align 4
  %and33 = and i32 %28, 10223616
  %cmp34 = icmp eq i32 %and33, 262144
  br i1 %cmp34, label %cond.true.36, label %cond.false.41

cond.true.36:                                     ; preds = %if.then.31
  %29 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any37 = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 0
  %30 = load i8*, i8** %sv_any37, align 8
  %31 = bitcast i8* %30 to %struct.xpv*
  %xpv_cur38 = getelementptr inbounds %struct.xpv, %struct.xpv* %31, i32 0, i32 1
  %32 = load i64, i64* %xpv_cur38, align 8
  store i64 %32, i64* %len, align 8
  %33 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any39 = getelementptr inbounds %struct.sv, %struct.sv* %33, i32 0, i32 0
  %34 = load i8*, i8** %sv_any39, align 8
  %35 = bitcast i8* %34 to %struct.xpv*
  %xpv_pv40 = getelementptr inbounds %struct.xpv, %struct.xpv* %35, i32 0, i32 0
  %36 = load i8*, i8** %xpv_pv40, align 8
  br label %cond.end.43

cond.false.41:                                    ; preds = %if.then.31
  %37 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call42 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %37, i64* %len, i32 2)
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.41, %cond.true.36
  %cond44 = phi i8* [ %36, %cond.true.36 ], [ %call42, %cond.false.41 ]
  br label %if.end.45

if.end.45:                                        ; preds = %cond.end.43, %if.then.27
  %38 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags46 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 2
  %39 = load i32, i32* %sv_flags46, align 4
  %and47 = and i32 %39, 1760624639
  store i32 %and47, i32* %sv_flags46, align 4
  %40 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags48 = getelementptr inbounds %struct.sv, %struct.sv* %40, i32 0, i32 2
  %41 = load i32, i32* %sv_flags48, align 4
  %or = or i32 %41, 67371008
  store i32 %or, i32* %sv_flags48, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.45, %if.end.22
  %42 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private50 = getelementptr inbounds %struct.op, %struct.op* %42, i32 0, i32 7
  %43 = load i8, i8* %op_private50, align 1
  %conv51 = zext i8 %43 to i32
  %44 = load i32, i32* %hasutf, align 4
  %neg = xor i32 %44, -1
  %and52 = and i32 %conv51, %neg
  %and53 = and i32 %and52, 63
  switch i32 %and53, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb.58
    i32 36, label %sw.bb.58
  ]

sw.bb:                                            ; preds = %if.end.49
  %45 = load i32, i32* %hasutf, align 4
  %tobool54 = icmp ne i32 %45, 0
  br i1 %tobool54, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %sw.bb
  %46 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call56 = call i32 @S_do_trans_simple_utf8(%struct.sv* %46)
  store i32 %call56, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.bb
  %47 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call57 = call i32 @S_do_trans_simple(%struct.sv* %47)
  store i32 %call57, i32* %retval
  br label %return

sw.bb.58:                                         ; preds = %if.end.49, %if.end.49
  %48 = load i32, i32* %hasutf, align 4
  %tobool59 = icmp ne i32 %48, 0
  br i1 %tobool59, label %if.then.60, label %if.else.62

if.then.60:                                       ; preds = %sw.bb.58
  %49 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call61 = call i32 @S_do_trans_count_utf8(%struct.sv* %49)
  store i32 %call61, i32* %retval
  br label %return

if.else.62:                                       ; preds = %sw.bb.58
  %50 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call63 = call i32 @S_do_trans_count(%struct.sv* %50)
  store i32 %call63, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.49
  %51 = load i32, i32* %hasutf, align 4
  %tobool64 = icmp ne i32 %51, 0
  br i1 %tobool64, label %if.then.65, label %if.else.67

if.then.65:                                       ; preds = %sw.default
  %52 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call66 = call i32 @S_do_trans_complex_utf8(%struct.sv* %52)
  store i32 %call66, i32* %retval
  br label %return

if.else.67:                                       ; preds = %sw.default
  %53 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call68 = call i32 @S_do_trans_complex(%struct.sv* %53)
  store i32 %call68, i32* %retval
  br label %return

return:                                           ; preds = %if.else.67, %if.then.65, %if.else.62, %if.then.60, %if.else, %if.then.55, %if.then.21
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare void @Perl_sv_force_normal(%struct.sv*) #1

declare void @Perl_croak(i8*, ...) #1

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

declare i8* @Perl_sv_pvn_force_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @S_do_trans_simple_utf8(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %s = alloca i8*, align 8
  %send = alloca i8*, align 8
  %d = alloca i8*, align 8
  %start = alloca i8*, align 8
  %dstart = alloca i8*, align 8
  %dend = alloca i8*, align 8
  %matches = alloca i32, align 4
  %grows = alloca i32, align 4
  %len = alloca i64, align 8
  %rv = alloca %struct.sv*, align 8
  %hv = alloca %struct.hv*, align 8
  %svp = alloca %struct.sv**, align 8
  %none = alloca i64, align 8
  %extra = alloca i64, align 8
  %final = alloca i64, align 8
  %uv = alloca i64, align 8
  %isutf8 = alloca i32, align 4
  %hibit = alloca i8, align 1
  %t = alloca i8*, align 8
  %e = alloca i8*, align 8
  %ch = alloca i8, align 1
  %i = alloca i32, align 4
  %i87 = alloca i32, align 4
  %clen = alloca i64, align 8
  %nlen = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i32 0, i32* %matches, align 4
  %0 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %0, i32 0, i32 7
  %1 = load i8, i8* %op_private, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 64
  store i32 %and, i32* %grows, align 4
  %2 = load %struct.op*, %struct.op** @PL_op, align 8
  %3 = bitcast %struct.op* %2 to %struct.svop*
  %op_sv = getelementptr inbounds %struct.svop, %struct.svop* %3, i32 0, i32 8
  %4 = load %struct.sv*, %struct.sv** %op_sv, align 8
  store %struct.sv* %4, %struct.sv** %rv, align 8
  %5 = load %struct.sv*, %struct.sv** %rv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 0
  %6 = load i8*, i8** %sv_any, align 8
  %7 = bitcast i8* %6 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %7, i32 0, i32 0
  %8 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %9 = bitcast %struct.sv* %8 to %struct.hv*
  store %struct.hv* %9, %struct.hv** %hv, align 8
  %10 = load %struct.hv*, %struct.hv** %hv, align 8
  %call = call %struct.sv** @Perl_hv_fetch(%struct.hv* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 4, i32 0)
  store %struct.sv** %call, %struct.sv*** %svp, align 8
  %11 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool = icmp ne %struct.sv** %11, null
  br i1 %tobool, label %cond.true, label %cond.false.6

cond.true:                                        ; preds = %entry
  %12 = load %struct.sv**, %struct.sv*** %svp, align 8
  %13 = load %struct.sv*, %struct.sv** %12, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 2
  %14 = load i32, i32* %sv_flags, align 4
  %and1 = and i32 %14, 65536
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %cond.true.3, label %cond.false

cond.true.3:                                      ; preds = %cond.true
  %15 = load %struct.sv**, %struct.sv*** %svp, align 8
  %16 = load %struct.sv*, %struct.sv** %15, align 8
  %sv_any4 = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 0
  %17 = load i8*, i8** %sv_any4, align 8
  %18 = bitcast i8* %17 to %struct.xpvuv*
  %xuv_uv = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %18, i32 0, i32 3
  %19 = load i64, i64* %xuv_uv, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %20 = load %struct.sv**, %struct.sv*** %svp, align 8
  %21 = load %struct.sv*, %struct.sv** %20, align 8
  %call5 = call i64 @Perl_sv_2uv(%struct.sv* %21)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.3
  %cond = phi i64 [ %19, %cond.true.3 ], [ %call5, %cond.false ]
  br label %cond.end.7

cond.false.6:                                     ; preds = %entry
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ 2147483647, %cond.false.6 ]
  store i64 %cond8, i64* %none, align 8
  %22 = load i64, i64* %none, align 8
  %add = add i64 %22, 1
  store i64 %add, i64* %extra, align 8
  store i64 0, i64* %final, align 8
  store i8 0, i8* %hibit, align 1
  %23 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags9 = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 2
  %24 = load i32, i32* %sv_flags9, align 4
  %and10 = and i32 %24, 262144
  %cmp = icmp eq i32 %and10, 262144
  br i1 %cmp, label %cond.true.12, label %cond.false.15

cond.true.12:                                     ; preds = %cond.end.7
  %25 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any13 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 0
  %26 = load i8*, i8** %sv_any13, align 8
  %27 = bitcast i8* %26 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %27, i32 0, i32 1
  %28 = load i64, i64* %xpv_cur, align 8
  store i64 %28, i64* %len, align 8
  %29 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any14 = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 0
  %30 = load i8*, i8** %sv_any14, align 8
  %31 = bitcast i8* %30 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %31, i32 0, i32 0
  %32 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.17

cond.false.15:                                    ; preds = %cond.end.7
  %33 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call16 = call i8* @Perl_sv_2pv_flags(%struct.sv* %33, i64* %len, i32 2)
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.15, %cond.true.12
  %cond18 = phi i8* [ %32, %cond.true.12 ], [ %call16, %cond.false.15 ]
  store i8* %cond18, i8** %s, align 8
  %34 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags19 = getelementptr inbounds %struct.sv, %struct.sv* %34, i32 0, i32 2
  %35 = load i32, i32* %sv_flags19, align 4
  %and20 = and i32 %35, 536870912
  store i32 %and20, i32* %isutf8, align 4
  %36 = load i32, i32* %isutf8, align 4
  %tobool21 = icmp ne i32 %36, 0
  br i1 %tobool21, label %if.end.34, label %if.then

if.then:                                          ; preds = %cond.end.17
  %37 = load i8*, i8** %s, align 8
  store i8* %37, i8** %t, align 8
  %38 = load i8*, i8** %s, align 8
  %39 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %add.ptr, i8** %e, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %40 = load i8*, i8** %t, align 8
  %41 = load i8*, i8** %e, align 8
  %cmp22 = icmp ult i8* %40, %41
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = load i8*, i8** %t, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr, i8** %t, align 8
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %ch, align 1
  %44 = load i8, i8* %ch, align 1
  %conv24 = zext i8 %44 to i64
  %cmp25 = icmp ult i64 %conv24, 128
  %lnot = xor i1 %cmp25, true
  %lnot.ext = zext i1 %lnot to i32
  %conv27 = trunc i32 %lnot.ext to i8
  store i8 %conv27, i8* %hibit, align 1
  %tobool28 = icmp ne i8 %conv27, 0
  br i1 %tobool28, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.29, %while.cond
  %45 = load i8, i8* %hibit, align 1
  %tobool30 = icmp ne i8 %45, 0
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %while.end
  %46 = load i8*, i8** %s, align 8
  %call32 = call i8* @Perl_bytes_to_utf8(i8* %46, i64* %len)
  store i8* %call32, i8** %s, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %while.end
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %cond.end.17
  %47 = load i8*, i8** %s, align 8
  %48 = load i64, i64* %len, align 8
  %add.ptr35 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %add.ptr35, i8** %send, align 8
  %49 = load i8*, i8** %s, align 8
  store i8* %49, i8** %start, align 8
  %50 = load %struct.hv*, %struct.hv** %hv, align 8
  %call36 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 5, i32 0)
  store %struct.sv** %call36, %struct.sv*** %svp, align 8
  %51 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool37 = icmp ne %struct.sv** %51, null
  br i1 %tobool37, label %if.then.38, label %if.end.49

if.then.38:                                       ; preds = %if.end.34
  %52 = load %struct.sv**, %struct.sv*** %svp, align 8
  %53 = load %struct.sv*, %struct.sv** %52, align 8
  %sv_flags39 = getelementptr inbounds %struct.sv, %struct.sv* %53, i32 0, i32 2
  %54 = load i32, i32* %sv_flags39, align 4
  %and40 = and i32 %54, 65536
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %cond.true.42, label %cond.false.45

cond.true.42:                                     ; preds = %if.then.38
  %55 = load %struct.sv**, %struct.sv*** %svp, align 8
  %56 = load %struct.sv*, %struct.sv** %55, align 8
  %sv_any43 = getelementptr inbounds %struct.sv, %struct.sv* %56, i32 0, i32 0
  %57 = load i8*, i8** %sv_any43, align 8
  %58 = bitcast i8* %57 to %struct.xpvuv*
  %xuv_uv44 = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %58, i32 0, i32 3
  %59 = load i64, i64* %xuv_uv44, align 8
  br label %cond.end.47

cond.false.45:                                    ; preds = %if.then.38
  %60 = load %struct.sv**, %struct.sv*** %svp, align 8
  %61 = load %struct.sv*, %struct.sv** %60, align 8
  %call46 = call i64 @Perl_sv_2uv(%struct.sv* %61)
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.45, %cond.true.42
  %cond48 = phi i64 [ %59, %cond.true.42 ], [ %call46, %cond.false.45 ]
  store i64 %cond48, i64* %final, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %cond.end.47, %if.end.34
  %62 = load i32, i32* %grows, align 4
  %tobool50 = icmp ne i32 %62, 0
  br i1 %tobool50, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %if.end.49
  %63 = load i64, i64* %len, align 8
  %mul = mul i64 %63, 3
  %add52 = add i64 %mul, 13
  %mul53 = mul i64 %add52, 1
  %call54 = call i8* @Perl_safesysmalloc(i64 %mul53)
  store i8* %call54, i8** %d, align 8
  %64 = load i8*, i8** %d, align 8
  %65 = load i64, i64* %len, align 8
  %mul55 = mul i64 %65, 3
  %add.ptr56 = getelementptr inbounds i8, i8* %64, i64 %mul55
  store i8* %add.ptr56, i8** %dend, align 8
  %66 = load i8*, i8** %d, align 8
  store i8* %66, i8** %dstart, align 8
  br label %if.end.58

if.else:                                          ; preds = %if.end.49
  %67 = load i8*, i8** %s, align 8
  store i8* %67, i8** %d, align 8
  store i8* %67, i8** %dstart, align 8
  %68 = load i8*, i8** %d, align 8
  %69 = load i64, i64* %len, align 8
  %add.ptr57 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %add.ptr57, i8** %dend, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.else, %if.then.51
  br label %while.cond.59

while.cond.59:                                    ; preds = %if.end.120, %if.end.58
  %70 = load i8*, i8** %s, align 8
  %71 = load i8*, i8** %send, align 8
  %cmp60 = icmp ult i8* %70, %71
  br i1 %cmp60, label %while.body.62, label %while.end.121

while.body.62:                                    ; preds = %while.cond.59
  %72 = load %struct.sv*, %struct.sv** %rv, align 8
  %73 = load i8*, i8** %s, align 8
  %call63 = call i64 @Perl_swash_fetch(%struct.sv* %72, i8* %73, i8 signext 1)
  store i64 %call63, i64* %uv, align 8
  %74 = load i64, i64* %none, align 8
  %cmp64 = icmp ult i64 %call63, %74
  br i1 %cmp64, label %if.then.66, label %if.else.70

if.then.66:                                       ; preds = %while.body.62
  %75 = load i8*, i8** %s, align 8
  %76 = load i8, i8* %75, align 1
  %idxprom = zext i8 %76 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom
  %77 = load i8, i8* %arrayidx, align 1
  %conv67 = zext i8 %77 to i32
  %78 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %conv67 to i64
  %add.ptr68 = getelementptr inbounds i8, i8* %78, i64 %idx.ext
  store i8* %add.ptr68, i8** %s, align 8
  %79 = load i32, i32* %matches, align 4
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %matches, align 4
  %80 = load i8*, i8** %d, align 8
  %81 = load i64, i64* %uv, align 8
  %call69 = call i8* @Perl_uvuni_to_utf8(i8* %80, i64 %81)
  store i8* %call69, i8** %d, align 8
  br label %if.end.103

if.else.70:                                       ; preds = %while.body.62
  %82 = load i64, i64* %uv, align 8
  %83 = load i64, i64* %none, align 8
  %cmp71 = icmp eq i64 %82, %83
  br i1 %cmp71, label %if.then.73, label %if.else.83

if.then.73:                                       ; preds = %if.else.70
  %84 = load i8*, i8** %s, align 8
  %85 = load i8, i8* %84, align 1
  %idxprom74 = zext i8 %85 to i64
  %arrayidx75 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom74
  %86 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %86 to i32
  store i32 %conv76, i32* %i, align 4
  %87 = load i8*, i8** %d, align 8
  %88 = load i8*, i8** %s, align 8
  %89 = load i32, i32* %i, align 4
  %conv77 = sext i32 %89 to i64
  %mul78 = mul i64 %conv77, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %87, i8* %88, i64 %mul78, i32 1, i1 false)
  %90 = load i32, i32* %i, align 4
  %91 = load i8*, i8** %d, align 8
  %idx.ext79 = sext i32 %90 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %91, i64 %idx.ext79
  store i8* %add.ptr80, i8** %d, align 8
  %92 = load i32, i32* %i, align 4
  %93 = load i8*, i8** %s, align 8
  %idx.ext81 = sext i32 %92 to i64
  %add.ptr82 = getelementptr inbounds i8, i8* %93, i64 %idx.ext81
  store i8* %add.ptr82, i8** %s, align 8
  br label %if.end.102

if.else.83:                                       ; preds = %if.else.70
  %94 = load i64, i64* %uv, align 8
  %95 = load i64, i64* %extra, align 8
  %cmp84 = icmp eq i64 %94, %95
  br i1 %cmp84, label %if.then.86, label %if.else.95

if.then.86:                                       ; preds = %if.else.83
  %96 = load i8*, i8** %s, align 8
  %97 = load i8, i8* %96, align 1
  %idxprom88 = zext i8 %97 to i64
  %arrayidx89 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom88
  %98 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %98 to i32
  store i32 %conv90, i32* %i87, align 4
  %99 = load i32, i32* %i87, align 4
  %100 = load i8*, i8** %s, align 8
  %idx.ext91 = sext i32 %99 to i64
  %add.ptr92 = getelementptr inbounds i8, i8* %100, i64 %idx.ext91
  store i8* %add.ptr92, i8** %s, align 8
  %101 = load i32, i32* %matches, align 4
  %inc93 = add nsw i32 %101, 1
  store i32 %inc93, i32* %matches, align 4
  %102 = load i8*, i8** %d, align 8
  %103 = load i64, i64* %final, align 8
  %call94 = call i8* @Perl_uvuni_to_utf8(i8* %102, i64 %103)
  store i8* %call94, i8** %d, align 8
  br label %if.end.101

if.else.95:                                       ; preds = %if.else.83
  %104 = load i8*, i8** %s, align 8
  %105 = load i8, i8* %104, align 1
  %idxprom96 = zext i8 %105 to i64
  %arrayidx97 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom96
  %106 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %106 to i32
  %107 = load i8*, i8** %s, align 8
  %idx.ext99 = sext i32 %conv98 to i64
  %add.ptr100 = getelementptr inbounds i8, i8* %107, i64 %idx.ext99
  store i8* %add.ptr100, i8** %s, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.95, %if.then.86
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.73
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.66
  %108 = load i8*, i8** %d, align 8
  %109 = load i8*, i8** %dend, align 8
  %cmp104 = icmp ugt i8* %108, %109
  br i1 %cmp104, label %if.then.106, label %if.end.120

if.then.106:                                      ; preds = %if.end.103
  %110 = load i8*, i8** %d, align 8
  %111 = load i8*, i8** %dstart, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %110 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %111 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %clen, align 8
  %112 = load i8*, i8** %dend, align 8
  %113 = load i8*, i8** %dstart, align 8
  %sub.ptr.lhs.cast107 = ptrtoint i8* %112 to i64
  %sub.ptr.rhs.cast108 = ptrtoint i8* %113 to i64
  %sub.ptr.sub109 = sub i64 %sub.ptr.lhs.cast107, %sub.ptr.rhs.cast108
  %114 = load i64, i64* %len, align 8
  %add110 = add i64 %sub.ptr.sub109, %114
  %add111 = add i64 %add110, 13
  store i64 %add111, i64* %nlen, align 8
  %115 = load i32, i32* %grows, align 4
  %tobool112 = icmp ne i32 %115, 0
  br i1 %tobool112, label %if.end.114, label %if.then.113

if.then.113:                                      ; preds = %if.then.106
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), i32 375)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %if.then.106
  %116 = load i8*, i8** %dstart, align 8
  %117 = load i64, i64* %nlen, align 8
  %add115 = add i64 %117, 13
  %mul116 = mul i64 %add115, 1
  %call117 = call i8* @Perl_safesysrealloc(i8* %116, i64 %mul116)
  store i8* %call117, i8** %dstart, align 8
  %118 = load i8*, i8** %dstart, align 8
  %119 = load i64, i64* %clen, align 8
  %add.ptr118 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %add.ptr118, i8** %d, align 8
  %120 = load i8*, i8** %dstart, align 8
  %121 = load i64, i64* %nlen, align 8
  %add.ptr119 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %add.ptr119, i8** %dend, align 8
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.114, %if.end.103
  br label %while.cond.59

while.end.121:                                    ; preds = %while.cond.59
  %122 = load i32, i32* %grows, align 4
  %tobool122 = icmp ne i32 %122, 0
  br i1 %tobool122, label %if.then.125, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.121
  %123 = load i8, i8* %hibit, align 1
  %conv123 = zext i8 %123 to i32
  %tobool124 = icmp ne i32 %conv123, 0
  br i1 %tobool124, label %if.then.125, label %if.else.134

if.then.125:                                      ; preds = %lor.lhs.false, %while.end.121
  %124 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %125 = load i8*, i8** %dstart, align 8
  %126 = load i8*, i8** %d, align 8
  %127 = load i8*, i8** %dstart, align 8
  %sub.ptr.lhs.cast126 = ptrtoint i8* %126 to i64
  %sub.ptr.rhs.cast127 = ptrtoint i8* %127 to i64
  %sub.ptr.sub128 = sub i64 %sub.ptr.lhs.cast126, %sub.ptr.rhs.cast127
  call void @Perl_sv_setpvn(%struct.sv* %124, i8* %125, i64 %sub.ptr.sub128)
  %128 = load i8*, i8** %dstart, align 8
  call void @Perl_safesysfree(i8* %128)
  %129 = load i32, i32* %grows, align 4
  %tobool129 = icmp ne i32 %129, 0
  br i1 %tobool129, label %land.lhs.true, label %if.end.133

land.lhs.true:                                    ; preds = %if.then.125
  %130 = load i8, i8* %hibit, align 1
  %conv130 = zext i8 %130 to i32
  %tobool131 = icmp ne i32 %conv130, 0
  br i1 %tobool131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %land.lhs.true
  %131 = load i8*, i8** %start, align 8
  call void @Perl_safesysfree(i8* %131)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %land.lhs.true, %if.then.125
  br label %if.end.140

if.else.134:                                      ; preds = %lor.lhs.false
  %132 = load i8*, i8** %d, align 8
  store i8 0, i8* %132, align 1
  %133 = load i8*, i8** %d, align 8
  %134 = load i8*, i8** %dstart, align 8
  %sub.ptr.lhs.cast135 = ptrtoint i8* %133 to i64
  %sub.ptr.rhs.cast136 = ptrtoint i8* %134 to i64
  %sub.ptr.sub137 = sub i64 %sub.ptr.lhs.cast135, %sub.ptr.rhs.cast136
  %135 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any138 = getelementptr inbounds %struct.sv, %struct.sv* %135, i32 0, i32 0
  %136 = load i8*, i8** %sv_any138, align 8
  %137 = bitcast i8* %136 to %struct.xpv*
  %xpv_cur139 = getelementptr inbounds %struct.xpv, %struct.xpv* %137, i32 0, i32 1
  store i64 %sub.ptr.sub137, i64* %xpv_cur139, align 8
  store i64 %sub.ptr.sub137, i64* %tmp
  %138 = load i64, i64* %tmp
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.134, %if.end.133
  %139 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags141 = getelementptr inbounds %struct.sv, %struct.sv* %139, i32 0, i32 2
  %140 = load i32, i32* %sv_flags141, align 4
  %and142 = and i32 %140, 16384
  %tobool143 = icmp ne i32 %and142, 0
  br i1 %tobool143, label %if.then.144, label %if.end.146

if.then.144:                                      ; preds = %if.end.140
  %141 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call145 = call i32 @Perl_mg_set(%struct.sv* %141)
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.144, %if.end.140
  %142 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags147 = getelementptr inbounds %struct.sv, %struct.sv* %142, i32 0, i32 2
  %143 = load i32, i32* %sv_flags147, align 4
  %or = or i32 %143, 536870912
  store i32 %or, i32* %sv_flags147, align 4
  %144 = load i32, i32* %matches, align 4
  ret i32 %144
}

; Function Attrs: nounwind uwtable
define internal i32 @S_do_trans_simple(%struct.sv* %sv) #0 {
entry:
  %retval = alloca i32, align 4
  %sv.addr = alloca %struct.sv*, align 8
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  %send = alloca i8*, align 8
  %dstart = alloca i8*, align 8
  %matches = alloca i32, align 4
  %grows = alloca i32, align 4
  %len = alloca i64, align 8
  %tbl = alloca i16*, align 8
  %ch = alloca i32, align 4
  %ulen = alloca i64, align 8
  %c = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i32 0, i32* %matches, align 4
  %0 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %0, i32 0, i32 7
  %1 = load i8, i8* %op_private, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 64
  store i32 %and, i32* %grows, align 4
  %2 = load %struct.op*, %struct.op** @PL_op, align 8
  %3 = bitcast %struct.op* %2 to %struct.pvop*
  %op_pv = getelementptr inbounds %struct.pvop, %struct.pvop* %3, i32 0, i32 8
  %4 = load i8*, i8** %op_pv, align 8
  %5 = bitcast i8* %4 to i16*
  store i16* %5, i16** %tbl, align 8
  %6 = load i16*, i16** %tbl, align 8
  %tobool = icmp ne i16* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), i32 43)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 2
  %8 = load i32, i32* %sv_flags, align 4
  %and1 = and i32 %8, 262144
  %cmp = icmp eq i32 %and1, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 0
  %10 = load i8*, i8** %sv_any, align 8
  %11 = bitcast i8* %10 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %11, i32 0, i32 1
  %12 = load i64, i64* %xpv_cur, align 8
  store i64 %12, i64* %len, align 8
  %13 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any3 = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 0
  %14 = load i8*, i8** %sv_any3, align 8
  %15 = bitcast i8* %14 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %15, i32 0, i32 0
  %16 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %17 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %17, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %16, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %s, align 8
  %18 = load i8*, i8** %s, align 8
  %19 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %add.ptr, i8** %send, align 8
  %20 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags4 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 2
  %21 = load i32, i32* %sv_flags4, align 4
  %and5 = and i32 %21, 536870912
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.end.23, label %if.then.7

if.then.7:                                        ; preds = %cond.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.16, %if.then.7
  %22 = load i8*, i8** %s, align 8
  %23 = load i8*, i8** %send, align 8
  %cmp8 = icmp ult i8* %22, %23
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i8*, i8** %s, align 8
  %25 = load i8, i8* %24, align 1
  %idxprom = zext i8 %25 to i64
  %26 = load i16*, i16** %tbl, align 8
  %arrayidx = getelementptr inbounds i16, i16* %26, i64 %idxprom
  %27 = load i16, i16* %arrayidx, align 2
  %conv10 = sext i16 %27 to i32
  store i32 %conv10, i32* %ch, align 4
  %cmp11 = icmp sge i32 %conv10, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %while.body
  %28 = load i32, i32* %matches, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %matches, align 4
  %29 = load i32, i32* %ch, align 4
  %conv14 = trunc i32 %29 to i8
  %30 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  store i8 %conv14, i8* %30, align 1
  br label %if.end.16

if.else:                                          ; preds = %while.body
  %31 = load i8*, i8** %s, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr15, i8** %s, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %32 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %32, i32 0, i32 2
  %33 = load i32, i32* %sv_flags17, align 4
  %and18 = and i32 %33, 16384
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %while.end
  %34 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call21 = call i32 @Perl_mg_set(%struct.sv* %34)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %while.end
  %35 = load i32, i32* %matches, align 4
  store i32 %35, i32* %retval
  br label %return

if.end.23:                                        ; preds = %cond.end
  %36 = load i32, i32* %grows, align 4
  %tobool24 = icmp ne i32 %36, 0
  br i1 %tobool24, label %if.then.25, label %if.else.28

if.then.25:                                       ; preds = %if.end.23
  %37 = load i64, i64* %len, align 8
  %mul = mul i64 %37, 2
  %add = add i64 %mul, 1
  %mul26 = mul i64 %add, 1
  %call27 = call i8* @Perl_safesysmalloc(i64 %mul26)
  store i8* %call27, i8** %d, align 8
  br label %if.end.29

if.else.28:                                       ; preds = %if.end.23
  %38 = load i8*, i8** %s, align 8
  store i8* %38, i8** %d, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.25
  %39 = load i8*, i8** %d, align 8
  store i8* %39, i8** %dstart, align 8
  br label %while.cond.30

while.cond.30:                                    ; preds = %if.end.50, %if.end.29
  %40 = load i8*, i8** %s, align 8
  %41 = load i8*, i8** %send, align 8
  %cmp31 = icmp ult i8* %40, %41
  br i1 %cmp31, label %while.body.33, label %while.end.51

while.body.33:                                    ; preds = %while.cond.30
  %42 = load i8*, i8** %s, align 8
  %43 = load i8*, i8** %send, align 8
  %44 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %43 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %44 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call34 = call i64 @Perl_utf8n_to_uvuni(i8* %42, i64 %sub.ptr.sub, i64* %ulen, i32 0)
  store i64 %call34, i64* %c, align 8
  %45 = load i64, i64* %c, align 8
  %cmp35 = icmp ult i64 %45, 256
  br i1 %cmp35, label %land.lhs.true, label %if.else.46

land.lhs.true:                                    ; preds = %while.body.33
  %46 = load i64, i64* %c, align 8
  %47 = load i16*, i16** %tbl, align 8
  %arrayidx37 = getelementptr inbounds i16, i16* %47, i64 %46
  %48 = load i16, i16* %arrayidx37, align 2
  %conv38 = sext i16 %48 to i32
  store i32 %conv38, i32* %ch, align 4
  %cmp39 = icmp sge i32 %conv38, 0
  br i1 %cmp39, label %if.then.41, label %if.else.46

if.then.41:                                       ; preds = %land.lhs.true
  %49 = load i32, i32* %matches, align 4
  %inc42 = add nsw i32 %49, 1
  store i32 %inc42, i32* %matches, align 4
  %50 = load i8*, i8** %d, align 8
  %51 = load i32, i32* %ch, align 4
  %conv43 = sext i32 %51 to i64
  %call44 = call i8* @Perl_uvuni_to_utf8(i8* %50, i64 %conv43)
  store i8* %call44, i8** %d, align 8
  %52 = load i64, i64* %ulen, align 8
  %53 = load i8*, i8** %s, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %53, i64 %52
  store i8* %add.ptr45, i8** %s, align 8
  br label %if.end.50

if.else.46:                                       ; preds = %land.lhs.true, %while.body.33
  %54 = load i8*, i8** %d, align 8
  %55 = load i8*, i8** %s, align 8
  %56 = load i64, i64* %ulen, align 8
  %mul47 = mul i64 %56, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %54, i8* %55, i64 %mul47, i32 1, i1 false)
  %57 = load i64, i64* %ulen, align 8
  %58 = load i8*, i8** %d, align 8
  %add.ptr48 = getelementptr inbounds i8, i8* %58, i64 %57
  store i8* %add.ptr48, i8** %d, align 8
  %59 = load i64, i64* %ulen, align 8
  %60 = load i8*, i8** %s, align 8
  %add.ptr49 = getelementptr inbounds i8, i8* %60, i64 %59
  store i8* %add.ptr49, i8** %s, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.46, %if.then.41
  br label %while.cond.30

while.end.51:                                     ; preds = %while.cond.30
  %61 = load i32, i32* %grows, align 4
  %tobool52 = icmp ne i32 %61, 0
  br i1 %tobool52, label %if.then.53, label %if.else.57

if.then.53:                                       ; preds = %while.end.51
  %62 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %63 = load i8*, i8** %dstart, align 8
  %64 = load i8*, i8** %d, align 8
  %65 = load i8*, i8** %dstart, align 8
  %sub.ptr.lhs.cast54 = ptrtoint i8* %64 to i64
  %sub.ptr.rhs.cast55 = ptrtoint i8* %65 to i64
  %sub.ptr.sub56 = sub i64 %sub.ptr.lhs.cast54, %sub.ptr.rhs.cast55
  call void @Perl_sv_setpvn(%struct.sv* %62, i8* %63, i64 %sub.ptr.sub56)
  %66 = load i8*, i8** %dstart, align 8
  call void @Perl_safesysfree(i8* %66)
  br label %if.end.63

if.else.57:                                       ; preds = %while.end.51
  %67 = load i8*, i8** %d, align 8
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %d, align 8
  %69 = load i8*, i8** %dstart, align 8
  %sub.ptr.lhs.cast58 = ptrtoint i8* %68 to i64
  %sub.ptr.rhs.cast59 = ptrtoint i8* %69 to i64
  %sub.ptr.sub60 = sub i64 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59
  %70 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any61 = getelementptr inbounds %struct.sv, %struct.sv* %70, i32 0, i32 0
  %71 = load i8*, i8** %sv_any61, align 8
  %72 = bitcast i8* %71 to %struct.xpv*
  %xpv_cur62 = getelementptr inbounds %struct.xpv, %struct.xpv* %72, i32 0, i32 1
  store i64 %sub.ptr.sub60, i64* %xpv_cur62, align 8
  store i64 %sub.ptr.sub60, i64* %tmp
  %73 = load i64, i64* %tmp
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.57, %if.then.53
  %74 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags64 = getelementptr inbounds %struct.sv, %struct.sv* %74, i32 0, i32 2
  %75 = load i32, i32* %sv_flags64, align 4
  %or = or i32 %75, 536870912
  store i32 %or, i32* %sv_flags64, align 4
  %76 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags65 = getelementptr inbounds %struct.sv, %struct.sv* %76, i32 0, i32 2
  %77 = load i32, i32* %sv_flags65, align 4
  %and66 = and i32 %77, 16384
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.63
  %78 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call69 = call i32 @Perl_mg_set(%struct.sv* %78)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.63
  %79 = load i32, i32* %matches, align 4
  store i32 %79, i32* %retval
  br label %return

return:                                           ; preds = %if.end.70, %if.end.22
  %80 = load i32, i32* %retval
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define internal i32 @S_do_trans_count_utf8(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %s = alloca i8*, align 8
  %start = alloca i8*, align 8
  %send = alloca i8*, align 8
  %matches = alloca i32, align 4
  %len = alloca i64, align 8
  %rv = alloca %struct.sv*, align 8
  %hv = alloca %struct.hv*, align 8
  %svp = alloca %struct.sv**, align 8
  %none = alloca i64, align 8
  %extra = alloca i64, align 8
  %uv = alloca i64, align 8
  %hibit = alloca i8, align 1
  %t = alloca i8*, align 8
  %e = alloca i8*, align 8
  %ch = alloca i8, align 1
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i8* null, i8** %start, align 8
  store i32 0, i32* %matches, align 4
  %0 = load %struct.op*, %struct.op** @PL_op, align 8
  %1 = bitcast %struct.op* %0 to %struct.svop*
  %op_sv = getelementptr inbounds %struct.svop, %struct.svop* %1, i32 0, i32 8
  %2 = load %struct.sv*, %struct.sv** %op_sv, align 8
  store %struct.sv* %2, %struct.sv** %rv, align 8
  %3 = load %struct.sv*, %struct.sv** %rv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 0
  %4 = load i8*, i8** %sv_any, align 8
  %5 = bitcast i8* %4 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %5, i32 0, i32 0
  %6 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %7 = bitcast %struct.sv* %6 to %struct.hv*
  store %struct.hv* %7, %struct.hv** %hv, align 8
  %8 = load %struct.hv*, %struct.hv** %hv, align 8
  %call = call %struct.sv** @Perl_hv_fetch(%struct.hv* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 4, i32 0)
  store %struct.sv** %call, %struct.sv*** %svp, align 8
  %9 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool = icmp ne %struct.sv** %9, null
  br i1 %tobool, label %cond.true, label %cond.false.5

cond.true:                                        ; preds = %entry
  %10 = load %struct.sv**, %struct.sv*** %svp, align 8
  %11 = load %struct.sv*, %struct.sv** %10, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 2
  %12 = load i32, i32* %sv_flags, align 4
  %and = and i32 %12, 65536
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %cond.true.2, label %cond.false

cond.true.2:                                      ; preds = %cond.true
  %13 = load %struct.sv**, %struct.sv*** %svp, align 8
  %14 = load %struct.sv*, %struct.sv** %13, align 8
  %sv_any3 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any3, align 8
  %16 = bitcast i8* %15 to %struct.xpvuv*
  %xuv_uv = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %16, i32 0, i32 3
  %17 = load i64, i64* %xuv_uv, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %18 = load %struct.sv**, %struct.sv*** %svp, align 8
  %19 = load %struct.sv*, %struct.sv** %18, align 8
  %call4 = call i64 @Perl_sv_2uv(%struct.sv* %19)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.2
  %cond = phi i64 [ %17, %cond.true.2 ], [ %call4, %cond.false ]
  br label %cond.end.6

cond.false.5:                                     ; preds = %entry
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.end
  %cond7 = phi i64 [ %cond, %cond.end ], [ 2147483647, %cond.false.5 ]
  store i64 %cond7, i64* %none, align 8
  %20 = load i64, i64* %none, align 8
  %add = add i64 %20, 1
  store i64 %add, i64* %extra, align 8
  store i8 0, i8* %hibit, align 1
  %21 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags8 = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 2
  %22 = load i32, i32* %sv_flags8, align 4
  %and9 = and i32 %22, 262144
  %cmp = icmp eq i32 %and9, 262144
  br i1 %cmp, label %cond.true.10, label %cond.false.13

cond.true.10:                                     ; preds = %cond.end.6
  %23 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any11 = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 0
  %24 = load i8*, i8** %sv_any11, align 8
  %25 = bitcast i8* %24 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %25, i32 0, i32 1
  %26 = load i64, i64* %xpv_cur, align 8
  store i64 %26, i64* %len, align 8
  %27 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any12 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 0
  %28 = load i8*, i8** %sv_any12, align 8
  %29 = bitcast i8* %28 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %29, i32 0, i32 0
  %30 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.15

cond.false.13:                                    ; preds = %cond.end.6
  %31 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call14 = call i8* @Perl_sv_2pv_flags(%struct.sv* %31, i64* %len, i32 2)
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.10
  %cond16 = phi i8* [ %30, %cond.true.10 ], [ %call14, %cond.false.13 ]
  store i8* %cond16, i8** %s, align 8
  %32 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %32, i32 0, i32 2
  %33 = load i32, i32* %sv_flags17, align 4
  %and18 = and i32 %33, 536870912
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.end.30, label %if.then

if.then:                                          ; preds = %cond.end.15
  %34 = load i8*, i8** %s, align 8
  store i8* %34, i8** %t, align 8
  %35 = load i8*, i8** %s, align 8
  %36 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %add.ptr, i8** %e, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %37 = load i8*, i8** %t, align 8
  %38 = load i8*, i8** %e, align 8
  %cmp20 = icmp ult i8* %37, %38
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load i8*, i8** %t, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %t, align 8
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %ch, align 1
  %41 = load i8, i8* %ch, align 1
  %conv = zext i8 %41 to i64
  %cmp21 = icmp ult i64 %conv, 128
  %lnot = xor i1 %cmp21, true
  %lnot.ext = zext i1 %lnot to i32
  %conv23 = trunc i32 %lnot.ext to i8
  store i8 %conv23, i8* %hibit, align 1
  %tobool24 = icmp ne i8 %conv23, 0
  br i1 %tobool24, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.25, %while.cond
  %42 = load i8, i8* %hibit, align 1
  %tobool26 = icmp ne i8 %42, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %while.end
  %43 = load i8*, i8** %s, align 8
  %call28 = call i8* @Perl_bytes_to_utf8(i8* %43, i64* %len)
  store i8* %call28, i8** %s, align 8
  store i8* %call28, i8** %start, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %while.end
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %cond.end.15
  %44 = load i8*, i8** %s, align 8
  %45 = load i64, i64* %len, align 8
  %add.ptr31 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %add.ptr31, i8** %send, align 8
  br label %while.cond.32

while.cond.32:                                    ; preds = %if.end.42, %if.end.30
  %46 = load i8*, i8** %s, align 8
  %47 = load i8*, i8** %send, align 8
  %cmp33 = icmp ult i8* %46, %47
  br i1 %cmp33, label %while.body.35, label %while.end.45

while.body.35:                                    ; preds = %while.cond.32
  %48 = load %struct.sv*, %struct.sv** %rv, align 8
  %49 = load i8*, i8** %s, align 8
  %call36 = call i64 @Perl_swash_fetch(%struct.sv* %48, i8* %49, i8 signext 1)
  store i64 %call36, i64* %uv, align 8
  %50 = load i64, i64* %none, align 8
  %cmp37 = icmp ult i64 %call36, %50
  br i1 %cmp37, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.35
  %51 = load i64, i64* %uv, align 8
  %52 = load i64, i64* %extra, align 8
  %cmp39 = icmp eq i64 %51, %52
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %lor.lhs.false, %while.body.35
  %53 = load i32, i32* %matches, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %matches, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %lor.lhs.false
  %54 = load i8*, i8** %s, align 8
  %55 = load i8, i8* %54, align 1
  %idxprom = zext i8 %55 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom
  %56 = load i8, i8* %arrayidx, align 1
  %conv43 = zext i8 %56 to i32
  %57 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %conv43 to i64
  %add.ptr44 = getelementptr inbounds i8, i8* %57, i64 %idx.ext
  store i8* %add.ptr44, i8** %s, align 8
  br label %while.cond.32

while.end.45:                                     ; preds = %while.cond.32
  %58 = load i8, i8* %hibit, align 1
  %tobool46 = icmp ne i8 %58, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %while.end.45
  %59 = load i8*, i8** %start, align 8
  call void @Perl_safesysfree(i8* %59)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %while.end.45
  %60 = load i32, i32* %matches, align 4
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal i32 @S_do_trans_count(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %s = alloca i8*, align 8
  %send = alloca i8*, align 8
  %matches = alloca i32, align 4
  %len = alloca i64, align 8
  %tbl = alloca i16*, align 8
  %complement = alloca i32, align 4
  %c = alloca i64, align 8
  %ulen = alloca i64, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i32 0, i32* %matches, align 4
  %0 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %0, i32 0, i32 7
  %1 = load i8, i8* %op_private, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 32
  store i32 %and, i32* %complement, align 4
  %2 = load %struct.op*, %struct.op** @PL_op, align 8
  %3 = bitcast %struct.op* %2 to %struct.pvop*
  %op_pv = getelementptr inbounds %struct.pvop, %struct.pvop* %3, i32 0, i32 8
  %4 = load i8*, i8** %op_pv, align 8
  %5 = bitcast i8* %4 to i16*
  store i16* %5, i16** %tbl, align 8
  %6 = load i16*, i16** %tbl, align 8
  %tobool = icmp ne i16* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), i32 110)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 2
  %8 = load i32, i32* %sv_flags, align 4
  %and1 = and i32 %8, 262144
  %cmp = icmp eq i32 %and1, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 0
  %10 = load i8*, i8** %sv_any, align 8
  %11 = bitcast i8* %10 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %11, i32 0, i32 1
  %12 = load i64, i64* %xpv_cur, align 8
  store i64 %12, i64* %len, align 8
  %13 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any3 = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 0
  %14 = load i8*, i8** %sv_any3, align 8
  %15 = bitcast i8* %14 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %15, i32 0, i32 0
  %16 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %17 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %17, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %16, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %s, align 8
  %18 = load i8*, i8** %s, align 8
  %19 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %add.ptr, i8** %send, align 8
  %20 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags4 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 2
  %21 = load i32, i32* %sv_flags4, align 4
  %and5 = and i32 %21, 536870912
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %cond.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %if.then.7
  %22 = load i8*, i8** %s, align 8
  %23 = load i8*, i8** %send, align 8
  %cmp8 = icmp ult i8* %22, %23
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %25 = load i8, i8* %24, align 1
  %idxprom = zext i8 %25 to i64
  %26 = load i16*, i16** %tbl, align 8
  %arrayidx = getelementptr inbounds i16, i16* %26, i64 %idxprom
  %27 = load i16, i16* %arrayidx, align 2
  %conv10 = sext i16 %27 to i32
  %cmp11 = icmp sge i32 %conv10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %while.body
  %28 = load i32, i32* %matches, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %matches, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.38

if.else:                                          ; preds = %cond.end
  br label %while.cond.15

while.cond.15:                                    ; preds = %if.end.35, %if.else
  %29 = load i8*, i8** %s, align 8
  %30 = load i8*, i8** %send, align 8
  %cmp16 = icmp ult i8* %29, %30
  br i1 %cmp16, label %while.body.18, label %while.end.37

while.body.18:                                    ; preds = %while.cond.15
  %31 = load i8*, i8** %s, align 8
  %32 = load i8*, i8** %send, align 8
  %33 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call19 = call i64 @Perl_utf8n_to_uvuni(i8* %31, i64 %sub.ptr.sub, i64* %ulen, i32 0)
  store i64 %call19, i64* %c, align 8
  %34 = load i64, i64* %c, align 8
  %cmp20 = icmp ult i64 %34, 256
  br i1 %cmp20, label %if.then.22, label %if.else.30

if.then.22:                                       ; preds = %while.body.18
  %35 = load i64, i64* %c, align 8
  %36 = load i16*, i16** %tbl, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %36, i64 %35
  %37 = load i16, i16* %arrayidx23, align 2
  %conv24 = sext i16 %37 to i32
  %cmp25 = icmp sge i32 %conv24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.then.22
  %38 = load i32, i32* %matches, align 4
  %inc28 = add nsw i32 %38, 1
  store i32 %inc28, i32* %matches, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.then.22
  br label %if.end.35

if.else.30:                                       ; preds = %while.body.18
  %39 = load i32, i32* %complement, align 4
  %tobool31 = icmp ne i32 %39, 0
  br i1 %tobool31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.else.30
  %40 = load i32, i32* %matches, align 4
  %inc33 = add nsw i32 %40, 1
  store i32 %inc33, i32* %matches, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.else.30
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.29
  %41 = load i64, i64* %ulen, align 8
  %42 = load i8*, i8** %s, align 8
  %add.ptr36 = getelementptr inbounds i8, i8* %42, i64 %41
  store i8* %add.ptr36, i8** %s, align 8
  br label %while.cond.15

while.end.37:                                     ; preds = %while.cond.15
  br label %if.end.38

if.end.38:                                        ; preds = %while.end.37, %while.end
  %43 = load i32, i32* %matches, align 4
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal i32 @S_do_trans_complex_utf8(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %s = alloca i8*, align 8
  %start = alloca i8*, align 8
  %send = alloca i8*, align 8
  %d = alloca i8*, align 8
  %matches = alloca i32, align 4
  %squash = alloca i32, align 4
  %del = alloca i32, align 4
  %grows = alloca i32, align 4
  %rv = alloca %struct.sv*, align 8
  %hv = alloca %struct.hv*, align 8
  %svp = alloca %struct.sv**, align 8
  %none = alloca i64, align 8
  %extra = alloca i64, align 8
  %final = alloca i64, align 8
  %havefinal = alloca i8, align 1
  %uv = alloca i64, align 8
  %len = alloca i64, align 8
  %dstart = alloca i8*, align 8
  %dend = alloca i8*, align 8
  %isutf8 = alloca i32, align 4
  %hibit = alloca i8, align 1
  %t = alloca i8*, align 8
  %e = alloca i8*, align 8
  %ch = alloca i8, align 1
  %puv = alloca i64, align 8
  %clen = alloca i64, align 8
  %nlen = alloca i64, align 8
  %i = alloca i32, align 4
  %len131 = alloca i64, align 8
  %clen160 = alloca i64, align 8
  %nlen164 = alloca i64, align 8
  %i193 = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i32 0, i32* %matches, align 4
  %0 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %0, i32 0, i32 7
  %1 = load i8, i8* %op_private, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 8
  store i32 %and, i32* %squash, align 4
  %2 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private1 = getelementptr inbounds %struct.op, %struct.op* %2, i32 0, i32 7
  %3 = load i8, i8* %op_private1, align 1
  %conv2 = zext i8 %3 to i32
  %and3 = and i32 %conv2, 16
  store i32 %and3, i32* %del, align 4
  %4 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private4 = getelementptr inbounds %struct.op, %struct.op* %4, i32 0, i32 7
  %5 = load i8, i8* %op_private4, align 1
  %conv5 = zext i8 %5 to i32
  %and6 = and i32 %conv5, 64
  store i32 %and6, i32* %grows, align 4
  %6 = load %struct.op*, %struct.op** @PL_op, align 8
  %7 = bitcast %struct.op* %6 to %struct.svop*
  %op_sv = getelementptr inbounds %struct.svop, %struct.svop* %7, i32 0, i32 8
  %8 = load %struct.sv*, %struct.sv** %op_sv, align 8
  store %struct.sv* %8, %struct.sv** %rv, align 8
  %9 = load %struct.sv*, %struct.sv** %rv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 0
  %10 = load i8*, i8** %sv_any, align 8
  %11 = bitcast i8* %10 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %11, i32 0, i32 0
  %12 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %13 = bitcast %struct.sv* %12 to %struct.hv*
  store %struct.hv* %13, %struct.hv** %hv, align 8
  %14 = load %struct.hv*, %struct.hv** %hv, align 8
  %call = call %struct.sv** @Perl_hv_fetch(%struct.hv* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 4, i32 0)
  store %struct.sv** %call, %struct.sv*** %svp, align 8
  %15 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool = icmp ne %struct.sv** %15, null
  br i1 %tobool, label %cond.true, label %cond.false.12

cond.true:                                        ; preds = %entry
  %16 = load %struct.sv**, %struct.sv*** %svp, align 8
  %17 = load %struct.sv*, %struct.sv** %16, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 2
  %18 = load i32, i32* %sv_flags, align 4
  %and7 = and i32 %18, 65536
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %cond.true.9, label %cond.false

cond.true.9:                                      ; preds = %cond.true
  %19 = load %struct.sv**, %struct.sv*** %svp, align 8
  %20 = load %struct.sv*, %struct.sv** %19, align 8
  %sv_any10 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 0
  %21 = load i8*, i8** %sv_any10, align 8
  %22 = bitcast i8* %21 to %struct.xpvuv*
  %xuv_uv = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %22, i32 0, i32 3
  %23 = load i64, i64* %xuv_uv, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %24 = load %struct.sv**, %struct.sv*** %svp, align 8
  %25 = load %struct.sv*, %struct.sv** %24, align 8
  %call11 = call i64 @Perl_sv_2uv(%struct.sv* %25)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.9
  %cond = phi i64 [ %23, %cond.true.9 ], [ %call11, %cond.false ]
  br label %cond.end.13

cond.false.12:                                    ; preds = %entry
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.end
  %cond14 = phi i64 [ %cond, %cond.end ], [ 2147483647, %cond.false.12 ]
  store i64 %cond14, i64* %none, align 8
  %26 = load i64, i64* %none, align 8
  %add = add i64 %26, 1
  store i64 %add, i64* %extra, align 8
  store i64 0, i64* %final, align 8
  store i8 0, i8* %havefinal, align 1
  store i8 0, i8* %hibit, align 1
  %27 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags15 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 2
  %28 = load i32, i32* %sv_flags15, align 4
  %and16 = and i32 %28, 262144
  %cmp = icmp eq i32 %and16, 262144
  br i1 %cmp, label %cond.true.18, label %cond.false.21

cond.true.18:                                     ; preds = %cond.end.13
  %29 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any19 = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 0
  %30 = load i8*, i8** %sv_any19, align 8
  %31 = bitcast i8* %30 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %31, i32 0, i32 1
  %32 = load i64, i64* %xpv_cur, align 8
  store i64 %32, i64* %len, align 8
  %33 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any20 = getelementptr inbounds %struct.sv, %struct.sv* %33, i32 0, i32 0
  %34 = load i8*, i8** %sv_any20, align 8
  %35 = bitcast i8* %34 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %35, i32 0, i32 0
  %36 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.23

cond.false.21:                                    ; preds = %cond.end.13
  %37 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call22 = call i8* @Perl_sv_2pv_flags(%struct.sv* %37, i64* %len, i32 2)
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.21, %cond.true.18
  %cond24 = phi i8* [ %36, %cond.true.18 ], [ %call22, %cond.false.21 ]
  store i8* %cond24, i8** %s, align 8
  %38 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags25 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 2
  %39 = load i32, i32* %sv_flags25, align 4
  %and26 = and i32 %39, 536870912
  store i32 %and26, i32* %isutf8, align 4
  %40 = load i32, i32* %isutf8, align 4
  %tobool27 = icmp ne i32 %40, 0
  br i1 %tobool27, label %if.end.40, label %if.then

if.then:                                          ; preds = %cond.end.23
  %41 = load i8*, i8** %s, align 8
  store i8* %41, i8** %t, align 8
  %42 = load i8*, i8** %s, align 8
  %43 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %add.ptr, i8** %e, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %44 = load i8*, i8** %t, align 8
  %45 = load i8*, i8** %e, align 8
  %cmp28 = icmp ult i8* %44, %45
  br i1 %cmp28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load i8*, i8** %t, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr, i8** %t, align 8
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %ch, align 1
  %48 = load i8, i8* %ch, align 1
  %conv30 = zext i8 %48 to i64
  %cmp31 = icmp ult i64 %conv30, 128
  %lnot = xor i1 %cmp31, true
  %lnot.ext = zext i1 %lnot to i32
  %conv33 = trunc i32 %lnot.ext to i8
  store i8 %conv33, i8* %hibit, align 1
  %tobool34 = icmp ne i8 %conv33, 0
  br i1 %tobool34, label %if.then.35, label %if.end

if.then.35:                                       ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.35, %while.cond
  %49 = load i8, i8* %hibit, align 1
  %tobool36 = icmp ne i8 %49, 0
  br i1 %tobool36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %while.end
  %50 = load i8*, i8** %s, align 8
  %call38 = call i8* @Perl_bytes_to_utf8(i8* %50, i64* %len)
  store i8* %call38, i8** %s, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %while.end
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %cond.end.23
  %51 = load i8*, i8** %s, align 8
  %52 = load i64, i64* %len, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %add.ptr41, i8** %send, align 8
  %53 = load i8*, i8** %s, align 8
  store i8* %53, i8** %start, align 8
  %54 = load %struct.hv*, %struct.hv** %hv, align 8
  %call42 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 5, i32 0)
  store %struct.sv** %call42, %struct.sv*** %svp, align 8
  %55 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool43 = icmp ne %struct.sv** %55, null
  br i1 %tobool43, label %if.then.44, label %if.end.55

if.then.44:                                       ; preds = %if.end.40
  %56 = load %struct.sv**, %struct.sv*** %svp, align 8
  %57 = load %struct.sv*, %struct.sv** %56, align 8
  %sv_flags45 = getelementptr inbounds %struct.sv, %struct.sv* %57, i32 0, i32 2
  %58 = load i32, i32* %sv_flags45, align 4
  %and46 = and i32 %58, 65536
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %cond.true.48, label %cond.false.51

cond.true.48:                                     ; preds = %if.then.44
  %59 = load %struct.sv**, %struct.sv*** %svp, align 8
  %60 = load %struct.sv*, %struct.sv** %59, align 8
  %sv_any49 = getelementptr inbounds %struct.sv, %struct.sv* %60, i32 0, i32 0
  %61 = load i8*, i8** %sv_any49, align 8
  %62 = bitcast i8* %61 to %struct.xpvuv*
  %xuv_uv50 = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %62, i32 0, i32 3
  %63 = load i64, i64* %xuv_uv50, align 8
  br label %cond.end.53

cond.false.51:                                    ; preds = %if.then.44
  %64 = load %struct.sv**, %struct.sv*** %svp, align 8
  %65 = load %struct.sv*, %struct.sv** %64, align 8
  %call52 = call i64 @Perl_sv_2uv(%struct.sv* %65)
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.51, %cond.true.48
  %cond54 = phi i64 [ %63, %cond.true.48 ], [ %call52, %cond.false.51 ]
  store i64 %cond54, i64* %final, align 8
  store i8 1, i8* %havefinal, align 1
  br label %if.end.55

if.end.55:                                        ; preds = %cond.end.53, %if.end.40
  %66 = load i32, i32* %grows, align 4
  %tobool56 = icmp ne i32 %66, 0
  br i1 %tobool56, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %if.end.55
  %67 = load i64, i64* %len, align 8
  %mul = mul i64 %67, 3
  %add58 = add i64 %mul, 13
  %mul59 = mul i64 %add58, 1
  %call60 = call i8* @Perl_safesysmalloc(i64 %mul59)
  store i8* %call60, i8** %d, align 8
  %68 = load i8*, i8** %d, align 8
  %69 = load i64, i64* %len, align 8
  %mul61 = mul i64 %69, 3
  %add.ptr62 = getelementptr inbounds i8, i8* %68, i64 %mul61
  store i8* %add.ptr62, i8** %dend, align 8
  %70 = load i8*, i8** %d, align 8
  store i8* %70, i8** %dstart, align 8
  br label %if.end.64

if.else:                                          ; preds = %if.end.55
  %71 = load i8*, i8** %s, align 8
  store i8* %71, i8** %d, align 8
  store i8* %71, i8** %dstart, align 8
  %72 = load i8*, i8** %d, align 8
  %73 = load i64, i64* %len, align 8
  %add.ptr63 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %add.ptr63, i8** %dend, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.else, %if.then.57
  %74 = load i32, i32* %squash, align 4
  %tobool65 = icmp ne i32 %74, 0
  br i1 %tobool65, label %if.then.66, label %if.else.151

if.then.66:                                       ; preds = %if.end.64
  store i64 4277009102, i64* %puv, align 8
  br label %while.cond.67

while.cond.67:                                    ; preds = %if.end.143, %if.end.140, %if.then.102, %if.end.98, %if.then.66
  %75 = load i8*, i8** %s, align 8
  %76 = load i8*, i8** %send, align 8
  %cmp68 = icmp ult i8* %75, %76
  br i1 %cmp68, label %while.body.70, label %while.end.150

while.body.70:                                    ; preds = %while.cond.67
  %77 = load %struct.sv*, %struct.sv** %rv, align 8
  %78 = load i8*, i8** %s, align 8
  %call71 = call i64 @Perl_swash_fetch(%struct.sv* %77, i8* %78, i8 signext 1)
  store i64 %call71, i64* %uv, align 8
  %79 = load i8*, i8** %d, align 8
  %80 = load i8*, i8** %dend, align 8
  %cmp72 = icmp ugt i8* %79, %80
  br i1 %cmp72, label %if.then.74, label %if.end.88

if.then.74:                                       ; preds = %while.body.70
  %81 = load i8*, i8** %d, align 8
  %82 = load i8*, i8** %dstart, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %81 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %82 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %clen, align 8
  %83 = load i8*, i8** %dend, align 8
  %84 = load i8*, i8** %dstart, align 8
  %sub.ptr.lhs.cast75 = ptrtoint i8* %83 to i64
  %sub.ptr.rhs.cast76 = ptrtoint i8* %84 to i64
  %sub.ptr.sub77 = sub i64 %sub.ptr.lhs.cast75, %sub.ptr.rhs.cast76
  %85 = load i64, i64* %len, align 8
  %add78 = add i64 %sub.ptr.sub77, %85
  %add79 = add i64 %add78, 13
  store i64 %add79, i64* %nlen, align 8
  %86 = load i32, i32* %grows, align 4
  %tobool80 = icmp ne i32 %86, 0
  br i1 %tobool80, label %if.end.82, label %if.then.81

if.then.81:                                       ; preds = %if.then.74
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i32 501)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %if.then.74
  %87 = load i8*, i8** %dstart, align 8
  %88 = load i64, i64* %nlen, align 8
  %add83 = add i64 %88, 13
  %mul84 = mul i64 %add83, 1
  %call85 = call i8* @Perl_safesysrealloc(i8* %87, i64 %mul84)
  store i8* %call85, i8** %dstart, align 8
  %89 = load i8*, i8** %dstart, align 8
  %90 = load i64, i64* %clen, align 8
  %add.ptr86 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %add.ptr86, i8** %d, align 8
  %91 = load i8*, i8** %dstart, align 8
  %92 = load i64, i64* %nlen, align 8
  %add.ptr87 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %add.ptr87, i8** %dend, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.82, %while.body.70
  %93 = load i64, i64* %uv, align 8
  %94 = load i64, i64* %none, align 8
  %cmp89 = icmp ult i64 %93, %94
  br i1 %cmp89, label %if.then.91, label %if.else.99

if.then.91:                                       ; preds = %if.end.88
  %95 = load i32, i32* %matches, align 4
  %inc = add nsw i32 %95, 1
  store i32 %inc, i32* %matches, align 4
  %96 = load i8*, i8** %s, align 8
  %97 = load i8, i8* %96, align 1
  %idxprom = zext i8 %97 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom
  %98 = load i8, i8* %arrayidx, align 1
  %conv92 = zext i8 %98 to i32
  %99 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %conv92 to i64
  %add.ptr93 = getelementptr inbounds i8, i8* %99, i64 %idx.ext
  store i8* %add.ptr93, i8** %s, align 8
  %100 = load i64, i64* %uv, align 8
  %101 = load i64, i64* %puv, align 8
  %cmp94 = icmp ne i64 %100, %101
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %if.then.91
  %102 = load i8*, i8** %d, align 8
  %103 = load i64, i64* %uv, align 8
  %call97 = call i8* @Perl_uvuni_to_utf8(i8* %102, i64 %103)
  store i8* %call97, i8** %d, align 8
  %104 = load i64, i64* %uv, align 8
  store i64 %104, i64* %puv, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %if.then.91
  br label %while.cond.67

if.else.99:                                       ; preds = %if.end.88
  %105 = load i64, i64* %uv, align 8
  %106 = load i64, i64* %none, align 8
  %cmp100 = icmp eq i64 %105, %106
  br i1 %cmp100, label %if.then.102, label %if.else.112

if.then.102:                                      ; preds = %if.else.99
  %107 = load i8*, i8** %s, align 8
  %108 = load i8, i8* %107, align 1
  %idxprom103 = zext i8 %108 to i64
  %arrayidx104 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom103
  %109 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %109 to i32
  store i32 %conv105, i32* %i, align 4
  %110 = load i8*, i8** %d, align 8
  %111 = load i8*, i8** %s, align 8
  %112 = load i32, i32* %i, align 4
  %conv106 = sext i32 %112 to i64
  %mul107 = mul i64 %conv106, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %110, i8* %111, i64 %mul107, i32 1, i1 false)
  %113 = load i32, i32* %i, align 4
  %114 = load i8*, i8** %d, align 8
  %idx.ext108 = sext i32 %113 to i64
  %add.ptr109 = getelementptr inbounds i8, i8* %114, i64 %idx.ext108
  store i8* %add.ptr109, i8** %d, align 8
  %115 = load i32, i32* %i, align 4
  %116 = load i8*, i8** %s, align 8
  %idx.ext110 = sext i32 %115 to i64
  %add.ptr111 = getelementptr inbounds i8, i8* %116, i64 %idx.ext110
  store i8* %add.ptr111, i8** %s, align 8
  store i64 4277009102, i64* %puv, align 8
  br label %while.cond.67

if.else.112:                                      ; preds = %if.else.99
  %117 = load i64, i64* %uv, align 8
  %118 = load i64, i64* %extra, align 8
  %cmp113 = icmp eq i64 %117, %118
  br i1 %cmp113, label %land.lhs.true, label %if.end.141

land.lhs.true:                                    ; preds = %if.else.112
  %119 = load i32, i32* %del, align 4
  %tobool115 = icmp ne i32 %119, 0
  br i1 %tobool115, label %if.end.141, label %if.then.116

if.then.116:                                      ; preds = %land.lhs.true
  %120 = load i32, i32* %matches, align 4
  %inc117 = add nsw i32 %120, 1
  store i32 %inc117, i32* %matches, align 4
  %121 = load i8, i8* %havefinal, align 1
  %tobool118 = icmp ne i8 %121, 0
  br i1 %tobool118, label %if.then.119, label %if.else.130

if.then.119:                                      ; preds = %if.then.116
  %122 = load i8*, i8** %s, align 8
  %123 = load i8, i8* %122, align 1
  %idxprom120 = zext i8 %123 to i64
  %arrayidx121 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom120
  %124 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %124 to i32
  %125 = load i8*, i8** %s, align 8
  %idx.ext123 = sext i32 %conv122 to i64
  %add.ptr124 = getelementptr inbounds i8, i8* %125, i64 %idx.ext123
  store i8* %add.ptr124, i8** %s, align 8
  %126 = load i64, i64* %puv, align 8
  %127 = load i64, i64* %final, align 8
  %cmp125 = icmp ne i64 %126, %127
  br i1 %cmp125, label %if.then.127, label %if.end.129

if.then.127:                                      ; preds = %if.then.119
  %128 = load i8*, i8** %d, align 8
  %129 = load i64, i64* %final, align 8
  %call128 = call i8* @Perl_uvuni_to_utf8(i8* %128, i64 %129)
  store i8* %call128, i8** %d, align 8
  %130 = load i64, i64* %final, align 8
  store i64 %130, i64* %puv, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.127, %if.then.119
  br label %if.end.140

if.else.130:                                      ; preds = %if.then.116
  %131 = load i8*, i8** %s, align 8
  %call132 = call i64 @Perl_utf8_to_uvuni(i8* %131, i64* %len131)
  store i64 %call132, i64* %uv, align 8
  %132 = load i64, i64* %uv, align 8
  %133 = load i64, i64* %puv, align 8
  %cmp133 = icmp ne i64 %132, %133
  br i1 %cmp133, label %if.then.135, label %if.end.138

if.then.135:                                      ; preds = %if.else.130
  %134 = load i8*, i8** %d, align 8
  %135 = load i8*, i8** %s, align 8
  %136 = load i64, i64* %len131, align 8
  %mul136 = mul i64 %136, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %134, i8* %135, i64 %mul136, i32 1, i1 false)
  %137 = load i64, i64* %len131, align 8
  %138 = load i8*, i8** %d, align 8
  %add.ptr137 = getelementptr inbounds i8, i8* %138, i64 %137
  store i8* %add.ptr137, i8** %d, align 8
  %139 = load i64, i64* %uv, align 8
  store i64 %139, i64* %puv, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.135, %if.else.130
  %140 = load i64, i64* %len131, align 8
  %141 = load i8*, i8** %s, align 8
  %add.ptr139 = getelementptr inbounds i8, i8* %141, i64 %140
  store i8* %add.ptr139, i8** %s, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.138, %if.end.129
  br label %while.cond.67

if.end.141:                                       ; preds = %land.lhs.true, %if.else.112
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142
  %142 = load i32, i32* %matches, align 4
  %inc144 = add nsw i32 %142, 1
  store i32 %inc144, i32* %matches, align 4
  %143 = load i8*, i8** %s, align 8
  %144 = load i8, i8* %143, align 1
  %idxprom145 = zext i8 %144 to i64
  %arrayidx146 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom145
  %145 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %145 to i32
  %146 = load i8*, i8** %s, align 8
  %idx.ext148 = sext i32 %conv147 to i64
  %add.ptr149 = getelementptr inbounds i8, i8* %146, i64 %idx.ext148
  store i8* %add.ptr149, i8** %s, align 8
  br label %while.cond.67

while.end.150:                                    ; preds = %while.cond.67
  br label %if.end.226

if.else.151:                                      ; preds = %if.end.64
  br label %while.cond.152

while.cond.152:                                   ; preds = %if.end.218, %if.then.208, %if.then.192, %if.then.181, %if.else.151
  %147 = load i8*, i8** %s, align 8
  %148 = load i8*, i8** %send, align 8
  %cmp153 = icmp ult i8* %147, %148
  br i1 %cmp153, label %while.body.155, label %while.end.225

while.body.155:                                   ; preds = %while.cond.152
  %149 = load %struct.sv*, %struct.sv** %rv, align 8
  %150 = load i8*, i8** %s, align 8
  %call156 = call i64 @Perl_swash_fetch(%struct.sv* %149, i8* %150, i8 signext 1)
  store i64 %call156, i64* %uv, align 8
  %151 = load i8*, i8** %d, align 8
  %152 = load i8*, i8** %dend, align 8
  %cmp157 = icmp ugt i8* %151, %152
  br i1 %cmp157, label %if.then.159, label %if.end.178

if.then.159:                                      ; preds = %while.body.155
  %153 = load i8*, i8** %d, align 8
  %154 = load i8*, i8** %dstart, align 8
  %sub.ptr.lhs.cast161 = ptrtoint i8* %153 to i64
  %sub.ptr.rhs.cast162 = ptrtoint i8* %154 to i64
  %sub.ptr.sub163 = sub i64 %sub.ptr.lhs.cast161, %sub.ptr.rhs.cast162
  store i64 %sub.ptr.sub163, i64* %clen160, align 8
  %155 = load i8*, i8** %dend, align 8
  %156 = load i8*, i8** %dstart, align 8
  %sub.ptr.lhs.cast165 = ptrtoint i8* %155 to i64
  %sub.ptr.rhs.cast166 = ptrtoint i8* %156 to i64
  %sub.ptr.sub167 = sub i64 %sub.ptr.lhs.cast165, %sub.ptr.rhs.cast166
  %157 = load i64, i64* %len, align 8
  %add168 = add i64 %sub.ptr.sub167, %157
  %add169 = add i64 %add168, 13
  store i64 %add169, i64* %nlen164, align 8
  %158 = load i32, i32* %grows, align 4
  %tobool170 = icmp ne i32 %158, 0
  br i1 %tobool170, label %if.end.172, label %if.then.171

if.then.171:                                      ; preds = %if.then.159
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i32 555)
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.171, %if.then.159
  %159 = load i8*, i8** %dstart, align 8
  %160 = load i64, i64* %nlen164, align 8
  %add173 = add i64 %160, 13
  %mul174 = mul i64 %add173, 1
  %call175 = call i8* @Perl_safesysrealloc(i8* %159, i64 %mul174)
  store i8* %call175, i8** %dstart, align 8
  %161 = load i8*, i8** %dstart, align 8
  %162 = load i64, i64* %clen160, align 8
  %add.ptr176 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %add.ptr176, i8** %d, align 8
  %163 = load i8*, i8** %dstart, align 8
  %164 = load i64, i64* %nlen164, align 8
  %add.ptr177 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8* %add.ptr177, i8** %dend, align 8
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.172, %while.body.155
  %165 = load i64, i64* %uv, align 8
  %166 = load i64, i64* %none, align 8
  %cmp179 = icmp ult i64 %165, %166
  br i1 %cmp179, label %if.then.181, label %if.else.189

if.then.181:                                      ; preds = %if.end.178
  %167 = load i32, i32* %matches, align 4
  %inc182 = add nsw i32 %167, 1
  store i32 %inc182, i32* %matches, align 4
  %168 = load i8*, i8** %s, align 8
  %169 = load i8, i8* %168, align 1
  %idxprom183 = zext i8 %169 to i64
  %arrayidx184 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom183
  %170 = load i8, i8* %arrayidx184, align 1
  %conv185 = zext i8 %170 to i32
  %171 = load i8*, i8** %s, align 8
  %idx.ext186 = sext i32 %conv185 to i64
  %add.ptr187 = getelementptr inbounds i8, i8* %171, i64 %idx.ext186
  store i8* %add.ptr187, i8** %s, align 8
  %172 = load i8*, i8** %d, align 8
  %173 = load i64, i64* %uv, align 8
  %call188 = call i8* @Perl_uvuni_to_utf8(i8* %172, i64 %173)
  store i8* %call188, i8** %d, align 8
  br label %while.cond.152

if.else.189:                                      ; preds = %if.end.178
  %174 = load i64, i64* %uv, align 8
  %175 = load i64, i64* %none, align 8
  %cmp190 = icmp eq i64 %174, %175
  br i1 %cmp190, label %if.then.192, label %if.else.203

if.then.192:                                      ; preds = %if.else.189
  %176 = load i8*, i8** %s, align 8
  %177 = load i8, i8* %176, align 1
  %idxprom194 = zext i8 %177 to i64
  %arrayidx195 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom194
  %178 = load i8, i8* %arrayidx195, align 1
  %conv196 = zext i8 %178 to i32
  store i32 %conv196, i32* %i193, align 4
  %179 = load i8*, i8** %d, align 8
  %180 = load i8*, i8** %s, align 8
  %181 = load i32, i32* %i193, align 4
  %conv197 = sext i32 %181 to i64
  %mul198 = mul i64 %conv197, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %179, i8* %180, i64 %mul198, i32 1, i1 false)
  %182 = load i32, i32* %i193, align 4
  %183 = load i8*, i8** %d, align 8
  %idx.ext199 = sext i32 %182 to i64
  %add.ptr200 = getelementptr inbounds i8, i8* %183, i64 %idx.ext199
  store i8* %add.ptr200, i8** %d, align 8
  %184 = load i32, i32* %i193, align 4
  %185 = load i8*, i8** %s, align 8
  %idx.ext201 = sext i32 %184 to i64
  %add.ptr202 = getelementptr inbounds i8, i8* %185, i64 %idx.ext201
  store i8* %add.ptr202, i8** %s, align 8
  br label %while.cond.152

if.else.203:                                      ; preds = %if.else.189
  %186 = load i64, i64* %uv, align 8
  %187 = load i64, i64* %extra, align 8
  %cmp204 = icmp eq i64 %186, %187
  br i1 %cmp204, label %land.lhs.true.206, label %if.end.216

land.lhs.true.206:                                ; preds = %if.else.203
  %188 = load i32, i32* %del, align 4
  %tobool207 = icmp ne i32 %188, 0
  br i1 %tobool207, label %if.end.216, label %if.then.208

if.then.208:                                      ; preds = %land.lhs.true.206
  %189 = load i32, i32* %matches, align 4
  %inc209 = add nsw i32 %189, 1
  store i32 %inc209, i32* %matches, align 4
  %190 = load i8*, i8** %s, align 8
  %191 = load i8, i8* %190, align 1
  %idxprom210 = zext i8 %191 to i64
  %arrayidx211 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom210
  %192 = load i8, i8* %arrayidx211, align 1
  %conv212 = zext i8 %192 to i32
  %193 = load i8*, i8** %s, align 8
  %idx.ext213 = sext i32 %conv212 to i64
  %add.ptr214 = getelementptr inbounds i8, i8* %193, i64 %idx.ext213
  store i8* %add.ptr214, i8** %s, align 8
  %194 = load i8*, i8** %d, align 8
  %195 = load i64, i64* %final, align 8
  %call215 = call i8* @Perl_uvuni_to_utf8(i8* %194, i64 %195)
  store i8* %call215, i8** %d, align 8
  br label %while.cond.152

if.end.216:                                       ; preds = %land.lhs.true.206, %if.else.203
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217
  %196 = load i32, i32* %matches, align 4
  %inc219 = add nsw i32 %196, 1
  store i32 %inc219, i32* %matches, align 4
  %197 = load i8*, i8** %s, align 8
  %198 = load i8, i8* %197, align 1
  %idxprom220 = zext i8 %198 to i64
  %arrayidx221 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom220
  %199 = load i8, i8* %arrayidx221, align 1
  %conv222 = zext i8 %199 to i32
  %200 = load i8*, i8** %s, align 8
  %idx.ext223 = sext i32 %conv222 to i64
  %add.ptr224 = getelementptr inbounds i8, i8* %200, i64 %idx.ext223
  store i8* %add.ptr224, i8** %s, align 8
  br label %while.cond.152

while.end.225:                                    ; preds = %while.cond.152
  br label %if.end.226

if.end.226:                                       ; preds = %while.end.225, %while.end.150
  %201 = load i32, i32* %grows, align 4
  %tobool227 = icmp ne i32 %201, 0
  br i1 %tobool227, label %if.then.230, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.226
  %202 = load i8, i8* %hibit, align 1
  %conv228 = zext i8 %202 to i32
  %tobool229 = icmp ne i32 %conv228, 0
  br i1 %tobool229, label %if.then.230, label %if.else.240

if.then.230:                                      ; preds = %lor.lhs.false, %if.end.226
  %203 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %204 = load i8*, i8** %dstart, align 8
  %205 = load i8*, i8** %d, align 8
  %206 = load i8*, i8** %dstart, align 8
  %sub.ptr.lhs.cast231 = ptrtoint i8* %205 to i64
  %sub.ptr.rhs.cast232 = ptrtoint i8* %206 to i64
  %sub.ptr.sub233 = sub i64 %sub.ptr.lhs.cast231, %sub.ptr.rhs.cast232
  call void @Perl_sv_setpvn(%struct.sv* %203, i8* %204, i64 %sub.ptr.sub233)
  %207 = load i8*, i8** %dstart, align 8
  call void @Perl_safesysfree(i8* %207)
  %208 = load i32, i32* %grows, align 4
  %tobool234 = icmp ne i32 %208, 0
  br i1 %tobool234, label %land.lhs.true.235, label %if.end.239

land.lhs.true.235:                                ; preds = %if.then.230
  %209 = load i8, i8* %hibit, align 1
  %conv236 = zext i8 %209 to i32
  %tobool237 = icmp ne i32 %conv236, 0
  br i1 %tobool237, label %if.then.238, label %if.end.239

if.then.238:                                      ; preds = %land.lhs.true.235
  %210 = load i8*, i8** %start, align 8
  call void @Perl_safesysfree(i8* %210)
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.238, %land.lhs.true.235, %if.then.230
  br label %if.end.246

if.else.240:                                      ; preds = %lor.lhs.false
  %211 = load i8*, i8** %d, align 8
  store i8 0, i8* %211, align 1
  %212 = load i8*, i8** %d, align 8
  %213 = load i8*, i8** %dstart, align 8
  %sub.ptr.lhs.cast241 = ptrtoint i8* %212 to i64
  %sub.ptr.rhs.cast242 = ptrtoint i8* %213 to i64
  %sub.ptr.sub243 = sub i64 %sub.ptr.lhs.cast241, %sub.ptr.rhs.cast242
  %214 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any244 = getelementptr inbounds %struct.sv, %struct.sv* %214, i32 0, i32 0
  %215 = load i8*, i8** %sv_any244, align 8
  %216 = bitcast i8* %215 to %struct.xpv*
  %xpv_cur245 = getelementptr inbounds %struct.xpv, %struct.xpv* %216, i32 0, i32 1
  store i64 %sub.ptr.sub243, i64* %xpv_cur245, align 8
  store i64 %sub.ptr.sub243, i64* %tmp
  %217 = load i64, i64* %tmp
  br label %if.end.246

if.end.246:                                       ; preds = %if.else.240, %if.end.239
  %218 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags247 = getelementptr inbounds %struct.sv, %struct.sv* %218, i32 0, i32 2
  %219 = load i32, i32* %sv_flags247, align 4
  %or = or i32 %219, 536870912
  store i32 %or, i32* %sv_flags247, align 4
  %220 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags248 = getelementptr inbounds %struct.sv, %struct.sv* %220, i32 0, i32 2
  %221 = load i32, i32* %sv_flags248, align 4
  %and249 = and i32 %221, 16384
  %tobool250 = icmp ne i32 %and249, 0
  br i1 %tobool250, label %if.then.251, label %if.end.253

if.then.251:                                      ; preds = %if.end.246
  %222 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call252 = call i32 @Perl_mg_set(%struct.sv* %222)
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.251, %if.end.246
  %223 = load i32, i32* %matches, align 4
  ret i32 %223
}

; Function Attrs: nounwind uwtable
define internal i32 @S_do_trans_complex(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %s = alloca i8*, align 8
  %send = alloca i8*, align 8
  %d = alloca i8*, align 8
  %dstart = alloca i8*, align 8
  %isutf8 = alloca i32, align 4
  %matches = alloca i32, align 4
  %grows = alloca i32, align 4
  %complement = alloca i32, align 4
  %del = alloca i32, align 4
  %len = alloca i64, align 8
  %rlen = alloca i64, align 8
  %tbl = alloca i16*, align 8
  %ch = alloca i32, align 4
  %p = alloca i8*, align 8
  %tmp = alloca i64, align 8
  %pch = alloca i64, align 8
  %len104 = alloca i64, align 8
  %comp = alloca i64, align 8
  %len188 = alloca i64, align 8
  %comp190 = alloca i64, align 8
  %tmp252 = alloca i64, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i32 0, i32* %matches, align 4
  %0 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %0, i32 0, i32 7
  %1 = load i8, i8* %op_private, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 64
  store i32 %and, i32* %grows, align 4
  %2 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private1 = getelementptr inbounds %struct.op, %struct.op* %2, i32 0, i32 7
  %3 = load i8, i8* %op_private1, align 1
  %conv2 = zext i8 %3 to i32
  %and3 = and i32 %conv2, 32
  store i32 %and3, i32* %complement, align 4
  %4 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private4 = getelementptr inbounds %struct.op, %struct.op* %4, i32 0, i32 7
  %5 = load i8, i8* %op_private4, align 1
  %conv5 = zext i8 %5 to i32
  %and6 = and i32 %conv5, 16
  store i32 %and6, i32* %del, align 4
  store i64 0, i64* %rlen, align 8
  %6 = load %struct.op*, %struct.op** @PL_op, align 8
  %7 = bitcast %struct.op* %6 to %struct.pvop*
  %op_pv = getelementptr inbounds %struct.pvop, %struct.pvop* %7, i32 0, i32 8
  %8 = load i8*, i8** %op_pv, align 8
  %9 = bitcast i8* %8 to i16*
  store i16* %9, i16** %tbl, align 8
  %10 = load i16*, i16** %tbl, align 8
  %tobool = icmp ne i16* %10, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i32 154)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 2
  %12 = load i32, i32* %sv_flags, align 4
  %and7 = and i32 %12, 262144
  %cmp = icmp eq i32 %and7, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 0
  %14 = load i8*, i8** %sv_any, align 8
  %15 = bitcast i8* %14 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %15, i32 0, i32 1
  %16 = load i64, i64* %xpv_cur, align 8
  store i64 %16, i64* %len, align 8
  %17 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any9 = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 0
  %18 = load i8*, i8** %sv_any9, align 8
  %19 = bitcast i8* %18 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %19, i32 0, i32 0
  %20 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %21 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %21, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %20, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %s, align 8
  %22 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags10 = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 2
  %23 = load i32, i32* %sv_flags10, align 4
  %and11 = and i32 %23, 536870912
  store i32 %and11, i32* %isutf8, align 4
  %24 = load i8*, i8** %s, align 8
  %25 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %add.ptr, i8** %send, align 8
  %26 = load i32, i32* %isutf8, align 4
  %tobool12 = icmp ne i32 %26, 0
  br i1 %tobool12, label %if.else.80, label %if.then.13

if.then.13:                                       ; preds = %cond.end
  %27 = load i8*, i8** %s, align 8
  store i8* %27, i8** %d, align 8
  store i8* %27, i8** %dstart, align 8
  %28 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private14 = getelementptr inbounds %struct.op, %struct.op* %28, i32 0, i32 7
  %29 = load i8, i8* %op_private14, align 1
  %conv15 = zext i8 %29 to i32
  %and16 = and i32 %conv15, 8
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.48

if.then.18:                                       ; preds = %if.then.13
  %30 = load i8*, i8** %send, align 8
  store i8* %30, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.46, %if.then.18
  %31 = load i8*, i8** %s, align 8
  %32 = load i8*, i8** %send, align 8
  %cmp19 = icmp ult i8* %31, %32
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load i8*, i8** %s, align 8
  %34 = load i8, i8* %33, align 1
  %idxprom = zext i8 %34 to i64
  %35 = load i16*, i16** %tbl, align 8
  %arrayidx = getelementptr inbounds i16, i16* %35, i64 %idxprom
  %36 = load i16, i16* %arrayidx, align 2
  %conv21 = sext i16 %36 to i32
  store i32 %conv21, i32* %ch, align 4
  %cmp22 = icmp sge i32 %conv21, 0
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %while.body
  %37 = load i32, i32* %ch, align 4
  %conv25 = trunc i32 %37 to i8
  %38 = load i8*, i8** %d, align 8
  store i8 %conv25, i8* %38, align 1
  %39 = load i32, i32* %matches, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %matches, align 4
  %40 = load i8*, i8** %p, align 8
  %41 = load i8*, i8** %d, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %41, i64 -1
  %cmp27 = icmp ne i8* %40, %add.ptr26
  br i1 %cmp27, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.24
  %42 = load i8*, i8** %p, align 8
  %43 = load i8, i8* %42, align 1
  %conv29 = zext i8 %43 to i32
  %44 = load i8*, i8** %d, align 8
  %45 = load i8, i8* %44, align 1
  %conv30 = zext i8 %45 to i32
  %cmp31 = icmp ne i32 %conv29, %conv30
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %lor.lhs.false, %if.then.24
  %46 = load i8*, i8** %d, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr, i8** %d, align 8
  store i8* %46, i8** %p, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %lor.lhs.false
  br label %if.end.46

if.else:                                          ; preds = %while.body
  %47 = load i32, i32* %ch, align 4
  %cmp35 = icmp eq i32 %47, -1
  br i1 %cmp35, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %if.else
  %48 = load i8*, i8** %s, align 8
  %49 = load i8, i8* %48, align 1
  %50 = load i8*, i8** %d, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr38, i8** %d, align 8
  store i8 %49, i8* %50, align 1
  br label %if.end.45

if.else.39:                                       ; preds = %if.else
  %51 = load i32, i32* %ch, align 4
  %cmp40 = icmp eq i32 %51, -2
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.else.39
  %52 = load i32, i32* %matches, align 4
  %inc43 = add nsw i32 %52, 1
  store i32 %inc43, i32* %matches, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.else.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.37
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.34
  %53 = load i8*, i8** %s, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr47, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.77

if.else.48:                                       ; preds = %if.then.13
  br label %while.cond.49

while.cond.49:                                    ; preds = %if.end.74, %if.else.48
  %54 = load i8*, i8** %s, align 8
  %55 = load i8*, i8** %send, align 8
  %cmp50 = icmp ult i8* %54, %55
  br i1 %cmp50, label %while.body.52, label %while.end.76

while.body.52:                                    ; preds = %while.cond.49
  %56 = load i8*, i8** %s, align 8
  %57 = load i8, i8* %56, align 1
  %idxprom53 = zext i8 %57 to i64
  %58 = load i16*, i16** %tbl, align 8
  %arrayidx54 = getelementptr inbounds i16, i16* %58, i64 %idxprom53
  %59 = load i16, i16* %arrayidx54, align 2
  %conv55 = sext i16 %59 to i32
  store i32 %conv55, i32* %ch, align 4
  %cmp56 = icmp sge i32 %conv55, 0
  br i1 %cmp56, label %if.then.58, label %if.else.62

if.then.58:                                       ; preds = %while.body.52
  %60 = load i32, i32* %matches, align 4
  %inc59 = add nsw i32 %60, 1
  store i32 %inc59, i32* %matches, align 4
  %61 = load i32, i32* %ch, align 4
  %conv60 = trunc i32 %61 to i8
  %62 = load i8*, i8** %d, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr61, i8** %d, align 8
  store i8 %conv60, i8* %62, align 1
  br label %if.end.74

if.else.62:                                       ; preds = %while.body.52
  %63 = load i32, i32* %ch, align 4
  %cmp63 = icmp eq i32 %63, -1
  br i1 %cmp63, label %if.then.65, label %if.else.67

if.then.65:                                       ; preds = %if.else.62
  %64 = load i8*, i8** %s, align 8
  %65 = load i8, i8* %64, align 1
  %66 = load i8*, i8** %d, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr66, i8** %d, align 8
  store i8 %65, i8* %66, align 1
  br label %if.end.73

if.else.67:                                       ; preds = %if.else.62
  %67 = load i32, i32* %ch, align 4
  %cmp68 = icmp eq i32 %67, -2
  br i1 %cmp68, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.else.67
  %68 = load i32, i32* %matches, align 4
  %inc71 = add nsw i32 %68, 1
  store i32 %inc71, i32* %matches, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.else.67
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.65
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.58
  %69 = load i8*, i8** %s, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr75, i8** %s, align 8
  br label %while.cond.49

while.end.76:                                     ; preds = %while.cond.49
  br label %if.end.77

if.end.77:                                        ; preds = %while.end.76, %while.end
  %70 = load i8*, i8** %d, align 8
  store i8 0, i8* %70, align 1
  %71 = load i8*, i8** %d, align 8
  %72 = load i8*, i8** %dstart, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %71 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %72 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %73 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any78 = getelementptr inbounds %struct.sv, %struct.sv* %73, i32 0, i32 0
  %74 = load i8*, i8** %sv_any78, align 8
  %75 = bitcast i8* %74 to %struct.xpv*
  %xpv_cur79 = getelementptr inbounds %struct.xpv, %struct.xpv* %75, i32 0, i32 1
  store i64 %sub.ptr.sub, i64* %xpv_cur79, align 8
  store i64 %sub.ptr.sub, i64* %tmp
  %76 = load i64, i64* %tmp
  br label %if.end.260

if.else.80:                                       ; preds = %cond.end
  %77 = load i32, i32* %grows, align 4
  %tobool81 = icmp ne i32 %77, 0
  br i1 %tobool81, label %if.then.82, label %if.else.85

if.then.82:                                       ; preds = %if.else.80
  %78 = load i64, i64* %len, align 8
  %mul = mul i64 %78, 2
  %add = add i64 %mul, 1
  %mul83 = mul i64 %add, 1
  %call84 = call i8* @Perl_safesysmalloc(i64 %mul83)
  store i8* %call84, i8** %d, align 8
  br label %if.end.86

if.else.85:                                       ; preds = %if.else.80
  %79 = load i8*, i8** %s, align 8
  store i8* %79, i8** %d, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.85, %if.then.82
  %80 = load i8*, i8** %d, align 8
  store i8* %80, i8** %dstart, align 8
  %81 = load i32, i32* %complement, align 4
  %tobool87 = icmp ne i32 %81, 0
  br i1 %tobool87, label %land.lhs.true, label %if.end.92

land.lhs.true:                                    ; preds = %if.end.86
  %82 = load i32, i32* %del, align 4
  %tobool88 = icmp ne i32 %82, 0
  br i1 %tobool88, label %if.end.92, label %if.then.89

if.then.89:                                       ; preds = %land.lhs.true
  %83 = load i16*, i16** %tbl, align 8
  %arrayidx90 = getelementptr inbounds i16, i16* %83, i64 256
  %84 = load i16, i16* %arrayidx90, align 2
  %conv91 = sext i16 %84 to i64
  store i64 %conv91, i64* %rlen, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.89, %land.lhs.true, %if.end.86
  %85 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private93 = getelementptr inbounds %struct.op, %struct.op* %85, i32 0, i32 7
  %86 = load i8, i8* %op_private93, align 1
  %conv94 = zext i8 %86 to i32
  %and95 = and i32 %conv94, 8
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %if.then.97, label %if.else.182

if.then.97:                                       ; preds = %if.end.92
  store i64 4277009102, i64* %pch, align 8
  br label %while.cond.99

while.cond.99:                                    ; preds = %if.end.179, %if.end.163, %if.end.145, %if.then.97
  %87 = load i8*, i8** %s, align 8
  %88 = load i8*, i8** %send, align 8
  %cmp100 = icmp ult i8* %87, %88
  br i1 %cmp100, label %while.body.102, label %while.end.181

while.body.102:                                   ; preds = %while.cond.99
  %89 = load i8*, i8** %s, align 8
  %call106 = call i64 @Perl_utf8_to_uvchr(i8* %89, i64* %len104)
  store i64 %call106, i64* %comp, align 8
  %90 = load i64, i64* %comp, align 8
  %cmp107 = icmp ugt i64 %90, 255
  br i1 %cmp107, label %if.then.109, label %if.else.149

if.then.109:                                      ; preds = %while.body.102
  %91 = load i32, i32* %complement, align 4
  %tobool110 = icmp ne i32 %91, 0
  br i1 %tobool110, label %if.else.114, label %if.then.111

if.then.111:                                      ; preds = %if.then.109
  %92 = load i8*, i8** %d, align 8
  %93 = load i8*, i8** %s, align 8
  %94 = load i64, i64* %len104, align 8
  %mul112 = mul i64 %94, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 %mul112, i32 1, i1 false)
  %95 = load i64, i64* %len104, align 8
  %96 = load i8*, i8** %d, align 8
  %add.ptr113 = getelementptr inbounds i8, i8* %96, i64 %95
  store i8* %add.ptr113, i8** %d, align 8
  br label %if.end.148

if.else.114:                                      ; preds = %if.then.109
  %97 = load i32, i32* %matches, align 4
  %inc115 = add nsw i32 %97, 1
  store i32 %inc115, i32* %matches, align 4
  %98 = load i32, i32* %del, align 4
  %tobool116 = icmp ne i32 %98, 0
  br i1 %tobool116, label %if.end.147, label %if.then.117

if.then.117:                                      ; preds = %if.else.114
  %99 = load i64, i64* %rlen, align 8
  %cmp118 = icmp eq i64 %99, 0
  br i1 %cmp118, label %cond.true.120, label %cond.false.121

cond.true.120:                                    ; preds = %if.then.117
  %100 = load i64, i64* %comp, align 8
  br label %cond.end.135

cond.false.121:                                   ; preds = %if.then.117
  %101 = load i64, i64* %comp, align 8
  %sub = sub i64 %101, 256
  %102 = load i64, i64* %rlen, align 8
  %cmp122 = icmp ult i64 %sub, %102
  br i1 %cmp122, label %cond.true.124, label %cond.false.128

cond.true.124:                                    ; preds = %cond.false.121
  %103 = load i64, i64* %comp, align 8
  %add125 = add i64 %103, 1
  %104 = load i16*, i16** %tbl, align 8
  %arrayidx126 = getelementptr inbounds i16, i16* %104, i64 %add125
  %105 = load i16, i16* %arrayidx126, align 2
  %conv127 = sext i16 %105 to i32
  br label %cond.end.132

cond.false.128:                                   ; preds = %cond.false.121
  %106 = load i64, i64* %rlen, align 8
  %add129 = add i64 256, %106
  %107 = load i16*, i16** %tbl, align 8
  %arrayidx130 = getelementptr inbounds i16, i16* %107, i64 %add129
  %108 = load i16, i16* %arrayidx130, align 2
  %conv131 = sext i16 %108 to i32
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.128, %cond.true.124
  %cond133 = phi i32 [ %conv127, %cond.true.124 ], [ %conv131, %cond.false.128 ]
  %conv134 = sext i32 %cond133 to i64
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.end.132, %cond.true.120
  %cond136 = phi i64 [ %100, %cond.true.120 ], [ %conv134, %cond.end.132 ]
  %conv137 = trunc i64 %cond136 to i32
  store i32 %conv137, i32* %ch, align 4
  %109 = load i32, i32* %ch, align 4
  %conv138 = sext i32 %109 to i64
  %110 = load i64, i64* %pch, align 8
  %cmp139 = icmp ne i64 %conv138, %110
  br i1 %cmp139, label %if.then.141, label %if.end.145

if.then.141:                                      ; preds = %cond.end.135
  %111 = load i8*, i8** %d, align 8
  %112 = load i32, i32* %ch, align 4
  %conv142 = sext i32 %112 to i64
  %call143 = call i8* @Perl_uvuni_to_utf8(i8* %111, i64 %conv142)
  store i8* %call143, i8** %d, align 8
  %113 = load i32, i32* %ch, align 4
  %conv144 = sext i32 %113 to i64
  store i64 %conv144, i64* %pch, align 8
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.141, %cond.end.135
  %114 = load i64, i64* %len104, align 8
  %115 = load i8*, i8** %s, align 8
  %add.ptr146 = getelementptr inbounds i8, i8* %115, i64 %114
  store i8* %add.ptr146, i8** %s, align 8
  br label %while.cond.99

if.end.147:                                       ; preds = %if.else.114
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.then.111
  br label %if.end.179

if.else.149:                                      ; preds = %while.body.102
  %116 = load i64, i64* %comp, align 8
  %117 = load i16*, i16** %tbl, align 8
  %arrayidx150 = getelementptr inbounds i16, i16* %117, i64 %116
  %118 = load i16, i16* %arrayidx150, align 2
  %conv151 = sext i16 %118 to i32
  store i32 %conv151, i32* %ch, align 4
  %cmp152 = icmp sge i32 %conv151, 0
  br i1 %cmp152, label %if.then.154, label %if.else.165

if.then.154:                                      ; preds = %if.else.149
  %119 = load i32, i32* %matches, align 4
  %inc155 = add nsw i32 %119, 1
  store i32 %inc155, i32* %matches, align 4
  %120 = load i32, i32* %ch, align 4
  %conv156 = sext i32 %120 to i64
  %121 = load i64, i64* %pch, align 8
  %cmp157 = icmp ne i64 %conv156, %121
  br i1 %cmp157, label %if.then.159, label %if.end.163

if.then.159:                                      ; preds = %if.then.154
  %122 = load i8*, i8** %d, align 8
  %123 = load i32, i32* %ch, align 4
  %conv160 = sext i32 %123 to i64
  %call161 = call i8* @Perl_uvuni_to_utf8(i8* %122, i64 %conv160)
  store i8* %call161, i8** %d, align 8
  %124 = load i32, i32* %ch, align 4
  %conv162 = sext i32 %124 to i64
  store i64 %conv162, i64* %pch, align 8
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.159, %if.then.154
  %125 = load i64, i64* %len104, align 8
  %126 = load i8*, i8** %s, align 8
  %add.ptr164 = getelementptr inbounds i8, i8* %126, i64 %125
  store i8* %add.ptr164, i8** %s, align 8
  br label %while.cond.99

if.else.165:                                      ; preds = %if.else.149
  %127 = load i32, i32* %ch, align 4
  %cmp166 = icmp eq i32 %127, -1
  br i1 %cmp166, label %if.then.168, label %if.else.171

if.then.168:                                      ; preds = %if.else.165
  %128 = load i8*, i8** %d, align 8
  %129 = load i8*, i8** %s, align 8
  %130 = load i64, i64* %len104, align 8
  %mul169 = mul i64 %130, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %128, i8* %129, i64 %mul169, i32 1, i1 false)
  %131 = load i64, i64* %len104, align 8
  %132 = load i8*, i8** %d, align 8
  %add.ptr170 = getelementptr inbounds i8, i8* %132, i64 %131
  store i8* %add.ptr170, i8** %d, align 8
  br label %if.end.177

if.else.171:                                      ; preds = %if.else.165
  %133 = load i32, i32* %ch, align 4
  %cmp172 = icmp eq i32 %133, -2
  br i1 %cmp172, label %if.then.174, label %if.end.176

if.then.174:                                      ; preds = %if.else.171
  %134 = load i32, i32* %matches, align 4
  %inc175 = add nsw i32 %134, 1
  store i32 %inc175, i32* %matches, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.174, %if.else.171
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.then.168
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.end.148
  %135 = load i64, i64* %len104, align 8
  %136 = load i8*, i8** %s, align 8
  %add.ptr180 = getelementptr inbounds i8, i8* %136, i64 %135
  store i8* %add.ptr180, i8** %s, align 8
  store i64 4277009102, i64* %pch, align 8
  br label %while.cond.99

while.end.181:                                    ; preds = %while.cond.99
  br label %if.end.245

if.else.182:                                      ; preds = %if.end.92
  br label %while.cond.183

while.cond.183:                                   ; preds = %if.end.242, %if.else.182
  %137 = load i8*, i8** %s, align 8
  %138 = load i8*, i8** %send, align 8
  %cmp184 = icmp ult i8* %137, %138
  br i1 %cmp184, label %while.body.186, label %while.end.244

while.body.186:                                   ; preds = %while.cond.183
  %139 = load i8*, i8** %s, align 8
  %call191 = call i64 @Perl_utf8_to_uvchr(i8* %139, i64* %len188)
  store i64 %call191, i64* %comp190, align 8
  %140 = load i64, i64* %comp190, align 8
  %cmp192 = icmp ugt i64 %140, 255
  br i1 %cmp192, label %if.then.194, label %if.else.219

if.then.194:                                      ; preds = %while.body.186
  %141 = load i32, i32* %complement, align 4
  %tobool195 = icmp ne i32 %141, 0
  br i1 %tobool195, label %if.else.199, label %if.then.196

if.then.196:                                      ; preds = %if.then.194
  %142 = load i8*, i8** %d, align 8
  %143 = load i8*, i8** %s, align 8
  %144 = load i64, i64* %len188, align 8
  %mul197 = mul i64 %144, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %142, i8* %143, i64 %mul197, i32 1, i1 false)
  %145 = load i64, i64* %len188, align 8
  %146 = load i8*, i8** %d, align 8
  %add.ptr198 = getelementptr inbounds i8, i8* %146, i64 %145
  store i8* %add.ptr198, i8** %d, align 8
  br label %if.end.218

if.else.199:                                      ; preds = %if.then.194
  %147 = load i32, i32* %matches, align 4
  %inc200 = add nsw i32 %147, 1
  store i32 %inc200, i32* %matches, align 4
  %148 = load i32, i32* %del, align 4
  %tobool201 = icmp ne i32 %148, 0
  br i1 %tobool201, label %if.end.217, label %if.then.202

if.then.202:                                      ; preds = %if.else.199
  %149 = load i64, i64* %comp190, align 8
  %sub203 = sub i64 %149, 256
  %150 = load i64, i64* %rlen, align 8
  %cmp204 = icmp ult i64 %sub203, %150
  br i1 %cmp204, label %if.then.206, label %if.else.211

if.then.206:                                      ; preds = %if.then.202
  %151 = load i8*, i8** %d, align 8
  %152 = load i64, i64* %comp190, align 8
  %add207 = add i64 %152, 1
  %153 = load i16*, i16** %tbl, align 8
  %arrayidx208 = getelementptr inbounds i16, i16* %153, i64 %add207
  %154 = load i16, i16* %arrayidx208, align 2
  %conv209 = sext i16 %154 to i64
  %call210 = call i8* @Perl_uvuni_to_utf8(i8* %151, i64 %conv209)
  store i8* %call210, i8** %d, align 8
  br label %if.end.216

if.else.211:                                      ; preds = %if.then.202
  %155 = load i8*, i8** %d, align 8
  %156 = load i64, i64* %rlen, align 8
  %add212 = add i64 256, %156
  %157 = load i16*, i16** %tbl, align 8
  %arrayidx213 = getelementptr inbounds i16, i16* %157, i64 %add212
  %158 = load i16, i16* %arrayidx213, align 2
  %conv214 = sext i16 %158 to i64
  %call215 = call i8* @Perl_uvuni_to_utf8(i8* %155, i64 %conv214)
  store i8* %call215, i8** %d, align 8
  br label %if.end.216

if.end.216:                                       ; preds = %if.else.211, %if.then.206
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.else.199
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %if.then.196
  br label %if.end.242

if.else.219:                                      ; preds = %while.body.186
  %159 = load i64, i64* %comp190, align 8
  %160 = load i16*, i16** %tbl, align 8
  %arrayidx220 = getelementptr inbounds i16, i16* %160, i64 %159
  %161 = load i16, i16* %arrayidx220, align 2
  %conv221 = sext i16 %161 to i32
  store i32 %conv221, i32* %ch, align 4
  %cmp222 = icmp sge i32 %conv221, 0
  br i1 %cmp222, label %if.then.224, label %if.else.228

if.then.224:                                      ; preds = %if.else.219
  %162 = load i8*, i8** %d, align 8
  %163 = load i32, i32* %ch, align 4
  %conv225 = sext i32 %163 to i64
  %call226 = call i8* @Perl_uvuni_to_utf8(i8* %162, i64 %conv225)
  store i8* %call226, i8** %d, align 8
  %164 = load i32, i32* %matches, align 4
  %inc227 = add nsw i32 %164, 1
  store i32 %inc227, i32* %matches, align 4
  br label %if.end.241

if.else.228:                                      ; preds = %if.else.219
  %165 = load i32, i32* %ch, align 4
  %cmp229 = icmp eq i32 %165, -1
  br i1 %cmp229, label %if.then.231, label %if.else.234

if.then.231:                                      ; preds = %if.else.228
  %166 = load i8*, i8** %d, align 8
  %167 = load i8*, i8** %s, align 8
  %168 = load i64, i64* %len188, align 8
  %mul232 = mul i64 %168, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %166, i8* %167, i64 %mul232, i32 1, i1 false)
  %169 = load i64, i64* %len188, align 8
  %170 = load i8*, i8** %d, align 8
  %add.ptr233 = getelementptr inbounds i8, i8* %170, i64 %169
  store i8* %add.ptr233, i8** %d, align 8
  br label %if.end.240

if.else.234:                                      ; preds = %if.else.228
  %171 = load i32, i32* %ch, align 4
  %cmp235 = icmp eq i32 %171, -2
  br i1 %cmp235, label %if.then.237, label %if.end.239

if.then.237:                                      ; preds = %if.else.234
  %172 = load i32, i32* %matches, align 4
  %inc238 = add nsw i32 %172, 1
  store i32 %inc238, i32* %matches, align 4
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.237, %if.else.234
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.then.231
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.then.224
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.end.218
  %173 = load i64, i64* %len188, align 8
  %174 = load i8*, i8** %s, align 8
  %add.ptr243 = getelementptr inbounds i8, i8* %174, i64 %173
  store i8* %add.ptr243, i8** %s, align 8
  br label %while.cond.183

while.end.244:                                    ; preds = %while.cond.183
  br label %if.end.245

if.end.245:                                       ; preds = %while.end.244, %while.end.181
  %175 = load i32, i32* %grows, align 4
  %tobool246 = icmp ne i32 %175, 0
  br i1 %tobool246, label %if.then.247, label %if.else.251

if.then.247:                                      ; preds = %if.end.245
  %176 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %177 = load i8*, i8** %dstart, align 8
  %178 = load i8*, i8** %d, align 8
  %179 = load i8*, i8** %dstart, align 8
  %sub.ptr.lhs.cast248 = ptrtoint i8* %178 to i64
  %sub.ptr.rhs.cast249 = ptrtoint i8* %179 to i64
  %sub.ptr.sub250 = sub i64 %sub.ptr.lhs.cast248, %sub.ptr.rhs.cast249
  call void @Perl_sv_setpvn(%struct.sv* %176, i8* %177, i64 %sub.ptr.sub250)
  %180 = load i8*, i8** %dstart, align 8
  call void @Perl_safesysfree(i8* %180)
  br label %if.end.258

if.else.251:                                      ; preds = %if.end.245
  %181 = load i8*, i8** %d, align 8
  store i8 0, i8* %181, align 1
  %182 = load i8*, i8** %d, align 8
  %183 = load i8*, i8** %dstart, align 8
  %sub.ptr.lhs.cast253 = ptrtoint i8* %182 to i64
  %sub.ptr.rhs.cast254 = ptrtoint i8* %183 to i64
  %sub.ptr.sub255 = sub i64 %sub.ptr.lhs.cast253, %sub.ptr.rhs.cast254
  %184 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any256 = getelementptr inbounds %struct.sv, %struct.sv* %184, i32 0, i32 0
  %185 = load i8*, i8** %sv_any256, align 8
  %186 = bitcast i8* %185 to %struct.xpv*
  %xpv_cur257 = getelementptr inbounds %struct.xpv, %struct.xpv* %186, i32 0, i32 1
  store i64 %sub.ptr.sub255, i64* %xpv_cur257, align 8
  store i64 %sub.ptr.sub255, i64* %tmp252
  %187 = load i64, i64* %tmp252
  br label %if.end.258

if.end.258:                                       ; preds = %if.else.251, %if.then.247
  %188 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags259 = getelementptr inbounds %struct.sv, %struct.sv* %188, i32 0, i32 2
  %189 = load i32, i32* %sv_flags259, align 4
  %or = or i32 %189, 536870912
  store i32 %or, i32* %sv_flags259, align 4
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.258, %if.end.77
  %190 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags261 = getelementptr inbounds %struct.sv, %struct.sv* %190, i32 0, i32 2
  %191 = load i32, i32* %sv_flags261, align 4
  %and262 = and i32 %191, 16384
  %tobool263 = icmp ne i32 %and262, 0
  br i1 %tobool263, label %if.then.264, label %if.end.266

if.then.264:                                      ; preds = %if.end.260
  %192 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call265 = call i32 @Perl_mg_set(%struct.sv* %192)
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.264, %if.end.260
  %193 = load i32, i32* %matches, align 4
  ret i32 %193
}

; Function Attrs: nounwind uwtable
define void @Perl_do_join(%struct.sv* %sv, %struct.sv* %del, %struct.sv** %mark, %struct.sv** %sp) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %del.addr = alloca %struct.sv*, align 8
  %mark.addr = alloca %struct.sv**, align 8
  %sp.addr = alloca %struct.sv**, align 8
  %oldmark = alloca %struct.sv**, align 8
  %items = alloca i32, align 4
  %len = alloca i64, align 8
  %delimlen = alloca i64, align 8
  %tmplen = alloca i64, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.sv* %del, %struct.sv** %del.addr, align 8
  store %struct.sv** %mark, %struct.sv*** %mark.addr, align 8
  store %struct.sv** %sp, %struct.sv*** %sp.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  store %struct.sv** %0, %struct.sv*** %oldmark, align 8
  %1 = load %struct.sv**, %struct.sv*** %sp.addr, align 8
  %2 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %items, align 4
  %3 = load %struct.sv*, %struct.sv** %del.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and = and i32 %4, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.sv*, %struct.sv** %del.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 0
  %6 = load i8*, i8** %sv_any, align 8
  %7 = bitcast i8* %6 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %7, i32 0, i32 1
  %8 = load i64, i64* %xpv_cur, align 8
  store i64 %8, i64* %delimlen, align 8
  %9 = load %struct.sv*, %struct.sv** %del.addr, align 8
  %sv_any2 = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 0
  %10 = load i8*, i8** %sv_any2, align 8
  %11 = bitcast i8* %10 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %11, i32 0, i32 0
  %12 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %13 = load %struct.sv*, %struct.sv** %del.addr, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %13, i64* %delimlen, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %call, %cond.false ]
  %14 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %14, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %mark.addr, align 8
  %15 = load i32, i32* %items, align 4
  %cmp3 = icmp sgt i32 %15, 0
  br i1 %cmp3, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %16 = load i64, i64* %delimlen, align 8
  %17 = load i32, i32* %items, align 4
  %sub = sub nsw i32 %17, 1
  %conv6 = sext i32 %sub to i64
  %mul = mul i64 %16, %conv6
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.5
  %cond9 = phi i64 [ %mul, %cond.true.5 ], [ 0, %cond.false.7 ]
  store i64 %cond9, i64* %len, align 8
  %18 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags10 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 2
  %19 = load i32, i32* %sv_flags10, align 4
  %and11 = and i32 %19, 255
  %cmp12 = icmp uge i32 %and11, 4
  br i1 %cmp12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.end.8
  %20 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call14 = call signext i8 @Perl_sv_upgrade(%struct.sv* %20, i32 4)
  %conv15 = sext i8 %call14 to i32
  %tobool = icmp ne i32 %conv15, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.end.8
  %21 = phi i1 [ true, %cond.end.8 ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %21 to i32
  %22 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any16 = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 0
  %23 = load i8*, i8** %sv_any16, align 8
  %24 = bitcast i8* %23 to %struct.xpv*
  %xpv_len = getelementptr inbounds %struct.xpv, %struct.xpv* %24, i32 0, i32 2
  %25 = load i64, i64* %xpv_len, align 8
  %26 = load i64, i64* %len, align 8
  %27 = load i32, i32* %items, align 4
  %conv17 = sext i32 %27 to i64
  %add = add i64 %26, %conv17
  %cmp18 = icmp ult i64 %25, %add
  br i1 %cmp18, label %if.then, label %if.end.65

if.then:                                          ; preds = %lor.end
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %28 = load i32, i32* %items, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %items, align 4
  %cmp20 = icmp sgt i32 %28, 0
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %30 = load %struct.sv*, %struct.sv** %29, align 8
  %tobool22 = icmp ne %struct.sv* %30, null
  br i1 %tobool22, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %31 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %32 = load %struct.sv*, %struct.sv** %31, align 8
  %sv_flags23 = getelementptr inbounds %struct.sv, %struct.sv* %32, i32 0, i32 2
  %33 = load i32, i32* %sv_flags23, align 4
  %and24 = and i32 %33, 268443648
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.end, label %land.lhs.true.26

land.lhs.true.26:                                 ; preds = %land.lhs.true
  %34 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %35 = load %struct.sv*, %struct.sv** %34, align 8
  %sv_flags27 = getelementptr inbounds %struct.sv, %struct.sv* %35, i32 0, i32 2
  %36 = load i32, i32* %sv_flags27, align 4
  %and28 = and i32 %36, 118423552
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %land.lhs.true.26
  %37 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %38 = load %struct.sv*, %struct.sv** %37, align 8
  %sv_flags31 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 2
  %39 = load i32, i32* %sv_flags31, align 4
  %and32 = and i32 %39, 262144
  %cmp33 = icmp eq i32 %and32, 262144
  br i1 %cmp33, label %cond.true.35, label %cond.false.40

cond.true.35:                                     ; preds = %if.then.30
  %40 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %41 = load %struct.sv*, %struct.sv** %40, align 8
  %sv_any36 = getelementptr inbounds %struct.sv, %struct.sv* %41, i32 0, i32 0
  %42 = load i8*, i8** %sv_any36, align 8
  %43 = bitcast i8* %42 to %struct.xpv*
  %xpv_cur37 = getelementptr inbounds %struct.xpv, %struct.xpv* %43, i32 0, i32 1
  %44 = load i64, i64* %xpv_cur37, align 8
  store i64 %44, i64* %tmplen, align 8
  %45 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %46 = load %struct.sv*, %struct.sv** %45, align 8
  %sv_any38 = getelementptr inbounds %struct.sv, %struct.sv* %46, i32 0, i32 0
  %47 = load i8*, i8** %sv_any38, align 8
  %48 = bitcast i8* %47 to %struct.xpv*
  %xpv_pv39 = getelementptr inbounds %struct.xpv, %struct.xpv* %48, i32 0, i32 0
  %49 = load i8*, i8** %xpv_pv39, align 8
  br label %cond.end.42

cond.false.40:                                    ; preds = %if.then.30
  %50 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %51 = load %struct.sv*, %struct.sv** %50, align 8
  %call41 = call i8* @Perl_sv_2pv_flags(%struct.sv* %51, i64* %tmplen, i32 2)
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.40, %cond.true.35
  %cond43 = phi i8* [ %49, %cond.true.35 ], [ %call41, %cond.false.40 ]
  %52 = load i64, i64* %tmplen, align 8
  %53 = load i64, i64* %len, align 8
  %add44 = add i64 %53, %52
  store i64 %add44, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.42, %land.lhs.true.26, %land.lhs.true, %while.body
  %54 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %incdec.ptr45 = getelementptr inbounds %struct.sv*, %struct.sv** %54, i32 1
  store %struct.sv** %incdec.ptr45, %struct.sv*** %mark.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %55 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any46 = getelementptr inbounds %struct.sv, %struct.sv* %55, i32 0, i32 0
  %56 = load i8*, i8** %sv_any46, align 8
  %57 = bitcast i8* %56 to %struct.xpv*
  %xpv_len47 = getelementptr inbounds %struct.xpv, %struct.xpv* %57, i32 0, i32 2
  %58 = load i64, i64* %xpv_len47, align 8
  %59 = load i64, i64* %len, align 8
  %add48 = add i64 %59, 1
  %cmp49 = icmp ult i64 %58, %add48
  br i1 %cmp49, label %cond.true.51, label %cond.false.54

cond.true.51:                                     ; preds = %while.end
  %60 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %61 = load i64, i64* %len, align 8
  %add52 = add i64 %61, 1
  %call53 = call i8* @Perl_sv_grow(%struct.sv* %60, i64 %add52)
  br label %cond.end.57

cond.false.54:                                    ; preds = %while.end
  %62 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any55 = getelementptr inbounds %struct.sv, %struct.sv* %62, i32 0, i32 0
  %63 = load i8*, i8** %sv_any55, align 8
  %64 = bitcast i8* %63 to %struct.xpv*
  %xpv_pv56 = getelementptr inbounds %struct.xpv, %struct.xpv* %64, i32 0, i32 0
  %65 = load i8*, i8** %xpv_pv56, align 8
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.54, %cond.true.51
  %cond58 = phi i8* [ %call53, %cond.true.51 ], [ %65, %cond.false.54 ]
  %66 = load %struct.sv**, %struct.sv*** %oldmark, align 8
  store %struct.sv** %66, %struct.sv*** %mark.addr, align 8
  %67 = load %struct.sv**, %struct.sv*** %sp.addr, align 8
  %68 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %sub.ptr.lhs.cast59 = ptrtoint %struct.sv** %67 to i64
  %sub.ptr.rhs.cast60 = ptrtoint %struct.sv** %68 to i64
  %sub.ptr.sub61 = sub i64 %sub.ptr.lhs.cast59, %sub.ptr.rhs.cast60
  %sub.ptr.div62 = sdiv exact i64 %sub.ptr.sub61, 8
  %conv63 = trunc i64 %sub.ptr.div62 to i32
  store i32 %conv63, i32* %items, align 4
  %69 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %incdec.ptr64 = getelementptr inbounds %struct.sv*, %struct.sv** %69, i32 1
  store %struct.sv** %incdec.ptr64, %struct.sv*** %mark.addr, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %cond.end.57, %lor.end
  %70 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setpvn(%struct.sv* %70, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i64 0)
  %71 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags66 = getelementptr inbounds %struct.sv, %struct.sv* %71, i32 0, i32 2
  %72 = load i32, i32* %sv_flags66, align 4
  %and67 = and i32 %72, -536870913
  store i32 %and67, i32* %sv_flags66, align 4
  %73 = load i8, i8* @PL_tainting, align 1
  %conv68 = sext i8 %73 to i32
  %tobool69 = icmp ne i32 %conv68, 0
  br i1 %tobool69, label %land.lhs.true.70, label %if.end.78

land.lhs.true.70:                                 ; preds = %if.end.65
  %74 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags71 = getelementptr inbounds %struct.sv, %struct.sv* %74, i32 0, i32 2
  %75 = load i32, i32* %sv_flags71, align 4
  %and72 = and i32 %75, 57344
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.78

if.then.74:                                       ; preds = %land.lhs.true.70
  %76 = load i8, i8* @PL_tainting, align 1
  %tobool75 = icmp ne i8 %76, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.then.74
  %77 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_untaint(%struct.sv* %77)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.then.74
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %land.lhs.true.70, %if.end.65
  %78 = load i32, i32* %items, align 4
  %dec79 = add nsw i32 %78, -1
  store i32 %dec79, i32* %items, align 4
  %cmp80 = icmp sgt i32 %78, 0
  br i1 %cmp80, label %if.then.82, label %if.end.87

if.then.82:                                       ; preds = %if.end.78
  %79 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %80 = load %struct.sv*, %struct.sv** %79, align 8
  %tobool83 = icmp ne %struct.sv* %80, null
  br i1 %tobool83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.then.82
  %81 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %82 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %83 = load %struct.sv*, %struct.sv** %82, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %81, %struct.sv* %83, i32 2)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.then.82
  %84 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %incdec.ptr86 = getelementptr inbounds %struct.sv*, %struct.sv** %84, i32 1
  store %struct.sv** %incdec.ptr86, %struct.sv*** %mark.addr, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.85, %if.end.78
  %85 = load i64, i64* %delimlen, align 8
  %tobool88 = icmp ne i64 %85, 0
  br i1 %tobool88, label %if.then.89, label %if.else

if.then.89:                                       ; preds = %if.end.87
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.89
  %86 = load i32, i32* %items, align 4
  %cmp90 = icmp sgt i32 %86, 0
  br i1 %cmp90, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %87 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %88 = load %struct.sv*, %struct.sv** %del.addr, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %87, %struct.sv* %88, i32 2)
  %89 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %90 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %91 = load %struct.sv*, %struct.sv** %90, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %89, %struct.sv* %91, i32 2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %92 = load i32, i32* %items, align 4
  %dec92 = add nsw i32 %92, -1
  store i32 %dec92, i32* %items, align 4
  %93 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %incdec.ptr93 = getelementptr inbounds %struct.sv*, %struct.sv** %93, i32 1
  store %struct.sv** %incdec.ptr93, %struct.sv*** %mark.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.102

if.else:                                          ; preds = %if.end.87
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.98, %if.else
  %94 = load i32, i32* %items, align 4
  %cmp95 = icmp sgt i32 %94, 0
  br i1 %cmp95, label %for.body.97, label %for.end.101

for.body.97:                                      ; preds = %for.cond.94
  %95 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %96 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %97 = load %struct.sv*, %struct.sv** %96, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %95, %struct.sv* %97, i32 2)
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.body.97
  %98 = load i32, i32* %items, align 4
  %dec99 = add nsw i32 %98, -1
  store i32 %dec99, i32* %items, align 4
  %99 = load %struct.sv**, %struct.sv*** %mark.addr, align 8
  %incdec.ptr100 = getelementptr inbounds %struct.sv*, %struct.sv** %99, i32 1
  store %struct.sv** %incdec.ptr100, %struct.sv*** %mark.addr, align 8
  br label %for.cond.94

for.end.101:                                      ; preds = %for.cond.94
  br label %if.end.102

if.end.102:                                       ; preds = %for.end.101, %for.end
  %100 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags103 = getelementptr inbounds %struct.sv, %struct.sv* %100, i32 0, i32 2
  %101 = load i32, i32* %sv_flags103, align 4
  %and104 = and i32 %101, 16384
  %tobool105 = icmp ne i32 %and104, 0
  br i1 %tobool105, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %if.end.102
  %102 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call107 = call i32 @Perl_mg_set(%struct.sv* %102)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %if.end.102
  ret void
}

declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

declare i8* @Perl_sv_grow(%struct.sv*, i64) #1

declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

declare void @Perl_sv_untaint(%struct.sv*) #1

declare void @Perl_sv_catsv_flags(%struct.sv*, %struct.sv*, i32) #1

declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @Perl_do_sprintf(%struct.sv* %sv, i32 %len, %struct.sv** %sarg) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %len.addr = alloca i32, align 4
  %sarg.addr = alloca %struct.sv**, align 8
  %patlen = alloca i64, align 8
  %pat = alloca i8*, align 8
  %do_taint = alloca i8, align 1
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store %struct.sv** %sarg, %struct.sv*** %sarg.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** %sarg.addr, align 8
  %1 = load %struct.sv*, %struct.sv** %0, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %1, i32 0, i32 2
  %2 = load i32, i32* %sv_flags, align 4
  %and = and i32 %2, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.sv**, %struct.sv*** %sarg.addr, align 8
  %4 = load %struct.sv*, %struct.sv** %3, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 0
  %5 = load i8*, i8** %sv_any, align 8
  %6 = bitcast i8* %5 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %6, i32 0, i32 1
  %7 = load i64, i64* %xpv_cur, align 8
  store i64 %7, i64* %patlen, align 8
  %8 = load %struct.sv**, %struct.sv*** %sarg.addr, align 8
  %9 = load %struct.sv*, %struct.sv** %8, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 0
  %10 = load i8*, i8** %sv_any1, align 8
  %11 = bitcast i8* %10 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %11, i32 0, i32 0
  %12 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %13 = load %struct.sv**, %struct.sv*** %sarg.addr, align 8
  %14 = load %struct.sv*, %struct.sv** %13, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %14, i64* %patlen, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %pat, align 8
  store i8 0, i8* %do_taint, align 1
  %15 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags2 = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags2, align 4
  %and3 = and i32 %16, -536870913
  store i32 %and3, i32* %sv_flags2, align 4
  %17 = load %struct.sv**, %struct.sv*** %sarg.addr, align 8
  %18 = load %struct.sv*, %struct.sv** %17, align 8
  %sv_flags4 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 2
  %19 = load i32, i32* %sv_flags4, align 4
  %and5 = and i32 %19, 536870912
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %20 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private = getelementptr inbounds %struct.cop, %struct.cop* %20, i32 0, i32 7
  %21 = load i8, i8* %op_private, align 1
  %conv = zext i8 %21 to i32
  %and6 = and i32 %conv, 8
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %22 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags8 = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 2
  %23 = load i32, i32* %sv_flags8, align 4
  %or = or i32 %23, 536870912
  store i32 %or, i32* %sv_flags8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end
  %24 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %25 = load i8*, i8** %pat, align 8
  %26 = load i64, i64* %patlen, align 8
  %27 = load %struct.sv**, %struct.sv*** %sarg.addr, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %27, i64 1
  %28 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 %28, 1
  call void @Perl_sv_vsetpvfn(%struct.sv* %24, i8* %25, i64 %26, [1 x %struct.__va_list_tag]* null, %struct.sv** %add.ptr, i32 %sub, i8* %do_taint)
  %29 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags9 = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 2
  %30 = load i32, i32* %sv_flags9, align 4
  %and10 = and i32 %30, 16384
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %31 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call13 = call i32 @Perl_mg_set(%struct.sv* %31)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  %32 = load i8, i8* %do_taint, align 1
  %tobool15 = icmp ne i8 %32, 0
  br i1 %tobool15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end.14
  %33 = load i8, i8* @PL_tainting, align 1
  %tobool17 = icmp ne i8 %33, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.16
  %34 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_taint(%struct.sv* %34)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.then.16
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.14
  ret void
}

declare void @Perl_sv_vsetpvfn(%struct.sv*, i8*, i64, [1 x %struct.__va_list_tag]*, %struct.sv**, i32, i8*) #1

declare void @Perl_sv_taint(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define i64 @Perl_do_vecget(%struct.sv* %sv, i32 %offset, i32 %size) #0 {
entry:
  %retval = alloca i64, align 8
  %sv.addr = alloca %struct.sv*, align 8
  %offset.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %srclen = alloca i64, align 8
  %len = alloca i64, align 8
  %s = alloca i8*, align 8
  %retnum = alloca i64, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %size, i32* %size.addr, align 4
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
  store i64 %5, i64* %srclen, align 8
  %6 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 0
  %7 = load i8*, i8** %sv_any1, align 8
  %8 = bitcast i8* %7 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %8, i32 0, i32 0
  %9 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %10, i64* %srclen, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %s, align 8
  store i64 0, i64* %retnum, align 8
  %11 = load i32, i32* %offset.addr, align 4
  %cmp2 = icmp slt i32 %11, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %12 = load i64, i64* %retnum, align 8
  store i64 %12, i64* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %13 = load i32, i32* %size.addr, align 4
  %cmp3 = icmp slt i32 %13, 1
  br i1 %cmp3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %14 = load i32, i32* %size.addr, align 4
  %15 = load i32, i32* %size.addr, align 4
  %sub = sub nsw i32 %15, 1
  %and4 = and i32 %14, %sub
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %lor.lhs.false
  %16 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags7 = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags7, align 4
  %and8 = and i32 %17, 536870912
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.6
  %18 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call11 = call signext i8 @Perl_sv_utf8_downgrade(%struct.sv* %18, i8 signext 1)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.6
  %19 = load i32, i32* %size.addr, align 4
  %20 = load i32, i32* %offset.addr, align 4
  %mul = mul nsw i32 %20, %19
  store i32 %mul, i32* %offset.addr, align 4
  %21 = load i32, i32* %offset.addr, align 4
  %22 = load i32, i32* %size.addr, align 4
  %add = add nsw i32 %21, %22
  %add13 = add nsw i32 %add, 7
  %div = sdiv i32 %add13, 8
  %conv = sext i32 %div to i64
  store i64 %conv, i64* %len, align 8
  %23 = load i64, i64* %len, align 8
  %24 = load i64, i64* %srclen, align 8
  %cmp14 = icmp ugt i64 %23, %24
  br i1 %cmp14, label %if.then.16, label %if.else.324

if.then.16:                                       ; preds = %if.end.12
  %25 = load i32, i32* %size.addr, align 4
  %cmp17 = icmp sle i32 %25, 8
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.16
  store i64 0, i64* %retnum, align 8
  br label %if.end.323

if.else:                                          ; preds = %if.then.16
  %26 = load i32, i32* %offset.addr, align 4
  %shr = ashr i32 %26, 3
  store i32 %shr, i32* %offset.addr, align 4
  %27 = load i32, i32* %size.addr, align 4
  %cmp20 = icmp eq i32 %27, 16
  br i1 %cmp20, label %if.then.22, label %if.else.30

if.then.22:                                       ; preds = %if.else
  %28 = load i32, i32* %offset.addr, align 4
  %conv23 = sext i32 %28 to i64
  %29 = load i64, i64* %srclen, align 8
  %cmp24 = icmp uge i64 %conv23, %29
  br i1 %cmp24, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.then.22
  store i64 0, i64* %retnum, align 8
  br label %if.end.29

if.else.27:                                       ; preds = %if.then.22
  %30 = load i32, i32* %offset.addr, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 %idxprom
  %32 = load i8, i8* %arrayidx, align 1
  %conv28 = zext i8 %32 to i64
  %shl = shl i64 %conv28, 8
  store i64 %shl, i64* %retnum, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.then.26
  br label %if.end.322

if.else.30:                                       ; preds = %if.else
  %33 = load i32, i32* %size.addr, align 4
  %cmp31 = icmp eq i32 %33, 32
  br i1 %cmp31, label %if.then.33, label %if.else.85

if.then.33:                                       ; preds = %if.else.30
  %34 = load i32, i32* %offset.addr, align 4
  %conv34 = sext i32 %34 to i64
  %35 = load i64, i64* %srclen, align 8
  %cmp35 = icmp uge i64 %conv34, %35
  br i1 %cmp35, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.then.33
  store i64 0, i64* %retnum, align 8
  br label %if.end.84

if.else.38:                                       ; preds = %if.then.33
  %36 = load i32, i32* %offset.addr, align 4
  %add39 = add nsw i32 %36, 1
  %conv40 = sext i32 %add39 to i64
  %37 = load i64, i64* %srclen, align 8
  %cmp41 = icmp uge i64 %conv40, %37
  br i1 %cmp41, label %if.then.43, label %if.else.48

if.then.43:                                       ; preds = %if.else.38
  %38 = load i32, i32* %offset.addr, align 4
  %idxprom44 = sext i32 %38 to i64
  %39 = load i8*, i8** %s, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %39, i64 %idxprom44
  %40 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %40 to i64
  %shl47 = shl i64 %conv46, 24
  store i64 %shl47, i64* %retnum, align 8
  br label %if.end.83

if.else.48:                                       ; preds = %if.else.38
  %41 = load i32, i32* %offset.addr, align 4
  %add49 = add nsw i32 %41, 2
  %conv50 = sext i32 %add49 to i64
  %42 = load i64, i64* %srclen, align 8
  %cmp51 = icmp uge i64 %conv50, %42
  br i1 %cmp51, label %if.then.53, label %if.else.64

if.then.53:                                       ; preds = %if.else.48
  %43 = load i32, i32* %offset.addr, align 4
  %idxprom54 = sext i32 %43 to i64
  %44 = load i8*, i8** %s, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %44, i64 %idxprom54
  %45 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %45 to i64
  %shl57 = shl i64 %conv56, 24
  %46 = load i32, i32* %offset.addr, align 4
  %add58 = add nsw i32 %46, 1
  %idxprom59 = sext i32 %add58 to i64
  %47 = load i8*, i8** %s, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %47, i64 %idxprom59
  %48 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %48 to i64
  %shl62 = shl i64 %conv61, 16
  %add63 = add i64 %shl57, %shl62
  store i64 %add63, i64* %retnum, align 8
  br label %if.end.82

if.else.64:                                       ; preds = %if.else.48
  %49 = load i32, i32* %offset.addr, align 4
  %idxprom65 = sext i32 %49 to i64
  %50 = load i8*, i8** %s, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %50, i64 %idxprom65
  %51 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %51 to i64
  %shl68 = shl i64 %conv67, 24
  %52 = load i32, i32* %offset.addr, align 4
  %add69 = add nsw i32 %52, 1
  %idxprom70 = sext i32 %add69 to i64
  %53 = load i8*, i8** %s, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %53, i64 %idxprom70
  %54 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %54 to i64
  %shl73 = shl i64 %conv72, 16
  %add74 = add i64 %shl68, %shl73
  %55 = load i32, i32* %offset.addr, align 4
  %add75 = add nsw i32 %55, 2
  %idxprom76 = sext i32 %add75 to i64
  %56 = load i8*, i8** %s, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %56, i64 %idxprom76
  %57 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %57 to i32
  %shl79 = shl i32 %conv78, 8
  %conv80 = sext i32 %shl79 to i64
  %add81 = add i64 %add74, %conv80
  store i64 %add81, i64* %retnum, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.64, %if.then.53
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.43
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.37
  br label %if.end.321

if.else.85:                                       ; preds = %if.else.30
  %58 = load i32, i32* %size.addr, align 4
  %cmp86 = icmp eq i32 %58, 64
  br i1 %cmp86, label %if.then.88, label %if.end.320

if.then.88:                                       ; preds = %if.else.85
  %59 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %59, i32 0, i32 14
  %60 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp89 = icmp ne %struct.sv* %60, null
  br i1 %cmp89, label %land.lhs.true, label %lor.lhs.false.106

land.lhs.true:                                    ; preds = %if.then.88
  %61 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings91 = getelementptr inbounds %struct.cop, %struct.cop* %61, i32 0, i32 14
  %62 = load %struct.sv*, %struct.sv** %cop_warnings91, align 8
  %cmp92 = icmp ne %struct.sv* %62, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp92, label %land.lhs.true.94, label %lor.lhs.false.106

land.lhs.true.94:                                 ; preds = %land.lhs.true
  %63 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings95 = getelementptr inbounds %struct.cop, %struct.cop* %63, i32 0, i32 14
  %64 = load %struct.sv*, %struct.sv** %cop_warnings95, align 8
  %cmp96 = icmp eq %struct.sv* %64, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp96, label %if.then.114, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %land.lhs.true.94
  %65 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings99 = getelementptr inbounds %struct.cop, %struct.cop* %65, i32 0, i32 14
  %66 = load %struct.sv*, %struct.sv** %cop_warnings99, align 8
  %sv_any100 = getelementptr inbounds %struct.sv, %struct.sv* %66, i32 0, i32 0
  %67 = load i8*, i8** %sv_any100, align 8
  %68 = bitcast i8* %67 to %struct.xpv*
  %xpv_pv101 = getelementptr inbounds %struct.xpv, %struct.xpv* %68, i32 0, i32 0
  %69 = load i8*, i8** %xpv_pv101, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %69, i64 4
  %70 = load i8, i8* %arrayidx102, align 1
  %conv103 = sext i8 %70 to i32
  %and104 = and i32 %conv103, 4
  %tobool105 = icmp ne i32 %and104, 0
  br i1 %tobool105, label %if.then.114, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %lor.lhs.false.98, %land.lhs.true, %if.then.88
  %71 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings107 = getelementptr inbounds %struct.cop, %struct.cop* %71, i32 0, i32 14
  %72 = load %struct.sv*, %struct.sv** %cop_warnings107, align 8
  %cmp108 = icmp eq %struct.sv* %72, null
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.115

land.lhs.true.110:                                ; preds = %lor.lhs.false.106
  %73 = load i8, i8* @PL_dowarn, align 1
  %conv111 = zext i8 %73 to i32
  %and112 = and i32 %conv111, 1
  %tobool113 = icmp ne i32 %and112, 0
  br i1 %tobool113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %land.lhs.true.110, %lor.lhs.false.98, %land.lhs.true.94
  call void (i32, i8*, ...) @Perl_warner(i32 17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %land.lhs.true.110, %lor.lhs.false.106
  %74 = load i32, i32* %offset.addr, align 4
  %conv116 = sext i32 %74 to i64
  %75 = load i64, i64* %srclen, align 8
  %cmp117 = icmp uge i64 %conv116, %75
  br i1 %cmp117, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %if.end.115
  store i64 0, i64* %retnum, align 8
  br label %if.end.319

if.else.120:                                      ; preds = %if.end.115
  %76 = load i32, i32* %offset.addr, align 4
  %add121 = add nsw i32 %76, 1
  %conv122 = sext i32 %add121 to i64
  %77 = load i64, i64* %srclen, align 8
  %cmp123 = icmp uge i64 %conv122, %77
  br i1 %cmp123, label %if.then.125, label %if.else.130

if.then.125:                                      ; preds = %if.else.120
  %78 = load i32, i32* %offset.addr, align 4
  %idxprom126 = sext i32 %78 to i64
  %79 = load i8*, i8** %s, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %79, i64 %idxprom126
  %80 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %80 to i64
  %shl129 = shl i64 %conv128, 56
  store i64 %shl129, i64* %retnum, align 8
  br label %if.end.318

if.else.130:                                      ; preds = %if.else.120
  %81 = load i32, i32* %offset.addr, align 4
  %add131 = add nsw i32 %81, 2
  %conv132 = sext i32 %add131 to i64
  %82 = load i64, i64* %srclen, align 8
  %cmp133 = icmp uge i64 %conv132, %82
  br i1 %cmp133, label %if.then.135, label %if.else.146

if.then.135:                                      ; preds = %if.else.130
  %83 = load i32, i32* %offset.addr, align 4
  %idxprom136 = sext i32 %83 to i64
  %84 = load i8*, i8** %s, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %84, i64 %idxprom136
  %85 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %85 to i64
  %shl139 = shl i64 %conv138, 56
  %86 = load i32, i32* %offset.addr, align 4
  %add140 = add nsw i32 %86, 1
  %idxprom141 = sext i32 %add140 to i64
  %87 = load i8*, i8** %s, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %87, i64 %idxprom141
  %88 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %88 to i64
  %shl144 = shl i64 %conv143, 48
  %add145 = add i64 %shl139, %shl144
  store i64 %add145, i64* %retnum, align 8
  br label %if.end.317

if.else.146:                                      ; preds = %if.else.130
  %89 = load i32, i32* %offset.addr, align 4
  %add147 = add nsw i32 %89, 3
  %conv148 = sext i32 %add147 to i64
  %90 = load i64, i64* %srclen, align 8
  %cmp149 = icmp uge i64 %conv148, %90
  br i1 %cmp149, label %if.then.151, label %if.else.168

if.then.151:                                      ; preds = %if.else.146
  %91 = load i32, i32* %offset.addr, align 4
  %idxprom152 = sext i32 %91 to i64
  %92 = load i8*, i8** %s, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %92, i64 %idxprom152
  %93 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %93 to i64
  %shl155 = shl i64 %conv154, 56
  %94 = load i32, i32* %offset.addr, align 4
  %add156 = add nsw i32 %94, 1
  %idxprom157 = sext i32 %add156 to i64
  %95 = load i8*, i8** %s, align 8
  %arrayidx158 = getelementptr inbounds i8, i8* %95, i64 %idxprom157
  %96 = load i8, i8* %arrayidx158, align 1
  %conv159 = zext i8 %96 to i64
  %shl160 = shl i64 %conv159, 48
  %add161 = add i64 %shl155, %shl160
  %97 = load i32, i32* %offset.addr, align 4
  %add162 = add nsw i32 %97, 2
  %idxprom163 = sext i32 %add162 to i64
  %98 = load i8*, i8** %s, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %98, i64 %idxprom163
  %99 = load i8, i8* %arrayidx164, align 1
  %conv165 = zext i8 %99 to i64
  %shl166 = shl i64 %conv165, 40
  %add167 = add i64 %add161, %shl166
  store i64 %add167, i64* %retnum, align 8
  br label %if.end.316

if.else.168:                                      ; preds = %if.else.146
  %100 = load i32, i32* %offset.addr, align 4
  %add169 = add nsw i32 %100, 4
  %conv170 = sext i32 %add169 to i64
  %101 = load i64, i64* %srclen, align 8
  %cmp171 = icmp uge i64 %conv170, %101
  br i1 %cmp171, label %if.then.173, label %if.else.196

if.then.173:                                      ; preds = %if.else.168
  %102 = load i32, i32* %offset.addr, align 4
  %idxprom174 = sext i32 %102 to i64
  %103 = load i8*, i8** %s, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %103, i64 %idxprom174
  %104 = load i8, i8* %arrayidx175, align 1
  %conv176 = zext i8 %104 to i64
  %shl177 = shl i64 %conv176, 56
  %105 = load i32, i32* %offset.addr, align 4
  %add178 = add nsw i32 %105, 1
  %idxprom179 = sext i32 %add178 to i64
  %106 = load i8*, i8** %s, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %106, i64 %idxprom179
  %107 = load i8, i8* %arrayidx180, align 1
  %conv181 = zext i8 %107 to i64
  %shl182 = shl i64 %conv181, 48
  %add183 = add i64 %shl177, %shl182
  %108 = load i32, i32* %offset.addr, align 4
  %add184 = add nsw i32 %108, 2
  %idxprom185 = sext i32 %add184 to i64
  %109 = load i8*, i8** %s, align 8
  %arrayidx186 = getelementptr inbounds i8, i8* %109, i64 %idxprom185
  %110 = load i8, i8* %arrayidx186, align 1
  %conv187 = zext i8 %110 to i64
  %shl188 = shl i64 %conv187, 40
  %add189 = add i64 %add183, %shl188
  %111 = load i32, i32* %offset.addr, align 4
  %add190 = add nsw i32 %111, 3
  %idxprom191 = sext i32 %add190 to i64
  %112 = load i8*, i8** %s, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %112, i64 %idxprom191
  %113 = load i8, i8* %arrayidx192, align 1
  %conv193 = zext i8 %113 to i64
  %shl194 = shl i64 %conv193, 32
  %add195 = add i64 %add189, %shl194
  store i64 %add195, i64* %retnum, align 8
  br label %if.end.315

if.else.196:                                      ; preds = %if.else.168
  %114 = load i32, i32* %offset.addr, align 4
  %add197 = add nsw i32 %114, 5
  %conv198 = sext i32 %add197 to i64
  %115 = load i64, i64* %srclen, align 8
  %cmp199 = icmp uge i64 %conv198, %115
  br i1 %cmp199, label %if.then.201, label %if.else.231

if.then.201:                                      ; preds = %if.else.196
  %116 = load i32, i32* %offset.addr, align 4
  %idxprom202 = sext i32 %116 to i64
  %117 = load i8*, i8** %s, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %117, i64 %idxprom202
  %118 = load i8, i8* %arrayidx203, align 1
  %conv204 = zext i8 %118 to i64
  %shl205 = shl i64 %conv204, 56
  %119 = load i32, i32* %offset.addr, align 4
  %add206 = add nsw i32 %119, 1
  %idxprom207 = sext i32 %add206 to i64
  %120 = load i8*, i8** %s, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %120, i64 %idxprom207
  %121 = load i8, i8* %arrayidx208, align 1
  %conv209 = zext i8 %121 to i64
  %shl210 = shl i64 %conv209, 48
  %add211 = add i64 %shl205, %shl210
  %122 = load i32, i32* %offset.addr, align 4
  %add212 = add nsw i32 %122, 2
  %idxprom213 = sext i32 %add212 to i64
  %123 = load i8*, i8** %s, align 8
  %arrayidx214 = getelementptr inbounds i8, i8* %123, i64 %idxprom213
  %124 = load i8, i8* %arrayidx214, align 1
  %conv215 = zext i8 %124 to i64
  %shl216 = shl i64 %conv215, 40
  %add217 = add i64 %add211, %shl216
  %125 = load i32, i32* %offset.addr, align 4
  %add218 = add nsw i32 %125, 3
  %idxprom219 = sext i32 %add218 to i64
  %126 = load i8*, i8** %s, align 8
  %arrayidx220 = getelementptr inbounds i8, i8* %126, i64 %idxprom219
  %127 = load i8, i8* %arrayidx220, align 1
  %conv221 = zext i8 %127 to i64
  %shl222 = shl i64 %conv221, 32
  %add223 = add i64 %add217, %shl222
  %128 = load i32, i32* %offset.addr, align 4
  %add224 = add nsw i32 %128, 4
  %idxprom225 = sext i32 %add224 to i64
  %129 = load i8*, i8** %s, align 8
  %arrayidx226 = getelementptr inbounds i8, i8* %129, i64 %idxprom225
  %130 = load i8, i8* %arrayidx226, align 1
  %conv227 = zext i8 %130 to i32
  %shl228 = shl i32 %conv227, 24
  %conv229 = sext i32 %shl228 to i64
  %add230 = add i64 %add223, %conv229
  store i64 %add230, i64* %retnum, align 8
  br label %if.end.314

if.else.231:                                      ; preds = %if.else.196
  %131 = load i32, i32* %offset.addr, align 4
  %add232 = add nsw i32 %131, 6
  %conv233 = sext i32 %add232 to i64
  %132 = load i64, i64* %srclen, align 8
  %cmp234 = icmp uge i64 %conv233, %132
  br i1 %cmp234, label %if.then.236, label %if.else.271

if.then.236:                                      ; preds = %if.else.231
  %133 = load i32, i32* %offset.addr, align 4
  %idxprom237 = sext i32 %133 to i64
  %134 = load i8*, i8** %s, align 8
  %arrayidx238 = getelementptr inbounds i8, i8* %134, i64 %idxprom237
  %135 = load i8, i8* %arrayidx238, align 1
  %conv239 = zext i8 %135 to i64
  %shl240 = shl i64 %conv239, 56
  %136 = load i32, i32* %offset.addr, align 4
  %add241 = add nsw i32 %136, 1
  %idxprom242 = sext i32 %add241 to i64
  %137 = load i8*, i8** %s, align 8
  %arrayidx243 = getelementptr inbounds i8, i8* %137, i64 %idxprom242
  %138 = load i8, i8* %arrayidx243, align 1
  %conv244 = zext i8 %138 to i64
  %shl245 = shl i64 %conv244, 48
  %add246 = add i64 %shl240, %shl245
  %139 = load i32, i32* %offset.addr, align 4
  %add247 = add nsw i32 %139, 2
  %idxprom248 = sext i32 %add247 to i64
  %140 = load i8*, i8** %s, align 8
  %arrayidx249 = getelementptr inbounds i8, i8* %140, i64 %idxprom248
  %141 = load i8, i8* %arrayidx249, align 1
  %conv250 = zext i8 %141 to i64
  %shl251 = shl i64 %conv250, 40
  %add252 = add i64 %add246, %shl251
  %142 = load i32, i32* %offset.addr, align 4
  %add253 = add nsw i32 %142, 3
  %idxprom254 = sext i32 %add253 to i64
  %143 = load i8*, i8** %s, align 8
  %arrayidx255 = getelementptr inbounds i8, i8* %143, i64 %idxprom254
  %144 = load i8, i8* %arrayidx255, align 1
  %conv256 = zext i8 %144 to i64
  %shl257 = shl i64 %conv256, 32
  %add258 = add i64 %add252, %shl257
  %145 = load i32, i32* %offset.addr, align 4
  %add259 = add nsw i32 %145, 4
  %idxprom260 = sext i32 %add259 to i64
  %146 = load i8*, i8** %s, align 8
  %arrayidx261 = getelementptr inbounds i8, i8* %146, i64 %idxprom260
  %147 = load i8, i8* %arrayidx261, align 1
  %conv262 = zext i8 %147 to i64
  %shl263 = shl i64 %conv262, 24
  %add264 = add i64 %add258, %shl263
  %148 = load i32, i32* %offset.addr, align 4
  %add265 = add nsw i32 %148, 5
  %idxprom266 = sext i32 %add265 to i64
  %149 = load i8*, i8** %s, align 8
  %arrayidx267 = getelementptr inbounds i8, i8* %149, i64 %idxprom266
  %150 = load i8, i8* %arrayidx267, align 1
  %conv268 = zext i8 %150 to i64
  %shl269 = shl i64 %conv268, 16
  %add270 = add i64 %add264, %shl269
  store i64 %add270, i64* %retnum, align 8
  br label %if.end.313

if.else.271:                                      ; preds = %if.else.231
  %151 = load i32, i32* %offset.addr, align 4
  %idxprom272 = sext i32 %151 to i64
  %152 = load i8*, i8** %s, align 8
  %arrayidx273 = getelementptr inbounds i8, i8* %152, i64 %idxprom272
  %153 = load i8, i8* %arrayidx273, align 1
  %conv274 = zext i8 %153 to i64
  %shl275 = shl i64 %conv274, 56
  %154 = load i32, i32* %offset.addr, align 4
  %add276 = add nsw i32 %154, 1
  %idxprom277 = sext i32 %add276 to i64
  %155 = load i8*, i8** %s, align 8
  %arrayidx278 = getelementptr inbounds i8, i8* %155, i64 %idxprom277
  %156 = load i8, i8* %arrayidx278, align 1
  %conv279 = zext i8 %156 to i64
  %shl280 = shl i64 %conv279, 48
  %add281 = add i64 %shl275, %shl280
  %157 = load i32, i32* %offset.addr, align 4
  %add282 = add nsw i32 %157, 2
  %idxprom283 = sext i32 %add282 to i64
  %158 = load i8*, i8** %s, align 8
  %arrayidx284 = getelementptr inbounds i8, i8* %158, i64 %idxprom283
  %159 = load i8, i8* %arrayidx284, align 1
  %conv285 = zext i8 %159 to i64
  %shl286 = shl i64 %conv285, 40
  %add287 = add i64 %add281, %shl286
  %160 = load i32, i32* %offset.addr, align 4
  %add288 = add nsw i32 %160, 3
  %idxprom289 = sext i32 %add288 to i64
  %161 = load i8*, i8** %s, align 8
  %arrayidx290 = getelementptr inbounds i8, i8* %161, i64 %idxprom289
  %162 = load i8, i8* %arrayidx290, align 1
  %conv291 = zext i8 %162 to i64
  %shl292 = shl i64 %conv291, 32
  %add293 = add i64 %add287, %shl292
  %163 = load i32, i32* %offset.addr, align 4
  %add294 = add nsw i32 %163, 4
  %idxprom295 = sext i32 %add294 to i64
  %164 = load i8*, i8** %s, align 8
  %arrayidx296 = getelementptr inbounds i8, i8* %164, i64 %idxprom295
  %165 = load i8, i8* %arrayidx296, align 1
  %conv297 = zext i8 %165 to i64
  %shl298 = shl i64 %conv297, 24
  %add299 = add i64 %add293, %shl298
  %166 = load i32, i32* %offset.addr, align 4
  %add300 = add nsw i32 %166, 5
  %idxprom301 = sext i32 %add300 to i64
  %167 = load i8*, i8** %s, align 8
  %arrayidx302 = getelementptr inbounds i8, i8* %167, i64 %idxprom301
  %168 = load i8, i8* %arrayidx302, align 1
  %conv303 = zext i8 %168 to i64
  %shl304 = shl i64 %conv303, 16
  %add305 = add i64 %add299, %shl304
  %169 = load i32, i32* %offset.addr, align 4
  %add306 = add nsw i32 %169, 6
  %idxprom307 = sext i32 %add306 to i64
  %170 = load i8*, i8** %s, align 8
  %arrayidx308 = getelementptr inbounds i8, i8* %170, i64 %idxprom307
  %171 = load i8, i8* %arrayidx308, align 1
  %conv309 = zext i8 %171 to i32
  %shl310 = shl i32 %conv309, 8
  %conv311 = sext i32 %shl310 to i64
  %add312 = add i64 %add305, %conv311
  store i64 %add312, i64* %retnum, align 8
  br label %if.end.313

if.end.313:                                       ; preds = %if.else.271, %if.then.236
  br label %if.end.314

if.end.314:                                       ; preds = %if.end.313, %if.then.201
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.314, %if.then.173
  br label %if.end.316

if.end.316:                                       ; preds = %if.end.315, %if.then.151
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.316, %if.then.135
  br label %if.end.318

if.end.318:                                       ; preds = %if.end.317, %if.then.125
  br label %if.end.319

if.end.319:                                       ; preds = %if.end.318, %if.then.119
  br label %if.end.320

if.end.320:                                       ; preds = %if.end.319, %if.else.85
  br label %if.end.321

if.end.321:                                       ; preds = %if.end.320, %if.end.84
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.321, %if.end.29
  br label %if.end.323

if.end.323:                                       ; preds = %if.end.322, %if.then.19
  br label %if.end.469

if.else.324:                                      ; preds = %if.end.12
  %172 = load i32, i32* %size.addr, align 4
  %cmp325 = icmp slt i32 %172, 8
  br i1 %cmp325, label %if.then.327, label %if.else.338

if.then.327:                                      ; preds = %if.else.324
  %173 = load i32, i32* %offset.addr, align 4
  %shr328 = ashr i32 %173, 3
  %idxprom329 = sext i32 %shr328 to i64
  %174 = load i8*, i8** %s, align 8
  %arrayidx330 = getelementptr inbounds i8, i8* %174, i64 %idxprom329
  %175 = load i8, i8* %arrayidx330, align 1
  %conv331 = zext i8 %175 to i32
  %176 = load i32, i32* %offset.addr, align 4
  %and332 = and i32 %176, 7
  %shr333 = ashr i32 %conv331, %and332
  %177 = load i32, i32* %size.addr, align 4
  %shl334 = shl i32 1, %177
  %sub335 = sub nsw i32 %shl334, 1
  %and336 = and i32 %shr333, %sub335
  %conv337 = sext i32 %and336 to i64
  store i64 %conv337, i64* %retnum, align 8
  br label %if.end.468

if.else.338:                                      ; preds = %if.else.324
  %178 = load i32, i32* %offset.addr, align 4
  %shr339 = ashr i32 %178, 3
  store i32 %shr339, i32* %offset.addr, align 4
  %179 = load i32, i32* %size.addr, align 4
  %cmp340 = icmp eq i32 %179, 8
  br i1 %cmp340, label %if.then.342, label %if.else.346

if.then.342:                                      ; preds = %if.else.338
  %180 = load i32, i32* %offset.addr, align 4
  %idxprom343 = sext i32 %180 to i64
  %181 = load i8*, i8** %s, align 8
  %arrayidx344 = getelementptr inbounds i8, i8* %181, i64 %idxprom343
  %182 = load i8, i8* %arrayidx344, align 1
  %conv345 = zext i8 %182 to i64
  store i64 %conv345, i64* %retnum, align 8
  br label %if.end.467

if.else.346:                                      ; preds = %if.else.338
  %183 = load i32, i32* %size.addr, align 4
  %cmp347 = icmp eq i32 %183, 16
  br i1 %cmp347, label %if.then.349, label %if.else.359

if.then.349:                                      ; preds = %if.else.346
  %184 = load i32, i32* %offset.addr, align 4
  %idxprom350 = sext i32 %184 to i64
  %185 = load i8*, i8** %s, align 8
  %arrayidx351 = getelementptr inbounds i8, i8* %185, i64 %idxprom350
  %186 = load i8, i8* %arrayidx351, align 1
  %conv352 = zext i8 %186 to i64
  %shl353 = shl i64 %conv352, 8
  %187 = load i32, i32* %offset.addr, align 4
  %add354 = add nsw i32 %187, 1
  %idxprom355 = sext i32 %add354 to i64
  %188 = load i8*, i8** %s, align 8
  %arrayidx356 = getelementptr inbounds i8, i8* %188, i64 %idxprom355
  %189 = load i8, i8* %arrayidx356, align 1
  %conv357 = zext i8 %189 to i64
  %add358 = add i64 %shl353, %conv357
  store i64 %add358, i64* %retnum, align 8
  br label %if.end.466

if.else.359:                                      ; preds = %if.else.346
  %190 = load i32, i32* %size.addr, align 4
  %cmp360 = icmp eq i32 %190, 32
  br i1 %cmp360, label %if.then.362, label %if.else.385

if.then.362:                                      ; preds = %if.else.359
  %191 = load i32, i32* %offset.addr, align 4
  %idxprom363 = sext i32 %191 to i64
  %192 = load i8*, i8** %s, align 8
  %arrayidx364 = getelementptr inbounds i8, i8* %192, i64 %idxprom363
  %193 = load i8, i8* %arrayidx364, align 1
  %conv365 = zext i8 %193 to i64
  %shl366 = shl i64 %conv365, 24
  %194 = load i32, i32* %offset.addr, align 4
  %add367 = add nsw i32 %194, 1
  %idxprom368 = sext i32 %add367 to i64
  %195 = load i8*, i8** %s, align 8
  %arrayidx369 = getelementptr inbounds i8, i8* %195, i64 %idxprom368
  %196 = load i8, i8* %arrayidx369, align 1
  %conv370 = zext i8 %196 to i64
  %shl371 = shl i64 %conv370, 16
  %add372 = add i64 %shl366, %shl371
  %197 = load i32, i32* %offset.addr, align 4
  %add373 = add nsw i32 %197, 2
  %idxprom374 = sext i32 %add373 to i64
  %198 = load i8*, i8** %s, align 8
  %arrayidx375 = getelementptr inbounds i8, i8* %198, i64 %idxprom374
  %199 = load i8, i8* %arrayidx375, align 1
  %conv376 = zext i8 %199 to i32
  %shl377 = shl i32 %conv376, 8
  %conv378 = sext i32 %shl377 to i64
  %add379 = add i64 %add372, %conv378
  %200 = load i32, i32* %offset.addr, align 4
  %add380 = add nsw i32 %200, 3
  %idxprom381 = sext i32 %add380 to i64
  %201 = load i8*, i8** %s, align 8
  %arrayidx382 = getelementptr inbounds i8, i8* %201, i64 %idxprom381
  %202 = load i8, i8* %arrayidx382, align 1
  %conv383 = zext i8 %202 to i64
  %add384 = add i64 %add379, %conv383
  store i64 %add384, i64* %retnum, align 8
  br label %if.end.465

if.else.385:                                      ; preds = %if.else.359
  %203 = load i32, i32* %size.addr, align 4
  %cmp386 = icmp eq i32 %203, 64
  br i1 %cmp386, label %if.then.388, label %if.end.464

if.then.388:                                      ; preds = %if.else.385
  %204 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings389 = getelementptr inbounds %struct.cop, %struct.cop* %204, i32 0, i32 14
  %205 = load %struct.sv*, %struct.sv** %cop_warnings389, align 8
  %cmp390 = icmp ne %struct.sv* %205, null
  br i1 %cmp390, label %land.lhs.true.392, label %lor.lhs.false.408

land.lhs.true.392:                                ; preds = %if.then.388
  %206 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings393 = getelementptr inbounds %struct.cop, %struct.cop* %206, i32 0, i32 14
  %207 = load %struct.sv*, %struct.sv** %cop_warnings393, align 8
  %cmp394 = icmp ne %struct.sv* %207, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp394, label %land.lhs.true.396, label %lor.lhs.false.408

land.lhs.true.396:                                ; preds = %land.lhs.true.392
  %208 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings397 = getelementptr inbounds %struct.cop, %struct.cop* %208, i32 0, i32 14
  %209 = load %struct.sv*, %struct.sv** %cop_warnings397, align 8
  %cmp398 = icmp eq %struct.sv* %209, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp398, label %if.then.416, label %lor.lhs.false.400

lor.lhs.false.400:                                ; preds = %land.lhs.true.396
  %210 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings401 = getelementptr inbounds %struct.cop, %struct.cop* %210, i32 0, i32 14
  %211 = load %struct.sv*, %struct.sv** %cop_warnings401, align 8
  %sv_any402 = getelementptr inbounds %struct.sv, %struct.sv* %211, i32 0, i32 0
  %212 = load i8*, i8** %sv_any402, align 8
  %213 = bitcast i8* %212 to %struct.xpv*
  %xpv_pv403 = getelementptr inbounds %struct.xpv, %struct.xpv* %213, i32 0, i32 0
  %214 = load i8*, i8** %xpv_pv403, align 8
  %arrayidx404 = getelementptr inbounds i8, i8* %214, i64 4
  %215 = load i8, i8* %arrayidx404, align 1
  %conv405 = sext i8 %215 to i32
  %and406 = and i32 %conv405, 4
  %tobool407 = icmp ne i32 %and406, 0
  br i1 %tobool407, label %if.then.416, label %lor.lhs.false.408

lor.lhs.false.408:                                ; preds = %lor.lhs.false.400, %land.lhs.true.392, %if.then.388
  %216 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings409 = getelementptr inbounds %struct.cop, %struct.cop* %216, i32 0, i32 14
  %217 = load %struct.sv*, %struct.sv** %cop_warnings409, align 8
  %cmp410 = icmp eq %struct.sv* %217, null
  br i1 %cmp410, label %land.lhs.true.412, label %if.end.417

land.lhs.true.412:                                ; preds = %lor.lhs.false.408
  %218 = load i8, i8* @PL_dowarn, align 1
  %conv413 = zext i8 %218 to i32
  %and414 = and i32 %conv413, 1
  %tobool415 = icmp ne i32 %and414, 0
  br i1 %tobool415, label %if.then.416, label %if.end.417

if.then.416:                                      ; preds = %land.lhs.true.412, %lor.lhs.false.400, %land.lhs.true.396
  call void (i32, i8*, ...) @Perl_warner(i32 17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.417

if.end.417:                                       ; preds = %if.then.416, %land.lhs.true.412, %lor.lhs.false.408
  %219 = load i32, i32* %offset.addr, align 4
  %idxprom418 = sext i32 %219 to i64
  %220 = load i8*, i8** %s, align 8
  %arrayidx419 = getelementptr inbounds i8, i8* %220, i64 %idxprom418
  %221 = load i8, i8* %arrayidx419, align 1
  %conv420 = zext i8 %221 to i64
  %shl421 = shl i64 %conv420, 56
  %222 = load i32, i32* %offset.addr, align 4
  %add422 = add nsw i32 %222, 1
  %idxprom423 = sext i32 %add422 to i64
  %223 = load i8*, i8** %s, align 8
  %arrayidx424 = getelementptr inbounds i8, i8* %223, i64 %idxprom423
  %224 = load i8, i8* %arrayidx424, align 1
  %conv425 = zext i8 %224 to i64
  %shl426 = shl i64 %conv425, 48
  %add427 = add i64 %shl421, %shl426
  %225 = load i32, i32* %offset.addr, align 4
  %add428 = add nsw i32 %225, 2
  %idxprom429 = sext i32 %add428 to i64
  %226 = load i8*, i8** %s, align 8
  %arrayidx430 = getelementptr inbounds i8, i8* %226, i64 %idxprom429
  %227 = load i8, i8* %arrayidx430, align 1
  %conv431 = zext i8 %227 to i64
  %shl432 = shl i64 %conv431, 40
  %add433 = add i64 %add427, %shl432
  %228 = load i32, i32* %offset.addr, align 4
  %add434 = add nsw i32 %228, 3
  %idxprom435 = sext i32 %add434 to i64
  %229 = load i8*, i8** %s, align 8
  %arrayidx436 = getelementptr inbounds i8, i8* %229, i64 %idxprom435
  %230 = load i8, i8* %arrayidx436, align 1
  %conv437 = zext i8 %230 to i64
  %shl438 = shl i64 %conv437, 32
  %add439 = add i64 %add433, %shl438
  %231 = load i32, i32* %offset.addr, align 4
  %add440 = add nsw i32 %231, 4
  %idxprom441 = sext i32 %add440 to i64
  %232 = load i8*, i8** %s, align 8
  %arrayidx442 = getelementptr inbounds i8, i8* %232, i64 %idxprom441
  %233 = load i8, i8* %arrayidx442, align 1
  %conv443 = zext i8 %233 to i64
  %shl444 = shl i64 %conv443, 24
  %add445 = add i64 %add439, %shl444
  %234 = load i32, i32* %offset.addr, align 4
  %add446 = add nsw i32 %234, 5
  %idxprom447 = sext i32 %add446 to i64
  %235 = load i8*, i8** %s, align 8
  %arrayidx448 = getelementptr inbounds i8, i8* %235, i64 %idxprom447
  %236 = load i8, i8* %arrayidx448, align 1
  %conv449 = zext i8 %236 to i64
  %shl450 = shl i64 %conv449, 16
  %add451 = add i64 %add445, %shl450
  %237 = load i32, i32* %offset.addr, align 4
  %add452 = add nsw i32 %237, 6
  %idxprom453 = sext i32 %add452 to i64
  %238 = load i8*, i8** %s, align 8
  %arrayidx454 = getelementptr inbounds i8, i8* %238, i64 %idxprom453
  %239 = load i8, i8* %arrayidx454, align 1
  %conv455 = zext i8 %239 to i32
  %shl456 = shl i32 %conv455, 8
  %conv457 = sext i32 %shl456 to i64
  %add458 = add i64 %add451, %conv457
  %240 = load i32, i32* %offset.addr, align 4
  %add459 = add nsw i32 %240, 7
  %idxprom460 = sext i32 %add459 to i64
  %241 = load i8*, i8** %s, align 8
  %arrayidx461 = getelementptr inbounds i8, i8* %241, i64 %idxprom460
  %242 = load i8, i8* %arrayidx461, align 1
  %conv462 = zext i8 %242 to i64
  %add463 = add i64 %add458, %conv462
  store i64 %add463, i64* %retnum, align 8
  br label %if.end.464

if.end.464:                                       ; preds = %if.end.417, %if.else.385
  br label %if.end.465

if.end.465:                                       ; preds = %if.end.464, %if.then.362
  br label %if.end.466

if.end.466:                                       ; preds = %if.end.465, %if.then.349
  br label %if.end.467

if.end.467:                                       ; preds = %if.end.466, %if.then.342
  br label %if.end.468

if.end.468:                                       ; preds = %if.end.467, %if.then.327
  br label %if.end.469

if.end.469:                                       ; preds = %if.end.468, %if.end.323
  %243 = load i64, i64* %retnum, align 8
  store i64 %243, i64* %retval
  br label %return

return:                                           ; preds = %if.end.469, %if.then
  %244 = load i64, i64* %retval
  ret i64 %244
}

declare signext i8 @Perl_sv_utf8_downgrade(%struct.sv*, i8 signext) #1

declare void @Perl_warner(i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @Perl_do_vecset(%struct.sv* %sv) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %targ = alloca %struct.sv*, align 8
  %offset = alloca i32, align 4
  %size = alloca i32, align 4
  %s = alloca i8*, align 8
  %lval = alloca i64, align 8
  %mask = alloca i32, align 4
  %targlen = alloca i64, align 8
  %len = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 0
  %1 = load i8*, i8** %sv_any, align 8
  %2 = bitcast i8* %1 to %struct.xpvlv*
  %xlv_targ = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %2, i32 0, i32 9
  %3 = load %struct.sv*, %struct.sv** %xlv_targ, align 8
  store %struct.sv* %3, %struct.sv** %targ, align 8
  %4 = load %struct.sv*, %struct.sv** %targ, align 8
  %tobool = icmp ne %struct.sv* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.208

if.end:                                           ; preds = %entry
  %5 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 2
  %6 = load i32, i32* %sv_flags, align 4
  %and = and i32 %6, 10223616
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 0
  %8 = load i8*, i8** %sv_any1, align 8
  %9 = bitcast i8* %8 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %9, i32 0, i32 1
  %10 = load i64, i64* %xpv_cur, align 8
  store i64 %10, i64* %targlen, align 8
  %11 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_any2 = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 0
  %12 = load i8*, i8** %sv_any2, align 8
  %13 = bitcast i8* %12 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %13, i32 0, i32 0
  %14 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %15 = load %struct.sv*, %struct.sv** %targ, align 8
  %call = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %15, i64* %targlen, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %14, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %s, align 8
  %16 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags3 = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags3, align 4
  %and4 = and i32 %17, 536870912
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %cond.end
  %18 = load %struct.sv*, %struct.sv** %targ, align 8
  %call7 = call signext i8 @Perl_sv_utf8_downgrade(%struct.sv* %18, i8 signext 1)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %cond.end
  %19 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags9 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 2
  %20 = load i32, i32* %sv_flags9, align 4
  %and10 = and i32 %20, 1223753727
  store i32 %and10, i32* %sv_flags9, align 4
  %21 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags11 = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 2
  %22 = load i32, i32* %sv_flags11, align 4
  %or = or i32 %22, 67371008
  store i32 %or, i32* %sv_flags11, align 4
  %23 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags12 = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 2
  %24 = load i32, i32* %sv_flags12, align 4
  %and13 = and i32 %24, 65536
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %if.end.8
  %25 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any16 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 0
  %26 = load i8*, i8** %sv_any16, align 8
  %27 = bitcast i8* %26 to %struct.xpvuv*
  %xuv_uv = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %27, i32 0, i32 3
  %28 = load i64, i64* %xuv_uv, align 8
  br label %cond.end.19

cond.false.17:                                    ; preds = %if.end.8
  %29 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call18 = call i64 @Perl_sv_2uv(%struct.sv* %29)
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.17, %cond.true.15
  %cond20 = phi i64 [ %28, %cond.true.15 ], [ %call18, %cond.false.17 ]
  store i64 %cond20, i64* %lval, align 8
  %30 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any21 = getelementptr inbounds %struct.sv, %struct.sv* %30, i32 0, i32 0
  %31 = load i8*, i8** %sv_any21, align 8
  %32 = bitcast i8* %31 to %struct.xpvlv*
  %xlv_targoff = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %32, i32 0, i32 7
  %33 = load i64, i64* %xlv_targoff, align 8
  %conv = trunc i64 %33 to i32
  store i32 %conv, i32* %offset, align 4
  %34 = load i32, i32* %offset, align 4
  %cmp22 = icmp slt i32 %34, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %cond.end.19
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %cond.end.19
  %35 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any26 = getelementptr inbounds %struct.sv, %struct.sv* %35, i32 0, i32 0
  %36 = load i8*, i8** %sv_any26, align 8
  %37 = bitcast i8* %36 to %struct.xpvlv*
  %xlv_targlen = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %37, i32 0, i32 8
  %38 = load i64, i64* %xlv_targlen, align 8
  %conv27 = trunc i64 %38 to i32
  store i32 %conv27, i32* %size, align 4
  %39 = load i32, i32* %size, align 4
  %cmp28 = icmp slt i32 %39, 1
  br i1 %cmp28, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.25
  %40 = load i32, i32* %size, align 4
  %41 = load i32, i32* %size, align 4
  %sub = sub nsw i32 %41, 1
  %and30 = and i32 %40, %sub
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false, %if.end.25
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %lor.lhs.false
  %42 = load i32, i32* %size, align 4
  %43 = load i32, i32* %offset, align 4
  %mul = mul nsw i32 %43, %42
  store i32 %mul, i32* %offset, align 4
  %44 = load i32, i32* %offset, align 4
  %45 = load i32, i32* %size, align 4
  %add = add nsw i32 %44, %45
  %add34 = add nsw i32 %add, 7
  %div = sdiv i32 %add34, 8
  %conv35 = sext i32 %div to i64
  store i64 %conv35, i64* %len, align 8
  %46 = load i64, i64* %len, align 8
  %47 = load i64, i64* %targlen, align 8
  %cmp36 = icmp ugt i64 %46, %47
  br i1 %cmp36, label %if.then.38, label %if.end.55

if.then.38:                                       ; preds = %if.end.33
  %48 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_any39 = getelementptr inbounds %struct.sv, %struct.sv* %48, i32 0, i32 0
  %49 = load i8*, i8** %sv_any39, align 8
  %50 = bitcast i8* %49 to %struct.xpv*
  %xpv_len = getelementptr inbounds %struct.xpv, %struct.xpv* %50, i32 0, i32 2
  %51 = load i64, i64* %xpv_len, align 8
  %52 = load i64, i64* %len, align 8
  %add40 = add i64 %52, 1
  %cmp41 = icmp ult i64 %51, %add40
  br i1 %cmp41, label %cond.true.43, label %cond.false.46

cond.true.43:                                     ; preds = %if.then.38
  %53 = load %struct.sv*, %struct.sv** %targ, align 8
  %54 = load i64, i64* %len, align 8
  %add44 = add i64 %54, 1
  %call45 = call i8* @Perl_sv_grow(%struct.sv* %53, i64 %add44)
  br label %cond.end.49

cond.false.46:                                    ; preds = %if.then.38
  %55 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_any47 = getelementptr inbounds %struct.sv, %struct.sv* %55, i32 0, i32 0
  %56 = load i8*, i8** %sv_any47, align 8
  %57 = bitcast i8* %56 to %struct.xpv*
  %xpv_pv48 = getelementptr inbounds %struct.xpv, %struct.xpv* %57, i32 0, i32 0
  %58 = load i8*, i8** %xpv_pv48, align 8
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.46, %cond.true.43
  %cond50 = phi i8* [ %call45, %cond.true.43 ], [ %58, %cond.false.46 ]
  store i8* %cond50, i8** %s, align 8
  %59 = load i8*, i8** %s, align 8
  %60 = load i64, i64* %targlen, align 8
  %add.ptr = getelementptr inbounds i8, i8* %59, i64 %60
  %61 = load i64, i64* %len, align 8
  %62 = load i64, i64* %targlen, align 8
  %sub51 = sub i64 %61, %62
  %add52 = add i64 %sub51, 1
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 %add52, i32 1, i1 false)
  %63 = load i64, i64* %len, align 8
  %64 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_any53 = getelementptr inbounds %struct.sv, %struct.sv* %64, i32 0, i32 0
  %65 = load i8*, i8** %sv_any53, align 8
  %66 = bitcast i8* %65 to %struct.xpv*
  %xpv_cur54 = getelementptr inbounds %struct.xpv, %struct.xpv* %66, i32 0, i32 1
  store i64 %63, i64* %xpv_cur54, align 8
  store i64 %63, i64* %tmp
  %67 = load i64, i64* %tmp
  br label %if.end.55

if.end.55:                                        ; preds = %cond.end.49, %if.end.33
  %68 = load i32, i32* %size, align 4
  %cmp56 = icmp slt i32 %68, 8
  br i1 %cmp56, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %if.end.55
  %69 = load i32, i32* %size, align 4
  %shl = shl i32 1, %69
  %sub59 = sub nsw i32 %shl, 1
  store i32 %sub59, i32* %mask, align 4
  %70 = load i32, i32* %offset, align 4
  %and60 = and i32 %70, 7
  store i32 %and60, i32* %size, align 4
  %71 = load i32, i32* %mask, align 4
  %conv61 = sext i32 %71 to i64
  %72 = load i64, i64* %lval, align 8
  %and62 = and i64 %72, %conv61
  store i64 %and62, i64* %lval, align 8
  %73 = load i32, i32* %offset, align 4
  %shr = ashr i32 %73, 3
  store i32 %shr, i32* %offset, align 4
  %74 = load i32, i32* %mask, align 4
  %75 = load i32, i32* %size, align 4
  %shl63 = shl i32 %74, %75
  %neg = xor i32 %shl63, -1
  %76 = load i32, i32* %offset, align 4
  %idxprom = sext i32 %76 to i64
  %77 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %77, i64 %idxprom
  %78 = load i8, i8* %arrayidx, align 1
  %conv64 = zext i8 %78 to i32
  %and65 = and i32 %conv64, %neg
  %conv66 = trunc i32 %and65 to i8
  store i8 %conv66, i8* %arrayidx, align 1
  %79 = load i64, i64* %lval, align 8
  %80 = load i32, i32* %size, align 4
  %sh_prom = zext i32 %80 to i64
  %shl67 = shl i64 %79, %sh_prom
  %81 = load i32, i32* %offset, align 4
  %idxprom68 = sext i32 %81 to i64
  %82 = load i8*, i8** %s, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %82, i64 %idxprom68
  %83 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %83 to i64
  %or71 = or i64 %conv70, %shl67
  %conv72 = trunc i64 %or71 to i8
  store i8 %conv72, i8* %arrayidx69, align 1
  br label %if.end.202

if.else:                                          ; preds = %if.end.55
  %84 = load i32, i32* %offset, align 4
  %shr73 = ashr i32 %84, 3
  store i32 %shr73, i32* %offset, align 4
  %85 = load i32, i32* %size, align 4
  %cmp74 = icmp eq i32 %85, 8
  br i1 %cmp74, label %if.then.76, label %if.else.81

if.then.76:                                       ; preds = %if.else
  %86 = load i64, i64* %lval, align 8
  %and77 = and i64 %86, 255
  %conv78 = trunc i64 %and77 to i8
  %87 = load i32, i32* %offset, align 4
  %idxprom79 = sext i32 %87 to i64
  %88 = load i8*, i8** %s, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %88, i64 %idxprom79
  store i8 %conv78, i8* %arrayidx80, align 1
  br label %if.end.201

if.else.81:                                       ; preds = %if.else
  %89 = load i32, i32* %size, align 4
  %cmp82 = icmp eq i32 %89, 16
  br i1 %cmp82, label %if.then.84, label %if.else.95

if.then.84:                                       ; preds = %if.else.81
  %90 = load i64, i64* %lval, align 8
  %shr85 = lshr i64 %90, 8
  %and86 = and i64 %shr85, 255
  %conv87 = trunc i64 %and86 to i8
  %91 = load i32, i32* %offset, align 4
  %idxprom88 = sext i32 %91 to i64
  %92 = load i8*, i8** %s, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %92, i64 %idxprom88
  store i8 %conv87, i8* %arrayidx89, align 1
  %93 = load i64, i64* %lval, align 8
  %and90 = and i64 %93, 255
  %conv91 = trunc i64 %and90 to i8
  %94 = load i32, i32* %offset, align 4
  %add92 = add nsw i32 %94, 1
  %idxprom93 = sext i32 %add92 to i64
  %95 = load i8*, i8** %s, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %95, i64 %idxprom93
  store i8 %conv91, i8* %arrayidx94, align 1
  br label %if.end.200

if.else.95:                                       ; preds = %if.else.81
  %96 = load i32, i32* %size, align 4
  %cmp96 = icmp eq i32 %96, 32
  br i1 %cmp96, label %if.then.98, label %if.else.121

if.then.98:                                       ; preds = %if.else.95
  %97 = load i64, i64* %lval, align 8
  %shr99 = lshr i64 %97, 24
  %and100 = and i64 %shr99, 255
  %conv101 = trunc i64 %and100 to i8
  %98 = load i32, i32* %offset, align 4
  %idxprom102 = sext i32 %98 to i64
  %99 = load i8*, i8** %s, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %99, i64 %idxprom102
  store i8 %conv101, i8* %arrayidx103, align 1
  %100 = load i64, i64* %lval, align 8
  %shr104 = lshr i64 %100, 16
  %and105 = and i64 %shr104, 255
  %conv106 = trunc i64 %and105 to i8
  %101 = load i32, i32* %offset, align 4
  %add107 = add nsw i32 %101, 1
  %idxprom108 = sext i32 %add107 to i64
  %102 = load i8*, i8** %s, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %102, i64 %idxprom108
  store i8 %conv106, i8* %arrayidx109, align 1
  %103 = load i64, i64* %lval, align 8
  %shr110 = lshr i64 %103, 8
  %and111 = and i64 %shr110, 255
  %conv112 = trunc i64 %and111 to i8
  %104 = load i32, i32* %offset, align 4
  %add113 = add nsw i32 %104, 2
  %idxprom114 = sext i32 %add113 to i64
  %105 = load i8*, i8** %s, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %105, i64 %idxprom114
  store i8 %conv112, i8* %arrayidx115, align 1
  %106 = load i64, i64* %lval, align 8
  %and116 = and i64 %106, 255
  %conv117 = trunc i64 %and116 to i8
  %107 = load i32, i32* %offset, align 4
  %add118 = add nsw i32 %107, 3
  %idxprom119 = sext i32 %add118 to i64
  %108 = load i8*, i8** %s, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %108, i64 %idxprom119
  store i8 %conv117, i8* %arrayidx120, align 1
  br label %if.end.199

if.else.121:                                      ; preds = %if.else.95
  %109 = load i32, i32* %size, align 4
  %cmp122 = icmp eq i32 %109, 64
  br i1 %cmp122, label %if.then.124, label %if.end.198

if.then.124:                                      ; preds = %if.else.121
  %110 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %110, i32 0, i32 14
  %111 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp125 = icmp ne %struct.sv* %111, null
  br i1 %cmp125, label %land.lhs.true, label %lor.lhs.false.142

land.lhs.true:                                    ; preds = %if.then.124
  %112 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings127 = getelementptr inbounds %struct.cop, %struct.cop* %112, i32 0, i32 14
  %113 = load %struct.sv*, %struct.sv** %cop_warnings127, align 8
  %cmp128 = icmp ne %struct.sv* %113, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp128, label %land.lhs.true.130, label %lor.lhs.false.142

land.lhs.true.130:                                ; preds = %land.lhs.true
  %114 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings131 = getelementptr inbounds %struct.cop, %struct.cop* %114, i32 0, i32 14
  %115 = load %struct.sv*, %struct.sv** %cop_warnings131, align 8
  %cmp132 = icmp eq %struct.sv* %115, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp132, label %if.then.150, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %land.lhs.true.130
  %116 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings135 = getelementptr inbounds %struct.cop, %struct.cop* %116, i32 0, i32 14
  %117 = load %struct.sv*, %struct.sv** %cop_warnings135, align 8
  %sv_any136 = getelementptr inbounds %struct.sv, %struct.sv* %117, i32 0, i32 0
  %118 = load i8*, i8** %sv_any136, align 8
  %119 = bitcast i8* %118 to %struct.xpv*
  %xpv_pv137 = getelementptr inbounds %struct.xpv, %struct.xpv* %119, i32 0, i32 0
  %120 = load i8*, i8** %xpv_pv137, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %120, i64 4
  %121 = load i8, i8* %arrayidx138, align 1
  %conv139 = sext i8 %121 to i32
  %and140 = and i32 %conv139, 4
  %tobool141 = icmp ne i32 %and140, 0
  br i1 %tobool141, label %if.then.150, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %lor.lhs.false.134, %land.lhs.true, %if.then.124
  %122 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings143 = getelementptr inbounds %struct.cop, %struct.cop* %122, i32 0, i32 14
  %123 = load %struct.sv*, %struct.sv** %cop_warnings143, align 8
  %cmp144 = icmp eq %struct.sv* %123, null
  br i1 %cmp144, label %land.lhs.true.146, label %if.end.151

land.lhs.true.146:                                ; preds = %lor.lhs.false.142
  %124 = load i8, i8* @PL_dowarn, align 1
  %conv147 = zext i8 %124 to i32
  %and148 = and i32 %conv147, 1
  %tobool149 = icmp ne i32 %and148, 0
  br i1 %tobool149, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %land.lhs.true.146, %lor.lhs.false.134, %land.lhs.true.130
  call void (i32, i8*, ...) @Perl_warner(i32 17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %land.lhs.true.146, %lor.lhs.false.142
  %125 = load i64, i64* %lval, align 8
  %shr152 = lshr i64 %125, 56
  %and153 = and i64 %shr152, 255
  %conv154 = trunc i64 %and153 to i8
  %126 = load i32, i32* %offset, align 4
  %idxprom155 = sext i32 %126 to i64
  %127 = load i8*, i8** %s, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %127, i64 %idxprom155
  store i8 %conv154, i8* %arrayidx156, align 1
  %128 = load i64, i64* %lval, align 8
  %shr157 = lshr i64 %128, 48
  %and158 = and i64 %shr157, 255
  %conv159 = trunc i64 %and158 to i8
  %129 = load i32, i32* %offset, align 4
  %add160 = add nsw i32 %129, 1
  %idxprom161 = sext i32 %add160 to i64
  %130 = load i8*, i8** %s, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %130, i64 %idxprom161
  store i8 %conv159, i8* %arrayidx162, align 1
  %131 = load i64, i64* %lval, align 8
  %shr163 = lshr i64 %131, 40
  %and164 = and i64 %shr163, 255
  %conv165 = trunc i64 %and164 to i8
  %132 = load i32, i32* %offset, align 4
  %add166 = add nsw i32 %132, 2
  %idxprom167 = sext i32 %add166 to i64
  %133 = load i8*, i8** %s, align 8
  %arrayidx168 = getelementptr inbounds i8, i8* %133, i64 %idxprom167
  store i8 %conv165, i8* %arrayidx168, align 1
  %134 = load i64, i64* %lval, align 8
  %shr169 = lshr i64 %134, 32
  %and170 = and i64 %shr169, 255
  %conv171 = trunc i64 %and170 to i8
  %135 = load i32, i32* %offset, align 4
  %add172 = add nsw i32 %135, 3
  %idxprom173 = sext i32 %add172 to i64
  %136 = load i8*, i8** %s, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %136, i64 %idxprom173
  store i8 %conv171, i8* %arrayidx174, align 1
  %137 = load i64, i64* %lval, align 8
  %shr175 = lshr i64 %137, 24
  %and176 = and i64 %shr175, 255
  %conv177 = trunc i64 %and176 to i8
  %138 = load i32, i32* %offset, align 4
  %add178 = add nsw i32 %138, 4
  %idxprom179 = sext i32 %add178 to i64
  %139 = load i8*, i8** %s, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %139, i64 %idxprom179
  store i8 %conv177, i8* %arrayidx180, align 1
  %140 = load i64, i64* %lval, align 8
  %shr181 = lshr i64 %140, 16
  %and182 = and i64 %shr181, 255
  %conv183 = trunc i64 %and182 to i8
  %141 = load i32, i32* %offset, align 4
  %add184 = add nsw i32 %141, 5
  %idxprom185 = sext i32 %add184 to i64
  %142 = load i8*, i8** %s, align 8
  %arrayidx186 = getelementptr inbounds i8, i8* %142, i64 %idxprom185
  store i8 %conv183, i8* %arrayidx186, align 1
  %143 = load i64, i64* %lval, align 8
  %shr187 = lshr i64 %143, 8
  %and188 = and i64 %shr187, 255
  %conv189 = trunc i64 %and188 to i8
  %144 = load i32, i32* %offset, align 4
  %add190 = add nsw i32 %144, 6
  %idxprom191 = sext i32 %add190 to i64
  %145 = load i8*, i8** %s, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %145, i64 %idxprom191
  store i8 %conv189, i8* %arrayidx192, align 1
  %146 = load i64, i64* %lval, align 8
  %and193 = and i64 %146, 255
  %conv194 = trunc i64 %and193 to i8
  %147 = load i32, i32* %offset, align 4
  %add195 = add nsw i32 %147, 7
  %idxprom196 = sext i32 %add195 to i64
  %148 = load i8*, i8** %s, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %148, i64 %idxprom196
  store i8 %conv194, i8* %arrayidx197, align 1
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.151, %if.else.121
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %if.then.98
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.then.84
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.then.76
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %if.then.58
  %149 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags203 = getelementptr inbounds %struct.sv, %struct.sv* %149, i32 0, i32 2
  %150 = load i32, i32* %sv_flags203, align 4
  %and204 = and i32 %150, 16384
  %tobool205 = icmp ne i32 %and204, 0
  br i1 %tobool205, label %if.then.206, label %if.end.208

if.then.206:                                      ; preds = %if.end.202
  %151 = load %struct.sv*, %struct.sv** %targ, align 8
  %call207 = call i32 @Perl_mg_set(%struct.sv* %151)
  br label %if.end.208

if.end.208:                                       ; preds = %if.then, %if.then.206, %if.end.202
  ret void
}

declare i64 @Perl_sv_2uv(%struct.sv*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @Perl_do_chop(%struct.sv* %astr, %struct.sv* %sv) #0 {
entry:
  %astr.addr = alloca %struct.sv*, align 8
  %sv.addr = alloca %struct.sv*, align 8
  %len = alloca i64, align 8
  %s = alloca i8*, align 8
  %i = alloca i32, align 4
  %max = alloca i32, align 4
  %av = alloca %struct.av*, align 8
  %hv = alloca %struct.hv*, align 8
  %entry16 = alloca %struct.he*, align 8
  %send = alloca i8*, align 8
  %start = alloca i8*, align 8
  %tmp = alloca i64, align 8
  %tmp116 = alloca i64, align 8
  store %struct.sv* %astr, %struct.sv** %astr.addr, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 255
  %cmp = icmp eq i32 %and, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %3 = bitcast %struct.sv* %2 to %struct.av*
  store %struct.av* %3, %struct.av** %av, align 8
  %4 = load %struct.av*, %struct.av** %av, align 8
  %5 = bitcast %struct.av* %4 to %struct.sv*
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 2
  %6 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %6, 32768
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load %struct.av*, %struct.av** %av, align 8
  %8 = bitcast %struct.av* %7 to %struct.sv*
  %call = call i32 @Perl_mg_size(%struct.sv* %8)
  %conv = sext i32 %call to i64
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %9 = load %struct.av*, %struct.av** %av, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %9, i32 0, i32 0
  %10 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %10, i32 0, i32 1
  %11 = load i64, i64* %xav_fill, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %11, %cond.false ]
  %conv3 = trunc i64 %cond to i32
  store i32 %conv3, i32* %max, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %max, align 4
  %cmp4 = icmp sle i32 %12, %13
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.av*, %struct.av** %av, align 8
  %15 = load i32, i32* %i, align 4
  %call6 = call %struct.sv** @Perl_av_fetch(%struct.av* %14, i32 %15, i32 0)
  %16 = bitcast %struct.sv** %call6 to %struct.sv*
  store %struct.sv* %16, %struct.sv** %sv.addr, align 8
  %17 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %tobool7 = icmp ne %struct.sv* %17, null
  br i1 %tobool7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %18 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %19 = bitcast %struct.sv* %18 to %struct.sv**
  %20 = load %struct.sv*, %struct.sv** %19, align 8
  store %struct.sv* %20, %struct.sv** %sv.addr, align 8
  %21 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %cmp8 = icmp ne %struct.sv* %21, @PL_sv_undef
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %land.lhs.true
  %22 = load %struct.sv*, %struct.sv** %astr.addr, align 8
  %23 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_do_chop(%struct.sv* %22, %struct.sv* %23)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.131

if.else:                                          ; preds = %entry
  %25 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags11 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 2
  %26 = load i32, i32* %sv_flags11, align 4
  %and12 = and i32 %26, 255
  %cmp13 = icmp eq i32 %and12, 11
  br i1 %cmp13, label %if.then.15, label %if.else.21

if.then.15:                                       ; preds = %if.else
  %27 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %28 = bitcast %struct.sv* %27 to %struct.hv*
  store %struct.hv* %28, %struct.hv** %hv, align 8
  %29 = load %struct.hv*, %struct.hv** %hv, align 8
  %call17 = call i32 @Perl_hv_iterinit(%struct.hv* %29)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.15
  %30 = load %struct.hv*, %struct.hv** %hv, align 8
  %call18 = call %struct.he* @Perl_hv_iternext(%struct.hv* %30)
  store %struct.he* %call18, %struct.he** %entry16, align 8
  %tobool19 = icmp ne %struct.he* %call18, null
  br i1 %tobool19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load %struct.sv*, %struct.sv** %astr.addr, align 8
  %32 = load %struct.hv*, %struct.hv** %hv, align 8
  %33 = load %struct.he*, %struct.he** %entry16, align 8
  %call20 = call %struct.sv* @Perl_hv_iterval(%struct.hv* %32, %struct.he* %33)
  call void @Perl_do_chop(%struct.sv* %31, %struct.sv* %call20)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.131

if.else.21:                                       ; preds = %if.else
  %34 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags22 = getelementptr inbounds %struct.sv, %struct.sv* %34, i32 0, i32 2
  %35 = load i32, i32* %sv_flags22, align 4
  %and23 = and i32 %35, 8388608
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.36

if.then.25:                                       ; preds = %if.else.21
  %36 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags26 = getelementptr inbounds %struct.sv, %struct.sv* %36, i32 0, i32 2
  %37 = load i32, i32* %sv_flags26, align 4
  %and27 = and i32 %37, 1048576
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.25
  %38 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_force_normal_flags(%struct.sv* %38, i32 0)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.then.25
  %39 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags31 = getelementptr inbounds %struct.sv, %struct.sv* %39, i32 0, i32 2
  %40 = load i32, i32* %sv_flags31, align 4
  %and32 = and i32 %40, 8388608
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.30
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_modify, i32 0, i32 0))
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.30
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.else.21
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37
  %41 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags39 = getelementptr inbounds %struct.sv, %struct.sv* %41, i32 0, i32 2
  %42 = load i32, i32* %sv_flags39, align 4
  %and40 = and i32 %42, 262144
  %cmp41 = icmp eq i32 %and40, 262144
  br i1 %cmp41, label %cond.true.43, label %cond.false.46

cond.true.43:                                     ; preds = %if.end.38
  %43 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any44 = getelementptr inbounds %struct.sv, %struct.sv* %43, i32 0, i32 0
  %44 = load i8*, i8** %sv_any44, align 8
  %45 = bitcast i8* %44 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %45, i32 0, i32 1
  %46 = load i64, i64* %xpv_cur, align 8
  store i64 %46, i64* %len, align 8
  %47 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any45 = getelementptr inbounds %struct.sv, %struct.sv* %47, i32 0, i32 0
  %48 = load i8*, i8** %sv_any45, align 8
  %49 = bitcast i8* %48 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %49, i32 0, i32 0
  %50 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.48

cond.false.46:                                    ; preds = %if.end.38
  %51 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call47 = call i8* @Perl_sv_2pv_flags(%struct.sv* %51, i64* %len, i32 2)
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.46, %cond.true.43
  %cond49 = phi i8* [ %50, %cond.true.43 ], [ %call47, %cond.false.46 ]
  store i8* %cond49, i8** %s, align 8
  %52 = load i64, i64* %len, align 8
  %tobool50 = icmp ne i64 %52, 0
  br i1 %tobool50, label %land.lhs.true.51, label %if.end.69

land.lhs.true.51:                                 ; preds = %cond.end.48
  %53 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags52 = getelementptr inbounds %struct.sv, %struct.sv* %53, i32 0, i32 2
  %54 = load i32, i32* %sv_flags52, align 4
  %and53 = and i32 %54, 262144
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.end.69, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true.51
  %55 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags56 = getelementptr inbounds %struct.sv, %struct.sv* %55, i32 0, i32 2
  %56 = load i32, i32* %sv_flags56, align 4
  %and57 = and i32 %56, 10223616
  %cmp58 = icmp eq i32 %and57, 262144
  br i1 %cmp58, label %cond.true.60, label %cond.false.65

cond.true.60:                                     ; preds = %if.then.55
  %57 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any61 = getelementptr inbounds %struct.sv, %struct.sv* %57, i32 0, i32 0
  %58 = load i8*, i8** %sv_any61, align 8
  %59 = bitcast i8* %58 to %struct.xpv*
  %xpv_cur62 = getelementptr inbounds %struct.xpv, %struct.xpv* %59, i32 0, i32 1
  %60 = load i64, i64* %xpv_cur62, align 8
  store i64 %60, i64* %len, align 8
  %61 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any63 = getelementptr inbounds %struct.sv, %struct.sv* %61, i32 0, i32 0
  %62 = load i8*, i8** %sv_any63, align 8
  %63 = bitcast i8* %62 to %struct.xpv*
  %xpv_pv64 = getelementptr inbounds %struct.xpv, %struct.xpv* %63, i32 0, i32 0
  %64 = load i8*, i8** %xpv_pv64, align 8
  br label %cond.end.67

cond.false.65:                                    ; preds = %if.then.55
  %65 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call66 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %65, i64* %len, i32 2)
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.65, %cond.true.60
  %cond68 = phi i8* [ %64, %cond.true.60 ], [ %call66, %cond.false.65 ]
  store i8* %cond68, i8** %s, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %cond.end.67, %land.lhs.true.51, %cond.end.48
  %66 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags70 = getelementptr inbounds %struct.sv, %struct.sv* %66, i32 0, i32 2
  %67 = load i32, i32* %sv_flags70, align 4
  %and71 = and i32 %67, 536870912
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %land.lhs.true.73, label %if.else.110

land.lhs.true.73:                                 ; preds = %if.end.69
  %68 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private = getelementptr inbounds %struct.cop, %struct.cop* %68, i32 0, i32 7
  %69 = load i8, i8* %op_private, align 1
  %conv74 = zext i8 %69 to i32
  %and75 = and i32 %conv74, 8
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.else.110, label %if.then.77

if.then.77:                                       ; preds = %land.lhs.true.73
  %70 = load i8*, i8** %s, align 8
  %tobool78 = icmp ne i8* %70, null
  br i1 %tobool78, label %land.lhs.true.79, label %if.else.108

land.lhs.true.79:                                 ; preds = %if.then.77
  %71 = load i64, i64* %len, align 8
  %tobool80 = icmp ne i64 %71, 0
  br i1 %tobool80, label %if.then.81, label %if.else.108

if.then.81:                                       ; preds = %land.lhs.true.79
  %72 = load i8*, i8** %s, align 8
  %73 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %add.ptr, i8** %send, align 8
  %74 = load i8*, i8** %s, align 8
  store i8* %74, i8** %start, align 8
  %75 = load i8*, i8** %send, align 8
  %add.ptr82 = getelementptr inbounds i8, i8* %75, i64 -1
  store i8* %add.ptr82, i8** %s, align 8
  br label %while.cond.83

while.cond.83:                                    ; preds = %while.body.94, %if.then.81
  %76 = load i8*, i8** %s, align 8
  %77 = load i8*, i8** %start, align 8
  %cmp84 = icmp ugt i8* %76, %77
  br i1 %cmp84, label %land.rhs, label %land.end.93

land.rhs:                                         ; preds = %while.cond.83
  %78 = load i8*, i8** %s, align 8
  %79 = load i8, i8* %78, align 1
  %conv86 = zext i8 %79 to i32
  %cmp87 = icmp sge i32 %conv86, 128
  br i1 %cmp87, label %land.rhs.89, label %land.end

land.rhs.89:                                      ; preds = %land.rhs
  %80 = load i8*, i8** %s, align 8
  %81 = load i8, i8* %80, align 1
  %conv90 = zext i8 %81 to i32
  %cmp91 = icmp sle i32 %conv90, 191
  br label %land.end

land.end:                                         ; preds = %land.rhs.89, %land.rhs
  %82 = phi i1 [ false, %land.rhs ], [ %cmp91, %land.rhs.89 ]
  br label %land.end.93

land.end.93:                                      ; preds = %land.end, %while.cond.83
  %83 = phi i1 [ false, %while.cond.83 ], [ %82, %land.end ]
  br i1 %83, label %while.body.94, label %while.end.95

while.body.94:                                    ; preds = %land.end.93
  %84 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %84, i32 -1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond.83

while.end.95:                                     ; preds = %land.end.93
  %85 = load i8*, i8** %s, align 8
  %call96 = call i64 @Perl_utf8_to_uvchr(i8* %85, i64* null)
  %tobool97 = icmp ne i64 %call96, 0
  br i1 %tobool97, label %if.then.98, label %if.end.107

if.then.98:                                       ; preds = %while.end.95
  %86 = load %struct.sv*, %struct.sv** %astr.addr, align 8
  %87 = load i8*, i8** %s, align 8
  %88 = load i8*, i8** %send, align 8
  %89 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %88 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %89 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @Perl_sv_setpvn(%struct.sv* %86, i8* %87, i64 %sub.ptr.sub)
  %90 = load i8*, i8** %s, align 8
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %s, align 8
  %92 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast99 = ptrtoint i8* %91 to i64
  %sub.ptr.rhs.cast100 = ptrtoint i8* %92 to i64
  %sub.ptr.sub101 = sub i64 %sub.ptr.lhs.cast99, %sub.ptr.rhs.cast100
  %93 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any102 = getelementptr inbounds %struct.sv, %struct.sv* %93, i32 0, i32 0
  %94 = load i8*, i8** %sv_any102, align 8
  %95 = bitcast i8* %94 to %struct.xpv*
  %xpv_cur103 = getelementptr inbounds %struct.xpv, %struct.xpv* %95, i32 0, i32 1
  store i64 %sub.ptr.sub101, i64* %xpv_cur103, align 8
  store i64 %sub.ptr.sub101, i64* %tmp
  %96 = load i64, i64* %tmp
  %97 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags104 = getelementptr inbounds %struct.sv, %struct.sv* %97, i32 0, i32 2
  %98 = load i32, i32* %sv_flags104, align 4
  %and105 = and i32 %98, 2096955391
  store i32 %and105, i32* %sv_flags104, align 4
  %99 = load %struct.sv*, %struct.sv** %astr.addr, align 8
  %sv_flags106 = getelementptr inbounds %struct.sv, %struct.sv* %99, i32 0, i32 2
  %100 = load i32, i32* %sv_flags106, align 4
  %or = or i32 %100, 536870912
  store i32 %or, i32* %sv_flags106, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.98, %while.end.95
  br label %if.end.109

if.else.108:                                      ; preds = %land.lhs.true.79, %if.then.77
  %101 = load %struct.sv*, %struct.sv** %astr.addr, align 8
  call void @Perl_sv_setpvn(%struct.sv* %101, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i64 0)
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.108, %if.end.107
  br label %if.end.125

if.else.110:                                      ; preds = %land.lhs.true.73, %if.end.69
  %102 = load i8*, i8** %s, align 8
  %tobool111 = icmp ne i8* %102, null
  br i1 %tobool111, label %land.lhs.true.112, label %if.else.123

land.lhs.true.112:                                ; preds = %if.else.110
  %103 = load i64, i64* %len, align 8
  %tobool113 = icmp ne i64 %103, 0
  br i1 %tobool113, label %if.then.114, label %if.else.123

if.then.114:                                      ; preds = %land.lhs.true.112
  %104 = load i64, i64* %len, align 8
  %dec = add i64 %104, -1
  store i64 %dec, i64* %len, align 8
  %105 = load i8*, i8** %s, align 8
  %add.ptr115 = getelementptr inbounds i8, i8* %105, i64 %dec
  store i8* %add.ptr115, i8** %s, align 8
  %106 = load %struct.sv*, %struct.sv** %astr.addr, align 8
  %107 = load i8*, i8** %s, align 8
  call void @Perl_sv_setpvn(%struct.sv* %106, i8* %107, i64 1)
  %108 = load i8*, i8** %s, align 8
  store i8 0, i8* %108, align 1
  %109 = load i64, i64* %len, align 8
  %110 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any117 = getelementptr inbounds %struct.sv, %struct.sv* %110, i32 0, i32 0
  %111 = load i8*, i8** %sv_any117, align 8
  %112 = bitcast i8* %111 to %struct.xpv*
  %xpv_cur118 = getelementptr inbounds %struct.xpv, %struct.xpv* %112, i32 0, i32 1
  store i64 %109, i64* %xpv_cur118, align 8
  store i64 %109, i64* %tmp116
  %113 = load i64, i64* %tmp116
  %114 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags119 = getelementptr inbounds %struct.sv, %struct.sv* %114, i32 0, i32 2
  %115 = load i32, i32* %sv_flags119, align 4
  %and120 = and i32 %115, -536870913
  store i32 %and120, i32* %sv_flags119, align 4
  %116 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags121 = getelementptr inbounds %struct.sv, %struct.sv* %116, i32 0, i32 2
  %117 = load i32, i32* %sv_flags121, align 4
  %and122 = and i32 %117, 2096955391
  store i32 %and122, i32* %sv_flags121, align 4
  br label %if.end.124

if.else.123:                                      ; preds = %land.lhs.true.112, %if.else.110
  %118 = load %struct.sv*, %struct.sv** %astr.addr, align 8
  call void @Perl_sv_setpvn(%struct.sv* %118, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i64 0)
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.123, %if.then.114
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.end.109
  %119 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags126 = getelementptr inbounds %struct.sv, %struct.sv* %119, i32 0, i32 2
  %120 = load i32, i32* %sv_flags126, align 4
  %and127 = and i32 %120, 16384
  %tobool128 = icmp ne i32 %and127, 0
  br i1 %tobool128, label %if.then.129, label %if.end.131

if.then.129:                                      ; preds = %if.end.125
  %121 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call130 = call i32 @Perl_mg_set(%struct.sv* %121)
  br label %if.end.131

if.end.131:                                       ; preds = %for.end, %while.end, %if.then.129, %if.end.125
  ret void
}

declare i32 @Perl_mg_size(%struct.sv*) #1

declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #1

declare i32 @Perl_hv_iterinit(%struct.hv*) #1

declare %struct.he* @Perl_hv_iternext(%struct.hv*) #1

declare %struct.sv* @Perl_hv_iterval(%struct.hv*, %struct.he*) #1

declare void @Perl_sv_force_normal_flags(%struct.sv*, i32) #1

declare i64 @Perl_utf8_to_uvchr(i8*, i64*) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_do_chomp(%struct.sv* %sv) #0 {
entry:
  %retval = alloca i32, align 4
  %sv.addr = alloca %struct.sv*, align 8
  %count = alloca i32, align 4
  %len = alloca i64, align 8
  %n_a = alloca i64, align 8
  %s = alloca i8*, align 8
  %temp_buffer = alloca i8*, align 8
  %svrecode = alloca %struct.sv*, align 8
  %i = alloca i32, align 4
  %max = alloca i32, align 4
  %av = alloca %struct.av*, align 8
  %hv = alloca %struct.hv*, align 8
  %entry43 = alloca %struct.he*, align 8
  %rslen = alloca i64, align 8
  %rs_charlen = alloca i64, align 8
  %rsptr = alloca i8*, align 8
  %is_utf8 = alloca i8, align 1
  %tmp = alloca i64, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i8* null, i8** %temp_buffer, align 8
  store %struct.sv* null, %struct.sv** %svrecode, align 8
  %0 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 118423552
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %3, 524288
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 0
  %5 = load i8*, i8** %sv_any, align 8
  %6 = bitcast i8* %5 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %6, i32 0, i32 0
  %7 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_flags4 = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 2
  %8 = load i32, i32* %sv_flags4, align 4
  %and5 = and i32 %8, 65536
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %9 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_any7 = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 0
  %10 = load i8*, i8** %sv_any7, align 8
  %11 = bitcast i8* %10 to %struct.xrv*
  %xrv_rv8 = getelementptr inbounds %struct.xrv, %struct.xrv* %11, i32 0, i32 0
  %12 = load %struct.sv*, %struct.sv** %xrv_rv8, align 8
  %sv_any9 = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 0
  %13 = load i8*, i8** %sv_any9, align 8
  %14 = bitcast i8* %13 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %14, i32 0, i32 3
  %15 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %16 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_any10 = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 0
  %17 = load i8*, i8** %sv_any10, align 8
  %18 = bitcast i8* %17 to %struct.xrv*
  %xrv_rv11 = getelementptr inbounds %struct.xrv, %struct.xrv* %18, i32 0, i32 0
  %19 = load %struct.sv*, %struct.sv** %xrv_rv11, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %19)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %15, %cond.true ], [ %call, %cond.false ]
  %cmp = icmp sgt i64 %cond, 0
  br i1 %cmp, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %cond.end
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %cond.end, %if.end
  store i32 0, i32* %count, align 4
  %20 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags14 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 2
  %21 = load i32, i32* %sv_flags14, align 4
  %and15 = and i32 %21, 255
  %cmp16 = icmp eq i32 %and15, 10
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.13
  %22 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %23 = bitcast %struct.sv* %22 to %struct.av*
  store %struct.av* %23, %struct.av** %av, align 8
  %24 = load %struct.av*, %struct.av** %av, align 8
  %25 = bitcast %struct.av* %24 to %struct.sv*
  %sv_flags18 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 2
  %26 = load i32, i32* %sv_flags18, align 4
  %and19 = and i32 %26, 32768
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %cond.true.21, label %cond.false.23

cond.true.21:                                     ; preds = %if.then.17
  %27 = load %struct.av*, %struct.av** %av, align 8
  %28 = bitcast %struct.av* %27 to %struct.sv*
  %call22 = call i32 @Perl_mg_size(%struct.sv* %28)
  %conv = sext i32 %call22 to i64
  br label %cond.end.25

cond.false.23:                                    ; preds = %if.then.17
  %29 = load %struct.av*, %struct.av** %av, align 8
  %sv_any24 = getelementptr inbounds %struct.av, %struct.av* %29, i32 0, i32 0
  %30 = load %struct.xpvav*, %struct.xpvav** %sv_any24, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %30, i32 0, i32 1
  %31 = load i64, i64* %xav_fill, align 8
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.23, %cond.true.21
  %cond26 = phi i64 [ %conv, %cond.true.21 ], [ %31, %cond.false.23 ]
  %conv27 = trunc i64 %cond26 to i32
  store i32 %conv27, i32* %max, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.25
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %max, align 4
  %cmp28 = icmp sle i32 %32, %33
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct.av*, %struct.av** %av, align 8
  %35 = load i32, i32* %i, align 4
  %call30 = call %struct.sv** @Perl_av_fetch(%struct.av* %34, i32 %35, i32 0)
  %36 = bitcast %struct.sv** %call30 to %struct.sv*
  store %struct.sv* %36, %struct.sv** %sv.addr, align 8
  %37 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %tobool31 = icmp ne %struct.sv* %37, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.end.37

land.lhs.true.32:                                 ; preds = %for.body
  %38 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %39 = bitcast %struct.sv* %38 to %struct.sv**
  %40 = load %struct.sv*, %struct.sv** %39, align 8
  store %struct.sv* %40, %struct.sv** %sv.addr, align 8
  %41 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %cmp33 = icmp ne %struct.sv* %41, @PL_sv_undef
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %land.lhs.true.32
  %42 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call36 = call i32 @Perl_do_chomp(%struct.sv* %42)
  %43 = load i32, i32* %count, align 4
  %add = add nsw i32 %43, %call36
  store i32 %add, i32* %count, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %land.lhs.true.32, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %44 = load i32, i32* %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load i32, i32* %count, align 4
  store i32 %45, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.13
  %46 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags38 = getelementptr inbounds %struct.sv, %struct.sv* %46, i32 0, i32 2
  %47 = load i32, i32* %sv_flags38, align 4
  %and39 = and i32 %47, 255
  %cmp40 = icmp eq i32 %and39, 11
  br i1 %cmp40, label %if.then.42, label %if.else.50

if.then.42:                                       ; preds = %if.else
  %48 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %49 = bitcast %struct.sv* %48 to %struct.hv*
  store %struct.hv* %49, %struct.hv** %hv, align 8
  %50 = load %struct.hv*, %struct.hv** %hv, align 8
  %call44 = call i32 @Perl_hv_iterinit(%struct.hv* %50)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.42
  %51 = load %struct.hv*, %struct.hv** %hv, align 8
  %call45 = call %struct.he* @Perl_hv_iternext(%struct.hv* %51)
  store %struct.he* %call45, %struct.he** %entry43, align 8
  %tobool46 = icmp ne %struct.he* %call45, null
  br i1 %tobool46, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %52 = load %struct.hv*, %struct.hv** %hv, align 8
  %53 = load %struct.he*, %struct.he** %entry43, align 8
  %call47 = call %struct.sv* @Perl_hv_iterval(%struct.hv* %52, %struct.he* %53)
  %call48 = call i32 @Perl_do_chomp(%struct.sv* %call47)
  %54 = load i32, i32* %count, align 4
  %add49 = add nsw i32 %54, %call48
  store i32 %add49, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %55 = load i32, i32* %count, align 4
  store i32 %55, i32* %retval
  br label %return

if.else.50:                                       ; preds = %if.else
  %56 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags51 = getelementptr inbounds %struct.sv, %struct.sv* %56, i32 0, i32 2
  %57 = load i32, i32* %sv_flags51, align 4
  %and52 = and i32 %57, 8388608
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.65

if.then.54:                                       ; preds = %if.else.50
  %58 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags55 = getelementptr inbounds %struct.sv, %struct.sv* %58, i32 0, i32 2
  %59 = load i32, i32* %sv_flags55, align 4
  %and56 = and i32 %59, 1048576
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.54
  %60 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_force_normal_flags(%struct.sv* %60, i32 0)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.then.54
  %61 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags60 = getelementptr inbounds %struct.sv, %struct.sv* %61, i32 0, i32 2
  %62 = load i32, i32* %sv_flags60, align 4
  %and61 = and i32 %62, 8388608
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.59
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @PL_no_modify, i32 0, i32 0))
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.end.59
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.else.50
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66
  %63 = load %struct.sv*, %struct.sv** @PL_encoding, align 8
  %tobool68 = icmp ne %struct.sv* %63, null
  br i1 %tobool68, label %if.then.69, label %if.end.76

if.then.69:                                       ; preds = %if.end.67
  %64 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags70 = getelementptr inbounds %struct.sv, %struct.sv* %64, i32 0, i32 2
  %65 = load i32, i32* %sv_flags70, align 4
  %and71 = and i32 %65, 536870912
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.end.75, label %if.then.73

if.then.73:                                       ; preds = %if.then.69
  %66 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %67 = load %struct.sv*, %struct.sv** @PL_encoding, align 8
  %call74 = call i8* @Perl_sv_recode_to_utf8(%struct.sv* %66, %struct.sv* %67)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %if.then.69
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.67
  %68 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags77 = getelementptr inbounds %struct.sv, %struct.sv* %68, i32 0, i32 2
  %69 = load i32, i32* %sv_flags77, align 4
  %and78 = and i32 %69, 262144
  %cmp79 = icmp eq i32 %and78, 262144
  br i1 %cmp79, label %cond.true.81, label %cond.false.84

cond.true.81:                                     ; preds = %if.end.76
  %70 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any82 = getelementptr inbounds %struct.sv, %struct.sv* %70, i32 0, i32 0
  %71 = load i8*, i8** %sv_any82, align 8
  %72 = bitcast i8* %71 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %72, i32 0, i32 1
  %73 = load i64, i64* %xpv_cur, align 8
  store i64 %73, i64* %len, align 8
  %74 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any83 = getelementptr inbounds %struct.sv, %struct.sv* %74, i32 0, i32 0
  %75 = load i8*, i8** %sv_any83, align 8
  %76 = bitcast i8* %75 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %76, i32 0, i32 0
  %77 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.86

cond.false.84:                                    ; preds = %if.end.76
  %78 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call85 = call i8* @Perl_sv_2pv_flags(%struct.sv* %78, i64* %len, i32 2)
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.84, %cond.true.81
  %cond87 = phi i8* [ %77, %cond.true.81 ], [ %call85, %cond.false.84 ]
  store i8* %cond87, i8** %s, align 8
  %79 = load i8*, i8** %s, align 8
  %tobool88 = icmp ne i8* %79, null
  br i1 %tobool88, label %land.lhs.true.89, label %if.end.232

land.lhs.true.89:                                 ; preds = %cond.end.86
  %80 = load i64, i64* %len, align 8
  %tobool90 = icmp ne i64 %80, 0
  br i1 %tobool90, label %if.then.91, label %if.end.232

if.then.91:                                       ; preds = %land.lhs.true.89
  %81 = load i64, i64* %len, align 8
  %dec = add i64 %81, -1
  store i64 %dec, i64* %len, align 8
  %82 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %82, i64 %dec
  store i8* %add.ptr, i8** %s, align 8
  %83 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_flags92 = getelementptr inbounds %struct.sv, %struct.sv* %83, i32 0, i32 2
  %84 = load i32, i32* %sv_flags92, align 4
  %and93 = and i32 %84, 262144
  %tobool94 = icmp ne i32 %and93, 0
  br i1 %tobool94, label %land.lhs.true.95, label %if.else.115

land.lhs.true.95:                                 ; preds = %if.then.91
  %85 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_any96 = getelementptr inbounds %struct.sv, %struct.sv* %85, i32 0, i32 0
  %86 = load i8*, i8** %sv_any96, align 8
  %87 = bitcast i8* %86 to %struct.xpv*
  %xpv_cur97 = getelementptr inbounds %struct.xpv, %struct.xpv* %87, i32 0, i32 1
  %88 = load i64, i64* %xpv_cur97, align 8
  %tobool98 = icmp ne i64 %88, 0
  br i1 %tobool98, label %if.else.115, label %if.then.99

if.then.99:                                       ; preds = %land.lhs.true.95
  %89 = load i8*, i8** %s, align 8
  %90 = load i8, i8* %89, align 1
  %conv100 = sext i8 %90 to i32
  %cmp101 = icmp ne i32 %conv100, 10
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.then.99
  br label %nope

if.end.104:                                       ; preds = %if.then.99
  %91 = load i32, i32* %count, align 4
  %inc105 = add nsw i32 %91, 1
  store i32 %inc105, i32* %count, align 4
  br label %while.cond.106

while.cond.106:                                   ; preds = %while.body.111, %if.end.104
  %92 = load i64, i64* %len, align 8
  %tobool107 = icmp ne i64 %92, 0
  br i1 %tobool107, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.106
  %93 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %93, i64 -1
  %94 = load i8, i8* %arrayidx, align 1
  %conv108 = sext i8 %94 to i32
  %cmp109 = icmp eq i32 %conv108, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.106
  %95 = phi i1 [ false, %while.cond.106 ], [ %cmp109, %land.rhs ]
  br i1 %95, label %while.body.111, label %while.end.114

while.body.111:                                   ; preds = %land.end
  %96 = load i64, i64* %len, align 8
  %dec112 = add i64 %96, -1
  store i64 %dec112, i64* %len, align 8
  %97 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %97, i32 -1
  store i8* %incdec.ptr, i8** %s, align 8
  %98 = load i32, i32* %count, align 4
  %inc113 = add nsw i32 %98, 1
  store i32 %inc113, i32* %count, align 4
  br label %while.cond.106

while.end.114:                                    ; preds = %land.end
  br label %if.end.203

if.else.115:                                      ; preds = %land.lhs.true.95, %if.then.91
  %99 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_flags116 = getelementptr inbounds %struct.sv, %struct.sv* %99, i32 0, i32 2
  %100 = load i32, i32* %sv_flags116, align 4
  %and117 = and i32 %100, 262144
  %cmp118 = icmp eq i32 %and117, 262144
  br i1 %cmp118, label %cond.true.120, label %cond.false.125

cond.true.120:                                    ; preds = %if.else.115
  %101 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_any121 = getelementptr inbounds %struct.sv, %struct.sv* %101, i32 0, i32 0
  %102 = load i8*, i8** %sv_any121, align 8
  %103 = bitcast i8* %102 to %struct.xpv*
  %xpv_cur122 = getelementptr inbounds %struct.xpv, %struct.xpv* %103, i32 0, i32 1
  %104 = load i64, i64* %xpv_cur122, align 8
  store i64 %104, i64* %rslen, align 8
  %105 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_any123 = getelementptr inbounds %struct.sv, %struct.sv* %105, i32 0, i32 0
  %106 = load i8*, i8** %sv_any123, align 8
  %107 = bitcast i8* %106 to %struct.xpv*
  %xpv_pv124 = getelementptr inbounds %struct.xpv, %struct.xpv* %107, i32 0, i32 0
  %108 = load i8*, i8** %xpv_pv124, align 8
  br label %cond.end.127

cond.false.125:                                   ; preds = %if.else.115
  %109 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %call126 = call i8* @Perl_sv_2pv_flags(%struct.sv* %109, i64* %rslen, i32 2)
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.125, %cond.true.120
  %cond128 = phi i8* [ %108, %cond.true.120 ], [ %call126, %cond.false.125 ]
  store i8* %cond128, i8** %rsptr, align 8
  %110 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_flags129 = getelementptr inbounds %struct.sv, %struct.sv* %110, i32 0, i32 2
  %111 = load i32, i32* %sv_flags129, align 4
  %and130 = and i32 %111, 536870912
  %tobool131 = icmp ne i32 %and130, 0
  br i1 %tobool131, label %cond.true.132, label %cond.false.134

cond.true.132:                                    ; preds = %cond.end.127
  %112 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %call133 = call i64 @Perl_sv_len_utf8(%struct.sv* %112)
  br label %cond.end.135

cond.false.134:                                   ; preds = %cond.end.127
  %113 = load i64, i64* %rslen, align 8
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.134, %cond.true.132
  %cond136 = phi i64 [ %call133, %cond.true.132 ], [ %113, %cond.false.134 ]
  store i64 %cond136, i64* %rs_charlen, align 8
  %114 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_flags137 = getelementptr inbounds %struct.sv, %struct.sv* %114, i32 0, i32 2
  %115 = load i32, i32* %sv_flags137, align 4
  %and138 = and i32 %115, 536870912
  %116 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags139 = getelementptr inbounds %struct.sv, %struct.sv* %116, i32 0, i32 2
  %117 = load i32, i32* %sv_flags139, align 4
  %and140 = and i32 %117, 536870912
  %cmp141 = icmp ne i32 %and138, %and140
  br i1 %cmp141, label %if.then.143, label %if.end.175

if.then.143:                                      ; preds = %cond.end.135
  %118 = load %struct.sv*, %struct.sv** @PL_rs, align 8
  %sv_flags144 = getelementptr inbounds %struct.sv, %struct.sv* %118, i32 0, i32 2
  %119 = load i32, i32* %sv_flags144, align 4
  %and145 = and i32 %119, 536870912
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %if.then.147, label %if.else.152

if.then.147:                                      ; preds = %if.then.143
  store i8 1, i8* %is_utf8, align 1
  %120 = load i8*, i8** %rsptr, align 8
  %call148 = call i8* @Perl_bytes_from_utf8(i8* %120, i64* %rslen, i8* %is_utf8)
  store i8* %call148, i8** %temp_buffer, align 8
  %121 = load i8, i8* %is_utf8, align 1
  %tobool149 = icmp ne i8 %121, 0
  br i1 %tobool149, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.then.147
  store i8* null, i8** %temp_buffer, align 8
  br label %nope

if.end.151:                                       ; preds = %if.then.147
  %122 = load i8*, i8** %temp_buffer, align 8
  store i8* %122, i8** %rsptr, align 8
  br label %if.end.174

if.else.152:                                      ; preds = %if.then.143
  %123 = load %struct.sv*, %struct.sv** @PL_encoding, align 8
  %tobool153 = icmp ne %struct.sv* %123, null
  br i1 %tobool153, label %if.then.154, label %if.else.171

if.then.154:                                      ; preds = %if.else.152
  %124 = load i8*, i8** %rsptr, align 8
  %125 = load i64, i64* %rslen, align 8
  %call155 = call %struct.sv* @Perl_newSVpvn(i8* %124, i64 %125)
  store %struct.sv* %call155, %struct.sv** %svrecode, align 8
  %126 = load %struct.sv*, %struct.sv** %svrecode, align 8
  %127 = load %struct.sv*, %struct.sv** @PL_encoding, align 8
  %call156 = call i8* @Perl_sv_recode_to_utf8(%struct.sv* %126, %struct.sv* %127)
  %128 = load %struct.sv*, %struct.sv** %svrecode, align 8
  %sv_flags157 = getelementptr inbounds %struct.sv, %struct.sv* %128, i32 0, i32 2
  %129 = load i32, i32* %sv_flags157, align 4
  %and158 = and i32 %129, 262144
  %cmp159 = icmp eq i32 %and158, 262144
  br i1 %cmp159, label %cond.true.161, label %cond.false.166

cond.true.161:                                    ; preds = %if.then.154
  %130 = load %struct.sv*, %struct.sv** %svrecode, align 8
  %sv_any162 = getelementptr inbounds %struct.sv, %struct.sv* %130, i32 0, i32 0
  %131 = load i8*, i8** %sv_any162, align 8
  %132 = bitcast i8* %131 to %struct.xpv*
  %xpv_cur163 = getelementptr inbounds %struct.xpv, %struct.xpv* %132, i32 0, i32 1
  %133 = load i64, i64* %xpv_cur163, align 8
  store i64 %133, i64* %rslen, align 8
  %134 = load %struct.sv*, %struct.sv** %svrecode, align 8
  %sv_any164 = getelementptr inbounds %struct.sv, %struct.sv* %134, i32 0, i32 0
  %135 = load i8*, i8** %sv_any164, align 8
  %136 = bitcast i8* %135 to %struct.xpv*
  %xpv_pv165 = getelementptr inbounds %struct.xpv, %struct.xpv* %136, i32 0, i32 0
  %137 = load i8*, i8** %xpv_pv165, align 8
  br label %cond.end.168

cond.false.166:                                   ; preds = %if.then.154
  %138 = load %struct.sv*, %struct.sv** %svrecode, align 8
  %call167 = call i8* @Perl_sv_2pv_flags(%struct.sv* %138, i64* %rslen, i32 2)
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.166, %cond.true.161
  %cond169 = phi i8* [ %137, %cond.true.161 ], [ %call167, %cond.false.166 ]
  store i8* %cond169, i8** %rsptr, align 8
  %139 = load %struct.sv*, %struct.sv** %svrecode, align 8
  %call170 = call i64 @Perl_sv_len_utf8(%struct.sv* %139)
  store i64 %call170, i64* %rs_charlen, align 8
  br label %if.end.173

if.else.171:                                      ; preds = %if.else.152
  %140 = load i8*, i8** %rsptr, align 8
  %call172 = call i8* @Perl_bytes_to_utf8(i8* %140, i64* %rslen)
  store i8* %call172, i8** %temp_buffer, align 8
  %141 = load i8*, i8** %temp_buffer, align 8
  store i8* %141, i8** %rsptr, align 8
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.171, %cond.end.168
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end.151
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %cond.end.135
  %142 = load i64, i64* %rslen, align 8
  %cmp176 = icmp eq i64 %142, 1
  br i1 %cmp176, label %if.then.178, label %if.else.186

if.then.178:                                      ; preds = %if.end.175
  %143 = load i8*, i8** %s, align 8
  %144 = load i8, i8* %143, align 1
  %conv179 = sext i8 %144 to i32
  %145 = load i8*, i8** %rsptr, align 8
  %146 = load i8, i8* %145, align 1
  %conv180 = sext i8 %146 to i32
  %cmp181 = icmp ne i32 %conv179, %conv180
  br i1 %cmp181, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %if.then.178
  br label %nope

if.end.184:                                       ; preds = %if.then.178
  %147 = load i32, i32* %count, align 4
  %inc185 = add nsw i32 %147, 1
  store i32 %inc185, i32* %count, align 4
  br label %if.end.202

if.else.186:                                      ; preds = %if.end.175
  %148 = load i64, i64* %len, align 8
  %149 = load i64, i64* %rslen, align 8
  %sub = sub i64 %149, 1
  %cmp187 = icmp ult i64 %148, %sub
  br i1 %cmp187, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.else.186
  br label %nope

if.end.190:                                       ; preds = %if.else.186
  %150 = load i64, i64* %rslen, align 8
  %sub191 = sub i64 %150, 1
  %151 = load i64, i64* %len, align 8
  %sub192 = sub i64 %151, %sub191
  store i64 %sub192, i64* %len, align 8
  %152 = load i64, i64* %rslen, align 8
  %sub193 = sub i64 %152, 1
  %153 = load i8*, i8** %s, align 8
  %idx.neg = sub i64 0, %sub193
  %add.ptr194 = getelementptr inbounds i8, i8* %153, i64 %idx.neg
  store i8* %add.ptr194, i8** %s, align 8
  %154 = load i8*, i8** %s, align 8
  %155 = load i8*, i8** %rsptr, align 8
  %156 = load i64, i64* %rslen, align 8
  %call195 = call i32 @memcmp(i8* %154, i8* %155, i64 %156)
  %tobool196 = icmp ne i32 %call195, 0
  br i1 %tobool196, label %if.then.197, label %if.end.198

if.then.197:                                      ; preds = %if.end.190
  br label %nope

if.end.198:                                       ; preds = %if.end.190
  %157 = load i64, i64* %rs_charlen, align 8
  %158 = load i32, i32* %count, align 4
  %conv199 = sext i32 %158 to i64
  %add200 = add i64 %conv199, %157
  %conv201 = trunc i64 %add200 to i32
  store i32 %conv201, i32* %count, align 4
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.198, %if.end.184
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %while.end.114
  %159 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags204 = getelementptr inbounds %struct.sv, %struct.sv* %159, i32 0, i32 2
  %160 = load i32, i32* %sv_flags204, align 4
  %and205 = and i32 %160, 10223616
  %cmp206 = icmp eq i32 %and205, 262144
  br i1 %cmp206, label %cond.true.208, label %cond.false.213

cond.true.208:                                    ; preds = %if.end.203
  %161 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any209 = getelementptr inbounds %struct.sv, %struct.sv* %161, i32 0, i32 0
  %162 = load i8*, i8** %sv_any209, align 8
  %163 = bitcast i8* %162 to %struct.xpv*
  %xpv_cur210 = getelementptr inbounds %struct.xpv, %struct.xpv* %163, i32 0, i32 1
  %164 = load i64, i64* %xpv_cur210, align 8
  store i64 %164, i64* %n_a, align 8
  %165 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any211 = getelementptr inbounds %struct.sv, %struct.sv* %165, i32 0, i32 0
  %166 = load i8*, i8** %sv_any211, align 8
  %167 = bitcast i8* %166 to %struct.xpv*
  %xpv_pv212 = getelementptr inbounds %struct.xpv, %struct.xpv* %167, i32 0, i32 0
  %168 = load i8*, i8** %xpv_pv212, align 8
  br label %cond.end.215

cond.false.213:                                   ; preds = %if.end.203
  %169 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call214 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %169, i64* %n_a, i32 2)
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.false.213, %cond.true.208
  %cond216 = phi i8* [ %168, %cond.true.208 ], [ %call214, %cond.false.213 ]
  store i8* %cond216, i8** %s, align 8
  %170 = load i64, i64* %len, align 8
  %171 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any217 = getelementptr inbounds %struct.sv, %struct.sv* %171, i32 0, i32 0
  %172 = load i8*, i8** %sv_any217, align 8
  %173 = bitcast i8* %172 to %struct.xpv*
  %xpv_cur218 = getelementptr inbounds %struct.xpv, %struct.xpv* %173, i32 0, i32 1
  store i64 %170, i64* %xpv_cur218, align 8
  store i64 %170, i64* %tmp
  %174 = load i64, i64* %tmp
  %175 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any219 = getelementptr inbounds %struct.sv, %struct.sv* %175, i32 0, i32 0
  %176 = load i8*, i8** %sv_any219, align 8
  %177 = bitcast i8* %176 to %struct.xpv*
  %xpv_pv220 = getelementptr inbounds %struct.xpv, %struct.xpv* %177, i32 0, i32 0
  %178 = load i8*, i8** %xpv_pv220, align 8
  %179 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any221 = getelementptr inbounds %struct.sv, %struct.sv* %179, i32 0, i32 0
  %180 = load i8*, i8** %sv_any221, align 8
  %181 = bitcast i8* %180 to %struct.xpv*
  %xpv_cur222 = getelementptr inbounds %struct.xpv, %struct.xpv* %181, i32 0, i32 1
  %182 = load i64, i64* %xpv_cur222, align 8
  %add.ptr223 = getelementptr inbounds i8, i8* %178, i64 %182
  store i8 0, i8* %add.ptr223, align 1
  %183 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags224 = getelementptr inbounds %struct.sv, %struct.sv* %183, i32 0, i32 2
  %184 = load i32, i32* %sv_flags224, align 4
  %and225 = and i32 %184, 2096955391
  store i32 %and225, i32* %sv_flags224, align 4
  %185 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags226 = getelementptr inbounds %struct.sv, %struct.sv* %185, i32 0, i32 2
  %186 = load i32, i32* %sv_flags226, align 4
  %and227 = and i32 %186, 16384
  %tobool228 = icmp ne i32 %and227, 0
  br i1 %tobool228, label %if.then.229, label %if.end.231

if.then.229:                                      ; preds = %cond.end.215
  %187 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call230 = call i32 @Perl_mg_set(%struct.sv* %187)
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.229, %cond.end.215
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %land.lhs.true.89, %cond.end.86
  br label %nope

nope:                                             ; preds = %if.end.232, %if.then.197, %if.then.189, %if.then.183, %if.then.150, %if.then.103
  %188 = load %struct.sv*, %struct.sv** %svrecode, align 8
  %tobool233 = icmp ne %struct.sv* %188, null
  br i1 %tobool233, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %nope
  %189 = load %struct.sv*, %struct.sv** %svrecode, align 8
  call void @Perl_sv_free(%struct.sv* %189)
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.234, %nope
  %190 = load i8*, i8** %temp_buffer, align 8
  call void @Perl_safesysfree(i8* %190)
  %191 = load i32, i32* %count, align 4
  store i32 %191, i32* %retval
  br label %return

return:                                           ; preds = %if.end.235, %while.end, %for.end, %if.then.12, %if.then
  %192 = load i32, i32* %retval
  ret i32 %192
}

declare i64 @Perl_sv_2iv(%struct.sv*) #1

declare i8* @Perl_sv_recode_to_utf8(%struct.sv*, %struct.sv*) #1

declare i64 @Perl_sv_len_utf8(%struct.sv*) #1

declare i8* @Perl_bytes_from_utf8(i8*, i64*, i8*) #1

declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

declare i8* @Perl_bytes_to_utf8(i8*, i64*) #1

declare i32 @memcmp(i8*, i8*, i64) #1

declare void @Perl_sv_free(%struct.sv*) #1

declare void @Perl_safesysfree(i8*) #1

; Function Attrs: nounwind uwtable
define void @Perl_do_vop(i32 %optype, %struct.sv* %sv, %struct.sv* %left, %struct.sv* %right) #0 {
entry:
  %optype.addr = alloca i32, align 4
  %sv.addr = alloca %struct.sv*, align 8
  %left.addr = alloca %struct.sv*, align 8
  %right.addr = alloca %struct.sv*, align 8
  %dl = alloca i64*, align 8
  %ll = alloca i64*, align 8
  %rl = alloca i64*, align 8
  %dc = alloca i8*, align 8
  %leftlen = alloca i64, align 8
  %rightlen = alloca i64, align 8
  %lc = alloca i8*, align 8
  %rc = alloca i8*, align 8
  %len = alloca i32, align 4
  %lensave = alloca i32, align 4
  %lsave = alloca i8*, align 8
  %rsave = alloca i8*, align 8
  %left_utf = alloca i8, align 1
  %right_utf = alloca i8, align 1
  %needlen = alloca i32, align 4
  %n_a = alloca i64, align 8
  %tmp = alloca i64, align 8
  %duc = alloca i64, align 8
  %luc = alloca i64, align 8
  %ruc = alloca i64, align 8
  %dcsave = alloca i8*, align 8
  %lulen = alloca i64, align 8
  %rulen = alloca i64, align 8
  %ulen = alloca i64, align 8
  %tmp233 = alloca i64, align 8
  %tmp277 = alloca i64, align 8
  %remainder = alloca i32, align 4
  store i32 %optype, i32* %optype.addr, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store %struct.sv* %left, %struct.sv** %left.addr, align 8
  store %struct.sv* %right, %struct.sv** %right.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 536870912
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private = getelementptr inbounds %struct.cop, %struct.cop* %2, i32 0, i32 7
  %3 = load i8, i8* %op_private, align 1
  %conv = zext i8 %3 to i32
  %and1 = and i32 %conv, 8
  %tobool2 = icmp ne i32 %and1, 0
  %lnot = xor i1 %tobool2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  %conv3 = trunc i32 %land.ext to i8
  store i8 %conv3, i8* %left_utf, align 1
  %5 = load %struct.sv*, %struct.sv** %right.addr, align 8
  %sv_flags4 = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 2
  %6 = load i32, i32* %sv_flags4, align 4
  %and5 = and i32 %6, 536870912
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %land.rhs.7, label %land.end.13

land.rhs.7:                                       ; preds = %land.end
  %7 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private8 = getelementptr inbounds %struct.cop, %struct.cop* %7, i32 0, i32 7
  %8 = load i8, i8* %op_private8, align 1
  %conv9 = zext i8 %8 to i32
  %and10 = and i32 %conv9, 8
  %tobool11 = icmp ne i32 %and10, 0
  %lnot12 = xor i1 %tobool11, true
  br label %land.end.13

land.end.13:                                      ; preds = %land.rhs.7, %land.end
  %9 = phi i1 [ false, %land.end ], [ %lnot12, %land.rhs.7 ]
  %land.ext14 = zext i1 %9 to i32
  %conv15 = trunc i32 %land.ext14 to i8
  store i8 %conv15, i8* %right_utf, align 1
  store i32 0, i32* %needlen, align 4
  %10 = load i8, i8* %left_utf, align 1
  %conv16 = sext i8 %10 to i32
  %tobool17 = icmp ne i32 %conv16, 0
  br i1 %tobool17, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %land.end.13
  %11 = load i8, i8* %right_utf, align 1
  %tobool18 = icmp ne i8 %11, 0
  br i1 %tobool18, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.sv*, %struct.sv** %right.addr, align 8
  %call = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %12, i32 2)
  br label %if.end.25

if.else:                                          ; preds = %land.lhs.true, %land.end.13
  %13 = load i8, i8* %left_utf, align 1
  %tobool19 = icmp ne i8 %13, 0
  br i1 %tobool19, label %if.end, label %land.lhs.true.20

land.lhs.true.20:                                 ; preds = %if.else
  %14 = load i8, i8* %right_utf, align 1
  %conv21 = sext i8 %14 to i32
  %tobool22 = icmp ne i32 %conv21, 0
  br i1 %tobool22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %land.lhs.true.20
  %15 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %call24 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %15, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then.23, %land.lhs.true.20, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then
  %16 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %17 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %cmp = icmp ne %struct.sv* %16, %17
  br i1 %cmp, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.25
  %18 = load i32, i32* %optype.addr, align 4
  %cmp27 = icmp ne i32 %18, 91
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.38

land.lhs.true.29:                                 ; preds = %lor.lhs.false
  %19 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags30 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 2
  %20 = load i32, i32* %sv_flags30, align 4
  %and31 = and i32 %20, 118423552
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.end.38, label %land.lhs.true.33

land.lhs.true.33:                                 ; preds = %land.lhs.true.29
  %21 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags34 = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 2
  %22 = load i32, i32* %sv_flags34, align 4
  %and35 = and i32 %22, 8192
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %land.lhs.true.33, %if.end.25
  %23 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_setpvn(%struct.sv* %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i64 0)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %land.lhs.true.33, %land.lhs.true.29, %lor.lhs.false
  %24 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %sv_flags39 = getelementptr inbounds %struct.sv, %struct.sv* %24, i32 0, i32 2
  %25 = load i32, i32* %sv_flags39, align 4
  %and40 = and i32 %25, 262144
  %cmp41 = icmp eq i32 %and40, 262144
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.38
  %26 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %26, i32 0, i32 0
  %27 = load i8*, i8** %sv_any, align 8
  %28 = bitcast i8* %27 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %28, i32 0, i32 1
  %29 = load i64, i64* %xpv_cur, align 8
  store i64 %29, i64* %leftlen, align 8
  %30 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %sv_any43 = getelementptr inbounds %struct.sv, %struct.sv* %30, i32 0, i32 0
  %31 = load i8*, i8** %sv_any43, align 8
  %32 = bitcast i8* %31 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %32, i32 0, i32 0
  %33 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.38
  %34 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %call44 = call i8* @Perl_sv_2pv_flags(%struct.sv* %34, i64* %leftlen, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %33, %cond.true ], [ %call44, %cond.false ]
  store i8* %cond, i8** %lc, align 8
  store i8* %cond, i8** %lsave, align 8
  %35 = load %struct.sv*, %struct.sv** %right.addr, align 8
  %sv_flags45 = getelementptr inbounds %struct.sv, %struct.sv* %35, i32 0, i32 2
  %36 = load i32, i32* %sv_flags45, align 4
  %and46 = and i32 %36, 262144
  %cmp47 = icmp eq i32 %and46, 262144
  br i1 %cmp47, label %cond.true.49, label %cond.false.54

cond.true.49:                                     ; preds = %cond.end
  %37 = load %struct.sv*, %struct.sv** %right.addr, align 8
  %sv_any50 = getelementptr inbounds %struct.sv, %struct.sv* %37, i32 0, i32 0
  %38 = load i8*, i8** %sv_any50, align 8
  %39 = bitcast i8* %38 to %struct.xpv*
  %xpv_cur51 = getelementptr inbounds %struct.xpv, %struct.xpv* %39, i32 0, i32 1
  %40 = load i64, i64* %xpv_cur51, align 8
  store i64 %40, i64* %rightlen, align 8
  %41 = load %struct.sv*, %struct.sv** %right.addr, align 8
  %sv_any52 = getelementptr inbounds %struct.sv, %struct.sv* %41, i32 0, i32 0
  %42 = load i8*, i8** %sv_any52, align 8
  %43 = bitcast i8* %42 to %struct.xpv*
  %xpv_pv53 = getelementptr inbounds %struct.xpv, %struct.xpv* %43, i32 0, i32 0
  %44 = load i8*, i8** %xpv_pv53, align 8
  br label %cond.end.56

cond.false.54:                                    ; preds = %cond.end
  %45 = load %struct.sv*, %struct.sv** %right.addr, align 8
  %call55 = call i8* @Perl_sv_2pv_flags(%struct.sv* %45, i64* %rightlen, i32 2)
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.54, %cond.true.49
  %cond57 = phi i8* [ %44, %cond.true.49 ], [ %call55, %cond.false.54 ]
  store i8* %cond57, i8** %rc, align 8
  store i8* %cond57, i8** %rsave, align 8
  %46 = load i64, i64* %leftlen, align 8
  %47 = load i64, i64* %rightlen, align 8
  %cmp58 = icmp ult i64 %46, %47
  br i1 %cmp58, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %cond.end.56
  %48 = load i64, i64* %leftlen, align 8
  br label %cond.end.62

cond.false.61:                                    ; preds = %cond.end.56
  %49 = load i64, i64* %rightlen, align 8
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.61, %cond.true.60
  %cond63 = phi i64 [ %48, %cond.true.60 ], [ %49, %cond.false.61 ]
  %conv64 = trunc i64 %cond63 to i32
  store i32 %conv64, i32* %len, align 4
  %50 = load i32, i32* %len, align 4
  store i32 %50, i32* %lensave, align 4
  %51 = load i8, i8* %left_utf, align 1
  %conv65 = sext i8 %51 to i32
  %tobool66 = icmp ne i32 %conv65, 0
  br i1 %tobool66, label %land.lhs.true.70, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %cond.end.62
  %52 = load i8, i8* %right_utf, align 1
  %conv68 = sext i8 %52 to i32
  %tobool69 = icmp ne i32 %conv68, 0
  br i1 %tobool69, label %land.lhs.true.70, label %if.else.91

land.lhs.true.70:                                 ; preds = %lor.lhs.false.67, %cond.end.62
  %53 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %54 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %cmp71 = icmp eq %struct.sv* %53, %54
  br i1 %cmp71, label %if.then.76, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %land.lhs.true.70
  %55 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %56 = load %struct.sv*, %struct.sv** %right.addr, align 8
  %cmp74 = icmp eq %struct.sv* %55, %56
  br i1 %cmp74, label %if.then.76, label %if.else.91

if.then.76:                                       ; preds = %lor.lhs.false.73, %land.lhs.true.70
  %57 = load i32, i32* %optype.addr, align 4
  %cmp77 = icmp eq i32 %57, 91
  br i1 %cmp77, label %cond.true.79, label %cond.false.81

cond.true.79:                                     ; preds = %if.then.76
  %58 = load i32, i32* %len, align 4
  %conv80 = sext i32 %58 to i64
  br label %cond.end.82

cond.false.81:                                    ; preds = %if.then.76
  %59 = load i64, i64* %leftlen, align 8
  %60 = load i64, i64* %rightlen, align 8
  %add = add i64 %59, %60
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.81, %cond.true.79
  %cond83 = phi i64 [ %conv80, %cond.true.79 ], [ %add, %cond.false.81 ]
  %conv84 = trunc i64 %cond83 to i32
  store i32 %conv84, i32* %needlen, align 4
  %61 = load i32, i32* %needlen, align 4
  %add85 = add nsw i32 %61, 1
  %conv86 = sext i32 %add85 to i64
  %mul = mul i64 %conv86, 1
  %call87 = call i8* @Perl_safesysmalloc(i64 %mul)
  store i8* %call87, i8** %dc, align 8
  %62 = load i8*, i8** %dc, align 8
  %63 = load i32, i32* %needlen, align 4
  %add88 = add nsw i32 %63, 1
  %conv89 = sext i32 %add88 to i64
  %mul90 = mul i64 %conv89, 1
  call void @llvm.memset.p0i8.i64(i8* %62, i8 0, i64 %mul90, i32 1, i1 false)
  br label %if.end.192

if.else.91:                                       ; preds = %lor.lhs.false.73, %lor.lhs.false.67
  %64 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags92 = getelementptr inbounds %struct.sv, %struct.sv* %64, i32 0, i32 2
  %65 = load i32, i32* %sv_flags92, align 4
  %and93 = and i32 %65, 118423552
  %tobool94 = icmp ne i32 %and93, 0
  br i1 %tobool94, label %if.then.100, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %if.else.91
  %66 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags96 = getelementptr inbounds %struct.sv, %struct.sv* %66, i32 0, i32 2
  %67 = load i32, i32* %sv_flags96, align 4
  %and97 = and i32 %67, 255
  %cmp98 = icmp ugt i32 %and97, 7
  br i1 %cmp98, label %if.then.100, label %if.else.166

if.then.100:                                      ; preds = %lor.lhs.false.95, %if.else.91
  %68 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags101 = getelementptr inbounds %struct.sv, %struct.sv* %68, i32 0, i32 2
  %69 = load i32, i32* %sv_flags101, align 4
  %and102 = and i32 %69, 10223616
  %cmp103 = icmp eq i32 %and102, 262144
  br i1 %cmp103, label %cond.true.105, label %cond.false.110

cond.true.105:                                    ; preds = %if.then.100
  %70 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any106 = getelementptr inbounds %struct.sv, %struct.sv* %70, i32 0, i32 0
  %71 = load i8*, i8** %sv_any106, align 8
  %72 = bitcast i8* %71 to %struct.xpv*
  %xpv_cur107 = getelementptr inbounds %struct.xpv, %struct.xpv* %72, i32 0, i32 1
  %73 = load i64, i64* %xpv_cur107, align 8
  store i64 %73, i64* %n_a, align 8
  %74 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any108 = getelementptr inbounds %struct.sv, %struct.sv* %74, i32 0, i32 0
  %75 = load i8*, i8** %sv_any108, align 8
  %76 = bitcast i8* %75 to %struct.xpv*
  %xpv_pv109 = getelementptr inbounds %struct.xpv, %struct.xpv* %76, i32 0, i32 0
  %77 = load i8*, i8** %xpv_pv109, align 8
  br label %cond.end.112

cond.false.110:                                   ; preds = %if.then.100
  %78 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call111 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %78, i64* %n_a, i32 2)
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.110, %cond.true.105
  %cond113 = phi i8* [ %77, %cond.true.105 ], [ %call111, %cond.false.110 ]
  store i8* %cond113, i8** %dc, align 8
  %79 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any114 = getelementptr inbounds %struct.sv, %struct.sv* %79, i32 0, i32 0
  %80 = load i8*, i8** %sv_any114, align 8
  %81 = bitcast i8* %80 to %struct.xpv*
  %xpv_cur115 = getelementptr inbounds %struct.xpv, %struct.xpv* %81, i32 0, i32 1
  %82 = load i64, i64* %xpv_cur115, align 8
  %83 = load i32, i32* %len, align 4
  %conv116 = sext i32 %83 to i64
  %cmp117 = icmp ult i64 %82, %conv116
  br i1 %cmp117, label %if.then.119, label %if.end.140

if.then.119:                                      ; preds = %cond.end.112
  %84 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any120 = getelementptr inbounds %struct.sv, %struct.sv* %84, i32 0, i32 0
  %85 = load i8*, i8** %sv_any120, align 8
  %86 = bitcast i8* %85 to %struct.xpv*
  %xpv_len = getelementptr inbounds %struct.xpv, %struct.xpv* %86, i32 0, i32 2
  %87 = load i64, i64* %xpv_len, align 8
  %88 = load i32, i32* %len, align 4
  %add121 = add nsw i32 %88, 1
  %conv122 = sext i32 %add121 to i64
  %cmp123 = icmp ult i64 %87, %conv122
  br i1 %cmp123, label %cond.true.125, label %cond.false.129

cond.true.125:                                    ; preds = %if.then.119
  %89 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %90 = load i32, i32* %len, align 4
  %add126 = add nsw i32 %90, 1
  %conv127 = sext i32 %add126 to i64
  %call128 = call i8* @Perl_sv_grow(%struct.sv* %89, i64 %conv127)
  br label %cond.end.132

cond.false.129:                                   ; preds = %if.then.119
  %91 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any130 = getelementptr inbounds %struct.sv, %struct.sv* %91, i32 0, i32 0
  %92 = load i8*, i8** %sv_any130, align 8
  %93 = bitcast i8* %92 to %struct.xpv*
  %xpv_pv131 = getelementptr inbounds %struct.xpv, %struct.xpv* %93, i32 0, i32 0
  %94 = load i8*, i8** %xpv_pv131, align 8
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.129, %cond.true.125
  %cond133 = phi i8* [ %call128, %cond.true.125 ], [ %94, %cond.false.129 ]
  store i8* %cond133, i8** %dc, align 8
  %95 = load i8*, i8** %dc, align 8
  %96 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any134 = getelementptr inbounds %struct.sv, %struct.sv* %96, i32 0, i32 0
  %97 = load i8*, i8** %sv_any134, align 8
  %98 = bitcast i8* %97 to %struct.xpv*
  %xpv_cur135 = getelementptr inbounds %struct.xpv, %struct.xpv* %98, i32 0, i32 1
  %99 = load i64, i64* %xpv_cur135, align 8
  %add.ptr = getelementptr inbounds i8, i8* %95, i64 %99
  %100 = load i32, i32* %len, align 4
  %conv136 = sext i32 %100 to i64
  %101 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any137 = getelementptr inbounds %struct.sv, %struct.sv* %101, i32 0, i32 0
  %102 = load i8*, i8** %sv_any137, align 8
  %103 = bitcast i8* %102 to %struct.xpv*
  %xpv_cur138 = getelementptr inbounds %struct.xpv, %struct.xpv* %103, i32 0, i32 1
  %104 = load i64, i64* %xpv_cur138, align 8
  %sub = sub i64 %conv136, %104
  %add139 = add i64 %sub, 1
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 %add139, i32 1, i1 false)
  br label %if.end.140

if.end.140:                                       ; preds = %cond.end.132, %cond.end.112
  %105 = load i32, i32* %optype.addr, align 4
  %cmp141 = icmp ne i32 %105, 91
  br i1 %cmp141, label %land.lhs.true.143, label %if.end.165

land.lhs.true.143:                                ; preds = %if.end.140
  %106 = load i8, i8* %left_utf, align 1
  %conv144 = sext i8 %106 to i32
  %tobool145 = icmp ne i32 %conv144, 0
  br i1 %tobool145, label %if.then.149, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %land.lhs.true.143
  %107 = load i8, i8* %right_utf, align 1
  %conv147 = sext i8 %107 to i32
  %tobool148 = icmp ne i32 %conv147, 0
  br i1 %tobool148, label %if.then.149, label %if.end.165

if.then.149:                                      ; preds = %lor.lhs.false.146, %land.lhs.true.143
  %108 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any150 = getelementptr inbounds %struct.sv, %struct.sv* %108, i32 0, i32 0
  %109 = load i8*, i8** %sv_any150, align 8
  %110 = bitcast i8* %109 to %struct.xpv*
  %xpv_len151 = getelementptr inbounds %struct.xpv, %struct.xpv* %110, i32 0, i32 2
  %111 = load i64, i64* %xpv_len151, align 8
  %112 = load i64, i64* %leftlen, align 8
  %113 = load i64, i64* %rightlen, align 8
  %add152 = add i64 %112, %113
  %add153 = add i64 %add152, 1
  %cmp154 = icmp ult i64 %111, %add153
  br i1 %cmp154, label %cond.true.156, label %cond.false.160

cond.true.156:                                    ; preds = %if.then.149
  %114 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %115 = load i64, i64* %leftlen, align 8
  %116 = load i64, i64* %rightlen, align 8
  %add157 = add i64 %115, %116
  %add158 = add i64 %add157, 1
  %call159 = call i8* @Perl_sv_grow(%struct.sv* %114, i64 %add158)
  br label %cond.end.163

cond.false.160:                                   ; preds = %if.then.149
  %117 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any161 = getelementptr inbounds %struct.sv, %struct.sv* %117, i32 0, i32 0
  %118 = load i8*, i8** %sv_any161, align 8
  %119 = bitcast i8* %118 to %struct.xpv*
  %xpv_pv162 = getelementptr inbounds %struct.xpv, %struct.xpv* %119, i32 0, i32 0
  %120 = load i8*, i8** %xpv_pv162, align 8
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.160, %cond.true.156
  %cond164 = phi i8* [ %call159, %cond.true.156 ], [ %120, %cond.false.160 ]
  store i8* %cond164, i8** %dc, align 8
  br label %if.end.165

if.end.165:                                       ; preds = %cond.end.163, %lor.lhs.false.146, %if.end.140
  br label %if.end.191

if.else.166:                                      ; preds = %lor.lhs.false.95
  %121 = load i32, i32* %optype.addr, align 4
  %cmp167 = icmp eq i32 %121, 91
  br i1 %cmp167, label %cond.true.169, label %cond.false.171

cond.true.169:                                    ; preds = %if.else.166
  %122 = load i32, i32* %len, align 4
  %conv170 = sext i32 %122 to i64
  br label %cond.end.178

cond.false.171:                                   ; preds = %if.else.166
  %123 = load i64, i64* %leftlen, align 8
  %124 = load i64, i64* %rightlen, align 8
  %cmp172 = icmp ugt i64 %123, %124
  br i1 %cmp172, label %cond.true.174, label %cond.false.175

cond.true.174:                                    ; preds = %cond.false.171
  %125 = load i64, i64* %leftlen, align 8
  br label %cond.end.176

cond.false.175:                                   ; preds = %cond.false.171
  %126 = load i64, i64* %rightlen, align 8
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.false.175, %cond.true.174
  %cond177 = phi i64 [ %125, %cond.true.174 ], [ %126, %cond.false.175 ]
  br label %cond.end.178

cond.end.178:                                     ; preds = %cond.end.176, %cond.true.169
  %cond179 = phi i64 [ %conv170, %cond.true.169 ], [ %cond177, %cond.end.176 ]
  %conv180 = trunc i64 %cond179 to i32
  store i32 %conv180, i32* %needlen, align 4
  %127 = load i32, i32* %needlen, align 4
  %add181 = add nsw i32 %127, 1
  %conv182 = sext i32 %add181 to i64
  %mul183 = mul i64 %conv182, 1
  %call184 = call i8* @Perl_safesysmalloc(i64 %mul183)
  store i8* %call184, i8** %dc, align 8
  %128 = load i8*, i8** %dc, align 8
  %129 = load i32, i32* %needlen, align 4
  %add185 = add nsw i32 %129, 1
  %conv186 = sext i32 %add185 to i64
  %mul187 = mul i64 %conv186, 1
  call void @llvm.memset.p0i8.i64(i8* %128, i8 0, i64 %mul187, i32 1, i1 false)
  %130 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %131 = load i8*, i8** %dc, align 8
  %132 = load i32, i32* %needlen, align 4
  %conv188 = sext i32 %132 to i64
  call void @Perl_sv_usepvn(%struct.sv* %130, i8* %131, i64 %conv188)
  %133 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any189 = getelementptr inbounds %struct.sv, %struct.sv* %133, i32 0, i32 0
  %134 = load i8*, i8** %sv_any189, align 8
  %135 = bitcast i8* %134 to %struct.xpv*
  %xpv_pv190 = getelementptr inbounds %struct.xpv, %struct.xpv* %135, i32 0, i32 0
  %136 = load i8*, i8** %xpv_pv190, align 8
  store i8* %136, i8** %dc, align 8
  br label %if.end.191

if.end.191:                                       ; preds = %cond.end.178, %if.end.165
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %cond.end.82
  %137 = load i32, i32* %len, align 4
  %conv193 = sext i32 %137 to i64
  %138 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any194 = getelementptr inbounds %struct.sv, %struct.sv* %138, i32 0, i32 0
  %139 = load i8*, i8** %sv_any194, align 8
  %140 = bitcast i8* %139 to %struct.xpv*
  %xpv_cur195 = getelementptr inbounds %struct.xpv, %struct.xpv* %140, i32 0, i32 1
  store i64 %conv193, i64* %xpv_cur195, align 8
  store i64 %conv193, i64* %tmp
  %141 = load i64, i64* %tmp
  %142 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags196 = getelementptr inbounds %struct.sv, %struct.sv* %142, i32 0, i32 2
  %143 = load i32, i32* %sv_flags196, align 4
  %and197 = and i32 %143, 1223753727
  store i32 %and197, i32* %sv_flags196, align 4
  %144 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags198 = getelementptr inbounds %struct.sv, %struct.sv* %144, i32 0, i32 2
  %145 = load i32, i32* %sv_flags198, align 4
  %or = or i32 %145, 67371008
  store i32 %or, i32* %sv_flags198, align 4
  %146 = load i8, i8* %left_utf, align 1
  %conv199 = sext i8 %146 to i32
  %tobool200 = icmp ne i32 %conv199, 0
  br i1 %tobool200, label %if.then.204, label %lor.lhs.false.201

lor.lhs.false.201:                                ; preds = %if.end.192
  %147 = load i8, i8* %right_utf, align 1
  %conv202 = sext i8 %147 to i32
  %tobool203 = icmp ne i32 %conv202, 0
  br i1 %tobool203, label %if.then.204, label %if.else.298

if.then.204:                                      ; preds = %lor.lhs.false.201, %if.end.192
  %148 = load i8*, i8** %dc, align 8
  store i8* %148, i8** %dcsave, align 8
  %149 = load i64, i64* %leftlen, align 8
  store i64 %149, i64* %lulen, align 8
  %150 = load i64, i64* %rightlen, align 8
  store i64 %150, i64* %rulen, align 8
  %151 = load i32, i32* %optype.addr, align 4
  switch i32 %151, label %sw.epilog [
    i32 91, label %sw.bb
    i32 92, label %sw.bb.236
    i32 93, label %sw.bb.252
  ]

sw.bb:                                            ; preds = %if.then.204
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb
  %152 = load i64, i64* %lulen, align 8
  %tobool212 = icmp ne i64 %152, 0
  br i1 %tobool212, label %land.rhs.213, label %land.end.215

land.rhs.213:                                     ; preds = %while.cond
  %153 = load i64, i64* %rulen, align 8
  %tobool214 = icmp ne i64 %153, 0
  br label %land.end.215

land.end.215:                                     ; preds = %land.rhs.213, %while.cond
  %154 = phi i1 [ false, %while.cond ], [ %tobool214, %land.rhs.213 ]
  br i1 %154, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.215
  %155 = load i8*, i8** %lc, align 8
  %156 = load i64, i64* %lulen, align 8
  %call217 = call i64 @Perl_utf8n_to_uvuni(i8* %155, i64 %156, i64* %ulen, i32 105)
  store i64 %call217, i64* %luc, align 8
  %157 = load i64, i64* %ulen, align 8
  %158 = load i8*, i8** %lc, align 8
  %add.ptr218 = getelementptr inbounds i8, i8* %158, i64 %157
  store i8* %add.ptr218, i8** %lc, align 8
  %159 = load i64, i64* %ulen, align 8
  %160 = load i64, i64* %lulen, align 8
  %sub219 = sub i64 %160, %159
  store i64 %sub219, i64* %lulen, align 8
  %161 = load i8*, i8** %rc, align 8
  %162 = load i64, i64* %rulen, align 8
  %call220 = call i64 @Perl_utf8n_to_uvuni(i8* %161, i64 %162, i64* %ulen, i32 105)
  store i64 %call220, i64* %ruc, align 8
  %163 = load i64, i64* %ulen, align 8
  %164 = load i8*, i8** %rc, align 8
  %add.ptr221 = getelementptr inbounds i8, i8* %164, i64 %163
  store i8* %add.ptr221, i8** %rc, align 8
  %165 = load i64, i64* %ulen, align 8
  %166 = load i64, i64* %rulen, align 8
  %sub222 = sub i64 %166, %165
  store i64 %sub222, i64* %rulen, align 8
  %167 = load i64, i64* %luc, align 8
  %168 = load i64, i64* %ruc, align 8
  %and223 = and i64 %167, %168
  store i64 %and223, i64* %duc, align 8
  %169 = load i8*, i8** %dc, align 8
  %170 = load i64, i64* %duc, align 8
  %call224 = call i8* @Perl_uvuni_to_utf8(i8* %169, i64 %170)
  store i8* %call224, i8** %dc, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end.215
  %171 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %172 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %cmp225 = icmp eq %struct.sv* %171, %172
  br i1 %cmp225, label %if.then.230, label %lor.lhs.false.227

lor.lhs.false.227:                                ; preds = %while.end
  %173 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %174 = load %struct.sv*, %struct.sv** %right.addr, align 8
  %cmp228 = icmp eq %struct.sv* %173, %174
  br i1 %cmp228, label %if.then.230, label %if.end.232

if.then.230:                                      ; preds = %lor.lhs.false.227, %while.end
  %175 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %176 = load i8*, i8** %dcsave, align 8
  %177 = load i32, i32* %needlen, align 4
  %conv231 = sext i32 %177 to i64
  call void @Perl_sv_usepvn(%struct.sv* %175, i8* %176, i64 %conv231)
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.230, %lor.lhs.false.227
  %178 = load i8*, i8** %dc, align 8
  %179 = load i8*, i8** %dcsave, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %178 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %179 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %180 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any234 = getelementptr inbounds %struct.sv, %struct.sv* %180, i32 0, i32 0
  %181 = load i8*, i8** %sv_any234, align 8
  %182 = bitcast i8* %181 to %struct.xpv*
  %xpv_cur235 = getelementptr inbounds %struct.xpv, %struct.xpv* %182, i32 0, i32 1
  store i64 %sub.ptr.sub, i64* %xpv_cur235, align 8
  store i64 %sub.ptr.sub, i64* %tmp233
  %183 = load i64, i64* %tmp233
  br label %sw.epilog

sw.bb.236:                                        ; preds = %if.then.204
  br label %while.cond.237

while.cond.237:                                   ; preds = %while.body.243, %sw.bb.236
  %184 = load i64, i64* %lulen, align 8
  %tobool238 = icmp ne i64 %184, 0
  br i1 %tobool238, label %land.rhs.239, label %land.end.241

land.rhs.239:                                     ; preds = %while.cond.237
  %185 = load i64, i64* %rulen, align 8
  %tobool240 = icmp ne i64 %185, 0
  br label %land.end.241

land.end.241:                                     ; preds = %land.rhs.239, %while.cond.237
  %186 = phi i1 [ false, %while.cond.237 ], [ %tobool240, %land.rhs.239 ]
  br i1 %186, label %while.body.243, label %while.end.251

while.body.243:                                   ; preds = %land.end.241
  %187 = load i8*, i8** %lc, align 8
  %188 = load i64, i64* %lulen, align 8
  %call244 = call i64 @Perl_utf8n_to_uvuni(i8* %187, i64 %188, i64* %ulen, i32 105)
  store i64 %call244, i64* %luc, align 8
  %189 = load i64, i64* %ulen, align 8
  %190 = load i8*, i8** %lc, align 8
  %add.ptr245 = getelementptr inbounds i8, i8* %190, i64 %189
  store i8* %add.ptr245, i8** %lc, align 8
  %191 = load i64, i64* %ulen, align 8
  %192 = load i64, i64* %lulen, align 8
  %sub246 = sub i64 %192, %191
  store i64 %sub246, i64* %lulen, align 8
  %193 = load i8*, i8** %rc, align 8
  %194 = load i64, i64* %rulen, align 8
  %call247 = call i64 @Perl_utf8n_to_uvuni(i8* %193, i64 %194, i64* %ulen, i32 105)
  store i64 %call247, i64* %ruc, align 8
  %195 = load i64, i64* %ulen, align 8
  %196 = load i8*, i8** %rc, align 8
  %add.ptr248 = getelementptr inbounds i8, i8* %196, i64 %195
  store i8* %add.ptr248, i8** %rc, align 8
  %197 = load i64, i64* %ulen, align 8
  %198 = load i64, i64* %rulen, align 8
  %sub249 = sub i64 %198, %197
  store i64 %sub249, i64* %rulen, align 8
  %199 = load i64, i64* %luc, align 8
  %200 = load i64, i64* %ruc, align 8
  %xor = xor i64 %199, %200
  store i64 %xor, i64* %duc, align 8
  %201 = load i8*, i8** %dc, align 8
  %202 = load i64, i64* %duc, align 8
  %call250 = call i8* @Perl_uvuni_to_utf8(i8* %201, i64 %202)
  store i8* %call250, i8** %dc, align 8
  br label %while.cond.237

while.end.251:                                    ; preds = %land.end.241
  br label %mop_up_utf

sw.bb.252:                                        ; preds = %if.then.204
  br label %while.cond.253

while.cond.253:                                   ; preds = %while.body.259, %sw.bb.252
  %203 = load i64, i64* %lulen, align 8
  %tobool254 = icmp ne i64 %203, 0
  br i1 %tobool254, label %land.rhs.255, label %land.end.257

land.rhs.255:                                     ; preds = %while.cond.253
  %204 = load i64, i64* %rulen, align 8
  %tobool256 = icmp ne i64 %204, 0
  br label %land.end.257

land.end.257:                                     ; preds = %land.rhs.255, %while.cond.253
  %205 = phi i1 [ false, %while.cond.253 ], [ %tobool256, %land.rhs.255 ]
  br i1 %205, label %while.body.259, label %while.end.268

while.body.259:                                   ; preds = %land.end.257
  %206 = load i8*, i8** %lc, align 8
  %207 = load i64, i64* %lulen, align 8
  %call260 = call i64 @Perl_utf8n_to_uvuni(i8* %206, i64 %207, i64* %ulen, i32 105)
  store i64 %call260, i64* %luc, align 8
  %208 = load i64, i64* %ulen, align 8
  %209 = load i8*, i8** %lc, align 8
  %add.ptr261 = getelementptr inbounds i8, i8* %209, i64 %208
  store i8* %add.ptr261, i8** %lc, align 8
  %210 = load i64, i64* %ulen, align 8
  %211 = load i64, i64* %lulen, align 8
  %sub262 = sub i64 %211, %210
  store i64 %sub262, i64* %lulen, align 8
  %212 = load i8*, i8** %rc, align 8
  %213 = load i64, i64* %rulen, align 8
  %call263 = call i64 @Perl_utf8n_to_uvuni(i8* %212, i64 %213, i64* %ulen, i32 105)
  store i64 %call263, i64* %ruc, align 8
  %214 = load i64, i64* %ulen, align 8
  %215 = load i8*, i8** %rc, align 8
  %add.ptr264 = getelementptr inbounds i8, i8* %215, i64 %214
  store i8* %add.ptr264, i8** %rc, align 8
  %216 = load i64, i64* %ulen, align 8
  %217 = load i64, i64* %rulen, align 8
  %sub265 = sub i64 %217, %216
  store i64 %sub265, i64* %rulen, align 8
  %218 = load i64, i64* %luc, align 8
  %219 = load i64, i64* %ruc, align 8
  %or266 = or i64 %218, %219
  store i64 %or266, i64* %duc, align 8
  %220 = load i8*, i8** %dc, align 8
  %221 = load i64, i64* %duc, align 8
  %call267 = call i8* @Perl_uvuni_to_utf8(i8* %220, i64 %221)
  store i8* %call267, i8** %dc, align 8
  br label %while.cond.253

while.end.268:                                    ; preds = %land.end.257
  br label %mop_up_utf

mop_up_utf:                                       ; preds = %while.end.268, %while.end.251
  %222 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %223 = load %struct.sv*, %struct.sv** %left.addr, align 8
  %cmp269 = icmp eq %struct.sv* %222, %223
  br i1 %cmp269, label %if.then.274, label %lor.lhs.false.271

lor.lhs.false.271:                                ; preds = %mop_up_utf
  %224 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %225 = load %struct.sv*, %struct.sv** %right.addr, align 8
  %cmp272 = icmp eq %struct.sv* %224, %225
  br i1 %cmp272, label %if.then.274, label %if.end.276

if.then.274:                                      ; preds = %lor.lhs.false.271, %mop_up_utf
  %226 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %227 = load i8*, i8** %dcsave, align 8
  %228 = load i32, i32* %needlen, align 4
  %conv275 = sext i32 %228 to i64
  call void @Perl_sv_usepvn(%struct.sv* %226, i8* %227, i64 %conv275)
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.274, %lor.lhs.false.271
  %229 = load i8*, i8** %dc, align 8
  %230 = load i8*, i8** %dcsave, align 8
  %sub.ptr.lhs.cast278 = ptrtoint i8* %229 to i64
  %sub.ptr.rhs.cast279 = ptrtoint i8* %230 to i64
  %sub.ptr.sub280 = sub i64 %sub.ptr.lhs.cast278, %sub.ptr.rhs.cast279
  %231 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any281 = getelementptr inbounds %struct.sv, %struct.sv* %231, i32 0, i32 0
  %232 = load i8*, i8** %sv_any281, align 8
  %233 = bitcast i8* %232 to %struct.xpv*
  %xpv_cur282 = getelementptr inbounds %struct.xpv, %struct.xpv* %233, i32 0, i32 1
  store i64 %sub.ptr.sub280, i64* %xpv_cur282, align 8
  store i64 %sub.ptr.sub280, i64* %tmp277
  %234 = load i64, i64* %tmp277
  %235 = load i64, i64* %rulen, align 8
  %tobool283 = icmp ne i64 %235, 0
  br i1 %tobool283, label %if.then.284, label %if.else.285

if.then.284:                                      ; preds = %if.end.276
  %236 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %237 = load i8*, i8** %rc, align 8
  %238 = load i64, i64* %rulen, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %236, i8* %237, i64 %238, i32 2)
  br label %if.end.295

if.else.285:                                      ; preds = %if.end.276
  %239 = load i64, i64* %lulen, align 8
  %tobool286 = icmp ne i64 %239, 0
  br i1 %tobool286, label %if.then.287, label %if.else.288

if.then.287:                                      ; preds = %if.else.285
  %240 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %241 = load i8*, i8** %lc, align 8
  %242 = load i64, i64* %lulen, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %240, i8* %241, i64 %242, i32 2)
  br label %if.end.294

if.else.288:                                      ; preds = %if.else.285
  %243 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any289 = getelementptr inbounds %struct.sv, %struct.sv* %243, i32 0, i32 0
  %244 = load i8*, i8** %sv_any289, align 8
  %245 = bitcast i8* %244 to %struct.xpv*
  %xpv_pv290 = getelementptr inbounds %struct.xpv, %struct.xpv* %245, i32 0, i32 0
  %246 = load i8*, i8** %xpv_pv290, align 8
  %247 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any291 = getelementptr inbounds %struct.sv, %struct.sv* %247, i32 0, i32 0
  %248 = load i8*, i8** %sv_any291, align 8
  %249 = bitcast i8* %248 to %struct.xpv*
  %xpv_cur292 = getelementptr inbounds %struct.xpv, %struct.xpv* %249, i32 0, i32 1
  %250 = load i64, i64* %xpv_cur292, align 8
  %add.ptr293 = getelementptr inbounds i8, i8* %246, i64 %250
  store i8 0, i8* %add.ptr293, align 1
  br label %if.end.294

if.end.294:                                       ; preds = %if.else.288, %if.then.287
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294, %if.then.284
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.204, %if.end.295, %if.end.232
  %251 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags296 = getelementptr inbounds %struct.sv, %struct.sv* %251, i32 0, i32 2
  %252 = load i32, i32* %sv_flags296, align 4
  %or297 = or i32 %252, 536870912
  store i32 %or297, i32* %sv_flags296, align 4
  br label %finish

if.else.298:                                      ; preds = %lor.lhs.false.201
  %253 = load i32, i32* %len, align 4
  %conv299 = sext i32 %253 to i64
  %cmp300 = icmp uge i64 %conv299, 32
  br i1 %cmp300, label %land.lhs.true.302, label %if.end.382

land.lhs.true.302:                                ; preds = %if.else.298
  %254 = load i8*, i8** %dc, align 8
  %255 = ptrtoint i8* %254 to i64
  %rem = urem i64 %255, 8
  %tobool303 = icmp ne i64 %rem, 0
  br i1 %tobool303, label %if.end.382, label %land.lhs.true.304

land.lhs.true.304:                                ; preds = %land.lhs.true.302
  %256 = load i8*, i8** %lc, align 8
  %257 = ptrtoint i8* %256 to i64
  %rem305 = urem i64 %257, 8
  %tobool306 = icmp ne i64 %rem305, 0
  br i1 %tobool306, label %if.end.382, label %land.lhs.true.307

land.lhs.true.307:                                ; preds = %land.lhs.true.304
  %258 = load i8*, i8** %rc, align 8
  %259 = ptrtoint i8* %258 to i64
  %rem308 = urem i64 %259, 8
  %tobool309 = icmp ne i64 %rem308, 0
  br i1 %tobool309, label %if.end.382, label %if.then.310

if.then.310:                                      ; preds = %land.lhs.true.307
  %260 = load i32, i32* %len, align 4
  %conv312 = sext i32 %260 to i64
  %rem313 = urem i64 %conv312, 32
  %conv314 = trunc i64 %rem313 to i32
  store i32 %conv314, i32* %remainder, align 4
  %261 = load i32, i32* %len, align 4
  %conv315 = sext i32 %261 to i64
  %div = udiv i64 %conv315, 32
  %conv316 = trunc i64 %div to i32
  store i32 %conv316, i32* %len, align 4
  %262 = load i8*, i8** %dc, align 8
  %263 = bitcast i8* %262 to i64*
  store i64* %263, i64** %dl, align 8
  %264 = load i8*, i8** %lc, align 8
  %265 = bitcast i8* %264 to i64*
  store i64* %265, i64** %ll, align 8
  %266 = load i8*, i8** %rc, align 8
  %267 = bitcast i8* %266 to i64*
  store i64* %267, i64** %rl, align 8
  %268 = load i32, i32* %optype.addr, align 4
  switch i32 %268, label %sw.epilog.381 [
    i32 91, label %sw.bb.317
    i32 92, label %sw.bb.337
    i32 93, label %sw.bb.359
  ]

sw.bb.317:                                        ; preds = %if.then.310
  br label %while.cond.318

while.cond.318:                                   ; preds = %while.body.320, %sw.bb.317
  %269 = load i32, i32* %len, align 4
  %dec = add nsw i32 %269, -1
  store i32 %dec, i32* %len, align 4
  %tobool319 = icmp ne i32 %269, 0
  br i1 %tobool319, label %while.body.320, label %while.end.336

while.body.320:                                   ; preds = %while.cond.318
  %270 = load i64*, i64** %ll, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %270, i32 1
  store i64* %incdec.ptr, i64** %ll, align 8
  %271 = load i64, i64* %270, align 8
  %272 = load i64*, i64** %rl, align 8
  %incdec.ptr321 = getelementptr inbounds i64, i64* %272, i32 1
  store i64* %incdec.ptr321, i64** %rl, align 8
  %273 = load i64, i64* %272, align 8
  %and322 = and i64 %271, %273
  %274 = load i64*, i64** %dl, align 8
  %incdec.ptr323 = getelementptr inbounds i64, i64* %274, i32 1
  store i64* %incdec.ptr323, i64** %dl, align 8
  store i64 %and322, i64* %274, align 8
  %275 = load i64*, i64** %ll, align 8
  %incdec.ptr324 = getelementptr inbounds i64, i64* %275, i32 1
  store i64* %incdec.ptr324, i64** %ll, align 8
  %276 = load i64, i64* %275, align 8
  %277 = load i64*, i64** %rl, align 8
  %incdec.ptr325 = getelementptr inbounds i64, i64* %277, i32 1
  store i64* %incdec.ptr325, i64** %rl, align 8
  %278 = load i64, i64* %277, align 8
  %and326 = and i64 %276, %278
  %279 = load i64*, i64** %dl, align 8
  %incdec.ptr327 = getelementptr inbounds i64, i64* %279, i32 1
  store i64* %incdec.ptr327, i64** %dl, align 8
  store i64 %and326, i64* %279, align 8
  %280 = load i64*, i64** %ll, align 8
  %incdec.ptr328 = getelementptr inbounds i64, i64* %280, i32 1
  store i64* %incdec.ptr328, i64** %ll, align 8
  %281 = load i64, i64* %280, align 8
  %282 = load i64*, i64** %rl, align 8
  %incdec.ptr329 = getelementptr inbounds i64, i64* %282, i32 1
  store i64* %incdec.ptr329, i64** %rl, align 8
  %283 = load i64, i64* %282, align 8
  %and330 = and i64 %281, %283
  %284 = load i64*, i64** %dl, align 8
  %incdec.ptr331 = getelementptr inbounds i64, i64* %284, i32 1
  store i64* %incdec.ptr331, i64** %dl, align 8
  store i64 %and330, i64* %284, align 8
  %285 = load i64*, i64** %ll, align 8
  %incdec.ptr332 = getelementptr inbounds i64, i64* %285, i32 1
  store i64* %incdec.ptr332, i64** %ll, align 8
  %286 = load i64, i64* %285, align 8
  %287 = load i64*, i64** %rl, align 8
  %incdec.ptr333 = getelementptr inbounds i64, i64* %287, i32 1
  store i64* %incdec.ptr333, i64** %rl, align 8
  %288 = load i64, i64* %287, align 8
  %and334 = and i64 %286, %288
  %289 = load i64*, i64** %dl, align 8
  %incdec.ptr335 = getelementptr inbounds i64, i64* %289, i32 1
  store i64* %incdec.ptr335, i64** %dl, align 8
  store i64 %and334, i64* %289, align 8
  br label %while.cond.318

while.end.336:                                    ; preds = %while.cond.318
  br label %sw.epilog.381

sw.bb.337:                                        ; preds = %if.then.310
  br label %while.cond.338

while.cond.338:                                   ; preds = %while.body.341, %sw.bb.337
  %290 = load i32, i32* %len, align 4
  %dec339 = add nsw i32 %290, -1
  store i32 %dec339, i32* %len, align 4
  %tobool340 = icmp ne i32 %290, 0
  br i1 %tobool340, label %while.body.341, label %while.end.358

while.body.341:                                   ; preds = %while.cond.338
  %291 = load i64*, i64** %ll, align 8
  %incdec.ptr342 = getelementptr inbounds i64, i64* %291, i32 1
  store i64* %incdec.ptr342, i64** %ll, align 8
  %292 = load i64, i64* %291, align 8
  %293 = load i64*, i64** %rl, align 8
  %incdec.ptr343 = getelementptr inbounds i64, i64* %293, i32 1
  store i64* %incdec.ptr343, i64** %rl, align 8
  %294 = load i64, i64* %293, align 8
  %xor344 = xor i64 %292, %294
  %295 = load i64*, i64** %dl, align 8
  %incdec.ptr345 = getelementptr inbounds i64, i64* %295, i32 1
  store i64* %incdec.ptr345, i64** %dl, align 8
  store i64 %xor344, i64* %295, align 8
  %296 = load i64*, i64** %ll, align 8
  %incdec.ptr346 = getelementptr inbounds i64, i64* %296, i32 1
  store i64* %incdec.ptr346, i64** %ll, align 8
  %297 = load i64, i64* %296, align 8
  %298 = load i64*, i64** %rl, align 8
  %incdec.ptr347 = getelementptr inbounds i64, i64* %298, i32 1
  store i64* %incdec.ptr347, i64** %rl, align 8
  %299 = load i64, i64* %298, align 8
  %xor348 = xor i64 %297, %299
  %300 = load i64*, i64** %dl, align 8
  %incdec.ptr349 = getelementptr inbounds i64, i64* %300, i32 1
  store i64* %incdec.ptr349, i64** %dl, align 8
  store i64 %xor348, i64* %300, align 8
  %301 = load i64*, i64** %ll, align 8
  %incdec.ptr350 = getelementptr inbounds i64, i64* %301, i32 1
  store i64* %incdec.ptr350, i64** %ll, align 8
  %302 = load i64, i64* %301, align 8
  %303 = load i64*, i64** %rl, align 8
  %incdec.ptr351 = getelementptr inbounds i64, i64* %303, i32 1
  store i64* %incdec.ptr351, i64** %rl, align 8
  %304 = load i64, i64* %303, align 8
  %xor352 = xor i64 %302, %304
  %305 = load i64*, i64** %dl, align 8
  %incdec.ptr353 = getelementptr inbounds i64, i64* %305, i32 1
  store i64* %incdec.ptr353, i64** %dl, align 8
  store i64 %xor352, i64* %305, align 8
  %306 = load i64*, i64** %ll, align 8
  %incdec.ptr354 = getelementptr inbounds i64, i64* %306, i32 1
  store i64* %incdec.ptr354, i64** %ll, align 8
  %307 = load i64, i64* %306, align 8
  %308 = load i64*, i64** %rl, align 8
  %incdec.ptr355 = getelementptr inbounds i64, i64* %308, i32 1
  store i64* %incdec.ptr355, i64** %rl, align 8
  %309 = load i64, i64* %308, align 8
  %xor356 = xor i64 %307, %309
  %310 = load i64*, i64** %dl, align 8
  %incdec.ptr357 = getelementptr inbounds i64, i64* %310, i32 1
  store i64* %incdec.ptr357, i64** %dl, align 8
  store i64 %xor356, i64* %310, align 8
  br label %while.cond.338

while.end.358:                                    ; preds = %while.cond.338
  br label %sw.epilog.381

sw.bb.359:                                        ; preds = %if.then.310
  br label %while.cond.360

while.cond.360:                                   ; preds = %while.body.363, %sw.bb.359
  %311 = load i32, i32* %len, align 4
  %dec361 = add nsw i32 %311, -1
  store i32 %dec361, i32* %len, align 4
  %tobool362 = icmp ne i32 %311, 0
  br i1 %tobool362, label %while.body.363, label %while.end.380

while.body.363:                                   ; preds = %while.cond.360
  %312 = load i64*, i64** %ll, align 8
  %incdec.ptr364 = getelementptr inbounds i64, i64* %312, i32 1
  store i64* %incdec.ptr364, i64** %ll, align 8
  %313 = load i64, i64* %312, align 8
  %314 = load i64*, i64** %rl, align 8
  %incdec.ptr365 = getelementptr inbounds i64, i64* %314, i32 1
  store i64* %incdec.ptr365, i64** %rl, align 8
  %315 = load i64, i64* %314, align 8
  %or366 = or i64 %313, %315
  %316 = load i64*, i64** %dl, align 8
  %incdec.ptr367 = getelementptr inbounds i64, i64* %316, i32 1
  store i64* %incdec.ptr367, i64** %dl, align 8
  store i64 %or366, i64* %316, align 8
  %317 = load i64*, i64** %ll, align 8
  %incdec.ptr368 = getelementptr inbounds i64, i64* %317, i32 1
  store i64* %incdec.ptr368, i64** %ll, align 8
  %318 = load i64, i64* %317, align 8
  %319 = load i64*, i64** %rl, align 8
  %incdec.ptr369 = getelementptr inbounds i64, i64* %319, i32 1
  store i64* %incdec.ptr369, i64** %rl, align 8
  %320 = load i64, i64* %319, align 8
  %or370 = or i64 %318, %320
  %321 = load i64*, i64** %dl, align 8
  %incdec.ptr371 = getelementptr inbounds i64, i64* %321, i32 1
  store i64* %incdec.ptr371, i64** %dl, align 8
  store i64 %or370, i64* %321, align 8
  %322 = load i64*, i64** %ll, align 8
  %incdec.ptr372 = getelementptr inbounds i64, i64* %322, i32 1
  store i64* %incdec.ptr372, i64** %ll, align 8
  %323 = load i64, i64* %322, align 8
  %324 = load i64*, i64** %rl, align 8
  %incdec.ptr373 = getelementptr inbounds i64, i64* %324, i32 1
  store i64* %incdec.ptr373, i64** %rl, align 8
  %325 = load i64, i64* %324, align 8
  %or374 = or i64 %323, %325
  %326 = load i64*, i64** %dl, align 8
  %incdec.ptr375 = getelementptr inbounds i64, i64* %326, i32 1
  store i64* %incdec.ptr375, i64** %dl, align 8
  store i64 %or374, i64* %326, align 8
  %327 = load i64*, i64** %ll, align 8
  %incdec.ptr376 = getelementptr inbounds i64, i64* %327, i32 1
  store i64* %incdec.ptr376, i64** %ll, align 8
  %328 = load i64, i64* %327, align 8
  %329 = load i64*, i64** %rl, align 8
  %incdec.ptr377 = getelementptr inbounds i64, i64* %329, i32 1
  store i64* %incdec.ptr377, i64** %rl, align 8
  %330 = load i64, i64* %329, align 8
  %or378 = or i64 %328, %330
  %331 = load i64*, i64** %dl, align 8
  %incdec.ptr379 = getelementptr inbounds i64, i64* %331, i32 1
  store i64* %incdec.ptr379, i64** %dl, align 8
  store i64 %or378, i64* %331, align 8
  br label %while.cond.360

while.end.380:                                    ; preds = %while.cond.360
  br label %sw.epilog.381

sw.epilog.381:                                    ; preds = %while.end.380, %if.then.310, %while.end.358, %while.end.336
  %332 = load i64*, i64** %dl, align 8
  %333 = bitcast i64* %332 to i8*
  store i8* %333, i8** %dc, align 8
  %334 = load i64*, i64** %ll, align 8
  %335 = bitcast i64* %334 to i8*
  store i8* %335, i8** %lc, align 8
  %336 = load i64*, i64** %rl, align 8
  %337 = bitcast i64* %336 to i8*
  store i8* %337, i8** %rc, align 8
  %338 = load i32, i32* %remainder, align 4
  store i32 %338, i32* %len, align 4
  br label %if.end.382

if.end.382:                                       ; preds = %sw.epilog.381, %land.lhs.true.307, %land.lhs.true.304, %land.lhs.true.302, %if.else.298
  br label %if.end.383

if.end.383:                                       ; preds = %if.end.382
  %339 = load i32, i32* %optype.addr, align 4
  switch i32 %339, label %sw.epilog.447 [
    i32 91, label %sw.bb.384
    i32 92, label %sw.bb.397
    i32 93, label %sw.bb.410
  ]

sw.bb.384:                                        ; preds = %if.end.383
  br label %while.cond.385

while.cond.385:                                   ; preds = %while.body.388, %sw.bb.384
  %340 = load i32, i32* %len, align 4
  %dec386 = add nsw i32 %340, -1
  store i32 %dec386, i32* %len, align 4
  %tobool387 = icmp ne i32 %340, 0
  br i1 %tobool387, label %while.body.388, label %while.end.396

while.body.388:                                   ; preds = %while.cond.385
  %341 = load i8*, i8** %lc, align 8
  %incdec.ptr389 = getelementptr inbounds i8, i8* %341, i32 1
  store i8* %incdec.ptr389, i8** %lc, align 8
  %342 = load i8, i8* %341, align 1
  %conv390 = sext i8 %342 to i32
  %343 = load i8*, i8** %rc, align 8
  %incdec.ptr391 = getelementptr inbounds i8, i8* %343, i32 1
  store i8* %incdec.ptr391, i8** %rc, align 8
  %344 = load i8, i8* %343, align 1
  %conv392 = sext i8 %344 to i32
  %and393 = and i32 %conv390, %conv392
  %conv394 = trunc i32 %and393 to i8
  %345 = load i8*, i8** %dc, align 8
  %incdec.ptr395 = getelementptr inbounds i8, i8* %345, i32 1
  store i8* %incdec.ptr395, i8** %dc, align 8
  store i8 %conv394, i8* %345, align 1
  br label %while.cond.385

while.end.396:                                    ; preds = %while.cond.385
  br label %sw.epilog.447

sw.bb.397:                                        ; preds = %if.end.383
  br label %while.cond.398

while.cond.398:                                   ; preds = %while.body.401, %sw.bb.397
  %346 = load i32, i32* %len, align 4
  %dec399 = add nsw i32 %346, -1
  store i32 %dec399, i32* %len, align 4
  %tobool400 = icmp ne i32 %346, 0
  br i1 %tobool400, label %while.body.401, label %while.end.409

while.body.401:                                   ; preds = %while.cond.398
  %347 = load i8*, i8** %lc, align 8
  %incdec.ptr402 = getelementptr inbounds i8, i8* %347, i32 1
  store i8* %incdec.ptr402, i8** %lc, align 8
  %348 = load i8, i8* %347, align 1
  %conv403 = sext i8 %348 to i32
  %349 = load i8*, i8** %rc, align 8
  %incdec.ptr404 = getelementptr inbounds i8, i8* %349, i32 1
  store i8* %incdec.ptr404, i8** %rc, align 8
  %350 = load i8, i8* %349, align 1
  %conv405 = sext i8 %350 to i32
  %xor406 = xor i32 %conv403, %conv405
  %conv407 = trunc i32 %xor406 to i8
  %351 = load i8*, i8** %dc, align 8
  %incdec.ptr408 = getelementptr inbounds i8, i8* %351, i32 1
  store i8* %incdec.ptr408, i8** %dc, align 8
  store i8 %conv407, i8* %351, align 1
  br label %while.cond.398

while.end.409:                                    ; preds = %while.cond.398
  br label %mop_up

sw.bb.410:                                        ; preds = %if.end.383
  br label %while.cond.411

while.cond.411:                                   ; preds = %while.body.414, %sw.bb.410
  %352 = load i32, i32* %len, align 4
  %dec412 = add nsw i32 %352, -1
  store i32 %dec412, i32* %len, align 4
  %tobool413 = icmp ne i32 %352, 0
  br i1 %tobool413, label %while.body.414, label %while.end.422

while.body.414:                                   ; preds = %while.cond.411
  %353 = load i8*, i8** %lc, align 8
  %incdec.ptr415 = getelementptr inbounds i8, i8* %353, i32 1
  store i8* %incdec.ptr415, i8** %lc, align 8
  %354 = load i8, i8* %353, align 1
  %conv416 = sext i8 %354 to i32
  %355 = load i8*, i8** %rc, align 8
  %incdec.ptr417 = getelementptr inbounds i8, i8* %355, i32 1
  store i8* %incdec.ptr417, i8** %rc, align 8
  %356 = load i8, i8* %355, align 1
  %conv418 = sext i8 %356 to i32
  %or419 = or i32 %conv416, %conv418
  %conv420 = trunc i32 %or419 to i8
  %357 = load i8*, i8** %dc, align 8
  %incdec.ptr421 = getelementptr inbounds i8, i8* %357, i32 1
  store i8* %incdec.ptr421, i8** %dc, align 8
  store i8 %conv420, i8* %357, align 1
  br label %while.cond.411

while.end.422:                                    ; preds = %while.cond.411
  br label %mop_up

mop_up:                                           ; preds = %while.end.422, %while.end.409
  %358 = load i32, i32* %lensave, align 4
  store i32 %358, i32* %len, align 4
  %359 = load i64, i64* %rightlen, align 8
  %360 = load i32, i32* %len, align 4
  %conv423 = sext i32 %360 to i64
  %cmp424 = icmp ugt i64 %359, %conv423
  br i1 %cmp424, label %if.then.426, label %if.else.430

if.then.426:                                      ; preds = %mop_up
  %361 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %362 = load i8*, i8** %rsave, align 8
  %363 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %363 to i64
  %add.ptr427 = getelementptr inbounds i8, i8* %362, i64 %idx.ext
  %364 = load i64, i64* %rightlen, align 8
  %365 = load i32, i32* %len, align 4
  %conv428 = sext i32 %365 to i64
  %sub429 = sub i64 %364, %conv428
  call void @Perl_sv_catpvn_flags(%struct.sv* %361, i8* %add.ptr427, i64 %sub429, i32 2)
  br label %if.end.446

if.else.430:                                      ; preds = %mop_up
  %366 = load i64, i64* %leftlen, align 8
  %367 = load i32, i32* %len, align 4
  %conv431 = sext i32 %367 to i64
  %cmp432 = icmp ugt i64 %366, %conv431
  br i1 %cmp432, label %if.then.434, label %if.else.439

if.then.434:                                      ; preds = %if.else.430
  %368 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %369 = load i8*, i8** %lsave, align 8
  %370 = load i32, i32* %len, align 4
  %idx.ext435 = sext i32 %370 to i64
  %add.ptr436 = getelementptr inbounds i8, i8* %369, i64 %idx.ext435
  %371 = load i64, i64* %leftlen, align 8
  %372 = load i32, i32* %len, align 4
  %conv437 = sext i32 %372 to i64
  %sub438 = sub i64 %371, %conv437
  call void @Perl_sv_catpvn_flags(%struct.sv* %368, i8* %add.ptr436, i64 %sub438, i32 2)
  br label %if.end.445

if.else.439:                                      ; preds = %if.else.430
  %373 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any440 = getelementptr inbounds %struct.sv, %struct.sv* %373, i32 0, i32 0
  %374 = load i8*, i8** %sv_any440, align 8
  %375 = bitcast i8* %374 to %struct.xpv*
  %xpv_pv441 = getelementptr inbounds %struct.xpv, %struct.xpv* %375, i32 0, i32 0
  %376 = load i8*, i8** %xpv_pv441, align 8
  %377 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any442 = getelementptr inbounds %struct.sv, %struct.sv* %377, i32 0, i32 0
  %378 = load i8*, i8** %sv_any442, align 8
  %379 = bitcast i8* %378 to %struct.xpv*
  %xpv_cur443 = getelementptr inbounds %struct.xpv, %struct.xpv* %379, i32 0, i32 1
  %380 = load i64, i64* %xpv_cur443, align 8
  %add.ptr444 = getelementptr inbounds i8, i8* %376, i64 %380
  store i8 0, i8* %add.ptr444, align 1
  br label %if.end.445

if.end.445:                                       ; preds = %if.else.439, %if.then.434
  br label %if.end.446

if.end.446:                                       ; preds = %if.end.445, %if.then.426
  br label %sw.epilog.447

sw.epilog.447:                                    ; preds = %if.end.383, %if.end.446, %while.end.396
  br label %finish

finish:                                           ; preds = %sw.epilog.447, %sw.epilog
  %381 = load i8, i8* @PL_tainting, align 1
  %tobool448 = icmp ne i8 %381, 0
  br i1 %tobool448, label %if.then.449, label %if.end.456

if.then.449:                                      ; preds = %finish
  %382 = load i8, i8* @PL_tainted, align 1
  %tobool450 = icmp ne i8 %382, 0
  br i1 %tobool450, label %if.then.451, label %if.end.455

if.then.451:                                      ; preds = %if.then.449
  %383 = load i8, i8* @PL_tainting, align 1
  %tobool452 = icmp ne i8 %383, 0
  br i1 %tobool452, label %if.then.453, label %if.end.454

if.then.453:                                      ; preds = %if.then.451
  %384 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_taint(%struct.sv* %384)
  br label %if.end.454

if.end.454:                                       ; preds = %if.then.453, %if.then.451
  br label %if.end.455

if.end.455:                                       ; preds = %if.end.454, %if.then.449
  br label %if.end.456

if.end.456:                                       ; preds = %if.end.455, %finish
  ret void
}

declare i64 @Perl_sv_utf8_upgrade_flags(%struct.sv*, i32) #1

declare i8* @Perl_safesysmalloc(i64) #1

declare void @Perl_sv_usepvn(%struct.sv*, i8*, i64) #1

declare i64 @Perl_utf8n_to_uvuni(i8*, i64, i64*, i32) #1

declare i8* @Perl_uvuni_to_utf8(i8*, i64) #1

declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #1

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_do_kv() #0 {
entry:
  %retval = alloca %struct.op*, align 8
  %sp = alloca %struct.sv**, align 8
  %hv = alloca %struct.hv*, align 8
  %keys = alloca %struct.hv*, align 8
  %entry1 = alloca %struct.he*, align 8
  %tmpstr = alloca %struct.sv*, align 8
  %gimme = alloca i32, align 4
  %dokeys = alloca i32, align 4
  %dovalues = alloca i32, align 4
  %realhv = alloca i32, align 4
  %targ = alloca %struct.sv*, align 8
  %i = alloca i64, align 8
  %targ75 = alloca %struct.sv*, align 8
  %tmp = alloca %struct.sv*, align 8
  %sv = alloca %struct.sv*, align 8
  %tmp184 = alloca %struct.sv*, align 8
  %tmp205 = alloca %struct.sv*, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %2 = load %struct.sv*, %struct.sv** %1, align 8
  %3 = bitcast %struct.sv* %2 to %struct.hv*
  store %struct.hv* %3, %struct.hv** %hv, align 8
  %4 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %4, i32 0, i32 6
  %5 = load i8, i8* %op_flags, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 3
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.19

cond.false:                                       ; preds = %entry
  %6 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags3 = getelementptr inbounds %struct.op, %struct.op* %6, i32 0, i32 6
  %7 = load i8, i8* %op_flags3, align 1
  %conv4 = zext i8 %7 to i32
  %and5 = and i32 %conv4, 3
  %cmp6 = icmp eq i32 %and5, 2
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.false
  br label %cond.end.17

cond.false.9:                                     ; preds = %cond.false
  %8 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags10 = getelementptr inbounds %struct.op, %struct.op* %8, i32 0, i32 6
  %9 = load i8, i8* %op_flags10, align 1
  %conv11 = zext i8 %9 to i32
  %and12 = and i32 %conv11, 3
  %cmp13 = icmp eq i32 %and12, 3
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.false.9
  br label %cond.end

cond.false.16:                                    ; preds = %cond.false.9
  %call = call i32 @Perl_block_gimme()
  br label %cond.end

cond.end:                                         ; preds = %cond.false.16, %cond.true.15
  %cond = phi i32 [ 1, %cond.true.15 ], [ %call, %cond.false.16 ]
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.end, %cond.true.8
  %cond18 = phi i32 [ 0, %cond.true.8 ], [ %cond, %cond.end ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end.17, %cond.true
  %cond20 = phi i32 [ 128, %cond.true ], [ %cond18, %cond.end.17 ]
  store i32 %cond20, i32* %gimme, align 4
  %10 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %10, i32 0, i32 4
  %11 = load i16, i16* %op_type, align 2
  %conv21 = zext i16 %11 to i32
  %cmp22 = icmp eq i32 %conv21, 131
  %conv23 = zext i1 %cmp22 to i32
  store i32 %conv23, i32* %dokeys, align 4
  %12 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type24 = getelementptr inbounds %struct.op, %struct.op* %12, i32 0, i32 4
  %13 = load i16, i16* %op_type24, align 2
  %conv25 = zext i16 %13 to i32
  %cmp26 = icmp eq i32 %conv25, 130
  %conv27 = zext i1 %cmp26 to i32
  store i32 %conv27, i32* %dovalues, align 4
  %14 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_flags = getelementptr inbounds %struct.hv, %struct.hv* %14, i32 0, i32 2
  %15 = load i32, i32* %sv_flags, align 4
  %and28 = and i32 %15, 255
  %cmp29 = icmp eq i32 %and28, 11
  %conv30 = zext i1 %cmp29 to i32
  store i32 %conv30, i32* %realhv, align 4
  %16 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type31 = getelementptr inbounds %struct.op, %struct.op* %16, i32 0, i32 4
  %17 = load i16, i16* %op_type31, align 2
  %conv32 = zext i16 %17 to i32
  %cmp33 = icmp eq i32 %conv32, 134
  br i1 %cmp33, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.19
  %18 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type35 = getelementptr inbounds %struct.op, %struct.op* %18, i32 0, i32 4
  %19 = load i16, i16* %op_type35, align 2
  %conv36 = zext i16 %19 to i32
  %cmp37 = icmp eq i32 %conv36, 11
  br i1 %cmp37, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end.19
  store i32 1, i32* %dovalues, align 4
  store i32 1, i32* %dokeys, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %20 = load %struct.hv*, %struct.hv** %hv, align 8
  %tobool = icmp ne %struct.hv* %20, null
  br i1 %tobool, label %if.end.59, label %if.then.39

if.then.39:                                       ; preds = %if.end
  %21 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags40 = getelementptr inbounds %struct.op, %struct.op* %21, i32 0, i32 6
  %22 = load i8, i8* %op_flags40, align 1
  %conv41 = zext i8 %22 to i32
  %and42 = and i32 %conv41, 32
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then.50, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.then.39
  %23 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %23, i32 0, i32 7
  %24 = load i8, i8* %op_private, align 1
  %conv45 = zext i8 %24 to i32
  %and46 = and i32 %conv45, 8
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %land.lhs.true, label %if.end.58

land.lhs.true:                                    ; preds = %lor.lhs.false.44
  %call48 = call i32 @Perl_is_lvalue_sub()
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.58

if.then.50:                                       ; preds = %land.lhs.true, %if.then.39
  %25 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %25, i32 0, i32 3
  %26 = load i64, i64* %op_targ, align 8
  %27 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %27, i64 %26
  %28 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %28, %struct.sv** %targ, align 8
  %29 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags51 = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 2
  %30 = load i32, i32* %sv_flags51, align 4
  %and52 = and i32 %30, 255
  %cmp53 = icmp eq i32 %and52, 9
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.50
  %31 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %31, i32 0, i32 0
  %32 = load i8*, i8** %sv_any, align 8
  %33 = bitcast i8* %32 to %struct.xpvlv*
  %xlv_targ = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %33, i32 0, i32 9
  store %struct.sv* null, %struct.sv** %xlv_targ, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.then.50
  %34 = load %struct.sv*, %struct.sv** %targ, align 8
  %35 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr57 = getelementptr inbounds %struct.sv*, %struct.sv** %35, i32 1
  store %struct.sv** %incdec.ptr57, %struct.sv*** %sp, align 8
  store %struct.sv* %34, %struct.sv** %incdec.ptr57, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.56, %land.lhs.true, %lor.lhs.false.44
  %36 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %36, %struct.sv*** @PL_stack_sp, align 8
  %37 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %37, i32 0, i32 0
  %38 = load %struct.op*, %struct.op** %op_next, align 8
  store %struct.op* %38, %struct.op** %retval
  br label %return

if.end.59:                                        ; preds = %if.end
  %39 = load i32, i32* %realhv, align 4
  %tobool60 = icmp ne i32 %39, 0
  br i1 %tobool60, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %if.end.59
  %40 = load %struct.hv*, %struct.hv** %hv, align 8
  br label %cond.end.64

cond.false.62:                                    ; preds = %if.end.59
  %41 = load %struct.hv*, %struct.hv** %hv, align 8
  %42 = bitcast %struct.hv* %41 to %struct.av*
  %call63 = call %struct.hv* @Perl_avhv_keys(%struct.av* %42)
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.62, %cond.true.61
  %cond65 = phi %struct.hv* [ %40, %cond.true.61 ], [ %call63, %cond.false.62 ]
  store %struct.hv* %cond65, %struct.hv** %keys, align 8
  %43 = load %struct.hv*, %struct.hv** %keys, align 8
  %call66 = call i32 @Perl_hv_iterinit(%struct.hv* %43)
  %44 = load i32, i32* %gimme, align 4
  %cmp67 = icmp eq i32 %44, 128
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %cond.end.64
  %45 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %45, %struct.sv*** @PL_stack_sp, align 8
  %46 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next70 = getelementptr inbounds %struct.op, %struct.op* %46, i32 0, i32 0
  %47 = load %struct.op*, %struct.op** %op_next70, align 8
  store %struct.op* %47, %struct.op** %retval
  br label %return

if.end.71:                                        ; preds = %cond.end.64
  %48 = load i32, i32* %gimme, align 4
  %cmp72 = icmp eq i32 %48, 0
  br i1 %cmp72, label %if.then.74, label %if.end.142

if.then.74:                                       ; preds = %if.end.71
  %49 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ76 = getelementptr inbounds %struct.op, %struct.op* %49, i32 0, i32 3
  %50 = load i64, i64* %op_targ76, align 8
  %51 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx77 = getelementptr inbounds %struct.sv*, %struct.sv** %51, i64 %50
  %52 = load %struct.sv*, %struct.sv** %arrayidx77, align 8
  store %struct.sv* %52, %struct.sv** %targ75, align 8
  %53 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags78 = getelementptr inbounds %struct.op, %struct.op* %53, i32 0, i32 6
  %54 = load i8, i8* %op_flags78, align 1
  %conv79 = zext i8 %54 to i32
  %and80 = and i32 %conv79, 32
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.then.90, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %if.then.74
  %55 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private83 = getelementptr inbounds %struct.op, %struct.op* %55, i32 0, i32 7
  %56 = load i8, i8* %op_private83, align 1
  %conv84 = zext i8 %56 to i32
  %and85 = and i32 %conv84, 8
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %land.lhs.true.87, label %if.end.118

land.lhs.true.87:                                 ; preds = %lor.lhs.false.82
  %call88 = call i32 @Perl_is_lvalue_sub()
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then.90, label %if.end.118

if.then.90:                                       ; preds = %land.lhs.true.87, %if.then.74
  %57 = load %struct.sv*, %struct.sv** %targ75, align 8
  %sv_flags91 = getelementptr inbounds %struct.sv, %struct.sv* %57, i32 0, i32 2
  %58 = load i32, i32* %sv_flags91, align 4
  %and92 = and i32 %58, 255
  %cmp93 = icmp ult i32 %and92, 9
  br i1 %cmp93, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %if.then.90
  %59 = load %struct.sv*, %struct.sv** %targ75, align 8
  %call96 = call signext i8 @Perl_sv_upgrade(%struct.sv* %59, i32 9)
  %60 = load %struct.sv*, %struct.sv** %targ75, align 8
  call void @Perl_sv_magic(%struct.sv* %60, %struct.sv* null, i32 107, i8* null, i32 0)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %if.then.90
  %61 = load %struct.sv*, %struct.sv** %targ75, align 8
  %sv_any98 = getelementptr inbounds %struct.sv, %struct.sv* %61, i32 0, i32 0
  %62 = load i8*, i8** %sv_any98, align 8
  %63 = bitcast i8* %62 to %struct.xpvlv*
  %xlv_type = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %63, i32 0, i32 10
  store i8 107, i8* %xlv_type, align 1
  %64 = load %struct.sv*, %struct.sv** %targ75, align 8
  %sv_any99 = getelementptr inbounds %struct.sv, %struct.sv* %64, i32 0, i32 0
  %65 = load i8*, i8** %sv_any99, align 8
  %66 = bitcast i8* %65 to %struct.xpvlv*
  %xlv_targ100 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %66, i32 0, i32 9
  %67 = load %struct.sv*, %struct.sv** %xlv_targ100, align 8
  %68 = load %struct.hv*, %struct.hv** %keys, align 8
  %69 = bitcast %struct.hv* %68 to %struct.sv*
  %cmp101 = icmp ne %struct.sv* %67, %69
  br i1 %cmp101, label %if.then.103, label %if.end.115

if.then.103:                                      ; preds = %if.end.97
  %70 = load %struct.sv*, %struct.sv** %targ75, align 8
  %sv_any104 = getelementptr inbounds %struct.sv, %struct.sv* %70, i32 0, i32 0
  %71 = load i8*, i8** %sv_any104, align 8
  %72 = bitcast i8* %71 to %struct.xpvlv*
  %xlv_targ105 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %72, i32 0, i32 9
  %73 = load %struct.sv*, %struct.sv** %xlv_targ105, align 8
  %tobool106 = icmp ne %struct.sv* %73, null
  br i1 %tobool106, label %if.then.107, label %if.end.110

if.then.107:                                      ; preds = %if.then.103
  %74 = load %struct.sv*, %struct.sv** %targ75, align 8
  %sv_any108 = getelementptr inbounds %struct.sv, %struct.sv* %74, i32 0, i32 0
  %75 = load i8*, i8** %sv_any108, align 8
  %76 = bitcast i8* %75 to %struct.xpvlv*
  %xlv_targ109 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %76, i32 0, i32 9
  %77 = load %struct.sv*, %struct.sv** %xlv_targ109, align 8
  call void @Perl_sv_free(%struct.sv* %77)
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.107, %if.then.103
  %78 = load %struct.hv*, %struct.hv** %keys, align 8
  %79 = bitcast %struct.hv* %78 to %struct.sv*
  store %struct.sv* %79, %struct.sv** @PL_Sv, align 8
  %80 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool111 = icmp ne %struct.sv* %80, null
  br i1 %tobool111, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.110
  %81 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %81, i32 0, i32 1
  %82 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %82, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool112 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.110
  %83 = phi i1 [ false, %if.end.110 ], [ %tobool112, %land.rhs ]
  %land.ext = zext i1 %83 to i32
  %84 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %85 = load %struct.sv*, %struct.sv** %targ75, align 8
  %sv_any113 = getelementptr inbounds %struct.sv, %struct.sv* %85, i32 0, i32 0
  %86 = load i8*, i8** %sv_any113, align 8
  %87 = bitcast i8* %86 to %struct.xpvlv*
  %xlv_targ114 = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %87, i32 0, i32 9
  store %struct.sv* %84, %struct.sv** %xlv_targ114, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %land.end, %if.end.97
  %88 = load %struct.sv*, %struct.sv** %targ75, align 8
  %89 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr116 = getelementptr inbounds %struct.sv*, %struct.sv** %89, i32 1
  store %struct.sv** %incdec.ptr116, %struct.sv*** %sp, align 8
  store %struct.sv* %88, %struct.sv** %incdec.ptr116, align 8
  %90 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %90, %struct.sv*** @PL_stack_sp, align 8
  %91 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next117 = getelementptr inbounds %struct.op, %struct.op* %91, i32 0, i32 0
  %92 = load %struct.op*, %struct.op** %op_next117, align 8
  store %struct.op* %92, %struct.op** %retval
  br label %return

if.end.118:                                       ; preds = %land.lhs.true.87, %lor.lhs.false.82
  %93 = load %struct.hv*, %struct.hv** %keys, align 8
  %94 = bitcast %struct.hv* %93 to %struct.sv*
  %sv_flags119 = getelementptr inbounds %struct.sv, %struct.sv* %94, i32 0, i32 2
  %95 = load i32, i32* %sv_flags119, align 4
  %and120 = and i32 %95, 32768
  %tobool121 = icmp ne i32 %and120, 0
  br i1 %tobool121, label %cond.true.122, label %cond.false.125

cond.true.122:                                    ; preds = %if.end.118
  %96 = load %struct.hv*, %struct.hv** %keys, align 8
  %97 = bitcast %struct.hv* %96 to %struct.sv*
  %call123 = call %struct.magic* @Perl_mg_find(%struct.sv* %97, i32 80)
  %tobool124 = icmp ne %struct.magic* %call123, null
  br i1 %tobool124, label %if.else, label %if.then.126

cond.false.125:                                   ; preds = %if.end.118
  br i1 false, label %if.else, label %if.then.126

if.then.126:                                      ; preds = %cond.false.125, %cond.true.122
  %98 = load %struct.hv*, %struct.hv** %keys, align 8
  %sv_any127 = getelementptr inbounds %struct.hv, %struct.hv* %98, i32 0, i32 0
  %99 = load %struct.xpvhv*, %struct.xpvhv** %sv_any127, align 8
  %xhv_keys = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %99, i32 0, i32 3
  %100 = load i64, i64* %xhv_keys, align 8
  %101 = load %struct.hv*, %struct.hv** %keys, align 8
  %sv_any128 = getelementptr inbounds %struct.hv, %struct.hv* %101, i32 0, i32 0
  %102 = load %struct.xpvhv*, %struct.xpvhv** %sv_any128, align 8
  %xnv_nv = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %102, i32 0, i32 4
  %103 = load double, double* %xnv_nv, align 8
  %conv129 = fptosi double %103 to i64
  %sub = sub nsw i64 %100, %conv129
  store i64 %sub, i64* %i, align 8
  br label %if.end.133

if.else:                                          ; preds = %cond.false.125, %cond.true.122
  store i64 0, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %104 = load %struct.hv*, %struct.hv** %keys, align 8
  %call130 = call %struct.he* @Perl_hv_iternext(%struct.hv* %104)
  %tobool131 = icmp ne %struct.he* %call130, null
  br i1 %tobool131, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %105 = load i64, i64* %i, align 8
  %inc132 = add nsw i64 %105, 1
  store i64 %inc132, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.133

if.end.133:                                       ; preds = %while.end, %if.then.126
  %106 = load %struct.sv*, %struct.sv** %targ75, align 8
  %107 = load i64, i64* %i, align 8
  call void @Perl_sv_setiv(%struct.sv* %106, i64 %107)
  %108 = load %struct.sv*, %struct.sv** %targ75, align 8
  %sv_flags134 = getelementptr inbounds %struct.sv, %struct.sv* %108, i32 0, i32 2
  %109 = load i32, i32* %sv_flags134, align 4
  %and135 = and i32 %109, 16384
  %tobool136 = icmp ne i32 %and135, 0
  br i1 %tobool136, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %if.end.133
  %110 = load %struct.sv*, %struct.sv** %targ75, align 8
  %call138 = call i32 @Perl_mg_set(%struct.sv* %110)
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.137, %if.end.133
  %111 = load %struct.sv*, %struct.sv** %targ75, align 8
  %112 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr140 = getelementptr inbounds %struct.sv*, %struct.sv** %112, i32 1
  store %struct.sv** %incdec.ptr140, %struct.sv*** %sp, align 8
  store %struct.sv* %111, %struct.sv** %incdec.ptr140, align 8
  store %struct.sv* %111, %struct.sv** %tmp
  %113 = load %struct.sv*, %struct.sv** %tmp
  %114 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %114, %struct.sv*** @PL_stack_sp, align 8
  %115 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next141 = getelementptr inbounds %struct.op, %struct.op* %115, i32 0, i32 0
  %116 = load %struct.op*, %struct.op** %op_next141, align 8
  store %struct.op* %116, %struct.op** %retval
  br label %return

if.end.142:                                       ; preds = %if.end.71
  %117 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %118 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %117 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %118 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %119 = load %struct.hv*, %struct.hv** %keys, align 8
  %sv_any143 = getelementptr inbounds %struct.hv, %struct.hv* %119, i32 0, i32 0
  %120 = load %struct.xpvhv*, %struct.xpvhv** %sv_any143, align 8
  %xhv_keys144 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %120, i32 0, i32 3
  %121 = load i64, i64* %xhv_keys144, align 8
  %122 = load %struct.hv*, %struct.hv** %keys, align 8
  %sv_any145 = getelementptr inbounds %struct.hv, %struct.hv* %122, i32 0, i32 0
  %123 = load %struct.xpvhv*, %struct.xpvhv** %sv_any145, align 8
  %xnv_nv146 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %123, i32 0, i32 4
  %124 = load double, double* %xnv_nv146, align 8
  %conv147 = fptosi double %124 to i64
  %sub148 = sub nsw i64 %121, %conv147
  %125 = load i32, i32* %dokeys, align 4
  %126 = load i32, i32* %dovalues, align 4
  %add = add nsw i32 %125, %126
  %conv149 = sext i32 %add to i64
  %mul = mul nsw i64 %sub148, %conv149
  %conv150 = trunc i64 %mul to i32
  %conv151 = sext i32 %conv150 to i64
  %cmp152 = icmp slt i64 %sub.ptr.div, %conv151
  br i1 %cmp152, label %if.then.154, label %if.end.166

if.then.154:                                      ; preds = %if.end.142
  %127 = load %struct.sv**, %struct.sv*** %sp, align 8
  %128 = load %struct.sv**, %struct.sv*** %sp, align 8
  %129 = load %struct.hv*, %struct.hv** %keys, align 8
  %sv_any155 = getelementptr inbounds %struct.hv, %struct.hv* %129, i32 0, i32 0
  %130 = load %struct.xpvhv*, %struct.xpvhv** %sv_any155, align 8
  %xhv_keys156 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %130, i32 0, i32 3
  %131 = load i64, i64* %xhv_keys156, align 8
  %132 = load %struct.hv*, %struct.hv** %keys, align 8
  %sv_any157 = getelementptr inbounds %struct.hv, %struct.hv* %132, i32 0, i32 0
  %133 = load %struct.xpvhv*, %struct.xpvhv** %sv_any157, align 8
  %xnv_nv158 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %133, i32 0, i32 4
  %134 = load double, double* %xnv_nv158, align 8
  %conv159 = fptosi double %134 to i64
  %sub160 = sub nsw i64 %131, %conv159
  %135 = load i32, i32* %dokeys, align 4
  %136 = load i32, i32* %dovalues, align 4
  %add161 = add nsw i32 %135, %136
  %conv162 = sext i32 %add161 to i64
  %mul163 = mul nsw i64 %sub160, %conv162
  %conv164 = trunc i64 %mul163 to i32
  %call165 = call %struct.sv** @Perl_stack_grow(%struct.sv** %127, %struct.sv** %128, i32 %conv164)
  store %struct.sv** %call165, %struct.sv*** %sp, align 8
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.154, %if.end.142
  %137 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %137, %struct.sv*** @PL_stack_sp, align 8
  br label %while.cond.167

while.cond.167:                                   ; preds = %if.end.207, %if.end.166
  %138 = load %struct.hv*, %struct.hv** %keys, align 8
  %call168 = call %struct.he* @Perl_hv_iternext(%struct.hv* %138)
  store %struct.he* %call168, %struct.he** %entry1, align 8
  %tobool169 = icmp ne %struct.he* %call168, null
  br i1 %tobool169, label %while.body.170, label %while.end.208

while.body.170:                                   ; preds = %while.cond.167
  %139 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %139, %struct.sv*** %sp, align 8
  %140 = load i32, i32* %dokeys, align 4
  %tobool171 = icmp ne i32 %140, 0
  br i1 %tobool171, label %if.then.172, label %if.end.186

if.then.172:                                      ; preds = %while.body.170
  %141 = load %struct.he*, %struct.he** %entry1, align 8
  %call174 = call %struct.sv* @Perl_hv_iterkeysv(%struct.he* %141)
  store %struct.sv* %call174, %struct.sv** %sv, align 8
  %142 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %143 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast175 = ptrtoint %struct.sv** %142 to i64
  %sub.ptr.rhs.cast176 = ptrtoint %struct.sv** %143 to i64
  %sub.ptr.sub177 = sub i64 %sub.ptr.lhs.cast175, %sub.ptr.rhs.cast176
  %sub.ptr.div178 = sdiv exact i64 %sub.ptr.sub177, 8
  %cmp179 = icmp slt i64 %sub.ptr.div178, 1
  br i1 %cmp179, label %if.then.181, label %if.end.183

if.then.181:                                      ; preds = %if.then.172
  %144 = load %struct.sv**, %struct.sv*** %sp, align 8
  %145 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call182 = call %struct.sv** @Perl_stack_grow(%struct.sv** %144, %struct.sv** %145, i32 1)
  store %struct.sv** %call182, %struct.sv*** %sp, align 8
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.181, %if.then.172
  %146 = load %struct.sv*, %struct.sv** %sv, align 8
  %147 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr185 = getelementptr inbounds %struct.sv*, %struct.sv** %147, i32 1
  store %struct.sv** %incdec.ptr185, %struct.sv*** %sp, align 8
  store %struct.sv* %146, %struct.sv** %incdec.ptr185, align 8
  store %struct.sv* %146, %struct.sv** %tmp184
  %148 = load %struct.sv*, %struct.sv** %tmp184
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.183, %while.body.170
  %149 = load i32, i32* %dovalues, align 4
  %tobool187 = icmp ne i32 %149, 0
  br i1 %tobool187, label %if.then.188, label %if.end.207

if.then.188:                                      ; preds = %if.end.186
  %150 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %150, %struct.sv*** @PL_stack_sp, align 8
  %151 = load i32, i32* %realhv, align 4
  %tobool189 = icmp ne i32 %151, 0
  br i1 %tobool189, label %cond.true.190, label %cond.false.192

cond.true.190:                                    ; preds = %if.then.188
  %152 = load %struct.hv*, %struct.hv** %hv, align 8
  %153 = load %struct.he*, %struct.he** %entry1, align 8
  %call191 = call %struct.sv* @Perl_hv_iterval(%struct.hv* %152, %struct.he* %153)
  br label %cond.end.194

cond.false.192:                                   ; preds = %if.then.188
  %154 = load %struct.hv*, %struct.hv** %hv, align 8
  %155 = bitcast %struct.hv* %154 to %struct.av*
  %156 = load %struct.he*, %struct.he** %entry1, align 8
  %call193 = call %struct.sv* @Perl_avhv_iterval(%struct.av* %155, %struct.he* %156)
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.false.192, %cond.true.190
  %cond195 = phi %struct.sv* [ %call191, %cond.true.190 ], [ %call193, %cond.false.192 ]
  store %struct.sv* %cond195, %struct.sv** %tmpstr, align 8
  %157 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %157, %struct.sv*** %sp, align 8
  %158 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %159 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast196 = ptrtoint %struct.sv** %158 to i64
  %sub.ptr.rhs.cast197 = ptrtoint %struct.sv** %159 to i64
  %sub.ptr.sub198 = sub i64 %sub.ptr.lhs.cast196, %sub.ptr.rhs.cast197
  %sub.ptr.div199 = sdiv exact i64 %sub.ptr.sub198, 8
  %cmp200 = icmp slt i64 %sub.ptr.div199, 1
  br i1 %cmp200, label %if.then.202, label %if.end.204

if.then.202:                                      ; preds = %cond.end.194
  %160 = load %struct.sv**, %struct.sv*** %sp, align 8
  %161 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call203 = call %struct.sv** @Perl_stack_grow(%struct.sv** %160, %struct.sv** %161, i32 1)
  store %struct.sv** %call203, %struct.sv*** %sp, align 8
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.202, %cond.end.194
  %162 = load %struct.sv*, %struct.sv** %tmpstr, align 8
  %163 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr206 = getelementptr inbounds %struct.sv*, %struct.sv** %163, i32 1
  store %struct.sv** %incdec.ptr206, %struct.sv*** %sp, align 8
  store %struct.sv* %162, %struct.sv** %incdec.ptr206, align 8
  store %struct.sv* %162, %struct.sv** %tmp205
  %164 = load %struct.sv*, %struct.sv** %tmp205
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.204, %if.end.186
  %165 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %165, %struct.sv*** @PL_stack_sp, align 8
  br label %while.cond.167

while.end.208:                                    ; preds = %while.cond.167
  %166 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next209 = getelementptr inbounds %struct.op, %struct.op* %166, i32 0, i32 0
  %167 = load %struct.op*, %struct.op** %op_next209, align 8
  store %struct.op* %167, %struct.op** %retval
  br label %return

return:                                           ; preds = %while.end.208, %if.end.139, %if.end.115, %if.then.69, %if.end.58
  %168 = load %struct.op*, %struct.op** %retval
  ret %struct.op* %168
}

declare i32 @Perl_block_gimme() #1

declare i32 @Perl_is_lvalue_sub() #1

declare %struct.hv* @Perl_avhv_keys(%struct.av*) #1

declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #1

declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #1

declare void @Perl_sv_setiv(%struct.sv*, i64) #1

declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

declare %struct.sv* @Perl_hv_iterkeysv(%struct.he*) #1

declare %struct.sv* @Perl_avhv_iterval(%struct.av*, %struct.he*) #1

declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

declare i64 @Perl_swash_fetch(%struct.sv*, i8*, i8 signext) #1

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i8* @Perl_safesysrealloc(i8*, i64) #1

declare i64 @Perl_utf8_to_uvuni(i8*, i64*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
