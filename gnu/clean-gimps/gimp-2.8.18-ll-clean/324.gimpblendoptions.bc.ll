; ModuleID = './app/tools/gimpblendoptions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPaintOptionsClass = type { %struct._GimpToolOptionsClass }
%struct._GimpToolOptionsClass = type { %struct._GimpContextClass, void (%struct._GimpToolOptions*)* }
%struct._GimpContextClass = type { %struct._GimpViewableClass, void (%struct._GimpContext*, %struct._GimpImage*)*, void (%struct._GimpContext*, i8*)*, void (%struct._GimpContext*, %struct._GimpToolInfo*)*, void (%struct._GimpContext*, %struct._GimpPaintInfo*)*, void (%struct._GimpContext*, %struct._GimpRGB*)*, void (%struct._GimpContext*, %struct._GimpRGB*)*, void (%struct._GimpContext*, double)*, void (%struct._GimpContext*, i32)*, void (%struct._GimpContext*, %struct._GimpBrush*)*, void (%struct._GimpContext*, %struct._GimpDynamics*)*, void (%struct._GimpContext*, %struct._GimpPattern*)*, void (%struct._GimpContext*, %struct._GimpGradient*)*, void (%struct._GimpContext*, %struct._GimpPalette*)*, void (%struct._GimpContext*, %struct._GimpToolPreset*)*, void (%struct._GimpContext*, %struct._GimpFont*)*, void (%struct._GimpContext*, %struct._GimpBuffer*)*, void (%struct._GimpContext*, %struct._GimpImagefile*)*, void (%struct._GimpContext*, %struct._GimpTemplate*)* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
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
%struct._GimpViewable = type { %struct._GimpObject }
%struct._TempBuf = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
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
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpBlendOptions = type { %struct._GimpPaintOptions, double, i32, i32, i32, double, i32 }
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }
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
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpEnumComboBox = type { %struct._GimpIntComboBox }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_blend_options_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpBlendOptions\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Gradient\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"gradient-view-type\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"gradient-view-size\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"gradient-reverse\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"gimp-gradient-editor\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"gradient-type\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"ellipsize\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"gimp-gradient\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Shape:\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"gradient-repeat\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Repeat:\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"notify::gradient-type\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"dither\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"Dithering\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"supersample\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Adaptive supersampling\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"supersample-depth\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"Max depth\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"supersample-threshold\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1
@gimp_blend_options_parent_class = internal global i8* null, align 8
@GimpBlendOptions_private_offset = internal global i32 0, align 4
@.str.23 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"gimpblendoptions.c\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_blend_options_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_blend_options_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_blend_options_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_paint_options_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 432, void (i8*, i8*)* bitcast (void (i8*)* @gimp_blend_options_class_intern_init to void (i8*, i8*)*), i32 512, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpBlendOptions*)* @gimp_blend_options_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_blend_options_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_blend_options_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_options_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_blend_options_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_blend_options_parent_class, align 8
  %1 = load i32, i32* @GimpBlendOptions_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpBlendOptions_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPaintOptionsClass*
  call void @gimp_blend_options_class_init(%struct._GimpPaintOptionsClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_blend_options_init(%struct._GimpBlendOptions* %options) #3 {
entry:
  %options.addr = alloca %struct._GimpBlendOptions*, align 8
  store %struct._GimpBlendOptions* %options, %struct._GimpBlendOptions** %options.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_blend_options_gui(%struct._GimpToolOptions* %tool_options) #3 {
entry:
  %tool_options.addr = alloca %struct._GimpToolOptions*, align 8
  %config = alloca %struct._GObject*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %vbox2 = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GimpToolOptions* %tool_options, %struct._GimpToolOptions** %tool_options.addr, align 8
  %0 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %1 = bitcast %struct._GimpToolOptions* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  store %struct._GObject* %2, %struct._GObject** %config, align 8
  %3 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %call1 = call %struct._GtkWidget* @gimp_paint_options_gui(%struct._GimpToolOptions* %3)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %vbox, align 8
  %4 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %5 = bitcast %struct._GimpToolOptions* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_context_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContext*
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #5
  %call5 = call %struct._GtkWidget* @gimp_prop_gradient_box_new(%struct._GimpContainer* null, %struct._GimpContext* %6, i8* %call4, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %button, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %9, %struct._GtkWidget* %10, i32 0, i32 0, i32 0)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  %call8 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 2, i32 0)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %table, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_table_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %14, i32 2)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_table_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %17, i32 2)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %20, %struct._GtkWidget* %21, i32 0, i32 0, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %23 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call15 = call %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 0)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %combo, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 3, i8* null)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_enum_combo_box_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call16)
  %28 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpEnumComboBox*
  call void @gimp_enum_combo_box_set_stock_prefix(%struct._GimpEnumComboBox* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0))
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_table_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call18)
  %31 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkTable*
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)) #5
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call21 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %31, i32 0, i32 0, i8* %call20, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %32, i32 2, i32 0)
  %33 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call22 = call %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 0)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %combo, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 3, i8* null)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_table_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call23)
  %38 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkTable*
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #5
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call26 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %38, i32 0, i32 1, i8* %call25, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %39, i32 2, i32 0)
  %40 = load %struct._GObject*, %struct._GObject** %config, align 8
  %41 = bitcast %struct._GObject* %40 to i8*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GimpBlendOptions*, %struct._GParamSpec*, %struct._GtkWidget*)* @blend_options_gradient_type_notify to void ()*), i8* %43, void (i8*, %struct._GClosure*)* null, i32 0)
  %44 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)) #5
  %call29 = call %struct._GtkWidget* @gimp_prop_spin_scale_new(%struct._GObject* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* %call28, double 1.000000e+00, double 1.000000e+01, i32 1)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %scale, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call30)
  %47 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %47, %struct._GtkWidget* %48, i32 0, i32 0, i32 0)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %50 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0)) #5
  %call33 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* %call32)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %button, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_box_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call34)
  %53 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkBox*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %53, %struct._GtkWidget* %54, i32 0, i32 0, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %55)
  %call36 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %vbox2, align 8
  %56 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0)) #5
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %call38 = call %struct._GtkWidget* @gimp_prop_expanding_frame_new(%struct._GObject* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* %call37, %struct._GtkWidget* %57, %struct._GtkWidget** null)
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %frame, align 8
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_box_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call39)
  %60 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBox*
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %60, %struct._GtkWidget* %61, i32 0, i32 0, i32 0)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %62)
  %63 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0)) #5
  %call42 = call %struct._GtkWidget* @gimp_prop_spin_scale_new(%struct._GObject* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i8* %call41, double 1.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %scale, align 8
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_box_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call43)
  %66 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkBox*
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %66, %struct._GtkWidget* %67, i32 0, i32 0, i32 0)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %68)
  %69 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0)) #5
  %call46 = call %struct._GtkWidget* @gimp_prop_spin_scale_new(%struct._GObject* %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i8* %call45, double 1.000000e-02, double 1.000000e-01, i32 2)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %scale, align 8
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_box_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call47)
  %72 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkBox*
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %72, %struct._GtkWidget* %73, i32 0, i32 0, i32 0)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %74)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  ret %struct._GtkWidget* %75
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gimp_paint_options_gui(%struct._GimpToolOptions*) #1

declare %struct._GtkWidget* @gimp_prop_gradient_box_new(%struct._GimpContainer*, %struct._GimpContext*, i8*, i32, i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject*, i8*, i32, i32) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_enum_combo_box_set_stock_prefix(%struct._GimpEnumComboBox*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_enum_combo_box_get_type() #2

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @blend_options_gradient_type_notify(%struct._GimpBlendOptions* %options, %struct._GParamSpec* %pspec, %struct._GtkWidget* %repeat_combo) #3 {
entry:
  %options.addr = alloca %struct._GimpBlendOptions*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %repeat_combo.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GimpBlendOptions* %options, %struct._GimpBlendOptions** %options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GtkWidget* %repeat_combo, %struct._GtkWidget** %repeat_combo.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %repeat_combo.addr, align 8
  %1 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options.addr, align 8
  %gradient_type = getelementptr inbounds %struct._GimpBlendOptions, %struct._GimpBlendOptions* %1, i32 0, i32 2
  %2 = load i32, i32* %gradient_type, align 4
  %cmp = icmp ult i32 %2, 6
  %conv = zext i1 %cmp to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %0, i32 %conv)
  ret void
}

declare %struct._GtkWidget* @gimp_prop_spin_scale_new(%struct._GObject*, i8*, i8*, double, double, i32) #1

declare %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gimp_prop_expanding_frame_new(%struct._GObject*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget**) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_blend_options_class_init(%struct._GimpPaintOptionsClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPaintOptionsClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpPaintOptionsClass* %klass, %struct._GimpPaintOptionsClass** %klass.addr, align 8
  %0 = load %struct._GimpPaintOptionsClass*, %struct._GimpPaintOptionsClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPaintOptionsClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_blend_options_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_blend_options_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 1.000000e+02, double 0.000000e+00, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %5, i32 1, %struct._GParamSpec* %call1)
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call2 = call i64 @gimp_gradient_type_get_type() #6
  %call3 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i64 %call2, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %6, i32 2, %struct._GParamSpec* %call3)
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call i64 @gimp_repeat_mode_get_type() #6
  %call5 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i64 %call4, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 3, %struct._GParamSpec* %call5)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 4, %struct._GParamSpec* %call6)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* null, i32 0, i32 6, i32 3, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 5, %struct._GParamSpec* %call7)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 4.000000e+00, double 2.000000e-01, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 6, %struct._GParamSpec* %call8)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 7, %struct._GParamSpec* %call9)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_blend_options_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %options = alloca %struct._GimpBlendOptions*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_blend_options_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBlendOptions*
  store %struct._GimpBlendOptions* %2, %struct._GimpBlendOptions** %options, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.9
    i32 5, label %sw.bb.11
    i32 6, label %sw.bb.13
    i32 7, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call double @g_value_get_double(%struct._GValue* %4)
  %5 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %offset = getelementptr inbounds %struct._GimpBlendOptions, %struct._GimpBlendOptions* %5, i32 0, i32 1
  store double %call2, double* %offset, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_enum(%struct._GValue* %6)
  %7 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %gradient_type = getelementptr inbounds %struct._GimpBlendOptions, %struct._GimpBlendOptions* %7, i32 0, i32 2
  store i32 %call4, i32* %gradient_type, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %8)
  %9 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %10 = bitcast %struct._GimpBlendOptions* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_paint_options_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPaintOptions*
  %gradient_options = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %11, i32 0, i32 11
  %12 = load %struct._GimpGradientOptions*, %struct._GimpGradientOptions** %gradient_options, align 8
  %gradient_repeat = getelementptr inbounds %struct._GimpGradientOptions, %struct._GimpGradientOptions* %12, i32 0, i32 1
  store i32 %call6, i32* %gradient_repeat, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_boolean(%struct._GValue* %13)
  %14 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %supersample = getelementptr inbounds %struct._GimpBlendOptions, %struct._GimpBlendOptions* %14, i32 0, i32 3
  store i32 %call10, i32* %supersample, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i32 @g_value_get_int(%struct._GValue* %15)
  %16 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %supersample_depth = getelementptr inbounds %struct._GimpBlendOptions, %struct._GimpBlendOptions* %16, i32 0, i32 4
  store i32 %call12, i32* %supersample_depth, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call double @g_value_get_double(%struct._GValue* %17)
  %18 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %supersample_threshold = getelementptr inbounds %struct._GimpBlendOptions, %struct._GimpBlendOptions* %18, i32 0, i32 5
  store double %call14, double* %supersample_threshold, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call i32 @g_value_get_boolean(%struct._GValue* %19)
  %20 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %dither = getelementptr inbounds %struct._GimpBlendOptions, %struct._GimpBlendOptions* %20, i32 0, i32 6
  store i32 %call16, i32* %dither, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %21 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %21, %struct._GObject** %_glib__object, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %22, %struct._GParamSpec** %_glib__pspec, align 8
  %23 = load i32, i32* %property_id.addr, align 4
  store i32 %23, i32* %_glib__property_id, align 4
  %24 = load i32, i32* %_glib__property_id, align 4
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %25, i32 0, i32 1
  %26 = load i8*, i8** %name, align 8
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %28 = bitcast %struct._GParamSpec* %27 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %29, i32 0, i32 0
  %30 = load i64, i64* %g_type, align 8
  %call17 = call i8* @g_type_name(i64 %30)
  %31 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %32 = bitcast %struct._GObject* %31 to %struct._GTypeInstance*
  %g_class18 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class18, align 8
  %g_type19 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type19, align 8
  %call20 = call i8* @g_type_name(i64 %34)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0), i32 151, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %24, i8* %26, i8* %call17, i8* %call20)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_blend_options_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %options = alloca %struct._GimpBlendOptions*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_blend_options_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBlendOptions*
  store %struct._GimpBlendOptions* %2, %struct._GimpBlendOptions** %options, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.6
    i32 5, label %sw.bb.7
    i32 6, label %sw.bb.8
    i32 7, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %offset = getelementptr inbounds %struct._GimpBlendOptions, %struct._GimpBlendOptions* %5, i32 0, i32 1
  %6 = load double, double* %offset, align 8
  call void @g_value_set_double(%struct._GValue* %4, double %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %gradient_type = getelementptr inbounds %struct._GimpBlendOptions, %struct._GimpBlendOptions* %8, i32 0, i32 2
  %9 = load i32, i32* %gradient_type, align 4
  call void @g_value_set_enum(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %12 = bitcast %struct._GimpBlendOptions* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_paint_options_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpPaintOptions*
  %gradient_options = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %13, i32 0, i32 11
  %14 = load %struct._GimpGradientOptions*, %struct._GimpGradientOptions** %gradient_options, align 8
  %gradient_repeat = getelementptr inbounds %struct._GimpGradientOptions, %struct._GimpGradientOptions* %14, i32 0, i32 1
  %15 = load i32, i32* %gradient_repeat, align 4
  call void @g_value_set_enum(%struct._GValue* %10, i32 %15)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %supersample = getelementptr inbounds %struct._GimpBlendOptions, %struct._GimpBlendOptions* %17, i32 0, i32 3
  %18 = load i32, i32* %supersample, align 4
  call void @g_value_set_boolean(%struct._GValue* %16, i32 %18)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %supersample_depth = getelementptr inbounds %struct._GimpBlendOptions, %struct._GimpBlendOptions* %20, i32 0, i32 4
  %21 = load i32, i32* %supersample_depth, align 4
  call void @g_value_set_int(%struct._GValue* %19, i32 %21)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %supersample_threshold = getelementptr inbounds %struct._GimpBlendOptions, %struct._GimpBlendOptions* %23, i32 0, i32 5
  %24 = load double, double* %supersample_threshold, align 8
  call void @g_value_set_double(%struct._GValue* %22, double %24)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load %struct._GimpBlendOptions*, %struct._GimpBlendOptions** %options, align 8
  %dither = getelementptr inbounds %struct._GimpBlendOptions, %struct._GimpBlendOptions* %26, i32 0, i32 6
  %27 = load i32, i32* %dither, align 4
  call void @g_value_set_boolean(%struct._GValue* %25, i32 %27)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %28 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %28, %struct._GObject** %_glib__object, align 8
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %29, %struct._GParamSpec** %_glib__pspec, align 8
  %30 = load i32, i32* %property_id.addr, align 4
  store i32 %30, i32* %_glib__property_id, align 4
  %31 = load i32, i32* %_glib__property_id, align 4
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %32, i32 0, i32 1
  %33 = load i8*, i8** %name, align 8
  %34 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %35 = bitcast %struct._GParamSpec* %34 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type, align 8
  %call10 = call i8* @g_type_name(i64 %37)
  %38 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %39 = bitcast %struct._GObject* %38 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %g_type12 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type12, align 8
  %call13 = call i8* @g_type_name(i64 %41)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0), i32 192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %31, i8* %33, i8* %call10, i8* %call13)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_type_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_repeat_mode_get_type() #2

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
