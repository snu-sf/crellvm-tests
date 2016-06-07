; ModuleID = 'MD5.c'
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
%struct.MD5_CTX = type { i32, i32, i32, i32, i32, i32, i32, [128 x i8] }
%struct.xpv = type { i8*, i64, i64 }
%struct.xrv = type { %struct.sv* }
%struct.xpviv = type { i8*, i64, i64, i64 }
%struct.xpvmg = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv* }

@PL_stack_sp = external global %struct.sv**, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_markstack_ptr = external global i32*, align 8
@.str = private unnamed_addr constant [32 x i8] c"Usage: Digest::MD5::new(xclass)\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Usage: Digest::MD5::clone(self)\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Usage: Digest::MD5::DESTROY(context)\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Usage: Digest::MD5::add(self, ...)\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Usage: Digest::MD5::addfile(self, fh)\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Reading from filehandle failed\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"No filehandle passed\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Usage: %s(context)\00", align 1
@PL_dowarn = external global i8, align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Digest::MD5\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"probably called as method\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"called with reference argument\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"probably called as class method\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"md5_hex\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"md5_base64\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"&Digest::MD5::%s function %s\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"MD5.c\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Digest::MD5::new\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Digest::MD5::clone\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"Digest::MD5::DESTROY\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"Digest::MD5::add\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Digest::MD5::addfile\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Digest::MD5::hexdigest\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Digest::MD5::digest\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Digest::MD5::b64digest\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"Digest::MD5::md5\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"Digest::MD5::md5_base64\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Digest::MD5::md5_hex\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@.str.28 = private unnamed_addr constant [40 x i8] c"Not a reference to a Digest::MD5 object\00", align 1
@PADDING = internal global [64 x i8] c"\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.29 = private unnamed_addr constant [25 x i8] c"Bad convertion type (%d)\00", align 1
@hex_16.hexdigits = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), align 8
@.str.30 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@base64_16.base64 = internal global i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.31, i32 0, i32 0), align 8
@.str.31 = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 1

; Function Attrs: nounwind uwtable
define void @XS_Digest__MD5_new(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %xclass = alloca %struct.sv*, align 8
  %context = alloca %struct.MD5_CTX*, align 8
  %my_na = alloca i64, align 8
  %sclass = alloca i8*, align 8
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
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
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
  store %struct.sv* %13, %struct.sv** %xclass, align 8
  %14 = load %struct.sv*, %struct.sv** %xclass, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 2
  %15 = load i32, i32* %sv_flags, align 4
  %and = and i32 %15, 524288
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %16 = load %struct.sv*, %struct.sv** %xclass, align 8
  %sv_flags11 = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags11, align 4
  %and12 = and i32 %17, 262144
  %cmp13 = icmp eq i32 %and12, 262144
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.10
  %18 = load %struct.sv*, %struct.sv** %xclass, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 0
  %19 = load i8*, i8** %sv_any, align 8
  %20 = bitcast i8* %19 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %20, i32 0, i32 1
  %21 = load i64, i64* %xpv_cur, align 8
  store i64 %21, i64* %my_na, align 8
  %22 = load %struct.sv*, %struct.sv** %xclass, align 8
  %sv_any15 = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 0
  %23 = load i8*, i8** %sv_any15, align 8
  %24 = bitcast i8* %23 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %24, i32 0, i32 0
  %25 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.10
  %26 = load %struct.sv*, %struct.sv** %xclass, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %26, i64* %my_na, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %25, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %sclass, align 8
  %call16 = call i8* @Perl_safesysmalloc(i64 156)
  %27 = bitcast i8* %call16 to %struct.MD5_CTX*
  store %struct.MD5_CTX* %27, %struct.MD5_CTX** %context, align 8
  %28 = load %struct.MD5_CTX*, %struct.MD5_CTX** %context, align 8
  %signature = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %28, i32 0, i32 0
  store i32 200003165, i32* %signature, align 4
  %call17 = call %struct.sv* @Perl_sv_newmortal()
  %29 = load i32, i32* %ax, align 4
  %add18 = add nsw i32 %29, 0
  %idxprom19 = sext i32 %add18 to i64
  %30 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx20 = getelementptr inbounds %struct.sv*, %struct.sv** %30, i64 %idxprom19
  store %struct.sv* %call17, %struct.sv** %arrayidx20, align 8
  %31 = load i32, i32* %ax, align 4
  %add21 = add nsw i32 %31, 0
  %idxprom22 = sext i32 %add21 to i64
  %32 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx23 = getelementptr inbounds %struct.sv*, %struct.sv** %32, i64 %idxprom22
  %33 = load %struct.sv*, %struct.sv** %arrayidx23, align 8
  %34 = load i8*, i8** %sclass, align 8
  %35 = load %struct.MD5_CTX*, %struct.MD5_CTX** %context, align 8
  %36 = bitcast %struct.MD5_CTX* %35 to i8*
  %call24 = call %struct.sv* @Perl_sv_setref_pv(%struct.sv* %33, i8* %34, i8* %36)
  %37 = load i32, i32* %ax, align 4
  %add25 = add nsw i32 %37, 0
  %idxprom26 = sext i32 %add25 to i64
  %38 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx27 = getelementptr inbounds %struct.sv*, %struct.sv** %38, i64 %idxprom26
  %39 = load %struct.sv*, %struct.sv** %arrayidx27, align 8
  %sv_any28 = getelementptr inbounds %struct.sv, %struct.sv* %39, i32 0, i32 0
  %40 = load i8*, i8** %sv_any28, align 8
  %41 = bitcast i8* %40 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %41, i32 0, i32 0
  %42 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_flags29 = getelementptr inbounds %struct.sv, %struct.sv* %42, i32 0, i32 2
  %43 = load i32, i32* %sv_flags29, align 4
  %or = or i32 %43, 8388608
  store i32 %or, i32* %sv_flags29, align 4
  br label %if.end.31

if.else:                                          ; preds = %if.end
  %44 = load %struct.sv*, %struct.sv** %xclass, align 8
  %call30 = call %struct.MD5_CTX* @get_md5_ctx(%struct.sv* %44)
  store %struct.MD5_CTX* %call30, %struct.MD5_CTX** %context, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %cond.end
  %45 = load %struct.MD5_CTX*, %struct.MD5_CTX** %context, align 8
  call void @MD5Init(%struct.MD5_CTX* %45)
  store i64 1, i64* %tmpXSoff, align 8
  %46 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %47 = load i32, i32* %ax, align 4
  %idx.ext32 = sext i32 %47 to i64
  %add.ptr33 = getelementptr inbounds %struct.sv*, %struct.sv** %46, i64 %idx.ext32
  %48 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %48, 1
  %add.ptr34 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr33, i64 %sub
  store %struct.sv** %add.ptr34, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare void @Perl_croak(i8*, ...) #1

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

declare i8* @Perl_safesysmalloc(i64) #1

declare %struct.sv* @Perl_sv_newmortal() #1

declare %struct.sv* @Perl_sv_setref_pv(%struct.sv*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.MD5_CTX* @get_md5_ctx(%struct.sv* %sv) #0 {
entry:
  %retval = alloca %struct.MD5_CTX*, align 8
  %sv.addr = alloca %struct.sv*, align 8
  %ctx = alloca %struct.MD5_CTX*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 524288
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %4, i32 0, i32 0
  %5 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  store %struct.sv* %5, %struct.sv** %sv.addr, align 8
  %6 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 2
  %7 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %7, 65536
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %if.then
  %8 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags5 = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 2
  %9 = load i32, i32* %sv_flags5, align 4
  %and6 = and i32 %9, 65536
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.4
  %10 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any8 = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  %11 = load i8*, i8** %sv_any8, align 8
  %12 = bitcast i8* %11 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %12, i32 0, i32 3
  %13 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.4
  %14 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %14)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ %call, %cond.false ]
  %15 = inttoptr i64 %cond to %struct.MD5_CTX*
  store %struct.MD5_CTX* %15, %struct.MD5_CTX** %ctx, align 8
  %16 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx, align 8
  %tobool9 = icmp ne %struct.MD5_CTX* %16, null
  br i1 %tobool9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %17 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx, align 8
  %signature = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %17, i32 0, i32 0
  %18 = load i32, i32* %signature, align 4
  %cmp = icmp eq i32 %18, 200003165
  br i1 %cmp, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %land.lhs.true
  %19 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx, align 8
  store %struct.MD5_CTX* %19, %struct.MD5_CTX** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %cond.end
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i32 0, i32 0))
  store %struct.MD5_CTX* null, %struct.MD5_CTX** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.10
  %20 = load %struct.MD5_CTX*, %struct.MD5_CTX** %retval
  ret %struct.MD5_CTX* %20
}

; Function Attrs: nounwind uwtable
define internal void @MD5Init(%struct.MD5_CTX* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.MD5_CTX*, align 8
  store %struct.MD5_CTX* %ctx, %struct.MD5_CTX** %ctx.addr, align 8
  %0 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %0, i32 0, i32 1
  store i32 1732584193, i32* %A, align 4
  %1 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %1, i32 0, i32 2
  store i32 -271733879, i32* %B, align 4
  %2 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %C = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %2, i32 0, i32 3
  store i32 -1732584194, i32* %C, align 4
  %3 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %3, i32 0, i32 4
  store i32 271733878, i32* %D, align 4
  %4 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %bytes_high = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %4, i32 0, i32 6
  store i32 0, i32* %bytes_high, align 4
  %5 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %bytes_low = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %5, i32 0, i32 5
  store i32 0, i32* %bytes_low, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_Digest__MD5_clone(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %self = alloca %struct.sv*, align 8
  %cont = alloca %struct.MD5_CTX*, align 8
  %myname = alloca i8*, align 8
  %context = alloca %struct.MD5_CTX*, align 8
  %my_na = alloca i64, align 8
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
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0))
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
  store %struct.sv* %13, %struct.sv** %self, align 8
  %14 = load %struct.sv*, %struct.sv** %self, align 8
  %call = call %struct.MD5_CTX* @get_md5_ctx(%struct.sv* %14)
  store %struct.MD5_CTX* %call, %struct.MD5_CTX** %cont, align 8
  %15 = load %struct.sv*, %struct.sv** %self, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 0
  %16 = load i8*, i8** %sv_any, align 8
  %17 = bitcast i8* %16 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %17, i32 0, i32 0
  %18 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %call10 = call i8* @Perl_sv_reftype(%struct.sv* %18, i32 1)
  store i8* %call10, i8** %myname, align 8
  %call11 = call i8* @Perl_safesysmalloc(i64 156)
  %19 = bitcast i8* %call11 to %struct.MD5_CTX*
  store %struct.MD5_CTX* %19, %struct.MD5_CTX** %context, align 8
  %call12 = call %struct.sv* @Perl_sv_newmortal()
  %20 = load i32, i32* %ax, align 4
  %add13 = add nsw i32 %20, 0
  %idxprom14 = sext i32 %add13 to i64
  %21 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx15 = getelementptr inbounds %struct.sv*, %struct.sv** %21, i64 %idxprom14
  store %struct.sv* %call12, %struct.sv** %arrayidx15, align 8
  %22 = load i32, i32* %ax, align 4
  %add16 = add nsw i32 %22, 0
  %idxprom17 = sext i32 %add16 to i64
  %23 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx18 = getelementptr inbounds %struct.sv*, %struct.sv** %23, i64 %idxprom17
  %24 = load %struct.sv*, %struct.sv** %arrayidx18, align 8
  %25 = load i8*, i8** %myname, align 8
  %26 = load %struct.MD5_CTX*, %struct.MD5_CTX** %context, align 8
  %27 = bitcast %struct.MD5_CTX* %26 to i8*
  %call19 = call %struct.sv* @Perl_sv_setref_pv(%struct.sv* %24, i8* %25, i8* %27)
  %28 = load i32, i32* %ax, align 4
  %add20 = add nsw i32 %28, 0
  %idxprom21 = sext i32 %add20 to i64
  %29 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx22 = getelementptr inbounds %struct.sv*, %struct.sv** %29, i64 %idxprom21
  %30 = load %struct.sv*, %struct.sv** %arrayidx22, align 8
  %sv_any23 = getelementptr inbounds %struct.sv, %struct.sv* %30, i32 0, i32 0
  %31 = load i8*, i8** %sv_any23, align 8
  %32 = bitcast i8* %31 to %struct.xrv*
  %xrv_rv24 = getelementptr inbounds %struct.xrv, %struct.xrv* %32, i32 0, i32 0
  %33 = load %struct.sv*, %struct.sv** %xrv_rv24, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %33, i32 0, i32 2
  %34 = load i32, i32* %sv_flags, align 4
  %or = or i32 %34, 8388608
  store i32 %or, i32* %sv_flags, align 4
  %35 = load %struct.MD5_CTX*, %struct.MD5_CTX** %context, align 8
  %36 = bitcast %struct.MD5_CTX* %35 to i8*
  %37 = load %struct.MD5_CTX*, %struct.MD5_CTX** %cont, align 8
  %38 = bitcast %struct.MD5_CTX* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %38, i64 156, i32 4, i1 false)
  store i64 1, i64* %tmpXSoff, align 8
  %39 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %40 = load i32, i32* %ax, align 4
  %idx.ext25 = sext i32 %40 to i64
  %add.ptr26 = getelementptr inbounds %struct.sv*, %struct.sv** %39, i64 %idx.ext25
  %41 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %41, 1
  %add.ptr27 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr26, i64 %sub
  store %struct.sv** %add.ptr27, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare i8* @Perl_sv_reftype(%struct.sv*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @XS_Digest__MD5_DESTROY(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %context = alloca %struct.MD5_CTX*, align 8
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
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %call = call %struct.MD5_CTX* @get_md5_ctx(%struct.sv* %11)
  store %struct.MD5_CTX* %call, %struct.MD5_CTX** %context, align 8
  %12 = load %struct.MD5_CTX*, %struct.MD5_CTX** %context, align 8
  %13 = bitcast %struct.MD5_CTX* %12 to i8*
  call void @Perl_safesysfree(i8* %13)
  store i64 0, i64* %tmpXSoff, align 8
  %14 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %15 = load i32, i32* %ax, align 4
  %idx.ext8 = sext i32 %15 to i64
  %add.ptr9 = getelementptr inbounds %struct.sv*, %struct.sv** %14, i64 %idx.ext8
  %16 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %16, 1
  %add.ptr10 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr9, i64 %sub
  store %struct.sv** %add.ptr10, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare void @Perl_safesysfree(i8*) #1

; Function Attrs: nounwind uwtable
define void @XS_Digest__MD5_add(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %self = alloca %struct.sv*, align 8
  %context = alloca %struct.MD5_CTX*, align 8
  %i = alloca i32, align 4
  %data = alloca i8*, align 8
  %len = alloca i64, align 8
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
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0))
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
  store %struct.sv* %13, %struct.sv** %self, align 8
  %14 = load %struct.sv*, %struct.sv** %self, align 8
  %call = call %struct.MD5_CTX* @get_md5_ctx(%struct.sv* %14)
  store %struct.MD5_CTX* %call, %struct.MD5_CTX** %context, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %items, align 4
  %cmp10 = icmp slt i32 %15, %16
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %ax, align 4
  %18 = load i32, i32* %i, align 4
  %add12 = add nsw i32 %17, %18
  %idxprom13 = sext i32 %add12 to i64
  %19 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx14 = getelementptr inbounds %struct.sv*, %struct.sv** %19, i64 %idxprom13
  %20 = load %struct.sv*, %struct.sv** %arrayidx14, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 2
  %21 = load i32, i32* %sv_flags, align 4
  %and = and i32 %21, 537133056
  %cmp15 = icmp eq i32 %and, 262144
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %22 = load i32, i32* %ax, align 4
  %23 = load i32, i32* %i, align 4
  %add17 = add nsw i32 %22, %23
  %idxprom18 = sext i32 %add17 to i64
  %24 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx19 = getelementptr inbounds %struct.sv*, %struct.sv** %24, i64 %idxprom18
  %25 = load %struct.sv*, %struct.sv** %arrayidx19, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 0
  %26 = load i8*, i8** %sv_any, align 8
  %27 = bitcast i8* %26 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %27, i32 0, i32 1
  %28 = load i64, i64* %xpv_cur, align 8
  store i64 %28, i64* %len, align 8
  %29 = load i32, i32* %ax, align 4
  %30 = load i32, i32* %i, align 4
  %add20 = add nsw i32 %29, %30
  %idxprom21 = sext i32 %add20 to i64
  %31 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx22 = getelementptr inbounds %struct.sv*, %struct.sv** %31, i64 %idxprom21
  %32 = load %struct.sv*, %struct.sv** %arrayidx22, align 8
  %sv_any23 = getelementptr inbounds %struct.sv, %struct.sv* %32, i32 0, i32 0
  %33 = load i8*, i8** %sv_any23, align 8
  %34 = bitcast i8* %33 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %34, i32 0, i32 0
  %35 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %36 = load i32, i32* %ax, align 4
  %37 = load i32, i32* %i, align 4
  %add24 = add nsw i32 %36, %37
  %idxprom25 = sext i32 %add24 to i64
  %38 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx26 = getelementptr inbounds %struct.sv*, %struct.sv** %38, i64 %idxprom25
  %39 = load %struct.sv*, %struct.sv** %arrayidx26, align 8
  %call27 = call i8* @Perl_sv_2pvbyte(%struct.sv* %39, i64* %len)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %35, %cond.true ], [ %call27, %cond.false ]
  store i8* %cond, i8** %data, align 8
  %40 = load %struct.MD5_CTX*, %struct.MD5_CTX** %context, align 8
  %41 = load i8*, i8** %data, align 8
  %42 = load i64, i64* %len, align 8
  call void @MD5Update(%struct.MD5_CTX* %40, i8* %41, i64 %42)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %43 = load i32, i32* %i, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 1, i64* %tmpXSoff, align 8
  %44 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %45 = load i32, i32* %ax, align 4
  %idx.ext28 = sext i32 %45 to i64
  %add.ptr29 = getelementptr inbounds %struct.sv*, %struct.sv** %44, i64 %idx.ext28
  %46 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %46, 1
  %add.ptr30 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr29, i64 %sub
  store %struct.sv** %add.ptr30, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare i8* @Perl_sv_2pvbyte(%struct.sv*, i64*) #1

; Function Attrs: nounwind uwtable
define internal void @MD5Update(%struct.MD5_CTX* %ctx, i8* %buf, i64 %len) #0 {
entry:
  %ctx.addr = alloca %struct.MD5_CTX*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %blocks = alloca i64, align 8
  %fill = alloca i64, align 8
  %missing = alloca i64, align 8
  store %struct.MD5_CTX* %ctx, %struct.MD5_CTX** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %bytes_low = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %0, i32 0, i32 5
  %1 = load i32, i32* %bytes_low, align 4
  %and = and i32 %1, 63
  %conv = zext i32 %and to i64
  store i64 %conv, i64* %fill, align 8
  %2 = load i64, i64* %len.addr, align 8
  %3 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %bytes_low1 = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %3, i32 0, i32 5
  %4 = load i32, i32* %bytes_low1, align 4
  %conv2 = zext i32 %4 to i64
  %add = add i64 %conv2, %2
  %conv3 = trunc i64 %add to i32
  store i32 %conv3, i32* %bytes_low1, align 4
  %5 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %bytes_low4 = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %5, i32 0, i32 5
  %6 = load i32, i32* %bytes_low4, align 4
  %conv5 = zext i32 %6 to i64
  %7 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %conv5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %bytes_high = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %8, i32 0, i32 6
  %9 = load i32, i32* %bytes_high, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %bytes_high, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i64, i64* %fill, align 8
  %tobool = icmp ne i64 %10, 0
  br i1 %tobool, label %if.then.7, label %if.end.20

if.then.7:                                        ; preds = %if.end
  %11 = load i64, i64* %fill, align 8
  %sub = sub i64 64, %11
  store i64 %sub, i64* %missing, align 8
  %12 = load i64, i64* %len.addr, align 8
  %13 = load i64, i64* %missing, align 8
  %cmp8 = icmp ult i64 %12, %13
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %14 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %buffer = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %14, i32 0, i32 7
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buffer, i32 0, i32 0
  %15 = load i64, i64* %fill, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %15
  %16 = load i8*, i8** %buf.addr, align 8
  %17 = load i64, i64* %len.addr, align 8
  %mul = mul i64 %17, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %16, i64 %mul, i32 1, i1 false)
  br label %if.end.31

if.end.11:                                        ; preds = %if.then.7
  %18 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %buffer12 = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %18, i32 0, i32 7
  %arraydecay13 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer12, i32 0, i32 0
  %19 = load i64, i64* %fill, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %arraydecay13, i64 %19
  %20 = load i8*, i8** %buf.addr, align 8
  %21 = load i64, i64* %missing, align 8
  %mul15 = mul i64 %21, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr14, i8* %20, i64 %mul15, i32 1, i1 false)
  %22 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %23 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %buffer16 = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %23, i32 0, i32 7
  %arraydecay17 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer16, i32 0, i32 0
  call void @MD5Transform(%struct.MD5_CTX* %22, i8* %arraydecay17, i64 1)
  %24 = load i64, i64* %missing, align 8
  %25 = load i8*, i8** %buf.addr, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %25, i64 %24
  store i8* %add.ptr18, i8** %buf.addr, align 8
  %26 = load i64, i64* %missing, align 8
  %27 = load i64, i64* %len.addr, align 8
  %sub19 = sub i64 %27, %26
  store i64 %sub19, i64* %len.addr, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.11, %if.end
  %28 = load i64, i64* %len.addr, align 8
  %shr = lshr i64 %28, 6
  store i64 %shr, i64* %blocks, align 8
  %29 = load i64, i64* %blocks, align 8
  %tobool21 = icmp ne i64 %29, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  %30 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %31 = load i8*, i8** %buf.addr, align 8
  %32 = load i64, i64* %blocks, align 8
  call void @MD5Transform(%struct.MD5_CTX* %30, i8* %31, i64 %32)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.20
  %33 = load i64, i64* %len.addr, align 8
  %and24 = and i64 %33, 63
  store i64 %and24, i64* %len.addr, align 8
  %tobool25 = icmp ne i64 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %if.end.23
  %34 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %buffer27 = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %34, i32 0, i32 7
  %arraydecay28 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer27, i32 0, i32 0
  %35 = load i8*, i8** %buf.addr, align 8
  %36 = load i64, i64* %blocks, align 8
  %shl = shl i64 %36, 6
  %add.ptr29 = getelementptr inbounds i8, i8* %35, i64 %shl
  %37 = load i64, i64* %len.addr, align 8
  %mul30 = mul i64 %37, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay28, i8* %add.ptr29, i64 %mul30, i32 1, i1 false)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.10, %if.then.26, %if.end.23
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_Digest__MD5_addfile(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %self = alloca %struct.sv*, align 8
  %fh = alloca %struct._PerlIO**, align 8
  %context = alloca %struct.MD5_CTX*, align 8
  %fill = alloca i64, align 8
  %buffer = alloca [4096 x i8], align 16
  %n = alloca i32, align 4
  %missing = alloca i64, align 8
  %tmpXSoff = alloca i64, align 8
  %tmpXSoff42 = alloca i64, align 8
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
  %cmp = icmp ne i32 %8, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %11, %struct.sv** %self, align 8
  %12 = load i32, i32* %ax, align 4
  %add8 = add nsw i32 %12, 1
  %idxprom9 = sext i32 %add8 to i64
  %13 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx10 = getelementptr inbounds %struct.sv*, %struct.sv** %13, i64 %idxprom9
  %14 = load %struct.sv*, %struct.sv** %arrayidx10, align 8
  %call = call %struct.io* @Perl_sv_2io(%struct.sv* %14)
  %sv_any = getelementptr inbounds %struct.io, %struct.io* %call, i32 0, i32 0
  %15 = load %struct.xpvio*, %struct.xpvio** %sv_any, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %15, i32 0, i32 7
  %16 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  store %struct._PerlIO** %16, %struct._PerlIO*** %fh, align 8
  %17 = load %struct.sv*, %struct.sv** %self, align 8
  %call11 = call %struct.MD5_CTX* @get_md5_ctx(%struct.sv* %17)
  store %struct.MD5_CTX* %call11, %struct.MD5_CTX** %context, align 8
  %18 = load %struct.MD5_CTX*, %struct.MD5_CTX** %context, align 8
  %bytes_low = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %18, i32 0, i32 5
  %19 = load i32, i32* %bytes_low, align 4
  %and = and i32 %19, 63
  %conv12 = zext i32 %and to i64
  store i64 %conv12, i64* %fill, align 8
  %20 = load %struct._PerlIO**, %struct._PerlIO*** %fh, align 8
  %tobool = icmp ne %struct._PerlIO** %20, null
  br i1 %tobool, label %if.then.13, label %if.else.40

if.then.13:                                       ; preds = %if.end
  %21 = load i64, i64* %fill, align 8
  %tobool14 = icmp ne i64 %21, 0
  br i1 %tobool14, label %if.then.15, label %if.end.28

if.then.15:                                       ; preds = %if.then.13
  %22 = load i64, i64* %fill, align 8
  %sub = sub i64 64, %22
  store i64 %sub, i64* %missing, align 8
  %23 = load %struct._PerlIO**, %struct._PerlIO*** %fh, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %24 = load i64, i64* %missing, align 8
  %call16 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %23, i8* %arraydecay, i64 %24)
  %conv17 = trunc i64 %call16 to i32
  store i32 %conv17, i32* %n, align 4
  %cmp18 = icmp sgt i32 %conv17, 0
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.then.15
  %25 = load %struct.MD5_CTX*, %struct.MD5_CTX** %context, align 8
  %arraydecay21 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %26 = load i32, i32* %n, align 4
  %conv22 = sext i32 %26 to i64
  call void @MD5Update(%struct.MD5_CTX* %25, i8* %arraydecay21, i64 %conv22)
  br label %if.end.27

if.else:                                          ; preds = %if.then.15
  store i64 1, i64* %tmpXSoff, align 8
  %27 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %28 = load i32, i32* %ax, align 4
  %idx.ext23 = sext i32 %28 to i64
  %add.ptr24 = getelementptr inbounds %struct.sv*, %struct.sv** %27, i64 %idx.ext23
  %29 = load i64, i64* %tmpXSoff, align 8
  %sub25 = sub nsw i64 %29, 1
  %add.ptr26 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr24, i64 %sub25
  store %struct.sv** %add.ptr26, %struct.sv*** @PL_stack_sp, align 8
  br label %return

if.end.27:                                        ; preds = %if.then.20
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.13
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.28
  %30 = load %struct._PerlIO**, %struct._PerlIO*** %fh, align 8
  %arraydecay29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call30 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %30, i8* %arraydecay29, i64 4096)
  %conv31 = trunc i64 %call30 to i32
  store i32 %conv31, i32* %n, align 4
  %cmp32 = icmp sgt i32 %conv31, 0
  br i1 %cmp32, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load %struct.MD5_CTX*, %struct.MD5_CTX** %context, align 8
  %arraydecay34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %32 = load i32, i32* %n, align 4
  %conv35 = sext i32 %32 to i64
  call void @MD5Update(%struct.MD5_CTX* %31, i8* %arraydecay34, i64 %conv35)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load %struct._PerlIO**, %struct._PerlIO*** %fh, align 8
  %call36 = call i32 @Perl_PerlIO_error(%struct._PerlIO** %33)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %while.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %while.end
  br label %if.end.41

if.else.40:                                       ; preds = %if.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %if.end.39
  store i64 1, i64* %tmpXSoff42, align 8
  %34 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %35 = load i32, i32* %ax, align 4
  %idx.ext43 = sext i32 %35 to i64
  %add.ptr44 = getelementptr inbounds %struct.sv*, %struct.sv** %34, i64 %idx.ext43
  %36 = load i64, i64* %tmpXSoff42, align 8
  %sub45 = sub nsw i64 %36, 1
  %add.ptr46 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr44, i64 %sub45
  store %struct.sv** %add.ptr46, %struct.sv*** @PL_stack_sp, align 8
  br label %return

return:                                           ; preds = %if.end.41, %if.else
  ret void
}

declare %struct.io* @Perl_sv_2io(%struct.sv*) #1

declare i64 @Perl_PerlIO_read(%struct._PerlIO**, i8*, i64) #1

declare i32 @Perl_PerlIO_error(%struct._PerlIO**) #1

; Function Attrs: nounwind uwtable
define void @XS_Digest__MD5_digest(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %ix = alloca i32, align 4
  %context = alloca %struct.MD5_CTX*, align 8
  %digeststr = alloca [16 x i8], align 16
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
  %8 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %sv_any = getelementptr inbounds %struct.cv, %struct.cv* %8, i32 0, i32 0
  %9 = load %struct.xpvcv*, %struct.xpvcv** %sv_any, align 8
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %9, i32 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  %10 = load i32, i32* %any_i32, align 4
  store i32 %10, i32* %ix, align 4
  %11 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %11, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %sv_any7 = getelementptr inbounds %struct.cv, %struct.cv* %12, i32 0, i32 0
  %13 = load %struct.xpvcv*, %struct.xpvcv** %sv_any7, align 8
  %xcv_gv = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %13, i32 0, i32 12
  %14 = load %struct.gv*, %struct.gv** %xcv_gv, align 8
  %sv_any8 = getelementptr inbounds %struct.gv, %struct.gv* %14, i32 0, i32 0
  %15 = load %struct.xpvgv*, %struct.xpvgv** %sv_any8, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %15, i32 0, i32 8
  %16 = load i8*, i8** %xgv_name, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load i32, i32* %items, align 4
  %18 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext9 = sext i32 %17 to i64
  %idx.neg = sub i64 0, %idx.ext9
  %add.ptr10 = getelementptr inbounds %struct.sv*, %struct.sv** %18, i64 %idx.neg
  store %struct.sv** %add.ptr10, %struct.sv*** %sp, align 8
  %19 = load i32, i32* %ax, align 4
  %add11 = add nsw i32 %19, 0
  %idxprom = sext i32 %add11 to i64
  %20 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %20, i64 %idxprom
  %21 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %call = call %struct.MD5_CTX* @get_md5_ctx(%struct.sv* %21)
  store %struct.MD5_CTX* %call, %struct.MD5_CTX** %context, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %digeststr, i32 0, i32 0
  %22 = load %struct.MD5_CTX*, %struct.MD5_CTX** %context, align 8
  call void @MD5Final(i8* %arraydecay, %struct.MD5_CTX* %22)
  %23 = load %struct.MD5_CTX*, %struct.MD5_CTX** %context, align 8
  call void @MD5Init(%struct.MD5_CTX* %23)
  %arraydecay12 = getelementptr inbounds [16 x i8], [16 x i8]* %digeststr, i32 0, i32 0
  %24 = load i32, i32* %ix, align 4
  %call13 = call %struct.sv* @make_mortal_sv(i8* %arraydecay12, i32 %24)
  %25 = load i32, i32* %ax, align 4
  %add14 = add nsw i32 %25, 0
  %idxprom15 = sext i32 %add14 to i64
  %26 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx16 = getelementptr inbounds %struct.sv*, %struct.sv** %26, i64 %idxprom15
  store %struct.sv* %call13, %struct.sv** %arrayidx16, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %27 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %28 = load i32, i32* %ax, align 4
  %idx.ext17 = sext i32 %28 to i64
  %add.ptr18 = getelementptr inbounds %struct.sv*, %struct.sv** %27, i64 %idx.ext17
  %29 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %29, 1
  %add.ptr19 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr18, i64 %sub
  store %struct.sv** %add.ptr19, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MD5Final(i8* %digest, %struct.MD5_CTX* %ctx) #0 {
entry:
  %digest.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct.MD5_CTX*, align 8
  %fill = alloca i64, align 8
  %padlen = alloca i64, align 8
  %bits_low = alloca i32, align 4
  %bits_high = alloca i32, align 4
  store i8* %digest, i8** %digest.addr, align 8
  store %struct.MD5_CTX* %ctx, %struct.MD5_CTX** %ctx.addr, align 8
  %0 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %bytes_low = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %0, i32 0, i32 5
  %1 = load i32, i32* %bytes_low, align 4
  %and = and i32 %1, 63
  %conv = zext i32 %and to i64
  store i64 %conv, i64* %fill, align 8
  %2 = load i64, i64* %fill, align 8
  %cmp = icmp ult i64 %2, 56
  %cond = select i1 %cmp, i32 56, i32 120
  %conv2 = sext i32 %cond to i64
  %3 = load i64, i64* %fill, align 8
  %sub = sub i64 %conv2, %3
  store i64 %sub, i64* %padlen, align 8
  %4 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %buffer = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %4, i32 0, i32 7
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buffer, i32 0, i32 0
  %5 = load i64, i64* %fill, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %5
  %6 = load i64, i64* %padlen, align 8
  %mul = mul i64 %6, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @PADDING, i32 0, i32 0), i64 %mul, i32 1, i1 false)
  %7 = load i64, i64* %padlen, align 8
  %8 = load i64, i64* %fill, align 8
  %add = add i64 %8, %7
  store i64 %add, i64* %fill, align 8
  %9 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %bytes_low3 = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %9, i32 0, i32 5
  %10 = load i32, i32* %bytes_low3, align 4
  %shl = shl i32 %10, 3
  store i32 %shl, i32* %bits_low, align 4
  %11 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %bytes_high = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %11, i32 0, i32 6
  %12 = load i32, i32* %bytes_high, align 4
  %shl4 = shl i32 %12, 3
  %13 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %bytes_low5 = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %13, i32 0, i32 5
  %14 = load i32, i32* %bytes_low5, align 4
  %shr = lshr i32 %14, 29
  %or = or i32 %shl4, %shr
  store i32 %or, i32* %bits_high, align 4
  %15 = load i32, i32* %bits_low, align 4
  %16 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %buffer6 = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %16, i32 0, i32 7
  %arraydecay7 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer6, i32 0, i32 0
  %17 = load i64, i64* %fill, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %arraydecay7, i64 %17
  call void @u2s(i32 %15, i8* %add.ptr8)
  %18 = load i64, i64* %fill, align 8
  %add9 = add i64 %18, 4
  store i64 %add9, i64* %fill, align 8
  %19 = load i32, i32* %bits_high, align 4
  %20 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %buffer10 = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %20, i32 0, i32 7
  %arraydecay11 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer10, i32 0, i32 0
  %21 = load i64, i64* %fill, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %arraydecay11, i64 %21
  call void @u2s(i32 %19, i8* %add.ptr12)
  %22 = load i64, i64* %fill, align 8
  %add13 = add i64 %22, 4
  store i64 %add13, i64* %fill, align 8
  %23 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %24 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %buffer14 = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %24, i32 0, i32 7
  %arraydecay15 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer14, i32 0, i32 0
  %25 = load i64, i64* %fill, align 8
  %shr16 = lshr i64 %25, 6
  call void @MD5Transform(%struct.MD5_CTX* %23, i8* %arraydecay15, i64 %shr16)
  %26 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %26, i32 0, i32 1
  %27 = load i32, i32* %A, align 4
  %28 = load i8*, i8** %digest.addr, align 8
  call void @u2s(i32 %27, i8* %28)
  %29 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %29, i32 0, i32 2
  %30 = load i32, i32* %B, align 4
  %31 = load i8*, i8** %digest.addr, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %31, i64 4
  call void @u2s(i32 %30, i8* %add.ptr17)
  %32 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %C = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %32, i32 0, i32 3
  %33 = load i32, i32* %C, align 4
  %34 = load i8*, i8** %digest.addr, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %34, i64 8
  call void @u2s(i32 %33, i8* %add.ptr18)
  %35 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %35, i32 0, i32 4
  %36 = load i32, i32* %D, align 4
  %37 = load i8*, i8** %digest.addr, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %37, i64 12
  call void @u2s(i32 %36, i8* %add.ptr19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.sv* @make_mortal_sv(i8* %src, i32 %type) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %len = alloca i64, align 8
  %result = alloca [33 x i8], align 16
  %ret = alloca i8*, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %src.addr, align 8
  store i8* %1, i8** %ret, align 8
  store i64 16, i64* %len, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %2 = load i8*, i8** %src.addr, align 8
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %result, i32 0, i32 0
  %call = call i8* @hex_16(i8* %2, i8* %arraydecay)
  store i8* %call, i8** %ret, align 8
  store i64 32, i64* %len, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %3 = load i8*, i8** %src.addr, align 8
  %arraydecay3 = getelementptr inbounds [33 x i8], [33 x i8]* %result, i32 0, i32 0
  %call4 = call i8* @base64_16(i8* %3, i8* %arraydecay3)
  store i8* %call4, i8** %ret, align 8
  store i64 22, i64* %len, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %type.addr, align 4
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0), i32 %4)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  %5 = load i8*, i8** %ret, align 8
  %6 = load i64, i64* %len, align 8
  %call5 = call %struct.sv* @Perl_newSVpv(i8* %5, i64 %6)
  %call6 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call5)
  ret %struct.sv* %call6
}

; Function Attrs: nounwind uwtable
define void @XS_Digest__MD5_md5(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %ix = alloca i32, align 4
  %ctx = alloca %struct.MD5_CTX, align 4
  %i = alloca i32, align 4
  %data = alloca i8*, align 8
  %len = alloca i64, align 8
  %digeststr = alloca [16 x i8], align 16
  %msg = alloca i8*, align 8
  %sv = alloca %struct.sv*, align 8
  %f = alloca i8*, align 8
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
  call void @MD5Init(%struct.MD5_CTX* %ctx)
  %13 = load i8, i8* @PL_dowarn, align 1
  %conv8 = zext i8 %13 to i32
  %and = and i32 %conv8, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.71

if.then:                                          ; preds = %entry
  store i8* null, i8** %msg, align 8
  %14 = load i32, i32* %items, align 4
  %cmp = icmp eq i32 %14, 1
  br i1 %cmp, label %if.then.10, label %if.else.27

if.then.10:                                       ; preds = %if.then
  %15 = load i32, i32* %ax, align 4
  %add11 = add nsw i32 %15, 0
  %idxprom = sext i32 %add11 to i64
  %16 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %16, i64 %idxprom
  %17 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 2
  %18 = load i32, i32* %sv_flags, align 4
  %and12 = and i32 %18, 524288
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.26

if.then.14:                                       ; preds = %if.then.10
  %19 = load i32, i32* %ax, align 4
  %add15 = add nsw i32 %19, 0
  %idxprom16 = sext i32 %add15 to i64
  %20 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx17 = getelementptr inbounds %struct.sv*, %struct.sv** %20, i64 %idxprom16
  %21 = load %struct.sv*, %struct.sv** %arrayidx17, align 8
  %sv_any18 = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 0
  %22 = load i8*, i8** %sv_any18, align 8
  %23 = bitcast i8* %22 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %23, i32 0, i32 0
  %24 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  store %struct.sv* %24, %struct.sv** %sv, align 8
  %25 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags19 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 2
  %26 = load i32, i32* %sv_flags19, align 4
  %and20 = and i32 %26, 4096
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.14
  %27 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any22 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 0
  %28 = load i8*, i8** %sv_any22, align 8
  %29 = bitcast i8* %28 to %struct.xpvmg*
  %xmg_stash = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %29, i32 0, i32 6
  %30 = load %struct.hv*, %struct.hv** %xmg_stash, align 8
  %sv_any23 = getelementptr inbounds %struct.hv, %struct.hv* %30, i32 0, i32 0
  %31 = load %struct.xpvhv*, %struct.xpvhv** %sv_any23, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %31, i32 0, i32 10
  %32 = load i8*, i8** %xhv_name, align 8
  %call = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  %tobool24 = icmp ne i32 %call, 0
  br i1 %tobool24, label %if.else, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i8** %msg, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then.14
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), i8** %msg, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.25
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then.10
  br label %if.end.58

if.else.27:                                       ; preds = %if.then
  %33 = load i32, i32* %items, align 4
  %cmp28 = icmp sgt i32 %33, 1
  br i1 %cmp28, label %if.then.30, label %if.end.57

if.then.30:                                       ; preds = %if.else.27
  %34 = load i32, i32* %ax, align 4
  %add31 = add nsw i32 %34, 0
  %idxprom32 = sext i32 %add31 to i64
  %35 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx33 = getelementptr inbounds %struct.sv*, %struct.sv** %35, i64 %idxprom32
  %36 = load %struct.sv*, %struct.sv** %arrayidx33, align 8
  %sv_flags34 = getelementptr inbounds %struct.sv, %struct.sv* %36, i32 0, i32 2
  %37 = load i32, i32* %sv_flags34, align 4
  %and35 = and i32 %37, 537133056
  %cmp36 = icmp eq i32 %and35, 262144
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.30
  %38 = load i32, i32* %ax, align 4
  %add38 = add nsw i32 %38, 0
  %idxprom39 = sext i32 %add38 to i64
  %39 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx40 = getelementptr inbounds %struct.sv*, %struct.sv** %39, i64 %idxprom39
  %40 = load %struct.sv*, %struct.sv** %arrayidx40, align 8
  %sv_any41 = getelementptr inbounds %struct.sv, %struct.sv* %40, i32 0, i32 0
  %41 = load i8*, i8** %sv_any41, align 8
  %42 = bitcast i8* %41 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %42, i32 0, i32 1
  %43 = load i64, i64* %xpv_cur, align 8
  store i64 %43, i64* %len, align 8
  %44 = load i32, i32* %ax, align 4
  %add42 = add nsw i32 %44, 0
  %idxprom43 = sext i32 %add42 to i64
  %45 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx44 = getelementptr inbounds %struct.sv*, %struct.sv** %45, i64 %idxprom43
  %46 = load %struct.sv*, %struct.sv** %arrayidx44, align 8
  %sv_any45 = getelementptr inbounds %struct.sv, %struct.sv* %46, i32 0, i32 0
  %47 = load i8*, i8** %sv_any45, align 8
  %48 = bitcast i8* %47 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %48, i32 0, i32 0
  %49 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.30
  %50 = load i32, i32* %ax, align 4
  %add46 = add nsw i32 %50, 0
  %idxprom47 = sext i32 %add46 to i64
  %51 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx48 = getelementptr inbounds %struct.sv*, %struct.sv** %51, i64 %idxprom47
  %52 = load %struct.sv*, %struct.sv** %arrayidx48, align 8
  %call49 = call i8* @Perl_sv_2pvbyte(%struct.sv* %52, i64* %len)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %49, %cond.true ], [ %call49, %cond.false ]
  store i8* %cond, i8** %data, align 8
  %53 = load i64, i64* %len, align 8
  %cmp50 = icmp eq i64 %53, 11
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.56

land.lhs.true.52:                                 ; preds = %cond.end
  %54 = load i8*, i8** %data, align 8
  %call53 = call i32 @memcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* %54, i64 11)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true.52
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0), i8** %msg, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %land.lhs.true.52, %cond.end
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.else.27
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.26
  %55 = load i8*, i8** %msg, align 8
  %tobool59 = icmp ne i8* %55, null
  br i1 %tobool59, label %if.then.60, label %if.end.70

if.then.60:                                       ; preds = %if.end.58
  %56 = load i32, i32* %ix, align 4
  %cmp61 = icmp eq i32 %56, 0
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %if.then.60
  br label %cond.end.68

cond.false.64:                                    ; preds = %if.then.60
  %57 = load i32, i32* %ix, align 4
  %cmp65 = icmp eq i32 %57, 1
  %cond67 = select i1 %cmp65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0)
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.64, %cond.true.63
  %cond69 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), %cond.true.63 ], [ %cond67, %cond.false.64 ]
  store i8* %cond69, i8** %f, align 8
  %58 = load i8*, i8** %f, align 8
  %59 = load i8*, i8** %msg, align 8
  call void (i8*, ...) @Perl_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0), i8* %58, i8* %59)
  br label %if.end.70

if.end.70:                                        ; preds = %cond.end.68, %if.end.58
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.71
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %items, align 4
  %cmp72 = icmp slt i32 %60, %61
  br i1 %cmp72, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %62 = load i32, i32* %ax, align 4
  %63 = load i32, i32* %i, align 4
  %add74 = add nsw i32 %62, %63
  %idxprom75 = sext i32 %add74 to i64
  %64 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx76 = getelementptr inbounds %struct.sv*, %struct.sv** %64, i64 %idxprom75
  %65 = load %struct.sv*, %struct.sv** %arrayidx76, align 8
  %sv_flags77 = getelementptr inbounds %struct.sv, %struct.sv* %65, i32 0, i32 2
  %66 = load i32, i32* %sv_flags77, align 4
  %and78 = and i32 %66, 537133056
  %cmp79 = icmp eq i32 %and78, 262144
  br i1 %cmp79, label %cond.true.81, label %cond.false.92

cond.true.81:                                     ; preds = %for.body
  %67 = load i32, i32* %ax, align 4
  %68 = load i32, i32* %i, align 4
  %add82 = add nsw i32 %67, %68
  %idxprom83 = sext i32 %add82 to i64
  %69 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx84 = getelementptr inbounds %struct.sv*, %struct.sv** %69, i64 %idxprom83
  %70 = load %struct.sv*, %struct.sv** %arrayidx84, align 8
  %sv_any85 = getelementptr inbounds %struct.sv, %struct.sv* %70, i32 0, i32 0
  %71 = load i8*, i8** %sv_any85, align 8
  %72 = bitcast i8* %71 to %struct.xpv*
  %xpv_cur86 = getelementptr inbounds %struct.xpv, %struct.xpv* %72, i32 0, i32 1
  %73 = load i64, i64* %xpv_cur86, align 8
  store i64 %73, i64* %len, align 8
  %74 = load i32, i32* %ax, align 4
  %75 = load i32, i32* %i, align 4
  %add87 = add nsw i32 %74, %75
  %idxprom88 = sext i32 %add87 to i64
  %76 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx89 = getelementptr inbounds %struct.sv*, %struct.sv** %76, i64 %idxprom88
  %77 = load %struct.sv*, %struct.sv** %arrayidx89, align 8
  %sv_any90 = getelementptr inbounds %struct.sv, %struct.sv* %77, i32 0, i32 0
  %78 = load i8*, i8** %sv_any90, align 8
  %79 = bitcast i8* %78 to %struct.xpv*
  %xpv_pv91 = getelementptr inbounds %struct.xpv, %struct.xpv* %79, i32 0, i32 0
  %80 = load i8*, i8** %xpv_pv91, align 8
  br label %cond.end.97

cond.false.92:                                    ; preds = %for.body
  %81 = load i32, i32* %ax, align 4
  %82 = load i32, i32* %i, align 4
  %add93 = add nsw i32 %81, %82
  %idxprom94 = sext i32 %add93 to i64
  %83 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx95 = getelementptr inbounds %struct.sv*, %struct.sv** %83, i64 %idxprom94
  %84 = load %struct.sv*, %struct.sv** %arrayidx95, align 8
  %call96 = call i8* @Perl_sv_2pvbyte(%struct.sv* %84, i64* %len)
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.92, %cond.true.81
  %cond98 = phi i8* [ %80, %cond.true.81 ], [ %call96, %cond.false.92 ]
  store i8* %cond98, i8** %data, align 8
  %85 = load i8*, i8** %data, align 8
  %86 = load i64, i64* %len, align 8
  call void @MD5Update(%struct.MD5_CTX* %ctx, i8* %85, i64 %86)
  br label %for.inc

for.inc:                                          ; preds = %cond.end.97
  %87 = load i32, i32* %i, align 4
  %inc = add nsw i32 %87, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %digeststr, i32 0, i32 0
  call void @MD5Final(i8* %arraydecay, %struct.MD5_CTX* %ctx)
  %arraydecay99 = getelementptr inbounds [16 x i8], [16 x i8]* %digeststr, i32 0, i32 0
  %88 = load i32, i32* %ix, align 4
  %call100 = call %struct.sv* @make_mortal_sv(i8* %arraydecay99, i32 %88)
  %89 = load i32, i32* %ax, align 4
  %add101 = add nsw i32 %89, 0
  %idxprom102 = sext i32 %add101 to i64
  %90 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx103 = getelementptr inbounds %struct.sv*, %struct.sv** %90, i64 %idxprom102
  store %struct.sv* %call100, %struct.sv** %arrayidx103, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %91 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %92 = load i32, i32* %ax, align 4
  %idx.ext104 = sext i32 %92 to i64
  %add.ptr105 = getelementptr inbounds %struct.sv*, %struct.sv** %91, i64 %idx.ext104
  %93 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %93, 1
  %add.ptr106 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr105, i64 %sub
  store %struct.sv** %add.ptr106, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare i32 @strcmp(i8*, i8*) #1

declare i32 @memcmp(i8*, i8*, i64) #1

declare void @Perl_warn(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @boot_Digest__MD5(%struct.cv* %cv) #0 {
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
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8** %file, align 8
  %8 = load i8*, i8** %file, align 8
  %call = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), void (%struct.cv*)* @XS_Digest__MD5_new, i8* %8)
  %9 = load i8*, i8** %file, align 8
  %call7 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), void (%struct.cv*)* @XS_Digest__MD5_clone, i8* %9)
  %10 = load i8*, i8** %file, align 8
  %call8 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0), void (%struct.cv*)* @XS_Digest__MD5_DESTROY, i8* %10)
  %11 = load i8*, i8** %file, align 8
  %call9 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), void (%struct.cv*)* @XS_Digest__MD5_add, i8* %11)
  %12 = load i8*, i8** %file, align 8
  %call10 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), void (%struct.cv*)* @XS_Digest__MD5_addfile, i8* %12)
  %13 = load i8*, i8** %file, align 8
  %call11 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0), void (%struct.cv*)* @XS_Digest__MD5_digest, i8* %13)
  store %struct.cv* %call11, %struct.cv** %cv6, align 8
  %14 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any = getelementptr inbounds %struct.cv, %struct.cv* %14, i32 0, i32 0
  %15 = load %struct.xpvcv*, %struct.xpvcv** %sv_any, align 8
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %15, i32 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  store i32 1, i32* %any_i32, align 4
  %16 = load i8*, i8** %file, align 8
  %call12 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), void (%struct.cv*)* @XS_Digest__MD5_digest, i8* %16)
  store %struct.cv* %call12, %struct.cv** %cv6, align 8
  %17 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any13 = getelementptr inbounds %struct.cv, %struct.cv* %17, i32 0, i32 0
  %18 = load %struct.xpvcv*, %struct.xpvcv** %sv_any13, align 8
  %xcv_xsubany14 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %18, i32 0, i32 11
  %any_i3215 = bitcast %union.any* %xcv_xsubany14 to i32*
  store i32 0, i32* %any_i3215, align 4
  %19 = load i8*, i8** %file, align 8
  %call16 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0), void (%struct.cv*)* @XS_Digest__MD5_digest, i8* %19)
  store %struct.cv* %call16, %struct.cv** %cv6, align 8
  %20 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any17 = getelementptr inbounds %struct.cv, %struct.cv* %20, i32 0, i32 0
  %21 = load %struct.xpvcv*, %struct.xpvcv** %sv_any17, align 8
  %xcv_xsubany18 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %21, i32 0, i32 11
  %any_i3219 = bitcast %union.any* %xcv_xsubany18 to i32*
  store i32 2, i32* %any_i3219, align 4
  %22 = load i8*, i8** %file, align 8
  %call20 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), void (%struct.cv*)* @XS_Digest__MD5_md5, i8* %22)
  store %struct.cv* %call20, %struct.cv** %cv6, align 8
  %23 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any21 = getelementptr inbounds %struct.cv, %struct.cv* %23, i32 0, i32 0
  %24 = load %struct.xpvcv*, %struct.xpvcv** %sv_any21, align 8
  %xcv_xsubany22 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %24, i32 0, i32 11
  %any_i3223 = bitcast %union.any* %xcv_xsubany22 to i32*
  store i32 0, i32* %any_i3223, align 4
  %25 = load i8*, i8** %file, align 8
  %call24 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0), void (%struct.cv*)* @XS_Digest__MD5_md5, i8* %25)
  store %struct.cv* %call24, %struct.cv** %cv6, align 8
  %26 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any25 = getelementptr inbounds %struct.cv, %struct.cv* %26, i32 0, i32 0
  %27 = load %struct.xpvcv*, %struct.xpvcv** %sv_any25, align 8
  %xcv_xsubany26 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %27, i32 0, i32 11
  %any_i3227 = bitcast %union.any* %xcv_xsubany26 to i32*
  store i32 2, i32* %any_i3227, align 4
  %28 = load i8*, i8** %file, align 8
  %call28 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), void (%struct.cv*)* @XS_Digest__MD5_md5, i8* %28)
  store %struct.cv* %call28, %struct.cv** %cv6, align 8
  %29 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any29 = getelementptr inbounds %struct.cv, %struct.cv* %29, i32 0, i32 0
  %30 = load %struct.xpvcv*, %struct.xpvcv** %sv_any29, align 8
  %xcv_xsubany30 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %30, i32 0, i32 11
  %any_i3231 = bitcast %union.any* %xcv_xsubany30 to i32*
  store i32 1, i32* %any_i3231, align 4
  %31 = load i32, i32* %ax, align 4
  %add32 = add nsw i32 %31, 0
  %idxprom = sext i32 %add32 to i64
  %32 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %32, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %33 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %34 = load i32, i32* %ax, align 4
  %idx.ext33 = sext i32 %34 to i64
  %add.ptr34 = getelementptr inbounds %struct.sv*, %struct.sv** %33, i64 %idx.ext33
  %35 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %35, 1
  %add.ptr35 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr34, i64 %sub
  store %struct.sv** %add.ptr35, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define internal void @MD5Transform(%struct.MD5_CTX* %ctx, i8* %buf, i64 %blocks) #0 {
entry:
  %ctx.addr = alloca %struct.MD5_CTX*, align 8
  %buf.addr = alloca i8*, align 8
  %blocks.addr = alloca i64, align 8
  %A = alloca i32, align 4
  %B = alloca i32, align 4
  %C = alloca i32, align 4
  %D = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %X = alloca [16 x i32], align 16
  %uptr = alloca i32*, align 8
  %tmp = alloca i32, align 4
  store %struct.MD5_CTX* %ctx, %struct.MD5_CTX** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %blocks, i64* %blocks.addr, align 8
  %0 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %A1 = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %0, i32 0, i32 1
  %1 = load i32, i32* %A1, align 4
  store i32 %1, i32* %A, align 4
  %2 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %B2 = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %2, i32 0, i32 2
  %3 = load i32, i32* %B2, align 4
  store i32 %3, i32* %B, align 4
  %4 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %C3 = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %4, i32 0, i32 3
  %5 = load i32, i32* %C3, align 4
  store i32 %5, i32* %C, align 4
  %6 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %D4 = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %6, i32 0, i32 4
  %7 = load i32, i32* %D4, align 4
  store i32 %7, i32* %D, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %8 = load i32, i32* %A, align 4
  store i32 %8, i32* %a, align 4
  %9 = load i32, i32* %B, align 4
  store i32 %9, i32* %b, align 4
  %10 = load i32, i32* %C, align 4
  store i32 %10, i32* %c, align 4
  %11 = load i32, i32* %D, align 4
  store i32 %11, i32* %d, align 4
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i32 0
  store i32* %arraydecay, i32** %uptr, align 8
  %12 = load i32, i32* %b, align 4
  %13 = load i32, i32* %c, align 4
  %14 = load i32, i32* %d, align 4
  %xor = xor i32 %13, %14
  %and = and i32 %12, %xor
  %15 = load i32, i32* %d, align 4
  %xor5 = xor i32 %and, %15
  %16 = load i8*, i8** %buf.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv = zext i8 %17 to i32
  %18 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %add.ptr, align 1
  %conv6 = zext i8 %19 to i32
  %shl = shl i32 %conv6, 8
  %or = or i32 %conv, %shl
  %20 = load i8*, i8** %buf.addr, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %20, i64 2
  %21 = load i8, i8* %add.ptr7, align 1
  %conv8 = zext i8 %21 to i32
  %shl9 = shl i32 %conv8, 16
  %or10 = or i32 %or, %shl9
  %22 = load i8*, i8** %buf.addr, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %22, i64 3
  %23 = load i8, i8* %add.ptr11, align 1
  %conv12 = zext i8 %23 to i32
  %shl13 = shl i32 %conv12, 24
  %or14 = or i32 %or10, %shl13
  store i32 %or14, i32* %tmp, align 4
  %24 = load i8*, i8** %buf.addr, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %24, i64 4
  store i8* %add.ptr15, i8** %buf.addr, align 8
  %25 = load i32, i32* %tmp, align 4
  %26 = load i32*, i32** %uptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %incdec.ptr, i32** %uptr, align 8
  store i32 %25, i32* %26, align 4
  %add = add i32 %xor5, %25
  %add16 = add i32 %add, -680876936
  %27 = load i32, i32* %a, align 4
  %add17 = add i32 %27, %add16
  store i32 %add17, i32* %a, align 4
  %28 = load i32, i32* %a, align 4
  store i32 %28, i32* %a, align 4
  %29 = load i32, i32* %a, align 4
  %shl18 = shl i32 %29, 7
  %30 = load i32, i32* %a, align 4
  %shr = lshr i32 %30, 25
  %or19 = or i32 %shl18, %shr
  store i32 %or19, i32* %a, align 4
  %31 = load i32, i32* %b, align 4
  %32 = load i32, i32* %a, align 4
  %add20 = add i32 %32, %31
  store i32 %add20, i32* %a, align 4
  %33 = load i32, i32* %a, align 4
  store i32 %33, i32* %a, align 4
  %34 = load i32, i32* %a, align 4
  %35 = load i32, i32* %b, align 4
  %36 = load i32, i32* %c, align 4
  %xor21 = xor i32 %35, %36
  %and22 = and i32 %34, %xor21
  %37 = load i32, i32* %c, align 4
  %xor23 = xor i32 %and22, %37
  %38 = load i8*, i8** %buf.addr, align 8
  %39 = load i8, i8* %38, align 1
  %conv24 = zext i8 %39 to i32
  %40 = load i8*, i8** %buf.addr, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %add.ptr25, align 1
  %conv26 = zext i8 %41 to i32
  %shl27 = shl i32 %conv26, 8
  %or28 = or i32 %conv24, %shl27
  %42 = load i8*, i8** %buf.addr, align 8
  %add.ptr29 = getelementptr inbounds i8, i8* %42, i64 2
  %43 = load i8, i8* %add.ptr29, align 1
  %conv30 = zext i8 %43 to i32
  %shl31 = shl i32 %conv30, 16
  %or32 = or i32 %or28, %shl31
  %44 = load i8*, i8** %buf.addr, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %44, i64 3
  %45 = load i8, i8* %add.ptr33, align 1
  %conv34 = zext i8 %45 to i32
  %shl35 = shl i32 %conv34, 24
  %or36 = or i32 %or32, %shl35
  store i32 %or36, i32* %tmp, align 4
  %46 = load i8*, i8** %buf.addr, align 8
  %add.ptr37 = getelementptr inbounds i8, i8* %46, i64 4
  store i8* %add.ptr37, i8** %buf.addr, align 8
  %47 = load i32, i32* %tmp, align 4
  %48 = load i32*, i32** %uptr, align 8
  %incdec.ptr38 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %incdec.ptr38, i32** %uptr, align 8
  store i32 %47, i32* %48, align 4
  %add39 = add i32 %xor23, %47
  %add40 = add i32 %add39, -389564586
  %49 = load i32, i32* %d, align 4
  %add41 = add i32 %49, %add40
  store i32 %add41, i32* %d, align 4
  %50 = load i32, i32* %d, align 4
  store i32 %50, i32* %d, align 4
  %51 = load i32, i32* %d, align 4
  %shl42 = shl i32 %51, 12
  %52 = load i32, i32* %d, align 4
  %shr43 = lshr i32 %52, 20
  %or44 = or i32 %shl42, %shr43
  store i32 %or44, i32* %d, align 4
  %53 = load i32, i32* %a, align 4
  %54 = load i32, i32* %d, align 4
  %add45 = add i32 %54, %53
  store i32 %add45, i32* %d, align 4
  %55 = load i32, i32* %d, align 4
  store i32 %55, i32* %d, align 4
  %56 = load i32, i32* %d, align 4
  %57 = load i32, i32* %a, align 4
  %58 = load i32, i32* %b, align 4
  %xor46 = xor i32 %57, %58
  %and47 = and i32 %56, %xor46
  %59 = load i32, i32* %b, align 4
  %xor48 = xor i32 %and47, %59
  %60 = load i8*, i8** %buf.addr, align 8
  %61 = load i8, i8* %60, align 1
  %conv49 = zext i8 %61 to i32
  %62 = load i8*, i8** %buf.addr, align 8
  %add.ptr50 = getelementptr inbounds i8, i8* %62, i64 1
  %63 = load i8, i8* %add.ptr50, align 1
  %conv51 = zext i8 %63 to i32
  %shl52 = shl i32 %conv51, 8
  %or53 = or i32 %conv49, %shl52
  %64 = load i8*, i8** %buf.addr, align 8
  %add.ptr54 = getelementptr inbounds i8, i8* %64, i64 2
  %65 = load i8, i8* %add.ptr54, align 1
  %conv55 = zext i8 %65 to i32
  %shl56 = shl i32 %conv55, 16
  %or57 = or i32 %or53, %shl56
  %66 = load i8*, i8** %buf.addr, align 8
  %add.ptr58 = getelementptr inbounds i8, i8* %66, i64 3
  %67 = load i8, i8* %add.ptr58, align 1
  %conv59 = zext i8 %67 to i32
  %shl60 = shl i32 %conv59, 24
  %or61 = or i32 %or57, %shl60
  store i32 %or61, i32* %tmp, align 4
  %68 = load i8*, i8** %buf.addr, align 8
  %add.ptr62 = getelementptr inbounds i8, i8* %68, i64 4
  store i8* %add.ptr62, i8** %buf.addr, align 8
  %69 = load i32, i32* %tmp, align 4
  %70 = load i32*, i32** %uptr, align 8
  %incdec.ptr63 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %incdec.ptr63, i32** %uptr, align 8
  store i32 %69, i32* %70, align 4
  %add64 = add i32 %xor48, %69
  %add65 = add i32 %add64, 606105819
  %71 = load i32, i32* %c, align 4
  %add66 = add i32 %71, %add65
  store i32 %add66, i32* %c, align 4
  %72 = load i32, i32* %c, align 4
  store i32 %72, i32* %c, align 4
  %73 = load i32, i32* %c, align 4
  %shl67 = shl i32 %73, 17
  %74 = load i32, i32* %c, align 4
  %shr68 = lshr i32 %74, 15
  %or69 = or i32 %shl67, %shr68
  store i32 %or69, i32* %c, align 4
  %75 = load i32, i32* %d, align 4
  %76 = load i32, i32* %c, align 4
  %add70 = add i32 %76, %75
  store i32 %add70, i32* %c, align 4
  %77 = load i32, i32* %c, align 4
  store i32 %77, i32* %c, align 4
  %78 = load i32, i32* %c, align 4
  %79 = load i32, i32* %d, align 4
  %80 = load i32, i32* %a, align 4
  %xor71 = xor i32 %79, %80
  %and72 = and i32 %78, %xor71
  %81 = load i32, i32* %a, align 4
  %xor73 = xor i32 %and72, %81
  %82 = load i8*, i8** %buf.addr, align 8
  %83 = load i8, i8* %82, align 1
  %conv74 = zext i8 %83 to i32
  %84 = load i8*, i8** %buf.addr, align 8
  %add.ptr75 = getelementptr inbounds i8, i8* %84, i64 1
  %85 = load i8, i8* %add.ptr75, align 1
  %conv76 = zext i8 %85 to i32
  %shl77 = shl i32 %conv76, 8
  %or78 = or i32 %conv74, %shl77
  %86 = load i8*, i8** %buf.addr, align 8
  %add.ptr79 = getelementptr inbounds i8, i8* %86, i64 2
  %87 = load i8, i8* %add.ptr79, align 1
  %conv80 = zext i8 %87 to i32
  %shl81 = shl i32 %conv80, 16
  %or82 = or i32 %or78, %shl81
  %88 = load i8*, i8** %buf.addr, align 8
  %add.ptr83 = getelementptr inbounds i8, i8* %88, i64 3
  %89 = load i8, i8* %add.ptr83, align 1
  %conv84 = zext i8 %89 to i32
  %shl85 = shl i32 %conv84, 24
  %or86 = or i32 %or82, %shl85
  store i32 %or86, i32* %tmp, align 4
  %90 = load i8*, i8** %buf.addr, align 8
  %add.ptr87 = getelementptr inbounds i8, i8* %90, i64 4
  store i8* %add.ptr87, i8** %buf.addr, align 8
  %91 = load i32, i32* %tmp, align 4
  %92 = load i32*, i32** %uptr, align 8
  %incdec.ptr88 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %incdec.ptr88, i32** %uptr, align 8
  store i32 %91, i32* %92, align 4
  %add89 = add i32 %xor73, %91
  %add90 = add i32 %add89, -1044525330
  %93 = load i32, i32* %b, align 4
  %add91 = add i32 %93, %add90
  store i32 %add91, i32* %b, align 4
  %94 = load i32, i32* %b, align 4
  store i32 %94, i32* %b, align 4
  %95 = load i32, i32* %b, align 4
  %shl92 = shl i32 %95, 22
  %96 = load i32, i32* %b, align 4
  %shr93 = lshr i32 %96, 10
  %or94 = or i32 %shl92, %shr93
  store i32 %or94, i32* %b, align 4
  %97 = load i32, i32* %c, align 4
  %98 = load i32, i32* %b, align 4
  %add95 = add i32 %98, %97
  store i32 %add95, i32* %b, align 4
  %99 = load i32, i32* %b, align 4
  store i32 %99, i32* %b, align 4
  %100 = load i32, i32* %b, align 4
  %101 = load i32, i32* %c, align 4
  %102 = load i32, i32* %d, align 4
  %xor96 = xor i32 %101, %102
  %and97 = and i32 %100, %xor96
  %103 = load i32, i32* %d, align 4
  %xor98 = xor i32 %and97, %103
  %104 = load i8*, i8** %buf.addr, align 8
  %105 = load i8, i8* %104, align 1
  %conv99 = zext i8 %105 to i32
  %106 = load i8*, i8** %buf.addr, align 8
  %add.ptr100 = getelementptr inbounds i8, i8* %106, i64 1
  %107 = load i8, i8* %add.ptr100, align 1
  %conv101 = zext i8 %107 to i32
  %shl102 = shl i32 %conv101, 8
  %or103 = or i32 %conv99, %shl102
  %108 = load i8*, i8** %buf.addr, align 8
  %add.ptr104 = getelementptr inbounds i8, i8* %108, i64 2
  %109 = load i8, i8* %add.ptr104, align 1
  %conv105 = zext i8 %109 to i32
  %shl106 = shl i32 %conv105, 16
  %or107 = or i32 %or103, %shl106
  %110 = load i8*, i8** %buf.addr, align 8
  %add.ptr108 = getelementptr inbounds i8, i8* %110, i64 3
  %111 = load i8, i8* %add.ptr108, align 1
  %conv109 = zext i8 %111 to i32
  %shl110 = shl i32 %conv109, 24
  %or111 = or i32 %or107, %shl110
  store i32 %or111, i32* %tmp, align 4
  %112 = load i8*, i8** %buf.addr, align 8
  %add.ptr112 = getelementptr inbounds i8, i8* %112, i64 4
  store i8* %add.ptr112, i8** %buf.addr, align 8
  %113 = load i32, i32* %tmp, align 4
  %114 = load i32*, i32** %uptr, align 8
  %incdec.ptr113 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %incdec.ptr113, i32** %uptr, align 8
  store i32 %113, i32* %114, align 4
  %add114 = add i32 %xor98, %113
  %add115 = add i32 %add114, -176418897
  %115 = load i32, i32* %a, align 4
  %add116 = add i32 %115, %add115
  store i32 %add116, i32* %a, align 4
  %116 = load i32, i32* %a, align 4
  store i32 %116, i32* %a, align 4
  %117 = load i32, i32* %a, align 4
  %shl117 = shl i32 %117, 7
  %118 = load i32, i32* %a, align 4
  %shr118 = lshr i32 %118, 25
  %or119 = or i32 %shl117, %shr118
  store i32 %or119, i32* %a, align 4
  %119 = load i32, i32* %b, align 4
  %120 = load i32, i32* %a, align 4
  %add120 = add i32 %120, %119
  store i32 %add120, i32* %a, align 4
  %121 = load i32, i32* %a, align 4
  store i32 %121, i32* %a, align 4
  %122 = load i32, i32* %a, align 4
  %123 = load i32, i32* %b, align 4
  %124 = load i32, i32* %c, align 4
  %xor121 = xor i32 %123, %124
  %and122 = and i32 %122, %xor121
  %125 = load i32, i32* %c, align 4
  %xor123 = xor i32 %and122, %125
  %126 = load i8*, i8** %buf.addr, align 8
  %127 = load i8, i8* %126, align 1
  %conv124 = zext i8 %127 to i32
  %128 = load i8*, i8** %buf.addr, align 8
  %add.ptr125 = getelementptr inbounds i8, i8* %128, i64 1
  %129 = load i8, i8* %add.ptr125, align 1
  %conv126 = zext i8 %129 to i32
  %shl127 = shl i32 %conv126, 8
  %or128 = or i32 %conv124, %shl127
  %130 = load i8*, i8** %buf.addr, align 8
  %add.ptr129 = getelementptr inbounds i8, i8* %130, i64 2
  %131 = load i8, i8* %add.ptr129, align 1
  %conv130 = zext i8 %131 to i32
  %shl131 = shl i32 %conv130, 16
  %or132 = or i32 %or128, %shl131
  %132 = load i8*, i8** %buf.addr, align 8
  %add.ptr133 = getelementptr inbounds i8, i8* %132, i64 3
  %133 = load i8, i8* %add.ptr133, align 1
  %conv134 = zext i8 %133 to i32
  %shl135 = shl i32 %conv134, 24
  %or136 = or i32 %or132, %shl135
  store i32 %or136, i32* %tmp, align 4
  %134 = load i8*, i8** %buf.addr, align 8
  %add.ptr137 = getelementptr inbounds i8, i8* %134, i64 4
  store i8* %add.ptr137, i8** %buf.addr, align 8
  %135 = load i32, i32* %tmp, align 4
  %136 = load i32*, i32** %uptr, align 8
  %incdec.ptr138 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %incdec.ptr138, i32** %uptr, align 8
  store i32 %135, i32* %136, align 4
  %add139 = add i32 %xor123, %135
  %add140 = add i32 %add139, 1200080426
  %137 = load i32, i32* %d, align 4
  %add141 = add i32 %137, %add140
  store i32 %add141, i32* %d, align 4
  %138 = load i32, i32* %d, align 4
  store i32 %138, i32* %d, align 4
  %139 = load i32, i32* %d, align 4
  %shl142 = shl i32 %139, 12
  %140 = load i32, i32* %d, align 4
  %shr143 = lshr i32 %140, 20
  %or144 = or i32 %shl142, %shr143
  store i32 %or144, i32* %d, align 4
  %141 = load i32, i32* %a, align 4
  %142 = load i32, i32* %d, align 4
  %add145 = add i32 %142, %141
  store i32 %add145, i32* %d, align 4
  %143 = load i32, i32* %d, align 4
  store i32 %143, i32* %d, align 4
  %144 = load i32, i32* %d, align 4
  %145 = load i32, i32* %a, align 4
  %146 = load i32, i32* %b, align 4
  %xor146 = xor i32 %145, %146
  %and147 = and i32 %144, %xor146
  %147 = load i32, i32* %b, align 4
  %xor148 = xor i32 %and147, %147
  %148 = load i8*, i8** %buf.addr, align 8
  %149 = load i8, i8* %148, align 1
  %conv149 = zext i8 %149 to i32
  %150 = load i8*, i8** %buf.addr, align 8
  %add.ptr150 = getelementptr inbounds i8, i8* %150, i64 1
  %151 = load i8, i8* %add.ptr150, align 1
  %conv151 = zext i8 %151 to i32
  %shl152 = shl i32 %conv151, 8
  %or153 = or i32 %conv149, %shl152
  %152 = load i8*, i8** %buf.addr, align 8
  %add.ptr154 = getelementptr inbounds i8, i8* %152, i64 2
  %153 = load i8, i8* %add.ptr154, align 1
  %conv155 = zext i8 %153 to i32
  %shl156 = shl i32 %conv155, 16
  %or157 = or i32 %or153, %shl156
  %154 = load i8*, i8** %buf.addr, align 8
  %add.ptr158 = getelementptr inbounds i8, i8* %154, i64 3
  %155 = load i8, i8* %add.ptr158, align 1
  %conv159 = zext i8 %155 to i32
  %shl160 = shl i32 %conv159, 24
  %or161 = or i32 %or157, %shl160
  store i32 %or161, i32* %tmp, align 4
  %156 = load i8*, i8** %buf.addr, align 8
  %add.ptr162 = getelementptr inbounds i8, i8* %156, i64 4
  store i8* %add.ptr162, i8** %buf.addr, align 8
  %157 = load i32, i32* %tmp, align 4
  %158 = load i32*, i32** %uptr, align 8
  %incdec.ptr163 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %incdec.ptr163, i32** %uptr, align 8
  store i32 %157, i32* %158, align 4
  %add164 = add i32 %xor148, %157
  %add165 = add i32 %add164, -1473231341
  %159 = load i32, i32* %c, align 4
  %add166 = add i32 %159, %add165
  store i32 %add166, i32* %c, align 4
  %160 = load i32, i32* %c, align 4
  store i32 %160, i32* %c, align 4
  %161 = load i32, i32* %c, align 4
  %shl167 = shl i32 %161, 17
  %162 = load i32, i32* %c, align 4
  %shr168 = lshr i32 %162, 15
  %or169 = or i32 %shl167, %shr168
  store i32 %or169, i32* %c, align 4
  %163 = load i32, i32* %d, align 4
  %164 = load i32, i32* %c, align 4
  %add170 = add i32 %164, %163
  store i32 %add170, i32* %c, align 4
  %165 = load i32, i32* %c, align 4
  store i32 %165, i32* %c, align 4
  %166 = load i32, i32* %c, align 4
  %167 = load i32, i32* %d, align 4
  %168 = load i32, i32* %a, align 4
  %xor171 = xor i32 %167, %168
  %and172 = and i32 %166, %xor171
  %169 = load i32, i32* %a, align 4
  %xor173 = xor i32 %and172, %169
  %170 = load i8*, i8** %buf.addr, align 8
  %171 = load i8, i8* %170, align 1
  %conv174 = zext i8 %171 to i32
  %172 = load i8*, i8** %buf.addr, align 8
  %add.ptr175 = getelementptr inbounds i8, i8* %172, i64 1
  %173 = load i8, i8* %add.ptr175, align 1
  %conv176 = zext i8 %173 to i32
  %shl177 = shl i32 %conv176, 8
  %or178 = or i32 %conv174, %shl177
  %174 = load i8*, i8** %buf.addr, align 8
  %add.ptr179 = getelementptr inbounds i8, i8* %174, i64 2
  %175 = load i8, i8* %add.ptr179, align 1
  %conv180 = zext i8 %175 to i32
  %shl181 = shl i32 %conv180, 16
  %or182 = or i32 %or178, %shl181
  %176 = load i8*, i8** %buf.addr, align 8
  %add.ptr183 = getelementptr inbounds i8, i8* %176, i64 3
  %177 = load i8, i8* %add.ptr183, align 1
  %conv184 = zext i8 %177 to i32
  %shl185 = shl i32 %conv184, 24
  %or186 = or i32 %or182, %shl185
  store i32 %or186, i32* %tmp, align 4
  %178 = load i8*, i8** %buf.addr, align 8
  %add.ptr187 = getelementptr inbounds i8, i8* %178, i64 4
  store i8* %add.ptr187, i8** %buf.addr, align 8
  %179 = load i32, i32* %tmp, align 4
  %180 = load i32*, i32** %uptr, align 8
  %incdec.ptr188 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %incdec.ptr188, i32** %uptr, align 8
  store i32 %179, i32* %180, align 4
  %add189 = add i32 %xor173, %179
  %add190 = add i32 %add189, -45705983
  %181 = load i32, i32* %b, align 4
  %add191 = add i32 %181, %add190
  store i32 %add191, i32* %b, align 4
  %182 = load i32, i32* %b, align 4
  store i32 %182, i32* %b, align 4
  %183 = load i32, i32* %b, align 4
  %shl192 = shl i32 %183, 22
  %184 = load i32, i32* %b, align 4
  %shr193 = lshr i32 %184, 10
  %or194 = or i32 %shl192, %shr193
  store i32 %or194, i32* %b, align 4
  %185 = load i32, i32* %c, align 4
  %186 = load i32, i32* %b, align 4
  %add195 = add i32 %186, %185
  store i32 %add195, i32* %b, align 4
  %187 = load i32, i32* %b, align 4
  store i32 %187, i32* %b, align 4
  %188 = load i32, i32* %b, align 4
  %189 = load i32, i32* %c, align 4
  %190 = load i32, i32* %d, align 4
  %xor196 = xor i32 %189, %190
  %and197 = and i32 %188, %xor196
  %191 = load i32, i32* %d, align 4
  %xor198 = xor i32 %and197, %191
  %192 = load i8*, i8** %buf.addr, align 8
  %193 = load i8, i8* %192, align 1
  %conv199 = zext i8 %193 to i32
  %194 = load i8*, i8** %buf.addr, align 8
  %add.ptr200 = getelementptr inbounds i8, i8* %194, i64 1
  %195 = load i8, i8* %add.ptr200, align 1
  %conv201 = zext i8 %195 to i32
  %shl202 = shl i32 %conv201, 8
  %or203 = or i32 %conv199, %shl202
  %196 = load i8*, i8** %buf.addr, align 8
  %add.ptr204 = getelementptr inbounds i8, i8* %196, i64 2
  %197 = load i8, i8* %add.ptr204, align 1
  %conv205 = zext i8 %197 to i32
  %shl206 = shl i32 %conv205, 16
  %or207 = or i32 %or203, %shl206
  %198 = load i8*, i8** %buf.addr, align 8
  %add.ptr208 = getelementptr inbounds i8, i8* %198, i64 3
  %199 = load i8, i8* %add.ptr208, align 1
  %conv209 = zext i8 %199 to i32
  %shl210 = shl i32 %conv209, 24
  %or211 = or i32 %or207, %shl210
  store i32 %or211, i32* %tmp, align 4
  %200 = load i8*, i8** %buf.addr, align 8
  %add.ptr212 = getelementptr inbounds i8, i8* %200, i64 4
  store i8* %add.ptr212, i8** %buf.addr, align 8
  %201 = load i32, i32* %tmp, align 4
  %202 = load i32*, i32** %uptr, align 8
  %incdec.ptr213 = getelementptr inbounds i32, i32* %202, i32 1
  store i32* %incdec.ptr213, i32** %uptr, align 8
  store i32 %201, i32* %202, align 4
  %add214 = add i32 %xor198, %201
  %add215 = add i32 %add214, 1770035416
  %203 = load i32, i32* %a, align 4
  %add216 = add i32 %203, %add215
  store i32 %add216, i32* %a, align 4
  %204 = load i32, i32* %a, align 4
  store i32 %204, i32* %a, align 4
  %205 = load i32, i32* %a, align 4
  %shl217 = shl i32 %205, 7
  %206 = load i32, i32* %a, align 4
  %shr218 = lshr i32 %206, 25
  %or219 = or i32 %shl217, %shr218
  store i32 %or219, i32* %a, align 4
  %207 = load i32, i32* %b, align 4
  %208 = load i32, i32* %a, align 4
  %add220 = add i32 %208, %207
  store i32 %add220, i32* %a, align 4
  %209 = load i32, i32* %a, align 4
  store i32 %209, i32* %a, align 4
  %210 = load i32, i32* %a, align 4
  %211 = load i32, i32* %b, align 4
  %212 = load i32, i32* %c, align 4
  %xor221 = xor i32 %211, %212
  %and222 = and i32 %210, %xor221
  %213 = load i32, i32* %c, align 4
  %xor223 = xor i32 %and222, %213
  %214 = load i8*, i8** %buf.addr, align 8
  %215 = load i8, i8* %214, align 1
  %conv224 = zext i8 %215 to i32
  %216 = load i8*, i8** %buf.addr, align 8
  %add.ptr225 = getelementptr inbounds i8, i8* %216, i64 1
  %217 = load i8, i8* %add.ptr225, align 1
  %conv226 = zext i8 %217 to i32
  %shl227 = shl i32 %conv226, 8
  %or228 = or i32 %conv224, %shl227
  %218 = load i8*, i8** %buf.addr, align 8
  %add.ptr229 = getelementptr inbounds i8, i8* %218, i64 2
  %219 = load i8, i8* %add.ptr229, align 1
  %conv230 = zext i8 %219 to i32
  %shl231 = shl i32 %conv230, 16
  %or232 = or i32 %or228, %shl231
  %220 = load i8*, i8** %buf.addr, align 8
  %add.ptr233 = getelementptr inbounds i8, i8* %220, i64 3
  %221 = load i8, i8* %add.ptr233, align 1
  %conv234 = zext i8 %221 to i32
  %shl235 = shl i32 %conv234, 24
  %or236 = or i32 %or232, %shl235
  store i32 %or236, i32* %tmp, align 4
  %222 = load i8*, i8** %buf.addr, align 8
  %add.ptr237 = getelementptr inbounds i8, i8* %222, i64 4
  store i8* %add.ptr237, i8** %buf.addr, align 8
  %223 = load i32, i32* %tmp, align 4
  %224 = load i32*, i32** %uptr, align 8
  %incdec.ptr238 = getelementptr inbounds i32, i32* %224, i32 1
  store i32* %incdec.ptr238, i32** %uptr, align 8
  store i32 %223, i32* %224, align 4
  %add239 = add i32 %xor223, %223
  %add240 = add i32 %add239, -1958414417
  %225 = load i32, i32* %d, align 4
  %add241 = add i32 %225, %add240
  store i32 %add241, i32* %d, align 4
  %226 = load i32, i32* %d, align 4
  store i32 %226, i32* %d, align 4
  %227 = load i32, i32* %d, align 4
  %shl242 = shl i32 %227, 12
  %228 = load i32, i32* %d, align 4
  %shr243 = lshr i32 %228, 20
  %or244 = or i32 %shl242, %shr243
  store i32 %or244, i32* %d, align 4
  %229 = load i32, i32* %a, align 4
  %230 = load i32, i32* %d, align 4
  %add245 = add i32 %230, %229
  store i32 %add245, i32* %d, align 4
  %231 = load i32, i32* %d, align 4
  store i32 %231, i32* %d, align 4
  %232 = load i32, i32* %d, align 4
  %233 = load i32, i32* %a, align 4
  %234 = load i32, i32* %b, align 4
  %xor246 = xor i32 %233, %234
  %and247 = and i32 %232, %xor246
  %235 = load i32, i32* %b, align 4
  %xor248 = xor i32 %and247, %235
  %236 = load i8*, i8** %buf.addr, align 8
  %237 = load i8, i8* %236, align 1
  %conv249 = zext i8 %237 to i32
  %238 = load i8*, i8** %buf.addr, align 8
  %add.ptr250 = getelementptr inbounds i8, i8* %238, i64 1
  %239 = load i8, i8* %add.ptr250, align 1
  %conv251 = zext i8 %239 to i32
  %shl252 = shl i32 %conv251, 8
  %or253 = or i32 %conv249, %shl252
  %240 = load i8*, i8** %buf.addr, align 8
  %add.ptr254 = getelementptr inbounds i8, i8* %240, i64 2
  %241 = load i8, i8* %add.ptr254, align 1
  %conv255 = zext i8 %241 to i32
  %shl256 = shl i32 %conv255, 16
  %or257 = or i32 %or253, %shl256
  %242 = load i8*, i8** %buf.addr, align 8
  %add.ptr258 = getelementptr inbounds i8, i8* %242, i64 3
  %243 = load i8, i8* %add.ptr258, align 1
  %conv259 = zext i8 %243 to i32
  %shl260 = shl i32 %conv259, 24
  %or261 = or i32 %or257, %shl260
  store i32 %or261, i32* %tmp, align 4
  %244 = load i8*, i8** %buf.addr, align 8
  %add.ptr262 = getelementptr inbounds i8, i8* %244, i64 4
  store i8* %add.ptr262, i8** %buf.addr, align 8
  %245 = load i32, i32* %tmp, align 4
  %246 = load i32*, i32** %uptr, align 8
  %incdec.ptr263 = getelementptr inbounds i32, i32* %246, i32 1
  store i32* %incdec.ptr263, i32** %uptr, align 8
  store i32 %245, i32* %246, align 4
  %add264 = add i32 %xor248, %245
  %add265 = add i32 %add264, -42063
  %247 = load i32, i32* %c, align 4
  %add266 = add i32 %247, %add265
  store i32 %add266, i32* %c, align 4
  %248 = load i32, i32* %c, align 4
  store i32 %248, i32* %c, align 4
  %249 = load i32, i32* %c, align 4
  %shl267 = shl i32 %249, 17
  %250 = load i32, i32* %c, align 4
  %shr268 = lshr i32 %250, 15
  %or269 = or i32 %shl267, %shr268
  store i32 %or269, i32* %c, align 4
  %251 = load i32, i32* %d, align 4
  %252 = load i32, i32* %c, align 4
  %add270 = add i32 %252, %251
  store i32 %add270, i32* %c, align 4
  %253 = load i32, i32* %c, align 4
  store i32 %253, i32* %c, align 4
  %254 = load i32, i32* %c, align 4
  %255 = load i32, i32* %d, align 4
  %256 = load i32, i32* %a, align 4
  %xor271 = xor i32 %255, %256
  %and272 = and i32 %254, %xor271
  %257 = load i32, i32* %a, align 4
  %xor273 = xor i32 %and272, %257
  %258 = load i8*, i8** %buf.addr, align 8
  %259 = load i8, i8* %258, align 1
  %conv274 = zext i8 %259 to i32
  %260 = load i8*, i8** %buf.addr, align 8
  %add.ptr275 = getelementptr inbounds i8, i8* %260, i64 1
  %261 = load i8, i8* %add.ptr275, align 1
  %conv276 = zext i8 %261 to i32
  %shl277 = shl i32 %conv276, 8
  %or278 = or i32 %conv274, %shl277
  %262 = load i8*, i8** %buf.addr, align 8
  %add.ptr279 = getelementptr inbounds i8, i8* %262, i64 2
  %263 = load i8, i8* %add.ptr279, align 1
  %conv280 = zext i8 %263 to i32
  %shl281 = shl i32 %conv280, 16
  %or282 = or i32 %or278, %shl281
  %264 = load i8*, i8** %buf.addr, align 8
  %add.ptr283 = getelementptr inbounds i8, i8* %264, i64 3
  %265 = load i8, i8* %add.ptr283, align 1
  %conv284 = zext i8 %265 to i32
  %shl285 = shl i32 %conv284, 24
  %or286 = or i32 %or282, %shl285
  store i32 %or286, i32* %tmp, align 4
  %266 = load i8*, i8** %buf.addr, align 8
  %add.ptr287 = getelementptr inbounds i8, i8* %266, i64 4
  store i8* %add.ptr287, i8** %buf.addr, align 8
  %267 = load i32, i32* %tmp, align 4
  %268 = load i32*, i32** %uptr, align 8
  %incdec.ptr288 = getelementptr inbounds i32, i32* %268, i32 1
  store i32* %incdec.ptr288, i32** %uptr, align 8
  store i32 %267, i32* %268, align 4
  %add289 = add i32 %xor273, %267
  %add290 = add i32 %add289, -1990404162
  %269 = load i32, i32* %b, align 4
  %add291 = add i32 %269, %add290
  store i32 %add291, i32* %b, align 4
  %270 = load i32, i32* %b, align 4
  store i32 %270, i32* %b, align 4
  %271 = load i32, i32* %b, align 4
  %shl292 = shl i32 %271, 22
  %272 = load i32, i32* %b, align 4
  %shr293 = lshr i32 %272, 10
  %or294 = or i32 %shl292, %shr293
  store i32 %or294, i32* %b, align 4
  %273 = load i32, i32* %c, align 4
  %274 = load i32, i32* %b, align 4
  %add295 = add i32 %274, %273
  store i32 %add295, i32* %b, align 4
  %275 = load i32, i32* %b, align 4
  store i32 %275, i32* %b, align 4
  %276 = load i32, i32* %b, align 4
  %277 = load i32, i32* %c, align 4
  %278 = load i32, i32* %d, align 4
  %xor296 = xor i32 %277, %278
  %and297 = and i32 %276, %xor296
  %279 = load i32, i32* %d, align 4
  %xor298 = xor i32 %and297, %279
  %280 = load i8*, i8** %buf.addr, align 8
  %281 = load i8, i8* %280, align 1
  %conv299 = zext i8 %281 to i32
  %282 = load i8*, i8** %buf.addr, align 8
  %add.ptr300 = getelementptr inbounds i8, i8* %282, i64 1
  %283 = load i8, i8* %add.ptr300, align 1
  %conv301 = zext i8 %283 to i32
  %shl302 = shl i32 %conv301, 8
  %or303 = or i32 %conv299, %shl302
  %284 = load i8*, i8** %buf.addr, align 8
  %add.ptr304 = getelementptr inbounds i8, i8* %284, i64 2
  %285 = load i8, i8* %add.ptr304, align 1
  %conv305 = zext i8 %285 to i32
  %shl306 = shl i32 %conv305, 16
  %or307 = or i32 %or303, %shl306
  %286 = load i8*, i8** %buf.addr, align 8
  %add.ptr308 = getelementptr inbounds i8, i8* %286, i64 3
  %287 = load i8, i8* %add.ptr308, align 1
  %conv309 = zext i8 %287 to i32
  %shl310 = shl i32 %conv309, 24
  %or311 = or i32 %or307, %shl310
  store i32 %or311, i32* %tmp, align 4
  %288 = load i8*, i8** %buf.addr, align 8
  %add.ptr312 = getelementptr inbounds i8, i8* %288, i64 4
  store i8* %add.ptr312, i8** %buf.addr, align 8
  %289 = load i32, i32* %tmp, align 4
  %290 = load i32*, i32** %uptr, align 8
  %incdec.ptr313 = getelementptr inbounds i32, i32* %290, i32 1
  store i32* %incdec.ptr313, i32** %uptr, align 8
  store i32 %289, i32* %290, align 4
  %add314 = add i32 %xor298, %289
  %add315 = add i32 %add314, 1804603682
  %291 = load i32, i32* %a, align 4
  %add316 = add i32 %291, %add315
  store i32 %add316, i32* %a, align 4
  %292 = load i32, i32* %a, align 4
  store i32 %292, i32* %a, align 4
  %293 = load i32, i32* %a, align 4
  %shl317 = shl i32 %293, 7
  %294 = load i32, i32* %a, align 4
  %shr318 = lshr i32 %294, 25
  %or319 = or i32 %shl317, %shr318
  store i32 %or319, i32* %a, align 4
  %295 = load i32, i32* %b, align 4
  %296 = load i32, i32* %a, align 4
  %add320 = add i32 %296, %295
  store i32 %add320, i32* %a, align 4
  %297 = load i32, i32* %a, align 4
  store i32 %297, i32* %a, align 4
  %298 = load i32, i32* %a, align 4
  %299 = load i32, i32* %b, align 4
  %300 = load i32, i32* %c, align 4
  %xor321 = xor i32 %299, %300
  %and322 = and i32 %298, %xor321
  %301 = load i32, i32* %c, align 4
  %xor323 = xor i32 %and322, %301
  %302 = load i8*, i8** %buf.addr, align 8
  %303 = load i8, i8* %302, align 1
  %conv324 = zext i8 %303 to i32
  %304 = load i8*, i8** %buf.addr, align 8
  %add.ptr325 = getelementptr inbounds i8, i8* %304, i64 1
  %305 = load i8, i8* %add.ptr325, align 1
  %conv326 = zext i8 %305 to i32
  %shl327 = shl i32 %conv326, 8
  %or328 = or i32 %conv324, %shl327
  %306 = load i8*, i8** %buf.addr, align 8
  %add.ptr329 = getelementptr inbounds i8, i8* %306, i64 2
  %307 = load i8, i8* %add.ptr329, align 1
  %conv330 = zext i8 %307 to i32
  %shl331 = shl i32 %conv330, 16
  %or332 = or i32 %or328, %shl331
  %308 = load i8*, i8** %buf.addr, align 8
  %add.ptr333 = getelementptr inbounds i8, i8* %308, i64 3
  %309 = load i8, i8* %add.ptr333, align 1
  %conv334 = zext i8 %309 to i32
  %shl335 = shl i32 %conv334, 24
  %or336 = or i32 %or332, %shl335
  store i32 %or336, i32* %tmp, align 4
  %310 = load i8*, i8** %buf.addr, align 8
  %add.ptr337 = getelementptr inbounds i8, i8* %310, i64 4
  store i8* %add.ptr337, i8** %buf.addr, align 8
  %311 = load i32, i32* %tmp, align 4
  %312 = load i32*, i32** %uptr, align 8
  %incdec.ptr338 = getelementptr inbounds i32, i32* %312, i32 1
  store i32* %incdec.ptr338, i32** %uptr, align 8
  store i32 %311, i32* %312, align 4
  %add339 = add i32 %xor323, %311
  %add340 = add i32 %add339, -40341101
  %313 = load i32, i32* %d, align 4
  %add341 = add i32 %313, %add340
  store i32 %add341, i32* %d, align 4
  %314 = load i32, i32* %d, align 4
  store i32 %314, i32* %d, align 4
  %315 = load i32, i32* %d, align 4
  %shl342 = shl i32 %315, 12
  %316 = load i32, i32* %d, align 4
  %shr343 = lshr i32 %316, 20
  %or344 = or i32 %shl342, %shr343
  store i32 %or344, i32* %d, align 4
  %317 = load i32, i32* %a, align 4
  %318 = load i32, i32* %d, align 4
  %add345 = add i32 %318, %317
  store i32 %add345, i32* %d, align 4
  %319 = load i32, i32* %d, align 4
  store i32 %319, i32* %d, align 4
  %320 = load i32, i32* %d, align 4
  %321 = load i32, i32* %a, align 4
  %322 = load i32, i32* %b, align 4
  %xor346 = xor i32 %321, %322
  %and347 = and i32 %320, %xor346
  %323 = load i32, i32* %b, align 4
  %xor348 = xor i32 %and347, %323
  %324 = load i8*, i8** %buf.addr, align 8
  %325 = load i8, i8* %324, align 1
  %conv349 = zext i8 %325 to i32
  %326 = load i8*, i8** %buf.addr, align 8
  %add.ptr350 = getelementptr inbounds i8, i8* %326, i64 1
  %327 = load i8, i8* %add.ptr350, align 1
  %conv351 = zext i8 %327 to i32
  %shl352 = shl i32 %conv351, 8
  %or353 = or i32 %conv349, %shl352
  %328 = load i8*, i8** %buf.addr, align 8
  %add.ptr354 = getelementptr inbounds i8, i8* %328, i64 2
  %329 = load i8, i8* %add.ptr354, align 1
  %conv355 = zext i8 %329 to i32
  %shl356 = shl i32 %conv355, 16
  %or357 = or i32 %or353, %shl356
  %330 = load i8*, i8** %buf.addr, align 8
  %add.ptr358 = getelementptr inbounds i8, i8* %330, i64 3
  %331 = load i8, i8* %add.ptr358, align 1
  %conv359 = zext i8 %331 to i32
  %shl360 = shl i32 %conv359, 24
  %or361 = or i32 %or357, %shl360
  store i32 %or361, i32* %tmp, align 4
  %332 = load i8*, i8** %buf.addr, align 8
  %add.ptr362 = getelementptr inbounds i8, i8* %332, i64 4
  store i8* %add.ptr362, i8** %buf.addr, align 8
  %333 = load i32, i32* %tmp, align 4
  %334 = load i32*, i32** %uptr, align 8
  %incdec.ptr363 = getelementptr inbounds i32, i32* %334, i32 1
  store i32* %incdec.ptr363, i32** %uptr, align 8
  store i32 %333, i32* %334, align 4
  %add364 = add i32 %xor348, %333
  %add365 = add i32 %add364, -1502002290
  %335 = load i32, i32* %c, align 4
  %add366 = add i32 %335, %add365
  store i32 %add366, i32* %c, align 4
  %336 = load i32, i32* %c, align 4
  store i32 %336, i32* %c, align 4
  %337 = load i32, i32* %c, align 4
  %shl367 = shl i32 %337, 17
  %338 = load i32, i32* %c, align 4
  %shr368 = lshr i32 %338, 15
  %or369 = or i32 %shl367, %shr368
  store i32 %or369, i32* %c, align 4
  %339 = load i32, i32* %d, align 4
  %340 = load i32, i32* %c, align 4
  %add370 = add i32 %340, %339
  store i32 %add370, i32* %c, align 4
  %341 = load i32, i32* %c, align 4
  store i32 %341, i32* %c, align 4
  %342 = load i32, i32* %c, align 4
  %343 = load i32, i32* %d, align 4
  %344 = load i32, i32* %a, align 4
  %xor371 = xor i32 %343, %344
  %and372 = and i32 %342, %xor371
  %345 = load i32, i32* %a, align 4
  %xor373 = xor i32 %and372, %345
  %346 = load i8*, i8** %buf.addr, align 8
  %347 = load i8, i8* %346, align 1
  %conv374 = zext i8 %347 to i32
  %348 = load i8*, i8** %buf.addr, align 8
  %add.ptr375 = getelementptr inbounds i8, i8* %348, i64 1
  %349 = load i8, i8* %add.ptr375, align 1
  %conv376 = zext i8 %349 to i32
  %shl377 = shl i32 %conv376, 8
  %or378 = or i32 %conv374, %shl377
  %350 = load i8*, i8** %buf.addr, align 8
  %add.ptr379 = getelementptr inbounds i8, i8* %350, i64 2
  %351 = load i8, i8* %add.ptr379, align 1
  %conv380 = zext i8 %351 to i32
  %shl381 = shl i32 %conv380, 16
  %or382 = or i32 %or378, %shl381
  %352 = load i8*, i8** %buf.addr, align 8
  %add.ptr383 = getelementptr inbounds i8, i8* %352, i64 3
  %353 = load i8, i8* %add.ptr383, align 1
  %conv384 = zext i8 %353 to i32
  %shl385 = shl i32 %conv384, 24
  %or386 = or i32 %or382, %shl385
  store i32 %or386, i32* %tmp, align 4
  %354 = load i8*, i8** %buf.addr, align 8
  %add.ptr387 = getelementptr inbounds i8, i8* %354, i64 4
  store i8* %add.ptr387, i8** %buf.addr, align 8
  %355 = load i32, i32* %tmp, align 4
  %356 = load i32*, i32** %uptr, align 8
  %incdec.ptr388 = getelementptr inbounds i32, i32* %356, i32 1
  store i32* %incdec.ptr388, i32** %uptr, align 8
  store i32 %355, i32* %356, align 4
  %add389 = add i32 %xor373, %355
  %add390 = add i32 %add389, 1236535329
  %357 = load i32, i32* %b, align 4
  %add391 = add i32 %357, %add390
  store i32 %add391, i32* %b, align 4
  %358 = load i32, i32* %b, align 4
  store i32 %358, i32* %b, align 4
  %359 = load i32, i32* %b, align 4
  %shl392 = shl i32 %359, 22
  %360 = load i32, i32* %b, align 4
  %shr393 = lshr i32 %360, 10
  %or394 = or i32 %shl392, %shr393
  store i32 %or394, i32* %b, align 4
  %361 = load i32, i32* %c, align 4
  %362 = load i32, i32* %b, align 4
  %add395 = add i32 %362, %361
  store i32 %add395, i32* %b, align 4
  %363 = load i32, i32* %b, align 4
  store i32 %363, i32* %b, align 4
  %364 = load i32, i32* %d, align 4
  %365 = load i32, i32* %b, align 4
  %366 = load i32, i32* %c, align 4
  %xor396 = xor i32 %365, %366
  %and397 = and i32 %364, %xor396
  %367 = load i32, i32* %c, align 4
  %xor398 = xor i32 %and397, %367
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 1
  %368 = load i32, i32* %arrayidx, align 4
  %add399 = add i32 %xor398, %368
  %add400 = add i32 %add399, -165796510
  %369 = load i32, i32* %a, align 4
  %add401 = add i32 %369, %add400
  store i32 %add401, i32* %a, align 4
  %370 = load i32, i32* %a, align 4
  store i32 %370, i32* %a, align 4
  %371 = load i32, i32* %a, align 4
  %shl402 = shl i32 %371, 5
  %372 = load i32, i32* %a, align 4
  %shr403 = lshr i32 %372, 27
  %or404 = or i32 %shl402, %shr403
  store i32 %or404, i32* %a, align 4
  %373 = load i32, i32* %b, align 4
  %374 = load i32, i32* %a, align 4
  %add405 = add i32 %374, %373
  store i32 %add405, i32* %a, align 4
  %375 = load i32, i32* %a, align 4
  store i32 %375, i32* %a, align 4
  %376 = load i32, i32* %c, align 4
  %377 = load i32, i32* %a, align 4
  %378 = load i32, i32* %b, align 4
  %xor406 = xor i32 %377, %378
  %and407 = and i32 %376, %xor406
  %379 = load i32, i32* %b, align 4
  %xor408 = xor i32 %and407, %379
  %arrayidx409 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 6
  %380 = load i32, i32* %arrayidx409, align 4
  %add410 = add i32 %xor408, %380
  %add411 = add i32 %add410, -1069501632
  %381 = load i32, i32* %d, align 4
  %add412 = add i32 %381, %add411
  store i32 %add412, i32* %d, align 4
  %382 = load i32, i32* %d, align 4
  store i32 %382, i32* %d, align 4
  %383 = load i32, i32* %d, align 4
  %shl413 = shl i32 %383, 9
  %384 = load i32, i32* %d, align 4
  %shr414 = lshr i32 %384, 23
  %or415 = or i32 %shl413, %shr414
  store i32 %or415, i32* %d, align 4
  %385 = load i32, i32* %a, align 4
  %386 = load i32, i32* %d, align 4
  %add416 = add i32 %386, %385
  store i32 %add416, i32* %d, align 4
  %387 = load i32, i32* %d, align 4
  store i32 %387, i32* %d, align 4
  %388 = load i32, i32* %b, align 4
  %389 = load i32, i32* %d, align 4
  %390 = load i32, i32* %a, align 4
  %xor417 = xor i32 %389, %390
  %and418 = and i32 %388, %xor417
  %391 = load i32, i32* %a, align 4
  %xor419 = xor i32 %and418, %391
  %arrayidx420 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 11
  %392 = load i32, i32* %arrayidx420, align 4
  %add421 = add i32 %xor419, %392
  %add422 = add i32 %add421, 643717713
  %393 = load i32, i32* %c, align 4
  %add423 = add i32 %393, %add422
  store i32 %add423, i32* %c, align 4
  %394 = load i32, i32* %c, align 4
  store i32 %394, i32* %c, align 4
  %395 = load i32, i32* %c, align 4
  %shl424 = shl i32 %395, 14
  %396 = load i32, i32* %c, align 4
  %shr425 = lshr i32 %396, 18
  %or426 = or i32 %shl424, %shr425
  store i32 %or426, i32* %c, align 4
  %397 = load i32, i32* %d, align 4
  %398 = load i32, i32* %c, align 4
  %add427 = add i32 %398, %397
  store i32 %add427, i32* %c, align 4
  %399 = load i32, i32* %c, align 4
  store i32 %399, i32* %c, align 4
  %400 = load i32, i32* %a, align 4
  %401 = load i32, i32* %c, align 4
  %402 = load i32, i32* %d, align 4
  %xor428 = xor i32 %401, %402
  %and429 = and i32 %400, %xor428
  %403 = load i32, i32* %d, align 4
  %xor430 = xor i32 %and429, %403
  %arrayidx431 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 0
  %404 = load i32, i32* %arrayidx431, align 4
  %add432 = add i32 %xor430, %404
  %add433 = add i32 %add432, -373897302
  %405 = load i32, i32* %b, align 4
  %add434 = add i32 %405, %add433
  store i32 %add434, i32* %b, align 4
  %406 = load i32, i32* %b, align 4
  store i32 %406, i32* %b, align 4
  %407 = load i32, i32* %b, align 4
  %shl435 = shl i32 %407, 20
  %408 = load i32, i32* %b, align 4
  %shr436 = lshr i32 %408, 12
  %or437 = or i32 %shl435, %shr436
  store i32 %or437, i32* %b, align 4
  %409 = load i32, i32* %c, align 4
  %410 = load i32, i32* %b, align 4
  %add438 = add i32 %410, %409
  store i32 %add438, i32* %b, align 4
  %411 = load i32, i32* %b, align 4
  store i32 %411, i32* %b, align 4
  %412 = load i32, i32* %d, align 4
  %413 = load i32, i32* %b, align 4
  %414 = load i32, i32* %c, align 4
  %xor439 = xor i32 %413, %414
  %and440 = and i32 %412, %xor439
  %415 = load i32, i32* %c, align 4
  %xor441 = xor i32 %and440, %415
  %arrayidx442 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 5
  %416 = load i32, i32* %arrayidx442, align 4
  %add443 = add i32 %xor441, %416
  %add444 = add i32 %add443, -701558691
  %417 = load i32, i32* %a, align 4
  %add445 = add i32 %417, %add444
  store i32 %add445, i32* %a, align 4
  %418 = load i32, i32* %a, align 4
  store i32 %418, i32* %a, align 4
  %419 = load i32, i32* %a, align 4
  %shl446 = shl i32 %419, 5
  %420 = load i32, i32* %a, align 4
  %shr447 = lshr i32 %420, 27
  %or448 = or i32 %shl446, %shr447
  store i32 %or448, i32* %a, align 4
  %421 = load i32, i32* %b, align 4
  %422 = load i32, i32* %a, align 4
  %add449 = add i32 %422, %421
  store i32 %add449, i32* %a, align 4
  %423 = load i32, i32* %a, align 4
  store i32 %423, i32* %a, align 4
  %424 = load i32, i32* %c, align 4
  %425 = load i32, i32* %a, align 4
  %426 = load i32, i32* %b, align 4
  %xor450 = xor i32 %425, %426
  %and451 = and i32 %424, %xor450
  %427 = load i32, i32* %b, align 4
  %xor452 = xor i32 %and451, %427
  %arrayidx453 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 10
  %428 = load i32, i32* %arrayidx453, align 4
  %add454 = add i32 %xor452, %428
  %add455 = add i32 %add454, 38016083
  %429 = load i32, i32* %d, align 4
  %add456 = add i32 %429, %add455
  store i32 %add456, i32* %d, align 4
  %430 = load i32, i32* %d, align 4
  store i32 %430, i32* %d, align 4
  %431 = load i32, i32* %d, align 4
  %shl457 = shl i32 %431, 9
  %432 = load i32, i32* %d, align 4
  %shr458 = lshr i32 %432, 23
  %or459 = or i32 %shl457, %shr458
  store i32 %or459, i32* %d, align 4
  %433 = load i32, i32* %a, align 4
  %434 = load i32, i32* %d, align 4
  %add460 = add i32 %434, %433
  store i32 %add460, i32* %d, align 4
  %435 = load i32, i32* %d, align 4
  store i32 %435, i32* %d, align 4
  %436 = load i32, i32* %b, align 4
  %437 = load i32, i32* %d, align 4
  %438 = load i32, i32* %a, align 4
  %xor461 = xor i32 %437, %438
  %and462 = and i32 %436, %xor461
  %439 = load i32, i32* %a, align 4
  %xor463 = xor i32 %and462, %439
  %arrayidx464 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 15
  %440 = load i32, i32* %arrayidx464, align 4
  %add465 = add i32 %xor463, %440
  %add466 = add i32 %add465, -660478335
  %441 = load i32, i32* %c, align 4
  %add467 = add i32 %441, %add466
  store i32 %add467, i32* %c, align 4
  %442 = load i32, i32* %c, align 4
  store i32 %442, i32* %c, align 4
  %443 = load i32, i32* %c, align 4
  %shl468 = shl i32 %443, 14
  %444 = load i32, i32* %c, align 4
  %shr469 = lshr i32 %444, 18
  %or470 = or i32 %shl468, %shr469
  store i32 %or470, i32* %c, align 4
  %445 = load i32, i32* %d, align 4
  %446 = load i32, i32* %c, align 4
  %add471 = add i32 %446, %445
  store i32 %add471, i32* %c, align 4
  %447 = load i32, i32* %c, align 4
  store i32 %447, i32* %c, align 4
  %448 = load i32, i32* %a, align 4
  %449 = load i32, i32* %c, align 4
  %450 = load i32, i32* %d, align 4
  %xor472 = xor i32 %449, %450
  %and473 = and i32 %448, %xor472
  %451 = load i32, i32* %d, align 4
  %xor474 = xor i32 %and473, %451
  %arrayidx475 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 4
  %452 = load i32, i32* %arrayidx475, align 4
  %add476 = add i32 %xor474, %452
  %add477 = add i32 %add476, -405537848
  %453 = load i32, i32* %b, align 4
  %add478 = add i32 %453, %add477
  store i32 %add478, i32* %b, align 4
  %454 = load i32, i32* %b, align 4
  store i32 %454, i32* %b, align 4
  %455 = load i32, i32* %b, align 4
  %shl479 = shl i32 %455, 20
  %456 = load i32, i32* %b, align 4
  %shr480 = lshr i32 %456, 12
  %or481 = or i32 %shl479, %shr480
  store i32 %or481, i32* %b, align 4
  %457 = load i32, i32* %c, align 4
  %458 = load i32, i32* %b, align 4
  %add482 = add i32 %458, %457
  store i32 %add482, i32* %b, align 4
  %459 = load i32, i32* %b, align 4
  store i32 %459, i32* %b, align 4
  %460 = load i32, i32* %d, align 4
  %461 = load i32, i32* %b, align 4
  %462 = load i32, i32* %c, align 4
  %xor483 = xor i32 %461, %462
  %and484 = and i32 %460, %xor483
  %463 = load i32, i32* %c, align 4
  %xor485 = xor i32 %and484, %463
  %arrayidx486 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 9
  %464 = load i32, i32* %arrayidx486, align 4
  %add487 = add i32 %xor485, %464
  %add488 = add i32 %add487, 568446438
  %465 = load i32, i32* %a, align 4
  %add489 = add i32 %465, %add488
  store i32 %add489, i32* %a, align 4
  %466 = load i32, i32* %a, align 4
  store i32 %466, i32* %a, align 4
  %467 = load i32, i32* %a, align 4
  %shl490 = shl i32 %467, 5
  %468 = load i32, i32* %a, align 4
  %shr491 = lshr i32 %468, 27
  %or492 = or i32 %shl490, %shr491
  store i32 %or492, i32* %a, align 4
  %469 = load i32, i32* %b, align 4
  %470 = load i32, i32* %a, align 4
  %add493 = add i32 %470, %469
  store i32 %add493, i32* %a, align 4
  %471 = load i32, i32* %a, align 4
  store i32 %471, i32* %a, align 4
  %472 = load i32, i32* %c, align 4
  %473 = load i32, i32* %a, align 4
  %474 = load i32, i32* %b, align 4
  %xor494 = xor i32 %473, %474
  %and495 = and i32 %472, %xor494
  %475 = load i32, i32* %b, align 4
  %xor496 = xor i32 %and495, %475
  %arrayidx497 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 14
  %476 = load i32, i32* %arrayidx497, align 4
  %add498 = add i32 %xor496, %476
  %add499 = add i32 %add498, -1019803690
  %477 = load i32, i32* %d, align 4
  %add500 = add i32 %477, %add499
  store i32 %add500, i32* %d, align 4
  %478 = load i32, i32* %d, align 4
  store i32 %478, i32* %d, align 4
  %479 = load i32, i32* %d, align 4
  %shl501 = shl i32 %479, 9
  %480 = load i32, i32* %d, align 4
  %shr502 = lshr i32 %480, 23
  %or503 = or i32 %shl501, %shr502
  store i32 %or503, i32* %d, align 4
  %481 = load i32, i32* %a, align 4
  %482 = load i32, i32* %d, align 4
  %add504 = add i32 %482, %481
  store i32 %add504, i32* %d, align 4
  %483 = load i32, i32* %d, align 4
  store i32 %483, i32* %d, align 4
  %484 = load i32, i32* %b, align 4
  %485 = load i32, i32* %d, align 4
  %486 = load i32, i32* %a, align 4
  %xor505 = xor i32 %485, %486
  %and506 = and i32 %484, %xor505
  %487 = load i32, i32* %a, align 4
  %xor507 = xor i32 %and506, %487
  %arrayidx508 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 3
  %488 = load i32, i32* %arrayidx508, align 4
  %add509 = add i32 %xor507, %488
  %add510 = add i32 %add509, -187363961
  %489 = load i32, i32* %c, align 4
  %add511 = add i32 %489, %add510
  store i32 %add511, i32* %c, align 4
  %490 = load i32, i32* %c, align 4
  store i32 %490, i32* %c, align 4
  %491 = load i32, i32* %c, align 4
  %shl512 = shl i32 %491, 14
  %492 = load i32, i32* %c, align 4
  %shr513 = lshr i32 %492, 18
  %or514 = or i32 %shl512, %shr513
  store i32 %or514, i32* %c, align 4
  %493 = load i32, i32* %d, align 4
  %494 = load i32, i32* %c, align 4
  %add515 = add i32 %494, %493
  store i32 %add515, i32* %c, align 4
  %495 = load i32, i32* %c, align 4
  store i32 %495, i32* %c, align 4
  %496 = load i32, i32* %a, align 4
  %497 = load i32, i32* %c, align 4
  %498 = load i32, i32* %d, align 4
  %xor516 = xor i32 %497, %498
  %and517 = and i32 %496, %xor516
  %499 = load i32, i32* %d, align 4
  %xor518 = xor i32 %and517, %499
  %arrayidx519 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 8
  %500 = load i32, i32* %arrayidx519, align 4
  %add520 = add i32 %xor518, %500
  %add521 = add i32 %add520, 1163531501
  %501 = load i32, i32* %b, align 4
  %add522 = add i32 %501, %add521
  store i32 %add522, i32* %b, align 4
  %502 = load i32, i32* %b, align 4
  store i32 %502, i32* %b, align 4
  %503 = load i32, i32* %b, align 4
  %shl523 = shl i32 %503, 20
  %504 = load i32, i32* %b, align 4
  %shr524 = lshr i32 %504, 12
  %or525 = or i32 %shl523, %shr524
  store i32 %or525, i32* %b, align 4
  %505 = load i32, i32* %c, align 4
  %506 = load i32, i32* %b, align 4
  %add526 = add i32 %506, %505
  store i32 %add526, i32* %b, align 4
  %507 = load i32, i32* %b, align 4
  store i32 %507, i32* %b, align 4
  %508 = load i32, i32* %d, align 4
  %509 = load i32, i32* %b, align 4
  %510 = load i32, i32* %c, align 4
  %xor527 = xor i32 %509, %510
  %and528 = and i32 %508, %xor527
  %511 = load i32, i32* %c, align 4
  %xor529 = xor i32 %and528, %511
  %arrayidx530 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 13
  %512 = load i32, i32* %arrayidx530, align 4
  %add531 = add i32 %xor529, %512
  %add532 = add i32 %add531, -1444681467
  %513 = load i32, i32* %a, align 4
  %add533 = add i32 %513, %add532
  store i32 %add533, i32* %a, align 4
  %514 = load i32, i32* %a, align 4
  store i32 %514, i32* %a, align 4
  %515 = load i32, i32* %a, align 4
  %shl534 = shl i32 %515, 5
  %516 = load i32, i32* %a, align 4
  %shr535 = lshr i32 %516, 27
  %or536 = or i32 %shl534, %shr535
  store i32 %or536, i32* %a, align 4
  %517 = load i32, i32* %b, align 4
  %518 = load i32, i32* %a, align 4
  %add537 = add i32 %518, %517
  store i32 %add537, i32* %a, align 4
  %519 = load i32, i32* %a, align 4
  store i32 %519, i32* %a, align 4
  %520 = load i32, i32* %c, align 4
  %521 = load i32, i32* %a, align 4
  %522 = load i32, i32* %b, align 4
  %xor538 = xor i32 %521, %522
  %and539 = and i32 %520, %xor538
  %523 = load i32, i32* %b, align 4
  %xor540 = xor i32 %and539, %523
  %arrayidx541 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 2
  %524 = load i32, i32* %arrayidx541, align 4
  %add542 = add i32 %xor540, %524
  %add543 = add i32 %add542, -51403784
  %525 = load i32, i32* %d, align 4
  %add544 = add i32 %525, %add543
  store i32 %add544, i32* %d, align 4
  %526 = load i32, i32* %d, align 4
  store i32 %526, i32* %d, align 4
  %527 = load i32, i32* %d, align 4
  %shl545 = shl i32 %527, 9
  %528 = load i32, i32* %d, align 4
  %shr546 = lshr i32 %528, 23
  %or547 = or i32 %shl545, %shr546
  store i32 %or547, i32* %d, align 4
  %529 = load i32, i32* %a, align 4
  %530 = load i32, i32* %d, align 4
  %add548 = add i32 %530, %529
  store i32 %add548, i32* %d, align 4
  %531 = load i32, i32* %d, align 4
  store i32 %531, i32* %d, align 4
  %532 = load i32, i32* %b, align 4
  %533 = load i32, i32* %d, align 4
  %534 = load i32, i32* %a, align 4
  %xor549 = xor i32 %533, %534
  %and550 = and i32 %532, %xor549
  %535 = load i32, i32* %a, align 4
  %xor551 = xor i32 %and550, %535
  %arrayidx552 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 7
  %536 = load i32, i32* %arrayidx552, align 4
  %add553 = add i32 %xor551, %536
  %add554 = add i32 %add553, 1735328473
  %537 = load i32, i32* %c, align 4
  %add555 = add i32 %537, %add554
  store i32 %add555, i32* %c, align 4
  %538 = load i32, i32* %c, align 4
  store i32 %538, i32* %c, align 4
  %539 = load i32, i32* %c, align 4
  %shl556 = shl i32 %539, 14
  %540 = load i32, i32* %c, align 4
  %shr557 = lshr i32 %540, 18
  %or558 = or i32 %shl556, %shr557
  store i32 %or558, i32* %c, align 4
  %541 = load i32, i32* %d, align 4
  %542 = load i32, i32* %c, align 4
  %add559 = add i32 %542, %541
  store i32 %add559, i32* %c, align 4
  %543 = load i32, i32* %c, align 4
  store i32 %543, i32* %c, align 4
  %544 = load i32, i32* %a, align 4
  %545 = load i32, i32* %c, align 4
  %546 = load i32, i32* %d, align 4
  %xor560 = xor i32 %545, %546
  %and561 = and i32 %544, %xor560
  %547 = load i32, i32* %d, align 4
  %xor562 = xor i32 %and561, %547
  %arrayidx563 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 12
  %548 = load i32, i32* %arrayidx563, align 4
  %add564 = add i32 %xor562, %548
  %add565 = add i32 %add564, -1926607734
  %549 = load i32, i32* %b, align 4
  %add566 = add i32 %549, %add565
  store i32 %add566, i32* %b, align 4
  %550 = load i32, i32* %b, align 4
  store i32 %550, i32* %b, align 4
  %551 = load i32, i32* %b, align 4
  %shl567 = shl i32 %551, 20
  %552 = load i32, i32* %b, align 4
  %shr568 = lshr i32 %552, 12
  %or569 = or i32 %shl567, %shr568
  store i32 %or569, i32* %b, align 4
  %553 = load i32, i32* %c, align 4
  %554 = load i32, i32* %b, align 4
  %add570 = add i32 %554, %553
  store i32 %add570, i32* %b, align 4
  %555 = load i32, i32* %b, align 4
  store i32 %555, i32* %b, align 4
  %556 = load i32, i32* %b, align 4
  %557 = load i32, i32* %c, align 4
  %xor571 = xor i32 %556, %557
  %558 = load i32, i32* %d, align 4
  %xor572 = xor i32 %xor571, %558
  %arrayidx573 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 5
  %559 = load i32, i32* %arrayidx573, align 4
  %add574 = add i32 %xor572, %559
  %add575 = add i32 %add574, -378558
  %560 = load i32, i32* %a, align 4
  %add576 = add i32 %560, %add575
  store i32 %add576, i32* %a, align 4
  %561 = load i32, i32* %a, align 4
  store i32 %561, i32* %a, align 4
  %562 = load i32, i32* %a, align 4
  %shl577 = shl i32 %562, 4
  %563 = load i32, i32* %a, align 4
  %shr578 = lshr i32 %563, 28
  %or579 = or i32 %shl577, %shr578
  store i32 %or579, i32* %a, align 4
  %564 = load i32, i32* %b, align 4
  %565 = load i32, i32* %a, align 4
  %add580 = add i32 %565, %564
  store i32 %add580, i32* %a, align 4
  %566 = load i32, i32* %a, align 4
  store i32 %566, i32* %a, align 4
  %567 = load i32, i32* %a, align 4
  %568 = load i32, i32* %b, align 4
  %xor581 = xor i32 %567, %568
  %569 = load i32, i32* %c, align 4
  %xor582 = xor i32 %xor581, %569
  %arrayidx583 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 8
  %570 = load i32, i32* %arrayidx583, align 4
  %add584 = add i32 %xor582, %570
  %add585 = add i32 %add584, -2022574463
  %571 = load i32, i32* %d, align 4
  %add586 = add i32 %571, %add585
  store i32 %add586, i32* %d, align 4
  %572 = load i32, i32* %d, align 4
  store i32 %572, i32* %d, align 4
  %573 = load i32, i32* %d, align 4
  %shl587 = shl i32 %573, 11
  %574 = load i32, i32* %d, align 4
  %shr588 = lshr i32 %574, 21
  %or589 = or i32 %shl587, %shr588
  store i32 %or589, i32* %d, align 4
  %575 = load i32, i32* %a, align 4
  %576 = load i32, i32* %d, align 4
  %add590 = add i32 %576, %575
  store i32 %add590, i32* %d, align 4
  %577 = load i32, i32* %d, align 4
  store i32 %577, i32* %d, align 4
  %578 = load i32, i32* %d, align 4
  %579 = load i32, i32* %a, align 4
  %xor591 = xor i32 %578, %579
  %580 = load i32, i32* %b, align 4
  %xor592 = xor i32 %xor591, %580
  %arrayidx593 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 11
  %581 = load i32, i32* %arrayidx593, align 4
  %add594 = add i32 %xor592, %581
  %add595 = add i32 %add594, 1839030562
  %582 = load i32, i32* %c, align 4
  %add596 = add i32 %582, %add595
  store i32 %add596, i32* %c, align 4
  %583 = load i32, i32* %c, align 4
  store i32 %583, i32* %c, align 4
  %584 = load i32, i32* %c, align 4
  %shl597 = shl i32 %584, 16
  %585 = load i32, i32* %c, align 4
  %shr598 = lshr i32 %585, 16
  %or599 = or i32 %shl597, %shr598
  store i32 %or599, i32* %c, align 4
  %586 = load i32, i32* %d, align 4
  %587 = load i32, i32* %c, align 4
  %add600 = add i32 %587, %586
  store i32 %add600, i32* %c, align 4
  %588 = load i32, i32* %c, align 4
  store i32 %588, i32* %c, align 4
  %589 = load i32, i32* %c, align 4
  %590 = load i32, i32* %d, align 4
  %xor601 = xor i32 %589, %590
  %591 = load i32, i32* %a, align 4
  %xor602 = xor i32 %xor601, %591
  %arrayidx603 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 14
  %592 = load i32, i32* %arrayidx603, align 4
  %add604 = add i32 %xor602, %592
  %add605 = add i32 %add604, -35309556
  %593 = load i32, i32* %b, align 4
  %add606 = add i32 %593, %add605
  store i32 %add606, i32* %b, align 4
  %594 = load i32, i32* %b, align 4
  store i32 %594, i32* %b, align 4
  %595 = load i32, i32* %b, align 4
  %shl607 = shl i32 %595, 23
  %596 = load i32, i32* %b, align 4
  %shr608 = lshr i32 %596, 9
  %or609 = or i32 %shl607, %shr608
  store i32 %or609, i32* %b, align 4
  %597 = load i32, i32* %c, align 4
  %598 = load i32, i32* %b, align 4
  %add610 = add i32 %598, %597
  store i32 %add610, i32* %b, align 4
  %599 = load i32, i32* %b, align 4
  store i32 %599, i32* %b, align 4
  %600 = load i32, i32* %b, align 4
  %601 = load i32, i32* %c, align 4
  %xor611 = xor i32 %600, %601
  %602 = load i32, i32* %d, align 4
  %xor612 = xor i32 %xor611, %602
  %arrayidx613 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 1
  %603 = load i32, i32* %arrayidx613, align 4
  %add614 = add i32 %xor612, %603
  %add615 = add i32 %add614, -1530992060
  %604 = load i32, i32* %a, align 4
  %add616 = add i32 %604, %add615
  store i32 %add616, i32* %a, align 4
  %605 = load i32, i32* %a, align 4
  store i32 %605, i32* %a, align 4
  %606 = load i32, i32* %a, align 4
  %shl617 = shl i32 %606, 4
  %607 = load i32, i32* %a, align 4
  %shr618 = lshr i32 %607, 28
  %or619 = or i32 %shl617, %shr618
  store i32 %or619, i32* %a, align 4
  %608 = load i32, i32* %b, align 4
  %609 = load i32, i32* %a, align 4
  %add620 = add i32 %609, %608
  store i32 %add620, i32* %a, align 4
  %610 = load i32, i32* %a, align 4
  store i32 %610, i32* %a, align 4
  %611 = load i32, i32* %a, align 4
  %612 = load i32, i32* %b, align 4
  %xor621 = xor i32 %611, %612
  %613 = load i32, i32* %c, align 4
  %xor622 = xor i32 %xor621, %613
  %arrayidx623 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 4
  %614 = load i32, i32* %arrayidx623, align 4
  %add624 = add i32 %xor622, %614
  %add625 = add i32 %add624, 1272893353
  %615 = load i32, i32* %d, align 4
  %add626 = add i32 %615, %add625
  store i32 %add626, i32* %d, align 4
  %616 = load i32, i32* %d, align 4
  store i32 %616, i32* %d, align 4
  %617 = load i32, i32* %d, align 4
  %shl627 = shl i32 %617, 11
  %618 = load i32, i32* %d, align 4
  %shr628 = lshr i32 %618, 21
  %or629 = or i32 %shl627, %shr628
  store i32 %or629, i32* %d, align 4
  %619 = load i32, i32* %a, align 4
  %620 = load i32, i32* %d, align 4
  %add630 = add i32 %620, %619
  store i32 %add630, i32* %d, align 4
  %621 = load i32, i32* %d, align 4
  store i32 %621, i32* %d, align 4
  %622 = load i32, i32* %d, align 4
  %623 = load i32, i32* %a, align 4
  %xor631 = xor i32 %622, %623
  %624 = load i32, i32* %b, align 4
  %xor632 = xor i32 %xor631, %624
  %arrayidx633 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 7
  %625 = load i32, i32* %arrayidx633, align 4
  %add634 = add i32 %xor632, %625
  %add635 = add i32 %add634, -155497632
  %626 = load i32, i32* %c, align 4
  %add636 = add i32 %626, %add635
  store i32 %add636, i32* %c, align 4
  %627 = load i32, i32* %c, align 4
  store i32 %627, i32* %c, align 4
  %628 = load i32, i32* %c, align 4
  %shl637 = shl i32 %628, 16
  %629 = load i32, i32* %c, align 4
  %shr638 = lshr i32 %629, 16
  %or639 = or i32 %shl637, %shr638
  store i32 %or639, i32* %c, align 4
  %630 = load i32, i32* %d, align 4
  %631 = load i32, i32* %c, align 4
  %add640 = add i32 %631, %630
  store i32 %add640, i32* %c, align 4
  %632 = load i32, i32* %c, align 4
  store i32 %632, i32* %c, align 4
  %633 = load i32, i32* %c, align 4
  %634 = load i32, i32* %d, align 4
  %xor641 = xor i32 %633, %634
  %635 = load i32, i32* %a, align 4
  %xor642 = xor i32 %xor641, %635
  %arrayidx643 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 10
  %636 = load i32, i32* %arrayidx643, align 4
  %add644 = add i32 %xor642, %636
  %add645 = add i32 %add644, -1094730640
  %637 = load i32, i32* %b, align 4
  %add646 = add i32 %637, %add645
  store i32 %add646, i32* %b, align 4
  %638 = load i32, i32* %b, align 4
  store i32 %638, i32* %b, align 4
  %639 = load i32, i32* %b, align 4
  %shl647 = shl i32 %639, 23
  %640 = load i32, i32* %b, align 4
  %shr648 = lshr i32 %640, 9
  %or649 = or i32 %shl647, %shr648
  store i32 %or649, i32* %b, align 4
  %641 = load i32, i32* %c, align 4
  %642 = load i32, i32* %b, align 4
  %add650 = add i32 %642, %641
  store i32 %add650, i32* %b, align 4
  %643 = load i32, i32* %b, align 4
  store i32 %643, i32* %b, align 4
  %644 = load i32, i32* %b, align 4
  %645 = load i32, i32* %c, align 4
  %xor651 = xor i32 %644, %645
  %646 = load i32, i32* %d, align 4
  %xor652 = xor i32 %xor651, %646
  %arrayidx653 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 13
  %647 = load i32, i32* %arrayidx653, align 4
  %add654 = add i32 %xor652, %647
  %add655 = add i32 %add654, 681279174
  %648 = load i32, i32* %a, align 4
  %add656 = add i32 %648, %add655
  store i32 %add656, i32* %a, align 4
  %649 = load i32, i32* %a, align 4
  store i32 %649, i32* %a, align 4
  %650 = load i32, i32* %a, align 4
  %shl657 = shl i32 %650, 4
  %651 = load i32, i32* %a, align 4
  %shr658 = lshr i32 %651, 28
  %or659 = or i32 %shl657, %shr658
  store i32 %or659, i32* %a, align 4
  %652 = load i32, i32* %b, align 4
  %653 = load i32, i32* %a, align 4
  %add660 = add i32 %653, %652
  store i32 %add660, i32* %a, align 4
  %654 = load i32, i32* %a, align 4
  store i32 %654, i32* %a, align 4
  %655 = load i32, i32* %a, align 4
  %656 = load i32, i32* %b, align 4
  %xor661 = xor i32 %655, %656
  %657 = load i32, i32* %c, align 4
  %xor662 = xor i32 %xor661, %657
  %arrayidx663 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 0
  %658 = load i32, i32* %arrayidx663, align 4
  %add664 = add i32 %xor662, %658
  %add665 = add i32 %add664, -358537222
  %659 = load i32, i32* %d, align 4
  %add666 = add i32 %659, %add665
  store i32 %add666, i32* %d, align 4
  %660 = load i32, i32* %d, align 4
  store i32 %660, i32* %d, align 4
  %661 = load i32, i32* %d, align 4
  %shl667 = shl i32 %661, 11
  %662 = load i32, i32* %d, align 4
  %shr668 = lshr i32 %662, 21
  %or669 = or i32 %shl667, %shr668
  store i32 %or669, i32* %d, align 4
  %663 = load i32, i32* %a, align 4
  %664 = load i32, i32* %d, align 4
  %add670 = add i32 %664, %663
  store i32 %add670, i32* %d, align 4
  %665 = load i32, i32* %d, align 4
  store i32 %665, i32* %d, align 4
  %666 = load i32, i32* %d, align 4
  %667 = load i32, i32* %a, align 4
  %xor671 = xor i32 %666, %667
  %668 = load i32, i32* %b, align 4
  %xor672 = xor i32 %xor671, %668
  %arrayidx673 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 3
  %669 = load i32, i32* %arrayidx673, align 4
  %add674 = add i32 %xor672, %669
  %add675 = add i32 %add674, -722521979
  %670 = load i32, i32* %c, align 4
  %add676 = add i32 %670, %add675
  store i32 %add676, i32* %c, align 4
  %671 = load i32, i32* %c, align 4
  store i32 %671, i32* %c, align 4
  %672 = load i32, i32* %c, align 4
  %shl677 = shl i32 %672, 16
  %673 = load i32, i32* %c, align 4
  %shr678 = lshr i32 %673, 16
  %or679 = or i32 %shl677, %shr678
  store i32 %or679, i32* %c, align 4
  %674 = load i32, i32* %d, align 4
  %675 = load i32, i32* %c, align 4
  %add680 = add i32 %675, %674
  store i32 %add680, i32* %c, align 4
  %676 = load i32, i32* %c, align 4
  store i32 %676, i32* %c, align 4
  %677 = load i32, i32* %c, align 4
  %678 = load i32, i32* %d, align 4
  %xor681 = xor i32 %677, %678
  %679 = load i32, i32* %a, align 4
  %xor682 = xor i32 %xor681, %679
  %arrayidx683 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 6
  %680 = load i32, i32* %arrayidx683, align 4
  %add684 = add i32 %xor682, %680
  %add685 = add i32 %add684, 76029189
  %681 = load i32, i32* %b, align 4
  %add686 = add i32 %681, %add685
  store i32 %add686, i32* %b, align 4
  %682 = load i32, i32* %b, align 4
  store i32 %682, i32* %b, align 4
  %683 = load i32, i32* %b, align 4
  %shl687 = shl i32 %683, 23
  %684 = load i32, i32* %b, align 4
  %shr688 = lshr i32 %684, 9
  %or689 = or i32 %shl687, %shr688
  store i32 %or689, i32* %b, align 4
  %685 = load i32, i32* %c, align 4
  %686 = load i32, i32* %b, align 4
  %add690 = add i32 %686, %685
  store i32 %add690, i32* %b, align 4
  %687 = load i32, i32* %b, align 4
  store i32 %687, i32* %b, align 4
  %688 = load i32, i32* %b, align 4
  %689 = load i32, i32* %c, align 4
  %xor691 = xor i32 %688, %689
  %690 = load i32, i32* %d, align 4
  %xor692 = xor i32 %xor691, %690
  %arrayidx693 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 9
  %691 = load i32, i32* %arrayidx693, align 4
  %add694 = add i32 %xor692, %691
  %add695 = add i32 %add694, -640364487
  %692 = load i32, i32* %a, align 4
  %add696 = add i32 %692, %add695
  store i32 %add696, i32* %a, align 4
  %693 = load i32, i32* %a, align 4
  store i32 %693, i32* %a, align 4
  %694 = load i32, i32* %a, align 4
  %shl697 = shl i32 %694, 4
  %695 = load i32, i32* %a, align 4
  %shr698 = lshr i32 %695, 28
  %or699 = or i32 %shl697, %shr698
  store i32 %or699, i32* %a, align 4
  %696 = load i32, i32* %b, align 4
  %697 = load i32, i32* %a, align 4
  %add700 = add i32 %697, %696
  store i32 %add700, i32* %a, align 4
  %698 = load i32, i32* %a, align 4
  store i32 %698, i32* %a, align 4
  %699 = load i32, i32* %a, align 4
  %700 = load i32, i32* %b, align 4
  %xor701 = xor i32 %699, %700
  %701 = load i32, i32* %c, align 4
  %xor702 = xor i32 %xor701, %701
  %arrayidx703 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 12
  %702 = load i32, i32* %arrayidx703, align 4
  %add704 = add i32 %xor702, %702
  %add705 = add i32 %add704, -421815835
  %703 = load i32, i32* %d, align 4
  %add706 = add i32 %703, %add705
  store i32 %add706, i32* %d, align 4
  %704 = load i32, i32* %d, align 4
  store i32 %704, i32* %d, align 4
  %705 = load i32, i32* %d, align 4
  %shl707 = shl i32 %705, 11
  %706 = load i32, i32* %d, align 4
  %shr708 = lshr i32 %706, 21
  %or709 = or i32 %shl707, %shr708
  store i32 %or709, i32* %d, align 4
  %707 = load i32, i32* %a, align 4
  %708 = load i32, i32* %d, align 4
  %add710 = add i32 %708, %707
  store i32 %add710, i32* %d, align 4
  %709 = load i32, i32* %d, align 4
  store i32 %709, i32* %d, align 4
  %710 = load i32, i32* %d, align 4
  %711 = load i32, i32* %a, align 4
  %xor711 = xor i32 %710, %711
  %712 = load i32, i32* %b, align 4
  %xor712 = xor i32 %xor711, %712
  %arrayidx713 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 15
  %713 = load i32, i32* %arrayidx713, align 4
  %add714 = add i32 %xor712, %713
  %add715 = add i32 %add714, 530742520
  %714 = load i32, i32* %c, align 4
  %add716 = add i32 %714, %add715
  store i32 %add716, i32* %c, align 4
  %715 = load i32, i32* %c, align 4
  store i32 %715, i32* %c, align 4
  %716 = load i32, i32* %c, align 4
  %shl717 = shl i32 %716, 16
  %717 = load i32, i32* %c, align 4
  %shr718 = lshr i32 %717, 16
  %or719 = or i32 %shl717, %shr718
  store i32 %or719, i32* %c, align 4
  %718 = load i32, i32* %d, align 4
  %719 = load i32, i32* %c, align 4
  %add720 = add i32 %719, %718
  store i32 %add720, i32* %c, align 4
  %720 = load i32, i32* %c, align 4
  store i32 %720, i32* %c, align 4
  %721 = load i32, i32* %c, align 4
  %722 = load i32, i32* %d, align 4
  %xor721 = xor i32 %721, %722
  %723 = load i32, i32* %a, align 4
  %xor722 = xor i32 %xor721, %723
  %arrayidx723 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 2
  %724 = load i32, i32* %arrayidx723, align 4
  %add724 = add i32 %xor722, %724
  %add725 = add i32 %add724, -995338651
  %725 = load i32, i32* %b, align 4
  %add726 = add i32 %725, %add725
  store i32 %add726, i32* %b, align 4
  %726 = load i32, i32* %b, align 4
  store i32 %726, i32* %b, align 4
  %727 = load i32, i32* %b, align 4
  %shl727 = shl i32 %727, 23
  %728 = load i32, i32* %b, align 4
  %shr728 = lshr i32 %728, 9
  %or729 = or i32 %shl727, %shr728
  store i32 %or729, i32* %b, align 4
  %729 = load i32, i32* %c, align 4
  %730 = load i32, i32* %b, align 4
  %add730 = add i32 %730, %729
  store i32 %add730, i32* %b, align 4
  %731 = load i32, i32* %b, align 4
  store i32 %731, i32* %b, align 4
  %732 = load i32, i32* %c, align 4
  %733 = load i32, i32* %b, align 4
  %734 = load i32, i32* %d, align 4
  %neg = xor i32 %734, -1
  %or731 = or i32 %733, %neg
  %xor732 = xor i32 %732, %or731
  %arrayidx733 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 0
  %735 = load i32, i32* %arrayidx733, align 4
  %add734 = add i32 %xor732, %735
  %add735 = add i32 %add734, -198630844
  %736 = load i32, i32* %a, align 4
  %add736 = add i32 %736, %add735
  store i32 %add736, i32* %a, align 4
  %737 = load i32, i32* %a, align 4
  store i32 %737, i32* %a, align 4
  %738 = load i32, i32* %a, align 4
  %shl737 = shl i32 %738, 6
  %739 = load i32, i32* %a, align 4
  %shr738 = lshr i32 %739, 26
  %or739 = or i32 %shl737, %shr738
  store i32 %or739, i32* %a, align 4
  %740 = load i32, i32* %b, align 4
  %741 = load i32, i32* %a, align 4
  %add740 = add i32 %741, %740
  store i32 %add740, i32* %a, align 4
  %742 = load i32, i32* %a, align 4
  store i32 %742, i32* %a, align 4
  %743 = load i32, i32* %b, align 4
  %744 = load i32, i32* %a, align 4
  %745 = load i32, i32* %c, align 4
  %neg741 = xor i32 %745, -1
  %or742 = or i32 %744, %neg741
  %xor743 = xor i32 %743, %or742
  %arrayidx744 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 7
  %746 = load i32, i32* %arrayidx744, align 4
  %add745 = add i32 %xor743, %746
  %add746 = add i32 %add745, 1126891415
  %747 = load i32, i32* %d, align 4
  %add747 = add i32 %747, %add746
  store i32 %add747, i32* %d, align 4
  %748 = load i32, i32* %d, align 4
  store i32 %748, i32* %d, align 4
  %749 = load i32, i32* %d, align 4
  %shl748 = shl i32 %749, 10
  %750 = load i32, i32* %d, align 4
  %shr749 = lshr i32 %750, 22
  %or750 = or i32 %shl748, %shr749
  store i32 %or750, i32* %d, align 4
  %751 = load i32, i32* %a, align 4
  %752 = load i32, i32* %d, align 4
  %add751 = add i32 %752, %751
  store i32 %add751, i32* %d, align 4
  %753 = load i32, i32* %d, align 4
  store i32 %753, i32* %d, align 4
  %754 = load i32, i32* %a, align 4
  %755 = load i32, i32* %d, align 4
  %756 = load i32, i32* %b, align 4
  %neg752 = xor i32 %756, -1
  %or753 = or i32 %755, %neg752
  %xor754 = xor i32 %754, %or753
  %arrayidx755 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 14
  %757 = load i32, i32* %arrayidx755, align 4
  %add756 = add i32 %xor754, %757
  %add757 = add i32 %add756, -1416354905
  %758 = load i32, i32* %c, align 4
  %add758 = add i32 %758, %add757
  store i32 %add758, i32* %c, align 4
  %759 = load i32, i32* %c, align 4
  store i32 %759, i32* %c, align 4
  %760 = load i32, i32* %c, align 4
  %shl759 = shl i32 %760, 15
  %761 = load i32, i32* %c, align 4
  %shr760 = lshr i32 %761, 17
  %or761 = or i32 %shl759, %shr760
  store i32 %or761, i32* %c, align 4
  %762 = load i32, i32* %d, align 4
  %763 = load i32, i32* %c, align 4
  %add762 = add i32 %763, %762
  store i32 %add762, i32* %c, align 4
  %764 = load i32, i32* %c, align 4
  store i32 %764, i32* %c, align 4
  %765 = load i32, i32* %d, align 4
  %766 = load i32, i32* %c, align 4
  %767 = load i32, i32* %a, align 4
  %neg763 = xor i32 %767, -1
  %or764 = or i32 %766, %neg763
  %xor765 = xor i32 %765, %or764
  %arrayidx766 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 5
  %768 = load i32, i32* %arrayidx766, align 4
  %add767 = add i32 %xor765, %768
  %add768 = add i32 %add767, -57434055
  %769 = load i32, i32* %b, align 4
  %add769 = add i32 %769, %add768
  store i32 %add769, i32* %b, align 4
  %770 = load i32, i32* %b, align 4
  store i32 %770, i32* %b, align 4
  %771 = load i32, i32* %b, align 4
  %shl770 = shl i32 %771, 21
  %772 = load i32, i32* %b, align 4
  %shr771 = lshr i32 %772, 11
  %or772 = or i32 %shl770, %shr771
  store i32 %or772, i32* %b, align 4
  %773 = load i32, i32* %c, align 4
  %774 = load i32, i32* %b, align 4
  %add773 = add i32 %774, %773
  store i32 %add773, i32* %b, align 4
  %775 = load i32, i32* %b, align 4
  store i32 %775, i32* %b, align 4
  %776 = load i32, i32* %c, align 4
  %777 = load i32, i32* %b, align 4
  %778 = load i32, i32* %d, align 4
  %neg774 = xor i32 %778, -1
  %or775 = or i32 %777, %neg774
  %xor776 = xor i32 %776, %or775
  %arrayidx777 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 12
  %779 = load i32, i32* %arrayidx777, align 4
  %add778 = add i32 %xor776, %779
  %add779 = add i32 %add778, 1700485571
  %780 = load i32, i32* %a, align 4
  %add780 = add i32 %780, %add779
  store i32 %add780, i32* %a, align 4
  %781 = load i32, i32* %a, align 4
  store i32 %781, i32* %a, align 4
  %782 = load i32, i32* %a, align 4
  %shl781 = shl i32 %782, 6
  %783 = load i32, i32* %a, align 4
  %shr782 = lshr i32 %783, 26
  %or783 = or i32 %shl781, %shr782
  store i32 %or783, i32* %a, align 4
  %784 = load i32, i32* %b, align 4
  %785 = load i32, i32* %a, align 4
  %add784 = add i32 %785, %784
  store i32 %add784, i32* %a, align 4
  %786 = load i32, i32* %a, align 4
  store i32 %786, i32* %a, align 4
  %787 = load i32, i32* %b, align 4
  %788 = load i32, i32* %a, align 4
  %789 = load i32, i32* %c, align 4
  %neg785 = xor i32 %789, -1
  %or786 = or i32 %788, %neg785
  %xor787 = xor i32 %787, %or786
  %arrayidx788 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 3
  %790 = load i32, i32* %arrayidx788, align 4
  %add789 = add i32 %xor787, %790
  %add790 = add i32 %add789, -1894986606
  %791 = load i32, i32* %d, align 4
  %add791 = add i32 %791, %add790
  store i32 %add791, i32* %d, align 4
  %792 = load i32, i32* %d, align 4
  store i32 %792, i32* %d, align 4
  %793 = load i32, i32* %d, align 4
  %shl792 = shl i32 %793, 10
  %794 = load i32, i32* %d, align 4
  %shr793 = lshr i32 %794, 22
  %or794 = or i32 %shl792, %shr793
  store i32 %or794, i32* %d, align 4
  %795 = load i32, i32* %a, align 4
  %796 = load i32, i32* %d, align 4
  %add795 = add i32 %796, %795
  store i32 %add795, i32* %d, align 4
  %797 = load i32, i32* %d, align 4
  store i32 %797, i32* %d, align 4
  %798 = load i32, i32* %a, align 4
  %799 = load i32, i32* %d, align 4
  %800 = load i32, i32* %b, align 4
  %neg796 = xor i32 %800, -1
  %or797 = or i32 %799, %neg796
  %xor798 = xor i32 %798, %or797
  %arrayidx799 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 10
  %801 = load i32, i32* %arrayidx799, align 4
  %add800 = add i32 %xor798, %801
  %add801 = add i32 %add800, -1051523
  %802 = load i32, i32* %c, align 4
  %add802 = add i32 %802, %add801
  store i32 %add802, i32* %c, align 4
  %803 = load i32, i32* %c, align 4
  store i32 %803, i32* %c, align 4
  %804 = load i32, i32* %c, align 4
  %shl803 = shl i32 %804, 15
  %805 = load i32, i32* %c, align 4
  %shr804 = lshr i32 %805, 17
  %or805 = or i32 %shl803, %shr804
  store i32 %or805, i32* %c, align 4
  %806 = load i32, i32* %d, align 4
  %807 = load i32, i32* %c, align 4
  %add806 = add i32 %807, %806
  store i32 %add806, i32* %c, align 4
  %808 = load i32, i32* %c, align 4
  store i32 %808, i32* %c, align 4
  %809 = load i32, i32* %d, align 4
  %810 = load i32, i32* %c, align 4
  %811 = load i32, i32* %a, align 4
  %neg807 = xor i32 %811, -1
  %or808 = or i32 %810, %neg807
  %xor809 = xor i32 %809, %or808
  %arrayidx810 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 1
  %812 = load i32, i32* %arrayidx810, align 4
  %add811 = add i32 %xor809, %812
  %add812 = add i32 %add811, -2054922799
  %813 = load i32, i32* %b, align 4
  %add813 = add i32 %813, %add812
  store i32 %add813, i32* %b, align 4
  %814 = load i32, i32* %b, align 4
  store i32 %814, i32* %b, align 4
  %815 = load i32, i32* %b, align 4
  %shl814 = shl i32 %815, 21
  %816 = load i32, i32* %b, align 4
  %shr815 = lshr i32 %816, 11
  %or816 = or i32 %shl814, %shr815
  store i32 %or816, i32* %b, align 4
  %817 = load i32, i32* %c, align 4
  %818 = load i32, i32* %b, align 4
  %add817 = add i32 %818, %817
  store i32 %add817, i32* %b, align 4
  %819 = load i32, i32* %b, align 4
  store i32 %819, i32* %b, align 4
  %820 = load i32, i32* %c, align 4
  %821 = load i32, i32* %b, align 4
  %822 = load i32, i32* %d, align 4
  %neg818 = xor i32 %822, -1
  %or819 = or i32 %821, %neg818
  %xor820 = xor i32 %820, %or819
  %arrayidx821 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 8
  %823 = load i32, i32* %arrayidx821, align 4
  %add822 = add i32 %xor820, %823
  %add823 = add i32 %add822, 1873313359
  %824 = load i32, i32* %a, align 4
  %add824 = add i32 %824, %add823
  store i32 %add824, i32* %a, align 4
  %825 = load i32, i32* %a, align 4
  store i32 %825, i32* %a, align 4
  %826 = load i32, i32* %a, align 4
  %shl825 = shl i32 %826, 6
  %827 = load i32, i32* %a, align 4
  %shr826 = lshr i32 %827, 26
  %or827 = or i32 %shl825, %shr826
  store i32 %or827, i32* %a, align 4
  %828 = load i32, i32* %b, align 4
  %829 = load i32, i32* %a, align 4
  %add828 = add i32 %829, %828
  store i32 %add828, i32* %a, align 4
  %830 = load i32, i32* %a, align 4
  store i32 %830, i32* %a, align 4
  %831 = load i32, i32* %b, align 4
  %832 = load i32, i32* %a, align 4
  %833 = load i32, i32* %c, align 4
  %neg829 = xor i32 %833, -1
  %or830 = or i32 %832, %neg829
  %xor831 = xor i32 %831, %or830
  %arrayidx832 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 15
  %834 = load i32, i32* %arrayidx832, align 4
  %add833 = add i32 %xor831, %834
  %add834 = add i32 %add833, -30611744
  %835 = load i32, i32* %d, align 4
  %add835 = add i32 %835, %add834
  store i32 %add835, i32* %d, align 4
  %836 = load i32, i32* %d, align 4
  store i32 %836, i32* %d, align 4
  %837 = load i32, i32* %d, align 4
  %shl836 = shl i32 %837, 10
  %838 = load i32, i32* %d, align 4
  %shr837 = lshr i32 %838, 22
  %or838 = or i32 %shl836, %shr837
  store i32 %or838, i32* %d, align 4
  %839 = load i32, i32* %a, align 4
  %840 = load i32, i32* %d, align 4
  %add839 = add i32 %840, %839
  store i32 %add839, i32* %d, align 4
  %841 = load i32, i32* %d, align 4
  store i32 %841, i32* %d, align 4
  %842 = load i32, i32* %a, align 4
  %843 = load i32, i32* %d, align 4
  %844 = load i32, i32* %b, align 4
  %neg840 = xor i32 %844, -1
  %or841 = or i32 %843, %neg840
  %xor842 = xor i32 %842, %or841
  %arrayidx843 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 6
  %845 = load i32, i32* %arrayidx843, align 4
  %add844 = add i32 %xor842, %845
  %add845 = add i32 %add844, -1560198380
  %846 = load i32, i32* %c, align 4
  %add846 = add i32 %846, %add845
  store i32 %add846, i32* %c, align 4
  %847 = load i32, i32* %c, align 4
  store i32 %847, i32* %c, align 4
  %848 = load i32, i32* %c, align 4
  %shl847 = shl i32 %848, 15
  %849 = load i32, i32* %c, align 4
  %shr848 = lshr i32 %849, 17
  %or849 = or i32 %shl847, %shr848
  store i32 %or849, i32* %c, align 4
  %850 = load i32, i32* %d, align 4
  %851 = load i32, i32* %c, align 4
  %add850 = add i32 %851, %850
  store i32 %add850, i32* %c, align 4
  %852 = load i32, i32* %c, align 4
  store i32 %852, i32* %c, align 4
  %853 = load i32, i32* %d, align 4
  %854 = load i32, i32* %c, align 4
  %855 = load i32, i32* %a, align 4
  %neg851 = xor i32 %855, -1
  %or852 = or i32 %854, %neg851
  %xor853 = xor i32 %853, %or852
  %arrayidx854 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 13
  %856 = load i32, i32* %arrayidx854, align 4
  %add855 = add i32 %xor853, %856
  %add856 = add i32 %add855, 1309151649
  %857 = load i32, i32* %b, align 4
  %add857 = add i32 %857, %add856
  store i32 %add857, i32* %b, align 4
  %858 = load i32, i32* %b, align 4
  store i32 %858, i32* %b, align 4
  %859 = load i32, i32* %b, align 4
  %shl858 = shl i32 %859, 21
  %860 = load i32, i32* %b, align 4
  %shr859 = lshr i32 %860, 11
  %or860 = or i32 %shl858, %shr859
  store i32 %or860, i32* %b, align 4
  %861 = load i32, i32* %c, align 4
  %862 = load i32, i32* %b, align 4
  %add861 = add i32 %862, %861
  store i32 %add861, i32* %b, align 4
  %863 = load i32, i32* %b, align 4
  store i32 %863, i32* %b, align 4
  %864 = load i32, i32* %c, align 4
  %865 = load i32, i32* %b, align 4
  %866 = load i32, i32* %d, align 4
  %neg862 = xor i32 %866, -1
  %or863 = or i32 %865, %neg862
  %xor864 = xor i32 %864, %or863
  %arrayidx865 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 4
  %867 = load i32, i32* %arrayidx865, align 4
  %add866 = add i32 %xor864, %867
  %add867 = add i32 %add866, -145523070
  %868 = load i32, i32* %a, align 4
  %add868 = add i32 %868, %add867
  store i32 %add868, i32* %a, align 4
  %869 = load i32, i32* %a, align 4
  store i32 %869, i32* %a, align 4
  %870 = load i32, i32* %a, align 4
  %shl869 = shl i32 %870, 6
  %871 = load i32, i32* %a, align 4
  %shr870 = lshr i32 %871, 26
  %or871 = or i32 %shl869, %shr870
  store i32 %or871, i32* %a, align 4
  %872 = load i32, i32* %b, align 4
  %873 = load i32, i32* %a, align 4
  %add872 = add i32 %873, %872
  store i32 %add872, i32* %a, align 4
  %874 = load i32, i32* %a, align 4
  store i32 %874, i32* %a, align 4
  %875 = load i32, i32* %b, align 4
  %876 = load i32, i32* %a, align 4
  %877 = load i32, i32* %c, align 4
  %neg873 = xor i32 %877, -1
  %or874 = or i32 %876, %neg873
  %xor875 = xor i32 %875, %or874
  %arrayidx876 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 11
  %878 = load i32, i32* %arrayidx876, align 4
  %add877 = add i32 %xor875, %878
  %add878 = add i32 %add877, -1120210379
  %879 = load i32, i32* %d, align 4
  %add879 = add i32 %879, %add878
  store i32 %add879, i32* %d, align 4
  %880 = load i32, i32* %d, align 4
  store i32 %880, i32* %d, align 4
  %881 = load i32, i32* %d, align 4
  %shl880 = shl i32 %881, 10
  %882 = load i32, i32* %d, align 4
  %shr881 = lshr i32 %882, 22
  %or882 = or i32 %shl880, %shr881
  store i32 %or882, i32* %d, align 4
  %883 = load i32, i32* %a, align 4
  %884 = load i32, i32* %d, align 4
  %add883 = add i32 %884, %883
  store i32 %add883, i32* %d, align 4
  %885 = load i32, i32* %d, align 4
  store i32 %885, i32* %d, align 4
  %886 = load i32, i32* %a, align 4
  %887 = load i32, i32* %d, align 4
  %888 = load i32, i32* %b, align 4
  %neg884 = xor i32 %888, -1
  %or885 = or i32 %887, %neg884
  %xor886 = xor i32 %886, %or885
  %arrayidx887 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 2
  %889 = load i32, i32* %arrayidx887, align 4
  %add888 = add i32 %xor886, %889
  %add889 = add i32 %add888, 718787259
  %890 = load i32, i32* %c, align 4
  %add890 = add i32 %890, %add889
  store i32 %add890, i32* %c, align 4
  %891 = load i32, i32* %c, align 4
  store i32 %891, i32* %c, align 4
  %892 = load i32, i32* %c, align 4
  %shl891 = shl i32 %892, 15
  %893 = load i32, i32* %c, align 4
  %shr892 = lshr i32 %893, 17
  %or893 = or i32 %shl891, %shr892
  store i32 %or893, i32* %c, align 4
  %894 = load i32, i32* %d, align 4
  %895 = load i32, i32* %c, align 4
  %add894 = add i32 %895, %894
  store i32 %add894, i32* %c, align 4
  %896 = load i32, i32* %c, align 4
  store i32 %896, i32* %c, align 4
  %897 = load i32, i32* %d, align 4
  %898 = load i32, i32* %c, align 4
  %899 = load i32, i32* %a, align 4
  %neg895 = xor i32 %899, -1
  %or896 = or i32 %898, %neg895
  %xor897 = xor i32 %897, %or896
  %arrayidx898 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i32 0, i64 9
  %900 = load i32, i32* %arrayidx898, align 4
  %add899 = add i32 %xor897, %900
  %add900 = add i32 %add899, -343485551
  %901 = load i32, i32* %b, align 4
  %add901 = add i32 %901, %add900
  store i32 %add901, i32* %b, align 4
  %902 = load i32, i32* %b, align 4
  store i32 %902, i32* %b, align 4
  %903 = load i32, i32* %b, align 4
  %shl902 = shl i32 %903, 21
  %904 = load i32, i32* %b, align 4
  %shr903 = lshr i32 %904, 11
  %or904 = or i32 %shl902, %shr903
  store i32 %or904, i32* %b, align 4
  %905 = load i32, i32* %c, align 4
  %906 = load i32, i32* %b, align 4
  %add905 = add i32 %906, %905
  store i32 %add905, i32* %b, align 4
  %907 = load i32, i32* %b, align 4
  store i32 %907, i32* %b, align 4
  %908 = load i32, i32* %a, align 4
  %909 = load i32, i32* %A, align 4
  %add906 = add i32 %909, %908
  store i32 %add906, i32* %A, align 4
  %910 = load i32, i32* %A, align 4
  store i32 %910, i32* %A, align 4
  %911 = load i32, i32* %b, align 4
  %912 = load i32, i32* %B, align 4
  %add907 = add i32 %912, %911
  store i32 %add907, i32* %B, align 4
  %913 = load i32, i32* %B, align 4
  store i32 %913, i32* %B, align 4
  %914 = load i32, i32* %c, align 4
  %915 = load i32, i32* %C, align 4
  %add908 = add i32 %915, %914
  store i32 %add908, i32* %C, align 4
  %916 = load i32, i32* %C, align 4
  store i32 %916, i32* %C, align 4
  %917 = load i32, i32* %d, align 4
  %918 = load i32, i32* %D, align 4
  %add909 = add i32 %918, %917
  store i32 %add909, i32* %D, align 4
  %919 = load i32, i32* %D, align 4
  store i32 %919, i32* %D, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %920 = load i64, i64* %blocks.addr, align 8
  %dec = add i64 %920, -1
  store i64 %dec, i64* %blocks.addr, align 8
  %tobool = icmp ne i64 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %921 = load i32, i32* %A, align 4
  %922 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %A910 = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %922, i32 0, i32 1
  store i32 %921, i32* %A910, align 4
  %923 = load i32, i32* %B, align 4
  %924 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %B911 = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %924, i32 0, i32 2
  store i32 %923, i32* %B911, align 4
  %925 = load i32, i32* %C, align 4
  %926 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %C912 = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %926, i32 0, i32 3
  store i32 %925, i32* %C912, align 4
  %927 = load i32, i32* %D, align 4
  %928 = load %struct.MD5_CTX*, %struct.MD5_CTX** %ctx.addr, align 8
  %D913 = getelementptr inbounds %struct.MD5_CTX, %struct.MD5_CTX* %928, i32 0, i32 4
  store i32 %927, i32* %D913, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @u2s(i32 %u, i8* %s) #0 {
entry:
  %u.addr = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  store i32 %u, i32* %u.addr, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i32, i32* %u.addr, align 4
  %and = and i32 %0, 255
  %conv = trunc i32 %and to i8
  %1 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  store i8 %conv, i8* %1, align 1
  %2 = load i32, i32* %u.addr, align 4
  %shr = lshr i32 %2, 8
  %and1 = and i32 %shr, 255
  %conv2 = trunc i32 %and1 to i8
  %3 = load i8*, i8** %s.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr3, i8** %s.addr, align 8
  store i8 %conv2, i8* %3, align 1
  %4 = load i32, i32* %u.addr, align 4
  %shr4 = lshr i32 %4, 16
  %and5 = and i32 %shr4, 255
  %conv6 = trunc i32 %and5 to i8
  %5 = load i8*, i8** %s.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr7, i8** %s.addr, align 8
  store i8 %conv6, i8* %5, align 1
  %6 = load i32, i32* %u.addr, align 4
  %shr8 = lshr i32 %6, 24
  %and9 = and i32 %shr8, 255
  %conv10 = trunc i32 %and9 to i8
  %7 = load i8*, i8** %s.addr, align 8
  store i8 %conv10, i8* %7, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @hex_16(i8* %from, i8* %to) #0 {
entry:
  %from.addr = alloca i8*, align 8
  %to.addr = alloca i8*, align 8
  %end = alloca i8*, align 8
  %d = alloca i8*, align 8
  store i8* %from, i8** %from.addr, align 8
  store i8* %to, i8** %to.addr, align 8
  %0 = load i8*, i8** %from.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 16
  store i8* %add.ptr, i8** %end, align 8
  %1 = load i8*, i8** %to.addr, align 8
  store i8* %1, i8** %d, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %from.addr, align 8
  %3 = load i8*, i8** %end, align 8
  %cmp = icmp ult i8* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %from.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %shr = ashr i32 %conv, 4
  %idxprom = sext i32 %shr to i64
  %6 = load i8*, i8** @hex_16.hexdigits, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %8 = load i8*, i8** %d, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %d, align 8
  store i8 %7, i8* %8, align 1
  %9 = load i8*, i8** %from.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv1 = zext i8 %10 to i32
  %and = and i32 %conv1, 15
  %idxprom2 = sext i32 %and to i64
  %11 = load i8*, i8** @hex_16.hexdigits, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %11, i64 %idxprom2
  %12 = load i8, i8* %arrayidx3, align 1
  %13 = load i8*, i8** %d, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr4, i8** %d, align 8
  store i8 %12, i8* %13, align 1
  %14 = load i8*, i8** %from.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr5, i8** %from.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i8*, i8** %d, align 8
  store i8 0, i8* %15, align 1
  %16 = load i8*, i8** %to.addr, align 8
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define internal i8* @base64_16(i8* %from, i8* %to) #0 {
entry:
  %from.addr = alloca i8*, align 8
  %to.addr = alloca i8*, align 8
  %end = alloca i8*, align 8
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %c3 = alloca i8, align 1
  %d = alloca i8*, align 8
  store i8* %from, i8** %from.addr, align 8
  store i8* %to, i8** %to.addr, align 8
  %0 = load i8*, i8** %from.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 16
  store i8* %add.ptr, i8** %end, align 8
  %1 = load i8*, i8** %to.addr, align 8
  store i8* %1, i8** %d, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %2 = load i8*, i8** %from.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %from.addr, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %c1, align 1
  %4 = load i8, i8* %c1, align 1
  %conv = zext i8 %4 to i32
  %shr = ashr i32 %conv, 2
  %idxprom = sext i32 %shr to i64
  %5 = load i8*, i8** @base64_16.base64, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %7 = load i8*, i8** %d, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr1, i8** %d, align 8
  store i8 %6, i8* %7, align 1
  %8 = load i8*, i8** %from.addr, align 8
  %9 = load i8*, i8** %end, align 8
  %cmp = icmp eq i8* %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %10 = load i8, i8* %c1, align 1
  %conv3 = zext i8 %10 to i32
  %and = and i32 %conv3, 3
  %shl = shl i32 %and, 4
  %idxprom4 = sext i32 %shl to i64
  %11 = load i8*, i8** @base64_16.base64, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %11, i64 %idxprom4
  %12 = load i8, i8* %arrayidx5, align 1
  %13 = load i8*, i8** %d, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr6, i8** %d, align 8
  store i8 %12, i8* %13, align 1
  br label %while.end

if.end:                                           ; preds = %while.body
  %14 = load i8*, i8** %from.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr7, i8** %from.addr, align 8
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %c2, align 1
  %16 = load i8*, i8** %from.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr8, i8** %from.addr, align 8
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %c3, align 1
  %18 = load i8, i8* %c1, align 1
  %conv9 = zext i8 %18 to i32
  %and10 = and i32 %conv9, 3
  %shl11 = shl i32 %and10, 4
  %19 = load i8, i8* %c2, align 1
  %conv12 = zext i8 %19 to i32
  %and13 = and i32 %conv12, 240
  %shr14 = ashr i32 %and13, 4
  %or = or i32 %shl11, %shr14
  %idxprom15 = sext i32 %or to i64
  %20 = load i8*, i8** @base64_16.base64, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %20, i64 %idxprom15
  %21 = load i8, i8* %arrayidx16, align 1
  %22 = load i8*, i8** %d, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr17, i8** %d, align 8
  store i8 %21, i8* %22, align 1
  %23 = load i8, i8* %c2, align 1
  %conv18 = zext i8 %23 to i32
  %and19 = and i32 %conv18, 15
  %shl20 = shl i32 %and19, 2
  %24 = load i8, i8* %c3, align 1
  %conv21 = zext i8 %24 to i32
  %and22 = and i32 %conv21, 192
  %shr23 = ashr i32 %and22, 6
  %or24 = or i32 %shl20, %shr23
  %idxprom25 = sext i32 %or24 to i64
  %25 = load i8*, i8** @base64_16.base64, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %25, i64 %idxprom25
  %26 = load i8, i8* %arrayidx26, align 1
  %27 = load i8*, i8** %d, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr27, i8** %d, align 8
  store i8 %26, i8* %27, align 1
  %28 = load i8, i8* %c3, align 1
  %conv28 = zext i8 %28 to i32
  %and29 = and i32 %conv28, 63
  %idxprom30 = sext i32 %and29 to i64
  %29 = load i8*, i8** @base64_16.base64, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %29, i64 %idxprom30
  %30 = load i8, i8* %arrayidx31, align 1
  %31 = load i8*, i8** %d, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr32, i8** %d, align 8
  store i8 %30, i8* %31, align 1
  br label %while.body

while.end:                                        ; preds = %if.then
  %32 = load i8*, i8** %d, align 8
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %to.addr, align 8
  ret i8* %33
}

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

declare %struct.sv* @Perl_newSVpv(i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
