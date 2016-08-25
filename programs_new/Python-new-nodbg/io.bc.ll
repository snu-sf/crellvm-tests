; ModuleID = './io.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.mpd_t = type { i8, i64, i64, i64, i64, i64* }
%struct.mpd_context_t = type { i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.mpd_spec_t = type { i64, i64, i8, i8, i8, [5 x i8], i8*, i8*, i8* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mpd_mbstr_t = type { i64, i64, i64, i8* }

@.str = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"snan\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SNAN\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"inity\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"INITY\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\03\03\00", align 1
@mpd_free = external hidden global void (i8*)*, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@mpd_flag_string = internal global [15 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0)], align 16
@.str.13 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@mpd_signal_string = internal global [15 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0)], align 16
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"mpd_fprint: output error\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"sNaN\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Clamped\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Conversion_syntax\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Division_by_zero\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"Division_impossible\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Division_undefined\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"Fpu_error\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"Inexact\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"Invalid_context\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"Invalid_operation\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"Malloc_error\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"Not_implemented\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"Overflow\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"Rounded\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"Subnormal\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"Underflow\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"IEEE_Invalid_operation\00", align 1

; Function Attrs: nounwind uwtable
define hidden void @mpd_qset_string(%struct.mpd_t* %dec, i8* %s, %struct.mpd_context_t* %ctx, i32* %status) #0 {
entry:
  %dec.addr = alloca %struct.mpd_t*, align 8
  %s.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %status.addr = alloca i32*, align 8
  %q = alloca i64, align 8
  %r = alloca i64, align 8
  %len = alloca i64, align 8
  %coeff = alloca i8*, align 8
  %end = alloca i8*, align 8
  %dpoint = alloca i8*, align 8
  %exp = alloca i8*, align 8
  %digits = alloca i64, align 8
  %sign = alloca i8, align 1
  %fracdigits = alloca i64, align 8
  store %struct.mpd_t* %dec, %struct.mpd_t** %dec.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  store i32* %status, i32** %status.addr, align 8
  store i8* null, i8** %dpoint, align 8
  store i8* null, i8** %exp, align 8
  store i8 0, i8* %sign, align 1
  %0 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  call void @mpd_set_flags(%struct.mpd_t* %0, i8 zeroext 0)
  %1 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %len1 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %1, i32 0, i32 3
  store i64 0, i64* %len1, align 8
  %2 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %exp2 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %2, i32 0, i32 1
  store i64 0, i64* %exp2, align 8
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 43
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %if.end.9

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 45
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %8 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  call void @mpd_set_negative(%struct.mpd_t* %8)
  store i8 1, i8* %sign, align 1
  %9 = load i8*, i8** %s.addr, align 8
  %incdec.ptr8 = getelementptr i8, i8* %9, i32 1
  store i8* %incdec.ptr8, i8** %s.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %10 = load i8*, i8** %s.addr, align 8
  %call = call i32 @_mpd_strneq(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64 3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.10, label %if.else.31

if.then.10:                                       ; preds = %if.end.9
  %11 = load i8*, i8** %s.addr, align 8
  %add.ptr = getelementptr i8, i8* %11, i64 3
  store i8* %add.ptr, i8** %s.addr, align 8
  %12 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %13 = load i8, i8* %sign, align 1
  call void @mpd_setspecial(%struct.mpd_t* %12, i8 zeroext %13, i8 zeroext 4)
  %14 = load i8*, i8** %s.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv11 = sext i8 %15 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.10
  br label %return

if.end.15:                                        ; preds = %if.then.10
  %16 = load i8*, i8** %s.addr, align 8
  %call16 = call i8* @scan_payload(i8* %16, i8** %end)
  store i8* %call16, i8** %coeff, align 8
  %cmp17 = icmp eq i8* %call16, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  br label %conversion_error

if.end.20:                                        ; preds = %if.end.15
  %17 = load i8*, i8** %coeff, align 8
  %18 = load i8, i8* %17, align 1
  %conv21 = sext i8 %18 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  br label %return

if.end.25:                                        ; preds = %if.end.20
  %19 = load i8*, i8** %end, align 8
  %20 = load i8*, i8** %coeff, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %digits, align 8
  %21 = load i64, i64* %digits, align 8
  %22 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %prec = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %22, i32 0, i32 0
  %23 = load i64, i64* %prec, align 8
  %24 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %clamp = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %24, i32 0, i32 7
  %25 = load i32, i32* %clamp, align 4
  %conv26 = sext i32 %25 to i64
  %sub = sub i64 %23, %conv26
  %cmp27 = icmp ugt i64 %21, %sub
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.25
  br label %conversion_error

if.end.30:                                        ; preds = %if.end.25
  br label %if.end.148

if.else.31:                                       ; preds = %if.end.9
  %26 = load i8*, i8** %s.addr, align 8
  %call32 = call i32 @_mpd_strneq(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i64 4)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.else.62

if.then.34:                                       ; preds = %if.else.31
  %27 = load i8*, i8** %s.addr, align 8
  %add.ptr35 = getelementptr i8, i8* %27, i64 4
  store i8* %add.ptr35, i8** %s.addr, align 8
  %28 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %29 = load i8, i8* %sign, align 1
  call void @mpd_setspecial(%struct.mpd_t* %28, i8 zeroext %29, i8 zeroext 8)
  %30 = load i8*, i8** %s.addr, align 8
  %31 = load i8, i8* %30, align 1
  %conv36 = sext i8 %31 to i32
  %cmp37 = icmp eq i32 %conv36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.34
  br label %return

if.end.40:                                        ; preds = %if.then.34
  %32 = load i8*, i8** %s.addr, align 8
  %call41 = call i8* @scan_payload(i8* %32, i8** %end)
  store i8* %call41, i8** %coeff, align 8
  %cmp42 = icmp eq i8* %call41, null
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.40
  br label %conversion_error

if.end.45:                                        ; preds = %if.end.40
  %33 = load i8*, i8** %coeff, align 8
  %34 = load i8, i8* %33, align 1
  %conv46 = sext i8 %34 to i32
  %cmp47 = icmp eq i32 %conv46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.45
  br label %return

if.end.50:                                        ; preds = %if.end.45
  %35 = load i8*, i8** %end, align 8
  %36 = load i8*, i8** %coeff, align 8
  %sub.ptr.lhs.cast51 = ptrtoint i8* %35 to i64
  %sub.ptr.rhs.cast52 = ptrtoint i8* %36 to i64
  %sub.ptr.sub53 = sub i64 %sub.ptr.lhs.cast51, %sub.ptr.rhs.cast52
  store i64 %sub.ptr.sub53, i64* %digits, align 8
  %37 = load i64, i64* %digits, align 8
  %38 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %prec54 = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %38, i32 0, i32 0
  %39 = load i64, i64* %prec54, align 8
  %40 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %clamp55 = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %40, i32 0, i32 7
  %41 = load i32, i32* %clamp55, align 4
  %conv56 = sext i32 %41 to i64
  %sub57 = sub i64 %39, %conv56
  %cmp58 = icmp ugt i64 %37, %sub57
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.50
  br label %conversion_error

if.end.61:                                        ; preds = %if.end.50
  br label %if.end.147

if.else.62:                                       ; preds = %if.else.31
  %42 = load i8*, i8** %s.addr, align 8
  %call63 = call i32 @_mpd_strneq(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i64 3)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.else.74

if.then.65:                                       ; preds = %if.else.62
  %43 = load i8*, i8** %s.addr, align 8
  %add.ptr66 = getelementptr i8, i8* %43, i64 3
  store i8* %add.ptr66, i8** %s.addr, align 8
  %44 = load i8*, i8** %s.addr, align 8
  %45 = load i8, i8* %44, align 1
  %conv67 = sext i8 %45 to i32
  %cmp68 = icmp eq i32 %conv67, 0
  br i1 %cmp68, label %if.then.72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.65
  %46 = load i8*, i8** %s.addr, align 8
  %call70 = call i32 @_mpd_strneq(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i64 6)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %lor.lhs.false, %if.then.65
  %47 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %48 = load i8, i8* %sign, align 1
  call void @mpd_setspecial(%struct.mpd_t* %47, i8 zeroext %48, i8 zeroext 2)
  br label %return

if.end.73:                                        ; preds = %lor.lhs.false
  br label %conversion_error

if.else.74:                                       ; preds = %if.else.62
  %49 = load i8*, i8** %s.addr, align 8
  %call75 = call i8* @scan_dpoint_exp(i8* %49, i8** %dpoint, i8** %exp, i8** %end)
  store i8* %call75, i8** %coeff, align 8
  %cmp76 = icmp eq i8* %call75, null
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.else.74
  br label %conversion_error

if.end.79:                                        ; preds = %if.else.74
  %50 = load i8*, i8** %exp, align 8
  %tobool80 = icmp ne i8* %50, null
  br i1 %tobool80, label %if.then.81, label %if.end.101

if.then.81:                                       ; preds = %if.end.79
  %51 = load i8*, i8** %exp, align 8
  store i8* %51, i8** %end, align 8
  %52 = load i8*, i8** %exp, align 8
  %incdec.ptr82 = getelementptr i8, i8* %52, i32 1
  store i8* %incdec.ptr82, i8** %exp, align 8
  %53 = load i8*, i8** %exp, align 8
  %call83 = call i64 @strtoexp(i8* %53)
  %54 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %exp84 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %54, i32 0, i32 1
  store i64 %call83, i64* %exp84, align 8
  %call85 = call i32* @__errno_location() #8
  %55 = load i32, i32* %call85, align 4
  %tobool86 = icmp ne i32 %55, 0
  br i1 %tobool86, label %if.then.87, label %if.end.100

if.then.87:                                       ; preds = %if.then.81
  %call88 = call i32* @__errno_location() #8
  %56 = load i32, i32* %call88, align 4
  %cmp89 = icmp eq i32 %56, 34
  br i1 %cmp89, label %land.lhs.true, label %if.then.98

land.lhs.true:                                    ; preds = %if.then.87
  %57 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %exp91 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %57, i32 0, i32 1
  %58 = load i64, i64* %exp91, align 8
  %cmp92 = icmp eq i64 %58, 9223372036854775807
  br i1 %cmp92, label %if.end.99, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %land.lhs.true
  %59 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %exp95 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %59, i32 0, i32 1
  %60 = load i64, i64* %exp95, align 8
  %cmp96 = icmp eq i64 %60, -9223372036854775808
  br i1 %cmp96, label %if.end.99, label %if.then.98

if.then.98:                                       ; preds = %lor.lhs.false.94, %if.then.87
  br label %conversion_error

if.end.99:                                        ; preds = %lor.lhs.false.94, %land.lhs.true
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.81
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.end.79
  %61 = load i8*, i8** %end, align 8
  %62 = load i8*, i8** %coeff, align 8
  %sub.ptr.lhs.cast102 = ptrtoint i8* %61 to i64
  %sub.ptr.rhs.cast103 = ptrtoint i8* %62 to i64
  %sub.ptr.sub104 = sub i64 %sub.ptr.lhs.cast102, %sub.ptr.rhs.cast103
  store i64 %sub.ptr.sub104, i64* %digits, align 8
  %63 = load i8*, i8** %dpoint, align 8
  %tobool105 = icmp ne i8* %63, null
  br i1 %tobool105, label %if.then.106, label %if.end.129

if.then.106:                                      ; preds = %if.end.101
  %64 = load i8*, i8** %end, align 8
  %65 = load i8*, i8** %dpoint, align 8
  %sub.ptr.lhs.cast107 = ptrtoint i8* %64 to i64
  %sub.ptr.rhs.cast108 = ptrtoint i8* %65 to i64
  %sub.ptr.sub109 = sub i64 %sub.ptr.lhs.cast107, %sub.ptr.rhs.cast108
  %sub110 = sub i64 %sub.ptr.sub109, 1
  store i64 %sub110, i64* %fracdigits, align 8
  %66 = load i8*, i8** %dpoint, align 8
  %67 = load i8*, i8** %coeff, align 8
  %cmp111 = icmp ugt i8* %66, %67
  br i1 %cmp111, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %if.then.106
  %68 = load i64, i64* %digits, align 8
  %dec114 = add i64 %68, -1
  store i64 %dec114, i64* %digits, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.113, %if.then.106
  %69 = load i64, i64* %fracdigits, align 8
  %cmp116 = icmp ugt i64 %69, 999999999999999999
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.end.115
  br label %conversion_error

if.end.119:                                       ; preds = %if.end.115
  %70 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %exp120 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %70, i32 0, i32 1
  %71 = load i64, i64* %exp120, align 8
  %72 = load i64, i64* %fracdigits, align 8
  %add = add i64 -9223372036854775808, %72
  %cmp121 = icmp slt i64 %71, %add
  br i1 %cmp121, label %if.then.123, label %if.else.125

if.then.123:                                      ; preds = %if.end.119
  %73 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %exp124 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %73, i32 0, i32 1
  store i64 -9223372036854775808, i64* %exp124, align 8
  br label %if.end.128

if.else.125:                                      ; preds = %if.end.119
  %74 = load i64, i64* %fracdigits, align 8
  %75 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %exp126 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %75, i32 0, i32 1
  %76 = load i64, i64* %exp126, align 8
  %sub127 = sub i64 %76, %74
  store i64 %sub127, i64* %exp126, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.125, %if.then.123
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.end.101
  %77 = load i64, i64* %digits, align 8
  %cmp130 = icmp ugt i64 %77, 999999999999999999
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.end.129
  br label %conversion_error

if.end.133:                                       ; preds = %if.end.129
  %78 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %exp134 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %78, i32 0, i32 1
  %79 = load i64, i64* %exp134, align 8
  %cmp135 = icmp sgt i64 %79, 2000000000000000001
  br i1 %cmp135, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %if.end.133
  %80 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %exp138 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %80, i32 0, i32 1
  store i64 2000000000000000001, i64* %exp138, align 8
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.137, %if.end.133
  %81 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %exp140 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %81, i32 0, i32 1
  %82 = load i64, i64* %exp140, align 8
  %cmp141 = icmp eq i64 %82, -9223372036854775808
  br i1 %cmp141, label %if.then.143, label %if.end.145

if.then.143:                                      ; preds = %if.end.139
  %83 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %exp144 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %83, i32 0, i32 1
  store i64 -9223372036854775807, i64* %exp144, align 8
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.143, %if.end.139
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.end.61
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.end.30
  %84 = load i64, i64* %digits, align 8
  call void @_mpd_idiv_word(i64* %q, i64* %r, i64 %84, i64 19)
  %85 = load i64, i64* %r, align 8
  %cmp149 = icmp eq i64 %85, 0
  br i1 %cmp149, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.148
  %86 = load i64, i64* %q, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.148
  %87 = load i64, i64* %q, align 8
  %add151 = add i64 %87, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %86, %cond.true ], [ %add151, %cond.false ]
  store i64 %cond, i64* %len, align 8
  %88 = load i64, i64* %len, align 8
  %cmp152 = icmp eq i64 %88, 0
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %cond.end
  br label %conversion_error

if.end.155:                                       ; preds = %cond.end
  %89 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %90 = load i64, i64* %len, align 8
  %91 = load i32*, i32** %status.addr, align 8
  %call156 = call i32 @mpd_qresize(%struct.mpd_t* %89, i64 %90, i32* %91)
  %tobool157 = icmp ne i32 %call156, 0
  br i1 %tobool157, label %if.end.159, label %if.then.158

if.then.158:                                      ; preds = %if.end.155
  %92 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %93 = load i32*, i32** %status.addr, align 8
  call void @mpd_seterror(%struct.mpd_t* %92, i32 512, i32* %93)
  br label %return

if.end.159:                                       ; preds = %if.end.155
  %94 = load i64, i64* %len, align 8
  %95 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %len160 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %95, i32 0, i32 3
  store i64 %94, i64* %len160, align 8
  %96 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %data = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %96, i32 0, i32 5
  %97 = load i64*, i64** %data, align 8
  %98 = load i8*, i8** %coeff, align 8
  %99 = load i8*, i8** %dpoint, align 8
  %100 = load i64, i64* %r, align 8
  %conv161 = trunc i64 %100 to i32
  %101 = load i64, i64* %len, align 8
  call void @string_to_coeff(i64* %97, i8* %98, i8* %99, i32 %conv161, i64 %101)
  %102 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  call void @mpd_setdigits(%struct.mpd_t* %102)
  %103 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %104 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %105 = load i32*, i32** %status.addr, align 8
  call void @mpd_qfinalize(%struct.mpd_t* %103, %struct.mpd_context_t* %104, i32* %105)
  br label %return

conversion_error:                                 ; preds = %if.then.154, %if.then.132, %if.then.118, %if.then.98, %if.then.78, %if.end.73, %if.then.60, %if.then.44, %if.then.29, %if.then.19
  %106 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %107 = load i32*, i32** %status.addr, align 8
  call void @mpd_seterror(%struct.mpd_t* %106, i32 2, i32* %107)
  br label %return

return:                                           ; preds = %conversion_error, %if.end.159, %if.then.158, %if.then.72, %if.then.49, %if.then.39, %if.then.24, %if.then.14
  ret void
}

declare hidden void @mpd_set_flags(%struct.mpd_t*, i8 zeroext) #1

declare hidden void @mpd_set_negative(%struct.mpd_t*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_mpd_strneq(i8* %s, i8* %l, i8* %u, i64 %n) #2 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %l.addr = alloca i8*, align 8
  %u.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %l, i8** %l.addr, align 8
  store i8* %u, i8** %u.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, i64* %n.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, i64* %n.addr, align 8
  %cmp = icmp ne i64 %dec, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %3 = load i8*, i8** %l.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv1 = sext i8 %4 to i32
  %cmp2 = icmp ne i32 %conv, %conv1
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv4 = sext i8 %6 to i32
  %7 = load i8*, i8** %u.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv5 = sext i8 %8 to i32
  %cmp6 = icmp ne i32 %conv4, %conv5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %9 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %10 = load i8*, i8** %u.addr, align 8
  %incdec.ptr8 = getelementptr i8, i8* %10, i32 1
  store i8* %incdec.ptr8, i8** %u.addr, align 8
  %11 = load i8*, i8** %l.addr, align 8
  %incdec.ptr9 = getelementptr i8, i8* %11, i32 1
  store i8* %incdec.ptr9, i8** %l.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare hidden void @mpd_setspecial(%struct.mpd_t*, i8 zeroext, i8 zeroext) #1

; Function Attrs: nounwind uwtable
define internal i8* @scan_payload(i8* %s, i8** %end) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %end.addr = alloca i8**, align 8
  %coeff = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8** %end, i8*** %end.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 48
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i8*, i8** %s.addr, align 8
  store i8* %3, i8** %coeff, align 8
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.5, %while.end
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = zext i8 %5 to i32
  %idxprom = sext i32 %conv3 to i64
  %call = call i16** @__ctype_b_loc() #8
  %6 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  %conv4 = zext i16 %7 to i32
  %and = and i32 %conv4, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body.5, label %while.end.7

while.body.5:                                     ; preds = %while.cond.2
  %8 = load i8*, i8** %s.addr, align 8
  %incdec.ptr6 = getelementptr i8, i8* %8, i32 1
  store i8* %incdec.ptr6, i8** %s.addr, align 8
  br label %while.cond.2

while.end.7:                                      ; preds = %while.cond.2
  %9 = load i8*, i8** %s.addr, align 8
  %10 = load i8**, i8*** %end.addr, align 8
  store i8* %9, i8** %10, align 8
  %11 = load i8*, i8** %s.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv8 = sext i8 %12 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end.7
  %13 = load i8*, i8** %coeff, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.end.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %13, %cond.true ], [ null, %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind uwtable
define internal i8* @scan_dpoint_exp(i8* %s, i8** %dpoint, i8** %exp, i8** %end) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %dpoint.addr = alloca i8**, align 8
  %exp.addr = alloca i8**, align 8
  %end.addr = alloca i8**, align 8
  %coeff = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8** %dpoint, i8*** %dpoint.addr, align 8
  store i8** %exp, i8*** %exp.addr, align 8
  store i8** %end, i8*** %end.addr, align 8
  store i8* null, i8** %coeff, align 8
  %0 = load i8**, i8*** %dpoint.addr, align 8
  store i8* null, i8** %0, align 8
  %1 = load i8**, i8*** %exp.addr, align 8
  store i8* null, i8** %1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  switch i32 %conv2, label %sw.default [
    i32 46, label %sw.bb
    i32 69, label %sw.bb.7
    i32 101, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %for.body
  %6 = load i8**, i8*** %dpoint.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %cmp3 = icmp ne i8* %7, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %8 = load i8**, i8*** %exp.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %cmp5 = icmp ne i8* %9, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i8*, i8** %s.addr, align 8
  %11 = load i8**, i8*** %dpoint.addr, align 8
  store i8* %10, i8** %11, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %for.body, %for.body
  %12 = load i8**, i8*** %exp.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %cmp8 = icmp ne i8* %13, null
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.7
  store i8* null, i8** %retval
  br label %return

if.end.11:                                        ; preds = %sw.bb.7
  %14 = load i8*, i8** %s.addr, align 8
  %15 = load i8**, i8*** %exp.addr, align 8
  store i8* %14, i8** %15, align 8
  %16 = load i8*, i8** %s.addr, align 8
  %add.ptr = getelementptr i8, i8* %16, i64 1
  %17 = load i8, i8* %add.ptr, align 1
  %conv12 = sext i8 %17 to i32
  %cmp13 = icmp eq i32 %conv12, 43
  br i1 %cmp13, label %if.then.20, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %if.end.11
  %18 = load i8*, i8** %s.addr, align 8
  %add.ptr16 = getelementptr i8, i8* %18, i64 1
  %19 = load i8, i8* %add.ptr16, align 1
  %conv17 = sext i8 %19 to i32
  %cmp18 = icmp eq i32 %conv17, 45
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false.15, %if.end.11
  %20 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %lor.lhs.false.15
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %21 = load i8*, i8** %s.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv22 = zext i8 %22 to i32
  %idxprom = sext i32 %conv22 to i64
  %call = call i16** @__ctype_b_loc() #8
  %23 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr i16, i16* %23, i64 %idxprom
  %24 = load i16, i16* %arrayidx, align 2
  %conv23 = zext i16 %24 to i32
  %and = and i32 %conv23, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %sw.default
  store i8* null, i8** %retval
  br label %return

if.end.25:                                        ; preds = %sw.default
  %25 = load i8*, i8** %coeff, align 8
  %cmp26 = icmp eq i8* %25, null
  br i1 %cmp26, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %if.end.25
  %26 = load i8**, i8*** %exp.addr, align 8
  %27 = load i8*, i8** %26, align 8
  %cmp28 = icmp eq i8* %27, null
  br i1 %cmp28, label %if.then.30, label %if.end.61

if.then.30:                                       ; preds = %land.lhs.true
  %28 = load i8*, i8** %s.addr, align 8
  %29 = load i8, i8* %28, align 1
  %conv31 = sext i8 %29 to i32
  %cmp32 = icmp eq i32 %conv31, 48
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.then.30
  %30 = load i8*, i8** %s.addr, align 8
  %add.ptr35 = getelementptr i8, i8* %30, i64 1
  %31 = load i8, i8* %add.ptr35, align 1
  %conv36 = zext i8 %31 to i32
  %idxprom37 = sext i32 %conv36 to i64
  %call38 = call i16** @__ctype_b_loc() #8
  %32 = load i16*, i16** %call38, align 8
  %arrayidx39 = getelementptr i16, i16* %32, i64 %idxprom37
  %33 = load i16, i16* %arrayidx39, align 2
  %conv40 = zext i16 %33 to i32
  %and41 = and i32 %conv40, 2048
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.end.59, label %if.then.43

if.then.43:                                       ; preds = %if.then.34
  %34 = load i8*, i8** %s.addr, align 8
  %add.ptr44 = getelementptr i8, i8* %34, i64 1
  %35 = load i8, i8* %add.ptr44, align 1
  %conv45 = sext i8 %35 to i32
  %cmp46 = icmp eq i32 %conv45, 46
  br i1 %cmp46, label %land.lhs.true.48, label %if.then.57

land.lhs.true.48:                                 ; preds = %if.then.43
  %36 = load i8*, i8** %s.addr, align 8
  %add.ptr49 = getelementptr i8, i8* %36, i64 2
  %37 = load i8, i8* %add.ptr49, align 1
  %conv50 = zext i8 %37 to i32
  %idxprom51 = sext i32 %conv50 to i64
  %call52 = call i16** @__ctype_b_loc() #8
  %38 = load i16*, i16** %call52, align 8
  %arrayidx53 = getelementptr i16, i16* %38, i64 %idxprom51
  %39 = load i16, i16* %arrayidx53, align 2
  %conv54 = zext i16 %39 to i32
  %and55 = and i32 %conv54, 2048
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %land.lhs.true.48, %if.then.43
  %40 = load i8*, i8** %s.addr, align 8
  store i8* %40, i8** %coeff, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %land.lhs.true.48
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.34
  br label %if.end.60

if.else:                                          ; preds = %if.then.30
  %41 = load i8*, i8** %s.addr, align 8
  store i8* %41, i8** %coeff, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.else, %if.end.59
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %land.lhs.true, %if.end.25
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.61, %if.end.21, %if.end
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %42 = load i8*, i8** %s.addr, align 8
  %incdec.ptr62 = getelementptr i8, i8* %42, i32 1
  store i8* %incdec.ptr62, i8** %s.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i8*, i8** %s.addr, align 8
  %44 = load i8**, i8*** %end.addr, align 8
  store i8* %43, i8** %44, align 8
  %45 = load i8*, i8** %coeff, align 8
  store i8* %45, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.24, %if.then.10, %if.then
  %46 = load i8*, i8** %retval
  ret i8* %46
}

; Function Attrs: nounwind uwtable
define internal i64 @strtoexp(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %end = alloca i8*, align 8
  %retval1 = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  %call = call i32* @__errno_location() #8
  store i32 0, i32* %call, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %call2 = call i64 @strtoll(i8* %0, i8** %end, i32 10) #6
  store i64 %call2, i64* %retval1, align 8
  %call3 = call i32* @__errno_location() #8
  %1 = load i32, i32* %call3, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp4 = icmp ne i32 %conv, 0
  br i1 %cmp4, label %land.lhs.true.6, label %if.then

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %4 = load i8*, i8** %end, align 8
  %5 = load i8, i8* %4, align 1
  %conv7 = sext i8 %5 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.6, %land.lhs.true
  %call10 = call i32* @__errno_location() #8
  store i32 22, i32* %call10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.6, %entry
  %6 = load i64, i64* %retval1, align 8
  ret i64 %6
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @_mpd_idiv_word(i64* %q, i64* %r, i64 %v, i64 %d) #2 {
entry:
  %q.addr = alloca i64*, align 8
  %r.addr = alloca i64*, align 8
  %v.addr = alloca i64, align 8
  %d.addr = alloca i64, align 8
  store i64* %q, i64** %q.addr, align 8
  store i64* %r, i64** %r.addr, align 8
  store i64 %v, i64* %v.addr, align 8
  store i64 %d, i64* %d.addr, align 8
  %0 = load i64, i64* %v.addr, align 8
  %1 = load i64, i64* %d.addr, align 8
  %div = sdiv i64 %0, %1
  %2 = load i64*, i64** %q.addr, align 8
  store i64 %div, i64* %2, align 8
  %3 = load i64, i64* %v.addr, align 8
  %4 = load i64*, i64** %q.addr, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* %d.addr, align 8
  %mul = mul i64 %5, %6
  %sub = sub i64 %3, %mul
  %7 = load i64*, i64** %r.addr, align 8
  store i64 %sub, i64* %7, align 8
  ret void
}

declare hidden i32 @mpd_qresize(%struct.mpd_t*, i64, i32*) #1

declare hidden void @mpd_seterror(%struct.mpd_t*, i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @string_to_coeff(i64* %data, i8* %s, i8* %dpoint, i32 %r, i64 %len) #0 {
entry:
  %data.addr = alloca i64*, align 8
  %s.addr = alloca i8*, align 8
  %dpoint.addr = alloca i8*, align 8
  %r.addr = alloca i32, align 4
  %len.addr = alloca i64, align 8
  %j = alloca i32, align 4
  store i64* %data, i64** %data.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %dpoint, i8** %dpoint.addr, align 8
  store i32 %r, i32* %r.addr, align 4
  store i64 %len, i64* %len.addr, align 8
  %0 = load i32, i32* %r.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %len.addr, align 8
  %dec = add i64 %1, -1
  store i64 %dec, i64* %len.addr, align 8
  %2 = load i64*, i64** %data.addr, align 8
  %arrayidx = getelementptr i64, i64* %2, i64 %dec
  store i64 0, i64* %arrayidx, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %r.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i8*, i8** %dpoint.addr, align 8
  %cmp2 = icmp eq i8* %5, %6
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %for.body
  %7 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %for.body
  %8 = load i64, i64* %len.addr, align 8
  %9 = load i64*, i64** %data.addr, align 8
  %arrayidx4 = getelementptr i64, i64* %9, i64 %8
  %10 = load i64, i64* %arrayidx4, align 8
  %mul = mul i64 10, %10
  %11 = load i8*, i8** %s.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv = sext i8 %12 to i32
  %sub = sub i32 %conv, 48
  %conv5 = sext i32 %sub to i64
  %add = add i64 %mul, %conv5
  %13 = load i64, i64* %len.addr, align 8
  %14 = load i64*, i64** %data.addr, align 8
  %arrayidx6 = getelementptr i64, i64* %14, i64 %13
  store i64 %add, i64* %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %j, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %j, align 4
  %16 = load i8*, i8** %s.addr, align 8
  %incdec.ptr7 = getelementptr i8, i8* %16, i32 1
  store i8* %incdec.ptr7, i8** %s.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.8

if.end.8:                                         ; preds = %for.end, %entry
  br label %while.cond

while.cond:                                       ; preds = %for.end.32, %if.end.8
  %17 = load i64, i64* %len.addr, align 8
  %dec9 = add i64 %17, -1
  store i64 %dec9, i64* %len.addr, align 8
  %cmp10 = icmp ne i64 %dec9, -1
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i64, i64* %len.addr, align 8
  %19 = load i64*, i64** %data.addr, align 8
  %arrayidx12 = getelementptr i64, i64* %19, i64 %18
  store i64 0, i64* %arrayidx12, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.29, %while.body
  %20 = load i32, i32* %j, align 4
  %cmp14 = icmp slt i32 %20, 19
  br i1 %cmp14, label %for.body.16, label %for.end.32

for.body.16:                                      ; preds = %for.cond.13
  %21 = load i8*, i8** %s.addr, align 8
  %22 = load i8*, i8** %dpoint.addr, align 8
  %cmp17 = icmp eq i8* %21, %22
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %for.body.16
  %23 = load i8*, i8** %s.addr, align 8
  %incdec.ptr20 = getelementptr i8, i8* %23, i32 1
  store i8* %incdec.ptr20, i8** %s.addr, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %for.body.16
  %24 = load i64, i64* %len.addr, align 8
  %25 = load i64*, i64** %data.addr, align 8
  %arrayidx22 = getelementptr i64, i64* %25, i64 %24
  %26 = load i64, i64* %arrayidx22, align 8
  %mul23 = mul i64 10, %26
  %27 = load i8*, i8** %s.addr, align 8
  %28 = load i8, i8* %27, align 1
  %conv24 = sext i8 %28 to i32
  %sub25 = sub i32 %conv24, 48
  %conv26 = sext i32 %sub25 to i64
  %add27 = add i64 %mul23, %conv26
  %29 = load i64, i64* %len.addr, align 8
  %30 = load i64*, i64** %data.addr, align 8
  %arrayidx28 = getelementptr i64, i64* %30, i64 %29
  store i64 %add27, i64* %arrayidx28, align 8
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.21
  %31 = load i32, i32* %j, align 4
  %inc30 = add i32 %31, 1
  store i32 %inc30, i32* %j, align 4
  %32 = load i8*, i8** %s.addr, align 8
  %incdec.ptr31 = getelementptr i8, i8* %32, i32 1
  store i8* %incdec.ptr31, i8** %s.addr, align 8
  br label %for.cond.13

for.end.32:                                       ; preds = %for.cond.13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare hidden void @mpd_setdigits(%struct.mpd_t*) #1

declare hidden void @mpd_qfinalize(%struct.mpd_t*, %struct.mpd_context_t*, i32*) #1

; Function Attrs: nounwind uwtable
define hidden i8* @mpd_to_sci(%struct.mpd_t* %dec, i32 %fmt) #0 {
entry:
  %dec.addr = alloca %struct.mpd_t*, align 8
  %fmt.addr = alloca i32, align 4
  %res = alloca i8*, align 8
  %flags = alloca i32, align 4
  store %struct.mpd_t* %dec, %struct.mpd_t** %dec.addr, align 8
  store i32 %fmt, i32* %fmt.addr, align 4
  store i32 2, i32* %flags, align 4
  %0 = load i32, i32* %fmt.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %1 = load i32, i32* %flags, align 4
  %or = or i32 %1, %cond
  store i32 %or, i32* %flags, align 4
  %2 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %3 = load i32, i32* %flags, align 4
  %call = call i64 @_mpd_to_string(i8** %res, %struct.mpd_t* %2, i32 %3, i64 1)
  %4 = load i8*, i8** %res, align 8
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define internal i64 @_mpd_to_string(i8** %result, %struct.mpd_t* %dec, i32 %flags, i64 %dplace) #0 {
entry:
  %retval = alloca i64, align 8
  %result.addr = alloca i8**, align 8
  %dec.addr = alloca %struct.mpd_t*, align 8
  %flags.addr = alloca i32, align 4
  %dplace.addr = alloca i64, align 8
  %decstring = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %ldigits = alloca i64, align 8
  %mem = alloca i64, align 8
  %k = alloca i64, align 8
  store i8** %result, i8*** %result.addr, align 8
  store %struct.mpd_t* %dec, %struct.mpd_t** %dec.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i64 %dplace, i64* %dplace.addr, align 8
  store i8* null, i8** %decstring, align 8
  store i8* null, i8** %cp, align 8
  store i64 0, i64* %mem, align 8
  %0 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %call = call i32 @mpd_isspecial(%struct.mpd_t* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.47

if.then:                                          ; preds = %entry
  store i64 10, i64* %mem, align 8
  %1 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %call1 = call i32 @mpd_isnan(%struct.mpd_t* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %len = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %2, i32 0, i32 3
  %3 = load i64, i64* %len, align 8
  %cmp = icmp sgt i64 %3, 0
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %land.lhs.true
  %4 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %digits = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %4, i32 0, i32 2
  %5 = load i64, i64* %digits, align 8
  %6 = load i64, i64* %mem, align 8
  %add = add i64 %6, %5
  store i64 %add, i64* %mem, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %land.lhs.true, %if.then
  %7 = load i64, i64* %mem, align 8
  %call4 = call i8* @mpd_alloc(i64 %7, i64 1)
  store i8* %call4, i8** %decstring, align 8
  store i8* %call4, i8** %cp, align 8
  %8 = load i8*, i8** %cp, align 8
  %cmp5 = icmp eq i8* %8, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %9 = load i8**, i8*** %result.addr, align 8
  store i8* null, i8** %9, align 8
  store i64 -1, i64* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %10 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %call8 = call i32 @mpd_isnegative(%struct.mpd_t* %10)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.7
  %11 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  store i8 45, i8* %11, align 1
  br label %if.end.21

if.else:                                          ; preds = %if.end.7
  %12 = load i32, i32* %flags.addr, align 4
  %and = and i32 %12, 64
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.else
  %13 = load i8*, i8** %cp, align 8
  %incdec.ptr13 = getelementptr i8, i8* %13, i32 1
  store i8* %incdec.ptr13, i8** %cp, align 8
  store i8 32, i8* %13, align 1
  br label %if.end.20

if.else.14:                                       ; preds = %if.else
  %14 = load i32, i32* %flags.addr, align 4
  %and15 = and i32 %14, 128
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.else.14
  %15 = load i8*, i8** %cp, align 8
  %incdec.ptr18 = getelementptr i8, i8* %15, i32 1
  store i8* %incdec.ptr18, i8** %cp, align 8
  store i8 43, i8* %15, align 1
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.else.14
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.12
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.10
  %16 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %call22 = call i32 @mpd_isnan(%struct.mpd_t* %16)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.else.38

if.then.24:                                       ; preds = %if.end.21
  %17 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %call25 = call i32 @mpd_isqnan(%struct.mpd_t* %17)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %if.then.24
  %18 = load i8*, i8** %cp, align 8
  %call28 = call i8* @strcpy(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)) #6
  %19 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr i8, i8* %19, i64 3
  store i8* %add.ptr, i8** %cp, align 8
  br label %if.end.32

if.else.29:                                       ; preds = %if.then.24
  %20 = load i8*, i8** %cp, align 8
  %call30 = call i8* @strcpy(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)) #6
  %21 = load i8*, i8** %cp, align 8
  %add.ptr31 = getelementptr i8, i8* %21, i64 4
  store i8* %add.ptr31, i8** %cp, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.27
  %22 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %len33 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %22, i32 0, i32 3
  %23 = load i64, i64* %len33, align 8
  %cmp34 = icmp sgt i64 %23, 0
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.32
  %24 = load i8*, i8** %cp, align 8
  %25 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %call36 = call i8* @coeff_to_string(i8* %24, %struct.mpd_t* %25)
  store i8* %call36, i8** %cp, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.32
  br label %if.end.46

if.else.38:                                       ; preds = %if.end.21
  %26 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %call39 = call i32 @mpd_isinfinite(%struct.mpd_t* %26)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.else.44

if.then.41:                                       ; preds = %if.else.38
  %27 = load i8*, i8** %cp, align 8
  %call42 = call i8* @strcpy(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0)) #6
  %28 = load i8*, i8** %cp, align 8
  %add.ptr43 = getelementptr i8, i8* %28, i64 8
  store i8* %add.ptr43, i8** %cp, align 8
  br label %if.end.45

if.else.44:                                       ; preds = %if.else.38
  call void @abort() #9
  unreachable

if.end.45:                                        ; preds = %if.then.41
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.37
  br label %if.end.158

if.else.47:                                       ; preds = %entry
  %29 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %digits48 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %29, i32 0, i32 2
  %30 = load i64, i64* %digits48, align 8
  %31 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %exp = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %31, i32 0, i32 1
  %32 = load i64, i64* %exp, align 8
  %add49 = add i64 %30, %32
  store i64 %add49, i64* %ldigits, align 8
  %33 = load i32, i32* %flags.addr, align 4
  %and50 = and i32 %33, 8
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.else.47
  br label %if.end.78

if.else.53:                                       ; preds = %if.else.47
  %34 = load i32, i32* %flags.addr, align 4
  %and54 = and i32 %34, 16
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.53
  %35 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %exp56 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %35, i32 0, i32 1
  %36 = load i64, i64* %exp56, align 8
  %cmp57 = icmp sle i64 %36, 0
  br i1 %cmp57, label %land.lhs.true.58, label %if.else.61

land.lhs.true.58:                                 ; preds = %lor.lhs.false
  %37 = load i64, i64* %ldigits, align 8
  %cmp59 = icmp sgt i64 %37, -6
  br i1 %cmp59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %land.lhs.true.58, %if.else.53
  %38 = load i64, i64* %ldigits, align 8
  store i64 %38, i64* %dplace.addr, align 8
  br label %if.end.77

if.else.61:                                       ; preds = %land.lhs.true.58, %lor.lhs.false
  %39 = load i32, i32* %flags.addr, align 4
  %and62 = and i32 %39, 4
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.76

if.then.64:                                       ; preds = %if.else.61
  %40 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %call65 = call i32 @mpd_iszero(%struct.mpd_t* %40)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.else.72

if.then.67:                                       ; preds = %if.then.64
  %41 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %exp68 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %41, i32 0, i32 1
  %42 = load i64, i64* %exp68, align 8
  %add69 = add i64 %42, 2
  %call70 = call i64 @mod_mpd_ssize_t(i64 %add69, i64 3)
  %add71 = add i64 -1, %call70
  store i64 %add71, i64* %dplace.addr, align 8
  br label %if.end.75

if.else.72:                                       ; preds = %if.then.64
  %43 = load i64, i64* %ldigits, align 8
  %sub = sub i64 %43, 1
  %call73 = call i64 @mod_mpd_ssize_t(i64 %sub, i64 3)
  %44 = load i64, i64* %dplace.addr, align 8
  %add74 = add i64 %44, %call73
  store i64 %add74, i64* %dplace.addr, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.67
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.else.61
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.60
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.52
  %45 = load i64, i64* %dplace.addr, align 8
  %cmp79 = icmp sle i64 %45, 0
  br i1 %cmp79, label %if.then.80, label %if.else.85

if.then.80:                                       ; preds = %if.end.78
  %46 = load i64, i64* %dplace.addr, align 8
  %sub81 = sub i64 0, %46
  %47 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %digits82 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %47, i32 0, i32 2
  %48 = load i64, i64* %digits82, align 8
  %add83 = add i64 %sub81, %48
  %add84 = add i64 %add83, 2
  store i64 %add84, i64* %mem, align 8
  br label %if.end.92

if.else.85:                                       ; preds = %if.end.78
  %49 = load i64, i64* %dplace.addr, align 8
  %50 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %digits86 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %50, i32 0, i32 2
  %51 = load i64, i64* %digits86, align 8
  %cmp87 = icmp sge i64 %49, %51
  br i1 %cmp87, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %if.else.85
  %52 = load i64, i64* %dplace.addr, align 8
  store i64 %52, i64* %mem, align 8
  br label %if.end.91

if.else.89:                                       ; preds = %if.else.85
  %53 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %digits90 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %53, i32 0, i32 2
  %54 = load i64, i64* %digits90, align 8
  store i64 %54, i64* %mem, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.89, %if.then.88
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.80
  %55 = load i64, i64* %mem, align 8
  %add93 = add i64 %55, 26
  store i64 %add93, i64* %mem, align 8
  %56 = load i64, i64* %mem, align 8
  %call94 = call i8* @mpd_alloc(i64 %56, i64 1)
  store i8* %call94, i8** %decstring, align 8
  store i8* %call94, i8** %cp, align 8
  %57 = load i8*, i8** %cp, align 8
  %cmp95 = icmp eq i8* %57, null
  br i1 %cmp95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.92
  %58 = load i8**, i8*** %result.addr, align 8
  store i8* null, i8** %58, align 8
  store i64 -1, i64* %retval
  br label %return

if.end.97:                                        ; preds = %if.end.92
  %59 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %call98 = call i32 @mpd_isnegative(%struct.mpd_t* %59)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.then.100, label %if.else.102

if.then.100:                                      ; preds = %if.end.97
  %60 = load i8*, i8** %cp, align 8
  %incdec.ptr101 = getelementptr i8, i8* %60, i32 1
  store i8* %incdec.ptr101, i8** %cp, align 8
  store i8 45, i8* %60, align 1
  br label %if.end.114

if.else.102:                                      ; preds = %if.end.97
  %61 = load i32, i32* %flags.addr, align 4
  %and103 = and i32 %61, 64
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %if.then.105, label %if.else.107

if.then.105:                                      ; preds = %if.else.102
  %62 = load i8*, i8** %cp, align 8
  %incdec.ptr106 = getelementptr i8, i8* %62, i32 1
  store i8* %incdec.ptr106, i8** %cp, align 8
  store i8 32, i8* %62, align 1
  br label %if.end.113

if.else.107:                                      ; preds = %if.else.102
  %63 = load i32, i32* %flags.addr, align 4
  %and108 = and i32 %63, 128
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.else.107
  %64 = load i8*, i8** %cp, align 8
  %incdec.ptr111 = getelementptr i8, i8* %64, i32 1
  store i8* %incdec.ptr111, i8** %cp, align 8
  store i8 43, i8* %64, align 1
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %if.else.107
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.105
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.100
  %65 = load i64, i64* %dplace.addr, align 8
  %cmp115 = icmp sle i64 %65, 0
  br i1 %cmp115, label %if.then.116, label %if.else.123

if.then.116:                                      ; preds = %if.end.114
  %66 = load i8*, i8** %cp, align 8
  %incdec.ptr117 = getelementptr i8, i8* %66, i32 1
  store i8* %incdec.ptr117, i8** %cp, align 8
  store i8 48, i8* %66, align 1
  %67 = load i8*, i8** %cp, align 8
  %incdec.ptr118 = getelementptr i8, i8* %67, i32 1
  store i8* %incdec.ptr118, i8** %cp, align 8
  store i8 46, i8* %67, align 1
  store i64 0, i64* %k, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.116
  %68 = load i64, i64* %k, align 8
  %69 = load i64, i64* %dplace.addr, align 8
  %sub119 = sub i64 0, %69
  %cmp120 = icmp slt i64 %68, %sub119
  br i1 %cmp120, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %70 = load i8*, i8** %cp, align 8
  %incdec.ptr121 = getelementptr i8, i8* %70, i32 1
  store i8* %incdec.ptr121, i8** %cp, align 8
  store i8 48, i8* %70, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %71 = load i64, i64* %k, align 8
  %inc = add i64 %71, 1
  store i64 %inc, i64* %k, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %72 = load i8*, i8** %cp, align 8
  %73 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %call122 = call i8* @coeff_to_string(i8* %72, %struct.mpd_t* %73)
  store i8* %call122, i8** %cp, align 8
  br label %if.end.141

if.else.123:                                      ; preds = %if.end.114
  %74 = load i64, i64* %dplace.addr, align 8
  %75 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %digits124 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %75, i32 0, i32 2
  %76 = load i64, i64* %digits124, align 8
  %cmp125 = icmp sge i64 %74, %76
  br i1 %cmp125, label %if.then.126, label %if.else.137

if.then.126:                                      ; preds = %if.else.123
  %77 = load i8*, i8** %cp, align 8
  %78 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %call127 = call i8* @coeff_to_string(i8* %77, %struct.mpd_t* %78)
  store i8* %call127, i8** %cp, align 8
  store i64 0, i64* %k, align 8
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.134, %if.then.126
  %79 = load i64, i64* %k, align 8
  %80 = load i64, i64* %dplace.addr, align 8
  %81 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %digits129 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %81, i32 0, i32 2
  %82 = load i64, i64* %digits129, align 8
  %sub130 = sub i64 %80, %82
  %cmp131 = icmp slt i64 %79, %sub130
  br i1 %cmp131, label %for.body.132, label %for.end.136

for.body.132:                                     ; preds = %for.cond.128
  %83 = load i8*, i8** %cp, align 8
  %incdec.ptr133 = getelementptr i8, i8* %83, i32 1
  store i8* %incdec.ptr133, i8** %cp, align 8
  store i8 48, i8* %83, align 1
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.body.132
  %84 = load i64, i64* %k, align 8
  %inc135 = add i64 %84, 1
  store i64 %inc135, i64* %k, align 8
  br label %for.cond.128

for.end.136:                                      ; preds = %for.cond.128
  br label %if.end.140

if.else.137:                                      ; preds = %if.else.123
  %85 = load i8*, i8** %cp, align 8
  %86 = load i8*, i8** %cp, align 8
  %87 = load i64, i64* %dplace.addr, align 8
  %add.ptr138 = getelementptr i8, i8* %86, i64 %87
  %88 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %call139 = call i8* @coeff_to_string_dot(i8* %85, i8* %add.ptr138, %struct.mpd_t* %88)
  store i8* %call139, i8** %cp, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.137, %for.end.136
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %for.end
  %89 = load i64, i64* %ldigits, align 8
  %90 = load i64, i64* %dplace.addr, align 8
  %cmp142 = icmp ne i64 %89, %90
  br i1 %cmp142, label %if.then.146, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %if.end.141
  %91 = load i32, i32* %flags.addr, align 4
  %and144 = and i32 %91, 8
  %tobool145 = icmp ne i32 %and144, 0
  br i1 %tobool145, label %if.then.146, label %if.end.152

if.then.146:                                      ; preds = %lor.lhs.false.143, %if.end.141
  %92 = load i32, i32* %flags.addr, align 4
  %and147 = and i32 %92, 1
  %tobool148 = icmp ne i32 %and147, 0
  %cond = select i1 %tobool148, i32 69, i32 101
  %conv = trunc i32 %cond to i8
  %93 = load i8*, i8** %cp, align 8
  %incdec.ptr149 = getelementptr i8, i8* %93, i32 1
  store i8* %incdec.ptr149, i8** %cp, align 8
  store i8 %conv, i8* %93, align 1
  %94 = load i8*, i8** %cp, align 8
  %95 = load i64, i64* %ldigits, align 8
  %96 = load i64, i64* %dplace.addr, align 8
  %sub150 = sub i64 %95, %96
  %call151 = call i8* @exp_to_string(i8* %94, i64 %sub150)
  store i8* %call151, i8** %cp, align 8
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.146, %lor.lhs.false.143
  %97 = load i32, i32* %flags.addr, align 4
  %and153 = and i32 %97, 32
  %tobool154 = icmp ne i32 %and153, 0
  br i1 %tobool154, label %if.then.155, label %if.end.157

if.then.155:                                      ; preds = %if.end.152
  %98 = load i8*, i8** %cp, align 8
  %incdec.ptr156 = getelementptr i8, i8* %98, i32 1
  store i8* %incdec.ptr156, i8** %cp, align 8
  store i8 37, i8* %98, align 1
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.155, %if.end.152
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.end.46
  %99 = load i8*, i8** %cp, align 8
  store i8 0, i8* %99, align 1
  %100 = load i8*, i8** %decstring, align 8
  %101 = load i8**, i8*** %result.addr, align 8
  store i8* %100, i8** %101, align 8
  %102 = load i8*, i8** %cp, align 8
  %103 = load i8*, i8** %decstring, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %102 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %103 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %retval
  br label %return

return:                                           ; preds = %if.end.158, %if.then.96, %if.then.6
  %104 = load i64, i64* %retval
  ret i64 %104
}

; Function Attrs: nounwind uwtable
define hidden i8* @mpd_to_eng(%struct.mpd_t* %dec, i32 %fmt) #0 {
entry:
  %dec.addr = alloca %struct.mpd_t*, align 8
  %fmt.addr = alloca i32, align 4
  %res = alloca i8*, align 8
  %flags = alloca i32, align 4
  store %struct.mpd_t* %dec, %struct.mpd_t** %dec.addr, align 8
  store i32 %fmt, i32* %fmt.addr, align 4
  store i32 4, i32* %flags, align 4
  %0 = load i32, i32* %fmt.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %1 = load i32, i32* %flags, align 4
  %or = or i32 %1, %cond
  store i32 %or, i32* %flags, align 4
  %2 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %3 = load i32, i32* %flags, align 4
  %call = call i64 @_mpd_to_string(i8** %res, %struct.mpd_t* %2, i32 %3, i64 1)
  %4 = load i8*, i8** %res, align 8
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define hidden i64 @mpd_to_sci_size(i8** %res, %struct.mpd_t* %dec, i32 %fmt) #0 {
entry:
  %res.addr = alloca i8**, align 8
  %dec.addr = alloca %struct.mpd_t*, align 8
  %fmt.addr = alloca i32, align 4
  %flags = alloca i32, align 4
  store i8** %res, i8*** %res.addr, align 8
  store %struct.mpd_t* %dec, %struct.mpd_t** %dec.addr, align 8
  store i32 %fmt, i32* %fmt.addr, align 4
  store i32 2, i32* %flags, align 4
  %0 = load i32, i32* %fmt.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %1 = load i32, i32* %flags, align 4
  %or = or i32 %1, %cond
  store i32 %or, i32* %flags, align 4
  %2 = load i8**, i8*** %res.addr, align 8
  %3 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %4 = load i32, i32* %flags, align 4
  %call = call i64 @_mpd_to_string(i8** %2, %struct.mpd_t* %3, i32 %4, i64 1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define hidden i64 @mpd_to_eng_size(i8** %res, %struct.mpd_t* %dec, i32 %fmt) #0 {
entry:
  %res.addr = alloca i8**, align 8
  %dec.addr = alloca %struct.mpd_t*, align 8
  %fmt.addr = alloca i32, align 4
  %flags = alloca i32, align 4
  store i8** %res, i8*** %res.addr, align 8
  store %struct.mpd_t* %dec, %struct.mpd_t** %dec.addr, align 8
  store i32 %fmt, i32* %fmt.addr, align 4
  store i32 4, i32* %flags, align 4
  %0 = load i32, i32* %fmt.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %1 = load i32, i32* %flags, align 4
  %or = or i32 %1, %cond
  store i32 %or, i32* %flags, align 4
  %2 = load i8**, i8*** %res.addr, align 8
  %3 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %4 = load i32, i32* %flags, align 4
  %call = call i64 @_mpd_to_string(i8** %2, %struct.mpd_t* %3, i32 %4, i64 1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_validate_lconv(%struct.mpd_spec_t* %spec) #0 {
entry:
  %retval = alloca i32, align 4
  %spec.addr = alloca %struct.mpd_spec_t*, align 8
  %n = alloca i64, align 8
  %cp = alloca i8*, align 8
  store %struct.mpd_spec_t* %spec, %struct.mpd_spec_t** %spec.addr, align 8
  %0 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %grouping = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %0, i32 0, i32 8
  %1 = load i8*, i8** %grouping, align 8
  store i8* %1, i8** %cp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i8*, i8** %cp, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp slt i32 %conv2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %dot = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %6, i32 0, i32 6
  %7 = load i8*, i8** %dot, align 8
  %call = call i64 @strlen(i8* %7) #10
  store i64 %call, i64* %n, align 8
  %8 = load i64, i64* %n, align 8
  %cmp5 = icmp eq i64 %8, 0
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %9 = load i64, i64* %n, align 8
  %cmp7 = icmp ugt i64 %9, 4
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %while.end
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false
  %10 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %sep = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %10, i32 0, i32 7
  %11 = load i8*, i8** %sep, align 8
  %call11 = call i64 @strlen(i8* %11) #10
  %cmp12 = icmp ugt i64 %call11, 4
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then.9, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_parse_fmt_str(%struct.mpd_spec_t* %spec, i8* %fmt, i32 %caps) #0 {
entry:
  %retval = alloca i32, align 4
  %spec.addr = alloca %struct.mpd_spec_t*, align 8
  %fmt.addr = alloca i8*, align 8
  %caps.addr = alloca i32, align 4
  %cp = alloca i8*, align 8
  %have_align = alloca i32, align 4
  %n = alloca i32, align 4
  %lc = alloca %struct.lconv*, align 8
  store %struct.mpd_spec_t* %spec, %struct.mpd_spec_t** %spec.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  store i32 %caps, i32* %caps.addr, align 4
  %0 = load i8*, i8** %fmt.addr, align 8
  store i8* %0, i8** %cp, align 8
  store i32 0, i32* %have_align, align 4
  %1 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %min_width = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %1, i32 0, i32 0
  store i64 0, i64* %min_width, align 8
  %2 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %prec = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %2, i32 0, i32 1
  store i64 -1, i64* %prec, align 8
  %3 = load i32, i32* %caps.addr, align 4
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 71, i32 103
  %conv = trunc i32 %cond to i8
  %4 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %type = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %4, i32 0, i32 2
  store i8 %conv, i8* %type, align 1
  %5 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %align = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %5, i32 0, i32 3
  store i8 62, i8* %align, align 1
  %6 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %sign = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %6, i32 0, i32 4
  store i8 45, i8* %sign, align 1
  %7 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %dot = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %7, i32 0, i32 6
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8** %dot, align 8
  %8 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %sep = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %8, i32 0, i32 7
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8** %sep, align 8
  %9 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %grouping = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %9, i32 0, i32 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8** %grouping, align 8
  %10 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %fill = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %10, i32 0, i32 5
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %fill, i32 0, i32 0
  %11 = load i8*, i8** %cp, align 8
  %call = call i32 @_mpd_copy_utf8(i8* %arraydecay, i8* %11)
  store i32 %call, i32* %n, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load i8*, i8** %cp, align 8
  %13 = load i8, i8* %12, align 1
  %conv2 = sext i8 %13 to i32
  %tobool3 = icmp ne i32 %conv2, 0
  br i1 %tobool3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %14 = load i8*, i8** %cp, align 8
  %15 = load i32, i32* %n, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr i8, i8* %14, i64 %idx.ext
  %16 = load i8, i8* %add.ptr, align 1
  %conv4 = sext i8 %16 to i32
  %cmp5 = icmp eq i32 %conv4, 60
  br i1 %cmp5, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %17 = load i8*, i8** %cp, align 8
  %18 = load i32, i32* %n, align 4
  %idx.ext7 = sext i32 %18 to i64
  %add.ptr8 = getelementptr i8, i8* %17, i64 %idx.ext7
  %19 = load i8, i8* %add.ptr8, align 1
  %conv9 = sext i8 %19 to i32
  %cmp10 = icmp eq i32 %conv9, 62
  br i1 %cmp10, label %if.then.24, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %20 = load i8*, i8** %cp, align 8
  %21 = load i32, i32* %n, align 4
  %idx.ext13 = sext i32 %21 to i64
  %add.ptr14 = getelementptr i8, i8* %20, i64 %idx.ext13
  %22 = load i8, i8* %add.ptr14, align 1
  %conv15 = sext i8 %22 to i32
  %cmp16 = icmp eq i32 %conv15, 61
  br i1 %cmp16, label %if.then.24, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.12
  %23 = load i8*, i8** %cp, align 8
  %24 = load i32, i32* %n, align 4
  %idx.ext19 = sext i32 %24 to i64
  %add.ptr20 = getelementptr i8, i8* %23, i64 %idx.ext19
  %25 = load i8, i8* %add.ptr20, align 1
  %conv21 = sext i8 %25 to i32
  %cmp22 = icmp eq i32 %conv21, 94
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false.12, %lor.lhs.false, %land.lhs.true
  %26 = load i32, i32* %n, align 4
  %27 = load i8*, i8** %cp, align 8
  %idx.ext25 = sext i32 %26 to i64
  %add.ptr26 = getelementptr i8, i8* %27, i64 %idx.ext25
  store i8* %add.ptr26, i8** %cp, align 8
  %28 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %29 = load i8, i8* %28, align 1
  %30 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %align27 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %30, i32 0, i32 3
  store i8 %29, i8* %align27, align 1
  store i32 1, i32* %have_align, align 4
  br label %if.end.50

if.else:                                          ; preds = %lor.lhs.false.18, %if.end
  %31 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %fill28 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %31, i32 0, i32 5
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %fill28, i32 0, i64 0
  store i8 32, i8* %arrayidx, align 1
  %32 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %fill29 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %32, i32 0, i32 5
  %arrayidx30 = getelementptr [5 x i8], [5 x i8]* %fill29, i32 0, i64 1
  store i8 0, i8* %arrayidx30, align 1
  %33 = load i8*, i8** %cp, align 8
  %34 = load i8, i8* %33, align 1
  %conv31 = sext i8 %34 to i32
  %cmp32 = icmp eq i32 %conv31, 60
  br i1 %cmp32, label %if.then.46, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.else
  %35 = load i8*, i8** %cp, align 8
  %36 = load i8, i8* %35, align 1
  %conv35 = sext i8 %36 to i32
  %cmp36 = icmp eq i32 %conv35, 62
  br i1 %cmp36, label %if.then.46, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.34
  %37 = load i8*, i8** %cp, align 8
  %38 = load i8, i8* %37, align 1
  %conv39 = sext i8 %38 to i32
  %cmp40 = icmp eq i32 %conv39, 61
  br i1 %cmp40, label %if.then.46, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.38
  %39 = load i8*, i8** %cp, align 8
  %40 = load i8, i8* %39, align 1
  %conv43 = sext i8 %40 to i32
  %cmp44 = icmp eq i32 %conv43, 94
  br i1 %cmp44, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %lor.lhs.false.42, %lor.lhs.false.38, %lor.lhs.false.34, %if.else
  %41 = load i8*, i8** %cp, align 8
  %incdec.ptr47 = getelementptr i8, i8* %41, i32 1
  store i8* %incdec.ptr47, i8** %cp, align 8
  %42 = load i8, i8* %41, align 1
  %43 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %align48 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %43, i32 0, i32 3
  store i8 %42, i8* %align48, align 1
  store i32 1, i32* %have_align, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %lor.lhs.false.42
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.24
  %44 = load i8*, i8** %cp, align 8
  %45 = load i8, i8* %44, align 1
  %conv51 = sext i8 %45 to i32
  %cmp52 = icmp eq i32 %conv51, 43
  br i1 %cmp52, label %if.then.62, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %if.end.50
  %46 = load i8*, i8** %cp, align 8
  %47 = load i8, i8* %46, align 1
  %conv55 = sext i8 %47 to i32
  %cmp56 = icmp eq i32 %conv55, 45
  br i1 %cmp56, label %if.then.62, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %lor.lhs.false.54
  %48 = load i8*, i8** %cp, align 8
  %49 = load i8, i8* %48, align 1
  %conv59 = sext i8 %49 to i32
  %cmp60 = icmp eq i32 %conv59, 32
  br i1 %cmp60, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %lor.lhs.false.58, %lor.lhs.false.54, %if.end.50
  %50 = load i8*, i8** %cp, align 8
  %incdec.ptr63 = getelementptr i8, i8* %50, i32 1
  store i8* %incdec.ptr63, i8** %cp, align 8
  %51 = load i8, i8* %50, align 1
  %52 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %sign64 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %52, i32 0, i32 4
  store i8 %51, i8* %sign64, align 1
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %lor.lhs.false.58
  %53 = load i8*, i8** %cp, align 8
  %54 = load i8, i8* %53, align 1
  %conv66 = sext i8 %54 to i32
  %cmp67 = icmp eq i32 %conv66, 48
  br i1 %cmp67, label %if.then.69, label %if.end.79

if.then.69:                                       ; preds = %if.end.65
  %55 = load i32, i32* %have_align, align 4
  %tobool70 = icmp ne i32 %55, 0
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.69
  store i32 0, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.then.69
  %56 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %align73 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %56, i32 0, i32 3
  store i8 122, i8* %align73, align 1
  %57 = load i8*, i8** %cp, align 8
  %incdec.ptr74 = getelementptr i8, i8* %57, i32 1
  store i8* %incdec.ptr74, i8** %cp, align 8
  %58 = load i8, i8* %57, align 1
  %59 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %fill75 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %59, i32 0, i32 5
  %arrayidx76 = getelementptr [5 x i8], [5 x i8]* %fill75, i32 0, i64 0
  store i8 %58, i8* %arrayidx76, align 1
  %60 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %fill77 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %60, i32 0, i32 5
  %arrayidx78 = getelementptr [5 x i8], [5 x i8]* %fill77, i32 0, i64 1
  store i8 0, i8* %arrayidx78, align 1
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.72, %if.end.65
  %61 = load i8*, i8** %cp, align 8
  %62 = load i8, i8* %61, align 1
  %conv80 = zext i8 %62 to i32
  %idxprom = sext i32 %conv80 to i64
  %call81 = call i16** @__ctype_b_loc() #8
  %63 = load i16*, i16** %call81, align 8
  %arrayidx82 = getelementptr i16, i16* %63, i64 %idxprom
  %64 = load i16, i16* %arrayidx82, align 2
  %conv83 = zext i16 %64 to i32
  %and = and i32 %conv83, 2048
  %tobool84 = icmp ne i32 %and, 0
  br i1 %tobool84, label %if.then.85, label %if.end.103

if.then.85:                                       ; preds = %if.end.79
  %65 = load i8*, i8** %cp, align 8
  %66 = load i8, i8* %65, align 1
  %conv86 = sext i8 %66 to i32
  %cmp87 = icmp eq i32 %conv86, 48
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.then.85
  store i32 0, i32* %retval
  br label %return

if.end.90:                                        ; preds = %if.then.85
  %call91 = call i32* @__errno_location() #8
  store i32 0, i32* %call91, align 4
  %67 = load i8*, i8** %cp, align 8
  %call92 = call i64 @strtoll(i8* %67, i8** %cp, i32 10) #6
  %68 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %min_width93 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %68, i32 0, i32 0
  store i64 %call92, i64* %min_width93, align 8
  %call94 = call i32* @__errno_location() #8
  %69 = load i32, i32* %call94, align 4
  %cmp95 = icmp eq i32 %69, 34
  br i1 %cmp95, label %if.then.101, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %if.end.90
  %call98 = call i32* @__errno_location() #8
  %70 = load i32, i32* %call98, align 4
  %cmp99 = icmp eq i32 %70, 22
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %lor.lhs.false.97, %if.end.90
  store i32 0, i32* %retval
  br label %return

if.end.102:                                       ; preds = %lor.lhs.false.97
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.79
  %71 = load i8*, i8** %cp, align 8
  %72 = load i8, i8* %71, align 1
  %conv104 = sext i8 %72 to i32
  %cmp105 = icmp eq i32 %conv104, 44
  br i1 %cmp105, label %if.then.107, label %if.end.112

if.then.107:                                      ; preds = %if.end.103
  %73 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %dot108 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %73, i32 0, i32 6
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8** %dot108, align 8
  %74 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %sep109 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %74, i32 0, i32 7
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8** %sep109, align 8
  %75 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %grouping110 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %75, i32 0, i32 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8** %grouping110, align 8
  %76 = load i8*, i8** %cp, align 8
  %incdec.ptr111 = getelementptr i8, i8* %76, i32 1
  store i8* %incdec.ptr111, i8** %cp, align 8
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.107, %if.end.103
  %77 = load i8*, i8** %cp, align 8
  %78 = load i8, i8* %77, align 1
  %conv113 = sext i8 %78 to i32
  %cmp114 = icmp eq i32 %conv113, 46
  br i1 %cmp114, label %if.then.116, label %if.end.139

if.then.116:                                      ; preds = %if.end.112
  %79 = load i8*, i8** %cp, align 8
  %incdec.ptr117 = getelementptr i8, i8* %79, i32 1
  store i8* %incdec.ptr117, i8** %cp, align 8
  %80 = load i8*, i8** %cp, align 8
  %81 = load i8, i8* %80, align 1
  %conv118 = zext i8 %81 to i32
  %idxprom119 = sext i32 %conv118 to i64
  %call120 = call i16** @__ctype_b_loc() #8
  %82 = load i16*, i16** %call120, align 8
  %arrayidx121 = getelementptr i16, i16* %82, i64 %idxprom119
  %83 = load i16, i16* %arrayidx121, align 2
  %conv122 = zext i16 %83 to i32
  %and123 = and i32 %conv122, 2048
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %if.end.126, label %if.then.125

if.then.125:                                      ; preds = %if.then.116
  store i32 0, i32* %retval
  br label %return

if.end.126:                                       ; preds = %if.then.116
  %call127 = call i32* @__errno_location() #8
  store i32 0, i32* %call127, align 4
  %84 = load i8*, i8** %cp, align 8
  %call128 = call i64 @strtoll(i8* %84, i8** %cp, i32 10) #6
  %85 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %prec129 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %85, i32 0, i32 1
  store i64 %call128, i64* %prec129, align 8
  %call130 = call i32* @__errno_location() #8
  %86 = load i32, i32* %call130, align 4
  %cmp131 = icmp eq i32 %86, 34
  br i1 %cmp131, label %if.then.137, label %lor.lhs.false.133

lor.lhs.false.133:                                ; preds = %if.end.126
  %call134 = call i32* @__errno_location() #8
  %87 = load i32, i32* %call134, align 4
  %cmp135 = icmp eq i32 %87, 22
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %lor.lhs.false.133, %if.end.126
  store i32 0, i32* %retval
  br label %return

if.end.138:                                       ; preds = %lor.lhs.false.133
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.end.112
  %88 = load i8*, i8** %cp, align 8
  %89 = load i8, i8* %88, align 1
  %conv140 = sext i8 %89 to i32
  %cmp141 = icmp eq i32 %conv140, 69
  br i1 %cmp141, label %if.then.167, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %if.end.139
  %90 = load i8*, i8** %cp, align 8
  %91 = load i8, i8* %90, align 1
  %conv144 = sext i8 %91 to i32
  %cmp145 = icmp eq i32 %conv144, 101
  br i1 %cmp145, label %if.then.167, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %lor.lhs.false.143
  %92 = load i8*, i8** %cp, align 8
  %93 = load i8, i8* %92, align 1
  %conv148 = sext i8 %93 to i32
  %cmp149 = icmp eq i32 %conv148, 70
  br i1 %cmp149, label %if.then.167, label %lor.lhs.false.151

lor.lhs.false.151:                                ; preds = %lor.lhs.false.147
  %94 = load i8*, i8** %cp, align 8
  %95 = load i8, i8* %94, align 1
  %conv152 = sext i8 %95 to i32
  %cmp153 = icmp eq i32 %conv152, 102
  br i1 %cmp153, label %if.then.167, label %lor.lhs.false.155

lor.lhs.false.155:                                ; preds = %lor.lhs.false.151
  %96 = load i8*, i8** %cp, align 8
  %97 = load i8, i8* %96, align 1
  %conv156 = sext i8 %97 to i32
  %cmp157 = icmp eq i32 %conv156, 71
  br i1 %cmp157, label %if.then.167, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %lor.lhs.false.155
  %98 = load i8*, i8** %cp, align 8
  %99 = load i8, i8* %98, align 1
  %conv160 = sext i8 %99 to i32
  %cmp161 = icmp eq i32 %conv160, 103
  br i1 %cmp161, label %if.then.167, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %lor.lhs.false.159
  %100 = load i8*, i8** %cp, align 8
  %101 = load i8, i8* %100, align 1
  %conv164 = sext i8 %101 to i32
  %cmp165 = icmp eq i32 %conv164, 37
  br i1 %cmp165, label %if.then.167, label %if.else.170

if.then.167:                                      ; preds = %lor.lhs.false.163, %lor.lhs.false.159, %lor.lhs.false.155, %lor.lhs.false.151, %lor.lhs.false.147, %lor.lhs.false.143, %if.end.139
  %102 = load i8*, i8** %cp, align 8
  %incdec.ptr168 = getelementptr i8, i8* %102, i32 1
  store i8* %incdec.ptr168, i8** %cp, align 8
  %103 = load i8, i8* %102, align 1
  %104 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %type169 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %104, i32 0, i32 2
  store i8 %103, i8* %type169, align 1
  br label %if.end.203

if.else.170:                                      ; preds = %lor.lhs.false.163
  %105 = load i8*, i8** %cp, align 8
  %106 = load i8, i8* %105, align 1
  %conv171 = sext i8 %106 to i32
  %cmp172 = icmp eq i32 %conv171, 78
  br i1 %cmp172, label %if.then.178, label %lor.lhs.false.174

lor.lhs.false.174:                                ; preds = %if.else.170
  %107 = load i8*, i8** %cp, align 8
  %108 = load i8, i8* %107, align 1
  %conv175 = sext i8 %108 to i32
  %cmp176 = icmp eq i32 %conv175, 110
  br i1 %cmp176, label %if.then.178, label %if.end.202

if.then.178:                                      ; preds = %lor.lhs.false.174, %if.else.170
  %109 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %sep179 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %109, i32 0, i32 7
  %110 = load i8*, i8** %sep179, align 8
  %111 = load i8, i8* %110, align 1
  %tobool180 = icmp ne i8 %111, 0
  br i1 %tobool180, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %if.then.178
  store i32 0, i32* %retval
  br label %return

if.end.182:                                       ; preds = %if.then.178
  %112 = load i8*, i8** %cp, align 8
  %incdec.ptr183 = getelementptr i8, i8* %112, i32 1
  store i8* %incdec.ptr183, i8** %cp, align 8
  %113 = load i8, i8* %112, align 1
  %114 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %type184 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %114, i32 0, i32 2
  store i8 %113, i8* %type184, align 1
  %115 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %type185 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %115, i32 0, i32 2
  %116 = load i8, i8* %type185, align 1
  %conv186 = sext i8 %116 to i32
  %cmp187 = icmp eq i32 %conv186, 78
  %cond189 = select i1 %cmp187, i32 71, i32 103
  %conv190 = trunc i32 %cond189 to i8
  %117 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %type191 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %117, i32 0, i32 2
  store i8 %conv190, i8* %type191, align 1
  %call192 = call %struct.lconv* @localeconv() #6
  store %struct.lconv* %call192, %struct.lconv** %lc, align 8
  %118 = load %struct.lconv*, %struct.lconv** %lc, align 8
  %decimal_point = getelementptr inbounds %struct.lconv, %struct.lconv* %118, i32 0, i32 0
  %119 = load i8*, i8** %decimal_point, align 8
  %120 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %dot193 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %120, i32 0, i32 6
  store i8* %119, i8** %dot193, align 8
  %121 = load %struct.lconv*, %struct.lconv** %lc, align 8
  %thousands_sep = getelementptr inbounds %struct.lconv, %struct.lconv* %121, i32 0, i32 1
  %122 = load i8*, i8** %thousands_sep, align 8
  %123 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %sep194 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %123, i32 0, i32 7
  store i8* %122, i8** %sep194, align 8
  %124 = load %struct.lconv*, %struct.lconv** %lc, align 8
  %grouping195 = getelementptr inbounds %struct.lconv, %struct.lconv* %124, i32 0, i32 2
  %125 = load i8*, i8** %grouping195, align 8
  %126 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %grouping196 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %126, i32 0, i32 8
  store i8* %125, i8** %grouping196, align 8
  %127 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %call197 = call i32 @mpd_validate_lconv(%struct.mpd_spec_t* %127)
  %cmp198 = icmp slt i32 %call197, 0
  br i1 %cmp198, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %if.end.182
  store i32 0, i32* %retval
  br label %return

if.end.201:                                       ; preds = %if.end.182
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %lor.lhs.false.174
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.then.167
  %128 = load i8*, i8** %cp, align 8
  %129 = load i8, i8* %128, align 1
  %conv204 = sext i8 %129 to i32
  %cmp205 = icmp ne i32 %conv204, 0
  br i1 %cmp205, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %if.end.203
  store i32 0, i32* %retval
  br label %return

if.end.208:                                       ; preds = %if.end.203
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.208, %if.then.207, %if.then.200, %if.then.181, %if.then.137, %if.then.125, %if.then.101, %if.then.89, %if.then.71, %if.then
  %130 = load i32, i32* %retval
  ret i32 %130
}

; Function Attrs: nounwind uwtable
define internal i32 @_mpd_copy_utf8(i8* %dest, i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %lb = alloca i8, align 1
  %ub = alloca i8, align 1
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  store i8* %0, i8** %cp, align 8
  %1 = load i8*, i8** %cp, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %dest.addr, align 8
  %arrayidx = getelementptr i8, i8* %3, i64 0
  store i8 0, i8* %arrayidx, align 1
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %cp, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = zext i8 %5 to i32
  %cmp3 = icmp sle i32 %conv2, 127
  br i1 %cmp3, label %if.then.5, label %if.else.8

if.then.5:                                        ; preds = %if.else
  %6 = load i8*, i8** %cp, align 8
  %7 = load i8, i8* %6, align 1
  %8 = load i8*, i8** %dest.addr, align 8
  %arrayidx6 = getelementptr i8, i8* %8, i64 0
  store i8 %7, i8* %arrayidx6, align 1
  %9 = load i8*, i8** %dest.addr, align 8
  %arrayidx7 = getelementptr i8, i8* %9, i64 1
  store i8 0, i8* %arrayidx7, align 1
  store i32 1, i32* %retval
  br label %return

if.else.8:                                        ; preds = %if.else
  %10 = load i8*, i8** %cp, align 8
  %11 = load i8, i8* %10, align 1
  %conv9 = zext i8 %11 to i32
  %cmp10 = icmp sle i32 194, %conv9
  br i1 %cmp10, label %land.lhs.true, label %if.else.16

land.lhs.true:                                    ; preds = %if.else.8
  %12 = load i8*, i8** %cp, align 8
  %13 = load i8, i8* %12, align 1
  %conv12 = zext i8 %13 to i32
  %cmp13 = icmp sle i32 %conv12, 223
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true
  store i8 -128, i8* %lb, align 1
  store i8 -65, i8* %ub, align 1
  store i32 2, i32* %count, align 4
  br label %if.end.58

if.else.16:                                       ; preds = %land.lhs.true, %if.else.8
  %14 = load i8*, i8** %cp, align 8
  %15 = load i8, i8* %14, align 1
  %conv17 = zext i8 %15 to i32
  %cmp18 = icmp eq i32 %conv17, 224
  br i1 %cmp18, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.16
  store i8 -96, i8* %lb, align 1
  store i8 -65, i8* %ub, align 1
  store i32 3, i32* %count, align 4
  br label %if.end.57

if.else.21:                                       ; preds = %if.else.16
  %16 = load i8*, i8** %cp, align 8
  %17 = load i8, i8* %16, align 1
  %conv22 = zext i8 %17 to i32
  %cmp23 = icmp sle i32 %conv22, 236
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.else.21
  store i8 -128, i8* %lb, align 1
  store i8 -65, i8* %ub, align 1
  store i32 3, i32* %count, align 4
  br label %if.end.56

if.else.26:                                       ; preds = %if.else.21
  %18 = load i8*, i8** %cp, align 8
  %19 = load i8, i8* %18, align 1
  %conv27 = zext i8 %19 to i32
  %cmp28 = icmp eq i32 %conv27, 237
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.else.26
  store i8 -128, i8* %lb, align 1
  store i8 -97, i8* %ub, align 1
  store i32 3, i32* %count, align 4
  br label %if.end.55

if.else.31:                                       ; preds = %if.else.26
  %20 = load i8*, i8** %cp, align 8
  %21 = load i8, i8* %20, align 1
  %conv32 = zext i8 %21 to i32
  %cmp33 = icmp sle i32 %conv32, 239
  br i1 %cmp33, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.else.31
  store i8 -128, i8* %lb, align 1
  store i8 -65, i8* %ub, align 1
  store i32 3, i32* %count, align 4
  br label %if.end.54

if.else.36:                                       ; preds = %if.else.31
  %22 = load i8*, i8** %cp, align 8
  %23 = load i8, i8* %22, align 1
  %conv37 = zext i8 %23 to i32
  %cmp38 = icmp eq i32 %conv37, 240
  br i1 %cmp38, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.else.36
  store i8 -112, i8* %lb, align 1
  store i8 -65, i8* %ub, align 1
  store i32 4, i32* %count, align 4
  br label %if.end.53

if.else.41:                                       ; preds = %if.else.36
  %24 = load i8*, i8** %cp, align 8
  %25 = load i8, i8* %24, align 1
  %conv42 = zext i8 %25 to i32
  %cmp43 = icmp sle i32 %conv42, 243
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.else.41
  store i8 -128, i8* %lb, align 1
  store i8 -65, i8* %ub, align 1
  store i32 4, i32* %count, align 4
  br label %if.end.52

if.else.46:                                       ; preds = %if.else.41
  %26 = load i8*, i8** %cp, align 8
  %27 = load i8, i8* %26, align 1
  %conv47 = zext i8 %27 to i32
  %cmp48 = icmp eq i32 %conv47, 244
  br i1 %cmp48, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.else.46
  store i8 -128, i8* %lb, align 1
  store i8 -113, i8* %ub, align 1
  store i32 4, i32* %count, align 4
  br label %if.end

if.else.51:                                       ; preds = %if.else.46
  br label %error

if.end:                                           ; preds = %if.then.50
  br label %if.end.52

if.end.52:                                        ; preds = %if.end, %if.then.45
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.40
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.35
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.30
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.25
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.20
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.15
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59
  %28 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %29 = load i8, i8* %28, align 1
  %30 = load i8*, i8** %dest.addr, align 8
  %arrayidx61 = getelementptr i8, i8* %30, i64 0
  store i8 %29, i8* %arrayidx61, align 1
  %31 = load i8*, i8** %cp, align 8
  %32 = load i8, i8* %31, align 1
  %conv62 = zext i8 %32 to i32
  %33 = load i8, i8* %lb, align 1
  %conv63 = zext i8 %33 to i32
  %cmp64 = icmp slt i32 %conv62, %conv63
  br i1 %cmp64, label %if.then.70, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.60
  %34 = load i8, i8* %ub, align 1
  %conv66 = zext i8 %34 to i32
  %35 = load i8*, i8** %cp, align 8
  %36 = load i8, i8* %35, align 1
  %conv67 = zext i8 %36 to i32
  %cmp68 = icmp slt i32 %conv66, %conv67
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %lor.lhs.false, %if.end.60
  br label %error

if.end.71:                                        ; preds = %lor.lhs.false
  %37 = load i8*, i8** %cp, align 8
  %incdec.ptr72 = getelementptr i8, i8* %37, i32 1
  store i8* %incdec.ptr72, i8** %cp, align 8
  %38 = load i8, i8* %37, align 1
  %39 = load i8*, i8** %dest.addr, align 8
  %arrayidx73 = getelementptr i8, i8* %39, i64 1
  store i8 %38, i8* %arrayidx73, align 1
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.71
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %count, align 4
  %cmp74 = icmp slt i32 %40, %41
  br i1 %cmp74, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i8*, i8** %cp, align 8
  %43 = load i8, i8* %42, align 1
  %conv76 = zext i8 %43 to i32
  %cmp77 = icmp slt i32 %conv76, 128
  br i1 %cmp77, label %if.then.83, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %for.body
  %44 = load i8*, i8** %cp, align 8
  %45 = load i8, i8* %44, align 1
  %conv80 = zext i8 %45 to i32
  %cmp81 = icmp slt i32 191, %conv80
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %lor.lhs.false.79, %for.body
  br label %error

if.end.84:                                        ; preds = %lor.lhs.false.79
  %46 = load i8*, i8** %cp, align 8
  %incdec.ptr85 = getelementptr i8, i8* %46, i32 1
  store i8* %incdec.ptr85, i8** %cp, align 8
  %47 = load i8, i8* %46, align 1
  %48 = load i32, i32* %i, align 4
  %idxprom = sext i32 %48 to i64
  %49 = load i8*, i8** %dest.addr, align 8
  %arrayidx86 = getelementptr i8, i8* %49, i64 %idxprom
  store i8 %47, i8* %arrayidx86, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.84
  %50 = load i32, i32* %i, align 4
  %inc = add i32 %50, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %51 to i64
  %52 = load i8*, i8** %dest.addr, align 8
  %arrayidx88 = getelementptr i8, i8* %52, i64 %idxprom87
  store i8 0, i8* %arrayidx88, align 1
  %53 = load i32, i32* %count, align 4
  store i32 %53, i32* %retval
  br label %return

error:                                            ; preds = %if.then.83, %if.then.70, %if.else.51
  %54 = load i8*, i8** %dest.addr, align 8
  %arrayidx89 = getelementptr i8, i8* %54, i64 0
  store i8 0, i8* %arrayidx89, align 1
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %error, %for.end, %if.then.5, %if.then
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind
declare i64 @strtoll(i8*, i8**, i32) #5

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() #5

; Function Attrs: nounwind uwtable
define hidden i8* @mpd_qformat_spec(%struct.mpd_t* %dec, %struct.mpd_spec_t* %spec, %struct.mpd_context_t* %ctx, i32* %status) #0 {
entry:
  %retval = alloca i8*, align 8
  %dec.addr = alloca %struct.mpd_t*, align 8
  %spec.addr = alloca %struct.mpd_spec_t*, align 8
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %status.addr = alloca i32*, align 8
  %dt = alloca [64 x i64], align 16
  %tmp = alloca %struct.mpd_t, align 8
  %dplace = alloca i64, align 8
  %result = alloca %struct.mpd_mbstr_t, align 8
  %stackspec = alloca %struct.mpd_spec_t, align 8
  %type = alloca i8, align 1
  %flags7 = alloca i32, align 4
  %workstatus = alloca i32, align 4
  %prec = alloca i64, align 8
  store %struct.mpd_t* %dec, %struct.mpd_t** %dec.addr, align 8
  store %struct.mpd_spec_t* %spec, %struct.mpd_spec_t** %spec.addr, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  store i32* %status, i32** %status.addr, align 8
  %flags = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %tmp, i32 0, i32 0
  store i8 48, i8* %flags, align 1
  %exp = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %tmp, i32 0, i32 1
  store i64 0, i64* %exp, align 8
  %digits = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %tmp, i32 0, i32 2
  store i64 0, i64* %digits, align 8
  %len = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %tmp, i32 0, i32 3
  store i64 0, i64* %len, align 8
  %alloc = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %tmp, i32 0, i32 4
  store i64 64, i64* %alloc, align 8
  %data = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %tmp, i32 0, i32 5
  %arraydecay = getelementptr inbounds [64 x i64], [64 x i64]* %dt, i32 0, i32 0
  store i64* %arraydecay, i64** %data, align 8
  store i64 1, i64* %dplace, align 8
  %0 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %type5 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %0, i32 0, i32 2
  %1 = load i8, i8* %type5, align 1
  store i8 %1, i8* %type, align 1
  store i32 0, i32* %flags7, align 4
  %2 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %min_width = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %2, i32 0, i32 0
  %3 = load i64, i64* %min_width, align 8
  %cmp = icmp sgt i64 %3, 999999999999999999
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %status.addr, align 8
  %5 = load i32, i32* %4, align 4
  %or = or i32 %5, 256
  store i32 %or, i32* %4, align 4
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8, i8* %type, align 1
  %conv = zext i8 %6 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #8
  %7 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr i16, i16* %7, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2
  %conv8 = zext i16 %8 to i32
  %and = and i32 %conv8, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end
  %9 = load i8, i8* %type, align 1
  %conv10 = zext i8 %9 to i32
  %call11 = call i32 @tolower(i32 %conv10) #6
  %conv12 = trunc i32 %call11 to i8
  store i8 %conv12, i8* %type, align 1
  %10 = load i32, i32* %flags7, align 4
  %or13 = or i32 %10, 1
  store i32 %or13, i32* %flags7, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.9, %if.end
  %11 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %sign = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %11, i32 0, i32 4
  %12 = load i8, i8* %sign, align 1
  %conv15 = sext i8 %12 to i32
  %cmp16 = icmp eq i32 %conv15, 32
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.14
  %13 = load i32, i32* %flags7, align 4
  %or19 = or i32 %13, 64
  store i32 %or19, i32* %flags7, align 4
  br label %if.end.27

if.else:                                          ; preds = %if.end.14
  %14 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %sign20 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %14, i32 0, i32 4
  %15 = load i8, i8* %sign20, align 1
  %conv21 = sext i8 %15 to i32
  %cmp22 = icmp eq i32 %conv21, 43
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.else
  %16 = load i32, i32* %flags7, align 4
  %or25 = or i32 %16, 128
  store i32 %or25, i32* %flags7, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.18
  %17 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %call28 = call i32 @mpd_isspecial(%struct.mpd_t* %17)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.else.40

if.then.30:                                       ; preds = %if.end.27
  %18 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %align = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %18, i32 0, i32 3
  %19 = load i8, i8* %align, align 1
  %conv31 = sext i8 %19 to i32
  %cmp32 = icmp eq i32 %conv31, 122
  br i1 %cmp32, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %if.then.30
  %20 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %21 = bitcast %struct.mpd_spec_t* %stackspec to i8*
  %22 = bitcast %struct.mpd_spec_t* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 48, i32 8, i1 false)
  %fill = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %stackspec, i32 0, i32 5
  %arrayidx35 = getelementptr [5 x i8], [5 x i8]* %fill, i32 0, i64 0
  store i8 32, i8* %arrayidx35, align 1
  %fill36 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %stackspec, i32 0, i32 5
  %arrayidx37 = getelementptr [5 x i8], [5 x i8]* %fill36, i32 0, i64 1
  store i8 0, i8* %arrayidx37, align 1
  %align38 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %stackspec, i32 0, i32 3
  store i8 62, i8* %align38, align 1
  store %struct.mpd_spec_t* %stackspec, %struct.mpd_spec_t** %spec.addr, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %if.then.30
  br label %if.end.109

if.else.40:                                       ; preds = %if.end.27
  store i32 0, i32* %workstatus, align 4
  %23 = load i8, i8* %type, align 1
  %conv43 = sext i8 %23 to i32
  switch i32 %conv43, label %sw.default [
    i32 103, label %sw.bb
    i32 101, label %sw.bb.45
    i32 37, label %sw.bb.47
    i32 102, label %sw.bb.54
  ]

sw.bb:                                            ; preds = %if.else.40
  %24 = load i32, i32* %flags7, align 4
  %or44 = or i32 %24, 2
  store i32 %or44, i32* %flags7, align 4
  br label %sw.epilog

sw.bb.45:                                         ; preds = %if.else.40
  %25 = load i32, i32* %flags7, align 4
  %or46 = or i32 %25, 8
  store i32 %or46, i32* %flags7, align 4
  br label %sw.epilog

sw.bb.47:                                         ; preds = %if.else.40
  %26 = load i32, i32* %flags7, align 4
  %or48 = or i32 %26, 32
  store i32 %or48, i32* %flags7, align 4
  %27 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %28 = load i32*, i32** %status.addr, align 8
  %call49 = call i32 @mpd_qcopy(%struct.mpd_t* %tmp, %struct.mpd_t* %27, i32* %28)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %sw.bb.47
  store i8* null, i8** %retval
  br label %return

if.end.52:                                        ; preds = %sw.bb.47
  %exp53 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %tmp, i32 0, i32 1
  %29 = load i64, i64* %exp53, align 8
  %add = add i64 %29, 2
  store i64 %add, i64* %exp53, align 8
  store %struct.mpd_t* %tmp, %struct.mpd_t** %dec.addr, align 8
  store i8 102, i8* %type, align 1
  br label %sw.bb.54

sw.bb.54:                                         ; preds = %if.else.40, %if.end.52
  %30 = load i32, i32* %flags7, align 4
  %or55 = or i32 %30, 16
  store i32 %or55, i32* %flags7, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.40
  call void @abort() #9
  unreachable

sw.epilog:                                        ; preds = %sw.bb.54, %sw.bb.45, %sw.bb
  %31 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %prec56 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %31, i32 0, i32 1
  %32 = load i64, i64* %prec56, align 8
  %cmp57 = icmp sge i64 %32, 0
  br i1 %cmp57, label %if.then.59, label %if.end.90

if.then.59:                                       ; preds = %sw.epilog
  %33 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %prec60 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %33, i32 0, i32 1
  %34 = load i64, i64* %prec60, align 8
  %cmp61 = icmp sgt i64 %34, 999999999999999999
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.then.59
  %35 = load i32*, i32** %status.addr, align 8
  %36 = load i32, i32* %35, align 4
  %or64 = or i32 %36, 256
  store i32 %or64, i32* %35, align 4
  br label %error

if.end.65:                                        ; preds = %if.then.59
  %37 = load i8, i8* %type, align 1
  %conv66 = sext i8 %37 to i32
  switch i32 %conv66, label %sw.epilog.89 [
    i32 103, label %sw.bb.67
    i32 101, label %sw.bb.77
    i32 102, label %sw.bb.86
  ]

sw.bb.67:                                         ; preds = %if.end.65
  %38 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %prec68 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %38, i32 0, i32 1
  %39 = load i64, i64* %prec68, align 8
  %cmp69 = icmp eq i64 %39, 0
  br i1 %cmp69, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.67
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.67
  %40 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %prec71 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %40, i32 0, i32 1
  %41 = load i64, i64* %prec71, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1, %cond.true ], [ %41, %cond.false ]
  store i64 %cond, i64* %prec, align 8
  %42 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %digits72 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %42, i32 0, i32 2
  %43 = load i64, i64* %digits72, align 8
  %44 = load i64, i64* %prec, align 8
  %cmp73 = icmp sgt i64 %43, %44
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %cond.end
  %45 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %46 = load i64, i64* %prec, align 8
  %47 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  call void @_mpd_round(%struct.mpd_t* %tmp, %struct.mpd_t* %45, i64 %46, %struct.mpd_context_t* %47, i32* %workstatus)
  store %struct.mpd_t* %tmp, %struct.mpd_t** %dec.addr, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %cond.end
  br label %sw.epilog.89

sw.bb.77:                                         ; preds = %if.end.65
  %48 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %call78 = call i32 @mpd_iszero(%struct.mpd_t* %48)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.80, label %if.else.82

if.then.80:                                       ; preds = %sw.bb.77
  %49 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %prec81 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %49, i32 0, i32 1
  %50 = load i64, i64* %prec81, align 8
  %sub = sub i64 1, %50
  store i64 %sub, i64* %dplace, align 8
  br label %if.end.85

if.else.82:                                       ; preds = %sw.bb.77
  %51 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %52 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %prec83 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %52, i32 0, i32 1
  %53 = load i64, i64* %prec83, align 8
  %add84 = add i64 %53, 1
  %54 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  call void @_mpd_round(%struct.mpd_t* %tmp, %struct.mpd_t* %51, i64 %add84, %struct.mpd_context_t* %54, i32* %workstatus)
  store %struct.mpd_t* %tmp, %struct.mpd_t** %dec.addr, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.then.80
  br label %sw.epilog.89

sw.bb.86:                                         ; preds = %if.end.65
  %55 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %56 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %prec87 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %56, i32 0, i32 1
  %57 = load i64, i64* %prec87, align 8
  %sub88 = sub i64 0, %57
  %58 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  call void @mpd_qrescale(%struct.mpd_t* %tmp, %struct.mpd_t* %55, i64 %sub88, %struct.mpd_context_t* %58, i32* %workstatus)
  store %struct.mpd_t* %tmp, %struct.mpd_t** %dec.addr, align 8
  br label %sw.epilog.89

sw.epilog.89:                                     ; preds = %if.end.65, %sw.bb.86, %if.end.85, %if.end.76
  br label %if.end.90

if.end.90:                                        ; preds = %sw.epilog.89, %sw.epilog
  %59 = load i8, i8* %type, align 1
  %conv91 = sext i8 %59 to i32
  %cmp92 = icmp eq i32 %conv91, 102
  br i1 %cmp92, label %if.then.94, label %if.end.102

if.then.94:                                       ; preds = %if.end.90
  %60 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %call95 = call i32 @mpd_iszero(%struct.mpd_t* %60)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %land.lhs.true, label %if.end.101

land.lhs.true:                                    ; preds = %if.then.94
  %61 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %exp97 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %61, i32 0, i32 1
  %62 = load i64, i64* %exp97, align 8
  %cmp98 = icmp sgt i64 %62, 0
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %land.lhs.true
  %63 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %64 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  call void @mpd_qrescale(%struct.mpd_t* %tmp, %struct.mpd_t* %63, i64 0, %struct.mpd_context_t* %64, i32* %workstatus)
  store %struct.mpd_t* %tmp, %struct.mpd_t** %dec.addr, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %land.lhs.true, %if.then.94
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.end.90
  %65 = load i32, i32* %workstatus, align 4
  %and103 = and i32 %65, 958
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.108

if.then.105:                                      ; preds = %if.end.102
  %66 = load i32, i32* %workstatus, align 4
  %and106 = and i32 %66, 958
  %67 = load i32*, i32** %status.addr, align 8
  %68 = load i32, i32* %67, align 4
  %or107 = or i32 %68, %and106
  store i32 %or107, i32* %67, align 4
  br label %error

if.end.108:                                       ; preds = %if.end.102
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.39
  %data110 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %result, i32 0, i32 3
  %69 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %70 = load i32, i32* %flags7, align 4
  %71 = load i64, i64* %dplace, align 8
  %call111 = call i64 @_mpd_to_string(i8** %data110, %struct.mpd_t* %69, i32 %70, i64 %71)
  %nbytes = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %result, i32 0, i32 0
  store i64 %call111, i64* %nbytes, align 8
  %nbytes112 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %result, i32 0, i32 0
  %72 = load i64, i64* %nbytes112, align 8
  %nchars = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %result, i32 0, i32 1
  store i64 %72, i64* %nchars, align 8
  %nbytes113 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %result, i32 0, i32 0
  %73 = load i64, i64* %nbytes113, align 8
  %cmp114 = icmp slt i64 %73, 0
  br i1 %cmp114, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %if.end.109
  %74 = load i32*, i32** %status.addr, align 8
  %75 = load i32, i32* %74, align 4
  %or117 = or i32 %75, 512
  store i32 %or117, i32* %74, align 4
  br label %error

if.end.118:                                       ; preds = %if.end.109
  %76 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %dot = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %76, i32 0, i32 6
  %77 = load i8*, i8** %dot, align 8
  %78 = load i8, i8* %77, align 1
  %conv119 = sext i8 %78 to i32
  %cmp120 = icmp ne i32 %conv119, 0
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.137

land.lhs.true.122:                                ; preds = %if.end.118
  %79 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %call123 = call i32 @mpd_isspecial(%struct.mpd_t* %79)
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.end.137, label %if.then.125

if.then.125:                                      ; preds = %land.lhs.true.122
  %nchars126 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %result, i32 0, i32 1
  %80 = load i64, i64* %nchars126, align 8
  %cmp127 = icmp sgt i64 %80, 1000000000000000035
  br i1 %cmp127, label %if.then.129, label %if.end.132

if.then.129:                                      ; preds = %if.then.125
  %81 = load i32*, i32** %status.addr, align 8
  %82 = load i32, i32* %81, align 4
  %or130 = or i32 %82, 256
  store i32 %or130, i32* %81, align 4
  %83 = load void (i8*)*, void (i8*)** @mpd_free, align 8
  %data131 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %result, i32 0, i32 3
  %84 = load i8*, i8** %data131, align 8
  call void %83(i8* %84)
  br label %error

if.end.132:                                       ; preds = %if.then.125
  %85 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %86 = load i32*, i32** %status.addr, align 8
  %call133 = call i32 @_mpd_apply_lconv(%struct.mpd_mbstr_t* %result, %struct.mpd_spec_t* %85, i32* %86)
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.end.136, label %if.then.135

if.then.135:                                      ; preds = %if.end.132
  br label %error

if.end.136:                                       ; preds = %if.end.132
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %land.lhs.true.122, %if.end.118
  %87 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %min_width138 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %87, i32 0, i32 0
  %88 = load i64, i64* %min_width138, align 8
  %tobool139 = icmp ne i64 %88, 0
  br i1 %tobool139, label %if.then.140, label %if.end.145

if.then.140:                                      ; preds = %if.end.137
  %89 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %90 = load i32*, i32** %status.addr, align 8
  %call141 = call i32 @_mpd_add_pad(%struct.mpd_mbstr_t* %result, %struct.mpd_spec_t* %89, i32* %90)
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.end.144, label %if.then.143

if.then.143:                                      ; preds = %if.then.140
  br label %error

if.end.144:                                       ; preds = %if.then.140
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.end.137
  call void @mpd_del(%struct.mpd_t* %tmp)
  %data146 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %result, i32 0, i32 3
  %91 = load i8*, i8** %data146, align 8
  store i8* %91, i8** %retval
  br label %return

error:                                            ; preds = %if.then.143, %if.then.135, %if.then.129, %if.then.116, %if.then.105, %if.then.63
  call void @mpd_del(%struct.mpd_t* %tmp)
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %error, %if.end.145, %if.then.51, %if.then
  %92 = load i8*, i8** %retval
  ret i8* %92
}

; Function Attrs: nounwind
declare i32 @tolower(i32) #5

declare hidden i32 @mpd_isspecial(%struct.mpd_t*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare hidden i32 @mpd_qcopy(%struct.mpd_t*, %struct.mpd_t*, i32*) #1

; Function Attrs: noreturn nounwind
declare void @abort() #7

; Function Attrs: inlinehint nounwind uwtable
define internal void @_mpd_round(%struct.mpd_t* %result, %struct.mpd_t* %a, i64 %prec, %struct.mpd_context_t* %ctx, i32* %status) #2 {
entry:
  %result.addr = alloca %struct.mpd_t*, align 8
  %a.addr = alloca %struct.mpd_t*, align 8
  %prec.addr = alloca i64, align 8
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %status.addr = alloca i32*, align 8
  %exp = alloca i64, align 8
  store %struct.mpd_t* %result, %struct.mpd_t** %result.addr, align 8
  store %struct.mpd_t* %a, %struct.mpd_t** %a.addr, align 8
  store i64 %prec, i64* %prec.addr, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  store i32* %status, i32** %status.addr, align 8
  %0 = load %struct.mpd_t*, %struct.mpd_t** %a.addr, align 8
  %exp1 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %0, i32 0, i32 1
  %1 = load i64, i64* %exp1, align 8
  %2 = load %struct.mpd_t*, %struct.mpd_t** %a.addr, align 8
  %digits = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %2, i32 0, i32 2
  %3 = load i64, i64* %digits, align 8
  %add = add i64 %1, %3
  %4 = load i64, i64* %prec.addr, align 8
  %sub = sub i64 %add, %4
  store i64 %sub, i64* %exp, align 8
  %5 = load i64, i64* %prec.addr, align 8
  %cmp = icmp sle i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %7 = load i32*, i32** %status.addr, align 8
  call void @mpd_seterror(%struct.mpd_t* %6, i32 256, i32* %7)
  br label %if.end.11

if.end:                                           ; preds = %entry
  %8 = load %struct.mpd_t*, %struct.mpd_t** %a.addr, align 8
  %call = call i32 @mpd_isspecial(%struct.mpd_t* %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load %struct.mpd_t*, %struct.mpd_t** %a.addr, align 8
  %call2 = call i32 @mpd_iszero(%struct.mpd_t* %9)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %10 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %11 = load %struct.mpd_t*, %struct.mpd_t** %a.addr, align 8
  %12 = load i32*, i32** %status.addr, align 8
  %call5 = call i32 @mpd_qcopy(%struct.mpd_t* %10, %struct.mpd_t* %11, i32* %12)
  br label %if.end.11

if.end.6:                                         ; preds = %lor.lhs.false
  %13 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %14 = load %struct.mpd_t*, %struct.mpd_t** %a.addr, align 8
  %15 = load i64, i64* %exp, align 8
  %16 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %17 = load i32*, i32** %status.addr, align 8
  call void @mpd_qrescale_fmt(%struct.mpd_t* %13, %struct.mpd_t* %14, i64 %15, %struct.mpd_context_t* %16, i32* %17)
  %18 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %digits7 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %18, i32 0, i32 2
  %19 = load i64, i64* %digits7, align 8
  %20 = load i64, i64* %prec.addr, align 8
  %cmp8 = icmp sgt i64 %19, %20
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %21 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %22 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %23 = load i64, i64* %exp, align 8
  %add10 = add i64 %23, 1
  %24 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %25 = load i32*, i32** %status.addr, align 8
  call void @mpd_qrescale_fmt(%struct.mpd_t* %21, %struct.mpd_t* %22, i64 %add10, %struct.mpd_context_t* %24, i32* %25)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then, %if.then.4, %if.then.9, %if.end.6
  ret void
}

declare hidden i32 @mpd_iszero(%struct.mpd_t*) #1

declare hidden void @mpd_qrescale(%struct.mpd_t*, %struct.mpd_t*, i64, %struct.mpd_context_t*, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @_mpd_apply_lconv(%struct.mpd_mbstr_t* %result, %struct.mpd_spec_t* %spec, i32* %status) #0 {
entry:
  %retval = alloca i32, align 4
  %result.addr = alloca %struct.mpd_mbstr_t*, align 8
  %spec.addr = alloca %struct.mpd_spec_t*, align 8
  %status.addr = alloca i32*, align 8
  %sign = alloca i8*, align 8
  %intpart = alloca i8*, align 8
  %dot = alloca i8*, align 8
  %rest = alloca i8*, align 8
  %dp = alloca i8*, align 8
  %decstring = alloca i8*, align 8
  %n_int = alloca i64, align 8
  %n_rest = alloca i64, align 8
  store %struct.mpd_mbstr_t* %result, %struct.mpd_mbstr_t** %result.addr, align 8
  store %struct.mpd_spec_t* %spec, %struct.mpd_spec_t** %spec.addr, align 8
  store i32* %status, i32** %status.addr, align 8
  store i8* null, i8** %sign, align 8
  store i8* null, i8** %intpart, align 8
  store i8* null, i8** %dot, align 8
  %0 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %result.addr, align 8
  %data = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %0, i32 0, i32 3
  %1 = load i8*, i8** %data, align 8
  store i8* %1, i8** %dp, align 8
  %2 = load i8*, i8** %dp, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 43
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %dp, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 45
  br i1 %cmp3, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %6 = load i8*, i8** %dp, align 8
  %7 = load i8, i8* %6, align 1
  %conv6 = sext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv6, 32
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false, %entry
  %8 = load i8*, i8** %dp, align 8
  %incdec.ptr = getelementptr i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %dp, align 8
  store i8* %8, i8** %sign, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.5
  %9 = load i8*, i8** %dp, align 8
  %incdec.ptr9 = getelementptr i8, i8* %9, i32 1
  store i8* %incdec.ptr9, i8** %dp, align 8
  store i8* %9, i8** %intpart, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %10 = load i8*, i8** %dp, align 8
  %11 = load i8, i8* %10, align 1
  %conv10 = zext i8 %11 to i32
  %idxprom = sext i32 %conv10 to i64
  %call = call i16** @__ctype_b_loc() #8
  %12 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr i16, i16* %12, i64 %idxprom
  %13 = load i16, i16* %arrayidx, align 2
  %conv11 = zext i16 %13 to i32
  %and = and i32 %conv11, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i8*, i8** %dp, align 8
  %incdec.ptr12 = getelementptr i8, i8* %14, i32 1
  store i8* %incdec.ptr12, i8** %dp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i8*, i8** %dp, align 8
  %16 = load i8*, i8** %intpart, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %n_int, align 8
  %17 = load i8*, i8** %dp, align 8
  %18 = load i8, i8* %17, align 1
  %conv13 = sext i8 %18 to i32
  %cmp14 = icmp eq i32 %conv13, 46
  br i1 %cmp14, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %while.end
  %19 = load i8*, i8** %dp, align 8
  %incdec.ptr17 = getelementptr i8, i8* %19, i32 1
  store i8* %incdec.ptr17, i8** %dp, align 8
  %20 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %dot18 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %20, i32 0, i32 6
  %21 = load i8*, i8** %dot18, align 8
  store i8* %21, i8** %dot, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %while.end
  %22 = load i8*, i8** %dp, align 8
  store i8* %22, i8** %rest, align 8
  %23 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %result.addr, align 8
  %nbytes = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %23, i32 0, i32 0
  %24 = load i64, i64* %nbytes, align 8
  %25 = load i8*, i8** %dp, align 8
  %26 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %result.addr, align 8
  %data20 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %26, i32 0, i32 3
  %27 = load i8*, i8** %data20, align 8
  %sub.ptr.lhs.cast21 = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast22 = ptrtoint i8* %27 to i64
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22
  %sub = sub i64 %24, %sub.ptr.sub23
  store i64 %sub, i64* %n_rest, align 8
  %28 = load i8*, i8** %dot, align 8
  %cmp24 = icmp eq i8* %28, null
  br i1 %cmp24, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.end.19
  %29 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %sep = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %29, i32 0, i32 7
  %30 = load i8*, i8** %sep, align 8
  %31 = load i8, i8* %30, align 1
  %conv26 = sext i8 %31 to i32
  %cmp27 = icmp eq i32 %conv26, 0
  br i1 %cmp27, label %if.then.33, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %land.lhs.true
  %32 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %grouping = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %32, i32 0, i32 8
  %33 = load i8*, i8** %grouping, align 8
  %34 = load i8, i8* %33, align 1
  %conv30 = sext i8 %34 to i32
  %cmp31 = icmp eq i32 %conv30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %lor.lhs.false.29, %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.34:                                        ; preds = %lor.lhs.false.29, %if.end.19
  %35 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %result.addr, align 8
  %data35 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %35, i32 0, i32 3
  %36 = load i8*, i8** %data35, align 8
  store i8* %36, i8** %decstring, align 8
  %37 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %result.addr, align 8
  %data36 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %37, i32 0, i32 3
  store i8* null, i8** %data36, align 8
  %38 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %result.addr, align 8
  %39 = load i8*, i8** %sign, align 8
  %40 = load i8*, i8** %intpart, align 8
  %41 = load i64, i64* %n_int, align 8
  %42 = load i8*, i8** %dot, align 8
  %43 = load i8*, i8** %rest, align 8
  %44 = load i64, i64* %n_rest, align 8
  %45 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  call void @_mpd_add_sep_dot(%struct.mpd_mbstr_t* %38, i8* %39, i8* %40, i64 %41, i8* %42, i8* %43, i64 %44, %struct.mpd_spec_t* %45)
  %46 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %result.addr, align 8
  %nbytes37 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %46, i32 0, i32 0
  %47 = load i64, i64* %nbytes37, align 8
  %add = add i64 %47, 1
  %call38 = call i8* @mpd_alloc(i64 %add, i64 1)
  %48 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %result.addr, align 8
  %data39 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %48, i32 0, i32 3
  store i8* %call38, i8** %data39, align 8
  %49 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %result.addr, align 8
  %data40 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %49, i32 0, i32 3
  %50 = load i8*, i8** %data40, align 8
  %cmp41 = icmp eq i8* %50, null
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.34
  %51 = load i32*, i32** %status.addr, align 8
  %52 = load i32, i32* %51, align 4
  %or = or i32 %52, 512
  store i32 %or, i32* %51, align 4
  %53 = load void (i8*)*, void (i8*)** @mpd_free, align 8
  %54 = load i8*, i8** %decstring, align 8
  call void %53(i8* %54)
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.34
  %55 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %result.addr, align 8
  %56 = load i8*, i8** %sign, align 8
  %57 = load i8*, i8** %intpart, align 8
  %58 = load i64, i64* %n_int, align 8
  %59 = load i8*, i8** %dot, align 8
  %60 = load i8*, i8** %rest, align 8
  %61 = load i64, i64* %n_rest, align 8
  %62 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  call void @_mpd_add_sep_dot(%struct.mpd_mbstr_t* %55, i8* %56, i8* %57, i64 %58, i8* %59, i8* %60, i64 %61, %struct.mpd_spec_t* %62)
  %63 = load void (i8*)*, void (i8*)** @mpd_free, align 8
  %64 = load i8*, i8** %decstring, align 8
  call void %63(i8* %64)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then.43, %if.then.33
  %65 = load i32, i32* %retval
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal i32 @_mpd_add_pad(%struct.mpd_mbstr_t* %result, %struct.mpd_spec_t* %spec, i32* %status) #0 {
entry:
  %retval = alloca i32, align 4
  %result.addr = alloca %struct.mpd_mbstr_t*, align 8
  %spec.addr = alloca %struct.mpd_spec_t*, align 8
  %status.addr = alloca i32*, align 8
  %add_chars = alloca i64, align 8
  %add_bytes = alloca i64, align 8
  %lpad = alloca i64, align 8
  %rpad = alloca i64, align 8
  %n_fill = alloca i64, align 8
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %align = alloca i8, align 1
  %err = alloca i8, align 1
  %cp = alloca i8*, align 8
  store %struct.mpd_mbstr_t* %result, %struct.mpd_mbstr_t** %result.addr, align 8
  store %struct.mpd_spec_t* %spec, %struct.mpd_spec_t** %spec.addr, align 8
  store i32* %status, i32** %status.addr, align 8
  %0 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %result.addr, align 8
  %nchars = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %0, i32 0, i32 1
  %1 = load i64, i64* %nchars, align 8
  %2 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %min_width = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %2, i32 0, i32 0
  %3 = load i64, i64* %min_width, align 8
  %cmp = icmp slt i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end.88

if.then:                                          ; preds = %entry
  store i64 0, i64* %lpad, align 8
  store i64 0, i64* %rpad, align 8
  %4 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %align1 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %4, i32 0, i32 3
  %5 = load i8, i8* %align1, align 1
  store i8 %5, i8* %align, align 1
  store i8 0, i8* %err, align 1
  %6 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %fill = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %6, i32 0, i32 5
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %fill, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay) #10
  store i64 %call, i64* %n_fill, align 8
  %7 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %min_width2 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %7, i32 0, i32 0
  %8 = load i64, i64* %min_width2, align 8
  %9 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %result.addr, align 8
  %nchars3 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %9, i32 0, i32 1
  %10 = load i64, i64* %nchars3, align 8
  %sub = sub i64 %8, %10
  store i64 %sub, i64* %add_chars, align 8
  %11 = load i64, i64* %add_chars, align 8
  %12 = load i64, i64* %n_fill, align 8
  %mul = mul i64 %11, %12
  store i64 %mul, i64* %add_bytes, align 8
  %13 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %result.addr, align 8
  %data = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %13, i32 0, i32 3
  %14 = load i8*, i8** %data, align 8
  %15 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %result.addr, align 8
  %nbytes = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %15, i32 0, i32 0
  %16 = load i64, i64* %nbytes, align 8
  %17 = load i64, i64* %add_bytes, align 8
  %add = add i64 %16, %17
  %add4 = add i64 %add, 1
  %call5 = call i8* @mpd_realloc(i8* %14, i64 %add4, i64 1, i8* %err)
  %18 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %result.addr, align 8
  %data6 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %18, i32 0, i32 3
  store i8* %call5, i8** %data6, align 8
  store i8* %call5, i8** %cp, align 8
  %19 = load i8, i8* %err, align 1
  %tobool = icmp ne i8 %19, 0
  br i1 %tobool, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %20 = load i32*, i32** %status.addr, align 8
  %21 = load i32, i32* %20, align 4
  %or = or i32 %21, 512
  store i32 %or, i32* %20, align 4
  %22 = load void (i8*)*, void (i8*)** @mpd_free, align 8
  %23 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %result.addr, align 8
  %data8 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %23, i32 0, i32 3
  %24 = load i8*, i8** %data8, align 8
  call void %22(i8* %24)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %25 = load i8, i8* %align, align 1
  %conv = sext i8 %25 to i32
  %cmp9 = icmp eq i32 %conv, 122
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i8 61, i8* %align, align 1
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %26 = load i8, i8* %align, align 1
  %conv13 = sext i8 %26 to i32
  %cmp14 = icmp eq i32 %conv13, 60
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.12
  %27 = load i64, i64* %add_chars, align 8
  store i64 %27, i64* %rpad, align 8
  br label %if.end.27

if.else:                                          ; preds = %if.end.12
  %28 = load i8, i8* %align, align 1
  %conv17 = sext i8 %28 to i32
  %cmp18 = icmp eq i32 %conv17, 62
  br i1 %cmp18, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %29 = load i8, i8* %align, align 1
  %conv20 = sext i8 %29 to i32
  %cmp21 = icmp eq i32 %conv20, 61
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.else
  %30 = load i64, i64* %add_chars, align 8
  store i64 %30, i64* %lpad, align 8
  br label %if.end.26

if.else.24:                                       ; preds = %lor.lhs.false
  %31 = load i64, i64* %add_chars, align 8
  %div = sdiv i64 %31, 2
  store i64 %div, i64* %lpad, align 8
  %32 = load i64, i64* %add_chars, align 8
  %33 = load i64, i64* %lpad, align 8
  %sub25 = sub i64 %32, %33
  store i64 %sub25, i64* %rpad, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.16
  %34 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %result.addr, align 8
  %nbytes28 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %34, i32 0, i32 0
  %35 = load i64, i64* %nbytes28, align 8
  store i64 %35, i64* %len, align 8
  %36 = load i8, i8* %align, align 1
  %conv29 = sext i8 %36 to i32
  %cmp30 = icmp eq i32 %conv29, 61
  br i1 %cmp30, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %if.end.27
  %37 = load i8*, i8** %cp, align 8
  %38 = load i8, i8* %37, align 1
  %conv32 = sext i8 %38 to i32
  %cmp33 = icmp eq i32 %conv32, 45
  br i1 %cmp33, label %if.then.43, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %land.lhs.true
  %39 = load i8*, i8** %cp, align 8
  %40 = load i8, i8* %39, align 1
  %conv36 = sext i8 %40 to i32
  %cmp37 = icmp eq i32 %conv36, 43
  br i1 %cmp37, label %if.then.43, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.35
  %41 = load i8*, i8** %cp, align 8
  %42 = load i8, i8* %41, align 1
  %conv40 = sext i8 %42 to i32
  %cmp41 = icmp eq i32 %conv40, 32
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %lor.lhs.false.39, %lor.lhs.false.35, %land.lhs.true
  %43 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr i8, i8* %43, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %44 = load i64, i64* %len, align 8
  %dec = add i64 %44, -1
  store i64 %dec, i64* %len, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %lor.lhs.false.39, %if.end.27
  %45 = load i8*, i8** %cp, align 8
  %46 = load i64, i64* %n_fill, align 8
  %47 = load i64, i64* %lpad, align 8
  %mul45 = mul i64 %46, %47
  %add.ptr = getelementptr i8, i8* %45, i64 %mul45
  %48 = load i8*, i8** %cp, align 8
  %49 = load i64, i64* %len, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr, i8* %48, i64 %49, i32 1, i1 false)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %if.end.44
  %50 = load i64, i64* %i, align 8
  %51 = load i64, i64* %lpad, align 8
  %cmp46 = icmp ult i64 %50, %51
  br i1 %cmp46, label %for.body, label %for.end.58

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %j, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc, %for.body
  %52 = load i64, i64* %j, align 8
  %53 = load i64, i64* %n_fill, align 8
  %cmp49 = icmp ult i64 %52, %53
  br i1 %cmp49, label %for.body.51, label %for.end

for.body.51:                                      ; preds = %for.cond.48
  %54 = load i64, i64* %j, align 8
  %55 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %fill52 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %55, i32 0, i32 5
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %fill52, i32 0, i64 %54
  %56 = load i8, i8* %arrayidx, align 1
  %57 = load i64, i64* %i, align 8
  %58 = load i64, i64* %n_fill, align 8
  %mul53 = mul i64 %57, %58
  %59 = load i64, i64* %j, align 8
  %add54 = add i64 %mul53, %59
  %60 = load i8*, i8** %cp, align 8
  %arrayidx55 = getelementptr i8, i8* %60, i64 %add54
  store i8 %56, i8* %arrayidx55, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.51
  %61 = load i64, i64* %j, align 8
  %inc = add i64 %61, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond.48

for.end:                                          ; preds = %for.cond.48
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end
  %62 = load i64, i64* %i, align 8
  %inc57 = add i64 %62, 1
  store i64 %inc57, i64* %i, align 8
  br label %for.cond

for.end.58:                                       ; preds = %for.cond
  %63 = load i64, i64* %n_fill, align 8
  %64 = load i64, i64* %lpad, align 8
  %mul59 = mul i64 %63, %64
  %65 = load i64, i64* %len, align 8
  %add60 = add i64 %mul59, %65
  %66 = load i8*, i8** %cp, align 8
  %add.ptr61 = getelementptr i8, i8* %66, i64 %add60
  store i8* %add.ptr61, i8** %cp, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.78, %for.end.58
  %67 = load i64, i64* %i, align 8
  %68 = load i64, i64* %rpad, align 8
  %cmp63 = icmp ult i64 %67, %68
  br i1 %cmp63, label %for.body.65, label %for.end.80

for.body.65:                                      ; preds = %for.cond.62
  store i64 0, i64* %j, align 8
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.75, %for.body.65
  %69 = load i64, i64* %j, align 8
  %70 = load i64, i64* %n_fill, align 8
  %cmp67 = icmp ult i64 %69, %70
  br i1 %cmp67, label %for.body.69, label %for.end.77

for.body.69:                                      ; preds = %for.cond.66
  %71 = load i64, i64* %j, align 8
  %72 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %fill70 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %72, i32 0, i32 5
  %arrayidx71 = getelementptr [5 x i8], [5 x i8]* %fill70, i32 0, i64 %71
  %73 = load i8, i8* %arrayidx71, align 1
  %74 = load i64, i64* %i, align 8
  %75 = load i64, i64* %n_fill, align 8
  %mul72 = mul i64 %74, %75
  %76 = load i64, i64* %j, align 8
  %add73 = add i64 %mul72, %76
  %77 = load i8*, i8** %cp, align 8
  %arrayidx74 = getelementptr i8, i8* %77, i64 %add73
  store i8 %73, i8* %arrayidx74, align 1
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.69
  %78 = load i64, i64* %j, align 8
  %inc76 = add i64 %78, 1
  store i64 %inc76, i64* %j, align 8
  br label %for.cond.66

for.end.77:                                       ; preds = %for.cond.66
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.end.77
  %79 = load i64, i64* %i, align 8
  %inc79 = add i64 %79, 1
  store i64 %inc79, i64* %i, align 8
  br label %for.cond.62

for.end.80:                                       ; preds = %for.cond.62
  %80 = load i64, i64* %add_bytes, align 8
  %81 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %result.addr, align 8
  %nbytes81 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %81, i32 0, i32 0
  %82 = load i64, i64* %nbytes81, align 8
  %add82 = add i64 %82, %80
  store i64 %add82, i64* %nbytes81, align 8
  %83 = load i64, i64* %add_chars, align 8
  %84 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %result.addr, align 8
  %nchars83 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %84, i32 0, i32 1
  %85 = load i64, i64* %nchars83, align 8
  %add84 = add i64 %85, %83
  store i64 %add84, i64* %nchars83, align 8
  %86 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %result.addr, align 8
  %nbytes85 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %86, i32 0, i32 0
  %87 = load i64, i64* %nbytes85, align 8
  %88 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %result.addr, align 8
  %data86 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %88, i32 0, i32 3
  %89 = load i8*, i8** %data86, align 8
  %arrayidx87 = getelementptr i8, i8* %89, i64 %87
  store i8 0, i8* %arrayidx87, align 1
  br label %if.end.88

if.end.88:                                        ; preds = %for.end.80, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.88, %if.then.7
  %90 = load i32, i32* %retval
  ret i32 %90
}

declare hidden void @mpd_del(%struct.mpd_t*) #1

; Function Attrs: nounwind uwtable
define hidden i8* @mpd_qformat(%struct.mpd_t* %dec, i8* %fmt, %struct.mpd_context_t* %ctx, i32* %status) #0 {
entry:
  %retval = alloca i8*, align 8
  %dec.addr = alloca %struct.mpd_t*, align 8
  %fmt.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %status.addr = alloca i32*, align 8
  %spec = alloca %struct.mpd_spec_t, align 8
  store %struct.mpd_t* %dec, %struct.mpd_t** %dec.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  store i32* %status, i32** %status.addr, align 8
  %0 = load i8*, i8** %fmt.addr, align 8
  %call = call i32 @mpd_parse_fmt_str(%struct.mpd_spec_t* %spec, i8* %0, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %status.addr, align 8
  %2 = load i32, i32* %1, align 4
  %or = or i32 %2, 256
  store i32 %or, i32* %1, align 4
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %4 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %5 = load i32*, i32** %status.addr, align 8
  %call1 = call i8* @mpd_qformat_spec(%struct.mpd_t* %3, %struct.mpd_spec_t* %spec, %struct.mpd_context_t* %4, i32* %5)
  store i8* %call1, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_snprint_flags(i8* %dest, i32 %nmemb, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %nmemb.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %cp = alloca i8*, align 8
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %nmemb, i32* %nmemb.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %dest.addr, align 8
  store i8 0, i8* %0, align 1
  %1 = load i8*, i8** %dest.addr, align 8
  store i8* %1, i8** %cp, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %2, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %flags.addr, align 4
  %4 = load i32, i32* %j, align 4
  %shl = shl i32 1, %4
  %and = and i32 %3, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %for.body
  %5 = load i8*, i8** %cp, align 8
  %6 = load i32, i32* %nmemb.addr, align 4
  %conv = sext i32 %6 to i64
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr [15 x i8*], [15 x i8*]* @mpd_flag_string, i32 0, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %5, i64 %conv, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* %8) #6
  store i32 %call, i32* %n, align 4
  %9 = load i32, i32* %n, align 4
  %cmp1 = icmp slt i32 %9, 0
  br i1 %cmp1, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %10 = load i32, i32* %n, align 4
  %11 = load i32, i32* %nmemb.addr, align 4
  %cmp3 = icmp sge i32 %10, %11
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %lor.lhs.false, %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %12 = load i32, i32* %n, align 4
  %13 = load i8*, i8** %cp, align 8
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %cp, align 8
  %14 = load i32, i32* %n, align 4
  %15 = load i32, i32* %nmemb.addr, align 4
  %sub = sub i32 %15, %14
  store i32 %sub, i32* %nmemb.addr, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %16 = load i32, i32* %j, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i8*, i8** %cp, align 8
  %18 = load i8*, i8** %dest.addr, align 8
  %cmp7 = icmp ne i8* %17, %18
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.end
  %19 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr i8, i8* %19, i32 -1
  store i8* %incdec.ptr, i8** %cp, align 8
  store i8 0, i8* %incdec.ptr, align 1
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %for.end
  %20 = load i8*, i8** %cp, align 8
  %21 = load i8*, i8** %dest.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv11 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.5
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #5

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_lsnprint_flags(i8* %dest, i32 %nmemb, i32 %flags, i8** %flag_string) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %nmemb.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %flag_string.addr = alloca i8**, align 8
  %cp = alloca i8*, align 8
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %nmemb, i32* %nmemb.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i8** %flag_string, i8*** %flag_string.addr, align 8
  %0 = load i8**, i8*** %flag_string.addr, align 8
  %cmp = icmp eq i8** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8** getelementptr inbounds ([15 x i8*], [15 x i8*]* @mpd_flag_string, i32 0, i32 0), i8*** %flag_string.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %dest.addr, align 8
  store i8 91, i8* %1, align 1
  %2 = load i8*, i8** %dest.addr, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 1
  store i8 0, i8* %add.ptr, align 1
  %3 = load i8*, i8** %dest.addr, align 8
  %add.ptr1 = getelementptr i8, i8* %3, i64 1
  store i8* %add.ptr1, i8** %cp, align 8
  %4 = load i32, i32* %nmemb.addr, align 4
  %dec = add i32 %4, -1
  store i32 %dec, i32* %nmemb.addr, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %5, 15
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %flags.addr, align 4
  %7 = load i32, i32* %j, align 4
  %shl = shl i32 1, %7
  %and = and i32 %6, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.3, label %if.end.11

if.then.3:                                        ; preds = %for.body
  %8 = load i8*, i8** %cp, align 8
  %9 = load i32, i32* %nmemb.addr, align 4
  %conv = sext i32 %9 to i64
  %10 = load i32, i32* %j, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i8**, i8*** %flag_string.addr, align 8
  %arrayidx = getelementptr i8*, i8** %11, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %8, i64 %conv, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* %12) #6
  store i32 %call, i32* %n, align 4
  %13 = load i32, i32* %n, align 4
  %cmp4 = icmp slt i32 %13, 0
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.3
  %14 = load i32, i32* %n, align 4
  %15 = load i32, i32* %nmemb.addr, align 4
  %cmp6 = icmp sge i32 %14, %15
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.then.3
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false
  %16 = load i32, i32* %n, align 4
  %17 = load i8*, i8** %cp, align 8
  %idx.ext = sext i32 %16 to i64
  %add.ptr10 = getelementptr i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr10, i8** %cp, align 8
  %18 = load i32, i32* %n, align 4
  %19 = load i32, i32* %nmemb.addr, align 4
  %sub = sub i32 %19, %18
  store i32 %sub, i32* %nmemb.addr, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %20 = load i32, i32* %j, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i8*, i8** %cp, align 8
  %22 = load i8*, i8** %dest.addr, align 8
  %add.ptr12 = getelementptr i8, i8* %22, i64 1
  %cmp13 = icmp ne i8* %21, %add.ptr12
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %for.end
  %23 = load i8*, i8** %cp, align 8
  %add.ptr16 = getelementptr i8, i8* %23, i64 -2
  store i8* %add.ptr16, i8** %cp, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %for.end
  %24 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  store i8 93, i8* %24, align 1
  %25 = load i8*, i8** %cp, align 8
  store i8 0, i8* %25, align 1
  %26 = load i8*, i8** %cp, align 8
  %27 = load i8*, i8** %dest.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv18 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv18, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.8
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_lsnprint_signals(i8* %dest, i32 %nmemb, i32 %flags, i8** %signal_string) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %nmemb.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %signal_string.addr = alloca i8**, align 8
  %cp = alloca i8*, align 8
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  %ieee_invalid_done = alloca i32, align 4
  %f = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %nmemb, i32* %nmemb.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i8** %signal_string, i8*** %signal_string.addr, align 8
  store i32 0, i32* %ieee_invalid_done, align 4
  %0 = load i8**, i8*** %signal_string.addr, align 8
  %cmp = icmp eq i8** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8** getelementptr inbounds ([15 x i8*], [15 x i8*]* @mpd_signal_string, i32 0, i32 0), i8*** %signal_string.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %dest.addr, align 8
  store i8 91, i8* %1, align 1
  %2 = load i8*, i8** %dest.addr, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 1
  store i8 0, i8* %add.ptr, align 1
  %3 = load i8*, i8** %dest.addr, align 8
  %add.ptr1 = getelementptr i8, i8* %3, i64 1
  store i8* %add.ptr1, i8** %cp, align 8
  %4 = load i32, i32* %nmemb.addr, align 4
  %dec = add i32 %4, -1
  store i32 %dec, i32* %nmemb.addr, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %5, 15
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %flags.addr, align 4
  %7 = load i32, i32* %j, align 4
  %shl = shl i32 1, %7
  %and = and i32 %6, %shl
  store i32 %and, i32* %f, align 4
  %8 = load i32, i32* %f, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.3, label %if.end.18

if.then.3:                                        ; preds = %for.body
  %9 = load i32, i32* %f, align 4
  %and4 = and i32 %9, 954
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.then.3
  %10 = load i32, i32* %ieee_invalid_done, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.6
  br label %for.inc

if.end.9:                                         ; preds = %if.then.6
  store i32 1, i32* %ieee_invalid_done, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.3
  %11 = load i8*, i8** %cp, align 8
  %12 = load i32, i32* %nmemb.addr, align 4
  %conv = sext i32 %12 to i64
  %13 = load i32, i32* %j, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i8**, i8*** %signal_string.addr, align 8
  %arrayidx = getelementptr i8*, i8** %14, i64 %idxprom
  %15 = load i8*, i8** %arrayidx, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %11, i64 %conv, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* %15) #6
  store i32 %call, i32* %n, align 4
  %16 = load i32, i32* %n, align 4
  %cmp11 = icmp slt i32 %16, 0
  br i1 %cmp11, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.10
  %17 = load i32, i32* %n, align 4
  %18 = load i32, i32* %nmemb.addr, align 4
  %cmp13 = icmp sge i32 %17, %18
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false, %if.end.10
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false
  %19 = load i32, i32* %n, align 4
  %20 = load i8*, i8** %cp, align 8
  %idx.ext = sext i32 %19 to i64
  %add.ptr17 = getelementptr i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr17, i8** %cp, align 8
  %21 = load i32, i32* %n, align 4
  %22 = load i32, i32* %nmemb.addr, align 4
  %sub = sub i32 %22, %21
  store i32 %sub, i32* %nmemb.addr, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.18, %if.then.8
  %23 = load i32, i32* %j, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i8*, i8** %cp, align 8
  %25 = load i8*, i8** %dest.addr, align 8
  %add.ptr19 = getelementptr i8, i8* %25, i64 1
  %cmp20 = icmp ne i8* %24, %add.ptr19
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %for.end
  %26 = load i8*, i8** %cp, align 8
  %add.ptr23 = getelementptr i8, i8* %26, i64 -2
  store i8* %add.ptr23, i8** %cp, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %for.end
  %27 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  store i8 93, i8* %27, align 1
  %28 = load i8*, i8** %cp, align 8
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** %cp, align 8
  %30 = load i8*, i8** %dest.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv25 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv25, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.15
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define hidden void @mpd_fprint(%struct._IO_FILE* %file, %struct.mpd_t* %dec) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %dec.addr = alloca %struct.mpd_t*, align 8
  %decstring = alloca i8*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.mpd_t* %dec, %struct.mpd_t** %dec.addr, align 8
  %0 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %call = call i8* @mpd_to_sci(%struct.mpd_t* %0, i32 1)
  store i8* %call, i8** %decstring, align 8
  %1 = load i8*, i8** %decstring, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %3 = load i8*, i8** %decstring, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %3)
  %4 = load void (i8*)*, void (i8*)** @mpd_free, align 8
  %5 = load i8*, i8** %decstring, align 8
  call void %4(i8* %5)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define hidden void @mpd_print(%struct.mpd_t* %dec) #0 {
entry:
  %dec.addr = alloca %struct.mpd_t*, align 8
  %decstring = alloca i8*, align 8
  store %struct.mpd_t* %dec, %struct.mpd_t** %dec.addr, align 8
  %0 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %call = call i8* @mpd_to_sci(%struct.mpd_t* %0, i32 1)
  store i8* %call, i8** %decstring, align 8
  %1 = load i8*, i8** %decstring, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %decstring, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %2)
  %3 = load void (i8*)*, void (i8*)** @mpd_free, align 8
  %4 = load i8*, i8** %decstring, align 8
  call void %3(i8* %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @printf(i8*, ...) #1

declare hidden i32 @mpd_isnan(%struct.mpd_t*) #1

declare hidden i8* @mpd_alloc(i64, i64) #1

declare hidden i32 @mpd_isnegative(%struct.mpd_t*) #1

declare hidden i32 @mpd_isqnan(%struct.mpd_t*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @coeff_to_string(i8* %s, %struct.mpd_t* %dec) #2 {
entry:
  %s.addr = alloca i8*, align 8
  %dec.addr = alloca %struct.mpd_t*, align 8
  %x = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  store %struct.mpd_t* %dec, %struct.mpd_t** %dec.addr, align 8
  %0 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %call = call i64 @mpd_msword(%struct.mpd_t* %0)
  store i64 %call, i64* %x, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i64, i64* %x, align 8
  %3 = load i64, i64* %x, align 8
  %call1 = call i32 @mpd_word_digits(i64 %3)
  %call2 = call i8* @word_to_string(i8* %1, i64 %2, i32 %call1, i8* null)
  store i8* %call2, i8** %s.addr, align 8
  %4 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %len = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %4, i32 0, i32 3
  %5 = load i64, i64* %len, align 8
  %sub = sub i64 %5, 2
  store i64 %sub, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i64, i64* %i, align 8
  %cmp = icmp sge i64 %6, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %i, align 8
  %8 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %data = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %8, i32 0, i32 5
  %9 = load i64*, i64** %data, align 8
  %arrayidx = getelementptr i64, i64* %9, i64 %7
  %10 = load i64, i64* %arrayidx, align 8
  store i64 %10, i64* %x, align 8
  %11 = load i8*, i8** %s.addr, align 8
  %12 = load i64, i64* %x, align 8
  %call3 = call i8* @word_to_string(i8* %11, i64 %12, i32 19, i8* null)
  store i8* %call3, i8** %s.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, i64* %i, align 8
  %dec4 = add i64 %13, -1
  store i64 %dec4, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i8*, i8** %s.addr, align 8
  ret i8* %14
}

declare hidden i32 @mpd_isinfinite(%struct.mpd_t*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @mod_mpd_ssize_t(i64 %a, i64 %m) #2 {
entry:
  %a.addr = alloca i64, align 8
  %m.addr = alloca i64, align 8
  %r = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %m, i64* %m.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %m.addr, align 8
  %rem = srem i64 %0, %1
  store i64 %rem, i64* %r, align 8
  %2 = load i64, i64* %r, align 8
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i64, i64* %r, align 8
  %4 = load i64, i64* %m.addr, align 8
  %add = add i64 %3, %4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* %r, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ %5, %cond.false ]
  ret i64 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @coeff_to_string_dot(i8* %s, i8* %dot, %struct.mpd_t* %dec) #2 {
entry:
  %s.addr = alloca i8*, align 8
  %dot.addr = alloca i8*, align 8
  %dec.addr = alloca %struct.mpd_t*, align 8
  %x = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %dot, i8** %dot.addr, align 8
  store %struct.mpd_t* %dec, %struct.mpd_t** %dec.addr, align 8
  %0 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %call = call i64 @mpd_msword(%struct.mpd_t* %0)
  store i64 %call, i64* %x, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i64, i64* %x, align 8
  %3 = load i64, i64* %x, align 8
  %call1 = call i32 @mpd_word_digits(i64 %3)
  %4 = load i8*, i8** %dot.addr, align 8
  %call2 = call i8* @word_to_string(i8* %1, i64 %2, i32 %call1, i8* %4)
  store i8* %call2, i8** %s.addr, align 8
  %5 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %len = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %5, i32 0, i32 3
  %6 = load i64, i64* %len, align 8
  %sub = sub i64 %6, 2
  store i64 %sub, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, i64* %i, align 8
  %cmp = icmp sge i64 %7, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, i64* %i, align 8
  %9 = load %struct.mpd_t*, %struct.mpd_t** %dec.addr, align 8
  %data = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %9, i32 0, i32 5
  %10 = load i64*, i64** %data, align 8
  %arrayidx = getelementptr i64, i64* %10, i64 %8
  %11 = load i64, i64* %arrayidx, align 8
  store i64 %11, i64* %x, align 8
  %12 = load i8*, i8** %s.addr, align 8
  %13 = load i64, i64* %x, align 8
  %14 = load i8*, i8** %dot.addr, align 8
  %call3 = call i8* @word_to_string(i8* %12, i64 %13, i32 19, i8* %14)
  store i8* %call3, i8** %s.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i64, i64* %i, align 8
  %dec4 = add i64 %15, -1
  store i64 %dec4, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i8*, i8** %s.addr, align 8
  ret i8* %16
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @exp_to_string(i8* %s, i64 %x) #2 {
entry:
  %s.addr = alloca i8*, align 8
  %x.addr = alloca i64, align 8
  %sign = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  store i64 %x, i64* %x.addr, align 8
  store i8 43, i8* %sign, align 1
  %0 = load i64, i64* %x.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 45, i8* %sign, align 1
  %1 = load i64, i64* %x.addr, align 8
  %sub = sub i64 0, %1
  store i64 %sub, i64* %x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, i8* %sign, align 1
  %3 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  store i8 %2, i8* %3, align 1
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i64, i64* %x.addr, align 8
  %6 = load i64, i64* %x.addr, align 8
  %call = call i32 @mpd_word_digits(i64 %6)
  %call1 = call i8* @word_to_string(i8* %4, i64 %5, i32 %call, i8* null)
  ret i8* %call1
}

declare hidden i64 @mpd_msword(%struct.mpd_t*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @word_to_string(i8* %s, i64 %x, i32 %n, i8* %dot) #2 {
entry:
  %s.addr = alloca i8*, align 8
  %x.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  %dot.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %x, i64* %x.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %dot, i8** %dot.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  switch i32 %0, label %sw.default [
    i32 20, label %sw.bb
    i32 19, label %sw.bb.4
    i32 18, label %sw.bb.17
    i32 17, label %sw.bb.30
    i32 16, label %sw.bb.43
    i32 15, label %sw.bb.56
    i32 14, label %sw.bb.69
    i32 13, label %sw.bb.82
    i32 12, label %sw.bb.95
    i32 11, label %sw.bb.108
    i32 10, label %sw.bb.121
    i32 9, label %sw.bb.134
    i32 8, label %sw.bb.147
    i32 7, label %sw.bb.160
    i32 6, label %sw.bb.173
    i32 5, label %sw.bb.186
    i32 4, label %sw.bb.199
    i32 3, label %sw.bb.212
    i32 2, label %sw.bb.225
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8*, i8** %dot.addr, align 8
  %cmp = icmp eq i8* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %3 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  store i8 46, i8* %3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %4 = load i64, i64* %x.addr, align 8
  %div = udiv i64 %4, -8446744073709551616
  %conv = trunc i64 %div to i8
  %conv1 = sext i8 %conv to i32
  %add = add i32 48, %conv1
  %conv2 = trunc i32 %add to i8
  %5 = load i8*, i8** %s.addr, align 8
  %incdec.ptr3 = getelementptr i8, i8* %5, i32 1
  store i8* %incdec.ptr3, i8** %s.addr, align 8
  store i8 %conv2, i8* %5, align 1
  %6 = load i64, i64* %x.addr, align 8
  %rem = urem i64 %6, -8446744073709551616
  store i64 %rem, i64* %x.addr, align 8
  br label %sw.bb.4

sw.bb.4:                                          ; preds = %entry, %if.end
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load i8*, i8** %dot.addr, align 8
  %cmp5 = icmp eq i8* %7, %8
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %sw.bb.4
  %9 = load i8*, i8** %s.addr, align 8
  %incdec.ptr8 = getelementptr i8, i8* %9, i32 1
  store i8* %incdec.ptr8, i8** %s.addr, align 8
  store i8 46, i8* %9, align 1
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %sw.bb.4
  %10 = load i64, i64* %x.addr, align 8
  %div10 = udiv i64 %10, 1000000000000000000
  %conv11 = trunc i64 %div10 to i8
  %conv12 = sext i8 %conv11 to i32
  %add13 = add i32 48, %conv12
  %conv14 = trunc i32 %add13 to i8
  %11 = load i8*, i8** %s.addr, align 8
  %incdec.ptr15 = getelementptr i8, i8* %11, i32 1
  store i8* %incdec.ptr15, i8** %s.addr, align 8
  store i8 %conv14, i8* %11, align 1
  %12 = load i64, i64* %x.addr, align 8
  %rem16 = urem i64 %12, 1000000000000000000
  store i64 %rem16, i64* %x.addr, align 8
  br label %sw.bb.17

sw.bb.17:                                         ; preds = %entry, %if.end.9
  %13 = load i8*, i8** %s.addr, align 8
  %14 = load i8*, i8** %dot.addr, align 8
  %cmp18 = icmp eq i8* %13, %14
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %sw.bb.17
  %15 = load i8*, i8** %s.addr, align 8
  %incdec.ptr21 = getelementptr i8, i8* %15, i32 1
  store i8* %incdec.ptr21, i8** %s.addr, align 8
  store i8 46, i8* %15, align 1
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %sw.bb.17
  %16 = load i64, i64* %x.addr, align 8
  %div23 = udiv i64 %16, 100000000000000000
  %conv24 = trunc i64 %div23 to i8
  %conv25 = sext i8 %conv24 to i32
  %add26 = add i32 48, %conv25
  %conv27 = trunc i32 %add26 to i8
  %17 = load i8*, i8** %s.addr, align 8
  %incdec.ptr28 = getelementptr i8, i8* %17, i32 1
  store i8* %incdec.ptr28, i8** %s.addr, align 8
  store i8 %conv27, i8* %17, align 1
  %18 = load i64, i64* %x.addr, align 8
  %rem29 = urem i64 %18, 100000000000000000
  store i64 %rem29, i64* %x.addr, align 8
  br label %sw.bb.30

sw.bb.30:                                         ; preds = %entry, %if.end.22
  %19 = load i8*, i8** %s.addr, align 8
  %20 = load i8*, i8** %dot.addr, align 8
  %cmp31 = icmp eq i8* %19, %20
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %sw.bb.30
  %21 = load i8*, i8** %s.addr, align 8
  %incdec.ptr34 = getelementptr i8, i8* %21, i32 1
  store i8* %incdec.ptr34, i8** %s.addr, align 8
  store i8 46, i8* %21, align 1
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %sw.bb.30
  %22 = load i64, i64* %x.addr, align 8
  %div36 = udiv i64 %22, 10000000000000000
  %conv37 = trunc i64 %div36 to i8
  %conv38 = sext i8 %conv37 to i32
  %add39 = add i32 48, %conv38
  %conv40 = trunc i32 %add39 to i8
  %23 = load i8*, i8** %s.addr, align 8
  %incdec.ptr41 = getelementptr i8, i8* %23, i32 1
  store i8* %incdec.ptr41, i8** %s.addr, align 8
  store i8 %conv40, i8* %23, align 1
  %24 = load i64, i64* %x.addr, align 8
  %rem42 = urem i64 %24, 10000000000000000
  store i64 %rem42, i64* %x.addr, align 8
  br label %sw.bb.43

sw.bb.43:                                         ; preds = %entry, %if.end.35
  %25 = load i8*, i8** %s.addr, align 8
  %26 = load i8*, i8** %dot.addr, align 8
  %cmp44 = icmp eq i8* %25, %26
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %sw.bb.43
  %27 = load i8*, i8** %s.addr, align 8
  %incdec.ptr47 = getelementptr i8, i8* %27, i32 1
  store i8* %incdec.ptr47, i8** %s.addr, align 8
  store i8 46, i8* %27, align 1
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %sw.bb.43
  %28 = load i64, i64* %x.addr, align 8
  %div49 = udiv i64 %28, 1000000000000000
  %conv50 = trunc i64 %div49 to i8
  %conv51 = sext i8 %conv50 to i32
  %add52 = add i32 48, %conv51
  %conv53 = trunc i32 %add52 to i8
  %29 = load i8*, i8** %s.addr, align 8
  %incdec.ptr54 = getelementptr i8, i8* %29, i32 1
  store i8* %incdec.ptr54, i8** %s.addr, align 8
  store i8 %conv53, i8* %29, align 1
  %30 = load i64, i64* %x.addr, align 8
  %rem55 = urem i64 %30, 1000000000000000
  store i64 %rem55, i64* %x.addr, align 8
  br label %sw.bb.56

sw.bb.56:                                         ; preds = %entry, %if.end.48
  %31 = load i8*, i8** %s.addr, align 8
  %32 = load i8*, i8** %dot.addr, align 8
  %cmp57 = icmp eq i8* %31, %32
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %sw.bb.56
  %33 = load i8*, i8** %s.addr, align 8
  %incdec.ptr60 = getelementptr i8, i8* %33, i32 1
  store i8* %incdec.ptr60, i8** %s.addr, align 8
  store i8 46, i8* %33, align 1
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %sw.bb.56
  %34 = load i64, i64* %x.addr, align 8
  %div62 = udiv i64 %34, 100000000000000
  %conv63 = trunc i64 %div62 to i8
  %conv64 = sext i8 %conv63 to i32
  %add65 = add i32 48, %conv64
  %conv66 = trunc i32 %add65 to i8
  %35 = load i8*, i8** %s.addr, align 8
  %incdec.ptr67 = getelementptr i8, i8* %35, i32 1
  store i8* %incdec.ptr67, i8** %s.addr, align 8
  store i8 %conv66, i8* %35, align 1
  %36 = load i64, i64* %x.addr, align 8
  %rem68 = urem i64 %36, 100000000000000
  store i64 %rem68, i64* %x.addr, align 8
  br label %sw.bb.69

sw.bb.69:                                         ; preds = %entry, %if.end.61
  %37 = load i8*, i8** %s.addr, align 8
  %38 = load i8*, i8** %dot.addr, align 8
  %cmp70 = icmp eq i8* %37, %38
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %sw.bb.69
  %39 = load i8*, i8** %s.addr, align 8
  %incdec.ptr73 = getelementptr i8, i8* %39, i32 1
  store i8* %incdec.ptr73, i8** %s.addr, align 8
  store i8 46, i8* %39, align 1
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %sw.bb.69
  %40 = load i64, i64* %x.addr, align 8
  %div75 = udiv i64 %40, 10000000000000
  %conv76 = trunc i64 %div75 to i8
  %conv77 = sext i8 %conv76 to i32
  %add78 = add i32 48, %conv77
  %conv79 = trunc i32 %add78 to i8
  %41 = load i8*, i8** %s.addr, align 8
  %incdec.ptr80 = getelementptr i8, i8* %41, i32 1
  store i8* %incdec.ptr80, i8** %s.addr, align 8
  store i8 %conv79, i8* %41, align 1
  %42 = load i64, i64* %x.addr, align 8
  %rem81 = urem i64 %42, 10000000000000
  store i64 %rem81, i64* %x.addr, align 8
  br label %sw.bb.82

sw.bb.82:                                         ; preds = %entry, %if.end.74
  %43 = load i8*, i8** %s.addr, align 8
  %44 = load i8*, i8** %dot.addr, align 8
  %cmp83 = icmp eq i8* %43, %44
  br i1 %cmp83, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %sw.bb.82
  %45 = load i8*, i8** %s.addr, align 8
  %incdec.ptr86 = getelementptr i8, i8* %45, i32 1
  store i8* %incdec.ptr86, i8** %s.addr, align 8
  store i8 46, i8* %45, align 1
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %sw.bb.82
  %46 = load i64, i64* %x.addr, align 8
  %div88 = udiv i64 %46, 1000000000000
  %conv89 = trunc i64 %div88 to i8
  %conv90 = sext i8 %conv89 to i32
  %add91 = add i32 48, %conv90
  %conv92 = trunc i32 %add91 to i8
  %47 = load i8*, i8** %s.addr, align 8
  %incdec.ptr93 = getelementptr i8, i8* %47, i32 1
  store i8* %incdec.ptr93, i8** %s.addr, align 8
  store i8 %conv92, i8* %47, align 1
  %48 = load i64, i64* %x.addr, align 8
  %rem94 = urem i64 %48, 1000000000000
  store i64 %rem94, i64* %x.addr, align 8
  br label %sw.bb.95

sw.bb.95:                                         ; preds = %entry, %if.end.87
  %49 = load i8*, i8** %s.addr, align 8
  %50 = load i8*, i8** %dot.addr, align 8
  %cmp96 = icmp eq i8* %49, %50
  br i1 %cmp96, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %sw.bb.95
  %51 = load i8*, i8** %s.addr, align 8
  %incdec.ptr99 = getelementptr i8, i8* %51, i32 1
  store i8* %incdec.ptr99, i8** %s.addr, align 8
  store i8 46, i8* %51, align 1
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %sw.bb.95
  %52 = load i64, i64* %x.addr, align 8
  %div101 = udiv i64 %52, 100000000000
  %conv102 = trunc i64 %div101 to i8
  %conv103 = sext i8 %conv102 to i32
  %add104 = add i32 48, %conv103
  %conv105 = trunc i32 %add104 to i8
  %53 = load i8*, i8** %s.addr, align 8
  %incdec.ptr106 = getelementptr i8, i8* %53, i32 1
  store i8* %incdec.ptr106, i8** %s.addr, align 8
  store i8 %conv105, i8* %53, align 1
  %54 = load i64, i64* %x.addr, align 8
  %rem107 = urem i64 %54, 100000000000
  store i64 %rem107, i64* %x.addr, align 8
  br label %sw.bb.108

sw.bb.108:                                        ; preds = %entry, %if.end.100
  %55 = load i8*, i8** %s.addr, align 8
  %56 = load i8*, i8** %dot.addr, align 8
  %cmp109 = icmp eq i8* %55, %56
  br i1 %cmp109, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %sw.bb.108
  %57 = load i8*, i8** %s.addr, align 8
  %incdec.ptr112 = getelementptr i8, i8* %57, i32 1
  store i8* %incdec.ptr112, i8** %s.addr, align 8
  store i8 46, i8* %57, align 1
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %sw.bb.108
  %58 = load i64, i64* %x.addr, align 8
  %div114 = udiv i64 %58, 10000000000
  %conv115 = trunc i64 %div114 to i8
  %conv116 = sext i8 %conv115 to i32
  %add117 = add i32 48, %conv116
  %conv118 = trunc i32 %add117 to i8
  %59 = load i8*, i8** %s.addr, align 8
  %incdec.ptr119 = getelementptr i8, i8* %59, i32 1
  store i8* %incdec.ptr119, i8** %s.addr, align 8
  store i8 %conv118, i8* %59, align 1
  %60 = load i64, i64* %x.addr, align 8
  %rem120 = urem i64 %60, 10000000000
  store i64 %rem120, i64* %x.addr, align 8
  br label %sw.bb.121

sw.bb.121:                                        ; preds = %entry, %if.end.113
  %61 = load i8*, i8** %s.addr, align 8
  %62 = load i8*, i8** %dot.addr, align 8
  %cmp122 = icmp eq i8* %61, %62
  br i1 %cmp122, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %sw.bb.121
  %63 = load i8*, i8** %s.addr, align 8
  %incdec.ptr125 = getelementptr i8, i8* %63, i32 1
  store i8* %incdec.ptr125, i8** %s.addr, align 8
  store i8 46, i8* %63, align 1
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.124, %sw.bb.121
  %64 = load i64, i64* %x.addr, align 8
  %div127 = udiv i64 %64, 1000000000
  %conv128 = trunc i64 %div127 to i8
  %conv129 = sext i8 %conv128 to i32
  %add130 = add i32 48, %conv129
  %conv131 = trunc i32 %add130 to i8
  %65 = load i8*, i8** %s.addr, align 8
  %incdec.ptr132 = getelementptr i8, i8* %65, i32 1
  store i8* %incdec.ptr132, i8** %s.addr, align 8
  store i8 %conv131, i8* %65, align 1
  %66 = load i64, i64* %x.addr, align 8
  %rem133 = urem i64 %66, 1000000000
  store i64 %rem133, i64* %x.addr, align 8
  br label %sw.bb.134

sw.bb.134:                                        ; preds = %entry, %if.end.126
  %67 = load i8*, i8** %s.addr, align 8
  %68 = load i8*, i8** %dot.addr, align 8
  %cmp135 = icmp eq i8* %67, %68
  br i1 %cmp135, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %sw.bb.134
  %69 = load i8*, i8** %s.addr, align 8
  %incdec.ptr138 = getelementptr i8, i8* %69, i32 1
  store i8* %incdec.ptr138, i8** %s.addr, align 8
  store i8 46, i8* %69, align 1
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.137, %sw.bb.134
  %70 = load i64, i64* %x.addr, align 8
  %div140 = udiv i64 %70, 100000000
  %conv141 = trunc i64 %div140 to i8
  %conv142 = sext i8 %conv141 to i32
  %add143 = add i32 48, %conv142
  %conv144 = trunc i32 %add143 to i8
  %71 = load i8*, i8** %s.addr, align 8
  %incdec.ptr145 = getelementptr i8, i8* %71, i32 1
  store i8* %incdec.ptr145, i8** %s.addr, align 8
  store i8 %conv144, i8* %71, align 1
  %72 = load i64, i64* %x.addr, align 8
  %rem146 = urem i64 %72, 100000000
  store i64 %rem146, i64* %x.addr, align 8
  br label %sw.bb.147

sw.bb.147:                                        ; preds = %entry, %if.end.139
  %73 = load i8*, i8** %s.addr, align 8
  %74 = load i8*, i8** %dot.addr, align 8
  %cmp148 = icmp eq i8* %73, %74
  br i1 %cmp148, label %if.then.150, label %if.end.152

if.then.150:                                      ; preds = %sw.bb.147
  %75 = load i8*, i8** %s.addr, align 8
  %incdec.ptr151 = getelementptr i8, i8* %75, i32 1
  store i8* %incdec.ptr151, i8** %s.addr, align 8
  store i8 46, i8* %75, align 1
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.150, %sw.bb.147
  %76 = load i64, i64* %x.addr, align 8
  %div153 = udiv i64 %76, 10000000
  %conv154 = trunc i64 %div153 to i8
  %conv155 = sext i8 %conv154 to i32
  %add156 = add i32 48, %conv155
  %conv157 = trunc i32 %add156 to i8
  %77 = load i8*, i8** %s.addr, align 8
  %incdec.ptr158 = getelementptr i8, i8* %77, i32 1
  store i8* %incdec.ptr158, i8** %s.addr, align 8
  store i8 %conv157, i8* %77, align 1
  %78 = load i64, i64* %x.addr, align 8
  %rem159 = urem i64 %78, 10000000
  store i64 %rem159, i64* %x.addr, align 8
  br label %sw.bb.160

sw.bb.160:                                        ; preds = %entry, %if.end.152
  %79 = load i8*, i8** %s.addr, align 8
  %80 = load i8*, i8** %dot.addr, align 8
  %cmp161 = icmp eq i8* %79, %80
  br i1 %cmp161, label %if.then.163, label %if.end.165

if.then.163:                                      ; preds = %sw.bb.160
  %81 = load i8*, i8** %s.addr, align 8
  %incdec.ptr164 = getelementptr i8, i8* %81, i32 1
  store i8* %incdec.ptr164, i8** %s.addr, align 8
  store i8 46, i8* %81, align 1
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.163, %sw.bb.160
  %82 = load i64, i64* %x.addr, align 8
  %div166 = udiv i64 %82, 1000000
  %conv167 = trunc i64 %div166 to i8
  %conv168 = sext i8 %conv167 to i32
  %add169 = add i32 48, %conv168
  %conv170 = trunc i32 %add169 to i8
  %83 = load i8*, i8** %s.addr, align 8
  %incdec.ptr171 = getelementptr i8, i8* %83, i32 1
  store i8* %incdec.ptr171, i8** %s.addr, align 8
  store i8 %conv170, i8* %83, align 1
  %84 = load i64, i64* %x.addr, align 8
  %rem172 = urem i64 %84, 1000000
  store i64 %rem172, i64* %x.addr, align 8
  br label %sw.bb.173

sw.bb.173:                                        ; preds = %entry, %if.end.165
  %85 = load i8*, i8** %s.addr, align 8
  %86 = load i8*, i8** %dot.addr, align 8
  %cmp174 = icmp eq i8* %85, %86
  br i1 %cmp174, label %if.then.176, label %if.end.178

if.then.176:                                      ; preds = %sw.bb.173
  %87 = load i8*, i8** %s.addr, align 8
  %incdec.ptr177 = getelementptr i8, i8* %87, i32 1
  store i8* %incdec.ptr177, i8** %s.addr, align 8
  store i8 46, i8* %87, align 1
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.176, %sw.bb.173
  %88 = load i64, i64* %x.addr, align 8
  %div179 = udiv i64 %88, 100000
  %conv180 = trunc i64 %div179 to i8
  %conv181 = sext i8 %conv180 to i32
  %add182 = add i32 48, %conv181
  %conv183 = trunc i32 %add182 to i8
  %89 = load i8*, i8** %s.addr, align 8
  %incdec.ptr184 = getelementptr i8, i8* %89, i32 1
  store i8* %incdec.ptr184, i8** %s.addr, align 8
  store i8 %conv183, i8* %89, align 1
  %90 = load i64, i64* %x.addr, align 8
  %rem185 = urem i64 %90, 100000
  store i64 %rem185, i64* %x.addr, align 8
  br label %sw.bb.186

sw.bb.186:                                        ; preds = %entry, %if.end.178
  %91 = load i8*, i8** %s.addr, align 8
  %92 = load i8*, i8** %dot.addr, align 8
  %cmp187 = icmp eq i8* %91, %92
  br i1 %cmp187, label %if.then.189, label %if.end.191

if.then.189:                                      ; preds = %sw.bb.186
  %93 = load i8*, i8** %s.addr, align 8
  %incdec.ptr190 = getelementptr i8, i8* %93, i32 1
  store i8* %incdec.ptr190, i8** %s.addr, align 8
  store i8 46, i8* %93, align 1
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.189, %sw.bb.186
  %94 = load i64, i64* %x.addr, align 8
  %div192 = udiv i64 %94, 10000
  %conv193 = trunc i64 %div192 to i8
  %conv194 = sext i8 %conv193 to i32
  %add195 = add i32 48, %conv194
  %conv196 = trunc i32 %add195 to i8
  %95 = load i8*, i8** %s.addr, align 8
  %incdec.ptr197 = getelementptr i8, i8* %95, i32 1
  store i8* %incdec.ptr197, i8** %s.addr, align 8
  store i8 %conv196, i8* %95, align 1
  %96 = load i64, i64* %x.addr, align 8
  %rem198 = urem i64 %96, 10000
  store i64 %rem198, i64* %x.addr, align 8
  br label %sw.bb.199

sw.bb.199:                                        ; preds = %entry, %if.end.191
  %97 = load i8*, i8** %s.addr, align 8
  %98 = load i8*, i8** %dot.addr, align 8
  %cmp200 = icmp eq i8* %97, %98
  br i1 %cmp200, label %if.then.202, label %if.end.204

if.then.202:                                      ; preds = %sw.bb.199
  %99 = load i8*, i8** %s.addr, align 8
  %incdec.ptr203 = getelementptr i8, i8* %99, i32 1
  store i8* %incdec.ptr203, i8** %s.addr, align 8
  store i8 46, i8* %99, align 1
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.202, %sw.bb.199
  %100 = load i64, i64* %x.addr, align 8
  %div205 = udiv i64 %100, 1000
  %conv206 = trunc i64 %div205 to i8
  %conv207 = sext i8 %conv206 to i32
  %add208 = add i32 48, %conv207
  %conv209 = trunc i32 %add208 to i8
  %101 = load i8*, i8** %s.addr, align 8
  %incdec.ptr210 = getelementptr i8, i8* %101, i32 1
  store i8* %incdec.ptr210, i8** %s.addr, align 8
  store i8 %conv209, i8* %101, align 1
  %102 = load i64, i64* %x.addr, align 8
  %rem211 = urem i64 %102, 1000
  store i64 %rem211, i64* %x.addr, align 8
  br label %sw.bb.212

sw.bb.212:                                        ; preds = %entry, %if.end.204
  %103 = load i8*, i8** %s.addr, align 8
  %104 = load i8*, i8** %dot.addr, align 8
  %cmp213 = icmp eq i8* %103, %104
  br i1 %cmp213, label %if.then.215, label %if.end.217

if.then.215:                                      ; preds = %sw.bb.212
  %105 = load i8*, i8** %s.addr, align 8
  %incdec.ptr216 = getelementptr i8, i8* %105, i32 1
  store i8* %incdec.ptr216, i8** %s.addr, align 8
  store i8 46, i8* %105, align 1
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.215, %sw.bb.212
  %106 = load i64, i64* %x.addr, align 8
  %div218 = udiv i64 %106, 100
  %conv219 = trunc i64 %div218 to i8
  %conv220 = sext i8 %conv219 to i32
  %add221 = add i32 48, %conv220
  %conv222 = trunc i32 %add221 to i8
  %107 = load i8*, i8** %s.addr, align 8
  %incdec.ptr223 = getelementptr i8, i8* %107, i32 1
  store i8* %incdec.ptr223, i8** %s.addr, align 8
  store i8 %conv222, i8* %107, align 1
  %108 = load i64, i64* %x.addr, align 8
  %rem224 = urem i64 %108, 100
  store i64 %rem224, i64* %x.addr, align 8
  br label %sw.bb.225

sw.bb.225:                                        ; preds = %entry, %if.end.217
  %109 = load i8*, i8** %s.addr, align 8
  %110 = load i8*, i8** %dot.addr, align 8
  %cmp226 = icmp eq i8* %109, %110
  br i1 %cmp226, label %if.then.228, label %if.end.230

if.then.228:                                      ; preds = %sw.bb.225
  %111 = load i8*, i8** %s.addr, align 8
  %incdec.ptr229 = getelementptr i8, i8* %111, i32 1
  store i8* %incdec.ptr229, i8** %s.addr, align 8
  store i8 46, i8* %111, align 1
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.228, %sw.bb.225
  %112 = load i64, i64* %x.addr, align 8
  %div231 = udiv i64 %112, 10
  %conv232 = trunc i64 %div231 to i8
  %conv233 = sext i8 %conv232 to i32
  %add234 = add i32 48, %conv233
  %conv235 = trunc i32 %add234 to i8
  %113 = load i8*, i8** %s.addr, align 8
  %incdec.ptr236 = getelementptr i8, i8* %113, i32 1
  store i8* %incdec.ptr236, i8** %s.addr, align 8
  store i8 %conv235, i8* %113, align 1
  %114 = load i64, i64* %x.addr, align 8
  %rem237 = urem i64 %114, 10
  store i64 %rem237, i64* %x.addr, align 8
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end.230
  %115 = load i8*, i8** %s.addr, align 8
  %116 = load i8*, i8** %dot.addr, align 8
  %cmp238 = icmp eq i8* %115, %116
  br i1 %cmp238, label %if.then.240, label %if.end.242

if.then.240:                                      ; preds = %sw.default
  %117 = load i8*, i8** %s.addr, align 8
  %incdec.ptr241 = getelementptr i8, i8* %117, i32 1
  store i8* %incdec.ptr241, i8** %s.addr, align 8
  store i8 46, i8* %117, align 1
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.240, %sw.default
  %118 = load i64, i64* %x.addr, align 8
  %conv243 = trunc i64 %118 to i8
  %conv244 = sext i8 %conv243 to i32
  %add245 = add i32 48, %conv244
  %conv246 = trunc i32 %add245 to i8
  %119 = load i8*, i8** %s.addr, align 8
  %incdec.ptr247 = getelementptr i8, i8* %119, i32 1
  store i8* %incdec.ptr247, i8** %s.addr, align 8
  store i8 %conv246, i8* %119, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.242
  %120 = load i8*, i8** %s.addr, align 8
  store i8 0, i8* %120, align 1
  %121 = load i8*, i8** %s.addr, align 8
  ret i8* %121
}

declare hidden i32 @mpd_word_digits(i64) #1

declare hidden void @mpd_qrescale_fmt(%struct.mpd_t*, %struct.mpd_t*, i64, %struct.mpd_context_t*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @_mpd_add_sep_dot(%struct.mpd_mbstr_t* %dest, i8* %sign, i8* %src, i64 %n_src, i8* %dot, i8* %rest, i64 %n_rest, %struct.mpd_spec_t* %spec) #0 {
entry:
  %dest.addr = alloca %struct.mpd_mbstr_t*, align 8
  %sign.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %n_src.addr = alloca i64, align 8
  %dot.addr = alloca i8*, align 8
  %rest.addr = alloca i8*, align 8
  %n_rest.addr = alloca i64, align 8
  %spec.addr = alloca %struct.mpd_spec_t*, align 8
  %n_sep = alloca i64, align 8
  %n_sign = alloca i64, align 8
  %consume = alloca i64, align 8
  %g = alloca i8*, align 8
  %pad = alloca i32, align 4
  store %struct.mpd_mbstr_t* %dest, %struct.mpd_mbstr_t** %dest.addr, align 8
  store i8* %sign, i8** %sign.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %n_src, i64* %n_src.addr, align 8
  store i8* %dot, i8** %dot.addr, align 8
  store i8* %rest, i8** %rest.addr, align 8
  store i64 %n_rest, i64* %n_rest.addr, align 8
  store %struct.mpd_spec_t* %spec, %struct.mpd_spec_t** %spec.addr, align 8
  store i32 0, i32* %pad, align 4
  %0 = load i8*, i8** %sign.addr, align 8
  %tobool = icmp ne i8* %0, null
  %cond = select i1 %tobool, i32 1, i32 0
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* %n_sign, align 8
  %1 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %sep = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %1, i32 0, i32 7
  %2 = load i8*, i8** %sep, align 8
  %call = call i64 @strlen(i8* %2) #10
  store i64 %call, i64* %n_sep, align 8
  %3 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %nbytes = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %3, i32 0, i32 0
  %4 = load i64, i64* %nbytes, align 8
  %5 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %cur = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %5, i32 0, i32 2
  store i64 %4, i64* %cur, align 8
  %6 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %nchars = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %6, i32 0, i32 1
  store i64 0, i64* %nchars, align 8
  %7 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %nbytes1 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %7, i32 0, i32 0
  store i64 0, i64* %nbytes1, align 8
  %8 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %9 = load i8*, i8** %rest.addr, align 8
  %10 = load i64, i64* %n_rest.addr, align 8
  call void @_mbstr_copy_ascii(%struct.mpd_mbstr_t* %8, i8* %9, i64 %10)
  %11 = load i8*, i8** %dot.addr, align 8
  %tobool2 = icmp ne i8* %11, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %13 = load i8*, i8** %dot.addr, align 8
  %14 = load i8*, i8** %dot.addr, align 8
  %call3 = call i64 @strlen(i8* %14) #10
  call void @_mbstr_copy_char(%struct.mpd_mbstr_t* %12, i8* %13, i64 %call3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %grouping = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %15, i32 0, i32 8
  %16 = load i8*, i8** %grouping, align 8
  store i8* %16, i8** %g, align 8
  %17 = load i8*, i8** %g, align 8
  %18 = load i8, i8* %17, align 1
  %conv4 = sext i8 %18 to i64
  store i64 %conv4, i64* %consume, align 8
  br label %while.body

while.body:                                       ; preds = %if.end, %if.then.27, %if.end.55
  %19 = load i8*, i8** %g, align 8
  %20 = load i8, i8* %19, align 1
  %conv5 = sext i8 %20 to i32
  %cmp = icmp eq i32 %conv5, 0
  br i1 %cmp, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %21 = load i8*, i8** %g, align 8
  %22 = load i8, i8* %21, align 1
  %conv7 = sext i8 %22 to i32
  %cmp8 = icmp eq i32 %conv7, 127
  br i1 %cmp8, label %if.then.13, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %23 = load i64, i64* %consume, align 8
  %24 = load i64, i64* %n_src.addr, align 8
  %cmp11 = icmp sgt i64 %23, %24
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false.10, %lor.lhs.false, %while.body
  %25 = load i64, i64* %n_src.addr, align 8
  store i64 %25, i64* %consume, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %lor.lhs.false.10
  %26 = load i64, i64* %consume, align 8
  %27 = load i64, i64* %n_src.addr, align 8
  %sub = sub i64 %27, %26
  store i64 %sub, i64* %n_src.addr, align 8
  %28 = load i32, i32* %pad, align 4
  %tobool15 = icmp ne i32 %28, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.14
  %29 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %30 = load i64, i64* %consume, align 8
  call void @_mbstr_copy_pad(%struct.mpd_mbstr_t* %29, i64 %30)
  br label %if.end.17

if.else:                                          ; preds = %if.end.14
  %31 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %32 = load i8*, i8** %src.addr, align 8
  %33 = load i64, i64* %n_src.addr, align 8
  %add.ptr = getelementptr i8, i8* %32, i64 %33
  %34 = load i64, i64* %consume, align 8
  call void @_mbstr_copy_ascii(%struct.mpd_mbstr_t* %31, i8* %add.ptr, i64 %34)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  %35 = load i64, i64* %n_src.addr, align 8
  %cmp18 = icmp eq i64 %35, 0
  br i1 %cmp18, label %if.then.20, label %if.end.35

if.then.20:                                       ; preds = %if.end.17
  %36 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %align = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %36, i32 0, i32 3
  %37 = load i8, i8* %align, align 1
  %conv21 = sext i8 %37 to i32
  %cmp22 = icmp eq i32 %conv21, 122
  br i1 %cmp22, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.then.20
  %38 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %nchars24 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %38, i32 0, i32 1
  %39 = load i64, i64* %nchars24, align 8
  %40 = load i64, i64* %n_sign, align 8
  %add = add i64 %39, %40
  %41 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %min_width = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %41, i32 0, i32 0
  %42 = load i64, i64* %min_width, align 8
  %cmp25 = icmp slt i64 %add, %42
  br i1 %cmp25, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %land.lhs.true
  %43 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %min_width28 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %43, i32 0, i32 0
  %44 = load i64, i64* %min_width28, align 8
  %45 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %nchars29 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %45, i32 0, i32 1
  %46 = load i64, i64* %nchars29, align 8
  %47 = load i64, i64* %n_sign, align 8
  %add30 = add i64 %46, %47
  %sub31 = sub i64 %44, %add30
  store i64 %sub31, i64* %n_src.addr, align 8
  %48 = load i8*, i8** %g, align 8
  %49 = load i8, i8* %48, align 1
  %conv32 = sext i8 %49 to i64
  %50 = load i64, i64* %consume, align 8
  %sub33 = sub i64 %conv32, %50
  store i64 %sub33, i64* %consume, align 8
  store i32 1, i32* %pad, align 4
  br label %while.body

if.end.34:                                        ; preds = %land.lhs.true, %if.then.20
  br label %while.end

if.end.35:                                        ; preds = %if.end.17
  %51 = load i64, i64* %n_sep, align 8
  %cmp36 = icmp sgt i64 %51, 0
  br i1 %cmp36, label %if.then.38, label %if.end.47

if.then.38:                                       ; preds = %if.end.35
  %52 = load i32, i32* %pad, align 4
  %tobool39 = icmp ne i32 %52, 0
  br i1 %tobool39, label %land.lhs.true.40, label %if.end.45

land.lhs.true.40:                                 ; preds = %if.then.38
  %53 = load i64, i64* %n_src.addr, align 8
  %cmp41 = icmp sgt i64 %53, 1
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %land.lhs.true.40
  %54 = load i64, i64* %n_src.addr, align 8
  %sub44 = sub i64 %54, 1
  store i64 %sub44, i64* %n_src.addr, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %land.lhs.true.40, %if.then.38
  %55 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %56 = load %struct.mpd_spec_t*, %struct.mpd_spec_t** %spec.addr, align 8
  %sep46 = getelementptr inbounds %struct.mpd_spec_t, %struct.mpd_spec_t* %56, i32 0, i32 7
  %57 = load i8*, i8** %sep46, align 8
  %58 = load i64, i64* %n_sep, align 8
  call void @_mbstr_copy_char(%struct.mpd_mbstr_t* %55, i8* %57, i64 %58)
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.45, %if.end.35
  %59 = load i8*, i8** %g, align 8
  %60 = load i8, i8* %59, align 1
  %conv48 = sext i8 %60 to i32
  %tobool49 = icmp ne i32 %conv48, 0
  br i1 %tobool49, label %land.lhs.true.50, label %if.end.55

land.lhs.true.50:                                 ; preds = %if.end.47
  %61 = load i8*, i8** %g, align 8
  %add.ptr51 = getelementptr i8, i8* %61, i64 1
  %62 = load i8, i8* %add.ptr51, align 1
  %conv52 = sext i8 %62 to i32
  %tobool53 = icmp ne i32 %conv52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %land.lhs.true.50
  %63 = load i8*, i8** %g, align 8
  %incdec.ptr = getelementptr i8, i8* %63, i32 1
  store i8* %incdec.ptr, i8** %g, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %land.lhs.true.50, %if.end.47
  %64 = load i8*, i8** %g, align 8
  %65 = load i8, i8* %64, align 1
  %conv56 = sext i8 %65 to i64
  store i64 %conv56, i64* %consume, align 8
  br label %while.body

while.end:                                        ; preds = %if.end.34
  %66 = load i8*, i8** %sign.addr, align 8
  %tobool57 = icmp ne i8* %66, null
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %while.end
  %67 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %68 = load i8*, i8** %sign.addr, align 8
  call void @_mbstr_copy_ascii(%struct.mpd_mbstr_t* %67, i8* %68, i64 1)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %while.end
  %69 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %data = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %69, i32 0, i32 3
  %70 = load i8*, i8** %data, align 8
  %tobool60 = icmp ne i8* %70, null
  br i1 %tobool60, label %if.then.61, label %if.end.64

if.then.61:                                       ; preds = %if.end.59
  %71 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %nbytes62 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %71, i32 0, i32 0
  %72 = load i64, i64* %nbytes62, align 8
  %73 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %data63 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %73, i32 0, i32 3
  %74 = load i8*, i8** %data63, align 8
  %arrayidx = getelementptr i8, i8* %74, i64 %72
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.61, %if.end.59
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_mbstr_copy_ascii(%struct.mpd_mbstr_t* %dest, i8* %src, i64 %n) #2 {
entry:
  %dest.addr = alloca %struct.mpd_mbstr_t*, align 8
  %src.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store %struct.mpd_mbstr_t* %dest, %struct.mpd_mbstr_t** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %1 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %nbytes = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %1, i32 0, i32 0
  %2 = load i64, i64* %nbytes, align 8
  %add = add i64 %2, %0
  store i64 %add, i64* %nbytes, align 8
  %3 = load i64, i64* %n.addr, align 8
  %4 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %nchars = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %4, i32 0, i32 1
  %5 = load i64, i64* %nchars, align 8
  %add1 = add i64 %5, %3
  store i64 %add1, i64* %nchars, align 8
  %6 = load i64, i64* %n.addr, align 8
  %7 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %cur = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %7, i32 0, i32 2
  %8 = load i64, i64* %cur, align 8
  %sub = sub i64 %8, %6
  store i64 %sub, i64* %cur, align 8
  %9 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %data = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %9, i32 0, i32 3
  %10 = load i8*, i8** %data, align 8
  %cmp = icmp ne i8* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %data2 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %11, i32 0, i32 3
  %12 = load i8*, i8** %data2, align 8
  %13 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %cur3 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %13, i32 0, i32 2
  %14 = load i64, i64* %cur3, align 8
  %add.ptr = getelementptr i8, i8* %12, i64 %14
  %15 = load i8*, i8** %src.addr, align 8
  %16 = load i64, i64* %n.addr, align 8
  call void @_mpd_bcopy(i8* %add.ptr, i8* %15, i64 %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_mbstr_copy_char(%struct.mpd_mbstr_t* %dest, i8* %src, i64 %n) #2 {
entry:
  %dest.addr = alloca %struct.mpd_mbstr_t*, align 8
  %src.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store %struct.mpd_mbstr_t* %dest, %struct.mpd_mbstr_t** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %1 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %nbytes = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %1, i32 0, i32 0
  %2 = load i64, i64* %nbytes, align 8
  %add = add i64 %2, %0
  store i64 %add, i64* %nbytes, align 8
  %3 = load i64, i64* %n.addr, align 8
  %cmp = icmp sgt i64 %3, 0
  %cond = select i1 %cmp, i32 1, i32 0
  %conv = sext i32 %cond to i64
  %4 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %nchars = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %4, i32 0, i32 1
  %5 = load i64, i64* %nchars, align 8
  %add1 = add i64 %5, %conv
  store i64 %add1, i64* %nchars, align 8
  %6 = load i64, i64* %n.addr, align 8
  %7 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %cur = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %7, i32 0, i32 2
  %8 = load i64, i64* %cur, align 8
  %sub = sub i64 %8, %6
  store i64 %sub, i64* %cur, align 8
  %9 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %data = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %9, i32 0, i32 3
  %10 = load i8*, i8** %data, align 8
  %cmp2 = icmp ne i8* %10, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %data4 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %11, i32 0, i32 3
  %12 = load i8*, i8** %data4, align 8
  %13 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %cur5 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %13, i32 0, i32 2
  %14 = load i64, i64* %cur5, align 8
  %add.ptr = getelementptr i8, i8* %12, i64 %14
  %15 = load i8*, i8** %src.addr, align 8
  %16 = load i64, i64* %n.addr, align 8
  call void @_mpd_bcopy(i8* %add.ptr, i8* %15, i64 %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_mbstr_copy_pad(%struct.mpd_mbstr_t* %dest, i64 %n) #2 {
entry:
  %dest.addr = alloca %struct.mpd_mbstr_t*, align 8
  %n.addr = alloca i64, align 8
  %cp = alloca i8*, align 8
  store %struct.mpd_mbstr_t* %dest, %struct.mpd_mbstr_t** %dest.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %1 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %nbytes = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %1, i32 0, i32 0
  %2 = load i64, i64* %nbytes, align 8
  %add = add i64 %2, %0
  store i64 %add, i64* %nbytes, align 8
  %3 = load i64, i64* %n.addr, align 8
  %4 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %nchars = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %4, i32 0, i32 1
  %5 = load i64, i64* %nchars, align 8
  %add1 = add i64 %5, %3
  store i64 %add1, i64* %nchars, align 8
  %6 = load i64, i64* %n.addr, align 8
  %7 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %cur = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %7, i32 0, i32 2
  %8 = load i64, i64* %cur, align 8
  %sub = sub i64 %8, %6
  store i64 %sub, i64* %cur, align 8
  %9 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %data = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %9, i32 0, i32 3
  %10 = load i8*, i8** %data, align 8
  %cmp = icmp ne i8* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %data2 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %11, i32 0, i32 3
  %12 = load i8*, i8** %data2, align 8
  %13 = load %struct.mpd_mbstr_t*, %struct.mpd_mbstr_t** %dest.addr, align 8
  %cur3 = getelementptr inbounds %struct.mpd_mbstr_t, %struct.mpd_mbstr_t* %13, i32 0, i32 2
  %14 = load i64, i64* %cur3, align 8
  %add.ptr = getelementptr i8, i8* %12, i64 %14
  store i8* %add.ptr, i8** %cp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %15 = load i64, i64* %n.addr, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %n.addr, align 8
  %cmp4 = icmp sge i64 %dec, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i64, i64* %n.addr, align 8
  %17 = load i8*, i8** %cp, align 8
  %arrayidx = getelementptr i8, i8* %17, i64 %16
  store i8 48, i8* %arrayidx, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_mpd_bcopy(i8* %dest, i8* %src, i64 %n) #2 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %n.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, i64* %n.addr, align 8
  %cmp = icmp sge i64 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %n.addr, align 8
  %2 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr i8, i8* %2, i64 %1
  %3 = load i8, i8* %arrayidx, align 1
  %4 = load i64, i64* %n.addr, align 8
  %5 = load i8*, i8** %dest.addr, align 8
  %arrayidx1 = getelementptr i8, i8* %5, i64 %4
  store i8 %3, i8* %arrayidx1, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare hidden i8* @mpd_realloc(i8*, i64, i64, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
