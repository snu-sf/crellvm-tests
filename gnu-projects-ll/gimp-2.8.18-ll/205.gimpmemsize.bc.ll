; ModuleID = './libgimpbase/gimpmemsize.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GParamSpecClass = type { %struct._GTypeClass, i64, void (%struct._GParamSpec*)*, void (%struct._GParamSpec*, %struct._GValue*)*, i32 (%struct._GParamSpec*, %struct._GValue*)*, i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)*, [4 x i8*] }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GData = type opaque
%struct._GParamSpecUInt64 = type { %struct._GParamSpec, i64, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_memsize_get_type.memsize_type = internal global i64 0, align 8
@gimp_memsize_get_type.type_info = internal constant %struct._GTypeInfo zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"GimpMemsize\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%luG\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%luM\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%luk\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"LibGimpBase\00", align 1
@__func__.gimp_memsize_deserialize = private unnamed_addr constant [25 x i8] c"gimp_memsize_deserialize\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"string != NULL\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"memsize != NULL\00", align 1
@gimp_param_memsize_get_type.spec_type = internal global i64 0, align 8
@gimp_param_memsize_get_type.type_info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_memsize_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 96, i16 0, void (%struct._GTypeInstance*, i8*)* null, %struct._GTypeValueTable* null }, align 8
@g_param_spec_types = external global i64*, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"GimpParamMemsize\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Can't convert string to GimpMemsize.\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_memsize_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_memsize_get_type.memsize_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gimp_memsize_get_type.type_info, i32 0)
  store i64 %call, i64* @gimp_memsize_get_type.memsize_type, align 8
  %1 = load i64, i64* @gimp_memsize_get_type.memsize_type, align 8
  call void @g_value_register_transform_func(i64 %1, i64 64, void (%struct._GValue*, %struct._GValue*)* @memsize_to_string)
  %2 = load i64, i64* @gimp_memsize_get_type.memsize_type, align 8
  call void @g_value_register_transform_func(i64 64, i64 %2, void (%struct._GValue*, %struct._GValue*)* @string_to_memsize)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_memsize_get_type.memsize_type, align 8
  ret i64 %3
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #1

declare void @g_value_register_transform_func(i64, i64, void (%struct._GValue*, %struct._GValue*)*) #1

; Function Attrs: nounwind uwtable
define internal void @memsize_to_string(%struct._GValue* %src_value, %struct._GValue* %dest_value) #2 {
entry:
  %src_value.addr = alloca %struct._GValue*, align 8
  %dest_value.addr = alloca %struct._GValue*, align 8
  store %struct._GValue* %src_value, %struct._GValue** %src_value.addr, align 8
  store %struct._GValue* %dest_value, %struct._GValue** %dest_value.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %dest_value.addr, align 8
  %1 = load %struct._GValue*, %struct._GValue** %src_value.addr, align 8
  %call = call i64 @g_value_get_uint64(%struct._GValue* %1)
  %call1 = call noalias i8* @gimp_memsize_serialize(i64 %call)
  call void @g_value_take_string(%struct._GValue* %0, i8* %call1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @string_to_memsize(%struct._GValue* %src_value, %struct._GValue* %dest_value) #2 {
entry:
  %src_value.addr = alloca %struct._GValue*, align 8
  %dest_value.addr = alloca %struct._GValue*, align 8
  %str = alloca i8*, align 8
  %memsize = alloca i64, align 8
  store %struct._GValue* %src_value, %struct._GValue** %src_value.addr, align 8
  store %struct._GValue* %dest_value, %struct._GValue** %dest_value.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %src_value.addr, align 8
  %call = call i8* @g_value_get_string(%struct._GValue* %0)
  store i8* %call, i8** %str, align 8
  %1 = load i8*, i8** %str, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %str, align 8
  %call1 = call i32 @gimp_memsize_deserialize(i8* %2, i64* %memsize)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._GValue*, %struct._GValue** %dest_value.addr, align 8
  %4 = load i64, i64* %memsize, align 8
  call void @g_value_set_uint64(%struct._GValue* %3, i64 %4)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define noalias i8* @gimp_memsize_serialize(i64 %memsize) #2 {
entry:
  %retval = alloca i8*, align 8
  %memsize.addr = alloca i64, align 8
  store i64 %memsize, i64* %memsize.addr, align 8
  %0 = load i64, i64* %memsize.addr, align 8
  %cmp = icmp ugt i64 %0, 1073741824
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %memsize.addr, align 8
  %rem = urem i64 %1, 1073741824
  %cmp1 = icmp eq i64 %rem, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* %memsize.addr, align 8
  %shr = lshr i64 %2, 30
  %call = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i64 %shr)
  store i8* %call, i8** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i64, i64* %memsize.addr, align 8
  %cmp2 = icmp ugt i64 %3, 1048576
  br i1 %cmp2, label %land.lhs.true.3, label %if.else.9

land.lhs.true.3:                                  ; preds = %if.else
  %4 = load i64, i64* %memsize.addr, align 8
  %rem4 = urem i64 %4, 1048576
  %cmp5 = icmp eq i64 %rem4, 0
  br i1 %cmp5, label %if.then.6, label %if.else.9

if.then.6:                                        ; preds = %land.lhs.true.3
  %5 = load i64, i64* %memsize.addr, align 8
  %shr7 = lshr i64 %5, 20
  %call8 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 %shr7)
  store i8* %call8, i8** %retval
  br label %return

if.else.9:                                        ; preds = %land.lhs.true.3, %if.else
  %6 = load i64, i64* %memsize.addr, align 8
  %cmp10 = icmp ugt i64 %6, 1024
  br i1 %cmp10, label %land.lhs.true.11, label %if.else.17

land.lhs.true.11:                                 ; preds = %if.else.9
  %7 = load i64, i64* %memsize.addr, align 8
  %rem12 = urem i64 %7, 1024
  %cmp13 = icmp eq i64 %rem12, 0
  br i1 %cmp13, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %land.lhs.true.11
  %8 = load i64, i64* %memsize.addr, align 8
  %shr15 = lshr i64 %8, 10
  %call16 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i64 %shr15)
  store i8* %call16, i8** %retval
  br label %return

if.else.17:                                       ; preds = %land.lhs.true.11, %if.else.9
  %9 = load i64, i64* %memsize.addr, align 8
  %call18 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i64 %9)
  store i8* %call18, i8** %retval
  br label %return

return:                                           ; preds = %if.else.17, %if.then.14, %if.then.6, %if.then
  %10 = load i8*, i8** %retval
  ret i8* %10
}

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_memsize_deserialize(i8* %string, i64* %memsize) #2 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca i8*, align 8
  %memsize.addr = alloca i64*, align 8
  %end = alloca i8*, align 8
  %size = alloca i64, align 8
  %shift = alloca i32, align 4
  %limit = alloca i64, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64* %memsize, i64** %memsize.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %string.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_memsize_deserialize, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i64*, i64** %memsize.addr, align 8
  %cmp2 = icmp ne i64* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_memsize_deserialize, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load i8*, i8** %string.addr, align 8
  %call = call i64 @g_ascii_strtoull(i8* %2, i8** %end, i32 0)
  store i64 %call, i64* %size, align 8
  %3 = load i64, i64* %size, align 8
  %cmp7 = icmp eq i64 %3, -1
  br i1 %cmp7, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %do.end.6
  %call8 = call i32* @__errno_location() #5
  %4 = load i32, i32* %call8, align 4
  %cmp9 = icmp eq i32 %4, 34
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %do.end.6
  %5 = load i8*, i8** %end, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %land.lhs.true.12, label %if.end.28

land.lhs.true.12:                                 ; preds = %if.end.11
  %6 = load i8*, i8** %end, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %tobool13 = icmp ne i32 %conv, 0
  br i1 %tobool13, label %if.then.14, label %if.end.28

if.then.14:                                       ; preds = %land.lhs.true.12
  %8 = load i8*, i8** %end, align 8
  %9 = load i8, i8* %8, align 1
  %call15 = call signext i8 @g_ascii_tolower(i8 signext %9) #5
  %conv16 = sext i8 %call15 to i32
  switch i32 %conv16, label %sw.default [
    i32 98, label %sw.bb
    i32 107, label %sw.bb.17
    i32 109, label %sw.bb.18
    i32 103, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %if.then.14
  store i32 0, i32* %shift, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.then.14
  store i32 10, i32* %shift, align 4
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.then.14
  store i32 20, i32* %shift, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.then.14
  store i32 30, i32* %shift, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.14
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb
  %10 = load i32, i32* %shift, align 4
  %tobool20 = icmp ne i32 %10, 0
  br i1 %tobool20, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %sw.epilog
  %11 = load i32, i32* %shift, align 4
  %sh_prom = zext i32 %11 to i64
  %shr = lshr i64 -1, %sh_prom
  store i64 %shr, i64* %limit, align 8
  %12 = load i64, i64* %size, align 8
  %13 = load i64, i64* %size, align 8
  %14 = load i64, i64* %limit, align 8
  %and = and i64 %13, %14
  %cmp22 = icmp ne i64 %12, %and
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.21
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.then.21
  %15 = load i32, i32* %shift, align 4
  %16 = load i64, i64* %size, align 8
  %sh_prom26 = zext i32 %15 to i64
  %shl = shl i64 %16, %sh_prom26
  store i64 %shl, i64* %size, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.25, %sw.epilog
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %land.lhs.true.12, %if.end.11
  %17 = load i64, i64* %size, align 8
  %18 = load i64*, i64** %memsize.addr, align 8
  store i64 %17, i64* %18, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.24, %sw.default, %if.then.10, %if.else.4, %if.else
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i64 @g_ascii_strtoull(i8*, i8**, i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind readnone
declare signext i8 @g_ascii_tolower(i8 signext) #3

; Function Attrs: nounwind uwtable
define noalias i8* @gimp_memsize_to_string(i64 %memsize) #2 {
entry:
  %memsize.addr = alloca i64, align 8
  store i64 %memsize, i64* %memsize.addr, align 8
  %0 = load i64, i64* %memsize.addr, align 8
  %call = call i8* @g_format_size(i64 %0)
  ret i8* %call
}

declare i8* @g_format_size(i64) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_memsize_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_memsize_get_type.spec_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 8
  %2 = load i64, i64* %arrayidx, align 8
  %call = call i64 @g_type_register_static(i64 %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_memsize_get_type.type_info, i32 0)
  store i64 %call, i64* @gimp_param_memsize_get_type.spec_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_param_memsize_get_type.spec_type, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_memsize_class_init(%struct._GParamSpecClass* %class) #2 {
entry:
  %class.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %class, %struct._GParamSpecClass** %class.addr, align 8
  %call = call i64 @gimp_memsize_get_type() #5
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %class.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_memsize(i8* %name, i8* %nick, i8* %blurb, i64 %minimum, i64 %maximum, i64 %default_value, i32 %flags) #2 {
entry:
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %minimum.addr = alloca i64, align 8
  %maximum.addr = alloca i64, align 8
  %default_value.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %pspec = alloca %struct._GParamSpecUInt64*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i64 %minimum, i64* %minimum.addr, align 8
  store i64 %maximum, i64* %maximum.addr, align 8
  store i64 %default_value, i64* %default_value.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %call = call i64 @gimp_param_memsize_get_type() #5
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %nick.addr, align 8
  %2 = load i8*, i8** %blurb.addr, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %call1 = call i8* @g_param_spec_internal(i64 %call, i8* %0, i8* %1, i8* %2, i32 %3)
  %4 = bitcast i8* %call1 to %struct._GParamSpecUInt64*
  store %struct._GParamSpecUInt64* %4, %struct._GParamSpecUInt64** %pspec, align 8
  %5 = load i64, i64* %minimum.addr, align 8
  %6 = load %struct._GParamSpecUInt64*, %struct._GParamSpecUInt64** %pspec, align 8
  %minimum2 = getelementptr inbounds %struct._GParamSpecUInt64, %struct._GParamSpecUInt64* %6, i32 0, i32 1
  store i64 %5, i64* %minimum2, align 8
  %7 = load i64, i64* %maximum.addr, align 8
  %8 = load %struct._GParamSpecUInt64*, %struct._GParamSpecUInt64** %pspec, align 8
  %maximum3 = getelementptr inbounds %struct._GParamSpecUInt64, %struct._GParamSpecUInt64* %8, i32 0, i32 2
  store i64 %7, i64* %maximum3, align 8
  %9 = load i64, i64* %default_value.addr, align 8
  %10 = load %struct._GParamSpecUInt64*, %struct._GParamSpecUInt64** %pspec, align 8
  %default_value4 = getelementptr inbounds %struct._GParamSpecUInt64, %struct._GParamSpecUInt64* %10, i32 0, i32 3
  store i64 %9, i64* %default_value4, align 8
  %11 = load %struct._GParamSpecUInt64*, %struct._GParamSpecUInt64** %pspec, align 8
  %12 = bitcast %struct._GParamSpecUInt64* %11 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 76)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GParamSpec*
  ret %struct._GParamSpec* %13
}

declare i8* @g_param_spec_internal(i64, i8*, i8*, i8*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_value_take_string(%struct._GValue*, i8*) #1

declare i64 @g_value_get_uint64(%struct._GValue*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare void @g_value_set_uint64(%struct._GValue*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #2 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
