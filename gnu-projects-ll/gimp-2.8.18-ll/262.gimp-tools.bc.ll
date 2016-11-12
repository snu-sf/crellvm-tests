; ModuleID = './app/tools/gimp-tools.bc'
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
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { {}*, {}*, {}*, {}*, {}*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, {}* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
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
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GError = type { i32, i32, i8* }
%struct._GimpConfig = type opaque
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
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
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }

@gimp_tools_init.register_funcs = private unnamed_addr constant [44 x void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)*] [void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_gegl_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_posterize_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_curves_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_levels_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_threshold_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_brightness_contrast_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_colorize_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_hue_saturation_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_color_balance_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_desaturate_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_dodge_burn_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_smudge_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_convolve_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_perspective_clone_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_heal_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_clone_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_ink_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_airbrush_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_eraser_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_paintbrush_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_pencil_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_blend_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_bucket_fill_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_text_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_cage_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_flip_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_perspective_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_shear_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_scale_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_rotate_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_crop_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_align_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_move_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_measure_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_magnify_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_color_picker_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_vector_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_foreground_select_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_iscissors_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_by_color_select_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_fuzzy_select_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_free_select_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_ellipse_select_tool_register, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)* @gimp_rectangle_select_tool_register], align 16
@.str = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_tools_init = private unnamed_addr constant [16 x i8] c"gimp_tools_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"gimp-tools-default-order\00", align 1
@__func__.gimp_tools_exit = private unnamed_addr constant [16 x i8] c"gimp_tools_exit\00", align 1
@__func__.gimp_tools_restore = private unnamed_addr constant [19 x i8] c"gimp_tools_restore\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"toolrc\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Parsing '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"gimp-tool-options-gui-func\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"This tool has\0Ano options.\00", align 1
@__func__.gimp_tools_save = private unnamed_addr constant [16 x i8] c"gimp_tools_save\00", align 1
@tool_options_deleted = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"Writing '%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"GIMP toolrc\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"end of toolrc\00", align 1
@__func__.gimp_tools_clear = private unnamed_addr constant [17 x i8] c"gimp_tools_clear\00", align 1
@__func__.gimp_tools_get_default_order = private unnamed_addr constant [29 x i8] c"gimp_tools_get_default_order\00", align 1
@__func__.gimp_tools_register = private unnamed_addr constant [20 x i8] c"gimp_tools_register\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"g_type_is_a (tool_type, GIMP_TYPE_TOOL)\00", align 1
@.str.12 = private unnamed_addr constant [92 x i8] c"tool_options_type == G_TYPE_NONE || g_type_is_a (tool_options_type, GIMP_TYPE_TOOL_OPTIONS)\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"gimp-pencil\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"gimp-paintbrush\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"gimp-eraser\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"gimp-airbrush\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"gimp-clone\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"gimp-heal\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"gimp-perspective-clone\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"gimp-convolve\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"gimp-smudge\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"gimp-dodge-burn\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"gimp-ink\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"gimp-tool-default-visible\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_tools_init(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %register_funcs = alloca [44 x void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)*], align 16
  %default_order = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %identifier = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = bitcast [44 x void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)*]* %register_funcs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([44 x void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)*]* @gimp_tools_init.register_funcs to i8*), i64 352, i32 16, i1 false)
  store %struct._GList* null, %struct._GList** %default_order, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %2 = bitcast %struct._Gimp* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_tools_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  call void @gimp_tool_options_create_folder()
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @tool_manager_init(%struct._Gimp* %14)
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tool_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 45
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list, align 8
  call void @gimp_container_freeze(%struct._GimpContainer* %16)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %17 = load i32, i32* %i, align 4
  %conv = sext i32 %17 to i64
  %cmp11 = icmp ult i64 %conv, 44
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [44 x void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)*], [44 x void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)*]* %register_funcs, i32 0, i64 %idxprom
  %19 = load void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)*, void (void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*)** %arrayidx, align 8
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %21 = bitcast %struct._Gimp* %20 to i8*
  call void %19(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* @gimp_tools_register, i8* %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tool_info_list13 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %23, i32 0, i32 45
  %24 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list13, align 8
  call void @gimp_container_thaw(%struct._GimpContainer* %24)
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call14 = call %struct._GList* @gimp_get_tool_info_iter(%struct._Gimp* %25)
  store %struct._GList* %call14, %struct._GList** %list, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %cond.end, %for.end
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool16 = icmp ne %struct._GList* %26, null
  br i1 %tobool16, label %for.body.17, label %for.end.24

for.body.17:                                      ; preds = %for.cond.15
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 0
  %28 = load i8*, i8** %data, align 8
  %call19 = call i8* @gimp_object_get_name(i8* %28)
  store i8* %call19, i8** %identifier, align 8
  %29 = load %struct._GList*, %struct._GList** %default_order, align 8
  %30 = load i8*, i8** %identifier, align 8
  %call20 = call noalias i8* @g_strdup(i8* %30)
  %call21 = call %struct._GList* @g_list_prepend(%struct._GList* %29, i8* %call20)
  store %struct._GList* %call21, %struct._GList** %default_order, align 8
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.17
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool23 = icmp ne %struct._GList* %31, null
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc.22
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc.22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %33, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond.15

for.end.24:                                       ; preds = %for.cond.15
  %34 = load %struct._GList*, %struct._GList** %default_order, align 8
  %call25 = call %struct._GList* @g_list_reverse(%struct._GList* %34)
  store %struct._GList* %call25, %struct._GList** %default_order, align 8
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %36 = bitcast %struct._Gimp* %35 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 80)
  %37 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  %38 = load %struct._GList*, %struct._GList** %default_order, align 8
  %39 = bitcast %struct._GList* %38 to i8*
  call void @g_object_set_data(%struct._GObject* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* %39)
  br label %return

return:                                           ; preds = %for.end.24, %if.else.9
  ret void
}

declare void @gimp_gegl_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_posterize_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_curves_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_levels_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_threshold_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_brightness_contrast_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_colorize_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_hue_saturation_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_color_balance_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_desaturate_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_dodge_burn_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_smudge_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_convolve_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_perspective_clone_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_heal_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_clone_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_ink_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_airbrush_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_eraser_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_paintbrush_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_pencil_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_blend_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_bucket_fill_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_text_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_cage_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_flip_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_perspective_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_shear_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_scale_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_rotate_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_crop_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_align_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_move_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_measure_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_magnify_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_color_picker_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_vector_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_foreground_select_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_iscissors_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_by_color_select_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_fuzzy_select_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_free_select_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_ellipse_select_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @gimp_rectangle_select_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #3

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @gimp_tool_options_create_folder() #1

declare void @tool_manager_init(%struct._Gimp*) #1

declare void @gimp_container_freeze(%struct._GimpContainer*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tools_register(i64 %tool_type, i64 %tool_options_type, %struct._GtkWidget* (%struct._GimpToolOptions*)* %options_gui_func, i32 %context_props, i8* %identifier, i8* %blurb, i8* %help, i8* %menu_label, i8* %menu_accel, i8* %help_domain, i8* %help_data, i8* %stock_id, i8* %data) #0 {
entry:
  %tool_type.addr = alloca i64, align 8
  %tool_options_type.addr = alloca i64, align 8
  %options_gui_func.addr = alloca %struct._GtkWidget* (%struct._GimpToolOptions*)*, align 8
  %context_props.addr = alloca i32, align 4
  %identifier.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %help.addr = alloca i8*, align 8
  %menu_label.addr = alloca i8*, align 8
  %menu_accel.addr = alloca i8*, align 8
  %help_domain.addr = alloca i8*, align 8
  %help_data.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %paint_core_name = alloca i8*, align 8
  %visible = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i64 %tool_type, i64* %tool_type.addr, align 8
  store i64 %tool_options_type, i64* %tool_options_type.addr, align 8
  store %struct._GtkWidget* (%struct._GimpToolOptions*)* %options_gui_func, %struct._GtkWidget* (%struct._GimpToolOptions*)** %options_gui_func.addr, align 8
  store i32 %context_props, i32* %context_props.addr, align 4
  store i8* %identifier, i8** %identifier.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i8* %help, i8** %help.addr, align 8
  store i8* %menu_label, i8** %menu_label.addr, align 8
  store i8* %menu_accel, i8** %menu_accel.addr, align 8
  store i8* %help_domain, i8** %help_domain.addr, align 8
  store i8* %help_data, i8** %help_data.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._Gimp*
  store %struct._Gimp* %1, %struct._Gimp** %gimp, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %3 = bitcast %struct._Gimp* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
  store i64 %call, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #7
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_tools_register, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.100

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %15 = load i64, i64* %tool_type.addr, align 8
  %call12 = call i64 @gimp_tool_get_type() #6
  %call13 = call i32 @g_type_is_a(i64 %15, i64 %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.11
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_tools_register, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.100

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %16 = load i64, i64* %tool_options_type.addr, align 8
  %cmp20 = icmp eq i64 %16, 4
  br i1 %cmp20, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.19
  %17 = load i64, i64* %tool_options_type.addr, align 8
  %call21 = call i64 @gimp_tool_options_get_type() #6
  %call22 = call i32 @g_type_is_a(i64 %17, i64 %call21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %lor.lhs.false, %do.body.19
  br label %if.end.26

if.else.25:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_tools_register, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.100

if.end.26:                                        ; preds = %if.then.24
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  %18 = load i64, i64* %tool_options_type.addr, align 8
  %cmp28 = icmp eq i64 %18, 4
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %do.end.27
  %call30 = call i64 @gimp_tool_options_get_type() #6
  store i64 %call30, i64* %tool_options_type.addr, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %do.end.27
  %19 = load i64, i64* %tool_type.addr, align 8
  %call32 = call i64 @gimp_pencil_tool_get_type() #6
  %cmp33 = icmp eq i64 %19, %call32
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.end.31
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8** %paint_core_name, align 8
  br label %if.end.86

if.else.35:                                       ; preds = %if.end.31
  %20 = load i64, i64* %tool_type.addr, align 8
  %call36 = call i64 @gimp_paintbrush_tool_get_type() #6
  %cmp37 = icmp eq i64 %20, %call36
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.else.35
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8** %paint_core_name, align 8
  br label %if.end.85

if.else.39:                                       ; preds = %if.else.35
  %21 = load i64, i64* %tool_type.addr, align 8
  %call40 = call i64 @gimp_eraser_tool_get_type() #6
  %cmp41 = icmp eq i64 %21, %call40
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.else.39
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8** %paint_core_name, align 8
  br label %if.end.84

if.else.43:                                       ; preds = %if.else.39
  %22 = load i64, i64* %tool_type.addr, align 8
  %call44 = call i64 @gimp_airbrush_tool_get_type() #6
  %cmp45 = icmp eq i64 %22, %call44
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.else.43
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8** %paint_core_name, align 8
  br label %if.end.83

if.else.47:                                       ; preds = %if.else.43
  %23 = load i64, i64* %tool_type.addr, align 8
  %call48 = call i64 @gimp_clone_tool_get_type() #6
  %cmp49 = icmp eq i64 %23, %call48
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.else.47
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8** %paint_core_name, align 8
  br label %if.end.82

if.else.51:                                       ; preds = %if.else.47
  %24 = load i64, i64* %tool_type.addr, align 8
  %call52 = call i64 @gimp_heal_tool_get_type() #6
  %cmp53 = icmp eq i64 %24, %call52
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.else.51
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8** %paint_core_name, align 8
  br label %if.end.81

if.else.55:                                       ; preds = %if.else.51
  %25 = load i64, i64* %tool_type.addr, align 8
  %call56 = call i64 @gimp_perspective_clone_tool_get_type() #6
  %cmp57 = icmp eq i64 %25, %call56
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.else.55
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0), i8** %paint_core_name, align 8
  br label %if.end.80

if.else.59:                                       ; preds = %if.else.55
  %26 = load i64, i64* %tool_type.addr, align 8
  %call60 = call i64 @gimp_convolve_tool_get_type() #6
  %cmp61 = icmp eq i64 %26, %call60
  br i1 %cmp61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %if.else.59
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8** %paint_core_name, align 8
  br label %if.end.79

if.else.63:                                       ; preds = %if.else.59
  %27 = load i64, i64* %tool_type.addr, align 8
  %call64 = call i64 @gimp_smudge_tool_get_type() #6
  %cmp65 = icmp eq i64 %27, %call64
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %if.else.63
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8** %paint_core_name, align 8
  br label %if.end.78

if.else.67:                                       ; preds = %if.else.63
  %28 = load i64, i64* %tool_type.addr, align 8
  %call68 = call i64 @gimp_dodge_burn_tool_get_type() #6
  %cmp69 = icmp eq i64 %28, %call68
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %if.else.67
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8** %paint_core_name, align 8
  br label %if.end.77

if.else.71:                                       ; preds = %if.else.67
  %29 = load i64, i64* %tool_type.addr, align 8
  %call72 = call i64 @gimp_ink_tool_get_type() #6
  %cmp73 = icmp eq i64 %29, %call72
  br i1 %cmp73, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %if.else.71
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8** %paint_core_name, align 8
  br label %if.end.76

if.else.75:                                       ; preds = %if.else.71
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8** %paint_core_name, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.75, %if.then.74
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.70
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.66
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.62
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.58
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.54
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.50
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.46
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.42
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.38
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.34
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %31 = load i64, i64* %tool_type.addr, align 8
  %32 = load i64, i64* %tool_options_type.addr, align 8
  %33 = load i32, i32* %context_props.addr, align 4
  %34 = load i8*, i8** %identifier.addr, align 8
  %35 = load i8*, i8** %blurb.addr, align 8
  %36 = load i8*, i8** %help.addr, align 8
  %37 = load i8*, i8** %menu_label.addr, align 8
  %38 = load i8*, i8** %menu_accel.addr, align 8
  %39 = load i8*, i8** %help_domain.addr, align 8
  %40 = load i8*, i8** %help_data.addr, align 8
  %41 = load i8*, i8** %paint_core_name, align 8
  %42 = load i8*, i8** %stock_id.addr, align 8
  %call87 = call %struct._GimpToolInfo* @gimp_tool_info_new(%struct._Gimp* %30, i64 %31, i64 %32, i32 %33, i8* %34, i8* %35, i8* %36, i8* %37, i8* %38, i8* %39, i8* %40, i8* %41, i8* %42)
  store %struct._GimpToolInfo* %call87, %struct._GimpToolInfo** %tool_info, align 8
  %43 = load i64, i64* %tool_type.addr, align 8
  %call88 = call i64 @gimp_image_map_tool_get_type() #6
  %call89 = call i32 @g_type_is_a(i64 %43, i64 %call88)
  %tobool90 = icmp ne i32 %call89, 0
  %lnot = xor i1 %tobool90, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %visible, align 4
  %44 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %45 = bitcast %struct._GimpToolInfo* %44 to i8*
  %46 = load i32, i32* %visible, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %46, i8* null)
  %47 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %48 = bitcast %struct._GimpToolInfo* %47 to %struct._GTypeInstance*
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 80)
  %49 = bitcast %struct._GTypeInstance* %call91 to %struct._GObject*
  %50 = load i32, i32* %visible, align 4
  %conv = sext i32 %50 to i64
  %51 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0), i8* %51)
  %52 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %53 = bitcast %struct._GimpToolInfo* %52 to %struct._GTypeInstance*
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 80)
  %54 = bitcast %struct._GTypeInstance* %call92 to %struct._GObject*
  %55 = load %struct._GtkWidget* (%struct._GimpToolOptions*)*, %struct._GtkWidget* (%struct._GimpToolOptions*)** %options_gui_func.addr, align 8
  %56 = bitcast %struct._GtkWidget* (%struct._GimpToolOptions*)* %55 to i8*
  call void @g_object_set_data(%struct._GObject* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* %56)
  %57 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tool_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %57, i32 0, i32 45
  %58 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list, align 8
  %59 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %60 = bitcast %struct._GimpToolInfo* %59 to %struct._GTypeInstance*
  %call93 = call i64 @gimp_object_get_type() #6
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call93)
  %61 = bitcast %struct._GTypeInstance* %call94 to %struct._GimpObject*
  %call95 = call i32 @gimp_container_add(%struct._GimpContainer* %58, %struct._GimpObject* %61)
  %62 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %63 = bitcast %struct._GimpToolInfo* %62 to i8*
  call void @g_object_unref(i8* %63)
  %64 = load i64, i64* %tool_type.addr, align 8
  %call96 = call i64 @gimp_paintbrush_tool_get_type() #6
  %cmp97 = icmp eq i64 %64, %call96
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.86
  %65 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %66 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  call void @gimp_tool_info_set_standard(%struct._Gimp* %65, %struct._GimpToolInfo* %66)
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.9, %if.else.16, %if.else.25, %if.then.99, %if.end.86
  ret void
}

declare void @gimp_container_thaw(%struct._GimpContainer*) #1

declare %struct._GList* @gimp_get_tool_info_iter(%struct._Gimp*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_tools_exit(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %default_order = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %options_gui = alloca %struct._GtkWidget*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_tools_exit, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %14 = bitcast %struct._Gimp* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %call12 = call i8* @g_object_get_data(%struct._GObject* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0))
  %16 = bitcast i8* %call12 to %struct._GList*
  store %struct._GList* %16, %struct._GList** %default_order, align 8
  %17 = load %struct._GList*, %struct._GList** %default_order, align 8
  call void @g_list_free_full(%struct._GList* %17, void (i8*)* @g_free)
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %19 = bitcast %struct._Gimp* %18 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 80)
  %20 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* null)
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call14 = call %struct._GList* @gimp_get_tool_info_iter(%struct._Gimp* %21)
  store %struct._GList* %call14, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool15 = icmp ne %struct._GList* %22, null
  br i1 %tobool15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 0
  %24 = load i8*, i8** %data, align 8
  %25 = bitcast i8* %24 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %25, %struct._GimpToolInfo** %tool_info, align 8
  %26 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %26, i32 0, i32 12
  %27 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %call18 = call %struct._GtkWidget* @gimp_tools_get_tool_options_gui(%struct._GimpToolOptions* %27)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %options_gui, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %options_gui, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %28)
  %29 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options19 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %29, i32 0, i32 12
  %30 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options19, align 8
  call void @gimp_tools_set_tool_options_gui(%struct._GimpToolOptions* %30, %struct._GtkWidget* null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool20 = icmp ne %struct._GList* %31, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %33, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @tool_manager_exit(%struct._Gimp* %34)
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  ret void
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @g_free(i8*) #1

declare %struct._GtkWidget* @gimp_tools_get_tool_options_gui(%struct._GimpToolOptions*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_tools_set_tool_options_gui(%struct._GimpToolOptions*, %struct._GtkWidget*) #1

declare void @tool_manager_exit(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define void @gimp_tools_restore(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %gimp_list = alloca %struct._GimpContainer*, align 8
  %filename = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %name = alloca i8*, align 8
  %object = alloca %struct._GimpObject*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %tool_info78 = alloca %struct._GimpToolInfo*, align 8
  %options_gui_func = alloca %struct._GtkWidget* (%struct._GimpToolOptions*)*, align 8
  %options_gui = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_tools_restore, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %for.end.119

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_tool_info_get_type() #6
  %call12 = call %struct._GimpContainer* @gimp_list_new(i64 %call11, i32 0)
  store %struct._GimpContainer* %call12, %struct._GimpContainer** %gimp_list, align 8
  %call13 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  store i8* %call13, i8** %filename, align 8
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 4
  %14 = load i32, i32* %be_verbose, align 4
  %tobool14 = icmp ne i32 %14, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %do.end
  %15 = load i8*, i8** %filename, align 8
  %call16 = call i8* @gimp_filename_to_utf8(i8* %15)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* %call16)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %do.end
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %gimp_list, align 8
  %17 = bitcast %struct._GimpContainer* %16 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_config_interface_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpConfig*
  %19 = load i8*, i8** %filename, align 8
  %call20 = call i32 @gimp_config_deserialize_file(%struct._GimpConfig* %18, i8* %19, i8* null, %struct._GError** null)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.52

if.then.22:                                       ; preds = %if.end.17
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tool_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %20, i32 0, i32 45
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list, align 8
  %call24 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %21)
  store i32 %call24, i32* %n, align 4
  %22 = load %struct._GimpContainer*, %struct._GimpContainer** %gimp_list, align 8
  %23 = bitcast %struct._GimpContainer* %22 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_list_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call26)
  %24 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpList*
  call void @gimp_list_reverse(%struct._GimpList* %24)
  %25 = load %struct._GimpContainer*, %struct._GimpContainer** %gimp_list, align 8
  %26 = bitcast %struct._GimpContainer* %25 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_list_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call28)
  %27 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpList*
  %list30 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %27, i32 0, i32 1
  %28 = load %struct._GList*, %struct._GList** %list30, align 8
  store %struct._GList* %28, %struct._GList** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end.50, %if.then.22
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool31 = icmp ne %struct._GList* %29, null
  br i1 %tobool31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %30, i32 0, i32 0
  %31 = load i8*, i8** %data, align 8
  %call34 = call i8* @gimp_object_get_name(i8* %31)
  store i8* %call34, i8** %name, align 8
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tool_info_list35 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %32, i32 0, i32 45
  %33 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list35, align 8
  %34 = load i8*, i8** %name, align 8
  %call36 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %33, i8* %34)
  store %struct._GimpObject* %call36, %struct._GimpObject** %object, align 8
  %35 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %tobool37 = icmp ne %struct._GimpObject* %35, null
  br i1 %tobool37, label %if.then.38, label %if.end.46

if.then.38:                                       ; preds = %for.body
  %36 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %37 = bitcast %struct._GimpObject* %36 to i8*
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %data39 = getelementptr inbounds %struct._GList, %struct._GList* %38, i32 0, i32 0
  %39 = load i8*, i8** %data39, align 8
  %40 = bitcast i8* %39 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_tool_info_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call40)
  %41 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpToolInfo*
  %visible = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %41, i32 0, i32 11
  %42 = load i32, i32* %visible, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %42, i8* null)
  %43 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tool_info_list42 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %43, i32 0, i32 45
  %44 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list42, align 8
  %45 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %47, 1
  %cmp43 = icmp slt i32 %46, %sub
  br i1 %cmp43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.38
  %48 = load i32, i32* %i, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.38
  %49 = load i32, i32* %n, align 4
  %sub44 = sub nsw i32 %49, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %48, %cond.true ], [ %sub44, %cond.false ]
  %call45 = call i32 @gimp_container_reorder(%struct._GimpContainer* %44, %struct._GimpObject* %45, i32 %cond)
  br label %if.end.46

if.end.46:                                        ; preds = %cond.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %50 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool47 = icmp ne %struct._GList* %50, null
  br i1 %tobool47, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %for.inc
  %51 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %51, i32 0, i32 1
  %52 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.50

cond.false.49:                                    ; preds = %for.inc
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.48
  %cond51 = phi %struct._GList* [ %52, %cond.true.48 ], [ null, %cond.false.49 ]
  store %struct._GList* %cond51, %struct._GList** %list, align 8
  %53 = load i32, i32* %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.52

if.end.52:                                        ; preds = %for.end, %if.end.17
  %54 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %54)
  %55 = load %struct._GimpContainer*, %struct._GimpContainer** %gimp_list, align 8
  %56 = bitcast %struct._GimpContainer* %55 to i8*
  call void @g_object_unref(i8* %56)
  %57 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call53 = call %struct._GList* @gimp_get_tool_info_iter(%struct._Gimp* %57)
  store %struct._GList* %call53, %struct._GList** %list, align 8
  br label %for.cond.54

for.cond.54:                                      ; preds = %cond.end.66, %if.end.52
  %58 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool55 = icmp ne %struct._GList* %58, null
  br i1 %tobool55, label %for.body.56, label %for.end.68

for.body.56:                                      ; preds = %for.cond.54
  %59 = load %struct._GList*, %struct._GList** %list, align 8
  %data58 = getelementptr inbounds %struct._GList, %struct._GList* %59, i32 0, i32 0
  %60 = load i8*, i8** %data58, align 8
  %61 = bitcast i8* %60 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_tool_info_get_type() #6
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call59)
  %62 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %62, %struct._GimpToolInfo** %tool_info, align 8
  %63 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %63, i32 0, i32 12
  %64 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  call void @gimp_tool_options_reset(%struct._GimpToolOptions* %64)
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.body.56
  %65 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool62 = icmp ne %struct._GList* %65, null
  br i1 %tobool62, label %cond.true.63, label %cond.false.65

cond.true.63:                                     ; preds = %for.inc.61
  %66 = load %struct._GList*, %struct._GList** %list, align 8
  %next64 = getelementptr inbounds %struct._GList, %struct._GList* %66, i32 0, i32 1
  %67 = load %struct._GList*, %struct._GList** %next64, align 8
  br label %cond.end.66

cond.false.65:                                    ; preds = %for.inc.61
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.65, %cond.true.63
  %cond67 = phi %struct._GList* [ %67, %cond.true.63 ], [ null, %cond.false.65 ]
  store %struct._GList* %cond67, %struct._GList** %list, align 8
  br label %for.cond.54

for.end.68:                                       ; preds = %for.cond.54
  %68 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call69 = call i32 @gimp_contexts_load(%struct._Gimp* %68, %struct._GError** %error)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %for.end.68
  %69 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %70 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %70, i32 0, i32 2
  %71 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %69, %struct._GObject* null, i32 1, i8* %71)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %for.end.68
  %72 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call73 = call %struct._GList* @gimp_get_tool_info_iter(%struct._Gimp* %72)
  store %struct._GList* %call73, %struct._GList** %list, align 8
  br label %for.cond.74

for.cond.74:                                      ; preds = %cond.end.117, %if.end.72
  %73 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool75 = icmp ne %struct._GList* %73, null
  br i1 %tobool75, label %for.body.76, label %for.end.119

for.body.76:                                      ; preds = %for.cond.74
  %74 = load %struct._GList*, %struct._GList** %list, align 8
  %data79 = getelementptr inbounds %struct._GList, %struct._GList* %74, i32 0, i32 0
  %75 = load i8*, i8** %data79, align 8
  %76 = bitcast i8* %75 to %struct._GTypeInstance*
  %call80 = call i64 @gimp_tool_info_get_type() #6
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call80)
  %77 = bitcast %struct._GTypeInstance* %call81 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %77, %struct._GimpToolInfo** %tool_info78, align 8
  %78 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call84 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %78)
  %79 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info78, align 8
  %tool_options85 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %79, i32 0, i32 12
  %80 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options85, align 8
  %81 = bitcast %struct._GimpToolOptions* %80 to %struct._GTypeInstance*
  %call86 = call i64 @gimp_context_get_type() #6
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call86)
  %82 = bitcast %struct._GTypeInstance* %call87 to %struct._GimpContext*
  %83 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info78, align 8
  %context_props = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %83, i32 0, i32 4
  %84 = load i32, i32* %context_props, align 4
  %or = or i32 %84, 16
  %or88 = or i32 %or, 32
  %neg = xor i32 %or88, -1
  %and = and i32 1015804, %neg
  call void @gimp_context_copy_properties(%struct._GimpContext* %call84, %struct._GimpContext* %82, i32 %and)
  %85 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info78, align 8
  %tool_options89 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %85, i32 0, i32 12
  %86 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options89, align 8
  %call90 = call i32 @gimp_tool_options_deserialize(%struct._GimpToolOptions* %86, %struct._GError** null)
  %87 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info78, align 8
  %88 = bitcast %struct._GimpToolInfo* %87 to %struct._GTypeInstance*
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 80)
  %89 = bitcast %struct._GTypeInstance* %call91 to %struct._GObject*
  %call92 = call i8* @g_object_get_data(%struct._GObject* %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  %90 = bitcast i8* %call92 to %struct._GtkWidget* (%struct._GimpToolOptions*)*
  store %struct._GtkWidget* (%struct._GimpToolOptions*)* %90, %struct._GtkWidget* (%struct._GimpToolOptions*)** %options_gui_func, align 8
  %91 = load %struct._GtkWidget* (%struct._GimpToolOptions*)*, %struct._GtkWidget* (%struct._GimpToolOptions*)** %options_gui_func, align 8
  %tobool93 = icmp ne %struct._GtkWidget* (%struct._GimpToolOptions*)* %91, null
  br i1 %tobool93, label %if.then.94, label %if.else.97

if.then.94:                                       ; preds = %for.body.76
  %92 = load %struct._GtkWidget* (%struct._GimpToolOptions*)*, %struct._GtkWidget* (%struct._GimpToolOptions*)** %options_gui_func, align 8
  %93 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info78, align 8
  %tool_options95 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %93, i32 0, i32 12
  %94 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options95, align 8
  %call96 = call %struct._GtkWidget* %92(%struct._GimpToolOptions* %94)
  store %struct._GtkWidget* %call96, %struct._GtkWidget** %options_gui, align 8
  br label %if.end.109

if.else.97:                                       ; preds = %for.body.76
  %95 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info78, align 8
  %tool_options99 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %95, i32 0, i32 12
  %96 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options99, align 8
  %call100 = call %struct._GtkWidget* @gimp_tool_options_gui(%struct._GimpToolOptions* %96)
  store %struct._GtkWidget* %call100, %struct._GtkWidget** %options_gui, align 8
  %call101 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0)) #2
  %call102 = call %struct._GtkWidget* @gtk_label_new(i8* %call101)
  store %struct._GtkWidget* %call102, %struct._GtkWidget** %label, align 8
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call103 = call i64 @gtk_label_get_type() #6
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call103)
  %99 = bitcast %struct._GTypeInstance* %call104 to %struct._GtkLabel*
  call void @gtk_label_set_justify(%struct._GtkLabel* %99, i32 2)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_label_get_type() #6
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call105)
  %102 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %102, i32 3, i32 2, i32 -1)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %options_gui, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call107 = call i64 @gtk_box_get_type() #6
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call107)
  %105 = bitcast %struct._GTypeInstance* %call108 to %struct._GtkBox*
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %105, %struct._GtkWidget* %106, i32 0, i32 0, i32 6)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %107)
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.97, %if.then.94
  %108 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info78, align 8
  %tool_options110 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %108, i32 0, i32 12
  %109 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options110, align 8
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %options_gui, align 8
  %111 = bitcast %struct._GtkWidget* %110 to i8*
  %call111 = call i8* @g_object_ref_sink(i8* %111)
  %112 = bitcast i8* %call111 to %struct._GtkWidget*
  call void @gimp_tools_set_tool_options_gui(%struct._GimpToolOptions* %109, %struct._GtkWidget* %112)
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.109
  %113 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool113 = icmp ne %struct._GList* %113, null
  br i1 %tobool113, label %cond.true.114, label %cond.false.116

cond.true.114:                                    ; preds = %for.inc.112
  %114 = load %struct._GList*, %struct._GList** %list, align 8
  %next115 = getelementptr inbounds %struct._GList, %struct._GList* %114, i32 0, i32 1
  %115 = load %struct._GList*, %struct._GList** %next115, align 8
  br label %cond.end.117

cond.false.116:                                   ; preds = %for.inc.112
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.116, %cond.true.114
  %cond118 = phi %struct._GList* [ %115, %cond.true.114 ], [ null, %cond.false.116 ]
  store %struct._GList* %cond118, %struct._GList** %list, align 8
  br label %for.cond.74

for.end.119:                                      ; preds = %if.else.9, %for.cond.74
  ret void
}

declare %struct._GimpContainer* @gimp_list_new(i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_info_get_type() #3

declare noalias i8* @gimp_personal_rc_file(i8*) #1

declare void @g_print(i8*, ...) #1

declare i8* @gimp_filename_to_utf8(i8*) #1

declare i32 @gimp_config_deserialize_file(%struct._GimpConfig*, i8*, i8*, %struct._GError**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #3

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #1

declare void @gimp_list_reverse(%struct._GimpList*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #3

declare %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer*, i8*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare i32 @gimp_container_reorder(%struct._GimpContainer*, %struct._GimpObject*, i32) #1

declare void @g_object_unref(i8*) #1

declare void @gimp_tool_options_reset(%struct._GimpToolOptions*) #1

declare i32 @gimp_contexts_load(%struct._Gimp*, %struct._GError**) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare void @g_clear_error(%struct._GError**) #1

declare void @gimp_context_copy_properties(%struct._GimpContext*, %struct._GimpContext*, i32) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #3

declare i32 @gimp_tool_options_deserialize(%struct._GimpToolOptions*, %struct._GError**) #1

declare %struct._GtkWidget* @gimp_tool_options_gui(%struct._GimpToolOptions*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @gtk_label_set_justify(%struct._GtkLabel*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i8* @g_object_ref_sink(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_tools_save(%struct._Gimp* %gimp, i32 %save_tool_options, i32 %always_save) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %save_tool_options.addr = alloca i32, align 4
  %always_save.addr = alloca i32, align 4
  %filename = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %error = alloca %struct._GError*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %save_tool_options, i32* %save_tool_options.addr, align 4
  store i32 %always_save, i32* %always_save.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_tools_save, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %save_tool_options.addr, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.29

land.lhs.true.12:                                 ; preds = %do.end
  %14 = load i32, i32* @tool_options_deleted, align 4
  %tobool13 = icmp ne i32 %14, 0
  br i1 %tobool13, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %land.lhs.true.12
  %15 = load i32, i32* %always_save.addr, align 4
  %tobool14 = icmp ne i32 %15, 0
  br i1 %tobool14, label %if.then.15, label %if.end.29

if.then.15:                                       ; preds = %lor.lhs.false, %land.lhs.true.12
  store %struct._GError* null, %struct._GError** %error, align 8
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call18 = call i32 @gimp_contexts_save(%struct._Gimp* %16, %struct._GError** %error)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.then.15
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %18, i32 0, i32 2
  %19 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %17, %struct._GObject* null, i32 1, i8* %19)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.then.15
  call void @gimp_tool_options_create_folder()
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call22 = call %struct._GList* @gimp_get_tool_info_iter(%struct._Gimp* %20)
  store %struct._GList* %call22, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.21
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool23 = icmp ne %struct._GList* %21, null
  br i1 %tobool23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8
  %24 = bitcast i8* %23 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_tool_info_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call25)
  %25 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %25, %struct._GimpToolInfo** %tool_info, align 8
  %26 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %26, i32 0, i32 12
  %27 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %call27 = call i32 @gimp_tool_options_serialize(%struct._GimpToolOptions* %27, %struct._GError** null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool28 = icmp ne %struct._GList* %28, null
  br i1 %tobool28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 1
  %30 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %30, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.29

if.end.29:                                        ; preds = %for.end, %lor.lhs.false, %do.end
  %call30 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  store i8* %call30, i8** %filename, align 8
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %31, i32 0, i32 4
  %32 = load i32, i32* %be_verbose, align 4
  %tobool31 = icmp ne i32 %32, 0
  br i1 %tobool31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.29
  %33 = load i8*, i8** %filename, align 8
  %call33 = call i8* @gimp_filename_to_utf8(i8* %33)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* %call33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.29
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tool_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %34, i32 0, i32 45
  %35 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list, align 8
  %36 = bitcast %struct._GimpContainer* %35 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_config_interface_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call35)
  %37 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpConfig*
  %38 = load i8*, i8** %filename, align 8
  %call37 = call i32 @gimp_config_serialize_to_file(%struct._GimpConfig* %37, i8* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* null, %struct._GError** null)
  %39 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %39)
  br label %return

return:                                           ; preds = %if.end.34, %if.else.9
  ret void
}

declare i32 @gimp_contexts_save(%struct._Gimp*, %struct._GError**) #1

declare i32 @gimp_tool_options_serialize(%struct._GimpToolOptions*, %struct._GError**) #1

declare i32 @gimp_config_serialize_to_file(%struct._GimpConfig*, i8*, i8*, i8*, i8*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_tools_clear(%struct._Gimp* %gimp, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %list = alloca %struct._GList*, align 8
  %success = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_tools_clear, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GList* @gimp_get_tool_info_iter(%struct._Gimp* %13)
  store %struct._GList* %call11, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool12 = icmp ne %struct._GList* %14, null
  br i1 %tobool12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %15 = load i32, i32* %success, align 4
  %tobool13 = icmp ne i32 %15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %16 = phi i1 [ false, %for.cond ], [ %tobool13, %land.rhs ]
  br i1 %16, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_tool_info_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call15)
  %20 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %20, %struct._GimpToolInfo** %tool_info, align 8
  %21 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %21, i32 0, i32 12
  %22 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %call17 = call i32 @gimp_tool_options_delete(%struct._GimpToolOptions* %22, %struct._GError** null)
  store i32 %call17, i32* %success, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool18 = icmp ne %struct._GList* %23, null
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 1
  %25 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %25, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %26 = load i32, i32* %success, align 4
  %tobool19 = icmp ne i32 %26, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %for.end
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call21 = call i32 @gimp_contexts_clear(%struct._Gimp* %27, %struct._GError** %28)
  store i32 %call21, i32* %success, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %for.end
  %29 = load i32, i32* %success, align 4
  %tobool23 = icmp ne i32 %29, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  store i32 1, i32* @tool_options_deleted, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.22
  %30 = load i32, i32* %success, align 4
  store i32 %30, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.else.9
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i32 @gimp_tool_options_delete(%struct._GimpToolOptions*, %struct._GError**) #1

declare i32 @gimp_contexts_clear(%struct._Gimp*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_tools_get_default_order(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_tools_get_default_order, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %14 = bitcast %struct._Gimp* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %call12 = call i8* @g_object_get_data(%struct._GObject* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0))
  %16 = bitcast i8* %call12 to %struct._GList*
  store %struct._GList* %16, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %17
}

declare i32 @g_type_is_a(i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_options_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_pencil_tool_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_paintbrush_tool_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_eraser_tool_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_airbrush_tool_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_clone_tool_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_heal_tool_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_perspective_clone_tool_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_convolve_tool_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_smudge_tool_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_dodge_burn_tool_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_ink_tool_get_type() #3

declare %struct._GimpToolInfo* @gimp_tool_info_new(%struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_tool_get_type() #3

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #3

declare void @gimp_tool_info_set_standard(%struct._Gimp*, %struct._GimpToolInfo*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
