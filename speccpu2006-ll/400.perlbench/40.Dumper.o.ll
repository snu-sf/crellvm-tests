; ModuleID = 'Dumper.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.xpv = type { i8*, i64, i64 }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.interpreter = type { i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, {}*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.xrv = type { %struct.sv* }
%struct.xpviv = type { i8*, i64, i64, i64 }
%struct.xpvnv = type { i8*, i64, i64, i64, double }
%struct.xpvmg = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv* }
%struct.xpvuv = type { i8*, i64, i64, i64 }

@PL_stack_sp = external global %struct.sv**, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_markstack_ptr = external global i32*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Usage: Data::Dumper::Dumpxs(href, ...)\00", align 1
@PL_op = external global %struct.op*, align 8
@.str.1 = private unnamed_addr constant [66 x i8] c"Usage: Data::Dumper::Dumpxs(PACKAGE, VAL_ARY_REF, [NAME_ARY_REF])\00", align 1
@PL_tmps_floor = external global i32, align 4
@PL_tmps_ix = external global i32, align 4
@PL_markstack_max = external global i32*, align 8
@PL_stack_max = external global %struct.sv**, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"seen\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"todump\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"purity\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"terse\00", align 1
@PL_Xpv = external global %struct.xpv*, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"xpad\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"apad\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"sep\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"pair\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"varname\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"freezer\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"toaster\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"deepcopy\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"quotekeys\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"bless\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"maxdepth\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"sortkeys\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@.str.23 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"Call to new() method failed to return HASH ref\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"Dumper.c\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"Data::Dumper::Dumpxs\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"$;$$\00", align 1
@PL_errgv = external global %struct.gv*, align 8
@.str.32 = private unnamed_addr constant [40 x i8] c"WARNING(Freezer method call failed): %_\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"do{my $o}\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"ref name not found for %s\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"\5C\00", align 1
@PL_Sv = external global %struct.sv*, align 8
@.str.41 = private unnamed_addr constant [7 x i8] c"Regexp\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"qr/\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"\5C/\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"( \00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"${\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"do{\5C(my $o = \00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c")}\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"*{\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"{SCALAR}\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"{ARRAY}\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"{HASH}\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.61 = private unnamed_addr constant [45 x i8] c"Sortkeys subroutine did not return ARRAYREF\0A\00", align 1
@PL_curcop = external global %struct.cop*, align 8
@.str.62 = private unnamed_addr constant [16 x i8] c"sub { \22DUMMY\22 }\00", align 1
@.str.63 = private unnamed_addr constant [46 x i8] c"Encountered CODE ref, using dummy placeholder\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"cannot handle ref type %ld\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c", '\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"' )\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"main::\00", align 1
@DD_dump.entries = internal global [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0)], align 16
@DD_dump.sizes = internal global [3 x i64] [i64 8, i64 7, i64 6], align 16
@.str.71 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@PL_utf8skip = external constant [0 x i8], align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"\5Cx{%lx}\00", align 1

; Function Attrs: nounwind uwtable
define void @XS_Data__Dumper_Dumpxs(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %href = alloca %struct.sv*, align 8
  %hv = alloca %struct.hv*, align 8
  %retval = alloca %struct.sv*, align 8
  %valstr = alloca %struct.sv*, align 8
  %seenhv = alloca %struct.hv*, align 8
  %postav = alloca %struct.av*, align 8
  %todumpav = alloca %struct.av*, align 8
  %namesav = alloca %struct.av*, align 8
  %level = alloca i32, align 4
  %indent = alloca i32, align 4
  %terse = alloca i32, align 4
  %i = alloca i32, align 4
  %imax = alloca i32, align 4
  %postlen = alloca i32, align 4
  %svp = alloca %struct.sv**, align 8
  %val = alloca %struct.sv*, align 8
  %name = alloca %struct.sv*, align 8
  %pad = alloca %struct.sv*, align 8
  %xpad = alloca %struct.sv*, align 8
  %apad = alloca %struct.sv*, align 8
  %sep = alloca %struct.sv*, align 8
  %pair = alloca %struct.sv*, align 8
  %varname = alloca %struct.sv*, align 8
  %freezer = alloca %struct.sv*, align 8
  %toaster = alloca %struct.sv*, align 8
  %bless = alloca %struct.sv*, align 8
  %sortkeys = alloca %struct.sv*, align 8
  %purity = alloca i32, align 4
  %deepcopy = alloca i32, align 4
  %quotekeys = alloca i32, align 4
  %maxdepth = alloca i32, align 4
  %tmpbuf = alloca [1024 x i8], align 16
  %gimme = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp43 = alloca %struct.sv*, align 8
  %tmp54 = alloca %struct.sv*, align 8
  %tmp73 = alloca %struct.sv*, align 8
  %newapad = alloca %struct.sv*, align 8
  %nchars = alloca i64, align 8
  %tmpsv = alloca %struct.sv*, align 8
  %i569 = alloca i32, align 4
  %elem = alloca %struct.sv*, align 8
  %tmp598 = alloca %struct.sv*, align 8
  %tmp624 = alloca %struct.sv*, align 8
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
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0))
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
  store %struct.sv* %13, %struct.sv** %href, align 8
  store %struct.hv* null, %struct.hv** %seenhv, align 8
  store i32 0, i32* %level, align 4
  store i32 0, i32* %maxdepth, align 4
  %14 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %14, i32 0, i32 6
  %15 = load i8, i8* %op_flags, align 1
  %conv10 = zext i8 %15 to i32
  %and = and i32 %conv10, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %16 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags11 = getelementptr inbounds %struct.op, %struct.op* %16, i32 0, i32 6
  %17 = load i8, i8* %op_flags11, align 1
  %conv12 = zext i8 %17 to i32
  %and13 = and i32 %conv12, 3
  %cmp14 = icmp eq i32 %and13, 3
  %cond = select i1 %cmp14, i32 1, i32 0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call i32 @Perl_dowantarray()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond16 = phi i32 [ %cond, %cond.true ], [ %call, %cond.false ]
  store i32 %cond16, i32* %gimme, align 4
  %18 = load %struct.sv*, %struct.sv** %href, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 2
  %19 = load i32, i32* %sv_flags, align 4
  %and17 = and i32 %19, 524288
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.end.95, label %if.then.19

if.then.19:                                       ; preds = %cond.end
  %20 = load i32, i32* %items, align 4
  %cmp20 = icmp slt i32 %20, 2
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.19
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.19
  call void @Perl_push_scope()
  call void @Perl_save_int(i32* @PL_tmps_floor)
  %21 = load i32, i32* @PL_tmps_ix, align 4
  store i32 %21, i32* @PL_tmps_floor, align 4
  %22 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr24 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %incdec.ptr24, i32** @PL_markstack_ptr, align 8
  %23 = load i32*, i32** @PL_markstack_max, align 8
  %cmp25 = icmp eq i32* %incdec.ptr24, %23
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.23
  call void @Perl_markstack_grow()
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.23
  %24 = load %struct.sv**, %struct.sv*** %sp, align 8
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast29 = ptrtoint %struct.sv** %24 to i64
  %sub.ptr.rhs.cast30 = ptrtoint %struct.sv** %25 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %sub.ptr.div32 = sdiv exact i64 %sub.ptr.sub31, 8
  %conv33 = trunc i64 %sub.ptr.div32 to i32
  %26 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv33, i32* %26, align 4
  store i32 %conv33, i32* %tmp
  %27 = load i32, i32* %tmp
  %28 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %29 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast34 = ptrtoint %struct.sv** %28 to i64
  %sub.ptr.rhs.cast35 = ptrtoint %struct.sv** %29 to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  %sub.ptr.div37 = sdiv exact i64 %sub.ptr.sub36, 8
  %cmp38 = icmp slt i64 %sub.ptr.div37, 1
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.28
  %30 = load %struct.sv**, %struct.sv*** %sp, align 8
  %31 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call41 = call %struct.sv** @Perl_stack_grow(%struct.sv** %30, %struct.sv** %31, i32 1)
  store %struct.sv** %call41, %struct.sv*** %sp, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.28
  %32 = load %struct.sv*, %struct.sv** %href, align 8
  %33 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr44 = getelementptr inbounds %struct.sv*, %struct.sv** %33, i32 1
  store %struct.sv** %incdec.ptr44, %struct.sv*** %sp, align 8
  store %struct.sv* %32, %struct.sv** %incdec.ptr44, align 8
  store %struct.sv* %32, %struct.sv** %tmp43
  %34 = load %struct.sv*, %struct.sv** %tmp43
  %35 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %36 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast45 = ptrtoint %struct.sv** %35 to i64
  %sub.ptr.rhs.cast46 = ptrtoint %struct.sv** %36 to i64
  %sub.ptr.sub47 = sub i64 %sub.ptr.lhs.cast45, %sub.ptr.rhs.cast46
  %sub.ptr.div48 = sdiv exact i64 %sub.ptr.sub47, 8
  %cmp49 = icmp slt i64 %sub.ptr.div48, 1
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.42
  %37 = load %struct.sv**, %struct.sv*** %sp, align 8
  %38 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call52 = call %struct.sv** @Perl_stack_grow(%struct.sv** %37, %struct.sv** %38, i32 1)
  store %struct.sv** %call52, %struct.sv*** %sp, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.42
  %39 = load i32, i32* %ax, align 4
  %add55 = add nsw i32 %39, 1
  %idxprom56 = sext i32 %add55 to i64
  %40 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx57 = getelementptr inbounds %struct.sv*, %struct.sv** %40, i64 %idxprom56
  %41 = load %struct.sv*, %struct.sv** %arrayidx57, align 8
  %call58 = call %struct.sv* @Perl_newSVsv(%struct.sv* %41)
  %call59 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call58)
  %42 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr60 = getelementptr inbounds %struct.sv*, %struct.sv** %42, i32 1
  store %struct.sv** %incdec.ptr60, %struct.sv*** %sp, align 8
  store %struct.sv* %call59, %struct.sv** %incdec.ptr60, align 8
  store %struct.sv* %call59, %struct.sv** %tmp54
  %43 = load %struct.sv*, %struct.sv** %tmp54
  %44 = load i32, i32* %items, align 4
  %cmp61 = icmp sge i32 %44, 3
  br i1 %cmp61, label %if.then.63, label %if.end.80

if.then.63:                                       ; preds = %if.end.53
  %45 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %46 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast64 = ptrtoint %struct.sv** %45 to i64
  %sub.ptr.rhs.cast65 = ptrtoint %struct.sv** %46 to i64
  %sub.ptr.sub66 = sub i64 %sub.ptr.lhs.cast64, %sub.ptr.rhs.cast65
  %sub.ptr.div67 = sdiv exact i64 %sub.ptr.sub66, 8
  %cmp68 = icmp slt i64 %sub.ptr.div67, 1
  br i1 %cmp68, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.then.63
  %47 = load %struct.sv**, %struct.sv*** %sp, align 8
  %48 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call71 = call %struct.sv** @Perl_stack_grow(%struct.sv** %47, %struct.sv** %48, i32 1)
  store %struct.sv** %call71, %struct.sv*** %sp, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.then.63
  %49 = load i32, i32* %ax, align 4
  %add74 = add nsw i32 %49, 2
  %idxprom75 = sext i32 %add74 to i64
  %50 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx76 = getelementptr inbounds %struct.sv*, %struct.sv** %50, i64 %idxprom75
  %51 = load %struct.sv*, %struct.sv** %arrayidx76, align 8
  %call77 = call %struct.sv* @Perl_newSVsv(%struct.sv* %51)
  %call78 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call77)
  %52 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr79 = getelementptr inbounds %struct.sv*, %struct.sv** %52, i32 1
  store %struct.sv** %incdec.ptr79, %struct.sv*** %sp, align 8
  store %struct.sv* %call78, %struct.sv** %incdec.ptr79, align 8
  store %struct.sv* %call78, %struct.sv** %tmp73
  %53 = load %struct.sv*, %struct.sv** %tmp73
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.72, %if.end.53
  %54 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %54, %struct.sv*** @PL_stack_sp, align 8
  %call81 = call i32 @Perl_call_method(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 0)
  store i32 %call81, i32* %i, align 4
  %55 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %55, %struct.sv*** %sp, align 8
  %56 = load i32, i32* %i, align 4
  %tobool82 = icmp ne i32 %56, 0
  br i1 %tobool82, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %if.end.80
  %57 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr84 = getelementptr inbounds %struct.sv*, %struct.sv** %57, i32 -1
  store %struct.sv** %incdec.ptr84, %struct.sv*** %sp, align 8
  %58 = load %struct.sv*, %struct.sv** %57, align 8
  %call85 = call %struct.sv* @Perl_newSVsv(%struct.sv* %58)
  store %struct.sv* %call85, %struct.sv** %href, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %if.end.80
  %59 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %59, %struct.sv*** @PL_stack_sp, align 8
  %60 = load i32, i32* @PL_tmps_ix, align 4
  %61 = load i32, i32* @PL_tmps_floor, align 4
  %cmp87 = icmp sgt i32 %60, %61
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.86
  call void @Perl_free_tmps()
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %if.end.86
  call void @Perl_pop_scope()
  %62 = load i32, i32* %i, align 4
  %tobool91 = icmp ne i32 %62, 0
  br i1 %tobool91, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %if.end.90
  %63 = load %struct.sv*, %struct.sv** %href, align 8
  %call93 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %63)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %if.end.90
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %cond.end
  store %struct.av* null, %struct.av** %namesav, align 8
  store %struct.av* null, %struct.av** %todumpav, align 8
  store %struct.hv* null, %struct.hv** %seenhv, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %bless, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %toaster, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %freezer, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %varname, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %pair, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %sep, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %apad, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %xpad, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %pad, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %val, align 8
  %call96 = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call96, %struct.sv** %name, align 8
  store i32 2, i32* %indent, align 4
  store i32 0, i32* %deepcopy, align 4
  store i32 0, i32* %purity, align 4
  store i32 0, i32* %terse, align 4
  store i32 1, i32* %quotekeys, align 4
  %call97 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i64 0)
  store %struct.sv* %call97, %struct.sv** %retval, align 8
  %64 = load %struct.sv*, %struct.sv** %href, align 8
  %sv_flags98 = getelementptr inbounds %struct.sv, %struct.sv* %64, i32 0, i32 2
  %65 = load i32, i32* %sv_flags98, align 4
  %and99 = and i32 %65, 524288
  %tobool100 = icmp ne i32 %and99, 0
  br i1 %tobool100, label %land.lhs.true, label %if.else.610

land.lhs.true:                                    ; preds = %if.end.95
  %66 = load %struct.sv*, %struct.sv** %href, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %66, i32 0, i32 0
  %67 = load i8*, i8** %sv_any, align 8
  %68 = bitcast i8* %67 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %68, i32 0, i32 0
  %69 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %70 = bitcast %struct.sv* %69 to %struct.hv*
  store %struct.hv* %70, %struct.hv** %hv, align 8
  %tobool101 = icmp ne %struct.hv* %70, null
  br i1 %tobool101, label %land.lhs.true.102, label %if.else.610

land.lhs.true.102:                                ; preds = %land.lhs.true
  %71 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_flags103 = getelementptr inbounds %struct.hv, %struct.hv* %71, i32 0, i32 2
  %72 = load i32, i32* %sv_flags103, align 4
  %and104 = and i32 %72, 255
  %cmp105 = icmp eq i32 %and104, 11
  br i1 %cmp105, label %if.then.107, label %if.else.610

if.then.107:                                      ; preds = %land.lhs.true.102
  %73 = load %struct.hv*, %struct.hv** %hv, align 8
  %call108 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 4, i32 0)
  store %struct.sv** %call108, %struct.sv*** %svp, align 8
  %tobool109 = icmp ne %struct.sv** %call108, null
  br i1 %tobool109, label %land.lhs.true.110, label %if.end.117

land.lhs.true.110:                                ; preds = %if.then.107
  %74 = load %struct.sv**, %struct.sv*** %svp, align 8
  %75 = load %struct.sv*, %struct.sv** %74, align 8
  %sv_flags111 = getelementptr inbounds %struct.sv, %struct.sv* %75, i32 0, i32 2
  %76 = load i32, i32* %sv_flags111, align 4
  %and112 = and i32 %76, 524288
  %tobool113 = icmp ne i32 %and112, 0
  br i1 %tobool113, label %if.then.114, label %if.end.117

if.then.114:                                      ; preds = %land.lhs.true.110
  %77 = load %struct.sv**, %struct.sv*** %svp, align 8
  %78 = load %struct.sv*, %struct.sv** %77, align 8
  %sv_any115 = getelementptr inbounds %struct.sv, %struct.sv* %78, i32 0, i32 0
  %79 = load i8*, i8** %sv_any115, align 8
  %80 = bitcast i8* %79 to %struct.xrv*
  %xrv_rv116 = getelementptr inbounds %struct.xrv, %struct.xrv* %80, i32 0, i32 0
  %81 = load %struct.sv*, %struct.sv** %xrv_rv116, align 8
  %82 = bitcast %struct.sv* %81 to %struct.hv*
  store %struct.hv* %82, %struct.hv** %seenhv, align 8
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.114, %land.lhs.true.110, %if.then.107
  %83 = load %struct.hv*, %struct.hv** %hv, align 8
  %call118 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 6, i32 0)
  store %struct.sv** %call118, %struct.sv*** %svp, align 8
  %tobool119 = icmp ne %struct.sv** %call118, null
  br i1 %tobool119, label %land.lhs.true.120, label %if.end.127

land.lhs.true.120:                                ; preds = %if.end.117
  %84 = load %struct.sv**, %struct.sv*** %svp, align 8
  %85 = load %struct.sv*, %struct.sv** %84, align 8
  %sv_flags121 = getelementptr inbounds %struct.sv, %struct.sv* %85, i32 0, i32 2
  %86 = load i32, i32* %sv_flags121, align 4
  %and122 = and i32 %86, 524288
  %tobool123 = icmp ne i32 %and122, 0
  br i1 %tobool123, label %if.then.124, label %if.end.127

if.then.124:                                      ; preds = %land.lhs.true.120
  %87 = load %struct.sv**, %struct.sv*** %svp, align 8
  %88 = load %struct.sv*, %struct.sv** %87, align 8
  %sv_any125 = getelementptr inbounds %struct.sv, %struct.sv* %88, i32 0, i32 0
  %89 = load i8*, i8** %sv_any125, align 8
  %90 = bitcast i8* %89 to %struct.xrv*
  %xrv_rv126 = getelementptr inbounds %struct.xrv, %struct.xrv* %90, i32 0, i32 0
  %91 = load %struct.sv*, %struct.sv** %xrv_rv126, align 8
  %92 = bitcast %struct.sv* %91 to %struct.av*
  store %struct.av* %92, %struct.av** %todumpav, align 8
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.124, %land.lhs.true.120, %if.end.117
  %93 = load %struct.hv*, %struct.hv** %hv, align 8
  %call128 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 5, i32 0)
  store %struct.sv** %call128, %struct.sv*** %svp, align 8
  %tobool129 = icmp ne %struct.sv** %call128, null
  br i1 %tobool129, label %land.lhs.true.130, label %if.end.137

land.lhs.true.130:                                ; preds = %if.end.127
  %94 = load %struct.sv**, %struct.sv*** %svp, align 8
  %95 = load %struct.sv*, %struct.sv** %94, align 8
  %sv_flags131 = getelementptr inbounds %struct.sv, %struct.sv* %95, i32 0, i32 2
  %96 = load i32, i32* %sv_flags131, align 4
  %and132 = and i32 %96, 524288
  %tobool133 = icmp ne i32 %and132, 0
  br i1 %tobool133, label %if.then.134, label %if.end.137

if.then.134:                                      ; preds = %land.lhs.true.130
  %97 = load %struct.sv**, %struct.sv*** %svp, align 8
  %98 = load %struct.sv*, %struct.sv** %97, align 8
  %sv_any135 = getelementptr inbounds %struct.sv, %struct.sv* %98, i32 0, i32 0
  %99 = load i8*, i8** %sv_any135, align 8
  %100 = bitcast i8* %99 to %struct.xrv*
  %xrv_rv136 = getelementptr inbounds %struct.xrv, %struct.xrv* %100, i32 0, i32 0
  %101 = load %struct.sv*, %struct.sv** %xrv_rv136, align 8
  %102 = bitcast %struct.sv* %101 to %struct.av*
  store %struct.av* %102, %struct.av** %namesav, align 8
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.134, %land.lhs.true.130, %if.end.127
  %103 = load %struct.hv*, %struct.hv** %hv, align 8
  %call138 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 6, i32 0)
  store %struct.sv** %call138, %struct.sv*** %svp, align 8
  %tobool139 = icmp ne %struct.sv** %call138, null
  br i1 %tobool139, label %if.then.140, label %if.end.151

if.then.140:                                      ; preds = %if.end.137
  %104 = load %struct.sv**, %struct.sv*** %svp, align 8
  %105 = load %struct.sv*, %struct.sv** %104, align 8
  %sv_flags141 = getelementptr inbounds %struct.sv, %struct.sv* %105, i32 0, i32 2
  %106 = load i32, i32* %sv_flags141, align 4
  %and142 = and i32 %106, 65536
  %tobool143 = icmp ne i32 %and142, 0
  br i1 %tobool143, label %cond.true.144, label %cond.false.146

cond.true.144:                                    ; preds = %if.then.140
  %107 = load %struct.sv**, %struct.sv*** %svp, align 8
  %108 = load %struct.sv*, %struct.sv** %107, align 8
  %sv_any145 = getelementptr inbounds %struct.sv, %struct.sv* %108, i32 0, i32 0
  %109 = load i8*, i8** %sv_any145, align 8
  %110 = bitcast i8* %109 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %110, i32 0, i32 3
  %111 = load i64, i64* %xiv_iv, align 8
  br label %cond.end.148

cond.false.146:                                   ; preds = %if.then.140
  %112 = load %struct.sv**, %struct.sv*** %svp, align 8
  %113 = load %struct.sv*, %struct.sv** %112, align 8
  %call147 = call i64 @Perl_sv_2iv(%struct.sv* %113)
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.false.146, %cond.true.144
  %cond149 = phi i64 [ %111, %cond.true.144 ], [ %call147, %cond.false.146 ]
  %conv150 = trunc i64 %cond149 to i32
  store i32 %conv150, i32* %indent, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %cond.end.148, %if.end.137
  %114 = load %struct.hv*, %struct.hv** %hv, align 8
  %call152 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 6, i32 0)
  store %struct.sv** %call152, %struct.sv*** %svp, align 8
  %tobool153 = icmp ne %struct.sv** %call152, null
  br i1 %tobool153, label %if.then.154, label %if.end.166

if.then.154:                                      ; preds = %if.end.151
  %115 = load %struct.sv**, %struct.sv*** %svp, align 8
  %116 = load %struct.sv*, %struct.sv** %115, align 8
  %sv_flags155 = getelementptr inbounds %struct.sv, %struct.sv* %116, i32 0, i32 2
  %117 = load i32, i32* %sv_flags155, align 4
  %and156 = and i32 %117, 65536
  %tobool157 = icmp ne i32 %and156, 0
  br i1 %tobool157, label %cond.true.158, label %cond.false.161

cond.true.158:                                    ; preds = %if.then.154
  %118 = load %struct.sv**, %struct.sv*** %svp, align 8
  %119 = load %struct.sv*, %struct.sv** %118, align 8
  %sv_any159 = getelementptr inbounds %struct.sv, %struct.sv* %119, i32 0, i32 0
  %120 = load i8*, i8** %sv_any159, align 8
  %121 = bitcast i8* %120 to %struct.xpviv*
  %xiv_iv160 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %121, i32 0, i32 3
  %122 = load i64, i64* %xiv_iv160, align 8
  br label %cond.end.163

cond.false.161:                                   ; preds = %if.then.154
  %123 = load %struct.sv**, %struct.sv*** %svp, align 8
  %124 = load %struct.sv*, %struct.sv** %123, align 8
  %call162 = call i64 @Perl_sv_2iv(%struct.sv* %124)
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.161, %cond.true.158
  %cond164 = phi i64 [ %122, %cond.true.158 ], [ %call162, %cond.false.161 ]
  %conv165 = trunc i64 %cond164 to i32
  store i32 %conv165, i32* %purity, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %cond.end.163, %if.end.151
  %125 = load %struct.hv*, %struct.hv** %hv, align 8
  %call167 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 5, i32 0)
  store %struct.sv** %call167, %struct.sv*** %svp, align 8
  %tobool168 = icmp ne %struct.sv** %call167, null
  br i1 %tobool168, label %if.then.169, label %if.end.217

if.then.169:                                      ; preds = %if.end.166
  %126 = load %struct.sv**, %struct.sv*** %svp, align 8
  %127 = load %struct.sv*, %struct.sv** %126, align 8
  %tobool170 = icmp ne %struct.sv* %127, null
  br i1 %tobool170, label %cond.false.172, label %cond.true.171

cond.true.171:                                    ; preds = %if.then.169
  br label %cond.end.215

cond.false.172:                                   ; preds = %if.then.169
  %128 = load %struct.sv**, %struct.sv*** %svp, align 8
  %129 = load %struct.sv*, %struct.sv** %128, align 8
  %sv_flags173 = getelementptr inbounds %struct.sv, %struct.sv* %129, i32 0, i32 2
  %130 = load i32, i32* %sv_flags173, align 4
  %and174 = and i32 %130, 262144
  %tobool175 = icmp ne i32 %and174, 0
  br i1 %tobool175, label %cond.true.176, label %cond.false.189

cond.true.176:                                    ; preds = %cond.false.172
  %131 = load %struct.sv**, %struct.sv*** %svp, align 8
  %132 = load %struct.sv*, %struct.sv** %131, align 8
  %sv_any177 = getelementptr inbounds %struct.sv, %struct.sv* %132, i32 0, i32 0
  %133 = load i8*, i8** %sv_any177, align 8
  %134 = bitcast i8* %133 to %struct.xpv*
  store %struct.xpv* %134, %struct.xpv** @PL_Xpv, align 8
  %tobool178 = icmp ne %struct.xpv* %134, null
  br i1 %tobool178, label %land.rhs, label %land.end.187

land.rhs:                                         ; preds = %cond.true.176
  %135 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %135, i32 0, i32 1
  %136 = load i64, i64* %xpv_cur, align 8
  %cmp179 = icmp ugt i64 %136, 1
  br i1 %cmp179, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %137 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur181 = getelementptr inbounds %struct.xpv, %struct.xpv* %137, i32 0, i32 1
  %138 = load i64, i64* %xpv_cur181, align 8
  %tobool182 = icmp ne i64 %138, 0
  br i1 %tobool182, label %land.rhs.183, label %land.end

land.rhs.183:                                     ; preds = %lor.rhs
  %139 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %139, i32 0, i32 0
  %140 = load i8*, i8** %xpv_pv, align 8
  %141 = load i8, i8* %140, align 1
  %conv184 = sext i8 %141 to i32
  %cmp185 = icmp ne i32 %conv184, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs.183, %lor.rhs
  %142 = phi i1 [ false, %lor.rhs ], [ %cmp185, %land.rhs.183 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %143 = phi i1 [ true, %land.rhs ], [ %142, %land.end ]
  br label %land.end.187

land.end.187:                                     ; preds = %lor.end, %cond.true.176
  %144 = phi i1 [ false, %cond.true.176 ], [ %143, %lor.end ]
  %cond188 = select i1 %144, i32 1, i32 0
  br label %cond.end.213

cond.false.189:                                   ; preds = %cond.false.172
  %145 = load %struct.sv**, %struct.sv*** %svp, align 8
  %146 = load %struct.sv*, %struct.sv** %145, align 8
  %sv_flags190 = getelementptr inbounds %struct.sv, %struct.sv* %146, i32 0, i32 2
  %147 = load i32, i32* %sv_flags190, align 4
  %and191 = and i32 %147, 65536
  %tobool192 = icmp ne i32 %and191, 0
  br i1 %tobool192, label %cond.true.193, label %cond.false.198

cond.true.193:                                    ; preds = %cond.false.189
  %148 = load %struct.sv**, %struct.sv*** %svp, align 8
  %149 = load %struct.sv*, %struct.sv** %148, align 8
  %sv_any194 = getelementptr inbounds %struct.sv, %struct.sv* %149, i32 0, i32 0
  %150 = load i8*, i8** %sv_any194, align 8
  %151 = bitcast i8* %150 to %struct.xpviv*
  %xiv_iv195 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %151, i32 0, i32 3
  %152 = load i64, i64* %xiv_iv195, align 8
  %cmp196 = icmp ne i64 %152, 0
  %conv197 = zext i1 %cmp196 to i32
  br label %cond.end.211

cond.false.198:                                   ; preds = %cond.false.189
  %153 = load %struct.sv**, %struct.sv*** %svp, align 8
  %154 = load %struct.sv*, %struct.sv** %153, align 8
  %sv_flags199 = getelementptr inbounds %struct.sv, %struct.sv* %154, i32 0, i32 2
  %155 = load i32, i32* %sv_flags199, align 4
  %and200 = and i32 %155, 131072
  %tobool201 = icmp ne i32 %and200, 0
  br i1 %tobool201, label %cond.true.202, label %cond.false.206

cond.true.202:                                    ; preds = %cond.false.198
  %156 = load %struct.sv**, %struct.sv*** %svp, align 8
  %157 = load %struct.sv*, %struct.sv** %156, align 8
  %sv_any203 = getelementptr inbounds %struct.sv, %struct.sv* %157, i32 0, i32 0
  %158 = load i8*, i8** %sv_any203, align 8
  %159 = bitcast i8* %158 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %159, i32 0, i32 4
  %160 = load double, double* %xnv_nv, align 8
  %cmp204 = fcmp une double %160, 0.000000e+00
  %conv205 = zext i1 %cmp204 to i32
  br label %cond.end.209

cond.false.206:                                   ; preds = %cond.false.198
  %161 = load %struct.sv**, %struct.sv*** %svp, align 8
  %162 = load %struct.sv*, %struct.sv** %161, align 8
  %call207 = call signext i8 @Perl_sv_2bool(%struct.sv* %162)
  %conv208 = sext i8 %call207 to i32
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.false.206, %cond.true.202
  %cond210 = phi i32 [ %conv205, %cond.true.202 ], [ %conv208, %cond.false.206 ]
  br label %cond.end.211

cond.end.211:                                     ; preds = %cond.end.209, %cond.true.193
  %cond212 = phi i32 [ %conv197, %cond.true.193 ], [ %cond210, %cond.end.209 ]
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.end.211, %land.end.187
  %cond214 = phi i32 [ %cond188, %land.end.187 ], [ %cond212, %cond.end.211 ]
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.end.213, %cond.true.171
  %cond216 = phi i32 [ 0, %cond.true.171 ], [ %cond214, %cond.end.213 ]
  store i32 %cond216, i32* %terse, align 4
  br label %if.end.217

if.end.217:                                       ; preds = %cond.end.215, %if.end.166
  %163 = load %struct.hv*, %struct.hv** %hv, align 8
  %call218 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 3, i32 0)
  store %struct.sv** %call218, %struct.sv*** %svp, align 8
  %tobool219 = icmp ne %struct.sv** %call218, null
  br i1 %tobool219, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %if.end.217
  %164 = load %struct.sv**, %struct.sv*** %svp, align 8
  %165 = load %struct.sv*, %struct.sv** %164, align 8
  store %struct.sv* %165, %struct.sv** %pad, align 8
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.220, %if.end.217
  %166 = load %struct.hv*, %struct.hv** %hv, align 8
  %call222 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 4, i32 0)
  store %struct.sv** %call222, %struct.sv*** %svp, align 8
  %tobool223 = icmp ne %struct.sv** %call222, null
  br i1 %tobool223, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %if.end.221
  %167 = load %struct.sv**, %struct.sv*** %svp, align 8
  %168 = load %struct.sv*, %struct.sv** %167, align 8
  store %struct.sv* %168, %struct.sv** %xpad, align 8
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.224, %if.end.221
  %169 = load %struct.hv*, %struct.hv** %hv, align 8
  %call226 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 4, i32 0)
  store %struct.sv** %call226, %struct.sv*** %svp, align 8
  %tobool227 = icmp ne %struct.sv** %call226, null
  br i1 %tobool227, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %if.end.225
  %170 = load %struct.sv**, %struct.sv*** %svp, align 8
  %171 = load %struct.sv*, %struct.sv** %170, align 8
  store %struct.sv* %171, %struct.sv** %apad, align 8
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.228, %if.end.225
  %172 = load %struct.hv*, %struct.hv** %hv, align 8
  %call230 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 3, i32 0)
  store %struct.sv** %call230, %struct.sv*** %svp, align 8
  %tobool231 = icmp ne %struct.sv** %call230, null
  br i1 %tobool231, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %if.end.229
  %173 = load %struct.sv**, %struct.sv*** %svp, align 8
  %174 = load %struct.sv*, %struct.sv** %173, align 8
  store %struct.sv* %174, %struct.sv** %sep, align 8
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.232, %if.end.229
  %175 = load %struct.hv*, %struct.hv** %hv, align 8
  %call234 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 4, i32 0)
  store %struct.sv** %call234, %struct.sv*** %svp, align 8
  %tobool235 = icmp ne %struct.sv** %call234, null
  br i1 %tobool235, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %if.end.233
  %176 = load %struct.sv**, %struct.sv*** %svp, align 8
  %177 = load %struct.sv*, %struct.sv** %176, align 8
  store %struct.sv* %177, %struct.sv** %pair, align 8
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.236, %if.end.233
  %178 = load %struct.hv*, %struct.hv** %hv, align 8
  %call238 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %178, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 7, i32 0)
  store %struct.sv** %call238, %struct.sv*** %svp, align 8
  %tobool239 = icmp ne %struct.sv** %call238, null
  br i1 %tobool239, label %if.then.240, label %if.end.241

if.then.240:                                      ; preds = %if.end.237
  %179 = load %struct.sv**, %struct.sv*** %svp, align 8
  %180 = load %struct.sv*, %struct.sv** %179, align 8
  store %struct.sv* %180, %struct.sv** %varname, align 8
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.240, %if.end.237
  %181 = load %struct.hv*, %struct.hv** %hv, align 8
  %call242 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %181, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 7, i32 0)
  store %struct.sv** %call242, %struct.sv*** %svp, align 8
  %tobool243 = icmp ne %struct.sv** %call242, null
  br i1 %tobool243, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %if.end.241
  %182 = load %struct.sv**, %struct.sv*** %svp, align 8
  %183 = load %struct.sv*, %struct.sv** %182, align 8
  store %struct.sv* %183, %struct.sv** %freezer, align 8
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.244, %if.end.241
  %184 = load %struct.hv*, %struct.hv** %hv, align 8
  %call246 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32 7, i32 0)
  store %struct.sv** %call246, %struct.sv*** %svp, align 8
  %tobool247 = icmp ne %struct.sv** %call246, null
  br i1 %tobool247, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %if.end.245
  %185 = load %struct.sv**, %struct.sv*** %svp, align 8
  %186 = load %struct.sv*, %struct.sv** %185, align 8
  store %struct.sv* %186, %struct.sv** %toaster, align 8
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.248, %if.end.245
  %187 = load %struct.hv*, %struct.hv** %hv, align 8
  %call250 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %187, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 8, i32 0)
  store %struct.sv** %call250, %struct.sv*** %svp, align 8
  %tobool251 = icmp ne %struct.sv** %call250, null
  br i1 %tobool251, label %if.then.252, label %if.end.307

if.then.252:                                      ; preds = %if.end.249
  %188 = load %struct.sv**, %struct.sv*** %svp, align 8
  %189 = load %struct.sv*, %struct.sv** %188, align 8
  %tobool253 = icmp ne %struct.sv* %189, null
  br i1 %tobool253, label %cond.false.255, label %cond.true.254

cond.true.254:                                    ; preds = %if.then.252
  br label %cond.end.305

cond.false.255:                                   ; preds = %if.then.252
  %190 = load %struct.sv**, %struct.sv*** %svp, align 8
  %191 = load %struct.sv*, %struct.sv** %190, align 8
  %sv_flags256 = getelementptr inbounds %struct.sv, %struct.sv* %191, i32 0, i32 2
  %192 = load i32, i32* %sv_flags256, align 4
  %and257 = and i32 %192, 262144
  %tobool258 = icmp ne i32 %and257, 0
  br i1 %tobool258, label %cond.true.259, label %cond.false.278

cond.true.259:                                    ; preds = %cond.false.255
  %193 = load %struct.sv**, %struct.sv*** %svp, align 8
  %194 = load %struct.sv*, %struct.sv** %193, align 8
  %sv_any260 = getelementptr inbounds %struct.sv, %struct.sv* %194, i32 0, i32 0
  %195 = load i8*, i8** %sv_any260, align 8
  %196 = bitcast i8* %195 to %struct.xpv*
  store %struct.xpv* %196, %struct.xpv** @PL_Xpv, align 8
  %tobool261 = icmp ne %struct.xpv* %196, null
  br i1 %tobool261, label %land.rhs.262, label %land.end.276

land.rhs.262:                                     ; preds = %cond.true.259
  %197 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur263 = getelementptr inbounds %struct.xpv, %struct.xpv* %197, i32 0, i32 1
  %198 = load i64, i64* %xpv_cur263, align 8
  %cmp264 = icmp ugt i64 %198, 1
  br i1 %cmp264, label %lor.end.275, label %lor.rhs.266

lor.rhs.266:                                      ; preds = %land.rhs.262
  %199 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur267 = getelementptr inbounds %struct.xpv, %struct.xpv* %199, i32 0, i32 1
  %200 = load i64, i64* %xpv_cur267, align 8
  %tobool268 = icmp ne i64 %200, 0
  br i1 %tobool268, label %land.rhs.269, label %land.end.274

land.rhs.269:                                     ; preds = %lor.rhs.266
  %201 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv270 = getelementptr inbounds %struct.xpv, %struct.xpv* %201, i32 0, i32 0
  %202 = load i8*, i8** %xpv_pv270, align 8
  %203 = load i8, i8* %202, align 1
  %conv271 = sext i8 %203 to i32
  %cmp272 = icmp ne i32 %conv271, 48
  br label %land.end.274

land.end.274:                                     ; preds = %land.rhs.269, %lor.rhs.266
  %204 = phi i1 [ false, %lor.rhs.266 ], [ %cmp272, %land.rhs.269 ]
  br label %lor.end.275

lor.end.275:                                      ; preds = %land.end.274, %land.rhs.262
  %205 = phi i1 [ true, %land.rhs.262 ], [ %204, %land.end.274 ]
  br label %land.end.276

land.end.276:                                     ; preds = %lor.end.275, %cond.true.259
  %206 = phi i1 [ false, %cond.true.259 ], [ %205, %lor.end.275 ]
  %cond277 = select i1 %206, i32 1, i32 0
  br label %cond.end.303

cond.false.278:                                   ; preds = %cond.false.255
  %207 = load %struct.sv**, %struct.sv*** %svp, align 8
  %208 = load %struct.sv*, %struct.sv** %207, align 8
  %sv_flags279 = getelementptr inbounds %struct.sv, %struct.sv* %208, i32 0, i32 2
  %209 = load i32, i32* %sv_flags279, align 4
  %and280 = and i32 %209, 65536
  %tobool281 = icmp ne i32 %and280, 0
  br i1 %tobool281, label %cond.true.282, label %cond.false.287

cond.true.282:                                    ; preds = %cond.false.278
  %210 = load %struct.sv**, %struct.sv*** %svp, align 8
  %211 = load %struct.sv*, %struct.sv** %210, align 8
  %sv_any283 = getelementptr inbounds %struct.sv, %struct.sv* %211, i32 0, i32 0
  %212 = load i8*, i8** %sv_any283, align 8
  %213 = bitcast i8* %212 to %struct.xpviv*
  %xiv_iv284 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %213, i32 0, i32 3
  %214 = load i64, i64* %xiv_iv284, align 8
  %cmp285 = icmp ne i64 %214, 0
  %conv286 = zext i1 %cmp285 to i32
  br label %cond.end.301

cond.false.287:                                   ; preds = %cond.false.278
  %215 = load %struct.sv**, %struct.sv*** %svp, align 8
  %216 = load %struct.sv*, %struct.sv** %215, align 8
  %sv_flags288 = getelementptr inbounds %struct.sv, %struct.sv* %216, i32 0, i32 2
  %217 = load i32, i32* %sv_flags288, align 4
  %and289 = and i32 %217, 131072
  %tobool290 = icmp ne i32 %and289, 0
  br i1 %tobool290, label %cond.true.291, label %cond.false.296

cond.true.291:                                    ; preds = %cond.false.287
  %218 = load %struct.sv**, %struct.sv*** %svp, align 8
  %219 = load %struct.sv*, %struct.sv** %218, align 8
  %sv_any292 = getelementptr inbounds %struct.sv, %struct.sv* %219, i32 0, i32 0
  %220 = load i8*, i8** %sv_any292, align 8
  %221 = bitcast i8* %220 to %struct.xpvnv*
  %xnv_nv293 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %221, i32 0, i32 4
  %222 = load double, double* %xnv_nv293, align 8
  %cmp294 = fcmp une double %222, 0.000000e+00
  %conv295 = zext i1 %cmp294 to i32
  br label %cond.end.299

cond.false.296:                                   ; preds = %cond.false.287
  %223 = load %struct.sv**, %struct.sv*** %svp, align 8
  %224 = load %struct.sv*, %struct.sv** %223, align 8
  %call297 = call signext i8 @Perl_sv_2bool(%struct.sv* %224)
  %conv298 = sext i8 %call297 to i32
  br label %cond.end.299

cond.end.299:                                     ; preds = %cond.false.296, %cond.true.291
  %cond300 = phi i32 [ %conv295, %cond.true.291 ], [ %conv298, %cond.false.296 ]
  br label %cond.end.301

cond.end.301:                                     ; preds = %cond.end.299, %cond.true.282
  %cond302 = phi i32 [ %conv286, %cond.true.282 ], [ %cond300, %cond.end.299 ]
  br label %cond.end.303

cond.end.303:                                     ; preds = %cond.end.301, %land.end.276
  %cond304 = phi i32 [ %cond277, %land.end.276 ], [ %cond302, %cond.end.301 ]
  br label %cond.end.305

cond.end.305:                                     ; preds = %cond.end.303, %cond.true.254
  %cond306 = phi i32 [ 0, %cond.true.254 ], [ %cond304, %cond.end.303 ]
  store i32 %cond306, i32* %deepcopy, align 4
  br label %if.end.307

if.end.307:                                       ; preds = %cond.end.305, %if.end.249
  %225 = load %struct.hv*, %struct.hv** %hv, align 8
  %call308 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %225, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i32 9, i32 0)
  store %struct.sv** %call308, %struct.sv*** %svp, align 8
  %tobool309 = icmp ne %struct.sv** %call308, null
  br i1 %tobool309, label %if.then.310, label %if.end.365

if.then.310:                                      ; preds = %if.end.307
  %226 = load %struct.sv**, %struct.sv*** %svp, align 8
  %227 = load %struct.sv*, %struct.sv** %226, align 8
  %tobool311 = icmp ne %struct.sv* %227, null
  br i1 %tobool311, label %cond.false.313, label %cond.true.312

cond.true.312:                                    ; preds = %if.then.310
  br label %cond.end.363

cond.false.313:                                   ; preds = %if.then.310
  %228 = load %struct.sv**, %struct.sv*** %svp, align 8
  %229 = load %struct.sv*, %struct.sv** %228, align 8
  %sv_flags314 = getelementptr inbounds %struct.sv, %struct.sv* %229, i32 0, i32 2
  %230 = load i32, i32* %sv_flags314, align 4
  %and315 = and i32 %230, 262144
  %tobool316 = icmp ne i32 %and315, 0
  br i1 %tobool316, label %cond.true.317, label %cond.false.336

cond.true.317:                                    ; preds = %cond.false.313
  %231 = load %struct.sv**, %struct.sv*** %svp, align 8
  %232 = load %struct.sv*, %struct.sv** %231, align 8
  %sv_any318 = getelementptr inbounds %struct.sv, %struct.sv* %232, i32 0, i32 0
  %233 = load i8*, i8** %sv_any318, align 8
  %234 = bitcast i8* %233 to %struct.xpv*
  store %struct.xpv* %234, %struct.xpv** @PL_Xpv, align 8
  %tobool319 = icmp ne %struct.xpv* %234, null
  br i1 %tobool319, label %land.rhs.320, label %land.end.334

land.rhs.320:                                     ; preds = %cond.true.317
  %235 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur321 = getelementptr inbounds %struct.xpv, %struct.xpv* %235, i32 0, i32 1
  %236 = load i64, i64* %xpv_cur321, align 8
  %cmp322 = icmp ugt i64 %236, 1
  br i1 %cmp322, label %lor.end.333, label %lor.rhs.324

lor.rhs.324:                                      ; preds = %land.rhs.320
  %237 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur325 = getelementptr inbounds %struct.xpv, %struct.xpv* %237, i32 0, i32 1
  %238 = load i64, i64* %xpv_cur325, align 8
  %tobool326 = icmp ne i64 %238, 0
  br i1 %tobool326, label %land.rhs.327, label %land.end.332

land.rhs.327:                                     ; preds = %lor.rhs.324
  %239 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv328 = getelementptr inbounds %struct.xpv, %struct.xpv* %239, i32 0, i32 0
  %240 = load i8*, i8** %xpv_pv328, align 8
  %241 = load i8, i8* %240, align 1
  %conv329 = sext i8 %241 to i32
  %cmp330 = icmp ne i32 %conv329, 48
  br label %land.end.332

land.end.332:                                     ; preds = %land.rhs.327, %lor.rhs.324
  %242 = phi i1 [ false, %lor.rhs.324 ], [ %cmp330, %land.rhs.327 ]
  br label %lor.end.333

lor.end.333:                                      ; preds = %land.end.332, %land.rhs.320
  %243 = phi i1 [ true, %land.rhs.320 ], [ %242, %land.end.332 ]
  br label %land.end.334

land.end.334:                                     ; preds = %lor.end.333, %cond.true.317
  %244 = phi i1 [ false, %cond.true.317 ], [ %243, %lor.end.333 ]
  %cond335 = select i1 %244, i32 1, i32 0
  br label %cond.end.361

cond.false.336:                                   ; preds = %cond.false.313
  %245 = load %struct.sv**, %struct.sv*** %svp, align 8
  %246 = load %struct.sv*, %struct.sv** %245, align 8
  %sv_flags337 = getelementptr inbounds %struct.sv, %struct.sv* %246, i32 0, i32 2
  %247 = load i32, i32* %sv_flags337, align 4
  %and338 = and i32 %247, 65536
  %tobool339 = icmp ne i32 %and338, 0
  br i1 %tobool339, label %cond.true.340, label %cond.false.345

cond.true.340:                                    ; preds = %cond.false.336
  %248 = load %struct.sv**, %struct.sv*** %svp, align 8
  %249 = load %struct.sv*, %struct.sv** %248, align 8
  %sv_any341 = getelementptr inbounds %struct.sv, %struct.sv* %249, i32 0, i32 0
  %250 = load i8*, i8** %sv_any341, align 8
  %251 = bitcast i8* %250 to %struct.xpviv*
  %xiv_iv342 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %251, i32 0, i32 3
  %252 = load i64, i64* %xiv_iv342, align 8
  %cmp343 = icmp ne i64 %252, 0
  %conv344 = zext i1 %cmp343 to i32
  br label %cond.end.359

cond.false.345:                                   ; preds = %cond.false.336
  %253 = load %struct.sv**, %struct.sv*** %svp, align 8
  %254 = load %struct.sv*, %struct.sv** %253, align 8
  %sv_flags346 = getelementptr inbounds %struct.sv, %struct.sv* %254, i32 0, i32 2
  %255 = load i32, i32* %sv_flags346, align 4
  %and347 = and i32 %255, 131072
  %tobool348 = icmp ne i32 %and347, 0
  br i1 %tobool348, label %cond.true.349, label %cond.false.354

cond.true.349:                                    ; preds = %cond.false.345
  %256 = load %struct.sv**, %struct.sv*** %svp, align 8
  %257 = load %struct.sv*, %struct.sv** %256, align 8
  %sv_any350 = getelementptr inbounds %struct.sv, %struct.sv* %257, i32 0, i32 0
  %258 = load i8*, i8** %sv_any350, align 8
  %259 = bitcast i8* %258 to %struct.xpvnv*
  %xnv_nv351 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %259, i32 0, i32 4
  %260 = load double, double* %xnv_nv351, align 8
  %cmp352 = fcmp une double %260, 0.000000e+00
  %conv353 = zext i1 %cmp352 to i32
  br label %cond.end.357

cond.false.354:                                   ; preds = %cond.false.345
  %261 = load %struct.sv**, %struct.sv*** %svp, align 8
  %262 = load %struct.sv*, %struct.sv** %261, align 8
  %call355 = call signext i8 @Perl_sv_2bool(%struct.sv* %262)
  %conv356 = sext i8 %call355 to i32
  br label %cond.end.357

cond.end.357:                                     ; preds = %cond.false.354, %cond.true.349
  %cond358 = phi i32 [ %conv353, %cond.true.349 ], [ %conv356, %cond.false.354 ]
  br label %cond.end.359

cond.end.359:                                     ; preds = %cond.end.357, %cond.true.340
  %cond360 = phi i32 [ %conv344, %cond.true.340 ], [ %cond358, %cond.end.357 ]
  br label %cond.end.361

cond.end.361:                                     ; preds = %cond.end.359, %land.end.334
  %cond362 = phi i32 [ %cond335, %land.end.334 ], [ %cond360, %cond.end.359 ]
  br label %cond.end.363

cond.end.363:                                     ; preds = %cond.end.361, %cond.true.312
  %cond364 = phi i32 [ 0, %cond.true.312 ], [ %cond362, %cond.end.361 ]
  store i32 %cond364, i32* %quotekeys, align 4
  br label %if.end.365

if.end.365:                                       ; preds = %cond.end.363, %if.end.307
  %263 = load %struct.hv*, %struct.hv** %hv, align 8
  %call366 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %263, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 5, i32 0)
  store %struct.sv** %call366, %struct.sv*** %svp, align 8
  %tobool367 = icmp ne %struct.sv** %call366, null
  br i1 %tobool367, label %if.then.368, label %if.end.369

if.then.368:                                      ; preds = %if.end.365
  %264 = load %struct.sv**, %struct.sv*** %svp, align 8
  %265 = load %struct.sv*, %struct.sv** %264, align 8
  store %struct.sv* %265, %struct.sv** %bless, align 8
  br label %if.end.369

if.end.369:                                       ; preds = %if.then.368, %if.end.365
  %266 = load %struct.hv*, %struct.hv** %hv, align 8
  %call370 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %266, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 8, i32 0)
  store %struct.sv** %call370, %struct.sv*** %svp, align 8
  %tobool371 = icmp ne %struct.sv** %call370, null
  br i1 %tobool371, label %if.then.372, label %if.end.384

if.then.372:                                      ; preds = %if.end.369
  %267 = load %struct.sv**, %struct.sv*** %svp, align 8
  %268 = load %struct.sv*, %struct.sv** %267, align 8
  %sv_flags373 = getelementptr inbounds %struct.sv, %struct.sv* %268, i32 0, i32 2
  %269 = load i32, i32* %sv_flags373, align 4
  %and374 = and i32 %269, 65536
  %tobool375 = icmp ne i32 %and374, 0
  br i1 %tobool375, label %cond.true.376, label %cond.false.379

cond.true.376:                                    ; preds = %if.then.372
  %270 = load %struct.sv**, %struct.sv*** %svp, align 8
  %271 = load %struct.sv*, %struct.sv** %270, align 8
  %sv_any377 = getelementptr inbounds %struct.sv, %struct.sv* %271, i32 0, i32 0
  %272 = load i8*, i8** %sv_any377, align 8
  %273 = bitcast i8* %272 to %struct.xpviv*
  %xiv_iv378 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %273, i32 0, i32 3
  %274 = load i64, i64* %xiv_iv378, align 8
  br label %cond.end.381

cond.false.379:                                   ; preds = %if.then.372
  %275 = load %struct.sv**, %struct.sv*** %svp, align 8
  %276 = load %struct.sv*, %struct.sv** %275, align 8
  %call380 = call i64 @Perl_sv_2iv(%struct.sv* %276)
  br label %cond.end.381

cond.end.381:                                     ; preds = %cond.false.379, %cond.true.376
  %cond382 = phi i64 [ %274, %cond.true.376 ], [ %call380, %cond.false.379 ]
  %conv383 = trunc i64 %cond382 to i32
  store i32 %conv383, i32* %maxdepth, align 4
  br label %if.end.384

if.end.384:                                       ; preds = %cond.end.381, %if.end.369
  %277 = load %struct.hv*, %struct.hv** %hv, align 8
  %call385 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %277, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 8, i32 0)
  store %struct.sv** %call385, %struct.sv*** %svp, align 8
  %tobool386 = icmp ne %struct.sv** %call385, null
  br i1 %tobool386, label %if.then.387, label %if.end.446

if.then.387:                                      ; preds = %if.end.384
  %278 = load %struct.sv**, %struct.sv*** %svp, align 8
  %279 = load %struct.sv*, %struct.sv** %278, align 8
  store %struct.sv* %279, %struct.sv** %sortkeys, align 8
  %280 = load %struct.sv*, %struct.sv** %sortkeys, align 8
  %tobool388 = icmp ne %struct.sv* %280, null
  br i1 %tobool388, label %cond.false.390, label %cond.true.389

cond.true.389:                                    ; preds = %if.then.387
  br i1 false, label %if.else, label %if.then.432

cond.false.390:                                   ; preds = %if.then.387
  %281 = load %struct.sv*, %struct.sv** %sortkeys, align 8
  %sv_flags391 = getelementptr inbounds %struct.sv, %struct.sv* %281, i32 0, i32 2
  %282 = load i32, i32* %sv_flags391, align 4
  %and392 = and i32 %282, 262144
  %tobool393 = icmp ne i32 %and392, 0
  br i1 %tobool393, label %cond.true.394, label %cond.false.410

cond.true.394:                                    ; preds = %cond.false.390
  %283 = load %struct.sv*, %struct.sv** %sortkeys, align 8
  %sv_any395 = getelementptr inbounds %struct.sv, %struct.sv* %283, i32 0, i32 0
  %284 = load i8*, i8** %sv_any395, align 8
  %285 = bitcast i8* %284 to %struct.xpv*
  store %struct.xpv* %285, %struct.xpv** @PL_Xpv, align 8
  %tobool396 = icmp ne %struct.xpv* %285, null
  br i1 %tobool396, label %land.lhs.true.397, label %cond.false.409

land.lhs.true.397:                                ; preds = %cond.true.394
  %286 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur398 = getelementptr inbounds %struct.xpv, %struct.xpv* %286, i32 0, i32 1
  %287 = load i64, i64* %xpv_cur398, align 8
  %cmp399 = icmp ugt i64 %287, 1
  br i1 %cmp399, label %cond.true.408, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.397
  %288 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur401 = getelementptr inbounds %struct.xpv, %struct.xpv* %288, i32 0, i32 1
  %289 = load i64, i64* %xpv_cur401, align 8
  %tobool402 = icmp ne i64 %289, 0
  br i1 %tobool402, label %land.lhs.true.403, label %cond.false.409

land.lhs.true.403:                                ; preds = %lor.lhs.false
  %290 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv404 = getelementptr inbounds %struct.xpv, %struct.xpv* %290, i32 0, i32 0
  %291 = load i8*, i8** %xpv_pv404, align 8
  %292 = load i8, i8* %291, align 1
  %conv405 = sext i8 %292 to i32
  %cmp406 = icmp ne i32 %conv405, 48
  br i1 %cmp406, label %cond.true.408, label %cond.false.409

cond.true.408:                                    ; preds = %land.lhs.true.403, %land.lhs.true.397
  br i1 true, label %if.else, label %if.then.432

cond.false.409:                                   ; preds = %land.lhs.true.403, %lor.lhs.false, %cond.true.394
  br i1 false, label %if.else, label %if.then.432

cond.false.410:                                   ; preds = %cond.false.390
  %293 = load %struct.sv*, %struct.sv** %sortkeys, align 8
  %sv_flags411 = getelementptr inbounds %struct.sv, %struct.sv* %293, i32 0, i32 2
  %294 = load i32, i32* %sv_flags411, align 4
  %and412 = and i32 %294, 65536
  %tobool413 = icmp ne i32 %and412, 0
  br i1 %tobool413, label %cond.true.414, label %cond.false.419

cond.true.414:                                    ; preds = %cond.false.410
  %295 = load %struct.sv*, %struct.sv** %sortkeys, align 8
  %sv_any415 = getelementptr inbounds %struct.sv, %struct.sv* %295, i32 0, i32 0
  %296 = load i8*, i8** %sv_any415, align 8
  %297 = bitcast i8* %296 to %struct.xpviv*
  %xiv_iv416 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %297, i32 0, i32 3
  %298 = load i64, i64* %xiv_iv416, align 8
  %cmp417 = icmp ne i64 %298, 0
  br i1 %cmp417, label %if.else, label %if.then.432

cond.false.419:                                   ; preds = %cond.false.410
  %299 = load %struct.sv*, %struct.sv** %sortkeys, align 8
  %sv_flags420 = getelementptr inbounds %struct.sv, %struct.sv* %299, i32 0, i32 2
  %300 = load i32, i32* %sv_flags420, align 4
  %and421 = and i32 %300, 131072
  %tobool422 = icmp ne i32 %and421, 0
  br i1 %tobool422, label %cond.true.423, label %cond.false.428

cond.true.423:                                    ; preds = %cond.false.419
  %301 = load %struct.sv*, %struct.sv** %sortkeys, align 8
  %sv_any424 = getelementptr inbounds %struct.sv, %struct.sv* %301, i32 0, i32 0
  %302 = load i8*, i8** %sv_any424, align 8
  %303 = bitcast i8* %302 to %struct.xpvnv*
  %xnv_nv425 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %303, i32 0, i32 4
  %304 = load double, double* %xnv_nv425, align 8
  %cmp426 = fcmp une double %304, 0.000000e+00
  br i1 %cmp426, label %if.else, label %if.then.432

cond.false.428:                                   ; preds = %cond.false.419
  %305 = load %struct.sv*, %struct.sv** %sortkeys, align 8
  %call429 = call signext i8 @Perl_sv_2bool(%struct.sv* %305)
  %conv430 = sext i8 %call429 to i32
  %tobool431 = icmp ne i32 %conv430, 0
  br i1 %tobool431, label %if.else, label %if.then.432

if.then.432:                                      ; preds = %cond.false.428, %cond.true.423, %cond.true.414, %cond.false.409, %cond.true.408, %cond.true.389
  store %struct.sv* null, %struct.sv** %sortkeys, align 8
  br label %if.end.445

if.else:                                          ; preds = %cond.false.428, %cond.true.423, %cond.true.414, %cond.false.409, %cond.true.408, %cond.true.389
  %306 = load %struct.sv*, %struct.sv** %sortkeys, align 8
  %sv_flags433 = getelementptr inbounds %struct.sv, %struct.sv* %306, i32 0, i32 2
  %307 = load i32, i32* %sv_flags433, align 4
  %and434 = and i32 %307, 524288
  %tobool435 = icmp ne i32 %and434, 0
  br i1 %tobool435, label %land.lhs.true.436, label %if.then.443

land.lhs.true.436:                                ; preds = %if.else
  %308 = load %struct.sv*, %struct.sv** %sortkeys, align 8
  %sv_any437 = getelementptr inbounds %struct.sv, %struct.sv* %308, i32 0, i32 0
  %309 = load i8*, i8** %sv_any437, align 8
  %310 = bitcast i8* %309 to %struct.xrv*
  %xrv_rv438 = getelementptr inbounds %struct.xrv, %struct.xrv* %310, i32 0, i32 0
  %311 = load %struct.sv*, %struct.sv** %xrv_rv438, align 8
  %sv_flags439 = getelementptr inbounds %struct.sv, %struct.sv* %311, i32 0, i32 2
  %312 = load i32, i32* %sv_flags439, align 4
  %and440 = and i32 %312, 255
  %cmp441 = icmp eq i32 %and440, 12
  br i1 %cmp441, label %if.end.444, label %if.then.443

if.then.443:                                      ; preds = %land.lhs.true.436, %if.else
  store %struct.sv* @PL_sv_yes, %struct.sv** %sortkeys, align 8
  br label %if.end.444

if.end.444:                                       ; preds = %if.then.443, %land.lhs.true.436
  br label %if.end.445

if.end.445:                                       ; preds = %if.end.444, %if.then.432
  br label %if.end.446

if.end.446:                                       ; preds = %if.end.445, %if.end.384
  %call447 = call %struct.av* @Perl_newAV()
  store %struct.av* %call447, %struct.av** %postav, align 8
  %313 = load %struct.av*, %struct.av** %todumpav, align 8
  %tobool448 = icmp ne %struct.av* %313, null
  br i1 %tobool448, label %if.then.449, label %if.else.451

if.then.449:                                      ; preds = %if.end.446
  %314 = load %struct.av*, %struct.av** %todumpav, align 8
  %call450 = call i32 @Perl_av_len(%struct.av* %314)
  store i32 %call450, i32* %imax, align 4
  br label %if.end.452

if.else.451:                                      ; preds = %if.end.446
  store i32 -1, i32* %imax, align 4
  br label %if.end.452

if.end.452:                                       ; preds = %if.else.451, %if.then.449
  %call453 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i64 0)
  store %struct.sv* %call453, %struct.sv** %valstr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.607, %if.end.452
  %315 = load i32, i32* %i, align 4
  %316 = load i32, i32* %imax, align 4
  %cmp454 = icmp sle i32 %315, %316
  br i1 %cmp454, label %for.body, label %for.end.609

for.body:                                         ; preds = %for.cond
  %317 = load %struct.av*, %struct.av** %postav, align 8
  call void @Perl_av_clear(%struct.av* %317)
  %318 = load %struct.av*, %struct.av** %todumpav, align 8
  %319 = load i32, i32* %i, align 4
  %call457 = call %struct.sv** @Perl_av_fetch(%struct.av* %318, i32 %319, i32 0)
  store %struct.sv** %call457, %struct.sv*** %svp, align 8
  %tobool458 = icmp ne %struct.sv** %call457, null
  br i1 %tobool458, label %if.then.459, label %if.else.460

if.then.459:                                      ; preds = %for.body
  %320 = load %struct.sv**, %struct.sv*** %svp, align 8
  %321 = load %struct.sv*, %struct.sv** %320, align 8
  store %struct.sv* %321, %struct.sv** %val, align 8
  br label %if.end.461

if.else.460:                                      ; preds = %for.body
  store %struct.sv* @PL_sv_undef, %struct.sv** %val, align 8
  br label %if.end.461

if.end.461:                                       ; preds = %if.else.460, %if.then.459
  %322 = load %struct.av*, %struct.av** %namesav, align 8
  %323 = load i32, i32* %i, align 4
  %call462 = call %struct.sv** @Perl_av_fetch(%struct.av* %322, i32 %323, i32 1)
  store %struct.sv** %call462, %struct.sv*** %svp, align 8
  %tobool463 = icmp ne %struct.sv** %call462, null
  br i1 %tobool463, label %if.then.464, label %if.else.465

if.then.464:                                      ; preds = %if.end.461
  %324 = load %struct.sv*, %struct.sv** %name, align 8
  %325 = load %struct.sv**, %struct.sv*** %svp, align 8
  %326 = load %struct.sv*, %struct.sv** %325, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %324, %struct.sv* %326, i32 2)
  br label %if.end.475

if.else.465:                                      ; preds = %if.end.461
  %327 = load %struct.sv*, %struct.sv** %name, align 8
  %sv_flags466 = getelementptr inbounds %struct.sv, %struct.sv* %327, i32 0, i32 2
  %328 = load i32, i32* %sv_flags466, align 4
  %and467 = and i32 %328, 1223753727
  store i32 %and467, i32* %sv_flags466, align 4
  %329 = load %struct.sv*, %struct.sv** %name, align 8
  %sv_flags468 = getelementptr inbounds %struct.sv, %struct.sv* %329, i32 0, i32 2
  %330 = load i32, i32* %sv_flags468, align 4
  %and469 = and i32 %330, 2097152
  %tobool470 = icmp ne i32 %and469, 0
  br i1 %tobool470, label %land.rhs.471, label %land.end.474

land.rhs.471:                                     ; preds = %if.else.465
  %331 = load %struct.sv*, %struct.sv** %name, align 8
  %call472 = call i32 @Perl_sv_backoff(%struct.sv* %331)
  %tobool473 = icmp ne i32 %call472, 0
  br label %land.end.474

land.end.474:                                     ; preds = %land.rhs.471, %if.else.465
  %332 = phi i1 [ false, %if.else.465 ], [ %tobool473, %land.rhs.471 ]
  %land.ext = zext i1 %332 to i32
  br label %if.end.475

if.end.475:                                       ; preds = %land.end.474, %if.then.464
  %333 = load %struct.sv*, %struct.sv** %name, align 8
  %sv_flags476 = getelementptr inbounds %struct.sv, %struct.sv* %333, i32 0, i32 2
  %334 = load i32, i32* %sv_flags476, align 4
  %and477 = and i32 %334, 118423552
  %tobool478 = icmp ne i32 %and477, 0
  br i1 %tobool478, label %if.then.479, label %if.else.524

if.then.479:                                      ; preds = %if.end.475
  %335 = load %struct.sv*, %struct.sv** %name, align 8
  %sv_any480 = getelementptr inbounds %struct.sv, %struct.sv* %335, i32 0, i32 0
  %336 = load i8*, i8** %sv_any480, align 8
  %337 = bitcast i8* %336 to %struct.xpv*
  %xpv_pv481 = getelementptr inbounds %struct.xpv, %struct.xpv* %337, i32 0, i32 0
  %338 = load i8*, i8** %xpv_pv481, align 8
  %arrayidx482 = getelementptr inbounds i8, i8* %338, i64 0
  %339 = load i8, i8* %arrayidx482, align 1
  %conv483 = sext i8 %339 to i32
  %cmp484 = icmp eq i32 %conv483, 42
  br i1 %cmp484, label %if.then.486, label %if.else.514

if.then.486:                                      ; preds = %if.then.479
  %340 = load %struct.sv*, %struct.sv** %val, align 8
  %sv_flags487 = getelementptr inbounds %struct.sv, %struct.sv* %340, i32 0, i32 2
  %341 = load i32, i32* %sv_flags487, align 4
  %and488 = and i32 %341, 524288
  %tobool489 = icmp ne i32 %and488, 0
  br i1 %tobool489, label %if.then.490, label %if.else.509

if.then.490:                                      ; preds = %if.then.486
  %342 = load %struct.sv*, %struct.sv** %val, align 8
  %sv_any491 = getelementptr inbounds %struct.sv, %struct.sv* %342, i32 0, i32 0
  %343 = load i8*, i8** %sv_any491, align 8
  %344 = bitcast i8* %343 to %struct.xrv*
  %xrv_rv492 = getelementptr inbounds %struct.xrv, %struct.xrv* %344, i32 0, i32 0
  %345 = load %struct.sv*, %struct.sv** %xrv_rv492, align 8
  %sv_flags493 = getelementptr inbounds %struct.sv, %struct.sv* %345, i32 0, i32 2
  %346 = load i32, i32* %sv_flags493, align 4
  %and494 = and i32 %346, 255
  switch i32 %and494, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb.498
    i32 12, label %sw.bb.502
  ]

sw.bb:                                            ; preds = %if.then.490
  %347 = load %struct.sv*, %struct.sv** %name, align 8
  %sv_any495 = getelementptr inbounds %struct.sv, %struct.sv* %347, i32 0, i32 0
  %348 = load i8*, i8** %sv_any495, align 8
  %349 = bitcast i8* %348 to %struct.xpv*
  %xpv_pv496 = getelementptr inbounds %struct.xpv, %struct.xpv* %349, i32 0, i32 0
  %350 = load i8*, i8** %xpv_pv496, align 8
  %arrayidx497 = getelementptr inbounds i8, i8* %350, i64 0
  store i8 64, i8* %arrayidx497, align 1
  br label %sw.epilog

sw.bb.498:                                        ; preds = %if.then.490
  %351 = load %struct.sv*, %struct.sv** %name, align 8
  %sv_any499 = getelementptr inbounds %struct.sv, %struct.sv* %351, i32 0, i32 0
  %352 = load i8*, i8** %sv_any499, align 8
  %353 = bitcast i8* %352 to %struct.xpv*
  %xpv_pv500 = getelementptr inbounds %struct.xpv, %struct.xpv* %353, i32 0, i32 0
  %354 = load i8*, i8** %xpv_pv500, align 8
  %arrayidx501 = getelementptr inbounds i8, i8* %354, i64 0
  store i8 37, i8* %arrayidx501, align 1
  br label %sw.epilog

sw.bb.502:                                        ; preds = %if.then.490
  %355 = load %struct.sv*, %struct.sv** %name, align 8
  %sv_any503 = getelementptr inbounds %struct.sv, %struct.sv* %355, i32 0, i32 0
  %356 = load i8*, i8** %sv_any503, align 8
  %357 = bitcast i8* %356 to %struct.xpv*
  %xpv_pv504 = getelementptr inbounds %struct.xpv, %struct.xpv* %357, i32 0, i32 0
  %358 = load i8*, i8** %xpv_pv504, align 8
  %arrayidx505 = getelementptr inbounds i8, i8* %358, i64 0
  store i8 42, i8* %arrayidx505, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.490
  %359 = load %struct.sv*, %struct.sv** %name, align 8
  %sv_any506 = getelementptr inbounds %struct.sv, %struct.sv* %359, i32 0, i32 0
  %360 = load i8*, i8** %sv_any506, align 8
  %361 = bitcast i8* %360 to %struct.xpv*
  %xpv_pv507 = getelementptr inbounds %struct.xpv, %struct.xpv* %361, i32 0, i32 0
  %362 = load i8*, i8** %xpv_pv507, align 8
  %arrayidx508 = getelementptr inbounds i8, i8* %362, i64 0
  store i8 36, i8* %arrayidx508, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.502, %sw.bb.498, %sw.bb
  br label %if.end.513

if.else.509:                                      ; preds = %if.then.486
  %363 = load %struct.sv*, %struct.sv** %name, align 8
  %sv_any510 = getelementptr inbounds %struct.sv, %struct.sv* %363, i32 0, i32 0
  %364 = load i8*, i8** %sv_any510, align 8
  %365 = bitcast i8* %364 to %struct.xpv*
  %xpv_pv511 = getelementptr inbounds %struct.xpv, %struct.xpv* %365, i32 0, i32 0
  %366 = load i8*, i8** %xpv_pv511, align 8
  %arrayidx512 = getelementptr inbounds i8, i8* %366, i64 0
  store i8 36, i8* %arrayidx512, align 1
  br label %if.end.513

if.end.513:                                       ; preds = %if.else.509, %sw.epilog
  br label %if.end.523

if.else.514:                                      ; preds = %if.then.479
  %367 = load %struct.sv*, %struct.sv** %name, align 8
  %sv_any515 = getelementptr inbounds %struct.sv, %struct.sv* %367, i32 0, i32 0
  %368 = load i8*, i8** %sv_any515, align 8
  %369 = bitcast i8* %368 to %struct.xpv*
  %xpv_pv516 = getelementptr inbounds %struct.xpv, %struct.xpv* %369, i32 0, i32 0
  %370 = load i8*, i8** %xpv_pv516, align 8
  %arrayidx517 = getelementptr inbounds i8, i8* %370, i64 0
  %371 = load i8, i8* %arrayidx517, align 1
  %conv518 = sext i8 %371 to i32
  %cmp519 = icmp ne i32 %conv518, 36
  br i1 %cmp519, label %if.then.521, label %if.end.522

if.then.521:                                      ; preds = %if.else.514
  %372 = load %struct.sv*, %struct.sv** %name, align 8
  call void @Perl_sv_insert(%struct.sv* %372, i64 0, i64 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i64 1)
  br label %if.end.522

if.end.522:                                       ; preds = %if.then.521, %if.else.514
  br label %if.end.523

if.end.523:                                       ; preds = %if.end.522, %if.end.513
  br label %if.end.532

if.else.524:                                      ; preds = %if.end.475
  store i64 0, i64* %nchars, align 8
  %373 = load %struct.sv*, %struct.sv** %name, align 8
  call void @Perl_sv_setpvn(%struct.sv* %373, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i64 1)
  %374 = load %struct.sv*, %struct.sv** %name, align 8
  %375 = load %struct.sv*, %struct.sv** %varname, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %374, %struct.sv* %375, i32 2)
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %tmpbuf, i32 0, i32 0
  %376 = load i32, i32* %i, align 4
  %add526 = add nsw i32 %376, 1
  %conv527 = sext i32 %add526 to i64
  %call528 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i64 %conv527)
  %arraydecay529 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tmpbuf, i32 0, i32 0
  %call530 = call i64 @strlen(i8* %arraydecay529)
  store i64 %call530, i64* %nchars, align 8
  %377 = load %struct.sv*, %struct.sv** %name, align 8
  %arraydecay531 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tmpbuf, i32 0, i32 0
  %378 = load i64, i64* %nchars, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %377, i8* %arraydecay531, i64 %378, i32 2)
  br label %if.end.532

if.end.532:                                       ; preds = %if.else.524, %if.end.523
  %379 = load i32, i32* %indent, align 4
  %cmp533 = icmp sge i32 %379, 2
  br i1 %cmp533, label %if.then.535, label %if.else.543

if.then.535:                                      ; preds = %if.end.532
  %380 = load %struct.sv*, %struct.sv** %name, align 8
  %sv_any537 = getelementptr inbounds %struct.sv, %struct.sv* %380, i32 0, i32 0
  %381 = load i8*, i8** %sv_any537, align 8
  %382 = bitcast i8* %381 to %struct.xpv*
  %xpv_cur538 = getelementptr inbounds %struct.xpv, %struct.xpv* %382, i32 0, i32 1
  %383 = load i64, i64* %xpv_cur538, align 8
  %add539 = add i64 %383, 3
  %conv540 = trunc i64 %add539 to i32
  %call541 = call %struct.sv* @sv_x(%struct.sv* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i64 1, i32 %conv540)
  store %struct.sv* %call541, %struct.sv** %tmpsv, align 8
  %384 = load %struct.sv*, %struct.sv** %apad, align 8
  %call542 = call %struct.sv* @Perl_newSVsv(%struct.sv* %384)
  store %struct.sv* %call542, %struct.sv** %newapad, align 8
  %385 = load %struct.sv*, %struct.sv** %newapad, align 8
  %386 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %385, %struct.sv* %386, i32 2)
  %387 = load %struct.sv*, %struct.sv** %tmpsv, align 8
  call void @Perl_sv_free(%struct.sv* %387)
  br label %if.end.544

if.else.543:                                      ; preds = %if.end.532
  %388 = load %struct.sv*, %struct.sv** %apad, align 8
  store %struct.sv* %388, %struct.sv** %newapad, align 8
  br label %if.end.544

if.end.544:                                       ; preds = %if.else.543, %if.then.535
  %389 = load %struct.sv*, %struct.sv** %val, align 8
  %390 = load %struct.sv*, %struct.sv** %name, align 8
  %sv_any545 = getelementptr inbounds %struct.sv, %struct.sv* %390, i32 0, i32 0
  %391 = load i8*, i8** %sv_any545, align 8
  %392 = bitcast i8* %391 to %struct.xpv*
  %xpv_pv546 = getelementptr inbounds %struct.xpv, %struct.xpv* %392, i32 0, i32 0
  %393 = load i8*, i8** %xpv_pv546, align 8
  %394 = load %struct.sv*, %struct.sv** %name, align 8
  %sv_any547 = getelementptr inbounds %struct.sv, %struct.sv* %394, i32 0, i32 0
  %395 = load i8*, i8** %sv_any547, align 8
  %396 = bitcast i8* %395 to %struct.xpv*
  %xpv_cur548 = getelementptr inbounds %struct.xpv, %struct.xpv* %396, i32 0, i32 1
  %397 = load i64, i64* %xpv_cur548, align 8
  %398 = load %struct.sv*, %struct.sv** %valstr, align 8
  %399 = load %struct.hv*, %struct.hv** %seenhv, align 8
  %400 = load %struct.av*, %struct.av** %postav, align 8
  %401 = load i32, i32* %indent, align 4
  %402 = load %struct.sv*, %struct.sv** %pad, align 8
  %403 = load %struct.sv*, %struct.sv** %xpad, align 8
  %404 = load %struct.sv*, %struct.sv** %newapad, align 8
  %405 = load %struct.sv*, %struct.sv** %sep, align 8
  %406 = load %struct.sv*, %struct.sv** %pair, align 8
  %407 = load %struct.sv*, %struct.sv** %freezer, align 8
  %408 = load %struct.sv*, %struct.sv** %toaster, align 8
  %409 = load i32, i32* %purity, align 4
  %410 = load i32, i32* %deepcopy, align 4
  %411 = load i32, i32* %quotekeys, align 4
  %412 = load %struct.sv*, %struct.sv** %bless, align 8
  %413 = load i32, i32* %maxdepth, align 4
  %414 = load %struct.sv*, %struct.sv** %sortkeys, align 8
  %call549 = call i32 @DD_dump(%struct.sv* %389, i8* %393, i64 %397, %struct.sv* %398, %struct.hv* %399, %struct.av* %400, i32* %level, i32 %401, %struct.sv* %402, %struct.sv* %403, %struct.sv* %404, %struct.sv* %405, %struct.sv* %406, %struct.sv* %407, %struct.sv* %408, i32 %409, i32 %410, i32 %411, %struct.sv* %412, i32 %413, %struct.sv* %414)
  %415 = load i32, i32* %indent, align 4
  %cmp550 = icmp sge i32 %415, 2
  br i1 %cmp550, label %if.then.552, label %if.end.553

if.then.552:                                      ; preds = %if.end.544
  %416 = load %struct.sv*, %struct.sv** %newapad, align 8
  call void @Perl_sv_free(%struct.sv* %416)
  br label %if.end.553

if.end.553:                                       ; preds = %if.then.552, %if.end.544
  %417 = load %struct.av*, %struct.av** %postav, align 8
  %call554 = call i32 @Perl_av_len(%struct.av* %417)
  store i32 %call554, i32* %postlen, align 4
  %418 = load i32, i32* %postlen, align 4
  %cmp555 = icmp sge i32 %418, 0
  br i1 %cmp555, label %if.then.559, label %lor.lhs.false.557

lor.lhs.false.557:                                ; preds = %if.end.553
  %419 = load i32, i32* %terse, align 4
  %tobool558 = icmp ne i32 %419, 0
  br i1 %tobool558, label %if.end.564, label %if.then.559

if.then.559:                                      ; preds = %lor.lhs.false.557, %if.end.553
  %420 = load %struct.sv*, %struct.sv** %valstr, align 8
  call void @Perl_sv_insert(%struct.sv* %420, i64 0, i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i64 3)
  %421 = load %struct.sv*, %struct.sv** %valstr, align 8
  %422 = load %struct.sv*, %struct.sv** %name, align 8
  %sv_any560 = getelementptr inbounds %struct.sv, %struct.sv* %422, i32 0, i32 0
  %423 = load i8*, i8** %sv_any560, align 8
  %424 = bitcast i8* %423 to %struct.xpv*
  %xpv_pv561 = getelementptr inbounds %struct.xpv, %struct.xpv* %424, i32 0, i32 0
  %425 = load i8*, i8** %xpv_pv561, align 8
  %426 = load %struct.sv*, %struct.sv** %name, align 8
  %sv_any562 = getelementptr inbounds %struct.sv, %struct.sv* %426, i32 0, i32 0
  %427 = load i8*, i8** %sv_any562, align 8
  %428 = bitcast i8* %427 to %struct.xpv*
  %xpv_cur563 = getelementptr inbounds %struct.xpv, %struct.xpv* %428, i32 0, i32 1
  %429 = load i64, i64* %xpv_cur563, align 8
  call void @Perl_sv_insert(%struct.sv* %421, i64 0, i64 0, i8* %425, i64 %429)
  %430 = load %struct.sv*, %struct.sv** %valstr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %430, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i64 1, i32 2)
  br label %if.end.564

if.end.564:                                       ; preds = %if.then.559, %lor.lhs.false.557
  %431 = load %struct.sv*, %struct.sv** %retval, align 8
  %432 = load %struct.sv*, %struct.sv** %pad, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %431, %struct.sv* %432, i32 2)
  %433 = load %struct.sv*, %struct.sv** %retval, align 8
  %434 = load %struct.sv*, %struct.sv** %valstr, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %433, %struct.sv* %434, i32 2)
  %435 = load %struct.sv*, %struct.sv** %retval, align 8
  %436 = load %struct.sv*, %struct.sv** %sep, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %435, %struct.sv* %436, i32 2)
  %437 = load i32, i32* %postlen, align 4
  %cmp565 = icmp sge i32 %437, 0
  br i1 %cmp565, label %if.then.567, label %if.end.585

if.then.567:                                      ; preds = %if.end.564
  %438 = load %struct.sv*, %struct.sv** %retval, align 8
  %439 = load %struct.sv*, %struct.sv** %pad, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %438, %struct.sv* %439, i32 2)
  store i32 0, i32* %i569, align 4
  br label %for.cond.570

for.cond.570:                                     ; preds = %for.inc, %if.then.567
  %440 = load i32, i32* %i569, align 4
  %441 = load i32, i32* %postlen, align 4
  %cmp571 = icmp sle i32 %440, %441
  br i1 %cmp571, label %for.body.573, label %for.end

for.body.573:                                     ; preds = %for.cond.570
  %442 = load %struct.av*, %struct.av** %postav, align 8
  %443 = load i32, i32* %i569, align 4
  %call575 = call %struct.sv** @Perl_av_fetch(%struct.av* %442, i32 %443, i32 0)
  store %struct.sv** %call575, %struct.sv*** %svp, align 8
  %444 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool576 = icmp ne %struct.sv** %444, null
  br i1 %tobool576, label %land.lhs.true.577, label %if.end.584

land.lhs.true.577:                                ; preds = %for.body.573
  %445 = load %struct.sv**, %struct.sv*** %svp, align 8
  %446 = load %struct.sv*, %struct.sv** %445, align 8
  store %struct.sv* %446, %struct.sv** %elem, align 8
  %tobool578 = icmp ne %struct.sv* %446, null
  br i1 %tobool578, label %if.then.579, label %if.end.584

if.then.579:                                      ; preds = %land.lhs.true.577
  %447 = load %struct.sv*, %struct.sv** %retval, align 8
  %448 = load %struct.sv*, %struct.sv** %elem, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %447, %struct.sv* %448, i32 2)
  %449 = load i32, i32* %i569, align 4
  %450 = load i32, i32* %postlen, align 4
  %cmp580 = icmp slt i32 %449, %450
  br i1 %cmp580, label %if.then.582, label %if.end.583

if.then.582:                                      ; preds = %if.then.579
  %451 = load %struct.sv*, %struct.sv** %retval, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %451, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i64 1, i32 2)
  %452 = load %struct.sv*, %struct.sv** %retval, align 8
  %453 = load %struct.sv*, %struct.sv** %sep, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %452, %struct.sv* %453, i32 2)
  %454 = load %struct.sv*, %struct.sv** %retval, align 8
  %455 = load %struct.sv*, %struct.sv** %pad, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %454, %struct.sv* %455, i32 2)
  br label %if.end.583

if.end.583:                                       ; preds = %if.then.582, %if.then.579
  br label %if.end.584

if.end.584:                                       ; preds = %if.end.583, %land.lhs.true.577, %for.body.573
  br label %for.inc

for.inc:                                          ; preds = %if.end.584
  %456 = load i32, i32* %i569, align 4
  %inc = add nsw i32 %456, 1
  store i32 %inc, i32* %i569, align 4
  br label %for.cond.570

for.end:                                          ; preds = %for.cond.570
  %457 = load %struct.sv*, %struct.sv** %retval, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %457, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i64 1, i32 2)
  %458 = load %struct.sv*, %struct.sv** %retval, align 8
  %459 = load %struct.sv*, %struct.sv** %sep, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %458, %struct.sv* %459, i32 2)
  br label %if.end.585

if.end.585:                                       ; preds = %for.end, %if.end.564
  %460 = load %struct.sv*, %struct.sv** %valstr, align 8
  call void @Perl_sv_setpvn(%struct.sv* %460, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i64 0)
  %461 = load i32, i32* %gimme, align 4
  %cmp586 = icmp eq i32 %461, 1
  br i1 %cmp586, label %if.then.588, label %if.end.606

if.then.588:                                      ; preds = %if.end.585
  %462 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %463 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast589 = ptrtoint %struct.sv** %462 to i64
  %sub.ptr.rhs.cast590 = ptrtoint %struct.sv** %463 to i64
  %sub.ptr.sub591 = sub i64 %sub.ptr.lhs.cast589, %sub.ptr.rhs.cast590
  %sub.ptr.div592 = sdiv exact i64 %sub.ptr.sub591, 8
  %cmp593 = icmp slt i64 %sub.ptr.div592, 1
  br i1 %cmp593, label %if.then.595, label %if.end.597

if.then.595:                                      ; preds = %if.then.588
  %464 = load %struct.sv**, %struct.sv*** %sp, align 8
  %465 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call596 = call %struct.sv** @Perl_stack_grow(%struct.sv** %464, %struct.sv** %465, i32 1)
  store %struct.sv** %call596, %struct.sv*** %sp, align 8
  br label %if.end.597

if.end.597:                                       ; preds = %if.then.595, %if.then.588
  %466 = load %struct.sv*, %struct.sv** %retval, align 8
  %call599 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %466)
  %467 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr600 = getelementptr inbounds %struct.sv*, %struct.sv** %467, i32 1
  store %struct.sv** %incdec.ptr600, %struct.sv*** %sp, align 8
  store %struct.sv* %call599, %struct.sv** %incdec.ptr600, align 8
  store %struct.sv* %call599, %struct.sv** %tmp598
  %468 = load %struct.sv*, %struct.sv** %tmp598
  %469 = load i32, i32* %i, align 4
  %470 = load i32, i32* %imax, align 4
  %cmp601 = icmp slt i32 %469, %470
  br i1 %cmp601, label %if.then.603, label %if.end.605

if.then.603:                                      ; preds = %if.end.597
  %call604 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i64 0)
  store %struct.sv* %call604, %struct.sv** %retval, align 8
  br label %if.end.605

if.end.605:                                       ; preds = %if.then.603, %if.end.597
  br label %if.end.606

if.end.606:                                       ; preds = %if.end.605, %if.end.585
  br label %for.inc.607

for.inc.607:                                      ; preds = %if.end.606
  %471 = load i32, i32* %i, align 4
  %inc608 = add nsw i32 %471, 1
  store i32 %inc608, i32* %i, align 4
  br label %for.cond

for.end.609:                                      ; preds = %for.cond
  %472 = load %struct.av*, %struct.av** %postav, align 8
  %473 = bitcast %struct.av* %472 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %473)
  %474 = load %struct.sv*, %struct.sv** %valstr, align 8
  call void @Perl_sv_free(%struct.sv* %474)
  br label %if.end.611

if.else.610:                                      ; preds = %land.lhs.true.102, %land.lhs.true, %if.end.95
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.611

if.end.611:                                       ; preds = %if.else.610, %for.end.609
  %475 = load i32, i32* %gimme, align 4
  %cmp612 = icmp eq i32 %475, 0
  br i1 %cmp612, label %if.then.614, label %if.end.627

if.then.614:                                      ; preds = %if.end.611
  %476 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %477 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast615 = ptrtoint %struct.sv** %476 to i64
  %sub.ptr.rhs.cast616 = ptrtoint %struct.sv** %477 to i64
  %sub.ptr.sub617 = sub i64 %sub.ptr.lhs.cast615, %sub.ptr.rhs.cast616
  %sub.ptr.div618 = sdiv exact i64 %sub.ptr.sub617, 8
  %cmp619 = icmp slt i64 %sub.ptr.div618, 1
  br i1 %cmp619, label %if.then.621, label %if.end.623

if.then.621:                                      ; preds = %if.then.614
  %478 = load %struct.sv**, %struct.sv*** %sp, align 8
  %479 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call622 = call %struct.sv** @Perl_stack_grow(%struct.sv** %478, %struct.sv** %479, i32 1)
  store %struct.sv** %call622, %struct.sv*** %sp, align 8
  br label %if.end.623

if.end.623:                                       ; preds = %if.then.621, %if.then.614
  %480 = load %struct.sv*, %struct.sv** %retval, align 8
  %call625 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %480)
  %481 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr626 = getelementptr inbounds %struct.sv*, %struct.sv** %481, i32 1
  store %struct.sv** %incdec.ptr626, %struct.sv*** %sp, align 8
  store %struct.sv* %call625, %struct.sv** %incdec.ptr626, align 8
  store %struct.sv* %call625, %struct.sv** %tmp624
  %482 = load %struct.sv*, %struct.sv** %tmp624
  br label %if.end.627

if.end.627:                                       ; preds = %if.end.623, %if.end.611
  %483 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %483, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare void @Perl_croak(i8*, ...) #1

declare i32 @Perl_dowantarray() #1

declare void @Perl_push_scope() #1

declare void @Perl_save_int(i32*) #1

declare void @Perl_markstack_grow() #1

declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

declare i32 @Perl_call_method(i8*, i32) #1

declare void @Perl_free_tmps() #1

declare void @Perl_pop_scope() #1

declare %struct.sv* @Perl_sv_newmortal() #1

declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

declare i64 @Perl_sv_2iv(%struct.sv*) #1

declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

declare %struct.av* @Perl_newAV() #1

declare i32 @Perl_av_len(%struct.av*) #1

declare void @Perl_av_clear(%struct.av*) #1

declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #1

declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

declare i32 @Perl_sv_backoff(%struct.sv*) #1

declare void @Perl_sv_insert(%struct.sv*, i64, i64, i8*, i64) #1

declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

declare void @Perl_sv_catsv_flags(%struct.sv*, %struct.sv*, i32) #1

declare i32 @sprintf(i8*, i8*, ...) #1

declare i64 @strlen(i8*) #1

declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.sv* @sv_x(%struct.sv* %sv, i8* %str, i64 %len, i32 %n) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  %start = alloca i8*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %cmp = icmp eq %struct.sv* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i64 0)
  store %struct.sv* %call, %struct.sv** %sv.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.39

if.then.2:                                        ; preds = %if.end
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xpv*
  %xpv_len = getelementptr inbounds %struct.xpv, %struct.xpv* %4, i32 0, i32 2
  %5 = load i64, i64* %xpv_len, align 8
  %6 = load i64, i64* %len.addr, align 8
  %7 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %7 to i64
  %mul = mul i64 %6, %conv
  %8 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any3 = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 0
  %9 = load i8*, i8** %sv_any3, align 8
  %10 = bitcast i8* %9 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %10, i32 0, i32 1
  %11 = load i64, i64* %xpv_cur, align 8
  %add = add i64 %mul, %11
  %add4 = add i64 %add, 1
  %cmp5 = icmp ult i64 %5, %add4
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  %12 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %13 = load i64, i64* %len.addr, align 8
  %14 = load i32, i32* %n.addr, align 4
  %conv7 = sext i32 %14 to i64
  %mul8 = mul i64 %13, %conv7
  %15 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any9 = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 0
  %16 = load i8*, i8** %sv_any9, align 8
  %17 = bitcast i8* %16 to %struct.xpv*
  %xpv_cur10 = getelementptr inbounds %struct.xpv, %struct.xpv* %17, i32 0, i32 1
  %18 = load i64, i64* %xpv_cur10, align 8
  %add11 = add i64 %mul8, %18
  %add12 = add i64 %add11, 1
  %call13 = call i8* @Perl_sv_grow(%struct.sv* %12, i64 %add12)
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  %19 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any14 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 0
  %20 = load i8*, i8** %sv_any14, align 8
  %21 = bitcast i8* %20 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %21, i32 0, i32 0
  %22 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call13, %cond.true ], [ %22, %cond.false ]
  %23 = load i64, i64* %len.addr, align 8
  %cmp15 = icmp eq i64 %23, 1
  br i1 %cmp15, label %if.then.17, label %if.else.31

if.then.17:                                       ; preds = %cond.end
  %24 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any18 = getelementptr inbounds %struct.sv, %struct.sv* %24, i32 0, i32 0
  %25 = load i8*, i8** %sv_any18, align 8
  %26 = bitcast i8* %25 to %struct.xpv*
  %xpv_pv19 = getelementptr inbounds %struct.xpv, %struct.xpv* %26, i32 0, i32 0
  %27 = load i8*, i8** %xpv_pv19, align 8
  %28 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any20 = getelementptr inbounds %struct.sv, %struct.sv* %28, i32 0, i32 0
  %29 = load i8*, i8** %sv_any20, align 8
  %30 = bitcast i8* %29 to %struct.xpv*
  %xpv_cur21 = getelementptr inbounds %struct.xpv, %struct.xpv* %30, i32 0, i32 1
  %31 = load i64, i64* %xpv_cur21, align 8
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %31
  store i8* %add.ptr, i8** %start, align 8
  %32 = load i32, i32* %n.addr, align 4
  %conv22 = sext i32 %32 to i64
  %33 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any23 = getelementptr inbounds %struct.sv, %struct.sv* %33, i32 0, i32 0
  %34 = load i8*, i8** %sv_any23, align 8
  %35 = bitcast i8* %34 to %struct.xpv*
  %xpv_cur24 = getelementptr inbounds %struct.xpv, %struct.xpv* %35, i32 0, i32 1
  %36 = load i64, i64* %xpv_cur24, align 8
  %add25 = add i64 %36, %conv22
  store i64 %add25, i64* %xpv_cur24, align 8
  %37 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %37 to i64
  %38 = load i8*, i8** %start, align 8
  %arrayidx = getelementptr inbounds i8, i8* %38, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.17
  %39 = load i32, i32* %n.addr, align 4
  %cmp26 = icmp sgt i32 %39, 0
  br i1 %cmp26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %40 = load i8*, i8** %str.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %40, i64 0
  %41 = load i8, i8* %arrayidx28, align 1
  %42 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %n.addr, align 4
  %idxprom29 = sext i32 %dec to i64
  %43 = load i8*, i8** %start, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %43, i64 %idxprom29
  store i8 %41, i8* %arrayidx30, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.38

if.else.31:                                       ; preds = %cond.end
  br label %while.cond.32

while.cond.32:                                    ; preds = %while.body.35, %if.else.31
  %44 = load i32, i32* %n.addr, align 4
  %cmp33 = icmp sgt i32 %44, 0
  br i1 %cmp33, label %while.body.35, label %while.end.37

while.body.35:                                    ; preds = %while.cond.32
  %45 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %46 = load i8*, i8** %str.addr, align 8
  %47 = load i64, i64* %len.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %45, i8* %46, i64 %47, i32 2)
  %48 = load i32, i32* %n.addr, align 4
  %dec36 = add nsw i32 %48, -1
  store i32 %dec36, i32* %n.addr, align 4
  br label %while.cond.32

while.end.37:                                     ; preds = %while.cond.32
  br label %if.end.38

if.end.38:                                        ; preds = %while.end.37, %while.end
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end
  %49 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  ret %struct.sv* %49
}

declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define internal i32 @DD_dump(%struct.sv* %val, i8* %name, i64 %namelen, %struct.sv* %retval1, %struct.hv* %seenhv, %struct.av* %postav, i32* %levelp, i32 %indent, %struct.sv* %pad, %struct.sv* %xpad, %struct.sv* %apad, %struct.sv* %sep, %struct.sv* %pair, %struct.sv* %freezer, %struct.sv* %toaster, i32 %purity, i32 %deepcopy, i32 %quotekeys, %struct.sv* %bless, i32 %maxdepth, %struct.sv* %sortkeys) #0 {
entry:
  %retval = alloca i32, align 4
  %val.addr = alloca %struct.sv*, align 8
  %name.addr = alloca i8*, align 8
  %namelen.addr = alloca i64, align 8
  %retval.addr = alloca %struct.sv*, align 8
  %seenhv.addr = alloca %struct.hv*, align 8
  %postav.addr = alloca %struct.av*, align 8
  %levelp.addr = alloca i32*, align 8
  %indent.addr = alloca i32, align 4
  %pad.addr = alloca %struct.sv*, align 8
  %xpad.addr = alloca %struct.sv*, align 8
  %apad.addr = alloca %struct.sv*, align 8
  %sep.addr = alloca %struct.sv*, align 8
  %pair.addr = alloca %struct.sv*, align 8
  %freezer.addr = alloca %struct.sv*, align 8
  %toaster.addr = alloca %struct.sv*, align 8
  %purity.addr = alloca i32, align 4
  %deepcopy.addr = alloca i32, align 4
  %quotekeys.addr = alloca i32, align 4
  %bless.addr = alloca %struct.sv*, align 8
  %maxdepth.addr = alloca i32, align 4
  %sortkeys.addr = alloca %struct.sv*, align 8
  %tmpbuf = alloca [128 x i8], align 16
  %i = alloca i32, align 4
  %c = alloca i8*, align 8
  %r = alloca i8*, align 8
  %realpack = alloca i8*, align 8
  %id = alloca [128 x i8], align 16
  %svp = alloca %struct.sv**, align 8
  %sv = alloca %struct.sv*, align 8
  %ipad = alloca %struct.sv*, align 8
  %ival = alloca %struct.sv*, align 8
  %blesspad = alloca %struct.sv*, align 8
  %seenentry = alloca %struct.av*, align 8
  %iname = alloca i8*, align 8
  %inamelen = alloca i64, align 8
  %idlen = alloca i64, align 8
  %realtype = alloca i32, align 4
  %sp = alloca %struct.sv**, align 8
  %tmp = alloca i32, align 4
  %tmp43 = alloca %struct.sv*, align 8
  %othername = alloca %struct.sv*, align 8
  %postentry = alloca %struct.sv*, align 8
  %namesv = alloca %struct.sv*, align 8
  %rlen = alloca i64, align 8
  %rval = alloca i8*, align 8
  %slash = alloca i8*, align 8
  %vallen = alloca i64, align 8
  %valstr = alloca i8*, align 8
  %blesslen = alloca i64, align 8
  %blessstr = alloca i8*, align 8
  %namesv348 = alloca %struct.sv*, align 8
  %namesv369 = alloca %struct.sv*, align 8
  %totpad = alloca %struct.sv*, align 8
  %ix = alloca i32, align 4
  %ixmax = alloca i32, align 4
  %ixsv = alloca %struct.sv*, align 8
  %ilen = alloca i64, align 8
  %elem = alloca %struct.sv*, align 8
  %opad = alloca %struct.sv*, align 8
  %totpad524 = alloca %struct.sv*, align 8
  %newapad = alloca %struct.sv*, align 8
  %iname527 = alloca %struct.sv*, align 8
  %sname = alloca %struct.sv*, align 8
  %entry530 = alloca %struct.he*, align 8
  %key = alloca i8*, align 8
  %klen = alloca i32, align 4
  %hval = alloca %struct.sv*, align 8
  %keys = alloca %struct.av*, align 8
  %sp640 = alloca %struct.sv**, align 8
  %tmp646 = alloca i32, align 4
  %tmp661 = alloca %struct.sv*, align 8
  %nkey = alloca i8*, align 8
  %nkey_buffer = alloca i8*, align 8
  %nticks = alloca i32, align 4
  %keysv = alloca %struct.sv*, align 8
  %keylen = alloca i64, align 8
  %nlen = alloca i32, align 4
  %do_utf8 = alloca i8, align 1
  %key733 = alloca i8*, align 8
  %ocur = alloca i64, align 8
  %extra = alloca i8*, align 8
  %elen = alloca i32, align 4
  %opad887 = alloca %struct.sv*, align 8
  %i936 = alloca i64, align 8
  %othername959 = alloca %struct.sv*, align 8
  %namesv989 = alloca %struct.sv*, align 8
  %len = alloca i64, align 8
  %pvlen = alloca i64, align 8
  %pv = alloca i8*, align 8
  %tmp1145 = alloca i64, align 8
  %e = alloca %struct.sv*, align 8
  %nname = alloca %struct.sv*, align 8
  %newapad1157 = alloca %struct.sv*, align 8
  %gv = alloca %struct.gv*, align 8
  %j = alloca i32, align 4
  %nlevel = alloca i32, align 4
  %postentry1197 = alloca %struct.sv*, align 8
  %tmp1278 = alloca i64, align 8
  %mark = alloca %struct.sv*, align 8
  store %struct.sv* %val, %struct.sv** %val.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %namelen, i64* %namelen.addr, align 8
  store %struct.sv* %retval1, %struct.sv** %retval.addr, align 8
  store %struct.hv* %seenhv, %struct.hv** %seenhv.addr, align 8
  store %struct.av* %postav, %struct.av** %postav.addr, align 8
  store i32* %levelp, i32** %levelp.addr, align 8
  store i32 %indent, i32* %indent.addr, align 4
  store %struct.sv* %pad, %struct.sv** %pad.addr, align 8
  store %struct.sv* %xpad, %struct.sv** %xpad.addr, align 8
  store %struct.sv* %apad, %struct.sv** %apad.addr, align 8
  store %struct.sv* %sep, %struct.sv** %sep.addr, align 8
  store %struct.sv* %pair, %struct.sv** %pair.addr, align 8
  store %struct.sv* %freezer, %struct.sv** %freezer.addr, align 8
  store %struct.sv* %toaster, %struct.sv** %toaster.addr, align 8
  store i32 %purity, i32* %purity.addr, align 4
  store i32 %deepcopy, i32* %deepcopy.addr, align 4
  store i32 %quotekeys, i32* %quotekeys.addr, align 4
  store %struct.sv* %bless, %struct.sv** %bless.addr, align 8
  store i32 %maxdepth, i32* %maxdepth.addr, align 4
  store %struct.sv* %sortkeys, %struct.sv** %sortkeys.addr, align 8
  store %struct.sv* null, %struct.sv** %blesspad, align 8
  store %struct.av* null, %struct.av** %seenentry, align 8
  store i64 0, i64* %idlen, align 8
  %0 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %tobool = icmp ne %struct.sv* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %1, i32 0, i32 2
  %2 = load i32, i32* %sv_flags, align 4
  %and = and i32 %2, 255
  store i32 %and, i32* %realtype, align 4
  %3 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_flags2 = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags2, align 4
  %and3 = and i32 %4, 8192
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %5 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %call = call i32 @Perl_mg_get(%struct.sv* %5)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %6 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_flags7 = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 2
  %7 = load i32, i32* %sv_flags7, align 4
  %and8 = and i32 %7, 524288
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.else.934

if.then.10:                                       ; preds = %if.end.6
  %8 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 0
  %9 = load i8*, i8** %sv_any, align 8
  %10 = bitcast i8* %9 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %10, i32 0, i32 0
  %11 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_flags11 = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 2
  %12 = load i32, i32* %sv_flags11, align 4
  %and12 = and i32 %12, 4096
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %land.lhs.true, label %if.end.119

land.lhs.true:                                    ; preds = %if.then.10
  %13 = load %struct.sv*, %struct.sv** %freezer.addr, align 8
  %tobool14 = icmp ne %struct.sv* %13, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.119

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %14 = load %struct.sv*, %struct.sv** %freezer.addr, align 8
  %sv_flags16 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 2
  %15 = load i32, i32* %sv_flags16, align 4
  %and17 = and i32 %15, 262144
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.119

land.lhs.true.19:                                 ; preds = %land.lhs.true.15
  %16 = load %struct.sv*, %struct.sv** %freezer.addr, align 8
  %sv_any20 = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 0
  %17 = load i8*, i8** %sv_any20, align 8
  %18 = bitcast i8* %17 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %18, i32 0, i32 1
  %19 = load i64, i64* %xpv_cur, align 8
  %tobool21 = icmp ne i64 %19, 0
  br i1 %tobool21, label %land.lhs.true.22, label %if.end.119

land.lhs.true.22:                                 ; preds = %land.lhs.true.19
  %20 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_any23 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 0
  %21 = load i8*, i8** %sv_any23, align 8
  %22 = bitcast i8* %21 to %struct.xrv*
  %xrv_rv24 = getelementptr inbounds %struct.xrv, %struct.xrv* %22, i32 0, i32 0
  %23 = load %struct.sv*, %struct.sv** %xrv_rv24, align 8
  %sv_any25 = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 0
  %24 = load i8*, i8** %sv_any25, align 8
  %25 = bitcast i8* %24 to %struct.xpvmg*
  %xmg_stash = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %25, i32 0, i32 6
  %26 = load %struct.hv*, %struct.hv** %xmg_stash, align 8
  %27 = load %struct.sv*, %struct.sv** %freezer.addr, align 8
  %sv_any26 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 0
  %28 = load i8*, i8** %sv_any26, align 8
  %29 = bitcast i8* %28 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %29, i32 0, i32 0
  %30 = load i8*, i8** %xpv_pv, align 8
  %31 = load %struct.sv*, %struct.sv** %freezer.addr, align 8
  %sv_any27 = getelementptr inbounds %struct.sv, %struct.sv* %31, i32 0, i32 0
  %32 = load i8*, i8** %sv_any27, align 8
  %33 = bitcast i8* %32 to %struct.xpv*
  %xpv_cur28 = getelementptr inbounds %struct.xpv, %struct.xpv* %33, i32 0, i32 1
  %34 = load i64, i64* %xpv_cur28, align 8
  %call29 = call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %26, i8* %30, i64 %34, i32 -1)
  %cmp = icmp ne %struct.gv* %call29, null
  br i1 %cmp, label %if.then.30, label %if.end.119

if.then.30:                                       ; preds = %land.lhs.true.22
  %35 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %35, %struct.sv*** %sp, align 8
  call void @Perl_push_scope()
  call void @Perl_save_int(i32* @PL_tmps_floor)
  %36 = load i32, i32* @PL_tmps_ix, align 4
  store i32 %36, i32* @PL_tmps_floor, align 4
  %37 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %38 = load i32*, i32** @PL_markstack_max, align 8
  %cmp31 = icmp eq i32* %incdec.ptr, %38
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.30
  call void @Perl_markstack_grow()
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.then.30
  %39 = load %struct.sv**, %struct.sv*** %sp, align 8
  %40 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %39 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %40 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  %41 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv, i32* %41, align 4
  store i32 %conv, i32* %tmp
  %42 = load i32, i32* %tmp
  %43 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %44 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast34 = ptrtoint %struct.sv** %43 to i64
  %sub.ptr.rhs.cast35 = ptrtoint %struct.sv** %44 to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  %sub.ptr.div37 = sdiv exact i64 %sub.ptr.sub36, 8
  %cmp38 = icmp slt i64 %sub.ptr.div37, 1
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.33
  %45 = load %struct.sv**, %struct.sv*** %sp, align 8
  %46 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call41 = call %struct.sv** @Perl_stack_grow(%struct.sv** %45, %struct.sv** %46, i32 1)
  store %struct.sv** %call41, %struct.sv*** %sp, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.33
  %47 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %48 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr44 = getelementptr inbounds %struct.sv*, %struct.sv** %48, i32 1
  store %struct.sv** %incdec.ptr44, %struct.sv*** %sp, align 8
  store %struct.sv* %47, %struct.sv** %incdec.ptr44, align 8
  store %struct.sv* %47, %struct.sv** %tmp43
  %49 = load %struct.sv*, %struct.sv** %tmp43
  %50 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %50, %struct.sv*** @PL_stack_sp, align 8
  %51 = load %struct.sv*, %struct.sv** %freezer.addr, align 8
  %sv_any45 = getelementptr inbounds %struct.sv, %struct.sv* %51, i32 0, i32 0
  %52 = load i8*, i8** %sv_any45, align 8
  %53 = bitcast i8* %52 to %struct.xpv*
  %xpv_pv46 = getelementptr inbounds %struct.xpv, %struct.xpv* %53, i32 0, i32 0
  %54 = load i8*, i8** %xpv_pv46, align 8
  %call47 = call i32 @Perl_call_method(i8* %54, i32 132)
  store i32 %call47, i32* %i, align 4
  %55 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %55, %struct.sv*** %sp, align 8
  %56 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any48 = getelementptr inbounds %struct.gv, %struct.gv* %56, i32 0, i32 0
  %57 = load %struct.xpvgv*, %struct.xpvgv** %sv_any48, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %57, i32 0, i32 7
  %58 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %58, i32 0, i32 0
  %59 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %tobool49 = icmp ne %struct.sv* %59, null
  br i1 %tobool49, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.42
  br i1 false, label %if.then.110, label %if.end.114

cond.false:                                       ; preds = %if.end.42
  %60 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any50 = getelementptr inbounds %struct.gv, %struct.gv* %60, i32 0, i32 0
  %61 = load %struct.xpvgv*, %struct.xpvgv** %sv_any50, align 8
  %xgv_gp51 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %61, i32 0, i32 7
  %62 = load %struct.gp*, %struct.gp** %xgv_gp51, align 8
  %gp_sv52 = getelementptr inbounds %struct.gp, %struct.gp* %62, i32 0, i32 0
  %63 = load %struct.sv*, %struct.sv** %gp_sv52, align 8
  %sv_flags53 = getelementptr inbounds %struct.sv, %struct.sv* %63, i32 0, i32 2
  %64 = load i32, i32* %sv_flags53, align 4
  %and54 = and i32 %64, 262144
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %cond.true.56, label %cond.false.75

cond.true.56:                                     ; preds = %cond.false
  %65 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any57 = getelementptr inbounds %struct.gv, %struct.gv* %65, i32 0, i32 0
  %66 = load %struct.xpvgv*, %struct.xpvgv** %sv_any57, align 8
  %xgv_gp58 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %66, i32 0, i32 7
  %67 = load %struct.gp*, %struct.gp** %xgv_gp58, align 8
  %gp_sv59 = getelementptr inbounds %struct.gp, %struct.gp* %67, i32 0, i32 0
  %68 = load %struct.sv*, %struct.sv** %gp_sv59, align 8
  %sv_any60 = getelementptr inbounds %struct.sv, %struct.sv* %68, i32 0, i32 0
  %69 = load i8*, i8** %sv_any60, align 8
  %70 = bitcast i8* %69 to %struct.xpv*
  store %struct.xpv* %70, %struct.xpv** @PL_Xpv, align 8
  %tobool61 = icmp ne %struct.xpv* %70, null
  br i1 %tobool61, label %land.lhs.true.62, label %cond.false.74

land.lhs.true.62:                                 ; preds = %cond.true.56
  %71 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur63 = getelementptr inbounds %struct.xpv, %struct.xpv* %71, i32 0, i32 1
  %72 = load i64, i64* %xpv_cur63, align 8
  %cmp64 = icmp ugt i64 %72, 1
  br i1 %cmp64, label %cond.true.73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.62
  %73 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur66 = getelementptr inbounds %struct.xpv, %struct.xpv* %73, i32 0, i32 1
  %74 = load i64, i64* %xpv_cur66, align 8
  %tobool67 = icmp ne i64 %74, 0
  br i1 %tobool67, label %land.lhs.true.68, label %cond.false.74

land.lhs.true.68:                                 ; preds = %lor.lhs.false
  %75 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv69 = getelementptr inbounds %struct.xpv, %struct.xpv* %75, i32 0, i32 0
  %76 = load i8*, i8** %xpv_pv69, align 8
  %77 = load i8, i8* %76, align 1
  %conv70 = sext i8 %77 to i32
  %cmp71 = icmp ne i32 %conv70, 48
  br i1 %cmp71, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %land.lhs.true.68, %land.lhs.true.62
  br i1 true, label %if.then.110, label %if.end.114

cond.false.74:                                    ; preds = %land.lhs.true.68, %lor.lhs.false, %cond.true.56
  br i1 false, label %if.then.110, label %if.end.114

cond.false.75:                                    ; preds = %cond.false
  %78 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any76 = getelementptr inbounds %struct.gv, %struct.gv* %78, i32 0, i32 0
  %79 = load %struct.xpvgv*, %struct.xpvgv** %sv_any76, align 8
  %xgv_gp77 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %79, i32 0, i32 7
  %80 = load %struct.gp*, %struct.gp** %xgv_gp77, align 8
  %gp_sv78 = getelementptr inbounds %struct.gp, %struct.gp* %80, i32 0, i32 0
  %81 = load %struct.sv*, %struct.sv** %gp_sv78, align 8
  %sv_flags79 = getelementptr inbounds %struct.sv, %struct.sv* %81, i32 0, i32 2
  %82 = load i32, i32* %sv_flags79, align 4
  %and80 = and i32 %82, 65536
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %cond.true.82, label %cond.false.89

cond.true.82:                                     ; preds = %cond.false.75
  %83 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any83 = getelementptr inbounds %struct.gv, %struct.gv* %83, i32 0, i32 0
  %84 = load %struct.xpvgv*, %struct.xpvgv** %sv_any83, align 8
  %xgv_gp84 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %84, i32 0, i32 7
  %85 = load %struct.gp*, %struct.gp** %xgv_gp84, align 8
  %gp_sv85 = getelementptr inbounds %struct.gp, %struct.gp* %85, i32 0, i32 0
  %86 = load %struct.sv*, %struct.sv** %gp_sv85, align 8
  %sv_any86 = getelementptr inbounds %struct.sv, %struct.sv* %86, i32 0, i32 0
  %87 = load i8*, i8** %sv_any86, align 8
  %88 = bitcast i8* %87 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %88, i32 0, i32 3
  %89 = load i64, i64* %xiv_iv, align 8
  %cmp87 = icmp ne i64 %89, 0
  br i1 %cmp87, label %if.then.110, label %if.end.114

cond.false.89:                                    ; preds = %cond.false.75
  %90 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any90 = getelementptr inbounds %struct.gv, %struct.gv* %90, i32 0, i32 0
  %91 = load %struct.xpvgv*, %struct.xpvgv** %sv_any90, align 8
  %xgv_gp91 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %91, i32 0, i32 7
  %92 = load %struct.gp*, %struct.gp** %xgv_gp91, align 8
  %gp_sv92 = getelementptr inbounds %struct.gp, %struct.gp* %92, i32 0, i32 0
  %93 = load %struct.sv*, %struct.sv** %gp_sv92, align 8
  %sv_flags93 = getelementptr inbounds %struct.sv, %struct.sv* %93, i32 0, i32 2
  %94 = load i32, i32* %sv_flags93, align 4
  %and94 = and i32 %94, 131072
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %cond.true.96, label %cond.false.103

cond.true.96:                                     ; preds = %cond.false.89
  %95 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any97 = getelementptr inbounds %struct.gv, %struct.gv* %95, i32 0, i32 0
  %96 = load %struct.xpvgv*, %struct.xpvgv** %sv_any97, align 8
  %xgv_gp98 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %96, i32 0, i32 7
  %97 = load %struct.gp*, %struct.gp** %xgv_gp98, align 8
  %gp_sv99 = getelementptr inbounds %struct.gp, %struct.gp* %97, i32 0, i32 0
  %98 = load %struct.sv*, %struct.sv** %gp_sv99, align 8
  %sv_any100 = getelementptr inbounds %struct.sv, %struct.sv* %98, i32 0, i32 0
  %99 = load i8*, i8** %sv_any100, align 8
  %100 = bitcast i8* %99 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %100, i32 0, i32 4
  %101 = load double, double* %xnv_nv, align 8
  %cmp101 = fcmp une double %101, 0.000000e+00
  br i1 %cmp101, label %if.then.110, label %if.end.114

cond.false.103:                                   ; preds = %cond.false.89
  %102 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any104 = getelementptr inbounds %struct.gv, %struct.gv* %102, i32 0, i32 0
  %103 = load %struct.xpvgv*, %struct.xpvgv** %sv_any104, align 8
  %xgv_gp105 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %103, i32 0, i32 7
  %104 = load %struct.gp*, %struct.gp** %xgv_gp105, align 8
  %gp_sv106 = getelementptr inbounds %struct.gp, %struct.gp* %104, i32 0, i32 0
  %105 = load %struct.sv*, %struct.sv** %gp_sv106, align 8
  %call107 = call signext i8 @Perl_sv_2bool(%struct.sv* %105)
  %conv108 = sext i8 %call107 to i32
  %tobool109 = icmp ne i32 %conv108, 0
  br i1 %tobool109, label %if.then.110, label %if.end.114

if.then.110:                                      ; preds = %cond.false.103, %cond.true.96, %cond.true.82, %cond.false.74, %cond.true.73, %cond.true
  %106 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any111 = getelementptr inbounds %struct.gv, %struct.gv* %106, i32 0, i32 0
  %107 = load %struct.xpvgv*, %struct.xpvgv** %sv_any111, align 8
  %xgv_gp112 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %107, i32 0, i32 7
  %108 = load %struct.gp*, %struct.gp** %xgv_gp112, align 8
  %gp_sv113 = getelementptr inbounds %struct.gp, %struct.gp* %108, i32 0, i32 0
  %109 = load %struct.sv*, %struct.sv** %gp_sv113, align 8
  call void (i8*, ...) @Perl_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i32 0, i32 0), %struct.sv* %109)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.110, %cond.false.103, %cond.true.96, %cond.true.82, %cond.false.74, %cond.true.73, %cond.true
  %110 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %110, %struct.sv*** @PL_stack_sp, align 8
  %111 = load i32, i32* @PL_tmps_ix, align 4
  %112 = load i32, i32* @PL_tmps_floor, align 4
  %cmp115 = icmp sgt i32 %111, %112
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.end.114
  call void @Perl_free_tmps()
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %if.end.114
  call void @Perl_pop_scope()
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %land.lhs.true.22, %land.lhs.true.19, %land.lhs.true.15, %land.lhs.true, %if.then.10
  %113 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_any120 = getelementptr inbounds %struct.sv, %struct.sv* %113, i32 0, i32 0
  %114 = load i8*, i8** %sv_any120, align 8
  %115 = bitcast i8* %114 to %struct.xrv*
  %xrv_rv121 = getelementptr inbounds %struct.xrv, %struct.xrv* %115, i32 0, i32 0
  %116 = load %struct.sv*, %struct.sv** %xrv_rv121, align 8
  store %struct.sv* %116, %struct.sv** %ival, align 8
  %117 = load %struct.sv*, %struct.sv** %ival, align 8
  %sv_flags122 = getelementptr inbounds %struct.sv, %struct.sv* %117, i32 0, i32 2
  %118 = load i32, i32* %sv_flags122, align 4
  %and123 = and i32 %118, 255
  store i32 %and123, i32* %realtype, align 4
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %id, i32 0, i32 0
  %119 = load %struct.sv*, %struct.sv** %ival, align 8
  %120 = ptrtoint %struct.sv* %119 to i64
  %call124 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i64 %120)
  %arraydecay125 = getelementptr inbounds [128 x i8], [128 x i8]* %id, i32 0, i32 0
  %call126 = call i64 @strlen(i8* %arraydecay125)
  store i64 %call126, i64* %idlen, align 8
  %121 = load %struct.sv*, %struct.sv** %ival, align 8
  %sv_flags127 = getelementptr inbounds %struct.sv, %struct.sv* %121, i32 0, i32 2
  %122 = load i32, i32* %sv_flags127, align 4
  %and128 = and i32 %122, 4096
  %tobool129 = icmp ne i32 %and128, 0
  br i1 %tobool129, label %if.then.130, label %if.else

if.then.130:                                      ; preds = %if.end.119
  %123 = load %struct.sv*, %struct.sv** %ival, align 8
  %sv_any131 = getelementptr inbounds %struct.sv, %struct.sv* %123, i32 0, i32 0
  %124 = load i8*, i8** %sv_any131, align 8
  %125 = bitcast i8* %124 to %struct.xpvmg*
  %xmg_stash132 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %125, i32 0, i32 6
  %126 = load %struct.hv*, %struct.hv** %xmg_stash132, align 8
  %sv_any133 = getelementptr inbounds %struct.hv, %struct.hv* %126, i32 0, i32 0
  %127 = load %struct.xpvhv*, %struct.xpvhv** %sv_any133, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %127, i32 0, i32 10
  %128 = load i8*, i8** %xhv_name, align 8
  store i8* %128, i8** %realpack, align 8
  br label %if.end.134

if.else:                                          ; preds = %if.end.119
  store i8* null, i8** %realpack, align 8
  br label %if.end.134

if.end.134:                                       ; preds = %if.else, %if.then.130
  %129 = load i64, i64* %namelen.addr, align 8
  %tobool135 = icmp ne i64 %129, 0
  br i1 %tobool135, label %if.then.136, label %if.end.252

if.then.136:                                      ; preds = %if.end.134
  %130 = load %struct.hv*, %struct.hv** %seenhv.addr, align 8
  %arraydecay137 = getelementptr inbounds [128 x i8], [128 x i8]* %id, i32 0, i32 0
  %131 = load i64, i64* %idlen, align 8
  %conv138 = trunc i64 %131 to i32
  %call139 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %130, i8* %arraydecay137, i32 %conv138, i32 0)
  store %struct.sv** %call139, %struct.sv*** %svp, align 8
  %tobool140 = icmp ne %struct.sv** %call139, null
  br i1 %tobool140, label %land.lhs.true.141, label %if.else.212

land.lhs.true.141:                                ; preds = %if.then.136
  %132 = load %struct.sv**, %struct.sv*** %svp, align 8
  %133 = load %struct.sv*, %struct.sv** %132, align 8
  store %struct.sv* %133, %struct.sv** %sv, align 8
  %tobool142 = icmp ne %struct.sv* %133, null
  br i1 %tobool142, label %land.lhs.true.143, label %if.else.212

land.lhs.true.143:                                ; preds = %land.lhs.true.141
  %134 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags144 = getelementptr inbounds %struct.sv, %struct.sv* %134, i32 0, i32 2
  %135 = load i32, i32* %sv_flags144, align 4
  %and145 = and i32 %135, 524288
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %land.lhs.true.147, label %if.else.212

land.lhs.true.147:                                ; preds = %land.lhs.true.143
  %136 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any148 = getelementptr inbounds %struct.sv, %struct.sv* %136, i32 0, i32 0
  %137 = load i8*, i8** %sv_any148, align 8
  %138 = bitcast i8* %137 to %struct.xrv*
  %xrv_rv149 = getelementptr inbounds %struct.xrv, %struct.xrv* %138, i32 0, i32 0
  %139 = load %struct.sv*, %struct.sv** %xrv_rv149, align 8
  %140 = bitcast %struct.sv* %139 to %struct.av*
  store %struct.av* %140, %struct.av** %seenentry, align 8
  %tobool150 = icmp ne %struct.av* %140, null
  br i1 %tobool150, label %if.then.151, label %if.else.212

if.then.151:                                      ; preds = %land.lhs.true.147
  %141 = load %struct.av*, %struct.av** %seenentry, align 8
  %call153 = call %struct.sv** @Perl_av_fetch(%struct.av* %141, i32 0, i32 0)
  store %struct.sv** %call153, %struct.sv*** %svp, align 8
  %tobool154 = icmp ne %struct.sv** %call153, null
  br i1 %tobool154, label %land.lhs.true.155, label %if.else.210

land.lhs.true.155:                                ; preds = %if.then.151
  %142 = load %struct.sv**, %struct.sv*** %svp, align 8
  %143 = load %struct.sv*, %struct.sv** %142, align 8
  store %struct.sv* %143, %struct.sv** %othername, align 8
  %tobool156 = icmp ne %struct.sv* %143, null
  br i1 %tobool156, label %if.then.157, label %if.else.210

if.then.157:                                      ; preds = %land.lhs.true.155
  %144 = load i32, i32* %purity.addr, align 4
  %tobool158 = icmp ne i32 %144, 0
  br i1 %tobool158, label %land.lhs.true.159, label %if.else.175

land.lhs.true.159:                                ; preds = %if.then.157
  %145 = load i32*, i32** %levelp.addr, align 8
  %146 = load i32, i32* %145, align 4
  %cmp160 = icmp sgt i32 %146, 0
  br i1 %cmp160, label %if.then.162, label %if.else.175

if.then.162:                                      ; preds = %land.lhs.true.159
  %147 = load i32, i32* %realtype, align 4
  %cmp164 = icmp eq i32 %147, 11
  br i1 %cmp164, label %if.then.166, label %if.else.167

if.then.166:                                      ; preds = %if.then.162
  %148 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i64 2, i32 2)
  br label %if.end.173

if.else.167:                                      ; preds = %if.then.162
  %149 = load i32, i32* %realtype, align 4
  %cmp168 = icmp eq i32 %149, 10
  br i1 %cmp168, label %if.then.170, label %if.else.171

if.then.170:                                      ; preds = %if.else.167
  %150 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i64 2, i32 2)
  br label %if.end.172

if.else.171:                                      ; preds = %if.else.167
  %151 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %151, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i64 9, i32 2)
  br label %if.end.172

if.end.172:                                       ; preds = %if.else.171, %if.then.170
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.then.166
  %152 = load i8*, i8** %name.addr, align 8
  %153 = load i64, i64* %namelen.addr, align 8
  %call174 = call %struct.sv* @Perl_newSVpvn(i8* %152, i64 %153)
  store %struct.sv* %call174, %struct.sv** %postentry, align 8
  %154 = load %struct.sv*, %struct.sv** %postentry, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i64 3, i32 2)
  %155 = load %struct.sv*, %struct.sv** %postentry, align 8
  %156 = load %struct.sv*, %struct.sv** %othername, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %155, %struct.sv* %156, i32 2)
  %157 = load %struct.av*, %struct.av** %postav.addr, align 8
  %158 = load %struct.sv*, %struct.sv** %postentry, align 8
  call void @Perl_av_push(%struct.av* %157, %struct.sv* %158)
  br label %if.end.209

if.else.175:                                      ; preds = %land.lhs.true.159, %if.then.157
  %159 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %159, i64 0
  %160 = load i8, i8* %arrayidx, align 1
  %conv176 = sext i8 %160 to i32
  %cmp177 = icmp eq i32 %conv176, 64
  br i1 %cmp177, label %if.then.184, label %lor.lhs.false.179

lor.lhs.false.179:                                ; preds = %if.else.175
  %161 = load i8*, i8** %name.addr, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %161, i64 0
  %162 = load i8, i8* %arrayidx180, align 1
  %conv181 = sext i8 %162 to i32
  %cmp182 = icmp eq i32 %conv181, 37
  br i1 %cmp182, label %if.then.184, label %if.else.207

if.then.184:                                      ; preds = %lor.lhs.false.179, %if.else.175
  %163 = load %struct.sv*, %struct.sv** %othername, align 8
  %sv_any185 = getelementptr inbounds %struct.sv, %struct.sv* %163, i32 0, i32 0
  %164 = load i8*, i8** %sv_any185, align 8
  %165 = bitcast i8* %164 to %struct.xpv*
  %xpv_pv186 = getelementptr inbounds %struct.xpv, %struct.xpv* %165, i32 0, i32 0
  %166 = load i8*, i8** %xpv_pv186, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %166, i64 0
  %167 = load i8, i8* %arrayidx187, align 1
  %conv188 = sext i8 %167 to i32
  %cmp189 = icmp eq i32 %conv188, 92
  br i1 %cmp189, label %land.lhs.true.191, label %if.else.205

land.lhs.true.191:                                ; preds = %if.then.184
  %168 = load %struct.sv*, %struct.sv** %othername, align 8
  %sv_any192 = getelementptr inbounds %struct.sv, %struct.sv* %168, i32 0, i32 0
  %169 = load i8*, i8** %sv_any192, align 8
  %170 = bitcast i8* %169 to %struct.xpv*
  %xpv_pv193 = getelementptr inbounds %struct.xpv, %struct.xpv* %170, i32 0, i32 0
  %171 = load i8*, i8** %xpv_pv193, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %171, i64 1
  %172 = load i8, i8* %arrayidx194, align 1
  %conv195 = sext i8 %172 to i32
  %173 = load i8*, i8** %name.addr, align 8
  %arrayidx196 = getelementptr inbounds i8, i8* %173, i64 0
  %174 = load i8, i8* %arrayidx196, align 1
  %conv197 = sext i8 %174 to i32
  %cmp198 = icmp eq i32 %conv195, %conv197
  br i1 %cmp198, label %if.then.200, label %if.else.205

if.then.200:                                      ; preds = %land.lhs.true.191
  %175 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %176 = load %struct.sv*, %struct.sv** %othername, align 8
  %sv_any201 = getelementptr inbounds %struct.sv, %struct.sv* %176, i32 0, i32 0
  %177 = load i8*, i8** %sv_any201, align 8
  %178 = bitcast i8* %177 to %struct.xpv*
  %xpv_pv202 = getelementptr inbounds %struct.xpv, %struct.xpv* %178, i32 0, i32 0
  %179 = load i8*, i8** %xpv_pv202, align 8
  %add.ptr = getelementptr inbounds i8, i8* %179, i64 1
  %180 = load %struct.sv*, %struct.sv** %othername, align 8
  %sv_any203 = getelementptr inbounds %struct.sv, %struct.sv* %180, i32 0, i32 0
  %181 = load i8*, i8** %sv_any203, align 8
  %182 = bitcast i8* %181 to %struct.xpv*
  %xpv_cur204 = getelementptr inbounds %struct.xpv, %struct.xpv* %182, i32 0, i32 1
  %183 = load i64, i64* %xpv_cur204, align 8
  %sub = sub i64 %183, 1
  call void @Perl_sv_catpvn_flags(%struct.sv* %175, i8* %add.ptr, i64 %sub, i32 2)
  br label %if.end.206

if.else.205:                                      ; preds = %land.lhs.true.191, %if.then.184
  %184 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %185 = load i8*, i8** %name.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %184, i8* %185, i64 1, i32 2)
  %186 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %186, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i64 1, i32 2)
  %187 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %188 = load %struct.sv*, %struct.sv** %othername, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %187, %struct.sv* %188, i32 2)
  %189 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %189, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i64 1, i32 2)
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.205, %if.then.200
  br label %if.end.208

if.else.207:                                      ; preds = %lor.lhs.false.179
  %190 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %191 = load %struct.sv*, %struct.sv** %othername, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %190, %struct.sv* %191, i32 2)
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.207, %if.end.206
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.end.173
  store i32 1, i32* %retval
  br label %return

if.else.210:                                      ; preds = %land.lhs.true.155, %if.then.151
  %arraydecay211 = getelementptr inbounds [128 x i8], [128 x i8]* %id, i32 0, i32 0
  call void (i8*, ...) @Perl_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0), i8* %arraydecay211)
  store i32 0, i32* %retval
  br label %return

if.else.212:                                      ; preds = %land.lhs.true.147, %land.lhs.true.143, %land.lhs.true.141, %if.then.136
  %192 = load i8*, i8** %name.addr, align 8
  %arrayidx214 = getelementptr inbounds i8, i8* %192, i64 0
  %193 = load i8, i8* %arrayidx214, align 1
  %conv215 = sext i8 %193 to i32
  %cmp216 = icmp eq i32 %conv215, 64
  br i1 %cmp216, label %if.then.223, label %lor.lhs.false.218

lor.lhs.false.218:                                ; preds = %if.else.212
  %194 = load i8*, i8** %name.addr, align 8
  %arrayidx219 = getelementptr inbounds i8, i8* %194, i64 0
  %195 = load i8, i8* %arrayidx219, align 1
  %conv220 = sext i8 %195 to i32
  %cmp221 = icmp eq i32 %conv220, 37
  br i1 %cmp221, label %if.then.223, label %if.else.225

if.then.223:                                      ; preds = %lor.lhs.false.218, %if.else.212
  %call224 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i64 1)
  store %struct.sv* %call224, %struct.sv** %namesv, align 8
  %196 = load %struct.sv*, %struct.sv** %namesv, align 8
  %197 = load i8*, i8** %name.addr, align 8
  %198 = load i64, i64* %namelen.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %196, i8* %197, i64 %198, i32 2)
  br label %if.end.241

if.else.225:                                      ; preds = %lor.lhs.false.218
  %199 = load i32, i32* %realtype, align 4
  %cmp226 = icmp eq i32 %199, 12
  br i1 %cmp226, label %land.lhs.true.228, label %if.else.238

land.lhs.true.228:                                ; preds = %if.else.225
  %200 = load i8*, i8** %name.addr, align 8
  %arrayidx229 = getelementptr inbounds i8, i8* %200, i64 0
  %201 = load i8, i8* %arrayidx229, align 1
  %conv230 = sext i8 %201 to i32
  %cmp231 = icmp eq i32 %conv230, 42
  br i1 %cmp231, label %if.then.233, label %if.else.238

if.then.233:                                      ; preds = %land.lhs.true.228
  %call234 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i64 2)
  store %struct.sv* %call234, %struct.sv** %namesv, align 8
  %202 = load %struct.sv*, %struct.sv** %namesv, align 8
  %203 = load i8*, i8** %name.addr, align 8
  %204 = load i64, i64* %namelen.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %202, i8* %203, i64 %204, i32 2)
  %205 = load %struct.sv*, %struct.sv** %namesv, align 8
  %sv_any235 = getelementptr inbounds %struct.sv, %struct.sv* %205, i32 0, i32 0
  %206 = load i8*, i8** %sv_any235, align 8
  %207 = bitcast i8* %206 to %struct.xpv*
  %xpv_pv236 = getelementptr inbounds %struct.xpv, %struct.xpv* %207, i32 0, i32 0
  %208 = load i8*, i8** %xpv_pv236, align 8
  %arrayidx237 = getelementptr inbounds i8, i8* %208, i64 1
  store i8 38, i8* %arrayidx237, align 1
  br label %if.end.240

if.else.238:                                      ; preds = %land.lhs.true.228, %if.else.225
  %209 = load i8*, i8** %name.addr, align 8
  %210 = load i64, i64* %namelen.addr, align 8
  %call239 = call %struct.sv* @Perl_newSVpvn(i8* %209, i64 %210)
  store %struct.sv* %call239, %struct.sv** %namesv, align 8
  br label %if.end.240

if.end.240:                                       ; preds = %if.else.238, %if.then.233
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.then.223
  %call242 = call %struct.av* @Perl_newAV()
  store %struct.av* %call242, %struct.av** %seenentry, align 8
  %211 = load %struct.av*, %struct.av** %seenentry, align 8
  %212 = load %struct.sv*, %struct.sv** %namesv, align 8
  call void @Perl_av_push(%struct.av* %211, %struct.sv* %212)
  %213 = load %struct.sv*, %struct.sv** %val.addr, align 8
  store %struct.sv* %213, %struct.sv** @PL_Sv, align 8
  %214 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool243 = icmp ne %struct.sv* %214, null
  br i1 %tobool243, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.241
  %215 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %215, i32 0, i32 1
  %216 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %216, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool244 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.241
  %217 = phi i1 [ false, %if.end.241 ], [ %tobool244, %land.rhs ]
  %land.ext = zext i1 %217 to i32
  %218 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %219 = load %struct.av*, %struct.av** %seenentry, align 8
  %220 = load %struct.sv*, %struct.sv** %val.addr, align 8
  call void @Perl_av_push(%struct.av* %219, %struct.sv* %220)
  %221 = load %struct.hv*, %struct.hv** %seenhv.addr, align 8
  %arraydecay245 = getelementptr inbounds [128 x i8], [128 x i8]* %id, i32 0, i32 0
  %arraydecay246 = getelementptr inbounds [128 x i8], [128 x i8]* %id, i32 0, i32 0
  %call247 = call i64 @strlen(i8* %arraydecay246)
  %conv248 = trunc i64 %call247 to i32
  %222 = load %struct.av*, %struct.av** %seenentry, align 8
  %223 = bitcast %struct.av* %222 to %struct.sv*
  %call249 = call %struct.sv* @Perl_newRV(%struct.sv* %223)
  %call250 = call %struct.sv** @Perl_hv_store(%struct.hv* %221, i8* %arraydecay245, i32 %conv248, %struct.sv* %call249, i32 0)
  %224 = load %struct.av*, %struct.av** %seenentry, align 8
  %225 = bitcast %struct.av* %224 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %225)
  br label %if.end.251

if.end.251:                                       ; preds = %land.end
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.251, %if.end.134
  %226 = load i8*, i8** %realpack, align 8
  %tobool253 = icmp ne i8* %226, null
  br i1 %tobool253, label %land.lhs.true.254, label %if.end.287

land.lhs.true.254:                                ; preds = %if.end.252
  %227 = load i8*, i8** %realpack, align 8
  %228 = load i8, i8* %227, align 1
  %conv255 = sext i8 %228 to i32
  %cmp256 = icmp eq i32 %conv255, 82
  br i1 %cmp256, label %land.lhs.true.258, label %if.end.287

land.lhs.true.258:                                ; preds = %land.lhs.true.254
  %229 = load i8*, i8** %realpack, align 8
  %call259 = call i32 @strcmp(i8* %229, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0))
  %tobool260 = icmp ne i32 %call259, 0
  br i1 %tobool260, label %if.end.287, label %if.then.261

if.then.261:                                      ; preds = %land.lhs.true.258
  %230 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_flags264 = getelementptr inbounds %struct.sv, %struct.sv* %230, i32 0, i32 2
  %231 = load i32, i32* %sv_flags264, align 4
  %and265 = and i32 %231, 262144
  %cmp266 = icmp eq i32 %and265, 262144
  br i1 %cmp266, label %cond.true.268, label %cond.false.273

cond.true.268:                                    ; preds = %if.then.261
  %232 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_any269 = getelementptr inbounds %struct.sv, %struct.sv* %232, i32 0, i32 0
  %233 = load i8*, i8** %sv_any269, align 8
  %234 = bitcast i8* %233 to %struct.xpv*
  %xpv_cur270 = getelementptr inbounds %struct.xpv, %struct.xpv* %234, i32 0, i32 1
  %235 = load i64, i64* %xpv_cur270, align 8
  store i64 %235, i64* %rlen, align 8
  %236 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_any271 = getelementptr inbounds %struct.sv, %struct.sv* %236, i32 0, i32 0
  %237 = load i8*, i8** %sv_any271, align 8
  %238 = bitcast i8* %237 to %struct.xpv*
  %xpv_pv272 = getelementptr inbounds %struct.xpv, %struct.xpv* %238, i32 0, i32 0
  %239 = load i8*, i8** %xpv_pv272, align 8
  br label %cond.end

cond.false.273:                                   ; preds = %if.then.261
  %240 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %call274 = call i8* @Perl_sv_2pv_flags(%struct.sv* %240, i64* %rlen, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.273, %cond.true.268
  %cond = phi i8* [ %239, %cond.true.268 ], [ %call274, %cond.false.273 ]
  store i8* %cond, i8** %rval, align 8
  %241 = load i8*, i8** %rval, align 8
  %call276 = call i8* @strchr(i8* %241, i32 47)
  store i8* %call276, i8** %slash, align 8
  %242 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %242, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i64 3, i32 2)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %243 = load i8*, i8** %slash, align 8
  %tobool277 = icmp ne i8* %243, null
  br i1 %tobool277, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %244 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %245 = load i8*, i8** %rval, align 8
  %246 = load i8*, i8** %slash, align 8
  %247 = load i8*, i8** %rval, align 8
  %sub.ptr.lhs.cast278 = ptrtoint i8* %246 to i64
  %sub.ptr.rhs.cast279 = ptrtoint i8* %247 to i64
  %sub.ptr.sub280 = sub i64 %sub.ptr.lhs.cast278, %sub.ptr.rhs.cast279
  call void @Perl_sv_catpvn_flags(%struct.sv* %244, i8* %245, i64 %sub.ptr.sub280, i32 2)
  %248 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %248, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i64 2, i32 2)
  %249 = load i8*, i8** %slash, align 8
  %250 = load i8*, i8** %rval, align 8
  %sub.ptr.lhs.cast281 = ptrtoint i8* %249 to i64
  %sub.ptr.rhs.cast282 = ptrtoint i8* %250 to i64
  %sub.ptr.sub283 = sub i64 %sub.ptr.lhs.cast281, %sub.ptr.rhs.cast282
  %add = add nsw i64 %sub.ptr.sub283, 1
  %251 = load i64, i64* %rlen, align 8
  %sub284 = sub i64 %251, %add
  store i64 %sub284, i64* %rlen, align 8
  %252 = load i8*, i8** %slash, align 8
  %add.ptr285 = getelementptr inbounds i8, i8* %252, i64 1
  store i8* %add.ptr285, i8** %rval, align 8
  %253 = load i8*, i8** %rval, align 8
  %call286 = call i8* @strchr(i8* %253, i32 47)
  store i8* %call286, i8** %slash, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %254 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %255 = load i8*, i8** %rval, align 8
  %256 = load i64, i64* %rlen, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %254, i8* %255, i64 %256, i32 2)
  %257 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %257, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i64 1, i32 2)
  store i32 1, i32* %retval
  br label %return

if.end.287:                                       ; preds = %land.lhs.true.258, %land.lhs.true.254, %if.end.252
  %258 = load i32, i32* %purity.addr, align 4
  %tobool288 = icmp ne i32 %258, 0
  br i1 %tobool288, label %if.end.311, label %land.lhs.true.289

land.lhs.true.289:                                ; preds = %if.end.287
  %259 = load i32, i32* %maxdepth.addr, align 4
  %cmp290 = icmp sgt i32 %259, 0
  br i1 %cmp290, label %land.lhs.true.292, label %if.end.311

land.lhs.true.292:                                ; preds = %land.lhs.true.289
  %260 = load i32*, i32** %levelp.addr, align 8
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %maxdepth.addr, align 4
  %cmp293 = icmp sge i32 %261, %262
  br i1 %cmp293, label %if.then.295, label %if.end.311

if.then.295:                                      ; preds = %land.lhs.true.292
  %263 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_flags298 = getelementptr inbounds %struct.sv, %struct.sv* %263, i32 0, i32 2
  %264 = load i32, i32* %sv_flags298, align 4
  %and299 = and i32 %264, 262144
  %cmp300 = icmp eq i32 %and299, 262144
  br i1 %cmp300, label %cond.true.302, label %cond.false.307

cond.true.302:                                    ; preds = %if.then.295
  %265 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_any303 = getelementptr inbounds %struct.sv, %struct.sv* %265, i32 0, i32 0
  %266 = load i8*, i8** %sv_any303, align 8
  %267 = bitcast i8* %266 to %struct.xpv*
  %xpv_cur304 = getelementptr inbounds %struct.xpv, %struct.xpv* %267, i32 0, i32 1
  %268 = load i64, i64* %xpv_cur304, align 8
  store i64 %268, i64* %vallen, align 8
  %269 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_any305 = getelementptr inbounds %struct.sv, %struct.sv* %269, i32 0, i32 0
  %270 = load i8*, i8** %sv_any305, align 8
  %271 = bitcast i8* %270 to %struct.xpv*
  %xpv_pv306 = getelementptr inbounds %struct.xpv, %struct.xpv* %271, i32 0, i32 0
  %272 = load i8*, i8** %xpv_pv306, align 8
  br label %cond.end.309

cond.false.307:                                   ; preds = %if.then.295
  %273 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %call308 = call i8* @Perl_sv_2pv_flags(%struct.sv* %273, i64* %vallen, i32 2)
  br label %cond.end.309

cond.end.309:                                     ; preds = %cond.false.307, %cond.true.302
  %cond310 = phi i8* [ %272, %cond.true.302 ], [ %call308, %cond.false.307 ]
  store i8* %cond310, i8** %valstr, align 8
  %274 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %274, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0), i64 1, i32 2)
  %275 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %276 = load i8*, i8** %valstr, align 8
  %277 = load i64, i64* %vallen, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %275, i8* %276, i64 %277, i32 2)
  %278 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %278, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0), i64 1, i32 2)
  store i32 1, i32* %retval
  br label %return

if.end.311:                                       ; preds = %land.lhs.true.292, %land.lhs.true.289, %if.end.287
  %279 = load i8*, i8** %realpack, align 8
  %tobool312 = icmp ne i8* %279, null
  br i1 %tobool312, label %if.then.313, label %if.end.337

if.then.313:                                      ; preds = %if.end.311
  %280 = load %struct.sv*, %struct.sv** %bless.addr, align 8
  %sv_flags316 = getelementptr inbounds %struct.sv, %struct.sv* %280, i32 0, i32 2
  %281 = load i32, i32* %sv_flags316, align 4
  %and317 = and i32 %281, 262144
  %cmp318 = icmp eq i32 %and317, 262144
  br i1 %cmp318, label %cond.true.320, label %cond.false.325

cond.true.320:                                    ; preds = %if.then.313
  %282 = load %struct.sv*, %struct.sv** %bless.addr, align 8
  %sv_any321 = getelementptr inbounds %struct.sv, %struct.sv* %282, i32 0, i32 0
  %283 = load i8*, i8** %sv_any321, align 8
  %284 = bitcast i8* %283 to %struct.xpv*
  %xpv_cur322 = getelementptr inbounds %struct.xpv, %struct.xpv* %284, i32 0, i32 1
  %285 = load i64, i64* %xpv_cur322, align 8
  store i64 %285, i64* %blesslen, align 8
  %286 = load %struct.sv*, %struct.sv** %bless.addr, align 8
  %sv_any323 = getelementptr inbounds %struct.sv, %struct.sv* %286, i32 0, i32 0
  %287 = load i8*, i8** %sv_any323, align 8
  %288 = bitcast i8* %287 to %struct.xpv*
  %xpv_pv324 = getelementptr inbounds %struct.xpv, %struct.xpv* %288, i32 0, i32 0
  %289 = load i8*, i8** %xpv_pv324, align 8
  br label %cond.end.327

cond.false.325:                                   ; preds = %if.then.313
  %290 = load %struct.sv*, %struct.sv** %bless.addr, align 8
  %call326 = call i8* @Perl_sv_2pv_flags(%struct.sv* %290, i64* %blesslen, i32 2)
  br label %cond.end.327

cond.end.327:                                     ; preds = %cond.false.325, %cond.true.320
  %cond328 = phi i8* [ %289, %cond.true.320 ], [ %call326, %cond.false.325 ]
  store i8* %cond328, i8** %blessstr, align 8
  %291 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %292 = load i8*, i8** %blessstr, align 8
  %293 = load i64, i64* %blesslen, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %291, i8* %292, i64 %293, i32 2)
  %294 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %294, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i64 2, i32 2)
  %295 = load i32, i32* %indent.addr, align 4
  %cmp329 = icmp sge i32 %295, 2
  br i1 %cmp329, label %if.then.331, label %if.end.336

if.then.331:                                      ; preds = %cond.end.327
  %296 = load %struct.sv*, %struct.sv** %apad.addr, align 8
  store %struct.sv* %296, %struct.sv** %blesspad, align 8
  %297 = load %struct.sv*, %struct.sv** %apad.addr, align 8
  %call332 = call %struct.sv* @Perl_newSVsv(%struct.sv* %297)
  store %struct.sv* %call332, %struct.sv** %apad.addr, align 8
  %298 = load %struct.sv*, %struct.sv** %apad.addr, align 8
  %299 = load i64, i64* %blesslen, align 8
  %add333 = add i64 %299, 2
  %conv334 = trunc i64 %add333 to i32
  %call335 = call %struct.sv* @sv_x(%struct.sv* %298, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i64 1, i32 %conv334)
  br label %if.end.336

if.end.336:                                       ; preds = %if.then.331, %cond.end.327
  br label %if.end.337

if.end.337:                                       ; preds = %if.end.336, %if.end.311
  %300 = load i32*, i32** %levelp.addr, align 8
  %301 = load i32, i32* %300, align 4
  %inc338 = add nsw i32 %301, 1
  store i32 %inc338, i32* %300, align 4
  %302 = load %struct.sv*, %struct.sv** %xpad.addr, align 8
  %sv_any339 = getelementptr inbounds %struct.sv, %struct.sv* %302, i32 0, i32 0
  %303 = load i8*, i8** %sv_any339, align 8
  %304 = bitcast i8* %303 to %struct.xpv*
  %xpv_pv340 = getelementptr inbounds %struct.xpv, %struct.xpv* %304, i32 0, i32 0
  %305 = load i8*, i8** %xpv_pv340, align 8
  %306 = load %struct.sv*, %struct.sv** %xpad.addr, align 8
  %sv_any341 = getelementptr inbounds %struct.sv, %struct.sv* %306, i32 0, i32 0
  %307 = load i8*, i8** %sv_any341, align 8
  %308 = bitcast i8* %307 to %struct.xpv*
  %xpv_cur342 = getelementptr inbounds %struct.xpv, %struct.xpv* %308, i32 0, i32 1
  %309 = load i64, i64* %xpv_cur342, align 8
  %310 = load i32*, i32** %levelp.addr, align 8
  %311 = load i32, i32* %310, align 4
  %call343 = call %struct.sv* @sv_x(%struct.sv* null, i8* %305, i64 %309, i32 %311)
  store %struct.sv* %call343, %struct.sv** %ipad, align 8
  %312 = load i32, i32* %realtype, align 4
  %cmp344 = icmp ule i32 %312, 8
  br i1 %cmp344, label %if.then.346, label %if.else.364

if.then.346:                                      ; preds = %if.end.337
  %call349 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i64 2)
  store %struct.sv* %call349, %struct.sv** %namesv348, align 8
  %313 = load %struct.sv*, %struct.sv** %namesv348, align 8
  %314 = load i8*, i8** %name.addr, align 8
  %315 = load i64, i64* %namelen.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %313, i8* %314, i64 %315, i32 2)
  %316 = load %struct.sv*, %struct.sv** %namesv348, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %316, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i64 1, i32 2)
  %317 = load i8*, i8** %realpack, align 8
  %tobool350 = icmp ne i8* %317, null
  br i1 %tobool350, label %if.then.351, label %if.else.357

if.then.351:                                      ; preds = %if.then.346
  %318 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %318, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0), i64 13, i32 2)
  %319 = load %struct.sv*, %struct.sv** %ival, align 8
  %320 = load %struct.sv*, %struct.sv** %namesv348, align 8
  %sv_any352 = getelementptr inbounds %struct.sv, %struct.sv* %320, i32 0, i32 0
  %321 = load i8*, i8** %sv_any352, align 8
  %322 = bitcast i8* %321 to %struct.xpv*
  %xpv_pv353 = getelementptr inbounds %struct.xpv, %struct.xpv* %322, i32 0, i32 0
  %323 = load i8*, i8** %xpv_pv353, align 8
  %324 = load %struct.sv*, %struct.sv** %namesv348, align 8
  %sv_any354 = getelementptr inbounds %struct.sv, %struct.sv* %324, i32 0, i32 0
  %325 = load i8*, i8** %sv_any354, align 8
  %326 = bitcast i8* %325 to %struct.xpv*
  %xpv_cur355 = getelementptr inbounds %struct.xpv, %struct.xpv* %326, i32 0, i32 1
  %327 = load i64, i64* %xpv_cur355, align 8
  %328 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %329 = load %struct.hv*, %struct.hv** %seenhv.addr, align 8
  %330 = load %struct.av*, %struct.av** %postav.addr, align 8
  %331 = load i32*, i32** %levelp.addr, align 8
  %332 = load i32, i32* %indent.addr, align 4
  %333 = load %struct.sv*, %struct.sv** %pad.addr, align 8
  %334 = load %struct.sv*, %struct.sv** %xpad.addr, align 8
  %335 = load %struct.sv*, %struct.sv** %apad.addr, align 8
  %336 = load %struct.sv*, %struct.sv** %sep.addr, align 8
  %337 = load %struct.sv*, %struct.sv** %pair.addr, align 8
  %338 = load %struct.sv*, %struct.sv** %freezer.addr, align 8
  %339 = load %struct.sv*, %struct.sv** %toaster.addr, align 8
  %340 = load i32, i32* %purity.addr, align 4
  %341 = load i32, i32* %deepcopy.addr, align 4
  %342 = load i32, i32* %quotekeys.addr, align 4
  %343 = load %struct.sv*, %struct.sv** %bless.addr, align 8
  %344 = load i32, i32* %maxdepth.addr, align 4
  %345 = load %struct.sv*, %struct.sv** %sortkeys.addr, align 8
  %call356 = call i32 @DD_dump(%struct.sv* %319, i8* %323, i64 %327, %struct.sv* %328, %struct.hv* %329, %struct.av* %330, i32* %331, i32 %332, %struct.sv* %333, %struct.sv* %334, %struct.sv* %335, %struct.sv* %336, %struct.sv* %337, %struct.sv* %338, %struct.sv* %339, i32 %340, i32 %341, i32 %342, %struct.sv* %343, i32 %344, %struct.sv* %345)
  %346 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %346, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i64 2, i32 2)
  br label %if.end.363

if.else.357:                                      ; preds = %if.then.346
  %347 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %347, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i64 1, i32 2)
  %348 = load %struct.sv*, %struct.sv** %ival, align 8
  %349 = load %struct.sv*, %struct.sv** %namesv348, align 8
  %sv_any358 = getelementptr inbounds %struct.sv, %struct.sv* %349, i32 0, i32 0
  %350 = load i8*, i8** %sv_any358, align 8
  %351 = bitcast i8* %350 to %struct.xpv*
  %xpv_pv359 = getelementptr inbounds %struct.xpv, %struct.xpv* %351, i32 0, i32 0
  %352 = load i8*, i8** %xpv_pv359, align 8
  %353 = load %struct.sv*, %struct.sv** %namesv348, align 8
  %sv_any360 = getelementptr inbounds %struct.sv, %struct.sv* %353, i32 0, i32 0
  %354 = load i8*, i8** %sv_any360, align 8
  %355 = bitcast i8* %354 to %struct.xpv*
  %xpv_cur361 = getelementptr inbounds %struct.xpv, %struct.xpv* %355, i32 0, i32 1
  %356 = load i64, i64* %xpv_cur361, align 8
  %357 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %358 = load %struct.hv*, %struct.hv** %seenhv.addr, align 8
  %359 = load %struct.av*, %struct.av** %postav.addr, align 8
  %360 = load i32*, i32** %levelp.addr, align 8
  %361 = load i32, i32* %indent.addr, align 4
  %362 = load %struct.sv*, %struct.sv** %pad.addr, align 8
  %363 = load %struct.sv*, %struct.sv** %xpad.addr, align 8
  %364 = load %struct.sv*, %struct.sv** %apad.addr, align 8
  %365 = load %struct.sv*, %struct.sv** %sep.addr, align 8
  %366 = load %struct.sv*, %struct.sv** %pair.addr, align 8
  %367 = load %struct.sv*, %struct.sv** %freezer.addr, align 8
  %368 = load %struct.sv*, %struct.sv** %toaster.addr, align 8
  %369 = load i32, i32* %purity.addr, align 4
  %370 = load i32, i32* %deepcopy.addr, align 4
  %371 = load i32, i32* %quotekeys.addr, align 4
  %372 = load %struct.sv*, %struct.sv** %bless.addr, align 8
  %373 = load i32, i32* %maxdepth.addr, align 4
  %374 = load %struct.sv*, %struct.sv** %sortkeys.addr, align 8
  %call362 = call i32 @DD_dump(%struct.sv* %348, i8* %352, i64 %356, %struct.sv* %357, %struct.hv* %358, %struct.av* %359, i32* %360, i32 %361, %struct.sv* %362, %struct.sv* %363, %struct.sv* %364, %struct.sv* %365, %struct.sv* %366, %struct.sv* %367, %struct.sv* %368, i32 %369, i32 %370, i32 %371, %struct.sv* %372, i32 %373, %struct.sv* %374)
  br label %if.end.363

if.end.363:                                       ; preds = %if.else.357, %if.then.351
  %375 = load %struct.sv*, %struct.sv** %namesv348, align 8
  call void @Perl_sv_free(%struct.sv* %375)
  br label %if.end.914

if.else.364:                                      ; preds = %if.end.337
  %376 = load i32, i32* %realtype, align 4
  %cmp365 = icmp eq i32 %376, 13
  br i1 %cmp365, label %if.then.367, label %if.else.376

if.then.367:                                      ; preds = %if.else.364
  %call370 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i64 2)
  store %struct.sv* %call370, %struct.sv** %namesv369, align 8
  %377 = load %struct.sv*, %struct.sv** %namesv369, align 8
  %378 = load i8*, i8** %name.addr, align 8
  %379 = load i64, i64* %namelen.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %377, i8* %378, i64 %379, i32 2)
  %380 = load %struct.sv*, %struct.sv** %namesv369, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %380, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i64 1, i32 2)
  %381 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %381, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i64 1, i32 2)
  %382 = load %struct.sv*, %struct.sv** %ival, align 8
  %383 = load %struct.sv*, %struct.sv** %namesv369, align 8
  %sv_any371 = getelementptr inbounds %struct.sv, %struct.sv* %383, i32 0, i32 0
  %384 = load i8*, i8** %sv_any371, align 8
  %385 = bitcast i8* %384 to %struct.xpv*
  %xpv_pv372 = getelementptr inbounds %struct.xpv, %struct.xpv* %385, i32 0, i32 0
  %386 = load i8*, i8** %xpv_pv372, align 8
  %387 = load %struct.sv*, %struct.sv** %namesv369, align 8
  %sv_any373 = getelementptr inbounds %struct.sv, %struct.sv* %387, i32 0, i32 0
  %388 = load i8*, i8** %sv_any373, align 8
  %389 = bitcast i8* %388 to %struct.xpv*
  %xpv_cur374 = getelementptr inbounds %struct.xpv, %struct.xpv* %389, i32 0, i32 1
  %390 = load i64, i64* %xpv_cur374, align 8
  %391 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %392 = load %struct.hv*, %struct.hv** %seenhv.addr, align 8
  %393 = load %struct.av*, %struct.av** %postav.addr, align 8
  %394 = load i32*, i32** %levelp.addr, align 8
  %395 = load i32, i32* %indent.addr, align 4
  %396 = load %struct.sv*, %struct.sv** %pad.addr, align 8
  %397 = load %struct.sv*, %struct.sv** %xpad.addr, align 8
  %398 = load %struct.sv*, %struct.sv** %apad.addr, align 8
  %399 = load %struct.sv*, %struct.sv** %sep.addr, align 8
  %400 = load %struct.sv*, %struct.sv** %pair.addr, align 8
  %401 = load %struct.sv*, %struct.sv** %freezer.addr, align 8
  %402 = load %struct.sv*, %struct.sv** %toaster.addr, align 8
  %403 = load i32, i32* %purity.addr, align 4
  %404 = load i32, i32* %deepcopy.addr, align 4
  %405 = load i32, i32* %quotekeys.addr, align 4
  %406 = load %struct.sv*, %struct.sv** %bless.addr, align 8
  %407 = load i32, i32* %maxdepth.addr, align 4
  %408 = load %struct.sv*, %struct.sv** %sortkeys.addr, align 8
  %call375 = call i32 @DD_dump(%struct.sv* %382, i8* %386, i64 %390, %struct.sv* %391, %struct.hv* %392, %struct.av* %393, i32* %394, i32 %395, %struct.sv* %396, %struct.sv* %397, %struct.sv* %398, %struct.sv* %399, %struct.sv* %400, %struct.sv* %401, %struct.sv* %402, i32 %403, i32 %404, i32 %405, %struct.sv* %406, i32 %407, %struct.sv* %408)
  %409 = load %struct.sv*, %struct.sv** %namesv369, align 8
  call void @Perl_sv_free(%struct.sv* %409)
  br label %if.end.913

if.else.376:                                      ; preds = %if.else.364
  %410 = load i32, i32* %realtype, align 4
  %cmp377 = icmp eq i32 %410, 10
  br i1 %cmp377, label %if.then.379, label %if.else.519

if.then.379:                                      ; preds = %if.else.376
  store i32 0, i32* %ix, align 4
  %411 = load %struct.sv*, %struct.sv** %ival, align 8
  %412 = bitcast %struct.sv* %411 to %struct.av*
  %call383 = call i32 @Perl_av_len(%struct.av* %412)
  store i32 %call383, i32* %ixmax, align 4
  %call385 = call %struct.sv* @Perl_newSViv(i64 0)
  store %struct.sv* %call385, %struct.sv** %ixsv, align 8
  %413 = load i64, i64* %namelen.addr, align 8
  %add386 = add i64 %413, 28
  %mul = mul i64 %add386, 1
  %call387 = call i8* @Perl_safesysmalloc(i64 %mul)
  store i8* %call387, i8** %iname, align 8
  %414 = load i8*, i8** %iname, align 8
  %415 = load i8*, i8** %name.addr, align 8
  %call388 = call i8* @strcpy(i8* %414, i8* %415)
  %416 = load i64, i64* %namelen.addr, align 8
  store i64 %416, i64* %inamelen, align 8
  %417 = load i8*, i8** %name.addr, align 8
  %arrayidx389 = getelementptr inbounds i8, i8* %417, i64 0
  %418 = load i8, i8* %arrayidx389, align 1
  %conv390 = sext i8 %418 to i32
  %cmp391 = icmp eq i32 %conv390, 64
  br i1 %cmp391, label %if.then.393, label %if.else.395

if.then.393:                                      ; preds = %if.then.379
  %419 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %419, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), i64 1, i32 2)
  %420 = load i8*, i8** %iname, align 8
  %arrayidx394 = getelementptr inbounds i8, i8* %420, i64 0
  store i8 36, i8* %arrayidx394, align 1
  br label %if.end.435

if.else.395:                                      ; preds = %if.then.379
  %421 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), i64 1, i32 2)
  %422 = load i64, i64* %namelen.addr, align 8
  %cmp396 = icmp ugt i64 %422, 0
  br i1 %cmp396, label %land.lhs.true.398, label %lor.lhs.false.410

land.lhs.true.398:                                ; preds = %if.else.395
  %423 = load i64, i64* %namelen.addr, align 8
  %sub399 = sub i64 %423, 1
  %424 = load i8*, i8** %name.addr, align 8
  %arrayidx400 = getelementptr inbounds i8, i8* %424, i64 %sub399
  %425 = load i8, i8* %arrayidx400, align 1
  %conv401 = sext i8 %425 to i32
  %cmp402 = icmp ne i32 %conv401, 93
  br i1 %cmp402, label %land.lhs.true.404, label %lor.lhs.false.410

land.lhs.true.404:                                ; preds = %land.lhs.true.398
  %426 = load i64, i64* %namelen.addr, align 8
  %sub405 = sub i64 %426, 1
  %427 = load i8*, i8** %name.addr, align 8
  %arrayidx406 = getelementptr inbounds i8, i8* %427, i64 %sub405
  %428 = load i8, i8* %arrayidx406, align 1
  %conv407 = sext i8 %428 to i32
  %cmp408 = icmp ne i32 %conv407, 125
  br i1 %cmp408, label %if.then.428, label %lor.lhs.false.410

lor.lhs.false.410:                                ; preds = %land.lhs.true.404, %land.lhs.true.398, %if.else.395
  %429 = load i64, i64* %namelen.addr, align 8
  %cmp411 = icmp ugt i64 %429, 4
  br i1 %cmp411, label %land.lhs.true.413, label %if.end.434

land.lhs.true.413:                                ; preds = %lor.lhs.false.410
  %430 = load i8*, i8** %name.addr, align 8
  %arrayidx414 = getelementptr inbounds i8, i8* %430, i64 1
  %431 = load i8, i8* %arrayidx414, align 1
  %conv415 = sext i8 %431 to i32
  %cmp416 = icmp eq i32 %conv415, 123
  br i1 %cmp416, label %if.then.428, label %lor.lhs.false.418

lor.lhs.false.418:                                ; preds = %land.lhs.true.413
  %432 = load i8*, i8** %name.addr, align 8
  %arrayidx419 = getelementptr inbounds i8, i8* %432, i64 0
  %433 = load i8, i8* %arrayidx419, align 1
  %conv420 = sext i8 %433 to i32
  %cmp421 = icmp eq i32 %conv420, 92
  br i1 %cmp421, label %land.lhs.true.423, label %if.end.434

land.lhs.true.423:                                ; preds = %lor.lhs.false.418
  %434 = load i8*, i8** %name.addr, align 8
  %arrayidx424 = getelementptr inbounds i8, i8* %434, i64 2
  %435 = load i8, i8* %arrayidx424, align 1
  %conv425 = sext i8 %435 to i32
  %cmp426 = icmp eq i32 %conv425, 123
  br i1 %cmp426, label %if.then.428, label %if.end.434

if.then.428:                                      ; preds = %land.lhs.true.423, %land.lhs.true.413, %land.lhs.true.404
  %436 = load i64, i64* %inamelen, align 8
  %inc429 = add i64 %436, 1
  store i64 %inc429, i64* %inamelen, align 8
  %437 = load i8*, i8** %iname, align 8
  %arrayidx430 = getelementptr inbounds i8, i8* %437, i64 %436
  store i8 45, i8* %arrayidx430, align 1
  %438 = load i64, i64* %inamelen, align 8
  %inc431 = add i64 %438, 1
  store i64 %inc431, i64* %inamelen, align 8
  %439 = load i8*, i8** %iname, align 8
  %arrayidx432 = getelementptr inbounds i8, i8* %439, i64 %438
  store i8 62, i8* %arrayidx432, align 1
  %440 = load i64, i64* %inamelen, align 8
  %441 = load i8*, i8** %iname, align 8
  %arrayidx433 = getelementptr inbounds i8, i8* %441, i64 %440
  store i8 0, i8* %arrayidx433, align 1
  br label %if.end.434

if.end.434:                                       ; preds = %if.then.428, %land.lhs.true.423, %lor.lhs.false.418, %lor.lhs.false.410
  br label %if.end.435

if.end.435:                                       ; preds = %if.end.434, %if.then.393
  %442 = load i8*, i8** %iname, align 8
  %arrayidx436 = getelementptr inbounds i8, i8* %442, i64 0
  %443 = load i8, i8* %arrayidx436, align 1
  %conv437 = sext i8 %443 to i32
  %cmp438 = icmp eq i32 %conv437, 42
  br i1 %cmp438, label %land.lhs.true.440, label %if.end.469

land.lhs.true.440:                                ; preds = %if.end.435
  %444 = load i64, i64* %inamelen, align 8
  %sub441 = sub i64 %444, 1
  %445 = load i8*, i8** %iname, align 8
  %arrayidx442 = getelementptr inbounds i8, i8* %445, i64 %sub441
  %446 = load i8, i8* %arrayidx442, align 1
  %conv443 = sext i8 %446 to i32
  %cmp444 = icmp eq i32 %conv443, 125
  br i1 %cmp444, label %land.lhs.true.446, label %if.end.469

land.lhs.true.446:                                ; preds = %land.lhs.true.440
  %447 = load i64, i64* %inamelen, align 8
  %cmp447 = icmp uge i64 %447, 8
  br i1 %cmp447, label %land.lhs.true.449, label %if.end.469

land.lhs.true.449:                                ; preds = %land.lhs.true.446
  %448 = load i8*, i8** %iname, align 8
  %449 = load i64, i64* %inamelen, align 8
  %add.ptr450 = getelementptr inbounds i8, i8* %448, i64 %449
  %add.ptr451 = getelementptr inbounds i8, i8* %add.ptr450, i64 -8
  %call452 = call i8* @Perl_instr(i8* %add.ptr451, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0))
  %tobool453 = icmp ne i8* %call452, null
  br i1 %tobool453, label %if.then.464, label %lor.lhs.false.454

lor.lhs.false.454:                                ; preds = %land.lhs.true.449
  %450 = load i8*, i8** %iname, align 8
  %451 = load i64, i64* %inamelen, align 8
  %add.ptr455 = getelementptr inbounds i8, i8* %450, i64 %451
  %add.ptr456 = getelementptr inbounds i8, i8* %add.ptr455, i64 -7
  %call457 = call i8* @Perl_instr(i8* %add.ptr456, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0))
  %tobool458 = icmp ne i8* %call457, null
  br i1 %tobool458, label %if.then.464, label %lor.lhs.false.459

lor.lhs.false.459:                                ; preds = %lor.lhs.false.454
  %452 = load i8*, i8** %iname, align 8
  %453 = load i64, i64* %inamelen, align 8
  %add.ptr460 = getelementptr inbounds i8, i8* %452, i64 %453
  %add.ptr461 = getelementptr inbounds i8, i8* %add.ptr460, i64 -6
  %call462 = call i8* @Perl_instr(i8* %add.ptr461, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0))
  %tobool463 = icmp ne i8* %call462, null
  br i1 %tobool463, label %if.then.464, label %if.end.469

if.then.464:                                      ; preds = %lor.lhs.false.459, %lor.lhs.false.454, %land.lhs.true.449
  %454 = load i64, i64* %inamelen, align 8
  %inc465 = add i64 %454, 1
  store i64 %inc465, i64* %inamelen, align 8
  %455 = load i8*, i8** %iname, align 8
  %arrayidx466 = getelementptr inbounds i8, i8* %455, i64 %454
  store i8 45, i8* %arrayidx466, align 1
  %456 = load i64, i64* %inamelen, align 8
  %inc467 = add i64 %456, 1
  store i64 %inc467, i64* %inamelen, align 8
  %457 = load i8*, i8** %iname, align 8
  %arrayidx468 = getelementptr inbounds i8, i8* %457, i64 %456
  store i8 62, i8* %arrayidx468, align 1
  br label %if.end.469

if.end.469:                                       ; preds = %if.then.464, %lor.lhs.false.459, %land.lhs.true.446, %land.lhs.true.440, %if.end.435
  %458 = load i64, i64* %inamelen, align 8
  %inc470 = add i64 %458, 1
  store i64 %inc470, i64* %inamelen, align 8
  %459 = load i8*, i8** %iname, align 8
  %arrayidx471 = getelementptr inbounds i8, i8* %459, i64 %458
  store i8 91, i8* %arrayidx471, align 1
  %460 = load i64, i64* %inamelen, align 8
  %461 = load i8*, i8** %iname, align 8
  %arrayidx472 = getelementptr inbounds i8, i8* %461, i64 %460
  store i8 0, i8* %arrayidx472, align 1
  %462 = load %struct.sv*, %struct.sv** %sep.addr, align 8
  %call473 = call %struct.sv* @Perl_newSVsv(%struct.sv* %462)
  store %struct.sv* %call473, %struct.sv** %totpad, align 8
  %463 = load %struct.sv*, %struct.sv** %totpad, align 8
  %464 = load %struct.sv*, %struct.sv** %pad.addr, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %463, %struct.sv* %464, i32 2)
  %465 = load %struct.sv*, %struct.sv** %totpad, align 8
  %466 = load %struct.sv*, %struct.sv** %apad.addr, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %465, %struct.sv* %466, i32 2)
  store i32 0, i32* %ix, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.469
  %467 = load i32, i32* %ix, align 4
  %468 = load i32, i32* %ixmax, align 4
  %cmp474 = icmp sle i32 %467, %468
  br i1 %cmp474, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %469 = load %struct.sv*, %struct.sv** %ival, align 8
  %470 = bitcast %struct.sv* %469 to %struct.av*
  %471 = load i32, i32* %ix, align 4
  %call478 = call %struct.sv** @Perl_av_fetch(%struct.av* %470, i32 %471, i32 0)
  store %struct.sv** %call478, %struct.sv*** %svp, align 8
  %472 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool479 = icmp ne %struct.sv** %472, null
  br i1 %tobool479, label %if.then.480, label %if.else.481

if.then.480:                                      ; preds = %for.body
  %473 = load %struct.sv**, %struct.sv*** %svp, align 8
  %474 = load %struct.sv*, %struct.sv** %473, align 8
  store %struct.sv* %474, %struct.sv** %elem, align 8
  br label %if.end.482

if.else.481:                                      ; preds = %for.body
  store %struct.sv* @PL_sv_undef, %struct.sv** %elem, align 8
  br label %if.end.482

if.end.482:                                       ; preds = %if.else.481, %if.then.480
  %475 = load i64, i64* %inamelen, align 8
  store i64 %475, i64* %ilen, align 8
  %476 = load %struct.sv*, %struct.sv** %ixsv, align 8
  %477 = load i32, i32* %ix, align 4
  %conv483 = sext i32 %477 to i64
  call void @Perl_sv_setiv(%struct.sv* %476, i64 %conv483)
  %478 = load i8*, i8** %iname, align 8
  %479 = load i64, i64* %ilen, align 8
  %add.ptr484 = getelementptr inbounds i8, i8* %478, i64 %479
  %480 = load i32, i32* %ix, align 4
  %conv485 = sext i32 %480 to i64
  %call486 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr484, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i64 %conv485)
  %481 = load i8*, i8** %iname, align 8
  %call487 = call i64 @strlen(i8* %481)
  store i64 %call487, i64* %ilen, align 8
  %482 = load i64, i64* %ilen, align 8
  %inc488 = add i64 %482, 1
  store i64 %inc488, i64* %ilen, align 8
  %483 = load i8*, i8** %iname, align 8
  %arrayidx489 = getelementptr inbounds i8, i8* %483, i64 %482
  store i8 93, i8* %arrayidx489, align 1
  %484 = load i64, i64* %ilen, align 8
  %485 = load i8*, i8** %iname, align 8
  %arrayidx490 = getelementptr inbounds i8, i8* %485, i64 %484
  store i8 0, i8* %arrayidx490, align 1
  %486 = load i32, i32* %indent.addr, align 4
  %cmp491 = icmp sge i32 %486, 3
  br i1 %cmp491, label %if.then.493, label %if.end.494

if.then.493:                                      ; preds = %if.end.482
  %487 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %488 = load %struct.sv*, %struct.sv** %totpad, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %487, %struct.sv* %488, i32 2)
  %489 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %490 = load %struct.sv*, %struct.sv** %ipad, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %489, %struct.sv* %490, i32 2)
  %491 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %491, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i64 1, i32 2)
  %492 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %493 = load %struct.sv*, %struct.sv** %ixsv, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %492, %struct.sv* %493, i32 2)
  br label %if.end.494

if.end.494:                                       ; preds = %if.then.493, %if.end.482
  %494 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %495 = load %struct.sv*, %struct.sv** %totpad, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %494, %struct.sv* %495, i32 2)
  %496 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %497 = load %struct.sv*, %struct.sv** %ipad, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %496, %struct.sv* %497, i32 2)
  %498 = load %struct.sv*, %struct.sv** %elem, align 8
  %499 = load i8*, i8** %iname, align 8
  %500 = load i64, i64* %ilen, align 8
  %501 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %502 = load %struct.hv*, %struct.hv** %seenhv.addr, align 8
  %503 = load %struct.av*, %struct.av** %postav.addr, align 8
  %504 = load i32*, i32** %levelp.addr, align 8
  %505 = load i32, i32* %indent.addr, align 4
  %506 = load %struct.sv*, %struct.sv** %pad.addr, align 8
  %507 = load %struct.sv*, %struct.sv** %xpad.addr, align 8
  %508 = load %struct.sv*, %struct.sv** %apad.addr, align 8
  %509 = load %struct.sv*, %struct.sv** %sep.addr, align 8
  %510 = load %struct.sv*, %struct.sv** %pair.addr, align 8
  %511 = load %struct.sv*, %struct.sv** %freezer.addr, align 8
  %512 = load %struct.sv*, %struct.sv** %toaster.addr, align 8
  %513 = load i32, i32* %purity.addr, align 4
  %514 = load i32, i32* %deepcopy.addr, align 4
  %515 = load i32, i32* %quotekeys.addr, align 4
  %516 = load %struct.sv*, %struct.sv** %bless.addr, align 8
  %517 = load i32, i32* %maxdepth.addr, align 4
  %518 = load %struct.sv*, %struct.sv** %sortkeys.addr, align 8
  %call495 = call i32 @DD_dump(%struct.sv* %498, i8* %499, i64 %500, %struct.sv* %501, %struct.hv* %502, %struct.av* %503, i32* %504, i32 %505, %struct.sv* %506, %struct.sv* %507, %struct.sv* %508, %struct.sv* %509, %struct.sv* %510, %struct.sv* %511, %struct.sv* %512, i32 %513, i32 %514, i32 %515, %struct.sv* %516, i32 %517, %struct.sv* %518)
  %519 = load i32, i32* %ix, align 4
  %520 = load i32, i32* %ixmax, align 4
  %cmp496 = icmp slt i32 %519, %520
  br i1 %cmp496, label %if.then.498, label %if.end.499

if.then.498:                                      ; preds = %if.end.494
  %521 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %521, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0), i64 1, i32 2)
  br label %if.end.499

if.end.499:                                       ; preds = %if.then.498, %if.end.494
  br label %for.inc

for.inc:                                          ; preds = %if.end.499
  %522 = load i32, i32* %ix, align 4
  %inc500 = add nsw i32 %522, 1
  store i32 %inc500, i32* %ix, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %523 = load i32, i32* %ixmax, align 4
  %cmp501 = icmp sge i32 %523, 0
  br i1 %cmp501, label %if.then.503, label %if.end.511

if.then.503:                                      ; preds = %for.end
  %524 = load %struct.sv*, %struct.sv** %xpad.addr, align 8
  %sv_any505 = getelementptr inbounds %struct.sv, %struct.sv* %524, i32 0, i32 0
  %525 = load i8*, i8** %sv_any505, align 8
  %526 = bitcast i8* %525 to %struct.xpv*
  %xpv_pv506 = getelementptr inbounds %struct.xpv, %struct.xpv* %526, i32 0, i32 0
  %527 = load i8*, i8** %xpv_pv506, align 8
  %528 = load %struct.sv*, %struct.sv** %xpad.addr, align 8
  %sv_any507 = getelementptr inbounds %struct.sv, %struct.sv* %528, i32 0, i32 0
  %529 = load i8*, i8** %sv_any507, align 8
  %530 = bitcast i8* %529 to %struct.xpv*
  %xpv_cur508 = getelementptr inbounds %struct.xpv, %struct.xpv* %530, i32 0, i32 1
  %531 = load i64, i64* %xpv_cur508, align 8
  %532 = load i32*, i32** %levelp.addr, align 8
  %533 = load i32, i32* %532, align 4
  %sub509 = sub nsw i32 %533, 1
  %call510 = call %struct.sv* @sv_x(%struct.sv* null, i8* %527, i64 %531, i32 %sub509)
  store %struct.sv* %call510, %struct.sv** %opad, align 8
  %534 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %535 = load %struct.sv*, %struct.sv** %totpad, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %534, %struct.sv* %535, i32 2)
  %536 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %537 = load %struct.sv*, %struct.sv** %opad, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %536, %struct.sv* %537, i32 2)
  %538 = load %struct.sv*, %struct.sv** %opad, align 8
  call void @Perl_sv_free(%struct.sv* %538)
  br label %if.end.511

if.end.511:                                       ; preds = %if.then.503, %for.end
  %539 = load i8*, i8** %name.addr, align 8
  %arrayidx512 = getelementptr inbounds i8, i8* %539, i64 0
  %540 = load i8, i8* %arrayidx512, align 1
  %conv513 = sext i8 %540 to i32
  %cmp514 = icmp eq i32 %conv513, 64
  br i1 %cmp514, label %if.then.516, label %if.else.517

if.then.516:                                      ; preds = %if.end.511
  %541 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %541, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0), i64 1, i32 2)
  br label %if.end.518

if.else.517:                                      ; preds = %if.end.511
  %542 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %542, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i32 0, i32 0), i64 1, i32 2)
  br label %if.end.518

if.end.518:                                       ; preds = %if.else.517, %if.then.516
  %543 = load %struct.sv*, %struct.sv** %ixsv, align 8
  call void @Perl_sv_free(%struct.sv* %543)
  %544 = load %struct.sv*, %struct.sv** %totpad, align 8
  call void @Perl_sv_free(%struct.sv* %544)
  %545 = load i8*, i8** %iname, align 8
  call void @Perl_safesysfree(i8* %545)
  br label %if.end.912

if.else.519:                                      ; preds = %if.else.376
  %546 = load i32, i32* %realtype, align 4
  %cmp520 = icmp eq i32 %546, 11
  br i1 %cmp520, label %if.then.522, label %if.else.902

if.then.522:                                      ; preds = %if.else.519
  store %struct.av* null, %struct.av** %keys, align 8
  %547 = load i8*, i8** %name.addr, align 8
  %548 = load i64, i64* %namelen.addr, align 8
  %call535 = call %struct.sv* @Perl_newSVpvn(i8* %547, i64 %548)
  store %struct.sv* %call535, %struct.sv** %iname527, align 8
  %549 = load i8*, i8** %name.addr, align 8
  %arrayidx536 = getelementptr inbounds i8, i8* %549, i64 0
  %550 = load i8, i8* %arrayidx536, align 1
  %conv537 = sext i8 %550 to i32
  %cmp538 = icmp eq i32 %conv537, 37
  br i1 %cmp538, label %if.then.540, label %if.else.544

if.then.540:                                      ; preds = %if.then.522
  %551 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %551, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), i64 1, i32 2)
  %552 = load %struct.sv*, %struct.sv** %iname527, align 8
  %sv_any541 = getelementptr inbounds %struct.sv, %struct.sv* %552, i32 0, i32 0
  %553 = load i8*, i8** %sv_any541, align 8
  %554 = bitcast i8* %553 to %struct.xpv*
  %xpv_pv542 = getelementptr inbounds %struct.xpv, %struct.xpv* %554, i32 0, i32 0
  %555 = load i8*, i8** %xpv_pv542, align 8
  %arrayidx543 = getelementptr inbounds i8, i8* %555, i64 0
  store i8 36, i8* %arrayidx543, align 1
  br label %if.end.579

if.else.544:                                      ; preds = %if.then.522
  %556 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %556, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i64 1, i32 2)
  %557 = load i64, i64* %namelen.addr, align 8
  %cmp545 = icmp ugt i64 %557, 0
  br i1 %cmp545, label %land.lhs.true.547, label %lor.lhs.false.559

land.lhs.true.547:                                ; preds = %if.else.544
  %558 = load i64, i64* %namelen.addr, align 8
  %sub548 = sub i64 %558, 1
  %559 = load i8*, i8** %name.addr, align 8
  %arrayidx549 = getelementptr inbounds i8, i8* %559, i64 %sub548
  %560 = load i8, i8* %arrayidx549, align 1
  %conv550 = sext i8 %560 to i32
  %cmp551 = icmp ne i32 %conv550, 93
  br i1 %cmp551, label %land.lhs.true.553, label %lor.lhs.false.559

land.lhs.true.553:                                ; preds = %land.lhs.true.547
  %561 = load i64, i64* %namelen.addr, align 8
  %sub554 = sub i64 %561, 1
  %562 = load i8*, i8** %name.addr, align 8
  %arrayidx555 = getelementptr inbounds i8, i8* %562, i64 %sub554
  %563 = load i8, i8* %arrayidx555, align 1
  %conv556 = sext i8 %563 to i32
  %cmp557 = icmp ne i32 %conv556, 125
  br i1 %cmp557, label %if.then.577, label %lor.lhs.false.559

lor.lhs.false.559:                                ; preds = %land.lhs.true.553, %land.lhs.true.547, %if.else.544
  %564 = load i64, i64* %namelen.addr, align 8
  %cmp560 = icmp ugt i64 %564, 4
  br i1 %cmp560, label %land.lhs.true.562, label %if.end.578

land.lhs.true.562:                                ; preds = %lor.lhs.false.559
  %565 = load i8*, i8** %name.addr, align 8
  %arrayidx563 = getelementptr inbounds i8, i8* %565, i64 1
  %566 = load i8, i8* %arrayidx563, align 1
  %conv564 = sext i8 %566 to i32
  %cmp565 = icmp eq i32 %conv564, 123
  br i1 %cmp565, label %if.then.577, label %lor.lhs.false.567

lor.lhs.false.567:                                ; preds = %land.lhs.true.562
  %567 = load i8*, i8** %name.addr, align 8
  %arrayidx568 = getelementptr inbounds i8, i8* %567, i64 0
  %568 = load i8, i8* %arrayidx568, align 1
  %conv569 = sext i8 %568 to i32
  %cmp570 = icmp eq i32 %conv569, 92
  br i1 %cmp570, label %land.lhs.true.572, label %if.end.578

land.lhs.true.572:                                ; preds = %lor.lhs.false.567
  %569 = load i8*, i8** %name.addr, align 8
  %arrayidx573 = getelementptr inbounds i8, i8* %569, i64 2
  %570 = load i8, i8* %arrayidx573, align 1
  %conv574 = sext i8 %570 to i32
  %cmp575 = icmp eq i32 %conv574, 123
  br i1 %cmp575, label %if.then.577, label %if.end.578

if.then.577:                                      ; preds = %land.lhs.true.572, %land.lhs.true.562, %land.lhs.true.553
  %571 = load %struct.sv*, %struct.sv** %iname527, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %571, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), i64 2, i32 2)
  br label %if.end.578

if.end.578:                                       ; preds = %if.then.577, %land.lhs.true.572, %lor.lhs.false.567, %lor.lhs.false.559
  br label %if.end.579

if.end.579:                                       ; preds = %if.end.578, %if.then.540
  %572 = load i8*, i8** %name.addr, align 8
  %arrayidx580 = getelementptr inbounds i8, i8* %572, i64 0
  %573 = load i8, i8* %arrayidx580, align 1
  %conv581 = sext i8 %573 to i32
  %cmp582 = icmp eq i32 %conv581, 42
  br i1 %cmp582, label %land.lhs.true.584, label %if.end.609

land.lhs.true.584:                                ; preds = %if.end.579
  %574 = load i64, i64* %namelen.addr, align 8
  %sub585 = sub i64 %574, 1
  %575 = load i8*, i8** %name.addr, align 8
  %arrayidx586 = getelementptr inbounds i8, i8* %575, i64 %sub585
  %576 = load i8, i8* %arrayidx586, align 1
  %conv587 = sext i8 %576 to i32
  %cmp588 = icmp eq i32 %conv587, 125
  br i1 %cmp588, label %land.lhs.true.590, label %if.end.609

land.lhs.true.590:                                ; preds = %land.lhs.true.584
  %577 = load i64, i64* %namelen.addr, align 8
  %cmp591 = icmp uge i64 %577, 8
  br i1 %cmp591, label %land.lhs.true.593, label %if.end.609

land.lhs.true.593:                                ; preds = %land.lhs.true.590
  %578 = load i8*, i8** %name.addr, align 8
  %579 = load i64, i64* %namelen.addr, align 8
  %add.ptr594 = getelementptr inbounds i8, i8* %578, i64 %579
  %add.ptr595 = getelementptr inbounds i8, i8* %add.ptr594, i64 -8
  %call596 = call i8* @Perl_instr(i8* %add.ptr595, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0))
  %tobool597 = icmp ne i8* %call596, null
  br i1 %tobool597, label %if.then.608, label %lor.lhs.false.598

lor.lhs.false.598:                                ; preds = %land.lhs.true.593
  %580 = load i8*, i8** %name.addr, align 8
  %581 = load i64, i64* %namelen.addr, align 8
  %add.ptr599 = getelementptr inbounds i8, i8* %580, i64 %581
  %add.ptr600 = getelementptr inbounds i8, i8* %add.ptr599, i64 -7
  %call601 = call i8* @Perl_instr(i8* %add.ptr600, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0))
  %tobool602 = icmp ne i8* %call601, null
  br i1 %tobool602, label %if.then.608, label %lor.lhs.false.603

lor.lhs.false.603:                                ; preds = %lor.lhs.false.598
  %582 = load i8*, i8** %name.addr, align 8
  %583 = load i64, i64* %namelen.addr, align 8
  %add.ptr604 = getelementptr inbounds i8, i8* %582, i64 %583
  %add.ptr605 = getelementptr inbounds i8, i8* %add.ptr604, i64 -6
  %call606 = call i8* @Perl_instr(i8* %add.ptr605, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0))
  %tobool607 = icmp ne i8* %call606, null
  br i1 %tobool607, label %if.then.608, label %if.end.609

if.then.608:                                      ; preds = %lor.lhs.false.603, %lor.lhs.false.598, %land.lhs.true.593
  %584 = load %struct.sv*, %struct.sv** %iname527, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %584, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), i64 2, i32 2)
  br label %if.end.609

if.end.609:                                       ; preds = %if.then.608, %lor.lhs.false.603, %land.lhs.true.590, %land.lhs.true.584, %if.end.579
  %585 = load %struct.sv*, %struct.sv** %iname527, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %585, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i64 1, i32 2)
  %586 = load %struct.sv*, %struct.sv** %sep.addr, align 8
  %call610 = call %struct.sv* @Perl_newSVsv(%struct.sv* %586)
  store %struct.sv* %call610, %struct.sv** %totpad524, align 8
  %587 = load %struct.sv*, %struct.sv** %totpad524, align 8
  %588 = load %struct.sv*, %struct.sv** %pad.addr, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %587, %struct.sv* %588, i32 2)
  %589 = load %struct.sv*, %struct.sv** %totpad524, align 8
  %590 = load %struct.sv*, %struct.sv** %apad.addr, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %589, %struct.sv* %590, i32 2)
  %591 = load %struct.sv*, %struct.sv** %sortkeys.addr, align 8
  %tobool611 = icmp ne %struct.sv* %591, null
  br i1 %tobool611, label %if.then.612, label %if.else.703

if.then.612:                                      ; preds = %if.end.609
  %592 = load %struct.sv*, %struct.sv** %sortkeys.addr, align 8
  %cmp613 = icmp eq %struct.sv* %592, @PL_sv_yes
  br i1 %cmp613, label %if.then.615, label %if.end.635

if.then.615:                                      ; preds = %if.then.612
  %call616 = call %struct.av* @Perl_newAV()
  store %struct.av* %call616, %struct.av** %keys, align 8
  %593 = load %struct.sv*, %struct.sv** %ival, align 8
  %594 = bitcast %struct.sv* %593 to %struct.hv*
  %call617 = call i32 @Perl_hv_iterinit(%struct.hv* %594)
  br label %while.cond.618

while.cond.618:                                   ; preds = %land.end.628, %if.then.615
  %595 = load %struct.sv*, %struct.sv** %ival, align 8
  %596 = bitcast %struct.sv* %595 to %struct.hv*
  %call619 = call %struct.he* @Perl_hv_iternext(%struct.hv* %596)
  store %struct.he* %call619, %struct.he** %entry530, align 8
  %tobool620 = icmp ne %struct.he* %call619, null
  br i1 %tobool620, label %while.body.621, label %while.end.630

while.body.621:                                   ; preds = %while.cond.618
  %597 = load %struct.he*, %struct.he** %entry530, align 8
  %call622 = call %struct.sv* @Perl_hv_iterkeysv(%struct.he* %597)
  store %struct.sv* %call622, %struct.sv** %sv, align 8
  %598 = load %struct.sv*, %struct.sv** %sv, align 8
  store %struct.sv* %598, %struct.sv** @PL_Sv, align 8
  %599 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool623 = icmp ne %struct.sv* %599, null
  br i1 %tobool623, label %land.rhs.624, label %land.end.628

land.rhs.624:                                     ; preds = %while.body.621
  %600 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt625 = getelementptr inbounds %struct.sv, %struct.sv* %600, i32 0, i32 1
  %601 = load i32, i32* %sv_refcnt625, align 4
  %inc626 = add i32 %601, 1
  store i32 %inc626, i32* %sv_refcnt625, align 4
  %tobool627 = icmp ne i32 %inc626, 0
  br label %land.end.628

land.end.628:                                     ; preds = %land.rhs.624, %while.body.621
  %602 = phi i1 [ false, %while.body.621 ], [ %tobool627, %land.rhs.624 ]
  %land.ext629 = zext i1 %602 to i32
  %603 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %604 = load %struct.av*, %struct.av** %keys, align 8
  %605 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_av_push(%struct.av* %604, %struct.sv* %605)
  br label %while.cond.618

while.end.630:                                    ; preds = %while.cond.618
  %606 = load %struct.av*, %struct.av** %keys, align 8
  %sv_any631 = getelementptr inbounds %struct.av, %struct.av* %606, i32 0, i32 0
  %607 = load %struct.xpvav*, %struct.xpvav** %sv_any631, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %607, i32 0, i32 0
  %608 = load i8*, i8** %xav_array, align 8
  %609 = bitcast i8* %608 to %struct.sv**
  %610 = load %struct.av*, %struct.av** %keys, align 8
  %call632 = call i32 @Perl_av_len(%struct.av* %610)
  %add633 = add nsw i32 %call632, 1
  %conv634 = sext i32 %add633 to i64
  call void @Perl_sortsv(%struct.sv** %609, i64 %conv634, i32 (%struct.sv*, %struct.sv*)* @Perl_sv_cmp)
  br label %if.end.635

if.end.635:                                       ; preds = %while.end.630, %if.then.612
  %611 = load %struct.sv*, %struct.sv** %sortkeys.addr, align 8
  %cmp636 = icmp ne %struct.sv* %611, @PL_sv_yes
  br i1 %cmp636, label %if.then.638, label %if.end.698

if.then.638:                                      ; preds = %if.end.635
  %612 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %612, %struct.sv*** %sp640, align 8
  call void @Perl_push_scope()
  call void @Perl_save_int(i32* @PL_tmps_floor)
  %613 = load i32, i32* @PL_tmps_ix, align 4
  store i32 %613, i32* @PL_tmps_floor, align 4
  %614 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr641 = getelementptr inbounds i32, i32* %614, i32 1
  store i32* %incdec.ptr641, i32** @PL_markstack_ptr, align 8
  %615 = load i32*, i32** @PL_markstack_max, align 8
  %cmp642 = icmp eq i32* %incdec.ptr641, %615
  br i1 %cmp642, label %if.then.644, label %if.end.645

if.then.644:                                      ; preds = %if.then.638
  call void @Perl_markstack_grow()
  br label %if.end.645

if.end.645:                                       ; preds = %if.then.644, %if.then.638
  %616 = load %struct.sv**, %struct.sv*** %sp640, align 8
  %617 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast647 = ptrtoint %struct.sv** %616 to i64
  %sub.ptr.rhs.cast648 = ptrtoint %struct.sv** %617 to i64
  %sub.ptr.sub649 = sub i64 %sub.ptr.lhs.cast647, %sub.ptr.rhs.cast648
  %sub.ptr.div650 = sdiv exact i64 %sub.ptr.sub649, 8
  %conv651 = trunc i64 %sub.ptr.div650 to i32
  %618 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv651, i32* %618, align 4
  store i32 %conv651, i32* %tmp646
  %619 = load i32, i32* %tmp646
  %620 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %621 = load %struct.sv**, %struct.sv*** %sp640, align 8
  %sub.ptr.lhs.cast652 = ptrtoint %struct.sv** %620 to i64
  %sub.ptr.rhs.cast653 = ptrtoint %struct.sv** %621 to i64
  %sub.ptr.sub654 = sub i64 %sub.ptr.lhs.cast652, %sub.ptr.rhs.cast653
  %sub.ptr.div655 = sdiv exact i64 %sub.ptr.sub654, 8
  %cmp656 = icmp slt i64 %sub.ptr.div655, 1
  br i1 %cmp656, label %if.then.658, label %if.end.660

if.then.658:                                      ; preds = %if.end.645
  %622 = load %struct.sv**, %struct.sv*** %sp640, align 8
  %623 = load %struct.sv**, %struct.sv*** %sp640, align 8
  %call659 = call %struct.sv** @Perl_stack_grow(%struct.sv** %622, %struct.sv** %623, i32 1)
  store %struct.sv** %call659, %struct.sv*** %sp640, align 8
  br label %if.end.660

if.end.660:                                       ; preds = %if.then.658, %if.end.645
  %624 = load %struct.sv*, %struct.sv** %ival, align 8
  %call662 = call %struct.sv* @Perl_newRV(%struct.sv* %624)
  %call663 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call662)
  %625 = load %struct.sv**, %struct.sv*** %sp640, align 8
  %incdec.ptr664 = getelementptr inbounds %struct.sv*, %struct.sv** %625, i32 1
  store %struct.sv** %incdec.ptr664, %struct.sv*** %sp640, align 8
  store %struct.sv* %call663, %struct.sv** %incdec.ptr664, align 8
  store %struct.sv* %call663, %struct.sv** %tmp661
  %626 = load %struct.sv*, %struct.sv** %tmp661
  %627 = load %struct.sv**, %struct.sv*** %sp640, align 8
  store %struct.sv** %627, %struct.sv*** @PL_stack_sp, align 8
  %628 = load %struct.sv*, %struct.sv** %sortkeys.addr, align 8
  %call665 = call i32 @Perl_call_sv(%struct.sv* %628, i32 4)
  store i32 %call665, i32* %i, align 4
  %629 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %629, %struct.sv*** %sp640, align 8
  %630 = load i32, i32* %i, align 4
  %tobool666 = icmp ne i32 %630, 0
  br i1 %tobool666, label %if.then.667, label %if.end.690

if.then.667:                                      ; preds = %if.end.660
  %631 = load %struct.sv**, %struct.sv*** %sp640, align 8
  %incdec.ptr668 = getelementptr inbounds %struct.sv*, %struct.sv** %631, i32 -1
  store %struct.sv** %incdec.ptr668, %struct.sv*** %sp640, align 8
  %632 = load %struct.sv*, %struct.sv** %631, align 8
  store %struct.sv* %632, %struct.sv** %sv, align 8
  %633 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags669 = getelementptr inbounds %struct.sv, %struct.sv* %633, i32 0, i32 2
  %634 = load i32, i32* %sv_flags669, align 4
  %and670 = and i32 %634, 524288
  %tobool671 = icmp ne i32 %and670, 0
  br i1 %tobool671, label %land.lhs.true.672, label %if.end.689

land.lhs.true.672:                                ; preds = %if.then.667
  %635 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any673 = getelementptr inbounds %struct.sv, %struct.sv* %635, i32 0, i32 0
  %636 = load i8*, i8** %sv_any673, align 8
  %637 = bitcast i8* %636 to %struct.xrv*
  %xrv_rv674 = getelementptr inbounds %struct.xrv, %struct.xrv* %637, i32 0, i32 0
  %638 = load %struct.sv*, %struct.sv** %xrv_rv674, align 8
  %sv_flags675 = getelementptr inbounds %struct.sv, %struct.sv* %638, i32 0, i32 2
  %639 = load i32, i32* %sv_flags675, align 4
  %and676 = and i32 %639, 255
  %cmp677 = icmp eq i32 %and676, 10
  br i1 %cmp677, label %if.then.679, label %if.end.689

if.then.679:                                      ; preds = %land.lhs.true.672
  %640 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any680 = getelementptr inbounds %struct.sv, %struct.sv* %640, i32 0, i32 0
  %641 = load i8*, i8** %sv_any680, align 8
  %642 = bitcast i8* %641 to %struct.xrv*
  %xrv_rv681 = getelementptr inbounds %struct.xrv, %struct.xrv* %642, i32 0, i32 0
  %643 = load %struct.sv*, %struct.sv** %xrv_rv681, align 8
  store %struct.sv* %643, %struct.sv** @PL_Sv, align 8
  %644 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool682 = icmp ne %struct.sv* %644, null
  br i1 %tobool682, label %land.rhs.683, label %land.end.687

land.rhs.683:                                     ; preds = %if.then.679
  %645 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt684 = getelementptr inbounds %struct.sv, %struct.sv* %645, i32 0, i32 1
  %646 = load i32, i32* %sv_refcnt684, align 4
  %inc685 = add i32 %646, 1
  store i32 %inc685, i32* %sv_refcnt684, align 4
  %tobool686 = icmp ne i32 %inc685, 0
  br label %land.end.687

land.end.687:                                     ; preds = %land.rhs.683, %if.then.679
  %647 = phi i1 [ false, %if.then.679 ], [ %tobool686, %land.rhs.683 ]
  %land.ext688 = zext i1 %647 to i32
  %648 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %649 = bitcast %struct.sv* %648 to %struct.av*
  store %struct.av* %649, %struct.av** %keys, align 8
  br label %if.end.689

if.end.689:                                       ; preds = %land.end.687, %land.lhs.true.672, %if.then.667
  br label %if.end.690

if.end.690:                                       ; preds = %if.end.689, %if.end.660
  %650 = load %struct.av*, %struct.av** %keys, align 8
  %tobool691 = icmp ne %struct.av* %650, null
  br i1 %tobool691, label %if.end.693, label %if.then.692

if.then.692:                                      ; preds = %if.end.690
  call void (i8*, ...) @Perl_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.61, i32 0, i32 0))
  br label %if.end.693

if.end.693:                                       ; preds = %if.then.692, %if.end.690
  %651 = load %struct.sv**, %struct.sv*** %sp640, align 8
  store %struct.sv** %651, %struct.sv*** @PL_stack_sp, align 8
  %652 = load i32, i32* @PL_tmps_ix, align 4
  %653 = load i32, i32* @PL_tmps_floor, align 4
  %cmp694 = icmp sgt i32 %652, %653
  br i1 %cmp694, label %if.then.696, label %if.end.697

if.then.696:                                      ; preds = %if.end.693
  call void @Perl_free_tmps()
  br label %if.end.697

if.end.697:                                       ; preds = %if.then.696, %if.end.693
  call void @Perl_pop_scope()
  br label %if.end.698

if.end.698:                                       ; preds = %if.end.697, %if.end.635
  %654 = load %struct.av*, %struct.av** %keys, align 8
  %tobool699 = icmp ne %struct.av* %654, null
  br i1 %tobool699, label %if.then.700, label %if.end.702

if.then.700:                                      ; preds = %if.end.698
  %655 = load %struct.av*, %struct.av** %keys, align 8
  %656 = bitcast %struct.av* %655 to %struct.sv*
  %call701 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %656)
  br label %if.end.702

if.end.702:                                       ; preds = %if.then.700, %if.end.698
  br label %if.end.705

if.else.703:                                      ; preds = %if.end.609
  %657 = load %struct.sv*, %struct.sv** %ival, align 8
  %658 = bitcast %struct.sv* %657 to %struct.hv*
  %call704 = call i32 @Perl_hv_iterinit(%struct.hv* %658)
  br label %if.end.705

if.end.705:                                       ; preds = %if.else.703, %if.end.702
  store i32 0, i32* %i, align 4
  br label %for.cond.706

for.cond.706:                                     ; preds = %for.inc.881, %if.end.705
  br i1 true, label %for.body.707, label %for.end.883

for.body.707:                                     ; preds = %for.cond.706
  store i8* null, i8** %nkey_buffer, align 8
  store i32 0, i32* %nticks, align 4
  store i8 0, i8* %do_utf8, align 1
  %659 = load %struct.sv*, %struct.sv** %sortkeys.addr, align 8
  %tobool715 = icmp ne %struct.sv* %659, null
  br i1 %tobool715, label %land.lhs.true.716, label %lor.lhs.false.722

land.lhs.true.716:                                ; preds = %for.body.707
  %660 = load %struct.av*, %struct.av** %keys, align 8
  %tobool717 = icmp ne %struct.av* %660, null
  br i1 %tobool717, label %land.lhs.true.718, label %if.then.725

land.lhs.true.718:                                ; preds = %land.lhs.true.716
  %661 = load i32, i32* %i, align 4
  %662 = load %struct.av*, %struct.av** %keys, align 8
  %call719 = call i32 @Perl_av_len(%struct.av* %662)
  %cmp720 = icmp sle i32 %661, %call719
  br i1 %cmp720, label %lor.lhs.false.722, label %if.then.725

lor.lhs.false.722:                                ; preds = %land.lhs.true.718, %for.body.707
  %663 = load %struct.sv*, %struct.sv** %ival, align 8
  %664 = bitcast %struct.sv* %663 to %struct.hv*
  %call723 = call %struct.he* @Perl_hv_iternext(%struct.hv* %664)
  store %struct.he* %call723, %struct.he** %entry530, align 8
  %tobool724 = icmp ne %struct.he* %call723, null
  br i1 %tobool724, label %if.end.726, label %if.then.725

if.then.725:                                      ; preds = %lor.lhs.false.722, %land.lhs.true.718, %land.lhs.true.716
  br label %for.end.883

if.end.726:                                       ; preds = %lor.lhs.false.722
  %665 = load i32, i32* %i, align 4
  %tobool727 = icmp ne i32 %665, 0
  br i1 %tobool727, label %if.then.728, label %if.end.729

if.then.728:                                      ; preds = %if.end.726
  %666 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %666, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0), i64 1, i32 2)
  br label %if.end.729

if.end.729:                                       ; preds = %if.then.728, %if.end.726
  %667 = load %struct.sv*, %struct.sv** %sortkeys.addr, align 8
  %tobool730 = icmp ne %struct.sv* %667, null
  br i1 %tobool730, label %if.then.731, label %if.else.772

if.then.731:                                      ; preds = %if.end.729
  %668 = load %struct.av*, %struct.av** %keys, align 8
  %669 = load i32, i32* %i, align 4
  %call734 = call %struct.sv** @Perl_av_fetch(%struct.av* %668, i32 %669, i32 0)
  store %struct.sv** %call734, %struct.sv*** %svp, align 8
  %670 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool735 = icmp ne %struct.sv** %670, null
  br i1 %tobool735, label %cond.true.736, label %cond.false.737

cond.true.736:                                    ; preds = %if.then.731
  %671 = load %struct.sv**, %struct.sv*** %svp, align 8
  %672 = load %struct.sv*, %struct.sv** %671, align 8
  br label %cond.end.739

cond.false.737:                                   ; preds = %if.then.731
  %call738 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* @PL_sv_undef)
  br label %cond.end.739

cond.end.739:                                     ; preds = %cond.false.737, %cond.true.736
  %cond740 = phi %struct.sv* [ %672, %cond.true.736 ], [ %call738, %cond.false.737 ]
  store %struct.sv* %cond740, %struct.sv** %keysv, align 8
  %673 = load %struct.sv*, %struct.sv** %keysv, align 8
  %sv_flags741 = getelementptr inbounds %struct.sv, %struct.sv* %673, i32 0, i32 2
  %674 = load i32, i32* %sv_flags741, align 4
  %and742 = and i32 %674, 262144
  %cmp743 = icmp eq i32 %and742, 262144
  br i1 %cmp743, label %cond.true.745, label %cond.false.750

cond.true.745:                                    ; preds = %cond.end.739
  %675 = load %struct.sv*, %struct.sv** %keysv, align 8
  %sv_any746 = getelementptr inbounds %struct.sv, %struct.sv* %675, i32 0, i32 0
  %676 = load i8*, i8** %sv_any746, align 8
  %677 = bitcast i8* %676 to %struct.xpv*
  %xpv_cur747 = getelementptr inbounds %struct.xpv, %struct.xpv* %677, i32 0, i32 1
  %678 = load i64, i64* %xpv_cur747, align 8
  store i64 %678, i64* %keylen, align 8
  %679 = load %struct.sv*, %struct.sv** %keysv, align 8
  %sv_any748 = getelementptr inbounds %struct.sv, %struct.sv* %679, i32 0, i32 0
  %680 = load i8*, i8** %sv_any748, align 8
  %681 = bitcast i8* %680 to %struct.xpv*
  %xpv_pv749 = getelementptr inbounds %struct.xpv, %struct.xpv* %681, i32 0, i32 0
  %682 = load i8*, i8** %xpv_pv749, align 8
  br label %cond.end.752

cond.false.750:                                   ; preds = %cond.end.739
  %683 = load %struct.sv*, %struct.sv** %keysv, align 8
  %call751 = call i8* @Perl_sv_2pv_flags(%struct.sv* %683, i64* %keylen, i32 2)
  br label %cond.end.752

cond.end.752:                                     ; preds = %cond.false.750, %cond.true.745
  %cond753 = phi i8* [ %682, %cond.true.745 ], [ %call751, %cond.false.750 ]
  store i8* %cond753, i8** %key733, align 8
  %684 = load %struct.sv*, %struct.sv** %ival, align 8
  %685 = bitcast %struct.sv* %684 to %struct.hv*
  %686 = load i8*, i8** %key733, align 8
  %687 = load %struct.sv*, %struct.sv** %keysv, align 8
  %sv_flags754 = getelementptr inbounds %struct.sv, %struct.sv* %687, i32 0, i32 2
  %688 = load i32, i32* %sv_flags754, align 4
  %and755 = and i32 %688, 536870912
  %tobool756 = icmp ne i32 %and755, 0
  br i1 %tobool756, label %cond.true.757, label %cond.false.761

cond.true.757:                                    ; preds = %cond.end.752
  %689 = load i64, i64* %keylen, align 8
  %conv758 = trunc i64 %689 to i32
  %sub759 = sub nsw i32 0, %conv758
  %conv760 = sext i32 %sub759 to i64
  br label %cond.end.762

cond.false.761:                                   ; preds = %cond.end.752
  %690 = load i64, i64* %keylen, align 8
  br label %cond.end.762

cond.end.762:                                     ; preds = %cond.false.761, %cond.true.757
  %cond763 = phi i64 [ %conv760, %cond.true.757 ], [ %690, %cond.false.761 ]
  %conv764 = trunc i64 %cond763 to i32
  %call765 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %685, i8* %686, i32 %conv764, i32 0)
  store %struct.sv** %call765, %struct.sv*** %svp, align 8
  %691 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool766 = icmp ne %struct.sv** %691, null
  br i1 %tobool766, label %cond.true.767, label %cond.false.768

cond.true.767:                                    ; preds = %cond.end.762
  %692 = load %struct.sv**, %struct.sv*** %svp, align 8
  %693 = load %struct.sv*, %struct.sv** %692, align 8
  br label %cond.end.770

cond.false.768:                                   ; preds = %cond.end.762
  %call769 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* @PL_sv_undef)
  br label %cond.end.770

cond.end.770:                                     ; preds = %cond.false.768, %cond.true.767
  %cond771 = phi %struct.sv* [ %693, %cond.true.767 ], [ %call769, %cond.false.768 ]
  store %struct.sv* %cond771, %struct.sv** %hval, align 8
  br label %if.end.775

if.else.772:                                      ; preds = %if.end.729
  %694 = load %struct.he*, %struct.he** %entry530, align 8
  %call773 = call %struct.sv* @Perl_hv_iterkeysv(%struct.he* %694)
  store %struct.sv* %call773, %struct.sv** %keysv, align 8
  %695 = load %struct.sv*, %struct.sv** %ival, align 8
  %696 = bitcast %struct.sv* %695 to %struct.hv*
  %697 = load %struct.he*, %struct.he** %entry530, align 8
  %call774 = call %struct.sv* @Perl_hv_iterval(%struct.hv* %696, %struct.he* %697)
  store %struct.sv* %call774, %struct.sv** %hval, align 8
  br label %if.end.775

if.end.775:                                       ; preds = %if.else.772, %cond.end.770
  %698 = load %struct.sv*, %struct.sv** %keysv, align 8
  %sv_flags776 = getelementptr inbounds %struct.sv, %struct.sv* %698, i32 0, i32 2
  %699 = load i32, i32* %sv_flags776, align 4
  %and777 = and i32 %699, 536870912
  %tobool778 = icmp ne i32 %and777, 0
  br i1 %tobool778, label %land.rhs.779, label %land.end.783

land.rhs.779:                                     ; preds = %if.end.775
  %700 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private = getelementptr inbounds %struct.cop, %struct.cop* %700, i32 0, i32 7
  %701 = load i8, i8* %op_private, align 1
  %conv780 = zext i8 %701 to i32
  %and781 = and i32 %conv780, 8
  %tobool782 = icmp ne i32 %and781, 0
  %lnot = xor i1 %tobool782, true
  br label %land.end.783

land.end.783:                                     ; preds = %land.rhs.779, %if.end.775
  %702 = phi i1 [ false, %if.end.775 ], [ %lnot, %land.rhs.779 ]
  %land.ext784 = zext i1 %702 to i32
  %conv785 = trunc i32 %land.ext784 to i8
  store i8 %conv785, i8* %do_utf8, align 1
  %703 = load %struct.sv*, %struct.sv** %keysv, align 8
  %sv_flags786 = getelementptr inbounds %struct.sv, %struct.sv* %703, i32 0, i32 2
  %704 = load i32, i32* %sv_flags786, align 4
  %and787 = and i32 %704, 262144
  %cmp788 = icmp eq i32 %and787, 262144
  br i1 %cmp788, label %cond.true.790, label %cond.false.795

cond.true.790:                                    ; preds = %land.end.783
  %705 = load %struct.sv*, %struct.sv** %keysv, align 8
  %sv_any791 = getelementptr inbounds %struct.sv, %struct.sv* %705, i32 0, i32 0
  %706 = load i8*, i8** %sv_any791, align 8
  %707 = bitcast i8* %706 to %struct.xpv*
  %xpv_cur792 = getelementptr inbounds %struct.xpv, %struct.xpv* %707, i32 0, i32 1
  %708 = load i64, i64* %xpv_cur792, align 8
  store i64 %708, i64* %keylen, align 8
  %709 = load %struct.sv*, %struct.sv** %keysv, align 8
  %sv_any793 = getelementptr inbounds %struct.sv, %struct.sv* %709, i32 0, i32 0
  %710 = load i8*, i8** %sv_any793, align 8
  %711 = bitcast i8* %710 to %struct.xpv*
  %xpv_pv794 = getelementptr inbounds %struct.xpv, %struct.xpv* %711, i32 0, i32 0
  %712 = load i8*, i8** %xpv_pv794, align 8
  br label %cond.end.797

cond.false.795:                                   ; preds = %land.end.783
  %713 = load %struct.sv*, %struct.sv** %keysv, align 8
  %call796 = call i8* @Perl_sv_2pv_flags(%struct.sv* %713, i64* %keylen, i32 2)
  br label %cond.end.797

cond.end.797:                                     ; preds = %cond.false.795, %cond.true.790
  %cond798 = phi i8* [ %712, %cond.true.790 ], [ %call796, %cond.false.795 ]
  store i8* %cond798, i8** %key, align 8
  %714 = load i64, i64* %keylen, align 8
  %conv799 = trunc i64 %714 to i32
  store i32 %conv799, i32* %klen, align 4
  %715 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %716 = load %struct.sv*, %struct.sv** %totpad524, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %715, %struct.sv* %716, i32 2)
  %717 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %718 = load %struct.sv*, %struct.sv** %ipad, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %717, %struct.sv* %718, i32 2)
  %719 = load i32, i32* %quotekeys.addr, align 4
  %tobool800 = icmp ne i32 %719, 0
  br i1 %tobool800, label %if.then.804, label %lor.lhs.false.801

lor.lhs.false.801:                                ; preds = %cond.end.797
  %720 = load i8*, i8** %key, align 8
  %call802 = call i32 @needs_quote(i8* %720)
  %tobool803 = icmp ne i32 %call802, 0
  br i1 %tobool803, label %if.then.804, label %if.else.842

if.then.804:                                      ; preds = %lor.lhs.false.801, %cond.end.797
  %721 = load i8, i8* %do_utf8, align 1
  %tobool805 = icmp ne i8 %721, 0
  br i1 %tobool805, label %if.then.806, label %if.else.815

if.then.806:                                      ; preds = %if.then.804
  %722 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %sv_any808 = getelementptr inbounds %struct.sv, %struct.sv* %722, i32 0, i32 0
  %723 = load i8*, i8** %sv_any808, align 8
  %724 = bitcast i8* %723 to %struct.xpv*
  %xpv_cur809 = getelementptr inbounds %struct.xpv, %struct.xpv* %724, i32 0, i32 1
  %725 = load i64, i64* %xpv_cur809, align 8
  store i64 %725, i64* %ocur, align 8
  %726 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %727 = load i8*, i8** %key, align 8
  %728 = load i32, i32* %klen, align 4
  %conv810 = sext i32 %728 to i64
  %call811 = call i32 @esc_q_utf8(%struct.sv* %726, i8* %727, i64 %conv810)
  store i32 %call811, i32* %nlen, align 4
  %729 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %sv_any812 = getelementptr inbounds %struct.sv, %struct.sv* %729, i32 0, i32 0
  %730 = load i8*, i8** %sv_any812, align 8
  %731 = bitcast i8* %730 to %struct.xpv*
  %xpv_pv813 = getelementptr inbounds %struct.xpv, %struct.xpv* %731, i32 0, i32 0
  %732 = load i8*, i8** %xpv_pv813, align 8
  %733 = load i64, i64* %ocur, align 8
  %add.ptr814 = getelementptr inbounds i8, i8* %732, i64 %733
  store i8* %add.ptr814, i8** %nkey, align 8
  br label %if.end.841

if.else.815:                                      ; preds = %if.then.804
  %734 = load i8*, i8** %key, align 8
  %735 = load i32, i32* %klen, align 4
  %conv816 = sext i32 %735 to i64
  %call817 = call i32 @num_q(i8* %734, i64 %conv816)
  store i32 %call817, i32* %nticks, align 4
  %736 = load i32, i32* %klen, align 4
  %737 = load i32, i32* %nticks, align 4
  %add818 = add nsw i32 %736, %737
  %add819 = add nsw i32 %add818, 3
  %conv820 = sext i32 %add819 to i64
  %mul821 = mul i64 %conv820, 1
  %call822 = call i8* @Perl_safesysmalloc(i64 %mul821)
  store i8* %call822, i8** %nkey_buffer, align 8
  %738 = load i8*, i8** %nkey_buffer, align 8
  store i8* %738, i8** %nkey, align 8
  %739 = load i8*, i8** %nkey, align 8
  %arrayidx823 = getelementptr inbounds i8, i8* %739, i64 0
  store i8 39, i8* %arrayidx823, align 1
  %740 = load i32, i32* %nticks, align 4
  %tobool824 = icmp ne i32 %740, 0
  br i1 %tobool824, label %if.then.825, label %if.else.830

if.then.825:                                      ; preds = %if.else.815
  %741 = load i8*, i8** %nkey, align 8
  %add.ptr826 = getelementptr inbounds i8, i8* %741, i64 1
  %742 = load i8*, i8** %key, align 8
  %743 = load i32, i32* %klen, align 4
  %conv827 = sext i32 %743 to i64
  %call828 = call i32 @esc_q(i8* %add.ptr826, i8* %742, i64 %conv827)
  %744 = load i32, i32* %klen, align 4
  %add829 = add nsw i32 %744, %call828
  store i32 %add829, i32* %klen, align 4
  br label %if.end.834

if.else.830:                                      ; preds = %if.else.815
  %745 = load i8*, i8** %nkey, align 8
  %add.ptr831 = getelementptr inbounds i8, i8* %745, i64 1
  %746 = load i8*, i8** %key, align 8
  %747 = load i32, i32* %klen, align 4
  %conv832 = sext i32 %747 to i64
  %mul833 = mul i64 %conv832, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr831, i8* %746, i64 %mul833, i32 1, i1 false)
  br label %if.end.834

if.end.834:                                       ; preds = %if.else.830, %if.then.825
  %748 = load i32, i32* %klen, align 4
  %inc835 = add nsw i32 %748, 1
  store i32 %inc835, i32* %klen, align 4
  %idxprom = sext i32 %inc835 to i64
  %749 = load i8*, i8** %nkey, align 8
  %arrayidx836 = getelementptr inbounds i8, i8* %749, i64 %idxprom
  store i8 39, i8* %arrayidx836, align 1
  %750 = load i32, i32* %klen, align 4
  %inc837 = add nsw i32 %750, 1
  store i32 %inc837, i32* %klen, align 4
  %idxprom838 = sext i32 %inc837 to i64
  %751 = load i8*, i8** %nkey, align 8
  %arrayidx839 = getelementptr inbounds i8, i8* %751, i64 %idxprom838
  store i8 0, i8* %arrayidx839, align 1
  %752 = load i32, i32* %klen, align 4
  store i32 %752, i32* %nlen, align 4
  %753 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %754 = load i8*, i8** %nkey, align 8
  %755 = load i32, i32* %klen, align 4
  %conv840 = sext i32 %755 to i64
  call void @Perl_sv_catpvn_flags(%struct.sv* %753, i8* %754, i64 %conv840, i32 2)
  br label %if.end.841

if.end.841:                                       ; preds = %if.end.834, %if.then.806
  br label %if.end.844

if.else.842:                                      ; preds = %lor.lhs.false.801
  %756 = load i8*, i8** %key, align 8
  store i8* %756, i8** %nkey, align 8
  %757 = load i32, i32* %klen, align 4
  store i32 %757, i32* %nlen, align 4
  %758 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %759 = load i8*, i8** %nkey, align 8
  %760 = load i32, i32* %klen, align 4
  %conv843 = sext i32 %760 to i64
  call void @Perl_sv_catpvn_flags(%struct.sv* %758, i8* %759, i64 %conv843, i32 2)
  br label %if.end.844

if.end.844:                                       ; preds = %if.else.842, %if.end.841
  %761 = load %struct.sv*, %struct.sv** %iname527, align 8
  %call845 = call %struct.sv* @Perl_newSVsv(%struct.sv* %761)
  store %struct.sv* %call845, %struct.sv** %sname, align 8
  %762 = load %struct.sv*, %struct.sv** %sname, align 8
  %763 = load i8*, i8** %nkey, align 8
  %764 = load i32, i32* %nlen, align 4
  %conv846 = sext i32 %764 to i64
  call void @Perl_sv_catpvn_flags(%struct.sv* %762, i8* %763, i64 %conv846, i32 2)
  %765 = load %struct.sv*, %struct.sv** %sname, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %765, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i64 1, i32 2)
  %766 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %767 = load %struct.sv*, %struct.sv** %pair.addr, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %766, %struct.sv* %767, i32 2)
  %768 = load i32, i32* %indent.addr, align 4
  %cmp847 = icmp sge i32 %768, 2
  br i1 %cmp847, label %if.then.849, label %if.else.870

if.then.849:                                      ; preds = %if.end.844
  store i32 0, i32* %elen, align 4
  %769 = load %struct.sv*, %struct.sv** %apad.addr, align 8
  %call852 = call %struct.sv* @Perl_newSVsv(%struct.sv* %769)
  store %struct.sv* %call852, %struct.sv** %newapad, align 8
  %770 = load i32, i32* %klen, align 4
  %add853 = add nsw i32 %770, 4
  %add854 = add nsw i32 %add853, 1
  %conv855 = sext i32 %add854 to i64
  %mul856 = mul i64 %conv855, 1
  %call857 = call i8* @Perl_safesysmalloc(i64 %mul856)
  store i8* %call857, i8** %extra, align 8
  br label %while.cond.858

while.cond.858:                                   ; preds = %while.body.862, %if.then.849
  %771 = load i32, i32* %elen, align 4
  %772 = load i32, i32* %klen, align 4
  %add859 = add nsw i32 %772, 4
  %cmp860 = icmp slt i32 %771, %add859
  br i1 %cmp860, label %while.body.862, label %while.end.866

while.body.862:                                   ; preds = %while.cond.858
  %773 = load i32, i32* %elen, align 4
  %inc863 = add nsw i32 %773, 1
  store i32 %inc863, i32* %elen, align 4
  %idxprom864 = sext i32 %773 to i64
  %774 = load i8*, i8** %extra, align 8
  %arrayidx865 = getelementptr inbounds i8, i8* %774, i64 %idxprom864
  store i8 32, i8* %arrayidx865, align 1
  br label %while.cond.858

while.end.866:                                    ; preds = %while.cond.858
  %775 = load i32, i32* %elen, align 4
  %idxprom867 = sext i32 %775 to i64
  %776 = load i8*, i8** %extra, align 8
  %arrayidx868 = getelementptr inbounds i8, i8* %776, i64 %idxprom867
  store i8 0, i8* %arrayidx868, align 1
  %777 = load %struct.sv*, %struct.sv** %newapad, align 8
  %778 = load i8*, i8** %extra, align 8
  %779 = load i32, i32* %elen, align 4
  %conv869 = sext i32 %779 to i64
  call void @Perl_sv_catpvn_flags(%struct.sv* %777, i8* %778, i64 %conv869, i32 2)
  %780 = load i8*, i8** %extra, align 8
  call void @Perl_safesysfree(i8* %780)
  br label %if.end.871

if.else.870:                                      ; preds = %if.end.844
  %781 = load %struct.sv*, %struct.sv** %apad.addr, align 8
  store %struct.sv* %781, %struct.sv** %newapad, align 8
  br label %if.end.871

if.end.871:                                       ; preds = %if.else.870, %while.end.866
  %782 = load %struct.sv*, %struct.sv** %hval, align 8
  %783 = load %struct.sv*, %struct.sv** %sname, align 8
  %sv_any872 = getelementptr inbounds %struct.sv, %struct.sv* %783, i32 0, i32 0
  %784 = load i8*, i8** %sv_any872, align 8
  %785 = bitcast i8* %784 to %struct.xpv*
  %xpv_pv873 = getelementptr inbounds %struct.xpv, %struct.xpv* %785, i32 0, i32 0
  %786 = load i8*, i8** %xpv_pv873, align 8
  %787 = load %struct.sv*, %struct.sv** %sname, align 8
  %sv_any874 = getelementptr inbounds %struct.sv, %struct.sv* %787, i32 0, i32 0
  %788 = load i8*, i8** %sv_any874, align 8
  %789 = bitcast i8* %788 to %struct.xpv*
  %xpv_cur875 = getelementptr inbounds %struct.xpv, %struct.xpv* %789, i32 0, i32 1
  %790 = load i64, i64* %xpv_cur875, align 8
  %791 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %792 = load %struct.hv*, %struct.hv** %seenhv.addr, align 8
  %793 = load %struct.av*, %struct.av** %postav.addr, align 8
  %794 = load i32*, i32** %levelp.addr, align 8
  %795 = load i32, i32* %indent.addr, align 4
  %796 = load %struct.sv*, %struct.sv** %pad.addr, align 8
  %797 = load %struct.sv*, %struct.sv** %xpad.addr, align 8
  %798 = load %struct.sv*, %struct.sv** %newapad, align 8
  %799 = load %struct.sv*, %struct.sv** %sep.addr, align 8
  %800 = load %struct.sv*, %struct.sv** %pair.addr, align 8
  %801 = load %struct.sv*, %struct.sv** %freezer.addr, align 8
  %802 = load %struct.sv*, %struct.sv** %toaster.addr, align 8
  %803 = load i32, i32* %purity.addr, align 4
  %804 = load i32, i32* %deepcopy.addr, align 4
  %805 = load i32, i32* %quotekeys.addr, align 4
  %806 = load %struct.sv*, %struct.sv** %bless.addr, align 8
  %807 = load i32, i32* %maxdepth.addr, align 4
  %808 = load %struct.sv*, %struct.sv** %sortkeys.addr, align 8
  %call876 = call i32 @DD_dump(%struct.sv* %782, i8* %786, i64 %790, %struct.sv* %791, %struct.hv* %792, %struct.av* %793, i32* %794, i32 %795, %struct.sv* %796, %struct.sv* %797, %struct.sv* %798, %struct.sv* %799, %struct.sv* %800, %struct.sv* %801, %struct.sv* %802, i32 %803, i32 %804, i32 %805, %struct.sv* %806, i32 %807, %struct.sv* %808)
  %809 = load %struct.sv*, %struct.sv** %sname, align 8
  call void @Perl_sv_free(%struct.sv* %809)
  %810 = load i8*, i8** %nkey_buffer, align 8
  call void @Perl_safesysfree(i8* %810)
  %811 = load i32, i32* %indent.addr, align 4
  %cmp877 = icmp sge i32 %811, 2
  br i1 %cmp877, label %if.then.879, label %if.end.880

if.then.879:                                      ; preds = %if.end.871
  %812 = load %struct.sv*, %struct.sv** %newapad, align 8
  call void @Perl_sv_free(%struct.sv* %812)
  br label %if.end.880

if.end.880:                                       ; preds = %if.then.879, %if.end.871
  br label %for.inc.881

for.inc.881:                                      ; preds = %if.end.880
  %813 = load i32, i32* %i, align 4
  %inc882 = add i32 %813, 1
  store i32 %inc882, i32* %i, align 4
  br label %for.cond.706

for.end.883:                                      ; preds = %if.then.725, %for.cond.706
  %814 = load i32, i32* %i, align 4
  %tobool884 = icmp ne i32 %814, 0
  br i1 %tobool884, label %if.then.885, label %if.end.894

if.then.885:                                      ; preds = %for.end.883
  %815 = load %struct.sv*, %struct.sv** %xpad.addr, align 8
  %sv_any888 = getelementptr inbounds %struct.sv, %struct.sv* %815, i32 0, i32 0
  %816 = load i8*, i8** %sv_any888, align 8
  %817 = bitcast i8* %816 to %struct.xpv*
  %xpv_pv889 = getelementptr inbounds %struct.xpv, %struct.xpv* %817, i32 0, i32 0
  %818 = load i8*, i8** %xpv_pv889, align 8
  %819 = load %struct.sv*, %struct.sv** %xpad.addr, align 8
  %sv_any890 = getelementptr inbounds %struct.sv, %struct.sv* %819, i32 0, i32 0
  %820 = load i8*, i8** %sv_any890, align 8
  %821 = bitcast i8* %820 to %struct.xpv*
  %xpv_cur891 = getelementptr inbounds %struct.xpv, %struct.xpv* %821, i32 0, i32 1
  %822 = load i64, i64* %xpv_cur891, align 8
  %823 = load i32*, i32** %levelp.addr, align 8
  %824 = load i32, i32* %823, align 4
  %sub892 = sub nsw i32 %824, 1
  %call893 = call %struct.sv* @sv_x(%struct.sv* null, i8* %818, i64 %822, i32 %sub892)
  store %struct.sv* %call893, %struct.sv** %opad887, align 8
  %825 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %826 = load %struct.sv*, %struct.sv** %totpad524, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %825, %struct.sv* %826, i32 2)
  %827 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %828 = load %struct.sv*, %struct.sv** %opad887, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %827, %struct.sv* %828, i32 2)
  %829 = load %struct.sv*, %struct.sv** %opad887, align 8
  call void @Perl_sv_free(%struct.sv* %829)
  br label %if.end.894

if.end.894:                                       ; preds = %if.then.885, %for.end.883
  %830 = load i8*, i8** %name.addr, align 8
  %arrayidx895 = getelementptr inbounds i8, i8* %830, i64 0
  %831 = load i8, i8* %arrayidx895, align 1
  %conv896 = sext i8 %831 to i32
  %cmp897 = icmp eq i32 %conv896, 37
  br i1 %cmp897, label %if.then.899, label %if.else.900

if.then.899:                                      ; preds = %if.end.894
  %832 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %832, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0), i64 1, i32 2)
  br label %if.end.901

if.else.900:                                      ; preds = %if.end.894
  %833 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %833, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i64 1, i32 2)
  br label %if.end.901

if.end.901:                                       ; preds = %if.else.900, %if.then.899
  %834 = load %struct.sv*, %struct.sv** %iname527, align 8
  call void @Perl_sv_free(%struct.sv* %834)
  %835 = load %struct.sv*, %struct.sv** %totpad524, align 8
  call void @Perl_sv_free(%struct.sv* %835)
  br label %if.end.911

if.else.902:                                      ; preds = %if.else.519
  %836 = load i32, i32* %realtype, align 4
  %cmp903 = icmp eq i32 %836, 12
  br i1 %cmp903, label %if.then.905, label %if.else.909

if.then.905:                                      ; preds = %if.else.902
  %837 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %837, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i32 0, i32 0), i64 15, i32 2)
  %838 = load i32, i32* %purity.addr, align 4
  %tobool906 = icmp ne i32 %838, 0
  br i1 %tobool906, label %if.then.907, label %if.end.908

if.then.907:                                      ; preds = %if.then.905
  call void (i8*, ...) @Perl_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.908

if.end.908:                                       ; preds = %if.then.907, %if.then.905
  br label %if.end.910

if.else.909:                                      ; preds = %if.else.902
  %839 = load i32, i32* %realtype, align 4
  call void (i8*, ...) @Perl_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.64, i32 0, i32 0), i32 %839)
  br label %if.end.910

if.end.910:                                       ; preds = %if.else.909, %if.end.908
  br label %if.end.911

if.end.911:                                       ; preds = %if.end.910, %if.end.901
  br label %if.end.912

if.end.912:                                       ; preds = %if.end.911, %if.end.518
  br label %if.end.913

if.end.913:                                       ; preds = %if.end.912, %if.then.367
  br label %if.end.914

if.end.914:                                       ; preds = %if.end.913, %if.end.363
  %840 = load i8*, i8** %realpack, align 8
  %tobool915 = icmp ne i8* %840, null
  br i1 %tobool915, label %if.then.916, label %if.end.933

if.then.916:                                      ; preds = %if.end.914
  %841 = load i32, i32* %indent.addr, align 4
  %cmp917 = icmp sge i32 %841, 2
  br i1 %cmp917, label %if.then.919, label %if.end.920

if.then.919:                                      ; preds = %if.then.916
  %842 = load %struct.sv*, %struct.sv** %apad.addr, align 8
  call void @Perl_sv_free(%struct.sv* %842)
  %843 = load %struct.sv*, %struct.sv** %blesspad, align 8
  store %struct.sv* %843, %struct.sv** %apad.addr, align 8
  br label %if.end.920

if.end.920:                                       ; preds = %if.then.919, %if.then.916
  %844 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %844, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i64 3, i32 2)
  %845 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %846 = load i8*, i8** %realpack, align 8
  %847 = load i8*, i8** %realpack, align 8
  %call921 = call i64 @strlen(i8* %847)
  call void @Perl_sv_catpvn_flags(%struct.sv* %845, i8* %846, i64 %call921, i32 2)
  %848 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %848, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0), i64 3, i32 2)
  %849 = load %struct.sv*, %struct.sv** %toaster.addr, align 8
  %tobool922 = icmp ne %struct.sv* %849, null
  br i1 %tobool922, label %land.lhs.true.923, label %if.end.932

land.lhs.true.923:                                ; preds = %if.end.920
  %850 = load %struct.sv*, %struct.sv** %toaster.addr, align 8
  %sv_flags924 = getelementptr inbounds %struct.sv, %struct.sv* %850, i32 0, i32 2
  %851 = load i32, i32* %sv_flags924, align 4
  %and925 = and i32 %851, 262144
  %tobool926 = icmp ne i32 %and925, 0
  br i1 %tobool926, label %land.lhs.true.927, label %if.end.932

land.lhs.true.927:                                ; preds = %land.lhs.true.923
  %852 = load %struct.sv*, %struct.sv** %toaster.addr, align 8
  %sv_any928 = getelementptr inbounds %struct.sv, %struct.sv* %852, i32 0, i32 0
  %853 = load i8*, i8** %sv_any928, align 8
  %854 = bitcast i8* %853 to %struct.xpv*
  %xpv_cur929 = getelementptr inbounds %struct.xpv, %struct.xpv* %854, i32 0, i32 1
  %855 = load i64, i64* %xpv_cur929, align 8
  %tobool930 = icmp ne i64 %855, 0
  br i1 %tobool930, label %if.then.931, label %if.end.932

if.then.931:                                      ; preds = %land.lhs.true.927
  %856 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %856, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), i64 2, i32 2)
  %857 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %858 = load %struct.sv*, %struct.sv** %toaster.addr, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %857, %struct.sv* %858, i32 2)
  %859 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %859, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0), i64 2, i32 2)
  br label %if.end.932

if.end.932:                                       ; preds = %if.then.931, %land.lhs.true.927, %land.lhs.true.923, %if.end.920
  br label %if.end.933

if.end.933:                                       ; preds = %if.end.932, %if.end.914
  %860 = load %struct.sv*, %struct.sv** %ipad, align 8
  call void @Perl_sv_free(%struct.sv* %860)
  %861 = load i32*, i32** %levelp.addr, align 8
  %862 = load i32, i32* %861, align 4
  %dec = add nsw i32 %862, -1
  store i32 %dec, i32* %861, align 4
  br label %if.end.1288

if.else.934:                                      ; preds = %if.end.6
  %863 = load i64, i64* %namelen.addr, align 8
  %tobool937 = icmp ne i64 %863, 0
  br i1 %tobool937, label %if.then.938, label %if.end.1001

if.then.938:                                      ; preds = %if.else.934
  %arraydecay939 = getelementptr inbounds [128 x i8], [128 x i8]* %id, i32 0, i32 0
  %864 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %865 = ptrtoint %struct.sv* %864 to i64
  %call940 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay939, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i64 %865)
  %866 = load %struct.hv*, %struct.hv** %seenhv.addr, align 8
  %arraydecay941 = getelementptr inbounds [128 x i8], [128 x i8]* %id, i32 0, i32 0
  %arraydecay942 = getelementptr inbounds [128 x i8], [128 x i8]* %id, i32 0, i32 0
  %call943 = call i64 @strlen(i8* %arraydecay942)
  store i64 %call943, i64* %idlen, align 8
  %conv944 = trunc i64 %call943 to i32
  %call945 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %866, i8* %arraydecay941, i32 %conv944, i32 0)
  store %struct.sv** %call945, %struct.sv*** %svp, align 8
  %tobool946 = icmp ne %struct.sv** %call945, null
  br i1 %tobool946, label %land.lhs.true.947, label %if.else.984

land.lhs.true.947:                                ; preds = %if.then.938
  %867 = load %struct.sv**, %struct.sv*** %svp, align 8
  %868 = load %struct.sv*, %struct.sv** %867, align 8
  store %struct.sv* %868, %struct.sv** %sv, align 8
  %tobool948 = icmp ne %struct.sv* %868, null
  br i1 %tobool948, label %land.lhs.true.949, label %if.else.984

land.lhs.true.949:                                ; preds = %land.lhs.true.947
  %869 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags950 = getelementptr inbounds %struct.sv, %struct.sv* %869, i32 0, i32 2
  %870 = load i32, i32* %sv_flags950, align 4
  %and951 = and i32 %870, 524288
  %tobool952 = icmp ne i32 %and951, 0
  br i1 %tobool952, label %land.lhs.true.953, label %if.else.984

land.lhs.true.953:                                ; preds = %land.lhs.true.949
  %871 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any954 = getelementptr inbounds %struct.sv, %struct.sv* %871, i32 0, i32 0
  %872 = load i8*, i8** %sv_any954, align 8
  %873 = bitcast i8* %872 to %struct.xrv*
  %xrv_rv955 = getelementptr inbounds %struct.xrv, %struct.xrv* %873, i32 0, i32 0
  %874 = load %struct.sv*, %struct.sv** %xrv_rv955, align 8
  %875 = bitcast %struct.sv* %874 to %struct.av*
  store %struct.av* %875, %struct.av** %seenentry, align 8
  %tobool956 = icmp ne %struct.av* %875, null
  br i1 %tobool956, label %if.then.957, label %if.else.984

if.then.957:                                      ; preds = %land.lhs.true.953
  %876 = load %struct.av*, %struct.av** %seenentry, align 8
  %call960 = call %struct.sv** @Perl_av_fetch(%struct.av* %876, i32 0, i32 0)
  store %struct.sv** %call960, %struct.sv*** %svp, align 8
  %tobool961 = icmp ne %struct.sv** %call960, null
  br i1 %tobool961, label %land.lhs.true.962, label %if.end.983

land.lhs.true.962:                                ; preds = %if.then.957
  %877 = load %struct.sv**, %struct.sv*** %svp, align 8
  %878 = load %struct.sv*, %struct.sv** %877, align 8
  store %struct.sv* %878, %struct.sv** %othername959, align 8
  %tobool963 = icmp ne %struct.sv* %878, null
  br i1 %tobool963, label %land.lhs.true.964, label %if.end.983

land.lhs.true.964:                                ; preds = %land.lhs.true.962
  %879 = load %struct.av*, %struct.av** %seenentry, align 8
  %call965 = call %struct.sv** @Perl_av_fetch(%struct.av* %879, i32 2, i32 0)
  store %struct.sv** %call965, %struct.sv*** %svp, align 8
  %tobool966 = icmp ne %struct.sv** %call965, null
  br i1 %tobool966, label %land.lhs.true.967, label %if.end.983

land.lhs.true.967:                                ; preds = %land.lhs.true.964
  %880 = load %struct.sv**, %struct.sv*** %svp, align 8
  %881 = load %struct.sv*, %struct.sv** %880, align 8
  %tobool968 = icmp ne %struct.sv* %881, null
  br i1 %tobool968, label %land.lhs.true.969, label %if.end.983

land.lhs.true.969:                                ; preds = %land.lhs.true.967
  %882 = load %struct.sv**, %struct.sv*** %svp, align 8
  %883 = load %struct.sv*, %struct.sv** %882, align 8
  %sv_flags970 = getelementptr inbounds %struct.sv, %struct.sv* %883, i32 0, i32 2
  %884 = load i32, i32* %sv_flags970, align 4
  %and971 = and i32 %884, 65536
  %tobool972 = icmp ne i32 %and971, 0
  br i1 %tobool972, label %cond.true.973, label %cond.false.976

cond.true.973:                                    ; preds = %land.lhs.true.969
  %885 = load %struct.sv**, %struct.sv*** %svp, align 8
  %886 = load %struct.sv*, %struct.sv** %885, align 8
  %sv_any974 = getelementptr inbounds %struct.sv, %struct.sv* %886, i32 0, i32 0
  %887 = load i8*, i8** %sv_any974, align 8
  %888 = bitcast i8* %887 to %struct.xpviv*
  %xiv_iv975 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %888, i32 0, i32 3
  %889 = load i64, i64* %xiv_iv975, align 8
  br label %cond.end.978

cond.false.976:                                   ; preds = %land.lhs.true.969
  %890 = load %struct.sv**, %struct.sv*** %svp, align 8
  %891 = load %struct.sv*, %struct.sv** %890, align 8
  %call977 = call i64 @Perl_sv_2iv(%struct.sv* %891)
  br label %cond.end.978

cond.end.978:                                     ; preds = %cond.false.976, %cond.true.973
  %cond979 = phi i64 [ %889, %cond.true.973 ], [ %call977, %cond.false.976 ]
  %cmp980 = icmp sgt i64 %cond979, 0
  br i1 %cmp980, label %if.then.982, label %if.end.983

if.then.982:                                      ; preds = %cond.end.978
  %892 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %892, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i64 2, i32 2)
  %893 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %894 = load %struct.sv*, %struct.sv** %othername959, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %893, %struct.sv* %894, i32 2)
  %895 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %895, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i64 1, i32 2)
  store i32 1, i32* %retval
  br label %return

if.end.983:                                       ; preds = %cond.end.978, %land.lhs.true.967, %land.lhs.true.964, %land.lhs.true.962, %if.then.957
  br label %if.end.1000

if.else.984:                                      ; preds = %land.lhs.true.953, %land.lhs.true.949, %land.lhs.true.947, %if.then.938
  %896 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %cmp985 = icmp ne %struct.sv* %896, @PL_sv_undef
  br i1 %cmp985, label %if.then.987, label %if.end.999

if.then.987:                                      ; preds = %if.else.984
  %call990 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i64 1)
  store %struct.sv* %call990, %struct.sv** %namesv989, align 8
  %897 = load %struct.sv*, %struct.sv** %namesv989, align 8
  %898 = load i8*, i8** %name.addr, align 8
  %899 = load i64, i64* %namelen.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %897, i8* %898, i64 %899, i32 2)
  %call991 = call %struct.av* @Perl_newAV()
  store %struct.av* %call991, %struct.av** %seenentry, align 8
  %900 = load %struct.av*, %struct.av** %seenentry, align 8
  %901 = load %struct.sv*, %struct.sv** %namesv989, align 8
  call void @Perl_av_push(%struct.av* %900, %struct.sv* %901)
  %902 = load %struct.av*, %struct.av** %seenentry, align 8
  %903 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %call992 = call %struct.sv* @Perl_newRV(%struct.sv* %903)
  call void @Perl_av_push(%struct.av* %902, %struct.sv* %call992)
  %904 = load %struct.hv*, %struct.hv** %seenhv.addr, align 8
  %arraydecay993 = getelementptr inbounds [128 x i8], [128 x i8]* %id, i32 0, i32 0
  %arraydecay994 = getelementptr inbounds [128 x i8], [128 x i8]* %id, i32 0, i32 0
  %call995 = call i64 @strlen(i8* %arraydecay994)
  %conv996 = trunc i64 %call995 to i32
  %905 = load %struct.av*, %struct.av** %seenentry, align 8
  %906 = bitcast %struct.av* %905 to %struct.sv*
  %call997 = call %struct.sv* @Perl_newRV(%struct.sv* %906)
  %call998 = call %struct.sv** @Perl_hv_store(%struct.hv* %904, i8* %arraydecay993, i32 %conv996, %struct.sv* %call997, i32 0)
  %907 = load %struct.av*, %struct.av** %seenentry, align 8
  %908 = bitcast %struct.av* %907 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %908)
  br label %if.end.999

if.end.999:                                       ; preds = %if.then.987, %if.else.984
  br label %if.end.1000

if.end.1000:                                      ; preds = %if.end.999, %if.end.983
  br label %if.end.1001

if.end.1001:                                      ; preds = %if.end.1000, %if.else.934
  %909 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_flags1002 = getelementptr inbounds %struct.sv, %struct.sv* %909, i32 0, i32 2
  %910 = load i32, i32* %sv_flags1002, align 4
  %and1003 = and i32 %910, 65536
  %tobool1004 = icmp ne i32 %and1003, 0
  br i1 %tobool1004, label %if.then.1005, label %if.else.1073

if.then.1005:                                     ; preds = %if.end.1001
  %911 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_flags1007 = getelementptr inbounds %struct.sv, %struct.sv* %911, i32 0, i32 2
  %912 = load i32, i32* %sv_flags1007, align 4
  %and1008 = and i32 %912, -2147483648
  %tobool1009 = icmp ne i32 %and1008, 0
  br i1 %tobool1009, label %if.then.1010, label %if.else.1022

if.then.1010:                                     ; preds = %if.then.1005
  %arraydecay1011 = getelementptr inbounds [128 x i8], [128 x i8]* %tmpbuf, i32 0, i32 0
  %913 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_flags1012 = getelementptr inbounds %struct.sv, %struct.sv* %913, i32 0, i32 2
  %914 = load i32, i32* %sv_flags1012, align 4
  %and1013 = and i32 %914, 65536
  %tobool1014 = icmp ne i32 %and1013, 0
  br i1 %tobool1014, label %cond.true.1015, label %cond.false.1017

cond.true.1015:                                   ; preds = %if.then.1010
  %915 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_any1016 = getelementptr inbounds %struct.sv, %struct.sv* %915, i32 0, i32 0
  %916 = load i8*, i8** %sv_any1016, align 8
  %917 = bitcast i8* %916 to %struct.xpvuv*
  %xuv_uv = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %917, i32 0, i32 3
  %918 = load i64, i64* %xuv_uv, align 8
  br label %cond.end.1019

cond.false.1017:                                  ; preds = %if.then.1010
  %919 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %call1018 = call i64 @Perl_sv_2uv(%struct.sv* %919)
  br label %cond.end.1019

cond.end.1019:                                    ; preds = %cond.false.1017, %cond.true.1015
  %cond1020 = phi i64 [ %918, %cond.true.1015 ], [ %call1018, %cond.false.1017 ]
  %call1021 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1011, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i64 %cond1020)
  br label %if.end.1035

if.else.1022:                                     ; preds = %if.then.1005
  %arraydecay1023 = getelementptr inbounds [128 x i8], [128 x i8]* %tmpbuf, i32 0, i32 0
  %920 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_flags1024 = getelementptr inbounds %struct.sv, %struct.sv* %920, i32 0, i32 2
  %921 = load i32, i32* %sv_flags1024, align 4
  %and1025 = and i32 %921, 65536
  %tobool1026 = icmp ne i32 %and1025, 0
  br i1 %tobool1026, label %cond.true.1027, label %cond.false.1030

cond.true.1027:                                   ; preds = %if.else.1022
  %922 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_any1028 = getelementptr inbounds %struct.sv, %struct.sv* %922, i32 0, i32 0
  %923 = load i8*, i8** %sv_any1028, align 8
  %924 = bitcast i8* %923 to %struct.xpviv*
  %xiv_iv1029 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %924, i32 0, i32 3
  %925 = load i64, i64* %xiv_iv1029, align 8
  br label %cond.end.1032

cond.false.1030:                                  ; preds = %if.else.1022
  %926 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %call1031 = call i64 @Perl_sv_2iv(%struct.sv* %926)
  br label %cond.end.1032

cond.end.1032:                                    ; preds = %cond.false.1030, %cond.true.1027
  %cond1033 = phi i64 [ %925, %cond.true.1027 ], [ %call1031, %cond.false.1030 ]
  %call1034 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1023, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i64 %cond1033)
  br label %if.end.1035

if.end.1035:                                      ; preds = %cond.end.1032, %cond.end.1019
  %arraydecay1036 = getelementptr inbounds [128 x i8], [128 x i8]* %tmpbuf, i32 0, i32 0
  %call1037 = call i64 @strlen(i8* %arraydecay1036)
  store i64 %call1037, i64* %len, align 8
  %927 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_flags1038 = getelementptr inbounds %struct.sv, %struct.sv* %927, i32 0, i32 2
  %928 = load i32, i32* %sv_flags1038, align 4
  %and1039 = and i32 %928, 262144
  %tobool1040 = icmp ne i32 %and1039, 0
  br i1 %tobool1040, label %if.then.1041, label %if.end.1065

if.then.1041:                                     ; preds = %if.end.1035
  %929 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_flags1044 = getelementptr inbounds %struct.sv, %struct.sv* %929, i32 0, i32 2
  %930 = load i32, i32* %sv_flags1044, align 4
  %and1045 = and i32 %930, 262144
  %cmp1046 = icmp eq i32 %and1045, 262144
  br i1 %cmp1046, label %cond.true.1048, label %cond.false.1053

cond.true.1048:                                   ; preds = %if.then.1041
  %931 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_any1049 = getelementptr inbounds %struct.sv, %struct.sv* %931, i32 0, i32 0
  %932 = load i8*, i8** %sv_any1049, align 8
  %933 = bitcast i8* %932 to %struct.xpv*
  %xpv_cur1050 = getelementptr inbounds %struct.xpv, %struct.xpv* %933, i32 0, i32 1
  %934 = load i64, i64* %xpv_cur1050, align 8
  store i64 %934, i64* %pvlen, align 8
  %935 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_any1051 = getelementptr inbounds %struct.sv, %struct.sv* %935, i32 0, i32 0
  %936 = load i8*, i8** %sv_any1051, align 8
  %937 = bitcast i8* %936 to %struct.xpv*
  %xpv_pv1052 = getelementptr inbounds %struct.xpv, %struct.xpv* %937, i32 0, i32 0
  %938 = load i8*, i8** %xpv_pv1052, align 8
  br label %cond.end.1055

cond.false.1053:                                  ; preds = %if.then.1041
  %939 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %call1054 = call i8* @Perl_sv_2pv_flags(%struct.sv* %939, i64* %pvlen, i32 2)
  br label %cond.end.1055

cond.end.1055:                                    ; preds = %cond.false.1053, %cond.true.1048
  %cond1056 = phi i8* [ %938, %cond.true.1048 ], [ %call1054, %cond.false.1053 ]
  store i8* %cond1056, i8** %pv, align 8
  %940 = load i64, i64* %pvlen, align 8
  %941 = load i64, i64* %len, align 8
  %cmp1057 = icmp ne i64 %940, %941
  br i1 %cmp1057, label %if.then.1063, label %lor.lhs.false.1059

lor.lhs.false.1059:                               ; preds = %cond.end.1055
  %942 = load i8*, i8** %pv, align 8
  %arraydecay1060 = getelementptr inbounds [128 x i8], [128 x i8]* %tmpbuf, i32 0, i32 0
  %943 = load i64, i64* %len, align 8
  %call1061 = call i32 @memcmp(i8* %942, i8* %arraydecay1060, i64 %943)
  %tobool1062 = icmp ne i32 %call1061, 0
  br i1 %tobool1062, label %if.then.1063, label %if.end.1064

if.then.1063:                                     ; preds = %lor.lhs.false.1059, %cond.end.1055
  br label %integer_came_from_string

if.end.1064:                                      ; preds = %lor.lhs.false.1059
  br label %if.end.1065

if.end.1065:                                      ; preds = %if.end.1064, %if.end.1035
  %944 = load i64, i64* %len, align 8
  %cmp1066 = icmp ugt i64 %944, 10
  br i1 %cmp1066, label %if.then.1068, label %if.else.1070

if.then.1068:                                     ; preds = %if.end.1065
  %945 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %arraydecay1069 = getelementptr inbounds [128 x i8], [128 x i8]* %tmpbuf, i32 0, i32 0
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %945, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i8* %arraydecay1069)
  br label %if.end.1072

if.else.1070:                                     ; preds = %if.end.1065
  %946 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %arraydecay1071 = getelementptr inbounds [128 x i8], [128 x i8]* %tmpbuf, i32 0, i32 0
  %947 = load i64, i64* %len, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %946, i8* %arraydecay1071, i64 %947, i32 2)
  br label %if.end.1072

if.end.1072:                                      ; preds = %if.else.1070, %if.then.1068
  br label %if.end.1287

if.else.1073:                                     ; preds = %if.end.1001
  %948 = load i32, i32* %realtype, align 4
  %cmp1074 = icmp eq i32 %948, 13
  br i1 %cmp1074, label %if.then.1076, label %if.else.1223

if.then.1076:                                     ; preds = %if.else.1073
  %949 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_flags1077 = getelementptr inbounds %struct.sv, %struct.sv* %949, i32 0, i32 2
  %950 = load i32, i32* %sv_flags1077, align 4
  %and1078 = and i32 %950, 262144
  %cmp1079 = icmp eq i32 %and1078, 262144
  br i1 %cmp1079, label %cond.true.1081, label %cond.false.1086

cond.true.1081:                                   ; preds = %if.then.1076
  %951 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_any1082 = getelementptr inbounds %struct.sv, %struct.sv* %951, i32 0, i32 0
  %952 = load i8*, i8** %sv_any1082, align 8
  %953 = bitcast i8* %952 to %struct.xpv*
  %xpv_cur1083 = getelementptr inbounds %struct.xpv, %struct.xpv* %953, i32 0, i32 1
  %954 = load i64, i64* %xpv_cur1083, align 8
  store i64 %954, i64* %i936, align 8
  %955 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_any1084 = getelementptr inbounds %struct.sv, %struct.sv* %955, i32 0, i32 0
  %956 = load i8*, i8** %sv_any1084, align 8
  %957 = bitcast i8* %956 to %struct.xpv*
  %xpv_pv1085 = getelementptr inbounds %struct.xpv, %struct.xpv* %957, i32 0, i32 0
  %958 = load i8*, i8** %xpv_pv1085, align 8
  br label %cond.end.1088

cond.false.1086:                                  ; preds = %if.then.1076
  %959 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %call1087 = call i8* @Perl_sv_2pv_flags(%struct.sv* %959, i64* %i936, i32 2)
  br label %cond.end.1088

cond.end.1088:                                    ; preds = %cond.false.1086, %cond.true.1081
  %cond1089 = phi i8* [ %958, %cond.true.1081 ], [ %call1087, %cond.false.1086 ]
  store i8* %cond1089, i8** %c, align 8
  %960 = load i8*, i8** %c, align 8
  %incdec.ptr1090 = getelementptr inbounds i8, i8* %960, i32 1
  store i8* %incdec.ptr1090, i8** %c, align 8
  %961 = load i64, i64* %i936, align 8
  %dec1091 = add i64 %961, -1
  store i64 %dec1091, i64* %i936, align 8
  %962 = load i64, i64* %i936, align 8
  %cmp1092 = icmp uge i64 %962, 6
  br i1 %cmp1092, label %land.lhs.true.1094, label %if.end.1101

land.lhs.true.1094:                               ; preds = %cond.end.1088
  %963 = load i8*, i8** %c, align 8
  %call1095 = call i32 @strncmp(i8* %963, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i64 6)
  %cmp1096 = icmp eq i32 %call1095, 0
  br i1 %cmp1096, label %if.then.1098, label %if.end.1101

if.then.1098:                                     ; preds = %land.lhs.true.1094
  %964 = load i8*, i8** %c, align 8
  %add.ptr1099 = getelementptr inbounds i8, i8* %964, i64 4
  store i8* %add.ptr1099, i8** %c, align 8
  %965 = load i64, i64* %i936, align 8
  %sub1100 = sub i64 %965, 4
  store i64 %sub1100, i64* %i936, align 8
  br label %if.end.1101

if.end.1101:                                      ; preds = %if.then.1098, %land.lhs.true.1094, %cond.end.1088
  %966 = load i8*, i8** %c, align 8
  %call1102 = call i32 @needs_quote(i8* %966)
  %tobool1103 = icmp ne i32 %call1102, 0
  br i1 %tobool1103, label %if.then.1104, label %if.else.1129

if.then.1104:                                     ; preds = %if.end.1101
  %967 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %968 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %sv_any1105 = getelementptr inbounds %struct.sv, %struct.sv* %968, i32 0, i32 0
  %969 = load i8*, i8** %sv_any1105, align 8
  %970 = bitcast i8* %969 to %struct.xpv*
  %xpv_cur1106 = getelementptr inbounds %struct.xpv, %struct.xpv* %970, i32 0, i32 1
  %971 = load i64, i64* %xpv_cur1106, align 8
  %add1107 = add i64 %971, 6
  %972 = load i64, i64* %i936, align 8
  %mul1108 = mul i64 2, %972
  %add1109 = add i64 %add1107, %mul1108
  %call1110 = call i8* @Perl_sv_grow(%struct.sv* %967, i64 %add1109)
  %973 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %sv_any1111 = getelementptr inbounds %struct.sv, %struct.sv* %973, i32 0, i32 0
  %974 = load i8*, i8** %sv_any1111, align 8
  %975 = bitcast i8* %974 to %struct.xpv*
  %xpv_pv1112 = getelementptr inbounds %struct.xpv, %struct.xpv* %975, i32 0, i32 0
  %976 = load i8*, i8** %xpv_pv1112, align 8
  %977 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %sv_any1113 = getelementptr inbounds %struct.sv, %struct.sv* %977, i32 0, i32 0
  %978 = load i8*, i8** %sv_any1113, align 8
  %979 = bitcast i8* %978 to %struct.xpv*
  %xpv_cur1114 = getelementptr inbounds %struct.xpv, %struct.xpv* %979, i32 0, i32 1
  %980 = load i64, i64* %xpv_cur1114, align 8
  %add.ptr1115 = getelementptr inbounds i8, i8* %976, i64 %980
  store i8* %add.ptr1115, i8** %r, align 8
  %981 = load i8*, i8** %r, align 8
  %arrayidx1116 = getelementptr inbounds i8, i8* %981, i64 0
  store i8 42, i8* %arrayidx1116, align 1
  %982 = load i8*, i8** %r, align 8
  %arrayidx1117 = getelementptr inbounds i8, i8* %982, i64 1
  store i8 123, i8* %arrayidx1117, align 1
  %983 = load i8*, i8** %r, align 8
  %arrayidx1118 = getelementptr inbounds i8, i8* %983, i64 2
  store i8 39, i8* %arrayidx1118, align 1
  %984 = load i8*, i8** %r, align 8
  %add.ptr1119 = getelementptr inbounds i8, i8* %984, i64 3
  %985 = load i8*, i8** %c, align 8
  %986 = load i64, i64* %i936, align 8
  %call1120 = call i32 @esc_q(i8* %add.ptr1119, i8* %985, i64 %986)
  %conv1121 = sext i32 %call1120 to i64
  %987 = load i64, i64* %i936, align 8
  %add1122 = add i64 %987, %conv1121
  store i64 %add1122, i64* %i936, align 8
  %988 = load i64, i64* %i936, align 8
  %add1123 = add i64 %988, 3
  store i64 %add1123, i64* %i936, align 8
  %989 = load i64, i64* %i936, align 8
  %inc1124 = add i64 %989, 1
  store i64 %inc1124, i64* %i936, align 8
  %990 = load i8*, i8** %r, align 8
  %arrayidx1125 = getelementptr inbounds i8, i8* %990, i64 %989
  store i8 39, i8* %arrayidx1125, align 1
  %991 = load i64, i64* %i936, align 8
  %inc1126 = add i64 %991, 1
  store i64 %inc1126, i64* %i936, align 8
  %992 = load i8*, i8** %r, align 8
  %arrayidx1127 = getelementptr inbounds i8, i8* %992, i64 %991
  store i8 125, i8* %arrayidx1127, align 1
  %993 = load i64, i64* %i936, align 8
  %994 = load i8*, i8** %r, align 8
  %arrayidx1128 = getelementptr inbounds i8, i8* %994, i64 %993
  store i8 0, i8* %arrayidx1128, align 1
  br label %if.end.1144

if.else.1129:                                     ; preds = %if.end.1101
  %995 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %996 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %sv_any1130 = getelementptr inbounds %struct.sv, %struct.sv* %996, i32 0, i32 0
  %997 = load i8*, i8** %sv_any1130, align 8
  %998 = bitcast i8* %997 to %struct.xpv*
  %xpv_cur1131 = getelementptr inbounds %struct.xpv, %struct.xpv* %998, i32 0, i32 1
  %999 = load i64, i64* %xpv_cur1131, align 8
  %1000 = load i64, i64* %i936, align 8
  %add1132 = add i64 %999, %1000
  %add1133 = add i64 %add1132, 2
  %call1134 = call i8* @Perl_sv_grow(%struct.sv* %995, i64 %add1133)
  %1001 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %sv_any1135 = getelementptr inbounds %struct.sv, %struct.sv* %1001, i32 0, i32 0
  %1002 = load i8*, i8** %sv_any1135, align 8
  %1003 = bitcast i8* %1002 to %struct.xpv*
  %xpv_pv1136 = getelementptr inbounds %struct.xpv, %struct.xpv* %1003, i32 0, i32 0
  %1004 = load i8*, i8** %xpv_pv1136, align 8
  %1005 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %sv_any1137 = getelementptr inbounds %struct.sv, %struct.sv* %1005, i32 0, i32 0
  %1006 = load i8*, i8** %sv_any1137, align 8
  %1007 = bitcast i8* %1006 to %struct.xpv*
  %xpv_cur1138 = getelementptr inbounds %struct.xpv, %struct.xpv* %1007, i32 0, i32 1
  %1008 = load i64, i64* %xpv_cur1138, align 8
  %add.ptr1139 = getelementptr inbounds i8, i8* %1004, i64 %1008
  store i8* %add.ptr1139, i8** %r, align 8
  %1009 = load i8*, i8** %r, align 8
  %arrayidx1140 = getelementptr inbounds i8, i8* %1009, i64 0
  store i8 42, i8* %arrayidx1140, align 1
  %1010 = load i8*, i8** %r, align 8
  %add.ptr1141 = getelementptr inbounds i8, i8* %1010, i64 1
  %1011 = load i8*, i8** %c, align 8
  %call1142 = call i8* @strcpy(i8* %add.ptr1141, i8* %1011)
  %1012 = load i64, i64* %i936, align 8
  %inc1143 = add i64 %1012, 1
  store i64 %inc1143, i64* %i936, align 8
  br label %if.end.1144

if.end.1144:                                      ; preds = %if.else.1129, %if.then.1104
  %1013 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %sv_any1146 = getelementptr inbounds %struct.sv, %struct.sv* %1013, i32 0, i32 0
  %1014 = load i8*, i8** %sv_any1146, align 8
  %1015 = bitcast i8* %1014 to %struct.xpv*
  %xpv_cur1147 = getelementptr inbounds %struct.xpv, %struct.xpv* %1015, i32 0, i32 1
  %1016 = load i64, i64* %xpv_cur1147, align 8
  %1017 = load i64, i64* %i936, align 8
  %add1148 = add i64 %1016, %1017
  %1018 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %sv_any1149 = getelementptr inbounds %struct.sv, %struct.sv* %1018, i32 0, i32 0
  %1019 = load i8*, i8** %sv_any1149, align 8
  %1020 = bitcast i8* %1019 to %struct.xpv*
  %xpv_cur1150 = getelementptr inbounds %struct.xpv, %struct.xpv* %1020, i32 0, i32 1
  store i64 %add1148, i64* %xpv_cur1150, align 8
  store i64 %add1148, i64* %tmp1145
  %1021 = load i64, i64* %tmp1145
  %1022 = load i32, i32* %purity.addr, align 4
  %tobool1151 = icmp ne i32 %1022, 0
  br i1 %tobool1151, label %if.then.1152, label %if.end.1222

if.then.1152:                                     ; preds = %if.end.1144
  %call1155 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i64 0)
  store %struct.sv* %call1155, %struct.sv** %nname, align 8
  %call1158 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i64 0)
  store %struct.sv* %call1158, %struct.sv** %newapad1157, align 8
  %1023 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %1024 = bitcast %struct.sv* %1023 to %struct.gv*
  store %struct.gv* %1024, %struct.gv** %gv, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.1161

for.cond.1161:                                    ; preds = %for.inc.1219, %if.then.1152
  %1025 = load i32, i32* %j, align 4
  %cmp1162 = icmp slt i32 %1025, 3
  br i1 %cmp1162, label %for.body.1164, label %for.end.1221

for.body.1164:                                    ; preds = %for.cond.1161
  %1026 = load i32, i32* %j, align 4
  %cmp1165 = icmp eq i32 %1026, 0
  br i1 %cmp1165, label %cond.true.1167, label %cond.false.1171

cond.true.1167:                                   ; preds = %for.body.1164
  %1027 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any1168 = getelementptr inbounds %struct.gv, %struct.gv* %1027, i32 0, i32 0
  %1028 = load %struct.xpvgv*, %struct.xpvgv** %sv_any1168, align 8
  %xgv_gp1169 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %1028, i32 0, i32 7
  %1029 = load %struct.gp*, %struct.gp** %xgv_gp1169, align 8
  %gp_sv1170 = getelementptr inbounds %struct.gp, %struct.gp* %1029, i32 0, i32 0
  %1030 = load %struct.sv*, %struct.sv** %gp_sv1170, align 8
  br label %cond.end.1182

cond.false.1171:                                  ; preds = %for.body.1164
  %1031 = load i32, i32* %j, align 4
  %cmp1172 = icmp eq i32 %1031, 1
  br i1 %cmp1172, label %cond.true.1174, label %cond.false.1177

cond.true.1174:                                   ; preds = %cond.false.1171
  %1032 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any1175 = getelementptr inbounds %struct.gv, %struct.gv* %1032, i32 0, i32 0
  %1033 = load %struct.xpvgv*, %struct.xpvgv** %sv_any1175, align 8
  %xgv_gp1176 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %1033, i32 0, i32 7
  %1034 = load %struct.gp*, %struct.gp** %xgv_gp1176, align 8
  %gp_av = getelementptr inbounds %struct.gp, %struct.gp* %1034, i32 0, i32 4
  %1035 = load %struct.av*, %struct.av** %gp_av, align 8
  %1036 = bitcast %struct.av* %1035 to %struct.sv*
  br label %cond.end.1180

cond.false.1177:                                  ; preds = %cond.false.1171
  %1037 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any1178 = getelementptr inbounds %struct.gv, %struct.gv* %1037, i32 0, i32 0
  %1038 = load %struct.xpvgv*, %struct.xpvgv** %sv_any1178, align 8
  %xgv_gp1179 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %1038, i32 0, i32 7
  %1039 = load %struct.gp*, %struct.gp** %xgv_gp1179, align 8
  %gp_hv = getelementptr inbounds %struct.gp, %struct.gp* %1039, i32 0, i32 5
  %1040 = load %struct.hv*, %struct.hv** %gp_hv, align 8
  %1041 = bitcast %struct.hv* %1040 to %struct.sv*
  br label %cond.end.1180

cond.end.1180:                                    ; preds = %cond.false.1177, %cond.true.1174
  %cond1181 = phi %struct.sv* [ %1036, %cond.true.1174 ], [ %1041, %cond.false.1177 ]
  br label %cond.end.1182

cond.end.1182:                                    ; preds = %cond.end.1180, %cond.true.1167
  %cond1183 = phi %struct.sv* [ %1030, %cond.true.1167 ], [ %cond1181, %cond.end.1180 ]
  store %struct.sv* %cond1183, %struct.sv** %e, align 8
  %1042 = load %struct.sv*, %struct.sv** %e, align 8
  %tobool1184 = icmp ne %struct.sv* %1042, null
  br i1 %tobool1184, label %if.end.1186, label %if.then.1185

if.then.1185:                                     ; preds = %cond.end.1182
  br label %for.inc.1219

if.end.1186:                                      ; preds = %cond.end.1182
  %1043 = load i32, i32* %j, align 4
  %cmp1187 = icmp eq i32 %1043, 0
  br i1 %cmp1187, label %land.lhs.true.1189, label %if.end.1194

land.lhs.true.1189:                               ; preds = %if.end.1186
  %1044 = load %struct.sv*, %struct.sv** %e, align 8
  %sv_flags1190 = getelementptr inbounds %struct.sv, %struct.sv* %1044, i32 0, i32 2
  %1045 = load i32, i32* %sv_flags1190, align 4
  %and1191 = and i32 %1045, 118423552
  %tobool1192 = icmp ne i32 %and1191, 0
  br i1 %tobool1192, label %if.end.1194, label %if.then.1193

if.then.1193:                                     ; preds = %land.lhs.true.1189
  br label %for.inc.1219

if.end.1194:                                      ; preds = %land.lhs.true.1189, %if.end.1186
  store i32 0, i32* %nlevel, align 4
  %1046 = load i8*, i8** %r, align 8
  %1047 = load i64, i64* %i936, align 8
  %call1198 = call %struct.sv* @Perl_newSVpvn(i8* %1046, i64 %1047)
  store %struct.sv* %call1198, %struct.sv** %postentry1197, align 8
  %1048 = load %struct.sv*, %struct.sv** %nname, align 8
  %1049 = load %struct.sv*, %struct.sv** %postentry1197, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %1048, %struct.sv* %1049, i32 2)
  %1050 = load %struct.sv*, %struct.sv** %nname, align 8
  %1051 = load i32, i32* %j, align 4
  %idxprom1199 = sext i32 %1051 to i64
  %arrayidx1200 = getelementptr inbounds [3 x i8*], [3 x i8*]* @DD_dump.entries, i32 0, i64 %idxprom1199
  %1052 = load i8*, i8** %arrayidx1200, align 8
  %1053 = load i32, i32* %j, align 4
  %idxprom1201 = sext i32 %1053 to i64
  %arrayidx1202 = getelementptr inbounds [3 x i64], [3 x i64]* @DD_dump.sizes, i32 0, i64 %idxprom1201
  %1054 = load i64, i64* %arrayidx1202, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %1050, i8* %1052, i64 %1054, i32 2)
  %1055 = load %struct.sv*, %struct.sv** %postentry1197, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %1055, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i64 3, i32 2)
  %1056 = load %struct.av*, %struct.av** %postav.addr, align 8
  %1057 = load %struct.sv*, %struct.sv** %postentry1197, align 8
  call void @Perl_av_push(%struct.av* %1056, %struct.sv* %1057)
  %1058 = load %struct.sv*, %struct.sv** %e, align 8
  %call1203 = call %struct.sv* @Perl_newRV(%struct.sv* %1058)
  store %struct.sv* %call1203, %struct.sv** %e, align 8
  %1059 = load %struct.sv*, %struct.sv** %newapad1157, align 8
  %sv_any1204 = getelementptr inbounds %struct.sv, %struct.sv* %1059, i32 0, i32 0
  %1060 = load i8*, i8** %sv_any1204, align 8
  %1061 = bitcast i8* %1060 to %struct.xpv*
  %xpv_cur1205 = getelementptr inbounds %struct.xpv, %struct.xpv* %1061, i32 0, i32 1
  store i64 0, i64* %xpv_cur1205, align 8
  %1062 = load i32, i32* %indent.addr, align 4
  %cmp1206 = icmp sge i32 %1062, 2
  br i1 %cmp1206, label %if.then.1208, label %if.end.1213

if.then.1208:                                     ; preds = %if.end.1194
  %1063 = load %struct.sv*, %struct.sv** %newapad1157, align 8
  %1064 = load %struct.sv*, %struct.sv** %postentry1197, align 8
  %sv_any1209 = getelementptr inbounds %struct.sv, %struct.sv* %1064, i32 0, i32 0
  %1065 = load i8*, i8** %sv_any1209, align 8
  %1066 = bitcast i8* %1065 to %struct.xpv*
  %xpv_cur1210 = getelementptr inbounds %struct.xpv, %struct.xpv* %1066, i32 0, i32 1
  %1067 = load i64, i64* %xpv_cur1210, align 8
  %conv1211 = trunc i64 %1067 to i32
  %call1212 = call %struct.sv* @sv_x(%struct.sv* %1063, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i64 1, i32 %conv1211)
  br label %if.end.1213

if.end.1213:                                      ; preds = %if.then.1208, %if.end.1194
  %1068 = load %struct.sv*, %struct.sv** %e, align 8
  %1069 = load %struct.sv*, %struct.sv** %nname, align 8
  %sv_any1214 = getelementptr inbounds %struct.sv, %struct.sv* %1069, i32 0, i32 0
  %1070 = load i8*, i8** %sv_any1214, align 8
  %1071 = bitcast i8* %1070 to %struct.xpv*
  %xpv_pv1215 = getelementptr inbounds %struct.xpv, %struct.xpv* %1071, i32 0, i32 0
  %1072 = load i8*, i8** %xpv_pv1215, align 8
  %1073 = load %struct.sv*, %struct.sv** %nname, align 8
  %sv_any1216 = getelementptr inbounds %struct.sv, %struct.sv* %1073, i32 0, i32 0
  %1074 = load i8*, i8** %sv_any1216, align 8
  %1075 = bitcast i8* %1074 to %struct.xpv*
  %xpv_cur1217 = getelementptr inbounds %struct.xpv, %struct.xpv* %1075, i32 0, i32 1
  %1076 = load i64, i64* %xpv_cur1217, align 8
  %1077 = load %struct.sv*, %struct.sv** %postentry1197, align 8
  %1078 = load %struct.hv*, %struct.hv** %seenhv.addr, align 8
  %1079 = load %struct.av*, %struct.av** %postav.addr, align 8
  %1080 = load i32, i32* %indent.addr, align 4
  %1081 = load %struct.sv*, %struct.sv** %pad.addr, align 8
  %1082 = load %struct.sv*, %struct.sv** %xpad.addr, align 8
  %1083 = load %struct.sv*, %struct.sv** %newapad1157, align 8
  %1084 = load %struct.sv*, %struct.sv** %sep.addr, align 8
  %1085 = load %struct.sv*, %struct.sv** %pair.addr, align 8
  %1086 = load %struct.sv*, %struct.sv** %freezer.addr, align 8
  %1087 = load %struct.sv*, %struct.sv** %toaster.addr, align 8
  %1088 = load i32, i32* %purity.addr, align 4
  %1089 = load i32, i32* %deepcopy.addr, align 4
  %1090 = load i32, i32* %quotekeys.addr, align 4
  %1091 = load %struct.sv*, %struct.sv** %bless.addr, align 8
  %1092 = load i32, i32* %maxdepth.addr, align 4
  %1093 = load %struct.sv*, %struct.sv** %sortkeys.addr, align 8
  %call1218 = call i32 @DD_dump(%struct.sv* %1068, i8* %1072, i64 %1076, %struct.sv* %1077, %struct.hv* %1078, %struct.av* %1079, i32* %nlevel, i32 %1080, %struct.sv* %1081, %struct.sv* %1082, %struct.sv* %1083, %struct.sv* %1084, %struct.sv* %1085, %struct.sv* %1086, %struct.sv* %1087, i32 %1088, i32 %1089, i32 %1090, %struct.sv* %1091, i32 %1092, %struct.sv* %1093)
  %1094 = load %struct.sv*, %struct.sv** %e, align 8
  call void @Perl_sv_free(%struct.sv* %1094)
  br label %for.inc.1219

for.inc.1219:                                     ; preds = %if.end.1213, %if.then.1193, %if.then.1185
  %1095 = load i32, i32* %j, align 4
  %inc1220 = add nsw i32 %1095, 1
  store i32 %inc1220, i32* %j, align 4
  br label %for.cond.1161

for.end.1221:                                     ; preds = %for.cond.1161
  %1096 = load %struct.sv*, %struct.sv** %newapad1157, align 8
  call void @Perl_sv_free(%struct.sv* %1096)
  %1097 = load %struct.sv*, %struct.sv** %nname, align 8
  call void @Perl_sv_free(%struct.sv* %1097)
  br label %if.end.1222

if.end.1222:                                      ; preds = %for.end.1221, %if.end.1144
  br label %if.end.1286

if.else.1223:                                     ; preds = %if.else.1073
  %1098 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %cmp1224 = icmp eq %struct.sv* %1098, @PL_sv_undef
  br i1 %cmp1224, label %if.then.1230, label %lor.lhs.false.1226

lor.lhs.false.1226:                               ; preds = %if.else.1223
  %1099 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_flags1227 = getelementptr inbounds %struct.sv, %struct.sv* %1099, i32 0, i32 2
  %1100 = load i32, i32* %sv_flags1227, align 4
  %and1228 = and i32 %1100, 118423552
  %tobool1229 = icmp ne i32 %and1228, 0
  br i1 %tobool1229, label %if.else.1231, label %if.then.1230

if.then.1230:                                     ; preds = %lor.lhs.false.1226, %if.else.1223
  %1101 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %1101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i64 5, i32 2)
  br label %if.end.1285

if.else.1231:                                     ; preds = %lor.lhs.false.1226
  br label %integer_came_from_string

integer_came_from_string:                         ; preds = %if.else.1231, %if.then.1063
  %1102 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_flags1232 = getelementptr inbounds %struct.sv, %struct.sv* %1102, i32 0, i32 2
  %1103 = load i32, i32* %sv_flags1232, align 4
  %and1233 = and i32 %1103, 262144
  %cmp1234 = icmp eq i32 %and1233, 262144
  br i1 %cmp1234, label %cond.true.1236, label %cond.false.1241

cond.true.1236:                                   ; preds = %integer_came_from_string
  %1104 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_any1237 = getelementptr inbounds %struct.sv, %struct.sv* %1104, i32 0, i32 0
  %1105 = load i8*, i8** %sv_any1237, align 8
  %1106 = bitcast i8* %1105 to %struct.xpv*
  %xpv_cur1238 = getelementptr inbounds %struct.xpv, %struct.xpv* %1106, i32 0, i32 1
  %1107 = load i64, i64* %xpv_cur1238, align 8
  store i64 %1107, i64* %i936, align 8
  %1108 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_any1239 = getelementptr inbounds %struct.sv, %struct.sv* %1108, i32 0, i32 0
  %1109 = load i8*, i8** %sv_any1239, align 8
  %1110 = bitcast i8* %1109 to %struct.xpv*
  %xpv_pv1240 = getelementptr inbounds %struct.xpv, %struct.xpv* %1110, i32 0, i32 0
  %1111 = load i8*, i8** %xpv_pv1240, align 8
  br label %cond.end.1243

cond.false.1241:                                  ; preds = %integer_came_from_string
  %1112 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %call1242 = call i8* @Perl_sv_2pv_flags(%struct.sv* %1112, i64* %i936, i32 2)
  br label %cond.end.1243

cond.end.1243:                                    ; preds = %cond.false.1241, %cond.true.1236
  %cond1244 = phi i8* [ %1111, %cond.true.1236 ], [ %call1242, %cond.false.1241 ]
  store i8* %cond1244, i8** %c, align 8
  %1113 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %sv_flags1245 = getelementptr inbounds %struct.sv, %struct.sv* %1113, i32 0, i32 2
  %1114 = load i32, i32* %sv_flags1245, align 4
  %and1246 = and i32 %1114, 536870912
  %tobool1247 = icmp ne i32 %and1246, 0
  br i1 %tobool1247, label %land.lhs.true.1248, label %if.else.1257

land.lhs.true.1248:                               ; preds = %cond.end.1243
  %1115 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private1249 = getelementptr inbounds %struct.cop, %struct.cop* %1115, i32 0, i32 7
  %1116 = load i8, i8* %op_private1249, align 1
  %conv1250 = zext i8 %1116 to i32
  %and1251 = and i32 %conv1250, 8
  %tobool1252 = icmp ne i32 %and1251, 0
  br i1 %tobool1252, label %if.else.1257, label %if.then.1253

if.then.1253:                                     ; preds = %land.lhs.true.1248
  %1117 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %1118 = load i8*, i8** %c, align 8
  %1119 = load i64, i64* %i936, align 8
  %call1254 = call i32 @esc_q_utf8(%struct.sv* %1117, i8* %1118, i64 %1119)
  %conv1255 = sext i32 %call1254 to i64
  %1120 = load i64, i64* %i936, align 8
  %add1256 = add i64 %1120, %conv1255
  store i64 %add1256, i64* %i936, align 8
  br label %if.end.1284

if.else.1257:                                     ; preds = %land.lhs.true.1248, %cond.end.1243
  %1121 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %1122 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %sv_any1258 = getelementptr inbounds %struct.sv, %struct.sv* %1122, i32 0, i32 0
  %1123 = load i8*, i8** %sv_any1258, align 8
  %1124 = bitcast i8* %1123 to %struct.xpv*
  %xpv_cur1259 = getelementptr inbounds %struct.xpv, %struct.xpv* %1124, i32 0, i32 1
  %1125 = load i64, i64* %xpv_cur1259, align 8
  %add1260 = add i64 %1125, 3
  %1126 = load i64, i64* %i936, align 8
  %mul1261 = mul i64 2, %1126
  %add1262 = add i64 %add1260, %mul1261
  %call1263 = call i8* @Perl_sv_grow(%struct.sv* %1121, i64 %add1262)
  %1127 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %sv_any1264 = getelementptr inbounds %struct.sv, %struct.sv* %1127, i32 0, i32 0
  %1128 = load i8*, i8** %sv_any1264, align 8
  %1129 = bitcast i8* %1128 to %struct.xpv*
  %xpv_pv1265 = getelementptr inbounds %struct.xpv, %struct.xpv* %1129, i32 0, i32 0
  %1130 = load i8*, i8** %xpv_pv1265, align 8
  %1131 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %sv_any1266 = getelementptr inbounds %struct.sv, %struct.sv* %1131, i32 0, i32 0
  %1132 = load i8*, i8** %sv_any1266, align 8
  %1133 = bitcast i8* %1132 to %struct.xpv*
  %xpv_cur1267 = getelementptr inbounds %struct.xpv, %struct.xpv* %1133, i32 0, i32 1
  %1134 = load i64, i64* %xpv_cur1267, align 8
  %add.ptr1268 = getelementptr inbounds i8, i8* %1130, i64 %1134
  store i8* %add.ptr1268, i8** %r, align 8
  %1135 = load i8*, i8** %r, align 8
  %arrayidx1269 = getelementptr inbounds i8, i8* %1135, i64 0
  store i8 39, i8* %arrayidx1269, align 1
  %1136 = load i8*, i8** %r, align 8
  %add.ptr1270 = getelementptr inbounds i8, i8* %1136, i64 1
  %1137 = load i8*, i8** %c, align 8
  %1138 = load i64, i64* %i936, align 8
  %call1271 = call i32 @esc_q(i8* %add.ptr1270, i8* %1137, i64 %1138)
  %conv1272 = sext i32 %call1271 to i64
  %1139 = load i64, i64* %i936, align 8
  %add1273 = add i64 %1139, %conv1272
  store i64 %add1273, i64* %i936, align 8
  %1140 = load i64, i64* %i936, align 8
  %inc1274 = add i64 %1140, 1
  store i64 %inc1274, i64* %i936, align 8
  %1141 = load i64, i64* %i936, align 8
  %inc1275 = add i64 %1141, 1
  store i64 %inc1275, i64* %i936, align 8
  %1142 = load i8*, i8** %r, align 8
  %arrayidx1276 = getelementptr inbounds i8, i8* %1142, i64 %1141
  store i8 39, i8* %arrayidx1276, align 1
  %1143 = load i64, i64* %i936, align 8
  %1144 = load i8*, i8** %r, align 8
  %arrayidx1277 = getelementptr inbounds i8, i8* %1144, i64 %1143
  store i8 0, i8* %arrayidx1277, align 1
  %1145 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %sv_any1279 = getelementptr inbounds %struct.sv, %struct.sv* %1145, i32 0, i32 0
  %1146 = load i8*, i8** %sv_any1279, align 8
  %1147 = bitcast i8* %1146 to %struct.xpv*
  %xpv_cur1280 = getelementptr inbounds %struct.xpv, %struct.xpv* %1147, i32 0, i32 1
  %1148 = load i64, i64* %xpv_cur1280, align 8
  %1149 = load i64, i64* %i936, align 8
  %add1281 = add i64 %1148, %1149
  %1150 = load %struct.sv*, %struct.sv** %retval.addr, align 8
  %sv_any1282 = getelementptr inbounds %struct.sv, %struct.sv* %1150, i32 0, i32 0
  %1151 = load i8*, i8** %sv_any1282, align 8
  %1152 = bitcast i8* %1151 to %struct.xpv*
  %xpv_cur1283 = getelementptr inbounds %struct.xpv, %struct.xpv* %1152, i32 0, i32 1
  store i64 %add1281, i64* %xpv_cur1283, align 8
  store i64 %add1281, i64* %tmp1278
  %1153 = load i64, i64* %tmp1278
  br label %if.end.1284

if.end.1284:                                      ; preds = %if.else.1257, %if.then.1253
  br label %if.end.1285

if.end.1285:                                      ; preds = %if.end.1284, %if.then.1230
  br label %if.end.1286

if.end.1286:                                      ; preds = %if.end.1285, %if.end.1222
  br label %if.end.1287

if.end.1287:                                      ; preds = %if.end.1286, %if.end.1072
  br label %if.end.1288

if.end.1288:                                      ; preds = %if.end.1287, %if.end.933
  %1154 = load i64, i64* %idlen, align 8
  %tobool1289 = icmp ne i64 %1154, 0
  br i1 %tobool1289, label %if.then.1290, label %if.end.1305

if.then.1290:                                     ; preds = %if.end.1288
  %1155 = load i32, i32* %deepcopy.addr, align 4
  %tobool1291 = icmp ne i32 %1155, 0
  br i1 %tobool1291, label %if.then.1292, label %if.else.1296

if.then.1292:                                     ; preds = %if.then.1290
  %1156 = load %struct.hv*, %struct.hv** %seenhv.addr, align 8
  %arraydecay1293 = getelementptr inbounds [128 x i8], [128 x i8]* %id, i32 0, i32 0
  %1157 = load i64, i64* %idlen, align 8
  %conv1294 = trunc i64 %1157 to i32
  %call1295 = call %struct.sv* @Perl_hv_delete(%struct.hv* %1156, i8* %arraydecay1293, i32 %conv1294, i32 2)
  br label %if.end.1304

if.else.1296:                                     ; preds = %if.then.1290
  %1158 = load i64, i64* %namelen.addr, align 8
  %tobool1297 = icmp ne i64 %1158, 0
  br i1 %tobool1297, label %land.lhs.true.1298, label %if.end.1303

land.lhs.true.1298:                               ; preds = %if.else.1296
  %1159 = load %struct.av*, %struct.av** %seenentry, align 8
  %tobool1299 = icmp ne %struct.av* %1159, null
  br i1 %tobool1299, label %if.then.1300, label %if.end.1303

if.then.1300:                                     ; preds = %land.lhs.true.1298
  %1160 = load %struct.av*, %struct.av** %seenentry, align 8
  %call1302 = call %struct.sv** @Perl_av_fetch(%struct.av* %1160, i32 2, i32 1)
  %1161 = load %struct.sv*, %struct.sv** %call1302, align 8
  store %struct.sv* %1161, %struct.sv** %mark, align 8
  %1162 = load %struct.sv*, %struct.sv** %mark, align 8
  call void @Perl_sv_setiv(%struct.sv* %1162, i64 1)
  br label %if.end.1303

if.end.1303:                                      ; preds = %if.then.1300, %land.lhs.true.1298, %if.else.1296
  br label %if.end.1304

if.end.1304:                                      ; preds = %if.end.1303, %if.then.1292
  br label %if.end.1305

if.end.1305:                                      ; preds = %if.end.1304, %if.end.1288
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.1305, %if.then.982, %cond.end.309, %while.end, %if.else.210, %if.end.209, %if.then
  %1163 = load i32, i32* %retval
  ret i32 %1163
}

; Function Attrs: nounwind uwtable
define void @boot_Data__Dumper(%struct.cv* %cv) #0 {
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
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8** %file, align 8
  %8 = load i8*, i8** %file, align 8
  %call = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0), void (%struct.cv*)* @XS_Data__Dumper_Dumpxs, i8* %8)
  %9 = bitcast %struct.cv* %call to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0))
  %10 = load i32, i32* %ax, align 4
  %add6 = add nsw i32 %10, 0
  %idxprom = sext i32 %add6 to i64
  %11 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %11, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %12 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %13 = load i32, i32* %ax, align 4
  %idx.ext7 = sext i32 %13 to i64
  %add.ptr8 = getelementptr inbounds %struct.sv*, %struct.sv** %12, i64 %idx.ext7
  %14 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %14, 1
  %add.ptr9 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr8, i64 %sub
  store %struct.sv** %add.ptr9, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

declare i8* @Perl_sv_grow(%struct.sv*, i64) #1

declare i32 @Perl_mg_get(%struct.sv*) #1

declare %struct.gv* @Perl_gv_fetchmeth(%struct.hv*, i8*, i64, i32) #1

declare void @Perl_warn(i8*, ...) #1

declare void @Perl_av_push(%struct.av*, %struct.sv*) #1

declare %struct.sv** @Perl_hv_store(%struct.hv*, i8*, i32, %struct.sv*, i32) #1

declare %struct.sv* @Perl_newRV(%struct.sv*) #1

declare i32 @strcmp(i8*, i8*) #1

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

declare i8* @strchr(i8*, i32) #1

declare %struct.sv* @Perl_newSViv(i64) #1

declare i8* @Perl_safesysmalloc(i64) #1

declare i8* @strcpy(i8*, i8*) #1

declare i8* @Perl_instr(i8*, i8*) #1

declare void @Perl_sv_setiv(%struct.sv*, i64) #1

declare void @Perl_safesysfree(i8*) #1

declare i32 @Perl_hv_iterinit(%struct.hv*) #1

declare %struct.he* @Perl_hv_iternext(%struct.hv*) #1

declare %struct.sv* @Perl_hv_iterkeysv(%struct.he*) #1

declare void @Perl_sortsv(%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*) #1

declare i32 @Perl_sv_cmp(%struct.sv*, %struct.sv*) #1

declare i32 @Perl_call_sv(%struct.sv*, i32) #1

declare %struct.sv* @Perl_sv_mortalcopy(%struct.sv*) #1

declare %struct.sv* @Perl_hv_iterval(%struct.hv*, %struct.he*) #1

; Function Attrs: nounwind uwtable
define internal i32 @needs_quote(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  br label %TOP

TOP:                                              ; preds = %if.then.61, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 58
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %TOP
  %2 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %3 = load i8, i8* %incdec.ptr, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load i8*, i8** %s.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr3, i8** %s.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp ne i32 %conv4, 58
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.2
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.2
  br label %if.end.8

if.else:                                          ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %TOP
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv10 = sext i8 %7 to i32
  %cmp11 = icmp sge i32 %conv10, 65
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end.9
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv13 = sext i8 %9 to i32
  %cmp14 = icmp sle i32 %conv13, 90
  br i1 %cmp14, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.9
  %10 = load i8*, i8** %s.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv16 = sext i8 %11 to i32
  %cmp17 = icmp sge i32 %conv16, 97
  br i1 %cmp17, label %land.lhs.true.19, label %lor.lhs.false.23

land.lhs.true.19:                                 ; preds = %lor.lhs.false
  %12 = load i8*, i8** %s.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv20 = sext i8 %13 to i32
  %cmp21 = icmp sle i32 %conv20, 122
  br i1 %cmp21, label %if.then.27, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %land.lhs.true.19, %lor.lhs.false
  %14 = load i8*, i8** %s.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv24 = sext i8 %15 to i32
  %cmp25 = icmp eq i32 %conv24, 95
  br i1 %cmp25, label %if.then.27, label %if.else.64

if.then.27:                                       ; preds = %lor.lhs.false.23, %land.lhs.true.19, %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %if.end.63, %if.then.27
  %16 = load i8*, i8** %s.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr28, i8** %s.addr, align 8
  %17 = load i8, i8* %incdec.ptr28, align 1
  %tobool29 = icmp ne i8 %17, 0
  br i1 %tobool29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i8*, i8** %s.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv30 = sext i8 %19 to i32
  %cmp31 = icmp sge i32 %conv30, 65
  br i1 %cmp31, label %land.lhs.true.33, label %lor.lhs.false.37

land.lhs.true.33:                                 ; preds = %while.body
  %20 = load i8*, i8** %s.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv34 = sext i8 %21 to i32
  %cmp35 = icmp sle i32 %conv34, 90
  br i1 %cmp35, label %if.end.63, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %land.lhs.true.33, %while.body
  %22 = load i8*, i8** %s.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv38 = sext i8 %23 to i32
  %cmp39 = icmp sge i32 %conv38, 97
  br i1 %cmp39, label %land.lhs.true.41, label %lor.lhs.false.45

land.lhs.true.41:                                 ; preds = %lor.lhs.false.37
  %24 = load i8*, i8** %s.addr, align 8
  %25 = load i8, i8* %24, align 1
  %conv42 = sext i8 %25 to i32
  %cmp43 = icmp sle i32 %conv42, 122
  br i1 %cmp43, label %if.end.63, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %land.lhs.true.41, %lor.lhs.false.37
  %26 = load i8*, i8** %s.addr, align 8
  %27 = load i8, i8* %26, align 1
  %conv46 = sext i8 %27 to i32
  %cmp47 = icmp sge i32 %conv46, 48
  br i1 %cmp47, label %land.lhs.true.49, label %lor.lhs.false.53

land.lhs.true.49:                                 ; preds = %lor.lhs.false.45
  %28 = load i8*, i8** %s.addr, align 8
  %29 = load i8, i8* %28, align 1
  %conv50 = sext i8 %29 to i32
  %cmp51 = icmp sle i32 %conv50, 57
  br i1 %cmp51, label %if.end.63, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %land.lhs.true.49, %lor.lhs.false.45
  %30 = load i8*, i8** %s.addr, align 8
  %31 = load i8, i8* %30, align 1
  %conv54 = sext i8 %31 to i32
  %cmp55 = icmp eq i32 %conv54, 95
  br i1 %cmp55, label %if.end.63, label %if.then.57

if.then.57:                                       ; preds = %lor.lhs.false.53
  %32 = load i8*, i8** %s.addr, align 8
  %33 = load i8, i8* %32, align 1
  %conv58 = sext i8 %33 to i32
  %cmp59 = icmp eq i32 %conv58, 58
  br i1 %cmp59, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %if.then.57
  br label %TOP

if.else.62:                                       ; preds = %if.then.57
  store i32 1, i32* %retval
  br label %return

if.end.63:                                        ; preds = %lor.lhs.false.53, %land.lhs.true.49, %land.lhs.true.41, %land.lhs.true.33
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.65

if.else.64:                                       ; preds = %lor.lhs.false.23
  store i32 1, i32* %retval
  br label %return

if.end.65:                                        ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.65, %if.else.64, %if.else.62, %if.else, %if.then.7
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @esc_q_utf8(%struct.sv* %sv, i8* %src, i64 %slen) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %src.addr = alloca i8*, align 8
  %slen.addr = alloca i64, align 8
  %s = alloca i8*, align 8
  %send = alloca i8*, align 8
  %r = alloca i8*, align 8
  %rstart = alloca i8*, align 8
  %j = alloca i64, align 8
  %cur = alloca i64, align 8
  %grow = alloca i64, align 8
  %backslashes = alloca i64, align 8
  %single_quotes = alloca i64, align 8
  %qq_escapables = alloca i64, align 8
  %normal = alloca i64, align 8
  %k = alloca i64, align 8
  %k56 = alloca i64, align 8
  %k110 = alloca i8, align 1
  %tmp = alloca i64, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %slen, i64* %slen.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 0
  %1 = load i8*, i8** %sv_any, align 8
  %2 = bitcast i8* %1 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %2, i32 0, i32 1
  %3 = load i64, i64* %xpv_cur, align 8
  store i64 %3, i64* %cur, align 8
  store i64 0, i64* %grow, align 8
  store i64 0, i64* %backslashes, align 8
  store i64 0, i64* %single_quotes, align 8
  store i64 0, i64* %qq_escapables, align 8
  store i64 0, i64* %normal, align 8
  %4 = load i8*, i8** %src.addr, align 8
  store i8* %4, i8** %s, align 8
  %5 = load i8*, i8** %src.addr, align 8
  %6 = load i64, i64* %slen.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6
  store i8* %add.ptr, i8** %send, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i8*, i8** %s, align 8
  %8 = load i8*, i8** %send, align 8
  %cmp = icmp ult i8* %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %s, align 8
  %call = call i64 @Perl_utf8_to_uvchr(i8* %9, i64* null)
  store i64 %call, i64* %k, align 8
  %10 = load i64, i64* %k, align 8
  %cmp1 = icmp ugt i64 %10, 127
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %11 = load i64, i64* %k, align 8
  %cmp2 = icmp ule i64 %11, 255
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end.13

cond.false:                                       ; preds = %if.then
  %12 = load i64, i64* %k, align 8
  %cmp3 = icmp ule i64 %12, 4095
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.false
  br label %cond.end.11

cond.false.5:                                     ; preds = %cond.false
  %13 = load i64, i64* %k, align 8
  %cmp6 = icmp ule i64 %13, 65535
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.false.5
  br label %cond.end

cond.false.8:                                     ; preds = %cond.false.5
  %14 = load i64, i64* %k, align 8
  %cmp9 = icmp ule i64 %14, 4294967295
  %cond = select i1 %cmp9, i32 8, i32 32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.8, %cond.true.7
  %cond10 = phi i32 [ 4, %cond.true.7 ], [ %cond, %cond.false.8 ]
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.end, %cond.true.4
  %cond12 = phi i32 [ 3, %cond.true.4 ], [ %cond10, %cond.end ]
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.end.11, %cond.true
  %cond14 = phi i32 [ 2, %cond.true ], [ %cond12, %cond.end.11 ]
  %add = add nsw i32 4, %cond14
  %conv = sext i32 %add to i64
  %15 = load i64, i64* %grow, align 8
  %add15 = add i64 %15, %conv
  store i64 %add15, i64* %grow, align 8
  br label %if.end.38

if.else:                                          ; preds = %for.body
  %16 = load i64, i64* %k, align 8
  %cmp16 = icmp eq i64 %16, 92
  br i1 %cmp16, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.else
  %17 = load i64, i64* %backslashes, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %backslashes, align 8
  br label %if.end.37

if.else.19:                                       ; preds = %if.else
  %18 = load i64, i64* %k, align 8
  %cmp20 = icmp eq i64 %18, 39
  br i1 %cmp20, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.else.19
  %19 = load i64, i64* %single_quotes, align 8
  %inc23 = add i64 %19, 1
  store i64 %inc23, i64* %single_quotes, align 8
  br label %if.end.36

if.else.24:                                       ; preds = %if.else.19
  %20 = load i64, i64* %k, align 8
  %cmp25 = icmp eq i64 %20, 34
  br i1 %cmp25, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.24
  %21 = load i64, i64* %k, align 8
  %cmp27 = icmp eq i64 %21, 36
  br i1 %cmp27, label %if.then.32, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false
  %22 = load i64, i64* %k, align 8
  %cmp30 = icmp eq i64 %22, 64
  br i1 %cmp30, label %if.then.32, label %if.else.34

if.then.32:                                       ; preds = %lor.lhs.false.29, %lor.lhs.false, %if.else.24
  %23 = load i64, i64* %qq_escapables, align 8
  %inc33 = add i64 %23, 1
  store i64 %inc33, i64* %qq_escapables, align 8
  br label %if.end

if.else.34:                                       ; preds = %lor.lhs.false.29
  %24 = load i64, i64* %normal, align 8
  %inc35 = add i64 %24, 1
  store i64 %inc35, i64* %normal, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.34, %if.then.32
  br label %if.end.36

if.end.36:                                        ; preds = %if.end, %if.then.22
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.18
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %cond.end.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %25 = load i8*, i8** %s, align 8
  %26 = load i8, i8* %25, align 1
  %idxprom = zext i8 %26 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom
  %27 = load i8, i8* %arrayidx, align 1
  %conv39 = zext i8 %27 to i32
  %28 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %conv39 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %28, i64 %idx.ext
  store i8* %add.ptr40, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i64, i64* %grow, align 8
  %tobool = icmp ne i64 %29, 0
  br i1 %tobool, label %if.then.41, label %if.else.93

if.then.41:                                       ; preds = %for.end
  %30 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %31 = load i64, i64* %cur, align 8
  %add42 = add i64 %31, 3
  %32 = load i64, i64* %grow, align 8
  %add43 = add i64 %add42, %32
  %33 = load i64, i64* %backslashes, align 8
  %mul = mul i64 2, %33
  %add44 = add i64 %add43, %mul
  %34 = load i64, i64* %single_quotes, align 8
  %add45 = add i64 %add44, %34
  %35 = load i64, i64* %qq_escapables, align 8
  %mul46 = mul i64 2, %35
  %add47 = add i64 %add45, %mul46
  %36 = load i64, i64* %normal, align 8
  %add48 = add i64 %add47, %36
  %call49 = call i8* @Perl_sv_grow(%struct.sv* %30, i64 %add48)
  %37 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any50 = getelementptr inbounds %struct.sv, %struct.sv* %37, i32 0, i32 0
  %38 = load i8*, i8** %sv_any50, align 8
  %39 = bitcast i8* %38 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %39, i32 0, i32 0
  %40 = load i8*, i8** %xpv_pv, align 8
  %41 = load i64, i64* %cur, align 8
  %add.ptr51 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %add.ptr51, i8** %r, align 8
  store i8* %add.ptr51, i8** %rstart, align 8
  %42 = load i8*, i8** %r, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr, i8** %r, align 8
  store i8 34, i8* %42, align 1
  %43 = load i8*, i8** %src.addr, align 8
  store i8* %43, i8** %s, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.85, %if.then.41
  %44 = load i8*, i8** %s, align 8
  %45 = load i8*, i8** %send, align 8
  %cmp53 = icmp ult i8* %44, %45
  br i1 %cmp53, label %for.body.55, label %for.end.91

for.body.55:                                      ; preds = %for.cond.52
  %46 = load i8*, i8** %s, align 8
  %call57 = call i64 @Perl_utf8_to_uvchr(i8* %46, i64* null)
  store i64 %call57, i64* %k56, align 8
  %47 = load i64, i64* %k56, align 8
  %cmp58 = icmp eq i64 %47, 34
  br i1 %cmp58, label %if.then.69, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %for.body.55
  %48 = load i64, i64* %k56, align 8
  %cmp61 = icmp eq i64 %48, 92
  br i1 %cmp61, label %if.then.69, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false.60
  %49 = load i64, i64* %k56, align 8
  %cmp64 = icmp eq i64 %49, 36
  br i1 %cmp64, label %if.then.69, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %lor.lhs.false.63
  %50 = load i64, i64* %k56, align 8
  %cmp67 = icmp eq i64 %50, 64
  br i1 %cmp67, label %if.then.69, label %if.else.73

if.then.69:                                       ; preds = %lor.lhs.false.66, %lor.lhs.false.63, %lor.lhs.false.60, %for.body.55
  %51 = load i8*, i8** %r, align 8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr70, i8** %r, align 8
  store i8 92, i8* %51, align 1
  %52 = load i64, i64* %k56, align 8
  %conv71 = trunc i64 %52 to i8
  %53 = load i8*, i8** %r, align 8
  %incdec.ptr72 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr72, i8** %r, align 8
  store i8 %conv71, i8* %53, align 1
  br label %if.end.84

if.else.73:                                       ; preds = %lor.lhs.false.66
  %54 = load i64, i64* %k56, align 8
  %cmp74 = icmp ult i64 %54, 128
  br i1 %cmp74, label %if.then.76, label %if.else.79

if.then.76:                                       ; preds = %if.else.73
  %55 = load i64, i64* %k56, align 8
  %conv77 = trunc i64 %55 to i8
  %56 = load i8*, i8** %r, align 8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr78, i8** %r, align 8
  store i8 %conv77, i8* %56, align 1
  br label %if.end.83

if.else.79:                                       ; preds = %if.else.73
  %57 = load i8*, i8** %r, align 8
  %58 = load i64, i64* %k56, align 8
  %call80 = call i32 (i8*, i8*, ...) @sprintf(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), i64 %58)
  %59 = load i8*, i8** %r, align 8
  %call81 = call i64 @strlen(i8* %59)
  %60 = load i8*, i8** %r, align 8
  %add.ptr82 = getelementptr inbounds i8, i8* %60, i64 %call81
  store i8* %add.ptr82, i8** %r, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.79, %if.then.76
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.69
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84
  %61 = load i8*, i8** %s, align 8
  %62 = load i8, i8* %61, align 1
  %idxprom86 = zext i8 %62 to i64
  %arrayidx87 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom86
  %63 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %63 to i32
  %64 = load i8*, i8** %s, align 8
  %idx.ext89 = sext i32 %conv88 to i64
  %add.ptr90 = getelementptr inbounds i8, i8* %64, i64 %idx.ext89
  store i8* %add.ptr90, i8** %s, align 8
  br label %for.cond.52

for.end.91:                                       ; preds = %for.cond.52
  %65 = load i8*, i8** %r, align 8
  %incdec.ptr92 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr92, i8** %r, align 8
  store i8 34, i8* %65, align 1
  br label %if.end.126

if.else.93:                                       ; preds = %for.end
  %66 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %67 = load i64, i64* %cur, align 8
  %add94 = add i64 %67, 3
  %68 = load i64, i64* %backslashes, align 8
  %mul95 = mul i64 2, %68
  %add96 = add i64 %add94, %mul95
  %69 = load i64, i64* %single_quotes, align 8
  %mul97 = mul i64 2, %69
  %add98 = add i64 %add96, %mul97
  %70 = load i64, i64* %qq_escapables, align 8
  %add99 = add i64 %add98, %70
  %71 = load i64, i64* %normal, align 8
  %add100 = add i64 %add99, %71
  %call101 = call i8* @Perl_sv_grow(%struct.sv* %66, i64 %add100)
  %72 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any102 = getelementptr inbounds %struct.sv, %struct.sv* %72, i32 0, i32 0
  %73 = load i8*, i8** %sv_any102, align 8
  %74 = bitcast i8* %73 to %struct.xpv*
  %xpv_pv103 = getelementptr inbounds %struct.xpv, %struct.xpv* %74, i32 0, i32 0
  %75 = load i8*, i8** %xpv_pv103, align 8
  %76 = load i64, i64* %cur, align 8
  %add.ptr104 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %add.ptr104, i8** %r, align 8
  store i8* %add.ptr104, i8** %rstart, align 8
  %77 = load i8*, i8** %r, align 8
  %incdec.ptr105 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr105, i8** %r, align 8
  store i8 39, i8* %77, align 1
  %78 = load i8*, i8** %src.addr, align 8
  store i8* %78, i8** %s, align 8
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.122, %if.else.93
  %79 = load i8*, i8** %s, align 8
  %80 = load i8*, i8** %send, align 8
  %cmp107 = icmp ult i8* %79, %80
  br i1 %cmp107, label %for.body.109, label %for.end.124

for.body.109:                                     ; preds = %for.cond.106
  %81 = load i8*, i8** %s, align 8
  %82 = load i8, i8* %81, align 1
  store i8 %82, i8* %k110, align 1
  %83 = load i8, i8* %k110, align 1
  %conv111 = sext i8 %83 to i32
  %cmp112 = icmp eq i32 %conv111, 39
  br i1 %cmp112, label %if.then.118, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %for.body.109
  %84 = load i8, i8* %k110, align 1
  %conv115 = sext i8 %84 to i32
  %cmp116 = icmp eq i32 %conv115, 92
  br i1 %cmp116, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %lor.lhs.false.114, %for.body.109
  %85 = load i8*, i8** %r, align 8
  %incdec.ptr119 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr119, i8** %r, align 8
  store i8 92, i8* %85, align 1
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.118, %lor.lhs.false.114
  %86 = load i8, i8* %k110, align 1
  %87 = load i8*, i8** %r, align 8
  %incdec.ptr121 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr121, i8** %r, align 8
  store i8 %86, i8* %87, align 1
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.120
  %88 = load i8*, i8** %s, align 8
  %incdec.ptr123 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr123, i8** %s, align 8
  br label %for.cond.106

for.end.124:                                      ; preds = %for.cond.106
  %89 = load i8*, i8** %r, align 8
  %incdec.ptr125 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr125, i8** %r, align 8
  store i8 39, i8* %89, align 1
  br label %if.end.126

if.end.126:                                       ; preds = %for.end.124, %for.end.91
  %90 = load i8*, i8** %r, align 8
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %r, align 8
  %92 = load i8*, i8** %rstart, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %91 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %92 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %j, align 8
  %93 = load i64, i64* %cur, align 8
  %94 = load i64, i64* %j, align 8
  %add127 = add i64 %93, %94
  %95 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any128 = getelementptr inbounds %struct.sv, %struct.sv* %95, i32 0, i32 0
  %96 = load i8*, i8** %sv_any128, align 8
  %97 = bitcast i8* %96 to %struct.xpv*
  %xpv_cur129 = getelementptr inbounds %struct.xpv, %struct.xpv* %97, i32 0, i32 1
  store i64 %add127, i64* %xpv_cur129, align 8
  store i64 %add127, i64* %tmp
  %98 = load i64, i64* %tmp
  %99 = load i64, i64* %j, align 8
  %conv130 = trunc i64 %99 to i32
  ret i32 %conv130
}

; Function Attrs: nounwind uwtable
define internal i32 @num_q(i8* %s, i64 %slen) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %slen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i64 %slen, i64* %slen.addr, align 8
  store i32 0, i32* %ret, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, i64* %slen.addr, align 8
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 39
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 92
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %5 = load i32, i32* %ret, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %6 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %7 = load i64, i64* %slen.addr, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %slen.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* %ret, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @esc_q(i8* %d, i8* %s, i64 %slen) #0 {
entry:
  %d.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %slen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store i8* %d, i8** %d.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %slen, i64* %slen.addr, align 8
  store i32 0, i32* %ret, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i64, i64* %slen.addr, align 8
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 39, label %sw.bb
    i32 92, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body, %while.body
  %3 = load i8*, i8** %d.addr, align 8
  store i8 92, i8* %3, align 1
  %4 = load i8*, i8** %d.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %d.addr, align 8
  %5 = load i32, i32* %ret, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %ret, align 4
  br label %sw.default

sw.default:                                       ; preds = %while.body, %sw.bb
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i8, i8* %6, align 1
  %8 = load i8*, i8** %d.addr, align 8
  store i8 %7, i8* %8, align 1
  %9 = load i8*, i8** %d.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr1, i8** %d.addr, align 8
  %10 = load i8*, i8** %s.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr2, i8** %s.addr, align 8
  %11 = load i64, i64* %slen.addr, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %slen.addr, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %ret, align 4
  ret i32 %12
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i64 @Perl_sv_2uv(%struct.sv*) #1

declare i32 @memcmp(i8*, i8*, i64) #1

declare void @Perl_sv_catpvf(%struct.sv*, i8*, ...) #1

declare i32 @strncmp(i8*, i8*, i64) #1

declare %struct.sv* @Perl_hv_delete(%struct.hv*, i8*, i32, i32) #1

declare i64 @Perl_utf8_to_uvchr(i8*, i64*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
