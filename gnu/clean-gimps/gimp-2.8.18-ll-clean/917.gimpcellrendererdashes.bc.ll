; ModuleID = './app/widgets/gimpcellrendererdashes.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCellRendererDashesClass = type { %struct._GtkCellRendererClass }
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
%struct._GimpCellRendererDashes = type { %struct._GtkCellRenderer, i32* }
%struct._cairo = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_cell_renderer_dashes_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"GimpCellRendererDashes\00", align 1
@gimp_cell_renderer_dashes_parent_class = internal global i8* null, align 8
@GimpCellRendererDashes_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"gimpcellrendererdashes.c\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_cell_renderer_dashes_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_cell_renderer_dashes_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_cell_renderer_dashes_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 224, void (i8*, i8*)* bitcast (void (i8*)* @gimp_cell_renderer_dashes_class_intern_init to void (i8*, i8*)*), i32 64, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCellRendererDashes*)* @gimp_cell_renderer_dashes_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_cell_renderer_dashes_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_cell_renderer_dashes_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_cell_renderer_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_dashes_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_cell_renderer_dashes_parent_class, align 8
  %1 = load i32, i32* @GimpCellRendererDashes_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCellRendererDashes_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCellRendererDashesClass*
  call void @gimp_cell_renderer_dashes_class_init(%struct._GimpCellRendererDashesClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_dashes_init(%struct._GimpCellRendererDashes* %dashes) #3 {
entry:
  %dashes.addr = alloca %struct._GimpCellRendererDashes*, align 8
  store %struct._GimpCellRendererDashes* %dashes, %struct._GimpCellRendererDashes** %dashes.addr, align 8
  %call = call noalias i8* @g_malloc0_n(i64 24, i64 4)
  %0 = bitcast i8* %call to i32*
  %1 = load %struct._GimpCellRendererDashes*, %struct._GimpCellRendererDashes** %dashes.addr, align 8
  %segments = getelementptr inbounds %struct._GimpCellRendererDashes, %struct._GimpCellRendererDashes* %1, i32 0, i32 1
  store i32* %0, i32** %segments, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkCellRenderer* @gimp_cell_renderer_dashes_new() #3 {
entry:
  %call = call i64 @gimp_cell_renderer_dashes_get_type() #5
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkCellRenderer*
  ret %struct._GtkCellRenderer* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_dashes_class_init(%struct._GimpCellRendererDashesClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCellRendererDashesClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %cell_class = alloca %struct._GtkCellRendererClass*, align 8
  store %struct._GimpCellRendererDashesClass* %klass, %struct._GimpCellRendererDashesClass** %klass.addr, align 8
  %0 = load %struct._GimpCellRendererDashesClass*, %struct._GimpCellRendererDashesClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCellRendererDashesClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCellRendererDashesClass*, %struct._GimpCellRendererDashesClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCellRendererDashesClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_cell_renderer_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkCellRendererClass*
  store %struct._GtkCellRendererClass* %5, %struct._GtkCellRendererClass** %cell_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_cell_renderer_dashes_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_cell_renderer_dashes_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_cell_renderer_dashes_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %9 = load %struct._GtkCellRendererClass*, %struct._GtkCellRendererClass** %cell_class, align 8
  %get_size = getelementptr inbounds %struct._GtkCellRendererClass, %struct._GtkCellRendererClass* %9, i32 0, i32 1
  store void (%struct._GtkCellRenderer*, %struct._GtkWidget*, %struct._GdkRectangle*, i32*, i32*, i32*, i32*)* @gimp_cell_renderer_dashes_get_size, void (%struct._GtkCellRenderer*, %struct._GtkWidget*, %struct._GdkRectangle*, i32*, i32*, i32*, i32*)** %get_size, align 8
  %10 = load %struct._GtkCellRendererClass*, %struct._GtkCellRendererClass** %cell_class, align 8
  %render = getelementptr inbounds %struct._GtkCellRendererClass, %struct._GtkCellRendererClass* %10, i32 0, i32 2
  store void (%struct._GtkCellRenderer*, %struct._GdkDrawable*, %struct._GtkWidget*, %struct._GdkRectangle*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)* @gimp_cell_renderer_dashes_render, void (%struct._GtkCellRenderer*, %struct._GdkDrawable*, %struct._GtkWidget*, %struct._GdkRectangle*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)** %render, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_dash_pattern_get_type() #5
  %call4 = call %struct._GParamSpec* @g_param_spec_boxed(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 226)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 1, %struct._GParamSpec* %call4)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_dashes_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %dashes = alloca %struct._GimpCellRendererDashes*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cell_renderer_dashes_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCellRendererDashes*
  store %struct._GimpCellRendererDashes* %2, %struct._GimpCellRendererDashes** %dashes, align 8
  %3 = load %struct._GimpCellRendererDashes*, %struct._GimpCellRendererDashes** %dashes, align 8
  %segments = getelementptr inbounds %struct._GimpCellRendererDashes, %struct._GimpCellRendererDashes* %3, i32 0, i32 1
  %4 = load i32*, i32** %segments, align 8
  %5 = bitcast i32* %4 to i8*
  call void @g_free(i8* %5)
  %6 = load i8*, i8** @gimp_cell_renderer_dashes_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 6
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %9(%struct._GObject* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_dashes_get_property(%struct._GObject* %object, i32 %param_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %param_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %param_id, i32* %param_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %0, %struct._GObject** %_glib__object, align 8
  %1 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %1, %struct._GParamSpec** %_glib__pspec, align 8
  %2 = load i32, i32* %param_id.addr, align 4
  store i32 %2, i32* %_glib__property_id, align 4
  %3 = load i32, i32* %_glib__property_id, align 4
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %4, i32 0, i32 1
  %5 = load i8*, i8** %name, align 8
  %6 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %7 = bitcast %struct._GParamSpec* %6 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %call = call i8* @g_type_name(i64 %9)
  %10 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %11 = bitcast %struct._GObject* %10 to %struct._GTypeInstance*
  %g_class1 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class1, align 8
  %g_type2 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %12, i32 0, i32 0
  %13 = load i64, i64* %g_type2, align 8
  %call3 = call i8* @g_type_name(i64 %13)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i32 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %3, i8* %5, i8* %call, i8* %call3)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_dashes_set_property(%struct._GObject* %object, i32 %param_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %param_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %dashes = alloca %struct._GimpCellRendererDashes*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %param_id, i32* %param_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cell_renderer_dashes_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCellRendererDashes*
  store %struct._GimpCellRendererDashes* %2, %struct._GimpCellRendererDashes** %dashes, align 8
  %3 = load i32, i32* %param_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_boxed(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GArray*
  %6 = load %struct._GimpCellRendererDashes*, %struct._GimpCellRendererDashes** %dashes, align 8
  %segments = getelementptr inbounds %struct._GimpCellRendererDashes, %struct._GimpCellRendererDashes* %6, i32 0, i32 1
  %7 = load i32*, i32** %segments, align 8
  call void @gimp_dash_pattern_fill_segments(%struct._GArray* %5, i32* %7, i32 24)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %8, %struct._GObject** %_glib__object, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %9, %struct._GParamSpec** %_glib__pspec, align 8
  %10 = load i32, i32* %param_id.addr, align 4
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
  %call3 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i32 137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %11, i8* %13, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_dashes_get_size(%struct._GtkCellRenderer* %cell, %struct._GtkWidget* %widget, %struct._GdkRectangle* %cell_area, i32* %x_offset, i32* %y_offset, i32* %width, i32* %height) #3 {
entry:
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %cell_area.addr = alloca %struct._GdkRectangle*, align 8
  %x_offset.addr = alloca i32*, align 8
  %y_offset.addr = alloca i32*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %xalign = alloca float, align 4
  %yalign = alloca float, align 4
  %xpad = alloca i32, align 4
  %ypad = alloca i32, align 4
  %align = alloca double, align 8
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %cell_area, %struct._GdkRectangle** %cell_area.addr, align 8
  store i32* %x_offset, i32** %x_offset.addr, align 8
  store i32* %y_offset, i32** %y_offset.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %0 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  call void @gtk_cell_renderer_get_alignment(%struct._GtkCellRenderer* %0, float* %xalign, float* %yalign)
  %1 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  call void @gtk_cell_renderer_get_padding(%struct._GtkCellRenderer* %1, i32* %xpad, i32* %ypad)
  %2 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %tobool = icmp ne %struct._GdkRectangle* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %x_offset.addr, align 8
  %tobool1 = icmp ne i32* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %4)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  %5 = load float, float* %xalign, align 4
  %conv = fpext float %5 to double
  %sub = fsub double 1.000000e+00, %conv
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  %6 = load float, float* %xalign, align 4
  %conv3 = fpext float %6 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %conv3, %cond.false ]
  store double %cond, double* %align, align 8
  %7 = load double, double* %align, align 8
  %8 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %width4 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %8, i32 0, i32 2
  %9 = load i32, i32* %width4, align 4
  %sub5 = sub nsw i32 %9, 96
  %conv6 = sitofp i32 %sub5 to double
  %mul = fmul double %7, %conv6
  %conv7 = fptosi double %mul to i32
  %10 = load i32*, i32** %x_offset.addr, align 8
  store i32 %conv7, i32* %10, align 4
  %11 = load i32*, i32** %x_offset.addr, align 8
  %12 = load i32, i32* %11, align 4
  %cmp8 = icmp sgt i32 %12, 0
  br i1 %cmp8, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.end
  %13 = load i32*, i32** %x_offset.addr, align 8
  %14 = load i32, i32* %13, align 4
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.10
  %cond13 = phi i32 [ %14, %cond.true.10 ], [ 0, %cond.false.11 ]
  %15 = load i32, i32* %xpad, align 4
  %add = add nsw i32 %cond13, %15
  %16 = load i32*, i32** %x_offset.addr, align 8
  store i32 %add, i32* %16, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.12, %if.then
  %17 = load i32*, i32** %y_offset.addr, align 8
  %tobool14 = icmp ne i32* %17, null
  br i1 %tobool14, label %if.then.15, label %if.end.28

if.then.15:                                       ; preds = %if.end
  %18 = load float, float* %yalign, align 4
  %19 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %height16 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %19, i32 0, i32 3
  %20 = load i32, i32* %height16, align 4
  %sub17 = sub nsw i32 %20, 4
  %conv18 = sitofp i32 %sub17 to float
  %mul19 = fmul float %18, %conv18
  %conv20 = fptosi float %mul19 to i32
  %21 = load i32*, i32** %y_offset.addr, align 8
  store i32 %conv20, i32* %21, align 4
  %22 = load i32*, i32** %y_offset.addr, align 8
  %23 = load i32, i32* %22, align 4
  %cmp21 = icmp sgt i32 %23, 0
  br i1 %cmp21, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %if.then.15
  %24 = load i32*, i32** %y_offset.addr, align 8
  %25 = load i32, i32* %24, align 4
  br label %cond.end.25

cond.false.24:                                    ; preds = %if.then.15
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.23
  %cond26 = phi i32 [ %25, %cond.true.23 ], [ 0, %cond.false.24 ]
  %26 = load i32, i32* %ypad, align 4
  %add27 = add nsw i32 %cond26, %26
  %27 = load i32*, i32** %y_offset.addr, align 8
  store i32 %add27, i32* %27, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %cond.end.25, %if.end
  br label %if.end.35

if.else:                                          ; preds = %entry
  %28 = load i32*, i32** %x_offset.addr, align 8
  %tobool29 = icmp ne i32* %28, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.else
  %29 = load i32*, i32** %x_offset.addr, align 8
  store i32 0, i32* %29, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.else
  %30 = load i32*, i32** %y_offset.addr, align 8
  %tobool32 = icmp ne i32* %30, null
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  %31 = load i32*, i32** %y_offset.addr, align 8
  store i32 0, i32* %31, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.28
  %32 = load i32, i32* %xpad, align 4
  %mul36 = mul nsw i32 2, %32
  %add37 = add nsw i32 96, %mul36
  %33 = load i32*, i32** %width.addr, align 8
  store i32 %add37, i32* %33, align 4
  %34 = load i32, i32* %ypad, align 4
  %mul38 = mul nsw i32 2, %34
  %add39 = add nsw i32 4, %mul38
  %35 = load i32*, i32** %height.addr, align 8
  store i32 %add39, i32* %35, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_dashes_render(%struct._GtkCellRenderer* %cell, %struct._GdkDrawable* %window, %struct._GtkWidget* %widget, %struct._GdkRectangle* %background_area, %struct._GdkRectangle* %cell_area, %struct._GdkRectangle* %expose_area, i32 %flags) #3 {
entry:
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %window.addr = alloca %struct._GdkDrawable*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %background_area.addr = alloca %struct._GdkRectangle*, align 8
  %cell_area.addr = alloca %struct._GdkRectangle*, align 8
  %expose_area.addr = alloca %struct._GdkRectangle*, align 8
  %flags.addr = alloca i32, align 4
  %dashes = alloca %struct._GimpCellRendererDashes*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %state = alloca i32, align 4
  %xpad = alloca i32, align 4
  %ypad = alloca i32, align 4
  %cr = alloca %struct._cairo*, align 8
  %width = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %index = alloca i32, align 4
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  store %struct._GdkDrawable* %window, %struct._GdkDrawable** %window.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %background_area, %struct._GdkRectangle** %background_area.addr, align 8
  store %struct._GdkRectangle* %cell_area, %struct._GdkRectangle** %cell_area.addr, align 8
  store %struct._GdkRectangle* %expose_area, %struct._GdkRectangle** %expose_area.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %1 = bitcast %struct._GtkCellRenderer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cell_renderer_dashes_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCellRendererDashes*
  store %struct._GimpCellRendererDashes* %2, %struct._GimpCellRendererDashes** %dashes, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %3)
  store %struct._GtkStyle* %call2, %struct._GtkStyle** %style, align 8
  %4 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  call void @gtk_cell_renderer_get_padding(%struct._GtkCellRenderer* %4, i32* %xpad, i32* %ypad)
  %5 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %call3 = call i32 @gtk_cell_renderer_get_sensitive(%struct._GtkCellRenderer* %5)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 4, i32* %state, align 4
  br label %if.end.23

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %flags.addr, align 4
  %and = and i32 %6, 1
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %if.then.4, label %if.else.9

if.then.4:                                        ; preds = %if.else
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call5 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %7)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.then.4
  store i32 3, i32* %state, align 4
  br label %if.end

if.else.8:                                        ; preds = %if.then.4
  store i32 1, i32* %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  br label %if.end.22

if.else.9:                                        ; preds = %if.else
  %8 = load i32, i32* %flags.addr, align 4
  %and10 = and i32 %8, 2
  %cmp11 = icmp eq i32 %and10, 2
  br i1 %cmp11, label %land.lhs.true, label %if.else.15

land.lhs.true:                                    ; preds = %if.else.9
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call12 = call i32 @gtk_widget_get_state(%struct._GtkWidget* %9)
  %cmp13 = icmp eq i32 %call12, 2
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %land.lhs.true
  store i32 2, i32* %state, align 4
  br label %if.end.21

if.else.15:                                       ; preds = %land.lhs.true, %if.else.9
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call16 = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %10)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.else.15
  store i32 0, i32* %state, align 4
  br label %if.end.20

if.else.19:                                       ; preds = %if.else.15
  store i32 4, i32* %state, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.18
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.14
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then
  %11 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %y24 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %11, i32 0, i32 1
  %12 = load i32, i32* %y24, align 4
  %13 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %13, i32 0, i32 3
  %14 = load i32, i32* %height, align 4
  %sub = sub nsw i32 %14, 4
  %div = sdiv i32 %sub, 2
  %add = add nsw i32 %12, %div
  store i32 %add, i32* %y, align 4
  %15 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %width25 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %15, i32 0, i32 2
  %16 = load i32, i32* %width25, align 4
  %17 = load i32, i32* %xpad, align 4
  %mul = mul nsw i32 2, %17
  %sub26 = sub nsw i32 %16, %mul
  store i32 %sub26, i32* %width, align 4
  %18 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window.addr, align 8
  %call27 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %18)
  store %struct._cairo* %call27, %struct._cairo** %cr, align 8
  %19 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %20 = load %struct._GdkRectangle*, %struct._GdkRectangle** %expose_area.addr, align 8
  call void @gdk_cairo_rectangle(%struct._cairo* %19, %struct._GdkRectangle* %20)
  %21 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %21)
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.23
  %22 = load i32, i32* %x, align 4
  %23 = load i32, i32* %width, align 4
  %add28 = add nsw i32 %23, 2
  %cmp29 = icmp slt i32 %22, %add28
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %x, align 4
  %div30 = udiv i32 %24, 2
  %rem = urem i32 %div30, 24
  store i32 %rem, i32* %index, align 4
  %25 = load i32, i32* %index, align 4
  %idxprom = zext i32 %25 to i64
  %26 = load %struct._GimpCellRendererDashes*, %struct._GimpCellRendererDashes** %dashes, align 8
  %segments = getelementptr inbounds %struct._GimpCellRendererDashes, %struct._GimpCellRendererDashes* %26, i32 0, i32 1
  %27 = load i32*, i32** %segments, align 8
  %arrayidx = getelementptr inbounds i32, i32* %27, i64 %idxprom
  %28 = load i32, i32* %arrayidx, align 4
  %tobool31 = icmp ne i32 %28, 0
  br i1 %tobool31, label %if.then.32, label %if.end.42

if.then.32:                                       ; preds = %for.body
  %29 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %30 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %x33 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %30, i32 0, i32 0
  %31 = load i32, i32* %x33, align 4
  %32 = load i32, i32* %xpad, align 4
  %add34 = add nsw i32 %31, %32
  %33 = load i32, i32* %x, align 4
  %add35 = add nsw i32 %add34, %33
  %conv = sitofp i32 %add35 to double
  %34 = load i32, i32* %y, align 4
  %conv36 = sitofp i32 %34 to double
  %35 = load i32, i32* %width, align 4
  %36 = load i32, i32* %x, align 4
  %sub37 = sub nsw i32 %35, %36
  %cmp38 = icmp slt i32 2, %sub37
  br i1 %cmp38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.32
  br label %cond.end

cond.false:                                       ; preds = %if.then.32
  %37 = load i32, i32* %width, align 4
  %38 = load i32, i32* %x, align 4
  %sub40 = sub nsw i32 %37, %38
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %sub40, %cond.false ]
  %conv41 = sitofp i32 %cond to double
  call void @cairo_rectangle(%struct._cairo* %29, double %conv, double %conv36, double %conv41, double 4.000000e+00)
  br label %if.end.42

if.end.42:                                        ; preds = %cond.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %39 = load i32, i32* %x, align 4
  %add43 = add nsw i32 %39, 2
  store i32 %add43, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %41 = load i32, i32* %state, align 4
  %idxprom44 = zext i32 %41 to i64
  %42 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %42, i32 0, i32 6
  %arrayidx45 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text, i32 0, i64 %idxprom44
  call void @gdk_cairo_set_source_color(%struct._cairo* %40, %struct._GdkColor* %arrayidx45)
  %43 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill(%struct._cairo* %43)
  %44 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %44)
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boxed(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dash_pattern_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_free(i8*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @gimp_dash_pattern_fill_segments(%struct._GArray*, i32*, i32) #1

declare i8* @g_value_get_boxed(%struct._GValue*) #1

declare void @gtk_cell_renderer_get_alignment(%struct._GtkCellRenderer*, float*, float*) #1

declare void @gtk_cell_renderer_get_padding(%struct._GtkCellRenderer*, i32*, i32*) #1

declare i32 @gtk_widget_get_direction(%struct._GtkWidget*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare i32 @gtk_cell_renderer_get_sensitive(%struct._GtkCellRenderer*) #1

declare i32 @gtk_widget_has_focus(%struct._GtkWidget*) #1

declare i32 @gtk_widget_get_state(%struct._GtkWidget*) #1

declare i32 @gtk_widget_is_sensitive(%struct._GtkWidget*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @gdk_cairo_rectangle(%struct._cairo*, %struct._GdkRectangle*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_fill(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
