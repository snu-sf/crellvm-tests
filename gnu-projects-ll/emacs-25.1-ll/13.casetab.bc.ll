; ModuleID = './src/casetab.bc'
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
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon, i16, i16, i8*, i8*, i8* }
%union.anon = type { i64 ()* }
%struct.Lisp_Char_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, [64 x i64], [0 x i64] }
%struct.Lisp_Cons = type { i64, %union.anon.0 }
%union.anon.0 = type { i64 }

@current_buffer = external global %struct.buffer*, align 8
@Vascii_downcase_table = common global i64 0, align 8
@Vascii_canon_table = common global i64 0, align 8
@Vascii_eqv_table = internal global i64 0, align 8
@Vascii_upcase_table = internal global i64 0, align 8
@Scurrent_case_table = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon { i64 ()* @Fcurrent_case_table }, i16 0, i16 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null }, align 8
@Sstandard_case_table = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon { i64 ()* @Fstandard_case_table }, i16 0, i16 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null }, align 8
@.str = private unnamed_addr constant [13 x i8] c"case-table-p\00", align 1
@Scase_table_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fcase_table_p }, i16 1, i16 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"current-case-table\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"standard-case-table\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"set-case-table\00", align 1
@Sset_case_table = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fset_case_table }, i16 1, i16 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"set-standard-case-table\00", align 1
@Sset_standard_case_table = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fset_standard_case_table }, i16 1, i16 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define i64 @Fcase_table_p(i64 %object) #0 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca i64, align 8
  %up = alloca i64, align 8
  %canon = alloca i64, align 8
  %eqv = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call zeroext i1 @CHAR_TABLE_P(i64 %0)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %object.addr, align 8
  %call2 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %1)
  %purpose = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call2, i32 0, i32 3
  %2 = load i64, i64* %purpose, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 239)
  %cmp = icmp eq i64 %2, %call3
  br i1 %cmp, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %3 = load i64, i64* %object.addr, align 8
  %call7 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %3)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call7, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 0
  %4 = load i64, i64* %arrayidx, align 8
  store i64 %4, i64* %up, align 8
  %5 = load i64, i64* %object.addr, align 8
  %call8 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %5)
  %extras9 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call8, i32 0, i32 6
  %arrayidx10 = getelementptr inbounds [0 x i64], [0 x i64]* %extras9, i32 0, i64 1
  %6 = load i64, i64* %arrayidx10, align 8
  store i64 %6, i64* %canon, align 8
  %7 = load i64, i64* %object.addr, align 8
  %call11 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %7)
  %extras12 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call11, i32 0, i32 6
  %arrayidx13 = getelementptr inbounds [0 x i64], [0 x i64]* %extras12, i32 0, i64 2
  %8 = load i64, i64* %arrayidx13, align 8
  store i64 %8, i64* %eqv, align 8
  %9 = load i64, i64* %up, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp15 = icmp eq i64 %9, %call14
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %10 = load i64, i64* %up, align 8
  %call16 = call zeroext i1 @CHAR_TABLE_P(i64 %10)
  br i1 %call16, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end.6
  %11 = load i64, i64* %canon, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %11, %call17
  br i1 %cmp18, label %land.lhs.true.19, label %lor.lhs.false.22

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %12 = load i64, i64* %eqv, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp21 = icmp eq i64 %12, %call20
  br i1 %cmp21, label %cond.true, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %land.lhs.true.19, %land.lhs.true
  %13 = load i64, i64* %canon, align 8
  %call23 = call zeroext i1 @CHAR_TABLE_P(i64 %13)
  br i1 %call23, label %land.lhs.true.24, label %cond.false

land.lhs.true.24:                                 ; preds = %lor.lhs.false.22
  %14 = load i64, i64* %eqv, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp26 = icmp eq i64 %14, %call25
  br i1 %cmp26, label %cond.true, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %land.lhs.true.24
  %15 = load i64, i64* %eqv, align 8
  %call28 = call zeroext i1 @CHAR_TABLE_P(i64 %15)
  br i1 %call28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.27, %land.lhs.true.24, %land.lhs.true.19
  %call29 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.27, %lor.lhs.false.22, %lor.lhs.false
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call29, %cond.true ], [ %call30, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.4, %if.then
  %16 = load i64, i64* %retval
  ret i64 %16
}

declare zeroext i1 @CHAR_TABLE_P(i64) #1

declare i64 @builtin_lisp_symbol(i32) #1

declare %struct.Lisp_Char_Table* @XCHAR_TABLE(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fcurrent_case_table() #0 {
entry:
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %downcase_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 23
  %1 = load i64, i64* %downcase_table_, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i64 @Fstandard_case_table() #0 {
entry:
  %0 = load i64, i64* @Vascii_downcase_table, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define i64 @Fset_case_table(i64 %table) #0 {
entry:
  %table.addr = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  %0 = load i64, i64* %table.addr, align 8
  %call = call i64 @set_case_table(i64 %0, i1 zeroext false)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @set_case_table(i64 %table, i1 zeroext %standard) #0 {
entry:
  %table.addr = alloca i64, align 8
  %standard.addr = alloca i8, align 1
  %up = alloca i64, align 8
  %canon = alloca i64, align 8
  %eqv = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  %frombool = zext i1 %standard to i8
  store i8 %frombool, i8* %standard.addr, align 1
  %0 = load i64, i64* %table.addr, align 8
  %call = call i64 @check_case_table(i64 %0)
  %1 = load i64, i64* %table.addr, align 8
  %call1 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %1)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call1, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 0
  %2 = load i64, i64* %arrayidx, align 8
  store i64 %2, i64* %up, align 8
  %3 = load i64, i64* %table.addr, align 8
  %call2 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %3)
  %extras3 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call2, i32 0, i32 6
  %arrayidx4 = getelementptr inbounds [0 x i64], [0 x i64]* %extras3, i32 0, i64 1
  %4 = load i64, i64* %arrayidx4, align 8
  store i64 %4, i64* %canon, align 8
  %5 = load i64, i64* %table.addr, align 8
  %call5 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %5)
  %extras6 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call5, i32 0, i32 6
  %arrayidx7 = getelementptr inbounds [0 x i64], [0 x i64]* %extras6, i32 0, i64 2
  %6 = load i64, i64* %arrayidx7, align 8
  store i64 %6, i64* %eqv, align 8
  %7 = load i64, i64* %up, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %7, %call8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call9 = call i64 @builtin_lisp_symbol(i32 239)
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %call11 = call i64 @Fmake_char_table(i64 %call9, i64 %call10)
  store i64 %call11, i64* %up, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %8 = load i64, i64* %table.addr, align 8
  %9 = load i64, i64* %up, align 8
  call void @map_char_table(void (i64, i64, i64)* @set_identity, i64 %call12, i64 %8, i64 %9)
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  %10 = load i64, i64* %table.addr, align 8
  %11 = load i64, i64* %up, align 8
  call void @map_char_table(void (i64, i64, i64)* @shuffle, i64 %call13, i64 %10, i64 %11)
  %12 = load i64, i64* %table.addr, align 8
  %13 = load i64, i64* %up, align 8
  call void @set_char_table_extras(i64 %12, i64 0, i64 %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i64, i64* %canon, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp15 = icmp eq i64 %14, %call14
  br i1 %cmp15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end
  %call17 = call i64 @builtin_lisp_symbol(i32 239)
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %call19 = call i64 @Fmake_char_table(i64 %call17, i64 %call18)
  store i64 %call19, i64* %canon, align 8
  %15 = load i64, i64* %table.addr, align 8
  %16 = load i64, i64* %canon, align 8
  call void @set_char_table_extras(i64 %15, i64 1, i64 %16)
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  %17 = load i64, i64* %table.addr, align 8
  %18 = load i64, i64* %table.addr, align 8
  call void @map_char_table(void (i64, i64, i64)* @set_canon, i64 %call20, i64 %17, i64 %18)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %if.end
  %19 = load i64, i64* %eqv, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp23 = icmp eq i64 %19, %call22
  br i1 %cmp23, label %if.then.24, label %if.end.30

if.then.24:                                       ; preds = %if.end.21
  %call25 = call i64 @builtin_lisp_symbol(i32 239)
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  %call27 = call i64 @Fmake_char_table(i64 %call25, i64 %call26)
  store i64 %call27, i64* %eqv, align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  %20 = load i64, i64* %canon, align 8
  %21 = load i64, i64* %eqv, align 8
  call void @map_char_table(void (i64, i64, i64)* @set_identity, i64 %call28, i64 %20, i64 %21)
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  %22 = load i64, i64* %canon, align 8
  %23 = load i64, i64* %eqv, align 8
  call void @map_char_table(void (i64, i64, i64)* @shuffle, i64 %call29, i64 %22, i64 %23)
  %24 = load i64, i64* %table.addr, align 8
  %25 = load i64, i64* %eqv, align 8
  call void @set_char_table_extras(i64 %24, i64 2, i64 %25)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.24, %if.end.21
  %26 = load i64, i64* %canon, align 8
  %27 = load i64, i64* %eqv, align 8
  call void @set_char_table_extras(i64 %26, i64 2, i64 %27)
  %28 = load i8, i8* %standard.addr, align 1
  %tobool = trunc i8 %28 to i1
  br i1 %tobool, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end.30
  %29 = load i64, i64* %table.addr, align 8
  store i64 %29, i64* @Vascii_downcase_table, align 8
  %30 = load i64, i64* %up, align 8
  store i64 %30, i64* @Vascii_upcase_table, align 8
  %31 = load i64, i64* %canon, align 8
  store i64 %31, i64* @Vascii_canon_table, align 8
  %32 = load i64, i64* %eqv, align 8
  store i64 %32, i64* @Vascii_eqv_table, align 8
  br label %if.end.32

if.else:                                          ; preds = %if.end.30
  %33 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %34 = load i64, i64* %table.addr, align 8
  call void @bset_downcase_table(%struct.buffer* %33, i64 %34)
  %35 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %36 = load i64, i64* %up, align 8
  call void @bset_upcase_table(%struct.buffer* %35, i64 %36)
  %37 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %38 = load i64, i64* %canon, align 8
  call void @bset_case_canon_table(%struct.buffer* %37, i64 %38)
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %40 = load i64, i64* %eqv, align 8
  call void @bset_case_eqv_table(%struct.buffer* %39, i64 %40)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.31
  %41 = load i64, i64* %table.addr, align 8
  ret i64 %41
}

; Function Attrs: nounwind uwtable
define i64 @Fset_standard_case_table(i64 %table) #0 {
entry:
  %table.addr = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  %0 = load i64, i64* %table.addr, align 8
  %call = call i64 @set_case_table(i64 %0, i1 zeroext true)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define void @init_casetab_once() #0 {
entry:
  %i = alloca i32, align 4
  %down = alloca i64, align 8
  %up = alloca i64, align 8
  %eqv = alloca i64, align 8
  %c = alloca i32, align 4
  %c18 = alloca i32, align 4
  %c42 = alloca i32, align 4
  %call = call i64 @builtin_lisp_symbol(i32 239)
  %call1 = call i64 @builtin_lisp_symbol(i32 258)
  %call2 = call i64 @Fput(i64 %call, i64 %call1, i64 14)
  %call3 = call i64 @builtin_lisp_symbol(i32 239)
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %call5 = call i64 @Fmake_char_table(i64 %call3, i64 %call4)
  store i64 %call5, i64* %down, align 8
  %0 = load i64, i64* %down, align 8
  store i64 %0, i64* @Vascii_downcase_table, align 8
  %1 = load i64, i64* %down, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 239)
  call void @set_char_table_purpose(i64 %1, i64 %call6)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %cmp7 = icmp sge i32 %3, 65
  br i1 %cmp7, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %cmp8 = icmp sle i32 %4, 90
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %5 = load i32, i32* %i, align 4
  %add = add nsw i32 %5, 32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %6 = load i32, i32* %i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %6, %cond.false ]
  store i32 %cond, i32* %c, align 4
  %7 = load i64, i64* %down, align 8
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %c, align 4
  %conv = sext i32 %9 to i64
  %shl = shl i64 %conv, 2
  %add9 = add i64 %shl, 2
  call void @CHAR_TABLE_SET(i64 %7, i32 %8, i64 %add9)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i64, i64* %down, align 8
  %12 = load i64, i64* %down, align 8
  %call10 = call i64 @Fcopy_sequence(i64 %12)
  call void @set_char_table_extras(i64 %11, i64 1, i64 %call10)
  %call11 = call i64 @builtin_lisp_symbol(i32 239)
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %call13 = call i64 @Fmake_char_table(i64 %call11, i64 %call12)
  store i64 %call13, i64* %up, align 8
  %13 = load i64, i64* %down, align 8
  %14 = load i64, i64* %up, align 8
  call void @set_char_table_extras(i64 %13, i64 0, i64 %14)
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.32, %for.end
  %15 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %15, 128
  br i1 %cmp15, label %for.body.17, label %for.end.34

for.body.17:                                      ; preds = %for.cond.14
  %16 = load i32, i32* %i, align 4
  %cmp19 = icmp sge i32 %16, 97
  br i1 %cmp19, label %land.lhs.true.21, label %cond.false.26

land.lhs.true.21:                                 ; preds = %for.body.17
  %17 = load i32, i32* %i, align 4
  %cmp22 = icmp sle i32 %17, 122
  br i1 %cmp22, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %land.lhs.true.21
  %18 = load i32, i32* %i, align 4
  %add25 = add nsw i32 %18, -32
  br label %cond.end.27

cond.false.26:                                    ; preds = %land.lhs.true.21, %for.body.17
  %19 = load i32, i32* %i, align 4
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.24
  %cond28 = phi i32 [ %add25, %cond.true.24 ], [ %19, %cond.false.26 ]
  store i32 %cond28, i32* %c18, align 4
  %20 = load i64, i64* %up, align 8
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %c18, align 4
  %conv29 = sext i32 %22 to i64
  %shl30 = shl i64 %conv29, 2
  %add31 = add i64 %shl30, 2
  call void @CHAR_TABLE_SET(i64 %20, i32 %21, i64 %add31)
  br label %for.inc.32

for.inc.32:                                       ; preds = %cond.end.27
  %23 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %23, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond.14

for.end.34:                                       ; preds = %for.cond.14
  %call35 = call i64 @builtin_lisp_symbol(i32 239)
  %call36 = call i64 @builtin_lisp_symbol(i32 0)
  %call37 = call i64 @Fmake_char_table(i64 %call35, i64 %call36)
  store i64 %call37, i64* %eqv, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.66, %for.end.34
  %24 = load i32, i32* %i, align 4
  %cmp39 = icmp slt i32 %24, 128
  br i1 %cmp39, label %for.body.41, label %for.end.68

for.body.41:                                      ; preds = %for.cond.38
  %25 = load i32, i32* %i, align 4
  %cmp43 = icmp sge i32 %25, 65
  br i1 %cmp43, label %land.lhs.true.45, label %cond.false.50

land.lhs.true.45:                                 ; preds = %for.body.41
  %26 = load i32, i32* %i, align 4
  %cmp46 = icmp sle i32 %26, 90
  br i1 %cmp46, label %cond.true.48, label %cond.false.50

cond.true.48:                                     ; preds = %land.lhs.true.45
  %27 = load i32, i32* %i, align 4
  %add49 = add nsw i32 %27, 32
  br label %cond.end.61

cond.false.50:                                    ; preds = %land.lhs.true.45, %for.body.41
  %28 = load i32, i32* %i, align 4
  %cmp51 = icmp sge i32 %28, 97
  br i1 %cmp51, label %land.lhs.true.53, label %cond.false.58

land.lhs.true.53:                                 ; preds = %cond.false.50
  %29 = load i32, i32* %i, align 4
  %cmp54 = icmp sle i32 %29, 122
  br i1 %cmp54, label %cond.true.56, label %cond.false.58

cond.true.56:                                     ; preds = %land.lhs.true.53
  %30 = load i32, i32* %i, align 4
  %add57 = add nsw i32 %30, -32
  br label %cond.end.59

cond.false.58:                                    ; preds = %land.lhs.true.53, %cond.false.50
  %31 = load i32, i32* %i, align 4
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.56
  %cond60 = phi i32 [ %add57, %cond.true.56 ], [ %31, %cond.false.58 ]
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.end.59, %cond.true.48
  %cond62 = phi i32 [ %add49, %cond.true.48 ], [ %cond60, %cond.end.59 ]
  store i32 %cond62, i32* %c42, align 4
  %32 = load i64, i64* %eqv, align 8
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %c42, align 4
  %conv63 = sext i32 %34 to i64
  %shl64 = shl i64 %conv63, 2
  %add65 = add i64 %shl64, 2
  call void @CHAR_TABLE_SET(i64 %32, i32 %33, i64 %add65)
  br label %for.inc.66

for.inc.66:                                       ; preds = %cond.end.61
  %35 = load i32, i32* %i, align 4
  %inc67 = add nsw i32 %35, 1
  store i32 %inc67, i32* %i, align 4
  br label %for.cond.38

for.end.68:                                       ; preds = %for.cond.38
  %36 = load i64, i64* %down, align 8
  %37 = load i64, i64* %eqv, align 8
  call void @set_char_table_extras(i64 %36, i64 2, i64 %37)
  %38 = load i64, i64* %down, align 8
  %call69 = call i64 @set_case_table(i64 %38, i1 zeroext true)
  ret void
}

declare i64 @Fput(i64, i64, i64) #1

declare i64 @Fmake_char_table(i64, i64) #1

declare void @set_char_table_purpose(i64, i64) #1

declare void @CHAR_TABLE_SET(i64, i32, i64) #1

declare void @set_char_table_extras(i64, i64, i64) #1

declare i64 @Fcopy_sequence(i64) #1

; Function Attrs: nounwind uwtable
define void @syms_of_casetab() #0 {
entry:
  call void @staticpro(i64* @Vascii_canon_table)
  call void @staticpro(i64* @Vascii_downcase_table)
  call void @staticpro(i64* @Vascii_eqv_table)
  call void @staticpro(i64* @Vascii_upcase_table)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Scase_table_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Scurrent_case_table)
  call void @defsubr(%struct.Lisp_Subr* @Sstandard_case_table)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_case_table to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_standard_case_table to %struct.Lisp_Subr*))
  ret void
}

declare void @staticpro(i64*) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

; Function Attrs: nounwind uwtable
define internal i64 @check_case_table(i64 %obj) #0 {
entry:
  %obj.addr = alloca i64, align 8
  store i64 %obj, i64* %obj.addr, align 8
  %0 = load i64, i64* %obj.addr, align 8
  %call = call i64 @Fcase_table_p(i64 %0)
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %call, %call1
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 240)
  %1 = load i64, i64* %obj.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call2, i64 %1) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %obj.addr, align 8
  ret i64 %4
}

declare void @map_char_table(void (i64, i64, i64)*, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @set_identity(i64 %table, i64 %c, i64 %elt) #0 {
entry:
  %table.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %elt.addr = alloca i64, align 8
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  store i64 %table, i64* %table.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  store i64 %elt, i64* %elt.addr, align 8
  %0 = load i64, i64* %elt.addr, align 8
  %call = call zeroext i1 @NATNUMP(i64 %0)
  br i1 %call, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %c.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load i64, i64* %c.addr, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  %shr = ashr i64 %5, 2
  %conv3 = trunc i64 %shr to i32
  store i32 %conv3, i32* %from, align 4
  %6 = load i64, i64* %c.addr, align 8
  %sub4 = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub4 to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %9 = load i64, i64* %cdr, align 8
  %shr5 = ashr i64 %9, 2
  %conv6 = trunc i64 %shr5 to i32
  store i32 %conv6, i32* %to, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load i64, i64* %c.addr, align 8
  %shr7 = ashr i64 %10, 2
  %conv8 = trunc i64 %shr7 to i32
  store i32 %conv8, i32* %to, align 4
  store i32 %conv8, i32* %from, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %11 = load i32, i32* %to, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %to, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %from, align 4
  %13 = load i32, i32* %to, align 4
  %cmp9 = icmp slt i32 %12, %13
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %table.addr, align 8
  %15 = load i32, i32* %from, align 4
  %16 = load i32, i32* %from, align 4
  %conv11 = sext i32 %16 to i64
  %shl = shl i64 %conv11, 2
  %add = add i64 %shl, 2
  call void @CHAR_TABLE_SET(i64 %14, i32 %15, i64 %add)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %from, align 4
  %inc12 = add nsw i32 %17, 1
  store i32 %inc12, i32* %from, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @shuffle(i64 %table, i64 %c, i64 %elt) #0 {
entry:
  %table.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %elt.addr = alloca i64, align 8
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  %tem = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  store i64 %elt, i64* %elt.addr, align 8
  %0 = load i64, i64* %elt.addr, align 8
  %call = call zeroext i1 @NATNUMP(i64 %0)
  br i1 %call, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %c.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load i64, i64* %c.addr, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  %shr = ashr i64 %5, 2
  %conv3 = trunc i64 %shr to i32
  store i32 %conv3, i32* %from, align 4
  %6 = load i64, i64* %c.addr, align 8
  %sub4 = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub4 to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %9 = load i64, i64* %cdr, align 8
  %shr5 = ashr i64 %9, 2
  %conv6 = trunc i64 %shr5 to i32
  store i32 %conv6, i32* %to, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load i64, i64* %c.addr, align 8
  %shr7 = ashr i64 %10, 2
  %conv8 = trunc i64 %shr7 to i32
  store i32 %conv8, i32* %to, align 4
  store i32 %conv8, i32* %from, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %11 = load i32, i32* %to, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %to, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %from, align 4
  %13 = load i32, i32* %to, align 4
  %cmp9 = icmp slt i32 %12, %13
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %table.addr, align 8
  %15 = load i64, i64* %elt.addr, align 8
  %call11 = call i64 @Faref(i64 %14, i64 %15)
  store i64 %call11, i64* %tem, align 8
  %16 = load i64, i64* %table.addr, align 8
  %17 = load i64, i64* %elt.addr, align 8
  %18 = load i32, i32* %from, align 4
  %conv12 = sext i32 %18 to i64
  %shl = shl i64 %conv12, 2
  %add = add i64 %shl, 2
  %call13 = call i64 @Faset(i64 %16, i64 %17, i64 %add)
  %19 = load i64, i64* %table.addr, align 8
  %20 = load i32, i32* %from, align 4
  %conv14 = sext i32 %20 to i64
  %shl15 = shl i64 %conv14, 2
  %add16 = add i64 %shl15, 2
  %21 = load i64, i64* %tem, align 8
  %call17 = call i64 @Faset(i64 %19, i64 %add16, i64 %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %from, align 4
  %inc18 = add nsw i32 %22, 1
  store i32 %inc18, i32* %from, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.19

if.end.19:                                        ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_canon(i64 %case_table, i64 %range, i64 %elt) #0 {
entry:
  %case_table.addr = alloca i64, align 8
  %range.addr = alloca i64, align 8
  %elt.addr = alloca i64, align 8
  %up = alloca i64, align 8
  %canon = alloca i64, align 8
  store i64 %case_table, i64* %case_table.addr, align 8
  store i64 %range, i64* %range.addr, align 8
  store i64 %elt, i64* %elt.addr, align 8
  %0 = load i64, i64* %case_table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %0)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 0
  %1 = load i64, i64* %arrayidx, align 8
  store i64 %1, i64* %up, align 8
  %2 = load i64, i64* %case_table.addr, align 8
  %call1 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %2)
  %extras2 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call1, i32 0, i32 6
  %arrayidx3 = getelementptr inbounds [0 x i64], [0 x i64]* %extras2, i32 0, i64 1
  %3 = load i64, i64* %arrayidx3, align 8
  store i64 %3, i64* %canon, align 8
  %4 = load i64, i64* %elt.addr, align 8
  %call4 = call zeroext i1 @NATNUMP(i64 %4)
  br i1 %call4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %canon, align 8
  %6 = load i64, i64* %range.addr, align 8
  %7 = load i64, i64* %case_table.addr, align 8
  %8 = load i64, i64* %up, align 8
  %9 = load i64, i64* %elt.addr, align 8
  %call5 = call i64 @Faref(i64 %8, i64 %9)
  %call6 = call i64 @Faref(i64 %7, i64 %call5)
  %call7 = call i64 @Fset_char_table_range(i64 %5, i64 %6, i64 %call6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @bset_downcase_table(%struct.buffer*, i64) #1

declare void @bset_upcase_table(%struct.buffer*, i64) #1

declare void @bset_case_canon_table(%struct.buffer*, i64) #1

declare void @bset_case_eqv_table(%struct.buffer*, i64) #1

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #2

declare zeroext i1 @NATNUMP(i64) #1

declare i64 @Faref(i64, i64) #1

declare i64 @Faset(i64, i64, i64) #1

declare i64 @Fset_char_table_range(i64, i64, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
