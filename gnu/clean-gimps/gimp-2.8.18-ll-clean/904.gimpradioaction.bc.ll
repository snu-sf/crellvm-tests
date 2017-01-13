; ModuleID = './app/widgets/gimpradioaction.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpRadioActionClass = type { %struct._GtkRadioActionClass }
%struct._GtkRadioActionClass = type { %struct._GtkToggleActionClass, void (%struct._GtkRadioAction*, %struct._GtkRadioAction*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkToggleActionClass = type { %struct._GtkActionClass, void (%struct._GtkToggleAction*)*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GtkToggleAction = type { %struct._GtkAction, %struct._GtkToggleActionPrivate* }
%struct._GtkToggleActionPrivate = type opaque
%struct._GtkRadioAction = type { %struct._GtkToggleAction, %struct._GtkRadioActionPrivate* }
%struct._GtkRadioActionPrivate = type opaque
%struct._GimpRadioAction = type { %struct._GtkRadioAction }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkIconSet = type opaque

@gimp_radio_action_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpRadioAction\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"tooltip\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@gimp_radio_action_parent_class = internal global i8* null, align 8
@GimpRadioAction_private_offset = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"notify::tooltip\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_radio_action_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_radio_action_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_radio_action_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_radio_action_get_type() #4
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 304, void (i8*, i8*)* bitcast (void (i8*)* @gimp_radio_action_class_intern_init to void (i8*, i8*)*), i32 48, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpRadioAction*)* @gimp_radio_action_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_radio_action_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_radio_action_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_action_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_radio_action_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_radio_action_parent_class, align 8
  %1 = load i32, i32* @GimpRadioAction_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpRadioAction_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpRadioActionClass*
  call void @gimp_radio_action_class_init(%struct._GimpRadioActionClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_radio_action_init(%struct._GimpRadioAction* %action) #3 {
entry:
  %action.addr = alloca %struct._GimpRadioAction*, align 8
  store %struct._GimpRadioAction* %action, %struct._GimpRadioAction** %action.addr, align 8
  %0 = load %struct._GimpRadioAction*, %struct._GimpRadioAction** %action.addr, align 8
  %1 = bitcast %struct._GimpRadioAction* %0 to i8*
  %call = call i64 @g_signal_connect_data(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpRadioAction*, %struct._GParamSpec*, i8*)* @gimp_radio_action_tooltip_notify to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkRadioAction* @gimp_radio_action_new(i8* %name, i8* %label, i8* %tooltip, i8* %stock_id, i32 %value) #3 {
entry:
  %name.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %tooltip.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  %action = alloca %struct._GtkRadioAction*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i8* %tooltip, i8** %tooltip.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %call = call i64 @gimp_radio_action_get_type() #4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %label.addr, align 8
  %2 = load i8*, i8** %tooltip.addr, align 8
  %3 = load i32, i32* %value.addr, align 4
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 %3, i8* null)
  %4 = bitcast i8* %call1 to %struct._GtkRadioAction*
  store %struct._GtkRadioAction* %4, %struct._GtkRadioAction** %action, align 8
  %5 = load i8*, i8** %stock_id.addr, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %stock_id.addr, align 8
  %call2 = call %struct._GtkIconSet* @gtk_icon_factory_lookup_default(i8* %6)
  %tobool3 = icmp ne %struct._GtkIconSet* %call2, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %7 = load %struct._GtkRadioAction*, %struct._GtkRadioAction** %action, align 8
  %8 = bitcast %struct._GtkRadioAction* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_action_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkAction*
  %10 = load i8*, i8** %stock_id.addr, align 8
  call void @gtk_action_set_stock_id(%struct._GtkAction* %9, i8* %10)
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load %struct._GtkRadioAction*, %struct._GtkRadioAction** %action, align 8
  %12 = bitcast %struct._GtkRadioAction* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_action_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkAction*
  %14 = load i8*, i8** %stock_id.addr, align 8
  call void @gtk_action_set_icon_name(%struct._GtkAction* %13, i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %15 = load %struct._GtkRadioAction*, %struct._GtkRadioAction** %action, align 8
  ret %struct._GtkRadioAction* %15
}

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._GtkIconSet* @gtk_icon_factory_lookup_default(i8*) #1

declare void @gtk_action_set_stock_id(%struct._GtkAction*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_action_get_type() #2

declare void @gtk_action_set_icon_name(%struct._GtkAction*, i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_radio_action_class_init(%struct._GimpRadioActionClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpRadioActionClass*, align 8
  %action_class = alloca %struct._GtkActionClass*, align 8
  store %struct._GimpRadioActionClass* %klass, %struct._GimpRadioActionClass** %klass.addr, align 8
  %0 = load %struct._GimpRadioActionClass*, %struct._GimpRadioActionClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpRadioActionClass* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_action_get_type() #4
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkActionClass*
  store %struct._GtkActionClass* %2, %struct._GtkActionClass** %action_class, align 8
  %3 = load %struct._GtkActionClass*, %struct._GtkActionClass** %action_class, align 8
  %connect_proxy = getelementptr inbounds %struct._GtkActionClass, %struct._GtkActionClass* %3, i32 0, i32 6
  store void (%struct._GtkAction*, %struct._GtkWidget*)* @gimp_radio_action_connect_proxy, void (%struct._GtkAction*, %struct._GtkWidget*)** %connect_proxy, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_radio_action_connect_proxy(%struct._GtkAction* %action, %struct._GtkWidget* %proxy) #3 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %proxy.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkWidget* %proxy, %struct._GtkWidget** %proxy.addr, align 8
  %0 = load i8*, i8** @gimp_radio_action_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_action_get_type() #4
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkActionClass*
  %connect_proxy = getelementptr inbounds %struct._GtkActionClass, %struct._GtkActionClass* %2, i32 0, i32 6
  %3 = load void (%struct._GtkAction*, %struct._GtkWidget*)*, void (%struct._GtkAction*, %struct._GtkWidget*)** %connect_proxy, align 8
  %4 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  call void %3(%struct._GtkAction* %4, %struct._GtkWidget* %5)
  %6 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %7 = bitcast %struct._GtkAction* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_radio_action_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRadioAction*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  call void @gimp_radio_action_set_proxy_tooltip(%struct._GimpRadioAction* %8, %struct._GtkWidget* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_radio_action_set_proxy_tooltip(%struct._GimpRadioAction* %action, %struct._GtkWidget* %proxy) #3 {
entry:
  %action.addr = alloca %struct._GimpRadioAction*, align 8
  %proxy.addr = alloca %struct._GtkWidget*, align 8
  %tooltip = alloca i8*, align 8
  store %struct._GimpRadioAction* %action, %struct._GimpRadioAction** %action.addr, align 8
  store %struct._GtkWidget* %proxy, %struct._GtkWidget** %proxy.addr, align 8
  %0 = load %struct._GimpRadioAction*, %struct._GimpRadioAction** %action.addr, align 8
  %1 = bitcast %struct._GimpRadioAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_action_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkAction*
  %call2 = call i8* @gtk_action_get_tooltip(%struct._GtkAction* %2)
  store i8* %call2, i8** %tooltip, align 8
  %3 = load i8*, i8** %tooltip, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  %5 = load i8*, i8** %tooltip, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %call4 = call i32 @gimp_help_id_quark() #4
  %call5 = call i8* @g_object_get_qdata(%struct._GObject* %8, i32 %call4)
  call void @gimp_help_set_help_data(%struct._GtkWidget* %4, i8* %5, i8* %call5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @gtk_action_get_tooltip(%struct._GtkAction*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare i8* @g_object_get_qdata(%struct._GObject*, i32) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_help_id_quark() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_radio_action_tooltip_notify(%struct._GimpRadioAction* %action, %struct._GParamSpec* %pspec, i8* %data) #3 {
entry:
  %action.addr = alloca %struct._GimpRadioAction*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %data.addr = alloca i8*, align 8
  %list = alloca %struct._GSList*, align 8
  store %struct._GimpRadioAction* %action, %struct._GimpRadioAction** %action.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpRadioAction*, %struct._GimpRadioAction** %action.addr, align 8
  %1 = bitcast %struct._GimpRadioAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_action_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkAction*
  %call2 = call %struct._GSList* @gtk_action_get_proxies(%struct._GtkAction* %2)
  store %struct._GSList* %call2, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %3 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._GimpRadioAction*, %struct._GimpRadioAction** %action.addr, align 8
  %5 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data3 = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data3, align 8
  %7 = bitcast i8* %6 to %struct._GtkWidget*
  call void @gimp_radio_action_set_proxy_tooltip(%struct._GimpRadioAction* %4, %struct._GtkWidget* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool4 = icmp ne %struct._GSList* %8, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %9 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %9, i32 0, i32 1
  %10 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %10, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct._GSList* @gtk_action_get_proxies(%struct._GtkAction*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
