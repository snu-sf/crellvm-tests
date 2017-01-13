; ModuleID = './app/widgets/gimppluginaction.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPlugInActionClass = type { %struct._GimpActionClass, void (%struct._GimpPlugInAction*, %struct._GimpPlugInProcedure*)* }
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
%struct._GimpPlugInAction = type { %struct._GimpAction, %struct._GimpPlugInProcedure* }
%struct._GimpAction = type { %struct._GtkAction, %struct._GimpContext*, %struct._GimpRGB*, %struct._GimpViewable*, i32, i32 }
%struct._GimpContext = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpViewable = type opaque
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpProgress = type opaque
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GdkPixbuf = type opaque
%struct._GtkSettings = type { %struct._GObject, %struct._GData*, %struct._GtkSettingsPropertyValue*, %struct._GtkRcContext*, %struct._GdkScreen* }
%struct._GtkSettingsPropertyValue = type opaque
%struct._GtkRcContext = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkImageMenuItem = type { %struct._GtkMenuItem, %struct._GtkWidget* }
%struct._GtkMenuItem = type { %struct._GtkItem, %struct._GtkWidget*, %struct._GdkDrawable*, i16, i16, i8*, i8, i32 }
%struct._GtkItem = type { %struct._GtkBin }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_plug_in_action_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpPlugInAction\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"tooltip\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"procedure\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_plug_in_action_selected = private unnamed_addr constant [29 x i8] c"gimp_plug_in_action_selected\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"GIMP_IS_PLUG_IN_ACTION (action)\00", align 1
@action_signals = internal global [1 x i32] zeroinitializer, align 4
@gimp_plug_in_action_parent_class = internal global i8* null, align 8
@GimpPlugInAction_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"selected\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"gimppluginaction.c\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_plug_in_action_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_plug_in_action_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_plug_in_action_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 232, void (i8*, i8*)* bitcast (void (i8*)* @gimp_plug_in_action_class_intern_init to void (i8*, i8*)*), i32 72, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPlugInAction*)* @gimp_plug_in_action_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_plug_in_action_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_plug_in_action_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_action_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_action_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_plug_in_action_parent_class, align 8
  %1 = load i32, i32* @GimpPlugInAction_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPlugInAction_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPlugInActionClass*
  call void @gimp_plug_in_action_class_init(%struct._GimpPlugInActionClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_action_init(%struct._GimpPlugInAction* %action) #3 {
entry:
  %action.addr = alloca %struct._GimpPlugInAction*, align 8
  store %struct._GimpPlugInAction* %action, %struct._GimpPlugInAction** %action.addr, align 8
  %0 = load %struct._GimpPlugInAction*, %struct._GimpPlugInAction** %action.addr, align 8
  %procedure = getelementptr inbounds %struct._GimpPlugInAction, %struct._GimpPlugInAction* %0, i32 0, i32 1
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %procedure, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpPlugInAction* @gimp_plug_in_action_new(i8* %name, i8* %label, i8* %tooltip, i8* %stock_id, %struct._GimpPlugInProcedure* %procedure) #3 {
entry:
  %name.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %tooltip.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %procedure.addr = alloca %struct._GimpPlugInProcedure*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i8* %tooltip, i8** %tooltip.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store %struct._GimpPlugInProcedure* %procedure, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %call = call i64 @gimp_plug_in_action_get_type() #6
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %label.addr, align 8
  %2 = load i8*, i8** %tooltip.addr, align 8
  %3 = load i8*, i8** %stock_id.addr, align 8
  %4 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), %struct._GimpPlugInProcedure* %4, i8* null)
  %5 = bitcast i8* %call1 to %struct._GimpPlugInAction*
  ret %struct._GimpPlugInAction* %5
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_action_selected(%struct._GimpPlugInAction* %action, %struct._GimpPlugInProcedure* %procedure) #3 {
entry:
  %action.addr = alloca %struct._GimpPlugInAction*, align 8
  %procedure.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInAction* %action, %struct._GimpPlugInAction** %action.addr, align 8
  store %struct._GimpPlugInProcedure* %procedure, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInAction*, %struct._GimpPlugInAction** %action.addr, align 8
  %1 = bitcast %struct._GimpPlugInAction* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_action_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_action_selected, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInAction*, %struct._GimpPlugInAction** %action.addr, align 8
  %14 = bitcast %struct._GimpPlugInAction* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @action_signals, i32 0, i64 0), align 4
  %16 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, %struct._GimpPlugInProcedure* %16)
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
define internal void @gimp_plug_in_action_class_init(%struct._GimpPlugInActionClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPlugInActionClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %action_class = alloca %struct._GtkActionClass*, align 8
  store %struct._GimpPlugInActionClass* %klass, %struct._GimpPlugInActionClass** %klass.addr, align 8
  %0 = load %struct._GimpPlugInActionClass*, %struct._GimpPlugInActionClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPlugInActionClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpPlugInActionClass*, %struct._GimpPlugInActionClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpPlugInActionClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_action_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkActionClass*
  store %struct._GtkActionClass* %5, %struct._GtkActionClass** %action_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_plug_in_action_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_plug_in_action_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_plug_in_action_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GtkActionClass*, %struct._GtkActionClass** %action_class, align 8
  %activate = getelementptr inbounds %struct._GtkActionClass, %struct._GtkActionClass* %9, i32 0, i32 1
  store void (%struct._GtkAction*)* @gimp_plug_in_action_activate, void (%struct._GtkAction*)** %activate, align 8
  %10 = load %struct._GtkActionClass*, %struct._GtkActionClass** %action_class, align 8
  %connect_proxy = getelementptr inbounds %struct._GtkActionClass, %struct._GtkActionClass* %10, i32 0, i32 6
  store void (%struct._GtkAction*, %struct._GtkWidget*)* @gimp_plug_in_action_connect_proxy, void (%struct._GtkAction*, %struct._GtkWidget*)** %connect_proxy, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_plug_in_procedure_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 1, %struct._GParamSpec* %call4)
  %12 = load %struct._GimpPlugInActionClass*, %struct._GimpPlugInActionClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpPlugInActionClass* %12 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %call5 = call i64 @gimp_plug_in_procedure_get_type() #6
  %call6 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i64 %14, i32 1, i32 224, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call5)
  store i32 %call6, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @action_signals, i32 0, i64 0), align 4
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_action_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_action_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %action = alloca %struct._GimpPlugInAction*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_plug_in_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPlugInAction*
  store %struct._GimpPlugInAction* %2, %struct._GimpPlugInAction** %action, align 8
  %3 = load %struct._GimpPlugInAction*, %struct._GimpPlugInAction** %action, align 8
  %procedure = getelementptr inbounds %struct._GimpPlugInAction, %struct._GimpPlugInAction* %3, i32 0, i32 1
  %4 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure, align 8
  %tobool = icmp ne %struct._GimpPlugInProcedure* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPlugInAction*, %struct._GimpPlugInAction** %action, align 8
  %procedure2 = getelementptr inbounds %struct._GimpPlugInAction, %struct._GimpPlugInAction* %5, i32 0, i32 1
  %6 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure2, align 8
  %7 = bitcast %struct._GimpPlugInProcedure* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpPlugInAction*, %struct._GimpPlugInAction** %action, align 8
  %procedure3 = getelementptr inbounds %struct._GimpPlugInAction, %struct._GimpPlugInAction* %8, i32 0, i32 1
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %procedure3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_plug_in_action_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_action_set_property(%struct._GObject* %object, i32 %prop_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %prop_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %action = alloca %struct._GimpPlugInAction*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %prop_id, i32* %prop_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_plug_in_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPlugInAction*
  store %struct._GimpPlugInAction* %2, %struct._GimpPlugInAction** %action, align 8
  %3 = load i32, i32* %prop_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpPlugInAction*, %struct._GimpPlugInAction** %action, align 8
  %procedure = getelementptr inbounds %struct._GimpPlugInAction, %struct._GimpPlugInAction* %4, i32 0, i32 1
  %5 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure, align 8
  %tobool = icmp ne %struct._GimpPlugInProcedure* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %6 = load %struct._GimpPlugInAction*, %struct._GimpPlugInAction** %action, align 8
  %procedure2 = getelementptr inbounds %struct._GimpPlugInAction, %struct._GimpPlugInAction* %6, i32 0, i32 1
  %7 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure2, align 8
  %8 = bitcast %struct._GimpPlugInProcedure* %7 to i8*
  call void @g_object_unref(i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call3 = call i8* @g_value_dup_object(%struct._GValue* %9)
  %10 = bitcast i8* %call3 to %struct._GimpPlugInProcedure*
  %11 = load %struct._GimpPlugInAction*, %struct._GimpPlugInAction** %action, align 8
  %procedure4 = getelementptr inbounds %struct._GimpPlugInAction, %struct._GimpPlugInAction* %11, i32 0, i32 1
  store %struct._GimpPlugInProcedure* %10, %struct._GimpPlugInProcedure** %procedure4, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %12, %struct._GObject** %_glib__object, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %13, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = load i32, i32* %prop_id.addr, align 4
  store i32 %14, i32* %_glib__property_id, align 4
  %15 = load i32, i32* %_glib__property_id, align 4
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %16, i32 0, i32 1
  %17 = load i8*, i8** %name, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %19 = bitcast %struct._GParamSpec* %18 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %21)
  %22 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %23 = bitcast %struct._GObject* %22 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %25)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i32 156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %15, i8* %17, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_action_get_property(%struct._GObject* %object, i32 %prop_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %prop_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %action = alloca %struct._GimpPlugInAction*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %prop_id, i32* %prop_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_plug_in_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPlugInAction*
  store %struct._GimpPlugInAction* %2, %struct._GimpPlugInAction** %action, align 8
  %3 = load i32, i32* %prop_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpPlugInAction*, %struct._GimpPlugInAction** %action, align 8
  %procedure = getelementptr inbounds %struct._GimpPlugInAction, %struct._GimpPlugInAction* %5, i32 0, i32 1
  %6 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure, align 8
  %7 = bitcast %struct._GimpPlugInProcedure* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
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
  %call2 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i32 134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %11, i8* %13, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_action_activate(%struct._GtkAction* %action) #3 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %plug_in_action = alloca %struct._GimpPlugInAction*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_plug_in_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPlugInAction*
  store %struct._GimpPlugInAction* %2, %struct._GimpPlugInAction** %plug_in_action, align 8
  %3 = load %struct._GimpPlugInAction*, %struct._GimpPlugInAction** %plug_in_action, align 8
  %procedure = getelementptr inbounds %struct._GimpPlugInAction, %struct._GimpPlugInAction* %3, i32 0, i32 1
  %4 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure, align 8
  %tobool = icmp ne %struct._GimpPlugInProcedure* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPlugInAction*, %struct._GimpPlugInAction** %plug_in_action, align 8
  %6 = load %struct._GimpPlugInAction*, %struct._GimpPlugInAction** %plug_in_action, align 8
  %procedure2 = getelementptr inbounds %struct._GimpPlugInAction, %struct._GimpPlugInAction* %6, i32 0, i32 1
  %7 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure2, align 8
  call void @gimp_plug_in_action_selected(%struct._GimpPlugInAction* %5, %struct._GimpPlugInProcedure* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_action_connect_proxy(%struct._GtkAction* %action, %struct._GtkWidget* %proxy) #3 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %proxy.addr = alloca %struct._GtkWidget*, align 8
  %plug_in_action = alloca %struct._GimpPlugInAction*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %settings = alloca %struct._GtkSettings*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %image = alloca %struct._GtkWidget*, align 8
  %copy = alloca %struct._GdkPixbuf*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkWidget* %proxy, %struct._GtkWidget** %proxy.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_plug_in_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPlugInAction*
  store %struct._GimpPlugInAction* %2, %struct._GimpPlugInAction** %plug_in_action, align 8
  %3 = load i8*, i8** @gimp_plug_in_action_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_action_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkActionClass*
  %connect_proxy = getelementptr inbounds %struct._GtkActionClass, %struct._GtkActionClass* %5, i32 0, i32 6
  %6 = load void (%struct._GtkAction*, %struct._GtkWidget*)*, void (%struct._GtkAction*, %struct._GtkWidget*)** %connect_proxy, align 8
  %7 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  call void %6(%struct._GtkAction* %7, %struct._GtkWidget* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %10, %struct._GTypeInstance** %__inst, align 8
  %call4 = call i64 @gtk_image_menu_item_get_type() #6
  store i64 %call4, i64* %__t, align 8
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %11, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.10

if.else:                                          ; preds = %entry
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %13, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %17 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %16, %17
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %19 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %18, i64 %19) #7
  store i32 %call9, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %20 = load i32, i32* %__r, align 4
  store i32 %20, i32* %tmp
  %21 = load i32, i32* %tmp
  %tobool11 = icmp ne i32 %21, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.38

land.lhs.true.12:                                 ; preds = %if.end.10
  %22 = load %struct._GimpPlugInAction*, %struct._GimpPlugInAction** %plug_in_action, align 8
  %procedure = getelementptr inbounds %struct._GimpPlugInAction, %struct._GimpPlugInAction* %22, i32 0, i32 1
  %23 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure, align 8
  %tobool13 = icmp ne %struct._GimpPlugInProcedure* %23, null
  br i1 %tobool13, label %if.then.14, label %if.end.38

if.then.14:                                       ; preds = %land.lhs.true.12
  %24 = load %struct._GimpPlugInAction*, %struct._GimpPlugInAction** %plug_in_action, align 8
  %procedure16 = getelementptr inbounds %struct._GimpPlugInAction, %struct._GimpPlugInAction* %24, i32 0, i32 1
  %25 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure16, align 8
  %call17 = call %struct._GdkPixbuf* @gimp_plug_in_procedure_get_pixbuf(%struct._GimpPlugInProcedure* %25)
  store %struct._GdkPixbuf* %call17, %struct._GdkPixbuf** %pixbuf, align 8
  %26 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool18 = icmp ne %struct._GdkPixbuf* %26, null
  br i1 %tobool18, label %if.then.19, label %if.end.37

if.then.19:                                       ; preds = %if.then.14
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  %call21 = call %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget* %27)
  store %struct._GtkSettings* %call21, %struct._GtkSettings** %settings, align 8
  %28 = load %struct._GtkSettings*, %struct._GtkSettings** %settings, align 8
  %call25 = call i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings* %28, i32 1, i32* %width, i32* %height)
  %29 = load i32, i32* %width, align 4
  %30 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call26 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %30)
  %cmp27 = icmp ne i32 %29, %call26
  br i1 %cmp27, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.19
  %31 = load i32, i32* %height, align 4
  %32 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call28 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %32)
  %cmp29 = icmp ne i32 %31, %call28
  br i1 %cmp29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %lor.lhs.false, %if.then.19
  %33 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %34 = load i32, i32* %width, align 4
  %35 = load i32, i32* %height, align 4
  %call32 = call %struct._GdkPixbuf* @gdk_pixbuf_scale_simple(%struct._GdkPixbuf* %33, i32 %34, i32 %35, i32 2)
  store %struct._GdkPixbuf* %call32, %struct._GdkPixbuf** %copy, align 8
  %36 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %37 = bitcast %struct._GdkPixbuf* %36 to i8*
  call void @g_object_unref(i8* %37)
  %38 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %copy, align 8
  store %struct._GdkPixbuf* %38, %struct._GdkPixbuf** %pixbuf, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %lor.lhs.false
  %39 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call34 = call %struct._GtkWidget* @gtk_image_new_from_pixbuf(%struct._GdkPixbuf* %39)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %image, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_image_menu_item_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call35)
  %42 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkImageMenuItem*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_image_menu_item_set_image(%struct._GtkImageMenuItem* %42, %struct._GtkWidget* %43)
  %44 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %45 = bitcast %struct._GdkPixbuf* %44 to i8*
  call void @g_object_unref(i8* %45)
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.33, %if.then.14
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %land.lhs.true.12, %if.end.10
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_procedure_get_type() #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__OBJECT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_object_unref(i8*) #1

declare i8* @g_value_dup_object(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_object(%struct._GValue*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_image_menu_item_get_type() #2

declare %struct._GdkPixbuf* @gimp_plug_in_procedure_get_pixbuf(%struct._GimpPlugInProcedure*) #1

declare %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget*) #1

declare i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings*, i32, i32*, i32*) #1

declare i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf*) #1

declare %struct._GdkPixbuf* @gdk_pixbuf_scale_simple(%struct._GdkPixbuf*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_image_new_from_pixbuf(%struct._GdkPixbuf*) #1

declare void @gtk_image_menu_item_set_image(%struct._GtkImageMenuItem*, %struct._GtkWidget*) #1

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
