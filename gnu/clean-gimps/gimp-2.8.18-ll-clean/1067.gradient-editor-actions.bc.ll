; ModuleID = './app/actions/gradient-editor-actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i8* }
%struct._GimpToggleActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i32, i8* }
%struct._GimpEnumActionEntry = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i8* }
%struct._GimpRadioActionEntry = type { i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionGroupPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GimpGradientEditor = type { %struct._GimpDataEditor, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, %struct._GtkAdjustment*, %struct._GtkWidget*, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, %struct._GimpGradientSegment*, i32, i32, i32, i32, double, double, i32, i32, [10 x %struct._GimpRGB], %struct._GimpGradientSegment*, i32, %struct._GimpGradientSegment*, i32 }
%struct._GimpDataEditor = type { %struct._GimpEditor, %struct._GimpDataFactory*, %struct._GimpContext*, i32, %struct._GimpData*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GimpEditorPrivate = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@.str = private unnamed_addr constant [23 x i8] c"gradient-editor-action\00", align 1
@gradient_editor_actions = internal constant [20 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.109, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.110, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.111, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.112, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.115, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.118, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.119, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.120, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.122, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.124, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.71, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.125, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.73, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.126, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.127, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @gradient_editor_left_color_cmd_callback to void ()*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.128, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.129, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @gradient_editor_right_color_cmd_callback to void ()*), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.130, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @gradient_editor_flip_cmd_callback to void ()*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.133, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @gradient_editor_replicate_cmd_callback to void ()*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.133, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.66, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.136, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @gradient_editor_split_midpoint_cmd_callback to void ()*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.137, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.67, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.138, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @gradient_editor_split_uniformly_cmd_callback to void ()*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.139, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.142, i32 0, i32 0), i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @gradient_editor_delete_cmd_callback to void ()*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.143, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.144, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @gradient_editor_recenter_cmd_callback to void ()*), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.145, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.70, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.146, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @gradient_editor_redistribute_cmd_callback to void ()*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.147, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.101, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.148, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @gradient_editor_blend_color_cmd_callback to void ()*), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.149, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.102, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.150, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @gradient_editor_blend_opacity_cmd_callback to void ()*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.151, i32 0, i32 0) }], align 16
@gradient_editor_toggle_actions = internal constant [1 x %struct._GimpToggleActionEntry] [%struct._GimpToggleActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.153, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @data_editor_edit_active_cmd_callback to void ()*), i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.154, i32 0, i32 0) }], align 16
@gradient_editor_load_left_actions = internal constant [14 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.155, i32 0, i32 0), i8* null, i8* null, i32 0, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.157, i32 0, i32 0), i8* null, i8* null, i32 1, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.158, i32 0, i32 0), i8* null, i8* null, i32 2, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.159, i32 0, i32 0), i8* null, i8* null, i32 3, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i32 0, i32 0), i8* null, i8* null, i32 4, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.161, i32 0, i32 0), i8* null, i8* null, i32 5, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.162, i32 0, i32 0), i8* null, i8* null, i32 6, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), i8* null, i8* null, i32 7, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i32 0, i32 0), i8* null, i8* null, i32 8, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.165, i32 0, i32 0), i8* null, i8* null, i32 9, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i32 0, i32 0), i8* null, i8* null, i32 10, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.167, i32 0, i32 0), i8* null, i8* null, i32 11, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.168, i32 0, i32 0), i8* null, i8* null, i32 12, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.169, i32 0, i32 0), i8* null, i8* null, i32 13, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.156, i32 0, i32 0) }], align 16
@gradient_editor_save_left_actions = internal constant [10 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i32 0, i32 0), i8* null, i8* null, i32 0, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.170, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.161, i32 0, i32 0), i8* null, i8* null, i32 1, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.170, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.162, i32 0, i32 0), i8* null, i8* null, i32 2, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.170, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), i8* null, i8* null, i32 3, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.170, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i32 0, i32 0), i8* null, i8* null, i32 4, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.170, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.165, i32 0, i32 0), i8* null, i8* null, i32 5, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.170, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i32 0, i32 0), i8* null, i8* null, i32 6, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.170, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.167, i32 0, i32 0), i8* null, i8* null, i32 7, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.170, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.168, i32 0, i32 0), i8* null, i8* null, i32 8, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.170, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.169, i32 0, i32 0), i8* null, i8* null, i32 9, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.170, i32 0, i32 0) }], align 16
@gradient_editor_load_right_actions = internal constant [14 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.40, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i32 0, i32 0), i8* null, i8* null, i32 0, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.172, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.41, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.173, i32 0, i32 0), i8* null, i8* null, i32 1, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.172, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.158, i32 0, i32 0), i8* null, i8* null, i32 2, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.172, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.159, i32 0, i32 0), i8* null, i8* null, i32 3, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.172, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i32 0, i32 0), i8* null, i8* null, i32 4, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.172, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.45, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.161, i32 0, i32 0), i8* null, i8* null, i32 5, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.172, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.46, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.162, i32 0, i32 0), i8* null, i8* null, i32 6, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.172, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), i8* null, i8* null, i32 7, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.172, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.48, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i32 0, i32 0), i8* null, i8* null, i32 8, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.172, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.49, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.165, i32 0, i32 0), i8* null, i8* null, i32 9, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.172, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i32 0, i32 0), i8* null, i8* null, i32 10, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.172, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.167, i32 0, i32 0), i8* null, i8* null, i32 11, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.172, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.168, i32 0, i32 0), i8* null, i8* null, i32 12, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.172, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.53, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.169, i32 0, i32 0), i8* null, i8* null, i32 13, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.172, i32 0, i32 0) }], align 16
@gradient_editor_save_right_actions = internal constant [10 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i32 0, i32 0), i8* null, i8* null, i32 0, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.174, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.161, i32 0, i32 0), i8* null, i8* null, i32 1, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.174, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.56, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.162, i32 0, i32 0), i8* null, i8* null, i32 2, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.174, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.57, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), i8* null, i8* null, i32 3, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.174, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.58, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i32 0, i32 0), i8* null, i8* null, i32 4, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.174, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.165, i32 0, i32 0), i8* null, i8* null, i32 5, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.174, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i32 0, i32 0), i8* null, i8* null, i32 6, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.174, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.61, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.167, i32 0, i32 0), i8* null, i8* null, i32 7, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.174, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.62, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.168, i32 0, i32 0), i8* null, i8* null, i32 8, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.174, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.169, i32 0, i32 0), i8* null, i8* null, i32 9, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.174, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [27 x i8] c"gradient-editor-color-type\00", align 1
@gradient_editor_left_color_type_actions = internal constant [5 x %struct._GimpRadioActionEntry] [%struct._GimpRadioActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.175, i32 0, i32 0), i8* null, i8* null, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.128, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.176, i32 0, i32 0), i8* null, i8* null, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.128, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.177, i32 0, i32 0), i8* null, i8* null, i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.128, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.159, i32 0, i32 0), i8* null, i8* null, i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.128, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.178, i32 0, i32 0), i8* null, i8* null, i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.128, i32 0, i32 0) }], align 16
@gradient_editor_right_color_type_actions = internal constant [5 x %struct._GimpRadioActionEntry] [%struct._GimpRadioActionEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.175, i32 0, i32 0), i8* null, i8* null, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.130, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.176, i32 0, i32 0), i8* null, i8* null, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.130, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.177, i32 0, i32 0), i8* null, i8* null, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.130, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.159, i32 0, i32 0), i8* null, i8* null, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.130, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.178, i32 0, i32 0), i8* null, i8* null, i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.130, i32 0, i32 0) }], align 16
@.str.2 = private unnamed_addr constant [25 x i8] c"gradient-editor-blending\00", align 1
@gradient_editor_blending_actions = internal constant [6 x %struct._GimpRadioActionEntry] [%struct._GimpRadioActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.92, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.179, i32 0, i32 0), i8* null, i8* null, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.180, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.93, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.181, i32 0, i32 0), i8* null, i8* null, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.180, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.94, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.182, i32 0, i32 0), i8* null, i8* null, i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.180, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.183, i32 0, i32 0), i8* null, i8* null, i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.180, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.96, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.184, i32 0, i32 0), i8* null, i8* null, i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.180, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.91, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.185, i32 0, i32 0), i8* null, i8* null, i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.180, i32 0, i32 0) }], align 16
@.str.3 = private unnamed_addr constant [25 x i8] c"gradient-editor-coloring\00", align 1
@gradient_editor_coloring_actions = internal constant [4 x %struct._GimpRadioActionEntry] [%struct._GimpRadioActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.98, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.186, i32 0, i32 0), i8* null, i8* null, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.187, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.99, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.188, i32 0, i32 0), i8* null, i8* null, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.187, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.100, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.189, i32 0, i32 0), i8* null, i8* null, i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.187, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.97, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.185, i32 0, i32 0), i8* null, i8* null, i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.187, i32 0, i32 0) }], align 16
@gradient_editor_zoom_actions = internal constant [3 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.191, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.192, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.193, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.195, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.196, i32 0, i32 0), i32 1, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.197, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.199, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.200, i32 0, i32 0), i32 5, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.201, i32 0, i32 0) }], align 16
@.str.4 = private unnamed_addr constant [33 x i8] c"gradient-editor-left-color-fixed\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"gradient-editor-left-color-foreground\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"gradient-editor-left-color-foreground-transparent\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"gradient-editor-left-color-background\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"gradient-editor-left-color-background-transparent\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"gradient-editor-left-color\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"gradient-editor-load-left-left-neighbor\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"gradient-editor-load-left-right-endpoint\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"gradient-editor-load-left-fg\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"gradient-editor-load-left-bg\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"gradient-editor-load-left-01\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"gradient-editor-load-left-02\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"gradient-editor-load-left-03\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"gradient-editor-load-left-04\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"gradient-editor-load-left-05\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"gradient-editor-load-left-06\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"gradient-editor-load-left-07\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"gradient-editor-load-left-08\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"gradient-editor-load-left-09\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"gradient-editor-load-left-10\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"gradient-editor-save-left-01\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"gradient-editor-save-left-02\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"gradient-editor-save-left-03\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"gradient-editor-save-left-04\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"gradient-editor-save-left-05\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"gradient-editor-save-left-06\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"gradient-editor-save-left-07\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"gradient-editor-save-left-08\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"gradient-editor-save-left-09\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"gradient-editor-save-left-10\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"gradient-editor-right-color-fixed\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"gradient-editor-right-color-foreground\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"gradient-editor-right-color-foreground-transparent\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c"gradient-editor-right-color-background\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"gradient-editor-right-color-background-transparent\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"gradient-editor-right-color\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"gradient-editor-load-right-right-neighbor\00", align 1
@.str.41 = private unnamed_addr constant [41 x i8] c"gradient-editor-load-right-left-endpoint\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"gradient-editor-load-right-fg\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"gradient-editor-load-right-bg\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"gradient-editor-load-right-01\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"gradient-editor-load-right-02\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"gradient-editor-load-right-03\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"gradient-editor-load-right-04\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"gradient-editor-load-right-05\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"gradient-editor-load-right-06\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"gradient-editor-load-right-07\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"gradient-editor-load-right-08\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"gradient-editor-load-right-09\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"gradient-editor-load-right-10\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"gradient-editor-save-right-01\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"gradient-editor-save-right-02\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"gradient-editor-save-right-03\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"gradient-editor-save-right-04\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"gradient-editor-save-right-05\00", align 1
@.str.59 = private unnamed_addr constant [30 x i8] c"gradient-editor-save-right-06\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"gradient-editor-save-right-07\00", align 1
@.str.61 = private unnamed_addr constant [30 x i8] c"gradient-editor-save-right-08\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"gradient-editor-save-right-09\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"gradient-editor-save-right-10\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"gradient-editor-flip\00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"gradient-editor-replicate\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"gradient-editor-split-midpoint\00", align 1
@.str.67 = private unnamed_addr constant [30 x i8] c"gradient-editor-split-uniform\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"gradient-editor-delete\00", align 1
@.str.69 = private unnamed_addr constant [25 x i8] c"gradient-editor-recenter\00", align 1
@.str.70 = private unnamed_addr constant [29 x i8] c"gradient-editor-redistribute\00", align 1
@.str.71 = private unnamed_addr constant [30 x i8] c"gradient-editor-blending-func\00", align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"_Blending Function for Segment\00", align 1
@.str.73 = private unnamed_addr constant [30 x i8] c"gradient-editor-coloring-type\00", align 1
@.str.74 = private unnamed_addr constant [27 x i8] c"Coloring _Type for Segment\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"_Flip Segment\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"_Replicate Segment...\00", align 1
@.str.77 = private unnamed_addr constant [27 x i8] c"Split Segment at _Midpoint\00", align 1
@.str.78 = private unnamed_addr constant [28 x i8] c"Split Segment _Uniformly...\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"_Delete Segment\00", align 1
@.str.80 = private unnamed_addr constant [30 x i8] c"Re-_center Segment's Midpoint\00", align 1
@.str.81 = private unnamed_addr constant [34 x i8] c"Re-distribute _Handles in Segment\00", align 1
@.str.82 = private unnamed_addr constant [33 x i8] c"_Blending Function for Selection\00", align 1
@.str.83 = private unnamed_addr constant [29 x i8] c"Coloring _Type for Selection\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"_Flip Selection\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"_Replicate Selection...\00", align 1
@.str.86 = private unnamed_addr constant [29 x i8] c"Split Segments at _Midpoints\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"Split Segments _Uniformly...\00", align 1
@.str.88 = private unnamed_addr constant [18 x i8] c"_Delete Selection\00", align 1
@.str.89 = private unnamed_addr constant [34 x i8] c"Re-_center Midpoints in Selection\00", align 1
@.str.90 = private unnamed_addr constant [36 x i8] c"Re-distribute _Handles in Selection\00", align 1
@.str.91 = private unnamed_addr constant [32 x i8] c"gradient-editor-blending-varies\00", align 1
@.str.92 = private unnamed_addr constant [32 x i8] c"gradient-editor-blending-linear\00", align 1
@.str.93 = private unnamed_addr constant [32 x i8] c"gradient-editor-blending-curved\00", align 1
@.str.94 = private unnamed_addr constant [30 x i8] c"gradient-editor-blending-sine\00", align 1
@.str.95 = private unnamed_addr constant [43 x i8] c"gradient-editor-blending-sphere-increasing\00", align 1
@.str.96 = private unnamed_addr constant [43 x i8] c"gradient-editor-blending-sphere-decreasing\00", align 1
@.str.97 = private unnamed_addr constant [32 x i8] c"gradient-editor-coloring-varies\00", align 1
@.str.98 = private unnamed_addr constant [29 x i8] c"gradient-editor-coloring-rgb\00", align 1
@.str.99 = private unnamed_addr constant [33 x i8] c"gradient-editor-coloring-hsv-ccw\00", align 1
@.str.100 = private unnamed_addr constant [32 x i8] c"gradient-editor-coloring-hsv-cw\00", align 1
@.str.101 = private unnamed_addr constant [28 x i8] c"gradient-editor-blend-color\00", align 1
@.str.102 = private unnamed_addr constant [30 x i8] c"gradient-editor-blend-opacity\00", align 1
@.str.103 = private unnamed_addr constant [25 x i8] c"gradient-editor-zoom-out\00", align 1
@.str.104 = private unnamed_addr constant [24 x i8] c"gradient-editor-zoom-in\00", align 1
@.str.105 = private unnamed_addr constant [25 x i8] c"gradient-editor-zoom-all\00", align 1
@.str.106 = private unnamed_addr constant [28 x i8] c"gradient-editor-edit-active\00", align 1
@.str.107 = private unnamed_addr constant [22 x i8] c"gradient-editor-popup\00", align 1
@.str.108 = private unnamed_addr constant [16 x i8] c"gimp-tool-blend\00", align 1
@.str.109 = private unnamed_addr constant [21 x i8] c"Gradient Editor Menu\00", align 1
@.str.110 = private unnamed_addr constant [28 x i8] c"gimp-gradient-editor-dialog\00", align 1
@.str.111 = private unnamed_addr constant [32 x i8] c"gradient-editor-left-color-type\00", align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"Left Color Type\00", align 1
@.str.113 = private unnamed_addr constant [32 x i8] c"gradient-editor-load-left-color\00", align 1
@.str.114 = private unnamed_addr constant [20 x i8] c"gtk-revert-to-saved\00", align 1
@.str.115 = private unnamed_addr constant [22 x i8] c"_Load Left Color From\00", align 1
@.str.116 = private unnamed_addr constant [32 x i8] c"gradient-editor-save-left-color\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.118 = private unnamed_addr constant [20 x i8] c"_Save Left Color To\00", align 1
@.str.119 = private unnamed_addr constant [33 x i8] c"gradient-editor-right-color-type\00", align 1
@.str.120 = private unnamed_addr constant [17 x i8] c"Right Color Type\00", align 1
@.str.121 = private unnamed_addr constant [33 x i8] c"gradient-editor-load-right-color\00", align 1
@.str.122 = private unnamed_addr constant [23 x i8] c"Load Right Color Fr_om\00", align 1
@.str.123 = private unnamed_addr constant [33 x i8] c"gradient-editor-save-right-color\00", align 1
@.str.124 = private unnamed_addr constant [21 x i8] c"Sa_ve Right Color To\00", align 1
@.str.125 = private unnamed_addr constant [18 x i8] c"blending-function\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"coloring-type\00", align 1
@.str.127 = private unnamed_addr constant [26 x i8] c"L_eft Endpoint's Color...\00", align 1
@.str.128 = private unnamed_addr constant [32 x i8] c"gimp-gradient-editor-left-color\00", align 1
@.str.129 = private unnamed_addr constant [27 x i8] c"R_ight Endpoint's Color...\00", align 1
@.str.130 = private unnamed_addr constant [33 x i8] c"gimp-gradient-editor-right-color\00", align 1
@.str.131 = private unnamed_addr constant [21 x i8] c"gimp-flip-horizontal\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"flip\00", align 1
@.str.133 = private unnamed_addr constant [26 x i8] c"gimp-gradient-editor-flip\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"gimp-duplicate\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"replicate\00", align 1
@.str.136 = private unnamed_addr constant [14 x i8] c"splitmidpoint\00", align 1
@.str.137 = private unnamed_addr constant [36 x i8] c"gimp-gradient-editor-split-midpoint\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"splituniform\00", align 1
@.str.139 = private unnamed_addr constant [35 x i8] c"gimp-gradient-editor-split-uniform\00", align 1
@.str.140 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.141 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.142 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.143 = private unnamed_addr constant [28 x i8] c"gimp-gradient-editor-delete\00", align 1
@.str.144 = private unnamed_addr constant [9 x i8] c"recenter\00", align 1
@.str.145 = private unnamed_addr constant [30 x i8] c"gimp-gradient-editor-recenter\00", align 1
@.str.146 = private unnamed_addr constant [13 x i8] c"redistribute\00", align 1
@.str.147 = private unnamed_addr constant [34 x i8] c"gimp-gradient-editor-redistribute\00", align 1
@.str.148 = private unnamed_addr constant [25 x i8] c"Ble_nd Endpoints' Colors\00", align 1
@.str.149 = private unnamed_addr constant [33 x i8] c"gimp-gradient-editor-blend-color\00", align 1
@.str.150 = private unnamed_addr constant [26 x i8] c"Blend Endpoints' Opacit_y\00", align 1
@.str.151 = private unnamed_addr constant [35 x i8] c"gimp-gradient-editor-blend-opacity\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"gimp-linked\00", align 1
@.str.153 = private unnamed_addr constant [21 x i8] c"Edit Active Gradient\00", align 1
@.str.154 = private unnamed_addr constant [33 x i8] c"gimp-gradient-editor-edit-active\00", align 1
@.str.155 = private unnamed_addr constant [32 x i8] c"_Left Neighbor's Right Endpoint\00", align 1
@.str.156 = private unnamed_addr constant [31 x i8] c"gimp-gradient-editor-left-load\00", align 1
@.str.157 = private unnamed_addr constant [16 x i8] c"_Right Endpoint\00", align 1
@.str.158 = private unnamed_addr constant [18 x i8] c"_Foreground Color\00", align 1
@.str.159 = private unnamed_addr constant [18 x i8] c"_Background Color\00", align 1
@.str.160 = private unnamed_addr constant [3 x i8] c"01\00", align 1
@.str.161 = private unnamed_addr constant [3 x i8] c"02\00", align 1
@.str.162 = private unnamed_addr constant [3 x i8] c"03\00", align 1
@.str.163 = private unnamed_addr constant [3 x i8] c"04\00", align 1
@.str.164 = private unnamed_addr constant [3 x i8] c"05\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c"06\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c"07\00", align 1
@.str.167 = private unnamed_addr constant [3 x i8] c"08\00", align 1
@.str.168 = private unnamed_addr constant [3 x i8] c"09\00", align 1
@.str.169 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.170 = private unnamed_addr constant [31 x i8] c"gimp-gradient-editor-left-save\00", align 1
@.str.171 = private unnamed_addr constant [32 x i8] c"_Right Neighbor's Left Endpoint\00", align 1
@.str.172 = private unnamed_addr constant [32 x i8] c"gimp-gradient-editor-right-load\00", align 1
@.str.173 = private unnamed_addr constant [15 x i8] c"_Left Endpoint\00", align 1
@.str.174 = private unnamed_addr constant [32 x i8] c"gimp-gradient-editor-right-save\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"_Fixed\00", align 1
@.str.176 = private unnamed_addr constant [18 x i8] c"F_oreground Color\00", align 1
@.str.177 = private unnamed_addr constant [32 x i8] c"Fo_reground Color (Transparent)\00", align 1
@.str.178 = private unnamed_addr constant [32 x i8] c"B_ackground Color (Transparent)\00", align 1
@.str.179 = private unnamed_addr constant [8 x i8] c"_Linear\00", align 1
@.str.180 = private unnamed_addr constant [30 x i8] c"gimp-gradient-editor-blending\00", align 1
@.str.181 = private unnamed_addr constant [8 x i8] c"_Curved\00", align 1
@.str.182 = private unnamed_addr constant [12 x i8] c"_Sinusoidal\00", align 1
@.str.183 = private unnamed_addr constant [24 x i8] c"Spherical (i_ncreasing)\00", align 1
@.str.184 = private unnamed_addr constant [24 x i8] c"Spherical (_decreasing)\00", align 1
@.str.185 = private unnamed_addr constant [9 x i8] c"(Varies)\00", align 1
@.str.186 = private unnamed_addr constant [5 x i8] c"_RGB\00", align 1
@.str.187 = private unnamed_addr constant [30 x i8] c"gimp-gradient-editor-coloring\00", align 1
@.str.188 = private unnamed_addr constant [29 x i8] c"HSV (_counter-clockwise hue)\00", align 1
@.str.189 = private unnamed_addr constant [21 x i8] c"HSV (clockwise _hue)\00", align 1
@.str.190 = private unnamed_addr constant [12 x i8] c"gtk-zoom-in\00", align 1
@.str.191 = private unnamed_addr constant [8 x i8] c"Zoom In\00", align 1
@.str.192 = private unnamed_addr constant [8 x i8] c"Zoom in\00", align 1
@.str.193 = private unnamed_addr constant [29 x i8] c"gimp-gradient-editor-zoom-in\00", align 1
@.str.194 = private unnamed_addr constant [13 x i8] c"gtk-zoom-out\00", align 1
@.str.195 = private unnamed_addr constant [9 x i8] c"Zoom Out\00", align 1
@.str.196 = private unnamed_addr constant [9 x i8] c"Zoom out\00", align 1
@.str.197 = private unnamed_addr constant [30 x i8] c"gimp-gradient-editor-zoom-out\00", align 1
@.str.198 = private unnamed_addr constant [13 x i8] c"gtk-zoom-fit\00", align 1
@.str.199 = private unnamed_addr constant [9 x i8] c"Zoom All\00", align 1
@.str.200 = private unnamed_addr constant [9 x i8] c"Zoom all\00", align 1
@.str.201 = private unnamed_addr constant [30 x i8] c"gimp-gradient-editor-zoom-all\00", align 1

; Function Attrs: nounwind uwtable
define void @gradient_editor_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([20 x %struct._GimpActionEntry], [20 x %struct._GimpActionEntry]* @gradient_editor_actions, i32 0, i32 0), i32 20)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), %struct._GimpToggleActionEntry* getelementptr inbounds ([1 x %struct._GimpToggleActionEntry], [1 x %struct._GimpToggleActionEntry]* @gradient_editor_toggle_actions, i32 0, i32 0), i32 1)
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([14 x %struct._GimpEnumActionEntry], [14 x %struct._GimpEnumActionEntry]* @gradient_editor_load_left_actions, i32 0, i32 0), i32 14, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @gradient_editor_load_left_cmd_callback to void ()*))
  %3 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([10 x %struct._GimpEnumActionEntry], [10 x %struct._GimpEnumActionEntry]* @gradient_editor_save_left_actions, i32 0, i32 0), i32 10, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @gradient_editor_save_left_cmd_callback to void ()*))
  %4 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([14 x %struct._GimpEnumActionEntry], [14 x %struct._GimpEnumActionEntry]* @gradient_editor_load_right_actions, i32 0, i32 0), i32 14, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @gradient_editor_load_right_cmd_callback to void ()*))
  %5 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([10 x %struct._GimpEnumActionEntry], [10 x %struct._GimpEnumActionEntry]* @gradient_editor_save_right_actions, i32 0, i32 0), i32 10, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @gradient_editor_save_right_cmd_callback to void ()*))
  %6 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call = call %struct._GSList* @gimp_action_group_add_radio_actions(%struct._GimpActionGroup* %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), %struct._GimpRadioActionEntry* getelementptr inbounds ([5 x %struct._GimpRadioActionEntry], [5 x %struct._GimpRadioActionEntry]* @gradient_editor_left_color_type_actions, i32 0, i32 0), i32 5, %struct._GSList* null, i32 0, void ()* bitcast (void (%struct._GtkAction*, %struct._GtkAction*, i8*)* @gradient_editor_left_color_type_cmd_callback to void ()*))
  %7 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call1 = call %struct._GSList* @gimp_action_group_add_radio_actions(%struct._GimpActionGroup* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), %struct._GimpRadioActionEntry* getelementptr inbounds ([5 x %struct._GimpRadioActionEntry], [5 x %struct._GimpRadioActionEntry]* @gradient_editor_right_color_type_actions, i32 0, i32 0), i32 5, %struct._GSList* null, i32 0, void ()* bitcast (void (%struct._GtkAction*, %struct._GtkAction*, i8*)* @gradient_editor_right_color_type_cmd_callback to void ()*))
  %8 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call2 = call %struct._GSList* @gimp_action_group_add_radio_actions(%struct._GimpActionGroup* %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), %struct._GimpRadioActionEntry* getelementptr inbounds ([6 x %struct._GimpRadioActionEntry], [6 x %struct._GimpRadioActionEntry]* @gradient_editor_blending_actions, i32 0, i32 0), i32 6, %struct._GSList* null, i32 0, void ()* bitcast (void (%struct._GtkAction*, %struct._GtkAction*, i8*)* @gradient_editor_blending_func_cmd_callback to void ()*))
  %9 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call3 = call %struct._GSList* @gimp_action_group_add_radio_actions(%struct._GimpActionGroup* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), %struct._GimpRadioActionEntry* getelementptr inbounds ([4 x %struct._GimpRadioActionEntry], [4 x %struct._GimpRadioActionEntry]* @gradient_editor_coloring_actions, i32 0, i32 0), i32 4, %struct._GSList* null, i32 0, void ()* bitcast (void (%struct._GtkAction*, %struct._GtkAction*, i8*)* @gradient_editor_coloring_type_cmd_callback to void ()*))
  %10 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %10, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([3 x %struct._GimpEnumActionEntry], [3 x %struct._GimpEnumActionEntry]* @gradient_editor_zoom_actions, i32 0, i32 0), i32 3, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @gradient_editor_zoom_cmd_callback to void ()*))
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup*, i8*, %struct._GimpToggleActionEntry*, i32) #1

declare void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup*, i8*, %struct._GimpEnumActionEntry*, i32, void ()*) #1

declare void @gradient_editor_load_left_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @gradient_editor_save_left_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @gradient_editor_load_right_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @gradient_editor_save_right_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare %struct._GSList* @gimp_action_group_add_radio_actions(%struct._GimpActionGroup*, i8*, %struct._GimpRadioActionEntry*, i32, %struct._GSList*, i32, void ()*) #1

declare void @gradient_editor_left_color_type_cmd_callback(%struct._GtkAction*, %struct._GtkAction*, i8*) #1

declare void @gradient_editor_right_color_type_cmd_callback(%struct._GtkAction*, %struct._GtkAction*, i8*) #1

declare void @gradient_editor_blending_func_cmd_callback(%struct._GtkAction*, %struct._GtkAction*, i8*) #1

declare void @gradient_editor_coloring_type_cmd_callback(%struct._GtkAction*, %struct._GtkAction*, i8*) #1

declare void @gradient_editor_zoom_cmd_callback(%struct._GtkAction*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define void @gradient_editor_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpGradientEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %editable = alloca i32, align 4
  %left_color = alloca %struct._GimpRGB, align 8
  %right_color = alloca %struct._GimpRGB, align 8
  %left_seg_color = alloca %struct._GimpRGB, align 8
  %right_seg_color = alloca %struct._GimpRGB, align 8
  %fg = alloca %struct._GimpRGB, align 8
  %bg = alloca %struct._GimpRGB, align 8
  %blending_equal = alloca i32, align 4
  %coloring_equal = alloca i32, align 4
  %left_editable = alloca i32, align 4
  %right_editable = alloca i32, align 4
  %selection = alloca i32, align 4
  %delete = alloca i32, align 4
  %edit_active = alloca i32, align 4
  %type = alloca i32, align 4
  %color = alloca i32, align 4
  %left_seg = alloca %struct._GimpGradientSegment*, align 8
  %right_seg = alloca %struct._GimpGradientSegment*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %aseg = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradientEditor*
  store %struct._GimpGradientEditor* %2, %struct._GimpGradientEditor** %editor, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %5, %struct._GimpDataEditor** %data_editor, align 8
  store i32 0, i32* %editable, align 4
  store i32 1, i32* %blending_equal, align 4
  store i32 1, i32* %coloring_equal, align 4
  store i32 1, i32* %left_editable, align 4
  store i32 1, i32* %right_editable, align 4
  store i32 0, i32* %selection, align 4
  store i32 0, i32* %delete, align 4
  store i32 0, i32* %edit_active, align 4
  %6 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %6, i32 0, i32 4
  %7 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %8 = bitcast %struct._GimpData* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_gradient_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpGradient*
  store %struct._GimpGradient* %9, %struct._GimpGradient** %gradient, align 8
  %10 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool = icmp ne %struct._GimpGradient* %10, null
  br i1 %tobool, label %if.then, label %if.end.71

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data_editable = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %11, i32 0, i32 5
  %12 = load i32, i32* %data_editable, align 4
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  store i32 1, i32* %editable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %13 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %14 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %14, i32 0, i32 2
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %16 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %16, i32 0, i32 14
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l, align 8
  %18 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l9 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %18, i32 0, i32 14
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l9, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %19, i32 0, i32 0
  %20 = load double, double* %left, align 8
  %call10 = call %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %13, %struct._GimpContext* %15, %struct._GimpGradientSegment* %17, double %20, i32 0, %struct._GimpRGB* %left_color)
  %21 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l11 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %21, i32 0, i32 14
  %22 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l11, align 8
  %prev = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %22, i32 0, i32 9
  %23 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %tobool12 = icmp ne %struct._GimpGradientSegment* %23, null
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %24 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l14 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %24, i32 0, i32 14
  %25 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l14, align 8
  %prev15 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %25, i32 0, i32 9
  %26 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev15, align 8
  store %struct._GimpGradientSegment* %26, %struct._GimpGradientSegment** %left_seg, align 8
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %27 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l16 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %27, i32 0, i32 14
  %28 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l16, align 8
  %call17 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment* %28)
  store %struct._GimpGradientSegment* %call17, %struct._GimpGradientSegment** %left_seg, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.13
  %29 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %30 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context19 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %30, i32 0, i32 2
  %31 = load %struct._GimpContext*, %struct._GimpContext** %context19, align 8
  %32 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %left_seg, align 8
  %33 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %left_seg, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %33, i32 0, i32 2
  %34 = load double, double* %right, align 8
  %call20 = call %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %29, %struct._GimpContext* %31, %struct._GimpGradientSegment* %32, double %34, i32 0, %struct._GimpRGB* %left_seg_color)
  %35 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %36 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context21 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %36, i32 0, i32 2
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context21, align 8
  %38 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %38, i32 0, i32 15
  %39 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r, align 8
  %40 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r22 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %40, i32 0, i32 15
  %41 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r22, align 8
  %right23 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %41, i32 0, i32 2
  %42 = load double, double* %right23, align 8
  %call24 = call %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %35, %struct._GimpContext* %37, %struct._GimpGradientSegment* %39, double %42, i32 0, %struct._GimpRGB* %right_color)
  %43 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r25 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %43, i32 0, i32 15
  %44 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r25, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %44, i32 0, i32 10
  %45 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  %tobool26 = icmp ne %struct._GimpGradientSegment* %45, null
  br i1 %tobool26, label %if.then.27, label %if.else.30

if.then.27:                                       ; preds = %if.end.18
  %46 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r28 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %46, i32 0, i32 15
  %47 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r28, align 8
  %next29 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %47, i32 0, i32 10
  %48 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next29, align 8
  store %struct._GimpGradientSegment* %48, %struct._GimpGradientSegment** %right_seg, align 8
  br label %if.end.33

if.else.30:                                       ; preds = %if.end.18
  %49 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r31 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %49, i32 0, i32 15
  %50 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r31, align 8
  %call32 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_first(%struct._GimpGradientSegment* %50)
  store %struct._GimpGradientSegment* %call32, %struct._GimpGradientSegment** %right_seg, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.27
  %51 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %52 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context34 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %52, i32 0, i32 2
  %53 = load %struct._GimpContext*, %struct._GimpContext** %context34, align 8
  %54 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %right_seg, align 8
  %55 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %right_seg, align 8
  %left35 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %55, i32 0, i32 0
  %56 = load double, double* %left35, align 8
  %call36 = call %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %51, %struct._GimpContext* %53, %struct._GimpGradientSegment* %54, double %56, i32 0, %struct._GimpRGB* %right_seg_color)
  %57 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l37 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %57, i32 0, i32 14
  %58 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l37, align 8
  %left_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %58, i32 0, i32 3
  %59 = load i32, i32* %left_color_type, align 4
  %cmp = icmp eq i32 %59, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %left_editable, align 4
  %60 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r38 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %60, i32 0, i32 15
  %61 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r38, align 8
  %right_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %61, i32 0, i32 5
  %62 = load i32, i32* %right_color_type, align 4
  %cmp39 = icmp eq i32 %62, 0
  %conv40 = zext i1 %cmp39 to i32
  store i32 %conv40, i32* %right_editable, align 4
  %63 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l41 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %63, i32 0, i32 14
  %64 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l41, align 8
  %type42 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %64, i32 0, i32 7
  %65 = load i32, i32* %type42, align 4
  store i32 %65, i32* %type, align 4
  %66 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l43 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %66, i32 0, i32 14
  %67 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l43, align 8
  %color44 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %67, i32 0, i32 8
  %68 = load i32, i32* %color44, align 4
  store i32 %68, i32* %color, align 4
  %69 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l45 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %69, i32 0, i32 14
  %70 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l45, align 8
  store %struct._GimpGradientSegment* %70, %struct._GimpGradientSegment** %seg, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.33
  %71 = load i32, i32* %blending_equal, align 4
  %tobool46 = icmp ne i32 %71, 0
  br i1 %tobool46, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.body
  %72 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %type47 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %72, i32 0, i32 7
  %73 = load i32, i32* %type47, align 4
  %74 = load i32, i32* %type, align 4
  %cmp48 = icmp eq i32 %73, %74
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.body
  %75 = phi i1 [ false, %do.body ], [ %cmp48, %land.rhs ]
  %land.ext = zext i1 %75 to i32
  store i32 %land.ext, i32* %blending_equal, align 4
  %76 = load i32, i32* %coloring_equal, align 4
  %tobool50 = icmp ne i32 %76, 0
  br i1 %tobool50, label %land.rhs.51, label %land.end.55

land.rhs.51:                                      ; preds = %land.end
  %77 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %color52 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %77, i32 0, i32 8
  %78 = load i32, i32* %color52, align 4
  %79 = load i32, i32* %color, align 4
  %cmp53 = icmp eq i32 %78, %79
  br label %land.end.55

land.end.55:                                      ; preds = %land.rhs.51, %land.end
  %80 = phi i1 [ false, %land.end ], [ %cmp53, %land.rhs.51 ]
  %land.ext56 = zext i1 %80 to i32
  store i32 %land.ext56, i32* %coloring_equal, align 4
  %81 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  store %struct._GimpGradientSegment* %81, %struct._GimpGradientSegment** %aseg, align 8
  %82 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next57 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %82, i32 0, i32 10
  %83 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next57, align 8
  store %struct._GimpGradientSegment* %83, %struct._GimpGradientSegment** %seg, align 8
  br label %do.cond

do.cond:                                          ; preds = %land.end.55
  %84 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %aseg, align 8
  %85 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r58 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %85, i32 0, i32 15
  %86 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r58, align 8
  %cmp59 = icmp ne %struct._GimpGradientSegment* %84, %86
  br i1 %cmp59, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %87 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l61 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %87, i32 0, i32 14
  %88 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l61, align 8
  %89 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r62 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %89, i32 0, i32 15
  %90 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r62, align 8
  %cmp63 = icmp ne %struct._GimpGradientSegment* %88, %90
  %conv64 = zext i1 %cmp63 to i32
  store i32 %conv64, i32* %selection, align 4
  %91 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l65 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %91, i32 0, i32 14
  %92 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l65, align 8
  %prev66 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %92, i32 0, i32 9
  %93 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev66, align 8
  %tobool67 = icmp ne %struct._GimpGradientSegment* %93, null
  br i1 %tobool67, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.end
  %94 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r68 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %94, i32 0, i32 15
  %95 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r68, align 8
  %next69 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %95, i32 0, i32 10
  %96 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next69, align 8
  %tobool70 = icmp ne %struct._GimpGradientSegment* %96, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.end
  %97 = phi i1 [ true, %do.end ], [ %tobool70, %lor.rhs ]
  %lor.ext = zext i1 %97 to i32
  store i32 %lor.ext, i32* %delete, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %lor.end, %entry
  %98 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context72 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %98, i32 0, i32 2
  %99 = load %struct._GimpContext*, %struct._GimpContext** %context72, align 8
  %tobool73 = icmp ne %struct._GimpContext* %99, null
  br i1 %tobool73, label %if.then.74, label %if.end.77

if.then.74:                                       ; preds = %if.end.71
  %100 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context75 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %100, i32 0, i32 2
  %101 = load %struct._GimpContext*, %struct._GimpContext** %context75, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %101, %struct._GimpRGB* %fg)
  %102 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context76 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %102, i32 0, i32 2
  %103 = load %struct._GimpContext*, %struct._GimpContext** %context76, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %103, %struct._GimpRGB* %bg)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.74, %if.end.71
  %104 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %105 = bitcast %struct._GimpGradientEditor* %104 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_widget_get_type() #4
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call78)
  %106 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkWidget*
  %call80 = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %106)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.end.83, label %if.then.82

if.then.82:                                       ; preds = %if.end.77
  store i32 0, i32* %editable, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.end.77
  %107 = load i32, i32* %editable, align 4
  %tobool84 = icmp ne i32 %107, 0
  br i1 %tobool84, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %if.end.83
  store i32 0, i32* %left_editable, align 4
  store i32 0, i32* %right_editable, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %if.end.83
  %108 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %call87 = call i32 @gimp_data_editor_get_edit_active(%struct._GimpDataEditor* %108)
  store i32 %call87, i32* %edit_active, align 4
  %109 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %110 = load i32, i32* %editable, align 4
  %cmp88 = icmp ne i32 %110, 0
  %conv89 = zext i1 %cmp88 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i32 %conv89)
  %111 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %112 = load i32, i32* %editable, align 4
  %cmp90 = icmp ne i32 %112, 0
  %conv91 = zext i1 %cmp90 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %111, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i32 %conv91)
  %113 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %114 = load i32, i32* %editable, align 4
  %cmp92 = icmp ne i32 %114, 0
  %conv93 = zext i1 %cmp92 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %113, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0), i32 %conv93)
  %115 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %116 = load i32, i32* %editable, align 4
  %cmp94 = icmp ne i32 %116, 0
  %conv95 = zext i1 %cmp94 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %115, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i32 %conv95)
  %117 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %118 = load i32, i32* %editable, align 4
  %cmp96 = icmp ne i32 %118, 0
  %conv97 = zext i1 %cmp96 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %117, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i32 0, i32 0), i32 %conv97)
  %119 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool98 = icmp ne %struct._GimpGradient* %119, null
  br i1 %tobool98, label %if.then.99, label %if.end.106

if.then.99:                                       ; preds = %if.end.86
  %120 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l100 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %120, i32 0, i32 14
  %121 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l100, align 8
  %left_color_type101 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %121, i32 0, i32 3
  %122 = load i32, i32* %left_color_type101, align 4
  switch i32 %122, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.102
    i32 2, label %sw.bb.103
    i32 3, label %sw.bb.104
    i32 4, label %sw.bb.105
  ]

sw.bb:                                            ; preds = %if.then.99
  %123 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %123, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i32 1)
  br label %sw.epilog

sw.bb.102:                                        ; preds = %if.then.99
  %124 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %124, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i32 1)
  br label %sw.epilog

sw.bb.103:                                        ; preds = %if.then.99
  %125 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %125, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0), i32 1)
  br label %sw.epilog

sw.bb.104:                                        ; preds = %if.then.99
  %126 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %126, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i32 1)
  br label %sw.epilog

sw.bb.105:                                        ; preds = %if.then.99
  %127 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %127, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i32 0, i32 0), i32 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.99, %sw.bb.105, %sw.bb.104, %sw.bb.103, %sw.bb.102, %sw.bb
  br label %if.end.106

if.end.106:                                       ; preds = %sw.epilog, %if.end.86
  %128 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %129 = load i32, i32* %left_editable, align 4
  %cmp107 = icmp ne i32 %129, 0
  %conv108 = zext i1 %cmp107 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 %conv108)
  %130 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %131 = load i32, i32* %editable, align 4
  %cmp109 = icmp ne i32 %131, 0
  %conv110 = zext i1 %cmp109 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %130, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0), i32 %conv110)
  %132 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %133 = load i32, i32* %editable, align 4
  %cmp111 = icmp ne i32 %133, 0
  %conv112 = zext i1 %cmp111 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %132, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0), i32 %conv112)
  %134 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool113 = icmp ne %struct._GimpGradient* %134, null
  br i1 %tobool113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.end.106
  %135 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), %struct._GimpRGB* %left_color, i32 0)
  %136 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %136, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0), %struct._GimpRGB* %left_seg_color, i32 0)
  %137 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %137, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0), %struct._GimpRGB* %right_color, i32 0)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %if.end.106
  %138 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %139 = load i32, i32* %left_editable, align 4
  %cmp116 = icmp ne i32 %139, 0
  %conv117 = zext i1 %cmp116 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %138, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0), i32 %conv117)
  %140 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %141 = load i32, i32* %left_editable, align 4
  %cmp118 = icmp ne i32 %141, 0
  %conv119 = zext i1 %cmp118 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %140, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), i32 %conv119)
  %142 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %143 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context120 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %143, i32 0, i32 2
  %144 = load %struct._GimpContext*, %struct._GimpContext** %context120, align 8
  %tobool121 = icmp ne %struct._GimpContext* %144, null
  br i1 %tobool121, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.115
  br label %cond.end

cond.false:                                       ; preds = %if.end.115
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GimpRGB* [ %fg, %cond.true ], [ null, %cond.false ]
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %142, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0), %struct._GimpRGB* %cond, i32 0)
  %145 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %146 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context122 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %146, i32 0, i32 2
  %147 = load %struct._GimpContext*, %struct._GimpContext** %context122, align 8
  %tobool123 = icmp ne %struct._GimpContext* %147, null
  br i1 %tobool123, label %cond.true.124, label %cond.false.125

cond.true.124:                                    ; preds = %cond.end
  br label %cond.end.126

cond.false.125:                                   ; preds = %cond.end
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.false.125, %cond.true.124
  %cond127 = phi %struct._GimpRGB* [ %bg, %cond.true.124 ], [ null, %cond.false.125 ]
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %145, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), %struct._GimpRGB* %cond127, i32 0)
  %148 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %149 = load i32, i32* %left_editable, align 4
  %cmp128 = icmp ne i32 %149, 0
  %conv129 = zext i1 %cmp128 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %148, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i32 %conv129)
  %150 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %151 = load i32, i32* %left_editable, align 4
  %cmp130 = icmp ne i32 %151, 0
  %conv131 = zext i1 %cmp130 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %150, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0), i32 %conv131)
  %152 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %153 = load i32, i32* %left_editable, align 4
  %cmp132 = icmp ne i32 %153, 0
  %conv133 = zext i1 %cmp132 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %152, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0), i32 %conv133)
  %154 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %155 = load i32, i32* %left_editable, align 4
  %cmp134 = icmp ne i32 %155, 0
  %conv135 = zext i1 %cmp134 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %154, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0), i32 %conv135)
  %156 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %157 = load i32, i32* %left_editable, align 4
  %cmp136 = icmp ne i32 %157, 0
  %conv137 = zext i1 %cmp136 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %156, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0), i32 %conv137)
  %158 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %159 = load i32, i32* %left_editable, align 4
  %cmp138 = icmp ne i32 %159, 0
  %conv139 = zext i1 %cmp138 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %158, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0), i32 %conv139)
  %160 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %161 = load i32, i32* %left_editable, align 4
  %cmp140 = icmp ne i32 %161, 0
  %conv141 = zext i1 %cmp140 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %160, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0), i32 %conv141)
  %162 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %163 = load i32, i32* %left_editable, align 4
  %cmp142 = icmp ne i32 %163, 0
  %conv143 = zext i1 %cmp142 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %162, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0), i32 %conv143)
  %164 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %165 = load i32, i32* %left_editable, align 4
  %cmp144 = icmp ne i32 %165, 0
  %conv145 = zext i1 %cmp144 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %164, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0), i32 %conv145)
  %166 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %167 = load i32, i32* %left_editable, align 4
  %cmp146 = icmp ne i32 %167, 0
  %conv147 = zext i1 %cmp146 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %166, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0), i32 %conv147)
  %168 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %169 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %169, i32 0, i32 24
  %arrayidx = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors, i32 0, i64 0
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %168, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), %struct._GimpRGB* %arrayidx, i32 1)
  %170 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %171 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors148 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %171, i32 0, i32 24
  %arrayidx149 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors148, i32 0, i64 1
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %170, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0), %struct._GimpRGB* %arrayidx149, i32 1)
  %172 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %173 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors150 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %173, i32 0, i32 24
  %arrayidx151 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors150, i32 0, i64 2
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %172, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0), %struct._GimpRGB* %arrayidx151, i32 1)
  %174 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %175 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors152 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %175, i32 0, i32 24
  %arrayidx153 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors152, i32 0, i64 3
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %174, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0), %struct._GimpRGB* %arrayidx153, i32 1)
  %176 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %177 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors154 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %177, i32 0, i32 24
  %arrayidx155 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors154, i32 0, i64 4
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %176, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0), %struct._GimpRGB* %arrayidx155, i32 1)
  %178 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %179 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors156 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %179, i32 0, i32 24
  %arrayidx157 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors156, i32 0, i64 5
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %178, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0), %struct._GimpRGB* %arrayidx157, i32 1)
  %180 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %181 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors158 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %181, i32 0, i32 24
  %arrayidx159 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors158, i32 0, i64 6
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %180, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0), %struct._GimpRGB* %arrayidx159, i32 1)
  %182 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %183 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors160 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %183, i32 0, i32 24
  %arrayidx161 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors160, i32 0, i64 7
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %182, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0), %struct._GimpRGB* %arrayidx161, i32 1)
  %184 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %185 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors162 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %185, i32 0, i32 24
  %arrayidx163 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors162, i32 0, i64 8
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %184, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0), %struct._GimpRGB* %arrayidx163, i32 1)
  %186 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %187 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors164 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %187, i32 0, i32 24
  %arrayidx165 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors164, i32 0, i64 9
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %186, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0), %struct._GimpRGB* %arrayidx165, i32 1)
  %188 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %189 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp166 = icmp ne %struct._GimpGradient* %189, null
  %conv167 = zext i1 %cmp166 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %188, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0), i32 %conv167)
  %190 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %191 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp168 = icmp ne %struct._GimpGradient* %191, null
  %conv169 = zext i1 %cmp168 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %190, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0), i32 %conv169)
  %192 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %193 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp170 = icmp ne %struct._GimpGradient* %193, null
  %conv171 = zext i1 %cmp170 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %192, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0), i32 %conv171)
  %194 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %195 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp172 = icmp ne %struct._GimpGradient* %195, null
  %conv173 = zext i1 %cmp172 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %194, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0), i32 %conv173)
  %196 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %197 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp174 = icmp ne %struct._GimpGradient* %197, null
  %conv175 = zext i1 %cmp174 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %196, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i32 0, i32 0), i32 %conv175)
  %198 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %199 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp176 = icmp ne %struct._GimpGradient* %199, null
  %conv177 = zext i1 %cmp176 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %198, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i32 0, i32 0), i32 %conv177)
  %200 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %201 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp178 = icmp ne %struct._GimpGradient* %201, null
  %conv179 = zext i1 %cmp178 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %200, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0), i32 %conv179)
  %202 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %203 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp180 = icmp ne %struct._GimpGradient* %203, null
  %conv181 = zext i1 %cmp180 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %202, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i32 0, i32 0), i32 %conv181)
  %204 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %205 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp182 = icmp ne %struct._GimpGradient* %205, null
  %conv183 = zext i1 %cmp182 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %204, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i32 0, i32 0), i32 %conv183)
  %206 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %207 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp184 = icmp ne %struct._GimpGradient* %207, null
  %conv185 = zext i1 %cmp184 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %206, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i32 0, i32 0), i32 %conv185)
  %208 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %209 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors186 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %209, i32 0, i32 24
  %arrayidx187 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors186, i32 0, i64 0
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %208, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0), %struct._GimpRGB* %arrayidx187, i32 1)
  %210 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %211 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors188 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %211, i32 0, i32 24
  %arrayidx189 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors188, i32 0, i64 1
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %210, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0), %struct._GimpRGB* %arrayidx189, i32 1)
  %212 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %213 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors190 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %213, i32 0, i32 24
  %arrayidx191 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors190, i32 0, i64 2
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %212, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0), %struct._GimpRGB* %arrayidx191, i32 1)
  %214 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %215 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors192 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %215, i32 0, i32 24
  %arrayidx193 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors192, i32 0, i64 3
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %214, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0), %struct._GimpRGB* %arrayidx193, i32 1)
  %216 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %217 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors194 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %217, i32 0, i32 24
  %arrayidx195 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors194, i32 0, i64 4
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %216, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i32 0, i32 0), %struct._GimpRGB* %arrayidx195, i32 1)
  %218 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %219 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors196 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %219, i32 0, i32 24
  %arrayidx197 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors196, i32 0, i64 5
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %218, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i32 0, i32 0), %struct._GimpRGB* %arrayidx197, i32 1)
  %220 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %221 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors198 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %221, i32 0, i32 24
  %arrayidx199 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors198, i32 0, i64 6
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %220, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0), %struct._GimpRGB* %arrayidx199, i32 1)
  %222 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %223 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors200 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %223, i32 0, i32 24
  %arrayidx201 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors200, i32 0, i64 7
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %222, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i32 0, i32 0), %struct._GimpRGB* %arrayidx201, i32 1)
  %224 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %225 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors202 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %225, i32 0, i32 24
  %arrayidx203 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors202, i32 0, i64 8
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %224, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i32 0, i32 0), %struct._GimpRGB* %arrayidx203, i32 1)
  %226 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %227 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors204 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %227, i32 0, i32 24
  %arrayidx205 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors204, i32 0, i64 9
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %226, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i32 0, i32 0), %struct._GimpRGB* %arrayidx205, i32 1)
  %228 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %229 = load i32, i32* %editable, align 4
  %cmp206 = icmp ne i32 %229, 0
  %conv207 = zext i1 %cmp206 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %228, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0), i32 %conv207)
  %230 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %231 = load i32, i32* %editable, align 4
  %cmp208 = icmp ne i32 %231, 0
  %conv209 = zext i1 %cmp208 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %230, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i32 0, i32 0), i32 %conv209)
  %232 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %233 = load i32, i32* %editable, align 4
  %cmp210 = icmp ne i32 %233, 0
  %conv211 = zext i1 %cmp210 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %232, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i32 0, i32 0), i32 %conv211)
  %234 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %235 = load i32, i32* %editable, align 4
  %cmp212 = icmp ne i32 %235, 0
  %conv213 = zext i1 %cmp212 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %234, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i32 0, i32 0), i32 %conv213)
  %236 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %237 = load i32, i32* %editable, align 4
  %cmp214 = icmp ne i32 %237, 0
  %conv215 = zext i1 %cmp214 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %236, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i32 0, i32 0), i32 %conv215)
  %238 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool216 = icmp ne %struct._GimpGradient* %238, null
  br i1 %tobool216, label %if.then.217, label %if.end.226

if.then.217:                                      ; preds = %cond.end.126
  %239 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_r218 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %239, i32 0, i32 15
  %240 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_r218, align 8
  %right_color_type219 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %240, i32 0, i32 5
  %241 = load i32, i32* %right_color_type219, align 4
  switch i32 %241, label %sw.epilog.225 [
    i32 0, label %sw.bb.220
    i32 1, label %sw.bb.221
    i32 2, label %sw.bb.222
    i32 3, label %sw.bb.223
    i32 4, label %sw.bb.224
  ]

sw.bb.220:                                        ; preds = %if.then.217
  %242 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %242, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0), i32 1)
  br label %sw.epilog.225

sw.bb.221:                                        ; preds = %if.then.217
  %243 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %243, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i32 0, i32 0), i32 1)
  br label %sw.epilog.225

sw.bb.222:                                        ; preds = %if.then.217
  %244 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %244, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i32 0, i32 0), i32 1)
  br label %sw.epilog.225

sw.bb.223:                                        ; preds = %if.then.217
  %245 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %245, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i32 0, i32 0), i32 1)
  br label %sw.epilog.225

sw.bb.224:                                        ; preds = %if.then.217
  %246 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %246, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i32 0, i32 0), i32 1)
  br label %sw.epilog.225

sw.epilog.225:                                    ; preds = %if.then.217, %sw.bb.224, %sw.bb.223, %sw.bb.222, %sw.bb.221, %sw.bb.220
  br label %if.end.226

if.end.226:                                       ; preds = %sw.epilog.225, %cond.end.126
  %247 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %248 = load i32, i32* %right_editable, align 4
  %cmp227 = icmp ne i32 %248, 0
  %conv228 = zext i1 %cmp227 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %247, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i32 0, i32 0), i32 %conv228)
  %249 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %250 = load i32, i32* %editable, align 4
  %cmp229 = icmp ne i32 %250, 0
  %conv230 = zext i1 %cmp229 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %249, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.40, i32 0, i32 0), i32 %conv230)
  %251 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %252 = load i32, i32* %editable, align 4
  %cmp231 = icmp ne i32 %252, 0
  %conv232 = zext i1 %cmp231 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %251, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.41, i32 0, i32 0), i32 %conv232)
  %253 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool233 = icmp ne %struct._GimpGradient* %253, null
  br i1 %tobool233, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %if.end.226
  %254 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %254, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i32 0, i32 0), %struct._GimpRGB* %right_color, i32 0)
  %255 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %255, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.40, i32 0, i32 0), %struct._GimpRGB* %right_seg_color, i32 0)
  %256 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %256, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.41, i32 0, i32 0), %struct._GimpRGB* %left_color, i32 0)
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.234, %if.end.226
  %257 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %258 = load i32, i32* %right_editable, align 4
  %cmp236 = icmp ne i32 %258, 0
  %conv237 = zext i1 %cmp236 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %257, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0), i32 %conv237)
  %259 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %260 = load i32, i32* %right_editable, align 4
  %cmp238 = icmp ne i32 %260, 0
  %conv239 = zext i1 %cmp238 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %259, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0), i32 %conv239)
  %261 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %262 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context240 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %262, i32 0, i32 2
  %263 = load %struct._GimpContext*, %struct._GimpContext** %context240, align 8
  %tobool241 = icmp ne %struct._GimpContext* %263, null
  br i1 %tobool241, label %cond.true.242, label %cond.false.243

cond.true.242:                                    ; preds = %if.end.235
  br label %cond.end.244

cond.false.243:                                   ; preds = %if.end.235
  br label %cond.end.244

cond.end.244:                                     ; preds = %cond.false.243, %cond.true.242
  %cond245 = phi %struct._GimpRGB* [ %fg, %cond.true.242 ], [ null, %cond.false.243 ]
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %261, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0), %struct._GimpRGB* %cond245, i32 0)
  %264 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %265 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context246 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %265, i32 0, i32 2
  %266 = load %struct._GimpContext*, %struct._GimpContext** %context246, align 8
  %tobool247 = icmp ne %struct._GimpContext* %266, null
  br i1 %tobool247, label %cond.true.248, label %cond.false.249

cond.true.248:                                    ; preds = %cond.end.244
  br label %cond.end.250

cond.false.249:                                   ; preds = %cond.end.244
  br label %cond.end.250

cond.end.250:                                     ; preds = %cond.false.249, %cond.true.248
  %cond251 = phi %struct._GimpRGB* [ %bg, %cond.true.248 ], [ null, %cond.false.249 ]
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %264, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0), %struct._GimpRGB* %cond251, i32 0)
  %267 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %268 = load i32, i32* %right_editable, align 4
  %cmp252 = icmp ne i32 %268, 0
  %conv253 = zext i1 %cmp252 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %267, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i32 0, i32 0), i32 %conv253)
  %269 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %270 = load i32, i32* %right_editable, align 4
  %cmp254 = icmp ne i32 %270, 0
  %conv255 = zext i1 %cmp254 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %269, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.45, i32 0, i32 0), i32 %conv255)
  %271 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %272 = load i32, i32* %right_editable, align 4
  %cmp256 = icmp ne i32 %272, 0
  %conv257 = zext i1 %cmp256 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %271, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.46, i32 0, i32 0), i32 %conv257)
  %273 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %274 = load i32, i32* %right_editable, align 4
  %cmp258 = icmp ne i32 %274, 0
  %conv259 = zext i1 %cmp258 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %273, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0), i32 %conv259)
  %275 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %276 = load i32, i32* %right_editable, align 4
  %cmp260 = icmp ne i32 %276, 0
  %conv261 = zext i1 %cmp260 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %275, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.48, i32 0, i32 0), i32 %conv261)
  %277 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %278 = load i32, i32* %right_editable, align 4
  %cmp262 = icmp ne i32 %278, 0
  %conv263 = zext i1 %cmp262 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %277, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.49, i32 0, i32 0), i32 %conv263)
  %279 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %280 = load i32, i32* %right_editable, align 4
  %cmp264 = icmp ne i32 %280, 0
  %conv265 = zext i1 %cmp264 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %279, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i32 0, i32 0), i32 %conv265)
  %281 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %282 = load i32, i32* %right_editable, align 4
  %cmp266 = icmp ne i32 %282, 0
  %conv267 = zext i1 %cmp266 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %281, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0), i32 %conv267)
  %283 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %284 = load i32, i32* %right_editable, align 4
  %cmp268 = icmp ne i32 %284, 0
  %conv269 = zext i1 %cmp268 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %283, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i32 0, i32 0), i32 %conv269)
  %285 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %286 = load i32, i32* %right_editable, align 4
  %cmp270 = icmp ne i32 %286, 0
  %conv271 = zext i1 %cmp270 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %285, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.53, i32 0, i32 0), i32 %conv271)
  %287 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %288 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors272 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %288, i32 0, i32 24
  %arrayidx273 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors272, i32 0, i64 0
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %287, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i32 0, i32 0), %struct._GimpRGB* %arrayidx273, i32 1)
  %289 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %290 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors274 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %290, i32 0, i32 24
  %arrayidx275 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors274, i32 0, i64 1
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %289, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.45, i32 0, i32 0), %struct._GimpRGB* %arrayidx275, i32 1)
  %291 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %292 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors276 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %292, i32 0, i32 24
  %arrayidx277 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors276, i32 0, i64 2
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %291, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.46, i32 0, i32 0), %struct._GimpRGB* %arrayidx277, i32 1)
  %293 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %294 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors278 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %294, i32 0, i32 24
  %arrayidx279 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors278, i32 0, i64 3
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %293, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0), %struct._GimpRGB* %arrayidx279, i32 1)
  %295 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %296 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors280 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %296, i32 0, i32 24
  %arrayidx281 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors280, i32 0, i64 4
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %295, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.48, i32 0, i32 0), %struct._GimpRGB* %arrayidx281, i32 1)
  %297 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %298 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors282 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %298, i32 0, i32 24
  %arrayidx283 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors282, i32 0, i64 5
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %297, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.49, i32 0, i32 0), %struct._GimpRGB* %arrayidx283, i32 1)
  %299 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %300 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors284 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %300, i32 0, i32 24
  %arrayidx285 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors284, i32 0, i64 6
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %299, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i32 0, i32 0), %struct._GimpRGB* %arrayidx285, i32 1)
  %301 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %302 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors286 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %302, i32 0, i32 24
  %arrayidx287 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors286, i32 0, i64 7
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %301, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0), %struct._GimpRGB* %arrayidx287, i32 1)
  %303 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %304 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors288 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %304, i32 0, i32 24
  %arrayidx289 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors288, i32 0, i64 8
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %303, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i32 0, i32 0), %struct._GimpRGB* %arrayidx289, i32 1)
  %305 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %306 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors290 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %306, i32 0, i32 24
  %arrayidx291 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors290, i32 0, i64 9
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %305, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.53, i32 0, i32 0), %struct._GimpRGB* %arrayidx291, i32 1)
  %307 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %308 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp292 = icmp ne %struct._GimpGradient* %308, null
  %conv293 = zext i1 %cmp292 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %307, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i32 0, i32 0), i32 %conv293)
  %309 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %310 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp294 = icmp ne %struct._GimpGradient* %310, null
  %conv295 = zext i1 %cmp294 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %309, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i32 0, i32 0), i32 %conv295)
  %311 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %312 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp296 = icmp ne %struct._GimpGradient* %312, null
  %conv297 = zext i1 %cmp296 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %311, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.56, i32 0, i32 0), i32 %conv297)
  %313 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %314 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp298 = icmp ne %struct._GimpGradient* %314, null
  %conv299 = zext i1 %cmp298 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %313, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.57, i32 0, i32 0), i32 %conv299)
  %315 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %316 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp300 = icmp ne %struct._GimpGradient* %316, null
  %conv301 = zext i1 %cmp300 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %315, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.58, i32 0, i32 0), i32 %conv301)
  %317 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %318 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp302 = icmp ne %struct._GimpGradient* %318, null
  %conv303 = zext i1 %cmp302 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %317, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i32 0, i32 0), i32 %conv303)
  %319 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %320 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp304 = icmp ne %struct._GimpGradient* %320, null
  %conv305 = zext i1 %cmp304 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %319, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i32 0, i32 0), i32 %conv305)
  %321 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %322 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp306 = icmp ne %struct._GimpGradient* %322, null
  %conv307 = zext i1 %cmp306 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %321, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.61, i32 0, i32 0), i32 %conv307)
  %323 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %324 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp308 = icmp ne %struct._GimpGradient* %324, null
  %conv309 = zext i1 %cmp308 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %323, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.62, i32 0, i32 0), i32 %conv309)
  %325 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %326 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp310 = icmp ne %struct._GimpGradient* %326, null
  %conv311 = zext i1 %cmp310 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %325, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i32 0, i32 0), i32 %conv311)
  %327 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %328 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors312 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %328, i32 0, i32 24
  %arrayidx313 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors312, i32 0, i64 0
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %327, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i32 0, i32 0), %struct._GimpRGB* %arrayidx313, i32 1)
  %329 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %330 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors314 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %330, i32 0, i32 24
  %arrayidx315 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors314, i32 0, i64 1
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %329, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i32 0, i32 0), %struct._GimpRGB* %arrayidx315, i32 1)
  %331 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %332 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors316 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %332, i32 0, i32 24
  %arrayidx317 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors316, i32 0, i64 2
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %331, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.56, i32 0, i32 0), %struct._GimpRGB* %arrayidx317, i32 1)
  %333 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %334 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors318 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %334, i32 0, i32 24
  %arrayidx319 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors318, i32 0, i64 3
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %333, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.57, i32 0, i32 0), %struct._GimpRGB* %arrayidx319, i32 1)
  %335 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %336 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors320 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %336, i32 0, i32 24
  %arrayidx321 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors320, i32 0, i64 4
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %335, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.58, i32 0, i32 0), %struct._GimpRGB* %arrayidx321, i32 1)
  %337 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %338 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors322 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %338, i32 0, i32 24
  %arrayidx323 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors322, i32 0, i64 5
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %337, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i32 0, i32 0), %struct._GimpRGB* %arrayidx323, i32 1)
  %339 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %340 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors324 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %340, i32 0, i32 24
  %arrayidx325 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors324, i32 0, i64 6
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %339, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i32 0, i32 0), %struct._GimpRGB* %arrayidx325, i32 1)
  %341 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %342 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors326 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %342, i32 0, i32 24
  %arrayidx327 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors326, i32 0, i64 7
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %341, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.61, i32 0, i32 0), %struct._GimpRGB* %arrayidx327, i32 1)
  %343 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %344 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors328 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %344, i32 0, i32 24
  %arrayidx329 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors328, i32 0, i64 8
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %343, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.62, i32 0, i32 0), %struct._GimpRGB* %arrayidx329, i32 1)
  %345 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %346 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %saved_colors330 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %346, i32 0, i32 24
  %arrayidx331 = getelementptr inbounds [10 x %struct._GimpRGB], [10 x %struct._GimpRGB]* %saved_colors330, i32 0, i64 9
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %345, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i32 0, i32 0), %struct._GimpRGB* %arrayidx331, i32 1)
  %347 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %348 = load i32, i32* %editable, align 4
  %cmp332 = icmp ne i32 %348, 0
  %conv333 = zext i1 %cmp332 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %347, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.64, i32 0, i32 0), i32 %conv333)
  %349 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %350 = load i32, i32* %editable, align 4
  %cmp334 = icmp ne i32 %350, 0
  %conv335 = zext i1 %cmp334 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %349, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.65, i32 0, i32 0), i32 %conv335)
  %351 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %352 = load i32, i32* %editable, align 4
  %cmp336 = icmp ne i32 %352, 0
  %conv337 = zext i1 %cmp336 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %351, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.66, i32 0, i32 0), i32 %conv337)
  %353 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %354 = load i32, i32* %editable, align 4
  %cmp338 = icmp ne i32 %354, 0
  %conv339 = zext i1 %cmp338 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %353, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.67, i32 0, i32 0), i32 %conv339)
  %355 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %356 = load i32, i32* %editable, align 4
  %tobool340 = icmp ne i32 %356, 0
  br i1 %tobool340, label %land.rhs.341, label %land.end.343

land.rhs.341:                                     ; preds = %cond.end.250
  %357 = load i32, i32* %delete, align 4
  %tobool342 = icmp ne i32 %357, 0
  br label %land.end.343

land.end.343:                                     ; preds = %land.rhs.341, %cond.end.250
  %358 = phi i1 [ false, %cond.end.250 ], [ %tobool342, %land.rhs.341 ]
  %land.ext344 = zext i1 %358 to i32
  %cmp345 = icmp ne i32 %land.ext344, 0
  %conv346 = zext i1 %cmp345 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %355, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i32 0, i32 0), i32 %conv346)
  %359 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %360 = load i32, i32* %editable, align 4
  %cmp347 = icmp ne i32 %360, 0
  %conv348 = zext i1 %cmp347 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %359, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i32 0, i32 0), i32 %conv348)
  %361 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %362 = load i32, i32* %editable, align 4
  %cmp349 = icmp ne i32 %362, 0
  %conv350 = zext i1 %cmp349 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %361, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.70, i32 0, i32 0), i32 %conv350)
  %363 = load i32, i32* %selection, align 4
  %tobool351 = icmp ne i32 %363, 0
  br i1 %tobool351, label %if.else.362, label %if.then.352

if.then.352:                                      ; preds = %land.end.343
  %364 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call353 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.72, i32 0, i32 0)) #5
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %364, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.71, i32 0, i32 0), i8* %call353)
  %365 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call354 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.74, i32 0, i32 0)) #5
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %365, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.73, i32 0, i32 0), i8* %call354)
  %366 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call355 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i32 0, i32 0)) #5
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %366, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.64, i32 0, i32 0), i8* %call355)
  %367 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call356 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.76, i32 0, i32 0)) #5
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %367, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.65, i32 0, i32 0), i8* %call356)
  %368 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call357 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.77, i32 0, i32 0)) #5
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %368, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.66, i32 0, i32 0), i8* %call357)
  %369 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call358 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.78, i32 0, i32 0)) #5
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %369, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.67, i32 0, i32 0), i8* %call358)
  %370 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call359 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i32 0, i32 0)) #5
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %370, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i32 0, i32 0), i8* %call359)
  %371 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call360 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.80, i32 0, i32 0)) #5
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %371, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i32 0, i32 0), i8* %call360)
  %372 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call361 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.81, i32 0, i32 0)) #5
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %372, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.70, i32 0, i32 0), i8* %call361)
  br label %if.end.372

if.else.362:                                      ; preds = %land.end.343
  %373 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call363 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.82, i32 0, i32 0)) #5
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %373, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.71, i32 0, i32 0), i8* %call363)
  %374 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call364 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.83, i32 0, i32 0)) #5
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %374, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.73, i32 0, i32 0), i8* %call364)
  %375 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call365 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.84, i32 0, i32 0)) #5
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %375, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.64, i32 0, i32 0), i8* %call365)
  %376 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call366 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.85, i32 0, i32 0)) #5
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %376, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.65, i32 0, i32 0), i8* %call366)
  %377 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call367 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.86, i32 0, i32 0)) #5
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %377, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.66, i32 0, i32 0), i8* %call367)
  %378 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call368 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.87, i32 0, i32 0)) #5
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %378, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.67, i32 0, i32 0), i8* %call368)
  %379 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call369 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.88, i32 0, i32 0)) #5
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %379, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i32 0, i32 0), i8* %call369)
  %380 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call370 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.89, i32 0, i32 0)) #5
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %380, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i32 0, i32 0), i8* %call370)
  %381 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call371 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.90, i32 0, i32 0)) #5
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %381, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.70, i32 0, i32 0), i8* %call371)
  br label %if.end.372

if.end.372:                                       ; preds = %if.else.362, %if.then.352
  %382 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %382, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.91, i32 0, i32 0), i32 0)
  %383 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %384 = load i32, i32* %blending_equal, align 4
  %tobool373 = icmp ne i32 %384, 0
  %lnot = xor i1 %tobool373, true
  %lnot.ext = zext i1 %lnot to i32
  %cmp374 = icmp ne i32 %lnot.ext, 0
  %conv375 = zext i1 %cmp374 to i32
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %383, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.91, i32 0, i32 0), i32 %conv375)
  %385 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %386 = load i32, i32* %editable, align 4
  %cmp376 = icmp ne i32 %386, 0
  %conv377 = zext i1 %cmp376 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %385, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.92, i32 0, i32 0), i32 %conv377)
  %387 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %388 = load i32, i32* %editable, align 4
  %cmp378 = icmp ne i32 %388, 0
  %conv379 = zext i1 %cmp378 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %387, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.93, i32 0, i32 0), i32 %conv379)
  %389 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %390 = load i32, i32* %editable, align 4
  %cmp380 = icmp ne i32 %390, 0
  %conv381 = zext i1 %cmp380 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %389, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.94, i32 0, i32 0), i32 %conv381)
  %391 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %392 = load i32, i32* %editable, align 4
  %cmp382 = icmp ne i32 %392, 0
  %conv383 = zext i1 %cmp382 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %391, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i32 0, i32 0), i32 %conv383)
  %393 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %394 = load i32, i32* %editable, align 4
  %cmp384 = icmp ne i32 %394, 0
  %conv385 = zext i1 %cmp384 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %393, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.96, i32 0, i32 0), i32 %conv385)
  %395 = load i32, i32* %blending_equal, align 4
  %tobool386 = icmp ne i32 %395, 0
  br i1 %tobool386, label %land.lhs.true, label %if.else.397

land.lhs.true:                                    ; preds = %if.end.372
  %396 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool387 = icmp ne %struct._GimpGradient* %396, null
  br i1 %tobool387, label %if.then.388, label %if.else.397

if.then.388:                                      ; preds = %land.lhs.true
  %397 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l389 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %397, i32 0, i32 14
  %398 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l389, align 8
  %type390 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %398, i32 0, i32 7
  %399 = load i32, i32* %type390, align 4
  switch i32 %399, label %sw.epilog.396 [
    i32 0, label %sw.bb.391
    i32 1, label %sw.bb.392
    i32 2, label %sw.bb.393
    i32 3, label %sw.bb.394
    i32 4, label %sw.bb.395
  ]

sw.bb.391:                                        ; preds = %if.then.388
  %400 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %400, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.92, i32 0, i32 0), i32 1)
  br label %sw.epilog.396

sw.bb.392:                                        ; preds = %if.then.388
  %401 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %401, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.93, i32 0, i32 0), i32 1)
  br label %sw.epilog.396

sw.bb.393:                                        ; preds = %if.then.388
  %402 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %402, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.94, i32 0, i32 0), i32 1)
  br label %sw.epilog.396

sw.bb.394:                                        ; preds = %if.then.388
  %403 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %403, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i32 0, i32 0), i32 1)
  br label %sw.epilog.396

sw.bb.395:                                        ; preds = %if.then.388
  %404 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %404, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.96, i32 0, i32 0), i32 1)
  br label %sw.epilog.396

sw.epilog.396:                                    ; preds = %if.then.388, %sw.bb.395, %sw.bb.394, %sw.bb.393, %sw.bb.392, %sw.bb.391
  br label %if.end.398

if.else.397:                                      ; preds = %land.lhs.true, %if.end.372
  %405 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %405, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.91, i32 0, i32 0), i32 1)
  br label %if.end.398

if.end.398:                                       ; preds = %if.else.397, %sw.epilog.396
  %406 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %406, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.97, i32 0, i32 0), i32 0)
  %407 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %408 = load i32, i32* %coloring_equal, align 4
  %tobool399 = icmp ne i32 %408, 0
  %lnot400 = xor i1 %tobool399, true
  %lnot.ext401 = zext i1 %lnot400 to i32
  %cmp402 = icmp ne i32 %lnot.ext401, 0
  %conv403 = zext i1 %cmp402 to i32
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %407, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.97, i32 0, i32 0), i32 %conv403)
  %409 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %410 = load i32, i32* %editable, align 4
  %cmp404 = icmp ne i32 %410, 0
  %conv405 = zext i1 %cmp404 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %409, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.98, i32 0, i32 0), i32 %conv405)
  %411 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %412 = load i32, i32* %editable, align 4
  %cmp406 = icmp ne i32 %412, 0
  %conv407 = zext i1 %cmp406 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %411, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.99, i32 0, i32 0), i32 %conv407)
  %413 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %414 = load i32, i32* %editable, align 4
  %cmp408 = icmp ne i32 %414, 0
  %conv409 = zext i1 %cmp408 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %413, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.100, i32 0, i32 0), i32 %conv409)
  %415 = load i32, i32* %coloring_equal, align 4
  %tobool410 = icmp ne i32 %415, 0
  br i1 %tobool410, label %land.lhs.true.411, label %if.else.420

land.lhs.true.411:                                ; preds = %if.end.398
  %416 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool412 = icmp ne %struct._GimpGradient* %416, null
  br i1 %tobool412, label %if.then.413, label %if.else.420

if.then.413:                                      ; preds = %land.lhs.true.411
  %417 = load %struct._GimpGradientEditor*, %struct._GimpGradientEditor** %editor, align 8
  %control_sel_l414 = getelementptr inbounds %struct._GimpGradientEditor, %struct._GimpGradientEditor* %417, i32 0, i32 14
  %418 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %control_sel_l414, align 8
  %color415 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %418, i32 0, i32 8
  %419 = load i32, i32* %color415, align 4
  switch i32 %419, label %sw.epilog.419 [
    i32 0, label %sw.bb.416
    i32 1, label %sw.bb.417
    i32 2, label %sw.bb.418
  ]

sw.bb.416:                                        ; preds = %if.then.413
  %420 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %420, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.98, i32 0, i32 0), i32 1)
  br label %sw.epilog.419

sw.bb.417:                                        ; preds = %if.then.413
  %421 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %421, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.99, i32 0, i32 0), i32 1)
  br label %sw.epilog.419

sw.bb.418:                                        ; preds = %if.then.413
  %422 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %422, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.100, i32 0, i32 0), i32 1)
  br label %sw.epilog.419

sw.epilog.419:                                    ; preds = %if.then.413, %sw.bb.418, %sw.bb.417, %sw.bb.416
  br label %if.end.421

if.else.420:                                      ; preds = %land.lhs.true.411, %if.end.398
  %423 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %423, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.97, i32 0, i32 0), i32 1)
  br label %if.end.421

if.end.421:                                       ; preds = %if.else.420, %sw.epilog.419
  %424 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %425 = load i32, i32* %editable, align 4
  %tobool422 = icmp ne i32 %425, 0
  br i1 %tobool422, label %land.rhs.423, label %land.end.425

land.rhs.423:                                     ; preds = %if.end.421
  %426 = load i32, i32* %selection, align 4
  %tobool424 = icmp ne i32 %426, 0
  br label %land.end.425

land.end.425:                                     ; preds = %land.rhs.423, %if.end.421
  %427 = phi i1 [ false, %if.end.421 ], [ %tobool424, %land.rhs.423 ]
  %land.ext426 = zext i1 %427 to i32
  %cmp427 = icmp ne i32 %land.ext426, 0
  %conv428 = zext i1 %cmp427 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %424, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.101, i32 0, i32 0), i32 %conv428)
  %428 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %429 = load i32, i32* %editable, align 4
  %tobool429 = icmp ne i32 %429, 0
  br i1 %tobool429, label %land.rhs.430, label %land.end.432

land.rhs.430:                                     ; preds = %land.end.425
  %430 = load i32, i32* %selection, align 4
  %tobool431 = icmp ne i32 %430, 0
  br label %land.end.432

land.end.432:                                     ; preds = %land.rhs.430, %land.end.425
  %431 = phi i1 [ false, %land.end.425 ], [ %tobool431, %land.rhs.430 ]
  %land.ext433 = zext i1 %431 to i32
  %cmp434 = icmp ne i32 %land.ext433, 0
  %conv435 = zext i1 %cmp434 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %428, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.102, i32 0, i32 0), i32 %conv435)
  %432 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %433 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp436 = icmp ne %struct._GimpGradient* %433, null
  %conv437 = zext i1 %cmp436 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %432, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.103, i32 0, i32 0), i32 %conv437)
  %434 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %435 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp438 = icmp ne %struct._GimpGradient* %435, null
  %conv439 = zext i1 %cmp438 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %434, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.104, i32 0, i32 0), i32 %conv439)
  %436 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %437 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %cmp440 = icmp ne %struct._GimpGradient* %437, null
  %conv441 = zext i1 %cmp440 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %436, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.105, i32 0, i32 0), i32 %conv441)
  %438 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %439 = load i32, i32* %edit_active, align 4
  %cmp442 = icmp ne i32 %439, 0
  %conv443 = zext i1 %cmp442 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %438, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.106, i32 0, i32 0), i32 %conv443)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_editor_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_data_editor_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_get_type() #2

declare %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient*, %struct._GimpContext*, %struct._GimpGradientSegment*, double, i32, %struct._GimpRGB*) #1

declare %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment*) #1

declare %struct._GimpGradientSegment* @gimp_gradient_segment_get_first(%struct._GimpGradientSegment*) #1

declare void @gimp_context_get_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_context_get_background(%struct._GimpContext*, %struct._GimpRGB*) #1

declare i32 @gtk_widget_is_sensitive(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i32 @gimp_data_editor_get_edit_active(%struct._GimpDataEditor*) #1

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare void @gimp_action_group_set_action_active(%struct._GimpActionGroup*, i8*, i32) #1

declare void @gimp_action_group_set_action_color(%struct._GimpActionGroup*, i8*, %struct._GimpRGB*, i32) #1

declare void @gimp_action_group_set_action_label(%struct._GimpActionGroup*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @gimp_action_group_set_action_visible(%struct._GimpActionGroup*, i8*, i32) #1

declare void @gradient_editor_left_color_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @gradient_editor_right_color_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @gradient_editor_flip_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @gradient_editor_replicate_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @gradient_editor_split_midpoint_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @gradient_editor_split_uniformly_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @gradient_editor_delete_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @gradient_editor_recenter_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @gradient_editor_redistribute_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @gradient_editor_blend_color_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @gradient_editor_blend_opacity_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @data_editor_edit_active_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
