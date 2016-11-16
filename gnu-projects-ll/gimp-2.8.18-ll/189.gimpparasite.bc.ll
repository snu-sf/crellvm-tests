; ModuleID = './libgimpbase/gimpparasite.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GParamSpecClass = type { %struct._GTypeClass, i64, void (%struct._GParamSpec*)*, void (%struct._GParamSpec*, %struct._GValue*)*, i32 (%struct._GParamSpec*, %struct._GValue*)*, i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)*, [4 x i8*] }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GData = type opaque
%struct._GimpParamSpecParasite = type { %struct._GParamSpecBoxed }
%struct._GParamSpecBoxed = type { %struct._GParamSpec }

@gimp_parasite_get_type.type = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpParasite\00", align 1
@gimp_param_parasite_get_type.type = internal global i64 0, align 8
@gimp_param_parasite_get_type.type_info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_parasite_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 72, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_parasite_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@g_param_spec_types = external global i64*, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"GimpParamParasite\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_parasite_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_parasite_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_boxed_type_register_static(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* (i8*)* bitcast (%struct._GimpParasite* (%struct._GimpParasite*)* @gimp_parasite_copy to i8* (i8*)*), void (i8*)* bitcast (void (%struct._GimpParasite*)* @gimp_parasite_free to void (i8*)*))
  store i64 %call, i64* @gimp_parasite_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_parasite_get_type.type, align 8
  ret i64 %1
}

declare i64 @g_boxed_type_register_static(i8*, i8* (i8*)*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpParasite* @gimp_parasite_copy(%struct._GimpParasite* %parasite) #2 {
entry:
  %retval = alloca %struct._GimpParasite*, align 8
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  %0 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %cmp = icmp eq %struct._GimpParasite* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._GimpParasite* null, %struct._GimpParasite** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %name = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %3 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %flags = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %3, i32 0, i32 1
  %4 = load i32, i32* %flags, align 4
  %5 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %size = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %5, i32 0, i32 2
  %6 = load i32, i32* %size, align 4
  %7 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %data = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %7, i32 0, i32 3
  %8 = load i8*, i8** %data, align 8
  %call = call %struct._GimpParasite* @gimp_parasite_new(i8* %2, i32 %4, i32 %6, i8* %8)
  store %struct._GimpParasite* %call, %struct._GimpParasite** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct._GimpParasite*, %struct._GimpParasite** %retval
  ret %struct._GimpParasite* %9
}

; Function Attrs: nounwind uwtable
define void @gimp_parasite_free(%struct._GimpParasite* %parasite) #2 {
entry:
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  %0 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %cmp = icmp eq %struct._GimpParasite* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.end

if.end:                                           ; preds = %entry
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %name = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %3 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %name2 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %3, i32 0, i32 0
  %4 = load i8*, i8** %name2, align 8
  call void @g_free(i8* %4)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %5 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %data = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %5, i32 0, i32 3
  %6 = load i8*, i8** %data, align 8
  %tobool4 = icmp ne i8* %6, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %7 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %data6 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %7, i32 0, i32 3
  %8 = load i8*, i8** %data6, align 8
  call void @g_free(i8* %8)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %9 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %10 = bitcast %struct._GimpParasite* %9 to i8*
  call void @g_slice_free1(i64 24, i8* %10)
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  ret void
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_parasite_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_parasite_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 16
  %2 = load i64, i64* %arrayidx, align 8
  %call = call i64 @g_type_register_static(i64 %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_parasite_get_type.type_info, i32 0)
  store i64 %call, i64* @gimp_param_parasite_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_param_parasite_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_parasite_class_init(%struct._GParamSpecClass* %class) #2 {
entry:
  %class.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %class, %struct._GParamSpecClass** %class.addr, align 8
  %call = call i64 @gimp_parasite_get_type() #4
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %class.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  %1 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %class.addr, align 8
  %value_validate = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %1, i32 0, i32 4
  store i32 (%struct._GParamSpec*, %struct._GValue*)* @gimp_param_parasite_validate, i32 (%struct._GParamSpec*, %struct._GValue*)** %value_validate, align 8
  %2 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %class.addr, align 8
  %values_cmp = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %2, i32 0, i32 5
  store i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)* @gimp_param_parasite_values_cmp, i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)** %values_cmp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_parasite_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  ret void
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_parasite(i8* %name, i8* %nick, i8* %blurb, i32 %flags) #2 {
entry:
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %parasite_spec = alloca %struct._GimpParamSpecParasite*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %call = call i64 @gimp_param_parasite_get_type() #4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %nick.addr, align 8
  %2 = load i8*, i8** %blurb.addr, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %call1 = call i8* @g_param_spec_internal(i64 %call, i8* %0, i8* %1, i8* %2, i32 %3)
  %4 = bitcast i8* %call1 to %struct._GimpParamSpecParasite*
  store %struct._GimpParamSpecParasite* %4, %struct._GimpParamSpecParasite** %parasite_spec, align 8
  %5 = load %struct._GimpParamSpecParasite*, %struct._GimpParamSpecParasite** %parasite_spec, align 8
  %6 = bitcast %struct._GimpParamSpecParasite* %5 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 76)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GParamSpec*
  ret %struct._GParamSpec* %7
}

declare i8* @g_param_spec_internal(i64, i8*, i8*, i8*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpParasite* @gimp_parasite_new(i8* %name, i32 %flags, i32 %size, i8* %data) #2 {
entry:
  %retval = alloca %struct._GimpParasite*, align 8
  %name.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GimpParasite* null, %struct._GimpParasite** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call noalias i8* @g_slice_alloc(i64 24)
  %1 = bitcast i8* %call to %struct._GimpParasite*
  store %struct._GimpParasite* %1, %struct._GimpParasite** %parasite, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %call1 = call noalias i8* @g_strdup(i8* %2)
  %3 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %name2 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %3, i32 0, i32 0
  store i8* %call1, i8** %name2, align 8
  %4 = load i32, i32* %flags.addr, align 4
  %and = and i32 %4, 255
  %5 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %flags3 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %5, i32 0, i32 1
  store i32 %and, i32* %flags3, align 4
  %6 = load i32, i32* %size.addr, align 4
  %7 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %size4 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %7, i32 0, i32 2
  store i32 %6, i32* %size4, align 4
  %8 = load i32, i32* %size.addr, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %9 = load i8*, i8** %data.addr, align 8
  %10 = load i32, i32* %size.addr, align 4
  %call7 = call noalias i8* @g_memdup(i8* %9, i32 %10)
  %11 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %data8 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %11, i32 0, i32 3
  store i8* %call7, i8** %data8, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %12 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %data9 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %12, i32 0, i32 3
  store i8* null, i8** %data9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.6
  %13 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  store %struct._GimpParasite* %13, %struct._GimpParasite** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  %14 = load %struct._GimpParasite*, %struct._GimpParasite** %retval
  ret %struct._GimpParasite* %14
}

declare noalias i8* @g_slice_alloc(i64) #1

declare noalias i8* @g_strdup(i8*) #1

declare noalias i8* @g_memdup(i8*, i32) #1

declare void @g_free(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_parasite_is_type(%struct._GimpParasite* %parasite, i8* %name) #2 {
entry:
  %retval = alloca i32, align 4
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  %name.addr = alloca i8*, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %tobool = icmp ne %struct._GimpParasite* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %name1 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %1, i32 0, i32 0
  %2 = load i8*, i8** %name1, align 8
  %tobool2 = icmp ne i8* %2, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %name3 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %3, i32 0, i32 0
  %4 = load i8*, i8** %name3, align 8
  %5 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %4, i8* %5) #5
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_parasite_compare(%struct._GimpParasite* %a, %struct._GimpParasite* %b) #2 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct._GimpParasite*, align 8
  %b.addr = alloca %struct._GimpParasite*, align 8
  store %struct._GimpParasite* %a, %struct._GimpParasite** %a.addr, align 8
  store %struct._GimpParasite* %b, %struct._GimpParasite** %b.addr, align 8
  %0 = load %struct._GimpParasite*, %struct._GimpParasite** %a.addr, align 8
  %tobool = icmp ne %struct._GimpParasite* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %b.addr, align 8
  %tobool1 = icmp ne %struct._GimpParasite* %1, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end.35

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load %struct._GimpParasite*, %struct._GimpParasite** %a.addr, align 8
  %name = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %tobool3 = icmp ne i8* %3, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.end.35

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %4 = load %struct._GimpParasite*, %struct._GimpParasite** %b.addr, align 8
  %name5 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %4, i32 0, i32 0
  %5 = load i8*, i8** %name5, align 8
  %tobool6 = icmp ne i8* %5, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.end.35

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %6 = load %struct._GimpParasite*, %struct._GimpParasite** %a.addr, align 8
  %name8 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %6, i32 0, i32 0
  %7 = load i8*, i8** %name8, align 8
  %8 = load %struct._GimpParasite*, %struct._GimpParasite** %b.addr, align 8
  %name9 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %8, i32 0, i32 0
  %9 = load i8*, i8** %name9, align 8
  %call = call i32 @strcmp(i8* %7, i8* %9) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true.10, label %if.end.35

land.lhs.true.10:                                 ; preds = %land.lhs.true.7
  %10 = load %struct._GimpParasite*, %struct._GimpParasite** %a.addr, align 8
  %flags = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %10, i32 0, i32 1
  %11 = load i32, i32* %flags, align 4
  %12 = load %struct._GimpParasite*, %struct._GimpParasite** %b.addr, align 8
  %flags11 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %12, i32 0, i32 1
  %13 = load i32, i32* %flags11, align 4
  %cmp12 = icmp eq i32 %11, %13
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.35

land.lhs.true.13:                                 ; preds = %land.lhs.true.10
  %14 = load %struct._GimpParasite*, %struct._GimpParasite** %a.addr, align 8
  %size = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %14, i32 0, i32 2
  %15 = load i32, i32* %size, align 4
  %16 = load %struct._GimpParasite*, %struct._GimpParasite** %b.addr, align 8
  %size14 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %16, i32 0, i32 2
  %17 = load i32, i32* %size14, align 4
  %cmp15 = icmp eq i32 %15, %17
  br i1 %cmp15, label %if.then, label %if.end.35

if.then:                                          ; preds = %land.lhs.true.13
  %18 = load %struct._GimpParasite*, %struct._GimpParasite** %a.addr, align 8
  %data = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %18, i32 0, i32 3
  %19 = load i8*, i8** %data, align 8
  %cmp16 = icmp eq i8* %19, null
  br i1 %cmp16, label %land.lhs.true.17, label %if.else

land.lhs.true.17:                                 ; preds = %if.then
  %20 = load %struct._GimpParasite*, %struct._GimpParasite** %b.addr, align 8
  %data18 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %20, i32 0, i32 3
  %21 = load i8*, i8** %data18, align 8
  %cmp19 = icmp eq i8* %21, null
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true.17
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.17, %if.then
  %22 = load %struct._GimpParasite*, %struct._GimpParasite** %a.addr, align 8
  %data21 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %22, i32 0, i32 3
  %23 = load i8*, i8** %data21, align 8
  %tobool22 = icmp ne i8* %23, null
  br i1 %tobool22, label %land.lhs.true.23, label %if.end

land.lhs.true.23:                                 ; preds = %if.else
  %24 = load %struct._GimpParasite*, %struct._GimpParasite** %b.addr, align 8
  %data24 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %24, i32 0, i32 3
  %25 = load i8*, i8** %data24, align 8
  %tobool25 = icmp ne i8* %25, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.end

land.lhs.true.26:                                 ; preds = %land.lhs.true.23
  %26 = load %struct._GimpParasite*, %struct._GimpParasite** %a.addr, align 8
  %data27 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %26, i32 0, i32 3
  %27 = load i8*, i8** %data27, align 8
  %28 = load %struct._GimpParasite*, %struct._GimpParasite** %b.addr, align 8
  %data28 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %28, i32 0, i32 3
  %29 = load i8*, i8** %data28, align 8
  %30 = load %struct._GimpParasite*, %struct._GimpParasite** %a.addr, align 8
  %size29 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %30, i32 0, i32 2
  %31 = load i32, i32* %size29, align 4
  %conv = zext i32 %31 to i64
  %call30 = call i32 @memcmp(i8* %27, i8* %29, i64 %conv) #5
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %land.lhs.true.26
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.26, %land.lhs.true.23, %if.else
  br label %if.end.34

if.end.34:                                        ; preds = %if.end
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true.13, %land.lhs.true.10, %land.lhs.true.7, %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then.33, %if.then.20
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i64 @gimp_parasite_flags(%struct._GimpParasite* %parasite) #2 {
entry:
  %retval = alloca i64, align 8
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  %0 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %cmp = icmp eq %struct._GimpParasite* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %flags = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %1, i32 0, i32 1
  %2 = load i32, i32* %flags, align 4
  %conv = zext i32 %2 to i64
  store i64 %conv, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i32 @gimp_parasite_is_persistent(%struct._GimpParasite* %parasite) #2 {
entry:
  %retval = alloca i32, align 4
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  %0 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %cmp = icmp eq %struct._GimpParasite* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %flags = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %1, i32 0, i32 1
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 1
  store i32 %and, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @gimp_parasite_is_undoable(%struct._GimpParasite* %parasite) #2 {
entry:
  %retval = alloca i32, align 4
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  %0 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %cmp = icmp eq %struct._GimpParasite* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %flags = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %1, i32 0, i32 1
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 2
  store i32 %and, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @gimp_parasite_has_flag(%struct._GimpParasite* %parasite, i64 %flag) #2 {
entry:
  %retval = alloca i32, align 4
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  %flag.addr = alloca i64, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  store i64 %flag, i64* %flag.addr, align 8
  %0 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %cmp = icmp eq %struct._GimpParasite* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %flags = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %1, i32 0, i32 1
  %2 = load i32, i32* %flags, align 4
  %conv = zext i32 %2 to i64
  %3 = load i64, i64* %flag.addr, align 8
  %and = and i64 %conv, %3
  %conv1 = trunc i64 %and to i32
  store i32 %conv1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i8* @gimp_parasite_name(%struct._GimpParasite* %parasite) #2 {
entry:
  %retval = alloca i8*, align 8
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  %0 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %tobool = icmp ne %struct._GimpParasite* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %name = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  store i8* %2, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8*, i8** %retval
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define i8* @gimp_parasite_data(%struct._GimpParasite* %parasite) #2 {
entry:
  %retval = alloca i8*, align 8
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  %0 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %tobool = icmp ne %struct._GimpParasite* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %data = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %1, i32 0, i32 3
  %2 = load i8*, i8** %data, align 8
  store i8* %2, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8*, i8** %retval
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define i64 @gimp_parasite_data_size(%struct._GimpParasite* %parasite) #2 {
entry:
  %retval = alloca i64, align 8
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  %0 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %tobool = icmp ne %struct._GimpParasite* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %size = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %1, i32 0, i32 2
  %2 = load i32, i32* %size, align 4
  %conv = zext i32 %2 to i64
  store i64 %conv, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_param_parasite_validate(%struct._GParamSpec* %pspec, %struct._GValue* %value) #2 {
entry:
  %retval = alloca i32, align 4
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %1 = load i8*, i8** %v_pointer, align 8
  %2 = bitcast i8* %1 to %struct._GimpParasite*
  store %struct._GimpParasite* %2, %struct._GimpParasite** %parasite, align 8
  %3 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool = icmp ne %struct._GimpParasite* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %name = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %6 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %name1 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %6, i32 0, i32 0
  %7 = load i8*, i8** %name1, align 8
  %call = call i32 @g_utf8_validate(i8* %7, i64 -1, i8** null)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %lor.lhs.false.3, label %if.then.13

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %8 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %size = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %8, i32 0, i32 2
  %9 = load i32, i32* %size, align 4
  %cmp4 = icmp eq i32 %9, 0
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false.7

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %10 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %data5 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %10, i32 0, i32 3
  %11 = load i8*, i8** %data5, align 8
  %cmp6 = icmp ne i8* %11, null
  br i1 %cmp6, label %if.then.13, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %land.lhs.true, %lor.lhs.false.3
  %12 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %size8 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %12, i32 0, i32 2
  %13 = load i32, i32* %size8, align 4
  %cmp9 = icmp ugt i32 %13, 0
  br i1 %cmp9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %lor.lhs.false.7
  %14 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %data11 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %14, i32 0, i32 3
  %15 = load i8*, i8** %data11, align 8
  %cmp12 = icmp eq i8* %15, null
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %land.lhs.true.10, %land.lhs.true, %lor.lhs.false, %if.else
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  call void @g_value_set_boxed(%struct._GValue* %16, i8* null)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.10, %lor.lhs.false.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_param_parasite_values_cmp(%struct._GParamSpec* %pspec, %struct._GValue* %value1, %struct._GValue* %value2) #2 {
entry:
  %retval = alloca i32, align 4
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value1.addr = alloca %struct._GValue*, align 8
  %value2.addr = alloca %struct._GValue*, align 8
  %parasite1 = alloca %struct._GimpParasite*, align 8
  %parasite2 = alloca %struct._GimpParasite*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value1, %struct._GValue** %value1.addr, align 8
  store %struct._GValue* %value2, %struct._GValue** %value2.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %value1.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %1 = load i8*, i8** %v_pointer, align 8
  %2 = bitcast i8* %1 to %struct._GimpParasite*
  store %struct._GimpParasite* %2, %struct._GimpParasite** %parasite1, align 8
  %3 = load %struct._GValue*, %struct._GValue** %value2.addr, align 8
  %data1 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data1, i32 0, i64 0
  %v_pointer3 = bitcast %union.anon* %arrayidx2 to i8**
  %4 = load i8*, i8** %v_pointer3, align 8
  %5 = bitcast i8* %4 to %struct._GimpParasite*
  store %struct._GimpParasite* %5, %struct._GimpParasite** %parasite2, align 8
  %6 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite1, align 8
  %tobool = icmp ne %struct._GimpParasite* %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite2, align 8
  %cmp = icmp ne %struct._GimpParasite* %7, null
  %cond = select i1 %cmp, i32 -1, i32 0
  store i32 %cond, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite2, align 8
  %tobool4 = icmp ne %struct._GimpParasite* %8, null
  br i1 %tobool4, label %if.else.7, label %if.then.5

if.then.5:                                        ; preds = %if.else
  %9 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite1, align 8
  %cmp6 = icmp ne %struct._GimpParasite* %9, null
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, i32* %retval
  br label %return

if.else.7:                                        ; preds = %if.else
  %10 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite1, align 8
  %11 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite2, align 8
  %call = call i32 @gimp_parasite_compare(%struct._GimpParasite* %10, %struct._GimpParasite* %11)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.else.7, %if.then.5, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @g_utf8_validate(i8*, i64, i8**) #1

declare void @g_value_set_boxed(%struct._GValue*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
