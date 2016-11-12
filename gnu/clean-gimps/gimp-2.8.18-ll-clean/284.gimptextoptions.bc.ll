; ModuleID = './app/tools/gimptextoptions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
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
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
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
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpTextOptions = type { %struct._GimpToolOptions, i32, double, i32, i32, i8*, i32, i32, double, double, double, i32, i32, i32, i32, %struct._GtkWidget* }
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
%struct._GimpText = type { %struct._GimpObject, i8*, i8*, i8*, i32, double, i32, i32, i32, i8*, i32, %struct._GimpRGB, i32, i32, double, double, double, i32, double, double, i32, %struct._GimpMatrix2, double, double, double }
%struct._GimpMatrix2 = type { [2 x [2 x double]] }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpColorPanel = type { %struct._GimpColorButton, %struct._GimpContext*, %struct._GtkWidget* }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GimpTextBuffer = type { %struct._GtkTextBuffer, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GList*, i32, %struct._GList*, %struct._GList*, %struct._GdkAtom* }
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._GtkTextTag = type { %struct._GObject, %struct._GtkTextTagTable*, i8*, i32, %struct._GtkTextAttributes*, i24 }
%struct._GtkTextAttributes = type { i32, %struct._GtkTextAppearance, i32, i32, %struct._PangoFontDescription*, double, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i32, %struct._PangoLanguage*, %struct._GdkColor*, i8 }
%struct._GtkTextAppearance = type { %struct._GdkColor, %struct._GdkColor, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i8*, i16 }
%struct._PangoTabArray = type opaque
%struct._PangoLanguage = type opaque
%struct._GdkAtom = type opaque
%struct._GimpTextEditor = type { %struct._GimpDialog, i32, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpUIManager* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpUIManager = type opaque

@gimp_text_options_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpTextOptions\00", align 1
@gimp_text_options_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_text_options_connect_text = private unnamed_addr constant [31 x i8] c"gimp_text_options_connect_text\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"GIMP_IS_TEXT_OPTIONS (options)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"GIMP_IS_TEXT (text)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"notify::font\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"notify::foreground\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"notify::color\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"font-view-type\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"font-view-size\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"font-size\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"font-size-unit\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Size:\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"use-editor\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Use editor\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"antialias\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Antialiasing\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"hint-style\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"Hinting:\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"foreground\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"Text Color\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Color:\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"justify\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"gtk-justify\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"Justify:\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"gtk-indent\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"line-spacing\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"gimp-line-spacing\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"letter-spacing\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"gimp-letter-spacing\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"box-mode\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"Box:\00", align 1
@__func__.gimp_text_options_editor_new = private unnamed_addr constant [29 x i8] c"gimp_text_options_editor_new\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"GIMP_IS_MENU_FACTORY (menu_factory)\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"title != NULL\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"GIMP_IS_TEXT_BUFFER (text_buffer)\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"dir-changed\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"notify::base-direction\00", align 1
@gimp_text_options_parent_class = internal global i8* null, align 8
@GimpTextOptions_private_offset = internal global i32 0, align 4
@.str.42 = private unnamed_addr constant [10 x i8] c"highlight\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"Font size unit\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"Font size\00", align 1
@.str.45 = private unnamed_addr constant [73 x i8] c"Hinting alters the font outline to produce a crisp bitmap at small sizes\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.47 = private unnamed_addr constant [70 x i8] c"The text language may have an effect on the way the text is rendered.\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"base-direction\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"Text alignment\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"Indentation of the first line\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"Adjust line spacing\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"Adjust letter spacing\00", align 1
@.str.53 = private unnamed_addr constant [88 x i8] c"Whether text flows into rectangular shape or moves into a new line when you press Enter\00", align 1
@.str.54 = private unnamed_addr constant [45 x i8] c"Use an external editor window for text entry\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_text_options_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_text_options_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_text_options_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_tool_options_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 432, void (i8*, i8*)* bitcast (void (i8*)* @gimp_text_options_class_intern_init to void (i8*, i8*)*), i32 440, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTextOptions*)* @gimp_text_options_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_rectangle_options_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_text_options_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_text_options_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_text_options_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_options_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_options_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_text_options_parent_class, align 8
  %1 = load i32, i32* @GimpTextOptions_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTextOptions_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpToolOptionsClass*
  call void @gimp_text_options_class_init(%struct._GimpToolOptionsClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_options_init(%struct._GimpTextOptions* %options) #3 {
entry:
  %options.addr = alloca %struct._GimpTextOptions*, align 8
  store %struct._GimpTextOptions* %options, %struct._GimpTextOptions** %options.addr, align 8
  %0 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options.addr, align 8
  %size_entry = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %0, i32 0, i32 15
  store %struct._GtkWidget* null, %struct._GtkWidget** %size_entry, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_rectangle_options_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_options_connect_text(%struct._GimpTextOptions* %options, %struct._GimpText* %text) #3 {
entry:
  %options.addr = alloca %struct._GimpTextOptions*, align 8
  %text.addr = alloca %struct._GimpText*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTextOptions* %options, %struct._GimpTextOptions** %options.addr, align 8
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpTextOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_options_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_text_options_connect_text, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %14 = bitcast %struct._GimpText* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_text_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_text_options_connect_text, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options.addr, align 8
  %27 = bitcast %struct._GimpTextOptions* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_context_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpContext*
  store %struct._GimpContext* %28, %struct._GimpContext** %context, align 8
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %29, %struct._GimpRGB* %color)
  %30 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options.addr, align 8
  %31 = bitcast %struct._GimpTextOptions* %30 to %struct._GTypeInstance*
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 80)
  %32 = bitcast %struct._GTypeInstance* %call41 to %struct._GObject*
  %33 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %34 = bitcast %struct._GimpText* %33 to %struct._GTypeInstance*
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 80)
  %35 = bitcast %struct._GTypeInstance* %call42 to %struct._GObject*
  %call43 = call i32 @gimp_config_sync(%struct._GObject* %32, %struct._GObject* %35, i32 0)
  %36 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %37 = bitcast %struct._GimpText* %36 to i8*
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call44 = call i8* @gimp_context_get_font_name(%struct._GimpContext* %38)
  call void (i8*, i8*, ...) @g_object_set(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct._GimpRGB* %color, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* %call44, i8* null)
  %39 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options.addr, align 8
  %40 = bitcast %struct._GimpTextOptions* %39 to %struct._GTypeInstance*
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 80)
  %41 = bitcast %struct._GTypeInstance* %call45 to %struct._GObject*
  %42 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %43 = bitcast %struct._GimpText* %42 to %struct._GTypeInstance*
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 80)
  %44 = bitcast %struct._GTypeInstance* %call46 to %struct._GObject*
  call void @gimp_config_connect(%struct._GObject* %41, %struct._GObject* %44, i8* null)
  %45 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options.addr, align 8
  %46 = bitcast %struct._GimpTextOptions* %45 to i8*
  %47 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %48 = bitcast %struct._GimpText* %47 to i8*
  %call47 = call i64 @g_signal_connect_object(i8* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GParamSpec*, %struct._GimpText*)* @gimp_text_options_notify_font to void ()*), i8* %48, i32 0)
  %49 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %50 = bitcast %struct._GimpText* %49 to i8*
  %51 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options.addr, align 8
  %52 = bitcast %struct._GimpTextOptions* %51 to i8*
  %call48 = call i64 @g_signal_connect_object(i8* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpText*, %struct._GParamSpec*, %struct._GimpContext*)* @gimp_text_options_notify_text_font to void ()*), i8* %52, i32 0)
  %53 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options.addr, align 8
  %54 = bitcast %struct._GimpTextOptions* %53 to i8*
  %55 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %56 = bitcast %struct._GimpText* %55 to i8*
  %call49 = call i64 @g_signal_connect_object(i8* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GParamSpec*, %struct._GimpText*)* @gimp_text_options_notify_color to void ()*), i8* %56, i32 0)
  %57 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %58 = bitcast %struct._GimpText* %57 to i8*
  %59 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options.addr, align 8
  %60 = bitcast %struct._GimpTextOptions* %59 to i8*
  %call50 = call i64 @g_signal_connect_object(i8* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpText*, %struct._GParamSpec*, %struct._GimpContext*)* @gimp_text_options_notify_text_color to void ()*), i8* %60, i32 0)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare void @gimp_context_get_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare i32 @gimp_config_sync(%struct._GObject*, %struct._GObject*, i32) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare i8* @gimp_context_get_font_name(%struct._GimpContext*) #1

declare void @gimp_config_connect(%struct._GObject*, %struct._GObject*, i8*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_options_notify_font(%struct._GimpContext* %context, %struct._GParamSpec* %pspec, %struct._GimpText* %text) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %text.addr = alloca %struct._GimpText*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  %0 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %1 = bitcast %struct._GimpText* %0 to i8*
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %3 = bitcast %struct._GimpContext* %2 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %1, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpText*, %struct._GParamSpec*, %struct._GimpContext*)* @gimp_text_options_notify_text_font to i8*), i8* %3)
  %4 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %5 = bitcast %struct._GimpText* %4 to i8*
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call1 = call i8* @gimp_context_get_font_name(%struct._GimpContext* %6)
  call void (i8*, i8*, ...) @g_object_set(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* %call1, i8* null)
  %7 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %8 = bitcast %struct._GimpText* %7 to i8*
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %10 = bitcast %struct._GimpContext* %9 to i8*
  %call2 = call i32 @g_signal_handlers_unblock_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpText*, %struct._GParamSpec*, %struct._GimpContext*)* @gimp_text_options_notify_text_font to i8*), i8* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_options_notify_text_font(%struct._GimpText* %text, %struct._GParamSpec* %pspec, %struct._GimpContext* %context) #3 {
entry:
  %text.addr = alloca %struct._GimpText*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to i8*
  %2 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %3 = bitcast %struct._GimpText* %2 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %1, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GParamSpec*, %struct._GimpText*)* @gimp_text_options_notify_font to i8*), i8* %3)
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %5 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %font = getelementptr inbounds %struct._GimpText, %struct._GimpText* %5, i32 0, i32 3
  %6 = load i8*, i8** %font, align 8
  call void @gimp_context_set_font_name(%struct._GimpContext* %4, i8* %6)
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %8 = bitcast %struct._GimpContext* %7 to i8*
  %9 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %10 = bitcast %struct._GimpText* %9 to i8*
  %call1 = call i32 @g_signal_handlers_unblock_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GParamSpec*, %struct._GimpText*)* @gimp_text_options_notify_font to i8*), i8* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_options_notify_color(%struct._GimpContext* %context, %struct._GParamSpec* %pspec, %struct._GimpText* %text) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %text.addr = alloca %struct._GimpText*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %0, %struct._GimpRGB* %color)
  %1 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %2 = bitcast %struct._GimpText* %1 to i8*
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %2, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpText*, %struct._GParamSpec*, %struct._GimpContext*)* @gimp_text_options_notify_text_color to i8*), i8* %4)
  %5 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %6 = bitcast %struct._GimpText* %5 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct._GimpRGB* %color, i8* null)
  %7 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %8 = bitcast %struct._GimpText* %7 to i8*
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %10 = bitcast %struct._GimpContext* %9 to i8*
  %call1 = call i32 @g_signal_handlers_unblock_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpText*, %struct._GParamSpec*, %struct._GimpContext*)* @gimp_text_options_notify_text_color to i8*), i8* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_options_notify_text_color(%struct._GimpText* %text, %struct._GParamSpec* %pspec, %struct._GimpContext* %context) #3 {
entry:
  %text.addr = alloca %struct._GimpText*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to i8*
  %2 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %3 = bitcast %struct._GimpText* %2 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %1, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GParamSpec*, %struct._GimpText*)* @gimp_text_options_notify_color to i8*), i8* %3)
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %5 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %color = getelementptr inbounds %struct._GimpText, %struct._GimpText* %5, i32 0, i32 11
  call void @gimp_context_set_foreground(%struct._GimpContext* %4, %struct._GimpRGB* %color)
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  %8 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %9 = bitcast %struct._GimpText* %8 to i8*
  %call1 = call i32 @g_signal_handlers_unblock_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GParamSpec*, %struct._GimpText*)* @gimp_text_options_notify_color to i8*), i8* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_text_options_gui(%struct._GimpToolOptions* %tool_options) #3 {
entry:
  %tool_options.addr = alloca %struct._GimpToolOptions*, align 8
  %config = alloca %struct._GObject*, align 8
  %options = alloca %struct._GimpTextOptions*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %entry4 = alloca %struct._GtkWidget*, align 8
  %box = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %size_group = alloca %struct._GtkSizeGroup*, align 8
  %row = alloca i32, align 4
  store %struct._GimpToolOptions* %tool_options, %struct._GimpToolOptions** %tool_options.addr, align 8
  %0 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %1 = bitcast %struct._GimpToolOptions* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  store %struct._GObject* %2, %struct._GObject** %config, align 8
  %3 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %4 = bitcast %struct._GimpToolOptions* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_text_options_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpTextOptions*
  store %struct._GimpTextOptions* %5, %struct._GimpTextOptions** %options, align 8
  %6 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %call3 = call %struct._GtkWidget* @gimp_tool_options_gui(%struct._GimpToolOptions* %6)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %main_vbox, align 8
  store i32 0, i32* %row, align 4
  %7 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %8 = bitcast %struct._GimpToolOptions* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_context_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpContext*
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #8
  %call8 = call %struct._GtkWidget* @gimp_prop_font_box_new(%struct._GimpContainer* null, %struct._GimpContext* %9, i8* %call7, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %hbox, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %12, %struct._GtkWidget* %13, i32 0, i32 0, i32 0)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %14)
  %call11 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 3, i32 0)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %table, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_table_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %17, i32 2)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_table_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %20, i32 2)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call16)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %24, i32 0, i32 0, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %26 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call18 = call %struct._GtkWidget* @gimp_prop_size_entry_new(%struct._GObject* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 1, double 7.200000e+01)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %entry4, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call19)
  %29 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  %30 = load i32, i32* %row, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %row, align 4
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %entry4, align 8
  %call22 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %29, i32 0, i32 %30, i8* %call21, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %31, i32 2, i32 0)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %entry4, align 8
  %33 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %size_entry = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %33, i32 0, i32 15
  store %struct._GtkWidget* %32, %struct._GtkWidget** %size_entry, align 8
  %call23 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %vbox, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call24)
  %36 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %36, %struct._GtkWidget* %37, i32 0, i32 0, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %39 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0)) #8
  %call27 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* %call26)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %button, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call28)
  %42 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %42, %struct._GtkWidget* %43, i32 0, i32 0, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %45 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0)) #8
  %call31 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* %call30)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %button, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_box_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call32)
  %48 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkBox*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %48, %struct._GtkWidget* %49, i32 0, i32 0, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %call34 = call %struct._GtkWidget* @gtk_table_new(i32 6, i32 3, i32 0)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %table, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_table_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call35)
  %53 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %53, i32 2)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call37)
  %56 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %56, i32 2)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_box_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call39)
  %59 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBox*
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %59, %struct._GtkWidget* %60, i32 0, i32 0, i32 0)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %61)
  store i32 0, i32* %row, align 4
  %call41 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call41, %struct._GtkSizeGroup** %size_group, align 8
  %62 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call42 = call %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i32 -1, i32 -1)
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %button, align 8
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_table_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call43)
  %65 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkTable*
  %66 = load i32, i32* %row, align 4
  %inc45 = add nsw i32 %66, 1
  store i32 %inc45, i32* %row, align 4
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0)) #8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call47 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %65, i32 0, i32 %66, i8* %call46, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %67, i32 1, i32 1)
  %68 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %68, %struct._GtkWidget* %69)
  %70 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0)) #8
  %call49 = call %struct._GtkWidget* @gimp_prop_color_button_new(%struct._GObject* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* %call48, i32 40, i32 24, i32 0)
  store %struct._GtkWidget* %call49, %struct._GtkWidget** %button, align 8
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_color_panel_get_type() #6
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call50)
  %73 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpColorPanel*
  %74 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %75 = bitcast %struct._GimpTextOptions* %74 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_context_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call52)
  %76 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpContext*
  call void @gimp_color_panel_set_context(%struct._GimpColorPanel* %73, %struct._GimpContext* %76)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_table_get_type() #6
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call54)
  %79 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkTable*
  %80 = load i32, i32* %row, align 4
  %inc56 = add nsw i32 %80, 1
  store i32 %inc56, i32* %row, align 4
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0)) #8
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call58 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %79, i32 0, i32 %80, i8* %call57, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %81, i32 1, i32 1)
  %82 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %82, %struct._GtkWidget* %83)
  %84 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call59 = call %struct._GtkWidget* @gimp_prop_enum_stock_box_new(%struct._GObject* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 0)
  store %struct._GtkWidget* %call59, %struct._GtkWidget** %box, align 8
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_table_get_type() #6
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call60)
  %87 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkTable*
  %88 = load i32, i32* %row, align 4
  %inc62 = add nsw i32 %88, 1
  store i32 %inc62, i32* %row, align 4
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0)) #8
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %call64 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %87, i32 0, i32 %88, i8* %call63, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %89, i32 2, i32 1)
  %90 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %90, %struct._GtkWidget* %91)
  %92 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %93 = bitcast %struct._GtkSizeGroup* %92 to i8*
  call void @g_object_unref(i8* %93)
  %94 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call65 = call %struct._GtkWidget* @gimp_prop_spin_button_new(%struct._GObject* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), double 1.000000e+00, double 1.000000e+01, i32 1)
  store %struct._GtkWidget* %call65, %struct._GtkWidget** %spinbutton, align 8
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_entry_get_type() #6
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call66)
  %97 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %97, i32 5)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_table_get_type() #6
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call68)
  %100 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkTable*
  %101 = load i32, i32* %row, align 4
  %inc70 = add nsw i32 %101, 1
  store i32 %inc70, i32* %row, align 4
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gimp_table_attach_stock(%struct._GtkTable* %100, i32 %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), %struct._GtkWidget* %102, i32 1, i32 1)
  %103 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call71 = call %struct._GtkWidget* @gimp_prop_spin_button_new(%struct._GObject* %103, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), double 1.000000e+00, double 1.000000e+01, i32 1)
  store %struct._GtkWidget* %call71, %struct._GtkWidget** %spinbutton, align 8
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_entry_get_type() #6
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call72)
  %106 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %106, i32 5)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_table_get_type() #6
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call74)
  %109 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkTable*
  %110 = load i32, i32* %row, align 4
  %inc76 = add nsw i32 %110, 1
  store i32 %inc76, i32* %row, align 4
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gimp_table_attach_stock(%struct._GtkTable* %109, i32 %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), %struct._GtkWidget* %111, i32 1, i32 1)
  %112 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call77 = call %struct._GtkWidget* @gimp_prop_spin_button_new(%struct._GObject* %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), double 1.000000e+00, double 1.000000e+01, i32 1)
  store %struct._GtkWidget* %call77, %struct._GtkWidget** %spinbutton, align 8
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %114 = bitcast %struct._GtkWidget* %113 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_entry_get_type() #6
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call78)
  %115 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %115, i32 5)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_table_get_type() #6
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call80)
  %118 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkTable*
  %119 = load i32, i32* %row, align 4
  %inc82 = add nsw i32 %119, 1
  store i32 %inc82, i32* %row, align 4
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gimp_table_attach_stock(%struct._GtkTable* %118, i32 %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), %struct._GtkWidget* %120, i32 1, i32 1)
  %121 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call83 = call %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject* %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 0, i32 0)
  store %struct._GtkWidget* %call83, %struct._GtkWidget** %combo, align 8
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_table_get_type() #6
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call84)
  %124 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkTable*
  %125 = load i32, i32* %row, align 4
  %inc86 = add nsw i32 %125, 1
  store i32 %inc86, i32* %row, align 4
  %call87 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0)) #8
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call88 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %124, i32 0, i32 %125, i8* %call87, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %126, i32 1, i32 1)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  ret %struct._GtkWidget* %127
}

declare %struct._GtkWidget* @gimp_tool_options_gui(%struct._GimpToolOptions*) #1

declare %struct._GtkWidget* @gimp_prop_font_box_new(%struct._GimpContainer*, %struct._GimpContext*, i8*, i32, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gimp_prop_size_entry_new(%struct._GObject*, i8*, i32, i8*, i8*, i32, double) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject*, i8*, i8*) #1

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

declare %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject*, i8*, i32, i32) #1

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_prop_color_button_new(%struct._GObject*, i8*, i8*, i32, i32, i32) #1

declare void @gimp_color_panel_set_context(%struct._GimpColorPanel*, %struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_panel_get_type() #2

declare %struct._GtkWidget* @gimp_prop_enum_stock_box_new(%struct._GObject*, i8*, i8*, i32, i32) #1

declare void @g_object_unref(i8*) #1

declare %struct._GtkWidget* @gimp_prop_spin_button_new(%struct._GObject*, i8*, double, double, i32) #1

declare void @gtk_entry_set_width_chars(%struct._GtkEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare void @gimp_table_attach_stock(%struct._GtkTable*, i32, i8*, %struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_text_options_editor_new(%struct._GtkWindow* %parent, %struct._Gimp* %gimp, %struct._GimpTextOptions* %options, %struct._GimpMenuFactory* %menu_factory, i8* %title, %struct._GimpText* %text, %struct._GimpTextBuffer* %text_buffer, double %xres, double %yres) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %parent.addr = alloca %struct._GtkWindow*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %options.addr = alloca %struct._GimpTextOptions*, align 8
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %title.addr = alloca i8*, align 8
  %text.addr = alloca %struct._GimpText*, align 8
  %text_buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %xres.addr = alloca double, align 8
  %yres.addr = alloca double, align 8
  %editor = alloca %struct._GtkWidget*, align 8
  %font_name = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %__inst75 = alloca %struct._GTypeInstance*, align 8
  %__t77 = alloca i64, align 8
  %__r80 = alloca i32, align 4
  %tmp95 = alloca i32, align 4
  %__inst103 = alloca %struct._GTypeInstance*, align 8
  %__t105 = alloca i64, align 8
  %__r108 = alloca i32, align 4
  %tmp123 = alloca i32, align 4
  store %struct._GtkWindow* %parent, %struct._GtkWindow** %parent.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpTextOptions* %options, %struct._GimpTextOptions** %options.addr, align 8
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  store %struct._GimpTextBuffer* %text_buffer, %struct._GimpTextBuffer** %text_buffer.addr, align 8
  store double %xres, double* %xres.addr, align 8
  store double %yres, double* %yres.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_text_options_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options.addr, align 8
  %14 = bitcast %struct._GimpTextOptions* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_text_options_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_text_options_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %27 = bitcast %struct._GimpMenuFactory* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_menu_factory_get_type() #6
  store i64 %call44, i64* %__t43, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %do.body.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %do.body.39
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type54, align 8
  %34 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %33, %34
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %36 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #7
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %37 = load i32, i32* %__r46, align 4
  store i32 %37, i32* %tmp61
  %38 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %38, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.60
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_text_options_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %do.body.67

do.body.67:                                       ; preds = %do.end.66
  %39 = load i8*, i8** %title.addr, align 8
  %cmp68 = icmp ne i8* %39, null
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body.67
  br label %if.end.71

if.else.70:                                       ; preds = %do.body.67
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_text_options_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.71:                                        ; preds = %if.then.69
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  br label %do.body.73

do.body.73:                                       ; preds = %do.end.72
  %40 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %41 = bitcast %struct._GimpText* %40 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %41, %struct._GTypeInstance** %__inst75, align 8
  %call78 = call i64 @gimp_text_get_type() #6
  store i64 %call78, i64* %__t77, align 8
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst75, align 8
  %tobool81 = icmp ne %struct._GTypeInstance* %42, null
  br i1 %tobool81, label %if.else.83, label %if.then.82

if.then.82:                                       ; preds = %do.body.73
  store i32 0, i32* %__r80, align 4
  br label %if.end.94

if.else.83:                                       ; preds = %do.body.73
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst75, align 8
  %g_class84 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class84, align 8
  %tobool85 = icmp ne %struct._GTypeClass* %44, null
  br i1 %tobool85, label %land.lhs.true.86, label %if.else.91

land.lhs.true.86:                                 ; preds = %if.else.83
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst75, align 8
  %g_class87 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class87, align 8
  %g_type88 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %46, i32 0, i32 0
  %47 = load i64, i64* %g_type88, align 8
  %48 = load i64, i64* %__t77, align 8
  %cmp89 = icmp eq i64 %47, %48
  br i1 %cmp89, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %land.lhs.true.86
  store i32 1, i32* %__r80, align 4
  br label %if.end.93

if.else.91:                                       ; preds = %land.lhs.true.86, %if.else.83
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst75, align 8
  %50 = load i64, i64* %__t77, align 8
  %call92 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %49, i64 %50) #7
  store i32 %call92, i32* %__r80, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.91, %if.then.90
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.82
  %51 = load i32, i32* %__r80, align 4
  store i32 %51, i32* %tmp95
  %52 = load i32, i32* %tmp95
  %tobool96 = icmp ne i32 %52, 0
  br i1 %tobool96, label %if.then.97, label %if.else.98

if.then.97:                                       ; preds = %if.end.94
  br label %if.end.99

if.else.98:                                       ; preds = %if.end.94
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_text_options_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.99:                                        ; preds = %if.then.97
  br label %do.end.100

do.end.100:                                       ; preds = %if.end.99
  br label %do.body.101

do.body.101:                                      ; preds = %do.end.100
  %53 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %text_buffer.addr, align 8
  %54 = bitcast %struct._GimpTextBuffer* %53 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %54, %struct._GTypeInstance** %__inst103, align 8
  %call106 = call i64 @gimp_text_buffer_get_type() #6
  store i64 %call106, i64* %__t105, align 8
  %55 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst103, align 8
  %tobool109 = icmp ne %struct._GTypeInstance* %55, null
  br i1 %tobool109, label %if.else.111, label %if.then.110

if.then.110:                                      ; preds = %do.body.101
  store i32 0, i32* %__r108, align 4
  br label %if.end.122

if.else.111:                                      ; preds = %do.body.101
  %56 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst103, align 8
  %g_class112 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %56, i32 0, i32 0
  %57 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class112, align 8
  %tobool113 = icmp ne %struct._GTypeClass* %57, null
  br i1 %tobool113, label %land.lhs.true.114, label %if.else.119

land.lhs.true.114:                                ; preds = %if.else.111
  %58 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst103, align 8
  %g_class115 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %58, i32 0, i32 0
  %59 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class115, align 8
  %g_type116 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %59, i32 0, i32 0
  %60 = load i64, i64* %g_type116, align 8
  %61 = load i64, i64* %__t105, align 8
  %cmp117 = icmp eq i64 %60, %61
  br i1 %cmp117, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %land.lhs.true.114
  store i32 1, i32* %__r108, align 4
  br label %if.end.121

if.else.119:                                      ; preds = %land.lhs.true.114, %if.else.111
  %62 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst103, align 8
  %63 = load i64, i64* %__t105, align 8
  %call120 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %62, i64 %63) #7
  store i32 %call120, i32* %__r108, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.119, %if.then.118
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.110
  %64 = load i32, i32* %__r108, align 4
  store i32 %64, i32* %tmp123
  %65 = load i32, i32* %tmp123
  %tobool124 = icmp ne i32 %65, 0
  br i1 %tobool124, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %if.end.122
  br label %if.end.127

if.else.126:                                      ; preds = %if.end.122
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_text_options_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.127:                                       ; preds = %if.then.125
  br label %do.end.128

do.end.128:                                       ; preds = %if.end.127
  %66 = load i8*, i8** %title.addr, align 8
  %67 = load %struct._GtkWindow*, %struct._GtkWindow** %parent.addr, align 8
  %68 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %69 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %70 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %71 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %text_buffer.addr, align 8
  %72 = load double, double* %xres.addr, align 8
  %73 = load double, double* %yres.addr, align 8
  %call129 = call %struct._GtkWidget* @gimp_text_editor_new(i8* %66, %struct._GtkWindow* %67, %struct._Gimp* %68, %struct._GimpMenuFactory* %69, %struct._GimpText* %70, %struct._GimpTextBuffer* %71, double %72, double %73)
  store %struct._GtkWidget* %call129, %struct._GtkWidget** %editor, align 8
  %74 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options.addr, align 8
  %75 = bitcast %struct._GimpTextOptions* %74 to %struct._GTypeInstance*
  %call130 = call i64 @gimp_context_get_type() #6
  %call131 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call130)
  %76 = bitcast %struct._GTypeInstance* %call131 to %struct._GimpContext*
  %call132 = call i8* @gimp_context_get_font_name(%struct._GimpContext* %76)
  store i8* %call132, i8** %font_name, align 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call133 = call i64 @gimp_text_editor_get_type() #6
  %call134 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call133)
  %79 = bitcast %struct._GTypeInstance* %call134 to %struct._GimpTextEditor*
  %80 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options.addr, align 8
  %base_dir = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %80, i32 0, i32 6
  %81 = load i32, i32* %base_dir, align 4
  call void @gimp_text_editor_set_direction(%struct._GimpTextEditor* %79, i32 %81)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call135 = call i64 @gimp_text_editor_get_type() #6
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call135)
  %84 = bitcast %struct._GTypeInstance* %call136 to %struct._GimpTextEditor*
  %85 = load i8*, i8** %font_name, align 8
  call void @gimp_text_editor_set_font_name(%struct._GimpTextEditor* %84, i8* %85)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  %87 = bitcast %struct._GtkWidget* %86 to i8*
  %88 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options.addr, align 8
  %89 = bitcast %struct._GimpTextOptions* %88 to i8*
  %call137 = call i64 @g_signal_connect_object(i8* %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextEditor*, %struct._GimpTextOptions*)* @gimp_text_options_editor_dir_changed to void ()*), i8* %89, i32 0)
  %90 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options.addr, align 8
  %91 = bitcast %struct._GimpTextOptions* %90 to i8*
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  %93 = bitcast %struct._GtkWidget* %92 to i8*
  %call138 = call i64 @g_signal_connect_object(i8* %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextOptions*, %struct._GParamSpec*, %struct._GimpTextEditor*)* @gimp_text_options_editor_notify_dir to void ()*), i8* %93, i32 0)
  %94 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options.addr, align 8
  %95 = bitcast %struct._GimpTextOptions* %94 to i8*
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  %97 = bitcast %struct._GtkWidget* %96 to i8*
  %call139 = call i64 @g_signal_connect_object(i8* %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextOptions*, %struct._GParamSpec*, %struct._GimpTextEditor*)* @gimp_text_options_editor_notify_font to void ()*), i8* %97, i32 0)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  store %struct._GtkWidget* %98, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.128, %if.else.126, %if.else.98, %if.else.70, %if.else.64, %if.else.36, %if.else.9
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %99
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_menu_factory_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_text_buffer_get_type() #2

declare %struct._GtkWidget* @gimp_text_editor_new(i8*, %struct._GtkWindow*, %struct._Gimp*, %struct._GimpMenuFactory*, %struct._GimpText*, %struct._GimpTextBuffer*, double, double) #1

declare void @gimp_text_editor_set_direction(%struct._GimpTextEditor*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_editor_get_type() #2

declare void @gimp_text_editor_set_font_name(%struct._GimpTextEditor*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_options_editor_dir_changed(%struct._GimpTextEditor* %editor, %struct._GimpTextOptions* %options) #3 {
entry:
  %editor.addr = alloca %struct._GimpTextEditor*, align 8
  %options.addr = alloca %struct._GimpTextOptions*, align 8
  store %struct._GimpTextEditor* %editor, %struct._GimpTextEditor** %editor.addr, align 8
  store %struct._GimpTextOptions* %options, %struct._GimpTextOptions** %options.addr, align 8
  %0 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpTextOptions* %0 to i8*
  %2 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %base_dir = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %2, i32 0, i32 1
  %3 = load i32, i32* %base_dir, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i32 %3, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_options_editor_notify_dir(%struct._GimpTextOptions* %options, %struct._GParamSpec* %pspec, %struct._GimpTextEditor* %editor) #3 {
entry:
  %options.addr = alloca %struct._GimpTextOptions*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor.addr = alloca %struct._GimpTextEditor*, align 8
  %dir = alloca i32, align 4
  store %struct._GimpTextOptions* %options, %struct._GimpTextOptions** %options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpTextEditor* %editor, %struct._GimpTextEditor** %editor.addr, align 8
  %0 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpTextOptions* %0 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i32* %dir, i8* null)
  %2 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %3 = load i32, i32* %dir, align 4
  call void @gimp_text_editor_set_direction(%struct._GimpTextEditor* %2, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_options_editor_notify_font(%struct._GimpTextOptions* %options, %struct._GParamSpec* %pspec, %struct._GimpTextEditor* %editor) #3 {
entry:
  %options.addr = alloca %struct._GimpTextOptions*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor.addr = alloca %struct._GimpTextEditor*, align 8
  %font_name = alloca i8*, align 8
  store %struct._GimpTextOptions* %options, %struct._GimpTextOptions** %options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpTextEditor* %editor, %struct._GimpTextEditor** %editor.addr, align 8
  %0 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpTextOptions* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  %call2 = call i8* @gimp_context_get_font_name(%struct._GimpContext* %2)
  store i8* %call2, i8** %font_name, align 8
  %3 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %4 = load i8*, i8** %font_name, align 8
  call void @gimp_text_editor_set_font_name(%struct._GimpTextEditor* %3, i8* %4)
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_options_class_init(%struct._GimpToolOptionsClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpToolOptionsClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %options_class = alloca %struct._GimpToolOptionsClass*, align 8
  store %struct._GimpToolOptionsClass* %klass, %struct._GimpToolOptionsClass** %klass.addr, align 8
  %0 = load %struct._GimpToolOptionsClass*, %struct._GimpToolOptionsClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpToolOptionsClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpToolOptionsClass*, %struct._GimpToolOptionsClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpToolOptionsClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_options_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolOptionsClass*
  store %struct._GimpToolOptionsClass* %5, %struct._GimpToolOptionsClass** %options_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_text_options_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_text_options_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_text_options_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GimpToolOptionsClass*, %struct._GimpToolOptionsClass** %options_class, align 8
  %reset = getelementptr inbounds %struct._GimpToolOptionsClass, %struct._GimpToolOptionsClass* %9, i32 0, i32 1
  store void (%struct._GimpToolOptions*)* @gimp_text_options_reset, void (%struct._GimpToolOptions*)** %reset, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* null, i8* null, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 3, %struct._GParamSpec* %call3)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), i32 1, i32 0, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 30, %struct._GParamSpec* %call4)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), double 0.000000e+00, double 8.192000e+03, double 1.800000e+01, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 29, %struct._GParamSpec* %call5)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 31, %struct._GParamSpec* %call6)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call i64 @gimp_text_hint_style_get_type() #6
  %call8 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.45, i32 0, i32 0), i64 %call7, i32 2, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 32, %struct._GParamSpec* %call8)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._PangoLanguage* @gtk_get_default_language()
  %16 = bitcast %struct._PangoLanguage* %call9 to i8*
  %call10 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.47, i32 0, i32 0), i8* %16, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 33, %struct._GParamSpec* %call10)
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call11 = call i64 @gimp_text_direction_get_type() #6
  %call12 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i8* null, i8* null, i64 %call11, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 34, %struct._GParamSpec* %call12)
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call13 = call i64 @gimp_text_justification_get_type() #6
  %call14 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i64 %call13, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 35, %struct._GParamSpec* %call14)
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call15 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i32 0, i32 0), double -8.192000e+03, double 8.192000e+03, double 0.000000e+00, i32 4583)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 36, %struct._GParamSpec* %call15)
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call16 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0), double -8.192000e+03, double 8.192000e+03, double 0.000000e+00, i32 4583)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 37, %struct._GParamSpec* %call16)
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call17 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i32 0, i32 0), double -8.192000e+03, double 8.192000e+03, double 0.000000e+00, i32 4583)
  call void @g_object_class_install_property(%struct._GObjectClass* %21, i32 38, %struct._GParamSpec* %call17)
  %22 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call18 = call i64 @gimp_text_box_mode_get_type() #6
  %call19 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.53, i32 0, i32 0), i64 %call18, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %22, i32 39, %struct._GParamSpec* %call19)
  %23 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call20 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.54, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %23, i32 40, %struct._GParamSpec* %call20)
  %24 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call21 = call i64 @gimp_view_type_get_type() #6
  %call22 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i64 %call21, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %24, i32 41, %struct._GParamSpec* %call22)
  %25 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call23 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, i32 12, i32 64, i32 24, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %25, i32 42, %struct._GParamSpec* %call23)
  %26 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  call void @gimp_rectangle_options_install_properties(%struct._GObjectClass* %26)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_options_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %options = alloca %struct._GimpTextOptions*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_options_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextOptions*
  store %struct._GimpTextOptions* %2, %struct._GimpTextOptions** %options, align 8
  %3 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %language = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %3, i32 0, i32 5
  %4 = load i8*, i8** %language, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %language2 = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %5, i32 0, i32 5
  %6 = load i8*, i8** %language2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %language3 = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %7, i32 0, i32 5
  store i8* null, i8** %language3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_text_options_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_options_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %options = alloca %struct._GimpTextOptions*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_options_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextOptions*
  store %struct._GimpTextOptions* %2, %struct._GimpTextOptions** %options, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 29, label %sw.bb
    i32 30, label %sw.bb.3
    i32 31, label %sw.bb.5
    i32 32, label %sw.bb.7
    i32 34, label %sw.bb.9
    i32 33, label %sw.bb.11
    i32 35, label %sw.bb.14
    i32 36, label %sw.bb.16
    i32 37, label %sw.bb.18
    i32 38, label %sw.bb.20
    i32 39, label %sw.bb.22
    i32 40, label %sw.bb.24
    i32 41, label %sw.bb.26
    i32 42, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call double @g_value_get_double(%struct._GValue* %4)
  %5 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %font_size = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %5, i32 0, i32 2
  store double %call2, double* %font_size, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_int(%struct._GValue* %6)
  %7 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %unit = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %7, i32 0, i32 1
  store i32 %call4, i32* %unit, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %8)
  %9 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %antialias = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %9, i32 0, i32 3
  store i32 %call6, i32* %antialias, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_enum(%struct._GValue* %10)
  %11 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %hint_style = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %11, i32 0, i32 4
  store i32 %call8, i32* %hint_style, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_enum(%struct._GValue* %12)
  %13 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %base_dir = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %13, i32 0, i32 6
  store i32 %call10, i32* %base_dir, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %14 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %language = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %14, i32 0, i32 5
  %15 = load i8*, i8** %language, align 8
  call void @g_free(i8* %15)
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i8* @g_value_dup_string(%struct._GValue* %16)
  %17 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %language13 = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %17, i32 0, i32 5
  store i8* %call12, i8** %language13, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call15 = call i32 @g_value_get_enum(%struct._GValue* %18)
  %19 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %justify = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %19, i32 0, i32 7
  store i32 %call15, i32* %justify, align 4
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call17 = call double @g_value_get_double(%struct._GValue* %20)
  %21 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %indent = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %21, i32 0, i32 8
  store double %call17, double* %indent, align 8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call19 = call double @g_value_get_double(%struct._GValue* %22)
  %23 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %line_spacing = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %23, i32 0, i32 9
  store double %call19, double* %line_spacing, align 8
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %24 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call21 = call double @g_value_get_double(%struct._GValue* %24)
  %25 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %letter_spacing = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %25, i32 0, i32 10
  store double %call21, double* %letter_spacing, align 8
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  %26 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call23 = call i32 @g_value_get_enum(%struct._GValue* %26)
  %27 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %box_mode = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %27, i32 0, i32 11
  store i32 %call23, i32* %box_mode, align 4
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call25 = call i32 @g_value_get_boolean(%struct._GValue* %28)
  %29 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %use_editor = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %29, i32 0, i32 14
  store i32 %call25, i32* %use_editor, align 4
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %30 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call27 = call i32 @g_value_get_enum(%struct._GValue* %30)
  %31 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %font_view_type = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %31, i32 0, i32 12
  store i32 %call27, i32* %font_view_type, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  %32 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call29 = call i32 @g_value_get_int(%struct._GValue* %32)
  %33 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %font_view_size = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %33, i32 0, i32 13
  store i32 %call29, i32* %font_view_size, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %34 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %35 = load i32, i32* %property_id.addr, align 4
  %36 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %37 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  call void @gimp_rectangle_options_set_property(%struct._GObject* %34, i32 %35, %struct._GValue* %36, %struct._GParamSpec* %37)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.28, %sw.bb.26, %sw.bb.24, %sw.bb.22, %sw.bb.20, %sw.bb.18, %sw.bb.16, %sw.bb.14, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_options_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %options = alloca %struct._GimpTextOptions*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_options_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextOptions*
  store %struct._GimpTextOptions* %2, %struct._GimpTextOptions** %options, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 29, label %sw.bb
    i32 30, label %sw.bb.2
    i32 31, label %sw.bb.3
    i32 32, label %sw.bb.4
    i32 33, label %sw.bb.5
    i32 34, label %sw.bb.6
    i32 35, label %sw.bb.7
    i32 36, label %sw.bb.8
    i32 37, label %sw.bb.9
    i32 38, label %sw.bb.10
    i32 39, label %sw.bb.11
    i32 40, label %sw.bb.12
    i32 41, label %sw.bb.13
    i32 42, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %font_size = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %5, i32 0, i32 2
  %6 = load double, double* %font_size, align 8
  call void @g_value_set_double(%struct._GValue* %4, double %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %unit = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %8, i32 0, i32 1
  %9 = load i32, i32* %unit, align 4
  call void @g_value_set_int(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %antialias = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %11, i32 0, i32 3
  %12 = load i32, i32* %antialias, align 4
  call void @g_value_set_boolean(%struct._GValue* %10, i32 %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %hint_style = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %14, i32 0, i32 4
  %15 = load i32, i32* %hint_style, align 4
  call void @g_value_set_enum(%struct._GValue* %13, i32 %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %language = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %17, i32 0, i32 5
  %18 = load i8*, i8** %language, align 8
  call void @g_value_set_string(%struct._GValue* %16, i8* %18)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %base_dir = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %20, i32 0, i32 6
  %21 = load i32, i32* %base_dir, align 4
  call void @g_value_set_enum(%struct._GValue* %19, i32 %21)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %justify = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %23, i32 0, i32 7
  %24 = load i32, i32* %justify, align 4
  call void @g_value_set_enum(%struct._GValue* %22, i32 %24)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %indent = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %26, i32 0, i32 8
  %27 = load double, double* %indent, align 8
  call void @g_value_set_double(%struct._GValue* %25, double %27)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %29 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %line_spacing = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %29, i32 0, i32 9
  %30 = load double, double* %line_spacing, align 8
  call void @g_value_set_double(%struct._GValue* %28, double %30)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %31 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %32 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %letter_spacing = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %32, i32 0, i32 10
  %33 = load double, double* %letter_spacing, align 8
  call void @g_value_set_double(%struct._GValue* %31, double %33)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %34 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %35 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %box_mode = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %35, i32 0, i32 11
  %36 = load i32, i32* %box_mode, align 4
  call void @g_value_set_enum(%struct._GValue* %34, i32 %36)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %37 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %38 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %use_editor = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %38, i32 0, i32 14
  %39 = load i32, i32* %use_editor, align 4
  call void @g_value_set_boolean(%struct._GValue* %37, i32 %39)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %40 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %41 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %font_view_type = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %41, i32 0, i32 12
  %42 = load i32, i32* %font_view_type, align 4
  call void @g_value_set_enum(%struct._GValue* %40, i32 %42)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %43 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %44 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %font_view_size = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %44, i32 0, i32 13
  %45 = load i32, i32* %font_view_size, align 4
  call void @g_value_set_int(%struct._GValue* %43, i32 %45)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %46 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %47 = load i32, i32* %property_id.addr, align 4
  %48 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %49 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  call void @gimp_rectangle_options_get_property(%struct._GObject* %46, i32 %47, %struct._GValue* %48, %struct._GParamSpec* %49)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_options_reset(%struct._GimpToolOptions* %tool_options) #3 {
entry:
  %tool_options.addr = alloca %struct._GimpToolOptions*, align 8
  %object = alloca %struct._GObject*, align 8
  store %struct._GimpToolOptions* %tool_options, %struct._GimpToolOptions** %tool_options.addr, align 8
  %0 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %1 = bitcast %struct._GimpToolOptions* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  store %struct._GObject* %2, %struct._GObject** %object, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object, align 8
  call void @gimp_config_reset_property(%struct._GObject* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0))
  %4 = load %struct._GObject*, %struct._GObject** %object, align 8
  call void @gimp_config_reset_property(%struct._GObject* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0))
  %5 = load %struct._GObject*, %struct._GObject** %object, align 8
  call void @gimp_config_reset_property(%struct._GObject* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0))
  %6 = load %struct._GObject*, %struct._GObject** %object, align 8
  call void @gimp_config_reset_property(%struct._GObject* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0))
  %7 = load %struct._GObject*, %struct._GObject** %object, align 8
  call void @gimp_config_reset_property(%struct._GObject* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0))
  %8 = load %struct._GObject*, %struct._GObject** %object, align 8
  call void @gimp_config_reset_property(%struct._GObject* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0))
  %9 = load %struct._GObject*, %struct._GObject** %object, align 8
  call void @gimp_config_reset_property(%struct._GObject* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0))
  %10 = load %struct._GObject*, %struct._GObject** %object, align 8
  call void @gimp_config_reset_property(%struct._GObject* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0))
  %11 = load %struct._GObject*, %struct._GObject** %object, align 8
  call void @gimp_config_reset_property(%struct._GObject* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0))
  %12 = load %struct._GObject*, %struct._GObject** %object, align 8
  call void @gimp_config_reset_property(%struct._GObject* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0))
  %13 = load %struct._GObject*, %struct._GObject** %object, align 8
  call void @gimp_config_reset_property(%struct._GObject* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0))
  %14 = load %struct._GObject*, %struct._GObject** %object, align 8
  call void @gimp_config_reset_property(%struct._GObject* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0))
  %15 = load %struct._GObject*, %struct._GObject** %object, align 8
  call void @gimp_config_reset_property(%struct._GObject* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0))
  %16 = load %struct._GObject*, %struct._GObject** %object, align 8
  call void @gimp_config_reset_property(%struct._GObject* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0))
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_unit(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_hint_style_get_type() #2

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare %struct._PangoLanguage* @gtk_get_default_language() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_direction_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_text_justification_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_text_box_mode_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_view_type_get_type() #2

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare void @gimp_rectangle_options_install_properties(%struct._GObjectClass*) #1

declare void @g_free(i8*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

declare void @gimp_rectangle_options_set_property(%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare void @gimp_rectangle_options_get_property(%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*) #1

declare void @gimp_config_reset_property(%struct._GObject*, i8*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gimp_context_set_font_name(%struct._GimpContext*, i8*) #1

declare void @gimp_context_set_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @g_object_get(i8*, i8*, ...) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
