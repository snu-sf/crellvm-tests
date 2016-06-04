; ModuleID = 'Cwd.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
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

@PL_stack_sp = external global %struct.sv**, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_markstack_ptr = external global i32*, align 8
@.str = private unnamed_addr constant [22 x i8] c"Usage: Cwd::fastcwd()\00", align 1
@PL_op = external global %struct.op*, align 8
@PL_curpad = external global %struct.sv**, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Usage: Cwd::abs_path(pathsv=Nullsv)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@PL_tainting = external global i8, align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"Cwd.c\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Cwd::fastcwd\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Cwd::abs_path\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: nounwind uwtable
define void @XS_Cwd_fastcwd(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %targ = alloca %struct.sv*, align 8
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
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
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
  %17 = load %struct.sv*, %struct.sv** %targ, align 8
  %call10 = call i32 @Perl_getcwd_sv(%struct.sv* %17)
  %18 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %19 = load i32, i32* %ax, align 4
  %idx.ext11 = sext i32 %19 to i64
  %add.ptr12 = getelementptr inbounds %struct.sv*, %struct.sv** %18, i64 %idx.ext11
  %add.ptr13 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr12, i64 -1
  store %struct.sv** %add.ptr13, %struct.sv*** %sp, align 8
  %20 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 2
  %21 = load i32, i32* %sv_flags, align 4
  %and14 = and i32 %21, 16384
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %cond.end
  %22 = load %struct.sv*, %struct.sv** %targ, align 8
  %call17 = call i32 @Perl_mg_set(%struct.sv* %22)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %cond.end
  %23 = load %struct.sv*, %struct.sv** %targ, align 8
  %24 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr19 = getelementptr inbounds %struct.sv*, %struct.sv** %24, i32 1
  store %struct.sv** %incdec.ptr19, %struct.sv*** %sp, align 8
  store %struct.sv* %23, %struct.sv** %incdec.ptr19, align 8
  store %struct.sv* %23, %struct.sv** %tmp
  %25 = load %struct.sv*, %struct.sv** %tmp
  %26 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %26, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare void @Perl_croak(i8*, ...) #1

declare %struct.sv* @Perl_sv_newmortal() #1

declare i32 @Perl_getcwd_sv(%struct.sv*) #1

declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @XS_Cwd_abs_path(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %pathsv = alloca %struct.sv*, align 8
  %targ = alloca %struct.sv*, align 8
  %path = alloca i8*, align 8
  %buf = alloca [4096 x i8], align 16
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
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* %items, align 4
  %cmp7 = icmp sgt i32 %9, 1
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %10 = load i32, i32* %items, align 4
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext9 = sext i32 %10 to i64
  %idx.neg = sub i64 0, %idx.ext9
  %add.ptr10 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i64 %idx.neg
  store %struct.sv** %add.ptr10, %struct.sv*** %sp, align 8
  %12 = load i32, i32* %items, align 4
  %cmp11 = icmp slt i32 %12, 1
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  store %struct.sv* null, %struct.sv** %pathsv, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %13 = load i32, i32* %ax, align 4
  %add14 = add nsw i32 %13, 0
  %idxprom = sext i32 %add14 to i64
  %14 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %14, i64 %idxprom
  %15 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %15, %struct.sv** %pathsv, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.13
  %16 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %16, i32 0, i32 7
  %17 = load i8, i8* %op_private, align 1
  %conv16 = zext i8 %17 to i32
  %and = and i32 %conv16, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  %18 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %18, i32 0, i32 3
  %19 = load i64, i64* %op_targ, align 8
  %20 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx17 = getelementptr inbounds %struct.sv*, %struct.sv** %20, i64 %19
  %21 = load %struct.sv*, %struct.sv** %arrayidx17, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.15
  %call = call %struct.sv* @Perl_sv_newmortal()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %21, %cond.true ], [ %call, %cond.false ]
  store %struct.sv* %cond, %struct.sv** %targ, align 8
  %22 = load %struct.sv*, %struct.sv** %pathsv, align 8
  %tobool18 = icmp ne %struct.sv* %22, null
  br i1 %tobool18, label %cond.true.19, label %cond.false.28

cond.true.19:                                     ; preds = %cond.end
  %23 = load %struct.sv*, %struct.sv** %pathsv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 2
  %24 = load i32, i32* %sv_flags, align 4
  %and20 = and i32 %24, 262144
  %cmp21 = icmp eq i32 %and20, 262144
  br i1 %cmp21, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.true.19
  %25 = load %struct.sv*, %struct.sv** %pathsv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 0
  %26 = load i8*, i8** %sv_any, align 8
  %27 = bitcast i8* %26 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %27, i32 0, i32 0
  %28 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.26

cond.false.24:                                    ; preds = %cond.true.19
  %29 = load %struct.sv*, %struct.sv** %pathsv, align 8
  %call25 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %29)
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.23
  %cond27 = phi i8* [ %28, %cond.true.23 ], [ %call25, %cond.false.24 ]
  br label %cond.end.29

cond.false.28:                                    ; preds = %cond.end
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.end.26
  %cond30 = phi i8* [ %cond27, %cond.end.26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), %cond.false.28 ]
  store i8* %cond30, i8** %path, align 8
  %30 = load i8*, i8** %path, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call31 = call i8* @bsd_realpath(i8* %30, i8* %arraydecay)
  %tobool32 = icmp ne i8* %call31, null
  br i1 %tobool32, label %if.then.33, label %if.else.43

if.then.33:                                       ; preds = %cond.end.29
  %31 = load %struct.sv*, %struct.sv** %targ, align 8
  %arraydecay34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %arraydecay35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call36 = call i64 @strlen(i8* %arraydecay35)
  call void @Perl_sv_setpvn(%struct.sv* %31, i8* %arraydecay34, i64 %call36)
  %32 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags37 = getelementptr inbounds %struct.sv, %struct.sv* %32, i32 0, i32 2
  %33 = load i32, i32* %sv_flags37, align 4
  %and38 = and i32 %33, 1223753727
  store i32 %and38, i32* %sv_flags37, align 4
  %34 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags39 = getelementptr inbounds %struct.sv, %struct.sv* %34, i32 0, i32 2
  %35 = load i32, i32* %sv_flags39, align 4
  %or = or i32 %35, 67371008
  store i32 %or, i32* %sv_flags39, align 4
  %36 = load i8, i8* @PL_tainting, align 1
  %tobool40 = icmp ne i8 %36, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.33
  %37 = load %struct.sv*, %struct.sv** %targ, align 8
  call void @Perl_sv_taint(%struct.sv* %37)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.then.33
  br label %if.end.44

if.else.43:                                       ; preds = %cond.end.29
  %38 = load %struct.sv*, %struct.sv** %targ, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %38, %struct.sv* @PL_sv_undef, i32 2)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.43, %if.end.42
  %39 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %40 = load i32, i32* %ax, align 4
  %idx.ext45 = sext i32 %40 to i64
  %add.ptr46 = getelementptr inbounds %struct.sv*, %struct.sv** %39, i64 %idx.ext45
  %add.ptr47 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr46, i64 -1
  store %struct.sv** %add.ptr47, %struct.sv*** %sp, align 8
  %41 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags48 = getelementptr inbounds %struct.sv, %struct.sv* %41, i32 0, i32 2
  %42 = load i32, i32* %sv_flags48, align 4
  %and49 = and i32 %42, 16384
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.44
  %43 = load %struct.sv*, %struct.sv** %targ, align 8
  %call52 = call i32 @Perl_mg_set(%struct.sv* %43)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.44
  %44 = load %struct.sv*, %struct.sv** %targ, align 8
  %45 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr54 = getelementptr inbounds %struct.sv*, %struct.sv** %45, i32 1
  store %struct.sv** %incdec.ptr54, %struct.sv*** %sp, align 8
  store %struct.sv* %44, %struct.sv** %incdec.ptr54, align 8
  store %struct.sv* %44, %struct.sv** %tmp
  %46 = load %struct.sv*, %struct.sv** %tmp
  %47 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %47, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define internal i8* @bsd_realpath(i8* %path, i8* %resolved) #0 {
entry:
  %retval = alloca i8*, align 8
  %path.addr = alloca i8*, align 8
  %resolved.addr = alloca i8*, align 8
  %rootd = alloca i32, align 4
  %serrno = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %wbuf = alloca [4096 x i8], align 16
  %symlinks = alloca i32, align 4
  %wd = alloca [4096 x i8], align 16
  store i8* %path, i8** %path.addr, align 8
  store i8* %resolved, i8** %resolved.addr, align 8
  store i32 0, i32* %symlinks, align 4
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %wd, i32 0, i32 0
  %call = call i8* @getcwd(i8* %arraydecay, i64 4095)
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %resolved.addr, align 8
  %call1 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %resolved.addr, align 8
  %2 = load i8*, i8** %path.addr, align 8
  %call2 = call i8* @strncpy(i8* %1, i8* %2, i64 4095)
  %3 = load i8*, i8** %resolved.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 4095
  store i8 0, i8* %arrayidx, align 1
  br label %loop

loop:                                             ; preds = %if.end
  %4 = load i8*, i8** %resolved.addr, align 8
  %call3 = call i8* @strrchr(i8* %4, i32 47)
  store i8* %call3, i8** %q, align 8
  %5 = load i8*, i8** %q, align 8
  %cmp4 = icmp ne i8* %5, null
  br i1 %cmp4, label %if.then.5, label %if.else.18

if.then.5:                                        ; preds = %loop
  %6 = load i8*, i8** %q, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  store i8* %add.ptr, i8** %p, align 8
  %7 = load i8*, i8** %q, align 8
  %8 = load i8*, i8** %resolved.addr, align 8
  %cmp6 = icmp eq i8* %7, %8
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.5
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8** %q, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.then.5
  br label %do.body

do.body:                                          ; preds = %land.end, %if.else
  %9 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 -1
  store i8* %incdec.ptr, i8** %q, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %10 = load i8*, i8** %q, align 8
  %11 = load i8*, i8** %resolved.addr, align 8
  %cmp8 = icmp ugt i8* %10, %11
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %12 = load i8*, i8** %q, align 8
  %13 = load i8, i8* %12, align 1
  %conv = sext i8 %13 to i32
  %cmp9 = icmp eq i32 %conv, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %14 = phi i1 [ false, %do.cond ], [ %cmp9, %land.rhs ]
  br i1 %14, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %15 = load i8*, i8** %q, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %arrayidx11, align 1
  %16 = load i8*, i8** %resolved.addr, align 8
  store i8* %16, i8** %q, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %if.then.7
  %17 = load i8*, i8** %q, align 8
  %call13 = call i32 @chdir(i8* %17)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  br label %err1

if.end.17:                                        ; preds = %if.end.12
  br label %if.end.19

if.else.18:                                       ; preds = %loop
  %18 = load i8*, i8** %resolved.addr, align 8
  store i8* %18, i8** %p, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.end.17
  %arraydecay20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %wbuf, i32 0, i32 0
  %19 = load i8*, i8** %p, align 8
  %call21 = call i8* @strcpy(i8* %arraydecay20, i8* %19)
  %20 = load i8*, i8** %resolved.addr, align 8
  %call22 = call i8* @getcwd(i8* %20, i64 4096)
  %cmp23 = icmp eq i8* %call22, null
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.19
  br label %err1

if.end.26:                                        ; preds = %if.end.19
  %21 = load i8*, i8** %resolved.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %22 to i32
  %cmp29 = icmp eq i32 %conv28, 47
  br i1 %cmp29, label %land.lhs.true, label %if.else.36

land.lhs.true:                                    ; preds = %if.end.26
  %23 = load i8*, i8** %resolved.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %24 to i32
  %cmp33 = icmp eq i32 %conv32, 0
  br i1 %cmp33, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true
  store i32 1, i32* %rootd, align 4
  br label %if.end.37

if.else.36:                                       ; preds = %land.lhs.true, %if.end.26
  store i32 0, i32* %rootd, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.36, %if.then.35
  %arraydecay38 = getelementptr inbounds [4096 x i8], [4096 x i8]* %wbuf, i32 0, i32 0
  %25 = load i8, i8* %arraydecay38, align 1
  %tobool = icmp ne i8 %25, 0
  br i1 %tobool, label %if.then.39, label %if.end.58

if.then.39:                                       ; preds = %if.end.37
  %26 = load i8*, i8** %resolved.addr, align 8
  %call40 = call i64 @strlen(i8* %26)
  %arraydecay41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %wbuf, i32 0, i32 0
  %call42 = call i64 @strlen(i8* %arraydecay41)
  %add = add i64 %call40, %call42
  %27 = load i32, i32* %rootd, align 4
  %sub = sub nsw i32 1, %27
  %conv43 = sext i32 %sub to i64
  %add44 = add i64 %add, %conv43
  %add45 = add i64 %add44, 1
  %cmp46 = icmp ugt i64 %add45, 4096
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.then.39
  %call49 = call i32* @__errno_location()
  store i32 36, i32* %call49, align 4
  br label %err1

if.end.50:                                        ; preds = %if.then.39
  %28 = load i32, i32* %rootd, align 4
  %cmp51 = icmp eq i32 %28, 0
  br i1 %cmp51, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end.50
  %29 = load i8*, i8** %resolved.addr, align 8
  %call54 = call i8* @strcat(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.end.50
  %30 = load i8*, i8** %resolved.addr, align 8
  %arraydecay56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %wbuf, i32 0, i32 0
  %call57 = call i8* @strcat(i8* %30, i8* %arraydecay56)
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.55, %if.end.37
  %arraydecay59 = getelementptr inbounds [4096 x i8], [4096 x i8]* %wd, i32 0, i32 0
  %call60 = call i32 @chdir(i8* %arraydecay59)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.58
  %call64 = call i32* @__errno_location()
  %31 = load i32, i32* %call64, align 4
  store i32 %31, i32* %serrno, align 4
  br label %err2

if.end.65:                                        ; preds = %if.end.58
  %32 = load i8*, i8** %resolved.addr, align 8
  store i8* %32, i8** %retval
  br label %return

err1:                                             ; preds = %if.then.48, %if.then.25, %if.then.16
  %call66 = call i32* @__errno_location()
  %33 = load i32, i32* %call66, align 4
  store i32 %33, i32* %serrno, align 4
  %arraydecay67 = getelementptr inbounds [4096 x i8], [4096 x i8]* %wd, i32 0, i32 0
  %call68 = call i32 @chdir(i8* %arraydecay67)
  br label %err2

err2:                                             ; preds = %err1, %if.then.63
  %34 = load i32, i32* %serrno, align 4
  %call69 = call i32* @__errno_location()
  store i32 %34, i32* %call69, align 4
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %err2, %if.end.65, %if.then
  %35 = load i8*, i8** %retval
  ret i8* %35
}

declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

declare i64 @strlen(i8*) #1

declare void @Perl_sv_taint(%struct.sv*) #1

declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: nounwind uwtable
define void @boot_Cwd(%struct.cv* %cv) #0 {
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
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8** %file, align 8
  %8 = load i8*, i8** %file, align 8
  %call = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), void (%struct.cv*)* @XS_Cwd_fastcwd, i8* %8)
  %9 = load i8*, i8** %file, align 8
  %call6 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), void (%struct.cv*)* @XS_Cwd_abs_path, i8* %9)
  %10 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %10, 0
  %idxprom = sext i32 %add7 to i64
  %11 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %11, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %12 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %13 = load i32, i32* %ax, align 4
  %idx.ext8 = sext i32 %13 to i64
  %add.ptr9 = getelementptr inbounds %struct.sv*, %struct.sv** %12, i64 %idx.ext8
  %14 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %14, 1
  %add.ptr10 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr9, i64 %sub
  store %struct.sv** %add.ptr10, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

declare i8* @getcwd(i8*, i64) #1

declare i8* @strcpy(i8*, i8*) #1

declare i8* @strncpy(i8*, i8*, i64) #1

declare i8* @strrchr(i8*, i32) #1

declare i32 @chdir(i8*) #1

declare i32* @__errno_location() #1

declare i8* @strcat(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
