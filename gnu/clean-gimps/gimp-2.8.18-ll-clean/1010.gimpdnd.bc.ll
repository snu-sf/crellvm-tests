; ModuleID = './app/widgets/gimpdnd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { {}*, {}*, {}*, {}*, {}*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, {}* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type { %struct._GimpViewable, %struct._TileManager*, i32, i32 }
%struct._TileManager = type opaque
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpToolOptions = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type { %struct._GimpViewable }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpDndDataDef = type { %struct._GtkTargetEntry, i8*, i8*, i8*, i8*, %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)*, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* }
%struct._GtkTargetEntry = type { i8*, i32, i32 }
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
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._GtkSelectionData = type { %struct._GdkAtom*, %struct._GdkAtom*, %struct._GdkAtom*, i32, i8*, i32, %struct._GdkDisplay* }
%struct._GdkAtom = type opaque
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GtkTargetList = type { %struct._GList*, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GdkPixbuf = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpViewRendererImage = type { %struct._GimpViewRenderer, i32 }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._TempBuf = type opaque
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque
%struct._GimpPattern = type { %struct._GimpData, %struct._TempBuf* }
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }
%struct._GimpPalette = type { %struct._GimpData, %struct._GList*, i32, i32 }
%struct._GimpFont = type opaque
%struct._GimpImagefile = type { %struct._GimpViewable }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_dnd_init = private unnamed_addr constant [14 x i8] c"gimp_dnd_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@the_dnd_gimp = internal global %struct._Gimp* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"the_dnd_gimp == NULL\00", align 1
@__func__.gimp_dnd_uri_list_source_add = private unnamed_addr constant [29 x i8] c"gimp_dnd_uri_list_source_add\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (widget)\00", align 1
@__func__.gimp_dnd_uri_list_source_remove = private unnamed_addr constant [32 x i8] c"gimp_dnd_uri_list_source_remove\00", align 1
@__func__.gimp_dnd_uri_list_dest_add = private unnamed_addr constant [27 x i8] c"gimp_dnd_uri_list_dest_add\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"gtk-drag-dest\00", align 1
@__func__.gimp_dnd_uri_list_dest_remove = private unnamed_addr constant [30 x i8] c"gimp_dnd_uri_list_dest_remove\00", align 1
@__func__.gimp_dnd_xds_source_add = private unnamed_addr constant [24 x i8] c"gimp_dnd_xds_source_add\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"gimp-dnd-xds-drag-begin\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"drag-begin\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"gimp-dnd-xds-drag-end\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"drag-end\00", align 1
@__func__.gimp_dnd_xds_source_remove = private unnamed_addr constant [27 x i8] c"gimp_dnd_xds_source_remove\00", align 1
@__func__.gimp_dnd_color_source_add = private unnamed_addr constant [26 x i8] c"gimp_dnd_color_source_add\00", align 1
@__func__.gimp_dnd_color_source_remove = private unnamed_addr constant [29 x i8] c"gimp_dnd_color_source_remove\00", align 1
@__func__.gimp_dnd_color_dest_add = private unnamed_addr constant [24 x i8] c"gimp_dnd_color_dest_add\00", align 1
@__func__.gimp_dnd_color_dest_remove = private unnamed_addr constant [27 x i8] c"gimp_dnd_color_dest_remove\00", align 1
@__func__.gimp_dnd_svg_source_add = private unnamed_addr constant [24 x i8] c"gimp_dnd_svg_source_add\00", align 1
@__func__.gimp_dnd_svg_source_remove = private unnamed_addr constant [27 x i8] c"gimp_dnd_svg_source_remove\00", align 1
@__func__.gimp_dnd_svg_dest_add = private unnamed_addr constant [22 x i8] c"gimp_dnd_svg_dest_add\00", align 1
@__func__.gimp_dnd_svg_dest_remove = private unnamed_addr constant [25 x i8] c"gimp_dnd_svg_dest_remove\00", align 1
@__func__.gimp_dnd_pixbuf_source_add = private unnamed_addr constant [27 x i8] c"gimp_dnd_pixbuf_source_add\00", align 1
@__func__.gimp_dnd_pixbuf_source_remove = private unnamed_addr constant [30 x i8] c"gimp_dnd_pixbuf_source_remove\00", align 1
@__func__.gimp_dnd_pixbuf_dest_add = private unnamed_addr constant [25 x i8] c"gimp_dnd_pixbuf_dest_add\00", align 1
@__func__.gimp_dnd_pixbuf_dest_remove = private unnamed_addr constant [28 x i8] c"gimp_dnd_pixbuf_dest_remove\00", align 1
@__func__.gimp_dnd_component_source_add = private unnamed_addr constant [30 x i8] c"gimp_dnd_component_source_add\00", align 1
@__func__.gimp_dnd_component_source_remove = private unnamed_addr constant [33 x i8] c"gimp_dnd_component_source_remove\00", align 1
@__func__.gimp_dnd_component_dest_add = private unnamed_addr constant [28 x i8] c"gimp_dnd_component_dest_add\00", align 1
@__func__.gimp_dnd_component_dest_remove = private unnamed_addr constant [31 x i8] c"gimp_dnd_component_dest_remove\00", align 1
@__func__.gimp_dnd_drag_source_set_by_type = private unnamed_addr constant [33 x i8] c"gimp_dnd_drag_source_set_by_type\00", align 1
@dnd_data_defs = internal constant [25 x %struct._GimpDndDataDef] [%struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* null, i32 0, i32 -1 }, i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* null, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* null, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* null }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i32 0, i32 1 }, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* null, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_get_uri_list_data, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_uri_list_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 2 }, i8* null, i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* null, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* null, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_uri_list_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 3 }, i8* null, i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* null, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* null, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_uri_list_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i32 0, i32 4 }, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* null, %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* @gimp_dnd_get_viewable_icon, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_get_xds_data, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* null }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i32 0, i32 5 }, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* @gimp_dnd_get_color_icon, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_get_color_data, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_color_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i32 0, i32 6 }, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* @gimp_dnd_get_viewable_icon, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_get_stream_data, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_stream_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), i32 0, i32 7 }, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* @gimp_dnd_get_viewable_icon, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_get_stream_data, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_stream_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* null, i32 0, i32 8 }, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.49, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* @gimp_dnd_get_viewable_icon, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_get_pixbuf_data, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_pixbuf_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i32 0, i32 0), i32 1, i32 9 }, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* @gimp_dnd_get_viewable_icon, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_get_image_data, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_image_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.55, i32 0, i32 0), i32 1, i32 10 }, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.59, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* @gimp_dnd_get_component_icon, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_get_component_data, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_component_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.60, i32 0, i32 0), i32 1, i32 11 }, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.64, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* @gimp_dnd_get_viewable_icon, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_get_item_data, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_item_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.65, i32 0, i32 0), i32 1, i32 12 }, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.69, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* @gimp_dnd_get_viewable_icon, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_get_item_data, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_item_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.70, i32 0, i32 0), i32 1, i32 13 }, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.74, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* @gimp_dnd_get_viewable_icon, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_get_item_data, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_item_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.75, i32 0, i32 0), i32 1, i32 14 }, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.79, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* @gimp_dnd_get_viewable_icon, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_get_item_data, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_item_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.80, i32 0, i32 0), i32 0, i32 15 }, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.84, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* @gimp_dnd_get_viewable_icon, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_get_object_data, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_brush_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.85, i32 0, i32 0), i32 0, i32 16 }, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.89, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* @gimp_dnd_get_viewable_icon, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_get_object_data, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_pattern_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.90, i32 0, i32 0), i32 0, i32 17 }, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.94, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* @gimp_dnd_get_viewable_icon, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_get_object_data, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_gradient_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.95, i32 0, i32 0), i32 0, i32 18 }, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.99, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* @gimp_dnd_get_viewable_icon, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_get_object_data, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_palette_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.100, i32 0, i32 0), i32 0, i32 19 }, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.104, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* @gimp_dnd_get_viewable_icon, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_get_object_data, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_font_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.105, i32 0, i32 0), i32 1, i32 20 }, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.109, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* @gimp_dnd_get_viewable_icon, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_get_object_data, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_buffer_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.110, i32 0, i32 0), i32 1, i32 21 }, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.114, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* @gimp_dnd_get_viewable_icon, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_get_object_data, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_imagefile_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.115, i32 0, i32 0), i32 1, i32 22 }, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.119, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* @gimp_dnd_get_viewable_icon, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_get_object_data, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_template_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.120, i32 0, i32 0), i32 1, i32 23 }, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.124, i32 0, i32 0), %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* @gimp_dnd_get_viewable_icon, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_get_object_data, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* @gimp_dnd_set_tool_info_data }, %struct._GimpDndDataDef { %struct._GtkTargetEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.125, i32 0, i32 0), i32 1, i32 24 }, i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)* null, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)* null, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)* null }], align 16
@__func__.gimp_dnd_drag_dest_set_by_type = private unnamed_addr constant [31 x i8] c"gimp_dnd_drag_dest_set_by_type\00", align 1
@__func__.gimp_dnd_viewable_source_add = private unnamed_addr constant [29 x i8] c"gimp_dnd_viewable_source_add\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"get_viewable_func != NULL\00", align 1
@__func__.gimp_dnd_viewable_source_remove = private unnamed_addr constant [32 x i8] c"gimp_dnd_viewable_source_remove\00", align 1
@__func__.gimp_dnd_viewable_dest_add = private unnamed_addr constant [27 x i8] c"gimp_dnd_viewable_dest_add\00", align 1
@__func__.gimp_dnd_viewable_dest_remove = private unnamed_addr constant [30 x i8] c"gimp_dnd_viewable_dest_remove\00", align 1
@__func__.gimp_dnd_get_drag_data = private unnamed_addr constant [23 x i8] c"gimp_dnd_get_drag_data\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"gimp-dnd-get-data-type\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"gtk-site-data\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"gimp-dnd-drag-connected\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"drag-data-get\00", align 1
@gimp_log_flags = external global i32, align 4
@__func__.gimp_dnd_data_drag_begin = private unnamed_addr constant [25 x i8] c"gimp_dnd_data_drag_begin\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"data type %d\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"gimp-dnd-data-widget\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"gimp-gdk-drag-context\00", align 1
@__func__.gimp_dnd_data_drag_end = private unnamed_addr constant [23 x i8] c"gimp_dnd_data_drag_end\00", align 1
@__func__.gimp_dnd_data_drag_handle = private unnamed_addr constant [26 x i8] c"gimp_dnd_data_drag_handle\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"target %s\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"gimp-dnd-drop-connected\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"drag-data-received\00", align 1
@__func__.gimp_dnd_data_drop_handle = private unnamed_addr constant [26 x i8] c"gimp_dnd_data_drop_handle\00", align 1
@__func__.gimp_dnd_xds_drag_begin = private unnamed_addr constant [24 x i8] c"gimp_dnd_xds_drag_begin\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"image %p\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"text/uri-list\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"gimp-dnd-get-uri-list-func\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"gimp-dnd-get-uri-list-data\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"gimp-dnd-set-uri-list-func\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"gimp-dnd-set-uri-list-data\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"_NETSCAPE_URL\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"XdndDirectSave0\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"gimp-dnd-get-xds-func\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"gimp-dnd-get-xds-data\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"application/x-color\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"gimp-dnd-get-color-func\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"gimp-dnd-get-color-data\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"gimp-dnd-set-color-func\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"gimp-dnd-set-color-data\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"image/svg\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"gimp-dnd-get-svg-func\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"gimp-dnd-get-svg-data\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"gimp-dnd-set-svg-func\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"gimp-dnd-set-svg-data\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"image/svg+xml\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"gimp-dnd-get-svg-xml-func\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"gimp-dnd-get-svg-xml-data\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"gimp-dnd-set-svg-xml-func\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"gimp-dnd-set-svg-xml-data\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"gimp-dnd-get-pixbuf-func\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"gimp-dnd-get-pixbuf-data\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"gimp-dnd-set-pixbuf-func\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"gimp-dnd-set-pixbuf-data\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"application/x-gimp-image-id\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"gimp-dnd-get-image-func\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"gimp-dnd-get-image-data\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"gimp-dnd-set-image-func\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"gimp-dnd-set-image-data\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"application/x-gimp-component\00", align 1
@.str.56 = private unnamed_addr constant [28 x i8] c"gimp-dnd-get-component-func\00", align 1
@.str.57 = private unnamed_addr constant [28 x i8] c"gimp-dnd-get-component-data\00", align 1
@.str.58 = private unnamed_addr constant [28 x i8] c"gimp-dnd-set-component-func\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"gimp-dnd-set-component-data\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"application/x-gimp-layer-id\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"gimp-dnd-get-layer-func\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"gimp-dnd-get-layer-data\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"gimp-dnd-set-layer-func\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"gimp-dnd-set-layer-data\00", align 1
@.str.65 = private unnamed_addr constant [30 x i8] c"application/x-gimp-channel-id\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"gimp-dnd-get-channel-func\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"gimp-dnd-get-channel-data\00", align 1
@.str.68 = private unnamed_addr constant [26 x i8] c"gimp-dnd-set-channel-func\00", align 1
@.str.69 = private unnamed_addr constant [26 x i8] c"gimp-dnd-set-channel-data\00", align 1
@.str.70 = private unnamed_addr constant [33 x i8] c"application/x-gimp-layer-mask-id\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"gimp-dnd-get-layer-mask-func\00", align 1
@.str.72 = private unnamed_addr constant [29 x i8] c"gimp-dnd-get-layer-mask-data\00", align 1
@.str.73 = private unnamed_addr constant [29 x i8] c"gimp-dnd-set-layer-mask-func\00", align 1
@.str.74 = private unnamed_addr constant [29 x i8] c"gimp-dnd-set-layer-mask-data\00", align 1
@.str.75 = private unnamed_addr constant [30 x i8] c"application/x-gimp-vectors-id\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"gimp-dnd-get-vectors-func\00", align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"gimp-dnd-get-vectors-data\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"gimp-dnd-set-vectors-func\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"gimp-dnd-set-vectors-data\00", align 1
@.str.80 = private unnamed_addr constant [30 x i8] c"application/x-gimp-brush-name\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"gimp-dnd-get-brush-func\00", align 1
@.str.82 = private unnamed_addr constant [24 x i8] c"gimp-dnd-get-brush-data\00", align 1
@.str.83 = private unnamed_addr constant [24 x i8] c"gimp-dnd-set-brush-func\00", align 1
@.str.84 = private unnamed_addr constant [24 x i8] c"gimp-dnd-set-brush-data\00", align 1
@.str.85 = private unnamed_addr constant [32 x i8] c"application/x-gimp-pattern-name\00", align 1
@.str.86 = private unnamed_addr constant [26 x i8] c"gimp-dnd-get-pattern-func\00", align 1
@.str.87 = private unnamed_addr constant [26 x i8] c"gimp-dnd-get-pattern-data\00", align 1
@.str.88 = private unnamed_addr constant [26 x i8] c"gimp-dnd-set-pattern-func\00", align 1
@.str.89 = private unnamed_addr constant [26 x i8] c"gimp-dnd-set-pattern-data\00", align 1
@.str.90 = private unnamed_addr constant [33 x i8] c"application/x-gimp-gradient-name\00", align 1
@.str.91 = private unnamed_addr constant [27 x i8] c"gimp-dnd-get-gradient-func\00", align 1
@.str.92 = private unnamed_addr constant [27 x i8] c"gimp-dnd-get-gradient-data\00", align 1
@.str.93 = private unnamed_addr constant [27 x i8] c"gimp-dnd-set-gradient-func\00", align 1
@.str.94 = private unnamed_addr constant [27 x i8] c"gimp-dnd-set-gradient-data\00", align 1
@.str.95 = private unnamed_addr constant [32 x i8] c"application/x-gimp-palette-name\00", align 1
@.str.96 = private unnamed_addr constant [26 x i8] c"gimp-dnd-get-palette-func\00", align 1
@.str.97 = private unnamed_addr constant [26 x i8] c"gimp-dnd-get-palette-data\00", align 1
@.str.98 = private unnamed_addr constant [26 x i8] c"gimp-dnd-set-palette-func\00", align 1
@.str.99 = private unnamed_addr constant [26 x i8] c"gimp-dnd-set-palette-data\00", align 1
@.str.100 = private unnamed_addr constant [29 x i8] c"application/x-gimp-font-name\00", align 1
@.str.101 = private unnamed_addr constant [23 x i8] c"gimp-dnd-get-font-func\00", align 1
@.str.102 = private unnamed_addr constant [23 x i8] c"gimp-dnd-get-font-data\00", align 1
@.str.103 = private unnamed_addr constant [23 x i8] c"gimp-dnd-set-font-func\00", align 1
@.str.104 = private unnamed_addr constant [23 x i8] c"gimp-dnd-set-font-data\00", align 1
@.str.105 = private unnamed_addr constant [31 x i8] c"application/x-gimp-buffer-name\00", align 1
@.str.106 = private unnamed_addr constant [25 x i8] c"gimp-dnd-get-buffer-func\00", align 1
@.str.107 = private unnamed_addr constant [25 x i8] c"gimp-dnd-get-buffer-data\00", align 1
@.str.108 = private unnamed_addr constant [25 x i8] c"gimp-dnd-set-buffer-func\00", align 1
@.str.109 = private unnamed_addr constant [25 x i8] c"gimp-dnd-set-buffer-data\00", align 1
@.str.110 = private unnamed_addr constant [34 x i8] c"application/x-gimp-imagefile-name\00", align 1
@.str.111 = private unnamed_addr constant [28 x i8] c"gimp-dnd-get-imagefile-func\00", align 1
@.str.112 = private unnamed_addr constant [28 x i8] c"gimp-dnd-get-imagefile-data\00", align 1
@.str.113 = private unnamed_addr constant [28 x i8] c"gimp-dnd-set-imagefile-func\00", align 1
@.str.114 = private unnamed_addr constant [28 x i8] c"gimp-dnd-set-imagefile-data\00", align 1
@.str.115 = private unnamed_addr constant [33 x i8] c"application/x-gimp-template-name\00", align 1
@.str.116 = private unnamed_addr constant [27 x i8] c"gimp-dnd-get-template-func\00", align 1
@.str.117 = private unnamed_addr constant [27 x i8] c"gimp-dnd-get-template-data\00", align 1
@.str.118 = private unnamed_addr constant [27 x i8] c"gimp-dnd-set-template-func\00", align 1
@.str.119 = private unnamed_addr constant [27 x i8] c"gimp-dnd-set-template-data\00", align 1
@.str.120 = private unnamed_addr constant [34 x i8] c"application/x-gimp-tool-info-name\00", align 1
@.str.121 = private unnamed_addr constant [28 x i8] c"gimp-dnd-get-tool-info-func\00", align 1
@.str.122 = private unnamed_addr constant [28 x i8] c"gimp-dnd-get-tool-info-data\00", align 1
@.str.123 = private unnamed_addr constant [28 x i8] c"gimp-dnd-set-tool-info-func\00", align 1
@.str.124 = private unnamed_addr constant [28 x i8] c"gimp-dnd-set-tool-info-data\00", align 1
@.str.125 = private unnamed_addr constant [26 x i8] c"application/x-gimp-dialog\00", align 1
@__func__.gimp_dnd_get_uri_list_data = private unnamed_addr constant [27 x i8] c"gimp_dnd_get_uri_list_data\00", align 1
@.str.126 = private unnamed_addr constant [12 x i8] c"uri_list %p\00", align 1
@__func__.gimp_dnd_set_uri_list_data = private unnamed_addr constant [27 x i8] c"gimp_dnd_set_uri_list_data\00", align 1
@__func__.gimp_dnd_get_viewable_icon = private unnamed_addr constant [27 x i8] c"gimp_dnd_get_viewable_icon\00", align 1
@.str.127 = private unnamed_addr constant [12 x i8] c"viewable %p\00", align 1
@.str.128 = private unnamed_addr constant [18 x i8] c"gimp-dnd-viewable\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"xpad\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"yalign\00", align 1
@.str.133 = private unnamed_addr constant [16 x i8] c"max-width-chars\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"ellipsize\00", align 1
@__func__.gimp_dnd_get_xds_data = private unnamed_addr constant [22 x i8] c"gimp_dnd_get_xds_data\00", align 1
@__func__.gimp_dnd_get_color_icon = private unnamed_addr constant [24 x i8] c"gimp_dnd_get_color_icon\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"called\00", align 1
@.str.136 = private unnamed_addr constant [15 x i8] c"gimp-dnd-color\00", align 1
@__func__.gimp_dnd_get_color_data = private unnamed_addr constant [24 x i8] c"gimp_dnd_get_color_data\00", align 1
@__func__.gimp_dnd_set_color_data = private unnamed_addr constant [24 x i8] c"gimp_dnd_set_color_data\00", align 1
@__func__.gimp_dnd_get_stream_data = private unnamed_addr constant [25 x i8] c"gimp_dnd_get_stream_data\00", align 1
@.str.137 = private unnamed_addr constant [21 x i8] c"stream %p, length %d\00", align 1
@__func__.gimp_dnd_set_stream_data = private unnamed_addr constant [25 x i8] c"gimp_dnd_set_stream_data\00", align 1
@__func__.gimp_dnd_get_pixbuf_data = private unnamed_addr constant [25 x i8] c"gimp_dnd_get_pixbuf_data\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"pixbuf %p\00", align 1
@__func__.gimp_dnd_set_pixbuf_data = private unnamed_addr constant [25 x i8] c"gimp_dnd_set_pixbuf_data\00", align 1
@__func__.gimp_dnd_get_image_data = private unnamed_addr constant [24 x i8] c"gimp_dnd_get_image_data\00", align 1
@__func__.gimp_dnd_set_image_data = private unnamed_addr constant [24 x i8] c"gimp_dnd_set_image_data\00", align 1
@__func__.gimp_dnd_get_component_icon = private unnamed_addr constant [28 x i8] c"gimp_dnd_get_component_icon\00", align 1
@.str.139 = private unnamed_addr constant [23 x i8] c"image %p, component %d\00", align 1
@.str.140 = private unnamed_addr constant [19 x i8] c"gimp-dnd-component\00", align 1
@__func__.gimp_dnd_get_component_data = private unnamed_addr constant [28 x i8] c"gimp_dnd_get_component_data\00", align 1
@__func__.gimp_dnd_set_component_data = private unnamed_addr constant [28 x i8] c"gimp_dnd_set_component_data\00", align 1
@__func__.gimp_dnd_get_item_data = private unnamed_addr constant [23 x i8] c"gimp_dnd_get_item_data\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"item %p\00", align 1
@__func__.gimp_dnd_set_item_data = private unnamed_addr constant [23 x i8] c"gimp_dnd_set_item_data\00", align 1
@__func__.gimp_dnd_get_object_data = private unnamed_addr constant [25 x i8] c"gimp_dnd_get_object_data\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"object %p\00", align 1
@__func__.gimp_dnd_set_brush_data = private unnamed_addr constant [24 x i8] c"gimp_dnd_set_brush_data\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"brush %p\00", align 1
@__func__.gimp_dnd_set_pattern_data = private unnamed_addr constant [26 x i8] c"gimp_dnd_set_pattern_data\00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"pattern %p\00", align 1
@__func__.gimp_dnd_set_gradient_data = private unnamed_addr constant [27 x i8] c"gimp_dnd_set_gradient_data\00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"gradient %p\00", align 1
@__func__.gimp_dnd_set_palette_data = private unnamed_addr constant [26 x i8] c"gimp_dnd_set_palette_data\00", align 1
@.str.146 = private unnamed_addr constant [11 x i8] c"palette %p\00", align 1
@__func__.gimp_dnd_set_font_data = private unnamed_addr constant [23 x i8] c"gimp_dnd_set_font_data\00", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"font %p\00", align 1
@__func__.gimp_dnd_set_buffer_data = private unnamed_addr constant [25 x i8] c"gimp_dnd_set_buffer_data\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"buffer %p\00", align 1
@__func__.gimp_dnd_set_imagefile_data = private unnamed_addr constant [28 x i8] c"gimp_dnd_set_imagefile_data\00", align 1
@.str.149 = private unnamed_addr constant [13 x i8] c"imagefile %p\00", align 1
@__func__.gimp_dnd_set_template_data = private unnamed_addr constant [27 x i8] c"gimp_dnd_set_template_data\00", align 1
@.str.150 = private unnamed_addr constant [12 x i8] c"template %p\00", align 1
@__func__.gimp_dnd_set_tool_info_data = private unnamed_addr constant [28 x i8] c"gimp_dnd_set_tool_info_data\00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c"tool_info %p\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_dnd_init(%struct._Gimp* %gimp) #0 {
entry:
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
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_dnd_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._Gimp*, %struct._Gimp** @the_dnd_gimp, align 8
  %cmp12 = icmp eq %struct._Gimp* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_dnd_init, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  store %struct._Gimp* %14, %struct._Gimp** @the_dnd_gimp, align 8
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_dnd_uri_list_source_add(%struct._GtkWidget* %widget, %struct._GList* (%struct._GtkWidget*, i8*)* %get_uri_list_func, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %get_uri_list_func.addr = alloca %struct._GList* (%struct._GtkWidget*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GList* (%struct._GtkWidget*, i8*)* %get_uri_list_func, %struct._GList* (%struct._GtkWidget*, i8*)** %get_uri_list_func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_dnd_uri_list_source_add, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = load %struct._GList* (%struct._GtkWidget*, i8*)*, %struct._GList* (%struct._GtkWidget*, i8*)** %get_uri_list_func.addr, align 8
  %15 = bitcast %struct._GList* (%struct._GtkWidget*, i8*)* %14 to void ()*
  %16 = load i8*, i8** %data.addr, align 8
  call void @gimp_dnd_data_source_add(i32 1, %struct._GtkWidget* %13, void ()* %15, i8* %16)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dnd_data_source_add(i32 %data_type, %struct._GtkWidget* %widget, void ()* %get_data_func, i8* %get_data_data) #0 {
entry:
  %data_type.addr = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %get_data_func.addr = alloca void ()*, align 8
  %get_data_data.addr = alloca i8*, align 8
  %dnd_data = alloca %struct._GimpDndDataDef*, align 8
  %drag_connected = alloca i32, align 4
  %target_list = alloca %struct._GtkTargetList*, align 8
  store i32 %data_type, i32* %data_type.addr, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store void ()* %get_data_func, void ()** %get_data_func.addr, align 8
  store i8* %get_data_data, i8** %get_data_data.addr, align 8
  %0 = load i32, i32* %data_type.addr, align 4
  %idx.ext = zext i32 %0 to i64
  %add.ptr = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* getelementptr inbounds ([25 x %struct._GimpDndDataDef], [25 x %struct._GimpDndDataDef]* @dnd_data_defs, i32 0, i32 0), i64 %idx.ext
  store %struct._GimpDndDataDef* %add.ptr, %struct._GimpDndDataDef** %dnd_data, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0))
  %tobool = icmp ne i8* %call1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_drag_source_set(%struct._GtkWidget* %4, i32 768, %struct._GtkTargetEntry* null, i32 0, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0))
  %8 = ptrtoint i8* %call3 to i64
  %conv = trunc i64 %8 to i32
  store i32 %conv, i32* %drag_connected, align 4
  %9 = load i32, i32* %drag_connected, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.end.10, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDragContext*, i8*)* @gimp_dnd_data_drag_begin to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDragContext*)* @gimp_dnd_data_drag_end to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %15 = bitcast %struct._GtkWidget* %14 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32, i8*)* @gimp_dnd_data_drag_handle to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call9 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %if.end
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %22 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %get_data_func_name = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %22, i32 0, i32 1
  %23 = load i8*, i8** %get_data_func_name, align 8
  %24 = load void ()*, void ()** %get_data_func.addr, align 8
  %25 = bitcast void ()* %24 to i8*
  call void @g_object_set_data(%struct._GObject* %21, i8* %23, i8* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %29 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %get_data_data_name = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %29, i32 0, i32 2
  %30 = load i8*, i8** %get_data_data_name, align 8
  %31 = load i8*, i8** %get_data_data.addr, align 8
  call void @g_object_set_data(%struct._GObject* %28, i8* %30, i8* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  %call14 = call i8* @g_object_get_data(%struct._GObject* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0))
  %tobool15 = icmp ne i8* %call14, null
  br i1 %tobool15, label %if.end.19, label %if.then.16

if.then.16:                                       ; preds = %if.end.10
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 80)
  %37 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %38 = load i32, i32* %data_type.addr, align 4
  %conv18 = zext i32 %38 to i64
  %39 = inttoptr i64 %conv18 to i8*
  call void @g_object_set_data(%struct._GObject* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8* %39)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.10
  %40 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %target_entry = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %40, i32 0, i32 0
  %target = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %target_entry, i32 0, i32 0
  %41 = load i8*, i8** %target, align 8
  %tobool20 = icmp ne i8* %41, null
  br i1 %tobool20, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %if.end.19
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call22 = call %struct._GtkTargetList* @gtk_drag_source_get_target_list(%struct._GtkWidget* %42)
  store %struct._GtkTargetList* %call22, %struct._GtkTargetList** %target_list, align 8
  %43 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  %tobool23 = icmp ne %struct._GtkTargetList* %43, null
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.then.21
  %44 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  %45 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %target_entry25 = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %45, i32 0, i32 0
  call void @gimp_dnd_target_list_add(%struct._GtkTargetList* %44, %struct._GtkTargetEntry* %target_entry25)
  br label %if.end.28

if.else:                                          ; preds = %if.then.21
  %46 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %target_entry26 = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %46, i32 0, i32 0
  %call27 = call %struct._GtkTargetList* @gtk_target_list_new(%struct._GtkTargetEntry* %target_entry26, i32 1)
  store %struct._GtkTargetList* %call27, %struct._GtkTargetList** %target_list, align 8
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %48 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  call void @gtk_drag_source_set_target_list(%struct._GtkWidget* %47, %struct._GtkTargetList* %48)
  %49 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  call void @gtk_target_list_unref(%struct._GtkTargetList* %49)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.19
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dnd_uri_list_source_remove(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dnd_uri_list_source_remove, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call11 = call i32 @gimp_dnd_data_source_remove(i32 1, %struct._GtkWidget* %13)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dnd_data_source_remove(i32 %data_type, %struct._GtkWidget* %widget) #0 {
entry:
  %retval = alloca i32, align 4
  %data_type.addr = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dnd_data = alloca %struct._GimpDndDataDef*, align 8
  %drag_connected = alloca i32, align 4
  %list_changed = alloca i32, align 4
  %target_list = alloca %struct._GtkTargetList*, align 8
  %new_list = alloca %struct._GtkTargetList*, align 8
  %targets = alloca %struct._GtkTargetEntry*, align 8
  %n_targets = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %data_type, i32* %data_type.addr, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 0, i32* %list_changed, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0))
  %3 = ptrtoint i8* %call1 to i64
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %drag_connected, align 4
  %4 = load i32, i32* %drag_connected, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %data_type.addr, align 4
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* getelementptr inbounds ([25 x %struct._GimpDndDataDef], [25 x %struct._GimpDndDataDef]* @dnd_data_defs, i32 0, i32 0), i64 %idx.ext
  store %struct._GimpDndDataDef* %add.ptr, %struct._GimpDndDataDef** %dnd_data, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %9 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %get_data_func_name = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %9, i32 0, i32 1
  %10 = load i8*, i8** %get_data_func_name, align 8
  call void @g_object_set_data(%struct._GObject* %8, i8* %10, i8* null)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 80)
  %13 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %14 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %get_data_data_name = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %14, i32 0, i32 2
  %15 = load i8*, i8** %get_data_data_name, align 8
  call void @g_object_set_data(%struct._GObject* %13, i8* %15, i8* null)
  %16 = load i32, i32* %data_type.addr, align 4
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 80)
  %19 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %call5 = call i8* @g_object_get_data(%struct._GObject* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0))
  %20 = ptrtoint i8* %call5 to i64
  %conv6 = trunc i64 %20 to i32
  %cmp = icmp eq i32 %16, %conv6
  br i1 %cmp, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call9 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8* null)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  %24 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %target_entry = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %24, i32 0, i32 0
  %target = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %target_entry, i32 0, i32 0
  %25 = load i8*, i8** %target, align 8
  %tobool11 = icmp ne i8* %25, null
  br i1 %tobool11, label %if.then.12, label %if.end.45

if.then.12:                                       ; preds = %if.end.10
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call13 = call %struct._GtkTargetList* @gtk_drag_source_get_target_list(%struct._GtkWidget* %26)
  store %struct._GtkTargetList* %call13, %struct._GtkTargetList** %target_list, align 8
  %27 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  %tobool14 = icmp ne %struct._GtkTargetList* %27, null
  br i1 %tobool14, label %if.then.15, label %if.end.44

if.then.15:                                       ; preds = %if.then.12
  %28 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  %call16 = call %struct._GtkTargetEntry* @gtk_target_table_new_from_list(%struct._GtkTargetList* %28, i32* %n_targets)
  store %struct._GtkTargetEntry* %call16, %struct._GtkTargetEntry** %targets, align 8
  %call17 = call %struct._GtkTargetList* @gtk_target_list_new(%struct._GtkTargetEntry* null, i32 0)
  store %struct._GtkTargetList* %call17, %struct._GtkTargetList** %new_list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.15
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %n_targets, align 4
  %cmp18 = icmp slt i32 %29, %30
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i, align 4
  %idxprom = sext i32 %31 to i64
  %32 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %targets, align 8
  %arrayidx = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %32, i64 %idxprom
  %info = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx, i32 0, i32 2
  %33 = load i32, i32* %info, align 4
  %34 = load i32, i32* %data_type.addr, align 4
  %cmp20 = icmp ne i32 %33, %34
  br i1 %cmp20, label %if.then.22, label %if.end.32

if.then.22:                                       ; preds = %for.body
  %35 = load %struct._GtkTargetList*, %struct._GtkTargetList** %new_list, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %36 to i64
  %37 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %targets, align 8
  %arrayidx24 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %37, i64 %idxprom23
  %target25 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx24, i32 0, i32 0
  %38 = load i8*, i8** %target25, align 8
  %call26 = call %struct._GdkAtom* @gdk_atom_intern(i8* %38, i32 0)
  %39 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %39 to i64
  %40 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %targets, align 8
  %arrayidx28 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %40, i64 %idxprom27
  %flags = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx28, i32 0, i32 1
  %41 = load i32, i32* %flags, align 4
  %42 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %42 to i64
  %43 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %targets, align 8
  %arrayidx30 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %43, i64 %idxprom29
  %info31 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx30, i32 0, i32 2
  %44 = load i32, i32* %info31, align 4
  call void @gtk_target_list_add(%struct._GtkTargetList* %35, %struct._GdkAtom* %call26, i32 %41, i32 %44)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %45 = load i32, i32* %i, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %targets, align 8
  %47 = load i32, i32* %n_targets, align 4
  call void @gtk_target_table_free(%struct._GtkTargetEntry* %46, i32 %47)
  %48 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  %list = getelementptr inbounds %struct._GtkTargetList, %struct._GtkTargetList* %48, i32 0, i32 0
  %49 = load %struct._GList*, %struct._GList** %list, align 8
  %call33 = call i32 @g_list_length(%struct._GList* %49)
  %50 = load %struct._GtkTargetList*, %struct._GtkTargetList** %new_list, align 8
  %list34 = getelementptr inbounds %struct._GtkTargetList, %struct._GtkTargetList* %50, i32 0, i32 0
  %51 = load %struct._GList*, %struct._GList** %list34, align 8
  %call35 = call i32 @g_list_length(%struct._GList* %51)
  %cmp36 = icmp ne i32 %call33, %call35
  br i1 %cmp36, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %for.end
  store i32 1, i32* %list_changed, align 4
  %52 = load %struct._GtkTargetList*, %struct._GtkTargetList** %new_list, align 8
  %list39 = getelementptr inbounds %struct._GtkTargetList, %struct._GtkTargetList* %52, i32 0, i32 0
  %53 = load %struct._GList*, %struct._GList** %list39, align 8
  %tobool40 = icmp ne %struct._GList* %53, null
  br i1 %tobool40, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %if.then.38
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %55 = load %struct._GtkTargetList*, %struct._GtkTargetList** %new_list, align 8
  call void @gtk_drag_source_set_target_list(%struct._GtkWidget* %54, %struct._GtkTargetList* %55)
  br label %if.end.42

if.else:                                          ; preds = %if.then.38
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_drag_source_set_target_list(%struct._GtkWidget* %56, %struct._GtkTargetList* null)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.41
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %for.end
  %57 = load %struct._GtkTargetList*, %struct._GtkTargetList** %new_list, align 8
  call void @gtk_target_list_unref(%struct._GtkTargetList* %57)
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.12
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.10
  %58 = load i32, i32* %list_changed, align 4
  store i32 %58, i32* %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define void @gimp_dnd_uri_list_dest_add(%struct._GtkWidget* %widget, void (%struct._GtkWidget*, i32, i32, %struct._GList*, i8*)* %set_uri_list_func, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %set_uri_list_func.addr = alloca void (%struct._GtkWidget*, i32, i32, %struct._GList*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store void (%struct._GtkWidget*, i32, i32, %struct._GList*, i8*)* %set_uri_list_func, void (%struct._GtkWidget*, i32, i32, %struct._GList*, i8*)** %set_uri_list_func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dnd_uri_list_dest_add, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %call12 = call i8* @g_object_get_data(%struct._GObject* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  %tobool13 = icmp ne i8* %call12, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %do.end
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_drag_dest_set(%struct._GtkWidget* %16, i32 7, %struct._GtkTargetEntry* null, i32 0, i32 6)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %do.end
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %18 = load void (%struct._GtkWidget*, i32, i32, %struct._GList*, i8*)*, void (%struct._GtkWidget*, i32, i32, %struct._GList*, i8*)** %set_uri_list_func.addr, align 8
  %19 = bitcast void (%struct._GtkWidget*, i32, i32, %struct._GList*, i8*)* %18 to void ()*
  %20 = bitcast void ()* %19 to i8*
  %21 = load i8*, i8** %data.addr, align 8
  call void @gimp_dnd_data_dest_add(i32 1, %struct._GtkWidget* %17, i8* %20, i8* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %23 = load void (%struct._GtkWidget*, i32, i32, %struct._GList*, i8*)*, void (%struct._GtkWidget*, i32, i32, %struct._GList*, i8*)** %set_uri_list_func.addr, align 8
  %24 = bitcast void (%struct._GtkWidget*, i32, i32, %struct._GList*, i8*)* %23 to void ()*
  %25 = bitcast void ()* %24 to i8*
  %26 = load i8*, i8** %data.addr, align 8
  call void @gimp_dnd_data_dest_add(i32 2, %struct._GtkWidget* %22, i8* %25, i8* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %28 = load void (%struct._GtkWidget*, i32, i32, %struct._GList*, i8*)*, void (%struct._GtkWidget*, i32, i32, %struct._GList*, i8*)** %set_uri_list_func.addr, align 8
  %29 = bitcast void (%struct._GtkWidget*, i32, i32, %struct._GList*, i8*)* %28 to void ()*
  %30 = bitcast void ()* %29 to i8*
  %31 = load i8*, i8** %data.addr, align 8
  call void @gimp_dnd_data_dest_add(i32 3, %struct._GtkWidget* %27, i8* %30, i8* %31)
  br label %return

return:                                           ; preds = %if.end.15, %if.else.9
  ret void
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare void @gtk_drag_dest_set(%struct._GtkWidget*, i32, %struct._GtkTargetEntry*, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_dnd_data_dest_add(i32 %data_type, %struct._GtkWidget* %widget, i8* %set_data_func, i8* %set_data_data) #0 {
entry:
  %data_type.addr = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %set_data_func.addr = alloca i8*, align 8
  %set_data_data.addr = alloca i8*, align 8
  %dnd_data = alloca %struct._GimpDndDataDef*, align 8
  %drop_connected = alloca i32, align 4
  %target_list = alloca %struct._GtkTargetList*, align 8
  store i32 %data_type, i32* %data_type.addr, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %set_data_func, i8** %set_data_func.addr, align 8
  store i8* %set_data_data, i8** %set_data_data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  %tobool = icmp ne i8* %call1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_drag_dest_set(%struct._GtkWidget* %3, i32 7, %struct._GtkTargetEntry* null, i32 0, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0))
  %7 = ptrtoint i8* %call3 to i64
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %drop_connected, align 4
  %8 = load i8*, i8** %set_data_func.addr, align 8
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end
  %9 = load i32, i32* %drop_connected, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.end.9, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32, i8*)* @gimp_dnd_data_drop_handle to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %land.lhs.true, %if.end
  %15 = load i32, i32* %data_type.addr, align 4
  %idx.ext = zext i32 %15 to i64
  %add.ptr = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* getelementptr inbounds ([25 x %struct._GimpDndDataDef], [25 x %struct._GimpDndDataDef]* @dnd_data_defs, i32 0, i32 0), i64 %idx.ext
  store %struct._GimpDndDataDef* %add.ptr, %struct._GimpDndDataDef** %dnd_data, align 8
  %16 = load i8*, i8** %set_data_func.addr, align 8
  %tobool10 = icmp ne i8* %16, null
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.9
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 80)
  %19 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %20 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %set_data_func_name = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %20, i32 0, i32 3
  %21 = load i8*, i8** %set_data_func_name, align 8
  %22 = load i8*, i8** %set_data_func.addr, align 8
  call void @g_object_set_data(%struct._GObject* %19, i8* %21, i8* %22)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 80)
  %25 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  %26 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %set_data_data_name = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %26, i32 0, i32 4
  %27 = load i8*, i8** %set_data_data_name, align 8
  %28 = load i8*, i8** %set_data_data.addr, align 8
  call void @g_object_set_data(%struct._GObject* %25, i8* %27, i8* %28)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.9
  %29 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %target_entry = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %29, i32 0, i32 0
  %target = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %target_entry, i32 0, i32 0
  %30 = load i8*, i8** %target, align 8
  %tobool15 = icmp ne i8* %30, null
  br i1 %tobool15, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %if.end.14
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call17 = call %struct._GtkTargetList* @gtk_drag_dest_get_target_list(%struct._GtkWidget* %31)
  store %struct._GtkTargetList* %call17, %struct._GtkTargetList** %target_list, align 8
  %32 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  %tobool18 = icmp ne %struct._GtkTargetList* %32, null
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.16
  %33 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  %34 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %target_entry20 = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %34, i32 0, i32 0
  call void @gimp_dnd_target_list_add(%struct._GtkTargetList* %33, %struct._GtkTargetEntry* %target_entry20)
  br label %if.end.23

if.else:                                          ; preds = %if.then.16
  %35 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %target_entry21 = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %35, i32 0, i32 0
  %call22 = call %struct._GtkTargetList* @gtk_target_list_new(%struct._GtkTargetEntry* %target_entry21, i32 1)
  store %struct._GtkTargetList* %call22, %struct._GtkTargetList** %target_list, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %37 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  call void @gtk_drag_dest_set_target_list(%struct._GtkWidget* %36, %struct._GtkTargetList* %37)
  %38 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  call void @gtk_target_list_unref(%struct._GtkTargetList* %38)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.19
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.14
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dnd_uri_list_dest_remove(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_dnd_uri_list_dest_remove, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_dnd_data_dest_remove(i32 1, %struct._GtkWidget* %13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_dnd_data_dest_remove(i32 2, %struct._GtkWidget* %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_dnd_data_dest_remove(i32 3, %struct._GtkWidget* %15)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dnd_data_dest_remove(i32 %data_type, %struct._GtkWidget* %widget) #0 {
entry:
  %data_type.addr = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dnd_data = alloca %struct._GimpDndDataDef*, align 8
  %target_list = alloca %struct._GtkTargetList*, align 8
  %atom = alloca %struct._GdkAtom*, align 8
  store i32 %data_type, i32* %data_type.addr, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load i32, i32* %data_type.addr, align 4
  %idx.ext = zext i32 %0 to i64
  %add.ptr = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* getelementptr inbounds ([25 x %struct._GimpDndDataDef], [25 x %struct._GimpDndDataDef]* @dnd_data_defs, i32 0, i32 0), i64 %idx.ext
  store %struct._GimpDndDataDef* %add.ptr, %struct._GimpDndDataDef** %dnd_data, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %4 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %set_data_func_name = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %4, i32 0, i32 3
  %5 = load i8*, i8** %set_data_func_name, align 8
  call void @g_object_set_data(%struct._GObject* %3, i8* %5, i8* null)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %9 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %set_data_data_name = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %9, i32 0, i32 4
  %10 = load i8*, i8** %set_data_data_name, align 8
  call void @g_object_set_data(%struct._GObject* %8, i8* %10, i8* null)
  %11 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %target_entry = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %11, i32 0, i32 0
  %target = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %target_entry, i32 0, i32 0
  %12 = load i8*, i8** %target, align 8
  %tobool = icmp ne i8* %12, null
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GtkTargetList* @gtk_drag_dest_get_target_list(%struct._GtkWidget* %13)
  store %struct._GtkTargetList* %call2, %struct._GtkTargetList** %target_list, align 8
  %14 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  %tobool3 = icmp ne %struct._GtkTargetList* %14, null
  br i1 %tobool3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.then
  %15 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %target_entry5 = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %15, i32 0, i32 0
  %target6 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %target_entry5, i32 0, i32 0
  %16 = load i8*, i8** %target6, align 8
  %call7 = call %struct._GdkAtom* @gdk_atom_intern(i8* %16, i32 1)
  store %struct._GdkAtom* %call7, %struct._GdkAtom** %atom, align 8
  %17 = load %struct._GdkAtom*, %struct._GdkAtom** %atom, align 8
  %cmp = icmp ne %struct._GdkAtom* %17, null
  br i1 %cmp, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.4
  %18 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  %19 = load %struct._GdkAtom*, %struct._GdkAtom** %atom, align 8
  call void @gtk_target_list_remove(%struct._GtkTargetList* %18, %struct._GdkAtom* %19)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then.4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dnd_xds_source_add(%struct._GtkWidget* %widget, %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)* %get_image_func, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %get_image_func.addr = alloca %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %handler = alloca i64, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)* %get_image_func, %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)** %get_image_func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dnd_xds_source_add, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.27

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = load %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)*, %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)** %get_image_func.addr, align 8
  %15 = bitcast %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)* %14 to void ()*
  %16 = load i8*, i8** %data.addr, align 8
  call void @gimp_dnd_data_source_add(i32 4, %struct._GtkWidget* %13, void ()* %15, i8* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 80)
  %19 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %call12 = call i8* @g_object_get_data(%struct._GObject* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0))
  %20 = ptrtoint i8* %call12 to i64
  %conv = trunc i64 %20 to i32
  %conv13 = zext i32 %conv to i64
  store i64 %conv13, i64* %handler, align 8
  %21 = load i64, i64* %handler, align 8
  %tobool14 = icmp ne i64 %21, 0
  br i1 %tobool14, label %if.end.18, label %if.then.15

if.then.15:                                       ; preds = %do.end
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDragContext*)* @gimp_dnd_xds_drag_begin to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  store i64 %call16, i64* %handler, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %27 = load i64, i64* %handler, align 8
  %28 = inttoptr i64 %27 to i8*
  call void @g_object_set_data(%struct._GObject* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* %28)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %do.end
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 80)
  %31 = bitcast %struct._GTypeInstance* %call19 to %struct._GObject*
  %call20 = call i8* @g_object_get_data(%struct._GObject* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  %32 = ptrtoint i8* %call20 to i64
  %conv21 = trunc i64 %32 to i32
  %conv22 = zext i32 %conv21 to i64
  store i64 %conv22, i64* %handler, align 8
  %33 = load i64, i64* %handler, align 8
  %tobool23 = icmp ne i64 %33, 0
  br i1 %tobool23, label %if.end.27, label %if.then.24

if.then.24:                                       ; preds = %if.end.18
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDragContext*)* @gimp_dnd_xds_drag_end to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  store i64 %call25, i64* %handler, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 80)
  %38 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  %39 = load i64, i64* %handler, align 8
  %40 = inttoptr i64 %39 to i8*
  call void @g_object_set_data(%struct._GObject* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* %40)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.9, %if.then.24, %if.end.18
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_dnd_xds_drag_begin(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %dnd_data = alloca %struct._GimpDndDataDef*, align 8
  %get_data_func = alloca void ()*, align 8
  %get_data_data = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %gimp_context = alloca %struct._GimpContext*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store %struct._GimpDndDataDef* getelementptr inbounds ([25 x %struct._GimpDndDataDef], [25 x %struct._GimpDndDataDef]* @dnd_data_defs, i32 0, i64 4), %struct._GimpDndDataDef** %dnd_data, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %3 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %get_data_func_name = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %3, i32 0, i32 1
  %4 = load i8*, i8** %get_data_func_name, align 8
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* %4)
  %5 = bitcast i8* %call1 to void ()*
  store void ()* %5, void ()** %get_data_func, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %9 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %get_data_data_name = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %9, i32 0, i32 2
  %10 = load i8*, i8** %get_data_data_name, align 8
  %call3 = call i8* @g_object_get_data(%struct._GObject* %8, i8* %10)
  store i8* %call3, i8** %get_data_data, align 8
  %11 = load void ()*, void ()** %get_data_func, align 8
  %tobool = icmp ne void ()* %11, null
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %12 = load void ()*, void ()** %get_data_func, align 8
  %13 = bitcast void ()* %12 to %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %15 = load i8*, i8** %get_data_data, align 8
  %call4 = call %struct._GimpViewable* %13(%struct._GtkWidget* %14, %struct._GimpContext** %gimp_context, i8* %15)
  %16 = bitcast %struct._GimpViewable* %call4 to %struct._GimpImage*
  store %struct._GimpImage* %16, %struct._GimpImage** %image, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %17 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %17, 4
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %do.body
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dnd_xds_drag_begin, i32 0, i32 0), i32 1236, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), %struct._GimpImage* %18)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %19 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_dnd_xds_source_set(%struct._GdkDragContext* %19, %struct._GimpImage* %20)
  br label %if.end.7

if.end.7:                                         ; preds = %do.end, %entry
  ret void
}

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_dnd_xds_drag_end(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  %0 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  call void @gimp_dnd_xds_source_set(%struct._GdkDragContext* %0, %struct._GimpImage* null)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dnd_xds_source_remove(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %handler = alloca i64, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dnd_xds_source_remove, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %call12 = call i8* @g_object_get_data(%struct._GObject* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0))
  %16 = ptrtoint i8* %call12 to i64
  %conv = trunc i64 %16 to i32
  %conv13 = zext i32 %conv to i64
  store i64 %conv13, i64* %handler, align 8
  %17 = load i64, i64* %handler, align 8
  %tobool14 = icmp ne i64 %17, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %do.end
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %20 = load i64, i64* %handler, align 8
  call void @g_signal_handler_disconnect(i8* %19, i64 %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* null)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %do.end
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  %call19 = call i8* @g_object_get_data(%struct._GObject* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  %27 = ptrtoint i8* %call19 to i64
  %conv20 = trunc i64 %27 to i32
  %conv21 = zext i32 %conv20 to i64
  store i64 %conv21, i64* %handler, align 8
  %28 = load i64, i64* %handler, align 8
  %tobool22 = icmp ne i64 %28, 0
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.17
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %31 = load i64, i64* %handler, align 8
  call void @g_signal_handler_disconnect(i8* %30, i64 %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* null)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.17
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call26 = call i32 @gimp_dnd_data_source_remove(i32 4, %struct._GtkWidget* %35)
  br label %return

return:                                           ; preds = %if.end.25, %if.else.9
  ret void
}

declare void @g_signal_handler_disconnect(i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @gimp_dnd_color_source_add(%struct._GtkWidget* %widget, void (%struct._GtkWidget*, %struct._GimpRGB*, i8*)* %get_color_func, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %get_color_func.addr = alloca void (%struct._GtkWidget*, %struct._GimpRGB*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store void (%struct._GtkWidget*, %struct._GimpRGB*, i8*)* %get_color_func, void (%struct._GtkWidget*, %struct._GimpRGB*, i8*)** %get_color_func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_dnd_color_source_add, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = load void (%struct._GtkWidget*, %struct._GimpRGB*, i8*)*, void (%struct._GtkWidget*, %struct._GimpRGB*, i8*)** %get_color_func.addr, align 8
  %15 = bitcast void (%struct._GtkWidget*, %struct._GimpRGB*, i8*)* %14 to void ()*
  %16 = load i8*, i8** %data.addr, align 8
  call void @gimp_dnd_data_source_add(i32 5, %struct._GtkWidget* %13, void ()* %15, i8* %16)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dnd_color_source_remove(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_dnd_color_source_remove, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call11 = call i32 @gimp_dnd_data_source_remove(i32 5, %struct._GtkWidget* %13)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dnd_color_dest_add(%struct._GtkWidget* %widget, void (%struct._GtkWidget*, i32, i32, %struct._GimpRGB*, i8*)* %set_color_func, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %set_color_func.addr = alloca void (%struct._GtkWidget*, i32, i32, %struct._GimpRGB*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store void (%struct._GtkWidget*, i32, i32, %struct._GimpRGB*, i8*)* %set_color_func, void (%struct._GtkWidget*, i32, i32, %struct._GimpRGB*, i8*)** %set_color_func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dnd_color_dest_add, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = load void (%struct._GtkWidget*, i32, i32, %struct._GimpRGB*, i8*)*, void (%struct._GtkWidget*, i32, i32, %struct._GimpRGB*, i8*)** %set_color_func.addr, align 8
  %15 = bitcast void (%struct._GtkWidget*, i32, i32, %struct._GimpRGB*, i8*)* %14 to void ()*
  %16 = bitcast void ()* %15 to i8*
  %17 = load i8*, i8** %data.addr, align 8
  call void @gimp_dnd_data_dest_add(i32 5, %struct._GtkWidget* %13, i8* %16, i8* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dnd_color_dest_remove(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dnd_color_dest_remove, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_dnd_data_dest_remove(i32 5, %struct._GtkWidget* %13)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dnd_svg_source_add(%struct._GtkWidget* %widget, i8* (%struct._GtkWidget*, i64*, i8*)* %get_svg_func, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %get_svg_func.addr = alloca i8* (%struct._GtkWidget*, i64*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* (%struct._GtkWidget*, i64*, i8*)* %get_svg_func, i8* (%struct._GtkWidget*, i64*, i8*)** %get_svg_func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dnd_svg_source_add, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = load i8* (%struct._GtkWidget*, i64*, i8*)*, i8* (%struct._GtkWidget*, i64*, i8*)** %get_svg_func.addr, align 8
  %15 = bitcast i8* (%struct._GtkWidget*, i64*, i8*)* %14 to void ()*
  %16 = load i8*, i8** %data.addr, align 8
  call void @gimp_dnd_data_source_add(i32 6, %struct._GtkWidget* %13, void ()* %15, i8* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %18 = load i8* (%struct._GtkWidget*, i64*, i8*)*, i8* (%struct._GtkWidget*, i64*, i8*)** %get_svg_func.addr, align 8
  %19 = bitcast i8* (%struct._GtkWidget*, i64*, i8*)* %18 to void ()*
  %20 = load i8*, i8** %data.addr, align 8
  call void @gimp_dnd_data_source_add(i32 7, %struct._GtkWidget* %17, void ()* %19, i8* %20)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dnd_svg_source_remove(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dnd_svg_source_remove, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call11 = call i32 @gimp_dnd_data_source_remove(i32 6, %struct._GtkWidget* %13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call12 = call i32 @gimp_dnd_data_source_remove(i32 7, %struct._GtkWidget* %14)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dnd_svg_dest_add(%struct._GtkWidget* %widget, void (%struct._GtkWidget*, i32, i32, i8*, i64, i8*)* %set_svg_func, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %set_svg_func.addr = alloca void (%struct._GtkWidget*, i32, i32, i8*, i64, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store void (%struct._GtkWidget*, i32, i32, i8*, i64, i8*)* %set_svg_func, void (%struct._GtkWidget*, i32, i32, i8*, i64, i8*)** %set_svg_func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_dnd_svg_dest_add, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = load void (%struct._GtkWidget*, i32, i32, i8*, i64, i8*)*, void (%struct._GtkWidget*, i32, i32, i8*, i64, i8*)** %set_svg_func.addr, align 8
  %15 = bitcast void (%struct._GtkWidget*, i32, i32, i8*, i64, i8*)* %14 to void ()*
  %16 = bitcast void ()* %15 to i8*
  %17 = load i8*, i8** %data.addr, align 8
  call void @gimp_dnd_data_dest_add(i32 6, %struct._GtkWidget* %13, i8* %16, i8* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %19 = load void (%struct._GtkWidget*, i32, i32, i8*, i64, i8*)*, void (%struct._GtkWidget*, i32, i32, i8*, i64, i8*)** %set_svg_func.addr, align 8
  %20 = bitcast void (%struct._GtkWidget*, i32, i32, i8*, i64, i8*)* %19 to void ()*
  %21 = bitcast void ()* %20 to i8*
  %22 = load i8*, i8** %data.addr, align 8
  call void @gimp_dnd_data_dest_add(i32 7, %struct._GtkWidget* %18, i8* %21, i8* %22)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dnd_svg_dest_remove(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_dnd_svg_dest_remove, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_dnd_data_dest_remove(i32 6, %struct._GtkWidget* %13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_dnd_data_dest_remove(i32 7, %struct._GtkWidget* %14)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dnd_pixbuf_source_add(%struct._GtkWidget* %widget, %struct._GdkPixbuf* (%struct._GtkWidget*, i8*)* %get_pixbuf_func, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %get_pixbuf_func.addr = alloca %struct._GdkPixbuf* (%struct._GtkWidget*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %target_list = alloca %struct._GtkTargetList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkPixbuf* (%struct._GtkWidget*, i8*)* %get_pixbuf_func, %struct._GdkPixbuf* (%struct._GtkWidget*, i8*)** %get_pixbuf_func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dnd_pixbuf_source_add, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = load %struct._GdkPixbuf* (%struct._GtkWidget*, i8*)*, %struct._GdkPixbuf* (%struct._GtkWidget*, i8*)** %get_pixbuf_func.addr, align 8
  %15 = bitcast %struct._GdkPixbuf* (%struct._GtkWidget*, i8*)* %14 to void ()*
  %16 = load i8*, i8** %data.addr, align 8
  call void @gimp_dnd_data_source_add(i32 8, %struct._GtkWidget* %13, void ()* %15, i8* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call11 = call %struct._GtkTargetList* @gtk_drag_source_get_target_list(%struct._GtkWidget* %17)
  store %struct._GtkTargetList* %call11, %struct._GtkTargetList** %target_list, align 8
  %18 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  %tobool12 = icmp ne %struct._GtkTargetList* %18, null
  br i1 %tobool12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %do.end
  %19 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  %call14 = call %struct._GtkTargetList* @gtk_target_list_ref(%struct._GtkTargetList* %19)
  br label %if.end.17

if.else.15:                                       ; preds = %do.end
  %call16 = call %struct._GtkTargetList* @gtk_target_list_new(%struct._GtkTargetEntry* null, i32 0)
  store %struct._GtkTargetList* %call16, %struct._GtkTargetList** %target_list, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.13
  %20 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  call void @gimp_pixbuf_targets_add(%struct._GtkTargetList* %20, i32 8, i32 1)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %22 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  call void @gtk_drag_source_set_target_list(%struct._GtkWidget* %21, %struct._GtkTargetList* %22)
  %23 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  call void @gtk_target_list_unref(%struct._GtkTargetList* %23)
  br label %return

return:                                           ; preds = %if.end.17, %if.else.9
  ret void
}

declare %struct._GtkTargetList* @gtk_drag_source_get_target_list(%struct._GtkWidget*) #3

declare %struct._GtkTargetList* @gtk_target_list_ref(%struct._GtkTargetList*) #3

declare %struct._GtkTargetList* @gtk_target_list_new(%struct._GtkTargetEntry*, i32) #3

declare void @gimp_pixbuf_targets_add(%struct._GtkTargetList*, i32, i32) #3

declare void @gtk_drag_source_set_target_list(%struct._GtkWidget*, %struct._GtkTargetList*) #3

declare void @gtk_target_list_unref(%struct._GtkTargetList*) #3

; Function Attrs: nounwind uwtable
define void @gimp_dnd_pixbuf_source_remove(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %target_list = alloca %struct._GtkTargetList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_dnd_pixbuf_source_remove, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call11 = call i32 @gimp_dnd_data_source_remove(i32 8, %struct._GtkWidget* %13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call12 = call %struct._GtkTargetList* @gtk_drag_source_get_target_list(%struct._GtkWidget* %14)
  store %struct._GtkTargetList* %call12, %struct._GtkTargetList** %target_list, align 8
  %15 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  %tobool13 = icmp ne %struct._GtkTargetList* %15, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end
  %16 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  call void @gimp_pixbuf_targets_remove(%struct._GtkTargetList* %16)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.14, %do.end
  ret void
}

declare void @gimp_pixbuf_targets_remove(%struct._GtkTargetList*) #3

; Function Attrs: nounwind uwtable
define void @gimp_dnd_pixbuf_dest_add(%struct._GtkWidget* %widget, void (%struct._GtkWidget*, i32, i32, %struct._GdkPixbuf*, i8*)* %set_pixbuf_func, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %set_pixbuf_func.addr = alloca void (%struct._GtkWidget*, i32, i32, %struct._GdkPixbuf*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %target_list = alloca %struct._GtkTargetList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store void (%struct._GtkWidget*, i32, i32, %struct._GdkPixbuf*, i8*)* %set_pixbuf_func, void (%struct._GtkWidget*, i32, i32, %struct._GdkPixbuf*, i8*)** %set_pixbuf_func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_dnd_pixbuf_dest_add, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = load void (%struct._GtkWidget*, i32, i32, %struct._GdkPixbuf*, i8*)*, void (%struct._GtkWidget*, i32, i32, %struct._GdkPixbuf*, i8*)** %set_pixbuf_func.addr, align 8
  %15 = bitcast void (%struct._GtkWidget*, i32, i32, %struct._GdkPixbuf*, i8*)* %14 to void ()*
  %16 = bitcast void ()* %15 to i8*
  %17 = load i8*, i8** %data.addr, align 8
  call void @gimp_dnd_data_dest_add(i32 8, %struct._GtkWidget* %13, i8* %16, i8* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call11 = call %struct._GtkTargetList* @gtk_drag_dest_get_target_list(%struct._GtkWidget* %18)
  store %struct._GtkTargetList* %call11, %struct._GtkTargetList** %target_list, align 8
  %19 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  %tobool12 = icmp ne %struct._GtkTargetList* %19, null
  br i1 %tobool12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %do.end
  %20 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  %call14 = call %struct._GtkTargetList* @gtk_target_list_ref(%struct._GtkTargetList* %20)
  br label %if.end.17

if.else.15:                                       ; preds = %do.end
  %call16 = call %struct._GtkTargetList* @gtk_target_list_new(%struct._GtkTargetEntry* null, i32 0)
  store %struct._GtkTargetList* %call16, %struct._GtkTargetList** %target_list, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.13
  %21 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  call void @gimp_pixbuf_targets_add(%struct._GtkTargetList* %21, i32 8, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %23 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  call void @gtk_drag_dest_set_target_list(%struct._GtkWidget* %22, %struct._GtkTargetList* %23)
  %24 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  call void @gtk_target_list_unref(%struct._GtkTargetList* %24)
  br label %return

return:                                           ; preds = %if.end.17, %if.else.9
  ret void
}

declare %struct._GtkTargetList* @gtk_drag_dest_get_target_list(%struct._GtkWidget*) #3

declare void @gtk_drag_dest_set_target_list(%struct._GtkWidget*, %struct._GtkTargetList*) #3

; Function Attrs: nounwind uwtable
define void @gimp_dnd_pixbuf_dest_remove(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %target_list = alloca %struct._GtkTargetList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_dnd_pixbuf_dest_remove, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.14

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_dnd_data_dest_remove(i32 8, %struct._GtkWidget* %13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call11 = call %struct._GtkTargetList* @gtk_drag_dest_get_target_list(%struct._GtkWidget* %14)
  store %struct._GtkTargetList* %call11, %struct._GtkTargetList** %target_list, align 8
  %15 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  %tobool12 = icmp ne %struct._GtkTargetList* %15, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  call void @gimp_pixbuf_targets_remove(%struct._GtkTargetList* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dnd_component_source_add(%struct._GtkWidget* %widget, %struct._GimpImage* (%struct._GtkWidget*, %struct._GimpContext**, i32*, i8*)* %get_comp_func, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %get_comp_func.addr = alloca %struct._GimpImage* (%struct._GtkWidget*, %struct._GimpContext**, i32*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpImage* (%struct._GtkWidget*, %struct._GimpContext**, i32*, i8*)* %get_comp_func, %struct._GimpImage* (%struct._GtkWidget*, %struct._GimpContext**, i32*, i8*)** %get_comp_func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_dnd_component_source_add, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = load %struct._GimpImage* (%struct._GtkWidget*, %struct._GimpContext**, i32*, i8*)*, %struct._GimpImage* (%struct._GtkWidget*, %struct._GimpContext**, i32*, i8*)** %get_comp_func.addr, align 8
  %15 = bitcast %struct._GimpImage* (%struct._GtkWidget*, %struct._GimpContext**, i32*, i8*)* %14 to void ()*
  %16 = load i8*, i8** %data.addr, align 8
  call void @gimp_dnd_data_source_add(i32 10, %struct._GtkWidget* %13, void ()* %15, i8* %16)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dnd_component_source_remove(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_dnd_component_source_remove, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call11 = call i32 @gimp_dnd_data_source_remove(i32 10, %struct._GtkWidget* %13)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dnd_component_dest_add(%struct._GtkWidget* %widget, void (%struct._GtkWidget*, i32, i32, %struct._GimpImage*, i32, i8*)* %set_comp_func, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %set_comp_func.addr = alloca void (%struct._GtkWidget*, i32, i32, %struct._GimpImage*, i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store void (%struct._GtkWidget*, i32, i32, %struct._GimpImage*, i32, i8*)* %set_comp_func, void (%struct._GtkWidget*, i32, i32, %struct._GimpImage*, i32, i8*)** %set_comp_func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_dnd_component_dest_add, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = load void (%struct._GtkWidget*, i32, i32, %struct._GimpImage*, i32, i8*)*, void (%struct._GtkWidget*, i32, i32, %struct._GimpImage*, i32, i8*)** %set_comp_func.addr, align 8
  %15 = bitcast void (%struct._GtkWidget*, i32, i32, %struct._GimpImage*, i32, i8*)* %14 to void ()*
  %16 = bitcast void ()* %15 to i8*
  %17 = load i8*, i8** %data.addr, align 8
  call void @gimp_dnd_data_dest_add(i32 10, %struct._GtkWidget* %13, i8* %16, i8* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dnd_component_dest_remove(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dnd_component_dest_remove, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_dnd_data_dest_remove(i32 10, %struct._GtkWidget* %13)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_dnd_drag_source_set_by_type(%struct._GtkWidget* %widget, i32 %start_button_mask, i64 %type, i32 %actions) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %start_button_mask.addr = alloca i32, align 4
  %type.addr = alloca i64, align 8
  %actions.addr = alloca i32, align 4
  %dnd_type = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %start_button_mask, i32* %start_button_mask.addr, align 4
  store i64 %type, i64* %type.addr, align 8
  store i32 %actions, i32* %actions.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_dnd_drag_source_set_by_type, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i64, i64* %type.addr, align 8
  %call11 = call i32 @gimp_dnd_data_type_get_by_g_type(i64 %13)
  store i32 %call11, i32* %dnd_type, align 4
  %14 = load i32, i32* %dnd_type, align 4
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %16 = load i32, i32* %start_button_mask.addr, align 4
  %17 = load i32, i32* %dnd_type, align 4
  %idxprom = zext i32 %17 to i64
  %arrayidx = getelementptr inbounds [25 x %struct._GimpDndDataDef], [25 x %struct._GimpDndDataDef]* @dnd_data_defs, i32 0, i64 %idxprom
  %target_entry = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %arrayidx, i32 0, i32 0
  %18 = load i32, i32* %actions.addr, align 4
  call void @gtk_drag_source_set(%struct._GtkWidget* %15, i32 %16, %struct._GtkTargetEntry* %target_entry, i32 1, i32 %18)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.else.9
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dnd_data_type_get_by_g_type(i64 %type) #0 {
entry:
  %type.addr = alloca i64, align 8
  %dnd_type = alloca i32, align 4
  store i64 %type, i64* %type.addr, align 8
  store i32 0, i32* %dnd_type, align 4
  %0 = load i64, i64* %type.addr, align 8
  %call = call i64 @gimp_image_get_type() #5
  %call1 = call i32 @g_type_is_a(i64 %0, i64 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 9, i32* %dnd_type, align 4
  br label %if.end.78

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %type.addr, align 8
  %call2 = call i64 @gimp_layer_get_type() #5
  %call3 = call i32 @g_type_is_a(i64 %1, i64 %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store i32 11, i32* %dnd_type, align 4
  br label %if.end.77

if.else.6:                                        ; preds = %if.else
  %2 = load i64, i64* %type.addr, align 8
  %call7 = call i64 @gimp_layer_mask_get_type() #5
  %call8 = call i32 @g_type_is_a(i64 %2, i64 %call7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else.6
  store i32 13, i32* %dnd_type, align 4
  br label %if.end.76

if.else.11:                                       ; preds = %if.else.6
  %3 = load i64, i64* %type.addr, align 8
  %call12 = call i64 @gimp_channel_get_type() #5
  %call13 = call i32 @g_type_is_a(i64 %3, i64 %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.11
  store i32 12, i32* %dnd_type, align 4
  br label %if.end.75

if.else.16:                                       ; preds = %if.else.11
  %4 = load i64, i64* %type.addr, align 8
  %call17 = call i64 @gimp_vectors_get_type() #5
  %call18 = call i32 @g_type_is_a(i64 %4, i64 %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.16
  store i32 14, i32* %dnd_type, align 4
  br label %if.end.74

if.else.21:                                       ; preds = %if.else.16
  %5 = load i64, i64* %type.addr, align 8
  %call22 = call i64 @gimp_brush_get_type() #5
  %call23 = call i32 @g_type_is_a(i64 %5, i64 %call22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.else.21
  store i32 15, i32* %dnd_type, align 4
  br label %if.end.73

if.else.26:                                       ; preds = %if.else.21
  %6 = load i64, i64* %type.addr, align 8
  %call27 = call i64 @gimp_pattern_get_type() #5
  %call28 = call i32 @g_type_is_a(i64 %6, i64 %call27)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.else.26
  store i32 16, i32* %dnd_type, align 4
  br label %if.end.72

if.else.31:                                       ; preds = %if.else.26
  %7 = load i64, i64* %type.addr, align 8
  %call32 = call i64 @gimp_gradient_get_type() #5
  %call33 = call i32 @g_type_is_a(i64 %7, i64 %call32)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.else.31
  store i32 17, i32* %dnd_type, align 4
  br label %if.end.71

if.else.36:                                       ; preds = %if.else.31
  %8 = load i64, i64* %type.addr, align 8
  %call37 = call i64 @gimp_palette_get_type() #5
  %call38 = call i32 @g_type_is_a(i64 %8, i64 %call37)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.else.36
  store i32 18, i32* %dnd_type, align 4
  br label %if.end.70

if.else.41:                                       ; preds = %if.else.36
  %9 = load i64, i64* %type.addr, align 8
  %call42 = call i64 @gimp_font_get_type() #5
  %call43 = call i32 @g_type_is_a(i64 %9, i64 %call42)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.else.41
  store i32 19, i32* %dnd_type, align 4
  br label %if.end.69

if.else.46:                                       ; preds = %if.else.41
  %10 = load i64, i64* %type.addr, align 8
  %call47 = call i64 @gimp_buffer_get_type() #5
  %call48 = call i32 @g_type_is_a(i64 %10, i64 %call47)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.else.46
  store i32 20, i32* %dnd_type, align 4
  br label %if.end.68

if.else.51:                                       ; preds = %if.else.46
  %11 = load i64, i64* %type.addr, align 8
  %call52 = call i64 @gimp_imagefile_get_type() #5
  %call53 = call i32 @g_type_is_a(i64 %11, i64 %call52)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %if.else.51
  store i32 21, i32* %dnd_type, align 4
  br label %if.end.67

if.else.56:                                       ; preds = %if.else.51
  %12 = load i64, i64* %type.addr, align 8
  %call57 = call i64 @gimp_template_get_type() #5
  %call58 = call i32 @g_type_is_a(i64 %12, i64 %call57)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %if.else.56
  store i32 22, i32* %dnd_type, align 4
  br label %if.end.66

if.else.61:                                       ; preds = %if.else.56
  %13 = load i64, i64* %type.addr, align 8
  %call62 = call i64 @gimp_tool_info_get_type() #5
  %call63 = call i32 @g_type_is_a(i64 %13, i64 %call62)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.end

if.then.65:                                       ; preds = %if.else.61
  store i32 23, i32* %dnd_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.65, %if.else.61
  br label %if.end.66

if.end.66:                                        ; preds = %if.end, %if.then.60
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.55
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.50
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.45
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.40
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.35
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.30
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.25
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.20
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.15
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.10
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.5
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then
  %14 = load i32, i32* %dnd_type, align 4
  ret i32 %14
}

declare void @gtk_drag_source_set(%struct._GtkWidget*, i32, %struct._GtkTargetEntry*, i32, i32) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_dnd_drag_dest_set_by_type(%struct._GtkWidget* %widget, i32 %flags, i64 %type, i32 %actions) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %flags.addr = alloca i32, align 4
  %type.addr = alloca i64, align 8
  %actions.addr = alloca i32, align 4
  %dnd_type = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i64 %type, i64* %type.addr, align 8
  store i32 %actions, i32* %actions.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dnd_drag_dest_set_by_type, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i64, i64* %type.addr, align 8
  %call11 = call i32 @gimp_dnd_data_type_get_by_g_type(i64 %13)
  store i32 %call11, i32* %dnd_type, align 4
  %14 = load i32, i32* %dnd_type, align 4
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %16 = load i32, i32* %flags.addr, align 4
  %17 = load i32, i32* %dnd_type, align 4
  %idxprom = zext i32 %17 to i64
  %arrayidx = getelementptr inbounds [25 x %struct._GimpDndDataDef], [25 x %struct._GimpDndDataDef]* @dnd_data_defs, i32 0, i64 %idxprom
  %target_entry = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %arrayidx, i32 0, i32 0
  %18 = load i32, i32* %actions.addr, align 4
  call void @gtk_drag_dest_set(%struct._GtkWidget* %15, i32 %16, %struct._GtkTargetEntry* %target_entry, i32 1, i32 %18)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.else.9
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @gimp_dnd_viewable_source_add(%struct._GtkWidget* %widget, i64 %type, %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)* %get_viewable_func, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %type.addr = alloca i64, align 8
  %get_viewable_func.addr = alloca %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %dnd_type = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  store %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)* %get_viewable_func, %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)** %get_viewable_func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_dnd_viewable_source_add, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)*, %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)** %get_viewable_func.addr, align 8
  %cmp12 = icmp ne %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_dnd_viewable_source_add, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load i64, i64* %type.addr, align 8
  %call17 = call i32 @gimp_dnd_data_type_get_by_g_type(i64 %14)
  store i32 %call17, i32* %dnd_type, align 4
  %15 = load i32, i32* %dnd_type, align 4
  %cmp18 = icmp eq i32 %15, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end.16
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %do.end.16
  %16 = load i32, i32* %dnd_type, align 4
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %18 = load %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)*, %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)** %get_viewable_func.addr, align 8
  %19 = bitcast %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)* %18 to void ()*
  %20 = load i8*, i8** %data.addr, align 8
  call void @gimp_dnd_data_source_add(i32 %16, %struct._GtkWidget* %17, void ()* %19, i8* %20)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.else.14, %if.else.9
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @gimp_dnd_viewable_source_remove(%struct._GtkWidget* %widget, i64 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %type.addr = alloca i64, align 8
  %dnd_type = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dnd_viewable_source_remove, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i64, i64* %type.addr, align 8
  %call11 = call i32 @gimp_dnd_data_type_get_by_g_type(i64 %13)
  store i32 %call11, i32* %dnd_type, align 4
  %14 = load i32, i32* %dnd_type, align 4
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  %15 = load i32, i32* %dnd_type, align 4
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call15 = call i32 @gimp_dnd_data_source_remove(i32 %15, %struct._GtkWidget* %16)
  store i32 %call15, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %widget, i64 %type, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* %set_viewable_func, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %type.addr = alloca i64, align 8
  %set_viewable_func.addr = alloca void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %dnd_type = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  store void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* %set_viewable_func, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)** %set_viewable_func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dnd_viewable_dest_add, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i64, i64* %type.addr, align 8
  %call11 = call i32 @gimp_dnd_data_type_get_by_g_type(i64 %13)
  store i32 %call11, i32* %dnd_type, align 4
  %14 = load i32, i32* %dnd_type, align 4
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  %15 = load i32, i32* %dnd_type, align 4
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %17 = load void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)** %set_viewable_func.addr, align 8
  %18 = bitcast void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* %17 to void ()*
  %19 = bitcast void ()* %18 to i8*
  %20 = load i8*, i8** %data.addr, align 8
  call void @gimp_dnd_data_dest_add(i32 %15, %struct._GtkWidget* %16, i8* %19, i8* %20)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.else.9
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @gimp_dnd_viewable_dest_remove(%struct._GtkWidget* %widget, i64 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %type.addr = alloca i64, align 8
  %dnd_type = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_dnd_viewable_dest_remove, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i64, i64* %type.addr, align 8
  %call11 = call i32 @gimp_dnd_data_type_get_by_g_type(i64 %13)
  store i32 %call11, i32* %dnd_type, align 4
  %14 = load i32, i32* %dnd_type, align 4
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  %15 = load i32, i32* %dnd_type, align 4
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_dnd_data_dest_remove(i32 %15, %struct._GtkWidget* %16)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define %struct._GimpViewable* @gimp_dnd_get_drag_data(%struct._GtkWidget* %widget) #0 {
entry:
  %retval = alloca %struct._GimpViewable*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dnd_data = alloca %struct._GimpDndDataDef*, align 8
  %data_type = alloca i32, align 4
  %get_data_func = alloca %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)*, align 8
  %get_data_data = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)* null, %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)** %get_data_func, align 8
  store i8* null, i8** %get_data_data, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_dnd_get_drag_data, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpViewable* null, %struct._GimpViewable** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %call12 = call i8* @g_object_get_data(%struct._GObject* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0))
  %16 = ptrtoint i8* %call12 to i64
  %conv = trunc i64 %16 to i32
  store i32 %conv, i32* %data_type, align 4
  %17 = load i32, i32* %data_type, align 4
  %tobool13 = icmp ne i32 %17, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %do.end
  store %struct._GimpViewable* null, %struct._GimpViewable** %retval
  br label %return

if.end.15:                                        ; preds = %do.end
  %18 = load i32, i32* %data_type, align 4
  %idx.ext = zext i32 %18 to i64
  %add.ptr = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* getelementptr inbounds ([25 x %struct._GimpDndDataDef], [25 x %struct._GimpDndDataDef]* @dnd_data_defs, i32 0, i32 0), i64 %idx.ext
  store %struct._GimpDndDataDef* %add.ptr, %struct._GimpDndDataDef** %dnd_data, align 8
  %19 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %get_data_func_name = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %19, i32 0, i32 1
  %20 = load i8*, i8** %get_data_func_name, align 8
  %tobool16 = icmp ne i8* %20, null
  br i1 %tobool16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end.15
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  %24 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %get_data_func_name19 = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %24, i32 0, i32 1
  %25 = load i8*, i8** %get_data_func_name19, align 8
  %call20 = call i8* @g_object_get_data(%struct._GObject* %23, i8* %25)
  %26 = bitcast i8* %call20 to %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)*
  store %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)* %26, %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)** %get_data_func, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.end.15
  %27 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %get_data_data_name = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %27, i32 0, i32 2
  %28 = load i8*, i8** %get_data_data_name, align 8
  %tobool22 = icmp ne i8* %28, null
  br i1 %tobool22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.end.21
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 80)
  %31 = bitcast %struct._GTypeInstance* %call24 to %struct._GObject*
  %32 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %get_data_data_name25 = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %32, i32 0, i32 2
  %33 = load i8*, i8** %get_data_data_name25, align 8
  %call26 = call i8* @g_object_get_data(%struct._GObject* %31, i8* %33)
  store i8* %call26, i8** %get_data_data, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.end.21
  %34 = load %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)*, %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)** %get_data_func, align 8
  %tobool28 = icmp ne %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)* %34, null
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.end.27
  store %struct._GimpViewable* null, %struct._GimpViewable** %retval
  br label %return

if.end.30:                                        ; preds = %if.end.27
  %35 = load %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)*, %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)** %get_data_func, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %37 = load i8*, i8** %get_data_data, align 8
  %call31 = call %struct._GimpViewable* %35(%struct._GtkWidget* %36, %struct._GimpContext** %context, i8* %37)
  store %struct._GimpViewable* %call31, %struct._GimpViewable** %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.29, %if.then.14, %if.else.9
  %38 = load %struct._GimpViewable*, %struct._GimpViewable** %retval
  ret %struct._GimpViewable* %38
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dnd_data_drag_begin(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %data.addr = alloca i8*, align 8
  %dnd_data = alloca %struct._GimpDndDataDef*, align 8
  %data_type = alloca i32, align 4
  %get_data_func = alloca void ()*, align 8
  %get_data_data = alloca i8*, align 8
  %icon_widget = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %window = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store void ()* null, void ()** %get_data_func, align 8
  store i8* null, i8** %get_data_data, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0))
  %3 = ptrtoint i8* %call1 to i64
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %data_type, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %4, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %5 = load i32, i32* %data_type, align 4
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_dnd_data_drag_begin, i32 0, i32 0), i32 664, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load i32, i32* %data_type, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %do.end
  br label %if.end.38

if.end.4:                                         ; preds = %do.end
  %7 = load i32, i32* %data_type, align 4
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* getelementptr inbounds ([25 x %struct._GimpDndDataDef], [25 x %struct._GimpDndDataDef]* @dnd_data_defs, i32 0, i32 0), i64 %idx.ext
  store %struct._GimpDndDataDef* %add.ptr, %struct._GimpDndDataDef** %dnd_data, align 8
  %8 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %get_data_func_name = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %8, i32 0, i32 1
  %9 = load i8*, i8** %get_data_func_name, align 8
  %tobool5 = icmp ne i8* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end.4
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 80)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %13 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %get_data_func_name8 = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %13, i32 0, i32 1
  %14 = load i8*, i8** %get_data_func_name8, align 8
  %call9 = call i8* @g_object_get_data(%struct._GObject* %12, i8* %14)
  %15 = bitcast i8* %call9 to void ()*
  store void ()* %15, void ()** %get_data_func, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.end.4
  %16 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %get_data_data_name = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %16, i32 0, i32 2
  %17 = load i8*, i8** %get_data_data_name, align 8
  %tobool11 = icmp ne i8* %17, null
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end.10
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 80)
  %20 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  %21 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %get_data_data_name14 = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %21, i32 0, i32 2
  %22 = load i8*, i8** %get_data_data_name14, align 8
  %call15 = call i8* @g_object_get_data(%struct._GObject* %20, i8* %22)
  store i8* %call15, i8** %get_data_data, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.end.10
  %23 = load void ()*, void ()** %get_data_func, align 8
  %tobool17 = icmp ne void ()* %23, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.16
  br label %if.end.38

if.end.19:                                        ; preds = %if.end.16
  %24 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %get_icon_func = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %24, i32 0, i32 5
  %25 = load %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)*, %struct._GtkWidget* (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*)** %get_icon_func, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %27 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %28 = load void ()*, void ()** %get_data_func, align 8
  %29 = load i8*, i8** %get_data_data, align 8
  %call20 = call %struct._GtkWidget* %25(%struct._GtkWidget* %26, %struct._GdkDragContext* %27, void ()* %28, i8* %29)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %icon_widget, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %icon_widget, align 8
  %tobool21 = icmp ne %struct._GtkWidget* %30, null
  br i1 %tobool21, label %if.then.22, label %if.end.38

if.then.22:                                       ; preds = %if.end.19
  %call23 = call %struct._GtkWidget* @gtk_window_new(i32 1)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %window, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_window_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call24)
  %33 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkWindow*
  call void @gtk_window_set_type_hint(%struct._GtkWindow* %33, i32 13)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_window_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call26)
  %36 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkWindow*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call28 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %37)
  call void @gtk_window_set_screen(%struct._GtkWindow* %36, %struct._GdkScreen* %call28)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  call void @gtk_widget_realize(%struct._GtkWidget* %38)
  %call29 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %frame, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_frame_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call30)
  %41 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %41, i32 2)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_container_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call32)
  %44 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkContainer*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_container_add(%struct._GtkContainer* %44, %struct._GtkWidget* %45)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %46)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_container_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call34)
  %49 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkContainer*
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %icon_widget, align 8
  call void @gtk_container_add(%struct._GtkContainer* %49, %struct._GtkWidget* %50)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %icon_widget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 80)
  %54 = bitcast %struct._GTypeInstance* %call36 to %struct._GObject*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  call void @g_object_set_data_full(%struct._GObject* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i8* %56, void (i8*)* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void (i8*)*))
  %57 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  call void @gtk_drag_set_icon_widget(%struct._GdkDragContext* %57, %struct._GtkWidget* %58, i32 -8, i32 -8)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 80)
  %61 = bitcast %struct._GTypeInstance* %call37 to %struct._GObject*
  %62 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %63 = bitcast %struct._GdkDragContext* %62 to i8*
  call void @g_object_set_data(%struct._GObject* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i8* %63)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.3, %if.then.18, %if.then.22, %if.end.19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dnd_data_drag_end(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %data_type = alloca i32, align 4
  %icon_widget = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0))
  %3 = ptrtoint i8* %call1 to i64
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %data_type, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %4, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %5 = load i32, i32* %data_type, align 4
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_dnd_data_drag_end, i32 0, i32 0), i32 728, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0))
  %9 = bitcast i8* %call3 to %struct._GtkWidget*
  store %struct._GtkWidget* %9, %struct._GtkWidget** %icon_widget, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %icon_widget, align 8
  %tobool4 = icmp ne %struct._GtkWidget* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %do.end
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %icon_widget, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 80)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %call7 = call i8* @g_object_get_data(%struct._GObject* %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0))
  %14 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %15 = bitcast %struct._GdkDragContext* %14 to i8*
  %cmp = icmp eq i8* %call7, %15
  br i1 %cmp, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.5
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i8* null)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.5
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dnd_data_drag_handle(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, %struct._GtkSelectionData* %selection_data, i32 %info, i32 %time, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %selection_data.addr = alloca %struct._GtkSelectionData*, align 8
  %info.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %get_data_func = alloca void ()*, align 8
  %get_data_data = alloca i8*, align 8
  %data_type = alloca i32, align 4
  %dnd_data = alloca %struct._GimpDndDataDef*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store %struct._GtkSelectionData* %selection_data, %struct._GtkSelectionData** %selection_data.addr, align 8
  store i32 %info, i32* %info.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store void ()* null, void ()** %get_data_func, align 8
  store i8* null, i8** %get_data_data, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %0, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load i32, i32* %info.addr, align 4
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_dnd_data_drag_handle, i32 0, i32 0), i32 758, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 1, i32* %data_type, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %2 = load i32, i32* %data_type, align 4
  %cmp = icmp ule i32 %2, 24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %data_type, align 4
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* getelementptr inbounds ([25 x %struct._GimpDndDataDef], [25 x %struct._GimpDndDataDef]* @dnd_data_defs, i32 0, i32 0), i64 %idx.ext
  store %struct._GimpDndDataDef* %add.ptr, %struct._GimpDndDataDef** %dnd_data, align 8
  %4 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %target_entry = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %4, i32 0, i32 0
  %info1 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %target_entry, i32 0, i32 2
  %5 = load i32, i32* %info1, align 4
  %6 = load i32, i32* %info.addr, align 4
  %cmp2 = icmp eq i32 %5, %6
  br i1 %cmp2, label %if.then.3, label %if.end.26

if.then.3:                                        ; preds = %for.body
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.3
  %7 = load i32, i32* @gimp_log_flags, align 4
  %and5 = and i32 %7, 4
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %do.body.4
  %8 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %target_entry8 = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %8, i32 0, i32 0
  %target = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %target_entry8, i32 0, i32 0
  %9 = load i8*, i8** %target, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_dnd_data_drag_handle, i32 0, i32 0), i32 768, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* %9)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %do.body.4
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  %10 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %get_data_func_name = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %10, i32 0, i32 1
  %11 = load i8*, i8** %get_data_func_name, align 8
  %tobool11 = icmp ne i8* %11, null
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.end.10
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %15 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %get_data_func_name13 = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %15, i32 0, i32 1
  %16 = load i8*, i8** %get_data_func_name13, align 8
  %call14 = call i8* @g_object_get_data(%struct._GObject* %14, i8* %16)
  %17 = bitcast i8* %call14 to void ()*
  store void ()* %17, void ()** %get_data_func, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %do.end.10
  %18 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %get_data_data_name = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %18, i32 0, i32 2
  %19 = load i8*, i8** %get_data_data_name, align 8
  %tobool16 = icmp ne i8* %19, null
  br i1 %tobool16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end.15
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 80)
  %22 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  %23 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %get_data_data_name19 = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %23, i32 0, i32 2
  %24 = load i8*, i8** %get_data_data_name19, align 8
  %call20 = call i8* @g_object_get_data(%struct._GObject* %22, i8* %24)
  store i8* %call20, i8** %get_data_data, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.end.15
  %25 = load void ()*, void ()** %get_data_func, align 8
  %tobool22 = icmp ne void ()* %25, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.21
  br label %for.end

if.end.24:                                        ; preds = %if.end.21
  %26 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %get_data_func25 = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %26, i32 0, i32 6
  %27 = load void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, void ()*, i8*, %struct._GtkSelectionData*)** %get_data_func25, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %29 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %30 = load void ()*, void ()** %get_data_func, align 8
  %31 = load i8*, i8** %get_data_data, align 8
  %32 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection_data.addr, align 8
  call void %27(%struct._GtkWidget* %28, %struct._GdkDragContext* %29, void ()* %30, i8* %31, %struct._GtkSelectionData* %32)
  br label %for.end

if.end.26:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %33 = load i32, i32* %data_type, align 4
  %inc = add i32 %33, 1
  store i32 %inc, i32* %data_type, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.23, %if.end.24, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dnd_target_list_add(%struct._GtkTargetList* %list, %struct._GtkTargetEntry* %entry1) #0 {
entry:
  %list.addr = alloca %struct._GtkTargetList*, align 8
  %entry.addr = alloca %struct._GtkTargetEntry*, align 8
  %atom = alloca %struct._GdkAtom*, align 8
  %info = alloca i32, align 4
  store %struct._GtkTargetList* %list, %struct._GtkTargetList** %list.addr, align 8
  store %struct._GtkTargetEntry* %entry1, %struct._GtkTargetEntry** %entry.addr, align 8
  %0 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %entry.addr, align 8
  %target = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %0, i32 0, i32 0
  %1 = load i8*, i8** %target, align 8
  %call = call %struct._GdkAtom* @gdk_atom_intern(i8* %1, i32 0)
  store %struct._GdkAtom* %call, %struct._GdkAtom** %atom, align 8
  %2 = load %struct._GtkTargetList*, %struct._GtkTargetList** %list.addr, align 8
  %3 = load %struct._GdkAtom*, %struct._GdkAtom** %atom, align 8
  %call2 = call i32 @gtk_target_list_find(%struct._GtkTargetList* %2, %struct._GdkAtom* %3, i32* %info)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %info, align 4
  %5 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %entry.addr, align 8
  %info3 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %5, i32 0, i32 2
  %6 = load i32, i32* %info3, align 4
  %cmp = icmp ne i32 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct._GtkTargetList*, %struct._GtkTargetList** %list.addr, align 8
  %8 = load %struct._GdkAtom*, %struct._GdkAtom** %atom, align 8
  %9 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %entry.addr, align 8
  %flags = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %9, i32 0, i32 1
  %10 = load i32, i32* %flags, align 4
  %11 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %entry.addr, align 8
  %info4 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %11, i32 0, i32 2
  %12 = load i32, i32* %info4, align 4
  call void @gtk_target_list_add(%struct._GtkTargetList* %7, %struct._GdkAtom* %8, i32 %10, i32 %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

declare void @gimp_log(i32, i8*, i32, i8*, ...) #3

declare %struct._GtkWidget* @gtk_window_new(i32) #3

declare void @gtk_window_set_type_hint(%struct._GtkWindow*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare void @gtk_window_set_screen(%struct._GtkWindow*, %struct._GdkScreen*) #3

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #3

declare void @gtk_widget_realize(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gtk_frame_new(i8*) #3

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare void @gtk_drag_set_icon_widget(%struct._GdkDragContext*, %struct._GtkWidget*, i32, i32) #3

declare %struct._GdkAtom* @gdk_atom_intern(i8*, i32) #3

declare i32 @gtk_target_list_find(%struct._GtkTargetList*, %struct._GdkAtom*, i32*) #3

declare void @gtk_target_list_add(%struct._GtkTargetList*, %struct._GdkAtom*, i32, i32) #3

declare %struct._GtkTargetEntry* @gtk_target_table_new_from_list(%struct._GtkTargetList*, i32*) #3

declare void @gtk_target_table_free(%struct._GtkTargetEntry*, i32) #3

declare i32 @g_list_length(%struct._GList*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_dnd_data_drop_handle(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %x, i32 %y, %struct._GtkSelectionData* %selection_data, i32 %info, i32 %time, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %selection_data.addr = alloca %struct._GtkSelectionData*, align 8
  %info.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %data_type = alloca i32, align 4
  %dnd_data = alloca %struct._GimpDndDataDef*, align 8
  %set_data_func = alloca void ()*, align 8
  %set_data_data = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GtkSelectionData* %selection_data, %struct._GtkSelectionData** %selection_data.addr, align 8
  store i32 %info, i32* %info.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %0, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load i32, i32* %info.addr, align 4
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_dnd_data_drop_handle, i32 0, i32 0), i32 804, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection_data.addr, align 8
  %call = call i32 @gtk_selection_data_get_length(%struct._GtkSelectionData* %2)
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %do.end
  %3 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %4 = load i32, i32* %time.addr, align 4
  call void @gtk_drag_finish(%struct._GdkDragContext* %3, i32 0, i32 0, i32 %4)
  br label %for.end

if.end.2:                                         ; preds = %do.end
  store i32 1, i32* %data_type, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.2
  %5 = load i32, i32* %data_type, align 4
  %cmp3 = icmp ule i32 %5, 24
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %data_type, align 4
  %idx.ext = zext i32 %6 to i64
  %add.ptr = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* getelementptr inbounds ([25 x %struct._GimpDndDataDef], [25 x %struct._GimpDndDataDef]* @dnd_data_defs, i32 0, i32 0), i64 %idx.ext
  store %struct._GimpDndDataDef* %add.ptr, %struct._GimpDndDataDef** %dnd_data, align 8
  %7 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %target_entry = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %7, i32 0, i32 0
  %info4 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %target_entry, i32 0, i32 2
  %8 = load i32, i32* %info4, align 4
  %9 = load i32, i32* %info.addr, align 4
  %cmp5 = icmp eq i32 %8, %9
  br i1 %cmp5, label %if.then.6, label %if.end.32

if.then.6:                                        ; preds = %for.body
  store void ()* null, void ()** %set_data_func, align 8
  store i8* null, i8** %set_data_data, align 8
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.6
  %10 = load i32, i32* @gimp_log_flags, align 4
  %and8 = and i32 %10, 4
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %do.body.7
  %11 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %target_entry11 = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %11, i32 0, i32 0
  %target = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %target_entry11, i32 0, i32 0
  %12 = load i8*, i8** %target, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_dnd_data_drop_handle, i32 0, i32 0), i32 823, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* %12)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %do.body.7
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  %13 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %set_data_func_name = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %13, i32 0, i32 3
  %14 = load i8*, i8** %set_data_func_name, align 8
  %tobool14 = icmp ne i8* %14, null
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %do.end.13
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %18 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %set_data_func_name17 = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %18, i32 0, i32 3
  %19 = load i8*, i8** %set_data_func_name17, align 8
  %call18 = call i8* @g_object_get_data(%struct._GObject* %17, i8* %19)
  %20 = bitcast i8* %call18 to void ()*
  store void ()* %20, void ()** %set_data_func, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %do.end.13
  %21 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %set_data_data_name = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %21, i32 0, i32 4
  %22 = load i8*, i8** %set_data_data_name, align 8
  %tobool20 = icmp ne i8* %22, null
  br i1 %tobool20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.end.19
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 80)
  %25 = bitcast %struct._GTypeInstance* %call22 to %struct._GObject*
  %26 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %set_data_data_name23 = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %26, i32 0, i32 4
  %27 = load i8*, i8** %set_data_data_name23, align 8
  %call24 = call i8* @g_object_get_data(%struct._GObject* %25, i8* %27)
  store i8* %call24, i8** %set_data_data, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.end.19
  %28 = load void ()*, void ()** %set_data_func, align 8
  %tobool26 = icmp ne void ()* %28, null
  br i1 %tobool26, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end.25
  %29 = load %struct._GimpDndDataDef*, %struct._GimpDndDataDef** %dnd_data, align 8
  %set_data_func27 = getelementptr inbounds %struct._GimpDndDataDef, %struct._GimpDndDataDef* %29, i32 0, i32 7
  %30 = load i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)*, i32 (%struct._GtkWidget*, i32, i32, void ()*, i8*, %struct._GtkSelectionData*)** %set_data_func27, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %32 = load i32, i32* %x.addr, align 4
  %33 = load i32, i32* %y.addr, align 4
  %34 = load void ()*, void ()** %set_data_func, align 8
  %35 = load i8*, i8** %set_data_data, align 8
  %36 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection_data.addr, align 8
  %call28 = call i32 %30(%struct._GtkWidget* %31, i32 %32, i32 %33, void ()* %34, i8* %35, %struct._GtkSelectionData* %36)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true
  %37 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %38 = load i32, i32* %time.addr, align 4
  call void @gtk_drag_finish(%struct._GdkDragContext* %37, i32 1, i32 0, i32 %38)
  br label %for.end

if.end.31:                                        ; preds = %land.lhs.true, %if.end.25
  %39 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %40 = load i32, i32* %time.addr, align 4
  call void @gtk_drag_finish(%struct._GdkDragContext* %39, i32 0, i32 0, i32 %40)
  br label %for.end

if.end.32:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %41 = load i32, i32* %data_type, align 4
  %inc = add i32 %41, 1
  store i32 %inc, i32* %data_type, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.1, %if.then.30, %if.end.31, %for.cond
  ret void
}

declare i32 @gtk_selection_data_get_length(%struct._GtkSelectionData*) #3

declare void @gtk_drag_finish(%struct._GdkDragContext*, i32, i32, i32) #3

declare void @gtk_target_list_remove(%struct._GtkTargetList*, %struct._GdkAtom*) #3

declare void @gimp_dnd_xds_source_set(%struct._GdkDragContext*, %struct._GimpImage*) #3

declare i32 @g_type_is_a(i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mask_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pattern_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_font_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_buffer_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_imagefile_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_template_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_info_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dnd_get_uri_list_data(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, void ()* %get_uri_list_func, i8* %get_uri_list_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %get_uri_list_func.addr = alloca void ()*, align 8
  %get_uri_list_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %uri_list = alloca %struct._GList*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store void ()* %get_uri_list_func, void ()** %get_uri_list_func.addr, align 8
  store i8* %get_uri_list_data, i8** %get_uri_list_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load void ()*, void ()** %get_uri_list_func.addr, align 8
  %1 = bitcast void ()* %0 to %struct._GList* (%struct._GtkWidget*, i8*)*
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = load i8*, i8** %get_uri_list_data.addr, align 8
  %call = call %struct._GList* %1(%struct._GtkWidget* %2, i8* %3)
  store %struct._GList* %call, %struct._GList** %uri_list, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %4, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %5 = load %struct._GList*, %struct._GList** %uri_list, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dnd_get_uri_list_data, i32 0, i32 0), i32 1096, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.126, i32 0, i32 0), %struct._GList* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct._GList*, %struct._GList** %uri_list, align 8
  %tobool1 = icmp ne %struct._GList* %6, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.end
  %7 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %8 = load %struct._GList*, %struct._GList** %uri_list, align 8
  call void @gimp_selection_data_set_uri_list(%struct._GtkSelectionData* %7, %struct._GList* %8)
  %9 = load %struct._GList*, %struct._GList** %uri_list, align 8
  call void @g_list_free_full(%struct._GList* %9, void (i8*)* @g_free)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dnd_set_uri_list_data(%struct._GtkWidget* %widget, i32 %x, i32 %y, void ()* %set_uri_list_func, i8* %set_uri_list_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %set_uri_list_func.addr = alloca void ()*, align 8
  %set_uri_list_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %uri_list = alloca %struct._GList*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store void ()* %set_uri_list_func, void ()** %set_uri_list_func.addr, align 8
  store i8* %set_uri_list_data, i8** %set_uri_list_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call = call %struct._GList* @gimp_selection_data_get_uri_list(%struct._GtkSelectionData* %0)
  store %struct._GList* %call, %struct._GList** %uri_list, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %1, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._GList*, %struct._GList** %uri_list, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dnd_set_uri_list_data, i32 0, i32 0), i32 1116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.126, i32 0, i32 0), %struct._GList* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GList*, %struct._GList** %uri_list, align 8
  %tobool1 = icmp ne %struct._GList* %3, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %4 = load void ()*, void ()** %set_uri_list_func.addr, align 8
  %5 = bitcast void ()* %4 to void (%struct._GtkWidget*, i32, i32, %struct._GList*, i8*)*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = load i32, i32* %x.addr, align 4
  %8 = load i32, i32* %y.addr, align 4
  %9 = load %struct._GList*, %struct._GList** %uri_list, align 8
  %10 = load i8*, i8** %set_uri_list_data.addr, align 8
  call void %5(%struct._GtkWidget* %6, i32 %7, i32 %8, %struct._GList* %9, i8* %10)
  %11 = load %struct._GList*, %struct._GList** %uri_list, align 8
  call void @g_list_free_full(%struct._GList* %11, void (i8*)* @g_free)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_dnd_get_viewable_icon(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, void ()* %get_viewable_func, i8* %get_viewable_data) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %get_viewable_func.addr = alloca void ()*, align 8
  %get_viewable_data.addr = alloca i8*, align 8
  %viewable = alloca %struct._GimpViewable*, align 8
  %gimp_context = alloca %struct._GimpContext*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %desc = alloca i8*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store void ()* %get_viewable_func, void ()** %get_viewable_func.addr, align 8
  store i8* %get_viewable_data, i8** %get_viewable_data.addr, align 8
  %0 = load void ()*, void ()** %get_viewable_func.addr, align 8
  %1 = bitcast void ()* %0 to %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)*
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = load i8*, i8** %get_viewable_data.addr, align 8
  %call = call %struct._GimpViewable* %1(%struct._GtkWidget* %2, %struct._GimpContext** %gimp_context, i8* %3)
  store %struct._GimpViewable* %call, %struct._GimpViewable** %viewable, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %4, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dnd_get_viewable_icon, i32 0, i32 0), i32 1818, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i32 0, i32 0), %struct._GimpViewable* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool1 = icmp ne %struct._GimpViewable* %6, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %7 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %8 = bitcast %struct._GdkDragContext* %7 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %10 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %11 = bitcast %struct._GimpViewable* %10 to i8*
  %call5 = call i8* @g_object_ref(i8* %11)
  call void @g_object_set_data_full(%struct._GObject* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.128, i32 0, i32 0), i8* %call5, void (i8*)* @g_object_unref)
  %12 = load %struct._GimpContext*, %struct._GimpContext** %gimp_context, align 8
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %call6 = call %struct._GtkWidget* @gimp_view_new(%struct._GimpContext* %12, %struct._GimpViewable* %13, i32 48, i32 0, i32 1)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %view, align 8
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %call7 = call i8* @gimp_viewable_get_description(%struct._GimpViewable* %14, i8** null)
  store i8* %call7, i8** %desc, align 8
  %15 = load i8*, i8** %desc, align 8
  %tobool8 = icmp ne i8* %15, null
  br i1 %tobool8, label %if.then.9, label %if.end.19

if.then.9:                                        ; preds = %if.end.3
  %call10 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 3)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %hbox, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_container_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call11)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %18, i32 3)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 0, i32 0, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %call15 = call i64 @gtk_label_get_type() #5
  %24 = load i8*, i8** %desc, align 8
  %call16 = call i8* (i64, i8*, ...) @g_object_new(i64 %call15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.129, i32 0, i32 0), i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), double 0.000000e+00, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.132, i32 0, i32 0), double 5.000000e-01, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.133, i32 0, i32 0), i32 30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i32 0, i32 0), i32 3, i8* null)
  %25 = bitcast i8* %call16 to %struct._GtkWidget*
  store %struct._GtkWidget* %25, %struct._GtkWidget** %label, align 8
  %26 = load i8*, i8** %desc, align 8
  call void @g_free(i8* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_box_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call17)
  %29 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBox*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %29, %struct._GtkWidget* %30, i32 1, i32 1, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  store %struct._GtkWidget* %32, %struct._GtkWidget** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.3
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  store %struct._GtkWidget* %33, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.9, %if.then.2
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %34
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dnd_get_xds_data(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, void ()* %get_image_func, i8* %get_image_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %get_image_func.addr = alloca void ()*, align 8
  %get_image_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %gimp_context = alloca %struct._GimpContext*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store void ()* %get_image_func, void ()** %get_image_func.addr, align 8
  store i8* %get_image_data, i8** %get_image_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %1 = bitcast %struct._GdkDragContext* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.128, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GimpImage*
  store %struct._GimpImage* %3, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load void ()*, void ()** %get_image_func.addr, align 8
  %6 = bitcast void ()* %5 to %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load i8*, i8** %get_image_data.addr, align 8
  %call2 = call %struct._GimpViewable* %6(%struct._GtkWidget* %7, %struct._GimpContext** %gimp_context, i8* %8)
  %9 = bitcast %struct._GimpViewable* %call2 to %struct._GimpImage*
  store %struct._GimpImage* %9, %struct._GimpImage** %image, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %10, 4
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %do.body
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_dnd_get_xds_data, i32 0, i32 0), i32 1208, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), %struct._GimpImage* %11)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.5
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool6 = icmp ne %struct._GimpImage* %12, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.end
  %13 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %15 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  call void @gimp_dnd_xds_save_image(%struct._GdkDragContext* %13, %struct._GimpImage* %14, %struct._GtkSelectionData* %15)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_dnd_get_color_icon(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, void ()* %get_color_func, i8* %get_color_data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %get_color_func.addr = alloca void ()*, align 8
  %get_color_data.addr = alloca i8*, align 8
  %color_area = alloca %struct._GtkWidget*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store void ()* %get_color_func, void ()** %get_color_func.addr, align 8
  store i8* %get_color_data, i8** %get_color_data.addr, align 8
  %0 = load void ()*, void ()** %get_color_func.addr, align 8
  %1 = bitcast void ()* %0 to void (%struct._GtkWidget*, %struct._GimpRGB*, i8*)*
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = load i8*, i8** %get_color_data.addr, align 8
  call void %1(%struct._GtkWidget* %2, %struct._GimpRGB* %color, i8* %3)
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %4, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dnd_get_color_icon, i32 0, i32 0), i32 1329, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.135, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %6 = bitcast %struct._GdkDragContext* %5 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %8 = bitcast %struct._GimpRGB* %color to i8*
  %call1 = call noalias i8* @g_memdup(i8* %8, i32 32)
  call void @g_object_set_data_full(%struct._GObject* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.136, i32 0, i32 0), i8* %call1, void (i8*)* @g_free)
  %call2 = call %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB* %color, i32 1, i32 0)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %color_area, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %9, i32 48, i32 48)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area, align 8
  ret %struct._GtkWidget* %10
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dnd_get_color_data(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, void ()* %get_color_func, i8* %get_color_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %get_color_func.addr = alloca void ()*, align 8
  %get_color_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %c = alloca %struct._GimpRGB*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store void ()* %get_color_func, void ()** %get_color_func.addr, align 8
  store i8* %get_color_data, i8** %get_color_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %1 = bitcast %struct._GdkDragContext* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.136, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GimpRGB*
  store %struct._GimpRGB* %3, %struct._GimpRGB** %c, align 8
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %c, align 8
  %tobool = icmp ne %struct._GimpRGB* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %c, align 8
  %6 = bitcast %struct._GimpRGB* %color to i8*
  %7 = bitcast %struct._GimpRGB* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load void ()*, void ()** %get_color_func.addr, align 8
  %9 = bitcast void ()* %8 to void (%struct._GtkWidget*, %struct._GimpRGB*, i8*)*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %11 = load i8*, i8** %get_color_data.addr, align 8
  call void %9(%struct._GtkWidget* %10, %struct._GimpRGB* %color, i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %12, 4
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.body
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dnd_get_color_data, i32 0, i32 0), i32 1359, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.135, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %13 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  call void @gimp_selection_data_set_color(%struct._GtkSelectionData* %13, %struct._GimpRGB* %color)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dnd_set_color_data(%struct._GtkWidget* %widget, i32 %x, i32 %y, void ()* %set_color_func, i8* %set_color_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %set_color_func.addr = alloca void ()*, align 8
  %set_color_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store void ()* %set_color_func, void ()** %set_color_func.addr, align 8
  store i8* %set_color_data, i8** %set_color_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %0, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dnd_set_color_data, i32 0, i32 0), i32 1374, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.135, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call = call i32 @gimp_selection_data_get_color(%struct._GtkSelectionData* %1, %struct._GimpRGB* %color)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %2 = load void ()*, void ()** %set_color_func.addr, align 8
  %3 = bitcast void ()* %2 to void (%struct._GtkWidget*, i32, i32, %struct._GimpRGB*, i8*)*
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = load i32, i32* %x.addr, align 4
  %6 = load i32, i32* %y.addr, align 4
  %7 = load i8*, i8** %set_color_data.addr, align 8
  call void %3(%struct._GtkWidget* %4, i32 %5, i32 %6, %struct._GimpRGB* %color, i8* %7)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dnd_get_stream_data(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, void ()* %get_stream_func, i8* %get_stream_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %get_stream_func.addr = alloca void ()*, align 8
  %get_stream_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %stream = alloca i8*, align 8
  %stream_length = alloca i64, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store void ()* %get_stream_func, void ()** %get_stream_func.addr, align 8
  store i8* %get_stream_data, i8** %get_stream_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load void ()*, void ()** %get_stream_func.addr, align 8
  %1 = bitcast void ()* %0 to i8* (%struct._GtkWidget*, i64*, i8*)*
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = load i8*, i8** %get_stream_data.addr, align 8
  %call = call i8* %1(%struct._GtkWidget* %2, i64* %stream_length, i8* %3)
  store i8* %call, i8** %stream, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %4, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %5 = load i8*, i8** %stream, align 8
  %6 = load i64, i64* %stream_length, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_dnd_get_stream_data, i32 0, i32 0), i32 1443, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.137, i32 0, i32 0), i8* %5, i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load i8*, i8** %stream, align 8
  %tobool1 = icmp ne i8* %7, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.end
  %8 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %9 = load i8*, i8** %stream, align 8
  %10 = load i64, i64* %stream_length, align 8
  call void @gimp_selection_data_set_stream(%struct._GtkSelectionData* %8, i8* %9, i64 %10)
  %11 = load i8*, i8** %stream, align 8
  call void @g_free(i8* %11)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dnd_set_stream_data(%struct._GtkWidget* %widget, i32 %x, i32 %y, void ()* %set_stream_func, i8* %set_stream_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %set_stream_func.addr = alloca void ()*, align 8
  %set_stream_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %stream = alloca i8*, align 8
  %stream_length = alloca i64, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store void ()* %set_stream_func, void ()** %set_stream_func.addr, align 8
  store i8* %set_stream_data, i8** %set_stream_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call = call i8* @gimp_selection_data_get_stream(%struct._GtkSelectionData* %0, i64* %stream_length)
  store i8* %call, i8** %stream, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %1, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load i8*, i8** %stream, align 8
  %3 = load i64, i64* %stream_length, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_dnd_set_stream_data, i32 0, i32 0), i32 1465, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.137, i32 0, i32 0), i8* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load i8*, i8** %stream, align 8
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %5 = load void ()*, void ()** %set_stream_func.addr, align 8
  %6 = bitcast void ()* %5 to void (%struct._GtkWidget*, i32, i32, i8*, i64, i8*)*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i8*, i8** %stream, align 8
  %11 = load i64, i64* %stream_length, align 8
  %12 = load i8*, i8** %set_stream_data.addr, align 8
  call void %6(%struct._GtkWidget* %7, i32 %8, i32 %9, i8* %10, i64 %11, i8* %12)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dnd_get_pixbuf_data(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, void ()* %get_pixbuf_func, i8* %get_pixbuf_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %get_pixbuf_func.addr = alloca void ()*, align 8
  %get_pixbuf_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store void ()* %get_pixbuf_func, void ()** %get_pixbuf_func.addr, align 8
  store i8* %get_pixbuf_data, i8** %get_pixbuf_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load void ()*, void ()** %get_pixbuf_func.addr, align 8
  %1 = bitcast void ()* %0 to %struct._GdkPixbuf* (%struct._GtkWidget*, i8*)*
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = load i8*, i8** %get_pixbuf_data.addr, align 8
  %call = call %struct._GdkPixbuf* %1(%struct._GtkWidget* %2, i8* %3)
  store %struct._GdkPixbuf* %call, %struct._GdkPixbuf** %pixbuf, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %4, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %5 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_dnd_get_pixbuf_data, i32 0, i32 0), i32 1542, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.138, i32 0, i32 0), %struct._GdkPixbuf* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool1 = icmp ne %struct._GdkPixbuf* %6, null
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %do.end
  %7 = load %struct._Gimp*, %struct._Gimp** @the_dnd_gimp, align 8
  call void @gimp_set_busy(%struct._Gimp* %7)
  %8 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %9 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call3 = call i32 @gtk_selection_data_set_pixbuf(%struct._GtkSelectionData* %8, %struct._GdkPixbuf* %9)
  %10 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %11 = bitcast %struct._GdkPixbuf* %10 to i8*
  call void @g_object_unref(i8* %11)
  %12 = load %struct._Gimp*, %struct._Gimp** @the_dnd_gimp, align 8
  call void @gimp_unset_busy(%struct._Gimp* %12)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dnd_set_pixbuf_data(%struct._GtkWidget* %widget, i32 %x, i32 %y, void ()* %set_pixbuf_func, i8* %set_pixbuf_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %set_pixbuf_func.addr = alloca void ()*, align 8
  %set_pixbuf_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store void ()* %set_pixbuf_func, void ()** %set_pixbuf_func.addr, align 8
  store i8* %set_pixbuf_data, i8** %set_pixbuf_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** @the_dnd_gimp, align 8
  call void @gimp_set_busy(%struct._Gimp* %0)
  %1 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call = call %struct._GdkPixbuf* @gtk_selection_data_get_pixbuf(%struct._GtkSelectionData* %1)
  store %struct._GdkPixbuf* %call, %struct._GdkPixbuf** %pixbuf, align 8
  %2 = load %struct._Gimp*, %struct._Gimp** @the_dnd_gimp, align 8
  call void @gimp_unset_busy(%struct._Gimp* %2)
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %3, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_dnd_set_pixbuf_data, i32 0, i32 0), i32 1571, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.138, i32 0, i32 0), %struct._GdkPixbuf* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool1 = icmp ne %struct._GdkPixbuf* %5, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %6 = load void ()*, void ()** %set_pixbuf_func.addr, align 8
  %7 = bitcast void ()* %6 to void (%struct._GtkWidget*, i32, i32, %struct._GdkPixbuf*, i8*)*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = load i32, i32* %x.addr, align 4
  %10 = load i32, i32* %y.addr, align 4
  %11 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %12 = load i8*, i8** %set_pixbuf_data.addr, align 8
  call void %7(%struct._GtkWidget* %8, i32 %9, i32 %10, %struct._GdkPixbuf* %11, i8* %12)
  %13 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %14 = bitcast %struct._GdkPixbuf* %13 to i8*
  call void @g_object_unref(i8* %14)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dnd_get_image_data(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, void ()* %get_image_func, i8* %get_image_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %get_image_func.addr = alloca void ()*, align 8
  %get_image_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %gimp_context = alloca %struct._GimpContext*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store void ()* %get_image_func, void ()** %get_image_func.addr, align 8
  store i8* %get_image_data, i8** %get_image_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %1 = bitcast %struct._GdkDragContext* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.128, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GimpImage*
  store %struct._GimpImage* %3, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load void ()*, void ()** %get_image_func.addr, align 8
  %6 = bitcast void ()* %5 to %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load i8*, i8** %get_image_data.addr, align 8
  %call2 = call %struct._GimpViewable* %6(%struct._GtkWidget* %7, %struct._GimpContext** %gimp_context, i8* %8)
  %9 = bitcast %struct._GimpViewable* %call2 to %struct._GimpImage*
  store %struct._GimpImage* %9, %struct._GimpImage** %image, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %10, 4
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %do.body
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dnd_get_image_data, i32 0, i32 0), i32 2105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), %struct._GimpImage* %11)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.5
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool6 = icmp ne %struct._GimpImage* %12, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.end
  %13 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_selection_data_set_image(%struct._GtkSelectionData* %13, %struct._GimpImage* %14)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dnd_set_image_data(%struct._GtkWidget* %widget, i32 %x, i32 %y, void ()* %set_image_func, i8* %set_image_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %set_image_func.addr = alloca void ()*, align 8
  %set_image_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store void ()* %set_image_func, void ()** %set_image_func.addr, align 8
  store i8* %set_image_data, i8** %set_image_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** @the_dnd_gimp, align 8
  %call = call %struct._GimpImage* @gimp_selection_data_get_image(%struct._GtkSelectionData* %0, %struct._Gimp* %1)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %2, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dnd_set_image_data, i32 0, i32 0), i32 2121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), %struct._GimpImage* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool1 = icmp ne %struct._GimpImage* %4, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %5 = load void ()*, void ()** %set_image_func.addr, align 8
  %6 = bitcast void ()* %5 to void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %11 = bitcast %struct._GimpImage* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_viewable_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpViewable*
  %13 = load i8*, i8** %set_image_data.addr, align 8
  call void %6(%struct._GtkWidget* %7, i32 %8, i32 %9, %struct._GimpViewable* %12, i8* %13)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_dnd_get_component_icon(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, void ()* %get_comp_func, i8* %get_comp_data) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %get_comp_func.addr = alloca void ()*, align 8
  %get_comp_data.addr = alloca i8*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %gimp_context = alloca %struct._GimpContext*, align 8
  %channel = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store void ()* %get_comp_func, void ()** %get_comp_func.addr, align 8
  store i8* %get_comp_data, i8** %get_comp_data.addr, align 8
  %0 = load void ()*, void ()** %get_comp_func.addr, align 8
  %1 = bitcast void ()* %0 to %struct._GimpImage* (%struct._GtkWidget*, %struct._GimpContext**, i32*, i8*)*
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = load i8*, i8** %get_comp_data.addr, align 8
  %call = call %struct._GimpImage* %1(%struct._GtkWidget* %2, %struct._GimpContext** %gimp_context, i32* %channel, i8* %3)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %4, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %6 = load i32, i32* %channel, align 4
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_dnd_get_component_icon, i32 0, i32 0), i32 1687, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.139, i32 0, i32 0), %struct._GimpImage* %5, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool1 = icmp ne %struct._GimpImage* %7, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %8 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %9 = bitcast %struct._GdkDragContext* %8 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %12 = bitcast %struct._GimpImage* %11 to i8*
  %call5 = call i8* @g_object_ref(i8* %12)
  call void @g_object_set_data_full(%struct._GObject* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.128, i32 0, i32 0), i8* %call5, void (i8*)* @g_object_unref)
  %13 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %14 = bitcast %struct._GdkDragContext* %13 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %16 = load i32, i32* %channel, align 4
  %conv = zext i32 %16 to i64
  %17 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.140, i32 0, i32 0), i8* %17)
  %18 = load %struct._GimpContext*, %struct._GimpContext** %gimp_context, align 8
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %20 = bitcast %struct._GimpImage* %19 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_viewable_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call7)
  %21 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpViewable*
  %call9 = call %struct._GtkWidget* @gimp_view_new(%struct._GimpContext* %18, %struct._GimpViewable* %21, i32 48, i32 0, i32 1)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %view, align 8
  %22 = load i32, i32* %channel, align 4
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_view_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call10)
  %25 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %25, i32 0, i32 3
  %26 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %27 = bitcast %struct._GimpViewRenderer* %26 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_view_renderer_image_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call12)
  %28 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpViewRendererImage*
  %channel14 = getelementptr inbounds %struct._GimpViewRendererImage, %struct._GimpViewRendererImage* %28, i32 0, i32 1
  store i32 %22, i32* %channel14, align 4
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  store %struct._GtkWidget* %29, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %30
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dnd_get_component_data(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, void ()* %get_comp_func, i8* %get_comp_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %get_comp_func.addr = alloca void ()*, align 8
  %get_comp_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %gimp_context = alloca %struct._GimpContext*, align 8
  %channel = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store void ()* %get_comp_func, void ()** %get_comp_func.addr, align 8
  store i8* %get_comp_data, i8** %get_comp_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store i32 0, i32* %channel, align 4
  %0 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %1 = bitcast %struct._GdkDragContext* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.128, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GimpImage*
  store %struct._GimpImage* %3, %struct._GimpImage** %image, align 8
  %4 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %5 = bitcast %struct._GdkDragContext* %4 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.140, i32 0, i32 0))
  %7 = ptrtoint i8* %call3 to i64
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %channel, align 4
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load void ()*, void ()** %get_comp_func.addr, align 8
  %10 = bitcast void ()* %9 to %struct._GimpImage* (%struct._GtkWidget*, %struct._GimpContext**, i32*, i8*)*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = load i8*, i8** %get_comp_data.addr, align 8
  %call4 = call %struct._GimpImage* %10(%struct._GtkWidget* %11, %struct._GimpContext** %gimp_context, i32* %channel, i8* %12)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %13 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %13, 4
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.body
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %15 = load i32, i32* %channel, align 4
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_dnd_get_component_data, i32 0, i32 0), i32 1726, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.139, i32 0, i32 0), %struct._GimpImage* %14, i32 %15)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool8 = icmp ne %struct._GimpImage* %16, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.end
  %17 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %19 = load i32, i32* %channel, align 4
  call void @gimp_selection_data_set_component(%struct._GtkSelectionData* %17, %struct._GimpImage* %18, i32 %19)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dnd_set_component_data(%struct._GtkWidget* %widget, i32 %x, i32 %y, void ()* %set_comp_func, i8* %set_comp_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %set_comp_func.addr = alloca void ()*, align 8
  %set_comp_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %channel = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store void ()* %set_comp_func, void ()** %set_comp_func.addr, align 8
  store i8* %set_comp_data, i8** %set_comp_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store i32 0, i32* %channel, align 4
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** @the_dnd_gimp, align 8
  %call = call %struct._GimpImage* @gimp_selection_data_get_component(%struct._GtkSelectionData* %0, %struct._Gimp* %1, i32* %channel)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %2, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %4 = load i32, i32* %channel, align 4
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_dnd_set_component_data, i32 0, i32 0), i32 1746, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.139, i32 0, i32 0), %struct._GimpImage* %3, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool1 = icmp ne %struct._GimpImage* %5, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %6 = load void ()*, void ()** %set_comp_func.addr, align 8
  %7 = bitcast void ()* %6 to void (%struct._GtkWidget*, i32, i32, %struct._GimpImage*, i32, i8*)*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = load i32, i32* %x.addr, align 4
  %10 = load i32, i32* %y.addr, align 4
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %12 = load i32, i32* %channel, align 4
  %13 = load i8*, i8** %set_comp_data.addr, align 8
  call void %7(%struct._GtkWidget* %8, i32 %9, i32 %10, %struct._GimpImage* %11, i32 %12, i8* %13)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dnd_get_item_data(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, void ()* %get_item_func, i8* %get_item_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %get_item_func.addr = alloca void ()*, align 8
  %get_item_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %gimp_context = alloca %struct._GimpContext*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store void ()* %get_item_func, void ()** %get_item_func.addr, align 8
  store i8* %get_item_data, i8** %get_item_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %1 = bitcast %struct._GdkDragContext* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.128, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GimpItem*
  store %struct._GimpItem* %3, %struct._GimpItem** %item, align 8
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %tobool = icmp ne %struct._GimpItem* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load void ()*, void ()** %get_item_func.addr, align 8
  %6 = bitcast void ()* %5 to %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load i8*, i8** %get_item_data.addr, align 8
  %call2 = call %struct._GimpViewable* %6(%struct._GtkWidget* %7, %struct._GimpContext** %gimp_context, i8* %8)
  %9 = bitcast %struct._GimpViewable* %call2 to %struct._GimpItem*
  store %struct._GimpItem* %9, %struct._GimpItem** %item, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %10, 4
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %do.body
  %11 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_dnd_get_item_data, i32 0, i32 0), i32 2155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.141, i32 0, i32 0), %struct._GimpItem* %11)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.5
  %12 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %tobool6 = icmp ne %struct._GimpItem* %12, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.end
  %13 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_selection_data_set_item(%struct._GtkSelectionData* %13, %struct._GimpItem* %14)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dnd_set_item_data(%struct._GtkWidget* %widget, i32 %x, i32 %y, void ()* %set_item_func, i8* %set_item_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %set_item_func.addr = alloca void ()*, align 8
  %set_item_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %item = alloca %struct._GimpItem*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store void ()* %set_item_func, void ()** %set_item_func.addr, align 8
  store i8* %set_item_data, i8** %set_item_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** @the_dnd_gimp, align 8
  %call = call %struct._GimpItem* @gimp_selection_data_get_item(%struct._GtkSelectionData* %0, %struct._Gimp* %1)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %2, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_dnd_set_item_data, i32 0, i32 0), i32 2171, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.141, i32 0, i32 0), %struct._GimpItem* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %tobool1 = icmp ne %struct._GimpItem* %4, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %5 = load void ()*, void ()** %set_item_func.addr, align 8
  %6 = bitcast void ()* %5 to void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %11 = bitcast %struct._GimpItem* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_viewable_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpViewable*
  %13 = load i8*, i8** %set_item_data.addr, align 8
  call void %6(%struct._GtkWidget* %7, i32 %8, i32 %9, %struct._GimpViewable* %12, i8* %13)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dnd_get_object_data(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, void ()* %get_object_func, i8* %get_object_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %get_object_func.addr = alloca void ()*, align 8
  %get_object_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %object = alloca %struct._GimpObject*, align 8
  %gimp_context = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store void ()* %get_object_func, void ()** %get_object_func.addr, align 8
  store i8* %get_object_data, i8** %get_object_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %1 = bitcast %struct._GdkDragContext* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.128, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GimpObject*
  store %struct._GimpObject* %3, %struct._GimpObject** %object, align 8
  %4 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %tobool = icmp ne %struct._GimpObject* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load void ()*, void ()** %get_object_func.addr, align 8
  %6 = bitcast void ()* %5 to %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load i8*, i8** %get_object_data.addr, align 8
  %call2 = call %struct._GimpViewable* %6(%struct._GtkWidget* %7, %struct._GimpContext** %gimp_context, i8* %8)
  %9 = bitcast %struct._GimpViewable* %call2 to %struct._GimpObject*
  store %struct._GimpObject* %9, %struct._GimpObject** %object, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %10, 4
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %do.body
  %11 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_dnd_get_object_data, i32 0, i32 0), i32 2205, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i32 0, i32 0), %struct._GimpObject* %11)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.5
  %12 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %13 = bitcast %struct._GimpObject* %12 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %13, %struct._GTypeInstance** %__inst, align 8
  %call6 = call i64 @gimp_object_get_type() #5
  store i64 %call6, i64* %__t, align 8
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool7 = icmp ne %struct._GTypeInstance* %14, null
  br i1 %tobool7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %do.end
  store i32 0, i32* %__r, align 4
  br label %if.end.15

if.else:                                          ; preds = %do.end
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool9 = icmp ne %struct._GTypeClass* %16, null
  br i1 %tobool9, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.else
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type, align 8
  %20 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %19, %20
  br i1 %cmp, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.14

if.else.12:                                       ; preds = %land.lhs.true, %if.else
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %22 = load i64, i64* %__t, align 8
  %call13 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %21, i64 %22) #6
  store i32 %call13, i32* %__r, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.8
  %23 = load i32, i32* %__r, align 4
  store i32 %23, i32* %tmp
  %24 = load i32, i32* %tmp
  %tobool16 = icmp ne i32 %24, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %25 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %26 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  call void @gimp_selection_data_set_object(%struct._GtkSelectionData* %25, %struct._GimpObject* %26)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dnd_set_brush_data(%struct._GtkWidget* %widget, i32 %x, i32 %y, void ()* %set_brush_func, i8* %set_brush_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %set_brush_func.addr = alloca void ()*, align 8
  %set_brush_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store void ()* %set_brush_func, void ()** %set_brush_func.addr, align 8
  store i8* %set_brush_data, i8** %set_brush_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** @the_dnd_gimp, align 8
  %call = call %struct._GimpBrush* @gimp_selection_data_get_brush(%struct._GtkSelectionData* %0, %struct._Gimp* %1)
  store %struct._GimpBrush* %call, %struct._GimpBrush** %brush, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %2, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dnd_set_brush_data, i32 0, i32 0), i32 2226, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.143, i32 0, i32 0), %struct._GimpBrush* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool1 = icmp ne %struct._GimpBrush* %4, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %5 = load void ()*, void ()** %set_brush_func.addr, align 8
  %6 = bitcast void ()* %5 to void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %11 = bitcast %struct._GimpBrush* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_viewable_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpViewable*
  %13 = load i8*, i8** %set_brush_data.addr, align 8
  call void %6(%struct._GtkWidget* %7, i32 %8, i32 %9, %struct._GimpViewable* %12, i8* %13)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dnd_set_pattern_data(%struct._GtkWidget* %widget, i32 %x, i32 %y, void ()* %set_pattern_func, i8* %set_pattern_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %set_pattern_func.addr = alloca void ()*, align 8
  %set_pattern_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %pattern = alloca %struct._GimpPattern*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store void ()* %set_pattern_func, void ()** %set_pattern_func.addr, align 8
  store i8* %set_pattern_data, i8** %set_pattern_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** @the_dnd_gimp, align 8
  %call = call %struct._GimpPattern* @gimp_selection_data_get_pattern(%struct._GtkSelectionData* %0, %struct._Gimp* %1)
  store %struct._GimpPattern* %call, %struct._GimpPattern** %pattern, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %2, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_dnd_set_pattern_data, i32 0, i32 0), i32 2254, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.144, i32 0, i32 0), %struct._GimpPattern* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %tobool1 = icmp ne %struct._GimpPattern* %4, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %5 = load void ()*, void ()** %set_pattern_func.addr, align 8
  %6 = bitcast void ()* %5 to void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %11 = bitcast %struct._GimpPattern* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_viewable_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpViewable*
  %13 = load i8*, i8** %set_pattern_data.addr, align 8
  call void %6(%struct._GtkWidget* %7, i32 %8, i32 %9, %struct._GimpViewable* %12, i8* %13)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dnd_set_gradient_data(%struct._GtkWidget* %widget, i32 %x, i32 %y, void ()* %set_gradient_func, i8* %set_gradient_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %set_gradient_func.addr = alloca void ()*, align 8
  %set_gradient_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store void ()* %set_gradient_func, void ()** %set_gradient_func.addr, align 8
  store i8* %set_gradient_data, i8** %set_gradient_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** @the_dnd_gimp, align 8
  %call = call %struct._GimpGradient* @gimp_selection_data_get_gradient(%struct._GtkSelectionData* %0, %struct._Gimp* %1)
  store %struct._GimpGradient* %call, %struct._GimpGradient** %gradient, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %2, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dnd_set_gradient_data, i32 0, i32 0), i32 2282, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.145, i32 0, i32 0), %struct._GimpGradient* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool1 = icmp ne %struct._GimpGradient* %4, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %5 = load void ()*, void ()** %set_gradient_func.addr, align 8
  %6 = bitcast void ()* %5 to void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %11 = bitcast %struct._GimpGradient* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_viewable_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpViewable*
  %13 = load i8*, i8** %set_gradient_data.addr, align 8
  call void %6(%struct._GtkWidget* %7, i32 %8, i32 %9, %struct._GimpViewable* %12, i8* %13)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dnd_set_palette_data(%struct._GtkWidget* %widget, i32 %x, i32 %y, void ()* %set_palette_func, i8* %set_palette_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %set_palette_func.addr = alloca void ()*, align 8
  %set_palette_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store void ()* %set_palette_func, void ()** %set_palette_func.addr, align 8
  store i8* %set_palette_data, i8** %set_palette_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** @the_dnd_gimp, align 8
  %call = call %struct._GimpPalette* @gimp_selection_data_get_palette(%struct._GtkSelectionData* %0, %struct._Gimp* %1)
  store %struct._GimpPalette* %call, %struct._GimpPalette** %palette, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %2, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_dnd_set_palette_data, i32 0, i32 0), i32 2310, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.146, i32 0, i32 0), %struct._GimpPalette* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool1 = icmp ne %struct._GimpPalette* %4, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %5 = load void ()*, void ()** %set_palette_func.addr, align 8
  %6 = bitcast void ()* %5 to void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %11 = bitcast %struct._GimpPalette* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_viewable_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpViewable*
  %13 = load i8*, i8** %set_palette_data.addr, align 8
  call void %6(%struct._GtkWidget* %7, i32 %8, i32 %9, %struct._GimpViewable* %12, i8* %13)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dnd_set_font_data(%struct._GtkWidget* %widget, i32 %x, i32 %y, void ()* %set_font_func, i8* %set_font_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %set_font_func.addr = alloca void ()*, align 8
  %set_font_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %font = alloca %struct._GimpFont*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store void ()* %set_font_func, void ()** %set_font_func.addr, align 8
  store i8* %set_font_data, i8** %set_font_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** @the_dnd_gimp, align 8
  %call = call %struct._GimpFont* @gimp_selection_data_get_font(%struct._GtkSelectionData* %0, %struct._Gimp* %1)
  store %struct._GimpFont* %call, %struct._GimpFont** %font, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %2, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_dnd_set_font_data, i32 0, i32 0), i32 2337, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.147, i32 0, i32 0), %struct._GimpFont* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %tobool1 = icmp ne %struct._GimpFont* %4, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %5 = load void ()*, void ()** %set_font_func.addr, align 8
  %6 = bitcast void ()* %5 to void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %11 = bitcast %struct._GimpFont* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_viewable_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpViewable*
  %13 = load i8*, i8** %set_font_data.addr, align 8
  call void %6(%struct._GtkWidget* %7, i32 %8, i32 %9, %struct._GimpViewable* %12, i8* %13)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dnd_set_buffer_data(%struct._GtkWidget* %widget, i32 %x, i32 %y, void ()* %set_buffer_func, i8* %set_buffer_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %set_buffer_func.addr = alloca void ()*, align 8
  %set_buffer_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store void ()* %set_buffer_func, void ()** %set_buffer_func.addr, align 8
  store i8* %set_buffer_data, i8** %set_buffer_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** @the_dnd_gimp, align 8
  %call = call %struct._GimpBuffer* @gimp_selection_data_get_buffer(%struct._GtkSelectionData* %0, %struct._Gimp* %1)
  store %struct._GimpBuffer* %call, %struct._GimpBuffer** %buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %2, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_dnd_set_buffer_data, i32 0, i32 0), i32 2364, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i32 0, i32 0), %struct._GimpBuffer* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool1 = icmp ne %struct._GimpBuffer* %4, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %5 = load void ()*, void ()** %set_buffer_func.addr, align 8
  %6 = bitcast void ()* %5 to void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %11 = bitcast %struct._GimpBuffer* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_viewable_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpViewable*
  %13 = load i8*, i8** %set_buffer_data.addr, align 8
  call void %6(%struct._GtkWidget* %7, i32 %8, i32 %9, %struct._GimpViewable* %12, i8* %13)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dnd_set_imagefile_data(%struct._GtkWidget* %widget, i32 %x, i32 %y, void ()* %set_imagefile_func, i8* %set_imagefile_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %set_imagefile_func.addr = alloca void ()*, align 8
  %set_imagefile_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %imagefile = alloca %struct._GimpImagefile*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store void ()* %set_imagefile_func, void ()** %set_imagefile_func.addr, align 8
  store i8* %set_imagefile_data, i8** %set_imagefile_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** @the_dnd_gimp, align 8
  %call = call %struct._GimpImagefile* @gimp_selection_data_get_imagefile(%struct._GtkSelectionData* %0, %struct._Gimp* %1)
  store %struct._GimpImagefile* %call, %struct._GimpImagefile** %imagefile, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %2, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_dnd_set_imagefile_data, i32 0, i32 0), i32 2392, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.149, i32 0, i32 0), %struct._GimpImagefile* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %tobool1 = icmp ne %struct._GimpImagefile* %4, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %5 = load void ()*, void ()** %set_imagefile_func.addr, align 8
  %6 = bitcast void ()* %5 to void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %11 = bitcast %struct._GimpImagefile* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_viewable_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpViewable*
  %13 = load i8*, i8** %set_imagefile_data.addr, align 8
  call void %6(%struct._GtkWidget* %7, i32 %8, i32 %9, %struct._GimpViewable* %12, i8* %13)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dnd_set_template_data(%struct._GtkWidget* %widget, i32 %x, i32 %y, void ()* %set_template_func, i8* %set_template_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %set_template_func.addr = alloca void ()*, align 8
  %set_template_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %template = alloca %struct._GimpTemplate*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store void ()* %set_template_func, void ()** %set_template_func.addr, align 8
  store i8* %set_template_data, i8** %set_template_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** @the_dnd_gimp, align 8
  %call = call %struct._GimpTemplate* @gimp_selection_data_get_template(%struct._GtkSelectionData* %0, %struct._Gimp* %1)
  store %struct._GimpTemplate* %call, %struct._GimpTemplate** %template, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %2, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dnd_set_template_data, i32 0, i32 0), i32 2420, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.150, i32 0, i32 0), %struct._GimpTemplate* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %tobool1 = icmp ne %struct._GimpTemplate* %4, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %5 = load void ()*, void ()** %set_template_func.addr, align 8
  %6 = bitcast void ()* %5 to void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %11 = bitcast %struct._GimpTemplate* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_viewable_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpViewable*
  %13 = load i8*, i8** %set_template_data.addr, align 8
  call void %6(%struct._GtkWidget* %7, i32 %8, i32 %9, %struct._GimpViewable* %12, i8* %13)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dnd_set_tool_info_data(%struct._GtkWidget* %widget, i32 %x, i32 %y, void ()* %set_tool_info_func, i8* %set_tool_info_data, %struct._GtkSelectionData* %selection) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %set_tool_info_func.addr = alloca void ()*, align 8
  %set_tool_info_data.addr = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store void ()* %set_tool_info_func, void ()** %set_tool_info_func.addr, align 8
  store i8* %set_tool_info_data, i8** %set_tool_info_data.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** @the_dnd_gimp, align 8
  %call = call %struct._GimpToolInfo* @gimp_selection_data_get_tool_info(%struct._GtkSelectionData* %0, %struct._Gimp* %1)
  store %struct._GimpToolInfo* %call, %struct._GimpToolInfo** %tool_info, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %2, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_dnd_set_tool_info_data, i32 0, i32 0), i32 2448, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.151, i32 0, i32 0), %struct._GimpToolInfo* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool1 = icmp ne %struct._GimpToolInfo* %4, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %5 = load void ()*, void ()** %set_tool_info_func.addr, align 8
  %6 = bitcast void ()* %5 to void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %11 = bitcast %struct._GimpToolInfo* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_viewable_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpViewable*
  %13 = load i8*, i8** %set_tool_info_data.addr, align 8
  call void %6(%struct._GtkWidget* %7, i32 %8, i32 %9, %struct._GimpViewable* %12, i8* %13)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare void @gimp_selection_data_set_uri_list(%struct._GtkSelectionData*, %struct._GList*) #3

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #3

declare void @g_free(i8*) #3

declare %struct._GList* @gimp_selection_data_get_uri_list(%struct._GtkSelectionData*) #3

declare i8* @g_object_ref(i8*) #3

declare void @g_object_unref(i8*) #3

declare %struct._GtkWidget* @gimp_view_new(%struct._GimpContext*, %struct._GimpViewable*, i32, i32, i32) #3

declare i8* @gimp_viewable_get_description(%struct._GimpViewable*, i8**) #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #3

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare i8* @g_object_new(i64, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #1

declare void @gimp_dnd_xds_save_image(%struct._GdkDragContext*, %struct._GimpImage*, %struct._GtkSelectionData*) #3

declare noalias i8* @g_memdup(i8*, i32) #3

declare %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB*, i32, i32) #3

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_selection_data_set_color(%struct._GtkSelectionData*, %struct._GimpRGB*) #3

declare i32 @gimp_selection_data_get_color(%struct._GtkSelectionData*, %struct._GimpRGB*) #3

declare void @gimp_selection_data_set_stream(%struct._GtkSelectionData*, i8*, i64) #3

declare i8* @gimp_selection_data_get_stream(%struct._GtkSelectionData*, i64*) #3

declare void @gimp_set_busy(%struct._Gimp*) #3

declare i32 @gtk_selection_data_set_pixbuf(%struct._GtkSelectionData*, %struct._GdkPixbuf*) #3

declare void @gimp_unset_busy(%struct._Gimp*) #3

declare %struct._GdkPixbuf* @gtk_selection_data_get_pixbuf(%struct._GtkSelectionData*) #3

declare void @gimp_selection_data_set_image(%struct._GtkSelectionData*, %struct._GimpImage*) #3

declare %struct._GimpImage* @gimp_selection_data_get_image(%struct._GtkSelectionData*, %struct._Gimp*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_image_get_type() #1

declare void @gimp_selection_data_set_component(%struct._GtkSelectionData*, %struct._GimpImage*, i32) #3

declare %struct._GimpImage* @gimp_selection_data_get_component(%struct._GtkSelectionData*, %struct._Gimp*, i32*) #3

declare void @gimp_selection_data_set_item(%struct._GtkSelectionData*, %struct._GimpItem*) #3

declare %struct._GimpItem* @gimp_selection_data_get_item(%struct._GtkSelectionData*, %struct._Gimp*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare void @gimp_selection_data_set_object(%struct._GtkSelectionData*, %struct._GimpObject*) #3

declare %struct._GimpBrush* @gimp_selection_data_get_brush(%struct._GtkSelectionData*, %struct._Gimp*) #3

declare %struct._GimpPattern* @gimp_selection_data_get_pattern(%struct._GtkSelectionData*, %struct._Gimp*) #3

declare %struct._GimpGradient* @gimp_selection_data_get_gradient(%struct._GtkSelectionData*, %struct._Gimp*) #3

declare %struct._GimpPalette* @gimp_selection_data_get_palette(%struct._GtkSelectionData*, %struct._Gimp*) #3

declare %struct._GimpFont* @gimp_selection_data_get_font(%struct._GtkSelectionData*, %struct._Gimp*) #3

declare %struct._GimpBuffer* @gimp_selection_data_get_buffer(%struct._GtkSelectionData*, %struct._Gimp*) #3

declare %struct._GimpImagefile* @gimp_selection_data_get_imagefile(%struct._GtkSelectionData*, %struct._Gimp*) #3

declare %struct._GimpTemplate* @gimp_selection_data_get_template(%struct._GtkSelectionData*, %struct._Gimp*) #3

declare %struct._GimpToolInfo* @gimp_selection_data_get_tool_info(%struct._GtkSelectionData*, %struct._Gimp*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
