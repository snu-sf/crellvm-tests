; ModuleID = './libgimpwidgets/gimpcolordisplay.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorDisplayClass = type { %struct._GObjectClass, i8*, i8*, %struct._GimpColorDisplay* (%struct._GimpColorDisplay*)*, void (%struct._GimpColorDisplay*, i8*, i32, i32, i32, i32)*, void (%struct._GimpColorDisplay*, %struct._GimpParasite*)*, %struct._GimpParasite* (%struct._GimpColorDisplay*)*, %struct._GtkWidget* (%struct._GimpColorDisplay*)*, void (%struct._GimpColorDisplay*)*, void (%struct._GimpColorDisplay*)*, i8*, void (%struct._GimpColorDisplay*, %struct._cairo_surface*)*, void ()*, void ()* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpColorDisplay = type { %struct._GObject, i32 }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
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
%struct._cairo_surface = type opaque
%struct.GimpColorDisplayPrivate = type { %struct._GimpColorConfig*, %struct._GimpColorManaged* }
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpColorManaged = type opaque
%struct._GimpConfig = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_color_display_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpColorDisplay\00", align 1
@gimp_color_display_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_color_display_new = private unnamed_addr constant [23 x i8] c"gimp_color_display_new\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"g_type_is_a (display_type, GIMP_TYPE_COLOR_DISPLAY)\00", align 1
@__func__.gimp_color_display_clone = private unnamed_addr constant [25 x i8] c"gimp_color_display_clone\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"GIMP_IS_COLOR_DISPLAY (display)\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"color-managed\00", align 1
@__func__.gimp_color_display_convert_surface = private unnamed_addr constant [35 x i8] c"gimp_color_display_convert_surface\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"surface != NULL\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"cairo_surface_get_type (surface) == CAIRO_SURFACE_TYPE_IMAGE\00", align 1
@__func__.gimp_color_display_convert = private unnamed_addr constant [27 x i8] c"gimp_color_display_convert\00", align 1
@__func__.gimp_color_display_load_state = private unnamed_addr constant [30 x i8] c"gimp_color_display_load_state\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"state != NULL\00", align 1
@__func__.gimp_color_display_save_state = private unnamed_addr constant [30 x i8] c"gimp_color_display_save_state\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Display/Proof\00", align 1
@__func__.gimp_color_display_configure = private unnamed_addr constant [29 x i8] c"gimp_color_display_configure\00", align 1
@__func__.gimp_color_display_configure_reset = private unnamed_addr constant [35 x i8] c"gimp_color_display_configure_reset\00", align 1
@__func__.gimp_color_display_changed = private unnamed_addr constant [27 x i8] c"gimp_color_display_changed\00", align 1
@display_signals = internal global [1 x i32] zeroinitializer, align 4
@__func__.gimp_color_display_set_enabled = private unnamed_addr constant [31 x i8] c"gimp_color_display_set_enabled\00", align 1
@__func__.gimp_color_display_get_enabled = private unnamed_addr constant [31 x i8] c"gimp_color_display_get_enabled\00", align 1
@__func__.gimp_color_display_get_config = private unnamed_addr constant [30 x i8] c"gimp_color_display_get_config\00", align 1
@__func__.gimp_color_display_get_managed = private unnamed_addr constant [31 x i8] c"gimp_color_display_get_managed\00", align 1
@gimp_color_display_parent_class = internal global i8* null, align 8
@GimpColorDisplay_private_offset = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"color-config\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Unnamed\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"gimp-display-filter\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"gimpcolordisplay.c\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@__func__.gimp_color_display_set_color_config = private unnamed_addr constant [36 x i8] c"gimp_color_display_set_color_config\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"private->config == NULL\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@__func__.gimp_color_display_set_color_managed = private unnamed_addr constant [37 x i8] c"gimp_color_display_set_color_managed\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"private->managed == NULL\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"profile-changed\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_display_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_display_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_display_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call6 = call i64 @g_type_register_static_simple(i64 80, i8* %call5, i32 240, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_display_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorDisplay*)* @gimp_color_display_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call6, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call7 = call i64 @gimp_config_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call7, %struct._GInterfaceInfo* @gimp_color_display_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_display_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_color_display_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_class_intern_init(i8* %klass) #2 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_display_parent_class, align 8
  %1 = load i32, i32* @GimpColorDisplay_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorDisplay_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorDisplayClass*
  call void @gimp_color_display_class_init(%struct._GimpColorDisplayClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_init(%struct._GimpColorDisplay* %display) #2 {
entry:
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %enabled = getelementptr inbounds %struct._GimpColorDisplay, %struct._GimpColorDisplay* %0, i32 0, i32 1
  store i32 0, i32* %enabled, align 4
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #3

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpColorDisplay* @gimp_color_display_new(i64 %display_type) #2 {
entry:
  %retval = alloca %struct._GimpColorDisplay*, align 8
  %display_type.addr = alloca i64, align 8
  store i64 %display_type, i64* %display_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %display_type.addr, align 8
  %call = call i64 @gimp_color_display_get_type() #6
  %call1 = call i32 @g_type_is_a(i64 %0, i64 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_color_display_new, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpColorDisplay* null, %struct._GimpColorDisplay** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i64, i64* %display_type.addr, align 8
  %call2 = call i8* (i64, i8*, ...) @g_object_new(i64 %1, i8* null)
  %2 = bitcast i8* %call2 to %struct._GimpColorDisplay*
  store %struct._GimpColorDisplay* %2, %struct._GimpColorDisplay** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %retval
  ret %struct._GimpColorDisplay* %3
}

declare i32 @g_type_is_a(i64, i64) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GimpColorDisplay* @gimp_color_display_clone(%struct._GimpColorDisplay* %display) #2 {
entry:
  %retval = alloca %struct._GimpColorDisplay*, align 8
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %clone15 = alloca %struct._GimpColorDisplay*, align 8
  %private = alloca %struct.GimpColorDisplayPrivate*, align 8
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpColorDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_display_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_color_display_clone, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpColorDisplay* null, %struct._GimpColorDisplay** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpColorDisplay* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpColorDisplayClass*
  %clone = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %16, i32 0, i32 3
  %17 = load %struct._GimpColorDisplay* (%struct._GimpColorDisplay*)*, %struct._GimpColorDisplay* (%struct._GimpColorDisplay*)** %clone, align 8
  %tobool12 = icmp ne %struct._GimpColorDisplay* (%struct._GimpColorDisplay*)* %17, null
  br i1 %tobool12, label %if.then.13, label %if.end.25

if.then.13:                                       ; preds = %do.end
  %18 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %19 = bitcast %struct._GimpColorDisplay* %18 to %struct._GTypeInstance*
  %g_class16 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class16, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpColorDisplayClass*
  %clone17 = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %21, i32 0, i32 3
  %22 = load %struct._GimpColorDisplay* (%struct._GimpColorDisplay*)*, %struct._GimpColorDisplay* (%struct._GimpColorDisplay*)** %clone17, align 8
  %23 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %call18 = call %struct._GimpColorDisplay* %22(%struct._GimpColorDisplay* %23)
  store %struct._GimpColorDisplay* %call18, %struct._GimpColorDisplay** %clone15, align 8
  %24 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %clone15, align 8
  %tobool19 = icmp ne %struct._GimpColorDisplay* %24, null
  br i1 %tobool19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.then.13
  %25 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %26 = bitcast %struct._GimpColorDisplay* %25 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_color_display_get_type() #6
  %call23 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %26, i64 %call22)
  %27 = bitcast i8* %call23 to %struct.GimpColorDisplayPrivate*
  store %struct.GimpColorDisplayPrivate* %27, %struct.GimpColorDisplayPrivate** %private, align 8
  %28 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %clone15, align 8
  %29 = bitcast %struct._GimpColorDisplay* %28 to i8*
  %30 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %enabled = getelementptr inbounds %struct._GimpColorDisplay, %struct._GimpColorDisplay* %30, i32 0, i32 1
  %31 = load i32, i32* %enabled, align 4
  %32 = load %struct.GimpColorDisplayPrivate*, %struct.GimpColorDisplayPrivate** %private, align 8
  %managed = getelementptr inbounds %struct.GimpColorDisplayPrivate, %struct.GimpColorDisplayPrivate* %32, i32 0, i32 1
  %33 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %managed, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), %struct._GimpColorManaged* %33, i8* null)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.then.13
  %34 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %clone15, align 8
  store %struct._GimpColorDisplay* %34, %struct._GimpColorDisplay** %retval
  br label %return

if.end.25:                                        ; preds = %do.end
  %35 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %36 = bitcast %struct._GimpColorDisplay* %35 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_config_interface_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call26)
  %37 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpConfig*
  %call28 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %37)
  %38 = bitcast i8* %call28 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_color_display_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call29)
  %39 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpColorDisplay*
  store %struct._GimpColorDisplay* %39, %struct._GimpColorDisplay** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.end.24, %if.else.9
  %40 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %retval
  ret %struct._GimpColorDisplay* %40
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @gimp_config_duplicate(%struct._GimpConfig*) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_display_convert_surface(%struct._GimpColorDisplay* %display, %struct._cairo_surface* %surface) #2 {
entry:
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %surface.addr = alloca %struct._cairo_surface*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  store %struct._cairo_surface* %surface, %struct._cairo_surface** %surface.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpColorDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_display_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_color_display_convert_surface, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.31

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %cmp12 = icmp ne %struct._cairo_surface* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_color_display_convert_surface, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.31

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %call18 = call i32 @cairo_surface_get_type(%struct._cairo_surface* %14)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_color_display_convert_surface, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.31

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %15 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %enabled = getelementptr inbounds %struct._GimpColorDisplay, %struct._GimpColorDisplay* %15, i32 0, i32 1
  %16 = load i32, i32* %enabled, align 4
  %tobool24 = icmp ne i32 %16, 0
  br i1 %tobool24, label %land.lhs.true.25, label %if.end.31

land.lhs.true.25:                                 ; preds = %do.end.23
  %17 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %18 = bitcast %struct._GimpColorDisplay* %17 to %struct._GTypeInstance*
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %20 = bitcast %struct._GTypeClass* %19 to %struct._GimpColorDisplayClass*
  %convert_surface = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %20, i32 0, i32 11
  %21 = load void (%struct._GimpColorDisplay*, %struct._cairo_surface*)*, void (%struct._GimpColorDisplay*, %struct._cairo_surface*)** %convert_surface, align 8
  %tobool27 = icmp ne void (%struct._GimpColorDisplay*, %struct._cairo_surface*)* %21, null
  br i1 %tobool27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %land.lhs.true.25
  %22 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  call void @cairo_surface_flush(%struct._cairo_surface* %22)
  %23 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %24 = bitcast %struct._GimpColorDisplay* %23 to %struct._GTypeInstance*
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %26 = bitcast %struct._GTypeClass* %25 to %struct._GimpColorDisplayClass*
  %convert_surface30 = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %26, i32 0, i32 11
  %27 = load void (%struct._GimpColorDisplay*, %struct._cairo_surface*)*, void (%struct._GimpColorDisplay*, %struct._cairo_surface*)** %convert_surface30, align 8
  %28 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %29 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  call void %27(%struct._GimpColorDisplay* %28, %struct._cairo_surface* %29)
  %30 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  call void @cairo_surface_mark_dirty(%struct._cairo_surface* %30)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.9, %if.else.14, %if.else.21, %if.then.28, %land.lhs.true.25, %do.end.23
  ret void
}

declare i32 @cairo_surface_get_type(%struct._cairo_surface*) #1

declare void @cairo_surface_flush(%struct._cairo_surface*) #1

declare void @cairo_surface_mark_dirty(%struct._cairo_surface*) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_display_convert(%struct._GimpColorDisplay* %display, i8* %buf, i32 %width, i32 %height, i32 %bpp, i32 %bpl) #2 {
entry:
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %buf.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %bpl.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %bpl, i32* %bpl.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpColorDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_display_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_color_display_convert, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.18

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %enabled = getelementptr inbounds %struct._GimpColorDisplay, %struct._GimpColorDisplay* %13, i32 0, i32 1
  %14 = load i32, i32* %enabled, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.18

land.lhs.true.12:                                 ; preds = %do.end
  %15 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %16 = bitcast %struct._GimpColorDisplay* %15 to %struct._GTypeInstance*
  %g_class13 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class13, align 8
  %18 = bitcast %struct._GTypeClass* %17 to %struct._GimpColorDisplayClass*
  %convert = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %18, i32 0, i32 4
  %19 = load void (%struct._GimpColorDisplay*, i8*, i32, i32, i32, i32)*, void (%struct._GimpColorDisplay*, i8*, i32, i32, i32, i32)** %convert, align 8
  %tobool14 = icmp ne void (%struct._GimpColorDisplay*, i8*, i32, i32, i32, i32)* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %land.lhs.true.12
  %20 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %21 = bitcast %struct._GimpColorDisplay* %20 to %struct._GTypeInstance*
  %g_class16 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class16, align 8
  %23 = bitcast %struct._GTypeClass* %22 to %struct._GimpColorDisplayClass*
  %convert17 = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %23, i32 0, i32 4
  %24 = load void (%struct._GimpColorDisplay*, i8*, i32, i32, i32, i32)*, void (%struct._GimpColorDisplay*, i8*, i32, i32, i32, i32)** %convert17, align 8
  %25 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %26 = load i8*, i8** %buf.addr, align 8
  %27 = load i32, i32* %width.addr, align 4
  %28 = load i32, i32* %height.addr, align 4
  %29 = load i32, i32* %bpp.addr, align 4
  %30 = load i32, i32* %bpl.addr, align 4
  call void %24(%struct._GimpColorDisplay* %25, i8* %26, i32 %27, i32 %28, i32 %29, i32 %30)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.9, %if.then.15, %land.lhs.true.12, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_color_display_load_state(%struct._GimpColorDisplay* %display, %struct._GimpParasite* %state) #2 {
entry:
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %state.addr = alloca %struct._GimpParasite*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  store %struct._GimpParasite* %state, %struct._GimpParasite** %state.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpColorDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_display_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_color_display_load_state, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.28

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpParasite*, %struct._GimpParasite** %state.addr, align 8
  %cmp12 = icmp ne %struct._GimpParasite* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_color_display_load_state, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.28

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %15 = bitcast %struct._GimpColorDisplay* %14 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %17 = bitcast %struct._GTypeClass* %16 to %struct._GimpColorDisplayClass*
  %load_state = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %17, i32 0, i32 5
  %18 = load void (%struct._GimpColorDisplay*, %struct._GimpParasite*)*, void (%struct._GimpColorDisplay*, %struct._GimpParasite*)** %load_state, align 8
  %tobool18 = icmp ne void (%struct._GimpColorDisplay*, %struct._GimpParasite*)* %18, null
  br i1 %tobool18, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %do.end.16
  %19 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %20 = bitcast %struct._GimpColorDisplay* %19 to %struct._GTypeInstance*
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %22 = bitcast %struct._GTypeClass* %21 to %struct._GimpColorDisplayClass*
  %load_state21 = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %22, i32 0, i32 5
  %23 = load void (%struct._GimpColorDisplay*, %struct._GimpParasite*)*, void (%struct._GimpColorDisplay*, %struct._GimpParasite*)** %load_state21, align 8
  %24 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %25 = load %struct._GimpParasite*, %struct._GimpParasite** %state.addr, align 8
  call void %23(%struct._GimpColorDisplay* %24, %struct._GimpParasite* %25)
  br label %if.end.28

if.else.22:                                       ; preds = %do.end.16
  %26 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %27 = bitcast %struct._GimpColorDisplay* %26 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_config_interface_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call23)
  %28 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpConfig*
  %29 = load %struct._GimpParasite*, %struct._GimpParasite** %state.addr, align 8
  %call25 = call i8* @gimp_parasite_data(%struct._GimpParasite* %29)
  %30 = load %struct._GimpParasite*, %struct._GimpParasite** %state.addr, align 8
  %call26 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %30)
  %conv = trunc i64 %call26 to i32
  %call27 = call i32 @gimp_config_deserialize_string(%struct._GimpConfig* %28, i8* %call25, i32 %conv, i8* null, %struct._GError** null)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.9, %if.else.14, %if.else.22, %if.then.19
  ret void
}

declare i32 @gimp_config_deserialize_string(%struct._GimpConfig*, i8*, i32, i8*, %struct._GError**) #1

declare i8* @gimp_parasite_data(%struct._GimpParasite*) #1

declare i64 @gimp_parasite_data_size(%struct._GimpParasite*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpParasite* @gimp_color_display_save_state(%struct._GimpColorDisplay* %display) #2 {
entry:
  %retval = alloca %struct._GimpParasite*, align 8
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %str = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpColorDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_display_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_color_display_save_state, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpParasite* null, %struct._GimpParasite** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpColorDisplay* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpColorDisplayClass*
  %save_state = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %16, i32 0, i32 6
  %17 = load %struct._GimpParasite* (%struct._GimpColorDisplay*)*, %struct._GimpParasite* (%struct._GimpColorDisplay*)** %save_state, align 8
  %tobool12 = icmp ne %struct._GimpParasite* (%struct._GimpColorDisplay*)* %17, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %do.end
  %18 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %19 = bitcast %struct._GimpColorDisplay* %18 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpColorDisplayClass*
  %save_state15 = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %21, i32 0, i32 6
  %22 = load %struct._GimpParasite* (%struct._GimpColorDisplay*)*, %struct._GimpParasite* (%struct._GimpColorDisplay*)** %save_state15, align 8
  %23 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %call16 = call %struct._GimpParasite* %22(%struct._GimpColorDisplay* %23)
  store %struct._GimpParasite* %call16, %struct._GimpParasite** %retval
  br label %return

if.end.17:                                        ; preds = %do.end
  %24 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %25 = bitcast %struct._GimpColorDisplay* %24 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_config_interface_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call18)
  %26 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpConfig*
  %call20 = call i8* @gimp_config_serialize_to_string(%struct._GimpConfig* %26, i8* null)
  store i8* %call20, i8** %str, align 8
  %27 = load i8*, i8** %str, align 8
  %call21 = call i64 @strlen(i8* %27) #7
  %add = add i64 %call21, 1
  %conv = trunc i64 %add to i32
  %28 = load i8*, i8** %str, align 8
  %call22 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 1, i32 %conv, i8* %28)
  store %struct._GimpParasite* %call22, %struct._GimpParasite** %parasite, align 8
  %29 = load i8*, i8** %str, align 8
  call void @g_free(i8* %29)
  %30 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  store %struct._GimpParasite* %30, %struct._GimpParasite** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.13, %if.else.9
  %31 = load %struct._GimpParasite*, %struct._GimpParasite** %retval
  ret %struct._GimpParasite* %31
}

declare i8* @gimp_config_serialize_to_string(%struct._GimpConfig*, i8*) #1

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_color_display_configure(%struct._GimpColorDisplay* %display) #2 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpColorDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_display_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_color_display_configure, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpColorDisplay* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpColorDisplayClass*
  %configure = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %16, i32 0, i32 7
  %17 = load %struct._GtkWidget* (%struct._GimpColorDisplay*)*, %struct._GtkWidget* (%struct._GimpColorDisplay*)** %configure, align 8
  %tobool12 = icmp ne %struct._GtkWidget* (%struct._GimpColorDisplay*)* %17, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %do.end
  %18 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %19 = bitcast %struct._GimpColorDisplay* %18 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpColorDisplayClass*
  %configure15 = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %21, i32 0, i32 7
  %22 = load %struct._GtkWidget* (%struct._GimpColorDisplay*)*, %struct._GtkWidget* (%struct._GimpColorDisplay*)** %configure15, align 8
  %23 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %call16 = call %struct._GtkWidget* %22(%struct._GimpColorDisplay* %23)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %retval
  br label %return

if.end.17:                                        ; preds = %do.end
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.13, %if.else.9
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %24
}

; Function Attrs: nounwind uwtable
define void @gimp_color_display_configure_reset(%struct._GimpColorDisplay* %display) #2 {
entry:
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpColorDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_display_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_color_display_configure_reset, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.19

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpColorDisplay* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpColorDisplayClass*
  %configure_reset = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %16, i32 0, i32 8
  %17 = load void (%struct._GimpColorDisplay*)*, void (%struct._GimpColorDisplay*)** %configure_reset, align 8
  %tobool12 = icmp ne void (%struct._GimpColorDisplay*)* %17, null
  br i1 %tobool12, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %do.end
  %18 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %19 = bitcast %struct._GimpColorDisplay* %18 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpColorDisplayClass*
  %configure_reset15 = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %21, i32 0, i32 8
  %22 = load void (%struct._GimpColorDisplay*)*, void (%struct._GimpColorDisplay*)** %configure_reset15, align 8
  %23 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  call void %22(%struct._GimpColorDisplay* %23)
  br label %if.end.19

if.else.16:                                       ; preds = %do.end
  %24 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %25 = bitcast %struct._GimpColorDisplay* %24 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_config_interface_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call17)
  %26 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %26)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.9, %if.else.16, %if.then.13
  ret void
}

declare void @gimp_config_reset(%struct._GimpConfig*) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_display_changed(%struct._GimpColorDisplay* %display) #2 {
entry:
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpColorDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_display_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_color_display_changed, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpColorDisplay* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @display_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_display_set_enabled(%struct._GimpColorDisplay* %display, i32 %enabled) #2 {
entry:
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %enabled.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  store i32 %enabled, i32* %enabled.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpColorDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_display_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_color_display_set_enabled, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.14

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %enabled.addr, align 4
  %14 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %enabled11 = getelementptr inbounds %struct._GimpColorDisplay, %struct._GimpColorDisplay* %14, i32 0, i32 1
  %15 = load i32, i32* %enabled11, align 4
  %cmp12 = icmp ne i32 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %17 = bitcast %struct._GimpColorDisplay* %16 to i8*
  %18 = load i32, i32* %enabled.addr, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %18, i8* null)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_color_display_get_enabled(%struct._GimpColorDisplay* %display) #2 {
entry:
  %retval = alloca i32, align 4
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpColorDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_display_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_color_display_get_enabled, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %enabled = getelementptr inbounds %struct._GimpColorDisplay, %struct._GimpColorDisplay* %13, i32 0, i32 1
  %14 = load i32, i32* %enabled, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define %struct._GimpColorConfig* @gimp_color_display_get_config(%struct._GimpColorDisplay* %display) #2 {
entry:
  %retval = alloca %struct._GimpColorConfig*, align 8
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpColorDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_display_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_color_display_get_config, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpColorConfig* null, %struct._GimpColorConfig** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpColorDisplay* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_color_display_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct.GimpColorDisplayPrivate*
  %config = getelementptr inbounds %struct.GimpColorDisplayPrivate, %struct.GimpColorDisplayPrivate* %15, i32 0, i32 0
  %16 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config, align 8
  store %struct._GimpColorConfig* %16, %struct._GimpColorConfig** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %retval
  ret %struct._GimpColorConfig* %17
}

; Function Attrs: nounwind uwtable
define %struct._GimpColorManaged* @gimp_color_display_get_managed(%struct._GimpColorDisplay* %display) #2 {
entry:
  %retval = alloca %struct._GimpColorManaged*, align 8
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpColorDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_display_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_color_display_get_managed, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpColorManaged* null, %struct._GimpColorManaged** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpColorDisplay* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_color_display_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct.GimpColorDisplayPrivate*
  %managed = getelementptr inbounds %struct.GimpColorDisplayPrivate, %struct.GimpColorDisplayPrivate* %15, i32 0, i32 1
  %16 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %managed, align 8
  store %struct._GimpColorManaged* %16, %struct._GimpColorManaged** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %retval
  ret %struct._GimpColorManaged* %17
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_class_init(%struct._GimpColorDisplayClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GimpColorDisplayClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpColorDisplayClass* %klass, %struct._GimpColorDisplayClass** %klass.addr, align 8
  %0 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorDisplayClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_color_display_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_color_display_dispose, void (%struct._GObject*)** %dispose, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_color_display_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_color_display_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %8 = bitcast %struct._GObjectClass* %7 to i8*
  call void @g_type_class_add_private(i8* %8, i64 16)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i32 1, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 1, %struct._GParamSpec* %call1)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call2 = call i64 @gimp_color_config_get_type() #6
  %call3 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i64 %call2, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 2, %struct._GParamSpec* %call3)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call i64 @gimp_color_managed_interface_get_type() #6
  %call5 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call4, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 3, %struct._GParamSpec* %call5)
  %12 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpColorDisplayClass* %12 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %call6 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i64 %14, i32 1, i32 200, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call6, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @display_signals, i32 0, i64 0), align 4
  %15 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %klass.addr, align 8
  %name = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8** %name, align 8
  %16 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %klass.addr, align 8
  %help_id = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %16, i32 0, i32 2
  store i8* null, i8** %help_id, align 8
  %17 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %klass.addr, align 8
  %stock_id = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %17, i32 0, i32 10
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i8** %stock_id, align 8
  %18 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %klass.addr, align 8
  %clone = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %18, i32 0, i32 3
  store %struct._GimpColorDisplay* (%struct._GimpColorDisplay*)* null, %struct._GimpColorDisplay* (%struct._GimpColorDisplay*)** %clone, align 8
  %19 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %klass.addr, align 8
  %convert_surface = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %19, i32 0, i32 11
  store void (%struct._GimpColorDisplay*, %struct._cairo_surface*)* null, void (%struct._GimpColorDisplay*, %struct._cairo_surface*)** %convert_surface, align 8
  %20 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %klass.addr, align 8
  %convert = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %20, i32 0, i32 4
  store void (%struct._GimpColorDisplay*, i8*, i32, i32, i32, i32)* null, void (%struct._GimpColorDisplay*, i8*, i32, i32, i32, i32)** %convert, align 8
  %21 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %klass.addr, align 8
  %load_state = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %21, i32 0, i32 5
  store void (%struct._GimpColorDisplay*, %struct._GimpParasite*)* null, void (%struct._GimpColorDisplay*, %struct._GimpParasite*)** %load_state, align 8
  %22 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %klass.addr, align 8
  %save_state = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %22, i32 0, i32 6
  store %struct._GimpParasite* (%struct._GimpColorDisplay*)* null, %struct._GimpParasite* (%struct._GimpColorDisplay*)** %save_state, align 8
  %23 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %klass.addr, align 8
  %configure = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %23, i32 0, i32 7
  store %struct._GtkWidget* (%struct._GimpColorDisplay*)* null, %struct._GtkWidget* (%struct._GimpColorDisplay*)** %configure, align 8
  %24 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %klass.addr, align 8
  %configure_reset = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %24, i32 0, i32 8
  store void (%struct._GimpColorDisplay*)* null, void (%struct._GimpColorDisplay*)** %configure_reset, align 8
  %25 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %klass.addr, align 8
  %changed = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %25, i32 0, i32 9
  store void (%struct._GimpColorDisplay*)* null, void (%struct._GimpColorDisplay*)** %changed, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_constructed(%struct._GObject* %object) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_color_display_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 9
  %3 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @gimp_color_display_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 80)
  %6 = bitcast %struct._GTypeClass* %call1 to %struct._GObjectClass*
  %constructed2 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  %7 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed2, align 8
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %7(%struct._GObject* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %10 = bitcast %struct._GObject* %9 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_color_display_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpColorDisplay*
  call void @gimp_color_display_changed(%struct._GimpColorDisplay* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_dispose(%struct._GObject* %object) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct.GimpColorDisplayPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_display_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpColorDisplayPrivate*
  store %struct.GimpColorDisplayPrivate* %2, %struct.GimpColorDisplayPrivate** %private, align 8
  %3 = load %struct.GimpColorDisplayPrivate*, %struct.GimpColorDisplayPrivate** %private, align 8
  %config = getelementptr inbounds %struct.GimpColorDisplayPrivate, %struct.GimpColorDisplayPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config, align 8
  %tobool = icmp ne %struct._GimpColorConfig* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.GimpColorDisplayPrivate*, %struct.GimpColorDisplayPrivate** %private, align 8
  %config2 = getelementptr inbounds %struct.GimpColorDisplayPrivate, %struct.GimpColorDisplayPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config2, align 8
  %7 = bitcast %struct._GimpColorConfig* %6 to i8*
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %call3 = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorDisplay*)* @gimp_color_display_changed to i8*), i8* %9)
  %10 = load %struct.GimpColorDisplayPrivate*, %struct.GimpColorDisplayPrivate** %private, align 8
  %config4 = getelementptr inbounds %struct.GimpColorDisplayPrivate, %struct.GimpColorDisplayPrivate* %10, i32 0, i32 0
  %11 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config4, align 8
  %12 = bitcast %struct._GimpColorConfig* %11 to i8*
  call void @g_object_unref(i8* %12)
  %13 = load %struct.GimpColorDisplayPrivate*, %struct.GimpColorDisplayPrivate** %private, align 8
  %config5 = getelementptr inbounds %struct.GimpColorDisplayPrivate, %struct.GimpColorDisplayPrivate* %13, i32 0, i32 0
  store %struct._GimpColorConfig* null, %struct._GimpColorConfig** %config5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.GimpColorDisplayPrivate*, %struct.GimpColorDisplayPrivate** %private, align 8
  %managed = getelementptr inbounds %struct.GimpColorDisplayPrivate, %struct.GimpColorDisplayPrivate* %14, i32 0, i32 1
  %15 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %managed, align 8
  %tobool6 = icmp ne %struct._GimpColorManaged* %15, null
  br i1 %tobool6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end
  %16 = load %struct.GimpColorDisplayPrivate*, %struct.GimpColorDisplayPrivate** %private, align 8
  %managed8 = getelementptr inbounds %struct.GimpColorDisplayPrivate, %struct.GimpColorDisplayPrivate* %16, i32 0, i32 1
  %17 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %managed8, align 8
  %18 = bitcast %struct._GimpColorManaged* %17 to i8*
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %20 = bitcast %struct._GObject* %19 to i8*
  %call9 = call i32 @g_signal_handlers_disconnect_matched(i8* %18, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorDisplay*)* @gimp_color_display_changed to i8*), i8* %20)
  %21 = load %struct.GimpColorDisplayPrivate*, %struct.GimpColorDisplayPrivate** %private, align 8
  %managed10 = getelementptr inbounds %struct.GimpColorDisplayPrivate, %struct.GimpColorDisplayPrivate* %21, i32 0, i32 1
  %22 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %managed10, align 8
  %23 = bitcast %struct._GimpColorManaged* %22 to i8*
  call void @g_object_unref(i8* %23)
  %24 = load %struct.GimpColorDisplayPrivate*, %struct.GimpColorDisplayPrivate** %private, align 8
  %managed11 = getelementptr inbounds %struct.GimpColorDisplayPrivate, %struct.GimpColorDisplayPrivate* %24, i32 0, i32 1
  store %struct._GimpColorManaged* null, %struct._GimpColorManaged** %managed11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %if.end
  %25 = load i8*, i8** @gimp_color_display_parent_class, align 8
  %26 = bitcast i8* %25 to %struct._GTypeClass*
  %call13 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %26, i64 80)
  %27 = bitcast %struct._GTypeClass* %call13 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %27, i32 0, i32 5
  %28 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %29 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %28(%struct._GObject* %29)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %display = alloca %struct._GimpColorDisplay*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_display_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorDisplay*
  store %struct._GimpColorDisplay* %2, %struct._GimpColorDisplay** %display, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_boolean(%struct._GValue* %4)
  %5 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %enabled = getelementptr inbounds %struct._GimpColorDisplay, %struct._GimpColorDisplay* %5, i32 0, i32 1
  store i32 %call2, i32* %enabled, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_get_object(%struct._GValue* %7)
  %8 = bitcast i8* %call4 to %struct._GimpColorConfig*
  call void @gimp_color_display_set_color_config(%struct._GimpColorDisplay* %6, %struct._GimpColorConfig* %8)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i8* @g_value_get_object(%struct._GValue* %10)
  %11 = bitcast i8* %call6 to %struct._GimpColorManaged*
  call void @gimp_color_display_set_color_managed(%struct._GimpColorDisplay* %9, %struct._GimpColorManaged* %11)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %12, %struct._GObject** %_glib__object, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %13, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = load i32, i32* %property_id.addr, align 4
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
  %call7 = call i8* @g_type_name(i64 %21)
  %22 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %23 = bitcast %struct._GObject* %22 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %25)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i32 219, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %15, i8* %17, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %display = alloca %struct._GimpColorDisplay*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_display_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorDisplay*
  store %struct._GimpColorDisplay* %2, %struct._GimpColorDisplay** %display, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %enabled = getelementptr inbounds %struct._GimpColorDisplay, %struct._GimpColorDisplay* %5, i32 0, i32 1
  %6 = load i32, i32* %enabled, align 4
  call void @g_value_set_boolean(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %9 = bitcast %struct._GimpColorDisplay* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_color_display_get_type() #6
  %call4 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast i8* %call4 to %struct.GimpColorDisplayPrivate*
  %config = getelementptr inbounds %struct.GimpColorDisplayPrivate, %struct.GimpColorDisplayPrivate* %10, i32 0, i32 0
  %11 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config, align 8
  %12 = bitcast %struct._GimpColorConfig* %11 to i8*
  call void @g_value_set_object(%struct._GValue* %7, i8* %12)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %15 = bitcast %struct._GimpColorDisplay* %14 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_color_display_get_type() #6
  %call7 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %15, i64 %call6)
  %16 = bitcast i8* %call7 to %struct.GimpColorDisplayPrivate*
  %managed = getelementptr inbounds %struct.GimpColorDisplayPrivate, %struct.GimpColorDisplayPrivate* %16, i32 0, i32 1
  %17 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %managed, align 8
  %18 = bitcast %struct._GimpColorManaged* %17 to i8*
  call void @g_value_set_object(%struct._GValue* %13, i8* %18)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %19, %struct._GObject** %_glib__object, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %20, %struct._GParamSpec** %_glib__pspec, align 8
  %21 = load i32, i32* %property_id.addr, align 4
  store i32 %21, i32* %_glib__property_id, align 4
  %22 = load i32, i32* %_glib__property_id, align 4
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %23, i32 0, i32 1
  %24 = load i8*, i8** %name, align 8
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %26 = bitcast %struct._GParamSpec* %25 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type, align 8
  %call8 = call i8* @g_type_name(i64 %28)
  %29 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %30 = bitcast %struct._GObject* %29 to %struct._GTypeInstance*
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type10 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %31, i32 0, i32 0
  %32 = load i64, i64* %g_type10, align 8
  %call11 = call i8* @g_type_name(i64 %32)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i32 249, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %22, i8* %24, i8* %call8, i8* %call11)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_config_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_color_managed_interface_get_type() #3

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @g_object_unref(i8*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_set_color_config(%struct._GimpColorDisplay* %display, %struct._GimpColorConfig* %config) #2 {
entry:
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %config.addr = alloca %struct._GimpColorConfig*, align 8
  %private = alloca %struct.GimpColorDisplayPrivate*, align 8
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  store %struct._GimpColorConfig* %config, %struct._GimpColorConfig** %config.addr, align 8
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpColorDisplay* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_display_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpColorDisplayPrivate*
  store %struct.GimpColorDisplayPrivate* %2, %struct.GimpColorDisplayPrivate** %private, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.GimpColorDisplayPrivate*, %struct.GimpColorDisplayPrivate** %private, align 8
  %config2 = getelementptr inbounds %struct.GimpColorDisplayPrivate, %struct.GimpColorDisplayPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config2, align 8
  %cmp = icmp eq %struct._GimpColorConfig* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_color_display_set_color_config, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.8

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config.addr, align 8
  %tobool = icmp ne %struct._GimpColorConfig* %5, null
  br i1 %tobool, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %do.end
  %6 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config.addr, align 8
  %7 = bitcast %struct._GimpColorConfig* %6 to i8*
  %call4 = call i8* @g_object_ref(i8* %7)
  %8 = bitcast i8* %call4 to %struct._GimpColorConfig*
  %9 = load %struct.GimpColorDisplayPrivate*, %struct.GimpColorDisplayPrivate** %private, align 8
  %config5 = getelementptr inbounds %struct.GimpColorDisplayPrivate, %struct.GimpColorDisplayPrivate* %9, i32 0, i32 0
  store %struct._GimpColorConfig* %8, %struct._GimpColorConfig** %config5, align 8
  %10 = load %struct.GimpColorDisplayPrivate*, %struct.GimpColorDisplayPrivate** %private, align 8
  %config6 = getelementptr inbounds %struct.GimpColorDisplayPrivate, %struct.GimpColorDisplayPrivate* %10, i32 0, i32 0
  %11 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config6, align 8
  %12 = bitcast %struct._GimpColorConfig* %11 to i8*
  %13 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpColorDisplay* %13 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorDisplay*)* @gimp_color_display_changed to void ()*), i8* %14, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.3, %do.end
  ret void
}

declare i8* @g_value_get_object(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_set_color_managed(%struct._GimpColorDisplay* %display, %struct._GimpColorManaged* %managed) #2 {
entry:
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %managed.addr = alloca %struct._GimpColorManaged*, align 8
  %private = alloca %struct.GimpColorDisplayPrivate*, align 8
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  store %struct._GimpColorManaged* %managed, %struct._GimpColorManaged** %managed.addr, align 8
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpColorDisplay* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_display_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpColorDisplayPrivate*
  store %struct.GimpColorDisplayPrivate* %2, %struct.GimpColorDisplayPrivate** %private, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.GimpColorDisplayPrivate*, %struct.GimpColorDisplayPrivate** %private, align 8
  %managed2 = getelementptr inbounds %struct.GimpColorDisplayPrivate, %struct.GimpColorDisplayPrivate* %3, i32 0, i32 1
  %4 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %managed2, align 8
  %cmp = icmp eq %struct._GimpColorManaged* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_color_display_set_color_managed, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.8

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %managed.addr, align 8
  %tobool = icmp ne %struct._GimpColorManaged* %5, null
  br i1 %tobool, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %do.end
  %6 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %managed.addr, align 8
  %7 = bitcast %struct._GimpColorManaged* %6 to i8*
  %call4 = call i8* @g_object_ref(i8* %7)
  %8 = bitcast i8* %call4 to %struct._GimpColorManaged*
  %9 = load %struct.GimpColorDisplayPrivate*, %struct.GimpColorDisplayPrivate** %private, align 8
  %managed5 = getelementptr inbounds %struct.GimpColorDisplayPrivate, %struct.GimpColorDisplayPrivate* %9, i32 0, i32 1
  store %struct._GimpColorManaged* %8, %struct._GimpColorManaged** %managed5, align 8
  %10 = load %struct.GimpColorDisplayPrivate*, %struct.GimpColorDisplayPrivate** %private, align 8
  %managed6 = getelementptr inbounds %struct.GimpColorDisplayPrivate, %struct.GimpColorDisplayPrivate* %10, i32 0, i32 1
  %11 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %managed6, align 8
  %12 = bitcast %struct._GimpColorManaged* %11 to i8*
  %13 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpColorDisplay* %13 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorDisplay*)* @gimp_color_display_changed to void ()*), i8* %14, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.3, %do.end
  ret void
}

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
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

declare i8* @g_object_ref(i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
