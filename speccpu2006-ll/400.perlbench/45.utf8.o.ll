; ModuleID = 'utf8.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
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
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.context = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }
%struct.xpv = type { i8*, i64, i64 }
%struct.xpviv = type { i8*, i64, i64, i64 }
%struct.xpvnv = type { i8*, i64, i64, i64, double }
%struct.xrv = type { %struct.sv* }

@PL_curcop = external global %struct.cop*, align 8
@PL_dowarn = external global i8, align 1
@.str = private unnamed_addr constant [25 x i8] c"UTF-16 surrogate 0x%04lx\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Unicode character 0x%04lx is illegal\00", align 1
@PL_utf8skip = external constant [0 x i8], align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Malformed UTF-8 character \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"(empty string)\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"(unexpected continuation byte 0x%02lx, with no preceding start byte)\00", align 1
@.str.5 = private unnamed_addr constant [81 x i8] c"(unexpected non-continuation byte 0x%02lx, immediately after start byte 0x%02lx)\00", align 1
@.str.6 = private unnamed_addr constant [98 x i8] c"(unexpected non-continuation byte 0x%02lx, %d byte%s after start byte 0x%02lx, expected %d bytes)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"(byte 0x%02lx)\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"(%d byte%s, need %d, after start byte 0x%02lx)\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"(overflow at 0x%lx, byte 0x%02x, after start byte 0x%02lx)\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"(UTF-16 surrogate 0x%04lx)\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"(character 0x%04lx)\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"(unknown reason)\00", align 1
@PL_op = external global %struct.op*, align 8
@.str.15 = private unnamed_addr constant [9 x i8] c"%s in %s\00", align 1
@PL_op_desc = external global [0 x i8*], align 8
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@unees = internal global [53 x i8] c"Malformed UTF-8 character (unexpected end of string)\00", align 16
@.str.17 = private unnamed_addr constant [38 x i8] c"panic: utf16_to_utf8: odd bytelen %lu\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"Malformed UTF-16 surrogate\00", align 1
@PL_utf8_alnum = external global %struct.sv*, align 8
@.str.19 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"IsWord\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.21 = private unnamed_addr constant [9 x i8] c"IsAlnumC\00", align 1
@PL_utf8_idstart = external global %struct.sv*, align 8
@.str.22 = private unnamed_addr constant [8 x i8] c"IdStart\00", align 1
@PL_utf8_idcont = external global %struct.sv*, align 8
@.str.23 = private unnamed_addr constant [11 x i8] c"IdContinue\00", align 1
@PL_utf8_alpha = external global %struct.sv*, align 8
@.str.24 = private unnamed_addr constant [8 x i8] c"IsAlpha\00", align 1
@PL_utf8_ascii = external global %struct.sv*, align 8
@.str.25 = private unnamed_addr constant [8 x i8] c"IsAscii\00", align 1
@PL_utf8_space = external global %struct.sv*, align 8
@.str.26 = private unnamed_addr constant [12 x i8] c"IsSpacePerl\00", align 1
@PL_utf8_digit = external global %struct.sv*, align 8
@.str.27 = private unnamed_addr constant [8 x i8] c"IsDigit\00", align 1
@PL_utf8_upper = external global %struct.sv*, align 8
@.str.28 = private unnamed_addr constant [12 x i8] c"IsUppercase\00", align 1
@PL_utf8_lower = external global %struct.sv*, align 8
@.str.29 = private unnamed_addr constant [12 x i8] c"IsLowercase\00", align 1
@PL_utf8_cntrl = external global %struct.sv*, align 8
@.str.30 = private unnamed_addr constant [8 x i8] c"IsCntrl\00", align 1
@PL_utf8_graph = external global %struct.sv*, align 8
@.str.31 = private unnamed_addr constant [8 x i8] c"IsGraph\00", align 1
@PL_utf8_print = external global %struct.sv*, align 8
@.str.32 = private unnamed_addr constant [8 x i8] c"IsPrint\00", align 1
@PL_utf8_punct = external global %struct.sv*, align 8
@.str.33 = private unnamed_addr constant [8 x i8] c"IsPunct\00", align 1
@PL_utf8_xdigit = external global %struct.sv*, align 8
@.str.34 = private unnamed_addr constant [9 x i8] c"IsXDigit\00", align 1
@PL_utf8_mark = external global %struct.sv*, align 8
@.str.35 = private unnamed_addr constant [4 x i8] c"IsM\00", align 1
@PL_utf8_toupper = external global %struct.sv*, align 8
@.str.36 = private unnamed_addr constant [8 x i8] c"ToUpper\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"utf8::ToSpecUpper\00", align 1
@PL_utf8_totitle = external global %struct.sv*, align 8
@.str.38 = private unnamed_addr constant [8 x i8] c"ToTitle\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"utf8::ToSpecTitle\00", align 1
@PL_utf8_tolower = external global %struct.sv*, align 8
@.str.40 = private unnamed_addr constant [8 x i8] c"ToLower\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"utf8::ToSpecLower\00", align 1
@PL_utf8_tofold = external global %struct.sv*, align 8
@.str.42 = private unnamed_addr constant [7 x i8] c"ToFold\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"utf8::ToSpecFold\00", align 1
@PL_stack_sp = external global %struct.sv**, align 8
@PL_curstackinfo = external global %struct.stackinfo*, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_curstack = external global %struct.av*, align 8
@PL_stack_max = external global %struct.sv**, align 8
@PL_hints = external global i32, align 4
@.str.44 = private unnamed_addr constant [9 x i8] c"SWASHNEW\00", align 1
@PL_errgv = external global %struct.gv*, align 8
@PL_Xpv = external global %struct.xpv*, align 8
@PL_markstack_ptr = external global i32*, align 8
@PL_markstack_max = external global i32*, align 8
@PL_compiling = external global %struct.cop, align 8
@PL_in_my = external global i32, align 4
@PL_tokenbuf = external global [256 x i8], align 16
@PL_stderrgv = external global %struct.gv*, align 8
@.str.45 = private unnamed_addr constant [17 x i8] c"panic: POPSTACK\0A\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"Can't find Unicode property definition \22%_\22\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"SWASHNEW didn't return an HV ref\00", align 1
@PL_last_swash_hv = external global %struct.hv*, align 8
@PL_last_swash_klen = external global i32, align 4
@PL_last_swash_key = external global [10 x i8], align 1
@PL_last_swash_tmps = external global i8*, align 8
@PL_last_swash_slen = external global i64, align 8
@PL_tmps_floor = external global i32, align 4
@PL_tmps_ix = external global i32, align 4
@.str.48 = private unnamed_addr constant [9 x i8] c"SWASHGET\00", align 1
@.str.49 = private unnamed_addr constant [47 x i8] c"SWASHGET didn't return result of proper length\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"panic: swash_fetch\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"\5C%c\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"\5Cx{%lx}\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: nounwind uwtable
define i8* @Perl_uvuni_to_utf8_flags(i8* %d, i64 %uv, i64 %flags) #0 {
entry:
  %retval = alloca i8*, align 8
  %d.addr = alloca i8*, align 8
  %uv.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  store i8* %d, i8** %d.addr, align 8
  store i64 %uv, i64* %uv.addr, align 8
  store i64 %flags, i64* %flags.addr, align 8
  %0 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %0, i32 0, i32 14
  %1 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp = icmp ne %struct.sv* %1, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.7

land.lhs.true:                                    ; preds = %entry
  %2 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1 = getelementptr inbounds %struct.cop, %struct.cop* %2, i32 0, i32 14
  %3 = load %struct.sv*, %struct.sv** %cop_warnings1, align 8
  %cmp2 = icmp ne %struct.sv* %3, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp2, label %land.lhs.true.3, label %lor.lhs.false.7

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %4 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings4 = getelementptr inbounds %struct.cop, %struct.cop* %4, i32 0, i32 14
  %5 = load %struct.sv*, %struct.sv** %cop_warnings4, align 8
  %cmp5 = icmp eq %struct.sv* %5, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.3
  %6 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings6 = getelementptr inbounds %struct.cop, %struct.cop* %6, i32 0, i32 14
  %7 = load %struct.sv*, %struct.sv** %cop_warnings6, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 0
  %8 = load i8*, i8** %sv_any, align 8
  %9 = bitcast i8* %8 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %9, i32 0, i32 0
  %10 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 11
  %11 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false, %land.lhs.true, %entry
  %12 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings8 = getelementptr inbounds %struct.cop, %struct.cop* %12, i32 0, i32 14
  %13 = load %struct.sv*, %struct.sv** %cop_warnings8, align 8
  %cmp9 = icmp eq %struct.sv* %13, null
  br i1 %cmp9, label %land.lhs.true.11, label %if.end.47

land.lhs.true.11:                                 ; preds = %lor.lhs.false.7
  %14 = load i8, i8* @PL_dowarn, align 1
  %conv12 = zext i8 %14 to i32
  %and13 = and i32 %conv12, 1
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then, label %if.end.47

if.then:                                          ; preds = %land.lhs.true.11, %lor.lhs.false, %land.lhs.true.3
  %15 = load i64, i64* %uv.addr, align 8
  %cmp15 = icmp uge i64 %15, 55296
  br i1 %cmp15, label %land.lhs.true.17, label %if.else

land.lhs.true.17:                                 ; preds = %if.then
  %16 = load i64, i64* %uv.addr, align 8
  %cmp18 = icmp ule i64 %16, 57343
  br i1 %cmp18, label %land.lhs.true.20, label %if.else

land.lhs.true.20:                                 ; preds = %land.lhs.true.17
  %17 = load i64, i64* %flags.addr, align 8
  %and21 = and i64 %17, 1
  %tobool22 = icmp ne i64 %and21, 0
  br i1 %tobool22, label %if.else, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.20
  %18 = load i64, i64* %uv.addr, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i64 %18)
  br label %if.end.46

if.else:                                          ; preds = %land.lhs.true.20, %land.lhs.true.17, %if.then
  %19 = load i64, i64* %uv.addr, align 8
  %cmp24 = icmp uge i64 %19, 64976
  br i1 %cmp24, label %land.lhs.true.26, label %lor.lhs.false.32

land.lhs.true.26:                                 ; preds = %if.else
  %20 = load i64, i64* %uv.addr, align 8
  %cmp27 = icmp ule i64 %20, 65007
  br i1 %cmp27, label %land.lhs.true.29, label %lor.lhs.false.32

land.lhs.true.29:                                 ; preds = %land.lhs.true.26
  %21 = load i64, i64* %flags.addr, align 8
  %and30 = and i64 %21, 2
  %tobool31 = icmp ne i64 %and30, 0
  br i1 %tobool31, label %lor.lhs.false.32, label %land.lhs.true.39

lor.lhs.false.32:                                 ; preds = %land.lhs.true.29, %land.lhs.true.26, %if.else
  %22 = load i64, i64* %uv.addr, align 8
  %and33 = and i64 %22, 65534
  %cmp34 = icmp eq i64 %and33, 65534
  br i1 %cmp34, label %land.lhs.true.36, label %if.end

land.lhs.true.36:                                 ; preds = %lor.lhs.false.32
  %23 = load i64, i64* %flags.addr, align 8
  %and37 = and i64 %23, 4
  %tobool38 = icmp ne i64 %and37, 0
  br i1 %tobool38, label %if.end, label %land.lhs.true.39

land.lhs.true.39:                                 ; preds = %land.lhs.true.36, %land.lhs.true.29
  %24 = load i64, i64* %uv.addr, align 8
  %cmp40 = icmp ule i64 %24, 1114111
  br i1 %cmp40, label %if.then.45, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %land.lhs.true.39
  %25 = load i64, i64* %flags.addr, align 8
  %and43 = and i64 %25, 8
  %tobool44 = icmp ne i64 %and43, 0
  br i1 %tobool44, label %if.end, label %if.then.45

if.then.45:                                       ; preds = %lor.lhs.false.42, %land.lhs.true.39
  %26 = load i64, i64* %uv.addr, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i64 %26)
  br label %if.end

if.end:                                           ; preds = %if.then.45, %lor.lhs.false.42, %land.lhs.true.36, %lor.lhs.false.32
  br label %if.end.46

if.end.46:                                        ; preds = %if.end, %if.then.23
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %land.lhs.true.11, %lor.lhs.false.7
  %27 = load i64, i64* %uv.addr, align 8
  %cmp48 = icmp ult i64 %27, 128
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.47
  %28 = load i64, i64* %uv.addr, align 8
  %conv51 = trunc i64 %28 to i8
  %29 = load i8*, i8** %d.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %d.addr, align 8
  store i8 %conv51, i8* %29, align 1
  %30 = load i8*, i8** %d.addr, align 8
  store i8* %30, i8** %retval
  br label %return

if.end.52:                                        ; preds = %if.end.47
  %31 = load i64, i64* %uv.addr, align 8
  %cmp53 = icmp ult i64 %31, 2048
  br i1 %cmp53, label %if.then.55, label %if.end.62

if.then.55:                                       ; preds = %if.end.52
  %32 = load i64, i64* %uv.addr, align 8
  %shr = lshr i64 %32, 6
  %or = or i64 %shr, 192
  %conv56 = trunc i64 %or to i8
  %33 = load i8*, i8** %d.addr, align 8
  %incdec.ptr57 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr57, i8** %d.addr, align 8
  store i8 %conv56, i8* %33, align 1
  %34 = load i64, i64* %uv.addr, align 8
  %and58 = and i64 %34, 63
  %or59 = or i64 %and58, 128
  %conv60 = trunc i64 %or59 to i8
  %35 = load i8*, i8** %d.addr, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr61, i8** %d.addr, align 8
  store i8 %conv60, i8* %35, align 1
  %36 = load i8*, i8** %d.addr, align 8
  store i8* %36, i8** %retval
  br label %return

if.end.62:                                        ; preds = %if.end.52
  %37 = load i64, i64* %uv.addr, align 8
  %cmp63 = icmp ult i64 %37, 65536
  br i1 %cmp63, label %if.then.65, label %if.end.79

if.then.65:                                       ; preds = %if.end.62
  %38 = load i64, i64* %uv.addr, align 8
  %shr66 = lshr i64 %38, 12
  %or67 = or i64 %shr66, 224
  %conv68 = trunc i64 %or67 to i8
  %39 = load i8*, i8** %d.addr, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr69, i8** %d.addr, align 8
  store i8 %conv68, i8* %39, align 1
  %40 = load i64, i64* %uv.addr, align 8
  %shr70 = lshr i64 %40, 6
  %and71 = and i64 %shr70, 63
  %or72 = or i64 %and71, 128
  %conv73 = trunc i64 %or72 to i8
  %41 = load i8*, i8** %d.addr, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr74, i8** %d.addr, align 8
  store i8 %conv73, i8* %41, align 1
  %42 = load i64, i64* %uv.addr, align 8
  %and75 = and i64 %42, 63
  %or76 = or i64 %and75, 128
  %conv77 = trunc i64 %or76 to i8
  %43 = load i8*, i8** %d.addr, align 8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr78, i8** %d.addr, align 8
  store i8 %conv77, i8* %43, align 1
  %44 = load i8*, i8** %d.addr, align 8
  store i8* %44, i8** %retval
  br label %return

if.end.79:                                        ; preds = %if.end.62
  %45 = load i64, i64* %uv.addr, align 8
  %cmp80 = icmp ult i64 %45, 2097152
  br i1 %cmp80, label %if.then.82, label %if.end.101

if.then.82:                                       ; preds = %if.end.79
  %46 = load i64, i64* %uv.addr, align 8
  %shr83 = lshr i64 %46, 18
  %or84 = or i64 %shr83, 240
  %conv85 = trunc i64 %or84 to i8
  %47 = load i8*, i8** %d.addr, align 8
  %incdec.ptr86 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr86, i8** %d.addr, align 8
  store i8 %conv85, i8* %47, align 1
  %48 = load i64, i64* %uv.addr, align 8
  %shr87 = lshr i64 %48, 12
  %and88 = and i64 %shr87, 63
  %or89 = or i64 %and88, 128
  %conv90 = trunc i64 %or89 to i8
  %49 = load i8*, i8** %d.addr, align 8
  %incdec.ptr91 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr91, i8** %d.addr, align 8
  store i8 %conv90, i8* %49, align 1
  %50 = load i64, i64* %uv.addr, align 8
  %shr92 = lshr i64 %50, 6
  %and93 = and i64 %shr92, 63
  %or94 = or i64 %and93, 128
  %conv95 = trunc i64 %or94 to i8
  %51 = load i8*, i8** %d.addr, align 8
  %incdec.ptr96 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr96, i8** %d.addr, align 8
  store i8 %conv95, i8* %51, align 1
  %52 = load i64, i64* %uv.addr, align 8
  %and97 = and i64 %52, 63
  %or98 = or i64 %and97, 128
  %conv99 = trunc i64 %or98 to i8
  %53 = load i8*, i8** %d.addr, align 8
  %incdec.ptr100 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr100, i8** %d.addr, align 8
  store i8 %conv99, i8* %53, align 1
  %54 = load i8*, i8** %d.addr, align 8
  store i8* %54, i8** %retval
  br label %return

if.end.101:                                       ; preds = %if.end.79
  %55 = load i64, i64* %uv.addr, align 8
  %cmp102 = icmp ult i64 %55, 67108864
  br i1 %cmp102, label %if.then.104, label %if.end.128

if.then.104:                                      ; preds = %if.end.101
  %56 = load i64, i64* %uv.addr, align 8
  %shr105 = lshr i64 %56, 24
  %or106 = or i64 %shr105, 248
  %conv107 = trunc i64 %or106 to i8
  %57 = load i8*, i8** %d.addr, align 8
  %incdec.ptr108 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr108, i8** %d.addr, align 8
  store i8 %conv107, i8* %57, align 1
  %58 = load i64, i64* %uv.addr, align 8
  %shr109 = lshr i64 %58, 18
  %and110 = and i64 %shr109, 63
  %or111 = or i64 %and110, 128
  %conv112 = trunc i64 %or111 to i8
  %59 = load i8*, i8** %d.addr, align 8
  %incdec.ptr113 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr113, i8** %d.addr, align 8
  store i8 %conv112, i8* %59, align 1
  %60 = load i64, i64* %uv.addr, align 8
  %shr114 = lshr i64 %60, 12
  %and115 = and i64 %shr114, 63
  %or116 = or i64 %and115, 128
  %conv117 = trunc i64 %or116 to i8
  %61 = load i8*, i8** %d.addr, align 8
  %incdec.ptr118 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr118, i8** %d.addr, align 8
  store i8 %conv117, i8* %61, align 1
  %62 = load i64, i64* %uv.addr, align 8
  %shr119 = lshr i64 %62, 6
  %and120 = and i64 %shr119, 63
  %or121 = or i64 %and120, 128
  %conv122 = trunc i64 %or121 to i8
  %63 = load i8*, i8** %d.addr, align 8
  %incdec.ptr123 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr123, i8** %d.addr, align 8
  store i8 %conv122, i8* %63, align 1
  %64 = load i64, i64* %uv.addr, align 8
  %and124 = and i64 %64, 63
  %or125 = or i64 %and124, 128
  %conv126 = trunc i64 %or125 to i8
  %65 = load i8*, i8** %d.addr, align 8
  %incdec.ptr127 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr127, i8** %d.addr, align 8
  store i8 %conv126, i8* %65, align 1
  %66 = load i8*, i8** %d.addr, align 8
  store i8* %66, i8** %retval
  br label %return

if.end.128:                                       ; preds = %if.end.101
  %67 = load i64, i64* %uv.addr, align 8
  %cmp129 = icmp ult i64 %67, 2147483648
  br i1 %cmp129, label %if.then.131, label %if.end.160

if.then.131:                                      ; preds = %if.end.128
  %68 = load i64, i64* %uv.addr, align 8
  %shr132 = lshr i64 %68, 30
  %or133 = or i64 %shr132, 252
  %conv134 = trunc i64 %or133 to i8
  %69 = load i8*, i8** %d.addr, align 8
  %incdec.ptr135 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr135, i8** %d.addr, align 8
  store i8 %conv134, i8* %69, align 1
  %70 = load i64, i64* %uv.addr, align 8
  %shr136 = lshr i64 %70, 24
  %and137 = and i64 %shr136, 63
  %or138 = or i64 %and137, 128
  %conv139 = trunc i64 %or138 to i8
  %71 = load i8*, i8** %d.addr, align 8
  %incdec.ptr140 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr140, i8** %d.addr, align 8
  store i8 %conv139, i8* %71, align 1
  %72 = load i64, i64* %uv.addr, align 8
  %shr141 = lshr i64 %72, 18
  %and142 = and i64 %shr141, 63
  %or143 = or i64 %and142, 128
  %conv144 = trunc i64 %or143 to i8
  %73 = load i8*, i8** %d.addr, align 8
  %incdec.ptr145 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr145, i8** %d.addr, align 8
  store i8 %conv144, i8* %73, align 1
  %74 = load i64, i64* %uv.addr, align 8
  %shr146 = lshr i64 %74, 12
  %and147 = and i64 %shr146, 63
  %or148 = or i64 %and147, 128
  %conv149 = trunc i64 %or148 to i8
  %75 = load i8*, i8** %d.addr, align 8
  %incdec.ptr150 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr150, i8** %d.addr, align 8
  store i8 %conv149, i8* %75, align 1
  %76 = load i64, i64* %uv.addr, align 8
  %shr151 = lshr i64 %76, 6
  %and152 = and i64 %shr151, 63
  %or153 = or i64 %and152, 128
  %conv154 = trunc i64 %or153 to i8
  %77 = load i8*, i8** %d.addr, align 8
  %incdec.ptr155 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr155, i8** %d.addr, align 8
  store i8 %conv154, i8* %77, align 1
  %78 = load i64, i64* %uv.addr, align 8
  %and156 = and i64 %78, 63
  %or157 = or i64 %and156, 128
  %conv158 = trunc i64 %or157 to i8
  %79 = load i8*, i8** %d.addr, align 8
  %incdec.ptr159 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr159, i8** %d.addr, align 8
  store i8 %conv158, i8* %79, align 1
  %80 = load i8*, i8** %d.addr, align 8
  store i8* %80, i8** %retval
  br label %return

if.end.160:                                       ; preds = %if.end.128
  %81 = load i64, i64* %uv.addr, align 8
  %cmp161 = icmp ult i64 %81, 68719476736
  br i1 %cmp161, label %if.then.163, label %if.end.194

if.then.163:                                      ; preds = %if.end.160
  %82 = load i8*, i8** %d.addr, align 8
  %incdec.ptr164 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr164, i8** %d.addr, align 8
  store i8 -2, i8* %82, align 1
  %83 = load i64, i64* %uv.addr, align 8
  %shr165 = lshr i64 %83, 30
  %and166 = and i64 %shr165, 63
  %or167 = or i64 %and166, 128
  %conv168 = trunc i64 %or167 to i8
  %84 = load i8*, i8** %d.addr, align 8
  %incdec.ptr169 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr169, i8** %d.addr, align 8
  store i8 %conv168, i8* %84, align 1
  %85 = load i64, i64* %uv.addr, align 8
  %shr170 = lshr i64 %85, 24
  %and171 = and i64 %shr170, 63
  %or172 = or i64 %and171, 128
  %conv173 = trunc i64 %or172 to i8
  %86 = load i8*, i8** %d.addr, align 8
  %incdec.ptr174 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr174, i8** %d.addr, align 8
  store i8 %conv173, i8* %86, align 1
  %87 = load i64, i64* %uv.addr, align 8
  %shr175 = lshr i64 %87, 18
  %and176 = and i64 %shr175, 63
  %or177 = or i64 %and176, 128
  %conv178 = trunc i64 %or177 to i8
  %88 = load i8*, i8** %d.addr, align 8
  %incdec.ptr179 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr179, i8** %d.addr, align 8
  store i8 %conv178, i8* %88, align 1
  %89 = load i64, i64* %uv.addr, align 8
  %shr180 = lshr i64 %89, 12
  %and181 = and i64 %shr180, 63
  %or182 = or i64 %and181, 128
  %conv183 = trunc i64 %or182 to i8
  %90 = load i8*, i8** %d.addr, align 8
  %incdec.ptr184 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr184, i8** %d.addr, align 8
  store i8 %conv183, i8* %90, align 1
  %91 = load i64, i64* %uv.addr, align 8
  %shr185 = lshr i64 %91, 6
  %and186 = and i64 %shr185, 63
  %or187 = or i64 %and186, 128
  %conv188 = trunc i64 %or187 to i8
  %92 = load i8*, i8** %d.addr, align 8
  %incdec.ptr189 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr189, i8** %d.addr, align 8
  store i8 %conv188, i8* %92, align 1
  %93 = load i64, i64* %uv.addr, align 8
  %and190 = and i64 %93, 63
  %or191 = or i64 %and190, 128
  %conv192 = trunc i64 %or191 to i8
  %94 = load i8*, i8** %d.addr, align 8
  %incdec.ptr193 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr193, i8** %d.addr, align 8
  store i8 %conv192, i8* %94, align 1
  %95 = load i8*, i8** %d.addr, align 8
  store i8* %95, i8** %retval
  br label %return

if.end.194:                                       ; preds = %if.end.160
  %96 = load i8*, i8** %d.addr, align 8
  %incdec.ptr195 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr195, i8** %d.addr, align 8
  store i8 -1, i8* %96, align 1
  %97 = load i8*, i8** %d.addr, align 8
  %incdec.ptr196 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr196, i8** %d.addr, align 8
  store i8 -128, i8* %97, align 1
  %98 = load i64, i64* %uv.addr, align 8
  %shr197 = lshr i64 %98, 60
  %and198 = and i64 %shr197, 15
  %or199 = or i64 %and198, 128
  %conv200 = trunc i64 %or199 to i8
  %99 = load i8*, i8** %d.addr, align 8
  %incdec.ptr201 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr201, i8** %d.addr, align 8
  store i8 %conv200, i8* %99, align 1
  %100 = load i64, i64* %uv.addr, align 8
  %shr202 = lshr i64 %100, 54
  %and203 = and i64 %shr202, 63
  %or204 = or i64 %and203, 128
  %conv205 = trunc i64 %or204 to i8
  %101 = load i8*, i8** %d.addr, align 8
  %incdec.ptr206 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr206, i8** %d.addr, align 8
  store i8 %conv205, i8* %101, align 1
  %102 = load i64, i64* %uv.addr, align 8
  %shr207 = lshr i64 %102, 48
  %and208 = and i64 %shr207, 63
  %or209 = or i64 %and208, 128
  %conv210 = trunc i64 %or209 to i8
  %103 = load i8*, i8** %d.addr, align 8
  %incdec.ptr211 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %incdec.ptr211, i8** %d.addr, align 8
  store i8 %conv210, i8* %103, align 1
  %104 = load i64, i64* %uv.addr, align 8
  %shr212 = lshr i64 %104, 42
  %and213 = and i64 %shr212, 63
  %or214 = or i64 %and213, 128
  %conv215 = trunc i64 %or214 to i8
  %105 = load i8*, i8** %d.addr, align 8
  %incdec.ptr216 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr216, i8** %d.addr, align 8
  store i8 %conv215, i8* %105, align 1
  %106 = load i64, i64* %uv.addr, align 8
  %shr217 = lshr i64 %106, 36
  %and218 = and i64 %shr217, 63
  %or219 = or i64 %and218, 128
  %conv220 = trunc i64 %or219 to i8
  %107 = load i8*, i8** %d.addr, align 8
  %incdec.ptr221 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %incdec.ptr221, i8** %d.addr, align 8
  store i8 %conv220, i8* %107, align 1
  %108 = load i64, i64* %uv.addr, align 8
  %shr222 = lshr i64 %108, 30
  %and223 = and i64 %shr222, 63
  %or224 = or i64 %and223, 128
  %conv225 = trunc i64 %or224 to i8
  %109 = load i8*, i8** %d.addr, align 8
  %incdec.ptr226 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr226, i8** %d.addr, align 8
  store i8 %conv225, i8* %109, align 1
  %110 = load i64, i64* %uv.addr, align 8
  %shr227 = lshr i64 %110, 24
  %and228 = and i64 %shr227, 63
  %or229 = or i64 %and228, 128
  %conv230 = trunc i64 %or229 to i8
  %111 = load i8*, i8** %d.addr, align 8
  %incdec.ptr231 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr231, i8** %d.addr, align 8
  store i8 %conv230, i8* %111, align 1
  %112 = load i64, i64* %uv.addr, align 8
  %shr232 = lshr i64 %112, 18
  %and233 = and i64 %shr232, 63
  %or234 = or i64 %and233, 128
  %conv235 = trunc i64 %or234 to i8
  %113 = load i8*, i8** %d.addr, align 8
  %incdec.ptr236 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr236, i8** %d.addr, align 8
  store i8 %conv235, i8* %113, align 1
  %114 = load i64, i64* %uv.addr, align 8
  %shr237 = lshr i64 %114, 12
  %and238 = and i64 %shr237, 63
  %or239 = or i64 %and238, 128
  %conv240 = trunc i64 %or239 to i8
  %115 = load i8*, i8** %d.addr, align 8
  %incdec.ptr241 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %incdec.ptr241, i8** %d.addr, align 8
  store i8 %conv240, i8* %115, align 1
  %116 = load i64, i64* %uv.addr, align 8
  %shr242 = lshr i64 %116, 6
  %and243 = and i64 %shr242, 63
  %or244 = or i64 %and243, 128
  %conv245 = trunc i64 %or244 to i8
  %117 = load i8*, i8** %d.addr, align 8
  %incdec.ptr246 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr246, i8** %d.addr, align 8
  store i8 %conv245, i8* %117, align 1
  %118 = load i64, i64* %uv.addr, align 8
  %and247 = and i64 %118, 63
  %or248 = or i64 %and247, 128
  %conv249 = trunc i64 %or248 to i8
  %119 = load i8*, i8** %d.addr, align 8
  %incdec.ptr250 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %incdec.ptr250, i8** %d.addr, align 8
  store i8 %conv249, i8* %119, align 1
  %120 = load i8*, i8** %d.addr, align 8
  store i8* %120, i8** %retval
  br label %return

return:                                           ; preds = %if.end.194, %if.then.163, %if.then.131, %if.then.104, %if.then.82, %if.then.65, %if.then.55, %if.then.50
  %121 = load i8*, i8** %retval
  ret i8* %121
}

declare void @Perl_warner(i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i8* @Perl_uvuni_to_utf8(i8* %d, i64 %uv) #0 {
entry:
  %d.addr = alloca i8*, align 8
  %uv.addr = alloca i64, align 8
  store i8* %d, i8** %d.addr, align 8
  store i64 %uv, i64* %uv.addr, align 8
  %0 = load i8*, i8** %d.addr, align 8
  %1 = load i64, i64* %uv.addr, align 8
  %call = call i8* @Perl_uvuni_to_utf8_flags(i8* %0, i64 %1, i64 0)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i64 @Perl_is_utf8_char(i8* %s) #0 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %u = alloca i8, align 1
  %slen = alloca i64, align 8
  %len = alloca i64, align 8
  %uv = alloca i64, align 8
  %ouv = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %u, align 1
  %2 = load i8, i8* %u, align 1
  %conv = zext i8 %2 to i64
  %cmp = icmp ult i64 %conv, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8, i8* %u, align 1
  %conv2 = zext i8 %3 to i32
  %cmp3 = icmp sge i32 %conv2, 192
  br i1 %cmp3, label %land.lhs.true, label %if.then.8

land.lhs.true:                                    ; preds = %if.end
  %4 = load i8, i8* %u, align 1
  %conv5 = zext i8 %4 to i32
  %cmp6 = icmp sle i32 %conv5, 253
  br i1 %cmp6, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true, %if.end
  store i64 0, i64* %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i8, i8* %5, align 1
  %idxprom = zext i8 %6 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv10 = zext i8 %7 to i64
  store i64 %conv10, i64* %len, align 8
  %8 = load i64, i64* %len, align 8
  %cmp11 = icmp ult i64 %8, 2
  br i1 %cmp11, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %9 = load i8*, i8** %s.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %10 to i32
  %cmp15 = icmp sge i32 %conv14, 128
  br i1 %cmp15, label %land.lhs.true.17, label %if.then.22

land.lhs.true.17:                                 ; preds = %lor.lhs.false
  %11 = load i8*, i8** %s.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %12 to i32
  %cmp20 = icmp sle i32 %conv19, 191
  br i1 %cmp20, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %land.lhs.true.17, %lor.lhs.false, %if.end.9
  store i64 0, i64* %retval
  br label %return

if.end.23:                                        ; preds = %land.lhs.true.17
  %13 = load i64, i64* %len, align 8
  %sub = sub i64 %13, 1
  store i64 %sub, i64* %slen, align 8
  %14 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %15 = load i64, i64* %len, align 8
  %cmp24 = icmp uge i64 %15, 7
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.23
  br label %cond.end

cond.false:                                       ; preds = %if.end.23
  %16 = load i64, i64* %len, align 8
  %sub26 = sub i64 %16, 2
  %sh_prom = trunc i64 %sub26 to i32
  %shr = ashr i32 31, %sh_prom
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %shr, %cond.false ]
  %17 = load i8, i8* %u, align 1
  %conv27 = zext i8 %17 to i32
  %and = and i32 %conv27, %cond
  %conv28 = trunc i32 %and to i8
  store i8 %conv28, i8* %u, align 1
  %18 = load i8, i8* %u, align 1
  %conv29 = zext i8 %18 to i64
  store i64 %conv29, i64* %uv, align 8
  %19 = load i64, i64* %uv, align 8
  store i64 %19, i64* %ouv, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.45, %cond.end
  %20 = load i64, i64* %slen, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %slen, align 8
  %tobool = icmp ne i64 %20, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i8*, i8** %s.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv30 = zext i8 %22 to i32
  %cmp31 = icmp sge i32 %conv30, 128
  br i1 %cmp31, label %land.lhs.true.33, label %if.then.37

land.lhs.true.33:                                 ; preds = %while.body
  %23 = load i8*, i8** %s.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv34 = zext i8 %24 to i32
  %cmp35 = icmp sle i32 %conv34, 191
  br i1 %cmp35, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %land.lhs.true.33, %while.body
  store i64 0, i64* %retval
  br label %return

if.end.38:                                        ; preds = %land.lhs.true.33
  %25 = load i64, i64* %uv, align 8
  %shl = shl i64 %25, 6
  %26 = load i8*, i8** %s.addr, align 8
  %27 = load i8, i8* %26, align 1
  %conv39 = zext i8 %27 to i32
  %and40 = and i32 %conv39, 63
  %conv41 = sext i32 %and40 to i64
  %or = or i64 %shl, %conv41
  store i64 %or, i64* %uv, align 8
  %28 = load i64, i64* %uv, align 8
  %29 = load i64, i64* %ouv, align 8
  %cmp42 = icmp ult i64 %28, %29
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.38
  store i64 0, i64* %retval
  br label %return

if.end.45:                                        ; preds = %if.end.38
  %30 = load i64, i64* %uv, align 8
  store i64 %30, i64* %ouv, align 8
  %31 = load i8*, i8** %s.addr, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr46, i8** %s.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %32 = load i64, i64* %uv, align 8
  %cmp47 = icmp ult i64 %32, 128
  br i1 %cmp47, label %cond.true.49, label %cond.false.50

cond.true.49:                                     ; preds = %while.end
  br label %cond.end.84

cond.false.50:                                    ; preds = %while.end
  %33 = load i64, i64* %uv, align 8
  %cmp51 = icmp ult i64 %33, 2048
  br i1 %cmp51, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.false.50
  br label %cond.end.82

cond.false.54:                                    ; preds = %cond.false.50
  %34 = load i64, i64* %uv, align 8
  %cmp55 = icmp ult i64 %34, 65536
  br i1 %cmp55, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.false.54
  br label %cond.end.80

cond.false.58:                                    ; preds = %cond.false.54
  %35 = load i64, i64* %uv, align 8
  %cmp59 = icmp ult i64 %35, 2097152
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.false.58
  br label %cond.end.78

cond.false.62:                                    ; preds = %cond.false.58
  %36 = load i64, i64* %uv, align 8
  %cmp63 = icmp ult i64 %36, 67108864
  br i1 %cmp63, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %cond.false.62
  br label %cond.end.76

cond.false.66:                                    ; preds = %cond.false.62
  %37 = load i64, i64* %uv, align 8
  %cmp67 = icmp ult i64 %37, 2147483648
  br i1 %cmp67, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %cond.false.66
  br label %cond.end.74

cond.false.70:                                    ; preds = %cond.false.66
  %38 = load i64, i64* %uv, align 8
  %cmp71 = icmp ult i64 %38, 68719476736
  %cond73 = select i1 %cmp71, i32 7, i32 13
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.70, %cond.true.69
  %cond75 = phi i32 [ 6, %cond.true.69 ], [ %cond73, %cond.false.70 ]
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.end.74, %cond.true.65
  %cond77 = phi i32 [ 5, %cond.true.65 ], [ %cond75, %cond.end.74 ]
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.end.76, %cond.true.61
  %cond79 = phi i32 [ 4, %cond.true.61 ], [ %cond77, %cond.end.76 ]
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.end.78, %cond.true.57
  %cond81 = phi i32 [ 3, %cond.true.57 ], [ %cond79, %cond.end.78 ]
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.end.80, %cond.true.53
  %cond83 = phi i32 [ 2, %cond.true.53 ], [ %cond81, %cond.end.80 ]
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.end.82, %cond.true.49
  %cond85 = phi i32 [ 1, %cond.true.49 ], [ %cond83, %cond.end.82 ]
  %conv86 = sext i32 %cond85 to i64
  %39 = load i64, i64* %len, align 8
  %cmp87 = icmp ult i64 %conv86, %39
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %cond.end.84
  store i64 0, i64* %retval
  br label %return

if.end.90:                                        ; preds = %cond.end.84
  %40 = load i64, i64* %len, align 8
  store i64 %40, i64* %retval
  br label %return

return:                                           ; preds = %if.end.90, %if.then.89, %if.then.44, %if.then.37, %if.then.22, %if.then.8, %if.then
  %41 = load i64, i64* %retval
  ret i64 %41
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_utf8_string(i8* %s, i64 %len) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %x = alloca i8*, align 8
  %send = alloca i8*, align 8
  %c = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  store i8* %0, i8** %x, align 8
  %1 = load i64, i64* %len.addr, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %3)
  store i64 %call, i64* %len.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5
  store i8* %add.ptr, i8** %send, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %if.end
  %6 = load i8*, i8** %x, align 8
  %7 = load i8*, i8** %send, align 8
  %cmp = icmp ult i8* %6, %7
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %x, align 8
  %9 = load i8, i8* %8, align 1
  %conv = zext i8 %9 to i64
  %cmp2 = icmp ult i64 %conv, 128
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %while.body
  store i64 1, i64* %c, align 8
  br label %if.end.19

if.else:                                          ; preds = %while.body
  %10 = load i8*, i8** %x, align 8
  %11 = load i8, i8* %10, align 1
  %conv5 = zext i8 %11 to i32
  %cmp6 = icmp sge i32 %conv5, 192
  br i1 %cmp6, label %land.lhs.true.8, label %if.then.12

land.lhs.true.8:                                  ; preds = %if.else
  %12 = load i8*, i8** %x, align 8
  %13 = load i8, i8* %12, align 1
  %conv9 = zext i8 %13 to i32
  %cmp10 = icmp sle i32 %conv9, 253
  br i1 %cmp10, label %if.else.13, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true.8, %if.else
  store i8 0, i8* %retval
  br label %return

if.else.13:                                       ; preds = %land.lhs.true.8
  %14 = load i8*, i8** %x, align 8
  %call14 = call i64 @Perl_is_utf8_char(i8* %14)
  store i64 %call14, i64* %c, align 8
  %15 = load i64, i64* %c, align 8
  %tobool15 = icmp ne i64 %15, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.else.13
  store i8 0, i8* %retval
  br label %return

if.end.17:                                        ; preds = %if.else.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.4
  %16 = load i64, i64* %c, align 8
  %17 = load i8*, i8** %x, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %17, i64 %16
  store i8* %add.ptr20, i8** %x, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i8*, i8** %x, align 8
  %19 = load i8*, i8** %send, align 8
  %cmp21 = icmp ne i8* %18, %19
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %while.end
  store i8 0, i8* %retval
  br label %return

if.end.24:                                        ; preds = %while.end
  store i8 1, i8* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.23, %if.then.16, %if.then.12
  %20 = load i8, i8* %retval
  ret i8 %20
}

declare i64 @strlen(i8*) #1

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_utf8_string_loc(i8* %s, i64 %len, i8** %p) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %p.addr = alloca i8**, align 8
  %x = alloca i8*, align 8
  %send = alloca i8*, align 8
  %c = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8** %p, i8*** %p.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  store i8* %0, i8** %x, align 8
  %1 = load i64, i64* %len.addr, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %3)
  store i64 %call, i64* %len.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5
  store i8* %add.ptr, i8** %send, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.25, %if.end
  %6 = load i8*, i8** %x, align 8
  %7 = load i8*, i8** %send, align 8
  %cmp = icmp ult i8* %6, %7
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %x, align 8
  %9 = load i8, i8* %8, align 1
  %conv = zext i8 %9 to i64
  %cmp2 = icmp ult i64 %conv, 128
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %while.body
  store i64 1, i64* %c, align 8
  br label %if.end.25

if.else:                                          ; preds = %while.body
  %10 = load i8*, i8** %x, align 8
  %11 = load i8, i8* %10, align 1
  %conv5 = zext i8 %11 to i32
  %cmp6 = icmp sge i32 %conv5, 192
  br i1 %cmp6, label %land.lhs.true.8, label %if.then.12

land.lhs.true.8:                                  ; preds = %if.else
  %12 = load i8*, i8** %x, align 8
  %13 = load i8, i8* %12, align 1
  %conv9 = zext i8 %13 to i32
  %cmp10 = icmp sle i32 %conv9, 253
  br i1 %cmp10, label %if.else.16, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true.8, %if.else
  %14 = load i8**, i8*** %p.addr, align 8
  %tobool13 = icmp ne i8** %14, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.12
  %15 = load i8*, i8** %x, align 8
  %16 = load i8**, i8*** %p.addr, align 8
  store i8* %15, i8** %16, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.12
  store i8 0, i8* %retval
  br label %return

if.else.16:                                       ; preds = %land.lhs.true.8
  %17 = load i8*, i8** %x, align 8
  %call17 = call i64 @Perl_is_utf8_char(i8* %17)
  store i64 %call17, i64* %c, align 8
  %18 = load i64, i64* %c, align 8
  %tobool18 = icmp ne i64 %18, 0
  br i1 %tobool18, label %if.end.23, label %if.then.19

if.then.19:                                       ; preds = %if.else.16
  %19 = load i8**, i8*** %p.addr, align 8
  %tobool20 = icmp ne i8** %19, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.19
  %20 = load i8*, i8** %x, align 8
  %21 = load i8**, i8*** %p.addr, align 8
  store i8* %20, i8** %21, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.then.19
  store i8 0, i8* %retval
  br label %return

if.end.23:                                        ; preds = %if.else.16
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.4
  %22 = load i64, i64* %c, align 8
  %23 = load i8*, i8** %x, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %23, i64 %22
  store i8* %add.ptr26, i8** %x, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load i8*, i8** %x, align 8
  %25 = load i8*, i8** %send, align 8
  %cmp27 = icmp ne i8* %24, %25
  br i1 %cmp27, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %while.end
  %26 = load i8**, i8*** %p.addr, align 8
  %tobool30 = icmp ne i8** %26, null
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.29
  %27 = load i8*, i8** %x, align 8
  %28 = load i8**, i8*** %p.addr, align 8
  store i8* %27, i8** %28, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.29
  store i8 0, i8* %retval
  br label %return

if.end.33:                                        ; preds = %while.end
  store i8 1, i8* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.end.32, %if.end.22, %if.end.15
  %29 = load i8, i8* %retval
  ret i8 %29
}

; Function Attrs: nounwind uwtable
define i64 @Perl_utf8n_to_uvuni(i8* %s, i64 %curlen, i64* %retlen, i32 %flags) #0 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %curlen.addr = alloca i64, align 8
  %retlen.addr = alloca i64*, align 8
  %flags.addr = alloca i32, align 4
  %s0 = alloca i8*, align 8
  %uv = alloca i64, align 8
  %ouv = alloca i64, align 8
  %len = alloca i64, align 8
  %dowarn = alloca i8, align 1
  %startbyte = alloca i64, align 8
  %expectlen = alloca i64, align 8
  %warning = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %s299 = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %curlen, i64* %curlen.addr, align 8
  store i64* %retlen, i64** %retlen.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %s.addr, align 8
  store i8* %0, i8** %s0, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i64
  store i64 %conv, i64* %uv, align 8
  store i64 0, i64* %ouv, align 8
  store i64 1, i64* %len, align 8
  %3 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %3, i32 0, i32 14
  %4 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp = icmp eq %struct.sv* %4, null
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings2 = getelementptr inbounds %struct.cop, %struct.cop* %5, i32 0, i32 14
  %6 = load %struct.sv*, %struct.sv** %cop_warnings2, align 8
  %cmp3 = icmp eq %struct.sv* %6, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %7 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings5 = getelementptr inbounds %struct.cop, %struct.cop* %7, i32 0, i32 14
  %8 = load %struct.sv*, %struct.sv** %cop_warnings5, align 8
  %cmp6 = icmp ne %struct.sv* %8, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %9 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings8 = getelementptr inbounds %struct.cop, %struct.cop* %9, i32 0, i32 14
  %10 = load %struct.sv*, %struct.sv** %cop_warnings8, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  %11 = load i8*, i8** %sv_any, align 8
  %12 = bitcast i8* %11 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %12, i32 0, i32 0
  %13 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 11
  %14 = load i8, i8* %arrayidx, align 1
  %conv9 = sext i8 %14 to i32
  %and = and i32 %conv9, 1
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %15 = phi i1 [ false, %lor.rhs ], [ %tobool, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false, %entry
  %16 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %15, %land.end ]
  %lor.ext = zext i1 %16 to i32
  %conv10 = trunc i32 %lor.ext to i8
  store i8 %conv10, i8* %dowarn, align 1
  %17 = load i8*, i8** %s.addr, align 8
  %18 = load i8, i8* %17, align 1
  %conv11 = zext i8 %18 to i64
  store i64 %conv11, i64* %startbyte, align 8
  store i64 0, i64* %expectlen, align 8
  store i32 0, i32* %warning, align 4
  %19 = load i64, i64* %curlen.addr, align 8
  %cmp12 = icmp eq i64 %19, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.end
  %20 = load i32, i32* %flags.addr, align 4
  %and14 = and i32 %20, 1
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %warning, align 4
  br label %malformed

if.end:                                           ; preds = %land.lhs.true, %lor.end
  %21 = load i64, i64* %uv, align 8
  %cmp16 = icmp ult i64 %21, 128
  br i1 %cmp16, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.end
  %22 = load i64*, i64** %retlen.addr, align 8
  %tobool19 = icmp ne i64* %22, null
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.18
  %23 = load i64*, i64** %retlen.addr, align 8
  store i64 1, i64* %23, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.then.18
  %24 = load i8*, i8** %s.addr, align 8
  %25 = load i8, i8* %24, align 1
  %conv22 = zext i8 %25 to i64
  store i64 %conv22, i64* %retval
  br label %return

if.end.23:                                        ; preds = %if.end
  %26 = load i64, i64* %uv, align 8
  %conv24 = trunc i64 %26 to i8
  %conv25 = zext i8 %conv24 to i32
  %cmp26 = icmp sge i32 %conv25, 128
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.37

land.lhs.true.28:                                 ; preds = %if.end.23
  %27 = load i64, i64* %uv, align 8
  %conv29 = trunc i64 %27 to i8
  %conv30 = zext i8 %conv29 to i32
  %cmp31 = icmp sle i32 %conv30, 191
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.37

land.lhs.true.33:                                 ; preds = %land.lhs.true.28
  %28 = load i32, i32* %flags.addr, align 4
  %and34 = and i32 %28, 2
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %land.lhs.true.33
  store i32 2, i32* %warning, align 4
  br label %malformed

if.end.37:                                        ; preds = %land.lhs.true.33, %land.lhs.true.28, %if.end.23
  %29 = load i64, i64* %uv, align 8
  %conv38 = trunc i64 %29 to i8
  %conv39 = zext i8 %conv38 to i32
  %cmp40 = icmp sge i32 %conv39, 192
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.64

land.lhs.true.42:                                 ; preds = %if.end.37
  %30 = load i64, i64* %uv, align 8
  %conv43 = trunc i64 %30 to i8
  %conv44 = zext i8 %conv43 to i32
  %cmp45 = icmp sle i32 %conv44, 253
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.64

land.lhs.true.47:                                 ; preds = %land.lhs.true.42
  %31 = load i64, i64* %curlen.addr, align 8
  %cmp48 = icmp ugt i64 %31, 1
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.64

land.lhs.true.50:                                 ; preds = %land.lhs.true.47
  %32 = load i8*, i8** %s.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %33 to i32
  %cmp53 = icmp sge i32 %conv52, 128
  br i1 %cmp53, label %land.lhs.true.55, label %land.lhs.true.60

land.lhs.true.55:                                 ; preds = %land.lhs.true.50
  %34 = load i8*, i8** %s.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %35 to i32
  %cmp58 = icmp sle i32 %conv57, 191
  br i1 %cmp58, label %if.end.64, label %land.lhs.true.60

land.lhs.true.60:                                 ; preds = %land.lhs.true.55, %land.lhs.true.50
  %36 = load i32, i32* %flags.addr, align 4
  %and61 = and i32 %36, 4
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %land.lhs.true.60
  store i32 3, i32* %warning, align 4
  br label %malformed

if.end.64:                                        ; preds = %land.lhs.true.60, %land.lhs.true.55, %land.lhs.true.47, %land.lhs.true.42, %if.end.37
  %37 = load i64, i64* %uv, align 8
  %cmp65 = icmp eq i64 %37, 254
  br i1 %cmp65, label %land.lhs.true.70, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %if.end.64
  %38 = load i64, i64* %uv, align 8
  %cmp68 = icmp eq i64 %38, 255
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.74

land.lhs.true.70:                                 ; preds = %lor.lhs.false.67, %if.end.64
  %39 = load i32, i32* %flags.addr, align 4
  %and71 = and i32 %39, 8
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.end.74, label %if.then.73

if.then.73:                                       ; preds = %land.lhs.true.70
  store i32 4, i32* %warning, align 4
  br label %malformed

if.end.74:                                        ; preds = %land.lhs.true.70, %lor.lhs.false.67
  %40 = load i64, i64* %uv, align 8
  %and75 = and i64 %40, 32
  %tobool76 = icmp ne i64 %and75, 0
  br i1 %tobool76, label %if.else, label %if.then.77

if.then.77:                                       ; preds = %if.end.74
  store i64 2, i64* %len, align 8
  %41 = load i64, i64* %uv, align 8
  %and78 = and i64 %41, 31
  store i64 %and78, i64* %uv, align 8
  br label %if.end.108

if.else:                                          ; preds = %if.end.74
  %42 = load i64, i64* %uv, align 8
  %and79 = and i64 %42, 16
  %tobool80 = icmp ne i64 %and79, 0
  br i1 %tobool80, label %if.else.83, label %if.then.81

if.then.81:                                       ; preds = %if.else
  store i64 3, i64* %len, align 8
  %43 = load i64, i64* %uv, align 8
  %and82 = and i64 %43, 15
  store i64 %and82, i64* %uv, align 8
  br label %if.end.107

if.else.83:                                       ; preds = %if.else
  %44 = load i64, i64* %uv, align 8
  %and84 = and i64 %44, 8
  %tobool85 = icmp ne i64 %and84, 0
  br i1 %tobool85, label %if.else.88, label %if.then.86

if.then.86:                                       ; preds = %if.else.83
  store i64 4, i64* %len, align 8
  %45 = load i64, i64* %uv, align 8
  %and87 = and i64 %45, 7
  store i64 %and87, i64* %uv, align 8
  br label %if.end.106

if.else.88:                                       ; preds = %if.else.83
  %46 = load i64, i64* %uv, align 8
  %and89 = and i64 %46, 4
  %tobool90 = icmp ne i64 %and89, 0
  br i1 %tobool90, label %if.else.93, label %if.then.91

if.then.91:                                       ; preds = %if.else.88
  store i64 5, i64* %len, align 8
  %47 = load i64, i64* %uv, align 8
  %and92 = and i64 %47, 3
  store i64 %and92, i64* %uv, align 8
  br label %if.end.105

if.else.93:                                       ; preds = %if.else.88
  %48 = load i64, i64* %uv, align 8
  %and94 = and i64 %48, 2
  %tobool95 = icmp ne i64 %and94, 0
  br i1 %tobool95, label %if.else.98, label %if.then.96

if.then.96:                                       ; preds = %if.else.93
  store i64 6, i64* %len, align 8
  %49 = load i64, i64* %uv, align 8
  %and97 = and i64 %49, 1
  store i64 %and97, i64* %uv, align 8
  br label %if.end.104

if.else.98:                                       ; preds = %if.else.93
  %50 = load i64, i64* %uv, align 8
  %and99 = and i64 %50, 1
  %tobool100 = icmp ne i64 %and99, 0
  br i1 %tobool100, label %if.else.102, label %if.then.101

if.then.101:                                      ; preds = %if.else.98
  store i64 7, i64* %len, align 8
  store i64 0, i64* %uv, align 8
  br label %if.end.103

if.else.102:                                      ; preds = %if.else.98
  store i64 13, i64* %len, align 8
  store i64 0, i64* %uv, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.102, %if.then.101
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.96
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.91
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then.86
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.81
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.77
  %51 = load i64*, i64** %retlen.addr, align 8
  %tobool109 = icmp ne i64* %51, null
  br i1 %tobool109, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.end.108
  %52 = load i64, i64* %len, align 8
  %53 = load i64*, i64** %retlen.addr, align 8
  store i64 %52, i64* %53, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %if.end.108
  %54 = load i64, i64* %len, align 8
  store i64 %54, i64* %expectlen, align 8
  %55 = load i64, i64* %curlen.addr, align 8
  %56 = load i64, i64* %expectlen, align 8
  %cmp112 = icmp ult i64 %55, %56
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.118

land.lhs.true.114:                                ; preds = %if.end.111
  %57 = load i32, i32* %flags.addr, align 4
  %and115 = and i32 %57, 16
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %if.end.118, label %if.then.117

if.then.117:                                      ; preds = %land.lhs.true.114
  store i32 5, i32* %warning, align 4
  br label %malformed

if.end.118:                                       ; preds = %land.lhs.true.114, %if.end.111
  %58 = load i64, i64* %len, align 8
  %dec = add i64 %58, -1
  store i64 %dec, i64* %len, align 8
  %59 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %60 = load i64, i64* %uv, align 8
  store i64 %60, i64* %ouv, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.153, %if.end.118
  %61 = load i64, i64* %len, align 8
  %dec119 = add i64 %61, -1
  store i64 %dec119, i64* %len, align 8
  %tobool120 = icmp ne i64 %61, 0
  br i1 %tobool120, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %62 = load i8*, i8** %s.addr, align 8
  %63 = load i8, i8* %62, align 1
  %conv121 = zext i8 %63 to i32
  %cmp122 = icmp sge i32 %conv121, 128
  br i1 %cmp122, label %land.lhs.true.124, label %land.lhs.true.128

land.lhs.true.124:                                ; preds = %while.body
  %64 = load i8*, i8** %s.addr, align 8
  %65 = load i8, i8* %64, align 1
  %conv125 = zext i8 %65 to i32
  %cmp126 = icmp sle i32 %conv125, 191
  br i1 %cmp126, label %if.else.133, label %land.lhs.true.128

land.lhs.true.128:                                ; preds = %land.lhs.true.124, %while.body
  %66 = load i32, i32* %flags.addr, align 4
  %and129 = and i32 %66, 4
  %tobool130 = icmp ne i32 %and129, 0
  br i1 %tobool130, label %if.else.133, label %if.then.131

if.then.131:                                      ; preds = %land.lhs.true.128
  %67 = load i8*, i8** %s.addr, align 8
  %incdec.ptr132 = getelementptr inbounds i8, i8* %67, i32 -1
  store i8* %incdec.ptr132, i8** %s.addr, align 8
  store i32 3, i32* %warning, align 4
  br label %malformed

if.else.133:                                      ; preds = %land.lhs.true.128, %land.lhs.true.124
  %68 = load i64, i64* %uv, align 8
  %shl = shl i64 %68, 6
  %69 = load i8*, i8** %s.addr, align 8
  %70 = load i8, i8* %69, align 1
  %conv134 = zext i8 %70 to i32
  %and135 = and i32 %conv134, 63
  %conv136 = sext i32 %and135 to i64
  %or = or i64 %shl, %conv136
  store i64 %or, i64* %uv, align 8
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.133
  %71 = load i64, i64* %uv, align 8
  %72 = load i64, i64* %ouv, align 8
  %cmp138 = icmp ugt i64 %71, %72
  br i1 %cmp138, label %if.end.153, label %if.then.140

if.then.140:                                      ; preds = %if.end.137
  %73 = load i64, i64* %uv, align 8
  %74 = load i64, i64* %ouv, align 8
  %cmp141 = icmp eq i64 %73, %74
  br i1 %cmp141, label %if.then.143, label %if.else.151

if.then.143:                                      ; preds = %if.then.140
  %75 = load i64, i64* %expectlen, align 8
  %cmp144 = icmp ne i64 %75, 13
  br i1 %cmp144, label %land.lhs.true.146, label %if.end.150

land.lhs.true.146:                                ; preds = %if.then.143
  %76 = load i32, i32* %flags.addr, align 4
  %and147 = and i32 %76, 128
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %if.end.150, label %if.then.149

if.then.149:                                      ; preds = %land.lhs.true.146
  store i32 8, i32* %warning, align 4
  br label %malformed

if.end.150:                                       ; preds = %land.lhs.true.146, %if.then.143
  br label %if.end.152

if.else.151:                                      ; preds = %if.then.140
  store i32 6, i32* %warning, align 4
  br label %malformed

if.end.152:                                       ; preds = %if.end.150
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.end.137
  %77 = load i8*, i8** %s.addr, align 8
  %incdec.ptr154 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr154, i8** %s.addr, align 8
  %78 = load i64, i64* %uv, align 8
  store i64 %78, i64* %ouv, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %79 = load i64, i64* %uv, align 8
  %cmp155 = icmp uge i64 %79, 55296
  br i1 %cmp155, label %land.lhs.true.157, label %if.else.164

land.lhs.true.157:                                ; preds = %while.end
  %80 = load i64, i64* %uv, align 8
  %cmp158 = icmp ule i64 %80, 57343
  br i1 %cmp158, label %land.lhs.true.160, label %if.else.164

land.lhs.true.160:                                ; preds = %land.lhs.true.157
  %81 = load i32, i32* %flags.addr, align 4
  %and161 = and i32 %81, 32
  %tobool162 = icmp ne i32 %and161, 0
  br i1 %tobool162, label %if.else.164, label %if.then.163

if.then.163:                                      ; preds = %land.lhs.true.160
  store i32 7, i32* %warning, align 4
  br label %malformed

if.else.164:                                      ; preds = %land.lhs.true.160, %land.lhs.true.157, %while.end
  %82 = load i64, i64* %expectlen, align 8
  %83 = load i64, i64* %uv, align 8
  %cmp165 = icmp ult i64 %83, 128
  br i1 %cmp165, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.164
  br label %cond.end.198

cond.false:                                       ; preds = %if.else.164
  %84 = load i64, i64* %uv, align 8
  %cmp167 = icmp ult i64 %84, 2048
  br i1 %cmp167, label %cond.true.169, label %cond.false.170

cond.true.169:                                    ; preds = %cond.false
  br label %cond.end.196

cond.false.170:                                   ; preds = %cond.false
  %85 = load i64, i64* %uv, align 8
  %cmp171 = icmp ult i64 %85, 65536
  br i1 %cmp171, label %cond.true.173, label %cond.false.174

cond.true.173:                                    ; preds = %cond.false.170
  br label %cond.end.194

cond.false.174:                                   ; preds = %cond.false.170
  %86 = load i64, i64* %uv, align 8
  %cmp175 = icmp ult i64 %86, 2097152
  br i1 %cmp175, label %cond.true.177, label %cond.false.178

cond.true.177:                                    ; preds = %cond.false.174
  br label %cond.end.192

cond.false.178:                                   ; preds = %cond.false.174
  %87 = load i64, i64* %uv, align 8
  %cmp179 = icmp ult i64 %87, 67108864
  br i1 %cmp179, label %cond.true.181, label %cond.false.182

cond.true.181:                                    ; preds = %cond.false.178
  br label %cond.end.190

cond.false.182:                                   ; preds = %cond.false.178
  %88 = load i64, i64* %uv, align 8
  %cmp183 = icmp ult i64 %88, 2147483648
  br i1 %cmp183, label %cond.true.185, label %cond.false.186

cond.true.185:                                    ; preds = %cond.false.182
  br label %cond.end

cond.false.186:                                   ; preds = %cond.false.182
  %89 = load i64, i64* %uv, align 8
  %cmp187 = icmp ult i64 %89, 68719476736
  %cond = select i1 %cmp187, i32 7, i32 13
  br label %cond.end

cond.end:                                         ; preds = %cond.false.186, %cond.true.185
  %cond189 = phi i32 [ 6, %cond.true.185 ], [ %cond, %cond.false.186 ]
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.end, %cond.true.181
  %cond191 = phi i32 [ 5, %cond.true.181 ], [ %cond189, %cond.end ]
  br label %cond.end.192

cond.end.192:                                     ; preds = %cond.end.190, %cond.true.177
  %cond193 = phi i32 [ 4, %cond.true.177 ], [ %cond191, %cond.end.190 ]
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.end.192, %cond.true.173
  %cond195 = phi i32 [ 3, %cond.true.173 ], [ %cond193, %cond.end.192 ]
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.end.194, %cond.true.169
  %cond197 = phi i32 [ 2, %cond.true.169 ], [ %cond195, %cond.end.194 ]
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.end.196, %cond.true
  %cond199 = phi i32 [ 1, %cond.true ], [ %cond197, %cond.end.196 ]
  %conv200 = sext i32 %cond199 to i64
  %cmp201 = icmp ugt i64 %82, %conv200
  br i1 %cmp201, label %land.lhs.true.203, label %if.else.207

land.lhs.true.203:                                ; preds = %cond.end.198
  %90 = load i32, i32* %flags.addr, align 4
  %and204 = and i32 %90, 128
  %tobool205 = icmp ne i32 %and204, 0
  br i1 %tobool205, label %if.else.207, label %if.then.206

if.then.206:                                      ; preds = %land.lhs.true.203
  store i32 8, i32* %warning, align 4
  br label %malformed

if.else.207:                                      ; preds = %land.lhs.true.203, %cond.end.198
  %91 = load i64, i64* %uv, align 8
  %cmp208 = icmp eq i64 %91, 65535
  br i1 %cmp208, label %land.lhs.true.210, label %if.end.214

land.lhs.true.210:                                ; preds = %if.else.207
  %92 = load i32, i32* %flags.addr, align 4
  %and211 = and i32 %92, 64
  %tobool212 = icmp ne i32 %and211, 0
  br i1 %tobool212, label %if.end.214, label %if.then.213

if.then.213:                                      ; preds = %land.lhs.true.210
  store i32 9, i32* %warning, align 4
  br label %malformed

if.end.214:                                       ; preds = %land.lhs.true.210, %if.else.207
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215
  %93 = load i64, i64* %uv, align 8
  store i64 %93, i64* %retval
  br label %return

malformed:                                        ; preds = %if.then.213, %if.then.206, %if.then.163, %if.else.151, %if.then.149, %if.then.131, %if.then.117, %if.then.73, %if.then.63, %if.then.36, %if.then
  %94 = load i32, i32* %flags.addr, align 4
  %and217 = and i32 %94, 512
  %tobool218 = icmp ne i32 %and217, 0
  br i1 %tobool218, label %if.then.219, label %if.end.223

if.then.219:                                      ; preds = %malformed
  %95 = load i64*, i64** %retlen.addr, align 8
  %tobool220 = icmp ne i64* %95, null
  br i1 %tobool220, label %if.then.221, label %if.end.222

if.then.221:                                      ; preds = %if.then.219
  %96 = load i64*, i64** %retlen.addr, align 8
  store i64 -1, i64* %96, align 8
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.221, %if.then.219
  store i64 0, i64* %retval
  br label %return

if.end.223:                                       ; preds = %malformed
  %97 = load i8, i8* %dowarn, align 1
  %tobool224 = icmp ne i8 %97, 0
  br i1 %tobool224, label %if.then.225, label %if.end.317

if.then.225:                                      ; preds = %if.end.223
  %call = call %struct.sv* @Perl_newSVpv(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i64 0)
  %call226 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call)
  store %struct.sv* %call226, %struct.sv** %sv, align 8
  %98 = load i32, i32* %warning, align 4
  switch i32 %98, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.227
    i32 2, label %sw.bb.228
    i32 3, label %sw.bb.229
    i32 4, label %sw.bb.245
    i32 5, label %sw.bb.246
    i32 6, label %sw.bb.250
    i32 7, label %sw.bb.252
    i32 8, label %sw.bb.253
    i32 9, label %sw.bb.296
  ]

sw.bb:                                            ; preds = %if.then.225
  br label %sw.epilog

sw.bb.227:                                        ; preds = %if.then.225
  %99 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_catpv(%struct.sv* %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.epilog

sw.bb.228:                                        ; preds = %if.then.225
  %100 = load %struct.sv*, %struct.sv** %sv, align 8
  %101 = load i64, i64* %uv, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %100, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i32 0, i32 0), i64 %101)
  br label %sw.epilog

sw.bb.229:                                        ; preds = %if.then.225
  %102 = load i8*, i8** %s.addr, align 8
  %103 = load i8*, i8** %s0, align 8
  %cmp230 = icmp eq i8* %102, %103
  br i1 %cmp230, label %if.then.232, label %if.else.235

if.then.232:                                      ; preds = %sw.bb.229
  %104 = load %struct.sv*, %struct.sv** %sv, align 8
  %105 = load i8*, i8** %s.addr, align 8
  %arrayidx233 = getelementptr inbounds i8, i8* %105, i64 1
  %106 = load i8, i8* %arrayidx233, align 1
  %conv234 = zext i8 %106 to i64
  %107 = load i64, i64* %startbyte, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %104, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i32 0, i32 0), i64 %conv234, i64 %107)
  br label %if.end.244

if.else.235:                                      ; preds = %sw.bb.229
  %108 = load %struct.sv*, %struct.sv** %sv, align 8
  %109 = load i8*, i8** %s.addr, align 8
  %arrayidx236 = getelementptr inbounds i8, i8* %109, i64 1
  %110 = load i8, i8* %arrayidx236, align 1
  %conv237 = zext i8 %110 to i64
  %111 = load i8*, i8** %s.addr, align 8
  %112 = load i8*, i8** %s0, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %111 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %112 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %113 = load i8*, i8** %s.addr, align 8
  %114 = load i8*, i8** %s0, align 8
  %sub.ptr.lhs.cast238 = ptrtoint i8* %113 to i64
  %sub.ptr.rhs.cast239 = ptrtoint i8* %114 to i64
  %sub.ptr.sub240 = sub i64 %sub.ptr.lhs.cast238, %sub.ptr.rhs.cast239
  %cmp241 = icmp sgt i64 %sub.ptr.sub240, 1
  %cond243 = select i1 %cmp241, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0)
  %115 = load i64, i64* %startbyte, align 8
  %116 = load i64, i64* %expectlen, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %108, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.6, i32 0, i32 0), i64 %conv237, i64 %sub.ptr.sub, i8* %cond243, i64 %115, i64 %116)
  br label %if.end.244

if.end.244:                                       ; preds = %if.else.235, %if.then.232
  br label %sw.epilog

sw.bb.245:                                        ; preds = %if.then.225
  %117 = load %struct.sv*, %struct.sv** %sv, align 8
  %118 = load i64, i64* %uv, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i64 %118)
  br label %sw.epilog

sw.bb.246:                                        ; preds = %if.then.225
  %119 = load %struct.sv*, %struct.sv** %sv, align 8
  %120 = load i64, i64* %curlen.addr, align 8
  %121 = load i64, i64* %curlen.addr, align 8
  %cmp247 = icmp eq i64 %121, 1
  %cond249 = select i1 %cmp247, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)
  %122 = load i64, i64* %expectlen, align 8
  %123 = load i64, i64* %startbyte, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %119, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i32 0, i32 0), i64 %120, i8* %cond249, i64 %122, i64 %123)
  %124 = load i64, i64* %curlen.addr, align 8
  store i64 %124, i64* %expectlen, align 8
  br label %sw.epilog

sw.bb.250:                                        ; preds = %if.then.225
  %125 = load %struct.sv*, %struct.sv** %sv, align 8
  %126 = load i64, i64* %ouv, align 8
  %127 = load i8*, i8** %s.addr, align 8
  %128 = load i8, i8* %127, align 1
  %conv251 = zext i8 %128 to i32
  %129 = load i64, i64* %startbyte, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %125, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i32 0, i32 0), i64 %126, i32 %conv251, i64 %129)
  br label %sw.epilog

sw.bb.252:                                        ; preds = %if.then.225
  %130 = load %struct.sv*, %struct.sv** %sv, align 8
  %131 = load i64, i64* %uv, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %130, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0), i64 %131)
  br label %sw.epilog

sw.bb.253:                                        ; preds = %if.then.225
  %132 = load %struct.sv*, %struct.sv** %sv, align 8
  %133 = load i64, i64* %expectlen, align 8
  %134 = load i64, i64* %expectlen, align 8
  %cmp254 = icmp eq i64 %134, 1
  %cond256 = select i1 %cmp254, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)
  %135 = load i64, i64* %uv, align 8
  %cmp257 = icmp ult i64 %135, 128
  br i1 %cmp257, label %cond.true.259, label %cond.false.260

cond.true.259:                                    ; preds = %sw.bb.253
  br label %cond.end.294

cond.false.260:                                   ; preds = %sw.bb.253
  %136 = load i64, i64* %uv, align 8
  %cmp261 = icmp ult i64 %136, 2048
  br i1 %cmp261, label %cond.true.263, label %cond.false.264

cond.true.263:                                    ; preds = %cond.false.260
  br label %cond.end.292

cond.false.264:                                   ; preds = %cond.false.260
  %137 = load i64, i64* %uv, align 8
  %cmp265 = icmp ult i64 %137, 65536
  br i1 %cmp265, label %cond.true.267, label %cond.false.268

cond.true.267:                                    ; preds = %cond.false.264
  br label %cond.end.290

cond.false.268:                                   ; preds = %cond.false.264
  %138 = load i64, i64* %uv, align 8
  %cmp269 = icmp ult i64 %138, 2097152
  br i1 %cmp269, label %cond.true.271, label %cond.false.272

cond.true.271:                                    ; preds = %cond.false.268
  br label %cond.end.288

cond.false.272:                                   ; preds = %cond.false.268
  %139 = load i64, i64* %uv, align 8
  %cmp273 = icmp ult i64 %139, 67108864
  br i1 %cmp273, label %cond.true.275, label %cond.false.276

cond.true.275:                                    ; preds = %cond.false.272
  br label %cond.end.286

cond.false.276:                                   ; preds = %cond.false.272
  %140 = load i64, i64* %uv, align 8
  %cmp277 = icmp ult i64 %140, 2147483648
  br i1 %cmp277, label %cond.true.279, label %cond.false.280

cond.true.279:                                    ; preds = %cond.false.276
  br label %cond.end.284

cond.false.280:                                   ; preds = %cond.false.276
  %141 = load i64, i64* %uv, align 8
  %cmp281 = icmp ult i64 %141, 68719476736
  %cond283 = select i1 %cmp281, i32 7, i32 13
  br label %cond.end.284

cond.end.284:                                     ; preds = %cond.false.280, %cond.true.279
  %cond285 = phi i32 [ 6, %cond.true.279 ], [ %cond283, %cond.false.280 ]
  br label %cond.end.286

cond.end.286:                                     ; preds = %cond.end.284, %cond.true.275
  %cond287 = phi i32 [ 5, %cond.true.275 ], [ %cond285, %cond.end.284 ]
  br label %cond.end.288

cond.end.288:                                     ; preds = %cond.end.286, %cond.true.271
  %cond289 = phi i32 [ 4, %cond.true.271 ], [ %cond287, %cond.end.286 ]
  br label %cond.end.290

cond.end.290:                                     ; preds = %cond.end.288, %cond.true.267
  %cond291 = phi i32 [ 3, %cond.true.267 ], [ %cond289, %cond.end.288 ]
  br label %cond.end.292

cond.end.292:                                     ; preds = %cond.end.290, %cond.true.263
  %cond293 = phi i32 [ 2, %cond.true.263 ], [ %cond291, %cond.end.290 ]
  br label %cond.end.294

cond.end.294:                                     ; preds = %cond.end.292, %cond.true.259
  %cond295 = phi i32 [ 1, %cond.true.259 ], [ %cond293, %cond.end.292 ]
  %142 = load i64, i64* %startbyte, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %132, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i32 0, i32 0), i64 %133, i8* %cond256, i32 %cond295, i64 %142)
  br label %sw.epilog

sw.bb.296:                                        ; preds = %if.then.225
  %143 = load %struct.sv*, %struct.sv** %sv, align 8
  %144 = load i64, i64* %uv, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %143, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i64 %144)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.225
  %145 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_catpv(%struct.sv* %145, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.296, %cond.end.294, %sw.bb.252, %sw.bb.250, %sw.bb.246, %sw.bb.245, %if.end.244, %sw.bb.228, %sw.bb.227, %sw.bb
  %146 = load i32, i32* %warning, align 4
  %tobool297 = icmp ne i32 %146, 0
  br i1 %tobool297, label %if.then.298, label %if.end.316

if.then.298:                                      ; preds = %sw.epilog
  %147 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any300 = getelementptr inbounds %struct.sv, %struct.sv* %147, i32 0, i32 0
  %148 = load i8*, i8** %sv_any300, align 8
  %149 = bitcast i8* %148 to %struct.xpv*
  %xpv_pv301 = getelementptr inbounds %struct.xpv, %struct.xpv* %149, i32 0, i32 0
  %150 = load i8*, i8** %xpv_pv301, align 8
  store i8* %150, i8** %s299, align 8
  %151 = load %struct.op*, %struct.op** @PL_op, align 8
  %tobool302 = icmp ne %struct.op* %151, null
  br i1 %tobool302, label %if.then.303, label %if.else.314

if.then.303:                                      ; preds = %if.then.298
  %152 = load i8*, i8** %s299, align 8
  %153 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %153, i32 0, i32 4
  %154 = load i16, i16* %op_type, align 2
  %conv304 = zext i16 %154 to i32
  %cmp305 = icmp eq i32 %conv304, 351
  br i1 %cmp305, label %cond.true.307, label %cond.false.309

cond.true.307:                                    ; preds = %if.then.303
  %155 = load %struct.op*, %struct.op** @PL_op, align 8
  %call308 = call i8* @Perl_custom_op_desc(%struct.op* %155)
  br label %cond.end.312

cond.false.309:                                   ; preds = %if.then.303
  %156 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type310 = getelementptr inbounds %struct.op, %struct.op* %156, i32 0, i32 4
  %157 = load i16, i16* %op_type310, align 2
  %idxprom = zext i16 %157 to i64
  %arrayidx311 = getelementptr inbounds [0 x i8*], [0 x i8*]* @PL_op_desc, i32 0, i64 %idxprom
  %158 = load i8*, i8** %arrayidx311, align 8
  br label %cond.end.312

cond.end.312:                                     ; preds = %cond.false.309, %cond.true.307
  %cond313 = phi i8* [ %call308, %cond.true.307 ], [ %158, %cond.false.309 ]
  call void (i32, i8*, ...) @Perl_warner(i32 44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* %152, i8* %cond313)
  br label %if.end.315

if.else.314:                                      ; preds = %if.then.298
  %159 = load i8*, i8** %s299, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* %159)
  br label %if.end.315

if.end.315:                                       ; preds = %if.else.314, %cond.end.312
  br label %if.end.316

if.end.316:                                       ; preds = %if.end.315, %sw.epilog
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.316, %if.end.223
  %160 = load i64*, i64** %retlen.addr, align 8
  %tobool318 = icmp ne i64* %160, null
  br i1 %tobool318, label %if.then.319, label %if.end.325

if.then.319:                                      ; preds = %if.end.317
  %161 = load i64, i64* %expectlen, align 8
  %tobool320 = icmp ne i64 %161, 0
  br i1 %tobool320, label %cond.true.321, label %cond.false.322

cond.true.321:                                    ; preds = %if.then.319
  %162 = load i64, i64* %expectlen, align 8
  br label %cond.end.323

cond.false.322:                                   ; preds = %if.then.319
  %163 = load i64, i64* %len, align 8
  br label %cond.end.323

cond.end.323:                                     ; preds = %cond.false.322, %cond.true.321
  %cond324 = phi i64 [ %162, %cond.true.321 ], [ %163, %cond.false.322 ]
  %164 = load i64*, i64** %retlen.addr, align 8
  store i64 %cond324, i64* %164, align 8
  br label %if.end.325

if.end.325:                                       ; preds = %cond.end.323, %if.end.317
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end.325, %if.end.222, %if.end.216, %if.end.21
  %165 = load i64, i64* %retval
  ret i64 %165
}

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

declare %struct.sv* @Perl_newSVpv(i8*, i64) #1

declare void @Perl_sv_catpv(%struct.sv*, i8*) #1

declare void @Perl_sv_catpvf(%struct.sv*, i8*, ...) #1

declare i8* @Perl_custom_op_desc(%struct.op*) #1

; Function Attrs: nounwind uwtable
define i64 @Perl_utf8_to_uvchr(i8* %s, i64* %retlen) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %retlen.addr = alloca i64*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64* %retlen, i64** %retlen.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i64*, i64** %retlen.addr, align 8
  %2 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %2, i32 0, i32 14
  %3 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp = icmp ne %struct.sv* %3, null
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %4 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1 = getelementptr inbounds %struct.cop, %struct.cop* %4, i32 0, i32 14
  %5 = load %struct.sv*, %struct.sv** %cop_warnings1, align 8
  %cmp2 = icmp ne %struct.sv* %5, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp2, label %land.lhs.true.3, label %lor.rhs

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %6 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings4 = getelementptr inbounds %struct.cop, %struct.cop* %6, i32 0, i32 14
  %7 = load %struct.sv*, %struct.sv** %cop_warnings4, align 8
  %cmp5 = icmp eq %struct.sv* %7, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp5, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.3
  %8 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings6 = getelementptr inbounds %struct.cop, %struct.cop* %8, i32 0, i32 14
  %9 = load %struct.sv*, %struct.sv** %cop_warnings6, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 0
  %10 = load i8*, i8** %sv_any, align 8
  %11 = bitcast i8* %10 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %11, i32 0, i32 0
  %12 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 11
  %13 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %13 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false, %land.lhs.true, %entry
  %14 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings7 = getelementptr inbounds %struct.cop, %struct.cop* %14, i32 0, i32 14
  %15 = load %struct.sv*, %struct.sv** %cop_warnings7, align 8
  %cmp8 = icmp eq %struct.sv* %15, null
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %16 = load i8, i8* @PL_dowarn, align 1
  %conv10 = zext i8 %16 to i32
  %and11 = and i32 %conv10, 1
  %tobool12 = icmp ne i32 %and11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %17 = phi i1 [ false, %lor.rhs ], [ %tobool12, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false, %land.lhs.true.3
  %18 = phi i1 [ true, %lor.lhs.false ], [ true, %land.lhs.true.3 ], [ %17, %land.end ]
  %cond = select i1 %18, i32 0, i32 255
  %call = call i64 @Perl_utf8n_to_uvuni(i8* %0, i64 13, i64* %1, i32 %cond)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Perl_utf8_to_uvuni(i8* %s, i64* %retlen) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %retlen.addr = alloca i64*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64* %retlen, i64** %retlen.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i64*, i64** %retlen.addr, align 8
  %2 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %2, i32 0, i32 14
  %3 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp = icmp ne %struct.sv* %3, null
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %4 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1 = getelementptr inbounds %struct.cop, %struct.cop* %4, i32 0, i32 14
  %5 = load %struct.sv*, %struct.sv** %cop_warnings1, align 8
  %cmp2 = icmp ne %struct.sv* %5, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp2, label %land.lhs.true.3, label %lor.rhs

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %6 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings4 = getelementptr inbounds %struct.cop, %struct.cop* %6, i32 0, i32 14
  %7 = load %struct.sv*, %struct.sv** %cop_warnings4, align 8
  %cmp5 = icmp eq %struct.sv* %7, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp5, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.3
  %8 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings6 = getelementptr inbounds %struct.cop, %struct.cop* %8, i32 0, i32 14
  %9 = load %struct.sv*, %struct.sv** %cop_warnings6, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 0
  %10 = load i8*, i8** %sv_any, align 8
  %11 = bitcast i8* %10 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %11, i32 0, i32 0
  %12 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 11
  %13 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %13 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false, %land.lhs.true, %entry
  %14 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings7 = getelementptr inbounds %struct.cop, %struct.cop* %14, i32 0, i32 14
  %15 = load %struct.sv*, %struct.sv** %cop_warnings7, align 8
  %cmp8 = icmp eq %struct.sv* %15, null
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %16 = load i8, i8* @PL_dowarn, align 1
  %conv10 = zext i8 %16 to i32
  %and11 = and i32 %conv10, 1
  %tobool12 = icmp ne i32 %and11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %17 = phi i1 [ false, %lor.rhs ], [ %tobool12, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false, %land.lhs.true.3
  %18 = phi i1 [ true, %lor.lhs.false ], [ true, %land.lhs.true.3 ], [ %17, %land.end ]
  %cond = select i1 %18, i32 0, i32 255
  %call = call i64 @Perl_utf8n_to_uvuni(i8* %0, i64 13, i64* %1, i32 %cond)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Perl_utf8_length(i8* %s, i8* %e) #0 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %e.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  %t = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  store i8* %e, i8** %e.addr, align 8
  store i64 0, i64* %len, align 8
  %0 = load i8*, i8** %e.addr, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %2 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %2, i32 0, i32 14
  %3 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp1 = icmp eq %struct.sv* %3, null
  br i1 %cmp1, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings2 = getelementptr inbounds %struct.cop, %struct.cop* %4, i32 0, i32 14
  %5 = load %struct.sv*, %struct.sv** %cop_warnings2, align 8
  %cmp3 = icmp eq %struct.sv* %5, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp3, label %if.then.8, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %6 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings5 = getelementptr inbounds %struct.cop, %struct.cop* %6, i32 0, i32 14
  %7 = load %struct.sv*, %struct.sv** %cop_warnings5, align 8
  %cmp6 = icmp ne %struct.sv* %7, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp6, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %lor.lhs.false.4
  %8 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings7 = getelementptr inbounds %struct.cop, %struct.cop* %8, i32 0, i32 14
  %9 = load %struct.sv*, %struct.sv** %cop_warnings7, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 0
  %10 = load i8*, i8** %sv_any, align 8
  %11 = bitcast i8* %10 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %11, i32 0, i32 0
  %12 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 11
  %13 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %13 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %land.lhs.true, %lor.lhs.false, %if.then
  %14 = load %struct.op*, %struct.op** @PL_op, align 8
  %tobool9 = icmp ne %struct.op* %14, null
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.8
  %15 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %15, i32 0, i32 4
  %16 = load i16, i16* %op_type, align 2
  %conv11 = zext i16 %16 to i32
  %cmp12 = icmp eq i32 %conv11, 351
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.10
  %17 = load %struct.op*, %struct.op** @PL_op, align 8
  %call = call i8* @Perl_custom_op_desc(%struct.op* %17)
  br label %cond.end

cond.false:                                       ; preds = %if.then.10
  %18 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type14 = getelementptr inbounds %struct.op, %struct.op* %18, i32 0, i32 4
  %19 = load i16, i16* %op_type14, align 2
  %idxprom = zext i16 %19 to i64
  %arrayidx15 = getelementptr inbounds [0 x i8*], [0 x i8*]* @PL_op_desc, i32 0, i64 %idxprom
  %20 = load i8*, i8** %arrayidx15, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %20, %cond.false ]
  call void (i32, i8*, ...) @Perl_warner(i32 44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @unees, i32 0, i32 0), i8* %cond)
  br label %if.end

if.else:                                          ; preds = %if.then.8
  call void (i32, i8*, ...) @Perl_warner(i32 44, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @unees, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %land.lhs.true, %lor.lhs.false.4
  store i64 0, i64* %retval
  br label %return

if.end.17:                                        ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.63, %if.end.17
  %21 = load i8*, i8** %s.addr, align 8
  %22 = load i8*, i8** %e.addr, align 8
  %cmp18 = icmp ult i8* %21, %22
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i8*, i8** %s.addr, align 8
  %24 = load i8, i8* %23, align 1
  %idxprom20 = zext i8 %24 to i64
  %arrayidx21 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom20
  %25 = load i8, i8* %arrayidx21, align 1
  store i8 %25, i8* %t, align 1
  %26 = load i8*, i8** %e.addr, align 8
  %27 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %28 = load i8, i8* %t, align 1
  %conv22 = zext i8 %28 to i64
  %cmp23 = icmp slt i64 %sub.ptr.sub, %conv22
  br i1 %cmp23, label %if.then.25, label %if.end.63

if.then.25:                                       ; preds = %while.body
  %29 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings26 = getelementptr inbounds %struct.cop, %struct.cop* %29, i32 0, i32 14
  %30 = load %struct.sv*, %struct.sv** %cop_warnings26, align 8
  %cmp27 = icmp eq %struct.sv* %30, null
  br i1 %cmp27, label %if.then.45, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %if.then.25
  %31 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings30 = getelementptr inbounds %struct.cop, %struct.cop* %31, i32 0, i32 14
  %32 = load %struct.sv*, %struct.sv** %cop_warnings30, align 8
  %cmp31 = icmp eq %struct.sv* %32, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp31, label %if.then.45, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.29
  %33 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings34 = getelementptr inbounds %struct.cop, %struct.cop* %33, i32 0, i32 14
  %34 = load %struct.sv*, %struct.sv** %cop_warnings34, align 8
  %cmp35 = icmp ne %struct.sv* %34, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.62

land.lhs.true.37:                                 ; preds = %lor.lhs.false.33
  %35 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings38 = getelementptr inbounds %struct.cop, %struct.cop* %35, i32 0, i32 14
  %36 = load %struct.sv*, %struct.sv** %cop_warnings38, align 8
  %sv_any39 = getelementptr inbounds %struct.sv, %struct.sv* %36, i32 0, i32 0
  %37 = load i8*, i8** %sv_any39, align 8
  %38 = bitcast i8* %37 to %struct.xpv*
  %xpv_pv40 = getelementptr inbounds %struct.xpv, %struct.xpv* %38, i32 0, i32 0
  %39 = load i8*, i8** %xpv_pv40, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %39, i64 11
  %40 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %40 to i32
  %and43 = and i32 %conv42, 1
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.62

if.then.45:                                       ; preds = %land.lhs.true.37, %lor.lhs.false.29, %if.then.25
  %41 = load %struct.op*, %struct.op** @PL_op, align 8
  %tobool46 = icmp ne %struct.op* %41, null
  br i1 %tobool46, label %if.then.47, label %if.else.60

if.then.47:                                       ; preds = %if.then.45
  %42 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type48 = getelementptr inbounds %struct.op, %struct.op* %42, i32 0, i32 4
  %43 = load i16, i16* %op_type48, align 2
  %conv49 = zext i16 %43 to i32
  %cmp50 = icmp eq i32 %conv49, 351
  br i1 %cmp50, label %cond.true.52, label %cond.false.54

cond.true.52:                                     ; preds = %if.then.47
  %44 = load %struct.op*, %struct.op** @PL_op, align 8
  %call53 = call i8* @Perl_custom_op_desc(%struct.op* %44)
  br label %cond.end.58

cond.false.54:                                    ; preds = %if.then.47
  %45 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type55 = getelementptr inbounds %struct.op, %struct.op* %45, i32 0, i32 4
  %46 = load i16, i16* %op_type55, align 2
  %idxprom56 = zext i16 %46 to i64
  %arrayidx57 = getelementptr inbounds [0 x i8*], [0 x i8*]* @PL_op_desc, i32 0, i64 %idxprom56
  %47 = load i8*, i8** %arrayidx57, align 8
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.54, %cond.true.52
  %cond59 = phi i8* [ %call53, %cond.true.52 ], [ %47, %cond.false.54 ]
  call void (i32, i8*, ...) @Perl_warner(i32 44, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @unees, i32 0, i32 0), i8* %cond59)
  br label %if.end.61

if.else.60:                                       ; preds = %if.then.45
  call void (i32, i8*, ...) @Perl_warner(i32 44, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @unees, i32 0, i32 0))
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.60, %cond.end.58
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %land.lhs.true.37, %lor.lhs.false.33
  %48 = load i64, i64* %len, align 8
  store i64 %48, i64* %retval
  br label %return

if.end.63:                                        ; preds = %while.body
  %49 = load i8, i8* %t, align 1
  %conv64 = zext i8 %49 to i32
  %50 = load i8*, i8** %s.addr, align 8
  %idx.ext = sext i32 %conv64 to i64
  %add.ptr = getelementptr inbounds i8, i8* %50, i64 %idx.ext
  store i8* %add.ptr, i8** %s.addr, align 8
  %51 = load i64, i64* %len, align 8
  %inc = add i64 %51, 1
  store i64 %inc, i64* %len, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %52 = load i64, i64* %len, align 8
  store i64 %52, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.end.62, %if.end.16
  %53 = load i64, i64* %retval
  ret i64 %53
}

; Function Attrs: nounwind uwtable
define i64 @Perl_utf8_distance(i8* %a, i8* %b) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %off = alloca i64, align 8
  %c = alloca i8, align 1
  %c34 = alloca i8, align 1
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i64 0, i64* %off, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = load i8*, i8** %b.addr, align 8
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %if.then, label %if.else.29

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.27, %if.then
  %2 = load i8*, i8** %a.addr, align 8
  %3 = load i8*, i8** %b.addr, align 8
  %cmp1 = icmp ult i8* %2, %3
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %a.addr, align 8
  %5 = load i8, i8* %4, align 1
  %idxprom = zext i8 %5 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  store i8 %6, i8* %c, align 1
  %7 = load i8*, i8** %b.addr, align 8
  %8 = load i8*, i8** %a.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %9 = load i8, i8* %c, align 1
  %conv = zext i8 %9 to i64
  %cmp2 = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp2, label %if.then.4, label %if.end.27

if.then.4:                                        ; preds = %while.body
  %10 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %10, i32 0, i32 14
  %11 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp5 = icmp eq %struct.sv* %11, null
  br i1 %cmp5, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.4
  %12 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings7 = getelementptr inbounds %struct.cop, %struct.cop* %12, i32 0, i32 14
  %13 = load %struct.sv*, %struct.sv** %cop_warnings7, align 8
  %cmp8 = icmp eq %struct.sv* %13, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp8, label %if.then.17, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %14 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings11 = getelementptr inbounds %struct.cop, %struct.cop* %14, i32 0, i32 14
  %15 = load %struct.sv*, %struct.sv** %cop_warnings11, align 8
  %cmp12 = icmp ne %struct.sv* %15, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp12, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %lor.lhs.false.10
  %16 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings14 = getelementptr inbounds %struct.cop, %struct.cop* %16, i32 0, i32 14
  %17 = load %struct.sv*, %struct.sv** %cop_warnings14, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 0
  %18 = load i8*, i8** %sv_any, align 8
  %19 = bitcast i8* %18 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %19, i32 0, i32 0
  %20 = load i8*, i8** %xpv_pv, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %20, i64 11
  %21 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %21 to i32
  %and = and i32 %conv16, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.17, label %if.end.26

if.then.17:                                       ; preds = %land.lhs.true, %lor.lhs.false, %if.then.4
  %22 = load %struct.op*, %struct.op** @PL_op, align 8
  %tobool18 = icmp ne %struct.op* %22, null
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.17
  %23 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type = getelementptr inbounds %struct.op, %struct.op* %23, i32 0, i32 4
  %24 = load i16, i16* %op_type, align 2
  %conv20 = zext i16 %24 to i32
  %cmp21 = icmp eq i32 %conv20, 351
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.19
  %25 = load %struct.op*, %struct.op** @PL_op, align 8
  %call = call i8* @Perl_custom_op_desc(%struct.op* %25)
  br label %cond.end

cond.false:                                       ; preds = %if.then.19
  %26 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type23 = getelementptr inbounds %struct.op, %struct.op* %26, i32 0, i32 4
  %27 = load i16, i16* %op_type23, align 2
  %idxprom24 = zext i16 %27 to i64
  %arrayidx25 = getelementptr inbounds [0 x i8*], [0 x i8*]* @PL_op_desc, i32 0, i64 %idxprom24
  %28 = load i8*, i8** %arrayidx25, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %28, %cond.false ]
  call void (i32, i8*, ...) @Perl_warner(i32 44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @unees, i32 0, i32 0), i8* %cond)
  br label %if.end

if.else:                                          ; preds = %if.then.17
  call void (i32, i8*, ...) @Perl_warner(i32 44, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @unees, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %land.lhs.true, %lor.lhs.false.10
  %29 = load i64, i64* %off, align 8
  store i64 %29, i64* %retval
  br label %return

if.end.27:                                        ; preds = %while.body
  %30 = load i8, i8* %c, align 1
  %conv28 = zext i8 %30 to i32
  %31 = load i8*, i8** %a.addr, align 8
  %idx.ext = sext i32 %conv28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %idx.ext
  store i8* %add.ptr, i8** %a.addr, align 8
  %32 = load i64, i64* %off, align 8
  %dec = add nsw i64 %32, -1
  store i64 %dec, i64* %off, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.86

if.else.29:                                       ; preds = %entry
  br label %while.cond.30

while.cond.30:                                    ; preds = %if.end.81, %if.else.29
  %33 = load i8*, i8** %b.addr, align 8
  %34 = load i8*, i8** %a.addr, align 8
  %cmp31 = icmp ult i8* %33, %34
  br i1 %cmp31, label %while.body.33, label %while.end.85

while.body.33:                                    ; preds = %while.cond.30
  %35 = load i8*, i8** %b.addr, align 8
  %36 = load i8, i8* %35, align 1
  %idxprom35 = zext i8 %36 to i64
  %arrayidx36 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom35
  %37 = load i8, i8* %arrayidx36, align 1
  store i8 %37, i8* %c34, align 1
  %38 = load i8*, i8** %a.addr, align 8
  %39 = load i8*, i8** %b.addr, align 8
  %sub.ptr.lhs.cast37 = ptrtoint i8* %38 to i64
  %sub.ptr.rhs.cast38 = ptrtoint i8* %39 to i64
  %sub.ptr.sub39 = sub i64 %sub.ptr.lhs.cast37, %sub.ptr.rhs.cast38
  %40 = load i8, i8* %c34, align 1
  %conv40 = zext i8 %40 to i64
  %cmp41 = icmp slt i64 %sub.ptr.sub39, %conv40
  br i1 %cmp41, label %if.then.43, label %if.end.81

if.then.43:                                       ; preds = %while.body.33
  %41 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings44 = getelementptr inbounds %struct.cop, %struct.cop* %41, i32 0, i32 14
  %42 = load %struct.sv*, %struct.sv** %cop_warnings44, align 8
  %cmp45 = icmp eq %struct.sv* %42, null
  br i1 %cmp45, label %if.then.63, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %if.then.43
  %43 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings48 = getelementptr inbounds %struct.cop, %struct.cop* %43, i32 0, i32 14
  %44 = load %struct.sv*, %struct.sv** %cop_warnings48, align 8
  %cmp49 = icmp eq %struct.sv* %44, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp49, label %if.then.63, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.47
  %45 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings52 = getelementptr inbounds %struct.cop, %struct.cop* %45, i32 0, i32 14
  %46 = load %struct.sv*, %struct.sv** %cop_warnings52, align 8
  %cmp53 = icmp ne %struct.sv* %46, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.80

land.lhs.true.55:                                 ; preds = %lor.lhs.false.51
  %47 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings56 = getelementptr inbounds %struct.cop, %struct.cop* %47, i32 0, i32 14
  %48 = load %struct.sv*, %struct.sv** %cop_warnings56, align 8
  %sv_any57 = getelementptr inbounds %struct.sv, %struct.sv* %48, i32 0, i32 0
  %49 = load i8*, i8** %sv_any57, align 8
  %50 = bitcast i8* %49 to %struct.xpv*
  %xpv_pv58 = getelementptr inbounds %struct.xpv, %struct.xpv* %50, i32 0, i32 0
  %51 = load i8*, i8** %xpv_pv58, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %51, i64 11
  %52 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %52 to i32
  %and61 = and i32 %conv60, 1
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %if.then.63, label %if.end.80

if.then.63:                                       ; preds = %land.lhs.true.55, %lor.lhs.false.47, %if.then.43
  %53 = load %struct.op*, %struct.op** @PL_op, align 8
  %tobool64 = icmp ne %struct.op* %53, null
  br i1 %tobool64, label %if.then.65, label %if.else.78

if.then.65:                                       ; preds = %if.then.63
  %54 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type66 = getelementptr inbounds %struct.op, %struct.op* %54, i32 0, i32 4
  %55 = load i16, i16* %op_type66, align 2
  %conv67 = zext i16 %55 to i32
  %cmp68 = icmp eq i32 %conv67, 351
  br i1 %cmp68, label %cond.true.70, label %cond.false.72

cond.true.70:                                     ; preds = %if.then.65
  %56 = load %struct.op*, %struct.op** @PL_op, align 8
  %call71 = call i8* @Perl_custom_op_desc(%struct.op* %56)
  br label %cond.end.76

cond.false.72:                                    ; preds = %if.then.65
  %57 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_type73 = getelementptr inbounds %struct.op, %struct.op* %57, i32 0, i32 4
  %58 = load i16, i16* %op_type73, align 2
  %idxprom74 = zext i16 %58 to i64
  %arrayidx75 = getelementptr inbounds [0 x i8*], [0 x i8*]* @PL_op_desc, i32 0, i64 %idxprom74
  %59 = load i8*, i8** %arrayidx75, align 8
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.72, %cond.true.70
  %cond77 = phi i8* [ %call71, %cond.true.70 ], [ %59, %cond.false.72 ]
  call void (i32, i8*, ...) @Perl_warner(i32 44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @unees, i32 0, i32 0), i8* %cond77)
  br label %if.end.79

if.else.78:                                       ; preds = %if.then.63
  call void (i32, i8*, ...) @Perl_warner(i32 44, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @unees, i32 0, i32 0))
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.78, %cond.end.76
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %land.lhs.true.55, %lor.lhs.false.51
  %60 = load i64, i64* %off, align 8
  store i64 %60, i64* %retval
  br label %return

if.end.81:                                        ; preds = %while.body.33
  %61 = load i8, i8* %c34, align 1
  %conv82 = zext i8 %61 to i32
  %62 = load i8*, i8** %b.addr, align 8
  %idx.ext83 = sext i32 %conv82 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %62, i64 %idx.ext83
  store i8* %add.ptr84, i8** %b.addr, align 8
  %63 = load i64, i64* %off, align 8
  %inc = add nsw i64 %63, 1
  store i64 %inc, i64* %off, align 8
  br label %while.cond.30

while.end.85:                                     ; preds = %while.cond.30
  br label %if.end.86

if.end.86:                                        ; preds = %while.end.85, %while.end
  %64 = load i64, i64* %off, align 8
  store i64 %64, i64* %retval
  br label %return

return:                                           ; preds = %if.end.86, %if.end.80, %if.end.26
  %65 = load i64, i64* %retval
  ret i64 %65
}

; Function Attrs: nounwind uwtable
define i8* @Perl_utf8_hop(i8* %s, i32 %off) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %off.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %off, i32* %off.addr, align 4
  %0 = load i32, i32* %off.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load i32, i32* %off.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %off.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load i8*, i8** %s.addr, align 8
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %s.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %entry
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.end.13, %if.else
  %6 = load i32, i32* %off.addr, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %off.addr, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %while.body.3, label %while.end.14

while.body.3:                                     ; preds = %while.cond.1
  %7 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 -1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %while.cond.4

while.cond.4:                                     ; preds = %while.body.11, %while.body.3
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv5 = zext i8 %9 to i32
  %cmp6 = icmp sge i32 %conv5, 128
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.4
  %10 = load i8*, i8** %s.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv8 = zext i8 %11 to i32
  %cmp9 = icmp sle i32 %conv8, 191
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.4
  %12 = phi i1 [ false, %while.cond.4 ], [ %cmp9, %land.rhs ]
  br i1 %12, label %while.body.11, label %while.end.13

while.body.11:                                    ; preds = %land.end
  %13 = load i8*, i8** %s.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %13, i32 -1
  store i8* %incdec.ptr12, i8** %s.addr, align 8
  br label %while.cond.4

while.end.13:                                     ; preds = %land.end
  br label %while.cond.1

while.end.14:                                     ; preds = %while.cond.1
  br label %if.end

if.end:                                           ; preds = %while.end.14, %while.end
  %14 = load i8*, i8** %s.addr, align 8
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define i8* @Perl_utf8_to_bytes(i8* %s, i64* %len) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64*, align 8
  %send = alloca i8*, align 8
  %d = alloca i8*, align 8
  %save = alloca i8*, align 8
  %c = alloca i8, align 1
  %ulen = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64* %len, i64** %len.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  store i8* %0, i8** %save, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i64*, i64** %len.addr, align 8
  %3 = load i64, i64* %2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %3
  store i8* %add.ptr, i8** %send, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8*, i8** %send, align 8
  %cmp = icmp ult i8* %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %c, align 1
  %8 = load i8, i8* %c, align 1
  %conv = zext i8 %8 to i64
  %cmp1 = icmp ult i64 %conv, 128
  br i1 %cmp1, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %9 = load i8, i8* %c, align 1
  %conv3 = zext i8 %9 to i32
  %and = and i32 %conv3, 252
  %cmp4 = icmp eq i32 %and, 192
  br i1 %cmp4, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load i8*, i8** %s.addr, align 8
  %11 = load i8*, i8** %send, align 8
  %cmp6 = icmp uge i8* %10, %11
  br i1 %cmp6, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %12 = load i8*, i8** %s.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr9, i8** %s.addr, align 8
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %c, align 1
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %lor.lhs.false.10, label %if.then

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.8
  %14 = load i8, i8* %c, align 1
  %conv11 = zext i8 %14 to i32
  %cmp12 = icmp sge i32 %conv11, 128
  br i1 %cmp12, label %land.lhs.true.14, label %if.then

land.lhs.true.14:                                 ; preds = %lor.lhs.false.10
  %15 = load i8, i8* %c, align 1
  %conv15 = zext i8 %15 to i32
  %cmp16 = icmp sle i32 %conv15, 191
  br i1 %cmp16, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.14, %lor.lhs.false.10, %lor.lhs.false.8, %lor.lhs.false, %land.lhs.true
  %16 = load i64*, i64** %len.addr, align 8
  store i64 -1, i64* %16, align 8
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.14, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i8*, i8** %save, align 8
  store i8* %17, i8** %s.addr, align 8
  store i8* %17, i8** %d, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %18 = load i8*, i8** %s.addr, align 8
  %19 = load i8*, i8** %send, align 8
  %cmp18 = icmp ult i8* %18, %19
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i8*, i8** %s.addr, align 8
  %call = call i64 @Perl_utf8_to_uvchr(i8* %20, i64* %ulen)
  %conv20 = trunc i64 %call to i8
  %21 = load i8*, i8** %d, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr21, i8** %d, align 8
  store i8 %conv20, i8* %21, align 1
  %22 = load i64, i64* %ulen, align 8
  %23 = load i8*, i8** %s.addr, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %23, i64 %22
  store i8* %add.ptr22, i8** %s.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load i8*, i8** %d, align 8
  store i8 0, i8* %24, align 1
  %25 = load i8*, i8** %d, align 8
  %26 = load i8*, i8** %save, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %27 = load i64*, i64** %len.addr, align 8
  store i64 %sub.ptr.sub, i64* %27, align 8
  %28 = load i8*, i8** %save, align 8
  store i8* %28, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %29 = load i8*, i8** %retval
  ret i8* %29
}

; Function Attrs: nounwind uwtable
define i8* @Perl_bytes_from_utf8(i8* %s, i64* %len, i8* %is_utf8) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64*, align 8
  %is_utf8.addr = alloca i8*, align 8
  %d = alloca i8*, align 8
  %start = alloca i8*, align 8
  %send = alloca i8*, align 8
  %count = alloca i32, align 4
  %c = alloca i8, align 1
  %c31 = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  store i64* %len, i64** %len.addr, align 8
  store i8* %is_utf8, i8** %is_utf8.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  store i8* %0, i8** %start, align 8
  store i32 0, i32* %count, align 4
  %1 = load i8*, i8** %is_utf8.addr, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %start, align 8
  store i8* %3, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i64*, i64** %len.addr, align 8
  %6 = load i64, i64* %5, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %6
  store i8* %add.ptr, i8** %send, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.23, %if.end
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load i8*, i8** %send, align 8
  %cmp = icmp ult i8* %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %c, align 1
  %11 = load i8, i8* %c, align 1
  %conv = zext i8 %11 to i64
  %cmp1 = icmp ult i64 %conv, 128
  br i1 %cmp1, label %if.end.23, label %if.then.3

if.then.3:                                        ; preds = %for.body
  %12 = load i8, i8* %c, align 1
  %conv4 = zext i8 %12 to i32
  %and = and i32 %conv4, 252
  %cmp5 = icmp eq i32 %and, 192
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.3
  %13 = load i8*, i8** %s.addr, align 8
  %14 = load i8*, i8** %send, align 8
  %cmp7 = icmp ult i8* %13, %14
  br i1 %cmp7, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %15 = load i8*, i8** %s.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr10, i8** %s.addr, align 8
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %c, align 1
  %conv11 = zext i8 %16 to i32
  %tobool12 = icmp ne i32 %conv11, 0
  br i1 %tobool12, label %land.lhs.true.13, label %if.else

land.lhs.true.13:                                 ; preds = %land.lhs.true.9
  %17 = load i8, i8* %c, align 1
  %conv14 = zext i8 %17 to i32
  %cmp15 = icmp sge i32 %conv14, 128
  br i1 %cmp15, label %land.lhs.true.17, label %if.else

land.lhs.true.17:                                 ; preds = %land.lhs.true.13
  %18 = load i8, i8* %c, align 1
  %conv18 = zext i8 %18 to i32
  %cmp19 = icmp sle i32 %conv18, 191
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %land.lhs.true.17
  %19 = load i32, i32* %count, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true.17, %land.lhs.true.13, %land.lhs.true.9, %land.lhs.true, %if.then.3
  %20 = load i8*, i8** %start, align 8
  store i8* %20, i8** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.21
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i8*, i8** %is_utf8.addr, align 8
  store i8 0, i8* %21, align 1
  %22 = load i64*, i64** %len.addr, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %count, align 4
  %conv24 = sext i32 %24 to i64
  %sub = sub i64 %23, %conv24
  %add = add i64 %sub, 1
  %mul = mul i64 %add, 1
  %call = call i8* @Perl_safesysmalloc(i64 %mul)
  store i8* %call, i8** %d, align 8
  %25 = load i8*, i8** %d, align 8
  %26 = load i64*, i64** %len.addr, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %count, align 4
  %conv25 = sext i32 %28 to i64
  %sub26 = sub i64 %27, %conv25
  %add27 = add i64 %sub26, 1
  %mul28 = mul i64 %add27, 1
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 %mul28, i32 1, i1 false)
  %29 = load i8*, i8** %start, align 8
  store i8* %29, i8** %s.addr, align 8
  %30 = load i8*, i8** %d, align 8
  store i8* %30, i8** %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.42, %for.end
  %31 = load i8*, i8** %s.addr, align 8
  %32 = load i8*, i8** %send, align 8
  %cmp29 = icmp ult i8* %31, %32
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load i8*, i8** %s.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr32, i8** %s.addr, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %c31, align 1
  %35 = load i8, i8* %c31, align 1
  %conv33 = zext i8 %35 to i64
  %cmp34 = icmp ult i64 %conv33, 128
  br i1 %cmp34, label %if.end.42, label %if.then.36

if.then.36:                                       ; preds = %while.body
  %36 = load i8, i8* %c31, align 1
  %conv37 = zext i8 %36 to i32
  %shl = shl i32 %conv37, 6
  %37 = load i8*, i8** %s.addr, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr38, i8** %s.addr, align 8
  %38 = load i8, i8* %37, align 1
  %conv39 = zext i8 %38 to i32
  %and40 = and i32 %conv39, 63
  %or = or i32 %shl, %and40
  %conv41 = trunc i32 %or to i8
  store i8 %conv41, i8* %c31, align 1
  %39 = load i8, i8* %c31, align 1
  store i8 %39, i8* %c31, align 1
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.36, %while.body
  %40 = load i8, i8* %c31, align 1
  %41 = load i8*, i8** %d, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr43, i8** %d, align 8
  store i8 %40, i8* %41, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load i8*, i8** %d, align 8
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %d, align 8
  %44 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %43 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %44 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %45 = load i64*, i64** %len.addr, align 8
  store i64 %sub.ptr.sub, i64* %45, align 8
  %46 = load i8*, i8** %start, align 8
  store i8* %46, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.else, %if.then
  %47 = load i8*, i8** %retval
  ret i8* %47
}

declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i8* @Perl_bytes_to_utf8(i8* %s, i64* %len) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64*, align 8
  %send = alloca i8*, align 8
  %d = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %uv = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64* %len, i64** %len.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i64*, i64** %len.addr, align 8
  %2 = load i64, i64* %1, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %2
  store i8* %add.ptr, i8** %send, align 8
  %3 = load i64*, i64** %len.addr, align 8
  %4 = load i64, i64* %3, align 8
  %mul = mul i64 %4, 2
  %add = add i64 %mul, 1
  %mul1 = mul i64 %add, 1
  %call = call i8* @Perl_safesysmalloc(i64 %mul1)
  store i8* %call, i8** %d, align 8
  %5 = load i8*, i8** %d, align 8
  %6 = load i64*, i64** %len.addr, align 8
  %7 = load i64, i64* %6, align 8
  %mul2 = mul i64 %7, 2
  %add3 = add i64 %mul2, 1
  %mul4 = mul i64 %add3, 1
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 %mul4, i32 1, i1 false)
  %8 = load i8*, i8** %d, align 8
  store i8* %8, i8** %dst, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %9 = load i8*, i8** %s.addr, align 8
  %10 = load i8*, i8** %send, align 8
  %cmp = icmp ult i8* %9, %10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv = zext i8 %12 to i64
  store i64 %conv, i64* %uv, align 8
  %13 = load i64, i64* %uv, align 8
  %cmp5 = icmp ult i64 %13, 128
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %14 = load i64, i64* %uv, align 8
  %conv7 = trunc i64 %14 to i8
  %15 = load i8*, i8** %d, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr8, i8** %d, align 8
  store i8 %conv7, i8* %15, align 1
  br label %if.end

if.else:                                          ; preds = %while.body
  %16 = load i64, i64* %uv, align 8
  %conv9 = trunc i64 %16 to i8
  %conv10 = zext i8 %conv9 to i32
  %shr = ashr i32 %conv10, 6
  %or = or i32 %shr, 8128
  %conv11 = trunc i32 %or to i8
  %17 = load i8*, i8** %d, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr12, i8** %d, align 8
  store i8 %conv11, i8* %17, align 1
  %18 = load i64, i64* %uv, align 8
  %conv13 = trunc i64 %18 to i8
  %conv14 = zext i8 %conv13 to i32
  %and = and i32 %conv14, 63
  %or15 = or i32 %and, 128
  %conv16 = trunc i32 %or15 to i8
  %19 = load i8*, i8** %d, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr17, i8** %d, align 8
  store i8 %conv16, i8* %19, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load i8*, i8** %d, align 8
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %d, align 8
  %22 = load i8*, i8** %dst, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %23 = load i64*, i64** %len.addr, align 8
  store i64 %sub.ptr.sub, i64* %23, align 8
  %24 = load i8*, i8** %dst, align 8
  ret i8* %24
}

; Function Attrs: nounwind uwtable
define i8* @Perl_utf16_to_utf8(i8* %p, i8* %d, i32 %bytelen, i32* %newlen) #0 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %d.addr = alloca i8*, align 8
  %bytelen.addr = alloca i32, align 4
  %newlen.addr = alloca i32*, align 8
  %pend = alloca i8*, align 8
  %dstart = alloca i8*, align 8
  %uv = alloca i64, align 8
  %low = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %d, i8** %d.addr, align 8
  store i32 %bytelen, i32* %bytelen.addr, align 4
  store i32* %newlen, i32** %newlen.addr, align 8
  %0 = load i8*, i8** %d.addr, align 8
  store i8* %0, i8** %dstart, align 8
  %1 = load i32, i32* %bytelen.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i8*, i8** %d.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 0
  store i8 0, i8* %arrayidx3, align 1
  %5 = load i32*, i32** %newlen.addr, align 8
  store i32 1, i32* %5, align 4
  %6 = load i8*, i8** %d.addr, align 8
  store i8* %6, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load i32, i32* %bytelen.addr, align 4
  %and = and i32 %7, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %8 = load i32, i32* %bytelen.addr, align 4
  %conv5 = sext i32 %8 to i64
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i32 0, i32 0), i64 %conv5)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %9 = load i8*, i8** %p.addr, align 8
  %10 = load i32, i32* %bytelen.addr, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %pend, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.else, %if.then.57, %if.then.22, %if.then.17, %if.end.6
  %11 = load i8*, i8** %p.addr, align 8
  %12 = load i8*, i8** %pend, align 8
  %cmp7 = icmp ult i8* %11, %12
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i8*, i8** %p.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %14 to i32
  %shl = shl i32 %conv10, 8
  %15 = load i8*, i8** %p.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %16 to i32
  %add = add nsw i32 %shl, %conv12
  %conv13 = sext i32 %add to i64
  store i64 %conv13, i64* %uv, align 8
  %17 = load i8*, i8** %p.addr, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %17, i64 2
  store i8* %add.ptr14, i8** %p.addr, align 8
  %18 = load i64, i64* %uv, align 8
  %cmp15 = icmp ult i64 %18, 128
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %while.body
  %19 = load i64, i64* %uv, align 8
  %conv18 = trunc i64 %19 to i8
  %20 = load i8*, i8** %d.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %d.addr, align 8
  store i8 %conv18, i8* %20, align 1
  br label %while.cond

if.end.19:                                        ; preds = %while.body
  %21 = load i64, i64* %uv, align 8
  %cmp20 = icmp ult i64 %21, 2048
  br i1 %cmp20, label %if.then.22, label %if.end.29

if.then.22:                                       ; preds = %if.end.19
  %22 = load i64, i64* %uv, align 8
  %shr = lshr i64 %22, 6
  %or = or i64 %shr, 192
  %conv23 = trunc i64 %or to i8
  %23 = load i8*, i8** %d.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr24, i8** %d.addr, align 8
  store i8 %conv23, i8* %23, align 1
  %24 = load i64, i64* %uv, align 8
  %and25 = and i64 %24, 63
  %or26 = or i64 %and25, 128
  %conv27 = trunc i64 %or26 to i8
  %25 = load i8*, i8** %d.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr28, i8** %d.addr, align 8
  store i8 %conv27, i8* %25, align 1
  br label %while.cond

if.end.29:                                        ; preds = %if.end.19
  %26 = load i64, i64* %uv, align 8
  %cmp30 = icmp uge i64 %26, 55296
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.54

land.lhs.true.32:                                 ; preds = %if.end.29
  %27 = load i64, i64* %uv, align 8
  %cmp33 = icmp ult i64 %27, 56319
  br i1 %cmp33, label %if.then.35, label %if.end.54

if.then.35:                                       ; preds = %land.lhs.true.32
  %28 = load i8*, i8** %p.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %29 to i32
  %shl38 = shl i32 %conv37, 8
  %30 = load i8*, i8** %p.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %31 to i32
  %add41 = add nsw i32 %shl38, %conv40
  %conv42 = sext i32 %add41 to i64
  store i64 %conv42, i64* %low, align 8
  %32 = load i8*, i8** %p.addr, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %32, i64 2
  store i8* %add.ptr43, i8** %p.addr, align 8
  %33 = load i64, i64* %low, align 8
  %cmp44 = icmp ult i64 %33, 56320
  br i1 %cmp44, label %if.then.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.35
  %34 = load i64, i64* %low, align 8
  %cmp46 = icmp uge i64 %34, 57343
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %lor.lhs.false, %if.then.35
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %lor.lhs.false
  %35 = load i64, i64* %uv, align 8
  %sub = sub i64 %35, 55296
  %shl50 = shl i64 %sub, 10
  %36 = load i64, i64* %low, align 8
  %sub51 = sub i64 %36, 56320
  %add52 = add i64 %shl50, %sub51
  %add53 = add i64 %add52, 65536
  store i64 %add53, i64* %uv, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.49, %land.lhs.true.32, %if.end.29
  %37 = load i64, i64* %uv, align 8
  %cmp55 = icmp ult i64 %37, 65536
  br i1 %cmp55, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %if.end.54
  %38 = load i64, i64* %uv, align 8
  %shr58 = lshr i64 %38, 12
  %or59 = or i64 %shr58, 224
  %conv60 = trunc i64 %or59 to i8
  %39 = load i8*, i8** %d.addr, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr61, i8** %d.addr, align 8
  store i8 %conv60, i8* %39, align 1
  %40 = load i64, i64* %uv, align 8
  %shr62 = lshr i64 %40, 6
  %and63 = and i64 %shr62, 63
  %or64 = or i64 %and63, 128
  %conv65 = trunc i64 %or64 to i8
  %41 = load i8*, i8** %d.addr, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr66, i8** %d.addr, align 8
  store i8 %conv65, i8* %41, align 1
  %42 = load i64, i64* %uv, align 8
  %and67 = and i64 %42, 63
  %or68 = or i64 %and67, 128
  %conv69 = trunc i64 %or68 to i8
  %43 = load i8*, i8** %d.addr, align 8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr70, i8** %d.addr, align 8
  store i8 %conv69, i8* %43, align 1
  br label %while.cond

if.else:                                          ; preds = %if.end.54
  %44 = load i64, i64* %uv, align 8
  %shr71 = lshr i64 %44, 18
  %or72 = or i64 %shr71, 240
  %conv73 = trunc i64 %or72 to i8
  %45 = load i8*, i8** %d.addr, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr74, i8** %d.addr, align 8
  store i8 %conv73, i8* %45, align 1
  %46 = load i64, i64* %uv, align 8
  %shr75 = lshr i64 %46, 12
  %and76 = and i64 %shr75, 63
  %or77 = or i64 %and76, 128
  %conv78 = trunc i64 %or77 to i8
  %47 = load i8*, i8** %d.addr, align 8
  %incdec.ptr79 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr79, i8** %d.addr, align 8
  store i8 %conv78, i8* %47, align 1
  %48 = load i64, i64* %uv, align 8
  %shr80 = lshr i64 %48, 6
  %and81 = and i64 %shr80, 63
  %or82 = or i64 %and81, 128
  %conv83 = trunc i64 %or82 to i8
  %49 = load i8*, i8** %d.addr, align 8
  %incdec.ptr84 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr84, i8** %d.addr, align 8
  store i8 %conv83, i8* %49, align 1
  %50 = load i64, i64* %uv, align 8
  %and85 = and i64 %50, 63
  %or86 = or i64 %and85, 128
  %conv87 = trunc i64 %or86 to i8
  %51 = load i8*, i8** %d.addr, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr88, i8** %d.addr, align 8
  store i8 %conv87, i8* %51, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %52 = load i8*, i8** %d.addr, align 8
  %53 = load i8*, i8** %dstart, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %53 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv89 = trunc i64 %sub.ptr.sub to i32
  %54 = load i32*, i32** %newlen.addr, align 8
  store i32 %conv89, i32* %54, align 4
  %55 = load i8*, i8** %d.addr, align 8
  store i8* %55, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %56 = load i8*, i8** %retval
  ret i8* %56
}

declare void @Perl_croak(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i8* @Perl_utf16_to_utf8_reversed(i8* %p, i8* %d, i32 %bytelen, i32* %newlen) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %d.addr = alloca i8*, align 8
  %bytelen.addr = alloca i32, align 4
  %newlen.addr = alloca i32*, align 8
  %s = alloca i8*, align 8
  %send = alloca i8*, align 8
  %tmp = alloca i8, align 1
  store i8* %p, i8** %p.addr, align 8
  store i8* %d, i8** %d.addr, align 8
  store i32 %bytelen, i32* %bytelen.addr, align 4
  store i32* %newlen, i32** %newlen.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  store i8* %0, i8** %s, align 8
  %1 = load i8*, i8** %s, align 8
  %2 = load i32, i32* %bytelen.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %send, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i8*, i8** %s, align 8
  %4 = load i8*, i8** %send, align 8
  %cmp = icmp ult i8* %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  store i8 %6, i8* %tmp, align 1
  %7 = load i8*, i8** %s, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx1, align 1
  %9 = load i8*, i8** %s, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 %8, i8* %arrayidx2, align 1
  %10 = load i8, i8* %tmp, align 1
  %11 = load i8*, i8** %s, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 %10, i8* %arrayidx3, align 1
  %12 = load i8*, i8** %s, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %12, i64 2
  store i8* %add.ptr4, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load i8*, i8** %p.addr, align 8
  %14 = load i8*, i8** %d.addr, align 8
  %15 = load i32, i32* %bytelen.addr, align 4
  %16 = load i32*, i32** %newlen.addr, align 8
  %call = call i8* @Perl_utf16_to_utf8(i8* %13, i8* %14, i32 %15, i32* %16)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_alnum(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %tmpbuf = alloca [14 x i8], align 1
  store i64 %c, i64* %c.addr, align 8
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %0 = load i64, i64* %c.addr, align 8
  %call = call i8* @Perl_uvuni_to_utf8(i8* %arraydecay, i64 %0)
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %call2 = call signext i8 @Perl_is_utf8_alnum(i8* %arraydecay1)
  ret i8 %call2
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_utf8_alnum(i8* %p) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call i64 @Perl_is_utf8_char(i8* %0)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** @PL_utf8_alnum, align 8
  %tobool1 = icmp ne %struct.sv* %1, null
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), %struct.sv* @PL_sv_undef, i32 0, i32 0)
  store %struct.sv* %call3, %struct.sv** @PL_utf8_alnum, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %2 = load %struct.sv*, %struct.sv** @PL_utf8_alnum, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %call5 = call i64 @Perl_swash_fetch(%struct.sv* %2, i8* %3, i8 signext 1)
  %cmp = icmp ne i64 %call5, 0
  %conv = zext i1 %cmp to i32
  %conv6 = trunc i32 %conv to i8
  store i8 %conv6, i8* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %4 = load i8, i8* %retval
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_alnumc(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %tmpbuf = alloca [14 x i8], align 1
  store i64 %c, i64* %c.addr, align 8
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %0 = load i64, i64* %c.addr, align 8
  %call = call i8* @Perl_uvuni_to_utf8(i8* %arraydecay, i64 %0)
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %call2 = call signext i8 @Perl_is_utf8_alnumc(i8* %arraydecay1)
  ret i8 %call2
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_utf8_alnumc(i8* %p) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call i64 @Perl_is_utf8_char(i8* %0)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** @PL_utf8_alnum, align 8
  %tobool1 = icmp ne %struct.sv* %1, null
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), %struct.sv* @PL_sv_undef, i32 0, i32 0)
  store %struct.sv* %call3, %struct.sv** @PL_utf8_alnum, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %2 = load %struct.sv*, %struct.sv** @PL_utf8_alnum, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %call5 = call i64 @Perl_swash_fetch(%struct.sv* %2, i8* %3, i8 signext 1)
  %cmp = icmp ne i64 %call5, 0
  %conv = zext i1 %cmp to i32
  %conv6 = trunc i32 %conv to i8
  store i8 %conv6, i8* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %4 = load i8, i8* %retval
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_idfirst(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %tmpbuf = alloca [14 x i8], align 1
  store i64 %c, i64* %c.addr, align 8
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %0 = load i64, i64* %c.addr, align 8
  %call = call i8* @Perl_uvuni_to_utf8(i8* %arraydecay, i64 %0)
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %call2 = call signext i8 @Perl_is_utf8_idfirst(i8* %arraydecay1)
  ret i8 %call2
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_utf8_idfirst(i8* %p) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 95
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8
  %call = call i64 @Perl_is_utf8_char(i8* %2)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i8 0, i8* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct.sv*, %struct.sv** @PL_utf8_idstart, align 8
  %tobool4 = icmp ne %struct.sv* %3, null
  br i1 %tobool4, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  %call6 = call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), %struct.sv* @PL_sv_undef, i32 0, i32 0)
  store %struct.sv* %call6, %struct.sv** @PL_utf8_idstart, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  %4 = load %struct.sv*, %struct.sv** @PL_utf8_idstart, align 8
  %5 = load i8*, i8** %p.addr, align 8
  %call8 = call i64 @Perl_swash_fetch(%struct.sv* %4, i8* %5, i8 signext 1)
  %cmp9 = icmp ne i64 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %conv11 = trunc i32 %conv10 to i8
  store i8 %conv11, i8* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.2, %if.then
  %6 = load i8, i8* %retval
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_alpha(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %tmpbuf = alloca [14 x i8], align 1
  store i64 %c, i64* %c.addr, align 8
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %0 = load i64, i64* %c.addr, align 8
  %call = call i8* @Perl_uvuni_to_utf8(i8* %arraydecay, i64 %0)
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %call2 = call signext i8 @Perl_is_utf8_alpha(i8* %arraydecay1)
  ret i8 %call2
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_utf8_alpha(i8* %p) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call i64 @Perl_is_utf8_char(i8* %0)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** @PL_utf8_alpha, align 8
  %tobool1 = icmp ne %struct.sv* %1, null
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), %struct.sv* @PL_sv_undef, i32 0, i32 0)
  store %struct.sv* %call3, %struct.sv** @PL_utf8_alpha, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %2 = load %struct.sv*, %struct.sv** @PL_utf8_alpha, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %call5 = call i64 @Perl_swash_fetch(%struct.sv* %2, i8* %3, i8 signext 1)
  %cmp = icmp ne i64 %call5, 0
  %conv = zext i1 %cmp to i32
  %conv6 = trunc i32 %conv to i8
  store i8 %conv6, i8* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %4 = load i8, i8* %retval
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_ascii(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %tmpbuf = alloca [14 x i8], align 1
  store i64 %c, i64* %c.addr, align 8
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %0 = load i64, i64* %c.addr, align 8
  %call = call i8* @Perl_uvuni_to_utf8(i8* %arraydecay, i64 %0)
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %call2 = call signext i8 @Perl_is_utf8_ascii(i8* %arraydecay1)
  ret i8 %call2
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_utf8_ascii(i8* %p) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call i64 @Perl_is_utf8_char(i8* %0)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** @PL_utf8_ascii, align 8
  %tobool1 = icmp ne %struct.sv* %1, null
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), %struct.sv* @PL_sv_undef, i32 0, i32 0)
  store %struct.sv* %call3, %struct.sv** @PL_utf8_ascii, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %2 = load %struct.sv*, %struct.sv** @PL_utf8_ascii, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %call5 = call i64 @Perl_swash_fetch(%struct.sv* %2, i8* %3, i8 signext 1)
  %cmp = icmp ne i64 %call5, 0
  %conv = zext i1 %cmp to i32
  %conv6 = trunc i32 %conv to i8
  store i8 %conv6, i8* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %4 = load i8, i8* %retval
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_space(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %tmpbuf = alloca [14 x i8], align 1
  store i64 %c, i64* %c.addr, align 8
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %0 = load i64, i64* %c.addr, align 8
  %call = call i8* @Perl_uvuni_to_utf8(i8* %arraydecay, i64 %0)
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %call2 = call signext i8 @Perl_is_utf8_space(i8* %arraydecay1)
  ret i8 %call2
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_utf8_space(i8* %p) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call i64 @Perl_is_utf8_char(i8* %0)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** @PL_utf8_space, align 8
  %tobool1 = icmp ne %struct.sv* %1, null
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), %struct.sv* @PL_sv_undef, i32 0, i32 0)
  store %struct.sv* %call3, %struct.sv** @PL_utf8_space, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %2 = load %struct.sv*, %struct.sv** @PL_utf8_space, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %call5 = call i64 @Perl_swash_fetch(%struct.sv* %2, i8* %3, i8 signext 1)
  %cmp = icmp ne i64 %call5, 0
  %conv = zext i1 %cmp to i32
  %conv6 = trunc i32 %conv to i8
  store i8 %conv6, i8* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %4 = load i8, i8* %retval
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_digit(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %tmpbuf = alloca [14 x i8], align 1
  store i64 %c, i64* %c.addr, align 8
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %0 = load i64, i64* %c.addr, align 8
  %call = call i8* @Perl_uvuni_to_utf8(i8* %arraydecay, i64 %0)
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %call2 = call signext i8 @Perl_is_utf8_digit(i8* %arraydecay1)
  ret i8 %call2
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_utf8_digit(i8* %p) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call i64 @Perl_is_utf8_char(i8* %0)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** @PL_utf8_digit, align 8
  %tobool1 = icmp ne %struct.sv* %1, null
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), %struct.sv* @PL_sv_undef, i32 0, i32 0)
  store %struct.sv* %call3, %struct.sv** @PL_utf8_digit, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %2 = load %struct.sv*, %struct.sv** @PL_utf8_digit, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %call5 = call i64 @Perl_swash_fetch(%struct.sv* %2, i8* %3, i8 signext 1)
  %cmp = icmp ne i64 %call5, 0
  %conv = zext i1 %cmp to i32
  %conv6 = trunc i32 %conv to i8
  store i8 %conv6, i8* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %4 = load i8, i8* %retval
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_upper(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %tmpbuf = alloca [14 x i8], align 1
  store i64 %c, i64* %c.addr, align 8
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %0 = load i64, i64* %c.addr, align 8
  %call = call i8* @Perl_uvuni_to_utf8(i8* %arraydecay, i64 %0)
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %call2 = call signext i8 @Perl_is_utf8_upper(i8* %arraydecay1)
  ret i8 %call2
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_utf8_upper(i8* %p) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call i64 @Perl_is_utf8_char(i8* %0)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** @PL_utf8_upper, align 8
  %tobool1 = icmp ne %struct.sv* %1, null
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), %struct.sv* @PL_sv_undef, i32 0, i32 0)
  store %struct.sv* %call3, %struct.sv** @PL_utf8_upper, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %2 = load %struct.sv*, %struct.sv** @PL_utf8_upper, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %call5 = call i64 @Perl_swash_fetch(%struct.sv* %2, i8* %3, i8 signext 1)
  %cmp = icmp ne i64 %call5, 0
  %conv = zext i1 %cmp to i32
  %conv6 = trunc i32 %conv to i8
  store i8 %conv6, i8* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %4 = load i8, i8* %retval
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_lower(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %tmpbuf = alloca [14 x i8], align 1
  store i64 %c, i64* %c.addr, align 8
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %0 = load i64, i64* %c.addr, align 8
  %call = call i8* @Perl_uvuni_to_utf8(i8* %arraydecay, i64 %0)
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %call2 = call signext i8 @Perl_is_utf8_lower(i8* %arraydecay1)
  ret i8 %call2
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_utf8_lower(i8* %p) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call i64 @Perl_is_utf8_char(i8* %0)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** @PL_utf8_lower, align 8
  %tobool1 = icmp ne %struct.sv* %1, null
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), %struct.sv* @PL_sv_undef, i32 0, i32 0)
  store %struct.sv* %call3, %struct.sv** @PL_utf8_lower, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %2 = load %struct.sv*, %struct.sv** @PL_utf8_lower, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %call5 = call i64 @Perl_swash_fetch(%struct.sv* %2, i8* %3, i8 signext 1)
  %cmp = icmp ne i64 %call5, 0
  %conv = zext i1 %cmp to i32
  %conv6 = trunc i32 %conv to i8
  store i8 %conv6, i8* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %4 = load i8, i8* %retval
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_cntrl(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %tmpbuf = alloca [14 x i8], align 1
  store i64 %c, i64* %c.addr, align 8
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %0 = load i64, i64* %c.addr, align 8
  %call = call i8* @Perl_uvuni_to_utf8(i8* %arraydecay, i64 %0)
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %call2 = call signext i8 @Perl_is_utf8_cntrl(i8* %arraydecay1)
  ret i8 %call2
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_utf8_cntrl(i8* %p) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call i64 @Perl_is_utf8_char(i8* %0)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** @PL_utf8_cntrl, align 8
  %tobool1 = icmp ne %struct.sv* %1, null
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), %struct.sv* @PL_sv_undef, i32 0, i32 0)
  store %struct.sv* %call3, %struct.sv** @PL_utf8_cntrl, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %2 = load %struct.sv*, %struct.sv** @PL_utf8_cntrl, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %call5 = call i64 @Perl_swash_fetch(%struct.sv* %2, i8* %3, i8 signext 1)
  %cmp = icmp ne i64 %call5, 0
  %conv = zext i1 %cmp to i32
  %conv6 = trunc i32 %conv to i8
  store i8 %conv6, i8* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %4 = load i8, i8* %retval
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_graph(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %tmpbuf = alloca [14 x i8], align 1
  store i64 %c, i64* %c.addr, align 8
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %0 = load i64, i64* %c.addr, align 8
  %call = call i8* @Perl_uvuni_to_utf8(i8* %arraydecay, i64 %0)
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %call2 = call signext i8 @Perl_is_utf8_graph(i8* %arraydecay1)
  ret i8 %call2
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_utf8_graph(i8* %p) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call i64 @Perl_is_utf8_char(i8* %0)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** @PL_utf8_graph, align 8
  %tobool1 = icmp ne %struct.sv* %1, null
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), %struct.sv* @PL_sv_undef, i32 0, i32 0)
  store %struct.sv* %call3, %struct.sv** @PL_utf8_graph, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %2 = load %struct.sv*, %struct.sv** @PL_utf8_graph, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %call5 = call i64 @Perl_swash_fetch(%struct.sv* %2, i8* %3, i8 signext 1)
  %cmp = icmp ne i64 %call5, 0
  %conv = zext i1 %cmp to i32
  %conv6 = trunc i32 %conv to i8
  store i8 %conv6, i8* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %4 = load i8, i8* %retval
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_print(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %tmpbuf = alloca [14 x i8], align 1
  store i64 %c, i64* %c.addr, align 8
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %0 = load i64, i64* %c.addr, align 8
  %call = call i8* @Perl_uvuni_to_utf8(i8* %arraydecay, i64 %0)
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %call2 = call signext i8 @Perl_is_utf8_print(i8* %arraydecay1)
  ret i8 %call2
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_utf8_print(i8* %p) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call i64 @Perl_is_utf8_char(i8* %0)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** @PL_utf8_print, align 8
  %tobool1 = icmp ne %struct.sv* %1, null
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), %struct.sv* @PL_sv_undef, i32 0, i32 0)
  store %struct.sv* %call3, %struct.sv** @PL_utf8_print, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %2 = load %struct.sv*, %struct.sv** @PL_utf8_print, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %call5 = call i64 @Perl_swash_fetch(%struct.sv* %2, i8* %3, i8 signext 1)
  %cmp = icmp ne i64 %call5, 0
  %conv = zext i1 %cmp to i32
  %conv6 = trunc i32 %conv to i8
  store i8 %conv6, i8* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %4 = load i8, i8* %retval
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_punct(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %tmpbuf = alloca [14 x i8], align 1
  store i64 %c, i64* %c.addr, align 8
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %0 = load i64, i64* %c.addr, align 8
  %call = call i8* @Perl_uvuni_to_utf8(i8* %arraydecay, i64 %0)
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %tmpbuf, i32 0, i32 0
  %call2 = call signext i8 @Perl_is_utf8_punct(i8* %arraydecay1)
  ret i8 %call2
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_utf8_punct(i8* %p) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call i64 @Perl_is_utf8_char(i8* %0)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** @PL_utf8_punct, align 8
  %tobool1 = icmp ne %struct.sv* %1, null
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), %struct.sv* @PL_sv_undef, i32 0, i32 0)
  store %struct.sv* %call3, %struct.sv** @PL_utf8_punct, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %2 = load %struct.sv*, %struct.sv** @PL_utf8_punct, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %call5 = call i64 @Perl_swash_fetch(%struct.sv* %2, i8* %3, i8 signext 1)
  %cmp = icmp ne i64 %call5, 0
  %conv = zext i1 %cmp to i32
  %conv6 = trunc i32 %conv to i8
  store i8 %conv6, i8* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %4 = load i8, i8* %retval
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_xdigit(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %tmpbuf = alloca [7 x i8], align 1
  store i64 %c, i64* %c.addr, align 8
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %tmpbuf, i32 0, i32 0
  %0 = load i64, i64* %c.addr, align 8
  %call = call i8* @Perl_uvuni_to_utf8(i8* %arraydecay, i64 %0)
  %arraydecay1 = getelementptr inbounds [7 x i8], [7 x i8]* %tmpbuf, i32 0, i32 0
  %call2 = call signext i8 @Perl_is_utf8_xdigit(i8* %arraydecay1)
  ret i8 %call2
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_utf8_xdigit(i8* %p) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call i64 @Perl_is_utf8_char(i8* %0)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** @PL_utf8_xdigit, align 8
  %tobool1 = icmp ne %struct.sv* %1, null
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), %struct.sv* @PL_sv_undef, i32 0, i32 0)
  store %struct.sv* %call3, %struct.sv** @PL_utf8_xdigit, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %2 = load %struct.sv*, %struct.sv** @PL_utf8_xdigit, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %call5 = call i64 @Perl_swash_fetch(%struct.sv* %2, i8* %3, i8 signext 1)
  %cmp = icmp ne i64 %call5, 0
  %conv = zext i1 %cmp to i32
  %conv6 = trunc i32 %conv to i8
  store i8 %conv6, i8* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %4 = load i8, i8* %retval
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define i64 @Perl_to_uni_upper(i64 %c, i8* %p, i64* %lenp) #0 {
entry:
  %c.addr = alloca i64, align 8
  %p.addr = alloca i8*, align 8
  %lenp.addr = alloca i64*, align 8
  store i64 %c, i64* %c.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64* %lenp, i64** %lenp.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i64, i64* %c.addr, align 8
  %call = call i8* @Perl_uvuni_to_utf8(i8* %0, i64 %1)
  %2 = load i8*, i8** %p.addr, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %4 = load i64*, i64** %lenp.addr, align 8
  %call1 = call i64 @Perl_to_utf8_upper(i8* %2, i8* %3, i64* %4)
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define i64 @Perl_to_utf8_upper(i8* %p, i8* %ustrp, i64* %lenp) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %ustrp.addr = alloca i8*, align 8
  %lenp.addr = alloca i64*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %ustrp, i8** %ustrp.addr, align 8
  store i64* %lenp, i64** %lenp.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8*, i8** %ustrp.addr, align 8
  %2 = load i64*, i64** %lenp.addr, align 8
  %call = call i64 @Perl_to_utf8_case(i8* %0, i8* %1, i64* %2, %struct.sv** @PL_utf8_toupper, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0))
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Perl_to_uni_title(i64 %c, i8* %p, i64* %lenp) #0 {
entry:
  %c.addr = alloca i64, align 8
  %p.addr = alloca i8*, align 8
  %lenp.addr = alloca i64*, align 8
  store i64 %c, i64* %c.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64* %lenp, i64** %lenp.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i64, i64* %c.addr, align 8
  %call = call i8* @Perl_uvuni_to_utf8(i8* %0, i64 %1)
  %2 = load i8*, i8** %p.addr, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %4 = load i64*, i64** %lenp.addr, align 8
  %call1 = call i64 @Perl_to_utf8_title(i8* %2, i8* %3, i64* %4)
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define i64 @Perl_to_utf8_title(i8* %p, i8* %ustrp, i64* %lenp) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %ustrp.addr = alloca i8*, align 8
  %lenp.addr = alloca i64*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %ustrp, i8** %ustrp.addr, align 8
  store i64* %lenp, i64** %lenp.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8*, i8** %ustrp.addr, align 8
  %2 = load i64*, i64** %lenp.addr, align 8
  %call = call i64 @Perl_to_utf8_case(i8* %0, i8* %1, i64* %2, %struct.sv** @PL_utf8_totitle, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0))
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Perl_to_uni_lower(i64 %c, i8* %p, i64* %lenp) #0 {
entry:
  %c.addr = alloca i64, align 8
  %p.addr = alloca i8*, align 8
  %lenp.addr = alloca i64*, align 8
  store i64 %c, i64* %c.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64* %lenp, i64** %lenp.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i64, i64* %c.addr, align 8
  %call = call i8* @Perl_uvuni_to_utf8(i8* %0, i64 %1)
  %2 = load i8*, i8** %p.addr, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %4 = load i64*, i64** %lenp.addr, align 8
  %call1 = call i64 @Perl_to_utf8_lower(i8* %2, i8* %3, i64* %4)
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define i64 @Perl_to_utf8_lower(i8* %p, i8* %ustrp, i64* %lenp) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %ustrp.addr = alloca i8*, align 8
  %lenp.addr = alloca i64*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %ustrp, i8** %ustrp.addr, align 8
  store i64* %lenp, i64** %lenp.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8*, i8** %ustrp.addr, align 8
  %2 = load i64*, i64** %lenp.addr, align 8
  %call = call i64 @Perl_to_utf8_case(i8* %0, i8* %1, i64* %2, %struct.sv** @PL_utf8_tolower, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0))
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Perl_to_uni_fold(i64 %c, i8* %p, i64* %lenp) #0 {
entry:
  %c.addr = alloca i64, align 8
  %p.addr = alloca i8*, align 8
  %lenp.addr = alloca i64*, align 8
  store i64 %c, i64* %c.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64* %lenp, i64** %lenp.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i64, i64* %c.addr, align 8
  %call = call i8* @Perl_uvuni_to_utf8(i8* %0, i64 %1)
  %2 = load i8*, i8** %p.addr, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %4 = load i64*, i64** %lenp.addr, align 8
  %call1 = call i64 @Perl_to_utf8_fold(i8* %2, i8* %3, i64* %4)
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define i64 @Perl_to_utf8_fold(i8* %p, i8* %ustrp, i64* %lenp) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %ustrp.addr = alloca i8*, align 8
  %lenp.addr = alloca i64*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %ustrp, i8** %ustrp.addr, align 8
  store i64* %lenp, i64** %lenp.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8*, i8** %ustrp.addr, align 8
  %2 = load i64*, i64** %lenp.addr, align 8
  %call = call i64 @Perl_to_utf8_case(i8* %0, i8* %1, i64* %2, %struct.sv** @PL_utf8_tofold, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0))
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_alnum_lc(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %call = call signext i8 @Perl_is_uni_alnum(i64 %0)
  ret i8 %call
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_alnumc_lc(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %call = call signext i8 @Perl_is_uni_alnumc(i64 %0)
  ret i8 %call
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_idfirst_lc(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %call = call signext i8 @Perl_is_uni_idfirst(i64 %0)
  ret i8 %call
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_alpha_lc(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %call = call signext i8 @Perl_is_uni_alpha(i64 %0)
  ret i8 %call
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_ascii_lc(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %call = call signext i8 @Perl_is_uni_ascii(i64 %0)
  ret i8 %call
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_space_lc(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %call = call signext i8 @Perl_is_uni_space(i64 %0)
  ret i8 %call
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_digit_lc(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %call = call signext i8 @Perl_is_uni_digit(i64 %0)
  ret i8 %call
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_upper_lc(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %call = call signext i8 @Perl_is_uni_upper(i64 %0)
  ret i8 %call
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_lower_lc(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %call = call signext i8 @Perl_is_uni_lower(i64 %0)
  ret i8 %call
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_cntrl_lc(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %call = call signext i8 @Perl_is_uni_cntrl(i64 %0)
  ret i8 %call
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_graph_lc(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %call = call signext i8 @Perl_is_uni_graph(i64 %0)
  ret i8 %call
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_print_lc(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %call = call signext i8 @Perl_is_uni_print(i64 %0)
  ret i8 %call
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_punct_lc(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %call = call signext i8 @Perl_is_uni_punct(i64 %0)
  ret i8 %call
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_uni_xdigit_lc(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %call = call signext i8 @Perl_is_uni_xdigit(i64 %0)
  ret i8 %call
}

; Function Attrs: nounwind uwtable
define i32 @Perl_to_uni_upper_lc(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %len = alloca i64, align 8
  %tmpbuf = alloca [7 x i8], align 1
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %conv = zext i32 %0 to i64
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %tmpbuf, i32 0, i32 0
  %call = call i64 @Perl_to_uni_upper(i64 %conv, i8* %arraydecay, i64* %len)
  %conv1 = trunc i64 %call to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define i32 @Perl_to_uni_title_lc(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %len = alloca i64, align 8
  %tmpbuf = alloca [7 x i8], align 1
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %conv = zext i32 %0 to i64
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %tmpbuf, i32 0, i32 0
  %call = call i64 @Perl_to_uni_title(i64 %conv, i8* %arraydecay, i64* %len)
  %conv1 = trunc i64 %call to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define i32 @Perl_to_uni_lower_lc(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %len = alloca i64, align 8
  %tmpbuf = alloca [7 x i8], align 1
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %conv = zext i32 %0 to i64
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %tmpbuf, i32 0, i32 0
  %call = call i64 @Perl_to_uni_lower(i64 %conv, i8* %arraydecay, i64* %len)
  %conv1 = trunc i64 %call to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define %struct.sv* @Perl_swash_init(i8* %pkg, i8* %name, %struct.sv* %listsv, i32 %minbits, i32 %none) #0 {
entry:
  %pkg.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %listsv.addr = alloca %struct.sv*, align 8
  %minbits.addr = alloca i32, align 4
  %none.addr = alloca i32, align 4
  %retval1 = alloca %struct.sv*, align 8
  %tokenbufsv = alloca %struct.sv*, align 8
  %sp = alloca %struct.sv**, align 8
  %pkg_len = alloca i64, align 8
  %name_len = alloca i64, align 8
  %stash = alloca %struct.hv*, align 8
  %errsv_save = alloca %struct.sv*, align 8
  %next = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %tmp92 = alloca i32, align 4
  %sp211 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp259 = alloca %struct.av*, align 8
  %tmp261 = alloca %struct.stackinfo*, align 8
  %len = alloca i64, align 8
  %pv = alloca i8*, align 8
  store i8* %pkg, i8** %pkg.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.sv* %listsv, %struct.sv** %listsv.addr, align 8
  store i32 %minbits, i32* %minbits.addr, align 4
  store i32 %none, i32* %none.addr, align 4
  %call = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call, %struct.sv** %tokenbufsv, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load i8*, i8** %pkg.addr, align 8
  %call2 = call i64 @strlen(i8* %1)
  store i64 %call2, i64* %pkg_len, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %call3 = call i64 @strlen(i8* %2)
  store i64 %call3, i64* %name_len, align 8
  %3 = load i8*, i8** %pkg.addr, align 8
  %4 = load i64, i64* %pkg_len, align 8
  %conv = trunc i64 %4 to i32
  %call4 = call %struct.hv* @Perl_gv_stashpvn(i8* %3, i32 %conv, i32 0)
  store %struct.hv* %call4, %struct.hv** %stash, align 8
  %5 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %5, i32 0, i32 6
  %6 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  store %struct.stackinfo* %6, %struct.stackinfo** %next, align 8
  %7 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %tobool = icmp ne %struct.stackinfo* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call5, %struct.stackinfo** %next, align 8
  %8 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %9 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %9, i32 0, i32 5
  store %struct.stackinfo* %8, %struct.stackinfo** %si_prev, align 8
  %10 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %11 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next6 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %11, i32 0, i32 6
  store %struct.stackinfo* %10, %struct.stackinfo** %si_next6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %12, i32 0, i32 4
  store i32 2, i32* %si_type, align 4
  %13 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %13, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %14 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %14, i32 0, i32 0
  %15 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %15, i32 0, i32 0
  %16 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %16, i32 0, i32 1
  store i64 0, i64* %xav_fill, align 8
  %17 = load %struct.sv**, %struct.sv*** %sp, align 8
  %18 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %17 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %19 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any7 = getelementptr inbounds %struct.av, %struct.av* %19, i32 0, i32 0
  %20 = load %struct.xpvav*, %struct.xpvav** %sv_any7, align 8
  %xav_fill8 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %20, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill8, align 8
  %21 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack9 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %21, i32 0, i32 0
  %22 = load %struct.av*, %struct.av** %si_stack9, align 8
  %sv_any10 = getelementptr inbounds %struct.av, %struct.av* %22, i32 0, i32 0
  %23 = load %struct.xpvav*, %struct.xpvav** %sv_any10, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %23, i32 0, i32 0
  %24 = load i8*, i8** %xav_array, align 8
  %25 = bitcast i8* %24 to %struct.sv**
  store %struct.sv** %25, %struct.sv*** @PL_stack_base, align 8
  %26 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %27 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack11 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %27, i32 0, i32 0
  %28 = load %struct.av*, %struct.av** %si_stack11, align 8
  %sv_any12 = getelementptr inbounds %struct.av, %struct.av* %28, i32 0, i32 0
  %29 = load %struct.xpvav*, %struct.xpvav** %sv_any12, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %29, i32 0, i32 2
  %30 = load i64, i64* %xav_max, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %26, i64 %30
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8
  %31 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %32 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack13 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %32, i32 0, i32 0
  %33 = load %struct.av*, %struct.av** %si_stack13, align 8
  %sv_any14 = getelementptr inbounds %struct.av, %struct.av* %33, i32 0, i32 0
  %34 = load %struct.xpvav*, %struct.xpvav** %sv_any14, align 8
  %xav_fill15 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %34, i32 0, i32 1
  %35 = load i64, i64* %xav_fill15, align 8
  %add.ptr16 = getelementptr inbounds %struct.sv*, %struct.sv** %31, i64 %35
  store %struct.sv** %add.ptr16, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr16, %struct.sv*** %sp, align 8
  %36 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack17 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %36, i32 0, i32 0
  %37 = load %struct.av*, %struct.av** %si_stack17, align 8
  store %struct.av* %37, %struct.av** @PL_curstack, align 8
  store %struct.av* %37, %struct.av** %tmp
  %38 = load %struct.av*, %struct.av** %tmp
  %39 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  store %struct.stackinfo* %39, %struct.stackinfo** @PL_curstackinfo, align 8
  call void @Perl_push_scope()
  call void @Perl_save_I32(i32* @PL_hints)
  store i32 0, i32* @PL_hints, align 4
  call void @Perl_save_re_context()
  %40 = load %struct.hv*, %struct.hv** %stash, align 8
  %call18 = call %struct.gv* @Perl_gv_fetchmeth(%struct.hv* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i64 8, i32 -1)
  %tobool19 = icmp ne %struct.gv* %call18, null
  br i1 %tobool19, label %if.end.87, label %if.then.20

if.then.20:                                       ; preds = %if.end
  call void @Perl_push_scope()
  %41 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any21 = getelementptr inbounds %struct.gv, %struct.gv* %41, i32 0, i32 0
  %42 = load %struct.xpvgv*, %struct.xpvgv** %sv_any21, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %42, i32 0, i32 7
  %43 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %43, i32 0, i32 0
  %44 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %call22 = call %struct.sv* @Perl_newSVsv(%struct.sv* %44)
  store %struct.sv* %call22, %struct.sv** %errsv_save, align 8
  %45 = load i8*, i8** %pkg.addr, align 8
  %46 = load i64, i64* %pkg_len, align 8
  %call23 = call %struct.sv* @Perl_newSVpvn(i8* %45, i64 %46)
  call void (i32, %struct.sv*, %struct.sv*, ...) @Perl_load_module(i32 2, %struct.sv* %call23, %struct.sv* null)
  %47 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any24 = getelementptr inbounds %struct.gv, %struct.gv* %47, i32 0, i32 0
  %48 = load %struct.xpvgv*, %struct.xpvgv** %sv_any24, align 8
  %xgv_gp25 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %48, i32 0, i32 7
  %49 = load %struct.gp*, %struct.gp** %xgv_gp25, align 8
  %gp_sv26 = getelementptr inbounds %struct.gp, %struct.gp* %49, i32 0, i32 0
  %50 = load %struct.sv*, %struct.sv** %gp_sv26, align 8
  %tobool27 = icmp ne %struct.sv* %50, null
  br i1 %tobool27, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.20
  br i1 false, label %if.end.86, label %if.then.82

cond.false:                                       ; preds = %if.then.20
  %51 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any28 = getelementptr inbounds %struct.gv, %struct.gv* %51, i32 0, i32 0
  %52 = load %struct.xpvgv*, %struct.xpvgv** %sv_any28, align 8
  %xgv_gp29 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %52, i32 0, i32 7
  %53 = load %struct.gp*, %struct.gp** %xgv_gp29, align 8
  %gp_sv30 = getelementptr inbounds %struct.gp, %struct.gp* %53, i32 0, i32 0
  %54 = load %struct.sv*, %struct.sv** %gp_sv30, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %54, i32 0, i32 2
  %55 = load i32, i32* %sv_flags, align 4
  %and = and i32 %55, 262144
  %tobool31 = icmp ne i32 %and, 0
  br i1 %tobool31, label %cond.true.32, label %cond.false.47

cond.true.32:                                     ; preds = %cond.false
  %56 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any33 = getelementptr inbounds %struct.gv, %struct.gv* %56, i32 0, i32 0
  %57 = load %struct.xpvgv*, %struct.xpvgv** %sv_any33, align 8
  %xgv_gp34 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %57, i32 0, i32 7
  %58 = load %struct.gp*, %struct.gp** %xgv_gp34, align 8
  %gp_sv35 = getelementptr inbounds %struct.gp, %struct.gp* %58, i32 0, i32 0
  %59 = load %struct.sv*, %struct.sv** %gp_sv35, align 8
  %sv_any36 = getelementptr inbounds %struct.sv, %struct.sv* %59, i32 0, i32 0
  %60 = load i8*, i8** %sv_any36, align 8
  %61 = bitcast i8* %60 to %struct.xpv*
  store %struct.xpv* %61, %struct.xpv** @PL_Xpv, align 8
  %tobool37 = icmp ne %struct.xpv* %61, null
  br i1 %tobool37, label %land.lhs.true, label %cond.false.46

land.lhs.true:                                    ; preds = %cond.true.32
  %62 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %62, i32 0, i32 1
  %63 = load i64, i64* %xpv_cur, align 8
  %cmp = icmp ugt i64 %63, 1
  br i1 %cmp, label %cond.true.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %64 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur39 = getelementptr inbounds %struct.xpv, %struct.xpv* %64, i32 0, i32 1
  %65 = load i64, i64* %xpv_cur39, align 8
  %tobool40 = icmp ne i64 %65, 0
  br i1 %tobool40, label %land.lhs.true.41, label %cond.false.46

land.lhs.true.41:                                 ; preds = %lor.lhs.false
  %66 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %66, i32 0, i32 0
  %67 = load i8*, i8** %xpv_pv, align 8
  %68 = load i8, i8* %67, align 1
  %conv42 = sext i8 %68 to i32
  %cmp43 = icmp ne i32 %conv42, 48
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %land.lhs.true.41, %land.lhs.true
  br i1 true, label %if.end.86, label %if.then.82

cond.false.46:                                    ; preds = %land.lhs.true.41, %lor.lhs.false, %cond.true.32
  br i1 false, label %if.end.86, label %if.then.82

cond.false.47:                                    ; preds = %cond.false
  %69 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any48 = getelementptr inbounds %struct.gv, %struct.gv* %69, i32 0, i32 0
  %70 = load %struct.xpvgv*, %struct.xpvgv** %sv_any48, align 8
  %xgv_gp49 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %70, i32 0, i32 7
  %71 = load %struct.gp*, %struct.gp** %xgv_gp49, align 8
  %gp_sv50 = getelementptr inbounds %struct.gp, %struct.gp* %71, i32 0, i32 0
  %72 = load %struct.sv*, %struct.sv** %gp_sv50, align 8
  %sv_flags51 = getelementptr inbounds %struct.sv, %struct.sv* %72, i32 0, i32 2
  %73 = load i32, i32* %sv_flags51, align 4
  %and52 = and i32 %73, 65536
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %cond.true.54, label %cond.false.61

cond.true.54:                                     ; preds = %cond.false.47
  %74 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any55 = getelementptr inbounds %struct.gv, %struct.gv* %74, i32 0, i32 0
  %75 = load %struct.xpvgv*, %struct.xpvgv** %sv_any55, align 8
  %xgv_gp56 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %75, i32 0, i32 7
  %76 = load %struct.gp*, %struct.gp** %xgv_gp56, align 8
  %gp_sv57 = getelementptr inbounds %struct.gp, %struct.gp* %76, i32 0, i32 0
  %77 = load %struct.sv*, %struct.sv** %gp_sv57, align 8
  %sv_any58 = getelementptr inbounds %struct.sv, %struct.sv* %77, i32 0, i32 0
  %78 = load i8*, i8** %sv_any58, align 8
  %79 = bitcast i8* %78 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %79, i32 0, i32 3
  %80 = load i64, i64* %xiv_iv, align 8
  %cmp59 = icmp ne i64 %80, 0
  br i1 %cmp59, label %if.end.86, label %if.then.82

cond.false.61:                                    ; preds = %cond.false.47
  %81 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any62 = getelementptr inbounds %struct.gv, %struct.gv* %81, i32 0, i32 0
  %82 = load %struct.xpvgv*, %struct.xpvgv** %sv_any62, align 8
  %xgv_gp63 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %82, i32 0, i32 7
  %83 = load %struct.gp*, %struct.gp** %xgv_gp63, align 8
  %gp_sv64 = getelementptr inbounds %struct.gp, %struct.gp* %83, i32 0, i32 0
  %84 = load %struct.sv*, %struct.sv** %gp_sv64, align 8
  %sv_flags65 = getelementptr inbounds %struct.sv, %struct.sv* %84, i32 0, i32 2
  %85 = load i32, i32* %sv_flags65, align 4
  %and66 = and i32 %85, 131072
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %cond.true.68, label %cond.false.75

cond.true.68:                                     ; preds = %cond.false.61
  %86 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any69 = getelementptr inbounds %struct.gv, %struct.gv* %86, i32 0, i32 0
  %87 = load %struct.xpvgv*, %struct.xpvgv** %sv_any69, align 8
  %xgv_gp70 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %87, i32 0, i32 7
  %88 = load %struct.gp*, %struct.gp** %xgv_gp70, align 8
  %gp_sv71 = getelementptr inbounds %struct.gp, %struct.gp* %88, i32 0, i32 0
  %89 = load %struct.sv*, %struct.sv** %gp_sv71, align 8
  %sv_any72 = getelementptr inbounds %struct.sv, %struct.sv* %89, i32 0, i32 0
  %90 = load i8*, i8** %sv_any72, align 8
  %91 = bitcast i8* %90 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %91, i32 0, i32 4
  %92 = load double, double* %xnv_nv, align 8
  %cmp73 = fcmp une double %92, 0.000000e+00
  br i1 %cmp73, label %if.end.86, label %if.then.82

cond.false.75:                                    ; preds = %cond.false.61
  %93 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any76 = getelementptr inbounds %struct.gv, %struct.gv* %93, i32 0, i32 0
  %94 = load %struct.xpvgv*, %struct.xpvgv** %sv_any76, align 8
  %xgv_gp77 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %94, i32 0, i32 7
  %95 = load %struct.gp*, %struct.gp** %xgv_gp77, align 8
  %gp_sv78 = getelementptr inbounds %struct.gp, %struct.gp* %95, i32 0, i32 0
  %96 = load %struct.sv*, %struct.sv** %gp_sv78, align 8
  %call79 = call signext i8 @Perl_sv_2bool(%struct.sv* %96)
  %conv80 = sext i8 %call79 to i32
  %tobool81 = icmp ne i32 %conv80, 0
  br i1 %tobool81, label %if.end.86, label %if.then.82

if.then.82:                                       ; preds = %cond.false.75, %cond.true.68, %cond.true.54, %cond.false.46, %cond.true.45, %cond.true
  %97 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any83 = getelementptr inbounds %struct.gv, %struct.gv* %97, i32 0, i32 0
  %98 = load %struct.xpvgv*, %struct.xpvgv** %sv_any83, align 8
  %xgv_gp84 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %98, i32 0, i32 7
  %99 = load %struct.gp*, %struct.gp** %xgv_gp84, align 8
  %gp_sv85 = getelementptr inbounds %struct.gp, %struct.gp* %99, i32 0, i32 0
  %100 = load %struct.sv*, %struct.sv** %gp_sv85, align 8
  %101 = load %struct.sv*, %struct.sv** %errsv_save, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %100, %struct.sv* %101, i32 2)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.82, %cond.false.75, %cond.true.68, %cond.true.54, %cond.false.46, %cond.true.45, %cond.true
  %102 = load %struct.sv*, %struct.sv** %errsv_save, align 8
  call void @Perl_sv_free(%struct.sv* %102)
  call void @Perl_pop_scope()
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end
  %103 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %103, %struct.sv*** %sp, align 8
  %104 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %105 = load i32*, i32** @PL_markstack_max, align 8
  %cmp88 = icmp eq i32* %incdec.ptr, %105
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.87
  call void @Perl_markstack_grow()
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %if.end.87
  %106 = load %struct.sv**, %struct.sv*** %sp, align 8
  %107 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast93 = ptrtoint %struct.sv** %106 to i64
  %sub.ptr.rhs.cast94 = ptrtoint %struct.sv** %107 to i64
  %sub.ptr.sub95 = sub i64 %sub.ptr.lhs.cast93, %sub.ptr.rhs.cast94
  %sub.ptr.div96 = sdiv exact i64 %sub.ptr.sub95, 8
  %conv97 = trunc i64 %sub.ptr.div96 to i32
  %108 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv97, i32* %108, align 4
  store i32 %conv97, i32* %tmp92
  %109 = load i32, i32* %tmp92
  %110 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %111 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast98 = ptrtoint %struct.sv** %110 to i64
  %sub.ptr.rhs.cast99 = ptrtoint %struct.sv** %111 to i64
  %sub.ptr.sub100 = sub i64 %sub.ptr.lhs.cast98, %sub.ptr.rhs.cast99
  %sub.ptr.div101 = sdiv exact i64 %sub.ptr.sub100, 8
  %cmp102 = icmp slt i64 %sub.ptr.div101, 5
  br i1 %cmp102, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %if.end.91
  %112 = load %struct.sv**, %struct.sv*** %sp, align 8
  %113 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call105 = call %struct.sv** @Perl_stack_grow(%struct.sv** %112, %struct.sv** %113, i32 5)
  store %struct.sv** %call105, %struct.sv*** %sp, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %if.end.91
  %114 = load i8*, i8** %pkg.addr, align 8
  %115 = load i64, i64* %pkg_len, align 8
  %call107 = call %struct.sv* @Perl_newSVpvn(i8* %114, i64 %115)
  %call108 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call107)
  %116 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr109 = getelementptr inbounds %struct.sv*, %struct.sv** %116, i32 1
  store %struct.sv** %incdec.ptr109, %struct.sv*** %sp, align 8
  store %struct.sv* %call108, %struct.sv** %incdec.ptr109, align 8
  %117 = load i8*, i8** %name.addr, align 8
  %118 = load i64, i64* %name_len, align 8
  %call110 = call %struct.sv* @Perl_newSVpvn(i8* %117, i64 %118)
  %call111 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call110)
  %119 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr112 = getelementptr inbounds %struct.sv*, %struct.sv** %119, i32 1
  store %struct.sv** %incdec.ptr112, %struct.sv*** %sp, align 8
  store %struct.sv* %call111, %struct.sv** %incdec.ptr112, align 8
  %120 = load %struct.sv*, %struct.sv** %listsv.addr, align 8
  %121 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr113 = getelementptr inbounds %struct.sv*, %struct.sv** %121, i32 1
  store %struct.sv** %incdec.ptr113, %struct.sv*** %sp, align 8
  store %struct.sv* %120, %struct.sv** %incdec.ptr113, align 8
  %122 = load i32, i32* %minbits.addr, align 4
  %conv114 = sext i32 %122 to i64
  %call115 = call %struct.sv* @Perl_newSViv(i64 %conv114)
  %call116 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call115)
  %123 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr117 = getelementptr inbounds %struct.sv*, %struct.sv** %123, i32 1
  store %struct.sv** %incdec.ptr117, %struct.sv*** %sp, align 8
  store %struct.sv* %call116, %struct.sv** %incdec.ptr117, align 8
  %124 = load i32, i32* %none.addr, align 4
  %conv118 = sext i32 %124 to i64
  %call119 = call %struct.sv* @Perl_newSViv(i64 %conv118)
  %call120 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call119)
  %125 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr121 = getelementptr inbounds %struct.sv*, %struct.sv** %125, i32 1
  store %struct.sv** %incdec.ptr121, %struct.sv*** %sp, align 8
  store %struct.sv* %call120, %struct.sv** %incdec.ptr121, align 8
  %126 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %126, %struct.sv*** @PL_stack_sp, align 8
  %127 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cmp122 = icmp eq %struct.cop* %127, @PL_compiling
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end.106
  call void @Perl_save_I32(i32* @PL_in_my)
  store i32 0, i32* @PL_in_my, align 4
  %128 = load %struct.sv*, %struct.sv** %tokenbufsv, align 8
  call void @Perl_sv_setpv(%struct.sv* %128, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @PL_tokenbuf, i32 0, i32 0))
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.124, %if.end.106
  %129 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any126 = getelementptr inbounds %struct.gv, %struct.gv* %129, i32 0, i32 0
  %130 = load %struct.xpvgv*, %struct.xpvgv** %sv_any126, align 8
  %xgv_gp127 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %130, i32 0, i32 7
  %131 = load %struct.gp*, %struct.gp** %xgv_gp127, align 8
  %gp_sv128 = getelementptr inbounds %struct.gp, %struct.gp* %131, i32 0, i32 0
  %132 = load %struct.sv*, %struct.sv** %gp_sv128, align 8
  %call129 = call %struct.sv* @Perl_newSVsv(%struct.sv* %132)
  store %struct.sv* %call129, %struct.sv** %errsv_save, align 8
  %call130 = call i32 @Perl_call_method(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i32 0)
  %tobool131 = icmp ne i32 %call130, 0
  br i1 %tobool131, label %if.then.132, label %if.else

if.then.132:                                      ; preds = %if.end.125
  %133 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %incdec.ptr133 = getelementptr inbounds %struct.sv*, %struct.sv** %133, i32 -1
  store %struct.sv** %incdec.ptr133, %struct.sv*** @PL_stack_sp, align 8
  %134 = load %struct.sv*, %struct.sv** %133, align 8
  %call134 = call %struct.sv* @Perl_newSVsv(%struct.sv* %134)
  store %struct.sv* %call134, %struct.sv** %retval1, align 8
  br label %if.end.135

if.else:                                          ; preds = %if.end.125
  store %struct.sv* @PL_sv_undef, %struct.sv** %retval1, align 8
  br label %if.end.135

if.end.135:                                       ; preds = %if.else, %if.then.132
  %135 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any136 = getelementptr inbounds %struct.gv, %struct.gv* %135, i32 0, i32 0
  %136 = load %struct.xpvgv*, %struct.xpvgv** %sv_any136, align 8
  %xgv_gp137 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %136, i32 0, i32 7
  %137 = load %struct.gp*, %struct.gp** %xgv_gp137, align 8
  %gp_sv138 = getelementptr inbounds %struct.gp, %struct.gp* %137, i32 0, i32 0
  %138 = load %struct.sv*, %struct.sv** %gp_sv138, align 8
  %tobool139 = icmp ne %struct.sv* %138, null
  br i1 %tobool139, label %cond.false.141, label %cond.true.140

cond.true.140:                                    ; preds = %if.end.135
  br i1 false, label %if.end.209, label %if.then.205

cond.false.141:                                   ; preds = %if.end.135
  %139 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any142 = getelementptr inbounds %struct.gv, %struct.gv* %139, i32 0, i32 0
  %140 = load %struct.xpvgv*, %struct.xpvgv** %sv_any142, align 8
  %xgv_gp143 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %140, i32 0, i32 7
  %141 = load %struct.gp*, %struct.gp** %xgv_gp143, align 8
  %gp_sv144 = getelementptr inbounds %struct.gp, %struct.gp* %141, i32 0, i32 0
  %142 = load %struct.sv*, %struct.sv** %gp_sv144, align 8
  %sv_flags145 = getelementptr inbounds %struct.sv, %struct.sv* %142, i32 0, i32 2
  %143 = load i32, i32* %sv_flags145, align 4
  %and146 = and i32 %143, 262144
  %tobool147 = icmp ne i32 %and146, 0
  br i1 %tobool147, label %cond.true.148, label %cond.false.168

cond.true.148:                                    ; preds = %cond.false.141
  %144 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any149 = getelementptr inbounds %struct.gv, %struct.gv* %144, i32 0, i32 0
  %145 = load %struct.xpvgv*, %struct.xpvgv** %sv_any149, align 8
  %xgv_gp150 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %145, i32 0, i32 7
  %146 = load %struct.gp*, %struct.gp** %xgv_gp150, align 8
  %gp_sv151 = getelementptr inbounds %struct.gp, %struct.gp* %146, i32 0, i32 0
  %147 = load %struct.sv*, %struct.sv** %gp_sv151, align 8
  %sv_any152 = getelementptr inbounds %struct.sv, %struct.sv* %147, i32 0, i32 0
  %148 = load i8*, i8** %sv_any152, align 8
  %149 = bitcast i8* %148 to %struct.xpv*
  store %struct.xpv* %149, %struct.xpv** @PL_Xpv, align 8
  %tobool153 = icmp ne %struct.xpv* %149, null
  br i1 %tobool153, label %land.lhs.true.154, label %cond.false.167

land.lhs.true.154:                                ; preds = %cond.true.148
  %150 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur155 = getelementptr inbounds %struct.xpv, %struct.xpv* %150, i32 0, i32 1
  %151 = load i64, i64* %xpv_cur155, align 8
  %cmp156 = icmp ugt i64 %151, 1
  br i1 %cmp156, label %cond.true.166, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %land.lhs.true.154
  %152 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur159 = getelementptr inbounds %struct.xpv, %struct.xpv* %152, i32 0, i32 1
  %153 = load i64, i64* %xpv_cur159, align 8
  %tobool160 = icmp ne i64 %153, 0
  br i1 %tobool160, label %land.lhs.true.161, label %cond.false.167

land.lhs.true.161:                                ; preds = %lor.lhs.false.158
  %154 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv162 = getelementptr inbounds %struct.xpv, %struct.xpv* %154, i32 0, i32 0
  %155 = load i8*, i8** %xpv_pv162, align 8
  %156 = load i8, i8* %155, align 1
  %conv163 = sext i8 %156 to i32
  %cmp164 = icmp ne i32 %conv163, 48
  br i1 %cmp164, label %cond.true.166, label %cond.false.167

cond.true.166:                                    ; preds = %land.lhs.true.161, %land.lhs.true.154
  br i1 true, label %if.end.209, label %if.then.205

cond.false.167:                                   ; preds = %land.lhs.true.161, %lor.lhs.false.158, %cond.true.148
  br i1 false, label %if.end.209, label %if.then.205

cond.false.168:                                   ; preds = %cond.false.141
  %157 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any169 = getelementptr inbounds %struct.gv, %struct.gv* %157, i32 0, i32 0
  %158 = load %struct.xpvgv*, %struct.xpvgv** %sv_any169, align 8
  %xgv_gp170 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %158, i32 0, i32 7
  %159 = load %struct.gp*, %struct.gp** %xgv_gp170, align 8
  %gp_sv171 = getelementptr inbounds %struct.gp, %struct.gp* %159, i32 0, i32 0
  %160 = load %struct.sv*, %struct.sv** %gp_sv171, align 8
  %sv_flags172 = getelementptr inbounds %struct.sv, %struct.sv* %160, i32 0, i32 2
  %161 = load i32, i32* %sv_flags172, align 4
  %and173 = and i32 %161, 65536
  %tobool174 = icmp ne i32 %and173, 0
  br i1 %tobool174, label %cond.true.175, label %cond.false.183

cond.true.175:                                    ; preds = %cond.false.168
  %162 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any176 = getelementptr inbounds %struct.gv, %struct.gv* %162, i32 0, i32 0
  %163 = load %struct.xpvgv*, %struct.xpvgv** %sv_any176, align 8
  %xgv_gp177 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %163, i32 0, i32 7
  %164 = load %struct.gp*, %struct.gp** %xgv_gp177, align 8
  %gp_sv178 = getelementptr inbounds %struct.gp, %struct.gp* %164, i32 0, i32 0
  %165 = load %struct.sv*, %struct.sv** %gp_sv178, align 8
  %sv_any179 = getelementptr inbounds %struct.sv, %struct.sv* %165, i32 0, i32 0
  %166 = load i8*, i8** %sv_any179, align 8
  %167 = bitcast i8* %166 to %struct.xpviv*
  %xiv_iv180 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %167, i32 0, i32 3
  %168 = load i64, i64* %xiv_iv180, align 8
  %cmp181 = icmp ne i64 %168, 0
  br i1 %cmp181, label %if.end.209, label %if.then.205

cond.false.183:                                   ; preds = %cond.false.168
  %169 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any184 = getelementptr inbounds %struct.gv, %struct.gv* %169, i32 0, i32 0
  %170 = load %struct.xpvgv*, %struct.xpvgv** %sv_any184, align 8
  %xgv_gp185 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %170, i32 0, i32 7
  %171 = load %struct.gp*, %struct.gp** %xgv_gp185, align 8
  %gp_sv186 = getelementptr inbounds %struct.gp, %struct.gp* %171, i32 0, i32 0
  %172 = load %struct.sv*, %struct.sv** %gp_sv186, align 8
  %sv_flags187 = getelementptr inbounds %struct.sv, %struct.sv* %172, i32 0, i32 2
  %173 = load i32, i32* %sv_flags187, align 4
  %and188 = and i32 %173, 131072
  %tobool189 = icmp ne i32 %and188, 0
  br i1 %tobool189, label %cond.true.190, label %cond.false.198

cond.true.190:                                    ; preds = %cond.false.183
  %174 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any191 = getelementptr inbounds %struct.gv, %struct.gv* %174, i32 0, i32 0
  %175 = load %struct.xpvgv*, %struct.xpvgv** %sv_any191, align 8
  %xgv_gp192 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %175, i32 0, i32 7
  %176 = load %struct.gp*, %struct.gp** %xgv_gp192, align 8
  %gp_sv193 = getelementptr inbounds %struct.gp, %struct.gp* %176, i32 0, i32 0
  %177 = load %struct.sv*, %struct.sv** %gp_sv193, align 8
  %sv_any194 = getelementptr inbounds %struct.sv, %struct.sv* %177, i32 0, i32 0
  %178 = load i8*, i8** %sv_any194, align 8
  %179 = bitcast i8* %178 to %struct.xpvnv*
  %xnv_nv195 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %179, i32 0, i32 4
  %180 = load double, double* %xnv_nv195, align 8
  %cmp196 = fcmp une double %180, 0.000000e+00
  br i1 %cmp196, label %if.end.209, label %if.then.205

cond.false.198:                                   ; preds = %cond.false.183
  %181 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any199 = getelementptr inbounds %struct.gv, %struct.gv* %181, i32 0, i32 0
  %182 = load %struct.xpvgv*, %struct.xpvgv** %sv_any199, align 8
  %xgv_gp200 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %182, i32 0, i32 7
  %183 = load %struct.gp*, %struct.gp** %xgv_gp200, align 8
  %gp_sv201 = getelementptr inbounds %struct.gp, %struct.gp* %183, i32 0, i32 0
  %184 = load %struct.sv*, %struct.sv** %gp_sv201, align 8
  %call202 = call signext i8 @Perl_sv_2bool(%struct.sv* %184)
  %conv203 = sext i8 %call202 to i32
  %tobool204 = icmp ne i32 %conv203, 0
  br i1 %tobool204, label %if.end.209, label %if.then.205

if.then.205:                                      ; preds = %cond.false.198, %cond.true.190, %cond.true.175, %cond.false.167, %cond.true.166, %cond.true.140
  %185 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any206 = getelementptr inbounds %struct.gv, %struct.gv* %185, i32 0, i32 0
  %186 = load %struct.xpvgv*, %struct.xpvgv** %sv_any206, align 8
  %xgv_gp207 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %186, i32 0, i32 7
  %187 = load %struct.gp*, %struct.gp** %xgv_gp207, align 8
  %gp_sv208 = getelementptr inbounds %struct.gp, %struct.gp* %187, i32 0, i32 0
  %188 = load %struct.sv*, %struct.sv** %gp_sv208, align 8
  %189 = load %struct.sv*, %struct.sv** %errsv_save, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %188, %struct.sv* %189, i32 2)
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.205, %cond.false.198, %cond.true.190, %cond.true.175, %cond.false.167, %cond.true.166, %cond.true.140
  %190 = load %struct.sv*, %struct.sv** %errsv_save, align 8
  call void @Perl_sv_free(%struct.sv* %190)
  call void @Perl_pop_scope()
  %191 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %191, %struct.sv*** %sp211, align 8
  %192 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev213 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %192, i32 0, i32 5
  %193 = load %struct.stackinfo*, %struct.stackinfo** %si_prev213, align 8
  store %struct.stackinfo* %193, %struct.stackinfo** %prev, align 8
  %194 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool214 = icmp ne %struct.stackinfo* %194, null
  br i1 %tobool214, label %if.end.241, label %if.then.215

if.then.215:                                      ; preds = %if.end.209
  %195 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool216 = icmp ne %struct.gv* %195, null
  br i1 %tobool216, label %land.lhs.true.217, label %cond.false.238

land.lhs.true.217:                                ; preds = %if.then.215
  %196 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags218 = getelementptr inbounds %struct.gv, %struct.gv* %196, i32 0, i32 2
  %197 = load i32, i32* %sv_flags218, align 4
  %and219 = and i32 %197, 255
  %cmp220 = icmp eq i32 %and219, 13
  br i1 %cmp220, label %land.lhs.true.222, label %cond.false.238

land.lhs.true.222:                                ; preds = %land.lhs.true.217
  %198 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any223 = getelementptr inbounds %struct.gv, %struct.gv* %198, i32 0, i32 0
  %199 = load %struct.xpvgv*, %struct.xpvgv** %sv_any223, align 8
  %xgv_gp224 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %199, i32 0, i32 7
  %200 = load %struct.gp*, %struct.gp** %xgv_gp224, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %200, i32 0, i32 2
  %201 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool225 = icmp ne %struct.io* %201, null
  br i1 %tobool225, label %land.lhs.true.226, label %cond.false.238

land.lhs.true.226:                                ; preds = %land.lhs.true.222
  %202 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any227 = getelementptr inbounds %struct.gv, %struct.gv* %202, i32 0, i32 0
  %203 = load %struct.xpvgv*, %struct.xpvgv** %sv_any227, align 8
  %xgv_gp228 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %203, i32 0, i32 7
  %204 = load %struct.gp*, %struct.gp** %xgv_gp228, align 8
  %gp_io229 = getelementptr inbounds %struct.gp, %struct.gp* %204, i32 0, i32 2
  %205 = load %struct.io*, %struct.io** %gp_io229, align 8
  %sv_any230 = getelementptr inbounds %struct.io, %struct.io* %205, i32 0, i32 0
  %206 = load %struct.xpvio*, %struct.xpvio** %sv_any230, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %206, i32 0, i32 8
  %207 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool231 = icmp ne %struct._PerlIO** %207, null
  br i1 %tobool231, label %cond.true.232, label %cond.false.238

cond.true.232:                                    ; preds = %land.lhs.true.226
  %208 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any233 = getelementptr inbounds %struct.gv, %struct.gv* %208, i32 0, i32 0
  %209 = load %struct.xpvgv*, %struct.xpvgv** %sv_any233, align 8
  %xgv_gp234 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %209, i32 0, i32 7
  %210 = load %struct.gp*, %struct.gp** %xgv_gp234, align 8
  %gp_io235 = getelementptr inbounds %struct.gp, %struct.gp* %210, i32 0, i32 2
  %211 = load %struct.io*, %struct.io** %gp_io235, align 8
  %sv_any236 = getelementptr inbounds %struct.io, %struct.io* %211, i32 0, i32 0
  %212 = load %struct.xpvio*, %struct.xpvio** %sv_any236, align 8
  %xio_ofp237 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %212, i32 0, i32 8
  %213 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp237, align 8
  br label %cond.end

cond.false.238:                                   ; preds = %land.lhs.true.226, %land.lhs.true.222, %land.lhs.true.217, %if.then.215
  %call239 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end

cond.end:                                         ; preds = %cond.false.238, %cond.true.232
  %cond = phi %struct._PerlIO** [ %213, %cond.true.232 ], [ %call239, %cond.false.238 ]
  %call240 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.241

if.end.241:                                       ; preds = %cond.end, %if.end.209
  %214 = load %struct.sv**, %struct.sv*** %sp211, align 8
  %215 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast242 = ptrtoint %struct.sv** %214 to i64
  %sub.ptr.rhs.cast243 = ptrtoint %struct.sv** %215 to i64
  %sub.ptr.sub244 = sub i64 %sub.ptr.lhs.cast242, %sub.ptr.rhs.cast243
  %sub.ptr.div245 = sdiv exact i64 %sub.ptr.sub244, 8
  %216 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any246 = getelementptr inbounds %struct.av, %struct.av* %216, i32 0, i32 0
  %217 = load %struct.xpvav*, %struct.xpvav** %sv_any246, align 8
  %xav_fill247 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %217, i32 0, i32 1
  store i64 %sub.ptr.div245, i64* %xav_fill247, align 8
  %218 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack248 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %218, i32 0, i32 0
  %219 = load %struct.av*, %struct.av** %si_stack248, align 8
  %sv_any249 = getelementptr inbounds %struct.av, %struct.av* %219, i32 0, i32 0
  %220 = load %struct.xpvav*, %struct.xpvav** %sv_any249, align 8
  %xav_array250 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %220, i32 0, i32 0
  %221 = load i8*, i8** %xav_array250, align 8
  %222 = bitcast i8* %221 to %struct.sv**
  store %struct.sv** %222, %struct.sv*** @PL_stack_base, align 8
  %223 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %224 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack251 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %224, i32 0, i32 0
  %225 = load %struct.av*, %struct.av** %si_stack251, align 8
  %sv_any252 = getelementptr inbounds %struct.av, %struct.av* %225, i32 0, i32 0
  %226 = load %struct.xpvav*, %struct.xpvav** %sv_any252, align 8
  %xav_max253 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %226, i32 0, i32 2
  %227 = load i64, i64* %xav_max253, align 8
  %add.ptr254 = getelementptr inbounds %struct.sv*, %struct.sv** %223, i64 %227
  store %struct.sv** %add.ptr254, %struct.sv*** @PL_stack_max, align 8
  %228 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %229 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack255 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %229, i32 0, i32 0
  %230 = load %struct.av*, %struct.av** %si_stack255, align 8
  %sv_any256 = getelementptr inbounds %struct.av, %struct.av* %230, i32 0, i32 0
  %231 = load %struct.xpvav*, %struct.xpvav** %sv_any256, align 8
  %xav_fill257 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %231, i32 0, i32 1
  %232 = load i64, i64* %xav_fill257, align 8
  %add.ptr258 = getelementptr inbounds %struct.sv*, %struct.sv** %228, i64 %232
  store %struct.sv** %add.ptr258, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr258, %struct.sv*** %sp211, align 8
  %233 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack260 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %233, i32 0, i32 0
  %234 = load %struct.av*, %struct.av** %si_stack260, align 8
  store %struct.av* %234, %struct.av** @PL_curstack, align 8
  store %struct.av* %234, %struct.av** %tmp259
  %235 = load %struct.av*, %struct.av** %tmp259
  %236 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %236, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %236, %struct.stackinfo** %tmp261
  %237 = load %struct.stackinfo*, %struct.stackinfo** %tmp261
  %238 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cmp262 = icmp eq %struct.cop* %238, @PL_compiling
  br i1 %cmp262, label %if.then.264, label %if.end.282

if.then.264:                                      ; preds = %if.end.241
  %239 = load %struct.sv*, %struct.sv** %tokenbufsv, align 8
  %sv_flags267 = getelementptr inbounds %struct.sv, %struct.sv* %239, i32 0, i32 2
  %240 = load i32, i32* %sv_flags267, align 4
  %and268 = and i32 %240, 262144
  %cmp269 = icmp eq i32 %and268, 262144
  br i1 %cmp269, label %cond.true.271, label %cond.false.276

cond.true.271:                                    ; preds = %if.then.264
  %241 = load %struct.sv*, %struct.sv** %tokenbufsv, align 8
  %sv_any272 = getelementptr inbounds %struct.sv, %struct.sv* %241, i32 0, i32 0
  %242 = load i8*, i8** %sv_any272, align 8
  %243 = bitcast i8* %242 to %struct.xpv*
  %xpv_cur273 = getelementptr inbounds %struct.xpv, %struct.xpv* %243, i32 0, i32 1
  %244 = load i64, i64* %xpv_cur273, align 8
  store i64 %244, i64* %len, align 8
  %245 = load %struct.sv*, %struct.sv** %tokenbufsv, align 8
  %sv_any274 = getelementptr inbounds %struct.sv, %struct.sv* %245, i32 0, i32 0
  %246 = load i8*, i8** %sv_any274, align 8
  %247 = bitcast i8* %246 to %struct.xpv*
  %xpv_pv275 = getelementptr inbounds %struct.xpv, %struct.xpv* %247, i32 0, i32 0
  %248 = load i8*, i8** %xpv_pv275, align 8
  br label %cond.end.278

cond.false.276:                                   ; preds = %if.then.264
  %249 = load %struct.sv*, %struct.sv** %tokenbufsv, align 8
  %call277 = call i8* @Perl_sv_2pv_flags(%struct.sv* %249, i64* %len, i32 2)
  br label %cond.end.278

cond.end.278:                                     ; preds = %cond.false.276, %cond.true.271
  %cond279 = phi i8* [ %248, %cond.true.271 ], [ %call277, %cond.false.276 ]
  store i8* %cond279, i8** %pv, align 8
  %250 = load i8*, i8** %pv, align 8
  %251 = load i64, i64* %len, align 8
  %add = add i64 %251, 1
  %mul = mul i64 %add, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @PL_tokenbuf, i32 0, i32 0), i8* %250, i64 %mul, i32 1, i1 false)
  %252 = load i32, i32* @PL_hints, align 4
  %and280 = and i32 %252, 255
  %conv281 = trunc i32 %and280 to i8
  %253 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private = getelementptr inbounds %struct.cop, %struct.cop* %253, i32 0, i32 7
  store i8 %conv281, i8* %op_private, align 1
  br label %if.end.282

if.end.282:                                       ; preds = %cond.end.278, %if.end.241
  %254 = load %struct.sv*, %struct.sv** %retval1, align 8
  %sv_flags283 = getelementptr inbounds %struct.sv, %struct.sv* %254, i32 0, i32 2
  %255 = load i32, i32* %sv_flags283, align 4
  %and284 = and i32 %255, 524288
  %tobool285 = icmp ne i32 %and284, 0
  br i1 %tobool285, label %lor.lhs.false.286, label %if.then.292

lor.lhs.false.286:                                ; preds = %if.end.282
  %256 = load %struct.sv*, %struct.sv** %retval1, align 8
  %sv_any287 = getelementptr inbounds %struct.sv, %struct.sv* %256, i32 0, i32 0
  %257 = load i8*, i8** %sv_any287, align 8
  %258 = bitcast i8* %257 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %258, i32 0, i32 0
  %259 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_flags288 = getelementptr inbounds %struct.sv, %struct.sv* %259, i32 0, i32 2
  %260 = load i32, i32* %sv_flags288, align 4
  %and289 = and i32 %260, 255
  %cmp290 = icmp ne i32 %and289, 11
  br i1 %cmp290, label %if.then.292, label %if.end.298

if.then.292:                                      ; preds = %lor.lhs.false.286, %if.end.282
  %261 = load %struct.sv*, %struct.sv** %retval1, align 8
  %sv_flags293 = getelementptr inbounds %struct.sv, %struct.sv* %261, i32 0, i32 2
  %262 = load i32, i32* %sv_flags293, align 4
  %and294 = and i32 %262, 262144
  %tobool295 = icmp ne i32 %and294, 0
  br i1 %tobool295, label %if.then.296, label %if.end.297

if.then.296:                                      ; preds = %if.then.292
  %263 = load %struct.sv*, %struct.sv** %retval1, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.46, i32 0, i32 0), %struct.sv* %263)
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.296, %if.then.292
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.47, i32 0, i32 0))
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297, %lor.lhs.false.286
  %264 = load %struct.sv*, %struct.sv** %retval1, align 8
  ret %struct.sv* %264
}

; Function Attrs: nounwind uwtable
define i64 @Perl_swash_fetch(%struct.sv* %sv, i8* %ptr, i8 signext %do_utf8) #0 {
entry:
  %retval = alloca i64, align 8
  %sv.addr = alloca %struct.sv*, align 8
  %ptr.addr = alloca i8*, align 8
  %do_utf8.addr = alloca i8, align 1
  %hv = alloca %struct.hv*, align 8
  %klen = alloca i32, align 4
  %off = alloca i32, align 4
  %slen = alloca i64, align 8
  %needents = alloca i64, align 8
  %tmps = alloca i8*, align 8
  %bit = alloca i32, align 4
  %retval1 = alloca %struct.sv*, align 8
  %tmputf8 = alloca [2 x i8], align 1
  %c = alloca i64, align 8
  %svp = alloca %struct.sv**, align 8
  %sp = alloca %struct.sv**, align 8
  %code_point = alloca i64, align 8
  %errsv_save = alloca %struct.sv*, align 8
  %next = alloca %struct.stackinfo*, align 8
  %tmp = alloca %struct.av*, align 8
  %tmp100 = alloca i32, align 4
  %sp211 = alloca %struct.sv**, align 8
  %prev = alloca %struct.stackinfo*, align 8
  %tmp261 = alloca %struct.av*, align 8
  %tmp263 = alloca %struct.stackinfo*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8 %do_utf8, i8* %do_utf8.addr, align 1
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 0
  %1 = load i8*, i8** %sv_any, align 8
  %2 = bitcast i8* %1 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %2, i32 0, i32 0
  %3 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %4 = bitcast %struct.sv* %3 to %struct.hv*
  store %struct.hv* %4, %struct.hv** %hv, align 8
  store i8* null, i8** %tmps, align 8
  %5 = load i8*, i8** %ptr.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i64
  store i64 %conv, i64* %c, align 8
  %7 = load i8, i8* %do_utf8.addr, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %8 = load i64, i64* %c, align 8
  %cmp = icmp ult i64 %8, 128
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load i64, i64* %c, align 8
  %conv3 = trunc i64 %9 to i8
  %conv4 = zext i8 %conv3 to i32
  %shr = ashr i32 %conv4, 6
  %or = or i32 %shr, 8128
  %conv5 = trunc i32 %or to i8
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %tmputf8, i32 0, i64 0
  store i8 %conv5, i8* %arrayidx, align 1
  %10 = load i64, i64* %c, align 8
  %conv6 = trunc i64 %10 to i8
  %conv7 = zext i8 %conv6 to i32
  %and = and i32 %conv7, 63
  %or8 = or i32 %and, 128
  %conv9 = trunc i32 %or8 to i8
  %arrayidx10 = getelementptr inbounds [2 x i8], [2 x i8]* %tmputf8, i32 0, i64 1
  store i8 %conv9, i8* %arrayidx10, align 1
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %tmputf8, i32 0, i32 0
  store i8* %arraydecay, i8** %ptr.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load i8*, i8** %ptr.addr, align 8
  %12 = load i8, i8* %11, align 1
  %idxprom = zext i8 %12 to i64
  %arrayidx11 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %13 to i32
  %sub = sub nsw i32 %conv12, 1
  store i32 %sub, i32* %klen, align 4
  %14 = load i32, i32* %klen, align 4
  %idxprom13 = zext i32 %14 to i64
  %15 = load i8*, i8** %ptr.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %15, i64 %idxprom13
  %16 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %16 to i32
  store i32 %conv15, i32* %off, align 4
  %17 = load i32, i32* %klen, align 4
  %cmp16 = icmp eq i32 %17, 0
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end
  store i64 128, i64* %needents, align 8
  %18 = load i32, i32* %klen, align 4
  %idxprom19 = zext i32 %18 to i64
  %19 = load i8*, i8** %ptr.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %19, i64 %idxprom19
  %20 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %20 to i32
  store i32 %conv21, i32* %off, align 4
  br label %if.end.26

if.else:                                          ; preds = %if.end
  store i64 64, i64* %needents, align 8
  %21 = load i32, i32* %klen, align 4
  %idxprom22 = zext i32 %21 to i64
  %22 = load i8*, i8** %ptr.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %22, i64 %idxprom22
  %23 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %23 to i32
  %and25 = and i32 %conv24, 63
  store i32 %and25, i32* %off, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.18
  %24 = load %struct.hv*, %struct.hv** %hv, align 8
  %25 = load %struct.hv*, %struct.hv** @PL_last_swash_hv, align 8
  %cmp27 = icmp eq %struct.hv* %24, %25
  br i1 %cmp27, label %land.lhs.true.29, label %if.else.37

land.lhs.true.29:                                 ; preds = %if.end.26
  %26 = load i32, i32* %klen, align 4
  %27 = load i32, i32* @PL_last_swash_klen, align 4
  %cmp30 = icmp eq i32 %26, %27
  br i1 %cmp30, label %land.lhs.true.32, label %if.else.37

land.lhs.true.32:                                 ; preds = %land.lhs.true.29
  %28 = load i32, i32* %klen, align 4
  %tobool33 = icmp ne i32 %28, 0
  br i1 %tobool33, label %lor.lhs.false, label %if.then.36

lor.lhs.false:                                    ; preds = %land.lhs.true.32
  %29 = load i8*, i8** %ptr.addr, align 8
  %30 = load i32, i32* %klen, align 4
  %conv34 = zext i32 %30 to i64
  %call = call i32 @memcmp(i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @PL_last_swash_key, i32 0, i32 0), i64 %conv34)
  %tobool35 = icmp ne i32 %call, 0
  br i1 %tobool35, label %if.else.37, label %if.then.36

if.then.36:                                       ; preds = %lor.lhs.false, %land.lhs.true.32
  %31 = load i8*, i8** @PL_last_swash_tmps, align 8
  store i8* %31, i8** %tmps, align 8
  %32 = load i64, i64* @PL_last_swash_slen, align 8
  store i64 %32, i64* %slen, align 8
  br label %if.end.301

if.else.37:                                       ; preds = %lor.lhs.false, %land.lhs.true.29, %if.end.26
  %33 = load %struct.hv*, %struct.hv** %hv, align 8
  %34 = load i8*, i8** %ptr.addr, align 8
  %35 = load i32, i32* %klen, align 4
  %call38 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %33, i8* %34, i32 %35, i32 0)
  store %struct.sv** %call38, %struct.sv*** %svp, align 8
  %36 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool39 = icmp ne %struct.sv** %36, null
  br i1 %tobool39, label %lor.lhs.false.40, label %if.then.52

lor.lhs.false.40:                                 ; preds = %if.else.37
  %37 = load %struct.sv**, %struct.sv*** %svp, align 8
  %38 = load %struct.sv*, %struct.sv** %37, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 2
  %39 = load i32, i32* %sv_flags, align 4
  %and41 = and i32 %39, 262144
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %lor.lhs.false.43, label %if.then.52

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.40
  %40 = load %struct.sv**, %struct.sv*** %svp, align 8
  %41 = load %struct.sv*, %struct.sv** %40, align 8
  %sv_flags44 = getelementptr inbounds %struct.sv, %struct.sv* %41, i32 0, i32 2
  %42 = load i32, i32* %sv_flags44, align 4
  %and45 = and i32 %42, 262144
  %cmp46 = icmp eq i32 %and45, 262144
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.43
  %43 = load %struct.sv**, %struct.sv*** %svp, align 8
  %44 = load %struct.sv*, %struct.sv** %43, align 8
  %sv_any48 = getelementptr inbounds %struct.sv, %struct.sv* %44, i32 0, i32 0
  %45 = load i8*, i8** %sv_any48, align 8
  %46 = bitcast i8* %45 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %46, i32 0, i32 1
  %47 = load i64, i64* %xpv_cur, align 8
  store i64 %47, i64* %slen, align 8
  %48 = load %struct.sv**, %struct.sv*** %svp, align 8
  %49 = load %struct.sv*, %struct.sv** %48, align 8
  %sv_any49 = getelementptr inbounds %struct.sv, %struct.sv* %49, i32 0, i32 0
  %50 = load i8*, i8** %sv_any49, align 8
  %51 = bitcast i8* %50 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %51, i32 0, i32 0
  %52 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.43
  %53 = load %struct.sv**, %struct.sv*** %svp, align 8
  %54 = load %struct.sv*, %struct.sv** %53, align 8
  %call50 = call i8* @Perl_sv_2pv_flags(%struct.sv* %54, i64* %slen, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %52, %cond.true ], [ %call50, %cond.false ]
  store i8* %cond, i8** %tmps, align 8
  %tobool51 = icmp ne i8* %cond, null
  br i1 %tobool51, label %if.end.296, label %if.then.52

if.then.52:                                       ; preds = %cond.end, %lor.lhs.false.40, %if.else.37
  %55 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %55, %struct.sv*** %sp, align 8
  %56 = load i8*, i8** %ptr.addr, align 8
  %57 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %57, i32 0, i32 14
  %58 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp53 = icmp ne %struct.sv* %58, null
  br i1 %cmp53, label %land.lhs.true.55, label %lor.rhs

land.lhs.true.55:                                 ; preds = %if.then.52
  %59 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings56 = getelementptr inbounds %struct.cop, %struct.cop* %59, i32 0, i32 14
  %60 = load %struct.sv*, %struct.sv** %cop_warnings56, align 8
  %cmp57 = icmp ne %struct.sv* %60, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp57, label %land.lhs.true.59, label %lor.rhs

land.lhs.true.59:                                 ; preds = %land.lhs.true.55
  %61 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings60 = getelementptr inbounds %struct.cop, %struct.cop* %61, i32 0, i32 14
  %62 = load %struct.sv*, %struct.sv** %cop_warnings60, align 8
  %cmp61 = icmp eq %struct.sv* %62, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp61, label %lor.end, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %land.lhs.true.59
  %63 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings64 = getelementptr inbounds %struct.cop, %struct.cop* %63, i32 0, i32 14
  %64 = load %struct.sv*, %struct.sv** %cop_warnings64, align 8
  %sv_any65 = getelementptr inbounds %struct.sv, %struct.sv* %64, i32 0, i32 0
  %65 = load i8*, i8** %sv_any65, align 8
  %66 = bitcast i8* %65 to %struct.xpv*
  %xpv_pv66 = getelementptr inbounds %struct.xpv, %struct.xpv* %66, i32 0, i32 0
  %67 = load i8*, i8** %xpv_pv66, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %67, i64 11
  %68 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %68 to i32
  %and69 = and i32 %conv68, 1
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.63, %land.lhs.true.55, %if.then.52
  %69 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings71 = getelementptr inbounds %struct.cop, %struct.cop* %69, i32 0, i32 14
  %70 = load %struct.sv*, %struct.sv** %cop_warnings71, align 8
  %cmp72 = icmp eq %struct.sv* %70, null
  br i1 %cmp72, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %71 = load i8, i8* @PL_dowarn, align 1
  %conv74 = zext i8 %71 to i32
  %and75 = and i32 %conv74, 1
  %tobool76 = icmp ne i32 %and75, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %72 = phi i1 [ false, %lor.rhs ], [ %tobool76, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false.63, %land.lhs.true.59
  %73 = phi i1 [ true, %lor.lhs.false.63 ], [ true, %land.lhs.true.59 ], [ %72, %land.end ]
  %cond77 = select i1 %73, i32 0, i32 255
  %call78 = call i64 @Perl_utf8n_to_uvuni(i8* %56, i64 13, i64* null, i32 %cond77)
  store i64 %call78, i64* %code_point, align 8
  call void @Perl_push_scope()
  call void @Perl_save_int(i32* @PL_tmps_floor)
  %74 = load i32, i32* @PL_tmps_ix, align 4
  store i32 %74, i32* @PL_tmps_floor, align 4
  call void @Perl_save_re_context()
  %75 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %75, i32 0, i32 6
  %76 = load %struct.stackinfo*, %struct.stackinfo** %si_next, align 8
  store %struct.stackinfo* %76, %struct.stackinfo** %next, align 8
  %77 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %tobool79 = icmp ne %struct.stackinfo* %77, null
  br i1 %tobool79, label %if.end.83, label %if.then.80

if.then.80:                                       ; preds = %lor.end
  %call81 = call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13)
  store %struct.stackinfo* %call81, %struct.stackinfo** %next, align 8
  %78 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %79 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_prev = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %79, i32 0, i32 5
  store %struct.stackinfo* %78, %struct.stackinfo** %si_prev, align 8
  %80 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %81 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_next82 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %81, i32 0, i32 6
  store %struct.stackinfo* %80, %struct.stackinfo** %si_next82, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %lor.end
  %82 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_type = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %82, i32 0, i32 4
  store i32 2, i32* %si_type, align 4
  %83 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_cxix = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %83, i32 0, i32 2
  store i32 -1, i32* %si_cxix, align 4
  %84 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %84, i32 0, i32 0
  %85 = load %struct.av*, %struct.av** %si_stack, align 8
  %sv_any84 = getelementptr inbounds %struct.av, %struct.av* %85, i32 0, i32 0
  %86 = load %struct.xpvav*, %struct.xpvav** %sv_any84, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %86, i32 0, i32 1
  store i64 0, i64* %xav_fill, align 8
  %87 = load %struct.sv**, %struct.sv*** %sp, align 8
  %88 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %87 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %88 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %89 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any85 = getelementptr inbounds %struct.av, %struct.av* %89, i32 0, i32 0
  %90 = load %struct.xpvav*, %struct.xpvav** %sv_any85, align 8
  %xav_fill86 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %90, i32 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill86, align 8
  %91 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack87 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %91, i32 0, i32 0
  %92 = load %struct.av*, %struct.av** %si_stack87, align 8
  %sv_any88 = getelementptr inbounds %struct.av, %struct.av* %92, i32 0, i32 0
  %93 = load %struct.xpvav*, %struct.xpvav** %sv_any88, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %93, i32 0, i32 0
  %94 = load i8*, i8** %xav_array, align 8
  %95 = bitcast i8* %94 to %struct.sv**
  store %struct.sv** %95, %struct.sv*** @PL_stack_base, align 8
  %96 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %97 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack89 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %97, i32 0, i32 0
  %98 = load %struct.av*, %struct.av** %si_stack89, align 8
  %sv_any90 = getelementptr inbounds %struct.av, %struct.av* %98, i32 0, i32 0
  %99 = load %struct.xpvav*, %struct.xpvav** %sv_any90, align 8
  %xav_max = getelementptr inbounds %struct.xpvav, %struct.xpvav* %99, i32 0, i32 2
  %100 = load i64, i64* %xav_max, align 8
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %96, i64 %100
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8
  %101 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %102 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack91 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %102, i32 0, i32 0
  %103 = load %struct.av*, %struct.av** %si_stack91, align 8
  %sv_any92 = getelementptr inbounds %struct.av, %struct.av* %103, i32 0, i32 0
  %104 = load %struct.xpvav*, %struct.xpvav** %sv_any92, align 8
  %xav_fill93 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %104, i32 0, i32 1
  %105 = load i64, i64* %xav_fill93, align 8
  %add.ptr94 = getelementptr inbounds %struct.sv*, %struct.sv** %101, i64 %105
  store %struct.sv** %add.ptr94, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr94, %struct.sv*** %sp, align 8
  %106 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  %si_stack95 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %106, i32 0, i32 0
  %107 = load %struct.av*, %struct.av** %si_stack95, align 8
  store %struct.av* %107, %struct.av** @PL_curstack, align 8
  store %struct.av* %107, %struct.av** %tmp
  %108 = load %struct.av*, %struct.av** %tmp
  %109 = load %struct.stackinfo*, %struct.stackinfo** %next, align 8
  store %struct.stackinfo* %109, %struct.stackinfo** @PL_curstackinfo, align 8
  %110 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %111 = load i32*, i32** @PL_markstack_max, align 8
  %cmp96 = icmp eq i32* %incdec.ptr, %111
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.83
  call void @Perl_markstack_grow()
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %if.end.83
  %112 = load %struct.sv**, %struct.sv*** %sp, align 8
  %113 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast101 = ptrtoint %struct.sv** %112 to i64
  %sub.ptr.rhs.cast102 = ptrtoint %struct.sv** %113 to i64
  %sub.ptr.sub103 = sub i64 %sub.ptr.lhs.cast101, %sub.ptr.rhs.cast102
  %sub.ptr.div104 = sdiv exact i64 %sub.ptr.sub103, 8
  %conv105 = trunc i64 %sub.ptr.div104 to i32
  %114 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv105, i32* %114, align 4
  store i32 %conv105, i32* %tmp100
  %115 = load i32, i32* %tmp100
  %116 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %117 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast106 = ptrtoint %struct.sv** %116 to i64
  %sub.ptr.rhs.cast107 = ptrtoint %struct.sv** %117 to i64
  %sub.ptr.sub108 = sub i64 %sub.ptr.lhs.cast106, %sub.ptr.rhs.cast107
  %sub.ptr.div109 = sdiv exact i64 %sub.ptr.sub108, 8
  %cmp110 = icmp slt i64 %sub.ptr.div109, 3
  br i1 %cmp110, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.end.99
  %118 = load %struct.sv**, %struct.sv*** %sp, align 8
  %119 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call113 = call %struct.sv** @Perl_stack_grow(%struct.sv** %118, %struct.sv** %119, i32 3)
  store %struct.sv** %call113, %struct.sv*** %sp, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.end.99
  %120 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %121 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr115 = getelementptr inbounds %struct.sv*, %struct.sv** %121, i32 1
  store %struct.sv** %incdec.ptr115, %struct.sv*** %sp, align 8
  store %struct.sv* %120, %struct.sv** %incdec.ptr115, align 8
  %122 = load i32, i32* %klen, align 4
  %tobool116 = icmp ne i32 %122, 0
  br i1 %tobool116, label %cond.true.117, label %cond.false.120

cond.true.117:                                    ; preds = %if.end.114
  %123 = load i64, i64* %code_point, align 8
  %124 = load i64, i64* %needents, align 8
  %sub118 = sub i64 %124, 1
  %neg = xor i64 %sub118, -1
  %and119 = and i64 %123, %neg
  br label %cond.end.121

cond.false.120:                                   ; preds = %if.end.114
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.120, %cond.true.117
  %cond122 = phi i64 [ %and119, %cond.true.117 ], [ 0, %cond.false.120 ]
  %call123 = call %struct.sv* @Perl_newSViv(i64 %cond122)
  %call124 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call123)
  %125 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr125 = getelementptr inbounds %struct.sv*, %struct.sv** %125, i32 1
  store %struct.sv** %incdec.ptr125, %struct.sv*** %sp, align 8
  store %struct.sv* %call124, %struct.sv** %incdec.ptr125, align 8
  %126 = load i64, i64* %needents, align 8
  %call126 = call %struct.sv* @Perl_newSViv(i64 %126)
  %call127 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call126)
  %127 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr128 = getelementptr inbounds %struct.sv*, %struct.sv** %127, i32 1
  store %struct.sv** %incdec.ptr128, %struct.sv*** %sp, align 8
  store %struct.sv* %call127, %struct.sv** %incdec.ptr128, align 8
  %128 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %128, %struct.sv*** @PL_stack_sp, align 8
  %129 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any129 = getelementptr inbounds %struct.gv, %struct.gv* %129, i32 0, i32 0
  %130 = load %struct.xpvgv*, %struct.xpvgv** %sv_any129, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %130, i32 0, i32 7
  %131 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %131, i32 0, i32 0
  %132 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  %call130 = call %struct.sv* @Perl_newSVsv(%struct.sv* %132)
  store %struct.sv* %call130, %struct.sv** %errsv_save, align 8
  %call131 = call i32 @Perl_call_method(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i32 0)
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.then.133, label %if.else.136

if.then.133:                                      ; preds = %cond.end.121
  %133 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %incdec.ptr134 = getelementptr inbounds %struct.sv*, %struct.sv** %133, i32 -1
  store %struct.sv** %incdec.ptr134, %struct.sv*** @PL_stack_sp, align 8
  %134 = load %struct.sv*, %struct.sv** %133, align 8
  %call135 = call %struct.sv* @Perl_newSVsv(%struct.sv* %134)
  store %struct.sv* %call135, %struct.sv** %retval1, align 8
  br label %if.end.137

if.else.136:                                      ; preds = %cond.end.121
  store %struct.sv* @PL_sv_undef, %struct.sv** %retval1, align 8
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.136, %if.then.133
  %135 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any138 = getelementptr inbounds %struct.gv, %struct.gv* %135, i32 0, i32 0
  %136 = load %struct.xpvgv*, %struct.xpvgv** %sv_any138, align 8
  %xgv_gp139 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %136, i32 0, i32 7
  %137 = load %struct.gp*, %struct.gp** %xgv_gp139, align 8
  %gp_sv140 = getelementptr inbounds %struct.gp, %struct.gp* %137, i32 0, i32 0
  %138 = load %struct.sv*, %struct.sv** %gp_sv140, align 8
  %tobool141 = icmp ne %struct.sv* %138, null
  br i1 %tobool141, label %cond.false.143, label %cond.true.142

cond.true.142:                                    ; preds = %if.end.137
  br i1 false, label %if.end.209, label %if.then.205

cond.false.143:                                   ; preds = %if.end.137
  %139 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any144 = getelementptr inbounds %struct.gv, %struct.gv* %139, i32 0, i32 0
  %140 = load %struct.xpvgv*, %struct.xpvgv** %sv_any144, align 8
  %xgv_gp145 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %140, i32 0, i32 7
  %141 = load %struct.gp*, %struct.gp** %xgv_gp145, align 8
  %gp_sv146 = getelementptr inbounds %struct.gp, %struct.gp* %141, i32 0, i32 0
  %142 = load %struct.sv*, %struct.sv** %gp_sv146, align 8
  %sv_flags147 = getelementptr inbounds %struct.sv, %struct.sv* %142, i32 0, i32 2
  %143 = load i32, i32* %sv_flags147, align 4
  %and148 = and i32 %143, 262144
  %tobool149 = icmp ne i32 %and148, 0
  br i1 %tobool149, label %cond.true.150, label %cond.false.170

cond.true.150:                                    ; preds = %cond.false.143
  %144 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any151 = getelementptr inbounds %struct.gv, %struct.gv* %144, i32 0, i32 0
  %145 = load %struct.xpvgv*, %struct.xpvgv** %sv_any151, align 8
  %xgv_gp152 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %145, i32 0, i32 7
  %146 = load %struct.gp*, %struct.gp** %xgv_gp152, align 8
  %gp_sv153 = getelementptr inbounds %struct.gp, %struct.gp* %146, i32 0, i32 0
  %147 = load %struct.sv*, %struct.sv** %gp_sv153, align 8
  %sv_any154 = getelementptr inbounds %struct.sv, %struct.sv* %147, i32 0, i32 0
  %148 = load i8*, i8** %sv_any154, align 8
  %149 = bitcast i8* %148 to %struct.xpv*
  store %struct.xpv* %149, %struct.xpv** @PL_Xpv, align 8
  %tobool155 = icmp ne %struct.xpv* %149, null
  br i1 %tobool155, label %land.lhs.true.156, label %cond.false.169

land.lhs.true.156:                                ; preds = %cond.true.150
  %150 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur157 = getelementptr inbounds %struct.xpv, %struct.xpv* %150, i32 0, i32 1
  %151 = load i64, i64* %xpv_cur157, align 8
  %cmp158 = icmp ugt i64 %151, 1
  br i1 %cmp158, label %cond.true.168, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %land.lhs.true.156
  %152 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur161 = getelementptr inbounds %struct.xpv, %struct.xpv* %152, i32 0, i32 1
  %153 = load i64, i64* %xpv_cur161, align 8
  %tobool162 = icmp ne i64 %153, 0
  br i1 %tobool162, label %land.lhs.true.163, label %cond.false.169

land.lhs.true.163:                                ; preds = %lor.lhs.false.160
  %154 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv164 = getelementptr inbounds %struct.xpv, %struct.xpv* %154, i32 0, i32 0
  %155 = load i8*, i8** %xpv_pv164, align 8
  %156 = load i8, i8* %155, align 1
  %conv165 = sext i8 %156 to i32
  %cmp166 = icmp ne i32 %conv165, 48
  br i1 %cmp166, label %cond.true.168, label %cond.false.169

cond.true.168:                                    ; preds = %land.lhs.true.163, %land.lhs.true.156
  br i1 true, label %if.end.209, label %if.then.205

cond.false.169:                                   ; preds = %land.lhs.true.163, %lor.lhs.false.160, %cond.true.150
  br i1 false, label %if.end.209, label %if.then.205

cond.false.170:                                   ; preds = %cond.false.143
  %157 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any171 = getelementptr inbounds %struct.gv, %struct.gv* %157, i32 0, i32 0
  %158 = load %struct.xpvgv*, %struct.xpvgv** %sv_any171, align 8
  %xgv_gp172 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %158, i32 0, i32 7
  %159 = load %struct.gp*, %struct.gp** %xgv_gp172, align 8
  %gp_sv173 = getelementptr inbounds %struct.gp, %struct.gp* %159, i32 0, i32 0
  %160 = load %struct.sv*, %struct.sv** %gp_sv173, align 8
  %sv_flags174 = getelementptr inbounds %struct.sv, %struct.sv* %160, i32 0, i32 2
  %161 = load i32, i32* %sv_flags174, align 4
  %and175 = and i32 %161, 65536
  %tobool176 = icmp ne i32 %and175, 0
  br i1 %tobool176, label %cond.true.177, label %cond.false.184

cond.true.177:                                    ; preds = %cond.false.170
  %162 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any178 = getelementptr inbounds %struct.gv, %struct.gv* %162, i32 0, i32 0
  %163 = load %struct.xpvgv*, %struct.xpvgv** %sv_any178, align 8
  %xgv_gp179 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %163, i32 0, i32 7
  %164 = load %struct.gp*, %struct.gp** %xgv_gp179, align 8
  %gp_sv180 = getelementptr inbounds %struct.gp, %struct.gp* %164, i32 0, i32 0
  %165 = load %struct.sv*, %struct.sv** %gp_sv180, align 8
  %sv_any181 = getelementptr inbounds %struct.sv, %struct.sv* %165, i32 0, i32 0
  %166 = load i8*, i8** %sv_any181, align 8
  %167 = bitcast i8* %166 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %167, i32 0, i32 3
  %168 = load i64, i64* %xiv_iv, align 8
  %cmp182 = icmp ne i64 %168, 0
  br i1 %cmp182, label %if.end.209, label %if.then.205

cond.false.184:                                   ; preds = %cond.false.170
  %169 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any185 = getelementptr inbounds %struct.gv, %struct.gv* %169, i32 0, i32 0
  %170 = load %struct.xpvgv*, %struct.xpvgv** %sv_any185, align 8
  %xgv_gp186 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %170, i32 0, i32 7
  %171 = load %struct.gp*, %struct.gp** %xgv_gp186, align 8
  %gp_sv187 = getelementptr inbounds %struct.gp, %struct.gp* %171, i32 0, i32 0
  %172 = load %struct.sv*, %struct.sv** %gp_sv187, align 8
  %sv_flags188 = getelementptr inbounds %struct.sv, %struct.sv* %172, i32 0, i32 2
  %173 = load i32, i32* %sv_flags188, align 4
  %and189 = and i32 %173, 131072
  %tobool190 = icmp ne i32 %and189, 0
  br i1 %tobool190, label %cond.true.191, label %cond.false.198

cond.true.191:                                    ; preds = %cond.false.184
  %174 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any192 = getelementptr inbounds %struct.gv, %struct.gv* %174, i32 0, i32 0
  %175 = load %struct.xpvgv*, %struct.xpvgv** %sv_any192, align 8
  %xgv_gp193 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %175, i32 0, i32 7
  %176 = load %struct.gp*, %struct.gp** %xgv_gp193, align 8
  %gp_sv194 = getelementptr inbounds %struct.gp, %struct.gp* %176, i32 0, i32 0
  %177 = load %struct.sv*, %struct.sv** %gp_sv194, align 8
  %sv_any195 = getelementptr inbounds %struct.sv, %struct.sv* %177, i32 0, i32 0
  %178 = load i8*, i8** %sv_any195, align 8
  %179 = bitcast i8* %178 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %179, i32 0, i32 4
  %180 = load double, double* %xnv_nv, align 8
  %cmp196 = fcmp une double %180, 0.000000e+00
  br i1 %cmp196, label %if.end.209, label %if.then.205

cond.false.198:                                   ; preds = %cond.false.184
  %181 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any199 = getelementptr inbounds %struct.gv, %struct.gv* %181, i32 0, i32 0
  %182 = load %struct.xpvgv*, %struct.xpvgv** %sv_any199, align 8
  %xgv_gp200 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %182, i32 0, i32 7
  %183 = load %struct.gp*, %struct.gp** %xgv_gp200, align 8
  %gp_sv201 = getelementptr inbounds %struct.gp, %struct.gp* %183, i32 0, i32 0
  %184 = load %struct.sv*, %struct.sv** %gp_sv201, align 8
  %call202 = call signext i8 @Perl_sv_2bool(%struct.sv* %184)
  %conv203 = sext i8 %call202 to i32
  %tobool204 = icmp ne i32 %conv203, 0
  br i1 %tobool204, label %if.end.209, label %if.then.205

if.then.205:                                      ; preds = %cond.false.198, %cond.true.191, %cond.true.177, %cond.false.169, %cond.true.168, %cond.true.142
  %185 = load %struct.gv*, %struct.gv** @PL_errgv, align 8
  %sv_any206 = getelementptr inbounds %struct.gv, %struct.gv* %185, i32 0, i32 0
  %186 = load %struct.xpvgv*, %struct.xpvgv** %sv_any206, align 8
  %xgv_gp207 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %186, i32 0, i32 7
  %187 = load %struct.gp*, %struct.gp** %xgv_gp207, align 8
  %gp_sv208 = getelementptr inbounds %struct.gp, %struct.gp* %187, i32 0, i32 0
  %188 = load %struct.sv*, %struct.sv** %gp_sv208, align 8
  %189 = load %struct.sv*, %struct.sv** %errsv_save, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %188, %struct.sv* %189, i32 2)
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.205, %cond.false.198, %cond.true.191, %cond.true.177, %cond.false.169, %cond.true.168, %cond.true.142
  %190 = load %struct.sv*, %struct.sv** %errsv_save, align 8
  call void @Perl_sv_free(%struct.sv* %190)
  %191 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %191, %struct.sv*** %sp211, align 8
  %192 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_prev213 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %192, i32 0, i32 5
  %193 = load %struct.stackinfo*, %struct.stackinfo** %si_prev213, align 8
  store %struct.stackinfo* %193, %struct.stackinfo** %prev, align 8
  %194 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %tobool214 = icmp ne %struct.stackinfo* %194, null
  br i1 %tobool214, label %if.end.243, label %if.then.215

if.then.215:                                      ; preds = %if.end.209
  %195 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %tobool216 = icmp ne %struct.gv* %195, null
  br i1 %tobool216, label %land.lhs.true.217, label %cond.false.238

land.lhs.true.217:                                ; preds = %if.then.215
  %196 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_flags218 = getelementptr inbounds %struct.gv, %struct.gv* %196, i32 0, i32 2
  %197 = load i32, i32* %sv_flags218, align 4
  %and219 = and i32 %197, 255
  %cmp220 = icmp eq i32 %and219, 13
  br i1 %cmp220, label %land.lhs.true.222, label %cond.false.238

land.lhs.true.222:                                ; preds = %land.lhs.true.217
  %198 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any223 = getelementptr inbounds %struct.gv, %struct.gv* %198, i32 0, i32 0
  %199 = load %struct.xpvgv*, %struct.xpvgv** %sv_any223, align 8
  %xgv_gp224 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %199, i32 0, i32 7
  %200 = load %struct.gp*, %struct.gp** %xgv_gp224, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %200, i32 0, i32 2
  %201 = load %struct.io*, %struct.io** %gp_io, align 8
  %tobool225 = icmp ne %struct.io* %201, null
  br i1 %tobool225, label %land.lhs.true.226, label %cond.false.238

land.lhs.true.226:                                ; preds = %land.lhs.true.222
  %202 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any227 = getelementptr inbounds %struct.gv, %struct.gv* %202, i32 0, i32 0
  %203 = load %struct.xpvgv*, %struct.xpvgv** %sv_any227, align 8
  %xgv_gp228 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %203, i32 0, i32 7
  %204 = load %struct.gp*, %struct.gp** %xgv_gp228, align 8
  %gp_io229 = getelementptr inbounds %struct.gp, %struct.gp* %204, i32 0, i32 2
  %205 = load %struct.io*, %struct.io** %gp_io229, align 8
  %sv_any230 = getelementptr inbounds %struct.io, %struct.io* %205, i32 0, i32 0
  %206 = load %struct.xpvio*, %struct.xpvio** %sv_any230, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %206, i32 0, i32 8
  %207 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  %tobool231 = icmp ne %struct._PerlIO** %207, null
  br i1 %tobool231, label %cond.true.232, label %cond.false.238

cond.true.232:                                    ; preds = %land.lhs.true.226
  %208 = load %struct.gv*, %struct.gv** @PL_stderrgv, align 8
  %sv_any233 = getelementptr inbounds %struct.gv, %struct.gv* %208, i32 0, i32 0
  %209 = load %struct.xpvgv*, %struct.xpvgv** %sv_any233, align 8
  %xgv_gp234 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %209, i32 0, i32 7
  %210 = load %struct.gp*, %struct.gp** %xgv_gp234, align 8
  %gp_io235 = getelementptr inbounds %struct.gp, %struct.gp* %210, i32 0, i32 2
  %211 = load %struct.io*, %struct.io** %gp_io235, align 8
  %sv_any236 = getelementptr inbounds %struct.io, %struct.io* %211, i32 0, i32 0
  %212 = load %struct.xpvio*, %struct.xpvio** %sv_any236, align 8
  %xio_ofp237 = getelementptr inbounds %struct.xpvio, %struct.xpvio* %212, i32 0, i32 8
  %213 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp237, align 8
  br label %cond.end.240

cond.false.238:                                   ; preds = %land.lhs.true.226, %land.lhs.true.222, %land.lhs.true.217, %if.then.215
  %call239 = call %struct._PerlIO** @Perl_PerlIO_stderr()
  br label %cond.end.240

cond.end.240:                                     ; preds = %cond.false.238, %cond.true.232
  %cond241 = phi %struct._PerlIO** [ %213, %cond.true.232 ], [ %call239, %cond.false.238 ]
  %call242 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %cond241, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0))
  call void @Perl_my_exit(i32 1)
  br label %if.end.243

if.end.243:                                       ; preds = %cond.end.240, %if.end.209
  %214 = load %struct.sv**, %struct.sv*** %sp211, align 8
  %215 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast244 = ptrtoint %struct.sv** %214 to i64
  %sub.ptr.rhs.cast245 = ptrtoint %struct.sv** %215 to i64
  %sub.ptr.sub246 = sub i64 %sub.ptr.lhs.cast244, %sub.ptr.rhs.cast245
  %sub.ptr.div247 = sdiv exact i64 %sub.ptr.sub246, 8
  %216 = load %struct.av*, %struct.av** @PL_curstack, align 8
  %sv_any248 = getelementptr inbounds %struct.av, %struct.av* %216, i32 0, i32 0
  %217 = load %struct.xpvav*, %struct.xpvav** %sv_any248, align 8
  %xav_fill249 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %217, i32 0, i32 1
  store i64 %sub.ptr.div247, i64* %xav_fill249, align 8
  %218 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack250 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %218, i32 0, i32 0
  %219 = load %struct.av*, %struct.av** %si_stack250, align 8
  %sv_any251 = getelementptr inbounds %struct.av, %struct.av* %219, i32 0, i32 0
  %220 = load %struct.xpvav*, %struct.xpvav** %sv_any251, align 8
  %xav_array252 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %220, i32 0, i32 0
  %221 = load i8*, i8** %xav_array252, align 8
  %222 = bitcast i8* %221 to %struct.sv**
  store %struct.sv** %222, %struct.sv*** @PL_stack_base, align 8
  %223 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %224 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack253 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %224, i32 0, i32 0
  %225 = load %struct.av*, %struct.av** %si_stack253, align 8
  %sv_any254 = getelementptr inbounds %struct.av, %struct.av* %225, i32 0, i32 0
  %226 = load %struct.xpvav*, %struct.xpvav** %sv_any254, align 8
  %xav_max255 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %226, i32 0, i32 2
  %227 = load i64, i64* %xav_max255, align 8
  %add.ptr256 = getelementptr inbounds %struct.sv*, %struct.sv** %223, i64 %227
  store %struct.sv** %add.ptr256, %struct.sv*** @PL_stack_max, align 8
  %228 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %229 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack257 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %229, i32 0, i32 0
  %230 = load %struct.av*, %struct.av** %si_stack257, align 8
  %sv_any258 = getelementptr inbounds %struct.av, %struct.av* %230, i32 0, i32 0
  %231 = load %struct.xpvav*, %struct.xpvav** %sv_any258, align 8
  %xav_fill259 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %231, i32 0, i32 1
  %232 = load i64, i64* %xav_fill259, align 8
  %add.ptr260 = getelementptr inbounds %struct.sv*, %struct.sv** %228, i64 %232
  store %struct.sv** %add.ptr260, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %add.ptr260, %struct.sv*** %sp211, align 8
  %233 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  %si_stack262 = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %233, i32 0, i32 0
  %234 = load %struct.av*, %struct.av** %si_stack262, align 8
  store %struct.av* %234, %struct.av** @PL_curstack, align 8
  store %struct.av* %234, %struct.av** %tmp261
  %235 = load %struct.av*, %struct.av** %tmp261
  %236 = load %struct.stackinfo*, %struct.stackinfo** %prev, align 8
  store %struct.stackinfo* %236, %struct.stackinfo** @PL_curstackinfo, align 8
  store %struct.stackinfo* %236, %struct.stackinfo** %tmp263
  %237 = load %struct.stackinfo*, %struct.stackinfo** %tmp263
  %238 = load i32, i32* @PL_tmps_ix, align 4
  %239 = load i32, i32* @PL_tmps_floor, align 4
  %cmp264 = icmp sgt i32 %238, %239
  br i1 %cmp264, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %if.end.243
  call void @Perl_free_tmps()
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.266, %if.end.243
  call void @Perl_pop_scope()
  %240 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cmp268 = icmp eq %struct.cop* %240, @PL_compiling
  br i1 %cmp268, label %if.then.270, label %if.end.273

if.then.270:                                      ; preds = %if.end.267
  %241 = load i32, i32* @PL_hints, align 4
  %and271 = and i32 %241, 255
  %conv272 = trunc i32 %and271 to i8
  %242 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private = getelementptr inbounds %struct.cop, %struct.cop* %242, i32 0, i32 7
  store i8 %conv272, i8* %op_private, align 1
  br label %if.end.273

if.end.273:                                       ; preds = %if.then.270, %if.end.267
  %243 = load %struct.hv*, %struct.hv** %hv, align 8
  %244 = load i8*, i8** %ptr.addr, align 8
  %245 = load i32, i32* %klen, align 4
  %246 = load %struct.sv*, %struct.sv** %retval1, align 8
  %call274 = call %struct.sv** @Perl_hv_store(%struct.hv* %243, i8* %244, i32 %245, %struct.sv* %246, i32 0)
  store %struct.sv** %call274, %struct.sv*** %svp, align 8
  %247 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool275 = icmp ne %struct.sv** %247, null
  br i1 %tobool275, label %lor.lhs.false.276, label %if.then.294

lor.lhs.false.276:                                ; preds = %if.end.273
  %248 = load %struct.sv**, %struct.sv*** %svp, align 8
  %249 = load %struct.sv*, %struct.sv** %248, align 8
  %sv_flags277 = getelementptr inbounds %struct.sv, %struct.sv* %249, i32 0, i32 2
  %250 = load i32, i32* %sv_flags277, align 4
  %and278 = and i32 %250, 262144
  %cmp279 = icmp eq i32 %and278, 262144
  br i1 %cmp279, label %cond.true.281, label %cond.false.286

cond.true.281:                                    ; preds = %lor.lhs.false.276
  %251 = load %struct.sv**, %struct.sv*** %svp, align 8
  %252 = load %struct.sv*, %struct.sv** %251, align 8
  %sv_any282 = getelementptr inbounds %struct.sv, %struct.sv* %252, i32 0, i32 0
  %253 = load i8*, i8** %sv_any282, align 8
  %254 = bitcast i8* %253 to %struct.xpv*
  %xpv_cur283 = getelementptr inbounds %struct.xpv, %struct.xpv* %254, i32 0, i32 1
  %255 = load i64, i64* %xpv_cur283, align 8
  store i64 %255, i64* %slen, align 8
  %256 = load %struct.sv**, %struct.sv*** %svp, align 8
  %257 = load %struct.sv*, %struct.sv** %256, align 8
  %sv_any284 = getelementptr inbounds %struct.sv, %struct.sv* %257, i32 0, i32 0
  %258 = load i8*, i8** %sv_any284, align 8
  %259 = bitcast i8* %258 to %struct.xpv*
  %xpv_pv285 = getelementptr inbounds %struct.xpv, %struct.xpv* %259, i32 0, i32 0
  %260 = load i8*, i8** %xpv_pv285, align 8
  br label %cond.end.288

cond.false.286:                                   ; preds = %lor.lhs.false.276
  %261 = load %struct.sv**, %struct.sv*** %svp, align 8
  %262 = load %struct.sv*, %struct.sv** %261, align 8
  %call287 = call i8* @Perl_sv_2pv_flags(%struct.sv* %262, i64* %slen, i32 2)
  br label %cond.end.288

cond.end.288:                                     ; preds = %cond.false.286, %cond.true.281
  %cond289 = phi i8* [ %260, %cond.true.281 ], [ %call287, %cond.false.286 ]
  store i8* %cond289, i8** %tmps, align 8
  %tobool290 = icmp ne i8* %cond289, null
  br i1 %tobool290, label %lor.lhs.false.291, label %if.then.294

lor.lhs.false.291:                                ; preds = %cond.end.288
  %263 = load i64, i64* %slen, align 8
  %shl = shl i64 %263, 3
  %264 = load i64, i64* %needents, align 8
  %cmp292 = icmp ult i64 %shl, %264
  br i1 %cmp292, label %if.then.294, label %if.end.295

if.then.294:                                      ; preds = %lor.lhs.false.291, %cond.end.288, %if.end.273
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.295

if.end.295:                                       ; preds = %if.then.294, %lor.lhs.false.291
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %cond.end
  %265 = load %struct.hv*, %struct.hv** %hv, align 8
  store %struct.hv* %265, %struct.hv** @PL_last_swash_hv, align 8
  %266 = load i32, i32* %klen, align 4
  store i32 %266, i32* @PL_last_swash_klen, align 4
  %267 = load i8*, i8** %tmps, align 8
  store i8* %267, i8** @PL_last_swash_tmps, align 8
  %268 = load i64, i64* %slen, align 8
  store i64 %268, i64* @PL_last_swash_slen, align 8
  %269 = load i32, i32* %klen, align 4
  %tobool297 = icmp ne i32 %269, 0
  br i1 %tobool297, label %if.then.298, label %if.end.300

if.then.298:                                      ; preds = %if.end.296
  %270 = load i8*, i8** %ptr.addr, align 8
  %271 = load i32, i32* %klen, align 4
  %conv299 = zext i32 %271 to i64
  %mul = mul i64 %conv299, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @PL_last_swash_key, i32 0, i32 0), i8* %270, i64 %mul, i32 1, i1 false)
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.298, %if.end.296
  br label %if.end.301

if.end.301:                                       ; preds = %if.end.300, %if.then.36
  %272 = load i64, i64* %slen, align 8
  %shl302 = shl i64 %272, 3
  %273 = load i64, i64* %needents, align 8
  %div = udiv i64 %shl302, %273
  %conv303 = trunc i64 %div to i32
  switch i32 %conv303, label %sw.epilog [
    i32 1, label %sw.bb
    i32 8, label %sw.bb.314
    i32 16, label %sw.bb.318
    i32 32, label %sw.bb.329
  ]

sw.bb:                                            ; preds = %if.end.301
  %274 = load i32, i32* %off, align 4
  %and304 = and i32 %274, 7
  %shl305 = shl i32 1, %and304
  store i32 %shl305, i32* %bit, align 4
  %275 = load i32, i32* %off, align 4
  %shr306 = lshr i32 %275, 3
  store i32 %shr306, i32* %off, align 4
  %276 = load i32, i32* %off, align 4
  %idxprom307 = zext i32 %276 to i64
  %277 = load i8*, i8** %tmps, align 8
  %arrayidx308 = getelementptr inbounds i8, i8* %277, i64 %idxprom307
  %278 = load i8, i8* %arrayidx308, align 1
  %conv309 = zext i8 %278 to i32
  %279 = load i32, i32* %bit, align 4
  %and310 = and i32 %conv309, %279
  %cmp311 = icmp ne i32 %and310, 0
  %conv312 = zext i1 %cmp311 to i32
  %conv313 = sext i32 %conv312 to i64
  store i64 %conv313, i64* %retval
  br label %return

sw.bb.314:                                        ; preds = %if.end.301
  %280 = load i32, i32* %off, align 4
  %idxprom315 = zext i32 %280 to i64
  %281 = load i8*, i8** %tmps, align 8
  %arrayidx316 = getelementptr inbounds i8, i8* %281, i64 %idxprom315
  %282 = load i8, i8* %arrayidx316, align 1
  %conv317 = zext i8 %282 to i64
  store i64 %conv317, i64* %retval
  br label %return

sw.bb.318:                                        ; preds = %if.end.301
  %283 = load i32, i32* %off, align 4
  %shl319 = shl i32 %283, 1
  store i32 %shl319, i32* %off, align 4
  %284 = load i32, i32* %off, align 4
  %idxprom320 = zext i32 %284 to i64
  %285 = load i8*, i8** %tmps, align 8
  %arrayidx321 = getelementptr inbounds i8, i8* %285, i64 %idxprom320
  %286 = load i8, i8* %arrayidx321, align 1
  %conv322 = zext i8 %286 to i32
  %shl323 = shl i32 %conv322, 8
  %287 = load i32, i32* %off, align 4
  %add = add i32 %287, 1
  %idxprom324 = zext i32 %add to i64
  %288 = load i8*, i8** %tmps, align 8
  %arrayidx325 = getelementptr inbounds i8, i8* %288, i64 %idxprom324
  %289 = load i8, i8* %arrayidx325, align 1
  %conv326 = zext i8 %289 to i32
  %add327 = add nsw i32 %shl323, %conv326
  %conv328 = sext i32 %add327 to i64
  store i64 %conv328, i64* %retval
  br label %return

sw.bb.329:                                        ; preds = %if.end.301
  %290 = load i32, i32* %off, align 4
  %shl330 = shl i32 %290, 2
  store i32 %shl330, i32* %off, align 4
  %291 = load i32, i32* %off, align 4
  %idxprom331 = zext i32 %291 to i64
  %292 = load i8*, i8** %tmps, align 8
  %arrayidx332 = getelementptr inbounds i8, i8* %292, i64 %idxprom331
  %293 = load i8, i8* %arrayidx332, align 1
  %conv333 = zext i8 %293 to i32
  %shl334 = shl i32 %conv333, 24
  %294 = load i32, i32* %off, align 4
  %add335 = add i32 %294, 1
  %idxprom336 = zext i32 %add335 to i64
  %295 = load i8*, i8** %tmps, align 8
  %arrayidx337 = getelementptr inbounds i8, i8* %295, i64 %idxprom336
  %296 = load i8, i8* %arrayidx337, align 1
  %conv338 = zext i8 %296 to i32
  %shl339 = shl i32 %conv338, 16
  %add340 = add nsw i32 %shl334, %shl339
  %297 = load i32, i32* %off, align 4
  %add341 = add i32 %297, 2
  %idxprom342 = zext i32 %add341 to i64
  %298 = load i8*, i8** %tmps, align 8
  %arrayidx343 = getelementptr inbounds i8, i8* %298, i64 %idxprom342
  %299 = load i8, i8* %arrayidx343, align 1
  %conv344 = zext i8 %299 to i32
  %shl345 = shl i32 %conv344, 8
  %add346 = add nsw i32 %add340, %shl345
  %300 = load i32, i32* %off, align 4
  %add347 = add i32 %300, 3
  %idxprom348 = zext i32 %add347 to i64
  %301 = load i8*, i8** %tmps, align 8
  %arrayidx349 = getelementptr inbounds i8, i8* %301, i64 %idxprom348
  %302 = load i8, i8* %arrayidx349, align 1
  %conv350 = zext i8 %302 to i32
  %add351 = add nsw i32 %add346, %conv350
  %conv352 = sext i32 %add351 to i64
  store i64 %conv352, i64* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.301
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i32 0, i32 0))
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.329, %sw.bb.318, %sw.bb.314, %sw.bb
  %303 = load i64, i64* %retval
  ret i64 %303
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_utf8_idcont(i8* %p) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 95
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8
  %call = call i64 @Perl_is_utf8_char(i8* %2)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i8 0, i8* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct.sv*, %struct.sv** @PL_utf8_idcont, align 8
  %tobool4 = icmp ne %struct.sv* %3, null
  br i1 %tobool4, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  %call6 = call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), %struct.sv* @PL_sv_undef, i32 0, i32 0)
  store %struct.sv* %call6, %struct.sv** @PL_utf8_idcont, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  %4 = load %struct.sv*, %struct.sv** @PL_utf8_idcont, align 8
  %5 = load i8*, i8** %p.addr, align 8
  %call8 = call i64 @Perl_swash_fetch(%struct.sv* %4, i8* %5, i8 signext 1)
  %cmp9 = icmp ne i64 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %conv11 = trunc i32 %conv10 to i8
  store i8 %conv11, i8* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.2, %if.then
  %6 = load i8, i8* %retval
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_is_utf8_mark(i8* %p) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call i64 @Perl_is_utf8_char(i8* %0)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** @PL_utf8_mark, align 8
  %tobool1 = icmp ne %struct.sv* %1, null
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), %struct.sv* @PL_sv_undef, i32 0, i32 0)
  store %struct.sv* %call3, %struct.sv** @PL_utf8_mark, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %2 = load %struct.sv*, %struct.sv** @PL_utf8_mark, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %call5 = call i64 @Perl_swash_fetch(%struct.sv* %2, i8* %3, i8 signext 1)
  %cmp = icmp ne i64 %call5, 0
  %conv = zext i1 %cmp to i32
  %conv6 = trunc i32 %conv to i8
  store i8 %conv6, i8* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %4 = load i8, i8* %retval
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define i64 @Perl_to_utf8_case(i8* %p, i8* %ustrp, i64* %lenp, %struct.sv** %swashp, i8* %normal, i8* %special) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %ustrp.addr = alloca i8*, align 8
  %lenp.addr = alloca i64*, align 8
  %swashp.addr = alloca %struct.sv**, align 8
  %normal.addr = alloca i8*, align 8
  %special.addr = alloca i8*, align 8
  %uv0 = alloca i64, align 8
  %uv1 = alloca i64, align 8
  %tmpbuf = alloca [7 x i8], align 1
  %len = alloca i64, align 8
  %hv = alloca %struct.hv*, align 8
  %svp = alloca %struct.sv**, align 8
  %s = alloca i8*, align 8
  %uv2 = alloca i64, align 8
  %uv3 = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %ustrp, i8** %ustrp.addr, align 8
  store i64* %lenp, i64** %lenp.addr, align 8
  store %struct.sv** %swashp, %struct.sv*** %swashp.addr, align 8
  store i8* %normal, i8** %normal.addr, align 8
  store i8* %special, i8** %special.addr, align 8
  store i64 0, i64* %len, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call i64 @Perl_utf8_to_uvchr(i8* %0, i64* null)
  store i64 %call, i64* %uv0, align 8
  %1 = load i64, i64* %uv0, align 8
  store i64 %1, i64* %uv1, align 8
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %tmpbuf, i32 0, i32 0
  %2 = load i64, i64* %uv1, align 8
  %call1 = call i8* @Perl_uvuni_to_utf8(i8* %arraydecay, i64 %2)
  %3 = load %struct.sv**, %struct.sv*** %swashp.addr, align 8
  %4 = load %struct.sv*, %struct.sv** %3, align 8
  %tobool = icmp ne %struct.sv* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %normal.addr, align 8
  %call2 = call %struct.sv* @Perl_swash_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* %5, %struct.sv* @PL_sv_undef, i32 4, i32 0)
  %6 = load %struct.sv**, %struct.sv*** %swashp.addr, align 8
  store %struct.sv* %call2, %struct.sv** %6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %special.addr, align 8
  %tobool3 = icmp ne i8* %7, null
  br i1 %tobool3, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %if.end
  %8 = load i64, i64* %uv1, align 8
  %cmp = icmp eq i64 %8, 223
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = load i64, i64* %uv1, align 8
  %cmp4 = icmp ugt i64 %9, 255
  br i1 %cmp4, label %if.then.5, label %if.end.55

if.then.5:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %10 = load i8*, i8** %special.addr, align 8
  %call6 = call %struct.hv* @Perl_get_hv(i8* %10, i32 0)
  store %struct.hv* %call6, %struct.hv** %hv, align 8
  %tobool7 = icmp ne %struct.hv* %call6, null
  br i1 %tobool7, label %land.lhs.true.8, label %if.end.54

land.lhs.true.8:                                  ; preds = %if.then.5
  %11 = load %struct.hv*, %struct.hv** %hv, align 8
  %arraydecay9 = getelementptr inbounds [7 x i8], [7 x i8]* %tmpbuf, i32 0, i32 0
  %12 = load i64, i64* %uv1, align 8
  %cmp10 = icmp ult i64 %12, 128
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.8
  br label %cond.end.36

cond.false:                                       ; preds = %land.lhs.true.8
  %13 = load i64, i64* %uv1, align 8
  %cmp11 = icmp ult i64 %13, 2048
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.false
  br label %cond.end.34

cond.false.13:                                    ; preds = %cond.false
  %14 = load i64, i64* %uv1, align 8
  %cmp14 = icmp ult i64 %14, 65536
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.false.13
  br label %cond.end.32

cond.false.16:                                    ; preds = %cond.false.13
  %15 = load i64, i64* %uv1, align 8
  %cmp17 = icmp ult i64 %15, 2097152
  br i1 %cmp17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.false.16
  br label %cond.end.30

cond.false.19:                                    ; preds = %cond.false.16
  %16 = load i64, i64* %uv1, align 8
  %cmp20 = icmp ult i64 %16, 67108864
  br i1 %cmp20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.false.19
  br label %cond.end.28

cond.false.22:                                    ; preds = %cond.false.19
  %17 = load i64, i64* %uv1, align 8
  %cmp23 = icmp ult i64 %17, 2147483648
  br i1 %cmp23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.false.22
  br label %cond.end

cond.false.25:                                    ; preds = %cond.false.22
  %18 = load i64, i64* %uv1, align 8
  %cmp26 = icmp ult i64 %18, 68719476736
  %cond = select i1 %cmp26, i32 7, i32 13
  br label %cond.end

cond.end:                                         ; preds = %cond.false.25, %cond.true.24
  %cond27 = phi i32 [ 6, %cond.true.24 ], [ %cond, %cond.false.25 ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end, %cond.true.21
  %cond29 = phi i32 [ 5, %cond.true.21 ], [ %cond27, %cond.end ]
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.end.28, %cond.true.18
  %cond31 = phi i32 [ 4, %cond.true.18 ], [ %cond29, %cond.end.28 ]
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.end.30, %cond.true.15
  %cond33 = phi i32 [ 3, %cond.true.15 ], [ %cond31, %cond.end.30 ]
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.end.32, %cond.true.12
  %cond35 = phi i32 [ 2, %cond.true.12 ], [ %cond33, %cond.end.32 ]
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.end.34, %cond.true
  %cond37 = phi i32 [ 1, %cond.true ], [ %cond35, %cond.end.34 ]
  %call38 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %11, i8* %arraydecay9, i32 %cond37, i32 0)
  store %struct.sv** %call38, %struct.sv*** %svp, align 8
  %tobool39 = icmp ne %struct.sv** %call38, null
  br i1 %tobool39, label %land.lhs.true.40, label %if.end.54

land.lhs.true.40:                                 ; preds = %cond.end.36
  %19 = load %struct.sv**, %struct.sv*** %svp, align 8
  %20 = load %struct.sv*, %struct.sv** %19, align 8
  %tobool41 = icmp ne %struct.sv* %20, null
  br i1 %tobool41, label %if.then.42, label %if.end.54

if.then.42:                                       ; preds = %land.lhs.true.40
  %21 = load %struct.sv**, %struct.sv*** %svp, align 8
  %22 = load %struct.sv*, %struct.sv** %21, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 2
  %23 = load i32, i32* %sv_flags, align 4
  %and = and i32 %23, 262144
  %cmp43 = icmp eq i32 %and, 262144
  br i1 %cmp43, label %cond.true.44, label %cond.false.46

cond.true.44:                                     ; preds = %if.then.42
  %24 = load %struct.sv**, %struct.sv*** %svp, align 8
  %25 = load %struct.sv*, %struct.sv** %24, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 0
  %26 = load i8*, i8** %sv_any, align 8
  %27 = bitcast i8* %26 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %27, i32 0, i32 1
  %28 = load i64, i64* %xpv_cur, align 8
  store i64 %28, i64* %len, align 8
  %29 = load %struct.sv**, %struct.sv*** %svp, align 8
  %30 = load %struct.sv*, %struct.sv** %29, align 8
  %sv_any45 = getelementptr inbounds %struct.sv, %struct.sv* %30, i32 0, i32 0
  %31 = load i8*, i8** %sv_any45, align 8
  %32 = bitcast i8* %31 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %32, i32 0, i32 0
  %33 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.48

cond.false.46:                                    ; preds = %if.then.42
  %34 = load %struct.sv**, %struct.sv*** %svp, align 8
  %35 = load %struct.sv*, %struct.sv** %34, align 8
  %call47 = call i8* @Perl_sv_2pv_flags(%struct.sv* %35, i64* %len, i32 2)
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.46, %cond.true.44
  %cond49 = phi i8* [ %33, %cond.true.44 ], [ %call47, %cond.false.46 ]
  store i8* %cond49, i8** %s, align 8
  %36 = load i64, i64* %len, align 8
  %cmp50 = icmp eq i64 %36, 1
  br i1 %cmp50, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %cond.end.48
  %37 = load i8*, i8** %ustrp.addr, align 8
  %38 = load i8*, i8** %s, align 8
  %39 = load i8, i8* %38, align 1
  %conv = zext i8 %39 to i64
  %call52 = call i8* @Perl_uvuni_to_utf8(i8* %37, i64 %conv)
  %40 = load i8*, i8** %ustrp.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %call52 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %40 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len, align 8
  br label %if.end.53

if.else:                                          ; preds = %cond.end.48
  %41 = load i8*, i8** %ustrp.addr, align 8
  %42 = load i8*, i8** %s, align 8
  %43 = load i64, i64* %len, align 8
  %mul = mul i64 %43, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 %mul, i32 1, i1 false)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.51
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %land.lhs.true.40, %cond.end.36, %if.then.5
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %lor.lhs.false, %if.end
  %44 = load i64, i64* %len, align 8
  %tobool56 = icmp ne i64 %44, 0
  br i1 %tobool56, label %if.end.69, label %land.lhs.true.57

land.lhs.true.57:                                 ; preds = %if.end.55
  %45 = load %struct.sv**, %struct.sv*** %swashp.addr, align 8
  %46 = load %struct.sv*, %struct.sv** %45, align 8
  %tobool58 = icmp ne %struct.sv* %46, null
  br i1 %tobool58, label %if.then.59, label %if.end.69

if.then.59:                                       ; preds = %land.lhs.true.57
  %47 = load %struct.sv**, %struct.sv*** %swashp.addr, align 8
  %48 = load %struct.sv*, %struct.sv** %47, align 8
  %arraydecay60 = getelementptr inbounds [7 x i8], [7 x i8]* %tmpbuf, i32 0, i32 0
  %call61 = call i64 @Perl_swash_fetch(%struct.sv* %48, i8* %arraydecay60, i8 signext 1)
  store i64 %call61, i64* %uv2, align 8
  %49 = load i64, i64* %uv2, align 8
  %tobool62 = icmp ne i64 %49, 0
  br i1 %tobool62, label %if.then.63, label %if.end.68

if.then.63:                                       ; preds = %if.then.59
  %50 = load i64, i64* %uv2, align 8
  store i64 %50, i64* %uv3, align 8
  %51 = load i8*, i8** %ustrp.addr, align 8
  %52 = load i64, i64* %uv3, align 8
  %call64 = call i8* @Perl_uvuni_to_utf8(i8* %51, i64 %52)
  %53 = load i8*, i8** %ustrp.addr, align 8
  %sub.ptr.lhs.cast65 = ptrtoint i8* %call64 to i64
  %sub.ptr.rhs.cast66 = ptrtoint i8* %53 to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  store i64 %sub.ptr.sub67, i64* %len, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.63, %if.then.59
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %land.lhs.true.57, %if.end.55
  %54 = load i64, i64* %len, align 8
  %tobool70 = icmp ne i64 %54, 0
  br i1 %tobool70, label %if.end.76, label %if.then.71

if.then.71:                                       ; preds = %if.end.69
  %55 = load i8*, i8** %ustrp.addr, align 8
  %56 = load i64, i64* %uv0, align 8
  %call72 = call i8* @Perl_uvuni_to_utf8(i8* %55, i64 %56)
  %57 = load i8*, i8** %ustrp.addr, align 8
  %sub.ptr.lhs.cast73 = ptrtoint i8* %call72 to i64
  %sub.ptr.rhs.cast74 = ptrtoint i8* %57 to i64
  %sub.ptr.sub75 = sub i64 %sub.ptr.lhs.cast73, %sub.ptr.rhs.cast74
  store i64 %sub.ptr.sub75, i64* %len, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.71, %if.end.69
  %58 = load i64*, i64** %lenp.addr, align 8
  %tobool77 = icmp ne i64* %58, null
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.76
  %59 = load i64, i64* %len, align 8
  %60 = load i64*, i64** %lenp.addr, align 8
  store i64 %59, i64* %60, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.end.76
  %61 = load i64, i64* %len, align 8
  %tobool80 = icmp ne i64 %61, 0
  br i1 %tobool80, label %cond.true.81, label %cond.false.83

cond.true.81:                                     ; preds = %if.end.79
  %62 = load i8*, i8** %ustrp.addr, align 8
  %call82 = call i64 @Perl_utf8_to_uvchr(i8* %62, i64* null)
  br label %cond.end.84

cond.false.83:                                    ; preds = %if.end.79
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.83, %cond.true.81
  %cond85 = phi i64 [ %call82, %cond.true.81 ], [ 0, %cond.false.83 ]
  ret i64 %cond85
}

declare %struct.hv* @Perl_get_hv(i8*, i32) #1

declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct.sv* @Perl_sv_newmortal() #1

declare %struct.hv* @Perl_gv_stashpvn(i8*, i32, i32) #1

declare %struct.stackinfo* @Perl_new_stackinfo(i32, i32) #1

declare void @Perl_push_scope() #1

declare void @Perl_save_I32(i32*) #1

declare void @Perl_save_re_context() #1

declare %struct.gv* @Perl_gv_fetchmeth(%struct.hv*, i8*, i64, i32) #1

declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

declare void @Perl_load_module(i32, %struct.sv*, %struct.sv*, ...) #1

declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

declare void @Perl_sv_free(%struct.sv*) #1

declare void @Perl_pop_scope() #1

declare void @Perl_markstack_grow() #1

declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

declare %struct.sv* @Perl_newSViv(i64) #1

declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

declare i32 @Perl_call_method(i8*, i32) #1

declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #1

declare %struct._PerlIO** @Perl_PerlIO_stderr() #1

declare void @Perl_my_exit(i32) #1

declare i32 @memcmp(i8*, i8*, i64) #1

declare void @Perl_save_int(i32*) #1

declare void @Perl_free_tmps() #1

declare %struct.sv** @Perl_hv_store(%struct.hv*, i8*, i32, %struct.sv*, i32) #1

; Function Attrs: nounwind uwtable
define i8* @Perl_uvchr_to_utf8(i8* %d, i64 %uv) #0 {
entry:
  %d.addr = alloca i8*, align 8
  %uv.addr = alloca i64, align 8
  store i8* %d, i8** %d.addr, align 8
  store i64 %uv, i64* %uv.addr, align 8
  %0 = load i8*, i8** %d.addr, align 8
  %1 = load i64, i64* %uv.addr, align 8
  %call = call i8* @Perl_uvuni_to_utf8_flags(i8* %0, i64 %1, i64 0)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @Perl_uvchr_to_utf8_flags(i8* %d, i64 %uv, i64 %flags) #0 {
entry:
  %d.addr = alloca i8*, align 8
  %uv.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  store i8* %d, i8** %d.addr, align 8
  store i64 %uv, i64* %uv.addr, align 8
  store i64 %flags, i64* %flags.addr, align 8
  %0 = load i8*, i8** %d.addr, align 8
  %1 = load i64, i64* %uv.addr, align 8
  %2 = load i64, i64* %flags.addr, align 8
  %call = call i8* @Perl_uvuni_to_utf8_flags(i8* %0, i64 %1, i64 %2)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i64 @Perl_utf8n_to_uvchr(i8* %s, i64 %curlen, i64* %retlen, i32 %flags) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %curlen.addr = alloca i64, align 8
  %retlen.addr = alloca i64*, align 8
  %flags.addr = alloca i32, align 4
  %uv = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %curlen, i64* %curlen.addr, align 8
  store i64* %retlen, i64** %retlen.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i64, i64* %curlen.addr, align 8
  %2 = load i64*, i64** %retlen.addr, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %call = call i64 @Perl_utf8n_to_uvuni(i8* %0, i64 %1, i64* %2, i32 %3)
  store i64 %call, i64* %uv, align 8
  %4 = load i64, i64* %uv, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i8* @Perl_pv_uni_display(%struct.sv* %dsv, i8* %spv, i64 %len, i64 %pvlim, i64 %flags) #0 {
entry:
  %dsv.addr = alloca %struct.sv*, align 8
  %spv.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %pvlim.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %truncated = alloca i32, align 4
  %s = alloca i8*, align 8
  %e = alloca i8*, align 8
  %u = alloca i64, align 8
  %ok = alloca i8, align 1
  %c = alloca i8, align 1
  store %struct.sv* %dsv, %struct.sv** %dsv.addr, align 8
  store i8* %spv, i8** %spv.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 %pvlim, i64* %pvlim.addr, align 8
  store i64 %flags, i64* %flags.addr, align 8
  store i32 0, i32* %truncated, align 4
  %0 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  call void @Perl_sv_setpvn(%struct.sv* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i64 0)
  %1 = load i8*, i8** %spv.addr, align 8
  store i8* %1, i8** %s, align 8
  %2 = load i8*, i8** %s, align 8
  %3 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3
  store i8* %add.ptr, i8** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i8*, i8** %s, align 8
  %5 = load i8*, i8** %e, align 8
  %cmp = icmp ult i8* %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i8 0, i8* %ok, align 1
  %6 = load i64, i64* %pvlim.addr, align 8
  %tobool = icmp ne i64 %6, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 0
  %8 = load i8*, i8** %sv_any, align 8
  %9 = bitcast i8* %8 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %9, i32 0, i32 1
  %10 = load i64, i64* %xpv_cur, align 8
  %11 = load i64, i64* %pvlim.addr, align 8
  %cmp1 = icmp uge i64 %10, %11
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load i32, i32* %truncated, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %truncated, align 4
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  %13 = load i8*, i8** %s, align 8
  %call = call i64 @Perl_utf8_to_uvchr(i8* %13, i64* null)
  store i64 %call, i64* %u, align 8
  %14 = load i64, i64* %u, align 8
  %cmp2 = icmp ult i64 %14, 256
  br i1 %cmp2, label %if.then.3, label %if.end.40

if.then.3:                                        ; preds = %if.end
  %15 = load i64, i64* %u, align 8
  %conv = trunc i64 %15 to i8
  %conv4 = zext i8 %conv to i32
  %and = and i32 %conv4, 255
  %conv5 = trunc i32 %and to i8
  store i8 %conv5, i8* %c, align 1
  %16 = load i8, i8* %ok, align 1
  %tobool6 = icmp ne i8 %16, 0
  br i1 %tobool6, label %if.end.21, label %land.lhs.true.7

land.lhs.true.7:                                  ; preds = %if.then.3
  %17 = load i64, i64* %flags.addr, align 8
  %and8 = and i64 %17, 2
  %tobool9 = icmp ne i64 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.21

if.then.10:                                       ; preds = %land.lhs.true.7
  %18 = load i8, i8* %c, align 1
  %conv11 = zext i8 %18 to i32
  switch i32 %conv11, label %sw.default [
    i32 10, label %sw.bb
    i32 13, label %sw.bb.12
    i32 9, label %sw.bb.13
    i32 12, label %sw.bb.14
    i32 7, label %sw.bb.15
    i32 92, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %if.then.10
  store i8 110, i8* %ok, align 1
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.then.10
  store i8 114, i8* %ok, align 1
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.then.10
  store i8 116, i8* %ok, align 1
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.then.10
  store i8 102, i8* %ok, align 1
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.then.10
  store i8 97, i8* %ok, align 1
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.then.10
  store i8 92, i8* %ok, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb
  %19 = load i8, i8* %ok, align 1
  %tobool17 = icmp ne i8 %19, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %sw.epilog
  %20 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  %21 = load i8, i8* %ok, align 1
  %conv19 = sext i8 %21 to i32
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i32 %conv19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %sw.epilog
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %land.lhs.true.7, %if.then.3
  %22 = load i8, i8* %ok, align 1
  %tobool22 = icmp ne i8 %22, 0
  br i1 %tobool22, label %if.end.39, label %land.lhs.true.23

land.lhs.true.23:                                 ; preds = %if.end.21
  %23 = load i64, i64* %flags.addr, align 8
  %and24 = and i64 %23, 1
  %tobool25 = icmp ne i64 %and24, 0
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.39

land.lhs.true.26:                                 ; preds = %land.lhs.true.23
  %24 = load i8, i8* %c, align 1
  %conv27 = zext i8 %24 to i32
  %cmp28 = icmp sgt i32 %conv27, 32
  br i1 %cmp28, label %land.lhs.true.30, label %lor.lhs.false

land.lhs.true.30:                                 ; preds = %land.lhs.true.26
  %25 = load i8, i8* %c, align 1
  %conv31 = zext i8 %25 to i32
  %cmp32 = icmp slt i32 %conv31, 127
  br i1 %cmp32, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.30, %land.lhs.true.26
  %26 = load i8, i8* %c, align 1
  %conv34 = zext i8 %26 to i32
  %cmp35 = icmp eq i32 %conv34, 32
  br i1 %cmp35, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %lor.lhs.false, %land.lhs.true.30
  %27 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  %28 = load i8, i8* %c, align 1
  %conv38 = zext i8 %28 to i32
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i32 %conv38)
  store i8 1, i8* %ok, align 1
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %lor.lhs.false, %land.lhs.true.23, %if.end.21
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end
  %29 = load i8, i8* %ok, align 1
  %tobool41 = icmp ne i8 %29, 0
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %if.end.40
  %30 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  %31 = load i64, i64* %u, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i64 %31)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.40
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %32 = load i8*, i8** %s, align 8
  %33 = load i8, i8* %32, align 1
  %idxprom = zext i8 %33 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom
  %34 = load i8, i8* %arrayidx, align 1
  %conv44 = zext i8 %34 to i32
  %35 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %conv44 to i64
  %add.ptr45 = getelementptr inbounds i8, i8* %35, i64 %idx.ext
  store i8* %add.ptr45, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %36 = load i32, i32* %truncated, align 4
  %tobool46 = icmp ne i32 %36, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %for.end
  %37 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i64 3, i32 2)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %for.end
  %38 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  %sv_any49 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 0
  %39 = load i8*, i8** %sv_any49, align 8
  %40 = bitcast i8* %39 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %40, i32 0, i32 0
  %41 = load i8*, i8** %xpv_pv, align 8
  ret i8* %41
}

declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #1

; Function Attrs: nounwind uwtable
define i8* @Perl_sv_uni_display(%struct.sv* %dsv, %struct.sv* %ssv, i64 %pvlim, i64 %flags) #0 {
entry:
  %dsv.addr = alloca %struct.sv*, align 8
  %ssv.addr = alloca %struct.sv*, align 8
  %pvlim.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  store %struct.sv* %dsv, %struct.sv** %dsv.addr, align 8
  store %struct.sv* %ssv, %struct.sv** %ssv.addr, align 8
  store i64 %pvlim, i64* %pvlim.addr, align 8
  store i64 %flags, i64* %flags.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %dsv.addr, align 8
  %1 = load %struct.sv*, %struct.sv** %ssv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %1, i32 0, i32 0
  %2 = load i8*, i8** %sv_any, align 8
  %3 = bitcast i8* %2 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %3, i32 0, i32 0
  %4 = load i8*, i8** %xpv_pv, align 8
  %5 = load %struct.sv*, %struct.sv** %ssv.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 0
  %6 = load i8*, i8** %sv_any1, align 8
  %7 = bitcast i8* %6 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %7, i32 0, i32 1
  %8 = load i64, i64* %xpv_cur, align 8
  %9 = load i64, i64* %pvlim.addr, align 8
  %10 = load i64, i64* %flags.addr, align 8
  %call = call i8* @Perl_pv_uni_display(%struct.sv* %0, i8* %4, i64 %8, i64 %9, i64 %10)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i32 @Perl_ibcmp_utf8(i8* %s1, i8** %pe1, i64 %l1, i8 signext %u1, i8* %s2, i8** %pe2, i64 %l2, i8 signext %u2) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %pe1.addr = alloca i8**, align 8
  %l1.addr = alloca i64, align 8
  %u1.addr = alloca i8, align 1
  %s2.addr = alloca i8*, align 8
  %pe2.addr = alloca i8**, align 8
  %l2.addr = alloca i64, align 8
  %u2.addr = alloca i8, align 1
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %e1 = alloca i8*, align 8
  %f1 = alloca i8*, align 8
  %q1 = alloca i8*, align 8
  %e2 = alloca i8*, align 8
  %f2 = alloca i8*, align 8
  %q2 = alloca i8*, align 8
  %n1 = alloca i64, align 8
  %n2 = alloca i64, align 8
  %foldbuf1 = alloca [7 x i8], align 1
  %foldbuf2 = alloca [7 x i8], align 1
  %natbuf = alloca [2 x i8], align 1
  %foldlen1 = alloca i64, align 8
  %foldlen2 = alloca i64, align 8
  %match = alloca i8, align 1
  store i8* %s1, i8** %s1.addr, align 8
  store i8** %pe1, i8*** %pe1.addr, align 8
  store i64 %l1, i64* %l1.addr, align 8
  store i8 %u1, i8* %u1.addr, align 1
  store i8* %s2, i8** %s2.addr, align 8
  store i8** %pe2, i8*** %pe2.addr, align 8
  store i64 %l2, i64* %l2.addr, align 8
  store i8 %u2, i8* %u2.addr, align 1
  %0 = load i8*, i8** %s1.addr, align 8
  store i8* %0, i8** %p1, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  store i8* %1, i8** %p2, align 8
  store i8* null, i8** %e1, align 8
  store i8* null, i8** %f1, align 8
  store i8* null, i8** %q1, align 8
  store i8* null, i8** %e2, align 8
  store i8* null, i8** %f2, align 8
  store i8* null, i8** %q2, align 8
  store i64 0, i64* %n1, align 8
  store i64 0, i64* %n2, align 8
  %2 = load i8**, i8*** %pe1.addr, align 8
  %tobool = icmp ne i8** %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %pe1.addr, align 8
  %4 = load i8*, i8** %3, align 8
  store i8* %4, i8** %e1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %e1, align 8
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i64, i64* %l1.addr, align 8
  %tobool1 = icmp ne i64 %6, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load i64, i64* %l1.addr, align 8
  %8 = load i8*, i8** %e1, align 8
  %9 = load i8*, i8** %s1.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp2 = icmp ult i64 %7, %sub.ptr.sub
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true, %if.end
  %10 = load i8*, i8** %s1.addr, align 8
  %11 = load i64, i64* %l1.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %11
  store i8* %add.ptr, i8** %f1, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %lor.lhs.false
  %12 = load i8**, i8*** %pe2.addr, align 8
  %tobool5 = icmp ne i8** %12, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  %13 = load i8**, i8*** %pe2.addr, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %e2, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %15 = load i8*, i8** %e2, align 8
  %cmp8 = icmp eq i8* %15, null
  br i1 %cmp8, label %if.then.16, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.7
  %16 = load i64, i64* %l2.addr, align 8
  %tobool10 = icmp ne i64 %16, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.18

land.lhs.true.11:                                 ; preds = %lor.lhs.false.9
  %17 = load i64, i64* %l2.addr, align 8
  %18 = load i8*, i8** %e2, align 8
  %19 = load i8*, i8** %s2.addr, align 8
  %sub.ptr.lhs.cast12 = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast13 = ptrtoint i8* %19 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %cmp15 = icmp ult i64 %17, %sub.ptr.sub14
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %land.lhs.true.11, %if.end.7
  %20 = load i8*, i8** %s2.addr, align 8
  %21 = load i64, i64* %l2.addr, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %add.ptr17, i8** %f2, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %land.lhs.true.11, %lor.lhs.false.9
  %22 = load i8*, i8** %e1, align 8
  %cmp19 = icmp eq i8* %22, null
  br i1 %cmp19, label %land.lhs.true.20, label %lor.lhs.false.22

land.lhs.true.20:                                 ; preds = %if.end.18
  %23 = load i8*, i8** %f1, align 8
  %cmp21 = icmp eq i8* %23, null
  br i1 %cmp21, label %if.then.30, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %land.lhs.true.20, %if.end.18
  %24 = load i8*, i8** %e2, align 8
  %cmp23 = icmp eq i8* %24, null
  br i1 %cmp23, label %land.lhs.true.24, label %lor.lhs.false.26

land.lhs.true.24:                                 ; preds = %lor.lhs.false.22
  %25 = load i8*, i8** %f2, align 8
  %cmp25 = icmp eq i8* %25, null
  br i1 %cmp25, label %if.then.30, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %land.lhs.true.24, %lor.lhs.false.22
  %26 = load i8*, i8** %f1, align 8
  %cmp27 = icmp eq i8* %26, null
  br i1 %cmp27, label %land.lhs.true.28, label %if.end.31

land.lhs.true.28:                                 ; preds = %lor.lhs.false.26
  %27 = load i8*, i8** %f2, align 8
  %cmp29 = icmp eq i8* %27, null
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.28, %land.lhs.true.24, %land.lhs.true.20
  store i32 1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true.28, %lor.lhs.false.26
  %28 = load i8, i8* %u1.addr, align 1
  %tobool32 = icmp ne i8 %28, 0
  br i1 %tobool32, label %lor.lhs.false.33, label %if.then.35

lor.lhs.false.33:                                 ; preds = %if.end.31
  %29 = load i8, i8* %u2.addr, align 1
  %tobool34 = icmp ne i8 %29, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %lor.lhs.false.33, %if.end.31
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %natbuf, i32 0, i64 1
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %lor.lhs.false.33
  br label %while.cond

while.cond:                                       ; preds = %if.end.147, %if.end.36
  %30 = load i8*, i8** %e1, align 8
  %cmp37 = icmp eq i8* %30, null
  br i1 %cmp37, label %land.lhs.true.40, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %while.cond
  %31 = load i8*, i8** %p1, align 8
  %32 = load i8*, i8** %e1, align 8
  %cmp39 = icmp ult i8* %31, %32
  br i1 %cmp39, label %land.lhs.true.40, label %land.end

land.lhs.true.40:                                 ; preds = %lor.lhs.false.38, %while.cond
  %33 = load i8*, i8** %f1, align 8
  %cmp41 = icmp eq i8* %33, null
  br i1 %cmp41, label %land.lhs.true.44, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %land.lhs.true.40
  %34 = load i8*, i8** %p1, align 8
  %35 = load i8*, i8** %f1, align 8
  %cmp43 = icmp ult i8* %34, %35
  br i1 %cmp43, label %land.lhs.true.44, label %land.end

land.lhs.true.44:                                 ; preds = %lor.lhs.false.42, %land.lhs.true.40
  %36 = load i8*, i8** %e2, align 8
  %cmp45 = icmp eq i8* %36, null
  br i1 %cmp45, label %land.rhs, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %land.lhs.true.44
  %37 = load i8*, i8** %p2, align 8
  %38 = load i8*, i8** %e2, align 8
  %cmp47 = icmp ult i8* %37, %38
  br i1 %cmp47, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false.46, %land.lhs.true.44
  %39 = load i8*, i8** %f2, align 8
  %cmp48 = icmp eq i8* %39, null
  br i1 %cmp48, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %40 = load i8*, i8** %p2, align 8
  %41 = load i8*, i8** %f2, align 8
  %cmp49 = icmp ult i8* %40, %41
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %42 = phi i1 [ true, %land.rhs ], [ %cmp49, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false.46, %lor.lhs.false.42, %lor.lhs.false.38
  %43 = phi i1 [ false, %lor.lhs.false.46 ], [ false, %lor.lhs.false.42 ], [ false, %lor.lhs.false.38 ], [ %42, %lor.end ]
  br i1 %43, label %while.body, label %while.end.148

while.body:                                       ; preds = %land.end
  %44 = load i64, i64* %n1, align 8
  %cmp50 = icmp eq i64 %44, 0
  br i1 %cmp50, label %if.then.51, label %if.end.60

if.then.51:                                       ; preds = %while.body
  %45 = load i8, i8* %u1.addr, align 1
  %tobool52 = icmp ne i8 %45, 0
  br i1 %tobool52, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %if.then.51
  %46 = load i8*, i8** %p1, align 8
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %foldbuf1, i32 0, i32 0
  %call = call i64 @Perl_to_utf8_fold(i8* %46, i8* %arraydecay, i64* %foldlen1)
  br label %if.end.58

if.else:                                          ; preds = %if.then.51
  %47 = load i8*, i8** %p1, align 8
  %48 = load i8, i8* %47, align 1
  %arrayidx54 = getelementptr inbounds [2 x i8], [2 x i8]* %natbuf, i32 0, i64 0
  store i8 %48, i8* %arrayidx54, align 1
  %arraydecay55 = getelementptr inbounds [2 x i8], [2 x i8]* %natbuf, i32 0, i32 0
  %arraydecay56 = getelementptr inbounds [7 x i8], [7 x i8]* %foldbuf1, i32 0, i32 0
  %call57 = call i64 @Perl_to_utf8_fold(i8* %arraydecay55, i8* %arraydecay56, i64* %foldlen1)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else, %if.then.53
  %arraydecay59 = getelementptr inbounds [7 x i8], [7 x i8]* %foldbuf1, i32 0, i32 0
  store i8* %arraydecay59, i8** %q1, align 8
  %49 = load i64, i64* %foldlen1, align 8
  store i64 %49, i64* %n1, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.58, %while.body
  %50 = load i64, i64* %n2, align 8
  %cmp61 = icmp eq i64 %50, 0
  br i1 %cmp61, label %if.then.62, label %if.end.74

if.then.62:                                       ; preds = %if.end.60
  %51 = load i8, i8* %u2.addr, align 1
  %tobool63 = icmp ne i8 %51, 0
  br i1 %tobool63, label %if.then.64, label %if.else.67

if.then.64:                                       ; preds = %if.then.62
  %52 = load i8*, i8** %p2, align 8
  %arraydecay65 = getelementptr inbounds [7 x i8], [7 x i8]* %foldbuf2, i32 0, i32 0
  %call66 = call i64 @Perl_to_utf8_fold(i8* %52, i8* %arraydecay65, i64* %foldlen2)
  br label %if.end.72

if.else.67:                                       ; preds = %if.then.62
  %53 = load i8*, i8** %p2, align 8
  %54 = load i8, i8* %53, align 1
  %arrayidx68 = getelementptr inbounds [2 x i8], [2 x i8]* %natbuf, i32 0, i64 0
  store i8 %54, i8* %arrayidx68, align 1
  %arraydecay69 = getelementptr inbounds [2 x i8], [2 x i8]* %natbuf, i32 0, i32 0
  %arraydecay70 = getelementptr inbounds [7 x i8], [7 x i8]* %foldbuf2, i32 0, i32 0
  %call71 = call i64 @Perl_to_utf8_fold(i8* %arraydecay69, i8* %arraydecay70, i64* %foldlen2)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.67, %if.then.64
  %arraydecay73 = getelementptr inbounds [7 x i8], [7 x i8]* %foldbuf2, i32 0, i32 0
  store i8* %arraydecay73, i8** %q2, align 8
  %55 = load i64, i64* %foldlen2, align 8
  store i64 %55, i64* %n2, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.72, %if.end.60
  br label %while.cond.75

while.cond.75:                                    ; preds = %if.end.105, %if.end.74
  %56 = load i64, i64* %n1, align 8
  %tobool76 = icmp ne i64 %56, 0
  br i1 %tobool76, label %land.rhs.77, label %land.end.79

land.rhs.77:                                      ; preds = %while.cond.75
  %57 = load i64, i64* %n2, align 8
  %tobool78 = icmp ne i64 %57, 0
  br label %land.end.79

land.end.79:                                      ; preds = %land.rhs.77, %while.cond.75
  %58 = phi i1 [ false, %while.cond.75 ], [ %tobool78, %land.rhs.77 ]
  br i1 %58, label %while.body.80, label %while.end

while.body.80:                                    ; preds = %land.end.79
  %59 = load i8*, i8** %q1, align 8
  %60 = load i8, i8* %59, align 1
  %idxprom = zext i8 %60 to i64
  %arrayidx81 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom
  %61 = load i8, i8* %arrayidx81, align 1
  %conv = zext i8 %61 to i32
  %62 = load i8*, i8** %q2, align 8
  %63 = load i8, i8* %62, align 1
  %idxprom82 = zext i8 %63 to i64
  %arrayidx83 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom82
  %64 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %64 to i32
  %cmp85 = icmp ne i32 %conv, %conv84
  br i1 %cmp85, label %if.then.104, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %while.body.80
  %65 = load i8*, i8** %q1, align 8
  %66 = load i8, i8* %65, align 1
  %idxprom88 = zext i8 %66 to i64
  %arrayidx89 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom88
  %67 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %67 to i32
  %cmp91 = icmp eq i32 %conv90, 1
  br i1 %cmp91, label %land.lhs.true.93, label %lor.lhs.false.98

land.lhs.true.93:                                 ; preds = %lor.lhs.false.87
  %68 = load i8*, i8** %q1, align 8
  %69 = load i8, i8* %68, align 1
  %conv94 = zext i8 %69 to i32
  %70 = load i8*, i8** %q2, align 8
  %71 = load i8, i8* %70, align 1
  %conv95 = zext i8 %71 to i32
  %cmp96 = icmp ne i32 %conv94, %conv95
  br i1 %cmp96, label %if.then.104, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %land.lhs.true.93, %lor.lhs.false.87
  %72 = load i8*, i8** %q1, align 8
  %73 = load i8*, i8** %q2, align 8
  %74 = load i8*, i8** %q1, align 8
  %75 = load i8, i8* %74, align 1
  %idxprom99 = zext i8 %75 to i64
  %arrayidx100 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom99
  %76 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %76 to i64
  %call102 = call i32 @memcmp(i8* %72, i8* %73, i64 %conv101)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %lor.lhs.false.98, %land.lhs.true.93, %while.body.80
  store i32 1, i32* %retval
  br label %return

if.end.105:                                       ; preds = %lor.lhs.false.98
  %77 = load i8*, i8** %q1, align 8
  %78 = load i8, i8* %77, align 1
  %idxprom106 = zext i8 %78 to i64
  %arrayidx107 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom106
  %79 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %79 to i64
  %80 = load i64, i64* %n1, align 8
  %sub = sub i64 %80, %conv108
  store i64 %sub, i64* %n1, align 8
  %81 = load i8*, i8** %q1, align 8
  %82 = load i8, i8* %81, align 1
  %idxprom109 = zext i8 %82 to i64
  %arrayidx110 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom109
  %83 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %83 to i32
  %84 = load i8*, i8** %q1, align 8
  %idx.ext = sext i32 %conv111 to i64
  %add.ptr112 = getelementptr inbounds i8, i8* %84, i64 %idx.ext
  store i8* %add.ptr112, i8** %q1, align 8
  %85 = load i8*, i8** %q2, align 8
  %86 = load i8, i8* %85, align 1
  %idxprom113 = zext i8 %86 to i64
  %arrayidx114 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom113
  %87 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %87 to i64
  %88 = load i64, i64* %n2, align 8
  %sub116 = sub i64 %88, %conv115
  store i64 %sub116, i64* %n2, align 8
  %89 = load i8*, i8** %q2, align 8
  %90 = load i8, i8* %89, align 1
  %idxprom117 = zext i8 %90 to i64
  %arrayidx118 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom117
  %91 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %91 to i32
  %92 = load i8*, i8** %q2, align 8
  %idx.ext120 = sext i32 %conv119 to i64
  %add.ptr121 = getelementptr inbounds i8, i8* %92, i64 %idx.ext120
  store i8* %add.ptr121, i8** %q2, align 8
  br label %while.cond.75

while.end:                                        ; preds = %land.end.79
  %93 = load i64, i64* %n1, align 8
  %cmp122 = icmp eq i64 %93, 0
  br i1 %cmp122, label %if.then.124, label %if.end.132

if.then.124:                                      ; preds = %while.end
  %94 = load i8, i8* %u1.addr, align 1
  %conv125 = sext i8 %94 to i32
  %tobool126 = icmp ne i32 %conv125, 0
  br i1 %tobool126, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.124
  %95 = load i8*, i8** %p1, align 8
  %96 = load i8, i8* %95, align 1
  %idxprom127 = zext i8 %96 to i64
  %arrayidx128 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom127
  %97 = load i8, i8* %arrayidx128, align 1
  %conv129 = zext i8 %97 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.124
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv129, %cond.true ], [ 1, %cond.false ]
  %98 = load i8*, i8** %p1, align 8
  %idx.ext130 = sext i32 %cond to i64
  %add.ptr131 = getelementptr inbounds i8, i8* %98, i64 %idx.ext130
  store i8* %add.ptr131, i8** %p1, align 8
  br label %if.end.132

if.end.132:                                       ; preds = %cond.end, %while.end
  %99 = load i64, i64* %n2, align 8
  %cmp133 = icmp eq i64 %99, 0
  br i1 %cmp133, label %if.then.135, label %if.end.147

if.then.135:                                      ; preds = %if.end.132
  %100 = load i8, i8* %u2.addr, align 1
  %conv136 = sext i8 %100 to i32
  %tobool137 = icmp ne i32 %conv136, 0
  br i1 %tobool137, label %cond.true.138, label %cond.false.142

cond.true.138:                                    ; preds = %if.then.135
  %101 = load i8*, i8** %p2, align 8
  %102 = load i8, i8* %101, align 1
  %idxprom139 = zext i8 %102 to i64
  %arrayidx140 = getelementptr inbounds [0 x i8], [0 x i8]* @PL_utf8skip, i32 0, i64 %idxprom139
  %103 = load i8, i8* %arrayidx140, align 1
  %conv141 = zext i8 %103 to i32
  br label %cond.end.143

cond.false.142:                                   ; preds = %if.then.135
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.142, %cond.true.138
  %cond144 = phi i32 [ %conv141, %cond.true.138 ], [ 1, %cond.false.142 ]
  %104 = load i8*, i8** %p2, align 8
  %idx.ext145 = sext i32 %cond144 to i64
  %add.ptr146 = getelementptr inbounds i8, i8* %104, i64 %idx.ext145
  store i8* %add.ptr146, i8** %p2, align 8
  br label %if.end.147

if.end.147:                                       ; preds = %cond.end.143, %if.end.132
  br label %while.cond

while.end.148:                                    ; preds = %land.end
  %105 = load i8*, i8** %f1, align 8
  %cmp149 = icmp eq i8* %105, null
  br i1 %cmp149, label %land.rhs.154, label %lor.lhs.false.151

lor.lhs.false.151:                                ; preds = %while.end.148
  %106 = load i8*, i8** %p1, align 8
  %107 = load i8*, i8** %f1, align 8
  %cmp152 = icmp eq i8* %106, %107
  br i1 %cmp152, label %land.rhs.154, label %land.end.161

land.rhs.154:                                     ; preds = %lor.lhs.false.151, %while.end.148
  %108 = load i8*, i8** %f2, align 8
  %cmp155 = icmp eq i8* %108, null
  br i1 %cmp155, label %lor.end.160, label %lor.rhs.157

lor.rhs.157:                                      ; preds = %land.rhs.154
  %109 = load i8*, i8** %p2, align 8
  %110 = load i8*, i8** %f2, align 8
  %cmp158 = icmp eq i8* %109, %110
  br label %lor.end.160

lor.end.160:                                      ; preds = %lor.rhs.157, %land.rhs.154
  %111 = phi i1 [ true, %land.rhs.154 ], [ %cmp158, %lor.rhs.157 ]
  br label %land.end.161

land.end.161:                                     ; preds = %lor.end.160, %lor.lhs.false.151
  %112 = phi i1 [ false, %lor.lhs.false.151 ], [ %111, %lor.end.160 ]
  %land.ext = zext i1 %112 to i32
  %conv162 = trunc i32 %land.ext to i8
  store i8 %conv162, i8* %match, align 1
  %113 = load i8, i8* %match, align 1
  %tobool163 = icmp ne i8 %113, 0
  br i1 %tobool163, label %if.then.164, label %if.end.171

if.then.164:                                      ; preds = %land.end.161
  %114 = load i8**, i8*** %pe1.addr, align 8
  %tobool165 = icmp ne i8** %114, null
  br i1 %tobool165, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.then.164
  %115 = load i8*, i8** %p1, align 8
  %116 = load i8**, i8*** %pe1.addr, align 8
  store i8* %115, i8** %116, align 8
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.166, %if.then.164
  %117 = load i8**, i8*** %pe2.addr, align 8
  %tobool168 = icmp ne i8** %117, null
  br i1 %tobool168, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %if.end.167
  %118 = load i8*, i8** %p2, align 8
  %119 = load i8**, i8*** %pe2.addr, align 8
  store i8* %118, i8** %119, align 8
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.169, %if.end.167
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %land.end.161
  %120 = load i8, i8* %match, align 1
  %conv172 = sext i8 %120 to i32
  %tobool173 = icmp ne i32 %conv172, 0
  %cond174 = select i1 %tobool173, i32 0, i32 1
  store i32 %cond174, i32* %retval
  br label %return

return:                                           ; preds = %if.end.171, %if.then.104, %if.then.30
  %121 = load i32, i32* %retval
  ret i32 %121
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
