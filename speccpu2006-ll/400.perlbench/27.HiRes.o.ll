; ModuleID = 'HiRes.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.timeval = type { i64, i64 }
%struct.fd_set = type { [16 x i64] }
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
%struct.xpv = type { i8*, i64, i64 }
%struct.xpvnv = type { i8*, i64, i64, i64, double }
%struct.timezone = type { i32, i32 }

@PL_stack_sp = external global %struct.sv**, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_markstack_ptr = external global i32*, align 8
@.str = private unnamed_addr constant [33 x i8] c"Usage: Time::HiRes::constant(sv)\00", align 1
@PL_op = external global %struct.op*, align 8
@PL_curpad = external global %struct.sv**, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"%s is not a valid Time::HiRes macro\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Your vendor has not defined Time::HiRes macro %s, used\00", align 1
@PL_stack_max = external global %struct.sv**, align 8
@PL_sv_undef = external global %struct.sv, align 8
@.str.3 = private unnamed_addr constant [70 x i8] c"Unexpected return type %d while processing Time::HiRes macro %s, used\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Usage: Time::HiRes::usleep(useconds)\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"Time::HiRes::usleep(%g): negative time not invented yet\00", align 1
@.str.6 = private unnamed_addr constant [79 x i8] c"Time::HiRes::sleep(%g): internal error: useconds < 0 (unsigned %lu signed %ld)\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"Time::HiRes::sleep(%g): negative time not invented yet\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Usage: Time::HiRes::gettimeofday()\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Usage: Time::HiRes::time()\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"HiRes.c\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Time::HiRes::constant\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Time::HiRes::usleep\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Time::HiRes::sleep\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c";@\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Time::HiRes::gettimeofday\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Time::HiRes::time\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@.str.19 = private unnamed_addr constant [8 x i8] c"d_ualar\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"d_uslee\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"ITIMER_VIRTUAL\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"d_gettimeofday\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"ITIMER_REALPROF\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"ITIMER_PROF\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"ITIMER_REAL\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"d_getitimer\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"d_setitimer\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"d_nanosleep\00", align 1

; Function Attrs: nounwind uwtable
define void @hrt_usleep(i64 %usec) #0 {
entry:
  %usec.addr = alloca i64, align 8
  %tv = alloca %struct.timeval, align 8
  store i64 %usec, i64* %usec.addr, align 8
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  store i64 0, i64* %tv_sec, align 8
  %0 = load i64, i64* %usec.addr, align 8
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  store i64 %0, i64* %tv_usec, align 8
  %call = call i32 @select(i32 0, %struct.fd_set* null, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %tv)
  ret void
}

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #1

; Function Attrs: nounwind uwtable
define void @XS_Time__HiRes_constant(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %targ = alloca %struct.sv*, align 8
  %len = alloca i64, align 8
  %type = alloca i32, align 4
  %iv = alloca i64, align 8
  %sv = alloca %struct.sv*, align 8
  %s = alloca i8*, align 8
  %tmp = alloca %struct.sv*, align 8
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
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %items, align 4
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext7 = sext i32 %9 to i64
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idx.neg
  store %struct.sv** %add.ptr8, %struct.sv*** %sp, align 8
  %11 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %11, i32 0, i32 7
  %12 = load i8, i8* %op_private, align 1
  %conv9 = zext i8 %12 to i32
  %and = and i32 %conv9, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %13, i32 0, i32 3
  %14 = load i64, i64* %op_targ, align 8
  %15 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %15, i64 %14
  %16 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call %struct.sv* @Perl_sv_newmortal()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %16, %cond.true ], [ %call, %cond.false ]
  store %struct.sv* %cond, %struct.sv** %targ, align 8
  %17 = load i32, i32* %ax, align 4
  %add10 = add nsw i32 %17, 0
  %idxprom = sext i32 %add10 to i64
  %18 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx11 = getelementptr inbounds %struct.sv*, %struct.sv** %18, i64 %idxprom
  %19 = load %struct.sv*, %struct.sv** %arrayidx11, align 8
  store %struct.sv* %19, %struct.sv** %sv, align 8
  %20 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 2
  %21 = load i32, i32* %sv_flags, align 4
  %and12 = and i32 %21, 262144
  %cmp13 = icmp eq i32 %and12, 262144
  br i1 %cmp13, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %cond.end
  %22 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 0
  %23 = load i8*, i8** %sv_any, align 8
  %24 = bitcast i8* %23 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %24, i32 0, i32 1
  %25 = load i64, i64* %xpv_cur, align 8
  store i64 %25, i64* %len, align 8
  %26 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any16 = getelementptr inbounds %struct.sv, %struct.sv* %26, i32 0, i32 0
  %27 = load i8*, i8** %sv_any16, align 8
  %28 = bitcast i8* %27 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %28, i32 0, i32 0
  %29 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.19

cond.false.17:                                    ; preds = %cond.end
  %30 = load %struct.sv*, %struct.sv** %sv, align 8
  %call18 = call i8* @Perl_sv_2pv_flags(%struct.sv* %30, i64* %len, i32 2)
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.17, %cond.true.15
  %cond20 = phi i8* [ %29, %cond.true.15 ], [ %call18, %cond.false.17 ]
  store i8* %cond20, i8** %s, align 8
  %31 = load i8*, i8** %s, align 8
  %32 = load i64, i64* %len, align 8
  %call21 = call i32 @constant(i8* %31, i64 %32, i64* %iv)
  store i32 %call21, i32* %type, align 4
  %33 = load i32, i32* %type, align 4
  switch i32 %33, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.25
    i32 3, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %cond.end.19
  %34 = load i8*, i8** %s, align 8
  %call22 = call %struct.sv* (i8*, ...) @Perl_newSVpvf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i8* %34)
  %call23 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call22)
  store %struct.sv* %call23, %struct.sv** %sv, align 8
  %35 = load %struct.sv*, %struct.sv** %sv, align 8
  %36 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr24 = getelementptr inbounds %struct.sv*, %struct.sv** %36, i32 1
  store %struct.sv** %incdec.ptr24, %struct.sv*** %sp, align 8
  store %struct.sv* %35, %struct.sv** %incdec.ptr24, align 8
  br label %sw.epilog

sw.bb.25:                                         ; preds = %cond.end.19
  %37 = load i8*, i8** %s, align 8
  %call26 = call %struct.sv* (i8*, ...) @Perl_newSVpvf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i32 0, i32 0), i8* %37)
  %call27 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call26)
  store %struct.sv* %call27, %struct.sv** %sv, align 8
  %38 = load %struct.sv*, %struct.sv** %sv, align 8
  %39 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr28 = getelementptr inbounds %struct.sv*, %struct.sv** %39, i32 1
  store %struct.sv** %incdec.ptr28, %struct.sv*** %sp, align 8
  store %struct.sv* %38, %struct.sv** %incdec.ptr28, align 8
  br label %sw.epilog

sw.bb.29:                                         ; preds = %cond.end.19
  %40 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %41 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast30 = ptrtoint %struct.sv** %40 to i64
  %sub.ptr.rhs.cast31 = ptrtoint %struct.sv** %41 to i64
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  %sub.ptr.div33 = sdiv exact i64 %sub.ptr.sub32, 8
  %cmp34 = icmp slt i64 %sub.ptr.div33, 1
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %sw.bb.29
  %42 = load %struct.sv**, %struct.sv*** %sp, align 8
  %43 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call37 = call %struct.sv** @Perl_stack_grow(%struct.sv** %42, %struct.sv** %43, i32 1)
  store %struct.sv** %call37, %struct.sv*** %sp, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %sw.bb.29
  %44 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr39 = getelementptr inbounds %struct.sv*, %struct.sv** %44, i32 1
  store %struct.sv** %incdec.ptr39, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr39, align 8
  %45 = load %struct.sv*, %struct.sv** %targ, align 8
  %46 = load i64, i64* %iv, align 8
  call void @Perl_sv_setiv(%struct.sv* %45, i64 %46)
  %47 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags40 = getelementptr inbounds %struct.sv, %struct.sv* %47, i32 0, i32 2
  %48 = load i32, i32* %sv_flags40, align 4
  %and41 = and i32 %48, 16384
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.38
  %49 = load %struct.sv*, %struct.sv** %targ, align 8
  %call44 = call i32 @Perl_mg_set(%struct.sv* %49)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.38
  %50 = load %struct.sv*, %struct.sv** %targ, align 8
  %51 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr46 = getelementptr inbounds %struct.sv*, %struct.sv** %51, i32 1
  store %struct.sv** %incdec.ptr46, %struct.sv*** %sp, align 8
  store %struct.sv* %50, %struct.sv** %incdec.ptr46, align 8
  store %struct.sv* %50, %struct.sv** %tmp
  %52 = load %struct.sv*, %struct.sv** %tmp
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.19
  %53 = load i32, i32* %type, align 4
  %54 = load i8*, i8** %s, align 8
  %call47 = call %struct.sv* (i8*, ...) @Perl_newSVpvf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i32 0, i32 0), i32 %53, i8* %54)
  %call48 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call47)
  store %struct.sv* %call48, %struct.sv** %sv, align 8
  %55 = load %struct.sv*, %struct.sv** %sv, align 8
  %56 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr49 = getelementptr inbounds %struct.sv*, %struct.sv** %56, i32 1
  store %struct.sv** %incdec.ptr49, %struct.sv*** %sp, align 8
  store %struct.sv* %55, %struct.sv** %incdec.ptr49, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.45, %sw.bb.25, %sw.bb
  %57 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %57, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare void @Perl_croak(i8*, ...) #1

declare %struct.sv* @Perl_sv_newmortal() #1

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @constant(i8* %name, i64 %len, i64* %iv_return) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %iv_return.addr = alloca i64*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64* %iv_return, i64** %iv_return.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  switch i64 %0, label %sw.epilog.28 [
    i64 8, label %sw.bb
    i64 11, label %sw.bb.7
    i64 14, label %sw.bb.9
    i64 15, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 7
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.epilog [
    i32 109, label %sw.bb.1
    i32 112, label %sw.bb.2
  ]

sw.bb.1:                                          ; preds = %sw.bb
  %3 = load i8*, i8** %name.addr, align 8
  %call = call i32 @memcmp(i8* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i64 7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.1
  %4 = load i64*, i64** %iv_return.addr, align 8
  store i64 0, i64* %4, align 8
  store i32 3, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.1
  br label %sw.epilog

sw.bb.2:                                          ; preds = %sw.bb
  %5 = load i8*, i8** %name.addr, align 8
  %call3 = call i32 @memcmp(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i64 7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.2
  %6 = load i64*, i64** %iv_return.addr, align 8
  store i64 0, i64* %6, align 8
  store i32 3, i32* %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.6, %if.end
  br label %sw.epilog.28

sw.bb.7:                                          ; preds = %entry
  %7 = load i8*, i8** %name.addr, align 8
  %8 = load i64*, i64** %iv_return.addr, align 8
  %call8 = call i32 @constant_11(i8* %7, i64* %8)
  store i32 %call8, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  %9 = load i8*, i8** %name.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %9, i64 6
  %10 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %10 to i32
  switch i32 %conv11, label %sw.epilog.22 [
    i32 95, label %sw.bb.12
    i32 105, label %sw.bb.17
  ]

sw.bb.12:                                         ; preds = %sw.bb.9
  %11 = load i8*, i8** %name.addr, align 8
  %call13 = call i32 @memcmp(i8* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i64 14)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %sw.bb.12
  %12 = load i64*, i64** %iv_return.addr, align 8
  store i64 1, i64* %12, align 8
  store i32 3, i32* %retval
  br label %return

if.end.16:                                        ; preds = %sw.bb.12
  br label %sw.epilog.22

sw.bb.17:                                         ; preds = %sw.bb.9
  %13 = load i8*, i8** %name.addr, align 8
  %call18 = call i32 @memcmp(i8* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i64 14)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %sw.bb.17
  %14 = load i64*, i64** %iv_return.addr, align 8
  store i64 1, i64* %14, align 8
  store i32 3, i32* %retval
  br label %return

if.end.21:                                        ; preds = %sw.bb.17
  br label %sw.epilog.22

sw.epilog.22:                                     ; preds = %sw.bb.9, %if.end.21, %if.end.16
  br label %sw.epilog.28

sw.bb.23:                                         ; preds = %entry
  %15 = load i8*, i8** %name.addr, align 8
  %call24 = call i32 @memcmp(i8* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i64 15)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %sw.bb.23
  store i32 2, i32* %retval
  br label %return

if.end.27:                                        ; preds = %sw.bb.23
  br label %sw.epilog.28

sw.epilog.28:                                     ; preds = %entry, %if.end.27, %sw.epilog.22, %sw.epilog
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.28, %if.then.26, %if.then.20, %if.then.15, %sw.bb.7, %if.then.5, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

declare %struct.sv* @Perl_newSVpvf(i8*, ...) #1

declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

declare void @Perl_sv_setiv(%struct.sv*, i64) #1

declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @XS_Time__HiRes_usleep(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %useconds = alloca double, align 8
  %Ta = alloca %struct.timeval, align 8
  %Tb = alloca %struct.timeval, align 8
  %RETVAL = alloca double, align 8
  %targ = alloca %struct.sv*, align 8
  %seconds = alloca i64, align 8
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
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 2
  %12 = load i32, i32* %sv_flags, align 4
  %and = and i32 %12, 131072
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load i32, i32* %ax, align 4
  %add8 = add nsw i32 %13, 0
  %idxprom9 = sext i32 %add8 to i64
  %14 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx10 = getelementptr inbounds %struct.sv*, %struct.sv** %14, i64 %idxprom9
  %15 = load %struct.sv*, %struct.sv** %arrayidx10, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 0
  %16 = load i8*, i8** %sv_any, align 8
  %17 = bitcast i8* %16 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %17, i32 0, i32 4
  %18 = load double, double* %xnv_nv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %19 = load i32, i32* %ax, align 4
  %add11 = add nsw i32 %19, 0
  %idxprom12 = sext i32 %add11 to i64
  %20 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx13 = getelementptr inbounds %struct.sv*, %struct.sv** %20, i64 %idxprom12
  %21 = load %struct.sv*, %struct.sv** %arrayidx13, align 8
  %call = call double @Perl_sv_2nv(%struct.sv* %21)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %18, %cond.true ], [ %call, %cond.false ]
  store double %cond, double* %useconds, align 8
  %22 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %22, i32 0, i32 7
  %23 = load i8, i8* %op_private, align 1
  %conv14 = zext i8 %23 to i32
  %and15 = and i32 %conv14, 32
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %cond.true.17, label %cond.false.19

cond.true.17:                                     ; preds = %cond.end
  %24 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %24, i32 0, i32 3
  %25 = load i64, i64* %op_targ, align 8
  %26 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx18 = getelementptr inbounds %struct.sv*, %struct.sv** %26, i64 %25
  %27 = load %struct.sv*, %struct.sv** %arrayidx18, align 8
  br label %cond.end.21

cond.false.19:                                    ; preds = %cond.end
  %call20 = call %struct.sv* @Perl_sv_newmortal()
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.19, %cond.true.17
  %cond22 = phi %struct.sv* [ %27, %cond.true.17 ], [ %call20, %cond.false.19 ]
  store %struct.sv* %cond22, %struct.sv** %targ, align 8
  %call23 = call i32 @gettimeofday(%struct.timeval* %Ta, %struct.timezone* null)
  %28 = load i32, i32* %items, align 4
  %cmp24 = icmp sgt i32 %28, 0
  br i1 %cmp24, label %if.then.26, label %if.else.44

if.then.26:                                       ; preds = %cond.end.21
  %29 = load double, double* %useconds, align 8
  %cmp27 = fcmp ogt double %29, 1.000000e+06
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.then.26
  %30 = load double, double* %useconds, align 8
  %div = fdiv double %30, 1.000000e+06
  %conv30 = fptosi double %div to i64
  store i64 %conv30, i64* %seconds, align 8
  %31 = load i64, i64* %seconds, align 8
  %tobool31 = icmp ne i64 %31, 0
  br i1 %tobool31, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.then.29
  %32 = load i64, i64* %seconds, align 8
  %conv33 = trunc i64 %32 to i32
  %call34 = call i32 @sleep(i32 %conv33)
  %33 = load i64, i64* %seconds, align 8
  %conv35 = sitofp i64 %33 to double
  %mul = fmul double 1.000000e+06, %conv35
  %34 = load double, double* %useconds, align 8
  %sub = fsub double %34, %mul
  store double %sub, double* %useconds, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %if.then.29
  br label %if.end.41

if.else:                                          ; preds = %if.then.26
  %35 = load double, double* %useconds, align 8
  %cmp37 = fcmp olt double %35, 0.000000e+00
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.else
  %36 = load double, double* %useconds, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i32 0, i32 0), double %36)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.36
  %37 = load double, double* %useconds, align 8
  %conv42 = fptoui double %37 to i32
  %conv43 = zext i32 %conv42 to i64
  call void @hrt_usleep(i64 %conv43)
  br label %if.end.46

if.else.44:                                       ; preds = %cond.end.21
  %call45 = call i32 @sleep(i32 2147450879)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.end.41
  %call47 = call i32 @gettimeofday(%struct.timeval* %Tb, %struct.timezone* null)
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %Tb, i32 0, i32 0
  %38 = load i64, i64* %tv_sec, align 8
  %tv_sec48 = getelementptr inbounds %struct.timeval, %struct.timeval* %Ta, i32 0, i32 0
  %39 = load i64, i64* %tv_sec48, align 8
  %sub49 = sub nsw i64 %38, %39
  %conv50 = sitofp i64 %sub49 to double
  %mul51 = fmul double 1.000000e+06, %conv50
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %Tb, i32 0, i32 1
  %40 = load i64, i64* %tv_usec, align 8
  %tv_usec52 = getelementptr inbounds %struct.timeval, %struct.timeval* %Ta, i32 0, i32 1
  %41 = load i64, i64* %tv_usec52, align 8
  %sub53 = sub nsw i64 %40, %41
  %conv54 = sitofp i64 %sub53 to double
  %add55 = fadd double %mul51, %conv54
  store double %add55, double* %RETVAL, align 8
  %42 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %43 = load i32, i32* %ax, align 4
  %idx.ext56 = sext i32 %43 to i64
  %add.ptr57 = getelementptr inbounds %struct.sv*, %struct.sv** %42, i64 %idx.ext56
  %add.ptr58 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr57, i64 -1
  store %struct.sv** %add.ptr58, %struct.sv*** %sp, align 8
  %44 = load %struct.sv*, %struct.sv** %targ, align 8
  %45 = load double, double* %RETVAL, align 8
  call void @Perl_sv_setnv(%struct.sv* %44, double %45)
  %46 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags59 = getelementptr inbounds %struct.sv, %struct.sv* %46, i32 0, i32 2
  %47 = load i32, i32* %sv_flags59, align 4
  %and60 = and i32 %47, 16384
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.46
  %48 = load %struct.sv*, %struct.sv** %targ, align 8
  %call63 = call i32 @Perl_mg_set(%struct.sv* %48)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.46
  %49 = load %struct.sv*, %struct.sv** %targ, align 8
  %50 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr65 = getelementptr inbounds %struct.sv*, %struct.sv** %50, i32 1
  store %struct.sv** %incdec.ptr65, %struct.sv*** %sp, align 8
  store %struct.sv* %49, %struct.sv** %incdec.ptr65, align 8
  store %struct.sv* %49, %struct.sv** %tmp
  %51 = load %struct.sv*, %struct.sv** %tmp
  store i64 1, i64* %tmpXSoff, align 8
  %52 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %53 = load i32, i32* %ax, align 4
  %idx.ext67 = sext i32 %53 to i64
  %add.ptr68 = getelementptr inbounds %struct.sv*, %struct.sv** %52, i64 %idx.ext67
  %54 = load i64, i64* %tmpXSoff, align 8
  %sub69 = sub nsw i64 %54, 1
  %add.ptr70 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr68, i64 %sub69
  store %struct.sv** %add.ptr70, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare double @Perl_sv_2nv(%struct.sv*) #1

declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare i32 @sleep(i32) #1

declare void @Perl_sv_setnv(%struct.sv*, double) #1

; Function Attrs: nounwind uwtable
define void @XS_Time__HiRes_sleep(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %Ta = alloca %struct.timeval, align 8
  %Tb = alloca %struct.timeval, align 8
  %RETVAL = alloca double, align 8
  %targ = alloca %struct.sv*, align 8
  %seconds = alloca double, align 8
  %useconds = alloca i64, align 8
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
  %call7 = call i32 @gettimeofday(%struct.timeval* %Ta, %struct.timezone* null)
  %14 = load i32, i32* %items, align 4
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %if.then, label %if.else.44

if.then:                                          ; preds = %cond.end
  %15 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %15, 0
  %idxprom = sext i32 %add9 to i64
  %16 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx10 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i64 %idxprom
  %17 = load %struct.sv*, %struct.sv** %arrayidx10, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 2
  %18 = load i32, i32* %sv_flags, align 4
  %and11 = and i32 %18, 131072
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %cond.true.13, label %cond.false.17

cond.true.13:                                     ; preds = %if.then
  %19 = load i32, i32* %ax, align 4
  %add14 = add nsw i32 %19, 0
  %idxprom15 = sext i32 %add14 to i64
  %20 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx16 = getelementptr inbounds %struct.sv*, %struct.sv** %20, i64 %idxprom15
  %21 = load %struct.sv*, %struct.sv** %arrayidx16, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 0
  %22 = load i8*, i8** %sv_any, align 8
  %23 = bitcast i8* %22 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %23, i32 0, i32 4
  %24 = load double, double* %xnv_nv, align 8
  br label %cond.end.22

cond.false.17:                                    ; preds = %if.then
  %25 = load i32, i32* %ax, align 4
  %add18 = add nsw i32 %25, 0
  %idxprom19 = sext i32 %add18 to i64
  %26 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx20 = getelementptr inbounds %struct.sv*, %struct.sv** %26, i64 %idxprom19
  %27 = load %struct.sv*, %struct.sv** %arrayidx20, align 8
  %call21 = call double @Perl_sv_2nv(%struct.sv* %27)
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.17, %cond.true.13
  %cond23 = phi double [ %24, %cond.true.13 ], [ %call21, %cond.false.17 ]
  store double %cond23, double* %seconds, align 8
  %28 = load double, double* %seconds, align 8
  %cmp24 = fcmp oge double %28, 0.000000e+00
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %cond.end.22
  %29 = load double, double* %seconds, align 8
  %30 = load double, double* %seconds, align 8
  %conv27 = fptoui double %30 to i64
  %conv28 = uitofp i64 %conv27 to double
  %sub = fsub double %29, %conv28
  %mul = fmul double 1.000000e+06, %sub
  %conv29 = fptoui double %mul to i64
  store i64 %conv29, i64* %useconds, align 8
  %31 = load double, double* %seconds, align 8
  %cmp30 = fcmp oge double %31, 1.000000e+00
  br i1 %cmp30, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %if.then.26
  %32 = load double, double* %seconds, align 8
  %conv33 = fptoui double %32 to i32
  %call34 = call i32 @sleep(i32 %conv33)
  br label %if.end

if.end:                                           ; preds = %if.then.32, %if.then.26
  %33 = load i64, i64* %useconds, align 8
  %cmp35 = icmp slt i64 %33, 0
  br i1 %cmp35, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %if.end
  %34 = load i64, i64* %useconds, align 8
  %cmp38 = icmp slt i64 %34, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.then.37
  %35 = load double, double* %seconds, align 8
  %36 = load i64, i64* %useconds, align 8
  %37 = load i64, i64* %useconds, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i32 0, i32 0), double %35, i64 %36, i64 %37)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.then.37
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end
  %38 = load i64, i64* %useconds, align 8
  call void @hrt_usleep(i64 %38)
  br label %if.end.43

if.else:                                          ; preds = %cond.end.22
  %39 = load double, double* %seconds, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i32 0, i32 0), double %39)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.end.42
  br label %if.end.46

if.else.44:                                       ; preds = %cond.end
  %call45 = call i32 @sleep(i32 2147450879)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.end.43
  %call47 = call i32 @gettimeofday(%struct.timeval* %Tb, %struct.timezone* null)
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %Tb, i32 0, i32 0
  %40 = load i64, i64* %tv_sec, align 8
  %tv_sec48 = getelementptr inbounds %struct.timeval, %struct.timeval* %Ta, i32 0, i32 0
  %41 = load i64, i64* %tv_sec48, align 8
  %sub49 = sub nsw i64 %40, %41
  %conv50 = sitofp i64 %sub49 to double
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %Tb, i32 0, i32 1
  %42 = load i64, i64* %tv_usec, align 8
  %tv_usec51 = getelementptr inbounds %struct.timeval, %struct.timeval* %Ta, i32 0, i32 1
  %43 = load i64, i64* %tv_usec51, align 8
  %sub52 = sub nsw i64 %42, %43
  %conv53 = sitofp i64 %sub52 to double
  %mul54 = fmul double 1.000000e-06, %conv53
  %add55 = fadd double %conv50, %mul54
  store double %add55, double* %RETVAL, align 8
  %44 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %45 = load i32, i32* %ax, align 4
  %idx.ext56 = sext i32 %45 to i64
  %add.ptr57 = getelementptr inbounds %struct.sv*, %struct.sv** %44, i64 %idx.ext56
  %add.ptr58 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr57, i64 -1
  store %struct.sv** %add.ptr58, %struct.sv*** %sp, align 8
  %46 = load %struct.sv*, %struct.sv** %targ, align 8
  %47 = load double, double* %RETVAL, align 8
  call void @Perl_sv_setnv(%struct.sv* %46, double %47)
  %48 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags59 = getelementptr inbounds %struct.sv, %struct.sv* %48, i32 0, i32 2
  %49 = load i32, i32* %sv_flags59, align 4
  %and60 = and i32 %49, 16384
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.46
  %50 = load %struct.sv*, %struct.sv** %targ, align 8
  %call63 = call i32 @Perl_mg_set(%struct.sv* %50)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.46
  %51 = load %struct.sv*, %struct.sv** %targ, align 8
  %52 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr65 = getelementptr inbounds %struct.sv*, %struct.sv** %52, i32 1
  store %struct.sv** %incdec.ptr65, %struct.sv*** %sp, align 8
  store %struct.sv* %51, %struct.sv** %incdec.ptr65, align 8
  store %struct.sv* %51, %struct.sv** %tmp
  %53 = load %struct.sv*, %struct.sv** %tmp
  store i64 1, i64* %tmpXSoff, align 8
  %54 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %55 = load i32, i32* %ax, align 4
  %idx.ext67 = sext i32 %55 to i64
  %add.ptr68 = getelementptr inbounds %struct.sv*, %struct.sv** %54, i64 %idx.ext67
  %56 = load i64, i64* %tmpXSoff, align 8
  %sub69 = sub nsw i64 %56, 1
  %add.ptr70 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr68, i64 %sub69
  store %struct.sv** %add.ptr70, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_Time__HiRes_gettimeofday(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %Tp = alloca %struct.timeval, align 8
  %status = alloca i32, align 4
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
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %items, align 4
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext7 = sext i32 %9 to i64
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idx.neg
  store %struct.sv** %add.ptr8, %struct.sv*** %sp, align 8
  %call = call i32 @gettimeofday(%struct.timeval* %Tp, %struct.timezone* null)
  store i32 %call, i32* %status, align 4
  %11 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %11, i32 0, i32 6
  %12 = load i8, i8* %op_flags, align 1
  %conv9 = zext i8 %12 to i32
  %and = and i32 %conv9, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags10 = getelementptr inbounds %struct.op, %struct.op* %13, i32 0, i32 6
  %14 = load i8, i8* %op_flags10, align 1
  %conv11 = zext i8 %14 to i32
  %and12 = and i32 %conv11, 3
  %cmp13 = icmp eq i32 %and12, 3
  %cond = select i1 %cmp13, i32 1, i32 0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call15 = call i32 @Perl_dowantarray()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond16 = phi i32 [ %cond, %cond.true ], [ %call15, %cond.false ]
  %cmp17 = icmp eq i32 %cond16, 1
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %cond.end
  %15 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %16 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast20 = ptrtoint %struct.sv** %15 to i64
  %sub.ptr.rhs.cast21 = ptrtoint %struct.sv** %16 to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  %sub.ptr.div23 = sdiv exact i64 %sub.ptr.sub22, 8
  %cmp24 = icmp slt i64 %sub.ptr.div23, 2
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.19
  %17 = load %struct.sv**, %struct.sv*** %sp, align 8
  %18 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call27 = call %struct.sv** @Perl_stack_grow(%struct.sv** %17, %struct.sv** %18, i32 2)
  store %struct.sv** %call27, %struct.sv*** %sp, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.19
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %Tp, i32 0, i32 0
  %19 = load i64, i64* %tv_sec, align 8
  %call29 = call %struct.sv* @Perl_newSViv(i64 %19)
  %call30 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call29)
  %20 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr31 = getelementptr inbounds %struct.sv*, %struct.sv** %20, i32 1
  store %struct.sv** %incdec.ptr31, %struct.sv*** %sp, align 8
  store %struct.sv* %call30, %struct.sv** %incdec.ptr31, align 8
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %Tp, i32 0, i32 1
  %21 = load i64, i64* %tv_usec, align 8
  %call32 = call %struct.sv* @Perl_newSViv(i64 %21)
  %call33 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call32)
  %22 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr34 = getelementptr inbounds %struct.sv*, %struct.sv** %22, i32 1
  store %struct.sv** %incdec.ptr34, %struct.sv*** %sp, align 8
  store %struct.sv* %call33, %struct.sv** %incdec.ptr34, align 8
  br label %if.end.52

if.else:                                          ; preds = %cond.end
  %23 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %24 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast35 = ptrtoint %struct.sv** %23 to i64
  %sub.ptr.rhs.cast36 = ptrtoint %struct.sv** %24 to i64
  %sub.ptr.sub37 = sub i64 %sub.ptr.lhs.cast35, %sub.ptr.rhs.cast36
  %sub.ptr.div38 = sdiv exact i64 %sub.ptr.sub37, 8
  %cmp39 = icmp slt i64 %sub.ptr.div38, 1
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.else
  %25 = load %struct.sv**, %struct.sv*** %sp, align 8
  %26 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call42 = call %struct.sv** @Perl_stack_grow(%struct.sv** %25, %struct.sv** %26, i32 1)
  store %struct.sv** %call42, %struct.sv*** %sp, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.else
  %tv_sec44 = getelementptr inbounds %struct.timeval, %struct.timeval* %Tp, i32 0, i32 0
  %27 = load i64, i64* %tv_sec44, align 8
  %conv45 = sitofp i64 %27 to double
  %tv_usec46 = getelementptr inbounds %struct.timeval, %struct.timeval* %Tp, i32 0, i32 1
  %28 = load i64, i64* %tv_usec46, align 8
  %conv47 = sitofp i64 %28 to double
  %div = fdiv double %conv47, 1.000000e+06
  %add48 = fadd double %conv45, %div
  %call49 = call %struct.sv* @Perl_newSVnv(double %add48)
  %call50 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call49)
  %29 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr51 = getelementptr inbounds %struct.sv*, %struct.sv** %29, i32 1
  store %struct.sv** %incdec.ptr51, %struct.sv*** %sp, align 8
  store %struct.sv* %call50, %struct.sv** %incdec.ptr51, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.43, %if.end.28
  %30 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %30, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare i32 @Perl_dowantarray() #1

declare %struct.sv* @Perl_newSViv(i64) #1

declare %struct.sv* @Perl_newSVnv(double) #1

; Function Attrs: nounwind uwtable
define void @XS_Time__HiRes_time(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %Tp = alloca %struct.timeval, align 8
  %RETVAL = alloca double, align 8
  %targ = alloca %struct.sv*, align 8
  %status = alloca i32, align 4
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
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %9, i32 0, i32 7
  %10 = load i8, i8* %op_private, align 1
  %conv7 = zext i8 %10 to i32
  %and = and i32 %conv7, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %11, i32 0, i32 3
  %12 = load i64, i64* %op_targ, align 8
  %13 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %13, i64 %12
  %14 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call %struct.sv* @Perl_sv_newmortal()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %14, %cond.true ], [ %call, %cond.false ]
  store %struct.sv* %cond, %struct.sv** %targ, align 8
  %call8 = call i32 @gettimeofday(%struct.timeval* %Tp, %struct.timezone* null)
  store i32 %call8, i32* %status, align 4
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %Tp, i32 0, i32 0
  %15 = load i64, i64* %tv_sec, align 8
  %conv9 = sitofp i64 %15 to double
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %Tp, i32 0, i32 1
  %16 = load i64, i64* %tv_usec, align 8
  %conv10 = sitofp i64 %16 to double
  %div = fdiv double %conv10, 1.000000e+06
  %add11 = fadd double %conv9, %div
  store double %add11, double* %RETVAL, align 8
  %17 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %18 = load i32, i32* %ax, align 4
  %idx.ext12 = sext i32 %18 to i64
  %add.ptr13 = getelementptr inbounds %struct.sv*, %struct.sv** %17, i64 %idx.ext12
  %add.ptr14 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr13, i64 -1
  store %struct.sv** %add.ptr14, %struct.sv*** %sp, align 8
  %19 = load %struct.sv*, %struct.sv** %targ, align 8
  %20 = load double, double* %RETVAL, align 8
  call void @Perl_sv_setnv(%struct.sv* %19, double %20)
  %21 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 2
  %22 = load i32, i32* %sv_flags, align 4
  %and15 = and i32 %22, 16384
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %cond.end
  %23 = load %struct.sv*, %struct.sv** %targ, align 8
  %call18 = call i32 @Perl_mg_set(%struct.sv* %23)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %cond.end
  %24 = load %struct.sv*, %struct.sv** %targ, align 8
  %25 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr20 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i32 1
  store %struct.sv** %incdec.ptr20, %struct.sv*** %sp, align 8
  store %struct.sv* %24, %struct.sv** %incdec.ptr20, align 8
  store %struct.sv* %24, %struct.sv** %tmp
  %26 = load %struct.sv*, %struct.sv** %tmp
  store i64 1, i64* %tmpXSoff, align 8
  %27 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %28 = load i32, i32* %ax, align 4
  %idx.ext22 = sext i32 %28 to i64
  %add.ptr23 = getelementptr inbounds %struct.sv*, %struct.sv** %27, i64 %idx.ext22
  %29 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %29, 1
  %add.ptr24 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr23, i64 %sub
  store %struct.sv** %add.ptr24, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @boot_Time__HiRes(%struct.cv* %cv) #0 {
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
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8** %file, align 8
  %8 = load i8*, i8** %file, align 8
  %call = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), void (%struct.cv*)* @XS_Time__HiRes_constant, i8* %8)
  %9 = bitcast %struct.cv* %call to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  %10 = load i8*, i8** %file, align 8
  %call6 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), void (%struct.cv*)* @XS_Time__HiRes_usleep, i8* %10)
  %11 = bitcast %struct.cv* %call6 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  %12 = load i8*, i8** %file, align 8
  %call7 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), void (%struct.cv*)* @XS_Time__HiRes_sleep, i8* %12)
  %13 = bitcast %struct.cv* %call7 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  %14 = load i8*, i8** %file, align 8
  %call8 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0), void (%struct.cv*)* @XS_Time__HiRes_gettimeofday, i8* %14)
  %15 = bitcast %struct.cv* %call8 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0))
  %16 = load i8*, i8** %file, align 8
  %call9 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), void (%struct.cv*)* @XS_Time__HiRes_time, i8* %16)
  %17 = bitcast %struct.cv* %call9 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0))
  %18 = load i32, i32* %ax, align 4
  %add10 = add nsw i32 %18, 0
  %idxprom = sext i32 %add10 to i64
  %19 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %19, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %20 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %21 = load i32, i32* %ax, align 4
  %idx.ext11 = sext i32 %21 to i64
  %add.ptr12 = getelementptr inbounds %struct.sv*, %struct.sv** %20, i64 %idx.ext11
  %22 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %22, 1
  %add.ptr13 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr12, i64 %sub
  store %struct.sv** %add.ptr13, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

declare i32 @memcmp(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @constant_11(i8* %name, i64* %iv_return) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %iv_return.addr = alloca i64*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64* %iv_return, i64** %iv_return.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 7
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 80, label %sw.bb
    i32 82, label %sw.bb.1
    i32 105, label %sw.bb.6
    i32 108, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8
  %call = call i32 @memcmp(i8* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i64 11)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %3 = load i64*, i64** %iv_return.addr, align 8
  store i64 2, i64* %3, align 8
  store i32 3, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load i8*, i8** %name.addr, align 8
  %call2 = call i32 @memcmp(i8* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i64 11)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %sw.bb.1
  %5 = load i64*, i64** %iv_return.addr, align 8
  store i64 0, i64* %5, align 8
  store i32 3, i32* %retval
  br label %return

if.end.5:                                         ; preds = %sw.bb.1
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %6 = load i8*, i8** %name.addr, align 8
  %call7 = call i32 @memcmp(i8* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i64 11)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %sw.bb.6
  %7 = load i64*, i64** %iv_return.addr, align 8
  store i64 0, i64* %7, align 8
  store i32 3, i32* %retval
  br label %return

if.end.10:                                        ; preds = %sw.bb.6
  %8 = load i8*, i8** %name.addr, align 8
  %call11 = call i32 @memcmp(i8* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i64 11)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  %9 = load i64*, i64** %iv_return.addr, align 8
  store i64 0, i64* %9, align 8
  store i32 3, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %10 = load i8*, i8** %name.addr, align 8
  %call16 = call i32 @memcmp(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i64 11)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %sw.bb.15
  %11 = load i64*, i64** %iv_return.addr, align 8
  store i64 0, i64* %11, align 8
  store i32 3, i32* %retval
  br label %return

if.end.19:                                        ; preds = %sw.bb.15
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.19, %if.end.14, %if.end.5, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.18, %if.then.13, %if.then.9, %if.then.4, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
