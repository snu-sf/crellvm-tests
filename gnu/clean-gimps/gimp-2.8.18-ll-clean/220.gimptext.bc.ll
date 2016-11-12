; ModuleID = './app/text/gimptext.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpTextClass = type { %struct._GimpObjectClass, void (%struct._GimpText*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpText = type { %struct._GimpObject, i8*, i8*, i8*, i32, double, i32, i32, i32, i8*, i32, %struct._GimpRGB, i32, i32, double, double, double, i32, double, double, i32, %struct._GimpMatrix2, double, double, double }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMatrix2 = type { [2 x [2 x double]] }
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_text_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"GimpText\00", align 1
@gimp_text_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Text\00", align 1
@__func__.gimp_text_get_transformation = private unnamed_addr constant [29 x i8] c"gimp_text_get_transformation\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_TEXT (text)\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"matrix != NULL\00", align 1
@gimp_text_parent_class = internal global i8* null, align 8
@GimpText_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@text_signals = internal global [1 x i32] zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"markup\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Sans\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"font-size\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"font-size-unit\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"antialias\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"hint-style\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"kerning\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"base-direction\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"outline\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"justify\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"line-spacing\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"letter-spacing\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"box-mode\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"box-width\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"box-height\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"box-unit\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"transformation\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"offset-x\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"offset-y\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"border\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"hinting\00", align 1
@.str.31 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"gimptext.c\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c" Not-Rotated\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_text_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_text_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_text_get_type.g_define_type_id__volatile to i8*))
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %tmp
  %4 = load i32, i32* %tmp
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call5 = call i64 @gimp_object_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 168, void (i8*, i8*)* bitcast (void (i8*)* @gimp_text_class_intern_init to void (i8*, i8*)*), i32 256, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpText*)* @gimp_text_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_config_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_text_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_text_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_text_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_text_parent_class, align 8
  %1 = load i32, i32* @GimpText_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpText_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTextClass*
  call void @gimp_text_class_init(%struct._GimpTextClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_init(%struct._GimpText* %text) #3 {
entry:
  %text.addr = alloca %struct._GimpText*, align 8
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_get_transformation(%struct._GimpText* %text, %struct._GimpMatrix3* %matrix) #3 {
entry:
  %text.addr = alloca %struct._GimpText*, align 8
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %1 = bitcast %struct._GimpText* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_get_type() #6
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_text_get_transformation, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %cmp12 = icmp ne %struct._GimpMatrix3* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_text_get_transformation, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %transformation = getelementptr inbounds %struct._GimpText, %struct._GimpText* %14, i32 0, i32 21
  %coeff = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %transformation, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff, i32 0, i64 0
  %arrayidx17 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx, i32 0, i64 0
  %15 = load double, double* %arrayidx17, align 8
  %16 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff18 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %16, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff18, i32 0, i64 0
  %arrayidx20 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx19, i32 0, i64 0
  store double %15, double* %arrayidx20, align 8
  %17 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %transformation21 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %17, i32 0, i32 21
  %coeff22 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %transformation21, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff22, i32 0, i64 0
  %arrayidx24 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx23, i32 0, i64 1
  %18 = load double, double* %arrayidx24, align 8
  %19 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff25 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %19, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff25, i32 0, i64 0
  %arrayidx27 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx26, i32 0, i64 1
  store double %18, double* %arrayidx27, align 8
  %20 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpText, %struct._GimpText* %20, i32 0, i32 22
  %21 = load double, double* %offset_x, align 8
  %22 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff28 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %22, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff28, i32 0, i64 0
  %arrayidx30 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx29, i32 0, i64 2
  store double %21, double* %arrayidx30, align 8
  %23 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %transformation31 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %23, i32 0, i32 21
  %coeff32 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %transformation31, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff32, i32 0, i64 1
  %arrayidx34 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx33, i32 0, i64 0
  %24 = load double, double* %arrayidx34, align 8
  %25 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff35 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %25, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff35, i32 0, i64 1
  %arrayidx37 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx36, i32 0, i64 0
  store double %24, double* %arrayidx37, align 8
  %26 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %transformation38 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %26, i32 0, i32 21
  %coeff39 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %transformation38, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff39, i32 0, i64 1
  %arrayidx41 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx40, i32 0, i64 1
  %27 = load double, double* %arrayidx41, align 8
  %28 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff42 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %28, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff42, i32 0, i64 1
  %arrayidx44 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx43, i32 0, i64 1
  store double %27, double* %arrayidx44, align 8
  %29 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpText, %struct._GimpText* %29, i32 0, i32 23
  %30 = load double, double* %offset_y, align 8
  %31 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff45 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %31, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff45, i32 0, i64 1
  %arrayidx47 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx46, i32 0, i64 2
  store double %30, double* %arrayidx47, align 8
  %32 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff48 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %32, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff48, i32 0, i64 2
  %arrayidx50 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx49, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx50, align 8
  %33 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff51 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %33, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff51, i32 0, i64 2
  %arrayidx53 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx52, i32 0, i64 1
  store double 0.000000e+00, double* %arrayidx53, align 8
  %34 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff54 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %34, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff54, i32 0, i64 2
  %arrayidx56 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx55, i32 0, i64 1
  store double 1.000000e+00, double* %arrayidx56, align 8
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_class_init(%struct._GimpTextClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpTextClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %black = alloca %struct._GimpRGB, align 8
  %identity = alloca %struct._GimpMatrix2, align 8
  %language = alloca i8*, align 8
  store %struct._GimpTextClass* %klass, %struct._GimpTextClass** %klass.addr, align 8
  %0 = load %struct._GimpTextClass*, %struct._GimpTextClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpTextClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpTextClass*, %struct._GimpTextClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpTextClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpTextClass*, %struct._GimpTextClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpTextClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i64 %8, i32 1, i32 160, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call3, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @text_signals, i32 0, i64 0), align 4
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_text_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_text_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_text_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispatch_properties_changed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 7
  store void (%struct._GObject*, i32, %struct._GParamSpec**)* @gimp_text_dispatch_properties_changed, void (%struct._GObject*, i32, %struct._GParamSpec**)** %dispatch_properties_changed, align 8
  %13 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %13, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_text_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %black, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  call void @gimp_matrix2_identity(%struct._GimpMatrix2* %identity)
  %call4 = call i8* @gimp_get_default_language(i8* null)
  store i8* %call4, i8** %language, align 8
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i8* null, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 1, %struct._GParamSpec* %call5)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i8* null, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 2, %struct._GParamSpec* %call6)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 3, %struct._GParamSpec* %call7)
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 8.192000e+03, double 2.400000e+01, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 4, %struct._GParamSpec* %call8)
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i32 1, i32 0, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 5, %struct._GParamSpec* %call9)
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 6, %struct._GParamSpec* %call10)
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call11 = call i64 @gimp_text_hint_style_get_type() #6
  %call12 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null, i64 %call11, i32 2, i32 4583)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 7, %struct._GParamSpec* %call12)
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call13 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, i32 0, i32 4583)
  call void @g_object_class_install_property(%struct._GObjectClass* %21, i32 8, %struct._GParamSpec* %call13)
  %22 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %23 = load i8*, i8** %language, align 8
  %call14 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null, i8* %23, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %22, i32 9, %struct._GParamSpec* %call14)
  %24 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call15 = call i64 @gimp_text_direction_get_type() #6
  %call16 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, i64 %call15, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %24, i32 10, %struct._GParamSpec* %call16)
  %25 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call17 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null, i32 0, %struct._GimpRGB* %black, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %25, i32 11, %struct._GParamSpec* %call17)
  %26 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call18 = call i64 @gimp_text_outline_get_type() #6
  %call19 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null, i64 %call18, i32 0, i32 4583)
  call void @g_object_class_install_property(%struct._GObjectClass* %26, i32 12, %struct._GParamSpec* %call19)
  %27 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call20 = call i64 @gimp_text_justification_get_type() #6
  %call21 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null, i64 %call20, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %27, i32 13, %struct._GParamSpec* %call21)
  %28 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call22 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* null, double -8.192000e+03, double 8.192000e+03, double 0.000000e+00, i32 4583)
  call void @g_object_class_install_property(%struct._GObjectClass* %28, i32 14, %struct._GParamSpec* %call22)
  %29 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call23 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* null, double -8.192000e+03, double 8.192000e+03, double 0.000000e+00, i32 4583)
  call void @g_object_class_install_property(%struct._GObjectClass* %29, i32 15, %struct._GParamSpec* %call23)
  %30 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call24 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* null, double -8.192000e+03, double 8.192000e+03, double 0.000000e+00, i32 4583)
  call void @g_object_class_install_property(%struct._GObjectClass* %30, i32 16, %struct._GParamSpec* %call24)
  %31 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call25 = call i64 @gimp_text_box_mode_get_type() #6
  %call26 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* null, i64 %call25, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %31, i32 17, %struct._GParamSpec* %call26)
  %32 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call27 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 2.621440e+05, double 0.000000e+00, i32 4583)
  call void @g_object_class_install_property(%struct._GObjectClass* %32, i32 18, %struct._GParamSpec* %call27)
  %33 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call28 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 2.621440e+05, double 0.000000e+00, i32 4583)
  call void @g_object_class_install_property(%struct._GObjectClass* %33, i32 19, %struct._GParamSpec* %call28)
  %34 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call29 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* null, i32 1, i32 0, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %34, i32 20, %struct._GParamSpec* %call29)
  %35 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call30 = call %struct._GParamSpec* @gimp_param_spec_matrix2(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* null, %struct._GimpMatrix2* %identity, i32 4583)
  call void @g_object_class_install_property(%struct._GObjectClass* %35, i32 21, %struct._GParamSpec* %call30)
  %36 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call31 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* null, double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 4583)
  call void @g_object_class_install_property(%struct._GObjectClass* %36, i32 22, %struct._GParamSpec* %call31)
  %37 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call32 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* null, i8* null, double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 4583)
  call void @g_object_class_install_property(%struct._GObjectClass* %37, i32 23, %struct._GParamSpec* %call32)
  %38 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call33 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* null, i32 0, i32 262144, i32 0, i32 230)
  call void @g_object_class_install_property(%struct._GObjectClass* %38, i32 24, %struct._GParamSpec* %call33)
  %39 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call34 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* null, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %39, i32 25, %struct._GParamSpec* %call34)
  %40 = load i8*, i8** %language, align 8
  call void @g_free(i8* %40)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %text = alloca %struct._GimpText*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpText*
  store %struct._GimpText* %2, %struct._GimpText** %text, align 8
  %3 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %text2 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %3, i32 0, i32 1
  %4 = load i8*, i8** %text2, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %text3 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %5, i32 0, i32 1
  %6 = load i8*, i8** %text3, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %text4 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %7, i32 0, i32 1
  store i8* null, i8** %text4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %markup = getelementptr inbounds %struct._GimpText, %struct._GimpText* %8, i32 0, i32 2
  %9 = load i8*, i8** %markup, align 8
  %tobool5 = icmp ne i8* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %10 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %markup7 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %10, i32 0, i32 2
  %11 = load i8*, i8** %markup7, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %markup8 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %12, i32 0, i32 2
  store i8* null, i8** %markup8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %13 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %font = getelementptr inbounds %struct._GimpText, %struct._GimpText* %13, i32 0, i32 3
  %14 = load i8*, i8** %font, align 8
  %tobool10 = icmp ne i8* %14, null
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.9
  %15 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %font12 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %15, i32 0, i32 3
  %16 = load i8*, i8** %font12, align 8
  call void @g_free(i8* %16)
  %17 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %font13 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %17, i32 0, i32 3
  store i8* null, i8** %font13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.9
  %18 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %language = getelementptr inbounds %struct._GimpText, %struct._GimpText* %18, i32 0, i32 9
  %19 = load i8*, i8** %language, align 8
  %tobool15 = icmp ne i8* %19, null
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.14
  %20 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %language17 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %20, i32 0, i32 9
  %21 = load i8*, i8** %language17, align 8
  call void @g_free(i8* %21)
  %22 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %language18 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %22, i32 0, i32 9
  store i8* null, i8** %language18, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.14
  %23 = load i8*, i8** @gimp_text_parent_class, align 8
  %24 = bitcast i8* %23 to %struct._GTypeClass*
  %call20 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %24, i64 80)
  %25 = bitcast %struct._GTypeClass* %call20 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %25, i32 0, i32 6
  %26 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %27 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %26(%struct._GObject* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %text = alloca %struct._GimpText*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpText*
  store %struct._GimpText* %2, %struct._GimpText** %text, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.5
    i32 5, label %sw.bb.6
    i32 6, label %sw.bb.7
    i32 7, label %sw.bb.8
    i32 8, label %sw.bb.9
    i32 10, label %sw.bb.10
    i32 9, label %sw.bb.11
    i32 11, label %sw.bb.12
    i32 12, label %sw.bb.13
    i32 13, label %sw.bb.14
    i32 14, label %sw.bb.15
    i32 15, label %sw.bb.16
    i32 16, label %sw.bb.17
    i32 17, label %sw.bb.18
    i32 18, label %sw.bb.19
    i32 19, label %sw.bb.20
    i32 20, label %sw.bb.21
    i32 21, label %sw.bb.22
    i32 22, label %sw.bb.23
    i32 23, label %sw.bb.24
    i32 25, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %text2 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %5, i32 0, i32 1
  %6 = load i8*, i8** %text2, align 8
  call void @g_value_set_string(%struct._GValue* %4, i8* %6)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %markup = getelementptr inbounds %struct._GimpText, %struct._GimpText* %8, i32 0, i32 2
  %9 = load i8*, i8** %markup, align 8
  call void @g_value_set_string(%struct._GValue* %7, i8* %9)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %font = getelementptr inbounds %struct._GimpText, %struct._GimpText* %11, i32 0, i32 3
  %12 = load i8*, i8** %font, align 8
  call void @g_value_set_string(%struct._GValue* %10, i8* %12)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %font_size = getelementptr inbounds %struct._GimpText, %struct._GimpText* %14, i32 0, i32 5
  %15 = load double, double* %font_size, align 8
  call void @g_value_set_double(%struct._GValue* %13, double %15)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %unit = getelementptr inbounds %struct._GimpText, %struct._GimpText* %17, i32 0, i32 4
  %18 = load i32, i32* %unit, align 4
  call void @g_value_set_int(%struct._GValue* %16, i32 %18)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %antialias = getelementptr inbounds %struct._GimpText, %struct._GimpText* %20, i32 0, i32 6
  %21 = load i32, i32* %antialias, align 4
  call void @g_value_set_boolean(%struct._GValue* %19, i32 %21)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %hint_style = getelementptr inbounds %struct._GimpText, %struct._GimpText* %23, i32 0, i32 7
  %24 = load i32, i32* %hint_style, align 4
  call void @g_value_set_enum(%struct._GValue* %22, i32 %24)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %kerning = getelementptr inbounds %struct._GimpText, %struct._GimpText* %26, i32 0, i32 8
  %27 = load i32, i32* %kerning, align 4
  call void @g_value_set_boolean(%struct._GValue* %25, i32 %27)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %29 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %base_dir = getelementptr inbounds %struct._GimpText, %struct._GimpText* %29, i32 0, i32 10
  %30 = load i32, i32* %base_dir, align 4
  call void @g_value_set_enum(%struct._GValue* %28, i32 %30)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %31 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %32 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %language = getelementptr inbounds %struct._GimpText, %struct._GimpText* %32, i32 0, i32 9
  %33 = load i8*, i8** %language, align 8
  call void @g_value_set_string(%struct._GValue* %31, i8* %33)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %34 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %35 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %color = getelementptr inbounds %struct._GimpText, %struct._GimpText* %35, i32 0, i32 11
  %36 = bitcast %struct._GimpRGB* %color to i8*
  call void @g_value_set_boxed(%struct._GValue* %34, i8* %36)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %37 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %38 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %outline = getelementptr inbounds %struct._GimpText, %struct._GimpText* %38, i32 0, i32 12
  %39 = load i32, i32* %outline, align 4
  call void @g_value_set_enum(%struct._GValue* %37, i32 %39)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %40 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %41 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %justify = getelementptr inbounds %struct._GimpText, %struct._GimpText* %41, i32 0, i32 13
  %42 = load i32, i32* %justify, align 4
  call void @g_value_set_enum(%struct._GValue* %40, i32 %42)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %43 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %44 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %indent = getelementptr inbounds %struct._GimpText, %struct._GimpText* %44, i32 0, i32 14
  %45 = load double, double* %indent, align 8
  call void @g_value_set_double(%struct._GValue* %43, double %45)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %46 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %47 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %line_spacing = getelementptr inbounds %struct._GimpText, %struct._GimpText* %47, i32 0, i32 15
  %48 = load double, double* %line_spacing, align 8
  call void @g_value_set_double(%struct._GValue* %46, double %48)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %49 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %50 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %letter_spacing = getelementptr inbounds %struct._GimpText, %struct._GimpText* %50, i32 0, i32 16
  %51 = load double, double* %letter_spacing, align 8
  call void @g_value_set_double(%struct._GValue* %49, double %51)
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %52 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %53 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %box_mode = getelementptr inbounds %struct._GimpText, %struct._GimpText* %53, i32 0, i32 17
  %54 = load i32, i32* %box_mode, align 4
  call void @g_value_set_enum(%struct._GValue* %52, i32 %54)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %55 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %56 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %box_width = getelementptr inbounds %struct._GimpText, %struct._GimpText* %56, i32 0, i32 18
  %57 = load double, double* %box_width, align 8
  call void @g_value_set_double(%struct._GValue* %55, double %57)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %58 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %59 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %box_height = getelementptr inbounds %struct._GimpText, %struct._GimpText* %59, i32 0, i32 19
  %60 = load double, double* %box_height, align 8
  call void @g_value_set_double(%struct._GValue* %58, double %60)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %61 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %62 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %box_unit = getelementptr inbounds %struct._GimpText, %struct._GimpText* %62, i32 0, i32 20
  %63 = load i32, i32* %box_unit, align 4
  call void @g_value_set_int(%struct._GValue* %61, i32 %63)
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  %64 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %65 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %transformation = getelementptr inbounds %struct._GimpText, %struct._GimpText* %65, i32 0, i32 21
  %66 = bitcast %struct._GimpMatrix2* %transformation to i8*
  call void @g_value_set_boxed(%struct._GValue* %64, i8* %66)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %67 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %68 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %offset_x = getelementptr inbounds %struct._GimpText, %struct._GimpText* %68, i32 0, i32 22
  %69 = load double, double* %offset_x, align 8
  call void @g_value_set_double(%struct._GValue* %67, double %69)
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %70 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %71 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %offset_y = getelementptr inbounds %struct._GimpText, %struct._GimpText* %71, i32 0, i32 23
  %72 = load double, double* %offset_y, align 8
  call void @g_value_set_double(%struct._GValue* %70, double %72)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %73 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %74 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %hint_style26 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %74, i32 0, i32 7
  %75 = load i32, i32* %hint_style26, align 4
  %cmp = icmp ne i32 %75, 0
  %conv = zext i1 %cmp to i32
  call void @g_value_set_boolean(%struct._GValue* %73, i32 %conv)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %76 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %76, %struct._GObject** %_glib__object, align 8
  %77 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %77, %struct._GParamSpec** %_glib__pspec, align 8
  %78 = load i32, i32* %property_id.addr, align 4
  store i32 %78, i32* %_glib__property_id, align 4
  %79 = load i32, i32* %_glib__property_id, align 4
  %80 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %80, i32 0, i32 1
  %81 = load i8*, i8** %name, align 8
  %82 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %83 = bitcast %struct._GParamSpec* %82 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %83, i32 0, i32 0
  %84 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %84, i32 0, i32 0
  %85 = load i64, i64* %g_type, align 8
  %call27 = call i8* @g_type_name(i64 %85)
  %86 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %87 = bitcast %struct._GObject* %86 to %struct._GTypeInstance*
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %87, i32 0, i32 0
  %88 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type29 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %88, i32 0, i32 0
  %89 = load i64, i64* %g_type29, align 8
  %call30 = call i8* @g_type_name(i64 %89)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 382, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 %79, i8* %81, i8* %call27, i8* %call30)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %text = alloca %struct._GimpText*, align 8
  %color = alloca %struct._GimpRGB*, align 8
  %matrix = alloca %struct._GimpMatrix2*, align 8
  %font = alloca i8*, align 8
  %len = alloca i64, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpText*
  store %struct._GimpText* %2, %struct._GimpText** %text, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.9
    i32 3, label %sw.bb.22
    i32 4, label %sw.bb.36
    i32 5, label %sw.bb.38
    i32 6, label %sw.bb.40
    i32 7, label %sw.bb.42
    i32 8, label %sw.bb.44
    i32 9, label %sw.bb.46
    i32 10, label %sw.bb.49
    i32 11, label %sw.bb.51
    i32 12, label %sw.bb.54
    i32 13, label %sw.bb.56
    i32 14, label %sw.bb.58
    i32 15, label %sw.bb.60
    i32 16, label %sw.bb.62
    i32 17, label %sw.bb.64
    i32 18, label %sw.bb.66
    i32 19, label %sw.bb.68
    i32 20, label %sw.bb.70
    i32 21, label %sw.bb.72
    i32 22, label %sw.bb.74
    i32 23, label %sw.bb.76
    i32 24, label %sw.bb.78
    i32 25, label %sw.bb.80
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %text2 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %4, i32 0, i32 1
  %5 = load i8*, i8** %text2, align 8
  call void @g_free(i8* %5)
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call3 = call i8* @g_value_dup_string(%struct._GValue* %6)
  %7 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %text4 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %7, i32 0, i32 1
  store i8* %call3, i8** %text4, align 8
  %8 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %text5 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %8, i32 0, i32 1
  %9 = load i8*, i8** %text5, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %10 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %markup = getelementptr inbounds %struct._GimpText, %struct._GimpText* %10, i32 0, i32 2
  %11 = load i8*, i8** %markup, align 8
  %tobool6 = icmp ne i8* %11, null
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %markup7 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %12, i32 0, i32 2
  %13 = load i8*, i8** %markup7, align 8
  call void @g_free(i8* %13)
  %14 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %markup8 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %14, i32 0, i32 2
  store i8* null, i8** %markup8, align 8
  %15 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @g_object_notify(%struct._GObject* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %16 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %markup10 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %16, i32 0, i32 2
  %17 = load i8*, i8** %markup10, align 8
  call void @g_free(i8* %17)
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call11 = call i8* @g_value_dup_string(%struct._GValue* %18)
  %19 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %markup12 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %19, i32 0, i32 2
  store i8* %call11, i8** %markup12, align 8
  %20 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %markup13 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %20, i32 0, i32 2
  %21 = load i8*, i8** %markup13, align 8
  %tobool14 = icmp ne i8* %21, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.21

land.lhs.true.15:                                 ; preds = %sw.bb.9
  %22 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %text16 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %22, i32 0, i32 1
  %23 = load i8*, i8** %text16, align 8
  %tobool17 = icmp ne i8* %23, null
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %land.lhs.true.15
  %24 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %text19 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %24, i32 0, i32 1
  %25 = load i8*, i8** %text19, align 8
  call void @g_free(i8* %25)
  %26 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %text20 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %26, i32 0, i32 1
  store i8* null, i8** %text20, align 8
  %27 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @g_object_notify(%struct._GObject* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %land.lhs.true.15, %sw.bb.9
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call23 = call i8* @g_value_get_string(%struct._GValue* %28)
  store i8* %call23, i8** %font, align 8
  %29 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %font24 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %29, i32 0, i32 3
  %30 = load i8*, i8** %font24, align 8
  call void @g_free(i8* %30)
  %31 = load i8*, i8** %font, align 8
  %tobool25 = icmp ne i8* %31, null
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %sw.bb.22
  %32 = load i8*, i8** %font, align 8
  %call27 = call i64 @strlen(i8* %32) #7
  store i64 %call27, i64* %len, align 8
  %33 = load i8*, i8** %font, align 8
  %call28 = call i32 @g_str_has_suffix(i8* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0))
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.26
  %34 = load i64, i64* %len, align 8
  %sub = sub i64 %34, 12
  store i64 %sub, i64* %len, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.then.26
  %35 = load i8*, i8** %font, align 8
  %36 = load i64, i64* %len, align 8
  %call32 = call noalias i8* @g_strndup(i8* %35, i64 %36)
  %37 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %font33 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %37, i32 0, i32 3
  store i8* %call32, i8** %font33, align 8
  br label %if.end.35

if.else:                                          ; preds = %sw.bb.22
  %38 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %font34 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %38, i32 0, i32 3
  store i8* null, i8** %font34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.end.31
  br label %sw.epilog

sw.bb.36:                                         ; preds = %entry
  %39 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call37 = call double @g_value_get_double(%struct._GValue* %39)
  %40 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %font_size = getelementptr inbounds %struct._GimpText, %struct._GimpText* %40, i32 0, i32 5
  store double %call37, double* %font_size, align 8
  br label %sw.epilog

sw.bb.38:                                         ; preds = %entry
  %41 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call39 = call i32 @g_value_get_int(%struct._GValue* %41)
  %42 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %unit = getelementptr inbounds %struct._GimpText, %struct._GimpText* %42, i32 0, i32 4
  store i32 %call39, i32* %unit, align 4
  br label %sw.epilog

sw.bb.40:                                         ; preds = %entry
  %43 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call41 = call i32 @g_value_get_boolean(%struct._GValue* %43)
  %44 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %antialias = getelementptr inbounds %struct._GimpText, %struct._GimpText* %44, i32 0, i32 6
  store i32 %call41, i32* %antialias, align 4
  br label %sw.epilog

sw.bb.42:                                         ; preds = %entry
  %45 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call43 = call i32 @g_value_get_enum(%struct._GValue* %45)
  %46 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %hint_style = getelementptr inbounds %struct._GimpText, %struct._GimpText* %46, i32 0, i32 7
  store i32 %call43, i32* %hint_style, align 4
  br label %sw.epilog

sw.bb.44:                                         ; preds = %entry
  %47 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call45 = call i32 @g_value_get_boolean(%struct._GValue* %47)
  %48 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %kerning = getelementptr inbounds %struct._GimpText, %struct._GimpText* %48, i32 0, i32 8
  store i32 %call45, i32* %kerning, align 4
  br label %sw.epilog

sw.bb.46:                                         ; preds = %entry
  %49 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %language = getelementptr inbounds %struct._GimpText, %struct._GimpText* %49, i32 0, i32 9
  %50 = load i8*, i8** %language, align 8
  call void @g_free(i8* %50)
  %51 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call47 = call i8* @g_value_dup_string(%struct._GValue* %51)
  %52 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %language48 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %52, i32 0, i32 9
  store i8* %call47, i8** %language48, align 8
  br label %sw.epilog

sw.bb.49:                                         ; preds = %entry
  %53 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call50 = call i32 @g_value_get_enum(%struct._GValue* %53)
  %54 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %base_dir = getelementptr inbounds %struct._GimpText, %struct._GimpText* %54, i32 0, i32 10
  store i32 %call50, i32* %base_dir, align 4
  br label %sw.epilog

sw.bb.51:                                         ; preds = %entry
  %55 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call52 = call i8* @g_value_get_boxed(%struct._GValue* %55)
  %56 = bitcast i8* %call52 to %struct._GimpRGB*
  store %struct._GimpRGB* %56, %struct._GimpRGB** %color, align 8
  %57 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %color53 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %57, i32 0, i32 11
  %58 = load %struct._GimpRGB*, %struct._GimpRGB** %color, align 8
  %59 = bitcast %struct._GimpRGB* %color53 to i8*
  %60 = bitcast %struct._GimpRGB* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 32, i32 8, i1 false)
  br label %sw.epilog

sw.bb.54:                                         ; preds = %entry
  %61 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call55 = call i32 @g_value_get_enum(%struct._GValue* %61)
  %62 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %outline = getelementptr inbounds %struct._GimpText, %struct._GimpText* %62, i32 0, i32 12
  store i32 %call55, i32* %outline, align 4
  br label %sw.epilog

sw.bb.56:                                         ; preds = %entry
  %63 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call57 = call i32 @g_value_get_enum(%struct._GValue* %63)
  %64 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %justify = getelementptr inbounds %struct._GimpText, %struct._GimpText* %64, i32 0, i32 13
  store i32 %call57, i32* %justify, align 4
  br label %sw.epilog

sw.bb.58:                                         ; preds = %entry
  %65 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call59 = call double @g_value_get_double(%struct._GValue* %65)
  %66 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %indent = getelementptr inbounds %struct._GimpText, %struct._GimpText* %66, i32 0, i32 14
  store double %call59, double* %indent, align 8
  br label %sw.epilog

sw.bb.60:                                         ; preds = %entry
  %67 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call61 = call double @g_value_get_double(%struct._GValue* %67)
  %68 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %line_spacing = getelementptr inbounds %struct._GimpText, %struct._GimpText* %68, i32 0, i32 15
  store double %call61, double* %line_spacing, align 8
  br label %sw.epilog

sw.bb.62:                                         ; preds = %entry
  %69 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call63 = call double @g_value_get_double(%struct._GValue* %69)
  %70 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %letter_spacing = getelementptr inbounds %struct._GimpText, %struct._GimpText* %70, i32 0, i32 16
  store double %call63, double* %letter_spacing, align 8
  br label %sw.epilog

sw.bb.64:                                         ; preds = %entry
  %71 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call65 = call i32 @g_value_get_enum(%struct._GValue* %71)
  %72 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %box_mode = getelementptr inbounds %struct._GimpText, %struct._GimpText* %72, i32 0, i32 17
  store i32 %call65, i32* %box_mode, align 4
  br label %sw.epilog

sw.bb.66:                                         ; preds = %entry
  %73 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call67 = call double @g_value_get_double(%struct._GValue* %73)
  %74 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %box_width = getelementptr inbounds %struct._GimpText, %struct._GimpText* %74, i32 0, i32 18
  store double %call67, double* %box_width, align 8
  br label %sw.epilog

sw.bb.68:                                         ; preds = %entry
  %75 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call69 = call double @g_value_get_double(%struct._GValue* %75)
  %76 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %box_height = getelementptr inbounds %struct._GimpText, %struct._GimpText* %76, i32 0, i32 19
  store double %call69, double* %box_height, align 8
  br label %sw.epilog

sw.bb.70:                                         ; preds = %entry
  %77 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call71 = call i32 @g_value_get_int(%struct._GValue* %77)
  %78 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %box_unit = getelementptr inbounds %struct._GimpText, %struct._GimpText* %78, i32 0, i32 20
  store i32 %call71, i32* %box_unit, align 4
  br label %sw.epilog

sw.bb.72:                                         ; preds = %entry
  %79 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call73 = call i8* @g_value_get_boxed(%struct._GValue* %79)
  %80 = bitcast i8* %call73 to %struct._GimpMatrix2*
  store %struct._GimpMatrix2* %80, %struct._GimpMatrix2** %matrix, align 8
  %81 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %transformation = getelementptr inbounds %struct._GimpText, %struct._GimpText* %81, i32 0, i32 21
  %82 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix, align 8
  %83 = bitcast %struct._GimpMatrix2* %transformation to i8*
  %84 = bitcast %struct._GimpMatrix2* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %84, i64 32, i32 8, i1 false)
  br label %sw.epilog

sw.bb.74:                                         ; preds = %entry
  %85 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call75 = call double @g_value_get_double(%struct._GValue* %85)
  %86 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %offset_x = getelementptr inbounds %struct._GimpText, %struct._GimpText* %86, i32 0, i32 22
  store double %call75, double* %offset_x, align 8
  br label %sw.epilog

sw.bb.76:                                         ; preds = %entry
  %87 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call77 = call double @g_value_get_double(%struct._GValue* %87)
  %88 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %offset_y = getelementptr inbounds %struct._GimpText, %struct._GimpText* %88, i32 0, i32 23
  store double %call77, double* %offset_y, align 8
  br label %sw.epilog

sw.bb.78:                                         ; preds = %entry
  %89 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call79 = call i32 @g_value_get_int(%struct._GValue* %89)
  %conv = sitofp i32 %call79 to double
  %90 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %border = getelementptr inbounds %struct._GimpText, %struct._GimpText* %90, i32 0, i32 24
  store double %conv, double* %border, align 8
  br label %sw.epilog

sw.bb.80:                                         ; preds = %entry
  %91 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %hint_style81 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %91, i32 0, i32 7
  %92 = load i32, i32* %hint_style81, align 4
  %cmp = icmp eq i32 %92, 2
  br i1 %cmp, label %if.then.83, label %if.end.87

if.then.83:                                       ; preds = %sw.bb.80
  %93 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call84 = call i32 @g_value_get_boolean(%struct._GValue* %93)
  %tobool85 = icmp ne i32 %call84, 0
  %cond = select i1 %tobool85, i32 2, i32 0
  %94 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %hint_style86 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %94, i32 0, i32 7
  store i32 %cond, i32* %hint_style86, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.83, %sw.bb.80
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %95 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %95, %struct._GObject** %_glib__object, align 8
  %96 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %96, %struct._GParamSpec** %_glib__pspec, align 8
  %97 = load i32, i32* %property_id.addr, align 4
  store i32 %97, i32* %_glib__property_id, align 4
  %98 = load i32, i32* %_glib__property_id, align 4
  %99 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %99, i32 0, i32 1
  %100 = load i8*, i8** %name, align 8
  %101 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %102 = bitcast %struct._GParamSpec* %101 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %102, i32 0, i32 0
  %103 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %103, i32 0, i32 0
  %104 = load i64, i64* %g_type, align 8
  %call88 = call i8* @g_type_name(i64 %104)
  %105 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %106 = bitcast %struct._GObject* %105 to %struct._GTypeInstance*
  %g_class89 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %106, i32 0, i32 0
  %107 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class89, align 8
  %g_type90 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %107, i32 0, i32 0
  %108 = load i64, i64* %g_type90, align 8
  %call91 = call i8* @g_type_name(i64 %108)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 %98, i8* %100, i8* %call88, i8* %call91)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end.87, %sw.bb.78, %sw.bb.76, %sw.bb.74, %sw.bb.72, %sw.bb.70, %sw.bb.68, %sw.bb.66, %sw.bb.64, %sw.bb.62, %sw.bb.60, %sw.bb.58, %sw.bb.56, %sw.bb.54, %sw.bb.51, %sw.bb.49, %sw.bb.46, %sw.bb.44, %sw.bb.42, %sw.bb.40, %sw.bb.38, %sw.bb.36, %if.end.35, %if.end.21, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_dispatch_properties_changed(%struct._GObject* %object, i32 %n_pspecs, %struct._GParamSpec** %pspecs) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %n_pspecs.addr = alloca i32, align 4
  %pspecs.addr = alloca %struct._GParamSpec**, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %n_pspecs, i32* %n_pspecs.addr, align 4
  store %struct._GParamSpec** %pspecs, %struct._GParamSpec*** %pspecs.addr, align 8
  %0 = load i8*, i8** @gimp_text_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %dispatch_properties_changed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 7
  %3 = load void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, i32, %struct._GParamSpec**)** %dispatch_properties_changed, align 8
  %4 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %5 = load i32, i32* %n_pspecs.addr, align 4
  %6 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs.addr, align 8
  call void %3(%struct._GObject* %4, i32 %5, %struct._GParamSpec** %6)
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %8 = bitcast %struct._GObject* %7 to i8*
  %9 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @text_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %8, i32 %9, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_text_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %text = alloca %struct._GimpText*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpText*
  store %struct._GimpText* %2, %struct._GimpText** %text, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %text2 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %3, i32 0, i32 1
  %4 = load i8*, i8** %text2, align 8
  %call3 = call i64 @gimp_string_get_memsize(i8* %4)
  %5 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %5, %call3
  store i64 %add, i64* %memsize, align 8
  %6 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %markup = getelementptr inbounds %struct._GimpText, %struct._GimpText* %6, i32 0, i32 2
  %7 = load i8*, i8** %markup, align 8
  %call4 = call i64 @gimp_string_get_memsize(i8* %7)
  %8 = load i64, i64* %memsize, align 8
  %add5 = add nsw i64 %8, %call4
  store i64 %add5, i64* %memsize, align 8
  %9 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %font = getelementptr inbounds %struct._GimpText, %struct._GimpText* %9, i32 0, i32 3
  %10 = load i8*, i8** %font, align 8
  %call6 = call i64 @gimp_string_get_memsize(i8* %10)
  %11 = load i64, i64* %memsize, align 8
  %add7 = add nsw i64 %11, %call6
  store i64 %add7, i64* %memsize, align 8
  %12 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %language = getelementptr inbounds %struct._GimpText, %struct._GimpText* %12, i32 0, i32 9
  %13 = load i8*, i8** %language, align 8
  %call8 = call i64 @gimp_string_get_memsize(i8* %13)
  %14 = load i64, i64* %memsize, align 8
  %add9 = add nsw i64 %14, %call8
  store i64 %add9, i64* %memsize, align 8
  %15 = load i64, i64* %memsize, align 8
  %16 = load i8*, i8** @gimp_text_parent_class, align 8
  %17 = bitcast i8* %16 to %struct._GTypeClass*
  %call10 = call i64 @gimp_object_get_type() #6
  %call11 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %17, i64 %call10)
  %18 = bitcast %struct._GTypeClass* %call11 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %18, i32 0, i32 3
  %19 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %20 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %21 = load i64*, i64** %gui_size.addr, align 8
  %call12 = call i64 %19(%struct._GimpObject* %20, i64* %21)
  %add13 = add nsw i64 %15, %call12
  ret i64 %add13
}

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare void @gimp_matrix2_identity(%struct._GimpMatrix2*) #1

declare i8* @gimp_get_default_language(i8*) #1

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_unit(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_hint_style_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_text_direction_get_type() #2

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_outline_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_text_justification_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_text_box_mode_get_type() #2

declare %struct._GParamSpec* @gimp_param_spec_matrix2(i8*, i8*, i8*, %struct._GimpMatrix2*, i32) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare void @g_free(i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_boxed(%struct._GValue*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i8* @g_value_dup_string(%struct._GValue*) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @g_str_has_suffix(i8*, i8*) #1

declare noalias i8* @g_strndup(i8*, i64) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i8* @g_value_get_boxed(%struct._GValue*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare i64 @gimp_string_get_memsize(i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
