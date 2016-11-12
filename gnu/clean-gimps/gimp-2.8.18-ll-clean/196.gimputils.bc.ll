; ModuleID = './libgimpbase/gimputils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GHashTable = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GError = type { i32, i32, i8* }
%struct._GimpEnumDesc = type { i32, i8*, i8* }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GTypeClass = type { i64 }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpFlagsDesc = type { i32, i8*, i8* }
%struct._GFlagsClass = type { %struct._GTypeClass, i32, i32, %struct._GFlagsValue* }
%struct._GFlagsValue = type { i32, i8*, i8* }

@gimp_utf8_strtrim.ellipsis = internal constant [4 x i8] c"...\00", align 1
@g_utf8_skip = external constant i8*, align 8
@.str = private unnamed_addr constant [12 x i8] c"LibGimpBase\00", align 1
@__func__.gimp_any_to_utf8 = private unnamed_addr constant [17 x i8] c"gimp_any_to_utf8\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"str != NULL\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"(invalid UTF-8 string)\00", align 1
@gimp_filename_to_utf8.ht = internal global %struct._GHashTable* null, align 8
@__func__.gimp_enum_get_desc = private unnamed_addr constant [19 x i8] c"gimp_enum_get_desc\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"G_IS_ENUM_CLASS (enum_class)\00", align 1
@__func__.gimp_enum_get_value = private unnamed_addr constant [20 x i8] c"gimp_enum_get_value\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"G_TYPE_IS_ENUM (enum_type)\00", align 1
@__func__.gimp_flags_get_first_desc = private unnamed_addr constant [26 x i8] c"gimp_flags_get_first_desc\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"G_IS_FLAGS_CLASS (flags_class)\00", align 1
@__func__.gimp_flags_get_first_value = private unnamed_addr constant [27 x i8] c"gimp_flags_get_first_value\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"G_TYPE_IS_FLAGS (flags_type)\00", align 1

; Function Attrs: nounwind uwtable
define noalias i8* @gimp_utf8_strtrim(i8* %str, i32 %max_chars) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %max_chars.addr = alloca i32, align 4
  %e_len = alloca i32, align 4
  %p = alloca i8*, align 8
  %newline = alloca i8*, align 8
  %chars = alloca i32, align 4
  %unichar = alloca i32, align 4
  %len = alloca i64, align 8
  %trimmed = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %max_chars, i32* %max_chars.addr, align 4
  %call = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gimp_utf8_strtrim.ellipsis, i32 0, i32 0)) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %e_len, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  store i8* null, i8** %newline, align 8
  store i32 0, i32* %chars, align 4
  %1 = load i8*, i8** %str.addr, align 8
  store i8* %1, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %tobool1 = icmp ne i8 %3, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %chars, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %chars, align 4
  %5 = load i32, i32* %max_chars.addr, align 4
  %cmp = icmp sgt i32 %inc, %5
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %6 = load i8*, i8** %p, align 8
  %call4 = call i32 @g_utf8_get_char(i8* %6) #6
  store i32 %call4, i32* %unichar, align 4
  %7 = load i32, i32* %unichar, align 4
  %call5 = call i32 @g_unichar_break_type(i32 %7) #7
  switch i32 %call5, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %8 = load i8*, i8** %p, align 8
  store i8* %8, i8** %newline, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %for.inc

sw.epilog:                                        ; preds = %sw.bb
  br label %for.end

for.inc:                                          ; preds = %sw.default
  %9 = load i8*, i8** %p, align 8
  %10 = load i8*, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %idxprom = zext i8 %11 to i64
  %12 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %conv6 = sext i8 %13 to i32
  %idx.ext = sext i32 %conv6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %sw.epilog, %if.then.3, %for.cond
  %14 = load i8*, i8** %p, align 8
  %15 = load i8, i8* %14, align 1
  %tobool7 = icmp ne i8 %15, 0
  br i1 %tobool7, label %if.then.8, label %if.end.21

if.then.8:                                        ; preds = %for.end
  %16 = load i8*, i8** %p, align 8
  %17 = load i8*, i8** %str.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len, align 8
  %18 = load i64, i64* %len, align 8
  %19 = load i32, i32* %e_len, align 4
  %conv9 = sext i32 %19 to i64
  %add = add i64 %18, %conv9
  %add10 = add i64 %add, 2
  %call11 = call noalias i8* @g_malloc_n(i64 %add10, i64 1)
  store i8* %call11, i8** %trimmed, align 8
  %20 = load i8*, i8** %trimmed, align 8
  %21 = load i8*, i8** %str.addr, align 8
  %22 = load i64, i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 %22, i32 1, i1 false)
  %23 = load i8*, i8** %newline, align 8
  %tobool12 = icmp ne i8* %23, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.then.8
  %24 = load i64, i64* %len, align 8
  %inc14 = add i64 %24, 1
  store i64 %inc14, i64* %len, align 8
  %25 = load i8*, i8** %trimmed, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %25, i64 %24
  store i8 32, i8* %arrayidx15, align 1
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.then.8
  %26 = load i8*, i8** %trimmed, align 8
  %27 = load i64, i64* %len, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %26, i64 %27
  %28 = load i32, i32* %e_len, align 4
  %add18 = add nsw i32 %28, 1
  %conv19 = sext i32 %add18 to i64
  %call20 = call i64 @g_strlcpy(i8* %add.ptr17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gimp_utf8_strtrim.ellipsis, i32 0, i32 0), i64 %conv19)
  %29 = load i8*, i8** %trimmed, align 8
  store i8* %29, i8** %retval
  br label %return

if.end.21:                                        ; preds = %for.end
  %30 = load i8*, i8** %str.addr, align 8
  %call22 = call noalias i8* @g_strdup(i8* %30)
  store i8* %call22, i8** %retval
  br label %return

if.end.23:                                        ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.end.21, %if.end.16
  %31 = load i8*, i8** %retval
  ret i8* %31
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @g_utf8_get_char(i8*) #1

; Function Attrs: nounwind readnone
declare i32 @g_unichar_break_type(i32) #2

declare noalias i8* @g_malloc_n(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i64 @g_strlcpy(i8*, i8*, i64) #3

declare noalias i8* @g_strdup(i8*) #3

; Function Attrs: nounwind uwtable
define noalias i8* @gimp_any_to_utf8(i8* %str, i64 %len, i8* %warning_format, ...) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %warning_format.addr = alloca i8*, align 8
  %start_invalid = alloca i8*, align 8
  %utf8 = alloca i8*, align 8
  %warning_args = alloca [1 x %struct.__va_list_tag], align 16
  %tmp = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %warning_format, i8** %warning_format.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %str.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_any_to_utf8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %call = call i32 @g_utf8_validate(i8* %1, i64 %2, i8** %start_invalid)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.else.8

if.then.1:                                        ; preds = %do.end
  %3 = load i64, i64* %len.addr, align 8
  %cmp2 = icmp slt i64 %3, 0
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.then.1
  %4 = load i8*, i8** %str.addr, align 8
  %call4 = call noalias i8* @g_strdup(i8* %4)
  store i8* %call4, i8** %utf8, align 8
  br label %if.end.7

if.else.5:                                        ; preds = %if.then.1
  %5 = load i8*, i8** %str.addr, align 8
  %6 = load i64, i64* %len.addr, align 8
  %call6 = call noalias i8* @g_strndup(i8* %5, i64 %6)
  store i8* %call6, i8** %utf8, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else.5, %if.then.3
  br label %if.end.10

if.else.8:                                        ; preds = %do.end
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i64, i64* %len.addr, align 8
  %call9 = call noalias i8* @g_locale_to_utf8(i8* %7, i64 %8, i64* null, i64* null, %struct._GError** null)
  store i8* %call9, i8** %utf8, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.end.7
  %9 = load i8*, i8** %utf8, align 8
  %tobool11 = icmp ne i8* %9, null
  br i1 %tobool11, label %if.end.29, label %if.then.12

if.then.12:                                       ; preds = %if.end.10
  %10 = load i8*, i8** %warning_format.addr, align 8
  %tobool13 = icmp ne i8* %10, null
  br i1 %tobool13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.then.12
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %warning_args, i32 0, i32 0
  %arraydecay15 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay15)
  %11 = load i8*, i8** %warning_format.addr, align 8
  %arraydecay16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %warning_args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 32, i8* %11, %struct.__va_list_tag* %arraydecay16)
  %arraydecay17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %warning_args, i32 0, i32 0
  %arraydecay1718 = bitcast %struct.__va_list_tag* %arraydecay17 to i8*
  call void @llvm.va_end(i8* %arraydecay1718)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %if.then.12
  %12 = load i8*, i8** %start_invalid, align 8
  %13 = load i8*, i8** %str.addr, align 8
  %cmp20 = icmp ugt i8* %12, %13
  br i1 %cmp20, label %if.then.21, label %if.else.25

if.then.21:                                       ; preds = %if.end.19
  %14 = load i8*, i8** %str.addr, align 8
  %15 = load i8*, i8** %start_invalid, align 8
  %16 = load i8*, i8** %str.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call22 = call noalias i8* @g_strndup(i8* %14, i64 %sub.ptr.sub)
  store i8* %call22, i8** %tmp, align 8
  %17 = load i8*, i8** %tmp, align 8
  %call23 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #4
  %call24 = call noalias i8* (i8*, ...) @g_strconcat(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* %call23, i8* null)
  store i8* %call24, i8** %utf8, align 8
  %18 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %18)
  br label %if.end.28

if.else.25:                                       ; preds = %if.end.19
  %call26 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #4
  %call27 = call noalias i8* @g_strdup(i8* %call26)
  store i8* %call27, i8** %utf8, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.21
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.10
  %19 = load i8*, i8** %utf8, align 8
  store i8* %19, i8** %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.else
  %20 = load i8*, i8** %retval
  ret i8* %20
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @g_utf8_validate(i8*, i64, i8**) #3

declare noalias i8* @g_strndup(i8*, i64) #3

declare noalias i8* @g_locale_to_utf8(i8*, i64, i64*, i64*, %struct._GError**) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare noalias i8* @g_strconcat(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #5

declare void @g_free(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @gimp_filename_to_utf8(i8* %filename) #0 {
entry:
  %retval = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %filename_utf8 = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GHashTable*, %struct._GHashTable** @gimp_filename_to_utf8.ht, align 8
  %tobool1 = icmp ne %struct._GHashTable* %1, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal)
  store %struct._GHashTable* %call, %struct._GHashTable** @gimp_filename_to_utf8.ht, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load %struct._GHashTable*, %struct._GHashTable** @gimp_filename_to_utf8.ht, align 8
  %3 = load i8*, i8** %filename.addr, align 8
  %call4 = call i8* @g_hash_table_lookup(%struct._GHashTable* %2, i8* %3)
  store i8* %call4, i8** %filename_utf8, align 8
  %4 = load i8*, i8** %filename_utf8, align 8
  %tobool5 = icmp ne i8* %4, null
  br i1 %tobool5, label %if.end.10, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  %5 = load i8*, i8** %filename.addr, align 8
  %call7 = call noalias i8* @g_filename_display_name(i8* %5)
  store i8* %call7, i8** %filename_utf8, align 8
  %6 = load %struct._GHashTable*, %struct._GHashTable** @gimp_filename_to_utf8.ht, align 8
  %7 = load i8*, i8** %filename.addr, align 8
  %call8 = call noalias i8* @g_strdup(i8* %7)
  %8 = load i8*, i8** %filename_utf8, align 8
  %call9 = call i32 @g_hash_table_insert(%struct._GHashTable* %6, i8* %call8, i8* %8)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.end.3
  %9 = load i8*, i8** %filename_utf8, align 8
  store i8* %9, i8** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  %10 = load i8*, i8** %retval
  ret i8* %10
}

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #3

declare i32 @g_str_hash(i8*) #3

declare i32 @g_str_equal(i8*, i8*) #3

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #3

declare noalias i8* @g_filename_display_name(i8*) #3

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define noalias i8* @gimp_strip_uline(i8* %str) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %escaped = alloca i8*, align 8
  %p = alloca i8*, align 8
  %past_bracket = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 0, i32* %past_bracket, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %1)
  store i8* %call, i8** %escaped, align 8
  store i8* %call, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.41, %if.then.7, %if.end
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  %tobool1 = icmp ne i8 %3, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 95
  br i1 %cmp, label %if.then.3, label %if.else.35

if.then.3:                                        ; preds = %while.body
  %6 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 95
  br i1 %cmp5, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.then.3
  %8 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %9 = load i8, i8* %8, align 1
  %10 = load i8*, i8** %p, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr8, i8** %p, align 8
  store i8 %9, i8* %10, align 1
  %11 = load i8*, i8** %str.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr9, i8** %str.addr, align 8
  br label %while.cond

if.end.10:                                        ; preds = %if.then.3
  %12 = load i32, i32* %past_bracket, align 4
  %tobool11 = icmp ne i32 %12, 0
  br i1 %tobool11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.10
  %13 = load i8*, i8** %str.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %14 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.else

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %15 = load i8*, i8** %str.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8*, i8** %str.addr, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %add.ptr16, align 1
  %idxprom = zext i8 %17 to i64
  %18 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %19 to i32
  %idx.ext = sext i32 %conv18 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  %20 = load i8, i8* %add.ptr19, align 1
  %conv20 = sext i8 %20 to i32
  %cmp21 = icmp eq i32 %conv20, 41
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %land.lhs.true.15
  %21 = load i8*, i8** %str.addr, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8*, i8** %str.addr, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %add.ptr25, align 1
  %idxprom26 = zext i8 %23 to i64
  %24 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %24, i64 %idxprom26
  %25 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %25 to i32
  %idx.ext29 = sext i32 %conv28 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr24, i64 %idx.ext29
  %add.ptr31 = getelementptr inbounds i8, i8* %add.ptr30, i64 1
  store i8* %add.ptr31, i8** %str.addr, align 8
  %26 = load i8*, i8** %p, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %26, i32 -1
  store i8* %incdec.ptr32, i8** %p, align 8
  br label %if.end.34

if.else:                                          ; preds = %land.lhs.true.15, %land.lhs.true, %if.end.10
  %27 = load i8*, i8** %str.addr, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr33, i8** %str.addr, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.23
  br label %if.end.41

if.else.35:                                       ; preds = %while.body
  %28 = load i8*, i8** %str.addr, align 8
  %29 = load i8, i8* %28, align 1
  %conv36 = sext i8 %29 to i32
  %cmp37 = icmp eq i32 %conv36, 40
  %conv38 = zext i1 %cmp37 to i32
  store i32 %conv38, i32* %past_bracket, align 4
  %30 = load i8*, i8** %str.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr39, i8** %str.addr, align 8
  %31 = load i8, i8* %30, align 1
  %32 = load i8*, i8** %p, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr40, i8** %p, align 8
  store i8 %31, i8* %32, align 1
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.35, %if.end.34
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load i8*, i8** %p, align 8
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %escaped, align 8
  store i8* %34, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %35 = load i8*, i8** %retval
  ret i8* %35
}

; Function Attrs: nounwind uwtable
define noalias i8* @gimp_escape_uline(i8* %str) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %escaped = alloca i8*, align 8
  %p = alloca i8*, align 8
  %n_ulines = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 0, i32* %n_ulines, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8
  store i8* %1, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %tobool1 = icmp ne i8 %3, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %p, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 95
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  %6 = load i32, i32* %n_ulines, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %n_ulines, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %8) #6
  %9 = load i32, i32* %n_ulines, align 4
  %conv5 = sext i32 %9 to i64
  %add = add i64 %call, %conv5
  %add6 = add i64 %add, 1
  %call7 = call noalias i8* @g_malloc(i64 %add6)
  store i8* %call7, i8** %escaped, align 8
  store i8* %call7, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %for.end
  %10 = load i8*, i8** %str.addr, align 8
  %11 = load i8, i8* %10, align 1
  %tobool8 = icmp ne i8 %11, 0
  br i1 %tobool8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i8*, i8** %str.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv9 = sext i8 %13 to i32
  %cmp10 = icmp eq i32 %conv9, 95
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %while.body
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr13, i8** %p, align 8
  store i8 95, i8* %14, align 1
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %while.body
  %15 = load i8*, i8** %str.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr15, i8** %str.addr, align 8
  %16 = load i8, i8* %15, align 1
  %17 = load i8*, i8** %p, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr16, i8** %p, align 8
  store i8 %16, i8* %17, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i8*, i8** %p, align 8
  store i8 0, i8* %18, align 1
  %19 = load i8*, i8** %escaped, align 8
  store i8* %19, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %20 = load i8*, i8** %retval
  ret i8* %20
}

declare noalias i8* @g_malloc(i64) #3

; Function Attrs: nounwind uwtable
define noalias i8* @gimp_canonicalize_identifier(i8* %identifier) #0 {
entry:
  %identifier.addr = alloca i8*, align 8
  %canonicalized = alloca i8*, align 8
  %p = alloca i8*, align 8
  %c = alloca i8, align 1
  store i8* %identifier, i8** %identifier.addr, align 8
  store i8* null, i8** %canonicalized, align 8
  %0 = load i8*, i8** %identifier.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %identifier.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %1)
  store i8* %call, i8** %canonicalized, align 8
  %2 = load i8*, i8** %canonicalized, align 8
  store i8* %2, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %c, align 1
  %7 = load i8, i8* %c, align 1
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp ne i32 %conv2, 45
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load i8, i8* %c, align 1
  %conv5 = sext i8 %8 to i32
  %cmp6 = icmp slt i32 %conv5, 48
  br i1 %cmp6, label %land.lhs.true.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = load i8, i8* %c, align 1
  %conv8 = sext i8 %9 to i32
  %cmp9 = icmp sgt i32 %conv8, 57
  br i1 %cmp9, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %lor.lhs.false, %land.lhs.true
  %10 = load i8, i8* %c, align 1
  %conv12 = sext i8 %10 to i32
  %cmp13 = icmp slt i32 %conv12, 65
  br i1 %cmp13, label %land.lhs.true.19, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.lhs.true.11
  %11 = load i8, i8* %c, align 1
  %conv16 = sext i8 %11 to i32
  %cmp17 = icmp sgt i32 %conv16, 90
  br i1 %cmp17, label %land.lhs.true.19, label %if.end

land.lhs.true.19:                                 ; preds = %lor.lhs.false.15, %land.lhs.true.11
  %12 = load i8, i8* %c, align 1
  %conv20 = sext i8 %12 to i32
  %cmp21 = icmp slt i32 %conv20, 97
  br i1 %cmp21, label %if.then.27, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %land.lhs.true.19
  %13 = load i8, i8* %c, align 1
  %conv24 = sext i8 %13 to i32
  %cmp25 = icmp sgt i32 %conv24, 122
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %lor.lhs.false.23, %land.lhs.true.19
  %14 = load i8*, i8** %p, align 8
  store i8 45, i8* %14, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.27, %lor.lhs.false.23, %lor.lhs.false.15, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.28

if.end.28:                                        ; preds = %for.end, %entry
  %16 = load i8*, i8** %canonicalized, align 8
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define %struct._GimpEnumDesc* @gimp_enum_get_desc(%struct._GEnumClass* %enum_class, i32 %value) #0 {
entry:
  %retval = alloca %struct._GimpEnumDesc*, align 8
  %enum_class.addr = alloca %struct._GEnumClass*, align 8
  %value.addr = alloca i32, align 4
  %value_desc = alloca %struct._GimpEnumDesc*, align 8
  %__class = alloca %struct._GTypeClass*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GEnumClass* %enum_class, %struct._GEnumClass** %enum_class.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class.addr, align 8
  %1 = bitcast %struct._GEnumClass* %0 to %struct._GTypeClass*
  store %struct._GTypeClass* %1, %struct._GTypeClass** %__class, align 8
  store i64 48, i64* %__t, align 8
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %__class, align 8
  %tobool = icmp ne %struct._GTypeClass* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.3

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeClass*, %struct._GTypeClass** %__class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %3, i32 0, i32 0
  %4 = load i64, i64* %g_type, align 8
  %5 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %4, %5
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %__class, align 8
  %7 = load i64, i64* %__t, align 8
  %call = call i32 @g_type_check_class_is_a(%struct._GTypeClass* %6, i64 %7) #6
  store i32 %call, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %8 = load i32, i32* %__r, align 4
  store i32 %8, i32* %tmp
  %9 = load i32, i32* %tmp
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.end.3
  br label %if.end.7

if.else.6:                                        ; preds = %if.end.3
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_enum_get_desc, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpEnumDesc* null, %struct._GimpEnumDesc** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %10 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class.addr, align 8
  %11 = bitcast %struct._GEnumClass* %10 to %struct._GTypeClass*
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type8, align 8
  %call9 = call %struct._GimpEnumDesc* @gimp_enum_get_value_descriptions(i64 %12)
  store %struct._GimpEnumDesc* %call9, %struct._GimpEnumDesc** %value_desc, align 8
  %13 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %value_desc, align 8
  %tobool10 = icmp ne %struct._GimpEnumDesc* %13, null
  br i1 %tobool10, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %do.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %if.then.11
  %14 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %value_desc, align 8
  %value_desc12 = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %14, i32 0, i32 1
  %15 = load i8*, i8** %value_desc12, align 8
  %tobool13 = icmp ne i8* %15, null
  br i1 %tobool13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %value_desc, align 8
  %value14 = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %16, i32 0, i32 0
  %17 = load i32, i32* %value14, align 4
  %18 = load i32, i32* %value.addr, align 4
  %cmp15 = icmp eq i32 %17, %18
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %while.body
  %19 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %value_desc, align 8
  store %struct._GimpEnumDesc* %19, %struct._GimpEnumDesc** %retval
  br label %return

if.end.17:                                        ; preds = %while.body
  %20 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %value_desc, align 8
  %incdec.ptr = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %20, i32 1
  store %struct._GimpEnumDesc* %incdec.ptr, %struct._GimpEnumDesc** %value_desc, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.18

if.end.18:                                        ; preds = %while.end, %do.end
  store %struct._GimpEnumDesc* null, %struct._GimpEnumDesc** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.16, %if.else.6
  %21 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %retval
  ret %struct._GimpEnumDesc* %21
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_class_is_a(%struct._GTypeClass*, i64) #1

declare %struct._GimpEnumDesc* @gimp_enum_get_value_descriptions(i64) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_enum_get_value(i64 %enum_type, i32 %value, i8** %value_name, i8** %value_nick, i8** %value_desc, i8** %value_help) #0 {
entry:
  %retval = alloca i32, align 4
  %enum_type.addr = alloca i64, align 8
  %value.addr = alloca i32, align 4
  %value_name.addr = alloca i8**, align 8
  %value_nick.addr = alloca i8**, align 8
  %value_desc.addr = alloca i8**, align 8
  %value_help.addr = alloca i8**, align 8
  %enum_class = alloca %struct._GEnumClass*, align 8
  %enum_value = alloca %struct._GEnumValue*, align 8
  %success = alloca i32, align 4
  %enum_desc = alloca %struct._GimpEnumDesc*, align 8
  %context = alloca i8*, align 8
  store i64 %enum_type, i64* %enum_type.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8** %value_name, i8*** %value_name.addr, align 8
  store i8** %value_nick, i8*** %value_nick.addr, align 8
  store i8** %value_desc, i8*** %value_desc.addr, align 8
  store i8** %value_help, i8*** %value_help.addr, align 8
  store i32 0, i32* %success, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %enum_type.addr, align 8
  %call = call i64 @g_type_fundamental(i64 %0)
  %cmp = icmp eq i64 %call, 48
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_enum_get_value, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i64, i64* %enum_type.addr, align 8
  %call1 = call i8* @g_type_class_ref(i64 %1)
  %2 = bitcast i8* %call1 to %struct._GEnumClass*
  store %struct._GEnumClass* %2, %struct._GEnumClass** %enum_class, align 8
  %3 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %4 = load i32, i32* %value.addr, align 4
  %call2 = call %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass* %3, i32 %4)
  store %struct._GEnumValue* %call2, %struct._GEnumValue** %enum_value, align 8
  %5 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %tobool = icmp ne %struct._GEnumValue* %5, null
  br i1 %tobool, label %if.then.3, label %if.end.49

if.then.3:                                        ; preds = %do.end
  %6 = load i8**, i8*** %value_name.addr, align 8
  %tobool4 = icmp ne i8** %6, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.then.3
  %7 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value_name6 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %7, i32 0, i32 1
  %8 = load i8*, i8** %value_name6, align 8
  %9 = load i8**, i8*** %value_name.addr, align 8
  store i8* %8, i8** %9, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.then.3
  %10 = load i8**, i8*** %value_nick.addr, align 8
  %tobool8 = icmp ne i8** %10, null
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %11 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value_nick10 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %11, i32 0, i32 2
  %12 = load i8*, i8** %value_nick10, align 8
  %13 = load i8**, i8*** %value_nick.addr, align 8
  store i8* %12, i8** %13, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  %14 = load i8**, i8*** %value_desc.addr, align 8
  %tobool12 = icmp ne i8** %14, null
  br i1 %tobool12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %15 = load i8**, i8*** %value_help.addr, align 8
  %tobool13 = icmp ne i8** %15, null
  br i1 %tobool13, label %if.then.14, label %if.end.48

if.then.14:                                       ; preds = %lor.lhs.false, %if.end.11
  %16 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %17 = load i32, i32* %value.addr, align 4
  %call15 = call %struct._GimpEnumDesc* @gimp_enum_get_desc(%struct._GEnumClass* %16, i32 %17)
  store %struct._GimpEnumDesc* %call15, %struct._GimpEnumDesc** %enum_desc, align 8
  %18 = load i8**, i8*** %value_desc.addr, align 8
  %tobool16 = icmp ne i8** %18, null
  br i1 %tobool16, label %if.then.17, label %if.end.37

if.then.17:                                       ; preds = %if.then.14
  %19 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %enum_desc, align 8
  %tobool18 = icmp ne %struct._GimpEnumDesc* %19, null
  br i1 %tobool18, label %land.lhs.true, label %if.else.35

land.lhs.true:                                    ; preds = %if.then.17
  %20 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %enum_desc, align 8
  %value_desc19 = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %20, i32 0, i32 1
  %21 = load i8*, i8** %value_desc19, align 8
  %tobool20 = icmp ne i8* %21, null
  br i1 %tobool20, label %if.then.21, label %if.else.35

if.then.21:                                       ; preds = %land.lhs.true
  %22 = load i64, i64* %enum_type.addr, align 8
  %call22 = call i8* @gimp_type_get_translation_context(i64 %22)
  store i8* %call22, i8** %context, align 8
  %23 = load i8*, i8** %context, align 8
  %tobool23 = icmp ne i8* %23, null
  br i1 %tobool23, label %if.then.24, label %if.else.28

if.then.24:                                       ; preds = %if.then.21
  %24 = load i64, i64* %enum_type.addr, align 8
  %call25 = call i8* @gimp_type_get_translation_domain(i64 %24)
  %25 = load i8*, i8** %context, align 8
  %26 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %enum_desc, align 8
  %value_desc26 = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %26, i32 0, i32 1
  %27 = load i8*, i8** %value_desc26, align 8
  %call27 = call i8* @g_dpgettext2(i8* %call25, i8* %25, i8* %27)
  %28 = load i8**, i8*** %value_desc.addr, align 8
  store i8* %call27, i8** %28, align 8
  br label %if.end.34

if.else.28:                                       ; preds = %if.then.21
  %29 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %enum_desc, align 8
  %value_desc29 = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %29, i32 0, i32 1
  %30 = load i8*, i8** %value_desc29, align 8
  %31 = load i64, i64* %enum_type.addr, align 8
  %call30 = call i8* @gimp_type_get_translation_domain(i64 %31)
  %32 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %enum_desc, align 8
  %value_desc31 = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %32, i32 0, i32 1
  %33 = load i8*, i8** %value_desc31, align 8
  %call32 = call i8* @dgettext(i8* %call30, i8* %33) #4
  %call33 = call i8* @g_strip_context(i8* %30, i8* %call32)
  %34 = load i8**, i8*** %value_desc.addr, align 8
  store i8* %call33, i8** %34, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.28, %if.then.24
  br label %if.end.36

if.else.35:                                       ; preds = %land.lhs.true, %if.then.17
  %35 = load i8**, i8*** %value_desc.addr, align 8
  store i8* null, i8** %35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.end.34
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.14
  %36 = load i8**, i8*** %value_help.addr, align 8
  %tobool38 = icmp ne i8** %36, null
  br i1 %tobool38, label %if.then.39, label %if.end.47

if.then.39:                                       ; preds = %if.end.37
  %37 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %enum_desc, align 8
  %tobool40 = icmp ne %struct._GimpEnumDesc* %37, null
  br i1 %tobool40, label %land.lhs.true.41, label %cond.false

land.lhs.true.41:                                 ; preds = %if.then.39
  %38 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %enum_desc, align 8
  %value_help42 = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %38, i32 0, i32 2
  %39 = load i8*, i8** %value_help42, align 8
  %tobool43 = icmp ne i8* %39, null
  br i1 %tobool43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.41
  %40 = load i64, i64* %enum_type.addr, align 8
  %call44 = call i8* @gimp_type_get_translation_domain(i64 %40)
  %41 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %enum_desc, align 8
  %value_help45 = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %41, i32 0, i32 2
  %42 = load i8*, i8** %value_help45, align 8
  %call46 = call i8* @dgettext(i8* %call44, i8* %42) #4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.41, %if.then.39
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call46, %cond.true ], [ null, %cond.false ]
  %43 = load i8**, i8*** %value_help.addr, align 8
  store i8* %cond, i8** %43, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %cond.end, %if.end.37
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %lor.lhs.false
  store i32 1, i32* %success, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %do.end
  %44 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %45 = bitcast %struct._GEnumClass* %44 to i8*
  call void @g_type_class_unref(i8* %45)
  %46 = load i32, i32* %success, align 4
  store i32 %46, i32* %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.else
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare i64 @g_type_fundamental(i64) #3

declare i8* @g_type_class_ref(i64) #3

declare %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass*, i32) #3

declare i8* @gimp_type_get_translation_context(i64) #3

declare i8* @g_dpgettext2(i8*, i8*, i8*) #3

declare i8* @gimp_type_get_translation_domain(i64) #3

declare i8* @g_strip_context(i8*, i8*) #3

declare void @g_type_class_unref(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @gimp_enum_value_get_desc(%struct._GEnumClass* %enum_class, %struct._GEnumValue* %enum_value) #0 {
entry:
  %retval = alloca i8*, align 8
  %enum_class.addr = alloca %struct._GEnumClass*, align 8
  %enum_value.addr = alloca %struct._GEnumValue*, align 8
  %type = alloca i64, align 8
  %enum_desc = alloca %struct._GimpEnumDesc*, align 8
  %context = alloca i8*, align 8
  store %struct._GEnumClass* %enum_class, %struct._GEnumClass** %enum_class.addr, align 8
  store %struct._GEnumValue* %enum_value, %struct._GEnumValue** %enum_value.addr, align 8
  %0 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class.addr, align 8
  %1 = bitcast %struct._GEnumClass* %0 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %1, i32 0, i32 0
  %2 = load i64, i64* %g_type, align 8
  store i64 %2, i64* %type, align 8
  %3 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class.addr, align 8
  %4 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value.addr, align 8
  %value = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %4, i32 0, i32 0
  %5 = load i32, i32* %value, align 4
  %call = call %struct._GimpEnumDesc* @gimp_enum_get_desc(%struct._GEnumClass* %3, i32 %5)
  store %struct._GimpEnumDesc* %call, %struct._GimpEnumDesc** %enum_desc, align 8
  %6 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %enum_desc, align 8
  %tobool = icmp ne %struct._GimpEnumDesc* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %enum_desc, align 8
  %value_desc = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %7, i32 0, i32 1
  %8 = load i8*, i8** %value_desc, align 8
  %tobool1 = icmp ne i8* %8, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load i64, i64* %type, align 8
  %call2 = call i8* @gimp_type_get_translation_context(i64 %9)
  store i8* %call2, i8** %context, align 8
  %10 = load i8*, i8** %context, align 8
  %tobool3 = icmp ne i8* %10, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %11 = load i64, i64* %type, align 8
  %call5 = call i8* @gimp_type_get_translation_domain(i64 %11)
  %12 = load i8*, i8** %context, align 8
  %13 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %enum_desc, align 8
  %value_desc6 = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %13, i32 0, i32 1
  %14 = load i8*, i8** %value_desc6, align 8
  %call7 = call i8* @g_dpgettext2(i8* %call5, i8* %12, i8* %14)
  store i8* %call7, i8** %retval
  br label %return

if.else:                                          ; preds = %if.then
  %15 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %enum_desc, align 8
  %value_desc8 = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %15, i32 0, i32 1
  %16 = load i8*, i8** %value_desc8, align 8
  %17 = load i64, i64* %type, align 8
  %call9 = call i8* @gimp_type_get_translation_domain(i64 %17)
  %18 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %enum_desc, align 8
  %value_desc10 = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %18, i32 0, i32 1
  %19 = load i8*, i8** %value_desc10, align 8
  %call11 = call i8* @dgettext(i8* %call9, i8* %19) #4
  %call12 = call i8* @g_strip_context(i8* %16, i8* %call11)
  store i8* %call12, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %20 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value.addr, align 8
  %value_name = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %20, i32 0, i32 1
  %21 = load i8*, i8** %value_name, align 8
  store i8* %21, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.4
  %22 = load i8*, i8** %retval
  ret i8* %22
}

; Function Attrs: nounwind uwtable
define i8* @gimp_enum_value_get_help(%struct._GEnumClass* %enum_class, %struct._GEnumValue* %enum_value) #0 {
entry:
  %retval = alloca i8*, align 8
  %enum_class.addr = alloca %struct._GEnumClass*, align 8
  %enum_value.addr = alloca %struct._GEnumValue*, align 8
  %type = alloca i64, align 8
  %enum_desc = alloca %struct._GimpEnumDesc*, align 8
  store %struct._GEnumClass* %enum_class, %struct._GEnumClass** %enum_class.addr, align 8
  store %struct._GEnumValue* %enum_value, %struct._GEnumValue** %enum_value.addr, align 8
  %0 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class.addr, align 8
  %1 = bitcast %struct._GEnumClass* %0 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %1, i32 0, i32 0
  %2 = load i64, i64* %g_type, align 8
  store i64 %2, i64* %type, align 8
  %3 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class.addr, align 8
  %4 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value.addr, align 8
  %value = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %4, i32 0, i32 0
  %5 = load i32, i32* %value, align 4
  %call = call %struct._GimpEnumDesc* @gimp_enum_get_desc(%struct._GEnumClass* %3, i32 %5)
  store %struct._GimpEnumDesc* %call, %struct._GimpEnumDesc** %enum_desc, align 8
  %6 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %enum_desc, align 8
  %tobool = icmp ne %struct._GimpEnumDesc* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %enum_desc, align 8
  %value_help = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %7, i32 0, i32 2
  %8 = load i8*, i8** %value_help, align 8
  %tobool1 = icmp ne i8* %8, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load i64, i64* %type, align 8
  %call2 = call i8* @gimp_type_get_translation_domain(i64 %9)
  %10 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %enum_desc, align 8
  %value_help3 = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %10, i32 0, i32 2
  %11 = load i8*, i8** %value_help3, align 8
  %call4 = call i8* @dgettext(i8* %call2, i8* %11) #4
  store i8* %call4, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i8*, i8** %retval
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define %struct._GimpFlagsDesc* @gimp_flags_get_first_desc(%struct._GFlagsClass* %flags_class, i32 %value) #0 {
entry:
  %retval = alloca %struct._GimpFlagsDesc*, align 8
  %flags_class.addr = alloca %struct._GFlagsClass*, align 8
  %value.addr = alloca i32, align 4
  %value_desc = alloca %struct._GimpFlagsDesc*, align 8
  %__class = alloca %struct._GTypeClass*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GFlagsClass* %flags_class, %struct._GFlagsClass** %flags_class.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GFlagsClass*, %struct._GFlagsClass** %flags_class.addr, align 8
  %1 = bitcast %struct._GFlagsClass* %0 to %struct._GTypeClass*
  store %struct._GTypeClass* %1, %struct._GTypeClass** %__class, align 8
  store i64 52, i64* %__t, align 8
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %__class, align 8
  %tobool = icmp ne %struct._GTypeClass* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.3

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeClass*, %struct._GTypeClass** %__class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %3, i32 0, i32 0
  %4 = load i64, i64* %g_type, align 8
  %5 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %4, %5
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %__class, align 8
  %7 = load i64, i64* %__t, align 8
  %call = call i32 @g_type_check_class_is_a(%struct._GTypeClass* %6, i64 %7) #6
  store i32 %call, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %8 = load i32, i32* %__r, align 4
  store i32 %8, i32* %tmp
  %9 = load i32, i32* %tmp
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.end.3
  br label %if.end.7

if.else.6:                                        ; preds = %if.end.3
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_flags_get_first_desc, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpFlagsDesc* null, %struct._GimpFlagsDesc** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %10 = load %struct._GFlagsClass*, %struct._GFlagsClass** %flags_class.addr, align 8
  %11 = bitcast %struct._GFlagsClass* %10 to %struct._GTypeClass*
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type8, align 8
  %call9 = call %struct._GimpFlagsDesc* @gimp_flags_get_value_descriptions(i64 %12)
  store %struct._GimpFlagsDesc* %call9, %struct._GimpFlagsDesc** %value_desc, align 8
  %13 = load %struct._GimpFlagsDesc*, %struct._GimpFlagsDesc** %value_desc, align 8
  %tobool10 = icmp ne %struct._GimpFlagsDesc* %13, null
  br i1 %tobool10, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %do.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %if.then.11
  %14 = load %struct._GimpFlagsDesc*, %struct._GimpFlagsDesc** %value_desc, align 8
  %value_desc12 = getelementptr inbounds %struct._GimpFlagsDesc, %struct._GimpFlagsDesc* %14, i32 0, i32 1
  %15 = load i8*, i8** %value_desc12, align 8
  %tobool13 = icmp ne i8* %15, null
  br i1 %tobool13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load %struct._GimpFlagsDesc*, %struct._GimpFlagsDesc** %value_desc, align 8
  %value14 = getelementptr inbounds %struct._GimpFlagsDesc, %struct._GimpFlagsDesc* %16, i32 0, i32 0
  %17 = load i32, i32* %value14, align 4
  %18 = load i32, i32* %value.addr, align 4
  %and = and i32 %17, %18
  %19 = load %struct._GimpFlagsDesc*, %struct._GimpFlagsDesc** %value_desc, align 8
  %value15 = getelementptr inbounds %struct._GimpFlagsDesc, %struct._GimpFlagsDesc* %19, i32 0, i32 0
  %20 = load i32, i32* %value15, align 4
  %cmp16 = icmp eq i32 %and, %20
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.body
  %21 = load %struct._GimpFlagsDesc*, %struct._GimpFlagsDesc** %value_desc, align 8
  store %struct._GimpFlagsDesc* %21, %struct._GimpFlagsDesc** %retval
  br label %return

if.end.18:                                        ; preds = %while.body
  %22 = load %struct._GimpFlagsDesc*, %struct._GimpFlagsDesc** %value_desc, align 8
  %incdec.ptr = getelementptr inbounds %struct._GimpFlagsDesc, %struct._GimpFlagsDesc* %22, i32 1
  store %struct._GimpFlagsDesc* %incdec.ptr, %struct._GimpFlagsDesc** %value_desc, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.19

if.end.19:                                        ; preds = %while.end, %do.end
  store %struct._GimpFlagsDesc* null, %struct._GimpFlagsDesc** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.17, %if.else.6
  %23 = load %struct._GimpFlagsDesc*, %struct._GimpFlagsDesc** %retval
  ret %struct._GimpFlagsDesc* %23
}

declare %struct._GimpFlagsDesc* @gimp_flags_get_value_descriptions(i64) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_flags_get_first_value(i64 %flags_type, i32 %value, i8** %value_name, i8** %value_nick, i8** %value_desc, i8** %value_help) #0 {
entry:
  %retval = alloca i32, align 4
  %flags_type.addr = alloca i64, align 8
  %value.addr = alloca i32, align 4
  %value_name.addr = alloca i8**, align 8
  %value_nick.addr = alloca i8**, align 8
  %value_desc.addr = alloca i8**, align 8
  %value_help.addr = alloca i8**, align 8
  %flags_class = alloca %struct._GFlagsClass*, align 8
  %flags_value = alloca %struct._GFlagsValue*, align 8
  %flags_desc = alloca %struct._GimpFlagsDesc*, align 8
  store i64 %flags_type, i64* %flags_type.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8** %value_name, i8*** %value_name.addr, align 8
  store i8** %value_nick, i8*** %value_nick.addr, align 8
  store i8** %value_desc, i8*** %value_desc.addr, align 8
  store i8** %value_help, i8*** %value_help.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %flags_type.addr, align 8
  %call = call i64 @g_type_fundamental(i64 %0)
  %cmp = icmp eq i64 %call, 52
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_flags_get_first_value, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i64, i64* %flags_type.addr, align 8
  %call1 = call i8* @g_type_class_peek(i64 %1)
  %2 = bitcast i8* %call1 to %struct._GFlagsClass*
  store %struct._GFlagsClass* %2, %struct._GFlagsClass** %flags_class, align 8
  %3 = load %struct._GFlagsClass*, %struct._GFlagsClass** %flags_class, align 8
  %4 = load i32, i32* %value.addr, align 4
  %call2 = call %struct._GFlagsValue* @g_flags_get_first_value(%struct._GFlagsClass* %3, i32 %4)
  store %struct._GFlagsValue* %call2, %struct._GFlagsValue** %flags_value, align 8
  %5 = load %struct._GFlagsValue*, %struct._GFlagsValue** %flags_value, align 8
  %tobool = icmp ne %struct._GFlagsValue* %5, null
  br i1 %tobool, label %if.then.3, label %if.end.40

if.then.3:                                        ; preds = %do.end
  %6 = load i8**, i8*** %value_name.addr, align 8
  %tobool4 = icmp ne i8** %6, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.then.3
  %7 = load %struct._GFlagsValue*, %struct._GFlagsValue** %flags_value, align 8
  %value_name6 = getelementptr inbounds %struct._GFlagsValue, %struct._GFlagsValue* %7, i32 0, i32 1
  %8 = load i8*, i8** %value_name6, align 8
  %9 = load i8**, i8*** %value_name.addr, align 8
  store i8* %8, i8** %9, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.then.3
  %10 = load i8**, i8*** %value_nick.addr, align 8
  %tobool8 = icmp ne i8** %10, null
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %11 = load %struct._GFlagsValue*, %struct._GFlagsValue** %flags_value, align 8
  %value_nick10 = getelementptr inbounds %struct._GFlagsValue, %struct._GFlagsValue* %11, i32 0, i32 2
  %12 = load i8*, i8** %value_nick10, align 8
  %13 = load i8**, i8*** %value_nick.addr, align 8
  store i8* %12, i8** %13, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  %14 = load i8**, i8*** %value_desc.addr, align 8
  %tobool12 = icmp ne i8** %14, null
  br i1 %tobool12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %15 = load i8**, i8*** %value_help.addr, align 8
  %tobool13 = icmp ne i8** %15, null
  br i1 %tobool13, label %if.then.14, label %if.end.39

if.then.14:                                       ; preds = %lor.lhs.false, %if.end.11
  %16 = load %struct._GFlagsClass*, %struct._GFlagsClass** %flags_class, align 8
  %17 = load i32, i32* %value.addr, align 4
  %call15 = call %struct._GimpFlagsDesc* @gimp_flags_get_first_desc(%struct._GFlagsClass* %16, i32 %17)
  store %struct._GimpFlagsDesc* %call15, %struct._GimpFlagsDesc** %flags_desc, align 8
  %18 = load i8**, i8*** %value_desc.addr, align 8
  %tobool16 = icmp ne i8** %18, null
  br i1 %tobool16, label %if.then.17, label %if.end.24

if.then.17:                                       ; preds = %if.then.14
  %19 = load %struct._GimpFlagsDesc*, %struct._GimpFlagsDesc** %flags_desc, align 8
  %tobool18 = icmp ne %struct._GimpFlagsDesc* %19, null
  br i1 %tobool18, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.17
  %20 = load %struct._GimpFlagsDesc*, %struct._GimpFlagsDesc** %flags_desc, align 8
  %value_desc19 = getelementptr inbounds %struct._GimpFlagsDesc, %struct._GimpFlagsDesc* %20, i32 0, i32 1
  %21 = load i8*, i8** %value_desc19, align 8
  %tobool20 = icmp ne i8* %21, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %22 = load i64, i64* %flags_type.addr, align 8
  %call21 = call i8* @gimp_type_get_translation_domain(i64 %22)
  %23 = load %struct._GimpFlagsDesc*, %struct._GimpFlagsDesc** %flags_desc, align 8
  %value_desc22 = getelementptr inbounds %struct._GimpFlagsDesc, %struct._GimpFlagsDesc* %23, i32 0, i32 1
  %24 = load i8*, i8** %value_desc22, align 8
  %call23 = call i8* @dgettext(i8* %call21, i8* %24) #4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call23, %cond.true ], [ null, %cond.false ]
  %25 = load i8**, i8*** %value_desc.addr, align 8
  store i8* %cond, i8** %25, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %cond.end, %if.then.14
  %26 = load i8**, i8*** %value_help.addr, align 8
  %tobool25 = icmp ne i8** %26, null
  br i1 %tobool25, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %if.end.24
  %27 = load %struct._GimpFlagsDesc*, %struct._GimpFlagsDesc** %flags_desc, align 8
  %tobool27 = icmp ne %struct._GimpFlagsDesc* %27, null
  br i1 %tobool27, label %land.lhs.true.28, label %cond.false.35

land.lhs.true.28:                                 ; preds = %if.then.26
  %28 = load %struct._GimpFlagsDesc*, %struct._GimpFlagsDesc** %flags_desc, align 8
  %value_desc29 = getelementptr inbounds %struct._GimpFlagsDesc, %struct._GimpFlagsDesc* %28, i32 0, i32 1
  %29 = load i8*, i8** %value_desc29, align 8
  %tobool30 = icmp ne i8* %29, null
  br i1 %tobool30, label %cond.true.31, label %cond.false.35

cond.true.31:                                     ; preds = %land.lhs.true.28
  %30 = load i64, i64* %flags_type.addr, align 8
  %call32 = call i8* @gimp_type_get_translation_domain(i64 %30)
  %31 = load %struct._GimpFlagsDesc*, %struct._GimpFlagsDesc** %flags_desc, align 8
  %value_help33 = getelementptr inbounds %struct._GimpFlagsDesc, %struct._GimpFlagsDesc* %31, i32 0, i32 2
  %32 = load i8*, i8** %value_help33, align 8
  %call34 = call i8* @dgettext(i8* %call32, i8* %32) #4
  br label %cond.end.36

cond.false.35:                                    ; preds = %land.lhs.true.28, %if.then.26
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.31
  %cond37 = phi i8* [ %call34, %cond.true.31 ], [ null, %cond.false.35 ]
  %33 = load i8**, i8*** %value_help.addr, align 8
  store i8* %cond37, i8** %33, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %cond.end.36, %if.end.24
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %lor.lhs.false
  store i32 1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.end.39, %if.else
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare i8* @g_type_class_peek(i64) #3

declare %struct._GFlagsValue* @g_flags_get_first_value(%struct._GFlagsClass*, i32) #3

; Function Attrs: nounwind uwtable
define i8* @gimp_flags_value_get_desc(%struct._GFlagsClass* %flags_class, %struct._GFlagsValue* %flags_value) #0 {
entry:
  %retval = alloca i8*, align 8
  %flags_class.addr = alloca %struct._GFlagsClass*, align 8
  %flags_value.addr = alloca %struct._GFlagsValue*, align 8
  %type = alloca i64, align 8
  %flags_desc = alloca %struct._GimpFlagsDesc*, align 8
  store %struct._GFlagsClass* %flags_class, %struct._GFlagsClass** %flags_class.addr, align 8
  store %struct._GFlagsValue* %flags_value, %struct._GFlagsValue** %flags_value.addr, align 8
  %0 = load %struct._GFlagsClass*, %struct._GFlagsClass** %flags_class.addr, align 8
  %1 = bitcast %struct._GFlagsClass* %0 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %1, i32 0, i32 0
  %2 = load i64, i64* %g_type, align 8
  store i64 %2, i64* %type, align 8
  %3 = load %struct._GFlagsClass*, %struct._GFlagsClass** %flags_class.addr, align 8
  %4 = load %struct._GFlagsValue*, %struct._GFlagsValue** %flags_value.addr, align 8
  %value = getelementptr inbounds %struct._GFlagsValue, %struct._GFlagsValue* %4, i32 0, i32 0
  %5 = load i32, i32* %value, align 4
  %call = call %struct._GimpFlagsDesc* @gimp_flags_get_first_desc(%struct._GFlagsClass* %3, i32 %5)
  store %struct._GimpFlagsDesc* %call, %struct._GimpFlagsDesc** %flags_desc, align 8
  %6 = load %struct._GimpFlagsDesc*, %struct._GimpFlagsDesc** %flags_desc, align 8
  %value_desc = getelementptr inbounds %struct._GimpFlagsDesc, %struct._GimpFlagsDesc* %6, i32 0, i32 1
  %7 = load i8*, i8** %value_desc, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i64, i64* %type, align 8
  %call1 = call i8* @gimp_type_get_translation_domain(i64 %8)
  %9 = load %struct._GimpFlagsDesc*, %struct._GimpFlagsDesc** %flags_desc, align 8
  %value_desc2 = getelementptr inbounds %struct._GimpFlagsDesc, %struct._GimpFlagsDesc* %9, i32 0, i32 1
  %10 = load i8*, i8** %value_desc2, align 8
  %call3 = call i8* @dgettext(i8* %call1, i8* %10) #4
  store i8* %call3, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct._GFlagsValue*, %struct._GFlagsValue** %flags_value.addr, align 8
  %value_name = getelementptr inbounds %struct._GFlagsValue, %struct._GFlagsValue* %11, i32 0, i32 1
  %12 = load i8*, i8** %value_name, align 8
  store i8* %12, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i8*, i8** %retval
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define i8* @gimp_flags_value_get_help(%struct._GFlagsClass* %flags_class, %struct._GFlagsValue* %flags_value) #0 {
entry:
  %retval = alloca i8*, align 8
  %flags_class.addr = alloca %struct._GFlagsClass*, align 8
  %flags_value.addr = alloca %struct._GFlagsValue*, align 8
  %type = alloca i64, align 8
  %flags_desc = alloca %struct._GimpFlagsDesc*, align 8
  store %struct._GFlagsClass* %flags_class, %struct._GFlagsClass** %flags_class.addr, align 8
  store %struct._GFlagsValue* %flags_value, %struct._GFlagsValue** %flags_value.addr, align 8
  %0 = load %struct._GFlagsClass*, %struct._GFlagsClass** %flags_class.addr, align 8
  %1 = bitcast %struct._GFlagsClass* %0 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %1, i32 0, i32 0
  %2 = load i64, i64* %g_type, align 8
  store i64 %2, i64* %type, align 8
  %3 = load %struct._GFlagsClass*, %struct._GFlagsClass** %flags_class.addr, align 8
  %4 = load %struct._GFlagsValue*, %struct._GFlagsValue** %flags_value.addr, align 8
  %value = getelementptr inbounds %struct._GFlagsValue, %struct._GFlagsValue* %4, i32 0, i32 0
  %5 = load i32, i32* %value, align 4
  %call = call %struct._GimpFlagsDesc* @gimp_flags_get_first_desc(%struct._GFlagsClass* %3, i32 %5)
  store %struct._GimpFlagsDesc* %call, %struct._GimpFlagsDesc** %flags_desc, align 8
  %6 = load %struct._GimpFlagsDesc*, %struct._GimpFlagsDesc** %flags_desc, align 8
  %value_help = getelementptr inbounds %struct._GimpFlagsDesc, %struct._GimpFlagsDesc* %6, i32 0, i32 2
  %7 = load i8*, i8** %value_help, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i64, i64* %type, align 8
  %call1 = call i8* @gimp_type_get_translation_domain(i64 %8)
  %9 = load %struct._GimpFlagsDesc*, %struct._GimpFlagsDesc** %flags_desc, align 8
  %value_help2 = getelementptr inbounds %struct._GimpFlagsDesc, %struct._GimpFlagsDesc* %9, i32 0, i32 2
  %10 = load i8*, i8** %value_help2, align 8
  %call3 = call i8* @dgettext(i8* %call1, i8* %10) #4
  store i8* %call3, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
