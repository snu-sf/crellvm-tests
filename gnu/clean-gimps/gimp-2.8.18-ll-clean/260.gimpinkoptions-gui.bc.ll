; ModuleID = './app/tools/gimpinkoptions-gui.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpImage = type opaque
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
%struct._GimpToolInfo = type opaque
%struct._GimpInkOptions = type { %struct._GimpPaintOptions, double, double, double, double, double, i32, double, double }
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkOrientable = type opaque
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }

@.str = private unnamed_addr constant [11 x i8] c"Adjustment\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"tilt-angle\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Angle\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Sensitivity\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"size-sensitivity\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"tilt-sensitivity\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Tilt\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"vel-sensitivity\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Speed\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Shape\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"blob-type\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"gimp-shape\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"blob-aspect\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"blob-angle\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_ink_options_gui(%struct._GimpToolOptions* %tool_options) #0 {
entry:
  %tool_options.addr = alloca %struct._GimpToolOptions*, align 8
  %config = alloca %struct._GObject*, align 8
  %ink_options = alloca %struct._GimpInkOptions*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox2 = alloca %struct._GtkWidget*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  %blob_box = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %editor = alloca %struct._GtkWidget*, align 8
  %size_group = alloca %struct._GtkSizeGroup*, align 8
  store %struct._GimpToolOptions* %tool_options, %struct._GimpToolOptions** %tool_options.addr, align 8
  %0 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %1 = bitcast %struct._GimpToolOptions* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  store %struct._GObject* %2, %struct._GObject** %config, align 8
  %3 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %4 = bitcast %struct._GimpToolOptions* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_ink_options_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpInkOptions*
  store %struct._GimpInkOptions* %5, %struct._GimpInkOptions** %ink_options, align 8
  %6 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %call3 = call %struct._GtkWidget* @gimp_paint_options_gui(%struct._GimpToolOptions* %6)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %vbox, align 8
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #5
  %call5 = call %struct._GtkWidget* @gimp_frame_new(i8* %call4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %frame, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %9, %struct._GtkWidget* %10, i32 0, i32 1, i32 0)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  %call8 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %vbox2, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_container_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkContainer*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_container_add(%struct._GtkContainer* %14, %struct._GtkWidget* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %17 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #5
  %call12 = call %struct._GtkWidget* @gimp_prop_spin_scale_new(%struct._GObject* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %call11, double 1.000000e+00, double 2.000000e+00, i32 1)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %scale, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %20, %struct._GtkWidget* %21, i32 0, i32 0, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %23 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #5
  %call16 = call %struct._GtkWidget* @gimp_prop_spin_scale_new(%struct._GObject* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* %call15, double 1.000000e+00, double 1.000000e+01, i32 1)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %scale, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_box_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call17)
  %26 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBox*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %26, %struct._GtkWidget* %27, i32 0, i32 0, i32 0)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0)) #5
  %call20 = call %struct._GtkWidget* @gimp_frame_new(i8* %call19)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %frame, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call21)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %31, %struct._GtkWidget* %32, i32 0, i32 1, i32 0)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %call23 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %vbox2, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_container_get_type() #4
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call24)
  %36 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkContainer*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_container_add(%struct._GtkContainer* %36, %struct._GtkWidget* %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %39 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #5
  %call27 = call %struct._GtkWidget* @gimp_prop_spin_scale_new(%struct._GObject* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* %call26, double 1.000000e-02, double 1.000000e-01, i32 2)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %scale, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call28)
  %42 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %42, %struct._GtkWidget* %43, i32 0, i32 0, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %45 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #5
  %call31 = call %struct._GtkWidget* @gimp_prop_spin_scale_new(%struct._GObject* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* %call30, double 1.000000e-02, double 1.000000e-01, i32 2)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %scale, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_box_get_type() #4
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call32)
  %48 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkBox*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %48, %struct._GtkWidget* %49, i32 0, i32 0, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %51 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)) #5
  %call35 = call %struct._GtkWidget* @gimp_prop_spin_scale_new(%struct._GObject* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* %call34, double 1.000000e-02, double 1.000000e-01, i32 2)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %scale, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_box_get_type() #4
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call36)
  %54 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkBox*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %54, %struct._GtkWidget* %55, i32 0, i32 0, i32 0)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %56)
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)) #5
  %call39 = call %struct._GtkWidget* @gimp_frame_new(i8* %call38)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %frame, align 8
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_box_get_type() #4
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call40)
  %59 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkBox*
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %59, %struct._GtkWidget* %60, i32 0, i32 0, i32 0)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %61)
  %call42 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %hbox, align 8
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_container_get_type() #4
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call43)
  %64 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkContainer*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %64, %struct._GtkWidget* %65)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  %call45 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 2)
  store %struct._GtkSizeGroup* %call45, %struct._GtkSizeGroup** %size_group, align 8
  %67 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call46 = call %struct._GtkWidget* @gimp_prop_enum_stock_box_new(%struct._GObject* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 0)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %blob_box, align 8
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %blob_box, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_orientable_get_type() #4
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call47)
  %70 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %70, i32 1)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_box_get_type() #4
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call49)
  %73 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkBox*
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %blob_box, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %73, %struct._GtkWidget* %74, i32 0, i32 0, i32 0)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %blob_box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %75)
  %76 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %blob_box, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %76, %struct._GtkWidget* %77)
  %78 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %79 = bitcast %struct._GtkSizeGroup* %78 to i8*
  call void @g_object_unref(i8* %79)
  %call51 = call %struct._GtkWidget* @gtk_aspect_frame_new(i8* null, float 0.000000e+00, float 5.000000e-01, float 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %frame, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_frame_get_type() #4
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call52)
  %82 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %82, i32 1)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_box_get_type() #4
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call54)
  %85 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkBox*
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %85, %struct._GtkWidget* %86, i32 1, i32 1, i32 0)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %87)
  %88 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %88, %struct._GtkWidget* %89)
  %90 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %ink_options, align 8
  %blob_type = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %90, i32 0, i32 6
  %91 = load i32, i32* %blob_type, align 4
  %92 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %ink_options, align 8
  %blob_aspect = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %92, i32 0, i32 7
  %93 = load double, double* %blob_aspect, align 8
  %94 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %ink_options, align 8
  %blob_angle = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %94, i32 0, i32 8
  %95 = load double, double* %blob_angle, align 8
  %call56 = call %struct._GtkWidget* @gimp_blob_editor_new(i32 %91, double %93, double %95)
  store %struct._GtkWidget* %call56, %struct._GtkWidget** %editor, align 8
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_container_get_type() #4
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call57)
  %98 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkContainer*
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  call void @gtk_container_add(%struct._GtkContainer* %98, %struct._GtkWidget* %99)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %100)
  %101 = load %struct._GObject*, %struct._GObject** %config, align 8
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 80)
  %104 = bitcast %struct._GTypeInstance* %call59 to %struct._GObject*
  call void @gimp_config_connect(%struct._GObject* %101, %struct._GObject* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0))
  %105 = load %struct._GObject*, %struct._GObject** %config, align 8
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 80)
  %108 = bitcast %struct._GTypeInstance* %call60 to %struct._GObject*
  call void @gimp_config_connect(%struct._GObject* %105, %struct._GObject* %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0))
  %109 = load %struct._GObject*, %struct._GObject** %config, align 8
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  %111 = bitcast %struct._GtkWidget* %110 to %struct._GTypeInstance*
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 80)
  %112 = bitcast %struct._GTypeInstance* %call61 to %struct._GObject*
  call void @gimp_config_connect(%struct._GObject* %109, %struct._GObject* %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0))
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  ret %struct._GtkWidget* %113
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_ink_options_get_type() #2

declare %struct._GtkWidget* @gimp_paint_options_gui(%struct._GimpToolOptions*) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gimp_prop_spin_scale_new(%struct._GObject*, i8*, i8*, double, double, i32) #1

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

declare %struct._GtkWidget* @gimp_prop_enum_stock_box_new(%struct._GObject*, i8*, i8*, i32, i32) #1

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GtkWidget* @gtk_aspect_frame_new(i8*, float, float, float, i32) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare %struct._GtkWidget* @gimp_blob_editor_new(i32, double, double) #1

declare void @gimp_config_connect(%struct._GObject*, %struct._GObject*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
