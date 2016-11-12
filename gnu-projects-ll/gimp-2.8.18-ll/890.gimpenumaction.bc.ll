; ModuleID = './app/widgets/gimpenumaction.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpEnumActionClass = type { %struct._GimpActionClass, void (%struct._GimpEnumAction*, i32)* }
%struct._GimpActionClass = type { %struct._GtkActionClass }
%struct._GtkActionClass = type { %struct._GObjectClass, void (%struct._GtkAction*)*, i64, i64, %struct._GtkWidget* (%struct._GtkAction*)*, %struct._GtkWidget* (%struct._GtkAction*)*, void (%struct._GtkAction*, %struct._GtkWidget*)*, void (%struct._GtkAction*, %struct._GtkWidget*)*, %struct._GtkWidget* (%struct._GtkAction*)*, void ()*, void ()*, void ()* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpEnumAction = type { %struct._GimpAction, i32, i32 }
%struct._GimpAction = type { %struct._GtkAction, %struct._GimpContext*, %struct._GimpRGB*, %struct._GimpViewable*, i32, i32 }
%struct._GimpContext = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpViewable = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_enum_action_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpEnumAction\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"tooltip\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"value-variable\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_enum_action_selected = private unnamed_addr constant [26 x i8] c"gimp_enum_action_selected\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"GIMP_IS_ENUM_ACTION (action)\00", align 1
@action_signals = internal global [1 x i32] zeroinitializer, align 4
@gimp_enum_action_parent_class = internal global i8* null, align 8
@GimpEnumAction_private_offset = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"selected\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"gimpenumaction.c\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_enum_action_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_enum_action_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_enum_action_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_action_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 232, void (i8*, i8*)* bitcast (void (i8*)* @gimp_enum_action_class_intern_init to void (i8*, i8*)*), i32 72, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpEnumAction*)* @gimp_enum_action_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_enum_action_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_enum_action_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_action_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_enum_action_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_enum_action_parent_class, align 8
  %1 = load i32, i32* @GimpEnumAction_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpEnumAction_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpEnumActionClass*
  call void @gimp_enum_action_class_init(%struct._GimpEnumActionClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_enum_action_init(%struct._GimpEnumAction* %action) #3 {
entry:
  %action.addr = alloca %struct._GimpEnumAction*, align 8
  store %struct._GimpEnumAction* %action, %struct._GimpEnumAction** %action.addr, align 8
  %0 = load %struct._GimpEnumAction*, %struct._GimpEnumAction** %action.addr, align 8
  %value = getelementptr inbounds %struct._GimpEnumAction, %struct._GimpEnumAction* %0, i32 0, i32 1
  store i32 0, i32* %value, align 4
  %1 = load %struct._GimpEnumAction*, %struct._GimpEnumAction** %action.addr, align 8
  %value_variable = getelementptr inbounds %struct._GimpEnumAction, %struct._GimpEnumAction* %1, i32 0, i32 2
  store i32 0, i32* %value_variable, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpEnumAction* @gimp_enum_action_new(i8* %name, i8* %label, i8* %tooltip, i8* %stock_id, i32 %value, i32 %value_variable) #3 {
entry:
  %name.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %tooltip.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  %value_variable.addr = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i8* %tooltip, i8** %tooltip.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i32 %value_variable, i32* %value_variable.addr, align 4
  %call = call i64 @gimp_enum_action_get_type() #6
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %label.addr, align 8
  %2 = load i8*, i8** %tooltip.addr, align 8
  %3 = load i8*, i8** %stock_id.addr, align 8
  %4 = load i32, i32* %value.addr, align 4
  %5 = load i32, i32* %value_variable.addr, align 4
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 %5, i8* null)
  %6 = bitcast i8* %call1 to %struct._GimpEnumAction*
  ret %struct._GimpEnumAction* %6
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_enum_action_selected(%struct._GimpEnumAction* %action, i32 %value) #3 {
entry:
  %action.addr = alloca %struct._GimpEnumAction*, align 8
  %value.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpEnumAction* %action, %struct._GimpEnumAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEnumAction*, %struct._GimpEnumAction** %action.addr, align 8
  %1 = bitcast %struct._GimpEnumAction* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_enum_action_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_enum_action_selected, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpEnumAction*, %struct._GimpEnumAction** %action.addr, align 8
  %14 = bitcast %struct._GimpEnumAction* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @action_signals, i32 0, i64 0), align 4
  %16 = load i32, i32* %value.addr, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, i32 %16)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_enum_action_class_init(%struct._GimpEnumActionClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpEnumActionClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %action_class = alloca %struct._GtkActionClass*, align 8
  store %struct._GimpEnumActionClass* %klass, %struct._GimpEnumActionClass** %klass.addr, align 8
  %0 = load %struct._GimpEnumActionClass*, %struct._GimpEnumActionClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpEnumActionClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpEnumActionClass*, %struct._GimpEnumActionClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpEnumActionClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_action_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkActionClass*
  store %struct._GtkActionClass* %5, %struct._GtkActionClass** %action_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_enum_action_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_enum_action_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GtkActionClass*, %struct._GtkActionClass** %action_class, align 8
  %activate = getelementptr inbounds %struct._GtkActionClass, %struct._GtkActionClass* %8, i32 0, i32 1
  store void (%struct._GtkAction*)* @gimp_enum_action_activate, void (%struct._GtkAction*)** %activate, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 1, %struct._GParamSpec* %call3)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 2, %struct._GParamSpec* %call4)
  %11 = load %struct._GimpEnumActionClass*, %struct._GimpEnumActionClass** %klass.addr, align 8
  %12 = bitcast %struct._GimpEnumActionClass* %11 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %12, i32 0, i32 0
  %13 = load i64, i64* %g_type, align 8
  %call5 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i64 %13, i32 1, i32 224, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__INT, i64 4, i32 1, i64 24)
  store i32 %call5, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @action_signals, i32 0, i64 0), align 4
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_action_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_enum_action_set_property(%struct._GObject* %object, i32 %prop_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %prop_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %action = alloca %struct._GimpEnumAction*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %prop_id, i32* %prop_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_enum_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEnumAction*
  store %struct._GimpEnumAction* %2, %struct._GimpEnumAction** %action, align 8
  %3 = load i32, i32* %prop_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_int(%struct._GValue* %4)
  %5 = load %struct._GimpEnumAction*, %struct._GimpEnumAction** %action, align 8
  %value3 = getelementptr inbounds %struct._GimpEnumAction, %struct._GimpEnumAction* %5, i32 0, i32 1
  store i32 %call2, i32* %value3, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call5 = call i32 @g_value_get_boolean(%struct._GValue* %6)
  %7 = load %struct._GimpEnumAction*, %struct._GimpEnumAction** %action, align 8
  %value_variable = getelementptr inbounds %struct._GimpEnumAction, %struct._GimpEnumAction* %7, i32 0, i32 2
  store i32 %call5, i32* %value_variable, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %8, %struct._GObject** %_glib__object, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %9, %struct._GParamSpec** %_glib__pspec, align 8
  %10 = load i32, i32* %prop_id.addr, align 4
  store i32 %10, i32* %_glib__property_id, align 4
  %11 = load i32, i32* %_glib__property_id, align 4
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = bitcast %struct._GParamSpec* %14 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %call6 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type8, align 8
  %call9 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %11, i8* %13, i8* %call6, i8* %call9)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.4, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_enum_action_get_property(%struct._GObject* %object, i32 %prop_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %prop_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %action = alloca %struct._GimpEnumAction*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %prop_id, i32* %prop_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_enum_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEnumAction*
  store %struct._GimpEnumAction* %2, %struct._GimpEnumAction** %action, align 8
  %3 = load i32, i32* %prop_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpEnumAction*, %struct._GimpEnumAction** %action, align 8
  %value2 = getelementptr inbounds %struct._GimpEnumAction, %struct._GimpEnumAction* %5, i32 0, i32 1
  %6 = load i32, i32* %value2, align 4
  call void @g_value_set_int(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpEnumAction*, %struct._GimpEnumAction** %action, align 8
  %value_variable = getelementptr inbounds %struct._GimpEnumAction, %struct._GimpEnumAction* %8, i32 0, i32 2
  %9 = load i32, i32* %value_variable, align 4
  call void @g_value_set_boolean(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %10 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %10, %struct._GObject** %_glib__object, align 8
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %11, %struct._GParamSpec** %_glib__pspec, align 8
  %12 = load i32, i32* %prop_id.addr, align 4
  store i32 %12, i32* %_glib__property_id, align 4
  %13 = load i32, i32* %_glib__property_id, align 4
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %14, i32 0, i32 1
  %15 = load i8*, i8** %name, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %17 = bitcast %struct._GParamSpec* %16 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %19)
  %20 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %21 = bitcast %struct._GObject* %20 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %23)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %13, i8* %15, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_enum_action_activate(%struct._GtkAction* %action) #3 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %enum_action = alloca %struct._GimpEnumAction*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_enum_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEnumAction*
  store %struct._GimpEnumAction* %2, %struct._GimpEnumAction** %enum_action, align 8
  %3 = load %struct._GimpEnumAction*, %struct._GimpEnumAction** %enum_action, align 8
  %4 = load %struct._GimpEnumAction*, %struct._GimpEnumAction** %enum_action, align 8
  %value = getelementptr inbounds %struct._GimpEnumAction, %struct._GimpEnumAction* %4, i32 0, i32 1
  %5 = load i32, i32* %value, align 4
  call void @gimp_enum_action_selected(%struct._GimpEnumAction* %3, i32 %5)
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__INT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

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
