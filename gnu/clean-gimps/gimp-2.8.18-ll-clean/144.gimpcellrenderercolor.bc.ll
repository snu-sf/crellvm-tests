; ModuleID = './libgimpwidgets/gimpcellrenderercolor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCellRendererColorClass = type { %struct._GtkCellRendererClass, void ()*, void ()*, void ()*, void ()* }
%struct._GtkCellRendererClass = type { %struct._GtkObjectClass, void (%struct._GtkCellRenderer*, %struct._GtkWidget*, %struct._GdkRectangle*, i32*, i32*, i32*, i32*)*, void (%struct._GtkCellRenderer*, %struct._GdkDrawable*, %struct._GtkWidget*, %struct._GdkRectangle*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)*, i32 (%struct._GtkCellRenderer*, %union._GdkEvent*, %struct._GtkWidget*, i8*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)*, %struct._GtkCellEditable* (%struct._GtkCellRenderer*, %union._GdkEvent*, %struct._GtkWidget*, i8*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)*, void (%struct._GtkCellRenderer*)*, void (%struct._GtkCellRenderer*, %struct._GtkCellEditable*, i8*)*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkArg = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
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
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GtkCellEditable = type opaque
%struct._GimpCellRendererColor = type { %struct._GtkCellRenderer, %struct._GimpRGB, i32, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GtkSettings = type { %struct._GObject, %struct._GData*, %struct._GtkSettingsPropertyValue*, %struct._GtkRcContext*, %struct._GdkScreen* }
%struct._GtkSettingsPropertyValue = type opaque
%struct._GtkRcContext = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._cairo = type opaque
%struct._cairo_pattern = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_cell_renderer_color_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"GimpCellRendererColor\00", align 1
@gimp_cell_renderer_color_parent_class = internal global i8* null, align 8
@GimpCellRendererColor_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"icon-size\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"gimpcellrenderercolor.c\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_cell_renderer_color_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_cell_renderer_color_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_cell_renderer_color_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_cell_renderer_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 256, void (i8*, i8*)* bitcast (void (i8*)* @gimp_cell_renderer_color_class_intern_init to void (i8*, i8*)*), i32 104, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCellRendererColor*)* @gimp_cell_renderer_color_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_cell_renderer_color_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_cell_renderer_color_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_cell_renderer_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_color_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_cell_renderer_color_parent_class, align 8
  %1 = load i32, i32* @GimpCellRendererColor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCellRendererColor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCellRendererColorClass*
  call void @gimp_cell_renderer_color_class_init(%struct._GimpCellRendererColorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_color_init(%struct._GimpCellRendererColor* %cell) #3 {
entry:
  %cell.addr = alloca %struct._GimpCellRendererColor*, align 8
  store %struct._GimpCellRendererColor* %cell, %struct._GimpCellRendererColor** %cell.addr, align 8
  %0 = load %struct._GimpCellRendererColor*, %struct._GimpCellRendererColor** %cell.addr, align 8
  %color = getelementptr inbounds %struct._GimpCellRendererColor, %struct._GimpCellRendererColor* %0, i32 0, i32 1
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkCellRenderer* @gimp_cell_renderer_color_new() #3 {
entry:
  %call = call i64 @gimp_cell_renderer_color_get_type() #5
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkCellRenderer*
  ret %struct._GtkCellRenderer* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_color_class_init(%struct._GimpCellRendererColorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCellRendererColorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %cell_class = alloca %struct._GtkCellRendererClass*, align 8
  store %struct._GimpCellRendererColorClass* %klass, %struct._GimpCellRendererColorClass** %klass.addr, align 8
  %0 = load %struct._GimpCellRendererColorClass*, %struct._GimpCellRendererColorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCellRendererColorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCellRendererColorClass*, %struct._GimpCellRendererColorClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCellRendererColorClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_cell_renderer_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkCellRendererClass*
  store %struct._GtkCellRendererClass* %5, %struct._GtkCellRendererClass** %cell_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_cell_renderer_color_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_cell_renderer_color_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GtkCellRendererClass*, %struct._GtkCellRendererClass** %cell_class, align 8
  %get_size = getelementptr inbounds %struct._GtkCellRendererClass, %struct._GtkCellRendererClass* %8, i32 0, i32 1
  store void (%struct._GtkCellRenderer*, %struct._GtkWidget*, %struct._GdkRectangle*, i32*, i32*, i32*, i32*)* @gimp_cell_renderer_color_get_size, void (%struct._GtkCellRenderer*, %struct._GtkWidget*, %struct._GdkRectangle*, i32*, i32*, i32*, i32*)** %get_size, align 8
  %9 = load %struct._GtkCellRendererClass*, %struct._GtkCellRendererClass** %cell_class, align 8
  %render = getelementptr inbounds %struct._GtkCellRendererClass, %struct._GtkCellRendererClass* %9, i32 0, i32 2
  store void (%struct._GtkCellRenderer*, %struct._GdkDrawable*, %struct._GtkWidget*, %struct._GdkRectangle*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)* @gimp_cell_renderer_color_render, void (%struct._GtkCellRenderer*, %struct._GdkDrawable*, %struct._GtkWidget*, %struct._GdkRectangle*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)** %render, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_rgb_get_type() #5
  %call4 = call %struct._GParamSpec* @g_param_spec_boxed(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 1, %struct._GParamSpec* %call4)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, i32 1, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 2, %struct._GParamSpec* %call5)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i32 0, i32 2147483647, i32 1, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 3, %struct._GParamSpec* %call6)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_color_get_property(%struct._GObject* %object, i32 %param_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %param_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %cell = alloca %struct._GimpCellRendererColor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %param_id, i32* %param_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cell_renderer_color_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCellRendererColor*
  store %struct._GimpCellRendererColor* %2, %struct._GimpCellRendererColor** %cell, align 8
  %3 = load i32, i32* %param_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpCellRendererColor*, %struct._GimpCellRendererColor** %cell, align 8
  %color = getelementptr inbounds %struct._GimpCellRendererColor, %struct._GimpCellRendererColor* %5, i32 0, i32 1
  %6 = bitcast %struct._GimpRGB* %color to i8*
  call void @g_value_set_boxed(%struct._GValue* %4, i8* %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpCellRendererColor*, %struct._GimpCellRendererColor** %cell, align 8
  %opaque = getelementptr inbounds %struct._GimpCellRendererColor, %struct._GimpCellRendererColor* %8, i32 0, i32 2
  %9 = load i32, i32* %opaque, align 4
  call void @g_value_set_boolean(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpCellRendererColor*, %struct._GimpCellRendererColor** %cell, align 8
  %size = getelementptr inbounds %struct._GimpCellRendererColor, %struct._GimpCellRendererColor* %11, i32 0, i32 3
  %12 = load i32, i32* %size, align 4
  call void @g_value_set_int(%struct._GValue* %10, i32 %12)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %13, %struct._GObject** %_glib__object, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %14, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = load i32, i32* %param_id.addr, align 4
  store i32 %15, i32* %_glib__property_id, align 4
  %16 = load i32, i32* %_glib__property_id, align 4
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %20 = bitcast %struct._GParamSpec* %19 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %22)
  %23 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %24 = bitcast %struct._GObject* %23 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %26)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i32 145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 %16, i8* %18, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_color_set_property(%struct._GObject* %object, i32 %param_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %param_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %cell = alloca %struct._GimpCellRendererColor*, align 8
  %color = alloca %struct._GimpRGB*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %param_id, i32* %param_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cell_renderer_color_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCellRendererColor*
  store %struct._GimpCellRendererColor* %2, %struct._GimpCellRendererColor** %cell, align 8
  %3 = load i32, i32* %param_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_boxed(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpRGB*
  store %struct._GimpRGB* %5, %struct._GimpRGB** %color, align 8
  %6 = load %struct._GimpCellRendererColor*, %struct._GimpCellRendererColor** %cell, align 8
  %color3 = getelementptr inbounds %struct._GimpCellRendererColor, %struct._GimpCellRendererColor* %6, i32 0, i32 1
  %7 = load %struct._GimpRGB*, %struct._GimpRGB** %color, align 8
  %8 = bitcast %struct._GimpRGB* %color3 to i8*
  %9 = bitcast %struct._GimpRGB* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call5 = call i32 @g_value_get_boolean(%struct._GValue* %10)
  %11 = load %struct._GimpCellRendererColor*, %struct._GimpCellRendererColor** %cell, align 8
  %opaque = getelementptr inbounds %struct._GimpCellRendererColor, %struct._GimpCellRendererColor* %11, i32 0, i32 2
  store i32 %call5, i32* %opaque, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call7 = call i32 @g_value_get_int(%struct._GValue* %12)
  %13 = load %struct._GimpCellRendererColor*, %struct._GimpCellRendererColor** %cell, align 8
  %size = getelementptr inbounds %struct._GimpCellRendererColor, %struct._GimpCellRendererColor* %13, i32 0, i32 3
  store i32 %call7, i32* %size, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %14, %struct._GObject** %_glib__object, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %15, %struct._GParamSpec** %_glib__pspec, align 8
  %16 = load i32, i32* %param_id.addr, align 4
  store i32 %16, i32* %_glib__property_id, align 4
  %17 = load i32, i32* %_glib__property_id, align 4
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %18, i32 0, i32 1
  %19 = load i8*, i8** %name, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %21 = bitcast %struct._GParamSpec* %20 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type, align 8
  %call8 = call i8* @g_type_name(i64 %23)
  %24 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %25 = bitcast %struct._GObject* %24 to %struct._GTypeInstance*
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type10 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type10, align 8
  %call11 = call i8* @g_type_name(i64 %27)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i32 172, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 %17, i8* %19, i8* %call8, i8* %call11)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.6, %sw.bb.4, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_color_get_size(%struct._GtkCellRenderer* %cell, %struct._GtkWidget* %widget, %struct._GdkRectangle* %cell_area, i32* %x_offset, i32* %y_offset, i32* %width, i32* %height) #3 {
entry:
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %cell_area.addr = alloca %struct._GdkRectangle*, align 8
  %x_offset.addr = alloca i32*, align 8
  %y_offset.addr = alloca i32*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %color = alloca %struct._GimpCellRendererColor*, align 8
  %calc_width = alloca i32, align 4
  %calc_height = alloca i32, align 4
  %xalign = alloca float, align 4
  %yalign = alloca float, align 4
  %xpad = alloca i32, align 4
  %ypad = alloca i32, align 4
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %cell_area, %struct._GdkRectangle** %cell_area.addr, align 8
  store i32* %x_offset, i32** %x_offset.addr, align 8
  store i32* %y_offset, i32** %y_offset.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %0 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %1 = bitcast %struct._GtkCellRenderer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cell_renderer_color_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCellRendererColor*
  store %struct._GimpCellRendererColor* %2, %struct._GimpCellRendererColor** %color, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget* %3)
  %4 = load %struct._GimpCellRendererColor*, %struct._GimpCellRendererColor** %color, align 8
  %size = getelementptr inbounds %struct._GimpCellRendererColor, %struct._GimpCellRendererColor* %4, i32 0, i32 3
  %5 = load i32, i32* %size, align 4
  %call3 = call i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings* %call2, i32 %5, i32* %calc_width, i32* %calc_height)
  %6 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  call void @gtk_cell_renderer_get_alignment(%struct._GtkCellRenderer* %6, float* %xalign, float* %yalign)
  %7 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  call void @gtk_cell_renderer_get_padding(%struct._GtkCellRenderer* %7, i32* %xpad, i32* %ypad)
  %8 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %tobool = icmp ne %struct._GdkRectangle* %8, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %9 = load i32, i32* %calc_width, align 4
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %10 = load i32, i32* %calc_height, align 4
  %cmp5 = icmp sgt i32 %10, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.4
  %11 = load i32*, i32** %x_offset.addr, align 8
  %tobool6 = icmp ne i32* %11, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call8 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %12)
  %cmp9 = icmp eq i32 %call8, 2
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  %13 = load float, float* %xalign, align 4
  %conv = fpext float %13 to double
  %sub = fsub double 1.000000e+00, %conv
  br label %cond.end

cond.false:                                       ; preds = %if.then.7
  %14 = load float, float* %xalign, align 4
  %conv10 = fpext float %14 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %conv10, %cond.false ]
  %15 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %width11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %15, i32 0, i32 2
  %16 = load i32, i32* %width11, align 4
  %17 = load i32, i32* %calc_width, align 4
  %sub12 = sub nsw i32 %16, %17
  %conv13 = sitofp i32 %sub12 to double
  %mul = fmul double %cond, %conv13
  %conv14 = fptosi double %mul to i32
  %18 = load i32*, i32** %x_offset.addr, align 8
  store i32 %conv14, i32* %18, align 4
  %19 = load i32*, i32** %x_offset.addr, align 8
  %20 = load i32, i32* %19, align 4
  %cmp15 = icmp sgt i32 %20, 0
  br i1 %cmp15, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.end
  %21 = load i32*, i32** %x_offset.addr, align 8
  %22 = load i32, i32* %21, align 4
  br label %cond.end.19

cond.false.18:                                    ; preds = %cond.end
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.true.17
  %cond20 = phi i32 [ %22, %cond.true.17 ], [ 0, %cond.false.18 ]
  %23 = load i32, i32* %xpad, align 4
  %add = add nsw i32 %cond20, %23
  %24 = load i32*, i32** %x_offset.addr, align 8
  store i32 %add, i32* %24, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.19, %if.then
  %25 = load i32*, i32** %y_offset.addr, align 8
  %tobool21 = icmp ne i32* %25, null
  br i1 %tobool21, label %if.then.22, label %if.end.35

if.then.22:                                       ; preds = %if.end
  %26 = load float, float* %yalign, align 4
  %27 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %height23 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %27, i32 0, i32 3
  %28 = load i32, i32* %height23, align 4
  %29 = load i32, i32* %calc_height, align 4
  %sub24 = sub nsw i32 %28, %29
  %conv25 = sitofp i32 %sub24 to float
  %mul26 = fmul float %26, %conv25
  %conv27 = fptosi float %mul26 to i32
  %30 = load i32*, i32** %y_offset.addr, align 8
  store i32 %conv27, i32* %30, align 4
  %31 = load i32*, i32** %y_offset.addr, align 8
  %32 = load i32, i32* %31, align 4
  %cmp28 = icmp sgt i32 %32, 0
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %if.then.22
  %33 = load i32*, i32** %y_offset.addr, align 8
  %34 = load i32, i32* %33, align 4
  br label %cond.end.32

cond.false.31:                                    ; preds = %if.then.22
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.30
  %cond33 = phi i32 [ %34, %cond.true.30 ], [ 0, %cond.false.31 ]
  %35 = load i32, i32* %ypad, align 4
  %add34 = add nsw i32 %cond33, %35
  %36 = load i32*, i32** %y_offset.addr, align 8
  store i32 %add34, i32* %36, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %cond.end.32, %if.end
  br label %if.end.42

if.else:                                          ; preds = %land.lhs.true.4, %land.lhs.true, %entry
  %37 = load i32*, i32** %x_offset.addr, align 8
  %tobool36 = icmp ne i32* %37, null
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.else
  %38 = load i32*, i32** %x_offset.addr, align 8
  store i32 0, i32* %38, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.else
  %39 = load i32*, i32** %y_offset.addr, align 8
  %tobool39 = icmp ne i32* %39, null
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.38
  %40 = load i32*, i32** %y_offset.addr, align 8
  store i32 0, i32* %40, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end.38
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.35
  %41 = load i32*, i32** %width.addr, align 8
  %tobool43 = icmp ne i32* %41, null
  br i1 %tobool43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end.42
  %42 = load i32, i32* %calc_width, align 4
  %43 = load i32, i32* %xpad, align 4
  %mul45 = mul nsw i32 2, %43
  %add46 = add nsw i32 %42, %mul45
  %44 = load i32*, i32** %width.addr, align 8
  store i32 %add46, i32* %44, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.end.42
  %45 = load i32*, i32** %height.addr, align 8
  %tobool48 = icmp ne i32* %45, null
  br i1 %tobool48, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %if.end.47
  %46 = load i32, i32* %calc_height, align 4
  %47 = load i32, i32* %ypad, align 4
  %mul50 = mul nsw i32 2, %47
  %add51 = add nsw i32 %46, %mul50
  %48 = load i32*, i32** %height.addr, align 8
  store i32 %add51, i32* %48, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %if.end.47
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_color_render(%struct._GtkCellRenderer* %cell, %struct._GdkDrawable* %window, %struct._GtkWidget* %widget, %struct._GdkRectangle* %background_area, %struct._GdkRectangle* %cell_area, %struct._GdkRectangle* %expose_area, i32 %flags) #3 {
entry:
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %window.addr = alloca %struct._GdkDrawable*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %background_area.addr = alloca %struct._GdkRectangle*, align 8
  %cell_area.addr = alloca %struct._GdkRectangle*, align 8
  %expose_area.addr = alloca %struct._GdkRectangle*, align 8
  %flags.addr = alloca i32, align 4
  %color = alloca %struct._GimpCellRendererColor*, align 8
  %rect = alloca %struct._GdkRectangle, align 4
  %xpad = alloca i32, align 4
  %ypad = alloca i32, align 4
  %cr = alloca %struct._cairo*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %state = alloca i32, align 4
  %pattern = alloca %struct._cairo_pattern*, align 8
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  store %struct._GdkDrawable* %window, %struct._GdkDrawable** %window.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %background_area, %struct._GdkRectangle** %background_area.addr, align 8
  store %struct._GdkRectangle* %cell_area, %struct._GdkRectangle** %cell_area.addr, align 8
  store %struct._GdkRectangle* %expose_area, %struct._GdkRectangle** %expose_area.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %1 = bitcast %struct._GtkCellRenderer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cell_renderer_color_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCellRendererColor*
  store %struct._GimpCellRendererColor* %2, %struct._GimpCellRendererColor** %color, align 8
  %3 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  call void @gimp_cell_renderer_color_get_size(%struct._GtkCellRenderer* %3, %struct._GtkWidget* %4, %struct._GdkRectangle* %5, i32* %x, i32* %y, i32* %width, i32* %height)
  %6 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  call void @gtk_cell_renderer_get_padding(%struct._GtkCellRenderer* %6, i32* %xpad, i32* %ypad)
  %7 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %x2 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %7, i32 0, i32 0
  %8 = load i32, i32* %x2, align 4
  %9 = load i32, i32* %xpad, align 4
  %add = add nsw i32 %8, %9
  %x3 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %10 = load i32, i32* %x3, align 4
  %add4 = add nsw i32 %10, %add
  store i32 %add4, i32* %x3, align 4
  %11 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %y5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %11, i32 0, i32 1
  %12 = load i32, i32* %y5, align 4
  %13 = load i32, i32* %ypad, align 4
  %add6 = add nsw i32 %12, %13
  %y7 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %14 = load i32, i32* %y7, align 4
  %add8 = add nsw i32 %14, %add6
  store i32 %add8, i32* %y7, align 4
  %15 = load i32, i32* %xpad, align 4
  %mul = mul nsw i32 2, %15
  %width9 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %16 = load i32, i32* %width9, align 4
  %sub = sub nsw i32 %16, %mul
  store i32 %sub, i32* %width9, align 4
  %17 = load i32, i32* %ypad, align 4
  %mul10 = mul nsw i32 2, %17
  %height11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %18 = load i32, i32* %height11, align 4
  %sub12 = sub nsw i32 %18, %mul10
  store i32 %sub12, i32* %height11, align 4
  %width13 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %19 = load i32, i32* %width13, align 4
  %cmp = icmp sgt i32 %19, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.82

land.lhs.true:                                    ; preds = %entry
  %height14 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %20 = load i32, i32* %height14, align 4
  %cmp15 = icmp sgt i32 %20, 2
  br i1 %cmp15, label %if.then, label %if.end.82

if.then:                                          ; preds = %land.lhs.true
  %21 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window.addr, align 8
  %call16 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %21)
  store %struct._cairo* %call16, %struct._cairo** %cr, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call17 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %22)
  store %struct._GtkStyle* %call17, %struct._GtkStyle** %style, align 8
  %23 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x18 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %24 = load i32, i32* %x18, align 4
  %add19 = add nsw i32 %24, 1
  %conv = sitofp i32 %add19 to double
  %y20 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %25 = load i32, i32* %y20, align 4
  %add21 = add nsw i32 %25, 1
  %conv22 = sitofp i32 %add21 to double
  %width23 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %26 = load i32, i32* %width23, align 4
  %sub24 = sub nsw i32 %26, 2
  %conv25 = sitofp i32 %sub24 to double
  %height26 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %27 = load i32, i32* %height26, align 4
  %sub27 = sub nsw i32 %27, 2
  %conv28 = sitofp i32 %sub27 to double
  call void @cairo_rectangle(%struct._cairo* %23, double %conv, double %conv22, double %conv25, double %conv28)
  %28 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %29 = load %struct._GimpCellRendererColor*, %struct._GimpCellRendererColor** %color, align 8
  %color29 = getelementptr inbounds %struct._GimpCellRendererColor, %struct._GimpCellRendererColor* %29, i32 0, i32 1
  call void @gimp_cairo_set_source_rgb(%struct._cairo* %28, %struct._GimpRGB* %color29)
  %30 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill(%struct._cairo* %30)
  %31 = load %struct._GimpCellRendererColor*, %struct._GimpCellRendererColor** %color, align 8
  %opaque = getelementptr inbounds %struct._GimpCellRendererColor, %struct._GimpCellRendererColor* %31, i32 0, i32 2
  %32 = load i32, i32* %opaque, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.end, label %land.lhs.true.30

land.lhs.true.30:                                 ; preds = %if.then
  %33 = load %struct._GimpCellRendererColor*, %struct._GimpCellRendererColor** %color, align 8
  %color31 = getelementptr inbounds %struct._GimpCellRendererColor, %struct._GimpCellRendererColor* %33, i32 0, i32 1
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color31, i32 0, i32 3
  %34 = load double, double* %a, align 8
  %cmp32 = fcmp olt double %34, 1.000000e+00
  br i1 %cmp32, label %if.then.34, label %if.end

if.then.34:                                       ; preds = %land.lhs.true.30
  %35 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x35 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %36 = load i32, i32* %x35, align 4
  %add36 = add nsw i32 %36, 1
  %conv37 = sitofp i32 %add36 to double
  %y38 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %37 = load i32, i32* %y38, align 4
  %height39 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %38 = load i32, i32* %height39, align 4
  %add40 = add nsw i32 %37, %38
  %sub41 = sub nsw i32 %add40, 1
  %conv42 = sitofp i32 %sub41 to double
  call void @cairo_move_to(%struct._cairo* %35, double %conv37, double %conv42)
  %39 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x43 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %40 = load i32, i32* %x43, align 4
  %width44 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %41 = load i32, i32* %width44, align 4
  %add45 = add nsw i32 %40, %41
  %sub46 = sub nsw i32 %add45, 1
  %conv47 = sitofp i32 %sub46 to double
  %y48 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %42 = load i32, i32* %y48, align 4
  %height49 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %43 = load i32, i32* %height49, align 4
  %add50 = add nsw i32 %42, %43
  %sub51 = sub nsw i32 %add50, 1
  %conv52 = sitofp i32 %sub51 to double
  call void @cairo_line_to(%struct._cairo* %39, double %conv47, double %conv52)
  %44 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x53 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %45 = load i32, i32* %x53, align 4
  %width54 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %46 = load i32, i32* %width54, align 4
  %add55 = add nsw i32 %45, %46
  %sub56 = sub nsw i32 %add55, 1
  %conv57 = sitofp i32 %sub56 to double
  %y58 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %47 = load i32, i32* %y58, align 4
  %add59 = add nsw i32 %47, 1
  %conv60 = sitofp i32 %add59 to double
  call void @cairo_line_to(%struct._cairo* %44, double %conv57, double %conv60)
  %48 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_close_path(%struct._cairo* %48)
  %49 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %call61 = call %struct._cairo_pattern* @gimp_cairo_checkerboard_create(%struct._cairo* %49, i32 4, %struct._GimpRGB* null, %struct._GimpRGB* null)
  store %struct._cairo_pattern* %call61, %struct._cairo_pattern** %pattern, align 8
  %50 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %51 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern, align 8
  call void @cairo_set_source(%struct._cairo* %50, %struct._cairo_pattern* %51)
  %52 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern, align 8
  call void @cairo_pattern_destroy(%struct._cairo_pattern* %52)
  %53 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill_preserve(%struct._cairo* %53)
  %54 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %55 = load %struct._GimpCellRendererColor*, %struct._GimpCellRendererColor** %color, align 8
  %color62 = getelementptr inbounds %struct._GimpCellRendererColor, %struct._GimpCellRendererColor* %55, i32 0, i32 1
  call void @gimp_cairo_set_source_rgba(%struct._cairo* %54, %struct._GimpRGB* %color62)
  %56 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill(%struct._cairo* %56)
  br label %if.end

if.end:                                           ; preds = %if.then.34, %land.lhs.true.30, %if.then
  %57 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x63 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %58 = load i32, i32* %x63, align 4
  %conv64 = sitofp i32 %58 to double
  %add65 = fadd double %conv64, 5.000000e-01
  %y66 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %59 = load i32, i32* %y66, align 4
  %conv67 = sitofp i32 %59 to double
  %add68 = fadd double %conv67, 5.000000e-01
  %width69 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %60 = load i32, i32* %width69, align 4
  %sub70 = sub nsw i32 %60, 1
  %conv71 = sitofp i32 %sub70 to double
  %height72 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %61 = load i32, i32* %height72, align 4
  %sub73 = sub nsw i32 %61, 1
  %conv74 = sitofp i32 %sub73 to double
  call void @cairo_rectangle(%struct._cairo* %57, double %add65, double %add68, double %conv71, double %conv74)
  %62 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %call75 = call i32 @gtk_cell_renderer_get_sensitive(%struct._GtkCellRenderer* %62)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %lor.lhs.false, label %if.then.79

lor.lhs.false:                                    ; preds = %if.end
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call77 = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %63)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.else, label %if.then.79

if.then.79:                                       ; preds = %lor.lhs.false, %if.end
  store i32 4, i32* %state, align 4
  br label %if.end.81

if.else:                                          ; preds = %lor.lhs.false
  %64 = load i32, i32* %flags.addr, align 4
  %and = and i32 %64, 1
  %tobool80 = icmp ne i32 %and, 0
  %cond = select i1 %tobool80, i32 3, i32 0
  store i32 %cond, i32* %state, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.else, %if.then.79
  %65 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %65, double 1.000000e+00)
  %66 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %67 = load i32, i32* %state, align 4
  %idxprom = zext i32 %67 to i64
  %68 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %68, i32 0, i32 1
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg, i32 0, i64 %idxprom
  call void @gdk_cairo_set_source_color(%struct._cairo* %66, %struct._GdkColor* %arrayidx)
  %69 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %69)
  %70 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %70)
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %land.lhs.true, %entry
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boxed(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_rgb_get_type() #2

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_value_set_boxed(%struct._GValue*, i8*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

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
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare i8* @g_value_get_boxed(%struct._GValue*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings*, i32, i32*, i32*) #1

declare %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget*) #1

declare void @gtk_cell_renderer_get_alignment(%struct._GtkCellRenderer*, float*, float*) #1

declare void @gtk_cell_renderer_get_padding(%struct._GtkCellRenderer*, i32*, i32*) #1

declare i32 @gtk_widget_get_direction(%struct._GtkWidget*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @gimp_cairo_set_source_rgb(%struct._cairo*, %struct._GimpRGB*) #1

declare void @cairo_fill(%struct._cairo*) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @cairo_close_path(%struct._cairo*) #1

declare %struct._cairo_pattern* @gimp_cairo_checkerboard_create(%struct._cairo*, i32, %struct._GimpRGB*, %struct._GimpRGB*) #1

declare void @cairo_set_source(%struct._cairo*, %struct._cairo_pattern*) #1

declare void @cairo_pattern_destroy(%struct._cairo_pattern*) #1

declare void @cairo_fill_preserve(%struct._cairo*) #1

declare void @gimp_cairo_set_source_rgba(%struct._cairo*, %struct._GimpRGB*) #1

declare i32 @gtk_cell_renderer_get_sensitive(%struct._GtkCellRenderer*) #1

declare i32 @gtk_widget_is_sensitive(%struct._GtkWidget*) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_stroke_preserve(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
