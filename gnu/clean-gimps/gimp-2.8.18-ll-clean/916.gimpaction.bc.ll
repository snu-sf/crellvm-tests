; ModuleID = './app/widgets/gimpaction.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
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
%struct._GimpAction = type { %struct._GtkAction, %struct._GimpContext*, %struct._GimpRGB*, %struct._GimpViewable*, i32, i32 }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type { %struct._GimpViewable }
%struct._GimpTemplate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkIconTheme = type { %struct._GObject, %struct._GtkIconThemePrivate* }
%struct._GtkIconThemePrivate = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkImageMenuItem = type { %struct._GtkMenuItem, %struct._GtkWidget* }
%struct._GtkMenuItem = type { %struct._GtkItem, %struct._GtkWidget*, %struct._GdkDrawable*, i16, i16, i8*, i8, i32 }
%struct._GtkItem = type { %struct._GtkBin }
%struct._GimpColorArea = type { %struct._GtkDrawingArea, i8*, i32, i32, i32, i32, %struct._GimpRGB, i8 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GtkSettings = type { %struct._GObject, %struct._GData*, %struct._GtkSettingsPropertyValue*, %struct._GtkRcContext*, %struct._GdkScreen* }
%struct._GtkSettingsPropertyValue = type opaque
%struct._GtkRcContext = type opaque
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque

@gimp_action_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"GimpAction\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"tooltip\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@gimp_action_parent_class = internal global i8* null, align 8
@GimpAction_private_offset = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"viewable\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"ellipsize\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"max-width-chars\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"gimpaction.c\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"notify::tooltip\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_action_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_action_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_action_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_action_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 224, void (i8*, i8*)* bitcast (void (i8*)* @gimp_action_class_intern_init to void (i8*, i8*)*), i32 64, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpAction*)* @gimp_action_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_action_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_action_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_action_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_action_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_action_parent_class, align 8
  %1 = load i32, i32* @GimpAction_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpAction_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpActionClass*
  call void @gimp_action_class_init(%struct._GimpActionClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_action_init(%struct._GimpAction* %action) #3 {
entry:
  %action.addr = alloca %struct._GimpAction*, align 8
  store %struct._GimpAction* %action, %struct._GimpAction** %action.addr, align 8
  %0 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %color = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %0, i32 0, i32 2
  store %struct._GimpRGB* null, %struct._GimpRGB** %color, align 8
  %1 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %1, i32 0, i32 3
  store %struct._GimpViewable* null, %struct._GimpViewable** %viewable, align 8
  %2 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %ellipsize = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %2, i32 0, i32 4
  store i32 0, i32* %ellipsize, align 4
  %3 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %max_width_chars = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %3, i32 0, i32 5
  store i32 -1, i32* %max_width_chars, align 4
  %4 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %5 = bitcast %struct._GimpAction* %4 to i8*
  %call = call i64 @g_signal_connect_data(i8* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GimpAction*, %struct._GParamSpec*, i8*)* @gimp_action_tooltip_notify to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpAction* @gimp_action_new(i8* %name, i8* %label, i8* %tooltip, i8* %stock_id) #3 {
entry:
  %name.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %tooltip.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %action = alloca %struct._GimpAction*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i8* %tooltip, i8** %tooltip.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  %call = call i64 @gimp_action_get_type() #6
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %label.addr, align 8
  %2 = load i8*, i8** %tooltip.addr, align 8
  %3 = load i8*, i8** %stock_id.addr, align 8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* %3, i8* null)
  %4 = bitcast i8* %call1 to %struct._GimpAction*
  store %struct._GimpAction* %4, %struct._GimpAction** %action, align 8
  %5 = load i8*, i8** %stock_id.addr, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %call2 = call %struct._GtkIconTheme* @gtk_icon_theme_get_default()
  %6 = load i8*, i8** %stock_id.addr, align 8
  %call3 = call i32 @gtk_icon_theme_has_icon(%struct._GtkIconTheme* %call2, i8* %6)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %7 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %8 = bitcast %struct._GimpAction* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_action_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkAction*
  %10 = load i8*, i8** %stock_id.addr, align 8
  call void @gtk_action_set_icon_name(%struct._GtkAction* %9, i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %11 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  ret %struct._GimpAction* %11
}

declare i8* @g_object_new(i64, i8*, ...) #1

declare i32 @gtk_icon_theme_has_icon(%struct._GtkIconTheme*, i8*) #1

declare %struct._GtkIconTheme* @gtk_icon_theme_get_default() #1

declare void @gtk_action_set_icon_name(%struct._GtkAction*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_action_name_compare(%struct._GimpAction* %action1, %struct._GimpAction* %action2) #3 {
entry:
  %action1.addr = alloca %struct._GimpAction*, align 8
  %action2.addr = alloca %struct._GimpAction*, align 8
  store %struct._GimpAction* %action1, %struct._GimpAction** %action1.addr, align 8
  store %struct._GimpAction* %action2, %struct._GimpAction** %action2.addr, align 8
  %0 = load %struct._GimpAction*, %struct._GimpAction** %action1.addr, align 8
  %1 = bitcast %struct._GimpAction* %0 to %struct._GtkAction*
  %call = call i8* @gtk_action_get_name(%struct._GtkAction* %1)
  %2 = load %struct._GimpAction*, %struct._GimpAction** %action2.addr, align 8
  %3 = bitcast %struct._GimpAction* %2 to %struct._GtkAction*
  %call1 = call i8* @gtk_action_get_name(%struct._GtkAction* %3)
  %call2 = call i32 @strcmp(i8* %call, i8* %call1) #7
  ret i32 %call2
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i8* @gtk_action_get_name(%struct._GtkAction*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_action_class_init(%struct._GimpActionClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpActionClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %action_class = alloca %struct._GtkActionClass*, align 8
  %black = alloca %struct._GimpRGB, align 8
  store %struct._GimpActionClass* %klass, %struct._GimpActionClass** %klass.addr, align 8
  %0 = load %struct._GimpActionClass*, %struct._GimpActionClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpActionClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpActionClass*, %struct._GimpActionClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpActionClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_action_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkActionClass*
  store %struct._GtkActionClass* %5, %struct._GtkActionClass** %action_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_action_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_action_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_action_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GtkActionClass*, %struct._GtkActionClass** %action_class, align 8
  %connect_proxy = getelementptr inbounds %struct._GtkActionClass, %struct._GtkActionClass* %9, i32 0, i32 6
  store void (%struct._GtkAction*, %struct._GtkWidget*)* @gimp_action_connect_proxy, void (%struct._GtkAction*, %struct._GtkWidget*)** %connect_proxy, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %black, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_context_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 1, %struct._GParamSpec* %call4)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 1, %struct._GimpRGB* %black, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 2, %struct._GParamSpec* %call5)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call i64 @gimp_viewable_get_type() #6
  %call7 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i64 %call6, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 3, %struct._GParamSpec* %call7)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call i64 @pango_ellipsize_mode_get_type() #6
  %call9 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i64 %call8, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 4, %struct._GParamSpec* %call9)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i32 -1, i32 2147483647, i32 -1, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 5, %struct._GParamSpec* %call10)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_action_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %action = alloca %struct._GimpAction*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAction*
  store %struct._GimpAction* %2, %struct._GimpAction** %action, align 8
  %3 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %context = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %3, i32 0, i32 1
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %context2 = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %5, i32 0, i32 1
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context2, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %context3 = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %8, i32 0, i32 1
  store %struct._GimpContext* null, %struct._GimpContext** %context3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %color = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %9, i32 0, i32 2
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %color, align 8
  %tobool4 = icmp ne %struct._GimpRGB* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %color6 = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %11, i32 0, i32 2
  %12 = load %struct._GimpRGB*, %struct._GimpRGB** %color6, align 8
  %13 = bitcast %struct._GimpRGB* %12 to i8*
  call void @g_free(i8* %13)
  %14 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %color7 = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %14, i32 0, i32 2
  store %struct._GimpRGB* null, %struct._GimpRGB** %color7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %15 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %viewable = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %15, i32 0, i32 3
  %16 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool9 = icmp ne %struct._GimpViewable* %16, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %17 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %viewable11 = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %17, i32 0, i32 3
  %18 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable11, align 8
  %19 = bitcast %struct._GimpViewable* %18 to i8*
  call void @g_object_unref(i8* %19)
  %20 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %viewable12 = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %20, i32 0, i32 3
  store %struct._GimpViewable* null, %struct._GimpViewable** %viewable12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %21 = load i8*, i8** @gimp_action_parent_class, align 8
  %22 = bitcast i8* %21 to %struct._GTypeClass*
  %call14 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %22, i64 80)
  %23 = bitcast %struct._GTypeClass* %call14 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %23, i32 0, i32 6
  %24 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %25 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %24(%struct._GObject* %25)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_action_set_property(%struct._GObject* %object, i32 %prop_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %prop_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %action = alloca %struct._GimpAction*, align 8
  %set_proxy = alloca i32, align 4
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  %list = alloca %struct._GSList*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %prop_id, i32* %prop_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAction*
  store %struct._GimpAction* %2, %struct._GimpAction** %action, align 8
  store i32 0, i32* %set_proxy, align 4
  %3 = load i32, i32* %prop_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.12
    i32 4, label %sw.bb.19
    i32 5, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %context = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %4, i32 0, i32 1
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %6 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %context2 = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %6, i32 0, i32 1
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context2, align 8
  %8 = bitcast %struct._GimpContext* %7 to i8*
  call void @g_object_unref(i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call3 = call i8* @g_value_dup_object(%struct._GValue* %9)
  %10 = bitcast i8* %call3 to %struct._GimpContext*
  %11 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %context4 = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %11, i32 0, i32 1
  store %struct._GimpContext* %10, %struct._GimpContext** %context4, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %12 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %color = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %12, i32 0, i32 2
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color, align 8
  %tobool6 = icmp ne %struct._GimpRGB* %13, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %sw.bb.5
  %14 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %color8 = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %14, i32 0, i32 2
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %color8, align 8
  %16 = bitcast %struct._GimpRGB* %15 to i8*
  call void @g_free(i8* %16)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %sw.bb.5
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i8* @g_value_dup_boxed(%struct._GValue* %17)
  %18 = bitcast i8* %call10 to %struct._GimpRGB*
  %19 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %color11 = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %19, i32 0, i32 2
  store %struct._GimpRGB* %18, %struct._GimpRGB** %color11, align 8
  store i32 1, i32* %set_proxy, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %20 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %viewable = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %20, i32 0, i32 3
  %21 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool13 = icmp ne %struct._GimpViewable* %21, null
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %sw.bb.12
  %22 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %viewable15 = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %22, i32 0, i32 3
  %23 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable15, align 8
  %24 = bitcast %struct._GimpViewable* %23 to i8*
  call void @g_object_unref(i8* %24)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %sw.bb.12
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call17 = call i8* @g_value_dup_object(%struct._GValue* %25)
  %26 = bitcast i8* %call17 to %struct._GimpViewable*
  %27 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %viewable18 = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %27, i32 0, i32 3
  store %struct._GimpViewable* %26, %struct._GimpViewable** %viewable18, align 8
  store i32 1, i32* %set_proxy, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call20 = call i32 @g_value_get_enum(%struct._GValue* %28)
  %29 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %ellipsize = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %29, i32 0, i32 4
  store i32 %call20, i32* %ellipsize, align 4
  store i32 1, i32* %set_proxy, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %30 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call22 = call i32 @g_value_get_int(%struct._GValue* %30)
  %31 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %max_width_chars = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %31, i32 0, i32 5
  store i32 %call22, i32* %max_width_chars, align 4
  store i32 1, i32* %set_proxy, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %32 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %32, %struct._GObject** %_glib__object, align 8
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %33, %struct._GParamSpec** %_glib__pspec, align 8
  %34 = load i32, i32* %prop_id.addr, align 4
  store i32 %34, i32* %_glib__property_id, align 4
  %35 = load i32, i32* %_glib__property_id, align 4
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %36, i32 0, i32 1
  %37 = load i8*, i8** %name, align 8
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %39 = bitcast %struct._GParamSpec* %38 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type, align 8
  %call23 = call i8* @g_type_name(i64 %41)
  %42 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %43 = bitcast %struct._GObject* %42 to %struct._GTypeInstance*
  %g_class24 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class24, align 8
  %g_type25 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %44, i32 0, i32 0
  %45 = load i64, i64* %g_type25, align 8
  %call26 = call i8* @g_type_name(i64 %45)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 244, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %35, i8* %37, i8* %call23, i8* %call26)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.21, %sw.bb.19, %if.end.16, %if.end.9, %if.end
  %46 = load i32, i32* %set_proxy, align 4
  %tobool27 = icmp ne i32 %46, 0
  br i1 %tobool27, label %if.then.28, label %if.end.34

if.then.28:                                       ; preds = %sw.epilog
  %47 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %48 = bitcast %struct._GimpAction* %47 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_action_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call29)
  %49 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkAction*
  %call31 = call %struct._GSList* @gtk_action_get_proxies(%struct._GtkAction* %49)
  store %struct._GSList* %call31, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.28
  %50 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool32 = icmp ne %struct._GSList* %50, null
  br i1 %tobool32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %52 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %52, i32 0, i32 0
  %53 = load i8*, i8** %data, align 8
  %54 = bitcast i8* %53 to %struct._GtkWidget*
  call void @gimp_action_set_proxy(%struct._GimpAction* %51, %struct._GtkWidget* %54)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool33 = icmp ne %struct._GSList* %55, null
  br i1 %tobool33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %56 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %56, i32 0, i32 1
  %57 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %57, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.34

if.end.34:                                        ; preds = %for.end, %sw.epilog
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_action_get_property(%struct._GObject* %object, i32 %prop_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %prop_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %action = alloca %struct._GimpAction*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %prop_id, i32* %prop_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_action_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAction*
  store %struct._GimpAction* %2, %struct._GimpAction** %action, align 8
  %3 = load i32, i32* %prop_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %context = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %5, i32 0, i32 1
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %color = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %9, i32 0, i32 2
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %color, align 8
  %11 = bitcast %struct._GimpRGB* %10 to i8*
  call void @g_value_set_boxed(%struct._GValue* %8, i8* %11)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %13 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %viewable = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %13, i32 0, i32 3
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %15 = bitcast %struct._GimpViewable* %14 to i8*
  call void @g_value_set_object(%struct._GValue* %12, i8* %15)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %ellipsize = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %17, i32 0, i32 4
  %18 = load i32, i32* %ellipsize, align 4
  call void @g_value_set_enum(%struct._GValue* %16, i32 %18)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpAction*, %struct._GimpAction** %action, align 8
  %max_width_chars = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %20, i32 0, i32 5
  %21 = load i32, i32* %max_width_chars, align 4
  call void @g_value_set_int(%struct._GValue* %19, i32 %21)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %22 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %22, %struct._GObject** %_glib__object, align 8
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %23, %struct._GParamSpec** %_glib__pspec, align 8
  %24 = load i32, i32* %prop_id.addr, align 4
  store i32 %24, i32* %_glib__property_id, align 4
  %25 = load i32, i32* %_glib__property_id, align 4
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %26, i32 0, i32 1
  %27 = load i8*, i8** %name, align 8
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %29 = bitcast %struct._GParamSpec* %28 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type, align 8
  %call6 = call i8* @g_type_name(i64 %31)
  %32 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %33 = bitcast %struct._GObject* %32 to %struct._GTypeInstance*
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type8, align 8
  %call9 = call i8* @g_type_name(i64 %35)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %25, i8* %27, i8* %call6, i8* %call9)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_action_connect_proxy(%struct._GtkAction* %action, %struct._GtkWidget* %proxy) #3 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %proxy.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkWidget* %proxy, %struct._GtkWidget** %proxy.addr, align 8
  %0 = load i8*, i8** @gimp_action_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_action_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkActionClass*
  %connect_proxy = getelementptr inbounds %struct._GtkActionClass, %struct._GtkActionClass* %2, i32 0, i32 6
  %3 = load void (%struct._GtkAction*, %struct._GtkWidget*)*, void (%struct._GtkAction*, %struct._GtkWidget*)** %connect_proxy, align 8
  %4 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  call void %3(%struct._GtkAction* %4, %struct._GtkWidget* %5)
  %6 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %7 = bitcast %struct._GtkAction* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_action_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpAction*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  call void @gimp_action_set_proxy(%struct._GimpAction* %8, %struct._GtkWidget* %9)
  %10 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %11 = bitcast %struct._GtkAction* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_action_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpAction*
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  call void @gimp_action_set_proxy_tooltip(%struct._GimpAction* %12, %struct._GtkWidget* %13)
  ret void
}

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @pango_ellipsize_mode_get_type() #2

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare void @g_object_unref(i8*) #1

declare void @g_free(i8*) #1

declare i8* @g_value_dup_object(%struct._GValue*) #1

declare i8* @g_value_dup_boxed(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

declare %struct._GSList* @gtk_action_get_proxies(%struct._GtkAction*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_action_set_proxy(%struct._GimpAction* %action, %struct._GtkWidget* %proxy) #3 {
entry:
  %action.addr = alloca %struct._GimpAction*, align 8
  %proxy.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %area = alloca %struct._GtkWidget*, align 8
  %__inst17 = alloca %struct._GTypeInstance*, align 8
  %__t19 = alloca i64, align 8
  %__r22 = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %view = alloca %struct._GtkWidget*, align 8
  %__inst63 = alloca %struct._GTypeInstance*, align 8
  %__t65 = alloca i64, align 8
  %__r68 = alloca i32, align 4
  %tmp83 = alloca i32, align 4
  %size = alloca i32, align 4
  %width100 = alloca i32, align 4
  %height102 = alloca i32, align 4
  %border_width = alloca i32, align 4
  %__inst105 = alloca %struct._GTypeInstance*, align 8
  %__t108 = alloca i64, align 8
  %__r111 = alloca i32, align 4
  %tmp126 = alloca i32, align 4
  %image = alloca %struct._GtkWidget*, align 8
  %__inst144 = alloca %struct._GTypeInstance*, align 8
  %__t146 = alloca i64, align 8
  %__r149 = alloca i32, align 4
  %tmp164 = alloca i32, align 4
  %__inst167 = alloca %struct._GTypeInstance*, align 8
  %__t169 = alloca i64, align 8
  %__r172 = alloca i32, align 4
  %tmp187 = alloca i32, align 4
  %child = alloca %struct._GtkWidget*, align 8
  %__inst201 = alloca %struct._GTypeInstance*, align 8
  %__t203 = alloca i64, align 8
  %__r206 = alloca i32, align 4
  %tmp221 = alloca i32, align 4
  %label = alloca %struct._GtkLabel*, align 8
  store %struct._GimpAction* %action, %struct._GimpAction** %action.addr, align 8
  store %struct._GtkWidget* %proxy, %struct._GtkWidget** %proxy.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_image_menu_item_get_type() #6
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
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
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.227

if.end.9:                                         ; preds = %if.end.6
  %13 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %color = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %13, i32 0, i32 2
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %color, align 8
  %tobool10 = icmp ne %struct._GimpRGB* %14, null
  br i1 %tobool10, label %if.then.11, label %if.else.55

if.then.11:                                       ; preds = %if.end.9
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_image_menu_item_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call13)
  %17 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkImageMenuItem*
  %call15 = call %struct._GtkWidget* @gtk_image_menu_item_get_image(%struct._GtkImageMenuItem* %17)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %area, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %19, %struct._GTypeInstance** %__inst17, align 8
  %call20 = call i64 @gimp_color_area_get_type() #6
  store i64 %call20, i64* %__t19, align 8
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst17, align 8
  %tobool23 = icmp ne %struct._GTypeInstance* %20, null
  br i1 %tobool23, label %if.else.25, label %if.then.24

if.then.24:                                       ; preds = %if.then.11
  store i32 0, i32* %__r22, align 4
  br label %if.end.36

if.else.25:                                       ; preds = %if.then.11
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst17, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %tobool27 = icmp ne %struct._GTypeClass* %22, null
  br i1 %tobool27, label %land.lhs.true.28, label %if.else.33

land.lhs.true.28:                                 ; preds = %if.else.25
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst17, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %g_type30 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type30, align 8
  %26 = load i64, i64* %__t19, align 8
  %cmp31 = icmp eq i64 %25, %26
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %land.lhs.true.28
  store i32 1, i32* %__r22, align 4
  br label %if.end.35

if.else.33:                                       ; preds = %land.lhs.true.28, %if.else.25
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst17, align 8
  %28 = load i64, i64* %__t19, align 8
  %call34 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %27, i64 %28) #7
  store i32 %call34, i32* %__r22, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.32
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.24
  %29 = load i32, i32* %__r22, align 4
  store i32 %29, i32* %tmp37
  %30 = load i32, i32* %tmp37
  %tobool38 = icmp ne i32 %30, 0
  br i1 %tobool38, label %if.then.39, label %if.else.43

if.then.39:                                       ; preds = %if.end.36
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_color_area_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call40)
  %33 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpColorArea*
  %34 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %color42 = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %34, i32 0, i32 2
  %35 = load %struct._GimpRGB*, %struct._GimpRGB** %color42, align 8
  call void @gimp_color_area_set_color(%struct._GimpColorArea* %33, %struct._GimpRGB* %35)
  br label %if.end.54

if.else.43:                                       ; preds = %if.end.36
  %36 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %color46 = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %36, i32 0, i32 2
  %37 = load %struct._GimpRGB*, %struct._GimpRGB** %color46, align 8
  %call47 = call %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB* %37, i32 1, i32 0)
  store %struct._GtkWidget* %call47, %struct._GtkWidget** %area, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_color_area_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call48)
  %40 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpColorArea*
  call void @gimp_color_area_set_draw_border(%struct._GimpColorArea* %40, i32 1)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  %call50 = call %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget* %41)
  %call51 = call i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings* %call50, i32 1, i32* %width, i32* %height)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %43 = load i32, i32* %width, align 4
  %44 = load i32, i32* %height, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %42, i32 %43, i32 %44)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_image_menu_item_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call52)
  %47 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkImageMenuItem*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_image_menu_item_set_image(%struct._GtkImageMenuItem* %47, %struct._GtkWidget* %48)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.43, %if.then.39
  br label %if.end.195

if.else.55:                                       ; preds = %if.end.9
  %50 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %50, i32 0, i32 3
  %51 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool56 = icmp ne %struct._GimpViewable* %51, null
  br i1 %tobool56, label %if.then.57, label %if.else.138

if.then.57:                                       ; preds = %if.else.55
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_image_menu_item_get_type() #6
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call59)
  %54 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkImageMenuItem*
  %call61 = call %struct._GtkWidget* @gtk_image_menu_item_get_image(%struct._GtkImageMenuItem* %54)
  store %struct._GtkWidget* %call61, %struct._GtkWidget** %view, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %56, %struct._GTypeInstance** %__inst63, align 8
  %call66 = call i64 @gimp_view_get_type() #6
  store i64 %call66, i64* %__t65, align 8
  %57 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst63, align 8
  %tobool69 = icmp ne %struct._GTypeInstance* %57, null
  br i1 %tobool69, label %if.else.71, label %if.then.70

if.then.70:                                       ; preds = %if.then.57
  store i32 0, i32* %__r68, align 4
  br label %if.end.82

if.else.71:                                       ; preds = %if.then.57
  %58 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst63, align 8
  %g_class72 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %58, i32 0, i32 0
  %59 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class72, align 8
  %tobool73 = icmp ne %struct._GTypeClass* %59, null
  br i1 %tobool73, label %land.lhs.true.74, label %if.else.79

land.lhs.true.74:                                 ; preds = %if.else.71
  %60 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst63, align 8
  %g_class75 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %60, i32 0, i32 0
  %61 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class75, align 8
  %g_type76 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %61, i32 0, i32 0
  %62 = load i64, i64* %g_type76, align 8
  %63 = load i64, i64* %__t65, align 8
  %cmp77 = icmp eq i64 %62, %63
  br i1 %cmp77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %land.lhs.true.74
  store i32 1, i32* %__r68, align 4
  br label %if.end.81

if.else.79:                                       ; preds = %land.lhs.true.74, %if.else.71
  %64 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst63, align 8
  %65 = load i64, i64* %__t65, align 8
  %call80 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %64, i64 %65) #7
  store i32 %call80, i32* %__r68, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.79, %if.then.78
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.70
  %66 = load i32, i32* %__r68, align 4
  store i32 %66, i32* %tmp83
  %67 = load i32, i32* %tmp83
  %tobool84 = icmp ne i32 %67, 0
  br i1 %tobool84, label %land.lhs.true.85, label %if.else.97

land.lhs.true.85:                                 ; preds = %if.end.82
  %68 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %viewable86 = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %68, i32 0, i32 3
  %69 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable86, align 8
  %70 = bitcast %struct._GimpViewable* %69 to %struct._GTypeInstance*
  %g_class87 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %70, i32 0, i32 0
  %71 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class87, align 8
  %g_type88 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %71, i32 0, i32 0
  %72 = load i64, i64* %g_type88, align 8
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call89 = call i64 @gimp_view_get_type() #6
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call89)
  %75 = bitcast %struct._GTypeInstance* %call90 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %75, i32 0, i32 3
  %76 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable_type = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %76, i32 0, i32 2
  %77 = load i64, i64* %viewable_type, align 8
  %call91 = call i32 @g_type_is_a(i64 %72, i64 %77)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then.93, label %if.else.97

if.then.93:                                       ; preds = %land.lhs.true.85
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call94 = call i64 @gimp_view_get_type() #6
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call94)
  %80 = bitcast %struct._GTypeInstance* %call95 to %struct._GimpView*
  %81 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %viewable96 = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %81, i32 0, i32 3
  %82 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable96, align 8
  call void @gimp_view_set_viewable(%struct._GimpView* %80, %struct._GimpViewable* %82)
  br label %if.end.137

if.else.97:                                       ; preds = %land.lhs.true.85, %if.end.82
  %83 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %viewable106 = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %83, i32 0, i32 3
  %84 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable106, align 8
  %85 = bitcast %struct._GimpViewable* %84 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %85, %struct._GTypeInstance** %__inst105, align 8
  %call109 = call i64 @gimp_imagefile_get_type() #6
  store i64 %call109, i64* %__t108, align 8
  %86 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst105, align 8
  %tobool112 = icmp ne %struct._GTypeInstance* %86, null
  br i1 %tobool112, label %if.else.114, label %if.then.113

if.then.113:                                      ; preds = %if.else.97
  store i32 0, i32* %__r111, align 4
  br label %if.end.125

if.else.114:                                      ; preds = %if.else.97
  %87 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst105, align 8
  %g_class115 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %87, i32 0, i32 0
  %88 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class115, align 8
  %tobool116 = icmp ne %struct._GTypeClass* %88, null
  br i1 %tobool116, label %land.lhs.true.117, label %if.else.122

land.lhs.true.117:                                ; preds = %if.else.114
  %89 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst105, align 8
  %g_class118 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %89, i32 0, i32 0
  %90 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class118, align 8
  %g_type119 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %90, i32 0, i32 0
  %91 = load i64, i64* %g_type119, align 8
  %92 = load i64, i64* %__t108, align 8
  %cmp120 = icmp eq i64 %91, %92
  br i1 %cmp120, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %land.lhs.true.117
  store i32 1, i32* %__r111, align 4
  br label %if.end.124

if.else.122:                                      ; preds = %land.lhs.true.117, %if.else.114
  %93 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst105, align 8
  %94 = load i64, i64* %__t108, align 8
  %call123 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %93, i64 %94) #7
  store i32 %call123, i32* %__r111, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.122, %if.then.121
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.then.113
  %95 = load i32, i32* %__r111, align 4
  store i32 %95, i32* %tmp126
  %96 = load i32, i32* %tmp126
  %tobool127 = icmp ne i32 %96, 0
  br i1 %tobool127, label %if.then.128, label %if.else.129

if.then.128:                                      ; preds = %if.end.125
  store i32 3, i32* %size, align 4
  store i32 0, i32* %border_width, align 4
  br label %if.end.130

if.else.129:                                      ; preds = %if.end.125
  store i32 1, i32* %size, align 4
  store i32 1, i32* %border_width, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.129, %if.then.128
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  %call131 = call %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget* %97)
  %98 = load i32, i32* %size, align 4
  %call132 = call i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings* %call131, i32 %98, i32* %width100, i32* %height102)
  %99 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %context = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %99, i32 0, i32 1
  %100 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %101 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %viewable133 = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %101, i32 0, i32 3
  %102 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable133, align 8
  %103 = load i32, i32* %width100, align 4
  %104 = load i32, i32* %height102, align 4
  %105 = load i32, i32* %border_width, align 4
  %call134 = call %struct._GtkWidget* @gimp_view_new_full(%struct._GimpContext* %100, %struct._GimpViewable* %102, i32 %103, i32 %104, i32 %105, i32 0, i32 0, i32 0)
  store %struct._GtkWidget* %call134, %struct._GtkWidget** %view, align 8
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call135 = call i64 @gtk_image_menu_item_get_type() #6
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call135)
  %108 = bitcast %struct._GTypeInstance* %call136 to %struct._GtkImageMenuItem*
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_image_menu_item_set_image(%struct._GtkImageMenuItem* %108, %struct._GtkWidget* %109)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %110)
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.130, %if.then.93
  br label %if.end.194

if.else.138:                                      ; preds = %if.else.55
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call140 = call i64 @gtk_image_menu_item_get_type() #6
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call140)
  %113 = bitcast %struct._GTypeInstance* %call141 to %struct._GtkImageMenuItem*
  %call142 = call %struct._GtkWidget* @gtk_image_menu_item_get_image(%struct._GtkImageMenuItem* %113)
  store %struct._GtkWidget* %call142, %struct._GtkWidget** %image, align 8
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %115, %struct._GTypeInstance** %__inst144, align 8
  %call147 = call i64 @gimp_view_get_type() #6
  store i64 %call147, i64* %__t146, align 8
  %116 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst144, align 8
  %tobool150 = icmp ne %struct._GTypeInstance* %116, null
  br i1 %tobool150, label %if.else.152, label %if.then.151

if.then.151:                                      ; preds = %if.else.138
  store i32 0, i32* %__r149, align 4
  br label %if.end.163

if.else.152:                                      ; preds = %if.else.138
  %117 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst144, align 8
  %g_class153 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %117, i32 0, i32 0
  %118 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class153, align 8
  %tobool154 = icmp ne %struct._GTypeClass* %118, null
  br i1 %tobool154, label %land.lhs.true.155, label %if.else.160

land.lhs.true.155:                                ; preds = %if.else.152
  %119 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst144, align 8
  %g_class156 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %119, i32 0, i32 0
  %120 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class156, align 8
  %g_type157 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %120, i32 0, i32 0
  %121 = load i64, i64* %g_type157, align 8
  %122 = load i64, i64* %__t146, align 8
  %cmp158 = icmp eq i64 %121, %122
  br i1 %cmp158, label %if.then.159, label %if.else.160

if.then.159:                                      ; preds = %land.lhs.true.155
  store i32 1, i32* %__r149, align 4
  br label %if.end.162

if.else.160:                                      ; preds = %land.lhs.true.155, %if.else.152
  %123 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst144, align 8
  %124 = load i64, i64* %__t146, align 8
  %call161 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %123, i64 %124) #7
  store i32 %call161, i32* %__r149, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.160, %if.then.159
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.then.151
  %125 = load i32, i32* %__r149, align 4
  store i32 %125, i32* %tmp164
  %126 = load i32, i32* %tmp164
  %tobool165 = icmp ne i32 %126, 0
  br i1 %tobool165, label %if.then.189, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.163
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %128 = bitcast %struct._GtkWidget* %127 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %128, %struct._GTypeInstance** %__inst167, align 8
  %call170 = call i64 @gimp_color_area_get_type() #6
  store i64 %call170, i64* %__t169, align 8
  %129 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst167, align 8
  %tobool173 = icmp ne %struct._GTypeInstance* %129, null
  br i1 %tobool173, label %if.else.175, label %if.then.174

if.then.174:                                      ; preds = %lor.lhs.false
  store i32 0, i32* %__r172, align 4
  br label %if.end.186

if.else.175:                                      ; preds = %lor.lhs.false
  %130 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst167, align 8
  %g_class176 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %130, i32 0, i32 0
  %131 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class176, align 8
  %tobool177 = icmp ne %struct._GTypeClass* %131, null
  br i1 %tobool177, label %land.lhs.true.178, label %if.else.183

land.lhs.true.178:                                ; preds = %if.else.175
  %132 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst167, align 8
  %g_class179 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %132, i32 0, i32 0
  %133 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class179, align 8
  %g_type180 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %133, i32 0, i32 0
  %134 = load i64, i64* %g_type180, align 8
  %135 = load i64, i64* %__t169, align 8
  %cmp181 = icmp eq i64 %134, %135
  br i1 %cmp181, label %if.then.182, label %if.else.183

if.then.182:                                      ; preds = %land.lhs.true.178
  store i32 1, i32* %__r172, align 4
  br label %if.end.185

if.else.183:                                      ; preds = %land.lhs.true.178, %if.else.175
  %136 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst167, align 8
  %137 = load i64, i64* %__t169, align 8
  %call184 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %136, i64 %137) #7
  store i32 %call184, i32* %__r172, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.183, %if.then.182
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.then.174
  %138 = load i32, i32* %__r172, align 4
  store i32 %138, i32* %tmp187
  %139 = load i32, i32* %tmp187
  %tobool188 = icmp ne i32 %139, 0
  br i1 %tobool188, label %if.then.189, label %if.end.193

if.then.189:                                      ; preds = %if.end.186, %if.end.163
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  %141 = bitcast %struct._GtkWidget* %140 to %struct._GTypeInstance*
  %call190 = call i64 @gtk_image_menu_item_get_type() #6
  %call191 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 %call190)
  %142 = bitcast %struct._GTypeInstance* %call191 to %struct._GtkImageMenuItem*
  call void @gtk_image_menu_item_set_image(%struct._GtkImageMenuItem* %142, %struct._GtkWidget* null)
  %143 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %144 = bitcast %struct._GimpAction* %143 to %struct._GTypeInstance*
  %call192 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 80)
  %145 = bitcast %struct._GTypeInstance* %call192 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.189, %if.end.186
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.end.137
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.end.54
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %proxy.addr, align 8
  %147 = bitcast %struct._GtkWidget* %146 to %struct._GTypeInstance*
  %call197 = call i64 @gtk_bin_get_type() #6
  %call198 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call197)
  %148 = bitcast %struct._GTypeInstance* %call198 to %struct._GtkBin*
  %call199 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %148)
  store %struct._GtkWidget* %call199, %struct._GtkWidget** %child, align 8
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %150 = bitcast %struct._GtkWidget* %149 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %150, %struct._GTypeInstance** %__inst201, align 8
  %call204 = call i64 @gtk_label_get_type() #6
  store i64 %call204, i64* %__t203, align 8
  %151 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst201, align 8
  %tobool207 = icmp ne %struct._GTypeInstance* %151, null
  br i1 %tobool207, label %if.else.209, label %if.then.208

if.then.208:                                      ; preds = %if.end.195
  store i32 0, i32* %__r206, align 4
  br label %if.end.220

if.else.209:                                      ; preds = %if.end.195
  %152 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst201, align 8
  %g_class210 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %152, i32 0, i32 0
  %153 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class210, align 8
  %tobool211 = icmp ne %struct._GTypeClass* %153, null
  br i1 %tobool211, label %land.lhs.true.212, label %if.else.217

land.lhs.true.212:                                ; preds = %if.else.209
  %154 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst201, align 8
  %g_class213 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %154, i32 0, i32 0
  %155 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class213, align 8
  %g_type214 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %155, i32 0, i32 0
  %156 = load i64, i64* %g_type214, align 8
  %157 = load i64, i64* %__t203, align 8
  %cmp215 = icmp eq i64 %156, %157
  br i1 %cmp215, label %if.then.216, label %if.else.217

if.then.216:                                      ; preds = %land.lhs.true.212
  store i32 1, i32* %__r206, align 4
  br label %if.end.219

if.else.217:                                      ; preds = %land.lhs.true.212, %if.else.209
  %158 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst201, align 8
  %159 = load i64, i64* %__t203, align 8
  %call218 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %158, i64 %159) #7
  store i32 %call218, i32* %__r206, align 4
  br label %if.end.219

if.end.219:                                       ; preds = %if.else.217, %if.then.216
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %if.then.208
  %160 = load i32, i32* %__r206, align 4
  store i32 %160, i32* %tmp221
  %161 = load i32, i32* %tmp221
  %tobool222 = icmp ne i32 %161, 0
  br i1 %tobool222, label %if.then.223, label %if.end.227

if.then.223:                                      ; preds = %if.end.220
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %163 = bitcast %struct._GtkWidget* %162 to %struct._GTypeInstance*
  %call225 = call i64 @gtk_label_get_type() #6
  %call226 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %163, i64 %call225)
  %164 = bitcast %struct._GTypeInstance* %call226 to %struct._GtkLabel*
  store %struct._GtkLabel* %164, %struct._GtkLabel** %label, align 8
  %165 = load %struct._GtkLabel*, %struct._GtkLabel** %label, align 8
  %166 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %ellipsize = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %166, i32 0, i32 4
  %167 = load i32, i32* %ellipsize, align 4
  call void @gtk_label_set_ellipsize(%struct._GtkLabel* %165, i32 %167)
  %168 = load %struct._GtkLabel*, %struct._GtkLabel** %label, align 8
  %169 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %max_width_chars = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %169, i32 0, i32 5
  %170 = load i32, i32* %max_width_chars, align 4
  call void @gtk_label_set_max_width_chars(%struct._GtkLabel* %168, i32 %170)
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.8, %if.then.223, %if.end.220
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind readnone
declare i64 @gtk_image_menu_item_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare %struct._GtkWidget* @gtk_image_menu_item_get_image(%struct._GtkImageMenuItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_area_get_type() #2

declare void @gimp_color_area_set_color(%struct._GimpColorArea*, %struct._GimpRGB*) #1

declare %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB*, i32, i32) #1

declare void @gimp_color_area_set_draw_border(%struct._GimpColorArea*, i32) #1

declare i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings*, i32, i32*, i32*) #1

declare %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_image_menu_item_set_image(%struct._GtkImageMenuItem*, %struct._GtkWidget*) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #2

declare i32 @g_type_is_a(i64, i64) #1

declare void @gimp_view_set_viewable(%struct._GimpView*, %struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_imagefile_get_type() #2

declare %struct._GtkWidget* @gimp_view_new_full(%struct._GimpContext*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare void @gtk_label_set_ellipsize(%struct._GtkLabel*, i32) #1

declare void @gtk_label_set_max_width_chars(%struct._GtkLabel*, i32) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_boxed(%struct._GValue*, i8*) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_action_set_proxy_tooltip(%struct._GimpAction* %action, %struct._GtkWidget* %proxy) #3 {
entry:
  %action.addr = alloca %struct._GimpAction*, align 8
  %proxy.addr = alloca %struct._GtkWidget*, align 8
  %tooltip = alloca i8*, align 8
  store %struct._GimpAction* %action, %struct._GimpAction** %action.addr, align 8
  store %struct._GtkWidget* %proxy, %struct._GtkWidget** %proxy.addr, align 8
  %0 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %1 = bitcast %struct._GimpAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_action_get_type() #6
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
  %call4 = call i32 @gimp_help_id_quark() #6
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
define internal void @gimp_action_tooltip_notify(%struct._GimpAction* %action, %struct._GParamSpec* %pspec, i8* %data) #3 {
entry:
  %action.addr = alloca %struct._GimpAction*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %data.addr = alloca i8*, align 8
  %list = alloca %struct._GSList*, align 8
  store %struct._GimpAction* %action, %struct._GimpAction** %action.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %1 = bitcast %struct._GimpAction* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_action_get_type() #6
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
  %4 = load %struct._GimpAction*, %struct._GimpAction** %action.addr, align 8
  %5 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data3 = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data3, align 8
  %7 = bitcast i8* %6 to %struct._GtkWidget*
  call void @gimp_action_set_proxy_tooltip(%struct._GimpAction* %4, %struct._GtkWidget* %7)
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
