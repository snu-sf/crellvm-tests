; ModuleID = './app/actions/plug-in-actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i8* }
%struct._GimpEnumActionEntry = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i8* }
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
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
%struct._GimpPlugIn = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpPlugInActionEntry = type { i8*, i8*, i8*, i8*, i8*, %struct._GimpPlugInProcedure*, i8* }
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }
%struct._GimpPlugInMenuBranch = type { i8*, i8*, i8* }
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GHashTable = type opaque

@.str = private unnamed_addr constant [15 x i8] c"plug-in-action\00", align 1
@plug_in_actions = internal constant [20 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @plug_in_reset_all_cmd_callback to void ()*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i32 0, i32 0) }], align 16
@plug_in_repeat_actions = internal constant [2 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.56, i32 0, i32 0), i32 2, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.61, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [18 x i8] c"menu-branch-added\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"register-procedure\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"unregister-procedure\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"plug-in-recent-%02d\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"gimp-filter-reshow\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"history-changed\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"plug-in-repeat\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"plug-in-reshow\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"plug-in-menu\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Filte_rs\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"plug-in-recent-menu\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Recently Used\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"plug-in-blur-menu\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"_Blur\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"plug-in-noise-menu\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"_Noise\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"plug-in-edge-detect-menu\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Edge-De_tect\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"plug-in-enhance-menu\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"En_hance\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"plug-in-combine-menu\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"C_ombine\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"plug-in-generic-menu\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"_Generic\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"plug-in-light-shadow-menu\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"_Light and Shadow\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"plug-in-distorts-menu\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"_Distorts\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"plug-in-artistic-menu\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"_Artistic\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"plug-in-decor-menu\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"_Decor\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"plug-in-map-menu\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"_Map\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"plug-in-render-menu\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"_Render\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"plug-in-render-clouds-menu\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"_Clouds\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"plug-in-render-nature-menu\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"_Nature\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"plug-in-render-pattern-menu\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"_Pattern\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"plug-in-web-menu\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"_Web\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"plug-in-animation-menu\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"An_imation\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"plug-in-reset-all\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"Reset all _Filters\00", align 1
@.str.51 = private unnamed_addr constant [45 x i8] c"Reset all plug-ins to their default settings\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"gimp-filter-reset-all\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"gtk-execute\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"Re_peat Last\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"<primary>F\00", align 1
@.str.56 = private unnamed_addr constant [52 x i8] c"Rerun the last used plug-in using the same settings\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"gimp-filter-repeat\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"gimp-reshow-filter\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"R_e-Show Last\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"<primary><shift>F\00", align 1
@.str.61 = private unnamed_addr constant [40 x i8] c"Show the last used plug-in dialog again\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.63 = private unnamed_addr constant [78 x i8] c"bad translation \22%s\22\0Afor menu path   \22%s\22\0A(<Prefix> must not be translated)\0A\0A\00", align 1
@.str.64 = private unnamed_addr constant [97 x i8] c"bad translation \22%s\22\0Afor menu path   \22%s\22\0A(<Prefix> must be followed by either nothing or '/')\0A\0A\00", align 1
@.str.65 = private unnamed_addr constant [77 x i8] c"bad translation \22%s\22\0Afor menu path   \22%s\22\0A(number of '/' must be the same)\0A\0A\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"plug-in-path-table\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"menu-path-added\00", align 1
@.str.68 = private unnamed_addr constant [39 x i8] c"bad menu path for procedure \22%s\22: \22%s\22\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"Gimp-Actions\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"Re_peat \22%s\22\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"R_e-Show \22%s\22\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"Repeat Last\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"Re-Show Last\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"procedure\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"tooltip\00", align 1

; Function Attrs: nounwind uwtable
define void @plug_in_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %manager = alloca %struct._GimpPlugInManager*, align 8
  %entries = alloca %struct._GimpPlugInActionEntry*, align 8
  %list = alloca %struct._GSList*, align 8
  %n_entries = alloca i32, align 4
  %i = alloca i32, align 4
  %branch = alloca %struct._GimpPlugInMenuBranch*, align 8
  %plug_in_proc = alloca %struct._GimpPlugInProcedure*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 25
  %2 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  store %struct._GimpPlugInManager* %2, %struct._GimpPlugInManager** %manager, align 8
  %3 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([20 x %struct._GimpActionEntry], [20 x %struct._GimpActionEntry]* @plug_in_actions, i32 0, i32 0), i32 20)
  %4 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([2 x %struct._GimpEnumActionEntry], [2 x %struct._GimpEnumActionEntry]* @plug_in_repeat_actions, i32 0, i32 0), i32 2, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @plug_in_repeat_cmd_callback to void ()*))
  %5 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %call = call %struct._GSList* @gimp_plug_in_manager_get_menu_branches(%struct._GimpPlugInManager* %5)
  store %struct._GSList* %call, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %6 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct._GimpPlugInMenuBranch*
  store %struct._GimpPlugInMenuBranch* %9, %struct._GimpPlugInMenuBranch** %branch, align 8
  %10 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %11 = load %struct._GimpPlugInMenuBranch*, %struct._GimpPlugInMenuBranch** %branch, align 8
  %prog_name = getelementptr inbounds %struct._GimpPlugInMenuBranch, %struct._GimpPlugInMenuBranch* %11, i32 0, i32 0
  %12 = load i8*, i8** %prog_name, align 8
  %13 = load %struct._GimpPlugInMenuBranch*, %struct._GimpPlugInMenuBranch** %branch, align 8
  %menu_path = getelementptr inbounds %struct._GimpPlugInMenuBranch, %struct._GimpPlugInMenuBranch* %13, i32 0, i32 1
  %14 = load i8*, i8** %menu_path, align 8
  %15 = load %struct._GimpPlugInMenuBranch*, %struct._GimpPlugInMenuBranch** %branch, align 8
  %menu_label = getelementptr inbounds %struct._GimpPlugInMenuBranch, %struct._GimpPlugInMenuBranch* %15, i32 0, i32 2
  %16 = load i8*, i8** %menu_label, align 8
  %17 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @plug_in_actions_menu_branch_added(%struct._GimpPlugInManager* %10, i8* %12, i8* %14, i8* %16, %struct._GimpActionGroup* %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool1 = icmp ne %struct._GSList* %18, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %19 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 1
  %20 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %20, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %22 = bitcast %struct._GimpPlugInManager* %21 to i8*
  %23 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %24 = bitcast %struct._GimpActionGroup* %23 to i8*
  %call2 = call i64 @g_signal_connect_object(i8* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPlugInManager*, i8*, i8*, i8*, %struct._GimpActionGroup*)* @plug_in_actions_menu_branch_added to void ()*), i8* %24, i32 0)
  %25 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %plug_in_procedures = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %25, i32 0, i32 4
  %26 = load %struct._GSList*, %struct._GSList** %plug_in_procedures, align 8
  store %struct._GSList* %26, %struct._GSList** %list, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %cond.end.16, %for.end
  %27 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool4 = icmp ne %struct._GSList* %27, null
  br i1 %tobool4, label %for.body.5, label %for.end.18

for.body.5:                                       ; preds = %for.cond.3
  %28 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data6 = getelementptr inbounds %struct._GSList, %struct._GSList* %28, i32 0, i32 0
  %29 = load i8*, i8** %data6, align 8
  %30 = bitcast i8* %29 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %30, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %31 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %prog = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %31, i32 0, i32 1
  %32 = load i8*, i8** %prog, align 8
  %tobool7 = icmp ne i8* %32, null
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  %33 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp8 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %33, i32 0, i32 1
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp8, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %34, i32 0, i32 44
  %35 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %36 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %37 = bitcast %struct._GimpPlugInProcedure* %36 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_procedure_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call9)
  %38 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpProcedure*
  %39 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @plug_in_actions_register_procedure(%struct._GimpPDB* %35, %struct._GimpProcedure* %38, %struct._GimpActionGroup* %39)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.5
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.end
  %40 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool12 = icmp ne %struct._GSList* %40, null
  br i1 %tobool12, label %cond.true.13, label %cond.false.15

cond.true.13:                                     ; preds = %for.inc.11
  %41 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next14 = getelementptr inbounds %struct._GSList, %struct._GSList* %41, i32 0, i32 1
  %42 = load %struct._GSList*, %struct._GSList** %next14, align 8
  br label %cond.end.16

cond.false.15:                                    ; preds = %for.inc.11
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.13
  %cond17 = phi %struct._GSList* [ %42, %cond.true.13 ], [ null, %cond.false.15 ]
  store %struct._GSList* %cond17, %struct._GSList** %list, align 8
  br label %for.cond.3

for.end.18:                                       ; preds = %for.cond.3
  %43 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp19 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %43, i32 0, i32 1
  %44 = load %struct._Gimp*, %struct._Gimp** %gimp19, align 8
  %pdb20 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %44, i32 0, i32 44
  %45 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb20, align 8
  %46 = bitcast %struct._GimpPDB* %45 to i8*
  %47 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %48 = bitcast %struct._GimpActionGroup* %47 to i8*
  %call21 = call i64 @g_signal_connect_object(i8* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPDB*, %struct._GimpProcedure*, %struct._GimpActionGroup*)* @plug_in_actions_register_procedure to void ()*), i8* %48, i32 0)
  %49 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp22 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %49, i32 0, i32 1
  %50 = load %struct._Gimp*, %struct._Gimp** %gimp22, align 8
  %pdb23 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %50, i32 0, i32 44
  %51 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb23, align 8
  %52 = bitcast %struct._GimpPDB* %51 to i8*
  %53 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %54 = bitcast %struct._GimpActionGroup* %53 to i8*
  %call24 = call i64 @g_signal_connect_object(i8* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPDB*, %struct._GimpProcedure*, %struct._GimpActionGroup*)* @plug_in_actions_unregister_procedure to void ()*), i8* %54, i32 0)
  %55 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %call25 = call i32 @gimp_plug_in_manager_history_size(%struct._GimpPlugInManager* %55)
  store i32 %call25, i32* %n_entries, align 4
  %56 = load i32, i32* %n_entries, align 4
  %conv = sext i32 %56 to i64
  %call26 = call noalias i8* @g_malloc0_n(i64 %conv, i64 56)
  %57 = bitcast i8* %call26 to %struct._GimpPlugInActionEntry*
  store %struct._GimpPlugInActionEntry* %57, %struct._GimpPlugInActionEntry** %entries, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.43, %for.end.18
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %n_entries, align 4
  %cmp = icmp slt i32 %58, %59
  br i1 %cmp, label %for.body.29, label %for.end.44

for.body.29:                                      ; preds = %for.cond.27
  %60 = load i32, i32* %i, align 4
  %add = add nsw i32 %60, 1
  %call30 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 %add)
  %61 = load i32, i32* %i, align 4
  %idxprom = sext i32 %61 to i64
  %62 = load %struct._GimpPlugInActionEntry*, %struct._GimpPlugInActionEntry** %entries, align 8
  %arrayidx = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %62, i64 %idxprom
  %name = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %arrayidx, i32 0, i32 0
  store i8* %call30, i8** %name, align 8
  %63 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %63 to i64
  %64 = load %struct._GimpPlugInActionEntry*, %struct._GimpPlugInActionEntry** %entries, align 8
  %arrayidx32 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %64, i64 %idxprom31
  %stock_id = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %arrayidx32, i32 0, i32 1
  store i8* null, i8** %stock_id, align 8
  %65 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %65 to i64
  %66 = load %struct._GimpPlugInActionEntry*, %struct._GimpPlugInActionEntry** %entries, align 8
  %arrayidx34 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %66, i64 %idxprom33
  %label = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %arrayidx34, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8** %label, align 8
  %67 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %67 to i64
  %68 = load %struct._GimpPlugInActionEntry*, %struct._GimpPlugInActionEntry** %entries, align 8
  %arrayidx36 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %68, i64 %idxprom35
  %accelerator = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %arrayidx36, i32 0, i32 3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8** %accelerator, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %69 to i64
  %70 = load %struct._GimpPlugInActionEntry*, %struct._GimpPlugInActionEntry** %entries, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %70, i64 %idxprom37
  %tooltip = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %arrayidx38, i32 0, i32 4
  store i8* null, i8** %tooltip, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %71 to i64
  %72 = load %struct._GimpPlugInActionEntry*, %struct._GimpPlugInActionEntry** %entries, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %72, i64 %idxprom39
  %procedure = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %arrayidx40, i32 0, i32 5
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %procedure, align 8
  %73 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %73 to i64
  %74 = load %struct._GimpPlugInActionEntry*, %struct._GimpPlugInActionEntry** %entries, align 8
  %arrayidx42 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %74, i64 %idxprom41
  %help_id = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %arrayidx42, i32 0, i32 6
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8** %help_id, align 8
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.29
  %75 = load i32, i32* %i, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.27

for.end.44:                                       ; preds = %for.cond.27
  %76 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %77 = load %struct._GimpPlugInActionEntry*, %struct._GimpPlugInActionEntry** %entries, align 8
  %78 = load i32, i32* %n_entries, align 4
  call void @gimp_action_group_add_plug_in_actions(%struct._GimpActionGroup* %76, %struct._GimpPlugInActionEntry* %77, i32 %78, void ()* bitcast (void (%struct._GtkAction*, %struct._GimpPlugInProcedure*, i8*)* @plug_in_history_cmd_callback to void ()*))
  store i32 0, i32* %i, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.55, %for.end.44
  %79 = load i32, i32* %i, align 4
  %80 = load i32, i32* %n_entries, align 4
  %cmp46 = icmp slt i32 %79, %80
  br i1 %cmp46, label %for.body.48, label %for.end.57

for.body.48:                                      ; preds = %for.cond.45
  %81 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %82 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %82 to i64
  %83 = load %struct._GimpPlugInActionEntry*, %struct._GimpPlugInActionEntry** %entries, align 8
  %arrayidx50 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %83, i64 %idxprom49
  %name51 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %arrayidx50, i32 0, i32 0
  %84 = load i8*, i8** %name51, align 8
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %81, i8* %84, i32 0)
  %85 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %85 to i64
  %86 = load %struct._GimpPlugInActionEntry*, %struct._GimpPlugInActionEntry** %entries, align 8
  %arrayidx53 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %86, i64 %idxprom52
  %name54 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %arrayidx53, i32 0, i32 0
  %87 = load i8*, i8** %name54, align 8
  call void @g_free(i8* %87)
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.48
  %88 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %88, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond.45

for.end.57:                                       ; preds = %for.cond.45
  %89 = load %struct._GimpPlugInActionEntry*, %struct._GimpPlugInActionEntry** %entries, align 8
  %90 = bitcast %struct._GimpPlugInActionEntry* %89 to i8*
  call void @g_free(i8* %90)
  %91 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %92 = bitcast %struct._GimpPlugInManager* %91 to i8*
  %93 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %94 = bitcast %struct._GimpActionGroup* %93 to i8*
  %call58 = call i64 @g_signal_connect_object(i8* %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPlugInManager*, %struct._GimpActionGroup*)* @plug_in_actions_history_changed to void ()*), i8* %94, i32 0)
  %95 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %96 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @plug_in_actions_history_changed(%struct._GimpPlugInManager* %95, %struct._GimpActionGroup* %96)
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup*, i8*, %struct._GimpEnumActionEntry*, i32, void ()*) #1

declare void @plug_in_repeat_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare %struct._GSList* @gimp_plug_in_manager_get_menu_branches(%struct._GimpPlugInManager*) #1

; Function Attrs: nounwind uwtable
define internal void @plug_in_actions_menu_branch_added(%struct._GimpPlugInManager* %manager, i8* %progname, i8* %menu_path, i8* %menu_label, %struct._GimpActionGroup* %group) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %progname.addr = alloca i8*, align 8
  %menu_path.addr = alloca i8*, align 8
  %menu_label.addr = alloca i8*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %locale_domain = alloca i8*, align 8
  %path_translated = alloca i8*, align 8
  %label_translated = alloca i8*, align 8
  %full = alloca i8*, align 8
  %full_translated = alloca i8*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store i8* %progname, i8** %progname.addr, align 8
  store i8* %menu_path, i8** %menu_path.addr, align 8
  store i8* %menu_label, i8** %menu_label.addr, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %1 = load i8*, i8** %progname.addr, align 8
  %call = call i8* @gimp_plug_in_manager_get_locale_domain(%struct._GimpPlugInManager* %0, i8* %1, i8** null)
  store i8* %call, i8** %locale_domain, align 8
  %2 = load i8*, i8** %locale_domain, align 8
  %3 = load i8*, i8** %menu_path.addr, align 8
  %call1 = call i8* @dgettext(i8* %2, i8* %3) #5
  store i8* %call1, i8** %path_translated, align 8
  %4 = load i8*, i8** %locale_domain, align 8
  %5 = load i8*, i8** %menu_label.addr, align 8
  %call2 = call i8* @dgettext(i8* %4, i8* %5) #5
  store i8* %call2, i8** %label_translated, align 8
  %6 = load i8*, i8** %menu_path.addr, align 8
  %7 = load i8*, i8** %menu_label.addr, align 8
  %call3 = call noalias i8* (i8*, ...) @g_strconcat(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i32 0, i32 0), i8* %7, i8* null)
  store i8* %call3, i8** %full, align 8
  %8 = load i8*, i8** %path_translated, align 8
  %9 = load i8*, i8** %label_translated, align 8
  %call4 = call noalias i8* (i8*, ...) @g_strconcat(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i32 0, i32 0), i8* %9, i8* null)
  store i8* %call4, i8** %full_translated, align 8
  %10 = load i8*, i8** %full, align 8
  %11 = load i8*, i8** %full_translated, align 8
  %call5 = call i32 @plug_in_actions_check_translation(i8* %10, i8* %11)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %13 = load i8*, i8** %full, align 8
  %14 = load i8*, i8** %full_translated, align 8
  call void @plug_in_actions_build_path(%struct._GimpActionGroup* %12, i8* %13, i8* %14)
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %16 = load i8*, i8** %full, align 8
  %17 = load i8*, i8** %full, align 8
  call void @plug_in_actions_build_path(%struct._GimpActionGroup* %15, i8* %16, i8* %17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load i8*, i8** %full_translated, align 8
  call void @g_free(i8* %18)
  %19 = load i8*, i8** %full, align 8
  call void @g_free(i8* %19)
  ret void
}

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @plug_in_actions_register_procedure(%struct._GimpPDB* %pdb, %struct._GimpProcedure* %procedure, %struct._GimpActionGroup* %group) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %plug_in_proc = alloca %struct._GimpPlugInProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
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
  br i1 %tobool7, label %if.then.8, label %if.end.19

if.then.8:                                        ; preds = %if.end.6
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %14 = bitcast %struct._GimpProcedure* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_plug_in_procedure_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %15, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %16 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %17 = bitcast %struct._GimpPlugInProcedure* %16 to i8*
  %18 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %19 = bitcast %struct._GimpActionGroup* %18 to i8*
  %call12 = call i64 @g_signal_connect_object(i8* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPlugInProcedure*, i8*, %struct._GimpActionGroup*)* @plug_in_actions_menu_path_added to void ()*), i8* %19, i32 0)
  %20 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %menu_label = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %20, i32 0, i32 4
  %21 = load i8*, i8** %menu_label, align 8
  %tobool13 = icmp ne i8* %21, null
  br i1 %tobool13, label %land.lhs.true.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %22 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %menu_paths = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %22, i32 0, i32 5
  %23 = load %struct._GList*, %struct._GList** %menu_paths, align 8
  %tobool14 = icmp ne %struct._GList* %23, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.18

land.lhs.true.15:                                 ; preds = %lor.lhs.false, %if.then.8
  %24 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %file_proc = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %24, i32 0, i32 14
  %25 = load i32, i32* %file_proc, align 4
  %tobool16 = icmp ne i32 %25, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true.15
  %26 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %27 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  call void @plug_in_actions_add_proc(%struct._GimpActionGroup* %26, %struct._GimpPlugInProcedure* %27)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %land.lhs.true.15, %lor.lhs.false
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.6
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_procedure_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @plug_in_actions_unregister_procedure(%struct._GimpPDB* %pdb, %struct._GimpProcedure* %procedure, %struct._GimpActionGroup* %group) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %plug_in_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %action = alloca %struct._GtkAction*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_procedure_get_type() #6
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
  br i1 %tobool7, label %if.then.8, label %if.end.29

if.then.8:                                        ; preds = %if.end.6
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %14 = bitcast %struct._GimpProcedure* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_plug_in_procedure_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %15, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %16 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %17 = bitcast %struct._GimpPlugInProcedure* %16 to i8*
  %18 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %19 = bitcast %struct._GimpActionGroup* %18 to i8*
  %call12 = call i32 @g_signal_handlers_disconnect_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpPlugInProcedure*, i8*, %struct._GimpActionGroup*)* @plug_in_actions_menu_path_added to i8*), i8* %19)
  %20 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %menu_label = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %20, i32 0, i32 4
  %21 = load i8*, i8** %menu_label, align 8
  %tobool13 = icmp ne i8* %21, null
  br i1 %tobool13, label %land.lhs.true.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %22 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %menu_paths = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %22, i32 0, i32 5
  %23 = load %struct._GList*, %struct._GList** %menu_paths, align 8
  %tobool14 = icmp ne %struct._GList* %23, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.28

land.lhs.true.15:                                 ; preds = %lor.lhs.false, %if.then.8
  %24 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc, align 8
  %file_proc = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %24, i32 0, i32 14
  %25 = load i32, i32* %file_proc, align 4
  %tobool16 = icmp ne i32 %25, 0
  br i1 %tobool16, label %if.end.28, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true.15
  %26 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %27 = bitcast %struct._GimpActionGroup* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_action_group_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkActionGroup*
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %30 = bitcast %struct._GimpProcedure* %29 to i8*
  %call21 = call i8* @gimp_object_get_name(i8* %30)
  %call22 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %28, i8* %call21)
  store %struct._GtkAction* %call22, %struct._GtkAction** %action, align 8
  %31 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool23 = icmp ne %struct._GtkAction* %31, null
  br i1 %tobool23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.then.17
  %32 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %33 = bitcast %struct._GimpActionGroup* %32 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_action_group_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call25)
  %34 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkActionGroup*
  %35 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gtk_action_group_remove_action(%struct._GtkActionGroup* %34, %struct._GtkAction* %35)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.then.17
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %land.lhs.true.15, %lor.lhs.false
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.6
  ret void
}

declare i32 @gimp_plug_in_manager_history_size(%struct._GimpPlugInManager*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @gimp_action_group_add_plug_in_actions(%struct._GimpActionGroup*, %struct._GimpPlugInActionEntry*, i32, void ()*) #1

declare void @plug_in_history_cmd_callback(%struct._GtkAction*, %struct._GimpPlugInProcedure*, i8*) #1

declare void @gimp_action_group_set_action_visible(%struct._GimpActionGroup*, i8*, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @plug_in_actions_history_changed(%struct._GimpPlugInManager* %manager, %struct._GimpActionGroup* %group) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  %i = alloca i32, align 4
  %actual_action = alloca %struct._GtkAction*, align 8
  %label = alloca i8*, align 8
  %repeat = alloca i8*, align 8
  %reshow = alloca i8*, align 8
  %sensitive = alloca i32, align 4
  %action = alloca %struct._GtkAction*, align 8
  %actual_action17 = alloca %struct._GtkAction*, align 8
  %label18 = alloca i8*, align 8
  %name = alloca i8*, align 8
  %sensitive19 = alloca i32, align 4
  %action47 = alloca %struct._GtkAction*, align 8
  %name48 = alloca i8*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %call = call %struct._GimpPlugInProcedure* @gimp_plug_in_manager_history_nth(%struct._GimpPlugInManager* %0, i32 0)
  store %struct._GimpPlugInProcedure* %call, %struct._GimpPlugInProcedure** %proc, align 8
  %1 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %tobool = icmp ne %struct._GimpPlugInProcedure* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %sensitive, align 4
  %2 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %call1 = call i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure* %2)
  store i8* %call1, i8** %label, align 8
  %3 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %4 = bitcast %struct._GimpActionGroup* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_action_group_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkActionGroup*
  %6 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %7 = bitcast %struct._GimpPlugInProcedure* %6 to i8*
  %call4 = call i8* @gimp_object_get_name(i8* %7)
  %call5 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %5, i8* %call4)
  store %struct._GtkAction* %call5, %struct._GtkAction** %actual_action, align 8
  %8 = load %struct._GtkAction*, %struct._GtkAction** %actual_action, align 8
  %tobool6 = icmp ne %struct._GtkAction* %8, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %9 = load %struct._GtkAction*, %struct._GtkAction** %actual_action, align 8
  %call8 = call i32 @gtk_action_get_sensitive(%struct._GtkAction* %9)
  store i32 %call8, i32* %sensitive, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i32 0, i32 0)) #5
  %10 = load i8*, i8** %label, align 8
  %call10 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call9, i8* %10)
  store i8* %call10, i8** %repeat, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.71, i32 0, i32 0)) #5
  %11 = load i8*, i8** %label, align 8
  %call12 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call11, i8* %11)
  store i8* %call12, i8** %reshow, align 8
  %12 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %13 = load i8*, i8** %repeat, align 8
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* %13)
  %14 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %15 = load i8*, i8** %reshow, align 8
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* %15)
  %16 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %17 = load i32, i32* %sensitive, align 4
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 %17)
  %18 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %19 = load i32, i32* %sensitive, align 4
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i32 %19)
  %20 = load i8*, i8** %repeat, align 8
  call void @g_free(i8* %20)
  %21 = load i8*, i8** %reshow, align 8
  call void @g_free(i8* %21)
  br label %if.end.15

if.else:                                          ; preds = %entry
  %22 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i32 0, i32 0)) #5
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* %call13)
  %23 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0)) #5
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* %call14)
  %24 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0)
  %25 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i32 0)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %26 = load i32, i32* %i, align 4
  %27 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %call16 = call i32 @gimp_plug_in_manager_history_length(%struct._GimpPlugInManager* %27)
  %cmp = icmp ult i32 %26, %call16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %sensitive19, align 4
  %28 = load i32, i32* %i, align 4
  %add = add nsw i32 %28, 1
  %call20 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 %add)
  store i8* %call20, i8** %name, align 8
  %29 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %30 = bitcast %struct._GimpActionGroup* %29 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_action_group_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call21)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkActionGroup*
  %32 = load i8*, i8** %name, align 8
  %call23 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %31, i8* %32)
  store %struct._GtkAction* %call23, %struct._GtkAction** %action, align 8
  %33 = load i8*, i8** %name, align 8
  call void @g_free(i8* %33)
  %34 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %35 = load i32, i32* %i, align 4
  %call24 = call %struct._GimpPlugInProcedure* @gimp_plug_in_manager_history_nth(%struct._GimpPlugInManager* %34, i32 %35)
  store %struct._GimpPlugInProcedure* %call24, %struct._GimpPlugInProcedure** %proc, align 8
  %36 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_label = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %36, i32 0, i32 4
  %37 = load i8*, i8** %menu_label, align 8
  %tobool25 = icmp ne i8* %37, null
  br i1 %tobool25, label %if.then.26, label %if.else.30

if.then.26:                                       ; preds = %for.body
  %38 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %call27 = call i8* @gimp_plug_in_procedure_get_locale_domain(%struct._GimpPlugInProcedure* %38)
  %39 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_label28 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %39, i32 0, i32 4
  %40 = load i8*, i8** %menu_label28, align 8
  %call29 = call i8* @dgettext(i8* %call27, i8* %40) #5
  store i8* %call29, i8** %label18, align 8
  br label %if.end.32

if.else.30:                                       ; preds = %for.body
  %41 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %call31 = call i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure* %41)
  store i8* %call31, i8** %label18, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.26
  %42 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %43 = bitcast %struct._GimpActionGroup* %42 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_action_group_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call33)
  %44 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkActionGroup*
  %45 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %46 = bitcast %struct._GimpPlugInProcedure* %45 to i8*
  %call35 = call i8* @gimp_object_get_name(i8* %46)
  %call36 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %44, i8* %call35)
  store %struct._GtkAction* %call36, %struct._GtkAction** %actual_action17, align 8
  %47 = load %struct._GtkAction*, %struct._GtkAction** %actual_action17, align 8
  %tobool37 = icmp ne %struct._GtkAction* %47, null
  br i1 %tobool37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.32
  %48 = load %struct._GtkAction*, %struct._GtkAction** %actual_action17, align 8
  %call39 = call i32 @gtk_action_get_sensitive(%struct._GtkAction* %48)
  store i32 %call39, i32* %sensitive19, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.32
  %49 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %50 = bitcast %struct._GtkAction* %49 to i8*
  %51 = load i32, i32* %sensitive19, align 4
  %52 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %53 = load i8*, i8** %label18, align 8
  %54 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %call41 = call i8* @gimp_plug_in_procedure_get_stock_id(%struct._GimpPlugInProcedure* %54)
  %55 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %call42 = call i8* @gimp_plug_in_procedure_get_blurb(%struct._GimpPlugInProcedure* %55)
  call void (i8*, i8*, ...) @g_object_set(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), %struct._GimpPlugInProcedure* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i8* %call41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0), i8* %call42, i8* null)
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %56 = load i32, i32* %i, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.54, %for.end
  %57 = load i32, i32* %i, align 4
  %58 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %call44 = call i32 @gimp_plug_in_manager_history_size(%struct._GimpPlugInManager* %58)
  %cmp45 = icmp ult i32 %57, %call44
  br i1 %cmp45, label %for.body.46, label %for.end.56

for.body.46:                                      ; preds = %for.cond.43
  %59 = load i32, i32* %i, align 4
  %add49 = add nsw i32 %59, 1
  %call50 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 %add49)
  store i8* %call50, i8** %name48, align 8
  %60 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %61 = bitcast %struct._GimpActionGroup* %60 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_action_group_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call51)
  %62 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkActionGroup*
  %63 = load i8*, i8** %name48, align 8
  %call53 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %62, i8* %63)
  store %struct._GtkAction* %call53, %struct._GtkAction** %action47, align 8
  %64 = load i8*, i8** %name48, align 8
  call void @g_free(i8* %64)
  %65 = load %struct._GtkAction*, %struct._GtkAction** %action47, align 8
  %66 = bitcast %struct._GtkAction* %65 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i8* null, i8* null)
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.46
  %67 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %67, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond.43

for.end.56:                                       ; preds = %for.cond.43
  ret void
}

; Function Attrs: nounwind uwtable
define void @plug_in_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %manager = alloca %struct._GimpPlugInManager*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %list = alloca %struct._GSList*, align 8
  %i = alloca i32, align 4
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  %sensitive = alloca i32, align 4
  %proc26 = alloca %struct._GimpPlugInProcedure*, align 8
  %name = alloca i8*, align 8
  %sensitive29 = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 25
  %3 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  store %struct._GimpPlugInManager* %3, %struct._GimpPlugInManager** %manager, align 8
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %5)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %plug_in_procedures = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %6, i32 0, i32 4
  %7 = load %struct._GSList*, %struct._GSList** %plug_in_procedures, align 8
  store %struct._GSList* %7, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %8 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool2 = icmp ne %struct._GSList* %8, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data3 = getelementptr inbounds %struct._GSList, %struct._GSList* %9, i32 0, i32 0
  %10 = load i8*, i8** %data3, align 8
  %11 = bitcast i8* %10 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %11, %struct._GimpPlugInProcedure** %proc, align 8
  %12 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_label = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %12, i32 0, i32 4
  %13 = load i8*, i8** %menu_label, align 8
  %tobool4 = icmp ne i8* %13, null
  br i1 %tobool4, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %14 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_paths = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %14, i32 0, i32 5
  %15 = load %struct._GList*, %struct._GList** %menu_paths, align 8
  %tobool5 = icmp ne %struct._GList* %15, null
  br i1 %tobool5, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %16 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %file_proc = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %16, i32 0, i32 14
  %17 = load i32, i32* %file_proc, align 4
  %tobool6 = icmp ne i32 %17, 0
  br i1 %tobool6, label %if.end.12, label %land.lhs.true.7

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %18 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %image_types_val = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %18, i32 0, i32 11
  %19 = load i32, i32* %image_types_val, align 4
  %tobool8 = icmp ne i32 %19, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %land.lhs.true.7
  %20 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call10 = call i32 @gimp_plug_in_procedure_get_sensitive(%struct._GimpPlugInProcedure* %20, %struct._GimpDrawable* %21)
  store i32 %call10, i32* %sensitive, align 4
  %22 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %23 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %24 = bitcast %struct._GimpPlugInProcedure* %23 to i8*
  %call11 = call i8* @gimp_object_get_name(i8* %24)
  %25 = load i32, i32* %sensitive, align 4
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %22, i8* %call11, i32 %25)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %land.lhs.true.7, %land.lhs.true, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %26 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool13 = icmp ne %struct._GSList* %26, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %27 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %27, i32 0, i32 1
  %28 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %28, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %history = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %29, i32 0, i32 14
  %30 = load %struct._GSList*, %struct._GSList** %history, align 8
  %tobool14 = icmp ne %struct._GSList* %30, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.else

land.lhs.true.15:                                 ; preds = %for.end
  %31 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %history16 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %31, i32 0, i32 14
  %32 = load %struct._GSList*, %struct._GSList** %history16, align 8
  %data17 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 0
  %33 = load i8*, i8** %data17, align 8
  %34 = bitcast i8* %33 to %struct._GimpPlugInProcedure*
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call18 = call i32 @gimp_plug_in_procedure_get_sensitive(%struct._GimpPlugInProcedure* %34, %struct._GimpDrawable* %35)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true.15
  %36 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 1)
  %37 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i32 1)
  br label %if.end.21

if.else:                                          ; preds = %land.lhs.true.15, %for.end
  %38 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0)
  %39 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i32 0)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  %40 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %history22 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %40, i32 0, i32 14
  %41 = load %struct._GSList*, %struct._GSList** %history22, align 8
  store %struct._GSList* %41, %struct._GSList** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.31, %if.end.21
  %42 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool24 = icmp ne %struct._GSList* %42, null
  br i1 %tobool24, label %for.body.25, label %for.end.33

for.body.25:                                      ; preds = %for.cond.23
  %43 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data27 = getelementptr inbounds %struct._GSList, %struct._GSList* %43, i32 0, i32 0
  %44 = load i8*, i8** %data27, align 8
  %45 = bitcast i8* %44 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %45, %struct._GimpPlugInProcedure** %proc26, align 8
  %46 = load i32, i32* %i, align 4
  %add = add nsw i32 %46, 1
  %call28 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 %add)
  store i8* %call28, i8** %name, align 8
  %47 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc26, align 8
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call30 = call i32 @gimp_plug_in_procedure_get_sensitive(%struct._GimpPlugInProcedure* %47, %struct._GimpDrawable* %48)
  store i32 %call30, i32* %sensitive29, align 4
  %49 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %50 = load i8*, i8** %name, align 8
  %51 = load i32, i32* %sensitive29, align 4
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %49, i8* %50, i32 %51)
  %52 = load i8*, i8** %name, align 8
  call void @g_free(i8* %52)
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.25
  %53 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next32 = getelementptr inbounds %struct._GSList, %struct._GSList* %53, i32 0, i32 1
  %54 = load %struct._GSList*, %struct._GSList** %next32, align 8
  store %struct._GSList* %54, %struct._GSList** %list, align 8
  %55 = load i32, i32* %i, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.23

for.end.33:                                       ; preds = %for.cond.23
  ret void
}

declare %struct._GimpImage* @action_data_get_image(i8*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare i32 @gimp_plug_in_procedure_get_sensitive(%struct._GimpPlugInProcedure*, %struct._GimpDrawable*) #1

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare i8* @gimp_object_get_name(i8*) #1

declare void @plug_in_reset_all_cmd_callback(%struct._GtkAction*, i8*) #1

declare i8* @gimp_plug_in_manager_get_locale_domain(%struct._GimpPlugInManager*, i8*, i8**) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

declare noalias i8* @g_strconcat(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @plug_in_actions_check_translation(i8* %original, i8* %translated) #0 {
entry:
  %retval = alloca i32, align 4
  %original.addr = alloca i8*, align 8
  %translated.addr = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  store i8* %original, i8** %original.addr, align 8
  store i8* %translated, i8** %translated.addr, align 8
  %0 = load i8*, i8** %original.addr, align 8
  %call = call i8* @strchr(i8* %0, i32 62) #7
  store i8* %call, i8** %p1, align 8
  %1 = load i8*, i8** %translated.addr, align 8
  %call1 = call i8* @strchr(i8* %1, i32 62) #7
  store i8* %call1, i8** %p2, align 8
  %2 = load i8*, i8** %p1, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %p2, align 8
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %lor.lhs.false.3, label %if.then

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load i8*, i8** %p1, align 8
  %5 = load i8*, i8** %original.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %6 = load i8*, i8** %p2, align 8
  %7 = load i8*, i8** %translated.addr, align 8
  %sub.ptr.lhs.cast4 = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast5 = ptrtoint i8* %7 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  %cmp = icmp ne i64 %sub.ptr.sub, %sub.ptr.sub6
  br i1 %cmp, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.3
  %8 = load i8*, i8** %original.addr, align 8
  %9 = load i8*, i8** %translated.addr, align 8
  %10 = load i8*, i8** %p1, align 8
  %11 = load i8*, i8** %original.addr, align 8
  %sub.ptr.lhs.cast8 = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast9 = ptrtoint i8* %11 to i64
  %sub.ptr.sub10 = sub i64 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast9
  %call11 = call i32 @strncmp(i8* %8, i8* %9, i64 %sub.ptr.sub10) #7
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.7, %lor.lhs.false.3, %lor.lhs.false, %entry
  %12 = load i8*, i8** %translated.addr, align 8
  %13 = load i8*, i8** %original.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.63, i32 0, i32 0), i8* %12, i8* %13)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.7
  %14 = load i8*, i8** %p1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %p1, align 8
  %15 = load i8*, i8** %p2, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr13, i8** %p2, align 8
  %16 = load i8*, i8** %p1, align 8
  %17 = load i8, i8* %16, align 1
  %conv = sext i8 %17 to i32
  %cmp14 = icmp eq i32 %conv, 47
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false.19

land.lhs.true:                                    ; preds = %if.end
  %18 = load i8*, i8** %p2, align 8
  %19 = load i8, i8* %18, align 1
  %conv16 = sext i8 %19 to i32
  %cmp17 = icmp eq i32 %conv16, 47
  br i1 %cmp17, label %if.end.28, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %land.lhs.true, %if.end
  %20 = load i8*, i8** %p1, align 8
  %21 = load i8, i8* %20, align 1
  %conv20 = sext i8 %21 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %land.lhs.true.23, label %if.then.27

land.lhs.true.23:                                 ; preds = %lor.lhs.false.19
  %22 = load i8*, i8** %p2, align 8
  %23 = load i8, i8* %22, align 1
  %conv24 = sext i8 %23 to i32
  %cmp25 = icmp eq i32 %conv24, 0
  br i1 %cmp25, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %land.lhs.true.23, %lor.lhs.false.19
  %24 = load i8*, i8** %translated.addr, align 8
  %25 = load i8*, i8** %original.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.64, i32 0, i32 0), i8* %24, i8* %25)
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %land.lhs.true.23, %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %if.end.40, %if.end.28
  %26 = load i8*, i8** %p1, align 8
  %tobool29 = icmp ne i8* %26, null
  br i1 %tobool29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %27 = load i8*, i8** %p2, align 8
  %tobool30 = icmp ne i8* %27, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %28 = phi i1 [ false, %while.cond ], [ %tobool30, %land.rhs ]
  br i1 %28, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %29 = load i8*, i8** %p1, align 8
  %call31 = call i8* @strchr(i8* %29, i32 47) #7
  store i8* %call31, i8** %p1, align 8
  %30 = load i8*, i8** %p2, align 8
  %call32 = call i8* @strchr(i8* %30, i32 47) #7
  store i8* %call32, i8** %p2, align 8
  %31 = load i8*, i8** %p1, align 8
  %tobool33 = icmp ne i8* %31, null
  br i1 %tobool33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %while.body
  %32 = load i8*, i8** %p1, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr35, i8** %p1, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %while.body
  %33 = load i8*, i8** %p2, align 8
  %tobool37 = icmp ne i8* %33, null
  br i1 %tobool37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.36
  %34 = load i8*, i8** %p2, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr39, i8** %p2, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.36
  br label %while.cond

while.end:                                        ; preds = %land.end
  %35 = load i8*, i8** %p1, align 8
  %tobool41 = icmp ne i8* %35, null
  br i1 %tobool41, label %if.then.44, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %while.end
  %36 = load i8*, i8** %p2, align 8
  %tobool43 = icmp ne i8* %36, null
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %lor.lhs.false.42, %while.end
  %37 = load i8*, i8** %translated.addr, align 8
  %38 = load i8*, i8** %original.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.65, i32 0, i32 0), i8* %37, i8* %38)
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %lor.lhs.false.42
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then.44, %if.then.27, %if.then
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal void @plug_in_actions_build_path(%struct._GimpActionGroup* %group, i8* %path_original, i8* %path_translated) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %path_original.addr = alloca i8*, align 8
  %path_translated.addr = alloca i8*, align 8
  %path_table = alloca %struct._GHashTable*, align 8
  %copy_original = alloca i8*, align 8
  %copy_translated = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %label = alloca i8*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %path_original, i8** %path_original.addr, align 8
  store i8* %path_translated, i8** %path_translated.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %1 = bitcast %struct._GimpActionGroup* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.66, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GHashTable*
  store %struct._GHashTable* %3, %struct._GHashTable** %path_table, align 8
  %4 = load %struct._GHashTable*, %struct._GHashTable** %path_table, align 8
  %tobool = icmp ne %struct._GHashTable* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* null)
  store %struct._GHashTable* %call2, %struct._GHashTable** %path_table, align 8
  %5 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %6 = bitcast %struct._GimpActionGroup* %5 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %8 = load %struct._GHashTable*, %struct._GHashTable** %path_table, align 8
  %9 = bitcast %struct._GHashTable* %8 to i8*
  call void @g_object_set_data_full(%struct._GObject* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.66, i32 0, i32 0), i8* %9, void (i8*)* bitcast (void (%struct._GHashTable*)* @g_hash_table_destroy to void (i8*)*))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8*, i8** %path_original.addr, align 8
  %call4 = call noalias i8* @gimp_strip_uline(i8* %10)
  store i8* %call4, i8** %copy_original, align 8
  %11 = load i8*, i8** %path_translated.addr, align 8
  %call5 = call noalias i8* @g_strdup(i8* %11)
  store i8* %call5, i8** %copy_translated, align 8
  %12 = load i8*, i8** %copy_original, align 8
  %call6 = call i8* @strrchr(i8* %12, i32 47) #7
  store i8* %call6, i8** %p1, align 8
  %13 = load i8*, i8** %copy_translated, align 8
  %call7 = call i8* @strrchr(i8* %13, i32 47) #7
  store i8* %call7, i8** %p2, align 8
  %14 = load i8*, i8** %p1, align 8
  %tobool8 = icmp ne i8* %14, null
  br i1 %tobool8, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %15 = load i8*, i8** %p2, align 8
  %tobool9 = icmp ne i8* %15, null
  br i1 %tobool9, label %land.lhs.true.10, label %if.end.19

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %16 = load %struct._GHashTable*, %struct._GHashTable** %path_table, align 8
  %17 = load i8*, i8** %copy_original, align 8
  %call11 = call i8* @g_hash_table_lookup(%struct._GHashTable* %16, i8* %17)
  %tobool12 = icmp ne i8* %call11, null
  br i1 %tobool12, label %if.end.19, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true.10
  %18 = load i8*, i8** %p2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %add.ptr, i8** %label, align 8
  %19 = load i8*, i8** %copy_original, align 8
  %20 = load i8*, i8** %label, align 8
  %call14 = call %struct._GtkAction* @gtk_action_new(i8* %19, i8* %20, i8* null, i8* null)
  store %struct._GtkAction* %call14, %struct._GtkAction** %action, align 8
  %21 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %22 = bitcast %struct._GimpActionGroup* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_action_group_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkActionGroup*
  %24 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gtk_action_group_add_action(%struct._GtkActionGroup* %23, %struct._GtkAction* %24)
  %25 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %26 = bitcast %struct._GtkAction* %25 to i8*
  call void @g_object_unref(i8* %26)
  %27 = load %struct._GHashTable*, %struct._GHashTable** %path_table, align 8
  %28 = load i8*, i8** %copy_original, align 8
  %call17 = call noalias i8* @g_strdup(i8* %28)
  %29 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %30 = bitcast %struct._GtkAction* %29 to i8*
  %call18 = call i32 @g_hash_table_insert(%struct._GHashTable* %27, i8* %call17, i8* %30)
  %31 = load i8*, i8** %p1, align 8
  store i8 0, i8* %31, align 1
  %32 = load i8*, i8** %p2, align 8
  store i8 0, i8* %32, align 1
  %33 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %34 = load i8*, i8** %copy_original, align 8
  %35 = load i8*, i8** %copy_translated, align 8
  call void @plug_in_actions_build_path(%struct._GimpActionGroup* %33, i8* %34, i8* %35)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.13, %land.lhs.true.10, %land.lhs.true, %if.end
  %36 = load i8*, i8** %copy_original, align 8
  call void @g_free(i8* %36)
  %37 = load i8*, i8** %copy_translated, align 8
  call void @g_free(i8* %37)
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

declare void @g_printerr(i8*, ...) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

declare i32 @g_str_hash(i8*) #1

declare i32 @g_str_equal(i8*, i8*) #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

declare void @g_hash_table_destroy(%struct._GHashTable*) #1

declare noalias i8* @gimp_strip_uline(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare %struct._GtkAction* @gtk_action_new(i8*, i8*, i8*, i8*) #1

declare void @gtk_action_group_add_action(%struct._GtkActionGroup*, %struct._GtkAction*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_action_group_get_type() #2

declare void @g_object_unref(i8*) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_procedure_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind uwtable
define internal void @plug_in_actions_menu_path_added(%struct._GimpPlugInProcedure* %plug_in_proc, i8* %menu_path, %struct._GimpActionGroup* %group) #0 {
entry:
  %plug_in_proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %menu_path.addr = alloca i8*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %locale_domain = alloca i8*, align 8
  %path_translated = alloca i8*, align 8
  store %struct._GimpPlugInProcedure* %plug_in_proc, %struct._GimpPlugInProcedure** %plug_in_proc.addr, align 8
  store i8* %menu_path, i8** %menu_path.addr, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %plug_in_proc.addr, align 8
  %call = call i8* @gimp_plug_in_procedure_get_locale_domain(%struct._GimpPlugInProcedure* %0)
  store i8* %call, i8** %locale_domain, align 8
  %1 = load i8*, i8** %locale_domain, align 8
  %2 = load i8*, i8** %menu_path.addr, align 8
  %call1 = call i8* @dgettext(i8* %1, i8* %2) #5
  store i8* %call1, i8** %path_translated, align 8
  %3 = load i8*, i8** %menu_path.addr, align 8
  %4 = load i8*, i8** %path_translated, align 8
  %call2 = call i32 @plug_in_actions_check_translation(i8* %3, i8* %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %6 = load i8*, i8** %menu_path.addr, align 8
  %7 = load i8*, i8** %path_translated, align 8
  call void @plug_in_actions_build_path(%struct._GimpActionGroup* %5, i8* %6, i8* %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %9 = load i8*, i8** %menu_path.addr, align 8
  %10 = load i8*, i8** %menu_path.addr, align 8
  call void @plug_in_actions_build_path(%struct._GimpActionGroup* %8, i8* %9, i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @plug_in_actions_add_proc(%struct._GimpActionGroup* %group, %struct._GimpPlugInProcedure* %proc) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %entry1 = alloca %struct._GimpPlugInActionEntry, align 8
  %locale_domain = alloca i8*, align 8
  %label = alloca i8*, align 8
  %path_original = alloca i8*, align 8
  %path_translated = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %original = alloca i8*, align 8
  %translated = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %sensitive = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  store i8* null, i8** %path_original, align 8
  store i8* null, i8** %path_translated, align 8
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %call = call i8* @gimp_plug_in_procedure_get_locale_domain(%struct._GimpPlugInProcedure* %0)
  store i8* %call, i8** %locale_domain, align 8
  %1 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %menu_label = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %1, i32 0, i32 4
  %2 = load i8*, i8** %menu_label, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %locale_domain, align 8
  %4 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %menu_label2 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %4, i32 0, i32 4
  %5 = load i8*, i8** %menu_label2, align 8
  %call3 = call i8* @dgettext(i8* %3, i8* %5) #5
  store i8* %call3, i8** %label, align 8
  br label %if.end.20

if.else:                                          ; preds = %entry
  %6 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %menu_paths = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %6, i32 0, i32 5
  %7 = load %struct._GList*, %struct._GList** %menu_paths, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  store i8* %8, i8** %path_original, align 8
  %9 = load i8*, i8** %locale_domain, align 8
  %10 = load i8*, i8** %path_original, align 8
  %call4 = call i8* @dgettext(i8* %9, i8* %10) #5
  store i8* %call4, i8** %path_translated, align 8
  %11 = load i8*, i8** %path_original, align 8
  %call5 = call noalias i8* @g_strdup(i8* %11)
  store i8* %call5, i8** %path_original, align 8
  %12 = load i8*, i8** %path_original, align 8
  %13 = load i8*, i8** %path_translated, align 8
  %call6 = call i32 @plug_in_actions_check_translation(i8* %12, i8* %13)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else
  %14 = load i8*, i8** %path_translated, align 8
  %call9 = call noalias i8* @g_strdup(i8* %14)
  store i8* %call9, i8** %path_translated, align 8
  br label %if.end

if.else.10:                                       ; preds = %if.else
  %15 = load i8*, i8** %path_original, align 8
  %call11 = call noalias i8* @g_strdup(i8* %15)
  store i8* %call11, i8** %path_translated, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.8
  %16 = load i8*, i8** %path_original, align 8
  %call12 = call i8* @strrchr(i8* %16, i32 47) #7
  store i8* %call12, i8** %p1, align 8
  %17 = load i8*, i8** %path_translated, align 8
  %call13 = call i8* @strrchr(i8* %17, i32 47) #7
  store i8* %call13, i8** %p2, align 8
  %18 = load i8*, i8** %p1, align 8
  %tobool14 = icmp ne i8* %18, null
  br i1 %tobool14, label %land.lhs.true, label %if.else.17

land.lhs.true:                                    ; preds = %if.end
  %19 = load i8*, i8** %p2, align 8
  %tobool15 = icmp ne i8* %19, null
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %land.lhs.true
  %20 = load i8*, i8** %p1, align 8
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %p2, align 8
  store i8 0, i8* %21, align 1
  %22 = load i8*, i8** %p2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %add.ptr, i8** %label, align 8
  br label %if.end.19

if.else.17:                                       ; preds = %land.lhs.true, %if.end
  %23 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %24 = bitcast %struct._GimpPlugInProcedure* %23 to i8*
  %call18 = call i8* @gimp_object_get_name(i8* %24)
  %25 = load i8*, i8** %path_original, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.68, i32 0, i32 0), i8* %call18, i8* %25)
  %26 = load i8*, i8** %path_original, align 8
  call void @g_free(i8* %26)
  %27 = load i8*, i8** %path_translated, align 8
  call void @g_free(i8* %27)
  br label %if.end.59

if.end.19:                                        ; preds = %if.then.16
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then
  %28 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %29 = bitcast %struct._GimpPlugInProcedure* %28 to i8*
  %call21 = call i8* @gimp_object_get_name(i8* %29)
  %name = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %entry1, i32 0, i32 0
  store i8* %call21, i8** %name, align 8
  %30 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %call22 = call i8* @gimp_plug_in_procedure_get_stock_id(%struct._GimpPlugInProcedure* %30)
  %stock_id = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %entry1, i32 0, i32 1
  store i8* %call22, i8** %stock_id, align 8
  %31 = load i8*, i8** %label, align 8
  %label23 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %entry1, i32 0, i32 2
  store i8* %31, i8** %label23, align 8
  %accelerator = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %entry1, i32 0, i32 3
  store i8* null, i8** %accelerator, align 8
  %32 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %call24 = call i8* @gimp_plug_in_procedure_get_blurb(%struct._GimpPlugInProcedure* %32)
  %tooltip = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %entry1, i32 0, i32 4
  store i8* %call24, i8** %tooltip, align 8
  %33 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %procedure = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %entry1, i32 0, i32 5
  store %struct._GimpPlugInProcedure* %33, %struct._GimpPlugInProcedure** %procedure, align 8
  %34 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %call25 = call i8* @gimp_plug_in_procedure_get_help_id(%struct._GimpPlugInProcedure* %34)
  %help_id = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %entry1, i32 0, i32 6
  store i8* %call25, i8** %help_id, align 8
  %35 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_plug_in_actions(%struct._GimpActionGroup* %35, %struct._GimpPlugInActionEntry* %entry1, i32 1, void ()* bitcast (void (%struct._GtkAction*, %struct._GimpPlugInProcedure*, i8*)* @plug_in_run_cmd_callback to void ()*))
  %help_id26 = getelementptr inbounds %struct._GimpPlugInActionEntry, %struct._GimpPlugInActionEntry* %entry1, i32 0, i32 6
  %36 = load i8*, i8** %help_id26, align 8
  call void @g_free(i8* %36)
  %37 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %menu_label27 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %37, i32 0, i32 4
  %38 = load i8*, i8** %menu_label27, align 8
  %tobool28 = icmp ne i8* %38, null
  br i1 %tobool28, label %if.then.29, label %if.else.40

if.then.29:                                       ; preds = %if.end.20
  %39 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %menu_paths30 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %39, i32 0, i32 5
  %40 = load %struct._GList*, %struct._GList** %menu_paths30, align 8
  store %struct._GList* %40, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.29
  %41 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool31 = icmp ne %struct._GList* %41, null
  br i1 %tobool31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load %struct._GList*, %struct._GList** %list, align 8
  %data32 = getelementptr inbounds %struct._GList, %struct._GList* %42, i32 0, i32 0
  %43 = load i8*, i8** %data32, align 8
  store i8* %43, i8** %original, align 8
  %44 = load i8*, i8** %locale_domain, align 8
  %45 = load i8*, i8** %original, align 8
  %call33 = call i8* @dgettext(i8* %44, i8* %45) #5
  store i8* %call33, i8** %translated, align 8
  %46 = load i8*, i8** %original, align 8
  %47 = load i8*, i8** %translated, align 8
  %call34 = call i32 @plug_in_actions_check_translation(i8* %46, i8* %47)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %for.body
  %48 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %49 = load i8*, i8** %original, align 8
  %50 = load i8*, i8** %translated, align 8
  call void @plug_in_actions_build_path(%struct._GimpActionGroup* %48, i8* %49, i8* %50)
  br label %if.end.38

if.else.37:                                       ; preds = %for.body
  %51 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %52 = load i8*, i8** %original, align 8
  %53 = load i8*, i8** %original, align 8
  call void @plug_in_actions_build_path(%struct._GimpActionGroup* %51, i8* %52, i8* %53)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %if.then.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %54 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool39 = icmp ne %struct._GList* %54, null
  br i1 %tobool39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %55 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %55, i32 0, i32 1
  %56 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %56, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.41

if.else.40:                                       ; preds = %if.end.20
  %57 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %58 = load i8*, i8** %path_original, align 8
  %59 = load i8*, i8** %path_translated, align 8
  call void @plug_in_actions_build_path(%struct._GimpActionGroup* %57, i8* %58, i8* %59)
  %60 = load i8*, i8** %path_original, align 8
  call void @g_free(i8* %60)
  %61 = load i8*, i8** %path_translated, align 8
  call void @g_free(i8* %61)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %for.end
  %62 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %menu_label42 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %62, i32 0, i32 4
  %63 = load i8*, i8** %menu_label42, align 8
  %tobool43 = icmp ne i8* %63, null
  br i1 %tobool43, label %land.lhs.true.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.41
  %64 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %menu_paths44 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %64, i32 0, i32 5
  %65 = load %struct._GList*, %struct._GList** %menu_paths44, align 8
  %tobool45 = icmp ne %struct._GList* %65, null
  br i1 %tobool45, label %land.lhs.true.46, label %if.end.59

land.lhs.true.46:                                 ; preds = %lor.lhs.false, %if.end.41
  %66 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %file_proc = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %66, i32 0, i32 14
  %67 = load i32, i32* %file_proc, align 4
  %tobool47 = icmp ne i32 %67, 0
  br i1 %tobool47, label %if.end.59, label %land.lhs.true.48

land.lhs.true.48:                                 ; preds = %land.lhs.true.46
  %68 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %image_types_val = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %68, i32 0, i32 11
  %69 = load i32, i32* %image_types_val, align 4
  %tobool49 = icmp ne i32 %69, 0
  br i1 %tobool49, label %if.then.50, label %if.end.59

if.then.50:                                       ; preds = %land.lhs.true.48
  %70 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %70, i32 0, i32 1
  %71 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call51 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %71)
  store %struct._GimpContext* %call51, %struct._GimpContext** %context, align 8
  %72 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call52 = call %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext* %72)
  store %struct._GimpImage* %call52, %struct._GimpImage** %image, align 8
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
  %73 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool53 = icmp ne %struct._GimpImage* %73, null
  br i1 %tobool53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.then.50
  %74 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call55 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %74)
  store %struct._GimpDrawable* %call55, %struct._GimpDrawable** %drawable, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.then.50
  %75 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %76 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call57 = call i32 @gimp_plug_in_procedure_get_sensitive(%struct._GimpPlugInProcedure* %75, %struct._GimpDrawable* %76)
  store i32 %call57, i32* %sensitive, align 4
  %77 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %78 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %79 = bitcast %struct._GimpPlugInProcedure* %78 to i8*
  %call58 = call i8* @gimp_object_get_name(i8* %79)
  %80 = load i32, i32* %sensitive, align 4
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %77, i8* %call58, i32 %80)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.17, %if.end.56, %land.lhs.true.48, %land.lhs.true.46, %lor.lhs.false
  ret void
}

declare i8* @gimp_plug_in_procedure_get_locale_domain(%struct._GimpPlugInProcedure*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @gimp_plug_in_procedure_get_stock_id(%struct._GimpPlugInProcedure*) #1

declare i8* @gimp_plug_in_procedure_get_blurb(%struct._GimpPlugInProcedure*) #1

declare i8* @gimp_plug_in_procedure_get_help_id(%struct._GimpPlugInProcedure*) #1

declare void @plug_in_run_cmd_callback(%struct._GtkAction*, %struct._GimpPlugInProcedure*, i8*) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup*, i8*) #1

declare void @gtk_action_group_remove_action(%struct._GtkActionGroup*, %struct._GtkAction*) #1

declare %struct._GimpPlugInProcedure* @gimp_plug_in_manager_history_nth(%struct._GimpPlugInManager*, i32) #1

declare i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure*) #1

declare i32 @gtk_action_get_sensitive(%struct._GtkAction*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @gimp_action_group_set_action_label(%struct._GimpActionGroup*, i8*, i8*) #1

declare i32 @gimp_plug_in_manager_history_length(%struct._GimpPlugInManager*) #1

declare void @g_object_set(i8*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
