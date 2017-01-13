; ModuleID = './src/category.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type opaque
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.region_cache = type opaque
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.0, i16, i16, i8*, i8*, i8* }
%union.anon.0 = type { i64 ()* }
%struct.hash_table_test = type { i64, i64, i64, i1 (%struct.hash_table_test*, i64, i64)*, i64 (%struct.hash_table_test*, i64)* }
%struct.Lisp_Char_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, [64 x i64], [0 x i64] }
%struct.Lisp_Cons = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.Lisp_Hash_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.hash_table_test, %struct.Lisp_Hash_Table* }

@.str = private unnamed_addr constant [40 x i8] c"Multibyte string in `make-category-set'\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Category `%c' is already defined\00", align 1
@globals = external global %struct.emacs_globals, align 8
@current_buffer = external global %struct.buffer*, align 8
@buffer_defaults = external global %struct.buffer, align 8
@buffer_local_flags = external global %struct.buffer, align 8
@last_per_buffer_idx = external global i32, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Undefined category: %c\00", align 1
@syms_of_category.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"word-combining-categories\00", align 1
@syms_of_category.o_fwd.4 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"word-separating-categories\00", align 1
@Scategory_table = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.0 { i64 ()* @Fcategory_table }, i16 0, i16 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null }, align 8
@Sstandard_category_table = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.0 { i64 ()* @Fstandard_category_table }, i16 0, i16 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null }, align 8
@Smake_category_table = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.0 { i64 ()* @Fmake_category_table }, i16 0, i16 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null }, align 8
@category_table_version = internal global i32 0, align 4
@hashtest_equal = external global %struct.hash_table_test, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"make-category-set\00", align 1
@Smake_category_set = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fmake_category_set }, i16 1, i16 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"define-category\00", align 1
@Sdefine_category = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fdefine_category }, i16 2, i16 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"category-docstring\00", align 1
@Scategory_docstring = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fcategory_docstring }, i16 1, i16 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"get-unused-category\00", align 1
@Sget_unused_category = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fget_unused_category }, i16 0, i16 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"category-table-p\00", align 1
@Scategory_table_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fcategory_table_p }, i16 1, i16 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"category-table\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"standard-category-table\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"copy-category-table\00", align 1
@Scopy_category_table = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fcopy_category_table }, i16 0, i16 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.14 = private unnamed_addr constant [20 x i8] c"make-category-table\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"set-category-table\00", align 1
@Sset_category_table = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fset_category_table }, i16 1, i16 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.16 = private unnamed_addr constant [18 x i8] c"char-category-set\00", align 1
@Schar_category_set = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fchar_category_set }, i16 1, i16 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.17 = private unnamed_addr constant [23 x i8] c"category-set-mnemonics\00", align 1
@Scategory_set_mnemonics = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fcategory_set_mnemonics }, i16 1, i16 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.18 = private unnamed_addr constant [22 x i8] c"modify-category-entry\00", align 1
@Smodify_category_entry = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fmodify_category_entry }, i16 2, i16 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define i64 @Fmake_category_set(i64 %categories) #0 {
entry:
  %categories.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %len = alloca i64, align 8
  %cat = alloca i8, align 1
  %category = alloca i64, align 8
  store i64 %categories, i64* %categories.addr, align 8
  %0 = load i64, i64* %categories.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @Fmake_bool_vector(i64 514, i64 %call)
  store i64 %call1, i64* %val, align 8
  %1 = load i64, i64* %categories.addr, align 8
  %call2 = call zeroext i1 @STRING_MULTIBYTE(i64 %1)
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %categories.addr, align 8
  %call3 = call i64 @SCHARS(i64 %2)
  store i64 %call3, i64* %len, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.end
  %3 = load i64, i64* %len, align 8
  %dec = add nsw i64 %3, -1
  store i64 %dec, i64* %len, align 8
  %cmp = icmp sge i64 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %categories.addr, align 8
  %5 = load i64, i64* %len, align 8
  %call4 = call zeroext i8 @SREF(i64 %4, i64 %5)
  store i8 %call4, i8* %cat, align 1
  %6 = load i8, i8* %cat, align 1
  %conv = zext i8 %6 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %category, align 8
  %7 = load i64, i64* %category, align 8
  %call5 = call zeroext i1 @RANGED_INTEGERP(i64 32, i64 %7, i64 126)
  br i1 %call5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %call7 = call i64 @builtin_lisp_symbol(i32 244)
  %8 = load i64, i64* %category, align 8
  %9 = call i64 @wrong_type_argument(i64 %call7, i64 %8) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %10, %cond.true
  %11 = load i64, i64* %val, align 8
  %12 = load i8, i8* %cat, align 1
  %conv8 = zext i8 %12 to i64
  call void @set_category_set(i64 %11, i64 %conv8, i1 zeroext true)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load i64, i64* %val, align 8
  ret i64 %13
}

declare void @CHECK_STRING(i64) #1

declare i64 @Fmake_bool_vector(i64, i64) #1

declare i64 @builtin_lisp_symbol(i32) #1

declare zeroext i1 @STRING_MULTIBYTE(i64) #1

; Function Attrs: noreturn
declare void @error(i8*, ...) #2

declare i64 @SCHARS(i64) #1

declare zeroext i8 @SREF(i64, i64) #1

declare zeroext i1 @RANGED_INTEGERP(i64, i64, i64) #1

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @set_category_set(i64 %category_set, i64 %category, i1 zeroext %val) #0 {
entry:
  %category_set.addr = alloca i64, align 8
  %category.addr = alloca i64, align 8
  %val.addr = alloca i8, align 1
  store i64 %category_set, i64* %category_set.addr, align 8
  store i64 %category, i64* %category.addr, align 8
  %frombool = zext i1 %val to i8
  store i8 %frombool, i8* %val.addr, align 1
  %0 = load i64, i64* %category_set.addr, align 8
  %1 = load i64, i64* %category.addr, align 8
  %2 = load i8, i8* %val.addr, align 1
  %tobool = trunc i8 %2 to i1
  call void @bool_vector_set(i64 %0, i64 %1, i1 zeroext %tobool)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Fdefine_category(i64 %category, i64 %docstring, i64 %table) #0 {
entry:
  %category.addr = alloca i64, align 8
  %docstring.addr = alloca i64, align 8
  %table.addr = alloca i64, align 8
  store i64 %category, i64* %category.addr, align 8
  store i64 %docstring, i64* %docstring.addr, align 8
  store i64 %table, i64* %table.addr, align 8
  %0 = load i64, i64* %category.addr, align 8
  %call = call zeroext i1 @RANGED_INTEGERP(i64 32, i64 %0, i64 126)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 244)
  %1 = load i64, i64* %category.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call1, i64 %1) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %docstring.addr, align 8
  call void @CHECK_STRING(i64 %4)
  %5 = load i64, i64* %table.addr, align 8
  %call2 = call i64 @check_category_table(i64 %5)
  store i64 %call2, i64* %table.addr, align 8
  %6 = load i64, i64* %table.addr, align 8
  %call3 = call i64 @Fchar_table_extra_slot(i64 %6, i64 2)
  %7 = load i64, i64* %category.addr, align 8
  %shr = ashr i64 %7, 2
  %sub = sub nsw i64 %shr, 32
  %call4 = call i64 @AREF(i64 %call3, i64 %sub)
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %call4, %call5
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %8 = load i64, i64* %category.addr, align 8
  %shr6 = ashr i64 %8, 2
  %conv = trunc i64 %shr6 to i32
  call void (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i32 %conv) #3
  unreachable

if.end:                                           ; preds = %cond.end
  %9 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 240), align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %9, %call7
  br i1 %cmp8, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %10 = load i64, i64* %docstring.addr, align 8
  %call11 = call i64 @Fpurecopy(i64 %10)
  store i64 %call11, i64* %docstring.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %11 = load i64, i64* %table.addr, align 8
  %call13 = call i64 @Fchar_table_extra_slot(i64 %11, i64 2)
  %12 = load i64, i64* %category.addr, align 8
  %shr14 = ashr i64 %12, 2
  %sub15 = sub nsw i64 %shr14, 32
  %13 = load i64, i64* %docstring.addr, align 8
  call void @ASET(i64 %call13, i64 %sub15, i64 %13)
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call16
}

; Function Attrs: nounwind uwtable
define internal i64 @check_category_table(i64 %table) #0 {
entry:
  %retval = alloca i64, align 8
  %table.addr = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  %0 = load i64, i64* %table.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %category_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 17
  %2 = load i64, i64* %category_table_, align 8
  store i64 %2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %table.addr, align 8
  %call1 = call i64 @Fcategory_table_p(i64 %3)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %call1, %call2
  br i1 %cmp3, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call4 = call i64 @builtin_lisp_symbol(i32 243)
  %4 = load i64, i64* %table.addr, align 8
  %5 = call i64 @wrong_type_argument(i64 %call4, i64 %4) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  %7 = load i64, i64* %table.addr, align 8
  store i64 %7, i64* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %8 = load i64, i64* %retval
  ret i64 %8
}

declare i64 @AREF(i64, i64) #1

declare i64 @Fchar_table_extra_slot(i64, i64) #1

declare i64 @Fpurecopy(i64) #1

declare void @ASET(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fcategory_docstring(i64 %category, i64 %table) #0 {
entry:
  %category.addr = alloca i64, align 8
  %table.addr = alloca i64, align 8
  store i64 %category, i64* %category.addr, align 8
  store i64 %table, i64* %table.addr, align 8
  %0 = load i64, i64* %category.addr, align 8
  %call = call zeroext i1 @RANGED_INTEGERP(i64 32, i64 %0, i64 126)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 244)
  %1 = load i64, i64* %category.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call1, i64 %1) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %table.addr, align 8
  %call2 = call i64 @check_category_table(i64 %4)
  store i64 %call2, i64* %table.addr, align 8
  %5 = load i64, i64* %table.addr, align 8
  %call3 = call i64 @Fchar_table_extra_slot(i64 %5, i64 2)
  %6 = load i64, i64* %category.addr, align 8
  %shr = ashr i64 %6, 2
  %sub = sub nsw i64 %shr, 32
  %call4 = call i64 @AREF(i64 %call3, i64 %sub)
  ret i64 %call4
}

; Function Attrs: nounwind uwtable
define i64 @Fget_unused_category(i64 %table) #0 {
entry:
  %retval = alloca i64, align 8
  %table.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store i64 %table, i64* %table.addr, align 8
  %0 = load i64, i64* %table.addr, align 8
  %call = call i64 @check_category_table(i64 %0)
  store i64 %call, i64* %table.addr, align 8
  store i32 32, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %1, 126
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %table.addr, align 8
  %call1 = call i64 @Fchar_table_extra_slot(i64 %2, i64 2)
  %3 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %3, 32
  %conv = sext i32 %sub to i64
  %call2 = call i64 @AREF(i64 %call1, i64 %conv)
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %call2, %call3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %conv6 = sext i32 %4 to i64
  %shl = shl i64 %conv6, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call7, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i64, i64* %retval
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define i64 @Fcategory_table_p(i64 %arg) #0 {
entry:
  %retval = alloca i64, align 8
  %arg.addr = alloca i64, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %call = call zeroext i1 @CHAR_TABLE_P(i64 %0)
  br i1 %call, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %arg.addr, align 8
  %call1 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %1)
  %purpose = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call1, i32 0, i32 3
  %2 = load i64, i64* %purpose, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 242)
  %cmp = icmp eq i64 %2, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call3 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call3, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval
  ret i64 %3
}

declare zeroext i1 @CHAR_TABLE_P(i64) #1

declare %struct.Lisp_Char_Table* @XCHAR_TABLE(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fcategory_table() #0 {
entry:
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %category_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 17
  %1 = load i64, i64* %category_table_, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i64 @Fstandard_category_table() #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.buffer, %struct.buffer* @buffer_defaults, i32 0, i32 17), align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define i64 @Fcopy_category_table(i64 %table) #0 {
entry:
  %table.addr = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  %0 = load i64, i64* %table.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %table.addr, align 8
  %call1 = call i64 @check_category_table(i64 %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct.buffer, %struct.buffer* @buffer_defaults, i32 0, i32 17), align 8
  store i64 %2, i64* %table.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i64, i64* %table.addr, align 8
  %call2 = call i64 @copy_category_table(i64 %3)
  ret i64 %call2
}

; Function Attrs: nounwind uwtable
define internal i64 @copy_category_table(i64 %table) #0 {
entry:
  %table.addr = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  %0 = load i64, i64* %table.addr, align 8
  %call = call i64 @copy_char_table(i64 %0)
  store i64 %call, i64* %table.addr, align 8
  %1 = load i64, i64* %table.addr, align 8
  %call1 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %1)
  %defalt = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call1, i32 0, i32 1
  %2 = load i64, i64* %defalt, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %table.addr, align 8
  %4 = load i64, i64* %table.addr, align 8
  %call3 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %4)
  %defalt4 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call3, i32 0, i32 1
  %5 = load i64, i64* %defalt4, align 8
  %call5 = call i64 @Fcopy_sequence(i64 %5)
  call void @set_char_table_defalt(i64 %3, i64 %call5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, i64* %table.addr, align 8
  %7 = load i64, i64* %table.addr, align 8
  %call6 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %7)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call6, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 0
  %8 = load i64, i64* %arrayidx, align 8
  %call7 = call i64 @Fcopy_sequence(i64 %8)
  call void @set_char_table_extras(i64 %6, i64 0, i64 %call7)
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %9 = load i64, i64* %table.addr, align 8
  %10 = load i64, i64* %table.addr, align 8
  call void @map_char_table(void (i64, i64, i64)* @copy_category_entry, i64 %call8, i64 %9, i64 %10)
  %11 = load i64, i64* %table.addr, align 8
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define i64 @Fmake_category_table() #0 {
entry:
  %val = alloca i64, align 8
  %i = alloca i32, align 4
  %call = call i64 @builtin_lisp_symbol(i32 242)
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @Fmake_char_table(i64 %call, i64 %call1)
  store i64 %call2, i64* %val, align 8
  %0 = load i64, i64* %val, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %call4 = call i64 @Fmake_bool_vector(i64 514, i64 %call3)
  call void @set_char_table_defalt(i64 %0, i64 %call4)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %val, align 8
  %3 = load i32, i32* %i, align 4
  %conv = sext i32 %3 to i64
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %call6 = call i64 @Fmake_bool_vector(i64 514, i64 %call5)
  call void @set_char_table_contents(i64 %2, i64 %conv, i64 %call6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i64, i64* %val, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %call8 = call i64 @Fmake_vector(i64 382, i64 %call7)
  %call9 = call i64 @Fset_char_table_extra_slot(i64 %5, i64 2, i64 %call8)
  %6 = load i64, i64* %val, align 8
  ret i64 %6
}

declare i64 @Fmake_char_table(i64, i64) #1

declare void @set_char_table_defalt(i64, i64) #1

declare void @set_char_table_contents(i64, i64, i64) #1

declare i64 @Fset_char_table_extra_slot(i64, i64, i64) #1

declare i64 @Fmake_vector(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fset_category_table(i64 %table) #0 {
entry:
  %table.addr = alloca i64, align 8
  %idx = alloca i32, align 4
  store i64 %table, i64* %table.addr, align 8
  %0 = load i64, i64* %table.addr, align 8
  %call = call i64 @check_category_table(i64 %0)
  store i64 %call, i64* %table.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %2 = load i64, i64* %table.addr, align 8
  call void @bset_category_table(%struct.buffer* %1, i64 %2)
  %3 = load i64, i64* bitcast (i8* getelementptr inbounds (i8, i8* bitcast (%struct.buffer* @buffer_local_flags to i8*), i64 136) to i64*), align 8
  %shr = ashr i64 %3, 2
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %idx, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load i32, i32* %idx, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %5 = load i32, i32* %idx, align 4
  %6 = load i32, i32* @last_per_buffer_idx, align 4
  %cmp2 = icmp sge i32 %5, %6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.body
  call void @emacs_abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %local_flags = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 84
  %arrayidx = getelementptr inbounds [50 x i8], [50 x i8]* %local_flags, i32 0, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %if.end
  %9 = load i64, i64* %table.addr, align 8
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define internal void @bset_category_table(%struct.buffer* %b, i64 %val) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %val.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %category_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 17
  store i64 %0, i64* %category_table_, align 8
  ret void
}

; Function Attrs: noreturn
declare void @emacs_abort() #2

; Function Attrs: nounwind uwtable
define i64 @char_category_set(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %category_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 17
  %1 = load i64, i64* %category_table_, align 8
  %2 = load i32, i32* %c.addr, align 4
  %call = call i64 @CHAR_TABLE_REF(i64 %1, i32 %2)
  ret i64 %call
}

declare i64 @CHAR_TABLE_REF(i64, i32) #1

; Function Attrs: nounwind uwtable
define i64 @Fchar_category_set(i64 %ch) #0 {
entry:
  %ch.addr = alloca i64, align 8
  store i64 %ch, i64* %ch.addr, align 8
  %0 = load i64, i64* %ch.addr, align 8
  %call = call zeroext i1 @NATNUMP(i64 %0)
  br i1 %call, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %ch.addr, align 8
  %shr = ashr i64 %1, 2
  %cmp = icmp sle i64 %shr, 4194303
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 260)
  %2 = load i64, i64* %ch.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call1, i64 %2) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i64, i64* %ch.addr, align 8
  %shr2 = ashr i64 %5, 2
  %conv = trunc i64 %shr2 to i32
  %call3 = call i64 @char_category_set(i32 %conv)
  ret i64 %call3
}

declare zeroext i1 @NATNUMP(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fcategory_set_mnemonics(i64 %category_set) #0 {
entry:
  %category_set.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %str = alloca [96 x i8], align 16
  store i64 %category_set, i64* %category_set.addr, align 8
  %0 = load i64, i64* %category_set.addr, align 8
  %call = call zeroext i1 @BOOL_VECTOR_P(i64 %0)
  br i1 %call, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %category_set.addr, align 8
  %call1 = call i64 @bool_vector_size(i64 %1)
  %cmp = icmp eq i64 %call1, 128
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 245)
  %2 = load i64, i64* %category_set.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call2, i64 %2) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  store i32 0, i32* %j, align 4
  store i32 32, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %5 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %5, 127
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %conv = sext i32 %6 to i64
  %7 = load i64, i64* %category_set.addr, align 8
  %call4 = call zeroext i1 @CATEGORY_MEMBER(i64 %conv, i64 %7)
  br i1 %call4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %conv5 = trunc i32 %8 to i8
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [96 x i8], [96 x i8]* %str, i32 0, i64 %idxprom
  store i8 %conv5, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc6 = add nsw i32 %10, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [96 x i8], [96 x i8]* %str, i32 0, i64 %idxprom7
  store i8 0, i8* %arrayidx8, align 1
  %arraydecay = getelementptr inbounds [96 x i8], [96 x i8]* %str, i32 0, i32 0
  %call9 = call i64 @build_string(i8* %arraydecay)
  ret i64 %call9
}

declare zeroext i1 @BOOL_VECTOR_P(i64) #1

declare i64 @bool_vector_size(i64) #1

declare zeroext i1 @CATEGORY_MEMBER(i64, i64) #1

declare i64 @build_string(i8*) #1

; Function Attrs: nounwind uwtable
define i64 @Fmodify_category_entry(i64 %character, i64 %category, i64 %table, i64 %reset) #0 {
entry:
  %character.addr = alloca i64, align 8
  %category.addr = alloca i64, align 8
  %table.addr = alloca i64, align 8
  %reset.addr = alloca i64, align 8
  %set_value = alloca i8, align 1
  %category_set = alloca i64, align 8
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp21 = alloca i64, align 8
  store i64 %character, i64* %character.addr, align 8
  store i64 %category, i64* %category.addr, align 8
  store i64 %table, i64* %table.addr, align 8
  store i64 %reset, i64* %reset.addr, align 8
  %0 = load i64, i64* %character.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %character.addr, align 8
  %call = call zeroext i1 @NATNUMP(i64 %1)
  br i1 %call, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %2 = load i64, i64* %character.addr, align 8
  %shr = ashr i64 %2, 2
  %cmp4 = icmp sle i64 %shr, 4194303
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then
  %call6 = call i64 @builtin_lisp_symbol(i32 260)
  %3 = load i64, i64* %character.addr, align 8
  %4 = call i64 @wrong_type_argument(i64 %call6, i64 %3) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load i64, i64* %character.addr, align 8
  %shr7 = ashr i64 %6, 2
  %conv8 = trunc i64 %shr7 to i32
  store i32 %conv8, i32* %end, align 4
  store i32 %conv8, i32* %start, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i64, i64* %character.addr, align 8
  call void @CHECK_CONS(i64 %7)
  br label %do.body

do.body:                                          ; preds = %if.else
  %8 = load i64, i64* %character.addr, align 8
  %sub = sub nsw i64 %8, 3
  %9 = inttoptr i64 %sub to i8*
  %10 = bitcast i8* %9 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %10, i32 0, i32 0
  %11 = load i64, i64* %car, align 8
  store i64 %11, i64* %tmp, align 8
  %12 = load i64, i64* %tmp, align 8
  %call9 = call zeroext i1 @NATNUMP(i64 %12)
  br i1 %call9, label %land.lhs.true.11, label %cond.false.16

land.lhs.true.11:                                 ; preds = %do.body
  %13 = load i64, i64* %tmp, align 8
  %shr12 = ashr i64 %13, 2
  %cmp13 = icmp sle i64 %shr12, 4194303
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %land.lhs.true.11
  br label %cond.end.18

cond.false.16:                                    ; preds = %land.lhs.true.11, %do.body
  %call17 = call i64 @builtin_lisp_symbol(i32 260)
  %14 = load i64, i64* %tmp, align 8
  %15 = call i64 @wrong_type_argument(i64 %call17, i64 %14) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end.18

cond.end.18:                                      ; preds = %16, %cond.true.15
  br label %do.end

do.end:                                           ; preds = %cond.end.18
  br label %do.body.19

do.body.19:                                       ; preds = %do.end
  %17 = load i64, i64* %character.addr, align 8
  %sub22 = sub nsw i64 %17, 3
  %18 = inttoptr i64 %sub22 to i8*
  %19 = bitcast i8* %18 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %19, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %20 = load i64, i64* %cdr, align 8
  store i64 %20, i64* %tmp21, align 8
  %21 = load i64, i64* %tmp21, align 8
  %call23 = call zeroext i1 @NATNUMP(i64 %21)
  br i1 %call23, label %land.lhs.true.25, label %cond.false.30

land.lhs.true.25:                                 ; preds = %do.body.19
  %22 = load i64, i64* %tmp21, align 8
  %shr26 = ashr i64 %22, 2
  %cmp27 = icmp sle i64 %shr26, 4194303
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %land.lhs.true.25
  br label %cond.end.32

cond.false.30:                                    ; preds = %land.lhs.true.25, %do.body.19
  %call31 = call i64 @builtin_lisp_symbol(i32 260)
  %23 = load i64, i64* %tmp21, align 8
  %24 = call i64 @wrong_type_argument(i64 %call31, i64 %23) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end.32

cond.end.32:                                      ; preds = %25, %cond.true.29
  br label %do.end.33

do.end.33:                                        ; preds = %cond.end.32
  %26 = load i64, i64* %character.addr, align 8
  %sub34 = sub nsw i64 %26, 3
  %27 = inttoptr i64 %sub34 to i8*
  %28 = bitcast i8* %27 to %struct.Lisp_Cons*
  %car35 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %28, i32 0, i32 0
  %29 = load i64, i64* %car35, align 8
  %shr36 = ashr i64 %29, 2
  %conv37 = trunc i64 %shr36 to i32
  store i32 %conv37, i32* %start, align 4
  %30 = load i64, i64* %character.addr, align 8
  %sub38 = sub nsw i64 %30, 3
  %31 = inttoptr i64 %sub38 to i8*
  %32 = bitcast i8* %31 to %struct.Lisp_Cons*
  %u39 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %32, i32 0, i32 1
  %cdr40 = bitcast %union.anon* %u39 to i64*
  %33 = load i64, i64* %cdr40, align 8
  %shr41 = ashr i64 %33, 2
  %conv42 = trunc i64 %shr41 to i32
  store i32 %conv42, i32* %end, align 4
  br label %if.end

if.end:                                           ; preds = %do.end.33, %cond.end
  %34 = load i64, i64* %category.addr, align 8
  %call43 = call zeroext i1 @RANGED_INTEGERP(i64 32, i64 %34, i64 126)
  br i1 %call43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %if.end
  br label %cond.end.48

cond.false.46:                                    ; preds = %if.end
  %call47 = call i64 @builtin_lisp_symbol(i32 244)
  %35 = load i64, i64* %category.addr, align 8
  %36 = call i64 @wrong_type_argument(i64 %call47, i64 %35) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end.48

cond.end.48:                                      ; preds = %37, %cond.true.45
  %38 = load i64, i64* %table.addr, align 8
  %call49 = call i64 @check_category_table(i64 %38)
  store i64 %call49, i64* %table.addr, align 8
  %39 = load i64, i64* %table.addr, align 8
  %call50 = call i64 @Fchar_table_extra_slot(i64 %39, i64 2)
  %40 = load i64, i64* %category.addr, align 8
  %shr51 = ashr i64 %40, 2
  %sub52 = sub nsw i64 %shr51, 32
  %call53 = call i64 @AREF(i64 %call50, i64 %sub52)
  %call54 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp55 = icmp eq i64 %call53, %call54
  br i1 %cmp55, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %cond.end.48
  %41 = load i64, i64* %category.addr, align 8
  %shr58 = ashr i64 %41, 2
  %conv59 = trunc i64 %shr58 to i32
  call void (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 %conv59) #3
  unreachable

if.end.60:                                        ; preds = %cond.end.48
  %42 = load i64, i64* %reset.addr, align 8
  %call61 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp62 = icmp eq i64 %42, %call61
  %frombool = zext i1 %cmp62 to i8
  store i8 %frombool, i8* %set_value, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.79, %if.end.60
  %43 = load i32, i32* %start, align 4
  %44 = load i32, i32* %end, align 4
  %cmp64 = icmp sle i32 %43, %44
  br i1 %cmp64, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %45 = load i32, i32* %start, align 4
  store i32 %45, i32* %from, align 4
  %46 = load i32, i32* %end, align 4
  store i32 %46, i32* %to, align 4
  %47 = load i64, i64* %table.addr, align 8
  %48 = load i32, i32* %start, align 4
  %call66 = call i64 @char_table_ref_and_range(i64 %47, i32 %48, i32* %from, i32* %to)
  store i64 %call66, i64* %category_set, align 8
  %49 = load i64, i64* %category.addr, align 8
  %shr67 = ashr i64 %49, 2
  %50 = load i64, i64* %category_set, align 8
  %call68 = call zeroext i1 @CATEGORY_MEMBER(i64 %shr67, i64 %50)
  %conv69 = zext i1 %call68 to i32
  %51 = load i64, i64* %reset.addr, align 8
  %call70 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp71 = icmp eq i64 %51, %call70
  %conv72 = zext i1 %cmp71 to i32
  %cmp73 = icmp ne i32 %conv69, %conv72
  br i1 %cmp73, label %if.then.75, label %if.end.79

if.then.75:                                       ; preds = %while.body
  %52 = load i64, i64* %category_set, align 8
  %call76 = call i64 @Fcopy_sequence(i64 %52)
  store i64 %call76, i64* %category_set, align 8
  %53 = load i64, i64* %category_set, align 8
  %54 = load i64, i64* %category.addr, align 8
  %shr77 = ashr i64 %54, 2
  %55 = load i8, i8* %set_value, align 1
  %tobool = trunc i8 %55 to i1
  call void @set_category_set(i64 %53, i64 %shr77, i1 zeroext %tobool)
  %56 = load i64, i64* %table.addr, align 8
  %57 = load i64, i64* %category_set, align 8
  %call78 = call i64 @hash_get_category_set(i64 %56, i64 %57)
  store i64 %call78, i64* %category_set, align 8
  %58 = load i64, i64* %table.addr, align 8
  %59 = load i32, i32* %start, align 4
  %60 = load i32, i32* %to, align 4
  %61 = load i64, i64* %category_set, align 8
  call void @char_table_set_range(i64 %58, i32 %59, i32 %60, i64 %61)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.75, %while.body
  %62 = load i32, i32* %to, align 4
  %add = add nsw i32 %62, 1
  store i32 %add, i32* %start, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call80 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call80
}

declare void @CHECK_CONS(i64) #1

declare i64 @char_table_ref_and_range(i64, i32, i32*, i32*) #1

declare i64 @Fcopy_sequence(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @hash_get_category_set(i64 %table, i64 %category_set) #0 {
entry:
  %retval = alloca i64, align 8
  %table.addr = alloca i64, align 8
  %category_set.addr = alloca i64, align 8
  %h = alloca %struct.Lisp_Hash_Table*, align 8
  %i = alloca i64, align 8
  %hash = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  store i64 %category_set, i64* %category_set.addr, align 8
  %0 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %0)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 1
  %1 = load i64, i64* %arrayidx, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %table.addr, align 8
  %call2 = call i64 @make_float(double 1.500000e+00)
  %call3 = call i64 @make_float(double 8.000000e-01)
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %call5 = call i64 @make_hash_table(%struct.hash_table_test* byval align 8 @hashtest_equal, i64 262, i64 %call2, i64 %call3, i64 %call4)
  call void @set_char_table_extras(i64 %2, i64 1, i64 %call5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %table.addr, align 8
  %call6 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %3)
  %extras7 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call6, i32 0, i32 6
  %arrayidx8 = getelementptr inbounds [0 x i64], [0 x i64]* %extras7, i32 0, i64 1
  %4 = load i64, i64* %arrayidx8, align 8
  %call9 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %4)
  store %struct.Lisp_Hash_Table* %call9, %struct.Lisp_Hash_Table** %h, align 8
  %5 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %6 = load i64, i64* %category_set.addr, align 8
  %call10 = call i64 @hash_lookup(%struct.Lisp_Hash_Table* %5, i64 %6, i64* %hash)
  store i64 %call10, i64* %i, align 8
  %7 = load i64, i64* %i, align 8
  %cmp11 = icmp sge i64 %7, 0
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %8 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %9 = load i64, i64* %i, align 8
  %call13 = call i64 @HASH_KEY(%struct.Lisp_Hash_Table* %8, i64 %9)
  store i64 %call13, i64* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  %10 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %11 = load i64, i64* %category_set.addr, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %12 = load i64, i64* %hash, align 8
  %call16 = call i64 @hash_put(%struct.Lisp_Hash_Table* %10, i64 %11, i64 %call15, i64 %12)
  %13 = load i64, i64* %category_set.addr, align 8
  store i64 %13, i64* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.12
  %14 = load i64, i64* %retval
  ret i64 %14
}

declare void @char_table_set_range(i64, i32, i32, i64) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @word_boundary_p(i32 %c1, i32 %c2) #0 {
entry:
  %retval = alloca i1, align 1
  %c1.addr = alloca i32, align 4
  %c2.addr = alloca i32, align 4
  %category_set1 = alloca i64, align 8
  %category_set2 = alloca i64, align 8
  %tail = alloca i64, align 8
  %default_result = alloca i8, align 1
  %elt = alloca i64, align 8
  store i32 %c1, i32* %c1.addr, align 4
  store i32 %c2, i32* %c2.addr, align 4
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 27), align 8
  %1 = load i32, i32* %c1.addr, align 4
  %call = call i64 @CHAR_TABLE_REF(i64 %0, i32 %1)
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 27), align 8
  %3 = load i32, i32* %c2.addr, align 4
  %call1 = call i64 @CHAR_TABLE_REF(i64 %2, i32 %3)
  %cmp = icmp eq i64 %call, %call1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 337), align 8
  store i64 %4, i64* %tail, align 8
  store i8 0, i8* %default_result, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 336), align 8
  store i64 %5, i64* %tail, align 8
  store i8 1, i8* %default_result, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %c1.addr, align 4
  %call2 = call i64 @char_category_set(i32 %6)
  store i64 %call2, i64* %category_set1, align 8
  %7 = load i64, i64* %category_set1, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %7, %call3
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %8 = load i8, i8* %default_result, align 1
  %tobool = trunc i8 %8 to i1
  store i1 %tobool, i1* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %9 = load i32, i32* %c2.addr, align 4
  %call7 = call i64 @char_category_set(i32 %9)
  store i64 %call7, i64* %category_set2, align 8
  %10 = load i64, i64* %category_set2, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp9 = icmp eq i64 %10, %call8
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.6
  %11 = load i8, i8* %default_result, align 1
  %tobool11 = trunc i8 %11 to i1
  store i1 %tobool11, i1* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %12 = load i64, i64* %tail, align 8
  %and = and i64 %12, 7
  %conv = trunc i64 %and to i32
  %cmp13 = icmp eq i32 %conv, 3
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %13, 3
  %14 = inttoptr i64 %sub to i8*
  %15 = bitcast i8* %14 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %15, i32 0, i32 0
  %16 = load i64, i64* %car, align 8
  store i64 %16, i64* %elt, align 8
  %17 = load i64, i64* %elt, align 8
  %and15 = and i64 %17, 7
  %conv16 = trunc i64 %and15 to i32
  %cmp17 = icmp eq i32 %conv16, 3
  br i1 %cmp17, label %land.lhs.true, label %if.end.64

land.lhs.true:                                    ; preds = %for.body
  %18 = load i64, i64* %elt, align 8
  %sub19 = sub nsw i64 %18, 3
  %19 = inttoptr i64 %sub19 to i8*
  %20 = bitcast i8* %19 to %struct.Lisp_Cons*
  %car20 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %20, i32 0, i32 0
  %21 = load i64, i64* %car20, align 8
  %call21 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp22 = icmp eq i64 %21, %call21
  br i1 %cmp22, label %land.lhs.true.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %22 = load i64, i64* %elt, align 8
  %sub24 = sub nsw i64 %22, 3
  %23 = inttoptr i64 %sub24 to i8*
  %24 = bitcast i8* %23 to %struct.Lisp_Cons*
  %car25 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %24, i32 0, i32 0
  %25 = load i64, i64* %car25, align 8
  %call26 = call zeroext i1 @RANGED_INTEGERP(i64 32, i64 %25, i64 126)
  br i1 %call26, label %land.lhs.true.28, label %if.end.64

land.lhs.true.28:                                 ; preds = %lor.lhs.false
  %26 = load i64, i64* %elt, align 8
  %sub29 = sub nsw i64 %26, 3
  %27 = inttoptr i64 %sub29 to i8*
  %28 = bitcast i8* %27 to %struct.Lisp_Cons*
  %car30 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %28, i32 0, i32 0
  %29 = load i64, i64* %car30, align 8
  %shr = ashr i64 %29, 2
  %30 = load i64, i64* %category_set1, align 8
  %call31 = call zeroext i1 @CATEGORY_MEMBER(i64 %shr, i64 %30)
  br i1 %call31, label %land.lhs.true.33, label %if.end.64

land.lhs.true.33:                                 ; preds = %land.lhs.true.28
  %31 = load i64, i64* %elt, align 8
  %sub34 = sub nsw i64 %31, 3
  %32 = inttoptr i64 %sub34 to i8*
  %33 = bitcast i8* %32 to %struct.Lisp_Cons*
  %car35 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %33, i32 0, i32 0
  %34 = load i64, i64* %car35, align 8
  %shr36 = ashr i64 %34, 2
  %35 = load i64, i64* %category_set2, align 8
  %call37 = call zeroext i1 @CATEGORY_MEMBER(i64 %shr36, i64 %35)
  br i1 %call37, label %if.end.64, label %land.lhs.true.38

land.lhs.true.38:                                 ; preds = %land.lhs.true.33, %land.lhs.true
  %36 = load i64, i64* %elt, align 8
  %sub39 = sub nsw i64 %36, 3
  %37 = inttoptr i64 %sub39 to i8*
  %38 = bitcast i8* %37 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %38, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %39 = load i64, i64* %cdr, align 8
  %call40 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp41 = icmp eq i64 %39, %call40
  br i1 %cmp41, label %if.then.62, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %land.lhs.true.38
  %40 = load i64, i64* %elt, align 8
  %sub44 = sub nsw i64 %40, 3
  %41 = inttoptr i64 %sub44 to i8*
  %42 = bitcast i8* %41 to %struct.Lisp_Cons*
  %u45 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %42, i32 0, i32 1
  %cdr46 = bitcast %union.anon* %u45 to i64*
  %43 = load i64, i64* %cdr46, align 8
  %call47 = call zeroext i1 @RANGED_INTEGERP(i64 32, i64 %43, i64 126)
  br i1 %call47, label %land.lhs.true.49, label %if.end.64

land.lhs.true.49:                                 ; preds = %lor.lhs.false.43
  %44 = load i64, i64* %elt, align 8
  %sub50 = sub nsw i64 %44, 3
  %45 = inttoptr i64 %sub50 to i8*
  %46 = bitcast i8* %45 to %struct.Lisp_Cons*
  %u51 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %46, i32 0, i32 1
  %cdr52 = bitcast %union.anon* %u51 to i64*
  %47 = load i64, i64* %cdr52, align 8
  %shr53 = ashr i64 %47, 2
  %48 = load i64, i64* %category_set1, align 8
  %call54 = call zeroext i1 @CATEGORY_MEMBER(i64 %shr53, i64 %48)
  br i1 %call54, label %if.end.64, label %land.lhs.true.55

land.lhs.true.55:                                 ; preds = %land.lhs.true.49
  %49 = load i64, i64* %elt, align 8
  %sub56 = sub nsw i64 %49, 3
  %50 = inttoptr i64 %sub56 to i8*
  %51 = bitcast i8* %50 to %struct.Lisp_Cons*
  %u57 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %51, i32 0, i32 1
  %cdr58 = bitcast %union.anon* %u57 to i64*
  %52 = load i64, i64* %cdr58, align 8
  %shr59 = ashr i64 %52, 2
  %53 = load i64, i64* %category_set2, align 8
  %call60 = call zeroext i1 @CATEGORY_MEMBER(i64 %shr59, i64 %53)
  br i1 %call60, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %land.lhs.true.55, %land.lhs.true.38
  %54 = load i8, i8* %default_result, align 1
  %tobool63 = trunc i8 %54 to i1
  %lnot = xor i1 %tobool63, true
  store i1 %lnot, i1* %retval
  br label %return

if.end.64:                                        ; preds = %land.lhs.true.55, %land.lhs.true.49, %lor.lhs.false.43, %land.lhs.true.33, %land.lhs.true.28, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.64
  %55 = load i64, i64* %tail, align 8
  %sub65 = sub nsw i64 %55, 3
  %56 = inttoptr i64 %sub65 to i8*
  %57 = bitcast i8* %56 to %struct.Lisp_Cons*
  %u66 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %57, i32 0, i32 1
  %cdr67 = bitcast %union.anon* %u66 to i64*
  %58 = load i64, i64* %cdr67, align 8
  store i64 %58, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load i8, i8* %default_result, align 1
  %tobool68 = trunc i8 %59 to i1
  store i1 %tobool68, i1* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.62, %if.then.10, %if.then.5
  %60 = load i1, i1* %retval
  ret i1 %60
}

; Function Attrs: nounwind uwtable
define void @init_category_once() #0 {
entry:
  %call = call i64 @builtin_lisp_symbol(i32 242)
  %call1 = call i64 @builtin_lisp_symbol(i32 258)
  %call2 = call i64 @Fput(i64 %call, i64 %call1, i64 10)
  %call3 = call i64 @builtin_lisp_symbol(i32 242)
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %call5 = call i64 @Fmake_char_table(i64 %call3, i64 %call4)
  store i64 %call5, i64* getelementptr inbounds (%struct.buffer, %struct.buffer* @buffer_defaults, i32 0, i32 17), align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.buffer, %struct.buffer* @buffer_defaults, i32 0, i32 17), align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %call7 = call i64 @Fmake_bool_vector(i64 514, i64 %call6)
  call void @set_char_table_defalt(i64 %0, i64 %call7)
  %1 = load i64, i64* getelementptr inbounds (%struct.buffer, %struct.buffer* @buffer_defaults, i32 0, i32 17), align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %call9 = call i64 @Fmake_vector(i64 382, i64 %call8)
  %call10 = call i64 @Fset_char_table_extra_slot(i64 %1, i64 2, i64 %call9)
  ret void
}

declare i64 @Fput(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define void @syms_of_category() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_category.o_fwd, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 336))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 336), align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_category.o_fwd.4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 337))
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 337), align 8
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Smake_category_set to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sdefine_category to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Scategory_docstring to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sget_unused_category to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Scategory_table_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Scategory_table)
  call void @defsubr(%struct.Lisp_Subr* @Sstandard_category_table)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Scopy_category_table to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Smake_category_table)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_category_table to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Schar_category_set to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Scategory_set_mnemonics to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Smodify_category_entry to %struct.Lisp_Subr*))
  store i32 0, i32* @category_table_version, align 4
  ret void
}

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

declare void @bool_vector_set(i64, i64, i1 zeroext) #1

declare i64 @copy_char_table(i64) #1

declare void @set_char_table_extras(i64, i64, i64) #1

declare void @map_char_table(void (i64, i64, i64)*, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @copy_category_entry(i64 %table, i64 %c, i64 %val) #0 {
entry:
  %table.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %val.addr = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %call = call i64 @Fcopy_sequence(i64 %0)
  store i64 %call, i64* %val.addr, align 8
  %1 = load i64, i64* %c.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %table.addr, align 8
  %3 = load i64, i64* %c.addr, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 0
  %6 = load i64, i64* %car, align 8
  %shr = ashr i64 %6, 2
  %conv2 = trunc i64 %shr to i32
  %7 = load i64, i64* %c.addr, align 8
  %sub3 = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub3 to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %10 = load i64, i64* %cdr, align 8
  %shr4 = ashr i64 %10, 2
  %conv5 = trunc i64 %shr4 to i32
  %11 = load i64, i64* %val.addr, align 8
  call void @char_table_set_range(i64 %2, i32 %conv2, i32 %conv5, i64 %11)
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load i64, i64* %table.addr, align 8
  %13 = load i64, i64* %c.addr, align 8
  %shr6 = ashr i64 %13, 2
  %conv7 = trunc i64 %shr6 to i32
  %14 = load i64, i64* %val.addr, align 8
  call void @char_table_set(i64 %12, i32 %conv7, i64 %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @char_table_set(i64, i32, i64) #1

declare i64 @make_hash_table(%struct.hash_table_test* byval align 8, i64, i64, i64, i64) #1

declare i64 @make_float(double) #1

declare %struct.Lisp_Hash_Table* @XHASH_TABLE(i64) #1

declare i64 @hash_lookup(%struct.Lisp_Hash_Table*, i64, i64*) #1

declare i64 @HASH_KEY(%struct.Lisp_Hash_Table*, i64) #1

declare i64 @hash_put(%struct.Lisp_Hash_Table*, i64, i64, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
