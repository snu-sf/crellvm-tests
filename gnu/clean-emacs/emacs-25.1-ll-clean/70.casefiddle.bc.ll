; ModuleID = './src/casefiddle.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type opaque
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.region_cache = type opaque
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }
%struct.Lisp_Char_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, [64 x i64], [0 x i64] }
%struct.Lisp_Cons = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.0, i16, i16, i8*, i8*, i8* }
%union.anon.0 = type { i64 ()* }

@.str = private unnamed_addr constant [24 x i8] c"region-extract-function\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"bounds\00", align 1
@current_buffer = external global %struct.buffer*, align 8
@control_x_map = external global i64, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"upcase-region\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"downcase-region\00", align 1
@meta_map = external global i64, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"upcase-word\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"downcase-word\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"capitalize-word\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"upcase\00", align 1
@Supcase = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fupcase }, i16 1, i16 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"downcase\00", align 1
@Sdowncase = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fdowncase }, i16 1, i16 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"capitalize\00", align 1
@Scapitalize = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fcapitalize }, i16 1, i16 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"upcase-initials\00", align 1
@Supcase_initials = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fupcase_initials }, i16 1, i16 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@Supcase_region = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fupcase_region }, i16 2, i16 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* null }, align 8
@.str.12 = private unnamed_addr constant [64 x i8] c"(list (region-beginning) (region-end) (region-noncontiguous-p))\00", align 1
@Sdowncase_region = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fdowncase_region }, i16 2, i16 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.12, i32 0, i32 0), i8* null }, align 8
@.str.13 = private unnamed_addr constant [18 x i8] c"capitalize-region\00", align 1
@Scapitalize_region = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fcapitalize_region }, i16 2, i16 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* null }, align 8
@.str.14 = private unnamed_addr constant [23 x i8] c"upcase-initials-region\00", align 1
@Supcase_initials_region = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fupcase_initials_region }, i16 2, i16 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* null }, align 8
@.str.15 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@Supcase_word = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fupcase_word }, i16 1, i16 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* null }, align 8
@Sdowncase_word = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fdowncase_word }, i16 1, i16 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* null }, align 8
@Scapitalize_word = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fcapitalize_word }, i16 1, i16 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* null }, align 8

; Function Attrs: nounwind uwtable
define i64 @Fupcase(i64 %obj) #0 {
entry:
  %obj.addr = alloca i64, align 8
  store i64 %obj, i64* %obj.addr, align 8
  %0 = load i64, i64* %obj.addr, align 8
  %call = call i64 @casify_object(i32 0, i64 %0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @casify_object(i32 %flag, i64 %obj) #0 {
entry:
  %retval = alloca i64, align 8
  %flag.addr = alloca i32, align 4
  %obj.addr = alloca i64, align 8
  %c = alloca i32, align 4
  %c1 = alloca i32, align 4
  %inword = alloca i8, align 1
  %flagbits = alloca i32, align 4
  %flags = alloca i32, align 4
  %multibyte = alloca i8, align 1
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  %i179 = alloca i64, align 8
  %i_byte = alloca i64, align 8
  %size180 = alloca i64, align 8
  %len = alloca i32, align 4
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %o_size = alloca i64, align 8
  %dst = alloca i8*, align 8
  %o = alloca i8*, align 8
  store i32 %flag, i32* %flag.addr, align 4
  store i64 %obj, i64* %obj.addr, align 8
  %0 = load i32, i32* %flag.addr, align 4
  %cmp = icmp eq i32 %0, 1
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %inword, align 1
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %downcase_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 23
  %2 = load i64, i64* %downcase_table_, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %2)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 1
  %3 = load i64, i64* %arrayidx, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %3, %call1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %downcase_table_3 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 23
  %5 = load i64, i64* %downcase_table_3, align 8
  %call4 = call i64 @Fset_case_table(i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, i64* %obj.addr, align 8
  %and = and i64 %6, 7
  %conv = trunc i64 %and to i32
  %and5 = and i32 %conv, -5
  %cmp6 = icmp eq i32 %and5, 2
  br i1 %cmp6, label %if.then.8, label %if.end.94

if.then.8:                                        ; preds = %if.end
  store i32 264241152, i32* %flagbits, align 4
  %7 = load i64, i64* %obj.addr, align 8
  %shr = ashr i64 %7, 2
  %8 = load i32, i32* %flagbits, align 4
  %conv9 = sext i32 %8 to i64
  %and10 = and i64 %shr, %conv9
  %conv11 = trunc i64 %and10 to i32
  store i32 %conv11, i32* %flags, align 4
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 39
  %10 = load i64, i64* %enable_multibyte_characters_, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp13 = icmp eq i64 %10, %call12
  %lnot = xor i1 %cmp13, true
  %frombool15 = zext i1 %lnot to i8
  store i8 %frombool15, i8* %multibyte, align 1
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  %11 = load i64, i64* %obj.addr, align 8
  %shr16 = ashr i64 %11, 2
  %add = add nsw i64 %shr16, 0
  %12 = load i32, i32* %flagbits, align 4
  %add17 = add i32 %12, 0
  %conv18 = zext i32 %add17 to i64
  %cmp19 = icmp sgt i64 %add, %conv18
  br i1 %cmp19, label %if.then.27, label %if.end.28

cond.false:                                       ; preds = %if.then.8
  %13 = load i64, i64* %obj.addr, align 8
  %shr21 = ashr i64 %13, 2
  %add22 = add i64 %shr21, 0
  %14 = load i32, i32* %flagbits, align 4
  %conv23 = sext i32 %14 to i64
  %add24 = add i64 %conv23, 0
  %cmp25 = icmp ugt i64 %add22, %add24
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %cond.false, %cond.true
  %15 = load i64, i64* %obj.addr, align 8
  store i64 %15, i64* %retval
  br label %return

if.end.28:                                        ; preds = %cond.false, %cond.true
  %16 = load i64, i64* %obj.addr, align 8
  %shr29 = ashr i64 %16, 2
  %17 = load i32, i32* %flagbits, align 4
  %neg = xor i32 %17, -1
  %conv30 = sext i32 %neg to i64
  %and31 = and i64 %shr29, %conv30
  %conv32 = trunc i64 %and31 to i32
  store i32 %conv32, i32* %c1, align 4
  %18 = load i32, i32* %c1, align 4
  %cmp33 = icmp sge i32 %18, 256
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.28
  store i8 1, i8* %multibyte, align 1
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.28
  %19 = load i8, i8* %multibyte, align 1
  %tobool = trunc i8 %19 to i1
  br i1 %tobool, label %if.end.50, label %if.then.37

if.then.37:                                       ; preds = %if.end.36
  br i1 true, label %cond.true.38, label %cond.false.42

cond.true.38:                                     ; preds = %if.then.37
  %20 = load i32, i32* %c1, align 4
  %add39 = add i32 %20, 0
  %cmp40 = icmp ult i32 %add39, 128
  br i1 %cmp40, label %cond.true.47, label %cond.false.48

cond.false.42:                                    ; preds = %if.then.37
  %21 = load i32, i32* %c1, align 4
  %conv43 = sext i32 %21 to i64
  %add44 = add i64 %conv43, 0
  %cmp45 = icmp ult i64 %add44, 128
  br i1 %cmp45, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %cond.false.42, %cond.true.38
  %22 = load i32, i32* %c1, align 4
  br label %cond.end

cond.false.48:                                    ; preds = %cond.false.42, %cond.true.38
  %23 = load i32, i32* %c1, align 4
  %add49 = add nsw i32 %23, 4194048
  br label %cond.end

cond.end:                                         ; preds = %cond.false.48, %cond.true.47
  %cond = phi i32 [ %22, %cond.true.47 ], [ %add49, %cond.false.48 ]
  store i32 %cond, i32* %c1, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %cond.end, %if.end.36
  %24 = load i32, i32* %c1, align 4
  %call51 = call i32 @downcase(i32 %24)
  store i32 %call51, i32* %c, align 4
  %25 = load i8, i8* %inword, align 1
  %tobool52 = trunc i8 %25 to i1
  br i1 %tobool52, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %if.end.50
  %26 = load i32, i32* %c, align 4
  %27 = load i32, i32* %flags, align 4
  %or = or i32 %26, %27
  %conv54 = sext i32 %or to i64
  %call55 = call i64 @make_natnum(i64 %conv54)
  store i64 %call55, i64* %obj.addr, align 8
  br label %if.end.93

if.else:                                          ; preds = %if.end.50
  %28 = load i32, i32* %c, align 4
  %conv56 = sext i32 %28 to i64
  %29 = load i64, i64* %obj.addr, align 8
  %shr57 = ashr i64 %29, 2
  %30 = load i32, i32* %flagbits, align 4
  %neg58 = xor i32 %30, -1
  %conv59 = sext i32 %neg58 to i64
  %and60 = and i64 %shr57, %conv59
  %cmp61 = icmp eq i64 %conv56, %and60
  br i1 %cmp61, label %if.then.63, label %if.end.92

if.then.63:                                       ; preds = %if.else
  %31 = load i8, i8* %inword, align 1
  %tobool64 = trunc i8 %31 to i1
  br i1 %tobool64, label %if.end.67, label %if.then.65

if.then.65:                                       ; preds = %if.then.63
  %32 = load i32, i32* %c1, align 4
  %call66 = call i32 @upcase1(i32 %32)
  store i32 %call66, i32* %c, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.then.63
  %33 = load i8, i8* %multibyte, align 1
  %tobool68 = trunc i8 %33 to i1
  br i1 %tobool68, label %if.end.88, label %if.then.69

if.then.69:                                       ; preds = %if.end.67
  br label %do.body

do.body:                                          ; preds = %if.then.69
  br i1 true, label %cond.true.70, label %cond.false.74

cond.true.70:                                     ; preds = %do.body
  %34 = load i32, i32* %c, align 4
  %add71 = add i32 %34, 0
  %cmp72 = icmp ult i32 %add71, 128
  br i1 %cmp72, label %if.end.87, label %if.then.79

cond.false.74:                                    ; preds = %do.body
  %35 = load i32, i32* %c, align 4
  %conv75 = sext i32 %35 to i64
  %add76 = add i64 %conv75, 0
  %cmp77 = icmp ult i64 %add76, 128
  br i1 %cmp77, label %if.end.87, label %if.then.79

if.then.79:                                       ; preds = %cond.false.74, %cond.true.70
  %36 = load i32, i32* %c, align 4
  %cmp80 = icmp sgt i32 %36, 4194175
  br i1 %cmp80, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %if.then.79
  %37 = load i32, i32* %c, align 4
  %sub = sub nsw i32 %37, 4194048
  br label %cond.end.85

cond.false.83:                                    ; preds = %if.then.79
  %38 = load i32, i32* %c, align 4
  %and84 = and i32 %38, 255
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.83, %cond.true.82
  %cond86 = phi i32 [ %sub, %cond.true.82 ], [ %and84, %cond.false.83 ]
  store i32 %cond86, i32* %c, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %cond.end.85, %cond.false.74, %cond.true.70
  br label %do.end

do.end:                                           ; preds = %if.end.87
  br label %if.end.88

if.end.88:                                        ; preds = %do.end, %if.end.67
  %39 = load i32, i32* %c, align 4
  %40 = load i32, i32* %flags, align 4
  %or89 = or i32 %39, %40
  %conv90 = sext i32 %or89 to i64
  %call91 = call i64 @make_natnum(i64 %conv90)
  store i64 %call91, i64* %obj.addr, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.88, %if.else
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.53
  %41 = load i64, i64* %obj.addr, align 8
  store i64 %41, i64* %retval
  br label %return

if.end.94:                                        ; preds = %if.end
  %42 = load i64, i64* %obj.addr, align 8
  %call95 = call zeroext i1 @STRINGP(i64 %42)
  br i1 %call95, label %if.else.98, label %if.then.96

if.then.96:                                       ; preds = %if.end.94
  %call97 = call i64 @builtin_lisp_symbol(i32 255)
  %43 = load i64, i64* %obj.addr, align 8
  %44 = call i64 @wrong_type_argument(i64 %call97, i64 %43) #3
  unreachable

if.else.98:                                       ; preds = %if.end.94
  %45 = load i64, i64* %obj.addr, align 8
  %call99 = call zeroext i1 @STRING_MULTIBYTE(i64 %45)
  br i1 %call99, label %if.else.178, label %if.then.100

if.then.100:                                      ; preds = %if.else.98
  %46 = load i64, i64* %obj.addr, align 8
  %call101 = call i64 @SCHARS(i64 %46)
  store i64 %call101, i64* %size, align 8
  %47 = load i64, i64* %obj.addr, align 8
  %call102 = call i64 @Fcopy_sequence(i64 %47)
  store i64 %call102, i64* %obj.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.100
  %48 = load i64, i64* %i, align 8
  %49 = load i64, i64* %size, align 8
  %cmp103 = icmp slt i64 %48, %49
  br i1 %cmp103, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load i64, i64* %obj.addr, align 8
  %51 = load i64, i64* %i, align 8
  %call105 = call zeroext i8 @SREF(i64 %50, i64 %51)
  %conv106 = zext i8 %call105 to i32
  store i32 %conv106, i32* %c, align 4
  br i1 true, label %cond.true.107, label %cond.false.111

cond.true.107:                                    ; preds = %for.body
  %52 = load i32, i32* %c, align 4
  %add108 = add i32 %52, 0
  %cmp109 = icmp ult i32 %add108, 128
  br i1 %cmp109, label %cond.true.116, label %cond.false.117

cond.false.111:                                   ; preds = %for.body
  %53 = load i32, i32* %c, align 4
  %conv112 = sext i32 %53 to i64
  %add113 = add i64 %conv112, 0
  %cmp114 = icmp ult i64 %add113, 128
  br i1 %cmp114, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %cond.false.111, %cond.true.107
  %54 = load i32, i32* %c, align 4
  br label %cond.end.119

cond.false.117:                                   ; preds = %cond.false.111, %cond.true.107
  %55 = load i32, i32* %c, align 4
  %add118 = add nsw i32 %55, 4194048
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.117, %cond.true.116
  %cond120 = phi i32 [ %54, %cond.true.116 ], [ %add118, %cond.false.117 ]
  store i32 %cond120, i32* %c, align 4
  %56 = load i32, i32* %c, align 4
  store i32 %56, i32* %c1, align 4
  %57 = load i8, i8* %inword, align 1
  %tobool121 = trunc i8 %57 to i1
  br i1 %tobool121, label %land.lhs.true, label %if.else.127

land.lhs.true:                                    ; preds = %cond.end.119
  %58 = load i32, i32* %flag.addr, align 4
  %cmp123 = icmp ne i32 %58, 3
  br i1 %cmp123, label %if.then.125, label %if.else.127

if.then.125:                                      ; preds = %land.lhs.true
  %59 = load i32, i32* %c, align 4
  %call126 = call i32 @downcase(i32 %59)
  store i32 %call126, i32* %c, align 4
  br label %if.end.136

if.else.127:                                      ; preds = %land.lhs.true, %cond.end.119
  %60 = load i32, i32* %c, align 4
  %call128 = call zeroext i1 @uppercasep(i32 %60)
  br i1 %call128, label %if.end.135, label %land.lhs.true.129

land.lhs.true.129:                                ; preds = %if.else.127
  %61 = load i8, i8* %inword, align 1
  %tobool130 = trunc i8 %61 to i1
  br i1 %tobool130, label %lor.lhs.false, label %if.then.133

lor.lhs.false:                                    ; preds = %land.lhs.true.129
  %62 = load i32, i32* %flag.addr, align 4
  %cmp131 = icmp ne i32 %62, 3
  br i1 %cmp131, label %if.then.133, label %if.end.135

if.then.133:                                      ; preds = %lor.lhs.false, %land.lhs.true.129
  %63 = load i32, i32* %c1, align 4
  %call134 = call i32 @upcase1(i32 %63)
  store i32 %call134, i32* %c, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.133, %lor.lhs.false, %if.else.127
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.125
  %64 = load i32, i32* %flag.addr, align 4
  %cmp137 = icmp sge i32 %64, 2
  br i1 %cmp137, label %if.then.139, label %if.end.144

if.then.139:                                      ; preds = %if.end.136
  %65 = load i32, i32* %c, align 4
  %call140 = call i32 @SYNTAX(i32 %65)
  %cmp141 = icmp eq i32 %call140, 2
  %frombool143 = zext i1 %cmp141 to i8
  store i8 %frombool143, i8* %inword, align 1
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.139, %if.end.136
  %66 = load i32, i32* %c, align 4
  %67 = load i32, i32* %c1, align 4
  %cmp145 = icmp ne i32 %66, %67
  br i1 %cmp145, label %if.then.147, label %if.end.177

if.then.147:                                      ; preds = %if.end.144
  br label %do.body.148

do.body.148:                                      ; preds = %if.then.147
  br i1 true, label %cond.true.149, label %cond.false.153

cond.true.149:                                    ; preds = %do.body.148
  %68 = load i32, i32* %c, align 4
  %add150 = add i32 %68, 0
  %cmp151 = icmp ult i32 %add150, 128
  br i1 %cmp151, label %if.end.167, label %if.then.158

cond.false.153:                                   ; preds = %do.body.148
  %69 = load i32, i32* %c, align 4
  %conv154 = sext i32 %69 to i64
  %add155 = add i64 %conv154, 0
  %cmp156 = icmp ult i64 %add155, 128
  br i1 %cmp156, label %if.end.167, label %if.then.158

if.then.158:                                      ; preds = %cond.false.153, %cond.true.149
  %70 = load i32, i32* %c, align 4
  %cmp159 = icmp sgt i32 %70, 4194175
  br i1 %cmp159, label %cond.true.161, label %cond.false.163

cond.true.161:                                    ; preds = %if.then.158
  %71 = load i32, i32* %c, align 4
  %sub162 = sub nsw i32 %71, 4194048
  br label %cond.end.165

cond.false.163:                                   ; preds = %if.then.158
  %72 = load i32, i32* %c, align 4
  %and164 = and i32 %72, 255
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.false.163, %cond.true.161
  %cond166 = phi i32 [ %sub162, %cond.true.161 ], [ %and164, %cond.false.163 ]
  store i32 %cond166, i32* %c, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %cond.end.165, %cond.false.153, %cond.true.149
  br label %do.end.168

do.end.168:                                       ; preds = %if.end.167
  %73 = load i32, i32* %c, align 4
  %cmp169 = icmp sge i32 %73, 0
  br i1 %cmp169, label %land.lhs.true.171, label %if.end.176

land.lhs.true.171:                                ; preds = %do.end.168
  %74 = load i32, i32* %c, align 4
  %cmp172 = icmp slt i32 %74, 256
  br i1 %cmp172, label %if.then.174, label %if.end.176

if.then.174:                                      ; preds = %land.lhs.true.171
  %75 = load i64, i64* %obj.addr, align 8
  %76 = load i64, i64* %i, align 8
  %77 = load i32, i32* %c, align 4
  %conv175 = trunc i32 %77 to i8
  call void @SSET(i64 %75, i64 %76, i8 zeroext %conv175)
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.174, %land.lhs.true.171, %do.end.168
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.end.144
  br label %for.inc

for.inc:                                          ; preds = %if.end.177
  %78 = load i64, i64* %i, align 8
  %inc = add nsw i64 %78, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %79 = load i64, i64* %obj.addr, align 8
  store i64 %79, i64* %retval
  br label %return

if.else.178:                                      ; preds = %if.else.98
  %80 = load i64, i64* %obj.addr, align 8
  %call181 = call i64 @SCHARS(i64 %80)
  store i64 %call181, i64* %size180, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call182 = call i64 @SPECPDL_INDEX()
  store i64 %call182, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  br i1 false, label %cond.true.183, label %cond.false.664

cond.true.183:                                    ; preds = %if.else.178
  br i1 false, label %cond.true.184, label %cond.false.449

cond.true.184:                                    ; preds = %cond.true.183
  %81 = load i64, i64* %size180, align 8
  %conv185 = trunc i64 %81 to i8
  %conv186 = sext i8 %conv185 to i32
  %add187 = add nsw i32 0, %conv186
  %mul = mul nsw i32 0, %add187
  %sub188 = sub nsw i32 %mul, 1
  %cmp189 = icmp slt i32 %sub188, 0
  br i1 %cmp189, label %cond.true.191, label %cond.false.210

cond.true.191:                                    ; preds = %cond.true.184
  %82 = load i64, i64* %size180, align 8
  %conv192 = trunc i64 %82 to i8
  %conv193 = sext i8 %conv192 to i32
  %add194 = add nsw i32 0, %conv193
  %mul195 = mul nsw i32 0, %add194
  %add196 = add nsw i32 %mul195, 0
  %neg197 = xor i32 %add196, -1
  %cmp198 = icmp eq i32 %neg197, -1
  %conv199 = zext i1 %cmp198 to i32
  %sub200 = sub nsw i32 0, %conv199
  %83 = load i64, i64* %size180, align 8
  %conv201 = trunc i64 %83 to i8
  %conv202 = sext i8 %conv201 to i32
  %add203 = add nsw i32 0, %conv202
  %mul204 = mul nsw i32 0, %add203
  %add205 = add nsw i32 %mul204, 1
  %shl = shl i32 %add205, 30
  %sub206 = sub nsw i32 %shl, 1
  %mul207 = mul nsw i32 %sub206, 2
  %add208 = add nsw i32 %mul207, 1
  %sub209 = sub nsw i32 %sub200, %add208
  br label %cond.end.216

cond.false.210:                                   ; preds = %cond.true.184
  %84 = load i64, i64* %size180, align 8
  %conv211 = trunc i64 %84 to i8
  %conv212 = sext i8 %conv211 to i32
  %add213 = add nsw i32 0, %conv212
  %mul214 = mul nsw i32 0, %add213
  %add215 = add nsw i32 %mul214, 0
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.false.210, %cond.true.191
  %cond217 = phi i32 [ %sub209, %cond.true.191 ], [ %add215, %cond.false.210 ]
  %cmp218 = icmp eq i32 %cond217, 0
  br i1 %cmp218, label %land.lhs.true.220, label %lor.lhs.false.225

land.lhs.true.220:                                ; preds = %cond.end.216
  %85 = load i64, i64* %size180, align 8
  %conv221 = trunc i64 %85 to i8
  %conv222 = sext i8 %conv221 to i32
  %cmp223 = icmp slt i32 %conv222, 0
  br i1 %cmp223, label %cond.true.403, label %lor.lhs.false.225

lor.lhs.false.225:                                ; preds = %land.lhs.true.220, %cond.end.216
  br i1 false, label %cond.true.226, label %cond.false.304

cond.true.226:                                    ; preds = %lor.lhs.false.225
  %86 = load i64, i64* %size180, align 8
  %conv227 = trunc i64 %86 to i8
  %conv228 = sext i8 %conv227 to i32
  %cmp229 = icmp slt i32 %conv228, 0
  br i1 %cmp229, label %cond.true.231, label %cond.false.261

cond.true.231:                                    ; preds = %cond.true.226
  %87 = load i64, i64* %size180, align 8
  %conv232 = trunc i64 %87 to i8
  %conv233 = sext i8 %conv232 to i32
  %88 = load i64, i64* %size180, align 8
  %conv234 = trunc i64 %88 to i8
  %conv235 = sext i8 %conv234 to i32
  %add236 = add nsw i32 0, %conv235
  %mul237 = mul nsw i32 0, %add236
  %sub238 = sub nsw i32 %mul237, 1
  %cmp239 = icmp slt i32 %sub238, 0
  br i1 %cmp239, label %cond.true.241, label %cond.false.251

cond.true.241:                                    ; preds = %cond.true.231
  %89 = load i64, i64* %size180, align 8
  %conv242 = trunc i64 %89 to i8
  %conv243 = sext i8 %conv242 to i32
  %add244 = add nsw i32 0, %conv243
  %mul245 = mul nsw i32 0, %add244
  %add246 = add nsw i32 %mul245, 1
  %shl247 = shl i32 %add246, 30
  %sub248 = sub nsw i32 %shl247, 1
  %mul249 = mul nsw i32 %sub248, 2
  %add250 = add nsw i32 %mul249, 1
  br label %cond.end.257

cond.false.251:                                   ; preds = %cond.true.231
  %90 = load i64, i64* %size180, align 8
  %conv252 = trunc i64 %90 to i8
  %conv253 = sext i8 %conv252 to i32
  %add254 = add nsw i32 0, %conv253
  %mul255 = mul nsw i32 0, %add254
  %sub256 = sub nsw i32 %mul255, 1
  br label %cond.end.257

cond.end.257:                                     ; preds = %cond.false.251, %cond.true.241
  %cond258 = phi i32 [ %add250, %cond.true.241 ], [ %sub256, %cond.false.251 ]
  %div = sdiv i32 %cond258, 5
  %cmp259 = icmp slt i32 %conv233, %div
  br i1 %cmp259, label %cond.true.403, label %lor.lhs.false.383

cond.false.261:                                   ; preds = %cond.true.226
  br i1 false, label %cond.true.262, label %cond.false.263

cond.true.262:                                    ; preds = %cond.false.261
  br i1 false, label %cond.true.403, label %lor.lhs.false.383

cond.false.263:                                   ; preds = %cond.false.261
  %91 = load i64, i64* %size180, align 8
  %conv264 = trunc i64 %91 to i8
  %conv265 = sext i8 %conv264 to i32
  %add266 = add nsw i32 0, %conv265
  %mul267 = mul nsw i32 0, %add266
  %sub268 = sub nsw i32 %mul267, 1
  %cmp269 = icmp slt i32 %sub268, 0
  br i1 %cmp269, label %cond.true.271, label %cond.false.291

cond.true.271:                                    ; preds = %cond.false.263
  %92 = load i64, i64* %size180, align 8
  %conv272 = trunc i64 %92 to i8
  %conv273 = sext i8 %conv272 to i32
  %add274 = add nsw i32 0, %conv273
  %mul275 = mul nsw i32 0, %add274
  %add276 = add nsw i32 %mul275, 0
  %neg277 = xor i32 %add276, -1
  %cmp278 = icmp eq i32 %neg277, -1
  %conv279 = zext i1 %cmp278 to i32
  %sub280 = sub nsw i32 0, %conv279
  %93 = load i64, i64* %size180, align 8
  %conv281 = trunc i64 %93 to i8
  %conv282 = sext i8 %conv281 to i32
  %add283 = add nsw i32 0, %conv282
  %mul284 = mul nsw i32 0, %add283
  %add285 = add nsw i32 %mul284, 1
  %shl286 = shl i32 %add285, 30
  %sub287 = sub nsw i32 %shl286, 1
  %mul288 = mul nsw i32 %sub287, 2
  %add289 = add nsw i32 %mul288, 1
  %sub290 = sub nsw i32 %sub280, %add289
  br label %cond.end.297

cond.false.291:                                   ; preds = %cond.false.263
  %94 = load i64, i64* %size180, align 8
  %conv292 = trunc i64 %94 to i8
  %conv293 = sext i8 %conv292 to i32
  %add294 = add nsw i32 0, %conv293
  %mul295 = mul nsw i32 0, %add294
  %add296 = add nsw i32 %mul295, 0
  br label %cond.end.297

cond.end.297:                                     ; preds = %cond.false.291, %cond.true.271
  %cond298 = phi i32 [ %sub290, %cond.true.271 ], [ %add296, %cond.false.291 ]
  %div299 = sdiv i32 %cond298, 5
  %95 = load i64, i64* %size180, align 8
  %conv300 = trunc i64 %95 to i8
  %conv301 = sext i8 %conv300 to i32
  %cmp302 = icmp slt i32 %div299, %conv301
  br i1 %cmp302, label %cond.true.403, label %lor.lhs.false.383

cond.false.304:                                   ; preds = %lor.lhs.false.225
  br i1 false, label %cond.true.305, label %cond.false.306

cond.true.305:                                    ; preds = %cond.false.304
  br i1 false, label %cond.true.403, label %lor.lhs.false.383

cond.false.306:                                   ; preds = %cond.false.304
  %96 = load i64, i64* %size180, align 8
  %conv307 = trunc i64 %96 to i8
  %conv308 = sext i8 %conv307 to i32
  %cmp309 = icmp slt i32 %conv308, 0
  br i1 %cmp309, label %cond.true.311, label %cond.false.352

cond.true.311:                                    ; preds = %cond.false.306
  %97 = load i64, i64* %size180, align 8
  %conv312 = trunc i64 %97 to i8
  %conv313 = sext i8 %conv312 to i32
  %98 = load i64, i64* %size180, align 8
  %conv314 = trunc i64 %98 to i8
  %conv315 = sext i8 %conv314 to i32
  %add316 = add nsw i32 0, %conv315
  %mul317 = mul nsw i32 0, %add316
  %sub318 = sub nsw i32 %mul317, 1
  %cmp319 = icmp slt i32 %sub318, 0
  br i1 %cmp319, label %cond.true.321, label %cond.false.341

cond.true.321:                                    ; preds = %cond.true.311
  %99 = load i64, i64* %size180, align 8
  %conv322 = trunc i64 %99 to i8
  %conv323 = sext i8 %conv322 to i32
  %add324 = add nsw i32 0, %conv323
  %mul325 = mul nsw i32 0, %add324
  %add326 = add nsw i32 %mul325, 0
  %neg327 = xor i32 %add326, -1
  %cmp328 = icmp eq i32 %neg327, -1
  %conv329 = zext i1 %cmp328 to i32
  %sub330 = sub nsw i32 0, %conv329
  %100 = load i64, i64* %size180, align 8
  %conv331 = trunc i64 %100 to i8
  %conv332 = sext i8 %conv331 to i32
  %add333 = add nsw i32 0, %conv332
  %mul334 = mul nsw i32 0, %add333
  %add335 = add nsw i32 %mul334, 1
  %shl336 = shl i32 %add335, 30
  %sub337 = sub nsw i32 %shl336, 1
  %mul338 = mul nsw i32 %sub337, 2
  %add339 = add nsw i32 %mul338, 1
  %sub340 = sub nsw i32 %sub330, %add339
  br label %cond.end.347

cond.false.341:                                   ; preds = %cond.true.311
  %101 = load i64, i64* %size180, align 8
  %conv342 = trunc i64 %101 to i8
  %conv343 = sext i8 %conv342 to i32
  %add344 = add nsw i32 0, %conv343
  %mul345 = mul nsw i32 0, %add344
  %add346 = add nsw i32 %mul345, 0
  br label %cond.end.347

cond.end.347:                                     ; preds = %cond.false.341, %cond.true.321
  %cond348 = phi i32 [ %sub340, %cond.true.321 ], [ %add346, %cond.false.341 ]
  %div349 = sdiv i32 %cond348, 5
  %cmp350 = icmp slt i32 %conv313, %div349
  br i1 %cmp350, label %cond.true.403, label %lor.lhs.false.383

cond.false.352:                                   ; preds = %cond.false.306
  %102 = load i64, i64* %size180, align 8
  %conv353 = trunc i64 %102 to i8
  %conv354 = sext i8 %conv353 to i32
  %add355 = add nsw i32 0, %conv354
  %mul356 = mul nsw i32 0, %add355
  %sub357 = sub nsw i32 %mul356, 1
  %cmp358 = icmp slt i32 %sub357, 0
  br i1 %cmp358, label %cond.true.360, label %cond.false.370

cond.true.360:                                    ; preds = %cond.false.352
  %103 = load i64, i64* %size180, align 8
  %conv361 = trunc i64 %103 to i8
  %conv362 = sext i8 %conv361 to i32
  %add363 = add nsw i32 0, %conv362
  %mul364 = mul nsw i32 0, %add363
  %add365 = add nsw i32 %mul364, 1
  %shl366 = shl i32 %add365, 30
  %sub367 = sub nsw i32 %shl366, 1
  %mul368 = mul nsw i32 %sub367, 2
  %add369 = add nsw i32 %mul368, 1
  br label %cond.end.376

cond.false.370:                                   ; preds = %cond.false.352
  %104 = load i64, i64* %size180, align 8
  %conv371 = trunc i64 %104 to i8
  %conv372 = sext i8 %conv371 to i32
  %add373 = add nsw i32 0, %conv372
  %mul374 = mul nsw i32 0, %add373
  %sub375 = sub nsw i32 %mul374, 1
  br label %cond.end.376

cond.end.376:                                     ; preds = %cond.false.370, %cond.true.360
  %cond377 = phi i32 [ %add369, %cond.true.360 ], [ %sub375, %cond.false.370 ]
  %div378 = sdiv i32 %cond377, 5
  %105 = load i64, i64* %size180, align 8
  %conv379 = trunc i64 %105 to i8
  %conv380 = sext i8 %conv379 to i32
  %cmp381 = icmp slt i32 %div378, %conv380
  br i1 %cmp381, label %cond.true.403, label %lor.lhs.false.383

lor.lhs.false.383:                                ; preds = %cond.end.376, %cond.end.347, %cond.true.305, %cond.end.297, %cond.true.262, %cond.end.257
  %106 = load i64, i64* %size180, align 8
  %conv384 = trunc i64 %106 to i8
  %conv385 = sext i8 %conv384 to i32
  %mul386 = mul nsw i32 %conv385, 5
  %mul387 = mul nsw i32 0, %mul386
  %sub388 = sub nsw i32 %mul387, 1
  %cmp389 = icmp slt i32 %sub388, 0
  br i1 %cmp389, label %land.lhs.true.391, label %lor.lhs.false.397

land.lhs.true.391:                                ; preds = %lor.lhs.false.383
  %107 = load i64, i64* %size180, align 8
  %conv392 = trunc i64 %107 to i8
  %conv393 = sext i8 %conv392 to i32
  %mul394 = mul nsw i32 %conv393, 5
  %cmp395 = icmp slt i32 %mul394, -128
  br i1 %cmp395, label %cond.true.403, label %lor.lhs.false.397

lor.lhs.false.397:                                ; preds = %land.lhs.true.391, %lor.lhs.false.383
  %108 = load i64, i64* %size180, align 8
  %conv398 = trunc i64 %108 to i8
  %conv399 = sext i8 %conv398 to i32
  %mul400 = mul nsw i32 %conv399, 5
  %cmp401 = icmp slt i32 127, %mul400
  br i1 %cmp401, label %cond.true.403, label %cond.false.426

cond.true.403:                                    ; preds = %lor.lhs.false.397, %land.lhs.true.391, %cond.end.376, %cond.end.347, %cond.true.305, %cond.end.297, %cond.true.262, %cond.end.257, %land.lhs.true.220
  %109 = load i64, i64* %size180, align 8
  %conv404 = trunc i64 %109 to i8
  %conv405 = zext i8 %conv404 to i32
  %mul406 = mul nsw i32 %conv405, 5
  %cmp407 = icmp sle i32 %mul406, 127
  br i1 %cmp407, label %cond.true.409, label %cond.false.415

cond.true.409:                                    ; preds = %cond.true.403
  %110 = load i64, i64* %size180, align 8
  %conv410 = trunc i64 %110 to i8
  %conv411 = zext i8 %conv410 to i32
  %mul412 = mul nsw i32 %conv411, 5
  %conv413 = trunc i32 %mul412 to i8
  %conv414 = sext i8 %conv413 to i32
  br label %cond.end.423

cond.false.415:                                   ; preds = %cond.true.403
  %111 = load i64, i64* %size180, align 8
  %conv416 = trunc i64 %111 to i8
  %conv417 = zext i8 %conv416 to i32
  %mul418 = mul nsw i32 %conv417, 5
  %sub419 = sub nsw i32 %mul418, -128
  %conv420 = trunc i32 %sub419 to i8
  %conv421 = sext i8 %conv420 to i32
  %add422 = add nsw i32 %conv421, -128
  br label %cond.end.423

cond.end.423:                                     ; preds = %cond.false.415, %cond.true.409
  %cond424 = phi i32 [ %conv414, %cond.true.409 ], [ %add422, %cond.false.415 ]
  %conv425 = sext i32 %cond424 to i64
  store i64 %conv425, i64* %o_size, align 8
  br i1 true, label %if.then.2353, label %if.end.2354

cond.false.426:                                   ; preds = %lor.lhs.false.397
  %112 = load i64, i64* %size180, align 8
  %conv427 = trunc i64 %112 to i8
  %conv428 = zext i8 %conv427 to i32
  %mul429 = mul nsw i32 %conv428, 5
  %cmp430 = icmp sle i32 %mul429, 127
  br i1 %cmp430, label %cond.true.432, label %cond.false.438

cond.true.432:                                    ; preds = %cond.false.426
  %113 = load i64, i64* %size180, align 8
  %conv433 = trunc i64 %113 to i8
  %conv434 = zext i8 %conv433 to i32
  %mul435 = mul nsw i32 %conv434, 5
  %conv436 = trunc i32 %mul435 to i8
  %conv437 = sext i8 %conv436 to i32
  br label %cond.end.446

cond.false.438:                                   ; preds = %cond.false.426
  %114 = load i64, i64* %size180, align 8
  %conv439 = trunc i64 %114 to i8
  %conv440 = zext i8 %conv439 to i32
  %mul441 = mul nsw i32 %conv440, 5
  %sub442 = sub nsw i32 %mul441, -128
  %conv443 = trunc i32 %sub442 to i8
  %conv444 = sext i8 %conv443 to i32
  %add445 = add nsw i32 %conv444, -128
  br label %cond.end.446

cond.end.446:                                     ; preds = %cond.false.438, %cond.true.432
  %cond447 = phi i32 [ %conv437, %cond.true.432 ], [ %add445, %cond.false.438 ]
  %conv448 = sext i32 %cond447 to i64
  store i64 %conv448, i64* %o_size, align 8
  br i1 false, label %if.then.2353, label %if.end.2354

cond.false.449:                                   ; preds = %cond.true.183
  %115 = load i64, i64* %size180, align 8
  %add450 = add nsw i64 0, %115
  %mul451 = mul nsw i64 0, %add450
  %sub452 = sub nsw i64 %mul451, 1
  %cmp453 = icmp slt i64 %sub452, 0
  br i1 %cmp453, label %cond.true.455, label %cond.false.472

cond.true.455:                                    ; preds = %cond.false.449
  %116 = load i64, i64* %size180, align 8
  %add456 = add nsw i64 0, %116
  %mul457 = mul nsw i64 0, %add456
  %add458 = add nsw i64 %mul457, 0
  %neg459 = xor i64 %add458, -1
  %cmp460 = icmp eq i64 %neg459, -1
  %conv461 = zext i1 %cmp460 to i32
  %sub462 = sub nsw i32 0, %conv461
  %conv463 = sext i32 %sub462 to i64
  %117 = load i64, i64* %size180, align 8
  %add464 = add nsw i64 0, %117
  %mul465 = mul nsw i64 0, %add464
  %add466 = add nsw i64 %mul465, 1
  %shl467 = shl i64 %add466, 62
  %sub468 = sub nsw i64 %shl467, 1
  %mul469 = mul nsw i64 %sub468, 2
  %add470 = add nsw i64 %mul469, 1
  %sub471 = sub nsw i64 %conv463, %add470
  br label %cond.end.476

cond.false.472:                                   ; preds = %cond.false.449
  %118 = load i64, i64* %size180, align 8
  %add473 = add nsw i64 0, %118
  %mul474 = mul nsw i64 0, %add473
  %add475 = add nsw i64 %mul474, 0
  br label %cond.end.476

cond.end.476:                                     ; preds = %cond.false.472, %cond.true.455
  %cond477 = phi i64 [ %sub471, %cond.true.455 ], [ %add475, %cond.false.472 ]
  %cmp478 = icmp eq i64 %cond477, 0
  br i1 %cmp478, label %land.lhs.true.480, label %lor.lhs.false.483

land.lhs.true.480:                                ; preds = %cond.end.476
  %119 = load i64, i64* %size180, align 8
  %cmp481 = icmp slt i64 %119, 0
  br i1 %cmp481, label %cond.true.618, label %lor.lhs.false.483

lor.lhs.false.483:                                ; preds = %land.lhs.true.480, %cond.end.476
  br i1 false, label %cond.true.484, label %cond.false.544

cond.true.484:                                    ; preds = %lor.lhs.false.483
  %120 = load i64, i64* %size180, align 8
  %cmp485 = icmp slt i64 %120, 0
  br i1 %cmp485, label %cond.true.487, label %cond.false.510

cond.true.487:                                    ; preds = %cond.true.484
  %121 = load i64, i64* %size180, align 8
  %122 = load i64, i64* %size180, align 8
  %add488 = add nsw i64 0, %122
  %mul489 = mul nsw i64 0, %add488
  %sub490 = sub nsw i64 %mul489, 1
  %cmp491 = icmp slt i64 %sub490, 0
  br i1 %cmp491, label %cond.true.493, label %cond.false.501

cond.true.493:                                    ; preds = %cond.true.487
  %123 = load i64, i64* %size180, align 8
  %add494 = add nsw i64 0, %123
  %mul495 = mul nsw i64 0, %add494
  %add496 = add nsw i64 %mul495, 1
  %shl497 = shl i64 %add496, 62
  %sub498 = sub nsw i64 %shl497, 1
  %mul499 = mul nsw i64 %sub498, 2
  %add500 = add nsw i64 %mul499, 1
  br label %cond.end.505

cond.false.501:                                   ; preds = %cond.true.487
  %124 = load i64, i64* %size180, align 8
  %add502 = add nsw i64 0, %124
  %mul503 = mul nsw i64 0, %add502
  %sub504 = sub nsw i64 %mul503, 1
  br label %cond.end.505

cond.end.505:                                     ; preds = %cond.false.501, %cond.true.493
  %cond506 = phi i64 [ %add500, %cond.true.493 ], [ %sub504, %cond.false.501 ]
  %div507 = sdiv i64 %cond506, 5
  %cmp508 = icmp slt i64 %121, %div507
  br i1 %cmp508, label %cond.true.618, label %lor.lhs.false.604

cond.false.510:                                   ; preds = %cond.true.484
  br i1 false, label %cond.true.511, label %cond.false.512

cond.true.511:                                    ; preds = %cond.false.510
  br i1 false, label %cond.true.618, label %lor.lhs.false.604

cond.false.512:                                   ; preds = %cond.false.510
  %125 = load i64, i64* %size180, align 8
  %add513 = add nsw i64 0, %125
  %mul514 = mul nsw i64 0, %add513
  %sub515 = sub nsw i64 %mul514, 1
  %cmp516 = icmp slt i64 %sub515, 0
  br i1 %cmp516, label %cond.true.518, label %cond.false.535

cond.true.518:                                    ; preds = %cond.false.512
  %126 = load i64, i64* %size180, align 8
  %add519 = add nsw i64 0, %126
  %mul520 = mul nsw i64 0, %add519
  %add521 = add nsw i64 %mul520, 0
  %neg522 = xor i64 %add521, -1
  %cmp523 = icmp eq i64 %neg522, -1
  %conv524 = zext i1 %cmp523 to i32
  %sub525 = sub nsw i32 0, %conv524
  %conv526 = sext i32 %sub525 to i64
  %127 = load i64, i64* %size180, align 8
  %add527 = add nsw i64 0, %127
  %mul528 = mul nsw i64 0, %add527
  %add529 = add nsw i64 %mul528, 1
  %shl530 = shl i64 %add529, 62
  %sub531 = sub nsw i64 %shl530, 1
  %mul532 = mul nsw i64 %sub531, 2
  %add533 = add nsw i64 %mul532, 1
  %sub534 = sub nsw i64 %conv526, %add533
  br label %cond.end.539

cond.false.535:                                   ; preds = %cond.false.512
  %128 = load i64, i64* %size180, align 8
  %add536 = add nsw i64 0, %128
  %mul537 = mul nsw i64 0, %add536
  %add538 = add nsw i64 %mul537, 0
  br label %cond.end.539

cond.end.539:                                     ; preds = %cond.false.535, %cond.true.518
  %cond540 = phi i64 [ %sub534, %cond.true.518 ], [ %add538, %cond.false.535 ]
  %div541 = sdiv i64 %cond540, 5
  %129 = load i64, i64* %size180, align 8
  %cmp542 = icmp slt i64 %div541, %129
  br i1 %cmp542, label %cond.true.618, label %lor.lhs.false.604

cond.false.544:                                   ; preds = %lor.lhs.false.483
  br i1 false, label %cond.true.545, label %cond.false.546

cond.true.545:                                    ; preds = %cond.false.544
  br i1 false, label %cond.true.618, label %lor.lhs.false.604

cond.false.546:                                   ; preds = %cond.false.544
  %130 = load i64, i64* %size180, align 8
  %cmp547 = icmp slt i64 %130, 0
  br i1 %cmp547, label %cond.true.549, label %cond.false.581

cond.true.549:                                    ; preds = %cond.false.546
  %131 = load i64, i64* %size180, align 8
  %132 = load i64, i64* %size180, align 8
  %add550 = add nsw i64 0, %132
  %mul551 = mul nsw i64 0, %add550
  %sub552 = sub nsw i64 %mul551, 1
  %cmp553 = icmp slt i64 %sub552, 0
  br i1 %cmp553, label %cond.true.555, label %cond.false.572

cond.true.555:                                    ; preds = %cond.true.549
  %133 = load i64, i64* %size180, align 8
  %add556 = add nsw i64 0, %133
  %mul557 = mul nsw i64 0, %add556
  %add558 = add nsw i64 %mul557, 0
  %neg559 = xor i64 %add558, -1
  %cmp560 = icmp eq i64 %neg559, -1
  %conv561 = zext i1 %cmp560 to i32
  %sub562 = sub nsw i32 0, %conv561
  %conv563 = sext i32 %sub562 to i64
  %134 = load i64, i64* %size180, align 8
  %add564 = add nsw i64 0, %134
  %mul565 = mul nsw i64 0, %add564
  %add566 = add nsw i64 %mul565, 1
  %shl567 = shl i64 %add566, 62
  %sub568 = sub nsw i64 %shl567, 1
  %mul569 = mul nsw i64 %sub568, 2
  %add570 = add nsw i64 %mul569, 1
  %sub571 = sub nsw i64 %conv563, %add570
  br label %cond.end.576

cond.false.572:                                   ; preds = %cond.true.549
  %135 = load i64, i64* %size180, align 8
  %add573 = add nsw i64 0, %135
  %mul574 = mul nsw i64 0, %add573
  %add575 = add nsw i64 %mul574, 0
  br label %cond.end.576

cond.end.576:                                     ; preds = %cond.false.572, %cond.true.555
  %cond577 = phi i64 [ %sub571, %cond.true.555 ], [ %add575, %cond.false.572 ]
  %div578 = sdiv i64 %cond577, 5
  %cmp579 = icmp slt i64 %131, %div578
  br i1 %cmp579, label %cond.true.618, label %lor.lhs.false.604

cond.false.581:                                   ; preds = %cond.false.546
  %136 = load i64, i64* %size180, align 8
  %add582 = add nsw i64 0, %136
  %mul583 = mul nsw i64 0, %add582
  %sub584 = sub nsw i64 %mul583, 1
  %cmp585 = icmp slt i64 %sub584, 0
  br i1 %cmp585, label %cond.true.587, label %cond.false.595

cond.true.587:                                    ; preds = %cond.false.581
  %137 = load i64, i64* %size180, align 8
  %add588 = add nsw i64 0, %137
  %mul589 = mul nsw i64 0, %add588
  %add590 = add nsw i64 %mul589, 1
  %shl591 = shl i64 %add590, 62
  %sub592 = sub nsw i64 %shl591, 1
  %mul593 = mul nsw i64 %sub592, 2
  %add594 = add nsw i64 %mul593, 1
  br label %cond.end.599

cond.false.595:                                   ; preds = %cond.false.581
  %138 = load i64, i64* %size180, align 8
  %add596 = add nsw i64 0, %138
  %mul597 = mul nsw i64 0, %add596
  %sub598 = sub nsw i64 %mul597, 1
  br label %cond.end.599

cond.end.599:                                     ; preds = %cond.false.595, %cond.true.587
  %cond600 = phi i64 [ %add594, %cond.true.587 ], [ %sub598, %cond.false.595 ]
  %div601 = sdiv i64 %cond600, 5
  %139 = load i64, i64* %size180, align 8
  %cmp602 = icmp slt i64 %div601, %139
  br i1 %cmp602, label %cond.true.618, label %lor.lhs.false.604

lor.lhs.false.604:                                ; preds = %cond.end.599, %cond.end.576, %cond.true.545, %cond.end.539, %cond.true.511, %cond.end.505
  %140 = load i64, i64* %size180, align 8
  %mul605 = mul nsw i64 %140, 5
  %mul606 = mul nsw i64 0, %mul605
  %sub607 = sub nsw i64 %mul606, 1
  %cmp608 = icmp slt i64 %sub607, 0
  br i1 %cmp608, label %land.lhs.true.610, label %lor.lhs.false.614

land.lhs.true.610:                                ; preds = %lor.lhs.false.604
  %141 = load i64, i64* %size180, align 8
  %mul611 = mul nsw i64 %141, 5
  %cmp612 = icmp slt i64 %mul611, -128
  br i1 %cmp612, label %cond.true.618, label %lor.lhs.false.614

lor.lhs.false.614:                                ; preds = %land.lhs.true.610, %lor.lhs.false.604
  %142 = load i64, i64* %size180, align 8
  %mul615 = mul nsw i64 %142, 5
  %cmp616 = icmp slt i64 127, %mul615
  br i1 %cmp616, label %cond.true.618, label %cond.false.641

cond.true.618:                                    ; preds = %lor.lhs.false.614, %land.lhs.true.610, %cond.end.599, %cond.end.576, %cond.true.545, %cond.end.539, %cond.true.511, %cond.end.505, %land.lhs.true.480
  %143 = load i64, i64* %size180, align 8
  %conv619 = trunc i64 %143 to i8
  %conv620 = zext i8 %conv619 to i32
  %mul621 = mul nsw i32 %conv620, 5
  %cmp622 = icmp sle i32 %mul621, 127
  br i1 %cmp622, label %cond.true.624, label %cond.false.630

cond.true.624:                                    ; preds = %cond.true.618
  %144 = load i64, i64* %size180, align 8
  %conv625 = trunc i64 %144 to i8
  %conv626 = zext i8 %conv625 to i32
  %mul627 = mul nsw i32 %conv626, 5
  %conv628 = trunc i32 %mul627 to i8
  %conv629 = sext i8 %conv628 to i32
  br label %cond.end.638

cond.false.630:                                   ; preds = %cond.true.618
  %145 = load i64, i64* %size180, align 8
  %conv631 = trunc i64 %145 to i8
  %conv632 = zext i8 %conv631 to i32
  %mul633 = mul nsw i32 %conv632, 5
  %sub634 = sub nsw i32 %mul633, -128
  %conv635 = trunc i32 %sub634 to i8
  %conv636 = sext i8 %conv635 to i32
  %add637 = add nsw i32 %conv636, -128
  br label %cond.end.638

cond.end.638:                                     ; preds = %cond.false.630, %cond.true.624
  %cond639 = phi i32 [ %conv629, %cond.true.624 ], [ %add637, %cond.false.630 ]
  %conv640 = sext i32 %cond639 to i64
  store i64 %conv640, i64* %o_size, align 8
  br i1 true, label %if.then.2353, label %if.end.2354

cond.false.641:                                   ; preds = %lor.lhs.false.614
  %146 = load i64, i64* %size180, align 8
  %conv642 = trunc i64 %146 to i8
  %conv643 = zext i8 %conv642 to i32
  %mul644 = mul nsw i32 %conv643, 5
  %cmp645 = icmp sle i32 %mul644, 127
  br i1 %cmp645, label %cond.true.647, label %cond.false.653

cond.true.647:                                    ; preds = %cond.false.641
  %147 = load i64, i64* %size180, align 8
  %conv648 = trunc i64 %147 to i8
  %conv649 = zext i8 %conv648 to i32
  %mul650 = mul nsw i32 %conv649, 5
  %conv651 = trunc i32 %mul650 to i8
  %conv652 = sext i8 %conv651 to i32
  br label %cond.end.661

cond.false.653:                                   ; preds = %cond.false.641
  %148 = load i64, i64* %size180, align 8
  %conv654 = trunc i64 %148 to i8
  %conv655 = zext i8 %conv654 to i32
  %mul656 = mul nsw i32 %conv655, 5
  %sub657 = sub nsw i32 %mul656, -128
  %conv658 = trunc i32 %sub657 to i8
  %conv659 = sext i8 %conv658 to i32
  %add660 = add nsw i32 %conv659, -128
  br label %cond.end.661

cond.end.661:                                     ; preds = %cond.false.653, %cond.true.647
  %cond662 = phi i32 [ %conv652, %cond.true.647 ], [ %add660, %cond.false.653 ]
  %conv663 = sext i32 %cond662 to i64
  store i64 %conv663, i64* %o_size, align 8
  br i1 false, label %if.then.2353, label %if.end.2354

cond.false.664:                                   ; preds = %if.else.178
  br i1 false, label %cond.true.665, label %cond.false.1149

cond.true.665:                                    ; preds = %cond.false.664
  br i1 false, label %cond.true.666, label %cond.false.934

cond.true.666:                                    ; preds = %cond.true.665
  %149 = load i64, i64* %size180, align 8
  %conv667 = trunc i64 %149 to i16
  %conv668 = sext i16 %conv667 to i32
  %add669 = add nsw i32 0, %conv668
  %mul670 = mul nsw i32 0, %add669
  %sub671 = sub nsw i32 %mul670, 1
  %cmp672 = icmp slt i32 %sub671, 0
  br i1 %cmp672, label %cond.true.674, label %cond.false.694

cond.true.674:                                    ; preds = %cond.true.666
  %150 = load i64, i64* %size180, align 8
  %conv675 = trunc i64 %150 to i16
  %conv676 = sext i16 %conv675 to i32
  %add677 = add nsw i32 0, %conv676
  %mul678 = mul nsw i32 0, %add677
  %add679 = add nsw i32 %mul678, 0
  %neg680 = xor i32 %add679, -1
  %cmp681 = icmp eq i32 %neg680, -1
  %conv682 = zext i1 %cmp681 to i32
  %sub683 = sub nsw i32 0, %conv682
  %151 = load i64, i64* %size180, align 8
  %conv684 = trunc i64 %151 to i16
  %conv685 = sext i16 %conv684 to i32
  %add686 = add nsw i32 0, %conv685
  %mul687 = mul nsw i32 0, %add686
  %add688 = add nsw i32 %mul687, 1
  %shl689 = shl i32 %add688, 30
  %sub690 = sub nsw i32 %shl689, 1
  %mul691 = mul nsw i32 %sub690, 2
  %add692 = add nsw i32 %mul691, 1
  %sub693 = sub nsw i32 %sub683, %add692
  br label %cond.end.700

cond.false.694:                                   ; preds = %cond.true.666
  %152 = load i64, i64* %size180, align 8
  %conv695 = trunc i64 %152 to i16
  %conv696 = sext i16 %conv695 to i32
  %add697 = add nsw i32 0, %conv696
  %mul698 = mul nsw i32 0, %add697
  %add699 = add nsw i32 %mul698, 0
  br label %cond.end.700

cond.end.700:                                     ; preds = %cond.false.694, %cond.true.674
  %cond701 = phi i32 [ %sub693, %cond.true.674 ], [ %add699, %cond.false.694 ]
  %cmp702 = icmp eq i32 %cond701, 0
  br i1 %cmp702, label %land.lhs.true.704, label %lor.lhs.false.709

land.lhs.true.704:                                ; preds = %cond.end.700
  %153 = load i64, i64* %size180, align 8
  %conv705 = trunc i64 %153 to i16
  %conv706 = sext i16 %conv705 to i32
  %cmp707 = icmp slt i32 %conv706, 0
  br i1 %cmp707, label %cond.true.888, label %lor.lhs.false.709

lor.lhs.false.709:                                ; preds = %land.lhs.true.704, %cond.end.700
  br i1 false, label %cond.true.710, label %cond.false.789

cond.true.710:                                    ; preds = %lor.lhs.false.709
  %154 = load i64, i64* %size180, align 8
  %conv711 = trunc i64 %154 to i16
  %conv712 = sext i16 %conv711 to i32
  %cmp713 = icmp slt i32 %conv712, 0
  br i1 %cmp713, label %cond.true.715, label %cond.false.746

cond.true.715:                                    ; preds = %cond.true.710
  %155 = load i64, i64* %size180, align 8
  %conv716 = trunc i64 %155 to i16
  %conv717 = sext i16 %conv716 to i32
  %156 = load i64, i64* %size180, align 8
  %conv718 = trunc i64 %156 to i16
  %conv719 = sext i16 %conv718 to i32
  %add720 = add nsw i32 0, %conv719
  %mul721 = mul nsw i32 0, %add720
  %sub722 = sub nsw i32 %mul721, 1
  %cmp723 = icmp slt i32 %sub722, 0
  br i1 %cmp723, label %cond.true.725, label %cond.false.735

cond.true.725:                                    ; preds = %cond.true.715
  %157 = load i64, i64* %size180, align 8
  %conv726 = trunc i64 %157 to i16
  %conv727 = sext i16 %conv726 to i32
  %add728 = add nsw i32 0, %conv727
  %mul729 = mul nsw i32 0, %add728
  %add730 = add nsw i32 %mul729, 1
  %shl731 = shl i32 %add730, 30
  %sub732 = sub nsw i32 %shl731, 1
  %mul733 = mul nsw i32 %sub732, 2
  %add734 = add nsw i32 %mul733, 1
  br label %cond.end.741

cond.false.735:                                   ; preds = %cond.true.715
  %158 = load i64, i64* %size180, align 8
  %conv736 = trunc i64 %158 to i16
  %conv737 = sext i16 %conv736 to i32
  %add738 = add nsw i32 0, %conv737
  %mul739 = mul nsw i32 0, %add738
  %sub740 = sub nsw i32 %mul739, 1
  br label %cond.end.741

cond.end.741:                                     ; preds = %cond.false.735, %cond.true.725
  %cond742 = phi i32 [ %add734, %cond.true.725 ], [ %sub740, %cond.false.735 ]
  %div743 = sdiv i32 %cond742, 5
  %cmp744 = icmp slt i32 %conv717, %div743
  br i1 %cmp744, label %cond.true.888, label %lor.lhs.false.868

cond.false.746:                                   ; preds = %cond.true.710
  br i1 false, label %cond.true.747, label %cond.false.748

cond.true.747:                                    ; preds = %cond.false.746
  br i1 false, label %cond.true.888, label %lor.lhs.false.868

cond.false.748:                                   ; preds = %cond.false.746
  %159 = load i64, i64* %size180, align 8
  %conv749 = trunc i64 %159 to i16
  %conv750 = sext i16 %conv749 to i32
  %add751 = add nsw i32 0, %conv750
  %mul752 = mul nsw i32 0, %add751
  %sub753 = sub nsw i32 %mul752, 1
  %cmp754 = icmp slt i32 %sub753, 0
  br i1 %cmp754, label %cond.true.756, label %cond.false.776

cond.true.756:                                    ; preds = %cond.false.748
  %160 = load i64, i64* %size180, align 8
  %conv757 = trunc i64 %160 to i16
  %conv758 = sext i16 %conv757 to i32
  %add759 = add nsw i32 0, %conv758
  %mul760 = mul nsw i32 0, %add759
  %add761 = add nsw i32 %mul760, 0
  %neg762 = xor i32 %add761, -1
  %cmp763 = icmp eq i32 %neg762, -1
  %conv764 = zext i1 %cmp763 to i32
  %sub765 = sub nsw i32 0, %conv764
  %161 = load i64, i64* %size180, align 8
  %conv766 = trunc i64 %161 to i16
  %conv767 = sext i16 %conv766 to i32
  %add768 = add nsw i32 0, %conv767
  %mul769 = mul nsw i32 0, %add768
  %add770 = add nsw i32 %mul769, 1
  %shl771 = shl i32 %add770, 30
  %sub772 = sub nsw i32 %shl771, 1
  %mul773 = mul nsw i32 %sub772, 2
  %add774 = add nsw i32 %mul773, 1
  %sub775 = sub nsw i32 %sub765, %add774
  br label %cond.end.782

cond.false.776:                                   ; preds = %cond.false.748
  %162 = load i64, i64* %size180, align 8
  %conv777 = trunc i64 %162 to i16
  %conv778 = sext i16 %conv777 to i32
  %add779 = add nsw i32 0, %conv778
  %mul780 = mul nsw i32 0, %add779
  %add781 = add nsw i32 %mul780, 0
  br label %cond.end.782

cond.end.782:                                     ; preds = %cond.false.776, %cond.true.756
  %cond783 = phi i32 [ %sub775, %cond.true.756 ], [ %add781, %cond.false.776 ]
  %div784 = sdiv i32 %cond783, 5
  %163 = load i64, i64* %size180, align 8
  %conv785 = trunc i64 %163 to i16
  %conv786 = sext i16 %conv785 to i32
  %cmp787 = icmp slt i32 %div784, %conv786
  br i1 %cmp787, label %cond.true.888, label %lor.lhs.false.868

cond.false.789:                                   ; preds = %lor.lhs.false.709
  br i1 false, label %cond.true.790, label %cond.false.791

cond.true.790:                                    ; preds = %cond.false.789
  br i1 false, label %cond.true.888, label %lor.lhs.false.868

cond.false.791:                                   ; preds = %cond.false.789
  %164 = load i64, i64* %size180, align 8
  %conv792 = trunc i64 %164 to i16
  %conv793 = sext i16 %conv792 to i32
  %cmp794 = icmp slt i32 %conv793, 0
  br i1 %cmp794, label %cond.true.796, label %cond.false.837

cond.true.796:                                    ; preds = %cond.false.791
  %165 = load i64, i64* %size180, align 8
  %conv797 = trunc i64 %165 to i16
  %conv798 = sext i16 %conv797 to i32
  %166 = load i64, i64* %size180, align 8
  %conv799 = trunc i64 %166 to i16
  %conv800 = sext i16 %conv799 to i32
  %add801 = add nsw i32 0, %conv800
  %mul802 = mul nsw i32 0, %add801
  %sub803 = sub nsw i32 %mul802, 1
  %cmp804 = icmp slt i32 %sub803, 0
  br i1 %cmp804, label %cond.true.806, label %cond.false.826

cond.true.806:                                    ; preds = %cond.true.796
  %167 = load i64, i64* %size180, align 8
  %conv807 = trunc i64 %167 to i16
  %conv808 = sext i16 %conv807 to i32
  %add809 = add nsw i32 0, %conv808
  %mul810 = mul nsw i32 0, %add809
  %add811 = add nsw i32 %mul810, 0
  %neg812 = xor i32 %add811, -1
  %cmp813 = icmp eq i32 %neg812, -1
  %conv814 = zext i1 %cmp813 to i32
  %sub815 = sub nsw i32 0, %conv814
  %168 = load i64, i64* %size180, align 8
  %conv816 = trunc i64 %168 to i16
  %conv817 = sext i16 %conv816 to i32
  %add818 = add nsw i32 0, %conv817
  %mul819 = mul nsw i32 0, %add818
  %add820 = add nsw i32 %mul819, 1
  %shl821 = shl i32 %add820, 30
  %sub822 = sub nsw i32 %shl821, 1
  %mul823 = mul nsw i32 %sub822, 2
  %add824 = add nsw i32 %mul823, 1
  %sub825 = sub nsw i32 %sub815, %add824
  br label %cond.end.832

cond.false.826:                                   ; preds = %cond.true.796
  %169 = load i64, i64* %size180, align 8
  %conv827 = trunc i64 %169 to i16
  %conv828 = sext i16 %conv827 to i32
  %add829 = add nsw i32 0, %conv828
  %mul830 = mul nsw i32 0, %add829
  %add831 = add nsw i32 %mul830, 0
  br label %cond.end.832

cond.end.832:                                     ; preds = %cond.false.826, %cond.true.806
  %cond833 = phi i32 [ %sub825, %cond.true.806 ], [ %add831, %cond.false.826 ]
  %div834 = sdiv i32 %cond833, 5
  %cmp835 = icmp slt i32 %conv798, %div834
  br i1 %cmp835, label %cond.true.888, label %lor.lhs.false.868

cond.false.837:                                   ; preds = %cond.false.791
  %170 = load i64, i64* %size180, align 8
  %conv838 = trunc i64 %170 to i16
  %conv839 = sext i16 %conv838 to i32
  %add840 = add nsw i32 0, %conv839
  %mul841 = mul nsw i32 0, %add840
  %sub842 = sub nsw i32 %mul841, 1
  %cmp843 = icmp slt i32 %sub842, 0
  br i1 %cmp843, label %cond.true.845, label %cond.false.855

cond.true.845:                                    ; preds = %cond.false.837
  %171 = load i64, i64* %size180, align 8
  %conv846 = trunc i64 %171 to i16
  %conv847 = sext i16 %conv846 to i32
  %add848 = add nsw i32 0, %conv847
  %mul849 = mul nsw i32 0, %add848
  %add850 = add nsw i32 %mul849, 1
  %shl851 = shl i32 %add850, 30
  %sub852 = sub nsw i32 %shl851, 1
  %mul853 = mul nsw i32 %sub852, 2
  %add854 = add nsw i32 %mul853, 1
  br label %cond.end.861

cond.false.855:                                   ; preds = %cond.false.837
  %172 = load i64, i64* %size180, align 8
  %conv856 = trunc i64 %172 to i16
  %conv857 = sext i16 %conv856 to i32
  %add858 = add nsw i32 0, %conv857
  %mul859 = mul nsw i32 0, %add858
  %sub860 = sub nsw i32 %mul859, 1
  br label %cond.end.861

cond.end.861:                                     ; preds = %cond.false.855, %cond.true.845
  %cond862 = phi i32 [ %add854, %cond.true.845 ], [ %sub860, %cond.false.855 ]
  %div863 = sdiv i32 %cond862, 5
  %173 = load i64, i64* %size180, align 8
  %conv864 = trunc i64 %173 to i16
  %conv865 = sext i16 %conv864 to i32
  %cmp866 = icmp slt i32 %div863, %conv865
  br i1 %cmp866, label %cond.true.888, label %lor.lhs.false.868

lor.lhs.false.868:                                ; preds = %cond.end.861, %cond.end.832, %cond.true.790, %cond.end.782, %cond.true.747, %cond.end.741
  %174 = load i64, i64* %size180, align 8
  %conv869 = trunc i64 %174 to i16
  %conv870 = sext i16 %conv869 to i32
  %mul871 = mul nsw i32 %conv870, 5
  %mul872 = mul nsw i32 0, %mul871
  %sub873 = sub nsw i32 %mul872, 1
  %cmp874 = icmp slt i32 %sub873, 0
  br i1 %cmp874, label %land.lhs.true.876, label %lor.lhs.false.882

land.lhs.true.876:                                ; preds = %lor.lhs.false.868
  %175 = load i64, i64* %size180, align 8
  %conv877 = trunc i64 %175 to i16
  %conv878 = sext i16 %conv877 to i32
  %mul879 = mul nsw i32 %conv878, 5
  %cmp880 = icmp slt i32 %mul879, -32768
  br i1 %cmp880, label %cond.true.888, label %lor.lhs.false.882

lor.lhs.false.882:                                ; preds = %land.lhs.true.876, %lor.lhs.false.868
  %176 = load i64, i64* %size180, align 8
  %conv883 = trunc i64 %176 to i16
  %conv884 = sext i16 %conv883 to i32
  %mul885 = mul nsw i32 %conv884, 5
  %cmp886 = icmp slt i32 32767, %mul885
  br i1 %cmp886, label %cond.true.888, label %cond.false.911

cond.true.888:                                    ; preds = %lor.lhs.false.882, %land.lhs.true.876, %cond.end.861, %cond.end.832, %cond.true.790, %cond.end.782, %cond.true.747, %cond.end.741, %land.lhs.true.704
  %177 = load i64, i64* %size180, align 8
  %conv889 = trunc i64 %177 to i16
  %conv890 = zext i16 %conv889 to i32
  %mul891 = mul nsw i32 %conv890, 5
  %cmp892 = icmp sle i32 %mul891, 32767
  br i1 %cmp892, label %cond.true.894, label %cond.false.900

cond.true.894:                                    ; preds = %cond.true.888
  %178 = load i64, i64* %size180, align 8
  %conv895 = trunc i64 %178 to i16
  %conv896 = zext i16 %conv895 to i32
  %mul897 = mul nsw i32 %conv896, 5
  %conv898 = trunc i32 %mul897 to i16
  %conv899 = sext i16 %conv898 to i32
  br label %cond.end.908

cond.false.900:                                   ; preds = %cond.true.888
  %179 = load i64, i64* %size180, align 8
  %conv901 = trunc i64 %179 to i16
  %conv902 = zext i16 %conv901 to i32
  %mul903 = mul nsw i32 %conv902, 5
  %sub904 = sub nsw i32 %mul903, -32768
  %conv905 = trunc i32 %sub904 to i16
  %conv906 = sext i16 %conv905 to i32
  %add907 = add nsw i32 %conv906, -32768
  br label %cond.end.908

cond.end.908:                                     ; preds = %cond.false.900, %cond.true.894
  %cond909 = phi i32 [ %conv899, %cond.true.894 ], [ %add907, %cond.false.900 ]
  %conv910 = sext i32 %cond909 to i64
  store i64 %conv910, i64* %o_size, align 8
  br i1 true, label %if.then.2353, label %if.end.2354

cond.false.911:                                   ; preds = %lor.lhs.false.882
  %180 = load i64, i64* %size180, align 8
  %conv912 = trunc i64 %180 to i16
  %conv913 = zext i16 %conv912 to i32
  %mul914 = mul nsw i32 %conv913, 5
  %cmp915 = icmp sle i32 %mul914, 32767
  br i1 %cmp915, label %cond.true.917, label %cond.false.923

cond.true.917:                                    ; preds = %cond.false.911
  %181 = load i64, i64* %size180, align 8
  %conv918 = trunc i64 %181 to i16
  %conv919 = zext i16 %conv918 to i32
  %mul920 = mul nsw i32 %conv919, 5
  %conv921 = trunc i32 %mul920 to i16
  %conv922 = sext i16 %conv921 to i32
  br label %cond.end.931

cond.false.923:                                   ; preds = %cond.false.911
  %182 = load i64, i64* %size180, align 8
  %conv924 = trunc i64 %182 to i16
  %conv925 = zext i16 %conv924 to i32
  %mul926 = mul nsw i32 %conv925, 5
  %sub927 = sub nsw i32 %mul926, -32768
  %conv928 = trunc i32 %sub927 to i16
  %conv929 = sext i16 %conv928 to i32
  %add930 = add nsw i32 %conv929, -32768
  br label %cond.end.931

cond.end.931:                                     ; preds = %cond.false.923, %cond.true.917
  %cond932 = phi i32 [ %conv922, %cond.true.917 ], [ %add930, %cond.false.923 ]
  %conv933 = sext i32 %cond932 to i64
  store i64 %conv933, i64* %o_size, align 8
  br i1 false, label %if.then.2353, label %if.end.2354

cond.false.934:                                   ; preds = %cond.true.665
  %183 = load i64, i64* %size180, align 8
  %add935 = add nsw i64 0, %183
  %mul936 = mul nsw i64 0, %add935
  %sub937 = sub nsw i64 %mul936, 1
  %cmp938 = icmp slt i64 %sub937, 0
  br i1 %cmp938, label %cond.true.940, label %cond.false.957

cond.true.940:                                    ; preds = %cond.false.934
  %184 = load i64, i64* %size180, align 8
  %add941 = add nsw i64 0, %184
  %mul942 = mul nsw i64 0, %add941
  %add943 = add nsw i64 %mul942, 0
  %neg944 = xor i64 %add943, -1
  %cmp945 = icmp eq i64 %neg944, -1
  %conv946 = zext i1 %cmp945 to i32
  %sub947 = sub nsw i32 0, %conv946
  %conv948 = sext i32 %sub947 to i64
  %185 = load i64, i64* %size180, align 8
  %add949 = add nsw i64 0, %185
  %mul950 = mul nsw i64 0, %add949
  %add951 = add nsw i64 %mul950, 1
  %shl952 = shl i64 %add951, 62
  %sub953 = sub nsw i64 %shl952, 1
  %mul954 = mul nsw i64 %sub953, 2
  %add955 = add nsw i64 %mul954, 1
  %sub956 = sub nsw i64 %conv948, %add955
  br label %cond.end.961

cond.false.957:                                   ; preds = %cond.false.934
  %186 = load i64, i64* %size180, align 8
  %add958 = add nsw i64 0, %186
  %mul959 = mul nsw i64 0, %add958
  %add960 = add nsw i64 %mul959, 0
  br label %cond.end.961

cond.end.961:                                     ; preds = %cond.false.957, %cond.true.940
  %cond962 = phi i64 [ %sub956, %cond.true.940 ], [ %add960, %cond.false.957 ]
  %cmp963 = icmp eq i64 %cond962, 0
  br i1 %cmp963, label %land.lhs.true.965, label %lor.lhs.false.968

land.lhs.true.965:                                ; preds = %cond.end.961
  %187 = load i64, i64* %size180, align 8
  %cmp966 = icmp slt i64 %187, 0
  br i1 %cmp966, label %cond.true.1103, label %lor.lhs.false.968

lor.lhs.false.968:                                ; preds = %land.lhs.true.965, %cond.end.961
  br i1 false, label %cond.true.969, label %cond.false.1029

cond.true.969:                                    ; preds = %lor.lhs.false.968
  %188 = load i64, i64* %size180, align 8
  %cmp970 = icmp slt i64 %188, 0
  br i1 %cmp970, label %cond.true.972, label %cond.false.995

cond.true.972:                                    ; preds = %cond.true.969
  %189 = load i64, i64* %size180, align 8
  %190 = load i64, i64* %size180, align 8
  %add973 = add nsw i64 0, %190
  %mul974 = mul nsw i64 0, %add973
  %sub975 = sub nsw i64 %mul974, 1
  %cmp976 = icmp slt i64 %sub975, 0
  br i1 %cmp976, label %cond.true.978, label %cond.false.986

cond.true.978:                                    ; preds = %cond.true.972
  %191 = load i64, i64* %size180, align 8
  %add979 = add nsw i64 0, %191
  %mul980 = mul nsw i64 0, %add979
  %add981 = add nsw i64 %mul980, 1
  %shl982 = shl i64 %add981, 62
  %sub983 = sub nsw i64 %shl982, 1
  %mul984 = mul nsw i64 %sub983, 2
  %add985 = add nsw i64 %mul984, 1
  br label %cond.end.990

cond.false.986:                                   ; preds = %cond.true.972
  %192 = load i64, i64* %size180, align 8
  %add987 = add nsw i64 0, %192
  %mul988 = mul nsw i64 0, %add987
  %sub989 = sub nsw i64 %mul988, 1
  br label %cond.end.990

cond.end.990:                                     ; preds = %cond.false.986, %cond.true.978
  %cond991 = phi i64 [ %add985, %cond.true.978 ], [ %sub989, %cond.false.986 ]
  %div992 = sdiv i64 %cond991, 5
  %cmp993 = icmp slt i64 %189, %div992
  br i1 %cmp993, label %cond.true.1103, label %lor.lhs.false.1089

cond.false.995:                                   ; preds = %cond.true.969
  br i1 false, label %cond.true.996, label %cond.false.997

cond.true.996:                                    ; preds = %cond.false.995
  br i1 false, label %cond.true.1103, label %lor.lhs.false.1089

cond.false.997:                                   ; preds = %cond.false.995
  %193 = load i64, i64* %size180, align 8
  %add998 = add nsw i64 0, %193
  %mul999 = mul nsw i64 0, %add998
  %sub1000 = sub nsw i64 %mul999, 1
  %cmp1001 = icmp slt i64 %sub1000, 0
  br i1 %cmp1001, label %cond.true.1003, label %cond.false.1020

cond.true.1003:                                   ; preds = %cond.false.997
  %194 = load i64, i64* %size180, align 8
  %add1004 = add nsw i64 0, %194
  %mul1005 = mul nsw i64 0, %add1004
  %add1006 = add nsw i64 %mul1005, 0
  %neg1007 = xor i64 %add1006, -1
  %cmp1008 = icmp eq i64 %neg1007, -1
  %conv1009 = zext i1 %cmp1008 to i32
  %sub1010 = sub nsw i32 0, %conv1009
  %conv1011 = sext i32 %sub1010 to i64
  %195 = load i64, i64* %size180, align 8
  %add1012 = add nsw i64 0, %195
  %mul1013 = mul nsw i64 0, %add1012
  %add1014 = add nsw i64 %mul1013, 1
  %shl1015 = shl i64 %add1014, 62
  %sub1016 = sub nsw i64 %shl1015, 1
  %mul1017 = mul nsw i64 %sub1016, 2
  %add1018 = add nsw i64 %mul1017, 1
  %sub1019 = sub nsw i64 %conv1011, %add1018
  br label %cond.end.1024

cond.false.1020:                                  ; preds = %cond.false.997
  %196 = load i64, i64* %size180, align 8
  %add1021 = add nsw i64 0, %196
  %mul1022 = mul nsw i64 0, %add1021
  %add1023 = add nsw i64 %mul1022, 0
  br label %cond.end.1024

cond.end.1024:                                    ; preds = %cond.false.1020, %cond.true.1003
  %cond1025 = phi i64 [ %sub1019, %cond.true.1003 ], [ %add1023, %cond.false.1020 ]
  %div1026 = sdiv i64 %cond1025, 5
  %197 = load i64, i64* %size180, align 8
  %cmp1027 = icmp slt i64 %div1026, %197
  br i1 %cmp1027, label %cond.true.1103, label %lor.lhs.false.1089

cond.false.1029:                                  ; preds = %lor.lhs.false.968
  br i1 false, label %cond.true.1030, label %cond.false.1031

cond.true.1030:                                   ; preds = %cond.false.1029
  br i1 false, label %cond.true.1103, label %lor.lhs.false.1089

cond.false.1031:                                  ; preds = %cond.false.1029
  %198 = load i64, i64* %size180, align 8
  %cmp1032 = icmp slt i64 %198, 0
  br i1 %cmp1032, label %cond.true.1034, label %cond.false.1066

cond.true.1034:                                   ; preds = %cond.false.1031
  %199 = load i64, i64* %size180, align 8
  %200 = load i64, i64* %size180, align 8
  %add1035 = add nsw i64 0, %200
  %mul1036 = mul nsw i64 0, %add1035
  %sub1037 = sub nsw i64 %mul1036, 1
  %cmp1038 = icmp slt i64 %sub1037, 0
  br i1 %cmp1038, label %cond.true.1040, label %cond.false.1057

cond.true.1040:                                   ; preds = %cond.true.1034
  %201 = load i64, i64* %size180, align 8
  %add1041 = add nsw i64 0, %201
  %mul1042 = mul nsw i64 0, %add1041
  %add1043 = add nsw i64 %mul1042, 0
  %neg1044 = xor i64 %add1043, -1
  %cmp1045 = icmp eq i64 %neg1044, -1
  %conv1046 = zext i1 %cmp1045 to i32
  %sub1047 = sub nsw i32 0, %conv1046
  %conv1048 = sext i32 %sub1047 to i64
  %202 = load i64, i64* %size180, align 8
  %add1049 = add nsw i64 0, %202
  %mul1050 = mul nsw i64 0, %add1049
  %add1051 = add nsw i64 %mul1050, 1
  %shl1052 = shl i64 %add1051, 62
  %sub1053 = sub nsw i64 %shl1052, 1
  %mul1054 = mul nsw i64 %sub1053, 2
  %add1055 = add nsw i64 %mul1054, 1
  %sub1056 = sub nsw i64 %conv1048, %add1055
  br label %cond.end.1061

cond.false.1057:                                  ; preds = %cond.true.1034
  %203 = load i64, i64* %size180, align 8
  %add1058 = add nsw i64 0, %203
  %mul1059 = mul nsw i64 0, %add1058
  %add1060 = add nsw i64 %mul1059, 0
  br label %cond.end.1061

cond.end.1061:                                    ; preds = %cond.false.1057, %cond.true.1040
  %cond1062 = phi i64 [ %sub1056, %cond.true.1040 ], [ %add1060, %cond.false.1057 ]
  %div1063 = sdiv i64 %cond1062, 5
  %cmp1064 = icmp slt i64 %199, %div1063
  br i1 %cmp1064, label %cond.true.1103, label %lor.lhs.false.1089

cond.false.1066:                                  ; preds = %cond.false.1031
  %204 = load i64, i64* %size180, align 8
  %add1067 = add nsw i64 0, %204
  %mul1068 = mul nsw i64 0, %add1067
  %sub1069 = sub nsw i64 %mul1068, 1
  %cmp1070 = icmp slt i64 %sub1069, 0
  br i1 %cmp1070, label %cond.true.1072, label %cond.false.1080

cond.true.1072:                                   ; preds = %cond.false.1066
  %205 = load i64, i64* %size180, align 8
  %add1073 = add nsw i64 0, %205
  %mul1074 = mul nsw i64 0, %add1073
  %add1075 = add nsw i64 %mul1074, 1
  %shl1076 = shl i64 %add1075, 62
  %sub1077 = sub nsw i64 %shl1076, 1
  %mul1078 = mul nsw i64 %sub1077, 2
  %add1079 = add nsw i64 %mul1078, 1
  br label %cond.end.1084

cond.false.1080:                                  ; preds = %cond.false.1066
  %206 = load i64, i64* %size180, align 8
  %add1081 = add nsw i64 0, %206
  %mul1082 = mul nsw i64 0, %add1081
  %sub1083 = sub nsw i64 %mul1082, 1
  br label %cond.end.1084

cond.end.1084:                                    ; preds = %cond.false.1080, %cond.true.1072
  %cond1085 = phi i64 [ %add1079, %cond.true.1072 ], [ %sub1083, %cond.false.1080 ]
  %div1086 = sdiv i64 %cond1085, 5
  %207 = load i64, i64* %size180, align 8
  %cmp1087 = icmp slt i64 %div1086, %207
  br i1 %cmp1087, label %cond.true.1103, label %lor.lhs.false.1089

lor.lhs.false.1089:                               ; preds = %cond.end.1084, %cond.end.1061, %cond.true.1030, %cond.end.1024, %cond.true.996, %cond.end.990
  %208 = load i64, i64* %size180, align 8
  %mul1090 = mul nsw i64 %208, 5
  %mul1091 = mul nsw i64 0, %mul1090
  %sub1092 = sub nsw i64 %mul1091, 1
  %cmp1093 = icmp slt i64 %sub1092, 0
  br i1 %cmp1093, label %land.lhs.true.1095, label %lor.lhs.false.1099

land.lhs.true.1095:                               ; preds = %lor.lhs.false.1089
  %209 = load i64, i64* %size180, align 8
  %mul1096 = mul nsw i64 %209, 5
  %cmp1097 = icmp slt i64 %mul1096, -32768
  br i1 %cmp1097, label %cond.true.1103, label %lor.lhs.false.1099

lor.lhs.false.1099:                               ; preds = %land.lhs.true.1095, %lor.lhs.false.1089
  %210 = load i64, i64* %size180, align 8
  %mul1100 = mul nsw i64 %210, 5
  %cmp1101 = icmp slt i64 32767, %mul1100
  br i1 %cmp1101, label %cond.true.1103, label %cond.false.1126

cond.true.1103:                                   ; preds = %lor.lhs.false.1099, %land.lhs.true.1095, %cond.end.1084, %cond.end.1061, %cond.true.1030, %cond.end.1024, %cond.true.996, %cond.end.990, %land.lhs.true.965
  %211 = load i64, i64* %size180, align 8
  %conv1104 = trunc i64 %211 to i16
  %conv1105 = zext i16 %conv1104 to i32
  %mul1106 = mul nsw i32 %conv1105, 5
  %cmp1107 = icmp sle i32 %mul1106, 32767
  br i1 %cmp1107, label %cond.true.1109, label %cond.false.1115

cond.true.1109:                                   ; preds = %cond.true.1103
  %212 = load i64, i64* %size180, align 8
  %conv1110 = trunc i64 %212 to i16
  %conv1111 = zext i16 %conv1110 to i32
  %mul1112 = mul nsw i32 %conv1111, 5
  %conv1113 = trunc i32 %mul1112 to i16
  %conv1114 = sext i16 %conv1113 to i32
  br label %cond.end.1123

cond.false.1115:                                  ; preds = %cond.true.1103
  %213 = load i64, i64* %size180, align 8
  %conv1116 = trunc i64 %213 to i16
  %conv1117 = zext i16 %conv1116 to i32
  %mul1118 = mul nsw i32 %conv1117, 5
  %sub1119 = sub nsw i32 %mul1118, -32768
  %conv1120 = trunc i32 %sub1119 to i16
  %conv1121 = sext i16 %conv1120 to i32
  %add1122 = add nsw i32 %conv1121, -32768
  br label %cond.end.1123

cond.end.1123:                                    ; preds = %cond.false.1115, %cond.true.1109
  %cond1124 = phi i32 [ %conv1114, %cond.true.1109 ], [ %add1122, %cond.false.1115 ]
  %conv1125 = sext i32 %cond1124 to i64
  store i64 %conv1125, i64* %o_size, align 8
  br i1 true, label %if.then.2353, label %if.end.2354

cond.false.1126:                                  ; preds = %lor.lhs.false.1099
  %214 = load i64, i64* %size180, align 8
  %conv1127 = trunc i64 %214 to i16
  %conv1128 = zext i16 %conv1127 to i32
  %mul1129 = mul nsw i32 %conv1128, 5
  %cmp1130 = icmp sle i32 %mul1129, 32767
  br i1 %cmp1130, label %cond.true.1132, label %cond.false.1138

cond.true.1132:                                   ; preds = %cond.false.1126
  %215 = load i64, i64* %size180, align 8
  %conv1133 = trunc i64 %215 to i16
  %conv1134 = zext i16 %conv1133 to i32
  %mul1135 = mul nsw i32 %conv1134, 5
  %conv1136 = trunc i32 %mul1135 to i16
  %conv1137 = sext i16 %conv1136 to i32
  br label %cond.end.1146

cond.false.1138:                                  ; preds = %cond.false.1126
  %216 = load i64, i64* %size180, align 8
  %conv1139 = trunc i64 %216 to i16
  %conv1140 = zext i16 %conv1139 to i32
  %mul1141 = mul nsw i32 %conv1140, 5
  %sub1142 = sub nsw i32 %mul1141, -32768
  %conv1143 = trunc i32 %sub1142 to i16
  %conv1144 = sext i16 %conv1143 to i32
  %add1145 = add nsw i32 %conv1144, -32768
  br label %cond.end.1146

cond.end.1146:                                    ; preds = %cond.false.1138, %cond.true.1132
  %cond1147 = phi i32 [ %conv1137, %cond.true.1132 ], [ %add1145, %cond.false.1138 ]
  %conv1148 = sext i32 %cond1147 to i64
  store i64 %conv1148, i64* %o_size, align 8
  br i1 false, label %if.then.2353, label %if.end.2354

cond.false.1149:                                  ; preds = %cond.false.664
  br i1 false, label %cond.true.1150, label %cond.false.1578

cond.true.1150:                                   ; preds = %cond.false.1149
  br i1 false, label %cond.true.1151, label %cond.false.1377

cond.true.1151:                                   ; preds = %cond.true.1150
  %217 = load i64, i64* %size180, align 8
  %conv1152 = trunc i64 %217 to i32
  %add1153 = add nsw i32 0, %conv1152
  %mul1154 = mul nsw i32 0, %add1153
  %sub1155 = sub nsw i32 %mul1154, 1
  %cmp1156 = icmp slt i32 %sub1155, 0
  br i1 %cmp1156, label %cond.true.1158, label %cond.false.1176

cond.true.1158:                                   ; preds = %cond.true.1151
  %218 = load i64, i64* %size180, align 8
  %conv1159 = trunc i64 %218 to i32
  %add1160 = add nsw i32 0, %conv1159
  %mul1161 = mul nsw i32 0, %add1160
  %add1162 = add nsw i32 %mul1161, 0
  %neg1163 = xor i32 %add1162, -1
  %cmp1164 = icmp eq i32 %neg1163, -1
  %conv1165 = zext i1 %cmp1164 to i32
  %sub1166 = sub nsw i32 0, %conv1165
  %219 = load i64, i64* %size180, align 8
  %conv1167 = trunc i64 %219 to i32
  %add1168 = add nsw i32 0, %conv1167
  %mul1169 = mul nsw i32 0, %add1168
  %add1170 = add nsw i32 %mul1169, 1
  %shl1171 = shl i32 %add1170, 30
  %sub1172 = sub nsw i32 %shl1171, 1
  %mul1173 = mul nsw i32 %sub1172, 2
  %add1174 = add nsw i32 %mul1173, 1
  %sub1175 = sub nsw i32 %sub1166, %add1174
  br label %cond.end.1181

cond.false.1176:                                  ; preds = %cond.true.1151
  %220 = load i64, i64* %size180, align 8
  %conv1177 = trunc i64 %220 to i32
  %add1178 = add nsw i32 0, %conv1177
  %mul1179 = mul nsw i32 0, %add1178
  %add1180 = add nsw i32 %mul1179, 0
  br label %cond.end.1181

cond.end.1181:                                    ; preds = %cond.false.1176, %cond.true.1158
  %cond1182 = phi i32 [ %sub1175, %cond.true.1158 ], [ %add1180, %cond.false.1176 ]
  %cmp1183 = icmp eq i32 %cond1182, 0
  br i1 %cmp1183, label %land.lhs.true.1185, label %lor.lhs.false.1189

land.lhs.true.1185:                               ; preds = %cond.end.1181
  %221 = load i64, i64* %size180, align 8
  %conv1186 = trunc i64 %221 to i32
  %cmp1187 = icmp slt i32 %conv1186, 0
  br i1 %cmp1187, label %cond.true.1345, label %lor.lhs.false.1189

lor.lhs.false.1189:                               ; preds = %land.lhs.true.1185, %cond.end.1181
  br i1 false, label %cond.true.1190, label %cond.false.1259

cond.true.1190:                                   ; preds = %lor.lhs.false.1189
  %222 = load i64, i64* %size180, align 8
  %conv1191 = trunc i64 %222 to i32
  %cmp1192 = icmp slt i32 %conv1191, 0
  br i1 %cmp1192, label %cond.true.1194, label %cond.false.1221

cond.true.1194:                                   ; preds = %cond.true.1190
  %223 = load i64, i64* %size180, align 8
  %conv1195 = trunc i64 %223 to i32
  %224 = load i64, i64* %size180, align 8
  %conv1196 = trunc i64 %224 to i32
  %add1197 = add nsw i32 0, %conv1196
  %mul1198 = mul nsw i32 0, %add1197
  %sub1199 = sub nsw i32 %mul1198, 1
  %cmp1200 = icmp slt i32 %sub1199, 0
  br i1 %cmp1200, label %cond.true.1202, label %cond.false.1211

cond.true.1202:                                   ; preds = %cond.true.1194
  %225 = load i64, i64* %size180, align 8
  %conv1203 = trunc i64 %225 to i32
  %add1204 = add nsw i32 0, %conv1203
  %mul1205 = mul nsw i32 0, %add1204
  %add1206 = add nsw i32 %mul1205, 1
  %shl1207 = shl i32 %add1206, 30
  %sub1208 = sub nsw i32 %shl1207, 1
  %mul1209 = mul nsw i32 %sub1208, 2
  %add1210 = add nsw i32 %mul1209, 1
  br label %cond.end.1216

cond.false.1211:                                  ; preds = %cond.true.1194
  %226 = load i64, i64* %size180, align 8
  %conv1212 = trunc i64 %226 to i32
  %add1213 = add nsw i32 0, %conv1212
  %mul1214 = mul nsw i32 0, %add1213
  %sub1215 = sub nsw i32 %mul1214, 1
  br label %cond.end.1216

cond.end.1216:                                    ; preds = %cond.false.1211, %cond.true.1202
  %cond1217 = phi i32 [ %add1210, %cond.true.1202 ], [ %sub1215, %cond.false.1211 ]
  %div1218 = sdiv i32 %cond1217, 5
  %cmp1219 = icmp slt i32 %conv1195, %div1218
  br i1 %cmp1219, label %cond.true.1345, label %lor.lhs.false.1328

cond.false.1221:                                  ; preds = %cond.true.1190
  br i1 false, label %cond.true.1222, label %cond.false.1223

cond.true.1222:                                   ; preds = %cond.false.1221
  br i1 false, label %cond.true.1345, label %lor.lhs.false.1328

cond.false.1223:                                  ; preds = %cond.false.1221
  %227 = load i64, i64* %size180, align 8
  %conv1224 = trunc i64 %227 to i32
  %add1225 = add nsw i32 0, %conv1224
  %mul1226 = mul nsw i32 0, %add1225
  %sub1227 = sub nsw i32 %mul1226, 1
  %cmp1228 = icmp slt i32 %sub1227, 0
  br i1 %cmp1228, label %cond.true.1230, label %cond.false.1248

cond.true.1230:                                   ; preds = %cond.false.1223
  %228 = load i64, i64* %size180, align 8
  %conv1231 = trunc i64 %228 to i32
  %add1232 = add nsw i32 0, %conv1231
  %mul1233 = mul nsw i32 0, %add1232
  %add1234 = add nsw i32 %mul1233, 0
  %neg1235 = xor i32 %add1234, -1
  %cmp1236 = icmp eq i32 %neg1235, -1
  %conv1237 = zext i1 %cmp1236 to i32
  %sub1238 = sub nsw i32 0, %conv1237
  %229 = load i64, i64* %size180, align 8
  %conv1239 = trunc i64 %229 to i32
  %add1240 = add nsw i32 0, %conv1239
  %mul1241 = mul nsw i32 0, %add1240
  %add1242 = add nsw i32 %mul1241, 1
  %shl1243 = shl i32 %add1242, 30
  %sub1244 = sub nsw i32 %shl1243, 1
  %mul1245 = mul nsw i32 %sub1244, 2
  %add1246 = add nsw i32 %mul1245, 1
  %sub1247 = sub nsw i32 %sub1238, %add1246
  br label %cond.end.1253

cond.false.1248:                                  ; preds = %cond.false.1223
  %230 = load i64, i64* %size180, align 8
  %conv1249 = trunc i64 %230 to i32
  %add1250 = add nsw i32 0, %conv1249
  %mul1251 = mul nsw i32 0, %add1250
  %add1252 = add nsw i32 %mul1251, 0
  br label %cond.end.1253

cond.end.1253:                                    ; preds = %cond.false.1248, %cond.true.1230
  %cond1254 = phi i32 [ %sub1247, %cond.true.1230 ], [ %add1252, %cond.false.1248 ]
  %div1255 = sdiv i32 %cond1254, 5
  %231 = load i64, i64* %size180, align 8
  %conv1256 = trunc i64 %231 to i32
  %cmp1257 = icmp slt i32 %div1255, %conv1256
  br i1 %cmp1257, label %cond.true.1345, label %lor.lhs.false.1328

cond.false.1259:                                  ; preds = %lor.lhs.false.1189
  br i1 false, label %cond.true.1260, label %cond.false.1261

cond.true.1260:                                   ; preds = %cond.false.1259
  br i1 false, label %cond.true.1345, label %lor.lhs.false.1328

cond.false.1261:                                  ; preds = %cond.false.1259
  %232 = load i64, i64* %size180, align 8
  %conv1262 = trunc i64 %232 to i32
  %cmp1263 = icmp slt i32 %conv1262, 0
  br i1 %cmp1263, label %cond.true.1265, label %cond.false.1301

cond.true.1265:                                   ; preds = %cond.false.1261
  %233 = load i64, i64* %size180, align 8
  %conv1266 = trunc i64 %233 to i32
  %234 = load i64, i64* %size180, align 8
  %conv1267 = trunc i64 %234 to i32
  %add1268 = add nsw i32 0, %conv1267
  %mul1269 = mul nsw i32 0, %add1268
  %sub1270 = sub nsw i32 %mul1269, 1
  %cmp1271 = icmp slt i32 %sub1270, 0
  br i1 %cmp1271, label %cond.true.1273, label %cond.false.1291

cond.true.1273:                                   ; preds = %cond.true.1265
  %235 = load i64, i64* %size180, align 8
  %conv1274 = trunc i64 %235 to i32
  %add1275 = add nsw i32 0, %conv1274
  %mul1276 = mul nsw i32 0, %add1275
  %add1277 = add nsw i32 %mul1276, 0
  %neg1278 = xor i32 %add1277, -1
  %cmp1279 = icmp eq i32 %neg1278, -1
  %conv1280 = zext i1 %cmp1279 to i32
  %sub1281 = sub nsw i32 0, %conv1280
  %236 = load i64, i64* %size180, align 8
  %conv1282 = trunc i64 %236 to i32
  %add1283 = add nsw i32 0, %conv1282
  %mul1284 = mul nsw i32 0, %add1283
  %add1285 = add nsw i32 %mul1284, 1
  %shl1286 = shl i32 %add1285, 30
  %sub1287 = sub nsw i32 %shl1286, 1
  %mul1288 = mul nsw i32 %sub1287, 2
  %add1289 = add nsw i32 %mul1288, 1
  %sub1290 = sub nsw i32 %sub1281, %add1289
  br label %cond.end.1296

cond.false.1291:                                  ; preds = %cond.true.1265
  %237 = load i64, i64* %size180, align 8
  %conv1292 = trunc i64 %237 to i32
  %add1293 = add nsw i32 0, %conv1292
  %mul1294 = mul nsw i32 0, %add1293
  %add1295 = add nsw i32 %mul1294, 0
  br label %cond.end.1296

cond.end.1296:                                    ; preds = %cond.false.1291, %cond.true.1273
  %cond1297 = phi i32 [ %sub1290, %cond.true.1273 ], [ %add1295, %cond.false.1291 ]
  %div1298 = sdiv i32 %cond1297, 5
  %cmp1299 = icmp slt i32 %conv1266, %div1298
  br i1 %cmp1299, label %cond.true.1345, label %lor.lhs.false.1328

cond.false.1301:                                  ; preds = %cond.false.1261
  %238 = load i64, i64* %size180, align 8
  %conv1302 = trunc i64 %238 to i32
  %add1303 = add nsw i32 0, %conv1302
  %mul1304 = mul nsw i32 0, %add1303
  %sub1305 = sub nsw i32 %mul1304, 1
  %cmp1306 = icmp slt i32 %sub1305, 0
  br i1 %cmp1306, label %cond.true.1308, label %cond.false.1317

cond.true.1308:                                   ; preds = %cond.false.1301
  %239 = load i64, i64* %size180, align 8
  %conv1309 = trunc i64 %239 to i32
  %add1310 = add nsw i32 0, %conv1309
  %mul1311 = mul nsw i32 0, %add1310
  %add1312 = add nsw i32 %mul1311, 1
  %shl1313 = shl i32 %add1312, 30
  %sub1314 = sub nsw i32 %shl1313, 1
  %mul1315 = mul nsw i32 %sub1314, 2
  %add1316 = add nsw i32 %mul1315, 1
  br label %cond.end.1322

cond.false.1317:                                  ; preds = %cond.false.1301
  %240 = load i64, i64* %size180, align 8
  %conv1318 = trunc i64 %240 to i32
  %add1319 = add nsw i32 0, %conv1318
  %mul1320 = mul nsw i32 0, %add1319
  %sub1321 = sub nsw i32 %mul1320, 1
  br label %cond.end.1322

cond.end.1322:                                    ; preds = %cond.false.1317, %cond.true.1308
  %cond1323 = phi i32 [ %add1316, %cond.true.1308 ], [ %sub1321, %cond.false.1317 ]
  %div1324 = sdiv i32 %cond1323, 5
  %241 = load i64, i64* %size180, align 8
  %conv1325 = trunc i64 %241 to i32
  %cmp1326 = icmp slt i32 %div1324, %conv1325
  br i1 %cmp1326, label %cond.true.1345, label %lor.lhs.false.1328

lor.lhs.false.1328:                               ; preds = %cond.end.1322, %cond.end.1296, %cond.true.1260, %cond.end.1253, %cond.true.1222, %cond.end.1216
  %242 = load i64, i64* %size180, align 8
  %conv1329 = trunc i64 %242 to i32
  %mul1330 = mul nsw i32 %conv1329, 5
  %mul1331 = mul nsw i32 0, %mul1330
  %sub1332 = sub nsw i32 %mul1331, 1
  %cmp1333 = icmp slt i32 %sub1332, 0
  br i1 %cmp1333, label %land.lhs.true.1335, label %lor.lhs.false.1340

land.lhs.true.1335:                               ; preds = %lor.lhs.false.1328
  %243 = load i64, i64* %size180, align 8
  %conv1336 = trunc i64 %243 to i32
  %mul1337 = mul nsw i32 %conv1336, 5
  %cmp1338 = icmp slt i32 %mul1337, -2147483648
  br i1 %cmp1338, label %cond.true.1345, label %lor.lhs.false.1340

lor.lhs.false.1340:                               ; preds = %land.lhs.true.1335, %lor.lhs.false.1328
  %244 = load i64, i64* %size180, align 8
  %conv1341 = trunc i64 %244 to i32
  %mul1342 = mul nsw i32 %conv1341, 5
  %cmp1343 = icmp slt i32 2147483647, %mul1342
  br i1 %cmp1343, label %cond.true.1345, label %cond.false.1361

cond.true.1345:                                   ; preds = %lor.lhs.false.1340, %land.lhs.true.1335, %cond.end.1322, %cond.end.1296, %cond.true.1260, %cond.end.1253, %cond.true.1222, %cond.end.1216, %land.lhs.true.1185
  %245 = load i64, i64* %size180, align 8
  %conv1346 = trunc i64 %245 to i32
  %mul1347 = mul i32 %conv1346, 5
  %cmp1348 = icmp ule i32 %mul1347, 2147483647
  br i1 %cmp1348, label %cond.true.1350, label %cond.false.1353

cond.true.1350:                                   ; preds = %cond.true.1345
  %246 = load i64, i64* %size180, align 8
  %conv1351 = trunc i64 %246 to i32
  %mul1352 = mul i32 %conv1351, 5
  br label %cond.end.1358

cond.false.1353:                                  ; preds = %cond.true.1345
  %247 = load i64, i64* %size180, align 8
  %conv1354 = trunc i64 %247 to i32
  %mul1355 = mul i32 %conv1354, 5
  %sub1356 = sub i32 %mul1355, -2147483648
  %add1357 = add nsw i32 %sub1356, -2147483648
  br label %cond.end.1358

cond.end.1358:                                    ; preds = %cond.false.1353, %cond.true.1350
  %cond1359 = phi i32 [ %mul1352, %cond.true.1350 ], [ %add1357, %cond.false.1353 ]
  %conv1360 = sext i32 %cond1359 to i64
  store i64 %conv1360, i64* %o_size, align 8
  br i1 true, label %if.then.2353, label %if.end.2354

cond.false.1361:                                  ; preds = %lor.lhs.false.1340
  %248 = load i64, i64* %size180, align 8
  %conv1362 = trunc i64 %248 to i32
  %mul1363 = mul i32 %conv1362, 5
  %cmp1364 = icmp ule i32 %mul1363, 2147483647
  br i1 %cmp1364, label %cond.true.1366, label %cond.false.1369

cond.true.1366:                                   ; preds = %cond.false.1361
  %249 = load i64, i64* %size180, align 8
  %conv1367 = trunc i64 %249 to i32
  %mul1368 = mul i32 %conv1367, 5
  br label %cond.end.1374

cond.false.1369:                                  ; preds = %cond.false.1361
  %250 = load i64, i64* %size180, align 8
  %conv1370 = trunc i64 %250 to i32
  %mul1371 = mul i32 %conv1370, 5
  %sub1372 = sub i32 %mul1371, -2147483648
  %add1373 = add nsw i32 %sub1372, -2147483648
  br label %cond.end.1374

cond.end.1374:                                    ; preds = %cond.false.1369, %cond.true.1366
  %cond1375 = phi i32 [ %mul1368, %cond.true.1366 ], [ %add1373, %cond.false.1369 ]
  %conv1376 = sext i32 %cond1375 to i64
  store i64 %conv1376, i64* %o_size, align 8
  br i1 false, label %if.then.2353, label %if.end.2354

cond.false.1377:                                  ; preds = %cond.true.1150
  %251 = load i64, i64* %size180, align 8
  %add1378 = add nsw i64 0, %251
  %mul1379 = mul nsw i64 0, %add1378
  %sub1380 = sub nsw i64 %mul1379, 1
  %cmp1381 = icmp slt i64 %sub1380, 0
  br i1 %cmp1381, label %cond.true.1383, label %cond.false.1400

cond.true.1383:                                   ; preds = %cond.false.1377
  %252 = load i64, i64* %size180, align 8
  %add1384 = add nsw i64 0, %252
  %mul1385 = mul nsw i64 0, %add1384
  %add1386 = add nsw i64 %mul1385, 0
  %neg1387 = xor i64 %add1386, -1
  %cmp1388 = icmp eq i64 %neg1387, -1
  %conv1389 = zext i1 %cmp1388 to i32
  %sub1390 = sub nsw i32 0, %conv1389
  %conv1391 = sext i32 %sub1390 to i64
  %253 = load i64, i64* %size180, align 8
  %add1392 = add nsw i64 0, %253
  %mul1393 = mul nsw i64 0, %add1392
  %add1394 = add nsw i64 %mul1393, 1
  %shl1395 = shl i64 %add1394, 62
  %sub1396 = sub nsw i64 %shl1395, 1
  %mul1397 = mul nsw i64 %sub1396, 2
  %add1398 = add nsw i64 %mul1397, 1
  %sub1399 = sub nsw i64 %conv1391, %add1398
  br label %cond.end.1404

cond.false.1400:                                  ; preds = %cond.false.1377
  %254 = load i64, i64* %size180, align 8
  %add1401 = add nsw i64 0, %254
  %mul1402 = mul nsw i64 0, %add1401
  %add1403 = add nsw i64 %mul1402, 0
  br label %cond.end.1404

cond.end.1404:                                    ; preds = %cond.false.1400, %cond.true.1383
  %cond1405 = phi i64 [ %sub1399, %cond.true.1383 ], [ %add1403, %cond.false.1400 ]
  %cmp1406 = icmp eq i64 %cond1405, 0
  br i1 %cmp1406, label %land.lhs.true.1408, label %lor.lhs.false.1411

land.lhs.true.1408:                               ; preds = %cond.end.1404
  %255 = load i64, i64* %size180, align 8
  %cmp1409 = icmp slt i64 %255, 0
  br i1 %cmp1409, label %cond.true.1546, label %lor.lhs.false.1411

lor.lhs.false.1411:                               ; preds = %land.lhs.true.1408, %cond.end.1404
  br i1 false, label %cond.true.1412, label %cond.false.1472

cond.true.1412:                                   ; preds = %lor.lhs.false.1411
  %256 = load i64, i64* %size180, align 8
  %cmp1413 = icmp slt i64 %256, 0
  br i1 %cmp1413, label %cond.true.1415, label %cond.false.1438

cond.true.1415:                                   ; preds = %cond.true.1412
  %257 = load i64, i64* %size180, align 8
  %258 = load i64, i64* %size180, align 8
  %add1416 = add nsw i64 0, %258
  %mul1417 = mul nsw i64 0, %add1416
  %sub1418 = sub nsw i64 %mul1417, 1
  %cmp1419 = icmp slt i64 %sub1418, 0
  br i1 %cmp1419, label %cond.true.1421, label %cond.false.1429

cond.true.1421:                                   ; preds = %cond.true.1415
  %259 = load i64, i64* %size180, align 8
  %add1422 = add nsw i64 0, %259
  %mul1423 = mul nsw i64 0, %add1422
  %add1424 = add nsw i64 %mul1423, 1
  %shl1425 = shl i64 %add1424, 62
  %sub1426 = sub nsw i64 %shl1425, 1
  %mul1427 = mul nsw i64 %sub1426, 2
  %add1428 = add nsw i64 %mul1427, 1
  br label %cond.end.1433

cond.false.1429:                                  ; preds = %cond.true.1415
  %260 = load i64, i64* %size180, align 8
  %add1430 = add nsw i64 0, %260
  %mul1431 = mul nsw i64 0, %add1430
  %sub1432 = sub nsw i64 %mul1431, 1
  br label %cond.end.1433

cond.end.1433:                                    ; preds = %cond.false.1429, %cond.true.1421
  %cond1434 = phi i64 [ %add1428, %cond.true.1421 ], [ %sub1432, %cond.false.1429 ]
  %div1435 = sdiv i64 %cond1434, 5
  %cmp1436 = icmp slt i64 %257, %div1435
  br i1 %cmp1436, label %cond.true.1546, label %lor.lhs.false.1532

cond.false.1438:                                  ; preds = %cond.true.1412
  br i1 false, label %cond.true.1439, label %cond.false.1440

cond.true.1439:                                   ; preds = %cond.false.1438
  br i1 false, label %cond.true.1546, label %lor.lhs.false.1532

cond.false.1440:                                  ; preds = %cond.false.1438
  %261 = load i64, i64* %size180, align 8
  %add1441 = add nsw i64 0, %261
  %mul1442 = mul nsw i64 0, %add1441
  %sub1443 = sub nsw i64 %mul1442, 1
  %cmp1444 = icmp slt i64 %sub1443, 0
  br i1 %cmp1444, label %cond.true.1446, label %cond.false.1463

cond.true.1446:                                   ; preds = %cond.false.1440
  %262 = load i64, i64* %size180, align 8
  %add1447 = add nsw i64 0, %262
  %mul1448 = mul nsw i64 0, %add1447
  %add1449 = add nsw i64 %mul1448, 0
  %neg1450 = xor i64 %add1449, -1
  %cmp1451 = icmp eq i64 %neg1450, -1
  %conv1452 = zext i1 %cmp1451 to i32
  %sub1453 = sub nsw i32 0, %conv1452
  %conv1454 = sext i32 %sub1453 to i64
  %263 = load i64, i64* %size180, align 8
  %add1455 = add nsw i64 0, %263
  %mul1456 = mul nsw i64 0, %add1455
  %add1457 = add nsw i64 %mul1456, 1
  %shl1458 = shl i64 %add1457, 62
  %sub1459 = sub nsw i64 %shl1458, 1
  %mul1460 = mul nsw i64 %sub1459, 2
  %add1461 = add nsw i64 %mul1460, 1
  %sub1462 = sub nsw i64 %conv1454, %add1461
  br label %cond.end.1467

cond.false.1463:                                  ; preds = %cond.false.1440
  %264 = load i64, i64* %size180, align 8
  %add1464 = add nsw i64 0, %264
  %mul1465 = mul nsw i64 0, %add1464
  %add1466 = add nsw i64 %mul1465, 0
  br label %cond.end.1467

cond.end.1467:                                    ; preds = %cond.false.1463, %cond.true.1446
  %cond1468 = phi i64 [ %sub1462, %cond.true.1446 ], [ %add1466, %cond.false.1463 ]
  %div1469 = sdiv i64 %cond1468, 5
  %265 = load i64, i64* %size180, align 8
  %cmp1470 = icmp slt i64 %div1469, %265
  br i1 %cmp1470, label %cond.true.1546, label %lor.lhs.false.1532

cond.false.1472:                                  ; preds = %lor.lhs.false.1411
  br i1 false, label %cond.true.1473, label %cond.false.1474

cond.true.1473:                                   ; preds = %cond.false.1472
  br i1 false, label %cond.true.1546, label %lor.lhs.false.1532

cond.false.1474:                                  ; preds = %cond.false.1472
  %266 = load i64, i64* %size180, align 8
  %cmp1475 = icmp slt i64 %266, 0
  br i1 %cmp1475, label %cond.true.1477, label %cond.false.1509

cond.true.1477:                                   ; preds = %cond.false.1474
  %267 = load i64, i64* %size180, align 8
  %268 = load i64, i64* %size180, align 8
  %add1478 = add nsw i64 0, %268
  %mul1479 = mul nsw i64 0, %add1478
  %sub1480 = sub nsw i64 %mul1479, 1
  %cmp1481 = icmp slt i64 %sub1480, 0
  br i1 %cmp1481, label %cond.true.1483, label %cond.false.1500

cond.true.1483:                                   ; preds = %cond.true.1477
  %269 = load i64, i64* %size180, align 8
  %add1484 = add nsw i64 0, %269
  %mul1485 = mul nsw i64 0, %add1484
  %add1486 = add nsw i64 %mul1485, 0
  %neg1487 = xor i64 %add1486, -1
  %cmp1488 = icmp eq i64 %neg1487, -1
  %conv1489 = zext i1 %cmp1488 to i32
  %sub1490 = sub nsw i32 0, %conv1489
  %conv1491 = sext i32 %sub1490 to i64
  %270 = load i64, i64* %size180, align 8
  %add1492 = add nsw i64 0, %270
  %mul1493 = mul nsw i64 0, %add1492
  %add1494 = add nsw i64 %mul1493, 1
  %shl1495 = shl i64 %add1494, 62
  %sub1496 = sub nsw i64 %shl1495, 1
  %mul1497 = mul nsw i64 %sub1496, 2
  %add1498 = add nsw i64 %mul1497, 1
  %sub1499 = sub nsw i64 %conv1491, %add1498
  br label %cond.end.1504

cond.false.1500:                                  ; preds = %cond.true.1477
  %271 = load i64, i64* %size180, align 8
  %add1501 = add nsw i64 0, %271
  %mul1502 = mul nsw i64 0, %add1501
  %add1503 = add nsw i64 %mul1502, 0
  br label %cond.end.1504

cond.end.1504:                                    ; preds = %cond.false.1500, %cond.true.1483
  %cond1505 = phi i64 [ %sub1499, %cond.true.1483 ], [ %add1503, %cond.false.1500 ]
  %div1506 = sdiv i64 %cond1505, 5
  %cmp1507 = icmp slt i64 %267, %div1506
  br i1 %cmp1507, label %cond.true.1546, label %lor.lhs.false.1532

cond.false.1509:                                  ; preds = %cond.false.1474
  %272 = load i64, i64* %size180, align 8
  %add1510 = add nsw i64 0, %272
  %mul1511 = mul nsw i64 0, %add1510
  %sub1512 = sub nsw i64 %mul1511, 1
  %cmp1513 = icmp slt i64 %sub1512, 0
  br i1 %cmp1513, label %cond.true.1515, label %cond.false.1523

cond.true.1515:                                   ; preds = %cond.false.1509
  %273 = load i64, i64* %size180, align 8
  %add1516 = add nsw i64 0, %273
  %mul1517 = mul nsw i64 0, %add1516
  %add1518 = add nsw i64 %mul1517, 1
  %shl1519 = shl i64 %add1518, 62
  %sub1520 = sub nsw i64 %shl1519, 1
  %mul1521 = mul nsw i64 %sub1520, 2
  %add1522 = add nsw i64 %mul1521, 1
  br label %cond.end.1527

cond.false.1523:                                  ; preds = %cond.false.1509
  %274 = load i64, i64* %size180, align 8
  %add1524 = add nsw i64 0, %274
  %mul1525 = mul nsw i64 0, %add1524
  %sub1526 = sub nsw i64 %mul1525, 1
  br label %cond.end.1527

cond.end.1527:                                    ; preds = %cond.false.1523, %cond.true.1515
  %cond1528 = phi i64 [ %add1522, %cond.true.1515 ], [ %sub1526, %cond.false.1523 ]
  %div1529 = sdiv i64 %cond1528, 5
  %275 = load i64, i64* %size180, align 8
  %cmp1530 = icmp slt i64 %div1529, %275
  br i1 %cmp1530, label %cond.true.1546, label %lor.lhs.false.1532

lor.lhs.false.1532:                               ; preds = %cond.end.1527, %cond.end.1504, %cond.true.1473, %cond.end.1467, %cond.true.1439, %cond.end.1433
  %276 = load i64, i64* %size180, align 8
  %mul1533 = mul nsw i64 %276, 5
  %mul1534 = mul nsw i64 0, %mul1533
  %sub1535 = sub nsw i64 %mul1534, 1
  %cmp1536 = icmp slt i64 %sub1535, 0
  br i1 %cmp1536, label %land.lhs.true.1538, label %lor.lhs.false.1542

land.lhs.true.1538:                               ; preds = %lor.lhs.false.1532
  %277 = load i64, i64* %size180, align 8
  %mul1539 = mul nsw i64 %277, 5
  %cmp1540 = icmp slt i64 %mul1539, -2147483648
  br i1 %cmp1540, label %cond.true.1546, label %lor.lhs.false.1542

lor.lhs.false.1542:                               ; preds = %land.lhs.true.1538, %lor.lhs.false.1532
  %278 = load i64, i64* %size180, align 8
  %mul1543 = mul nsw i64 %278, 5
  %cmp1544 = icmp slt i64 2147483647, %mul1543
  br i1 %cmp1544, label %cond.true.1546, label %cond.false.1562

cond.true.1546:                                   ; preds = %lor.lhs.false.1542, %land.lhs.true.1538, %cond.end.1527, %cond.end.1504, %cond.true.1473, %cond.end.1467, %cond.true.1439, %cond.end.1433, %land.lhs.true.1408
  %279 = load i64, i64* %size180, align 8
  %conv1547 = trunc i64 %279 to i32
  %mul1548 = mul i32 %conv1547, 5
  %cmp1549 = icmp ule i32 %mul1548, 2147483647
  br i1 %cmp1549, label %cond.true.1551, label %cond.false.1554

cond.true.1551:                                   ; preds = %cond.true.1546
  %280 = load i64, i64* %size180, align 8
  %conv1552 = trunc i64 %280 to i32
  %mul1553 = mul i32 %conv1552, 5
  br label %cond.end.1559

cond.false.1554:                                  ; preds = %cond.true.1546
  %281 = load i64, i64* %size180, align 8
  %conv1555 = trunc i64 %281 to i32
  %mul1556 = mul i32 %conv1555, 5
  %sub1557 = sub i32 %mul1556, -2147483648
  %add1558 = add nsw i32 %sub1557, -2147483648
  br label %cond.end.1559

cond.end.1559:                                    ; preds = %cond.false.1554, %cond.true.1551
  %cond1560 = phi i32 [ %mul1553, %cond.true.1551 ], [ %add1558, %cond.false.1554 ]
  %conv1561 = sext i32 %cond1560 to i64
  store i64 %conv1561, i64* %o_size, align 8
  br i1 true, label %if.then.2353, label %if.end.2354

cond.false.1562:                                  ; preds = %lor.lhs.false.1542
  %282 = load i64, i64* %size180, align 8
  %conv1563 = trunc i64 %282 to i32
  %mul1564 = mul i32 %conv1563, 5
  %cmp1565 = icmp ule i32 %mul1564, 2147483647
  br i1 %cmp1565, label %cond.true.1567, label %cond.false.1570

cond.true.1567:                                   ; preds = %cond.false.1562
  %283 = load i64, i64* %size180, align 8
  %conv1568 = trunc i64 %283 to i32
  %mul1569 = mul i32 %conv1568, 5
  br label %cond.end.1575

cond.false.1570:                                  ; preds = %cond.false.1562
  %284 = load i64, i64* %size180, align 8
  %conv1571 = trunc i64 %284 to i32
  %mul1572 = mul i32 %conv1571, 5
  %sub1573 = sub i32 %mul1572, -2147483648
  %add1574 = add nsw i32 %sub1573, -2147483648
  br label %cond.end.1575

cond.end.1575:                                    ; preds = %cond.false.1570, %cond.true.1567
  %cond1576 = phi i32 [ %mul1569, %cond.true.1567 ], [ %add1574, %cond.false.1570 ]
  %conv1577 = sext i32 %cond1576 to i64
  store i64 %conv1577, i64* %o_size, align 8
  br i1 false, label %if.then.2353, label %if.end.2354

cond.false.1578:                                  ; preds = %cond.false.1149
  br i1 true, label %cond.true.1579, label %cond.false.1966

cond.true.1579:                                   ; preds = %cond.false.1578
  br i1 false, label %cond.true.1580, label %cond.false.1773

cond.true.1580:                                   ; preds = %cond.true.1579
  %285 = load i64, i64* %size180, align 8
  %add1581 = add nsw i64 0, %285
  %mul1582 = mul nsw i64 0, %add1581
  %sub1583 = sub nsw i64 %mul1582, 1
  %cmp1584 = icmp slt i64 %sub1583, 0
  br i1 %cmp1584, label %cond.true.1586, label %cond.false.1603

cond.true.1586:                                   ; preds = %cond.true.1580
  %286 = load i64, i64* %size180, align 8
  %add1587 = add nsw i64 0, %286
  %mul1588 = mul nsw i64 0, %add1587
  %add1589 = add nsw i64 %mul1588, 0
  %neg1590 = xor i64 %add1589, -1
  %cmp1591 = icmp eq i64 %neg1590, -1
  %conv1592 = zext i1 %cmp1591 to i32
  %sub1593 = sub nsw i32 0, %conv1592
  %conv1594 = sext i32 %sub1593 to i64
  %287 = load i64, i64* %size180, align 8
  %add1595 = add nsw i64 0, %287
  %mul1596 = mul nsw i64 0, %add1595
  %add1597 = add nsw i64 %mul1596, 1
  %shl1598 = shl i64 %add1597, 62
  %sub1599 = sub nsw i64 %shl1598, 1
  %mul1600 = mul nsw i64 %sub1599, 2
  %add1601 = add nsw i64 %mul1600, 1
  %sub1602 = sub nsw i64 %conv1594, %add1601
  br label %cond.end.1607

cond.false.1603:                                  ; preds = %cond.true.1580
  %288 = load i64, i64* %size180, align 8
  %add1604 = add nsw i64 0, %288
  %mul1605 = mul nsw i64 0, %add1604
  %add1606 = add nsw i64 %mul1605, 0
  br label %cond.end.1607

cond.end.1607:                                    ; preds = %cond.false.1603, %cond.true.1586
  %cond1608 = phi i64 [ %sub1602, %cond.true.1586 ], [ %add1606, %cond.false.1603 ]
  %cmp1609 = icmp eq i64 %cond1608, 0
  br i1 %cmp1609, label %land.lhs.true.1611, label %lor.lhs.false.1614

land.lhs.true.1611:                               ; preds = %cond.end.1607
  %289 = load i64, i64* %size180, align 8
  %cmp1612 = icmp slt i64 %289, 0
  br i1 %cmp1612, label %cond.true.1749, label %lor.lhs.false.1614

lor.lhs.false.1614:                               ; preds = %land.lhs.true.1611, %cond.end.1607
  br i1 false, label %cond.true.1615, label %cond.false.1675

cond.true.1615:                                   ; preds = %lor.lhs.false.1614
  %290 = load i64, i64* %size180, align 8
  %cmp1616 = icmp slt i64 %290, 0
  br i1 %cmp1616, label %cond.true.1618, label %cond.false.1641

cond.true.1618:                                   ; preds = %cond.true.1615
  %291 = load i64, i64* %size180, align 8
  %292 = load i64, i64* %size180, align 8
  %add1619 = add nsw i64 0, %292
  %mul1620 = mul nsw i64 0, %add1619
  %sub1621 = sub nsw i64 %mul1620, 1
  %cmp1622 = icmp slt i64 %sub1621, 0
  br i1 %cmp1622, label %cond.true.1624, label %cond.false.1632

cond.true.1624:                                   ; preds = %cond.true.1618
  %293 = load i64, i64* %size180, align 8
  %add1625 = add nsw i64 0, %293
  %mul1626 = mul nsw i64 0, %add1625
  %add1627 = add nsw i64 %mul1626, 1
  %shl1628 = shl i64 %add1627, 62
  %sub1629 = sub nsw i64 %shl1628, 1
  %mul1630 = mul nsw i64 %sub1629, 2
  %add1631 = add nsw i64 %mul1630, 1
  br label %cond.end.1636

cond.false.1632:                                  ; preds = %cond.true.1618
  %294 = load i64, i64* %size180, align 8
  %add1633 = add nsw i64 0, %294
  %mul1634 = mul nsw i64 0, %add1633
  %sub1635 = sub nsw i64 %mul1634, 1
  br label %cond.end.1636

cond.end.1636:                                    ; preds = %cond.false.1632, %cond.true.1624
  %cond1637 = phi i64 [ %add1631, %cond.true.1624 ], [ %sub1635, %cond.false.1632 ]
  %div1638 = sdiv i64 %cond1637, 5
  %cmp1639 = icmp slt i64 %291, %div1638
  br i1 %cmp1639, label %cond.true.1749, label %lor.lhs.false.1735

cond.false.1641:                                  ; preds = %cond.true.1615
  br i1 false, label %cond.true.1642, label %cond.false.1643

cond.true.1642:                                   ; preds = %cond.false.1641
  br i1 false, label %cond.true.1749, label %lor.lhs.false.1735

cond.false.1643:                                  ; preds = %cond.false.1641
  %295 = load i64, i64* %size180, align 8
  %add1644 = add nsw i64 0, %295
  %mul1645 = mul nsw i64 0, %add1644
  %sub1646 = sub nsw i64 %mul1645, 1
  %cmp1647 = icmp slt i64 %sub1646, 0
  br i1 %cmp1647, label %cond.true.1649, label %cond.false.1666

cond.true.1649:                                   ; preds = %cond.false.1643
  %296 = load i64, i64* %size180, align 8
  %add1650 = add nsw i64 0, %296
  %mul1651 = mul nsw i64 0, %add1650
  %add1652 = add nsw i64 %mul1651, 0
  %neg1653 = xor i64 %add1652, -1
  %cmp1654 = icmp eq i64 %neg1653, -1
  %conv1655 = zext i1 %cmp1654 to i32
  %sub1656 = sub nsw i32 0, %conv1655
  %conv1657 = sext i32 %sub1656 to i64
  %297 = load i64, i64* %size180, align 8
  %add1658 = add nsw i64 0, %297
  %mul1659 = mul nsw i64 0, %add1658
  %add1660 = add nsw i64 %mul1659, 1
  %shl1661 = shl i64 %add1660, 62
  %sub1662 = sub nsw i64 %shl1661, 1
  %mul1663 = mul nsw i64 %sub1662, 2
  %add1664 = add nsw i64 %mul1663, 1
  %sub1665 = sub nsw i64 %conv1657, %add1664
  br label %cond.end.1670

cond.false.1666:                                  ; preds = %cond.false.1643
  %298 = load i64, i64* %size180, align 8
  %add1667 = add nsw i64 0, %298
  %mul1668 = mul nsw i64 0, %add1667
  %add1669 = add nsw i64 %mul1668, 0
  br label %cond.end.1670

cond.end.1670:                                    ; preds = %cond.false.1666, %cond.true.1649
  %cond1671 = phi i64 [ %sub1665, %cond.true.1649 ], [ %add1669, %cond.false.1666 ]
  %div1672 = sdiv i64 %cond1671, 5
  %299 = load i64, i64* %size180, align 8
  %cmp1673 = icmp slt i64 %div1672, %299
  br i1 %cmp1673, label %cond.true.1749, label %lor.lhs.false.1735

cond.false.1675:                                  ; preds = %lor.lhs.false.1614
  br i1 false, label %cond.true.1676, label %cond.false.1677

cond.true.1676:                                   ; preds = %cond.false.1675
  br i1 false, label %cond.true.1749, label %lor.lhs.false.1735

cond.false.1677:                                  ; preds = %cond.false.1675
  %300 = load i64, i64* %size180, align 8
  %cmp1678 = icmp slt i64 %300, 0
  br i1 %cmp1678, label %cond.true.1680, label %cond.false.1712

cond.true.1680:                                   ; preds = %cond.false.1677
  %301 = load i64, i64* %size180, align 8
  %302 = load i64, i64* %size180, align 8
  %add1681 = add nsw i64 0, %302
  %mul1682 = mul nsw i64 0, %add1681
  %sub1683 = sub nsw i64 %mul1682, 1
  %cmp1684 = icmp slt i64 %sub1683, 0
  br i1 %cmp1684, label %cond.true.1686, label %cond.false.1703

cond.true.1686:                                   ; preds = %cond.true.1680
  %303 = load i64, i64* %size180, align 8
  %add1687 = add nsw i64 0, %303
  %mul1688 = mul nsw i64 0, %add1687
  %add1689 = add nsw i64 %mul1688, 0
  %neg1690 = xor i64 %add1689, -1
  %cmp1691 = icmp eq i64 %neg1690, -1
  %conv1692 = zext i1 %cmp1691 to i32
  %sub1693 = sub nsw i32 0, %conv1692
  %conv1694 = sext i32 %sub1693 to i64
  %304 = load i64, i64* %size180, align 8
  %add1695 = add nsw i64 0, %304
  %mul1696 = mul nsw i64 0, %add1695
  %add1697 = add nsw i64 %mul1696, 1
  %shl1698 = shl i64 %add1697, 62
  %sub1699 = sub nsw i64 %shl1698, 1
  %mul1700 = mul nsw i64 %sub1699, 2
  %add1701 = add nsw i64 %mul1700, 1
  %sub1702 = sub nsw i64 %conv1694, %add1701
  br label %cond.end.1707

cond.false.1703:                                  ; preds = %cond.true.1680
  %305 = load i64, i64* %size180, align 8
  %add1704 = add nsw i64 0, %305
  %mul1705 = mul nsw i64 0, %add1704
  %add1706 = add nsw i64 %mul1705, 0
  br label %cond.end.1707

cond.end.1707:                                    ; preds = %cond.false.1703, %cond.true.1686
  %cond1708 = phi i64 [ %sub1702, %cond.true.1686 ], [ %add1706, %cond.false.1703 ]
  %div1709 = sdiv i64 %cond1708, 5
  %cmp1710 = icmp slt i64 %301, %div1709
  br i1 %cmp1710, label %cond.true.1749, label %lor.lhs.false.1735

cond.false.1712:                                  ; preds = %cond.false.1677
  %306 = load i64, i64* %size180, align 8
  %add1713 = add nsw i64 0, %306
  %mul1714 = mul nsw i64 0, %add1713
  %sub1715 = sub nsw i64 %mul1714, 1
  %cmp1716 = icmp slt i64 %sub1715, 0
  br i1 %cmp1716, label %cond.true.1718, label %cond.false.1726

cond.true.1718:                                   ; preds = %cond.false.1712
  %307 = load i64, i64* %size180, align 8
  %add1719 = add nsw i64 0, %307
  %mul1720 = mul nsw i64 0, %add1719
  %add1721 = add nsw i64 %mul1720, 1
  %shl1722 = shl i64 %add1721, 62
  %sub1723 = sub nsw i64 %shl1722, 1
  %mul1724 = mul nsw i64 %sub1723, 2
  %add1725 = add nsw i64 %mul1724, 1
  br label %cond.end.1730

cond.false.1726:                                  ; preds = %cond.false.1712
  %308 = load i64, i64* %size180, align 8
  %add1727 = add nsw i64 0, %308
  %mul1728 = mul nsw i64 0, %add1727
  %sub1729 = sub nsw i64 %mul1728, 1
  br label %cond.end.1730

cond.end.1730:                                    ; preds = %cond.false.1726, %cond.true.1718
  %cond1731 = phi i64 [ %add1725, %cond.true.1718 ], [ %sub1729, %cond.false.1726 ]
  %div1732 = sdiv i64 %cond1731, 5
  %309 = load i64, i64* %size180, align 8
  %cmp1733 = icmp slt i64 %div1732, %309
  br i1 %cmp1733, label %cond.true.1749, label %lor.lhs.false.1735

lor.lhs.false.1735:                               ; preds = %cond.end.1730, %cond.end.1707, %cond.true.1676, %cond.end.1670, %cond.true.1642, %cond.end.1636
  %310 = load i64, i64* %size180, align 8
  %mul1736 = mul nsw i64 %310, 5
  %mul1737 = mul nsw i64 0, %mul1736
  %sub1738 = sub nsw i64 %mul1737, 1
  %cmp1739 = icmp slt i64 %sub1738, 0
  br i1 %cmp1739, label %land.lhs.true.1741, label %lor.lhs.false.1745

land.lhs.true.1741:                               ; preds = %lor.lhs.false.1735
  %311 = load i64, i64* %size180, align 8
  %mul1742 = mul nsw i64 %311, 5
  %cmp1743 = icmp slt i64 %mul1742, -9223372036854775808
  br i1 %cmp1743, label %cond.true.1749, label %lor.lhs.false.1745

lor.lhs.false.1745:                               ; preds = %land.lhs.true.1741, %lor.lhs.false.1735
  %312 = load i64, i64* %size180, align 8
  %mul1746 = mul nsw i64 %312, 5
  %cmp1747 = icmp slt i64 9223372036854775807, %mul1746
  br i1 %cmp1747, label %cond.true.1749, label %cond.false.1761

cond.true.1749:                                   ; preds = %lor.lhs.false.1745, %land.lhs.true.1741, %cond.end.1730, %cond.end.1707, %cond.true.1676, %cond.end.1670, %cond.true.1642, %cond.end.1636, %land.lhs.true.1611
  %313 = load i64, i64* %size180, align 8
  %mul1750 = mul i64 %313, 5
  %cmp1751 = icmp ule i64 %mul1750, 9223372036854775807
  br i1 %cmp1751, label %cond.true.1753, label %cond.false.1755

cond.true.1753:                                   ; preds = %cond.true.1749
  %314 = load i64, i64* %size180, align 8
  %mul1754 = mul i64 %314, 5
  br label %cond.end.1759

cond.false.1755:                                  ; preds = %cond.true.1749
  %315 = load i64, i64* %size180, align 8
  %mul1756 = mul i64 %315, 5
  %sub1757 = sub i64 %mul1756, -9223372036854775808
  %add1758 = add nsw i64 %sub1757, -9223372036854775808
  br label %cond.end.1759

cond.end.1759:                                    ; preds = %cond.false.1755, %cond.true.1753
  %cond1760 = phi i64 [ %mul1754, %cond.true.1753 ], [ %add1758, %cond.false.1755 ]
  store i64 %cond1760, i64* %o_size, align 8
  br i1 true, label %if.then.2353, label %if.end.2354

cond.false.1761:                                  ; preds = %lor.lhs.false.1745
  %316 = load i64, i64* %size180, align 8
  %mul1762 = mul i64 %316, 5
  %cmp1763 = icmp ule i64 %mul1762, 9223372036854775807
  br i1 %cmp1763, label %cond.true.1765, label %cond.false.1767

cond.true.1765:                                   ; preds = %cond.false.1761
  %317 = load i64, i64* %size180, align 8
  %mul1766 = mul i64 %317, 5
  br label %cond.end.1771

cond.false.1767:                                  ; preds = %cond.false.1761
  %318 = load i64, i64* %size180, align 8
  %mul1768 = mul i64 %318, 5
  %sub1769 = sub i64 %mul1768, -9223372036854775808
  %add1770 = add nsw i64 %sub1769, -9223372036854775808
  br label %cond.end.1771

cond.end.1771:                                    ; preds = %cond.false.1767, %cond.true.1765
  %cond1772 = phi i64 [ %mul1766, %cond.true.1765 ], [ %add1770, %cond.false.1767 ]
  store i64 %cond1772, i64* %o_size, align 8
  br i1 false, label %if.then.2353, label %if.end.2354

cond.false.1773:                                  ; preds = %cond.true.1579
  %319 = load i64, i64* %size180, align 8
  %add1774 = add nsw i64 0, %319
  %mul1775 = mul nsw i64 0, %add1774
  %sub1776 = sub nsw i64 %mul1775, 1
  %cmp1777 = icmp slt i64 %sub1776, 0
  br i1 %cmp1777, label %cond.true.1779, label %cond.false.1796

cond.true.1779:                                   ; preds = %cond.false.1773
  %320 = load i64, i64* %size180, align 8
  %add1780 = add nsw i64 0, %320
  %mul1781 = mul nsw i64 0, %add1780
  %add1782 = add nsw i64 %mul1781, 0
  %neg1783 = xor i64 %add1782, -1
  %cmp1784 = icmp eq i64 %neg1783, -1
  %conv1785 = zext i1 %cmp1784 to i32
  %sub1786 = sub nsw i32 0, %conv1785
  %conv1787 = sext i32 %sub1786 to i64
  %321 = load i64, i64* %size180, align 8
  %add1788 = add nsw i64 0, %321
  %mul1789 = mul nsw i64 0, %add1788
  %add1790 = add nsw i64 %mul1789, 1
  %shl1791 = shl i64 %add1790, 62
  %sub1792 = sub nsw i64 %shl1791, 1
  %mul1793 = mul nsw i64 %sub1792, 2
  %add1794 = add nsw i64 %mul1793, 1
  %sub1795 = sub nsw i64 %conv1787, %add1794
  br label %cond.end.1800

cond.false.1796:                                  ; preds = %cond.false.1773
  %322 = load i64, i64* %size180, align 8
  %add1797 = add nsw i64 0, %322
  %mul1798 = mul nsw i64 0, %add1797
  %add1799 = add nsw i64 %mul1798, 0
  br label %cond.end.1800

cond.end.1800:                                    ; preds = %cond.false.1796, %cond.true.1779
  %cond1801 = phi i64 [ %sub1795, %cond.true.1779 ], [ %add1799, %cond.false.1796 ]
  %cmp1802 = icmp eq i64 %cond1801, 0
  br i1 %cmp1802, label %land.lhs.true.1804, label %lor.lhs.false.1807

land.lhs.true.1804:                               ; preds = %cond.end.1800
  %323 = load i64, i64* %size180, align 8
  %cmp1805 = icmp slt i64 %323, 0
  br i1 %cmp1805, label %cond.true.1942, label %lor.lhs.false.1807

lor.lhs.false.1807:                               ; preds = %land.lhs.true.1804, %cond.end.1800
  br i1 false, label %cond.true.1808, label %cond.false.1868

cond.true.1808:                                   ; preds = %lor.lhs.false.1807
  %324 = load i64, i64* %size180, align 8
  %cmp1809 = icmp slt i64 %324, 0
  br i1 %cmp1809, label %cond.true.1811, label %cond.false.1834

cond.true.1811:                                   ; preds = %cond.true.1808
  %325 = load i64, i64* %size180, align 8
  %326 = load i64, i64* %size180, align 8
  %add1812 = add nsw i64 0, %326
  %mul1813 = mul nsw i64 0, %add1812
  %sub1814 = sub nsw i64 %mul1813, 1
  %cmp1815 = icmp slt i64 %sub1814, 0
  br i1 %cmp1815, label %cond.true.1817, label %cond.false.1825

cond.true.1817:                                   ; preds = %cond.true.1811
  %327 = load i64, i64* %size180, align 8
  %add1818 = add nsw i64 0, %327
  %mul1819 = mul nsw i64 0, %add1818
  %add1820 = add nsw i64 %mul1819, 1
  %shl1821 = shl i64 %add1820, 62
  %sub1822 = sub nsw i64 %shl1821, 1
  %mul1823 = mul nsw i64 %sub1822, 2
  %add1824 = add nsw i64 %mul1823, 1
  br label %cond.end.1829

cond.false.1825:                                  ; preds = %cond.true.1811
  %328 = load i64, i64* %size180, align 8
  %add1826 = add nsw i64 0, %328
  %mul1827 = mul nsw i64 0, %add1826
  %sub1828 = sub nsw i64 %mul1827, 1
  br label %cond.end.1829

cond.end.1829:                                    ; preds = %cond.false.1825, %cond.true.1817
  %cond1830 = phi i64 [ %add1824, %cond.true.1817 ], [ %sub1828, %cond.false.1825 ]
  %div1831 = sdiv i64 %cond1830, 5
  %cmp1832 = icmp slt i64 %325, %div1831
  br i1 %cmp1832, label %cond.true.1942, label %lor.lhs.false.1928

cond.false.1834:                                  ; preds = %cond.true.1808
  br i1 false, label %cond.true.1835, label %cond.false.1836

cond.true.1835:                                   ; preds = %cond.false.1834
  br i1 false, label %cond.true.1942, label %lor.lhs.false.1928

cond.false.1836:                                  ; preds = %cond.false.1834
  %329 = load i64, i64* %size180, align 8
  %add1837 = add nsw i64 0, %329
  %mul1838 = mul nsw i64 0, %add1837
  %sub1839 = sub nsw i64 %mul1838, 1
  %cmp1840 = icmp slt i64 %sub1839, 0
  br i1 %cmp1840, label %cond.true.1842, label %cond.false.1859

cond.true.1842:                                   ; preds = %cond.false.1836
  %330 = load i64, i64* %size180, align 8
  %add1843 = add nsw i64 0, %330
  %mul1844 = mul nsw i64 0, %add1843
  %add1845 = add nsw i64 %mul1844, 0
  %neg1846 = xor i64 %add1845, -1
  %cmp1847 = icmp eq i64 %neg1846, -1
  %conv1848 = zext i1 %cmp1847 to i32
  %sub1849 = sub nsw i32 0, %conv1848
  %conv1850 = sext i32 %sub1849 to i64
  %331 = load i64, i64* %size180, align 8
  %add1851 = add nsw i64 0, %331
  %mul1852 = mul nsw i64 0, %add1851
  %add1853 = add nsw i64 %mul1852, 1
  %shl1854 = shl i64 %add1853, 62
  %sub1855 = sub nsw i64 %shl1854, 1
  %mul1856 = mul nsw i64 %sub1855, 2
  %add1857 = add nsw i64 %mul1856, 1
  %sub1858 = sub nsw i64 %conv1850, %add1857
  br label %cond.end.1863

cond.false.1859:                                  ; preds = %cond.false.1836
  %332 = load i64, i64* %size180, align 8
  %add1860 = add nsw i64 0, %332
  %mul1861 = mul nsw i64 0, %add1860
  %add1862 = add nsw i64 %mul1861, 0
  br label %cond.end.1863

cond.end.1863:                                    ; preds = %cond.false.1859, %cond.true.1842
  %cond1864 = phi i64 [ %sub1858, %cond.true.1842 ], [ %add1862, %cond.false.1859 ]
  %div1865 = sdiv i64 %cond1864, 5
  %333 = load i64, i64* %size180, align 8
  %cmp1866 = icmp slt i64 %div1865, %333
  br i1 %cmp1866, label %cond.true.1942, label %lor.lhs.false.1928

cond.false.1868:                                  ; preds = %lor.lhs.false.1807
  br i1 false, label %cond.true.1869, label %cond.false.1870

cond.true.1869:                                   ; preds = %cond.false.1868
  br i1 false, label %cond.true.1942, label %lor.lhs.false.1928

cond.false.1870:                                  ; preds = %cond.false.1868
  %334 = load i64, i64* %size180, align 8
  %cmp1871 = icmp slt i64 %334, 0
  br i1 %cmp1871, label %cond.true.1873, label %cond.false.1905

cond.true.1873:                                   ; preds = %cond.false.1870
  %335 = load i64, i64* %size180, align 8
  %336 = load i64, i64* %size180, align 8
  %add1874 = add nsw i64 0, %336
  %mul1875 = mul nsw i64 0, %add1874
  %sub1876 = sub nsw i64 %mul1875, 1
  %cmp1877 = icmp slt i64 %sub1876, 0
  br i1 %cmp1877, label %cond.true.1879, label %cond.false.1896

cond.true.1879:                                   ; preds = %cond.true.1873
  %337 = load i64, i64* %size180, align 8
  %add1880 = add nsw i64 0, %337
  %mul1881 = mul nsw i64 0, %add1880
  %add1882 = add nsw i64 %mul1881, 0
  %neg1883 = xor i64 %add1882, -1
  %cmp1884 = icmp eq i64 %neg1883, -1
  %conv1885 = zext i1 %cmp1884 to i32
  %sub1886 = sub nsw i32 0, %conv1885
  %conv1887 = sext i32 %sub1886 to i64
  %338 = load i64, i64* %size180, align 8
  %add1888 = add nsw i64 0, %338
  %mul1889 = mul nsw i64 0, %add1888
  %add1890 = add nsw i64 %mul1889, 1
  %shl1891 = shl i64 %add1890, 62
  %sub1892 = sub nsw i64 %shl1891, 1
  %mul1893 = mul nsw i64 %sub1892, 2
  %add1894 = add nsw i64 %mul1893, 1
  %sub1895 = sub nsw i64 %conv1887, %add1894
  br label %cond.end.1900

cond.false.1896:                                  ; preds = %cond.true.1873
  %339 = load i64, i64* %size180, align 8
  %add1897 = add nsw i64 0, %339
  %mul1898 = mul nsw i64 0, %add1897
  %add1899 = add nsw i64 %mul1898, 0
  br label %cond.end.1900

cond.end.1900:                                    ; preds = %cond.false.1896, %cond.true.1879
  %cond1901 = phi i64 [ %sub1895, %cond.true.1879 ], [ %add1899, %cond.false.1896 ]
  %div1902 = sdiv i64 %cond1901, 5
  %cmp1903 = icmp slt i64 %335, %div1902
  br i1 %cmp1903, label %cond.true.1942, label %lor.lhs.false.1928

cond.false.1905:                                  ; preds = %cond.false.1870
  %340 = load i64, i64* %size180, align 8
  %add1906 = add nsw i64 0, %340
  %mul1907 = mul nsw i64 0, %add1906
  %sub1908 = sub nsw i64 %mul1907, 1
  %cmp1909 = icmp slt i64 %sub1908, 0
  br i1 %cmp1909, label %cond.true.1911, label %cond.false.1919

cond.true.1911:                                   ; preds = %cond.false.1905
  %341 = load i64, i64* %size180, align 8
  %add1912 = add nsw i64 0, %341
  %mul1913 = mul nsw i64 0, %add1912
  %add1914 = add nsw i64 %mul1913, 1
  %shl1915 = shl i64 %add1914, 62
  %sub1916 = sub nsw i64 %shl1915, 1
  %mul1917 = mul nsw i64 %sub1916, 2
  %add1918 = add nsw i64 %mul1917, 1
  br label %cond.end.1923

cond.false.1919:                                  ; preds = %cond.false.1905
  %342 = load i64, i64* %size180, align 8
  %add1920 = add nsw i64 0, %342
  %mul1921 = mul nsw i64 0, %add1920
  %sub1922 = sub nsw i64 %mul1921, 1
  br label %cond.end.1923

cond.end.1923:                                    ; preds = %cond.false.1919, %cond.true.1911
  %cond1924 = phi i64 [ %add1918, %cond.true.1911 ], [ %sub1922, %cond.false.1919 ]
  %div1925 = sdiv i64 %cond1924, 5
  %343 = load i64, i64* %size180, align 8
  %cmp1926 = icmp slt i64 %div1925, %343
  br i1 %cmp1926, label %cond.true.1942, label %lor.lhs.false.1928

lor.lhs.false.1928:                               ; preds = %cond.end.1923, %cond.end.1900, %cond.true.1869, %cond.end.1863, %cond.true.1835, %cond.end.1829
  %344 = load i64, i64* %size180, align 8
  %mul1929 = mul nsw i64 %344, 5
  %mul1930 = mul nsw i64 0, %mul1929
  %sub1931 = sub nsw i64 %mul1930, 1
  %cmp1932 = icmp slt i64 %sub1931, 0
  br i1 %cmp1932, label %land.lhs.true.1934, label %lor.lhs.false.1938

land.lhs.true.1934:                               ; preds = %lor.lhs.false.1928
  %345 = load i64, i64* %size180, align 8
  %mul1935 = mul nsw i64 %345, 5
  %cmp1936 = icmp slt i64 %mul1935, -9223372036854775808
  br i1 %cmp1936, label %cond.true.1942, label %lor.lhs.false.1938

lor.lhs.false.1938:                               ; preds = %land.lhs.true.1934, %lor.lhs.false.1928
  %346 = load i64, i64* %size180, align 8
  %mul1939 = mul nsw i64 %346, 5
  %cmp1940 = icmp slt i64 9223372036854775807, %mul1939
  br i1 %cmp1940, label %cond.true.1942, label %cond.false.1954

cond.true.1942:                                   ; preds = %lor.lhs.false.1938, %land.lhs.true.1934, %cond.end.1923, %cond.end.1900, %cond.true.1869, %cond.end.1863, %cond.true.1835, %cond.end.1829, %land.lhs.true.1804
  %347 = load i64, i64* %size180, align 8
  %mul1943 = mul i64 %347, 5
  %cmp1944 = icmp ule i64 %mul1943, 9223372036854775807
  br i1 %cmp1944, label %cond.true.1946, label %cond.false.1948

cond.true.1946:                                   ; preds = %cond.true.1942
  %348 = load i64, i64* %size180, align 8
  %mul1947 = mul i64 %348, 5
  br label %cond.end.1952

cond.false.1948:                                  ; preds = %cond.true.1942
  %349 = load i64, i64* %size180, align 8
  %mul1949 = mul i64 %349, 5
  %sub1950 = sub i64 %mul1949, -9223372036854775808
  %add1951 = add nsw i64 %sub1950, -9223372036854775808
  br label %cond.end.1952

cond.end.1952:                                    ; preds = %cond.false.1948, %cond.true.1946
  %cond1953 = phi i64 [ %mul1947, %cond.true.1946 ], [ %add1951, %cond.false.1948 ]
  store i64 %cond1953, i64* %o_size, align 8
  br i1 true, label %if.then.2353, label %if.end.2354

cond.false.1954:                                  ; preds = %lor.lhs.false.1938
  %350 = load i64, i64* %size180, align 8
  %mul1955 = mul i64 %350, 5
  %cmp1956 = icmp ule i64 %mul1955, 9223372036854775807
  br i1 %cmp1956, label %cond.true.1958, label %cond.false.1960

cond.true.1958:                                   ; preds = %cond.false.1954
  %351 = load i64, i64* %size180, align 8
  %mul1959 = mul i64 %351, 5
  br label %cond.end.1964

cond.false.1960:                                  ; preds = %cond.false.1954
  %352 = load i64, i64* %size180, align 8
  %mul1961 = mul i64 %352, 5
  %sub1962 = sub i64 %mul1961, -9223372036854775808
  %add1963 = add nsw i64 %sub1962, -9223372036854775808
  br label %cond.end.1964

cond.end.1964:                                    ; preds = %cond.false.1960, %cond.true.1958
  %cond1965 = phi i64 [ %mul1959, %cond.true.1958 ], [ %add1963, %cond.false.1960 ]
  store i64 %cond1965, i64* %o_size, align 8
  br i1 false, label %if.then.2353, label %if.end.2354

cond.false.1966:                                  ; preds = %cond.false.1578
  br i1 false, label %cond.true.1967, label %cond.false.2160

cond.true.1967:                                   ; preds = %cond.false.1966
  %353 = load i64, i64* %size180, align 8
  %add1968 = add nsw i64 0, %353
  %mul1969 = mul nsw i64 0, %add1968
  %sub1970 = sub nsw i64 %mul1969, 1
  %cmp1971 = icmp slt i64 %sub1970, 0
  br i1 %cmp1971, label %cond.true.1973, label %cond.false.1990

cond.true.1973:                                   ; preds = %cond.true.1967
  %354 = load i64, i64* %size180, align 8
  %add1974 = add nsw i64 0, %354
  %mul1975 = mul nsw i64 0, %add1974
  %add1976 = add nsw i64 %mul1975, 0
  %neg1977 = xor i64 %add1976, -1
  %cmp1978 = icmp eq i64 %neg1977, -1
  %conv1979 = zext i1 %cmp1978 to i32
  %sub1980 = sub nsw i32 0, %conv1979
  %conv1981 = sext i32 %sub1980 to i64
  %355 = load i64, i64* %size180, align 8
  %add1982 = add nsw i64 0, %355
  %mul1983 = mul nsw i64 0, %add1982
  %add1984 = add nsw i64 %mul1983, 1
  %shl1985 = shl i64 %add1984, 62
  %sub1986 = sub nsw i64 %shl1985, 1
  %mul1987 = mul nsw i64 %sub1986, 2
  %add1988 = add nsw i64 %mul1987, 1
  %sub1989 = sub nsw i64 %conv1981, %add1988
  br label %cond.end.1994

cond.false.1990:                                  ; preds = %cond.true.1967
  %356 = load i64, i64* %size180, align 8
  %add1991 = add nsw i64 0, %356
  %mul1992 = mul nsw i64 0, %add1991
  %add1993 = add nsw i64 %mul1992, 0
  br label %cond.end.1994

cond.end.1994:                                    ; preds = %cond.false.1990, %cond.true.1973
  %cond1995 = phi i64 [ %sub1989, %cond.true.1973 ], [ %add1993, %cond.false.1990 ]
  %cmp1996 = icmp eq i64 %cond1995, 0
  br i1 %cmp1996, label %land.lhs.true.1998, label %lor.lhs.false.2001

land.lhs.true.1998:                               ; preds = %cond.end.1994
  %357 = load i64, i64* %size180, align 8
  %cmp1999 = icmp slt i64 %357, 0
  br i1 %cmp1999, label %cond.true.2136, label %lor.lhs.false.2001

lor.lhs.false.2001:                               ; preds = %land.lhs.true.1998, %cond.end.1994
  br i1 false, label %cond.true.2002, label %cond.false.2062

cond.true.2002:                                   ; preds = %lor.lhs.false.2001
  %358 = load i64, i64* %size180, align 8
  %cmp2003 = icmp slt i64 %358, 0
  br i1 %cmp2003, label %cond.true.2005, label %cond.false.2028

cond.true.2005:                                   ; preds = %cond.true.2002
  %359 = load i64, i64* %size180, align 8
  %360 = load i64, i64* %size180, align 8
  %add2006 = add nsw i64 0, %360
  %mul2007 = mul nsw i64 0, %add2006
  %sub2008 = sub nsw i64 %mul2007, 1
  %cmp2009 = icmp slt i64 %sub2008, 0
  br i1 %cmp2009, label %cond.true.2011, label %cond.false.2019

cond.true.2011:                                   ; preds = %cond.true.2005
  %361 = load i64, i64* %size180, align 8
  %add2012 = add nsw i64 0, %361
  %mul2013 = mul nsw i64 0, %add2012
  %add2014 = add nsw i64 %mul2013, 1
  %shl2015 = shl i64 %add2014, 62
  %sub2016 = sub nsw i64 %shl2015, 1
  %mul2017 = mul nsw i64 %sub2016, 2
  %add2018 = add nsw i64 %mul2017, 1
  br label %cond.end.2023

cond.false.2019:                                  ; preds = %cond.true.2005
  %362 = load i64, i64* %size180, align 8
  %add2020 = add nsw i64 0, %362
  %mul2021 = mul nsw i64 0, %add2020
  %sub2022 = sub nsw i64 %mul2021, 1
  br label %cond.end.2023

cond.end.2023:                                    ; preds = %cond.false.2019, %cond.true.2011
  %cond2024 = phi i64 [ %add2018, %cond.true.2011 ], [ %sub2022, %cond.false.2019 ]
  %div2025 = sdiv i64 %cond2024, 5
  %cmp2026 = icmp slt i64 %359, %div2025
  br i1 %cmp2026, label %cond.true.2136, label %lor.lhs.false.2122

cond.false.2028:                                  ; preds = %cond.true.2002
  br i1 false, label %cond.true.2029, label %cond.false.2030

cond.true.2029:                                   ; preds = %cond.false.2028
  br i1 false, label %cond.true.2136, label %lor.lhs.false.2122

cond.false.2030:                                  ; preds = %cond.false.2028
  %363 = load i64, i64* %size180, align 8
  %add2031 = add nsw i64 0, %363
  %mul2032 = mul nsw i64 0, %add2031
  %sub2033 = sub nsw i64 %mul2032, 1
  %cmp2034 = icmp slt i64 %sub2033, 0
  br i1 %cmp2034, label %cond.true.2036, label %cond.false.2053

cond.true.2036:                                   ; preds = %cond.false.2030
  %364 = load i64, i64* %size180, align 8
  %add2037 = add nsw i64 0, %364
  %mul2038 = mul nsw i64 0, %add2037
  %add2039 = add nsw i64 %mul2038, 0
  %neg2040 = xor i64 %add2039, -1
  %cmp2041 = icmp eq i64 %neg2040, -1
  %conv2042 = zext i1 %cmp2041 to i32
  %sub2043 = sub nsw i32 0, %conv2042
  %conv2044 = sext i32 %sub2043 to i64
  %365 = load i64, i64* %size180, align 8
  %add2045 = add nsw i64 0, %365
  %mul2046 = mul nsw i64 0, %add2045
  %add2047 = add nsw i64 %mul2046, 1
  %shl2048 = shl i64 %add2047, 62
  %sub2049 = sub nsw i64 %shl2048, 1
  %mul2050 = mul nsw i64 %sub2049, 2
  %add2051 = add nsw i64 %mul2050, 1
  %sub2052 = sub nsw i64 %conv2044, %add2051
  br label %cond.end.2057

cond.false.2053:                                  ; preds = %cond.false.2030
  %366 = load i64, i64* %size180, align 8
  %add2054 = add nsw i64 0, %366
  %mul2055 = mul nsw i64 0, %add2054
  %add2056 = add nsw i64 %mul2055, 0
  br label %cond.end.2057

cond.end.2057:                                    ; preds = %cond.false.2053, %cond.true.2036
  %cond2058 = phi i64 [ %sub2052, %cond.true.2036 ], [ %add2056, %cond.false.2053 ]
  %div2059 = sdiv i64 %cond2058, 5
  %367 = load i64, i64* %size180, align 8
  %cmp2060 = icmp slt i64 %div2059, %367
  br i1 %cmp2060, label %cond.true.2136, label %lor.lhs.false.2122

cond.false.2062:                                  ; preds = %lor.lhs.false.2001
  br i1 false, label %cond.true.2063, label %cond.false.2064

cond.true.2063:                                   ; preds = %cond.false.2062
  br i1 false, label %cond.true.2136, label %lor.lhs.false.2122

cond.false.2064:                                  ; preds = %cond.false.2062
  %368 = load i64, i64* %size180, align 8
  %cmp2065 = icmp slt i64 %368, 0
  br i1 %cmp2065, label %cond.true.2067, label %cond.false.2099

cond.true.2067:                                   ; preds = %cond.false.2064
  %369 = load i64, i64* %size180, align 8
  %370 = load i64, i64* %size180, align 8
  %add2068 = add nsw i64 0, %370
  %mul2069 = mul nsw i64 0, %add2068
  %sub2070 = sub nsw i64 %mul2069, 1
  %cmp2071 = icmp slt i64 %sub2070, 0
  br i1 %cmp2071, label %cond.true.2073, label %cond.false.2090

cond.true.2073:                                   ; preds = %cond.true.2067
  %371 = load i64, i64* %size180, align 8
  %add2074 = add nsw i64 0, %371
  %mul2075 = mul nsw i64 0, %add2074
  %add2076 = add nsw i64 %mul2075, 0
  %neg2077 = xor i64 %add2076, -1
  %cmp2078 = icmp eq i64 %neg2077, -1
  %conv2079 = zext i1 %cmp2078 to i32
  %sub2080 = sub nsw i32 0, %conv2079
  %conv2081 = sext i32 %sub2080 to i64
  %372 = load i64, i64* %size180, align 8
  %add2082 = add nsw i64 0, %372
  %mul2083 = mul nsw i64 0, %add2082
  %add2084 = add nsw i64 %mul2083, 1
  %shl2085 = shl i64 %add2084, 62
  %sub2086 = sub nsw i64 %shl2085, 1
  %mul2087 = mul nsw i64 %sub2086, 2
  %add2088 = add nsw i64 %mul2087, 1
  %sub2089 = sub nsw i64 %conv2081, %add2088
  br label %cond.end.2094

cond.false.2090:                                  ; preds = %cond.true.2067
  %373 = load i64, i64* %size180, align 8
  %add2091 = add nsw i64 0, %373
  %mul2092 = mul nsw i64 0, %add2091
  %add2093 = add nsw i64 %mul2092, 0
  br label %cond.end.2094

cond.end.2094:                                    ; preds = %cond.false.2090, %cond.true.2073
  %cond2095 = phi i64 [ %sub2089, %cond.true.2073 ], [ %add2093, %cond.false.2090 ]
  %div2096 = sdiv i64 %cond2095, 5
  %cmp2097 = icmp slt i64 %369, %div2096
  br i1 %cmp2097, label %cond.true.2136, label %lor.lhs.false.2122

cond.false.2099:                                  ; preds = %cond.false.2064
  %374 = load i64, i64* %size180, align 8
  %add2100 = add nsw i64 0, %374
  %mul2101 = mul nsw i64 0, %add2100
  %sub2102 = sub nsw i64 %mul2101, 1
  %cmp2103 = icmp slt i64 %sub2102, 0
  br i1 %cmp2103, label %cond.true.2105, label %cond.false.2113

cond.true.2105:                                   ; preds = %cond.false.2099
  %375 = load i64, i64* %size180, align 8
  %add2106 = add nsw i64 0, %375
  %mul2107 = mul nsw i64 0, %add2106
  %add2108 = add nsw i64 %mul2107, 1
  %shl2109 = shl i64 %add2108, 62
  %sub2110 = sub nsw i64 %shl2109, 1
  %mul2111 = mul nsw i64 %sub2110, 2
  %add2112 = add nsw i64 %mul2111, 1
  br label %cond.end.2117

cond.false.2113:                                  ; preds = %cond.false.2099
  %376 = load i64, i64* %size180, align 8
  %add2114 = add nsw i64 0, %376
  %mul2115 = mul nsw i64 0, %add2114
  %sub2116 = sub nsw i64 %mul2115, 1
  br label %cond.end.2117

cond.end.2117:                                    ; preds = %cond.false.2113, %cond.true.2105
  %cond2118 = phi i64 [ %add2112, %cond.true.2105 ], [ %sub2116, %cond.false.2113 ]
  %div2119 = sdiv i64 %cond2118, 5
  %377 = load i64, i64* %size180, align 8
  %cmp2120 = icmp slt i64 %div2119, %377
  br i1 %cmp2120, label %cond.true.2136, label %lor.lhs.false.2122

lor.lhs.false.2122:                               ; preds = %cond.end.2117, %cond.end.2094, %cond.true.2063, %cond.end.2057, %cond.true.2029, %cond.end.2023
  %378 = load i64, i64* %size180, align 8
  %mul2123 = mul nsw i64 %378, 5
  %mul2124 = mul nsw i64 0, %mul2123
  %sub2125 = sub nsw i64 %mul2124, 1
  %cmp2126 = icmp slt i64 %sub2125, 0
  br i1 %cmp2126, label %land.lhs.true.2128, label %lor.lhs.false.2132

land.lhs.true.2128:                               ; preds = %lor.lhs.false.2122
  %379 = load i64, i64* %size180, align 8
  %mul2129 = mul nsw i64 %379, 5
  %cmp2130 = icmp slt i64 %mul2129, -9223372036854775808
  br i1 %cmp2130, label %cond.true.2136, label %lor.lhs.false.2132

lor.lhs.false.2132:                               ; preds = %land.lhs.true.2128, %lor.lhs.false.2122
  %380 = load i64, i64* %size180, align 8
  %mul2133 = mul nsw i64 %380, 5
  %cmp2134 = icmp slt i64 9223372036854775807, %mul2133
  br i1 %cmp2134, label %cond.true.2136, label %cond.false.2148

cond.true.2136:                                   ; preds = %lor.lhs.false.2132, %land.lhs.true.2128, %cond.end.2117, %cond.end.2094, %cond.true.2063, %cond.end.2057, %cond.true.2029, %cond.end.2023, %land.lhs.true.1998
  %381 = load i64, i64* %size180, align 8
  %mul2137 = mul i64 %381, 5
  %cmp2138 = icmp ule i64 %mul2137, 9223372036854775807
  br i1 %cmp2138, label %cond.true.2140, label %cond.false.2142

cond.true.2140:                                   ; preds = %cond.true.2136
  %382 = load i64, i64* %size180, align 8
  %mul2141 = mul i64 %382, 5
  br label %cond.end.2146

cond.false.2142:                                  ; preds = %cond.true.2136
  %383 = load i64, i64* %size180, align 8
  %mul2143 = mul i64 %383, 5
  %sub2144 = sub i64 %mul2143, -9223372036854775808
  %add2145 = add nsw i64 %sub2144, -9223372036854775808
  br label %cond.end.2146

cond.end.2146:                                    ; preds = %cond.false.2142, %cond.true.2140
  %cond2147 = phi i64 [ %mul2141, %cond.true.2140 ], [ %add2145, %cond.false.2142 ]
  store i64 %cond2147, i64* %o_size, align 8
  br i1 true, label %if.then.2353, label %if.end.2354

cond.false.2148:                                  ; preds = %lor.lhs.false.2132
  %384 = load i64, i64* %size180, align 8
  %mul2149 = mul i64 %384, 5
  %cmp2150 = icmp ule i64 %mul2149, 9223372036854775807
  br i1 %cmp2150, label %cond.true.2152, label %cond.false.2154

cond.true.2152:                                   ; preds = %cond.false.2148
  %385 = load i64, i64* %size180, align 8
  %mul2153 = mul i64 %385, 5
  br label %cond.end.2158

cond.false.2154:                                  ; preds = %cond.false.2148
  %386 = load i64, i64* %size180, align 8
  %mul2155 = mul i64 %386, 5
  %sub2156 = sub i64 %mul2155, -9223372036854775808
  %add2157 = add nsw i64 %sub2156, -9223372036854775808
  br label %cond.end.2158

cond.end.2158:                                    ; preds = %cond.false.2154, %cond.true.2152
  %cond2159 = phi i64 [ %mul2153, %cond.true.2152 ], [ %add2157, %cond.false.2154 ]
  store i64 %cond2159, i64* %o_size, align 8
  br i1 false, label %if.then.2353, label %if.end.2354

cond.false.2160:                                  ; preds = %cond.false.1966
  %387 = load i64, i64* %size180, align 8
  %add2161 = add nsw i64 0, %387
  %mul2162 = mul nsw i64 0, %add2161
  %sub2163 = sub nsw i64 %mul2162, 1
  %cmp2164 = icmp slt i64 %sub2163, 0
  br i1 %cmp2164, label %cond.true.2166, label %cond.false.2183

cond.true.2166:                                   ; preds = %cond.false.2160
  %388 = load i64, i64* %size180, align 8
  %add2167 = add nsw i64 0, %388
  %mul2168 = mul nsw i64 0, %add2167
  %add2169 = add nsw i64 %mul2168, 0
  %neg2170 = xor i64 %add2169, -1
  %cmp2171 = icmp eq i64 %neg2170, -1
  %conv2172 = zext i1 %cmp2171 to i32
  %sub2173 = sub nsw i32 0, %conv2172
  %conv2174 = sext i32 %sub2173 to i64
  %389 = load i64, i64* %size180, align 8
  %add2175 = add nsw i64 0, %389
  %mul2176 = mul nsw i64 0, %add2175
  %add2177 = add nsw i64 %mul2176, 1
  %shl2178 = shl i64 %add2177, 62
  %sub2179 = sub nsw i64 %shl2178, 1
  %mul2180 = mul nsw i64 %sub2179, 2
  %add2181 = add nsw i64 %mul2180, 1
  %sub2182 = sub nsw i64 %conv2174, %add2181
  br label %cond.end.2187

cond.false.2183:                                  ; preds = %cond.false.2160
  %390 = load i64, i64* %size180, align 8
  %add2184 = add nsw i64 0, %390
  %mul2185 = mul nsw i64 0, %add2184
  %add2186 = add nsw i64 %mul2185, 0
  br label %cond.end.2187

cond.end.2187:                                    ; preds = %cond.false.2183, %cond.true.2166
  %cond2188 = phi i64 [ %sub2182, %cond.true.2166 ], [ %add2186, %cond.false.2183 ]
  %cmp2189 = icmp eq i64 %cond2188, 0
  br i1 %cmp2189, label %land.lhs.true.2191, label %lor.lhs.false.2194

land.lhs.true.2191:                               ; preds = %cond.end.2187
  %391 = load i64, i64* %size180, align 8
  %cmp2192 = icmp slt i64 %391, 0
  br i1 %cmp2192, label %cond.true.2329, label %lor.lhs.false.2194

lor.lhs.false.2194:                               ; preds = %land.lhs.true.2191, %cond.end.2187
  br i1 false, label %cond.true.2195, label %cond.false.2255

cond.true.2195:                                   ; preds = %lor.lhs.false.2194
  %392 = load i64, i64* %size180, align 8
  %cmp2196 = icmp slt i64 %392, 0
  br i1 %cmp2196, label %cond.true.2198, label %cond.false.2221

cond.true.2198:                                   ; preds = %cond.true.2195
  %393 = load i64, i64* %size180, align 8
  %394 = load i64, i64* %size180, align 8
  %add2199 = add nsw i64 0, %394
  %mul2200 = mul nsw i64 0, %add2199
  %sub2201 = sub nsw i64 %mul2200, 1
  %cmp2202 = icmp slt i64 %sub2201, 0
  br i1 %cmp2202, label %cond.true.2204, label %cond.false.2212

cond.true.2204:                                   ; preds = %cond.true.2198
  %395 = load i64, i64* %size180, align 8
  %add2205 = add nsw i64 0, %395
  %mul2206 = mul nsw i64 0, %add2205
  %add2207 = add nsw i64 %mul2206, 1
  %shl2208 = shl i64 %add2207, 62
  %sub2209 = sub nsw i64 %shl2208, 1
  %mul2210 = mul nsw i64 %sub2209, 2
  %add2211 = add nsw i64 %mul2210, 1
  br label %cond.end.2216

cond.false.2212:                                  ; preds = %cond.true.2198
  %396 = load i64, i64* %size180, align 8
  %add2213 = add nsw i64 0, %396
  %mul2214 = mul nsw i64 0, %add2213
  %sub2215 = sub nsw i64 %mul2214, 1
  br label %cond.end.2216

cond.end.2216:                                    ; preds = %cond.false.2212, %cond.true.2204
  %cond2217 = phi i64 [ %add2211, %cond.true.2204 ], [ %sub2215, %cond.false.2212 ]
  %div2218 = sdiv i64 %cond2217, 5
  %cmp2219 = icmp slt i64 %393, %div2218
  br i1 %cmp2219, label %cond.true.2329, label %lor.lhs.false.2315

cond.false.2221:                                  ; preds = %cond.true.2195
  br i1 false, label %cond.true.2222, label %cond.false.2223

cond.true.2222:                                   ; preds = %cond.false.2221
  br i1 false, label %cond.true.2329, label %lor.lhs.false.2315

cond.false.2223:                                  ; preds = %cond.false.2221
  %397 = load i64, i64* %size180, align 8
  %add2224 = add nsw i64 0, %397
  %mul2225 = mul nsw i64 0, %add2224
  %sub2226 = sub nsw i64 %mul2225, 1
  %cmp2227 = icmp slt i64 %sub2226, 0
  br i1 %cmp2227, label %cond.true.2229, label %cond.false.2246

cond.true.2229:                                   ; preds = %cond.false.2223
  %398 = load i64, i64* %size180, align 8
  %add2230 = add nsw i64 0, %398
  %mul2231 = mul nsw i64 0, %add2230
  %add2232 = add nsw i64 %mul2231, 0
  %neg2233 = xor i64 %add2232, -1
  %cmp2234 = icmp eq i64 %neg2233, -1
  %conv2235 = zext i1 %cmp2234 to i32
  %sub2236 = sub nsw i32 0, %conv2235
  %conv2237 = sext i32 %sub2236 to i64
  %399 = load i64, i64* %size180, align 8
  %add2238 = add nsw i64 0, %399
  %mul2239 = mul nsw i64 0, %add2238
  %add2240 = add nsw i64 %mul2239, 1
  %shl2241 = shl i64 %add2240, 62
  %sub2242 = sub nsw i64 %shl2241, 1
  %mul2243 = mul nsw i64 %sub2242, 2
  %add2244 = add nsw i64 %mul2243, 1
  %sub2245 = sub nsw i64 %conv2237, %add2244
  br label %cond.end.2250

cond.false.2246:                                  ; preds = %cond.false.2223
  %400 = load i64, i64* %size180, align 8
  %add2247 = add nsw i64 0, %400
  %mul2248 = mul nsw i64 0, %add2247
  %add2249 = add nsw i64 %mul2248, 0
  br label %cond.end.2250

cond.end.2250:                                    ; preds = %cond.false.2246, %cond.true.2229
  %cond2251 = phi i64 [ %sub2245, %cond.true.2229 ], [ %add2249, %cond.false.2246 ]
  %div2252 = sdiv i64 %cond2251, 5
  %401 = load i64, i64* %size180, align 8
  %cmp2253 = icmp slt i64 %div2252, %401
  br i1 %cmp2253, label %cond.true.2329, label %lor.lhs.false.2315

cond.false.2255:                                  ; preds = %lor.lhs.false.2194
  br i1 false, label %cond.true.2256, label %cond.false.2257

cond.true.2256:                                   ; preds = %cond.false.2255
  br i1 false, label %cond.true.2329, label %lor.lhs.false.2315

cond.false.2257:                                  ; preds = %cond.false.2255
  %402 = load i64, i64* %size180, align 8
  %cmp2258 = icmp slt i64 %402, 0
  br i1 %cmp2258, label %cond.true.2260, label %cond.false.2292

cond.true.2260:                                   ; preds = %cond.false.2257
  %403 = load i64, i64* %size180, align 8
  %404 = load i64, i64* %size180, align 8
  %add2261 = add nsw i64 0, %404
  %mul2262 = mul nsw i64 0, %add2261
  %sub2263 = sub nsw i64 %mul2262, 1
  %cmp2264 = icmp slt i64 %sub2263, 0
  br i1 %cmp2264, label %cond.true.2266, label %cond.false.2283

cond.true.2266:                                   ; preds = %cond.true.2260
  %405 = load i64, i64* %size180, align 8
  %add2267 = add nsw i64 0, %405
  %mul2268 = mul nsw i64 0, %add2267
  %add2269 = add nsw i64 %mul2268, 0
  %neg2270 = xor i64 %add2269, -1
  %cmp2271 = icmp eq i64 %neg2270, -1
  %conv2272 = zext i1 %cmp2271 to i32
  %sub2273 = sub nsw i32 0, %conv2272
  %conv2274 = sext i32 %sub2273 to i64
  %406 = load i64, i64* %size180, align 8
  %add2275 = add nsw i64 0, %406
  %mul2276 = mul nsw i64 0, %add2275
  %add2277 = add nsw i64 %mul2276, 1
  %shl2278 = shl i64 %add2277, 62
  %sub2279 = sub nsw i64 %shl2278, 1
  %mul2280 = mul nsw i64 %sub2279, 2
  %add2281 = add nsw i64 %mul2280, 1
  %sub2282 = sub nsw i64 %conv2274, %add2281
  br label %cond.end.2287

cond.false.2283:                                  ; preds = %cond.true.2260
  %407 = load i64, i64* %size180, align 8
  %add2284 = add nsw i64 0, %407
  %mul2285 = mul nsw i64 0, %add2284
  %add2286 = add nsw i64 %mul2285, 0
  br label %cond.end.2287

cond.end.2287:                                    ; preds = %cond.false.2283, %cond.true.2266
  %cond2288 = phi i64 [ %sub2282, %cond.true.2266 ], [ %add2286, %cond.false.2283 ]
  %div2289 = sdiv i64 %cond2288, 5
  %cmp2290 = icmp slt i64 %403, %div2289
  br i1 %cmp2290, label %cond.true.2329, label %lor.lhs.false.2315

cond.false.2292:                                  ; preds = %cond.false.2257
  %408 = load i64, i64* %size180, align 8
  %add2293 = add nsw i64 0, %408
  %mul2294 = mul nsw i64 0, %add2293
  %sub2295 = sub nsw i64 %mul2294, 1
  %cmp2296 = icmp slt i64 %sub2295, 0
  br i1 %cmp2296, label %cond.true.2298, label %cond.false.2306

cond.true.2298:                                   ; preds = %cond.false.2292
  %409 = load i64, i64* %size180, align 8
  %add2299 = add nsw i64 0, %409
  %mul2300 = mul nsw i64 0, %add2299
  %add2301 = add nsw i64 %mul2300, 1
  %shl2302 = shl i64 %add2301, 62
  %sub2303 = sub nsw i64 %shl2302, 1
  %mul2304 = mul nsw i64 %sub2303, 2
  %add2305 = add nsw i64 %mul2304, 1
  br label %cond.end.2310

cond.false.2306:                                  ; preds = %cond.false.2292
  %410 = load i64, i64* %size180, align 8
  %add2307 = add nsw i64 0, %410
  %mul2308 = mul nsw i64 0, %add2307
  %sub2309 = sub nsw i64 %mul2308, 1
  br label %cond.end.2310

cond.end.2310:                                    ; preds = %cond.false.2306, %cond.true.2298
  %cond2311 = phi i64 [ %add2305, %cond.true.2298 ], [ %sub2309, %cond.false.2306 ]
  %div2312 = sdiv i64 %cond2311, 5
  %411 = load i64, i64* %size180, align 8
  %cmp2313 = icmp slt i64 %div2312, %411
  br i1 %cmp2313, label %cond.true.2329, label %lor.lhs.false.2315

lor.lhs.false.2315:                               ; preds = %cond.end.2310, %cond.end.2287, %cond.true.2256, %cond.end.2250, %cond.true.2222, %cond.end.2216
  %412 = load i64, i64* %size180, align 8
  %mul2316 = mul nsw i64 %412, 5
  %mul2317 = mul nsw i64 0, %mul2316
  %sub2318 = sub nsw i64 %mul2317, 1
  %cmp2319 = icmp slt i64 %sub2318, 0
  br i1 %cmp2319, label %land.lhs.true.2321, label %lor.lhs.false.2325

land.lhs.true.2321:                               ; preds = %lor.lhs.false.2315
  %413 = load i64, i64* %size180, align 8
  %mul2322 = mul nsw i64 %413, 5
  %cmp2323 = icmp slt i64 %mul2322, -9223372036854775808
  br i1 %cmp2323, label %cond.true.2329, label %lor.lhs.false.2325

lor.lhs.false.2325:                               ; preds = %land.lhs.true.2321, %lor.lhs.false.2315
  %414 = load i64, i64* %size180, align 8
  %mul2326 = mul nsw i64 %414, 5
  %cmp2327 = icmp slt i64 9223372036854775807, %mul2326
  br i1 %cmp2327, label %cond.true.2329, label %cond.false.2341

cond.true.2329:                                   ; preds = %lor.lhs.false.2325, %land.lhs.true.2321, %cond.end.2310, %cond.end.2287, %cond.true.2256, %cond.end.2250, %cond.true.2222, %cond.end.2216, %land.lhs.true.2191
  %415 = load i64, i64* %size180, align 8
  %mul2330 = mul i64 %415, 5
  %cmp2331 = icmp ule i64 %mul2330, 9223372036854775807
  br i1 %cmp2331, label %cond.true.2333, label %cond.false.2335

cond.true.2333:                                   ; preds = %cond.true.2329
  %416 = load i64, i64* %size180, align 8
  %mul2334 = mul i64 %416, 5
  br label %cond.end.2339

cond.false.2335:                                  ; preds = %cond.true.2329
  %417 = load i64, i64* %size180, align 8
  %mul2336 = mul i64 %417, 5
  %sub2337 = sub i64 %mul2336, -9223372036854775808
  %add2338 = add nsw i64 %sub2337, -9223372036854775808
  br label %cond.end.2339

cond.end.2339:                                    ; preds = %cond.false.2335, %cond.true.2333
  %cond2340 = phi i64 [ %mul2334, %cond.true.2333 ], [ %add2338, %cond.false.2335 ]
  store i64 %cond2340, i64* %o_size, align 8
  br i1 true, label %if.then.2353, label %if.end.2354

cond.false.2341:                                  ; preds = %lor.lhs.false.2325
  %418 = load i64, i64* %size180, align 8
  %mul2342 = mul i64 %418, 5
  %cmp2343 = icmp ule i64 %mul2342, 9223372036854775807
  br i1 %cmp2343, label %cond.true.2345, label %cond.false.2347

cond.true.2345:                                   ; preds = %cond.false.2341
  %419 = load i64, i64* %size180, align 8
  %mul2346 = mul i64 %419, 5
  br label %cond.end.2351

cond.false.2347:                                  ; preds = %cond.false.2341
  %420 = load i64, i64* %size180, align 8
  %mul2348 = mul i64 %420, 5
  %sub2349 = sub i64 %mul2348, -9223372036854775808
  %add2350 = add nsw i64 %sub2349, -9223372036854775808
  br label %cond.end.2351

cond.end.2351:                                    ; preds = %cond.false.2347, %cond.true.2345
  %cond2352 = phi i64 [ %mul2346, %cond.true.2345 ], [ %add2350, %cond.false.2347 ]
  store i64 %cond2352, i64* %o_size, align 8
  br i1 false, label %if.then.2353, label %if.end.2354

if.then.2353:                                     ; preds = %cond.end.2351, %cond.end.2339, %cond.end.2158, %cond.end.2146, %cond.end.1964, %cond.end.1952, %cond.end.1771, %cond.end.1759, %cond.end.1575, %cond.end.1559, %cond.end.1374, %cond.end.1358, %cond.end.1146, %cond.end.1123, %cond.end.931, %cond.end.908, %cond.end.661, %cond.end.638, %cond.end.446, %cond.end.423
  store i64 9223372036854775807, i64* %o_size, align 8
  br label %if.end.2354

if.end.2354:                                      ; preds = %if.then.2353, %cond.end.2351, %cond.end.2339, %cond.end.2158, %cond.end.2146, %cond.end.1964, %cond.end.1952, %cond.end.1771, %cond.end.1759, %cond.end.1575, %cond.end.1559, %cond.end.1374, %cond.end.1358, %cond.end.1146, %cond.end.1123, %cond.end.931, %cond.end.908, %cond.end.661, %cond.end.638, %cond.end.446, %cond.end.423
  %421 = load i64, i64* %o_size, align 8
  %422 = load i64, i64* %sa_avail, align 8
  %cmp2355 = icmp sle i64 %421, %422
  br i1 %cmp2355, label %cond.true.2357, label %cond.false.2359

cond.true.2357:                                   ; preds = %if.end.2354
  %423 = load i64, i64* %o_size, align 8
  %424 = load i64, i64* %sa_avail, align 8
  %sub2358 = sub nsw i64 %424, %423
  store i64 %sub2358, i64* %sa_avail, align 8
  %425 = load i64, i64* %o_size, align 8
  %426 = alloca i8, i64 %425
  br label %cond.end.2361

cond.false.2359:                                  ; preds = %if.end.2354
  store i8 1, i8* %sa_must_free, align 1
  %427 = load i64, i64* %o_size, align 8
  %call2360 = call i8* @record_xmalloc(i64 %427)
  br label %cond.end.2361

cond.end.2361:                                    ; preds = %cond.false.2359, %cond.true.2357
  %cond2362 = phi i8* [ %426, %cond.true.2357 ], [ %call2360, %cond.false.2359 ]
  store i8* %cond2362, i8** %dst, align 8
  %428 = load i8*, i8** %dst, align 8
  store i8* %428, i8** %o, align 8
  store i64 0, i64* %i_byte, align 8
  store i64 0, i64* %i179, align 8
  br label %for.cond.2363

for.cond.2363:                                    ; preds = %for.inc.2537, %cond.end.2361
  %429 = load i64, i64* %i179, align 8
  %430 = load i64, i64* %size180, align 8
  %cmp2364 = icmp slt i64 %429, %430
  br i1 %cmp2364, label %for.body.2366, label %for.end.2541

for.body.2366:                                    ; preds = %for.cond.2363
  %431 = load i64, i64* %o_size, align 8
  %sub2367 = sub nsw i64 %431, 5
  %432 = load i8*, i8** %o, align 8
  %433 = load i8*, i8** %dst, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %432 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %433 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp2368 = icmp slt i64 %sub2367, %sub.ptr.sub
  br i1 %cmp2368, label %if.then.2370, label %if.end.2371

if.then.2370:                                     ; preds = %for.body.2366
  call void @string_overflow() #3
  unreachable

if.end.2371:                                      ; preds = %for.body.2366
  %434 = load i64, i64* %obj.addr, align 8
  %call2372 = call i8* @SDATA(i64 %434)
  %435 = load i64, i64* %i_byte, align 8
  %add.ptr = getelementptr inbounds i8, i8* %call2372, i64 %435
  %arrayidx2373 = getelementptr inbounds i8, i8* %add.ptr, i64 0
  %436 = load i8, i8* %arrayidx2373, align 1
  %conv2374 = zext i8 %436 to i32
  %and2375 = and i32 %conv2374, 128
  %tobool2376 = icmp ne i32 %and2375, 0
  br i1 %tobool2376, label %cond.false.2382, label %cond.true.2377

cond.true.2377:                                   ; preds = %if.end.2371
  store i32 1, i32* %len, align 4
  %437 = load i64, i64* %obj.addr, align 8
  %call2378 = call i8* @SDATA(i64 %437)
  %438 = load i64, i64* %i_byte, align 8
  %add.ptr2379 = getelementptr inbounds i8, i8* %call2378, i64 %438
  %arrayidx2380 = getelementptr inbounds i8, i8* %add.ptr2379, i64 0
  %439 = load i8, i8* %arrayidx2380, align 1
  %conv2381 = zext i8 %439 to i32
  br label %cond.end.2445

cond.false.2382:                                  ; preds = %if.end.2371
  %440 = load i64, i64* %obj.addr, align 8
  %call2383 = call i8* @SDATA(i64 %440)
  %441 = load i64, i64* %i_byte, align 8
  %add.ptr2384 = getelementptr inbounds i8, i8* %call2383, i64 %441
  %arrayidx2385 = getelementptr inbounds i8, i8* %add.ptr2384, i64 0
  %442 = load i8, i8* %arrayidx2385, align 1
  %conv2386 = zext i8 %442 to i32
  %and2387 = and i32 %conv2386, 32
  %tobool2388 = icmp ne i32 %and2387, 0
  br i1 %tobool2388, label %cond.false.2410, label %cond.true.2389

cond.true.2389:                                   ; preds = %cond.false.2382
  store i32 2, i32* %len, align 4
  %443 = load i64, i64* %obj.addr, align 8
  %call2390 = call i8* @SDATA(i64 %443)
  %444 = load i64, i64* %i_byte, align 8
  %add.ptr2391 = getelementptr inbounds i8, i8* %call2390, i64 %444
  %arrayidx2392 = getelementptr inbounds i8, i8* %add.ptr2391, i64 0
  %445 = load i8, i8* %arrayidx2392, align 1
  %conv2393 = zext i8 %445 to i32
  %and2394 = and i32 %conv2393, 31
  %shl2395 = shl i32 %and2394, 6
  %446 = load i64, i64* %obj.addr, align 8
  %call2396 = call i8* @SDATA(i64 %446)
  %447 = load i64, i64* %i_byte, align 8
  %add.ptr2397 = getelementptr inbounds i8, i8* %call2396, i64 %447
  %arrayidx2398 = getelementptr inbounds i8, i8* %add.ptr2397, i64 1
  %448 = load i8, i8* %arrayidx2398, align 1
  %conv2399 = zext i8 %448 to i32
  %and2400 = and i32 %conv2399, 63
  %or2401 = or i32 %shl2395, %and2400
  %449 = load i64, i64* %obj.addr, align 8
  %call2402 = call i8* @SDATA(i64 %449)
  %450 = load i64, i64* %i_byte, align 8
  %add.ptr2403 = getelementptr inbounds i8, i8* %call2402, i64 %450
  %arrayidx2404 = getelementptr inbounds i8, i8* %add.ptr2403, i64 0
  %451 = load i8, i8* %arrayidx2404, align 1
  %conv2405 = zext i8 %451 to i32
  %cmp2406 = icmp slt i32 %conv2405, 194
  %cond2408 = select i1 %cmp2406, i32 4194176, i32 0
  %add2409 = add nsw i32 %or2401, %cond2408
  br label %cond.end.2443

cond.false.2410:                                  ; preds = %cond.false.2382
  %452 = load i64, i64* %obj.addr, align 8
  %call2411 = call i8* @SDATA(i64 %452)
  %453 = load i64, i64* %i_byte, align 8
  %add.ptr2412 = getelementptr inbounds i8, i8* %call2411, i64 %453
  %arrayidx2413 = getelementptr inbounds i8, i8* %add.ptr2412, i64 0
  %454 = load i8, i8* %arrayidx2413, align 1
  %conv2414 = zext i8 %454 to i32
  %and2415 = and i32 %conv2414, 16
  %tobool2416 = icmp ne i32 %and2415, 0
  br i1 %tobool2416, label %cond.false.2437, label %cond.true.2417

cond.true.2417:                                   ; preds = %cond.false.2410
  store i32 3, i32* %len, align 4
  %455 = load i64, i64* %obj.addr, align 8
  %call2418 = call i8* @SDATA(i64 %455)
  %456 = load i64, i64* %i_byte, align 8
  %add.ptr2419 = getelementptr inbounds i8, i8* %call2418, i64 %456
  %arrayidx2420 = getelementptr inbounds i8, i8* %add.ptr2419, i64 0
  %457 = load i8, i8* %arrayidx2420, align 1
  %conv2421 = zext i8 %457 to i32
  %and2422 = and i32 %conv2421, 15
  %shl2423 = shl i32 %and2422, 12
  %458 = load i64, i64* %obj.addr, align 8
  %call2424 = call i8* @SDATA(i64 %458)
  %459 = load i64, i64* %i_byte, align 8
  %add.ptr2425 = getelementptr inbounds i8, i8* %call2424, i64 %459
  %arrayidx2426 = getelementptr inbounds i8, i8* %add.ptr2425, i64 1
  %460 = load i8, i8* %arrayidx2426, align 1
  %conv2427 = zext i8 %460 to i32
  %and2428 = and i32 %conv2427, 63
  %shl2429 = shl i32 %and2428, 6
  %or2430 = or i32 %shl2423, %shl2429
  %461 = load i64, i64* %obj.addr, align 8
  %call2431 = call i8* @SDATA(i64 %461)
  %462 = load i64, i64* %i_byte, align 8
  %add.ptr2432 = getelementptr inbounds i8, i8* %call2431, i64 %462
  %arrayidx2433 = getelementptr inbounds i8, i8* %add.ptr2432, i64 2
  %463 = load i8, i8* %arrayidx2433, align 1
  %conv2434 = zext i8 %463 to i32
  %and2435 = and i32 %conv2434, 63
  %or2436 = or i32 %or2430, %and2435
  br label %cond.end.2441

cond.false.2437:                                  ; preds = %cond.false.2410
  %464 = load i64, i64* %obj.addr, align 8
  %call2438 = call i8* @SDATA(i64 %464)
  %465 = load i64, i64* %i_byte, align 8
  %add.ptr2439 = getelementptr inbounds i8, i8* %call2438, i64 %465
  %call2440 = call i32 @string_char(i8* %add.ptr2439, i8** null, i32* %len)
  br label %cond.end.2441

cond.end.2441:                                    ; preds = %cond.false.2437, %cond.true.2417
  %cond2442 = phi i32 [ %or2436, %cond.true.2417 ], [ %call2440, %cond.false.2437 ]
  br label %cond.end.2443

cond.end.2443:                                    ; preds = %cond.end.2441, %cond.true.2389
  %cond2444 = phi i32 [ %add2409, %cond.true.2389 ], [ %cond2442, %cond.end.2441 ]
  br label %cond.end.2445

cond.end.2445:                                    ; preds = %cond.end.2443, %cond.true.2377
  %cond2446 = phi i32 [ %conv2381, %cond.true.2377 ], [ %cond2444, %cond.end.2443 ]
  store i32 %cond2446, i32* %c, align 4
  %466 = load i8, i8* %inword, align 1
  %tobool2447 = trunc i8 %466 to i1
  br i1 %tobool2447, label %land.lhs.true.2449, label %if.else.2454

land.lhs.true.2449:                               ; preds = %cond.end.2445
  %467 = load i32, i32* %flag.addr, align 4
  %cmp2450 = icmp ne i32 %467, 3
  br i1 %cmp2450, label %if.then.2452, label %if.else.2454

if.then.2452:                                     ; preds = %land.lhs.true.2449
  %468 = load i32, i32* %c, align 4
  %call2453 = call i32 @downcase(i32 %468)
  store i32 %call2453, i32* %c, align 4
  br label %if.end.2464

if.else.2454:                                     ; preds = %land.lhs.true.2449, %cond.end.2445
  %469 = load i32, i32* %c, align 4
  %call2455 = call zeroext i1 @uppercasep(i32 %469)
  br i1 %call2455, label %if.end.2463, label %land.lhs.true.2456

land.lhs.true.2456:                               ; preds = %if.else.2454
  %470 = load i8, i8* %inword, align 1
  %tobool2457 = trunc i8 %470 to i1
  br i1 %tobool2457, label %lor.lhs.false.2458, label %if.then.2461

lor.lhs.false.2458:                               ; preds = %land.lhs.true.2456
  %471 = load i32, i32* %flag.addr, align 4
  %cmp2459 = icmp ne i32 %471, 3
  br i1 %cmp2459, label %if.then.2461, label %if.end.2463

if.then.2461:                                     ; preds = %lor.lhs.false.2458, %land.lhs.true.2456
  %472 = load i32, i32* %c, align 4
  %call2462 = call i32 @upcase1(i32 %472)
  store i32 %call2462, i32* %c, align 4
  br label %if.end.2463

if.end.2463:                                      ; preds = %if.then.2461, %lor.lhs.false.2458, %if.else.2454
  br label %if.end.2464

if.end.2464:                                      ; preds = %if.end.2463, %if.then.2452
  %473 = load i32, i32* %flag.addr, align 4
  %cmp2465 = icmp sge i32 %473, 2
  br i1 %cmp2465, label %if.then.2467, label %if.end.2472

if.then.2467:                                     ; preds = %if.end.2464
  %474 = load i32, i32* %c, align 4
  %call2468 = call i32 @SYNTAX(i32 %474)
  %cmp2469 = icmp eq i32 %call2468, 2
  %frombool2471 = zext i1 %cmp2469 to i8
  store i8 %frombool2471, i8* %inword, align 1
  br label %if.end.2472

if.end.2472:                                      ; preds = %if.then.2467, %if.end.2464
  br i1 true, label %cond.true.2473, label %cond.false.2477

cond.true.2473:                                   ; preds = %if.end.2472
  %475 = load i32, i32* %c, align 4
  %add2474 = add i32 %475, 0
  %cmp2475 = icmp ule i32 %add2474, 127
  br i1 %cmp2475, label %cond.true.2482, label %cond.false.2485

cond.false.2477:                                  ; preds = %if.end.2472
  %476 = load i32, i32* %c, align 4
  %conv2478 = sext i32 %476 to i64
  %add2479 = add i64 %conv2478, 0
  %cmp2480 = icmp ule i64 %add2479, 127
  br i1 %cmp2480, label %cond.true.2482, label %cond.false.2485

cond.true.2482:                                   ; preds = %cond.false.2477, %cond.true.2473
  %477 = load i32, i32* %c, align 4
  %conv2483 = trunc i32 %477 to i8
  %478 = load i8*, i8** %o, align 8
  %arrayidx2484 = getelementptr inbounds i8, i8* %478, i64 0
  store i8 %conv2483, i8* %arrayidx2484, align 1
  br label %cond.end.2534

cond.false.2485:                                  ; preds = %cond.false.2477, %cond.true.2473
  br i1 true, label %cond.true.2486, label %cond.false.2490

cond.true.2486:                                   ; preds = %cond.false.2485
  %479 = load i32, i32* %c, align 4
  %add2487 = add i32 %479, 0
  %cmp2488 = icmp ule i32 %add2487, 2047
  br i1 %cmp2488, label %cond.true.2495, label %cond.false.2504

cond.false.2490:                                  ; preds = %cond.false.2485
  %480 = load i32, i32* %c, align 4
  %conv2491 = sext i32 %480 to i64
  %add2492 = add i64 %conv2491, 0
  %cmp2493 = icmp ule i64 %add2492, 2047
  br i1 %cmp2493, label %cond.true.2495, label %cond.false.2504

cond.true.2495:                                   ; preds = %cond.false.2490, %cond.true.2486
  %481 = load i32, i32* %c, align 4
  %shr2496 = ashr i32 %481, 6
  %or2497 = or i32 192, %shr2496
  %conv2498 = trunc i32 %or2497 to i8
  %482 = load i8*, i8** %o, align 8
  %arrayidx2499 = getelementptr inbounds i8, i8* %482, i64 0
  store i8 %conv2498, i8* %arrayidx2499, align 1
  %483 = load i32, i32* %c, align 4
  %and2500 = and i32 %483, 63
  %or2501 = or i32 128, %and2500
  %conv2502 = trunc i32 %or2501 to i8
  %484 = load i8*, i8** %o, align 8
  %arrayidx2503 = getelementptr inbounds i8, i8* %484, i64 1
  store i8 %conv2502, i8* %arrayidx2503, align 1
  br label %cond.end.2532

cond.false.2504:                                  ; preds = %cond.false.2490, %cond.true.2486
  br i1 true, label %cond.true.2505, label %cond.false.2509

cond.true.2505:                                   ; preds = %cond.false.2504
  %485 = load i32, i32* %c, align 4
  %add2506 = add i32 %485, 0
  %cmp2507 = icmp ule i32 %add2506, 65535
  br i1 %cmp2507, label %cond.true.2514, label %cond.false.2528

cond.false.2509:                                  ; preds = %cond.false.2504
  %486 = load i32, i32* %c, align 4
  %conv2510 = sext i32 %486 to i64
  %add2511 = add i64 %conv2510, 0
  %cmp2512 = icmp ule i64 %add2511, 65535
  br i1 %cmp2512, label %cond.true.2514, label %cond.false.2528

cond.true.2514:                                   ; preds = %cond.false.2509, %cond.true.2505
  %487 = load i32, i32* %c, align 4
  %shr2515 = ashr i32 %487, 12
  %or2516 = or i32 224, %shr2515
  %conv2517 = trunc i32 %or2516 to i8
  %488 = load i8*, i8** %o, align 8
  %arrayidx2518 = getelementptr inbounds i8, i8* %488, i64 0
  store i8 %conv2517, i8* %arrayidx2518, align 1
  %489 = load i32, i32* %c, align 4
  %shr2519 = ashr i32 %489, 6
  %and2520 = and i32 %shr2519, 63
  %or2521 = or i32 128, %and2520
  %conv2522 = trunc i32 %or2521 to i8
  %490 = load i8*, i8** %o, align 8
  %arrayidx2523 = getelementptr inbounds i8, i8* %490, i64 1
  store i8 %conv2522, i8* %arrayidx2523, align 1
  %491 = load i32, i32* %c, align 4
  %and2524 = and i32 %491, 63
  %or2525 = or i32 128, %and2524
  %conv2526 = trunc i32 %or2525 to i8
  %492 = load i8*, i8** %o, align 8
  %arrayidx2527 = getelementptr inbounds i8, i8* %492, i64 2
  store i8 %conv2526, i8* %arrayidx2527, align 1
  br label %cond.end.2530

cond.false.2528:                                  ; preds = %cond.false.2509, %cond.true.2505
  %493 = load i32, i32* %c, align 4
  %494 = load i8*, i8** %o, align 8
  %call2529 = call i32 @char_string(i32 %493, i8* %494)
  br label %cond.end.2530

cond.end.2530:                                    ; preds = %cond.false.2528, %cond.true.2514
  %cond2531 = phi i32 [ 3, %cond.true.2514 ], [ %call2529, %cond.false.2528 ]
  br label %cond.end.2532

cond.end.2532:                                    ; preds = %cond.end.2530, %cond.true.2495
  %cond2533 = phi i32 [ 2, %cond.true.2495 ], [ %cond2531, %cond.end.2530 ]
  br label %cond.end.2534

cond.end.2534:                                    ; preds = %cond.end.2532, %cond.true.2482
  %cond2535 = phi i32 [ 1, %cond.true.2482 ], [ %cond2533, %cond.end.2532 ]
  %495 = load i8*, i8** %o, align 8
  %idx.ext = sext i32 %cond2535 to i64
  %add.ptr2536 = getelementptr inbounds i8, i8* %495, i64 %idx.ext
  store i8* %add.ptr2536, i8** %o, align 8
  br label %for.inc.2537

for.inc.2537:                                     ; preds = %cond.end.2534
  %496 = load i64, i64* %i179, align 8
  %inc2538 = add nsw i64 %496, 1
  store i64 %inc2538, i64* %i179, align 8
  %497 = load i32, i32* %len, align 4
  %conv2539 = sext i32 %497 to i64
  %498 = load i64, i64* %i_byte, align 8
  %add2540 = add nsw i64 %498, %conv2539
  store i64 %add2540, i64* %i_byte, align 8
  br label %for.cond.2363

for.end.2541:                                     ; preds = %for.cond.2363
  %499 = load i8*, i8** %dst, align 8
  %500 = load i64, i64* %size180, align 8
  %501 = load i8*, i8** %o, align 8
  %502 = load i8*, i8** %dst, align 8
  %sub.ptr.lhs.cast2542 = ptrtoint i8* %501 to i64
  %sub.ptr.rhs.cast2543 = ptrtoint i8* %502 to i64
  %sub.ptr.sub2544 = sub i64 %sub.ptr.lhs.cast2542, %sub.ptr.rhs.cast2543
  %call2545 = call i64 @make_multibyte_string(i8* %499, i64 %500, i64 %sub.ptr.sub2544)
  store i64 %call2545, i64* %obj.addr, align 8
  br label %do.body.2546

do.body.2546:                                     ; preds = %for.end.2541
  %503 = load i8, i8* %sa_must_free, align 1
  %tobool2547 = trunc i8 %503 to i1
  br i1 %tobool2547, label %if.then.2548, label %if.end.2551

if.then.2548:                                     ; preds = %do.body.2546
  store i8 0, i8* %sa_must_free, align 1
  %504 = load i64, i64* %sa_count, align 8
  %call2549 = call i64 @builtin_lisp_symbol(i32 0)
  %call2550 = call i64 @unbind_to(i64 %504, i64 %call2549)
  br label %if.end.2551

if.end.2551:                                      ; preds = %if.then.2548, %do.body.2546
  br label %do.end.2552

do.end.2552:                                      ; preds = %if.end.2551
  %505 = load i64, i64* %obj.addr, align 8
  store i64 %505, i64* %retval
  br label %return

return:                                           ; preds = %do.end.2552, %for.end, %if.end.93, %if.then.27
  %506 = load i64, i64* %retval
  ret i64 %506
}

; Function Attrs: nounwind uwtable
define i64 @Fdowncase(i64 %obj) #0 {
entry:
  %obj.addr = alloca i64, align 8
  store i64 %obj, i64* %obj.addr, align 8
  %0 = load i64, i64* %obj.addr, align 8
  %call = call i64 @casify_object(i32 1, i64 %0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fcapitalize(i64 %obj) #0 {
entry:
  %obj.addr = alloca i64, align 8
  store i64 %obj, i64* %obj.addr, align 8
  %0 = load i64, i64* %obj.addr, align 8
  %call = call i64 @casify_object(i32 2, i64 %0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fupcase_initials(i64 %obj) #0 {
entry:
  %obj.addr = alloca i64, align 8
  store i64 %obj, i64* %obj.addr, align 8
  %0 = load i64, i64* %obj.addr, align 8
  %call = call i64 @casify_object(i32 3, i64 %0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fupcase_region(i64 %beg, i64 %end) #0 {
entry:
  %beg.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  store i64 %beg, i64* %beg.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %0 = load i64, i64* %beg.addr, align 8
  %1 = load i64, i64* %end.addr, align 8
  call void @casify_region(i32 0, i64 %0, i64 %1)
  %call = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal void @casify_region(i32 %flag, i64 %b, i64 %e) #0 {
entry:
  %flag.addr = alloca i32, align 4
  %b.addr = alloca i64, align 8
  %e.addr = alloca i64, align 8
  %c = alloca i32, align 4
  %inword = alloca i8, align 1
  %multibyte = alloca i8, align 1
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %start_byte = alloca i64, align 8
  %first = alloca i64, align 8
  %last = alloca i64, align 8
  %opoint = alloca i64, align 8
  %opoint_byte = alloca i64, align 8
  %c2 = alloca i32, align 4
  %len = alloca i32, align 4
  %tolen = alloca i32, align 4
  %j = alloca i32, align 4
  %str = alloca [5 x i8], align 1
  store i32 %flag, i32* %flag.addr, align 4
  store i64 %b, i64* %b.addr, align 8
  store i64 %e, i64* %e.addr, align 8
  %0 = load i32, i32* %flag.addr, align 4
  %cmp = icmp eq i32 %0, 1
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %inword, align 1
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 39
  %2 = load i64, i64* %enable_multibyte_characters_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1 = icmp eq i64 %2, %call
  %lnot = xor i1 %cmp1, true
  %frombool2 = zext i1 %lnot to i8
  store i8 %frombool2, i8* %multibyte, align 1
  store i64 -1, i64* %first, align 8
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 75
  %4 = load i64, i64* %pt, align 8
  %add = add nsw i64 %4, 0
  store i64 %add, i64* %opoint, align 8
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 76
  %6 = load i64, i64* %pt_byte, align 8
  %add3 = add nsw i64 %6, 0
  store i64 %add3, i64* %opoint_byte, align 8
  %7 = load i64, i64* %b.addr, align 8
  %8 = load i64, i64* %e.addr, align 8
  %cmp4 = icmp eq i64 %7, %8
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.309

if.end:                                           ; preds = %entry
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %downcase_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 23
  %10 = load i64, i64* %downcase_table_, align 8
  %call5 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %10)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call5, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 1
  %11 = load i64, i64* %arrayidx, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %11, %call6
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %downcase_table_9 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 23
  %13 = load i64, i64* %downcase_table_9, align 8
  %call10 = call i64 @Fset_case_table(i64 %13)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end
  call void @validate_region(i64* %b.addr, i64* %e.addr)
  %14 = load i64, i64* %b.addr, align 8
  %shr = ashr i64 %14, 2
  store i64 %shr, i64* %start, align 8
  %15 = load i64, i64* %e.addr, align 8
  %shr12 = ashr i64 %15, 2
  store i64 %shr12, i64* %end, align 8
  %16 = load i64, i64* %start, align 8
  %17 = load i64, i64* %end, align 8
  call void @modify_text(i64 %16, i64 %17)
  %18 = load i64, i64* %start, align 8
  %19 = load i64, i64* %end, align 8
  %20 = load i64, i64* %start, align 8
  %sub = sub nsw i64 %19, %20
  call void @record_change(i64 %18, i64 %sub)
  %21 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %22 = load i64, i64* %start, align 8
  %call13 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %21, i64 %22)
  store i64 %call13, i64* %start_byte, align 8
  call void @SETUP_BUFFER_SYNTAX_TABLE()
  br label %while.cond

while.cond:                                       ; preds = %if.end.291, %if.end.11
  %23 = load i64, i64* %start, align 8
  %24 = load i64, i64* %end, align 8
  %cmp14 = icmp slt i64 %23, %24
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load i8, i8* %multibyte, align 1
  %tobool = trunc i8 %25 to i1
  br i1 %tobool, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %while.body
  %26 = load i64, i64* %start_byte, align 8
  %call16 = call i32 @FETCH_MULTIBYTE_CHAR(i64 %26)
  store i32 %call16, i32* %c, align 4
  %27 = load i32, i32* %c, align 4
  %cmp17 = icmp sle i32 %27, 127
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.15
  br label %cond.end.33

cond.false:                                       ; preds = %if.then.15
  %28 = load i32, i32* %c, align 4
  %cmp18 = icmp sle i32 %28, 2047
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.false
  br label %cond.end.31

cond.false.20:                                    ; preds = %cond.false
  %29 = load i32, i32* %c, align 4
  %cmp21 = icmp sle i32 %29, 65535
  br i1 %cmp21, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %cond.false.20
  br label %cond.end.29

cond.false.23:                                    ; preds = %cond.false.20
  %30 = load i32, i32* %c, align 4
  %cmp24 = icmp sle i32 %30, 2097151
  br i1 %cmp24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.false.23
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false.23
  %31 = load i32, i32* %c, align 4
  %cmp27 = icmp sle i32 %31, 4194175
  %cond = select i1 %cmp27, i32 5, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false.26, %cond.true.25
  %cond28 = phi i32 [ 4, %cond.true.25 ], [ %cond, %cond.false.26 ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end, %cond.true.22
  %cond30 = phi i32 [ 3, %cond.true.22 ], [ %cond28, %cond.end ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end.29, %cond.true.19
  %cond32 = phi i32 [ 2, %cond.true.19 ], [ %cond30, %cond.end.29 ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end.31, %cond.true
  %cond34 = phi i32 [ 1, %cond.true ], [ %cond32, %cond.end.31 ]
  store i32 %cond34, i32* %len, align 4
  br label %if.end.58

if.else:                                          ; preds = %while.body
  %32 = load i64, i64* %start_byte, align 8
  %33 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %33, i32 0, i32 73
  %34 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %34, i32 0, i32 3
  %35 = load i64, i64* %gpt_byte, align 8
  %cmp35 = icmp sge i64 %32, %35
  br i1 %cmp35, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %if.else
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text37 = getelementptr inbounds %struct.buffer, %struct.buffer* %36, i32 0, i32 73
  %37 = load %struct.buffer_text*, %struct.buffer_text** %text37, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %37, i32 0, i32 5
  %38 = load i64, i64* %gap_size, align 8
  br label %cond.end.39

cond.false.38:                                    ; preds = %if.else
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.36
  %cond40 = phi i64 [ %38, %cond.true.36 ], [ 0, %cond.false.38 ]
  %39 = load i64, i64* %start_byte, align 8
  %add41 = add nsw i64 %cond40, %39
  %40 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text42 = getelementptr inbounds %struct.buffer, %struct.buffer* %40, i32 0, i32 73
  %41 = load %struct.buffer_text*, %struct.buffer_text** %text42, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %41, i32 0, i32 0
  %42 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 %add41
  %add.ptr43 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %43 = load i8, i8* %add.ptr43, align 1
  %conv = zext i8 %43 to i32
  store i32 %conv, i32* %c, align 4
  br i1 true, label %cond.true.44, label %cond.false.48

cond.true.44:                                     ; preds = %cond.end.39
  %44 = load i32, i32* %c, align 4
  %add45 = add i32 %44, 0
  %cmp46 = icmp ult i32 %add45, 128
  br i1 %cmp46, label %cond.true.53, label %cond.false.54

cond.false.48:                                    ; preds = %cond.end.39
  %45 = load i32, i32* %c, align 4
  %conv49 = sext i32 %45 to i64
  %add50 = add i64 %conv49, 0
  %cmp51 = icmp ult i64 %add50, 128
  br i1 %cmp51, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.false.48, %cond.true.44
  %46 = load i32, i32* %c, align 4
  br label %cond.end.56

cond.false.54:                                    ; preds = %cond.false.48, %cond.true.44
  %47 = load i32, i32* %c, align 4
  %add55 = add nsw i32 %47, 4194048
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.54, %cond.true.53
  %cond57 = phi i32 [ %46, %cond.true.53 ], [ %add55, %cond.false.54 ]
  store i32 %cond57, i32* %c, align 4
  store i32 1, i32* %len, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %cond.end.56, %cond.end.33
  %48 = load i32, i32* %c, align 4
  store i32 %48, i32* %c2, align 4
  %49 = load i8, i8* %inword, align 1
  %tobool59 = trunc i8 %49 to i1
  br i1 %tobool59, label %land.lhs.true, label %if.else.65

land.lhs.true:                                    ; preds = %if.end.58
  %50 = load i32, i32* %flag.addr, align 4
  %cmp61 = icmp ne i32 %50, 3
  br i1 %cmp61, label %if.then.63, label %if.else.65

if.then.63:                                       ; preds = %land.lhs.true
  %51 = load i32, i32* %c, align 4
  %call64 = call i32 @downcase(i32 %51)
  store i32 %call64, i32* %c, align 4
  br label %if.end.74

if.else.65:                                       ; preds = %land.lhs.true, %if.end.58
  %52 = load i32, i32* %c, align 4
  %call66 = call zeroext i1 @uppercasep(i32 %52)
  br i1 %call66, label %if.end.73, label %land.lhs.true.67

land.lhs.true.67:                                 ; preds = %if.else.65
  %53 = load i8, i8* %inword, align 1
  %tobool68 = trunc i8 %53 to i1
  br i1 %tobool68, label %lor.lhs.false, label %if.then.71

lor.lhs.false:                                    ; preds = %land.lhs.true.67
  %54 = load i32, i32* %flag.addr, align 4
  %cmp69 = icmp ne i32 %54, 3
  br i1 %cmp69, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %lor.lhs.false, %land.lhs.true.67
  %55 = load i32, i32* %c, align 4
  %call72 = call i32 @upcase1(i32 %55)
  store i32 %call72, i32* %c, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %lor.lhs.false, %if.else.65
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.63
  %56 = load i32, i32* %flag.addr, align 4
  %cmp75 = icmp sge i32 %56, 2
  br i1 %cmp75, label %if.then.77, label %if.end.86

if.then.77:                                       ; preds = %if.end.74
  %57 = load i32, i32* %c, align 4
  %call78 = call i32 @SYNTAX(i32 %57)
  %cmp79 = icmp eq i32 %call78, 2
  br i1 %cmp79, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.77
  %58 = load i8, i8* %inword, align 1
  %tobool81 = trunc i8 %58 to i1
  br i1 %tobool81, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %59 = load i32, i32* %c, align 4
  %call83 = call zeroext i1 @syntax_prefix_flag_p(i32 %59)
  %lnot84 = xor i1 %call83, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %60 = phi i1 [ true, %land.rhs ], [ %lnot84, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %if.then.77
  %61 = phi i1 [ false, %if.then.77 ], [ %60, %lor.end ]
  %frombool85 = zext i1 %61 to i8
  store i8 %frombool85, i8* %inword, align 1
  br label %if.end.86

if.end.86:                                        ; preds = %land.end, %if.end.74
  %62 = load i32, i32* %c, align 4
  %63 = load i32, i32* %c2, align 4
  %cmp87 = icmp ne i32 %62, %63
  br i1 %cmp87, label %if.then.89, label %if.end.291

if.then.89:                                       ; preds = %if.end.86
  %64 = load i64, i64* %start, align 8
  store i64 %64, i64* %last, align 8
  %65 = load i64, i64* %first, align 8
  %cmp90 = icmp slt i64 %65, 0
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.then.89
  %66 = load i64, i64* %start, align 8
  store i64 %66, i64* %first, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.then.89
  %67 = load i8, i8* %multibyte, align 1
  %tobool94 = trunc i8 %67 to i1
  br i1 %tobool94, label %if.else.130, label %if.then.95

if.then.95:                                       ; preds = %if.end.93
  br label %do.body

do.body:                                          ; preds = %if.then.95
  br i1 true, label %cond.true.96, label %cond.false.100

cond.true.96:                                     ; preds = %do.body
  %68 = load i32, i32* %c, align 4
  %add97 = add i32 %68, 0
  %cmp98 = icmp ult i32 %add97, 128
  br i1 %cmp98, label %if.end.113, label %if.then.105

cond.false.100:                                   ; preds = %do.body
  %69 = load i32, i32* %c, align 4
  %conv101 = sext i32 %69 to i64
  %add102 = add i64 %conv101, 0
  %cmp103 = icmp ult i64 %add102, 128
  br i1 %cmp103, label %if.end.113, label %if.then.105

if.then.105:                                      ; preds = %cond.false.100, %cond.true.96
  %70 = load i32, i32* %c, align 4
  %cmp106 = icmp sgt i32 %70, 4194175
  br i1 %cmp106, label %cond.true.108, label %cond.false.110

cond.true.108:                                    ; preds = %if.then.105
  %71 = load i32, i32* %c, align 4
  %sub109 = sub nsw i32 %71, 4194048
  br label %cond.end.111

cond.false.110:                                   ; preds = %if.then.105
  %72 = load i32, i32* %c, align 4
  %and = and i32 %72, 255
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.110, %cond.true.108
  %cond112 = phi i32 [ %sub109, %cond.true.108 ], [ %and, %cond.false.110 ]
  store i32 %cond112, i32* %c, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %cond.end.111, %cond.false.100, %cond.true.96
  br label %do.end

do.end:                                           ; preds = %if.end.113
  %73 = load i32, i32* %c, align 4
  %conv114 = trunc i32 %73 to i8
  %74 = load i64, i64* %start_byte, align 8
  %75 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text115 = getelementptr inbounds %struct.buffer, %struct.buffer* %75, i32 0, i32 73
  %76 = load %struct.buffer_text*, %struct.buffer_text** %text115, align 8
  %gpt_byte116 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %76, i32 0, i32 3
  %77 = load i64, i64* %gpt_byte116, align 8
  %cmp117 = icmp sge i64 %74, %77
  br i1 %cmp117, label %cond.true.119, label %cond.false.122

cond.true.119:                                    ; preds = %do.end
  %78 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text120 = getelementptr inbounds %struct.buffer, %struct.buffer* %78, i32 0, i32 73
  %79 = load %struct.buffer_text*, %struct.buffer_text** %text120, align 8
  %gap_size121 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %79, i32 0, i32 5
  %80 = load i64, i64* %gap_size121, align 8
  br label %cond.end.123

cond.false.122:                                   ; preds = %do.end
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.122, %cond.true.119
  %cond124 = phi i64 [ %80, %cond.true.119 ], [ 0, %cond.false.122 ]
  %81 = load i64, i64* %start_byte, align 8
  %add125 = add nsw i64 %cond124, %81
  %82 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text126 = getelementptr inbounds %struct.buffer, %struct.buffer* %82, i32 0, i32 73
  %83 = load %struct.buffer_text*, %struct.buffer_text** %text126, align 8
  %beg127 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %83, i32 0, i32 0
  %84 = load i8*, i8** %beg127, align 8
  %add.ptr128 = getelementptr inbounds i8, i8* %84, i64 %add125
  %add.ptr129 = getelementptr inbounds i8, i8* %add.ptr128, i64 -1
  store i8 %conv114, i8* %add.ptr129, align 1
  br label %if.end.290

if.else.130:                                      ; preds = %if.end.93
  br i1 true, label %cond.true.131, label %cond.false.135

cond.true.131:                                    ; preds = %if.else.130
  %85 = load i32, i32* %c2, align 4
  %add132 = add i32 %85, 0
  %cmp133 = icmp ult i32 %add132, 128
  br i1 %cmp133, label %land.lhs.true.140, label %if.else.167

cond.false.135:                                   ; preds = %if.else.130
  %86 = load i32, i32* %c2, align 4
  %conv136 = sext i32 %86 to i64
  %add137 = add i64 %conv136, 0
  %cmp138 = icmp ult i64 %add137, 128
  br i1 %cmp138, label %land.lhs.true.140, label %if.else.167

land.lhs.true.140:                                ; preds = %cond.false.135, %cond.true.131
  br i1 true, label %cond.true.141, label %cond.false.145

cond.true.141:                                    ; preds = %land.lhs.true.140
  %87 = load i32, i32* %c, align 4
  %add142 = add i32 %87, 0
  %cmp143 = icmp ult i32 %add142, 128
  br i1 %cmp143, label %if.then.150, label %if.else.167

cond.false.145:                                   ; preds = %land.lhs.true.140
  %88 = load i32, i32* %c, align 4
  %conv146 = sext i32 %88 to i64
  %add147 = add i64 %conv146, 0
  %cmp148 = icmp ult i64 %add147, 128
  br i1 %cmp148, label %if.then.150, label %if.else.167

if.then.150:                                      ; preds = %cond.false.145, %cond.true.141
  %89 = load i32, i32* %c, align 4
  %conv151 = trunc i32 %89 to i8
  %90 = load i64, i64* %start_byte, align 8
  %91 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text152 = getelementptr inbounds %struct.buffer, %struct.buffer* %91, i32 0, i32 73
  %92 = load %struct.buffer_text*, %struct.buffer_text** %text152, align 8
  %gpt_byte153 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %92, i32 0, i32 3
  %93 = load i64, i64* %gpt_byte153, align 8
  %cmp154 = icmp sge i64 %90, %93
  br i1 %cmp154, label %cond.true.156, label %cond.false.159

cond.true.156:                                    ; preds = %if.then.150
  %94 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text157 = getelementptr inbounds %struct.buffer, %struct.buffer* %94, i32 0, i32 73
  %95 = load %struct.buffer_text*, %struct.buffer_text** %text157, align 8
  %gap_size158 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %95, i32 0, i32 5
  %96 = load i64, i64* %gap_size158, align 8
  br label %cond.end.160

cond.false.159:                                   ; preds = %if.then.150
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.159, %cond.true.156
  %cond161 = phi i64 [ %96, %cond.true.156 ], [ 0, %cond.false.159 ]
  %97 = load i64, i64* %start_byte, align 8
  %add162 = add nsw i64 %cond161, %97
  %98 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text163 = getelementptr inbounds %struct.buffer, %struct.buffer* %98, i32 0, i32 73
  %99 = load %struct.buffer_text*, %struct.buffer_text** %text163, align 8
  %beg164 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %99, i32 0, i32 0
  %100 = load i8*, i8** %beg164, align 8
  %add.ptr165 = getelementptr inbounds i8, i8* %100, i64 %add162
  %add.ptr166 = getelementptr inbounds i8, i8* %add.ptr165, i64 -1
  store i8 %conv151, i8* %add.ptr166, align 1
  br label %if.end.289

if.else.167:                                      ; preds = %cond.false.145, %cond.true.141, %cond.false.135, %cond.true.131
  %101 = load i32, i32* %c, align 4
  %cmp168 = icmp sle i32 %101, 127
  br i1 %cmp168, label %cond.true.170, label %cond.false.171

cond.true.170:                                    ; preds = %if.else.167
  br label %cond.end.193

cond.false.171:                                   ; preds = %if.else.167
  %102 = load i32, i32* %c, align 4
  %cmp172 = icmp sle i32 %102, 2047
  br i1 %cmp172, label %cond.true.174, label %cond.false.175

cond.true.174:                                    ; preds = %cond.false.171
  br label %cond.end.191

cond.false.175:                                   ; preds = %cond.false.171
  %103 = load i32, i32* %c, align 4
  %cmp176 = icmp sle i32 %103, 65535
  br i1 %cmp176, label %cond.true.178, label %cond.false.179

cond.true.178:                                    ; preds = %cond.false.175
  br label %cond.end.189

cond.false.179:                                   ; preds = %cond.false.175
  %104 = load i32, i32* %c, align 4
  %cmp180 = icmp sle i32 %104, 2097151
  br i1 %cmp180, label %cond.true.182, label %cond.false.183

cond.true.182:                                    ; preds = %cond.false.179
  br label %cond.end.187

cond.false.183:                                   ; preds = %cond.false.179
  %105 = load i32, i32* %c, align 4
  %cmp184 = icmp sle i32 %105, 4194175
  %cond186 = select i1 %cmp184, i32 5, i32 2
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.183, %cond.true.182
  %cond188 = phi i32 [ 4, %cond.true.182 ], [ %cond186, %cond.false.183 ]
  br label %cond.end.189

cond.end.189:                                     ; preds = %cond.end.187, %cond.true.178
  %cond190 = phi i32 [ 3, %cond.true.178 ], [ %cond188, %cond.end.187 ]
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.end.189, %cond.true.174
  %cond192 = phi i32 [ 2, %cond.true.174 ], [ %cond190, %cond.end.189 ]
  br label %cond.end.193

cond.end.193:                                     ; preds = %cond.end.191, %cond.true.170
  %cond194 = phi i32 [ 1, %cond.true.170 ], [ %cond192, %cond.end.191 ]
  store i32 %cond194, i32* %tolen, align 4
  br i1 true, label %cond.true.195, label %cond.false.199

cond.true.195:                                    ; preds = %cond.end.193
  %106 = load i32, i32* %c, align 4
  %add196 = add i32 %106, 0
  %cmp197 = icmp ule i32 %add196, 127
  br i1 %cmp197, label %cond.true.204, label %cond.false.207

cond.false.199:                                   ; preds = %cond.end.193
  %107 = load i32, i32* %c, align 4
  %conv200 = sext i32 %107 to i64
  %add201 = add i64 %conv200, 0
  %cmp202 = icmp ule i64 %add201, 127
  br i1 %cmp202, label %cond.true.204, label %cond.false.207

cond.true.204:                                    ; preds = %cond.false.199, %cond.true.195
  %108 = load i32, i32* %c, align 4
  %conv205 = trunc i32 %108 to i8
  %arrayidx206 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 0
  store i8 %conv205, i8* %arrayidx206, align 1
  br label %cond.end.255

cond.false.207:                                   ; preds = %cond.false.199, %cond.true.195
  br i1 true, label %cond.true.208, label %cond.false.212

cond.true.208:                                    ; preds = %cond.false.207
  %109 = load i32, i32* %c, align 4
  %add209 = add i32 %109, 0
  %cmp210 = icmp ule i32 %add209, 2047
  br i1 %cmp210, label %cond.true.217, label %cond.false.225

cond.false.212:                                   ; preds = %cond.false.207
  %110 = load i32, i32* %c, align 4
  %conv213 = sext i32 %110 to i64
  %add214 = add i64 %conv213, 0
  %cmp215 = icmp ule i64 %add214, 2047
  br i1 %cmp215, label %cond.true.217, label %cond.false.225

cond.true.217:                                    ; preds = %cond.false.212, %cond.true.208
  %111 = load i32, i32* %c, align 4
  %shr218 = ashr i32 %111, 6
  %or = or i32 192, %shr218
  %conv219 = trunc i32 %or to i8
  %arrayidx220 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 0
  store i8 %conv219, i8* %arrayidx220, align 1
  %112 = load i32, i32* %c, align 4
  %and221 = and i32 %112, 63
  %or222 = or i32 128, %and221
  %conv223 = trunc i32 %or222 to i8
  %arrayidx224 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 1
  store i8 %conv223, i8* %arrayidx224, align 1
  br label %cond.end.253

cond.false.225:                                   ; preds = %cond.false.212, %cond.true.208
  br i1 true, label %cond.true.226, label %cond.false.230

cond.true.226:                                    ; preds = %cond.false.225
  %113 = load i32, i32* %c, align 4
  %add227 = add i32 %113, 0
  %cmp228 = icmp ule i32 %add227, 65535
  br i1 %cmp228, label %cond.true.235, label %cond.false.249

cond.false.230:                                   ; preds = %cond.false.225
  %114 = load i32, i32* %c, align 4
  %conv231 = sext i32 %114 to i64
  %add232 = add i64 %conv231, 0
  %cmp233 = icmp ule i64 %add232, 65535
  br i1 %cmp233, label %cond.true.235, label %cond.false.249

cond.true.235:                                    ; preds = %cond.false.230, %cond.true.226
  %115 = load i32, i32* %c, align 4
  %shr236 = ashr i32 %115, 12
  %or237 = or i32 224, %shr236
  %conv238 = trunc i32 %or237 to i8
  %arrayidx239 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 0
  store i8 %conv238, i8* %arrayidx239, align 1
  %116 = load i32, i32* %c, align 4
  %shr240 = ashr i32 %116, 6
  %and241 = and i32 %shr240, 63
  %or242 = or i32 128, %and241
  %conv243 = trunc i32 %or242 to i8
  %arrayidx244 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 1
  store i8 %conv243, i8* %arrayidx244, align 1
  %117 = load i32, i32* %c, align 4
  %and245 = and i32 %117, 63
  %or246 = or i32 128, %and245
  %conv247 = trunc i32 %or246 to i8
  %arrayidx248 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 2
  store i8 %conv247, i8* %arrayidx248, align 1
  br label %cond.end.251

cond.false.249:                                   ; preds = %cond.false.230, %cond.true.226
  %118 = load i32, i32* %c, align 4
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i32 0
  %call250 = call i32 @char_string(i32 %118, i8* %arraydecay)
  br label %cond.end.251

cond.end.251:                                     ; preds = %cond.false.249, %cond.true.235
  %cond252 = phi i32 [ 3, %cond.true.235 ], [ %call250, %cond.false.249 ]
  br label %cond.end.253

cond.end.253:                                     ; preds = %cond.end.251, %cond.true.217
  %cond254 = phi i32 [ 2, %cond.true.217 ], [ %cond252, %cond.end.251 ]
  br label %cond.end.255

cond.end.255:                                     ; preds = %cond.end.253, %cond.true.204
  %cond256 = phi i32 [ 1, %cond.true.204 ], [ %cond254, %cond.end.253 ]
  %119 = load i32, i32* %len, align 4
  %120 = load i32, i32* %tolen, align 4
  %cmp257 = icmp eq i32 %119, %120
  br i1 %cmp257, label %if.then.259, label %if.else.282

if.then.259:                                      ; preds = %cond.end.255
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.259
  %121 = load i32, i32* %j, align 4
  %122 = load i32, i32* %len, align 4
  %cmp260 = icmp slt i32 %121, %122
  br i1 %cmp260, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %123 = load i32, i32* %j, align 4
  %idxprom = sext i32 %123 to i64
  %arrayidx262 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 %idxprom
  %124 = load i8, i8* %arrayidx262, align 1
  %125 = load i64, i64* %start_byte, align 8
  %126 = load i32, i32* %j, align 4
  %conv263 = sext i32 %126 to i64
  %add264 = add nsw i64 %125, %conv263
  %127 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text265 = getelementptr inbounds %struct.buffer, %struct.buffer* %127, i32 0, i32 73
  %128 = load %struct.buffer_text*, %struct.buffer_text** %text265, align 8
  %gpt_byte266 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %128, i32 0, i32 3
  %129 = load i64, i64* %gpt_byte266, align 8
  %cmp267 = icmp sge i64 %add264, %129
  br i1 %cmp267, label %cond.true.269, label %cond.false.272

cond.true.269:                                    ; preds = %for.body
  %130 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text270 = getelementptr inbounds %struct.buffer, %struct.buffer* %130, i32 0, i32 73
  %131 = load %struct.buffer_text*, %struct.buffer_text** %text270, align 8
  %gap_size271 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %131, i32 0, i32 5
  %132 = load i64, i64* %gap_size271, align 8
  br label %cond.end.273

cond.false.272:                                   ; preds = %for.body
  br label %cond.end.273

cond.end.273:                                     ; preds = %cond.false.272, %cond.true.269
  %cond274 = phi i64 [ %132, %cond.true.269 ], [ 0, %cond.false.272 ]
  %133 = load i64, i64* %start_byte, align 8
  %134 = load i32, i32* %j, align 4
  %conv275 = sext i32 %134 to i64
  %add276 = add nsw i64 %133, %conv275
  %add277 = add nsw i64 %cond274, %add276
  %135 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text278 = getelementptr inbounds %struct.buffer, %struct.buffer* %135, i32 0, i32 73
  %136 = load %struct.buffer_text*, %struct.buffer_text** %text278, align 8
  %beg279 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %136, i32 0, i32 0
  %137 = load i8*, i8** %beg279, align 8
  %add.ptr280 = getelementptr inbounds i8, i8* %137, i64 %add277
  %add.ptr281 = getelementptr inbounds i8, i8* %add.ptr280, i64 -1
  store i8 %124, i8* %add.ptr281, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.273
  %138 = load i32, i32* %j, align 4
  %inc = add nsw i32 %138, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.288

if.else.282:                                      ; preds = %cond.end.255
  %139 = load i64, i64* %start, align 8
  %140 = load i64, i64* %start_byte, align 8
  %141 = load i64, i64* %start, align 8
  %add283 = add nsw i64 %141, 1
  %142 = load i64, i64* %start_byte, align 8
  %143 = load i32, i32* %len, align 4
  %conv284 = sext i32 %143 to i64
  %add285 = add nsw i64 %142, %conv284
  %arraydecay286 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i32 0
  %144 = load i32, i32* %tolen, align 4
  %conv287 = sext i32 %144 to i64
  call void @replace_range_2(i64 %139, i64 %140, i64 %add283, i64 %add285, i8* %arraydecay286, i64 1, i64 %conv287, i1 zeroext false)
  %145 = load i32, i32* %tolen, align 4
  store i32 %145, i32* %len, align 4
  br label %if.end.288

if.end.288:                                       ; preds = %if.else.282, %for.end
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.288, %cond.end.160
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289, %cond.end.123
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %if.end.86
  %146 = load i64, i64* %start, align 8
  %inc292 = add nsw i64 %146, 1
  store i64 %inc292, i64* %start, align 8
  %147 = load i32, i32* %len, align 4
  %conv293 = sext i32 %147 to i64
  %148 = load i64, i64* %start_byte, align 8
  %add294 = add nsw i64 %148, %conv293
  store i64 %add294, i64* %start_byte, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %149 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt295 = getelementptr inbounds %struct.buffer, %struct.buffer* %149, i32 0, i32 75
  %150 = load i64, i64* %pt295, align 8
  %add296 = add nsw i64 %150, 0
  %151 = load i64, i64* %opoint, align 8
  %cmp297 = icmp ne i64 %add296, %151
  br i1 %cmp297, label %if.then.299, label %if.end.300

if.then.299:                                      ; preds = %while.end
  %152 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %153 = load i64, i64* %opoint, align 8
  %154 = load i64, i64* %opoint_byte, align 8
  call void @temp_set_point_both(%struct.buffer* %152, i64 %153, i64 %154)
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.299, %while.end
  %155 = load i64, i64* %first, align 8
  %cmp301 = icmp sge i64 %155, 0
  br i1 %cmp301, label %if.then.303, label %if.end.309

if.then.303:                                      ; preds = %if.end.300
  %156 = load i64, i64* %first, align 8
  %157 = load i64, i64* %last, align 8
  %add304 = add nsw i64 %157, 1
  %158 = load i64, i64* %first, align 8
  %sub305 = sub nsw i64 %add304, %158
  %159 = load i64, i64* %last, align 8
  %add306 = add nsw i64 %159, 1
  %160 = load i64, i64* %first, align 8
  %sub307 = sub nsw i64 %add306, %160
  call void @signal_after_change(i64 %156, i64 %sub305, i64 %sub307)
  %161 = load i64, i64* %first, align 8
  %162 = load i64, i64* %last, align 8
  %add308 = add nsw i64 %162, 1
  call void @update_compositions(i64 %161, i64 %add308, i32 7)
  br label %if.end.309

if.end.309:                                       ; preds = %if.then, %if.then.303, %if.end.300
  ret void
}

declare i64 @builtin_lisp_symbol(i32) #1

; Function Attrs: nounwind uwtable
define i64 @Fdowncase_region(i64 %beg, i64 %end, i64 %region_noncontiguous_p) #0 {
entry:
  %beg.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %region_noncontiguous_p.addr = alloca i64, align 8
  %bounds = alloca i64, align 8
  store i64 %beg, i64* %beg.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %region_noncontiguous_p, i64* %region_noncontiguous_p.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %bounds, align 8
  %0 = load i64, i64* %region_noncontiguous_p.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call1
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i64 @intern(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  %call3 = call i64 @Fsymbol_value(i64 %call2)
  %call4 = call i64 @intern(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  %call5 = call i64 @call1(i64 %call3, i64 %call4)
  store i64 %call5, i64* %bounds, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load i64, i64* %bounds, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp6 = icmp eq i32 %conv, 3
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %bounds, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  %sub8 = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub8 to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %car9 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 0
  %8 = load i64, i64* %car9, align 8
  %9 = load i64, i64* %bounds, align 8
  %sub10 = sub nsw i64 %9, 3
  %10 = inttoptr i64 %sub10 to i8*
  %11 = bitcast i8* %10 to %struct.Lisp_Cons*
  %car11 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %11, i32 0, i32 0
  %12 = load i64, i64* %car11, align 8
  %sub12 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub12 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %15 = load i64, i64* %cdr, align 8
  call void @casify_region(i32 1, i64 %8, i64 %15)
  %16 = load i64, i64* %bounds, align 8
  %sub13 = sub nsw i64 %16, 3
  %17 = inttoptr i64 %sub13 to i8*
  %18 = bitcast i8* %17 to %struct.Lisp_Cons*
  %u14 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %18, i32 0, i32 1
  %cdr15 = bitcast %union.anon* %u14 to i64*
  %19 = load i64, i64* %cdr15, align 8
  store i64 %19, i64* %bounds, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %20 = load i64, i64* %beg.addr, align 8
  %21 = load i64, i64* %end.addr, align 8
  call void @casify_region(i32 1, i64 %20, i64 %21)
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call16
}

declare i64 @call1(i64, i64) #1

declare i64 @Fsymbol_value(i64) #1

declare i64 @intern(i8*) #1

; Function Attrs: nounwind uwtable
define i64 @Fcapitalize_region(i64 %beg, i64 %end) #0 {
entry:
  %beg.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  store i64 %beg, i64* %beg.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %0 = load i64, i64* %beg.addr, align 8
  %1 = load i64, i64* %end.addr, align 8
  call void @casify_region(i32 2, i64 %0, i64 %1)
  %call = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fupcase_initials_region(i64 %beg, i64 %end) #0 {
entry:
  %beg.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  store i64 %beg, i64* %beg.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %0 = load i64, i64* %beg.addr, align 8
  %1 = load i64, i64* %end.addr, align 8
  call void @casify_region(i32 3, i64 %0, i64 %1)
  %call = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fupcase_word(i64 %arg) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %beg = alloca i64, align 8
  %end = alloca i64, align 8
  %newpoint = alloca i64, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 75
  %1 = load i64, i64* %pt, align 8
  %add = add nsw i64 %1, 0
  %call = call i64 @make_natnum(i64 %add)
  store i64 %call, i64* %beg, align 8
  %2 = load i64, i64* %arg.addr, align 8
  %call1 = call i64 @operate_on_word(i64 %2, i64* %newpoint)
  store i64 %call1, i64* %end, align 8
  %3 = load i64, i64* %beg, align 8
  %4 = load i64, i64* %end, align 8
  call void @casify_region(i32 0, i64 %3, i64 %4)
  %5 = load i64, i64* %newpoint, align 8
  call void @set_point(i64 %5)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call2
}

declare i64 @make_natnum(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @operate_on_word(i64 %arg, i64* %newpoint) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %newpoint.addr = alloca i64*, align 8
  %val = alloca i64, align 8
  %farend = alloca i64, align 8
  %iarg = alloca i64, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64* %newpoint, i64** %newpoint.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 559)
  %1 = load i64, i64* %arg.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %arg.addr, align 8
  %shr = ashr i64 %4, 2
  store i64 %shr, i64* %iarg, align 8
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 75
  %6 = load i64, i64* %pt, align 8
  %add = add nsw i64 %6, 0
  %7 = load i64, i64* %iarg, align 8
  %call3 = call i64 @scan_words(i64 %add, i64 %7)
  store i64 %call3, i64* %farend, align 8
  %8 = load i64, i64* %farend, align 8
  %tobool = icmp ne i64 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %9 = load i64, i64* %iarg, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %if.then
  %10 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 79
  %11 = load i64, i64* %zv, align 8
  br label %cond.end.8

cond.false.7:                                     ; preds = %if.then
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 77
  %13 = load i64, i64* %begv, align 8
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.6
  %cond = phi i64 [ %11, %cond.true.6 ], [ %13, %cond.false.7 ]
  store i64 %cond, i64* %farend, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.8, %cond.end
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt9 = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 75
  %15 = load i64, i64* %pt9, align 8
  %add10 = add nsw i64 %15, 0
  %16 = load i64, i64* %farend, align 8
  %cmp11 = icmp sgt i64 %add10, %16
  br i1 %cmp11, label %cond.true.13, label %cond.false.16

cond.true.13:                                     ; preds = %if.end
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt14 = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 75
  %18 = load i64, i64* %pt14, align 8
  %add15 = add nsw i64 %18, 0
  br label %cond.end.17

cond.false.16:                                    ; preds = %if.end
  %19 = load i64, i64* %farend, align 8
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.13
  %cond18 = phi i64 [ %add15, %cond.true.13 ], [ %19, %cond.false.16 ]
  %20 = load i64*, i64** %newpoint.addr, align 8
  store i64 %cond18, i64* %20, align 8
  %21 = load i64, i64* %farend, align 8
  %call19 = call i64 @make_natnum(i64 %21)
  store i64 %call19, i64* %val, align 8
  %22 = load i64, i64* %val, align 8
  ret i64 %22
}

declare void @set_point(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fdowncase_word(i64 %arg) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %beg = alloca i64, align 8
  %end = alloca i64, align 8
  %newpoint = alloca i64, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 75
  %1 = load i64, i64* %pt, align 8
  %add = add nsw i64 %1, 0
  %call = call i64 @make_natnum(i64 %add)
  store i64 %call, i64* %beg, align 8
  %2 = load i64, i64* %arg.addr, align 8
  %call1 = call i64 @operate_on_word(i64 %2, i64* %newpoint)
  store i64 %call1, i64* %end, align 8
  %3 = load i64, i64* %beg, align 8
  %4 = load i64, i64* %end, align 8
  call void @casify_region(i32 1, i64 %3, i64 %4)
  %5 = load i64, i64* %newpoint, align 8
  call void @set_point(i64 %5)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call2
}

; Function Attrs: nounwind uwtable
define i64 @Fcapitalize_word(i64 %arg) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %beg = alloca i64, align 8
  %end = alloca i64, align 8
  %newpoint = alloca i64, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 75
  %1 = load i64, i64* %pt, align 8
  %add = add nsw i64 %1, 0
  %call = call i64 @make_natnum(i64 %add)
  store i64 %call, i64* %beg, align 8
  %2 = load i64, i64* %arg.addr, align 8
  %call1 = call i64 @operate_on_word(i64 %2, i64* %newpoint)
  store i64 %call1, i64* %end, align 8
  %3 = load i64, i64* %beg, align 8
  %4 = load i64, i64* %end, align 8
  call void @casify_region(i32 2, i64 %3, i64 %4)
  %5 = load i64, i64* %newpoint, align 8
  call void @set_point(i64 %5)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call2
}

; Function Attrs: nounwind uwtable
define void @syms_of_casefiddle() #0 {
entry:
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Supcase to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sdowncase to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Scapitalize to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Supcase_initials to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Supcase_region to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sdowncase_region to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Scapitalize_region to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Supcase_initials_region to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Supcase_word to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sdowncase_word to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Scapitalize_word to %struct.Lisp_Subr*))
  ret void
}

declare void @defsubr(%struct.Lisp_Subr*) #1

; Function Attrs: nounwind uwtable
define void @keys_of_casefiddle() #0 {
entry:
  %0 = load i64, i64* @control_x_map, align 8
  call void @initial_define_key(i64 %0, i32 21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  %call = call i64 @intern(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  %call1 = call i64 @builtin_lisp_symbol(i32 343)
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  %call3 = call i64 @Fput(i64 %call, i64 %call1, i64 %call2)
  %1 = load i64, i64* @control_x_map, align 8
  call void @initial_define_key(i64 %1, i32 12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  %call4 = call i64 @intern(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  %call5 = call i64 @builtin_lisp_symbol(i32 343)
  %call6 = call i64 @builtin_lisp_symbol(i32 901)
  %call7 = call i64 @Fput(i64 %call4, i64 %call5, i64 %call6)
  %2 = load i64, i64* @meta_map, align 8
  call void @initial_define_key(i64 %2, i32 117, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %3 = load i64, i64* @meta_map, align 8
  call void @initial_define_key(i64 %3, i32 108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  %4 = load i64, i64* @meta_map, align 8
  call void @initial_define_key(i64 %4, i32 99, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0))
  ret void
}

declare void @initial_define_key(i64, i32, i8*) #1

declare i64 @Fput(i64, i64, i64) #1

declare %struct.Lisp_Char_Table* @XCHAR_TABLE(i64) #1

declare i64 @Fset_case_table(i64) #1

declare i32 @downcase(i32) #1

declare i32 @upcase1(i32) #1

declare zeroext i1 @STRINGP(i64) #1

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #2

declare zeroext i1 @STRING_MULTIBYTE(i64) #1

declare i64 @SCHARS(i64) #1

declare i64 @Fcopy_sequence(i64) #1

declare zeroext i8 @SREF(i64, i64) #1

declare zeroext i1 @uppercasep(i32) #1

declare i32 @SYNTAX(i32) #1

declare void @SSET(i64, i64, i8 zeroext) #1

declare i64 @SPECPDL_INDEX() #1

declare i8* @record_xmalloc(i64) #1

; Function Attrs: noreturn
declare void @string_overflow() #2

declare i8* @SDATA(i64) #1

declare i32 @string_char(i8*, i8**, i32*) #1

declare i32 @char_string(i32, i8*) #1

declare i64 @make_multibyte_string(i8*, i64, i64) #1

declare i64 @unbind_to(i64, i64) #1

declare void @validate_region(i64*, i64*) #1

declare void @modify_text(i64, i64) #1

declare void @record_change(i64, i64) #1

declare i64 @buf_charpos_to_bytepos(%struct.buffer*, i64) #1

declare void @SETUP_BUFFER_SYNTAX_TABLE() #1

declare i32 @FETCH_MULTIBYTE_CHAR(i64) #1

declare zeroext i1 @syntax_prefix_flag_p(i32) #1

declare void @replace_range_2(i64, i64, i64, i64, i8*, i64, i64, i1 zeroext) #1

declare void @temp_set_point_both(%struct.buffer*, i64, i64) #1

declare void @signal_after_change(i64, i64, i64) #1

declare void @update_compositions(i64, i64, i32) #1

declare i64 @scan_words(i64, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
