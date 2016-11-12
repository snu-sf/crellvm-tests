; ModuleID = './plug-ins/imagemap/imap_menu.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkUIManagerPrivate = type opaque
%struct._GtkActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()* }
%struct._GtkToggleActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i32 }
%struct._GtkRadioActionEntry = type { i8*, i8*, i8*, i8*, i8*, i32 }
%struct.Menu_t = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, [8 x %struct._GtkWidget*], %struct._GtkWidget*, %struct._GtkWidget*, i32 }
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
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GtkActionGroupPrivate = type opaque
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.Command_t = type { %struct.CommandClass_t*, %struct.CommandList_t*, i8*, i32 }
%struct.CommandClass_t = type { void (%struct.Command_t*)*, i32 (%struct.Command_t*)*, void (%struct.Command_t*)*, void (%struct.Command_t*)* }
%struct.CommandList_t = type { %struct.CommandList_t*, i32, %struct._GList*, %struct._GList*, %struct._GList*, %struct.CommandListCallback_t }
%struct.CommandListCallback_t = type { %struct._GList* }
%struct._GtkRadioAction = type { %struct._GtkToggleAction, %struct._GtkRadioActionPrivate* }
%struct._GtkToggleAction = type { %struct._GtkAction, %struct._GtkToggleActionPrivate* }
%struct._GtkToggleActionPrivate = type opaque
%struct._GtkRadioActionPrivate = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.Object_t = type { %struct.ObjectClass_t*, %struct.ObjectList_t*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ObjectClass_t = type { i8*, %struct.AreaInfoDialog_t*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32 (%struct.Object_t*)*, void (%struct.Object_t*)*, %struct.Object_t* (%struct.Object_t*)*, void (%struct.Object_t*, %struct.Object_t*)*, void (%struct.Object_t*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)*, i32 (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32*, i32*, i32*, i32*)*, void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)*, i8* (%struct._GtkWidget*)*, {}*, {}*, {}*, {}*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, %struct._GdkEventButton*)*, i8* ()* }
%struct.AreaInfoDialog_t = type { %struct.DefaultDialog_t*, %struct.Object_t*, %struct.Object_t*, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i8* }
%struct.DefaultDialog_t = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, void (i8*)*, i8*, void (i8*)*, i8*, void (i8*)*, i8* }
%struct._cairo = type opaque
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct.ObjectList_t = type { %struct._GList*, i32, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t }
%struct.ObjectListCallback_t = type { %struct._GList* }
%struct.MRU_t = type { %struct._GList*, i32 }
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GdkRegion = type opaque
%struct._GtkToolbar = type { %struct._GtkContainer, i32, %struct._GList*, i32, i32, i32, i8*, i32, i32, i32, i32, i8 }
%struct._GtkOrientable = type opaque

@ui_manager = internal global %struct._GtkUIManager* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"/MainMenu/ViewMenu/ZoomIn\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"/MainMenu/ViewMenu/ZoomOut\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"/MainMenu/EditMenu/Cut\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"/MainMenu/EditMenu/Copy\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"/MainMenu/EditMenu/Clear\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"/MainMenu/EditMenu/EditAreaInfo\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"/MainMenu/EditMenu/DeselectAll\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"MenuActions\00", align 1
@entries = internal constant [39 x %struct._GtkActionEntry] [%struct._GtkActionEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null, void ()* null }, %struct._GtkActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), void ()* @do_file_open_dialog }, %struct._GtkActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), void ()* @save }, %struct._GtkActionEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8* null, void ()* @do_file_save_as_dialog }, %struct._GtkActionEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* null, i8* null, void ()* @do_close }, %struct._GtkActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* null, i8* null, i8* null, void ()* @do_quit }, %struct._GtkActionEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* null, void ()* null }, %struct._GtkActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), void ()* @do_undo }, %struct._GtkActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), void ()* @do_redo }, %struct._GtkActionEntry { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), void ()* @do_cut }, %struct._GtkActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), void ()* @do_copy }, %struct._GtkActionEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), void ()* @do_paste }, %struct._GtkActionEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* null, void ()* @do_clear }, %struct._GtkActionEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i8* null, void ()* @do_select_all }, %struct._GtkActionEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i32 0, i32 0), i8* null, void ()* @do_deselect_all }, %struct._GtkActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i32 0, i32 0), void ()* @do_edit_selected_shape }, %struct._GtkActionEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), void ()* @do_preferences_dialog }, %struct._GtkActionEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.62, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.63, i32 0, i32 0), void ()* @do_move_to_front }, %struct._GtkActionEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.62, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i32 0, i32 0), void ()* @do_send_to_back }, %struct._GtkActionEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i32 0, i32 0), i8* null, i8* null, void ()* null }, %struct._GtkActionEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i8* null, i8* null, void ()* null }, %struct._GtkActionEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), i8* null, i8* null, void ()* null }, %struct._GtkActionEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i32 0, i32 0), i8* null, i8* null, void ()* @polygon_insert_point }, %struct._GtkActionEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.78, i32 0, i32 0), i8* null, i8* null, void ()* @polygon_delete_point }, %struct._GtkActionEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i8* null, i8* null, void ()* null }, %struct._GtkActionEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i8* null, i8* null, void ()* @do_source_dialog }, %struct._GtkActionEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), void ()* @do_zoom_in }, %struct._GtkActionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.88, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), void ()* @do_zoom_out }, %struct._GtkActionEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0), i8* null, i8* null, void ()* null }, %struct._GtkActionEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0), i8* null, i8* null, void ()* null }, %struct._GtkActionEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.97, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i32 0, i32 0), void ()* @do_settings_dialog }, %struct._GtkActionEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.99, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), i8* null, i8* null, void ()* null }, %struct._GtkActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.101, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.102, i32 0, i32 0), i8* null, i8* null, void ()* @do_grid_settings_dialog }, %struct._GtkActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.103, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.104, i32 0, i32 0), i8* null, i8* null, void ()* @do_use_gimp_guides_dialog }, %struct._GtkActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.105, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.106, i32 0, i32 0), i8* null, i8* null, void ()* @do_create_guides_dialog }, %struct._GtkActionEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.107, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i8* null, i8* null, void ()* null }, %struct._GtkActionEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0), i8* null, i8* null, void ()* @imap_help }, %struct._GtkActionEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0), i8* null, i8* null, i8* null, void ()* @do_about_dialog }, %struct._GtkActionEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.114, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i32 0, i32 0), i8* null, i8* null, void ()* null }], align 16
@toggle_entries = internal constant [2 x %struct._GtkToggleActionEntry] [%struct._GtkToggleActionEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.116, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.117, i32 0, i32 0), i8* null, i8* null, void ()* null, i32 1 }, %struct._GtkToggleActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0), void ()* @toggle_grid, i32 0 }], align 16
@color_entries = internal constant [2 x %struct._GtkRadioActionEntry] [%struct._GtkRadioActionEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.121, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.121, i32 0, i32 0), i8* null, i8* null, i32 0 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i32 0, i32 0), i8* null, i8* null, i32 1 }], align 16
@zoom_entries = internal constant [8 x %struct._GtkRadioActionEntry] [%struct._GtkRadioActionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.124, i32 0, i32 0), i8* null, i8* null, i32 0 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.125, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.126, i32 0, i32 0), i8* null, i8* null, i32 1 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.127, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i32 0, i32 0), i8* null, i8* null, i32 2 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.129, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i32 0, i32 0), i8* null, i8* null, i32 3 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.131, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.132, i32 0, i32 0), i8* null, i8* null, i32 4 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.133, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.134, i32 0, i32 0), i8* null, i8* null, i32 5 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.135, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.136, i32 0, i32 0), i8* null, i8* null, i32 6 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.137, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.138, i32 0, i32 0), i8* null, i8* null, i32 7 }], align 16
@mapping_entries = internal constant [4 x %struct._GtkRadioActionEntry] [%struct._GtkRadioActionEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.141, i32 0, i32 0), i32 0 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.144, i32 0, i32 0), i32 1 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.145, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.147, i32 0, i32 0), i32 2 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.148, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.150, i32 0, i32 0), i32 3 }], align 16
@ui_description = internal constant [3851 x i8] c"<ui>  <menubar name='MainMenu'>    <menu action='FileMenu'>      <menuitem action='Open'/>      <menuitem action='Save'/>      <menuitem action='SaveAs'/>      <separator/>      <menuitem action='Close'/>      <menuitem action='Quit'/>    </menu>    <menu action='EditMenu'>      <menuitem action='Undo'/>      <menuitem action='Redo'/>      <menuitem action='Cut'/>      <menuitem action='Copy'/>      <menuitem action='Paste'/>      <menuitem action='Clear'/>      <separator/>      <menuitem action='SelectAll'/>      <menuitem action='DeselectAll'/>      <separator/>      <menuitem action='EditAreaInfo'/>      <separator/>      <menuitem action='Preferences'/>    </menu>    <menu action='ViewMenu'>      <menuitem action='AreaList'/>      <menuitem action='Source'/>      <separator/>      <menuitem action='Color'/>      <menuitem action='Gray'/>      <separator/>      <menuitem action='ZoomIn'/>      <menuitem action='ZoomOut'/>      <menu action='ZoomToMenu'>        <menuitem action='Zoom1:1'/>        <menuitem action='Zoom1:2'/>        <menuitem action='Zoom1:3'/>        <menuitem action='Zoom1:4'/>        <menuitem action='Zoom1:5'/>        <menuitem action='Zoom1:6'/>        <menuitem action='Zoom1:7'/>        <menuitem action='Zoom1:8'/>      </menu>    </menu>    <menu action='MappingMenu'>      <menuitem action='Arrow'/>      <menuitem action='Rectangle'/>      <menuitem action='Circle'/>      <menuitem action='Polygon'/>      <separator/>      <menuitem action='EditMapInfo'/>    </menu>    <menu action='ToolsMenu'>      <menuitem action='Grid'/>      <menuitem action='GridSettings'/>      <separator/>      <menuitem action='UseGimpGuides'/>      <menuitem action='CreateGuides'/>    </menu>    <menu action='HelpMenu'>      <menuitem action='Contents'/>      <menuitem action='About'/>    </menu>  </menubar>  <popup name='PopupMenu'>    <menuitem action='EditMapInfo'/>    <menu action='ToolsMenu'>      <menuitem action='Arrow'/>      <menuitem action='Rectangle'/>      <menuitem action='Circle'/>      <menuitem action='Polygon'/>    </menu>    <menu action='ZoomMenu'>      <menuitem action='ZoomIn'/>      <menuitem action='ZoomOut'/>    </menu>    <menuitem action='Grid'/>    <menuitem action='GridSettings'/>    <menuitem action='CreateGuides'/>    <menuitem action='Paste'/>  </popup>  <popup name='ObjectPopupMenu'>    <menuitem action='EditAreaInfo'/>    <menuitem action='DeleteArea'/>    <menuitem action='MoveUp'/>    <menuitem action='MoveDown'/>    <menuitem action='Cut'/>    <menuitem action='Copy'/>  </popup>  <popup name='PolygonPopupMenu'>    <menuitem action='InsertPoint'/>    <menuitem action='DeletePoint'/>    <menuitem action='EditAreaInfo'/>    <menuitem action='DeleteArea'/>    <menuitem action='MoveUp'/>    <menuitem action='MoveDown'/>    <menuitem action='Cut'/>    <menuitem action='Copy'/>  </popup>  <toolbar name='Toolbar'>    <toolitem action='Open'/>    <toolitem action='Save'/>    <separator/>    <toolitem action='Preferences'/>    <separator/>    <toolitem action='Undo'/>    <toolitem action='Redo'/>    <separator/>    <toolitem action='Cut'/>    <toolitem action='Copy'/>    <toolitem action='Paste'/>    <separator/>    <toolitem action='ZoomIn'/>    <toolitem action='ZoomOut'/>    <separator/>    <toolitem action='EditMapInfo'/>    <separator/>    <toolitem action='MoveToFront'/>    <toolitem action='SendToBack'/>    <separator/>    <toolitem action='Grid'/>  </toolbar>  <toolbar name='Tools'>    <toolitem action='Arrow'/>    <toolitem action='Rectangle'/>    <toolitem action='Circle'/>    <toolitem action='Polygon'/>    <separator/>    <toolitem action='EditAreaInfo'/>  </toolbar>  <toolbar name='Selection'>    <toolitem action='MoveUp'/>    <toolitem action='MoveDown'/>    <toolitem action='EditAreaInfo'/>    <toolitem action='Clear'/>  </toolbar></ui>\00", align 16
@.str.8 = private unnamed_addr constant [26 x i8] c"building menus failed: %s\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"/MainMenu\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"/MainMenu/EditMenu/Paste\00", align 1
@_menu = internal global %struct.Menu_t zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"/PopupMenu\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"/MainMenu/ToolsMenu/Grid\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"/Toolbar\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"/Tools\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"/Selection\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"FileMenu\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"_File\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"Open\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"_Open...\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Save\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"_Save...\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"SaveAs\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"gtk-save-as\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"Save _As...\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"<shift><control>S\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"Close\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"Quit\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"gtk-quit\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"EditMenu\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"_Edit\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"Undo\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"gtk-undo\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"Redo\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"gtk-redo\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"Cut\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"gtk-cut\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"Copy\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"gtk-copy\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"Paste\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"gtk-paste\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"Clear\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"SelectAll\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"Select _All\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"<control>A\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"DeselectAll\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"D_eselect All\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"<shift><control>A\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"EditAreaInfo\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"gtk-edit\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"Edit Area _Info...\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"Edit selected area info\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"Preferences\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"gtk-preferences\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"MoveToFront\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"imap-to-front\00", align 1
@.str.62 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"Move Area to Front\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"SendToBack\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"imap-to-back\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"Move Area to Bottom\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"DeleteArea\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"Delete Area\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"MoveUp\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"gtk-go-up\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"Move Up\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"MoveDown\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"gtk-go-down\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"Move Down\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"InsertPoint\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"Insert Point\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"DeletePoint\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"Delete Point\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"ViewMenu\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"_View\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"Source...\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"ZoomIn\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"gtk-zoom-in\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"plus\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"Zoom in\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"ZoomOut\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"gtk-zoom-out\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"Zoom out\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"ZoomToMenu\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"_Zoom To\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"MappingMenu\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"_Mapping\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"EditMapInfo\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"gtk-info\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"Edit Map Info...\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"Edit Map Info\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"ToolsMenu\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"_Tools\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"GridSettings\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"Grid Settings...\00", align 1
@.str.103 = private unnamed_addr constant [14 x i8] c"UseGimpGuides\00", align 1
@.str.104 = private unnamed_addr constant [19 x i8] c"Use GIMP Guides...\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"CreateGuides\00", align 1
@.str.106 = private unnamed_addr constant [17 x i8] c"Create Guides...\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"HelpMenu\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"_Help\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"Contents\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"gtk-help\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"_Contents\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"About\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"gtk-about\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"ZoomMenu\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"_Zoom\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"AreaList\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"Area List\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"Grid\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"gimp-grid\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"_Grid\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"Gray\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"Zoom1:1\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"1:1\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"Zoom1:2\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"1:2\00", align 1
@.str.127 = private unnamed_addr constant [8 x i8] c"Zoom1:3\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"1:3\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"Zoom1:4\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"1:4\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"Zoom1:5\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"1:5\00", align 1
@.str.133 = private unnamed_addr constant [8 x i8] c"Zoom1:6\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"1:6\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c"Zoom1:7\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"1:7\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"Zoom1:8\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"1:8\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"Arrow\00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"gimp-cursor\00", align 1
@.str.141 = private unnamed_addr constant [21 x i8] c"Select existing area\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"Rectangle\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"imap-rectangle\00", align 1
@.str.144 = private unnamed_addr constant [22 x i8] c"Define Rectangle area\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"Circle\00", align 1
@.str.146 = private unnamed_addr constant [12 x i8] c"imap-circle\00", align 1
@.str.147 = private unnamed_addr constant [24 x i8] c"Define Circle/Oval area\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"Polygon\00", align 1
@.str.149 = private unnamed_addr constant [13 x i8] c"imap-polygon\00", align 1
@.str.150 = private unnamed_addr constant [20 x i8] c"Define Polygon area\00", align 1
@.str.151 = private unnamed_addr constant [24 x i8] c"/MainMenu/EditMenu/Undo\00", align 1
@.str.152 = private unnamed_addr constant [9 x i8] c"_Undo %s\00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.154 = private unnamed_addr constant [24 x i8] c"/MainMenu/EditMenu/Redo\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"_Redo %s\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @menu_get_widget(i8* %path) #0 {
entry:
  %path.addr = alloca i8*, align 8
  store i8* %path, i8** %path.addr, align 8
  %0 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %1 = load i8*, i8** %path.addr, align 8
  %call = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %0, i8* %1)
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager*, i8*) #1

; Function Attrs: nounwind uwtable
define void @menu_set_zoom_sensitivity(i32 %factor) #0 {
entry:
  %factor.addr = alloca i32, align 4
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %factor.addr, align 4
  %cmp = icmp slt i32 %0, 8
  %conv = zext i1 %cmp to i32
  call void @set_sensitive(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i32 %conv)
  %1 = load i32, i32* %factor.addr, align 4
  %cmp1 = icmp sgt i32 %1, 1
  %conv2 = zext i1 %cmp1 to i32
  call void @set_sensitive(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i32 %conv2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_sensitive(i8* %path, i32 %sensitive) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %sensitive.addr = alloca i32, align 4
  %action = alloca %struct._GtkAction*, align 8
  store i8* %path, i8** %path.addr, align 8
  store i32 %sensitive, i32* %sensitive.addr, align 4
  %0 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %1 = load i8*, i8** %path.addr, align 8
  %call = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %0, i8* %1)
  store %struct._GtkAction* %call, %struct._GtkAction** %action, align 8
  %2 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %3 = bitcast %struct._GtkAction* %2 to i8*
  %4 = load i32, i32* %sensitive.addr, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 %4, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define void @menu_set_zoom(i32 %factor) #0 {
entry:
  %factor.addr = alloca i32, align 4
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32, i32* %factor.addr, align 4
  call void @menu_set_zoom_sensitivity(i32 %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @menu_shapes_selected(i32 %count) #0 {
entry:
  %count.addr = alloca i32, align 4
  %sensitive = alloca i32, align 4
  store i32 %count, i32* %count.addr, align 4
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %sensitive, align 4
  %1 = load i32, i32* %sensitive, align 4
  call void @set_sensitive(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 %1)
  %2 = load i32, i32* %sensitive, align 4
  call void @set_sensitive(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 %2)
  %3 = load i32, i32* %sensitive, align 4
  call void @set_sensitive(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i32 %3)
  %4 = load i32, i32* %sensitive, align 4
  call void @set_sensitive(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i32 %4)
  %5 = load i32, i32* %sensitive, align 4
  call void @set_sensitive(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), i32 %5)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.Menu_t* @make_menu(%struct._GtkWidget* %main_vbox, %struct._GtkWidget* %window) #0 {
entry:
  %main_vbox.addr = alloca %struct._GtkWidget*, align 8
  %window.addr = alloca %struct._GtkWidget*, align 8
  %menubar = alloca %struct._GtkWidget*, align 8
  %action_group = alloca %struct._GtkActionGroup*, align 8
  %accel_group = alloca %struct._GtkAccelGroup*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkWidget* %main_vbox, %struct._GtkWidget** %main_vbox.addr, align 8
  store %struct._GtkWidget* %window, %struct._GtkWidget** %window.addr, align 8
  %call = call %struct._GtkActionGroup* @gtk_action_group_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GtkActionGroup* %call, %struct._GtkActionGroup** %action_group, align 8
  %0 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %action_group, align 8
  call void @gtk_action_group_set_translation_domain(%struct._GtkActionGroup* %0, i8* null)
  %1 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %action_group, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %window.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to i8*
  call void @gtk_action_group_add_actions(%struct._GtkActionGroup* %1, %struct._GtkActionEntry* getelementptr inbounds ([39 x %struct._GtkActionEntry], [39 x %struct._GtkActionEntry]* @entries, i32 0, i32 0), i32 39, i8* %3)
  %4 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %action_group, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %window.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to i8*
  call void @gtk_action_group_add_toggle_actions(%struct._GtkActionGroup* %4, %struct._GtkToggleActionEntry* getelementptr inbounds ([2 x %struct._GtkToggleActionEntry], [2 x %struct._GtkToggleActionEntry]* @toggle_entries, i32 0, i32 0), i32 2, i8* %6)
  %7 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %action_group, align 8
  call void @gtk_action_group_add_radio_actions(%struct._GtkActionGroup* %7, %struct._GtkRadioActionEntry* getelementptr inbounds ([2 x %struct._GtkRadioActionEntry], [2 x %struct._GtkRadioActionEntry]* @color_entries, i32 0, i32 0), i32 2, i32 0, void ()* bitcast (void (%struct._GtkRadioAction*, %struct._GtkRadioAction*, i8*)* @set_preview_color to void ()*), i8* null)
  %8 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %action_group, align 8
  call void @gtk_action_group_add_radio_actions(%struct._GtkActionGroup* %8, %struct._GtkRadioActionEntry* getelementptr inbounds ([8 x %struct._GtkRadioActionEntry], [8 x %struct._GtkRadioActionEntry]* @zoom_entries, i32 0, i32 0), i32 8, i32 0, void ()* bitcast (void (%struct._GtkRadioAction*, %struct._GtkRadioAction*, i8*)* @set_zoom_factor to void ()*), i8* null)
  %9 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %action_group, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %window.addr, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  call void @gtk_action_group_add_radio_actions(%struct._GtkActionGroup* %9, %struct._GtkRadioActionEntry* getelementptr inbounds ([4 x %struct._GtkRadioActionEntry], [4 x %struct._GtkRadioActionEntry]* @mapping_entries, i32 0, i32 0), i32 4, i32 0, void ()* bitcast (void (%struct._GtkRadioAction*, %struct._GtkRadioAction*, i8*)* @set_func to void ()*), i8* %11)
  %call1 = call %struct._GtkUIManager* @gtk_ui_manager_new()
  store %struct._GtkUIManager* %call1, %struct._GtkUIManager** @ui_manager, align 8
  %12 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %13 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %action_group, align 8
  call void @gtk_ui_manager_insert_action_group(%struct._GtkUIManager* %12, %struct._GtkActionGroup* %13, i32 0)
  %14 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call2 = call %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager* %14)
  store %struct._GtkAccelGroup* %call2, %struct._GtkAccelGroup** %accel_group, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %window.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_window_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call3)
  %17 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWindow*
  %18 = load %struct._GtkAccelGroup*, %struct._GtkAccelGroup** %accel_group, align 8
  call void @gtk_window_add_accel_group(%struct._GtkWindow* %17, %struct._GtkAccelGroup* %18)
  store %struct._GError* null, %struct._GError** %error, align 8
  %19 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call5 = call i32 @gtk_ui_manager_add_ui_from_string(%struct._GtkUIManager* %19, i8* getelementptr inbounds ([3851 x i8], [3851 x i8]* @ui_description, i32 0, i32 0), i64 -1, %struct._GError** %error)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %20 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %20, i32 0, i32 2
  %21 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i8* %21)
  %22 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call6 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %menubar, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox.addr, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call7)
  %27 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %27, %struct._GtkWidget* %28, i32 0, i32 0, i32 0)
  %call9 = call i8* @paste_buffer_add_add_cb(void (%struct.Object_t*, i8*)* @paste_buffer_added, i8* null)
  %call10 = call i8* @paste_buffer_add_remove_cb(void (%struct.Object_t*, i8*)* @paste_buffer_removed, i8* null)
  call void @set_sensitive(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i32 0)
  call void @menu_shapes_selected(i32 0)
  call void @menu_set_zoom_sensitivity(i32 1)
  call void @command_list_add_update_cb(void (%struct.Command_t*, i8*)* @command_list_changed, i8* null)
  call void @command_list_changed(%struct.Command_t* null, i8* null)
  ret %struct.Menu_t* @_menu
}

declare %struct._GtkActionGroup* @gtk_action_group_new(i8*) #1

declare void @gtk_action_group_set_translation_domain(%struct._GtkActionGroup*, i8*) #1

declare void @gtk_action_group_add_actions(%struct._GtkActionGroup*, %struct._GtkActionEntry*, i32, i8*) #1

declare void @gtk_action_group_add_toggle_actions(%struct._GtkActionGroup*, %struct._GtkToggleActionEntry*, i32, i8*) #1

declare void @gtk_action_group_add_radio_actions(%struct._GtkActionGroup*, %struct._GtkRadioActionEntry*, i32, i32, void ()*, i8*) #1

declare void @set_preview_color(%struct._GtkRadioAction*, %struct._GtkRadioAction*, i8*) #1

declare void @set_zoom_factor(%struct._GtkRadioAction*, %struct._GtkRadioAction*, i8*) #1

declare void @set_func(%struct._GtkRadioAction*, %struct._GtkRadioAction*, i8*) #1

declare %struct._GtkUIManager* @gtk_ui_manager_new() #1

declare void @gtk_ui_manager_insert_action_group(%struct._GtkUIManager*, %struct._GtkActionGroup*, i32) #1

declare %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager*) #1

declare void @gtk_window_add_accel_group(%struct._GtkWindow*, %struct._GtkAccelGroup*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare i32 @gtk_ui_manager_add_ui_from_string(%struct._GtkUIManager*, i8*, i64, %struct._GError**) #1

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
  call void @g_logv(i8* null, i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @g_error_free(%struct._GError*) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @paste_buffer_add_add_cb(void (%struct.Object_t*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @paste_buffer_added(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @set_sensitive(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i32 1)
  ret void
}

declare i8* @paste_buffer_add_remove_cb(void (%struct.Object_t*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @paste_buffer_removed(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @set_sensitive(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i32 0)
  ret void
}

declare void @command_list_add_update_cb(void (%struct.Command_t*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @command_list_changed(%struct.Command_t* %command, i8* %data) #0 {
entry:
  %command.addr = alloca %struct.Command_t*, align 8
  %data.addr = alloca i8*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %label = alloca i8*, align 8
  store %struct.Command_t* %command, %struct.Command_t** %command.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.151, i32 0, i32 0))
  store %struct._GtkAction* %call, %struct._GtkAction** %action, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.152, i32 0, i32 0)) #3
  %1 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %tobool = icmp ne %struct.Command_t* %1, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %name = getelementptr inbounds %struct.Command_t, %struct.Command_t* %2, i32 0, i32 2
  %3 = load i8*, i8** %name, align 8
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %4 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %name3 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %4, i32 0, i32 2
  %5 = load i8*, i8** %name3, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.62, i32 0, i32 0), %cond.false ]
  %call4 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call1, i8* %cond)
  store i8* %call4, i8** %label, align 8
  %6 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %7 = bitcast %struct._GtkAction* %6 to i8*
  %8 = load i8*, i8** %label, align 8
  %9 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %cmp = icmp ne %struct.Command_t* %9, null
  %conv = zext i1 %cmp to i32
  call void (i8*, i8*, ...) @g_object_set(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.153, i32 0, i32 0), i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 %conv, i8* null)
  %10 = load i8*, i8** %label, align 8
  call void @g_free(i8* %10)
  %call5 = call %struct.Command_t* @command_list_get_redo_command()
  store %struct.Command_t* %call5, %struct.Command_t** %command.addr, align 8
  %11 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call6 = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.154, i32 0, i32 0))
  store %struct._GtkAction* %call6, %struct._GtkAction** %action, align 8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.155, i32 0, i32 0)) #3
  %12 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %tobool8 = icmp ne %struct.Command_t* %12, null
  br i1 %tobool8, label %land.lhs.true.9, label %cond.false.14

land.lhs.true.9:                                  ; preds = %cond.end
  %13 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %name10 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %13, i32 0, i32 2
  %14 = load i8*, i8** %name10, align 8
  %tobool11 = icmp ne i8* %14, null
  br i1 %tobool11, label %cond.true.12, label %cond.false.14

cond.true.12:                                     ; preds = %land.lhs.true.9
  %15 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %name13 = getelementptr inbounds %struct.Command_t, %struct.Command_t* %15, i32 0, i32 2
  %16 = load i8*, i8** %name13, align 8
  br label %cond.end.15

cond.false.14:                                    ; preds = %land.lhs.true.9, %cond.end
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.12
  %cond16 = phi i8* [ %16, %cond.true.12 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.62, i32 0, i32 0), %cond.false.14 ]
  %call17 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call7, i8* %cond16)
  store i8* %call17, i8** %label, align 8
  %17 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %18 = bitcast %struct._GtkAction* %17 to i8*
  %19 = load i8*, i8** %label, align 8
  %20 = load %struct.Command_t*, %struct.Command_t** %command.addr, align 8
  %cmp18 = icmp ne %struct.Command_t* %20, null
  %conv19 = zext i1 %cmp18 to i32
  call void (i8*, i8*, ...) @g_object_set(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.153, i32 0, i32 0), i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 %conv19, i8* null)
  %21 = load i8*, i8** %label, align 8
  call void @g_free(i8* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define void @menu_build_mru_items(%struct.MRU_t* %mru) #0 {
entry:
  %mru.addr = alloca %struct.MRU_t*, align 8
  %p = alloca %struct._GList*, align 8
  %position = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.MRU_t* %mru, %struct.MRU_t** %mru.addr, align 8
  store i32 0, i32* %position, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @do_main_popup_menu(%struct._GdkEventButton* %event) #0 {
entry:
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %popup = alloca %struct._GtkWidget*, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GtkWidget* %call, %struct._GtkWidget** %popup, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %popup, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_menu_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkMenu*
  %4 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %4, i32 0, i32 8
  %5 = load i32, i32* %button, align 4
  %6 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %time = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %6, i32 0, i32 3
  %7 = load i32, i32* %time, align 4
  call void @gtk_menu_popup(%struct._GtkMenu* %3, %struct._GtkWidget* null, %struct._GtkWidget* null, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)* null, i8* null, i32 %5, i32 %7)
  ret void
}

declare void @gtk_menu_popup(%struct._GtkMenu*, %struct._GtkWidget*, %struct._GtkWidget*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_get_type() #2

; Function Attrs: nounwind uwtable
define void @menu_check_grid(i32 %check) #0 {
entry:
  %check.addr = alloca i32, align 4
  %action = alloca %struct._GtkAction*, align 8
  store i32 %check, i32* %check.addr, align 4
  %0 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GtkAction* %call, %struct._GtkAction** %action, align 8
  %1 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %2 = bitcast %struct._GtkAction* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_toggle_action_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkToggleAction*
  %4 = load i32, i32* %check.addr, align 4
  call void @gtk_toggle_action_set_active(%struct._GtkToggleAction* %3, i32 %4)
  ret void
}

declare %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager*, i8*) #1

declare void @gtk_toggle_action_set_active(%struct._GtkToggleAction*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_action_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @make_toolbar(%struct._GtkWidget* %main_vbox, %struct._GtkWidget* %window) #0 {
entry:
  %main_vbox.addr = alloca %struct._GtkWidget*, align 8
  %window.addr = alloca %struct._GtkWidget*, align 8
  %handlebox = alloca %struct._GtkWidget*, align 8
  %toolbar = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %main_vbox, %struct._GtkWidget** %main_vbox.addr, align 8
  store %struct._GtkWidget* %window, %struct._GtkWidget** %window.addr, align 8
  %call = call %struct._GtkWidget* @gtk_handle_box_new()
  store %struct._GtkWidget* %call, %struct._GtkWidget** %handlebox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_box_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkBox*
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %handlebox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %2, %struct._GtkWidget* %3, i32 0, i32 0, i32 0)
  %4 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call3 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %toolbar, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_toolbar_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkToolbar*
  call void @gtk_toolbar_set_style(%struct._GtkToolbar* %7, i32 0)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_container_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %10, i32 0)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %handlebox, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  call void @gtk_container_add(%struct._GtkContainer* %13, %struct._GtkWidget* %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %handlebox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %handlebox, align 8
  ret %struct._GtkWidget* %17
}

declare %struct._GtkWidget* @gtk_handle_box_new() #1

declare void @gtk_toolbar_set_style(%struct._GtkToolbar*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toolbar_get_type() #2

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @make_tools(%struct._GtkWidget* %window) #0 {
entry:
  %window.addr = alloca %struct._GtkWidget*, align 8
  %handlebox = alloca %struct._GtkWidget*, align 8
  %toolbar = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %window, %struct._GtkWidget** %window.addr, align 8
  %call = call %struct._GtkWidget* @gtk_handle_box_new()
  store %struct._GtkWidget* %call, %struct._GtkWidget** %handlebox, align 8
  %0 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call1 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %toolbar, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_orientable_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %3, i32 1)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_toolbar_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkToolbar*
  call void @gtk_toolbar_set_style(%struct._GtkToolbar* %6, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_container_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %9, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %handlebox, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  call void @gtk_container_add(%struct._GtkContainer* %12, %struct._GtkWidget* %13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %handlebox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %handlebox, align 8
  ret %struct._GtkWidget* %16
}

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @make_selection_toolbar() #0 {
entry:
  %toolbar = alloca %struct._GtkWidget*, align 8
  %0 = load %struct._GtkUIManager*, %struct._GtkUIManager** @ui_manager, align 8
  %call = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0))
  store %struct._GtkWidget* %call, %struct._GtkWidget** %toolbar, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_toolbar_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkToolbar*
  call void @gtk_toolbar_set_style(%struct._GtkToolbar* %3, i32 0)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_orientable_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %6, i32 1)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_container_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %9, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  ret %struct._GtkWidget* %11
}

declare void @g_object_set(i8*, i8*, ...) #1

declare void @do_file_open_dialog() #1

declare void @save() #1

declare void @do_file_save_as_dialog() #1

declare void @do_close() #1

declare void @do_quit() #1

declare void @do_undo() #1

declare void @do_redo() #1

declare void @do_cut() #1

declare void @do_copy() #1

declare void @do_paste() #1

declare void @do_clear() #1

declare void @do_select_all() #1

declare void @do_deselect_all() #1

declare void @do_edit_selected_shape() #1

declare void @do_preferences_dialog() #1

declare void @do_move_to_front() #1

declare void @do_send_to_back() #1

declare void @polygon_insert_point() #1

declare void @polygon_delete_point() #1

declare void @do_source_dialog() #1

declare void @do_zoom_in() #1

declare void @do_zoom_out() #1

declare void @do_settings_dialog() #1

declare void @do_grid_settings_dialog() #1

declare void @do_use_gimp_guides_dialog() #1

declare void @do_create_guides_dialog() #1

declare void @imap_help() #1

declare void @do_about_dialog() #1

declare void @toggle_grid() #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @g_free(i8*) #1

declare %struct.Command_t* @command_list_get_redo_command() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
