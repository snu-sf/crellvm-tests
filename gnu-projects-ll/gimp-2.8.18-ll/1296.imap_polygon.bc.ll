; ModuleID = './plug-ins/imagemap/imap_polygon.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ObjectClass_t = type { i8*, %struct.AreaInfoDialog_t*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32 (%struct.Object_t*)*, void (%struct.Object_t*)*, %struct.Object_t* (%struct.Object_t*)*, void (%struct.Object_t*, %struct.Object_t*)*, void (%struct.Object_t*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)*, i32 (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32*, i32*, i32*, i32*)*, void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)*, i8* (%struct._GtkWidget*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, %struct._GdkEventButton*)*, i8* ()* }
%struct.AreaInfoDialog_t = type { %struct.DefaultDialog_t*, %struct.Object_t*, %struct.Object_t*, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i8* }
%struct.DefaultDialog_t = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, void (i8*)*, i8*, void (i8*)*, i8*, void (i8*)*, i8* }
%struct.Object_t = type { %struct.ObjectClass_t*, %struct.ObjectList_t*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ObjectList_t = type { %struct._GList*, i32, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.ObjectListCallback_t = type { %struct._GList* }
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
%struct._cairo = type opaque
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkPoint = type { i32, i32 }
%struct.ObjectFactory_t = type { %struct.Object_t*, i32 (%struct.Object_t*, i32, i32)*, i32 (%struct._GdkEventButton*, %struct.Object_t*)*, %struct.Object_t* (i32, i32)*, void (%struct.Object_t*, i32, i32, i32)* }
%struct.Polygon_t = type { %struct.Object_t, %struct._GList* }
%struct.Command_t = type { %struct.CommandClass_t*, %struct.CommandList_t*, i8*, i32 }
%struct.CommandClass_t = type { void (%struct.Command_t*)*, i32 (%struct.Command_t*)*, void (%struct.Command_t*)*, void (%struct.Command_t*)* }
%struct.CommandList_t = type { %struct.CommandList_t*, i32, %struct._GList*, %struct._GList*, %struct._GList*, %struct.CommandListCallback_t }
%struct.CommandListCallback_t = type { %struct._GList* }
%struct.PolygonProperties_t = type { %struct.Object_t*, %struct._GtkListStore*, %struct._GtkTreeSelection*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32 }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreePath = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GdkRegion = type opaque

@polygon_class = internal global %struct.ObjectClass_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.AreaInfoDialog_t* null, %struct._GdkDrawable* null, %struct._GdkDrawable* null, i32 (%struct.Object_t*)* @polygon_is_valid, void (%struct.Object_t*)* @polygon_destruct, %struct.Object_t* (%struct.Object_t*)* @polygon_clone, void (%struct.Object_t*, %struct.Object_t*)* @polygon_assign, void (%struct.Object_t*)* null, void (%struct.Object_t*, %struct._cairo*)* @polygon_draw, void (%struct.Object_t*, %struct._cairo*)* @polygon_draw_sashes, void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)* @polygon_near_sash, i32 (%struct.Object_t*, i32, i32)* @polygon_point_is_on, void (%struct.Object_t*, i32*, i32*, i32*, i32*)* @polygon_get_dimensions, void (%struct.Object_t*, i32, i32)* @polygon_resize, void (%struct.Object_t*, i32, i32)* @polygon_move, i8* (%struct._GtkWidget*)* @polygon_create_info_widget, void (%struct.Object_t*, i8*)* @polygon_update_info_widget, void (%struct.Object_t*, i8*)* @polygon_fill_info_tab, void (%struct.Object_t*, i8*)* @polygon_set_initial_focus, void (%struct.Object_t*, i8*)* @polygon_update, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)* @polygon_write_csim, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)* @polygon_write_cern, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)* @polygon_write_ncsa, void (%struct.Object_t*, %struct._GdkEventButton*)* @polygon_do_popup, i8* ()* @polygon_get_stock_icon_name }, align 8
@_current_obj = internal global %struct.Object_t* null, align 8
@_insert_x = internal global i32 0, align 4
@_insert_y = internal global i32 0, align 4
@_insert_edge = internal global i32 0, align 4
@_sash_point = internal global %struct._GdkPoint* null, align 8
@polygon_factory = internal global %struct.ObjectFactory_t { %struct.Object_t* null, i32 (%struct.Object_t*, i32, i32)* @polygon_factory_finish, i32 (%struct._GdkEventButton*, %struct.Object_t*)* @polygon_factory_cancel, %struct.Object_t* (i32, i32)* @polygon_factory_create_object, void (%struct.Object_t*, i32, i32, i32)* @polygon_factory_set_xy }, align 8
@.str = private unnamed_addr constant [9 x i8] c"_Polygon\00", align 1
@_sash_index = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"x (pixels)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"y (pixels)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"_x:\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"pixels\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"_y:\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"_Update\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"_Insert\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"A_ppend\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"_Remove\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"\22poly\22 coords=\22\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"poly \00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"(%d,%d) \00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"(%d,%d)\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"poly %s\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c" %d,%d\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"/PolygonPopupMenu\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"/PolygonPopupMenu/DeletePoint\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"/PolygonPopupMenu/InsertPoint\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"imap-polygon\00", align 1
@_prev_link = internal global %struct._GList* null, align 8

; Function Attrs: nounwind uwtable
define %struct.Object_t* @create_polygon(%struct._GList* %points) #0 {
entry:
  %points.addr = alloca %struct._GList*, align 8
  %polygon = alloca %struct.Polygon_t*, align 8
  store %struct._GList* %points, %struct._GList** %points.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 96)
  %0 = bitcast i8* %call to %struct.Polygon_t*
  store %struct.Polygon_t* %0, %struct.Polygon_t** %polygon, align 8
  %1 = load %struct._GList*, %struct._GList** %points.addr, align 8
  %2 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points1 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %2, i32 0, i32 1
  store %struct._GList* %1, %struct._GList** %points1, align 8
  %3 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %obj = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %3, i32 0, i32 0
  %call2 = call %struct.Object_t* @object_init(%struct.Object_t* %obj, %struct.ObjectClass_t* @polygon_class)
  ret %struct.Object_t* %call2
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct.Object_t* @object_init(%struct.Object_t*, %struct.ObjectClass_t*) #1

; Function Attrs: nounwind uwtable
define void @polygon_insert_point() #0 {
entry:
  %command = alloca %struct.Command_t*, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** @_current_obj, align 8
  %1 = load i32, i32* @_insert_x, align 4
  %2 = load i32, i32* @_insert_y, align 4
  %3 = load i32, i32* @_insert_edge, align 4
  %call = call %struct.Command_t* @insert_point_command_new(%struct.Object_t* %0, i32 %1, i32 %2, i32 %3)
  store %struct.Command_t* %call, %struct.Command_t** %command, align 8
  %4 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  call void @command_execute(%struct.Command_t* %4)
  ret void
}

declare %struct.Command_t* @insert_point_command_new(%struct.Object_t*, i32, i32, i32) #1

declare void @command_execute(%struct.Command_t*) #1

; Function Attrs: nounwind uwtable
define void @polygon_delete_point() #0 {
entry:
  %command = alloca %struct.Command_t*, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** @_current_obj, align 8
  %1 = load %struct._GdkPoint*, %struct._GdkPoint** @_sash_point, align 8
  %call = call %struct.Command_t* @delete_point_command_new(%struct.Object_t* %0, %struct._GdkPoint* %1)
  store %struct.Command_t* %call, %struct.Command_t** %command, align 8
  %2 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  call void @command_execute(%struct.Command_t* %2)
  ret void
}

declare %struct.Command_t* @delete_point_command_new(%struct.Object_t*, %struct._GdkPoint*) #1

; Function Attrs: nounwind uwtable
define %struct.ObjectFactory_t* @get_polygon_factory(i32 %state) #0 {
entry:
  %state.addr = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  ret %struct.ObjectFactory_t* @polygon_factory
}

; Function Attrs: nounwind uwtable
define void @polygon_remove_last_point(%struct.Polygon_t* %polygon) #0 {
entry:
  %polygon.addr = alloca %struct.Polygon_t*, align 8
  %last = alloca %struct._GList*, align 8
  store %struct.Polygon_t* %polygon, %struct.Polygon_t** %polygon.addr, align 8
  %0 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon.addr, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %0, i32 0, i32 1
  %1 = load %struct._GList*, %struct._GList** %points, align 8
  %call = call %struct._GList* @g_list_last(%struct._GList* %1)
  store %struct._GList* %call, %struct._GList** %last, align 8
  %2 = load %struct._GList*, %struct._GList** %last, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GdkPoint*
  %5 = bitcast %struct._GdkPoint* %4 to i8*
  call void @g_free(i8* %5)
  %6 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon.addr, align 8
  %points1 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %6, i32 0, i32 1
  %7 = load %struct._GList*, %struct._GList** %points1, align 8
  %8 = load %struct._GList*, %struct._GList** %last, align 8
  %call2 = call %struct._GList* @g_list_remove_link(%struct._GList* %7, %struct._GList* %8)
  %9 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon.addr, align 8
  %points3 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %9, i32 0, i32 1
  store %struct._GList* %call2, %struct._GList** %points3, align 8
  ret void
}

declare %struct._GList* @g_list_last(%struct._GList*) #1

declare void @g_free(i8*) #1

declare %struct._GList* @g_list_remove_link(%struct._GList*, %struct._GList*) #1

; Function Attrs: nounwind uwtable
define %struct._GdkPoint* @new_point(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %point = alloca %struct._GdkPoint*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %call = call noalias i8* @g_malloc_n(i64 1, i64 8)
  %0 = bitcast i8* %call to %struct._GdkPoint*
  store %struct._GdkPoint* %0, %struct._GdkPoint** %point, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x1 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %2, i32 0, i32 0
  store i32 %1, i32* %x1, align 4
  %3 = load i32, i32* %y.addr, align 4
  %4 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y2 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %4, i32 0, i32 1
  store i32 %3, i32* %y2, align 4
  %5 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  ret %struct._GdkPoint* %5
}

; Function Attrs: nounwind uwtable
define void @polygon_append_point(%struct.Polygon_t* %polygon, i32 %x, i32 %y) #0 {
entry:
  %polygon.addr = alloca %struct.Polygon_t*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %struct.Polygon_t* %polygon, %struct.Polygon_t** %polygon.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon.addr, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %0, i32 0, i32 1
  %1 = load %struct._GList*, %struct._GList** %points, align 8
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %call = call %struct._GdkPoint* @new_point(i32 %2, i32 %3)
  %4 = bitcast %struct._GdkPoint* %call to i8*
  %call1 = call %struct._GList* @g_list_append(%struct._GList* %1, i8* %4)
  %5 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon.addr, align 8
  %points2 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %5, i32 0, i32 1
  store %struct._GList* %call1, %struct._GList** %points2, align 8
  ret void
}

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @polygon_is_valid(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Polygon_t*
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %1, i32 0, i32 1
  %2 = load %struct._GList*, %struct._GList** %points, align 8
  %call = call i32 @g_list_length(%struct._GList* %2)
  %cmp = icmp ugt i32 %call, 2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @polygon_destruct(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %polygon = alloca %struct.Polygon_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Polygon_t*
  store %struct.Polygon_t* %1, %struct.Polygon_t** %polygon, align 8
  %2 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  call void @polygon_free_list(%struct.Polygon_t* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.Object_t* @polygon_clone(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %polygon = alloca %struct.Polygon_t*, align 8
  %clone = alloca %struct.Polygon_t*, align 8
  %p = alloca %struct._GList*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Polygon_t*
  store %struct.Polygon_t* %1, %struct.Polygon_t** %polygon, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 96)
  %2 = bitcast i8* %call to %struct.Polygon_t*
  store %struct.Polygon_t* %2, %struct.Polygon_t** %clone, align 8
  %3 = load %struct.Polygon_t*, %struct.Polygon_t** %clone, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %3, i32 0, i32 1
  store %struct._GList* null, %struct._GList** %points, align 8
  %4 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points1 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %4, i32 0, i32 1
  %5 = load %struct._GList*, %struct._GList** %points1, align 8
  store %struct._GList* %5, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct._GdkPoint*
  store %struct._GdkPoint* %9, %struct._GdkPoint** %point, align 8
  %10 = load %struct.Polygon_t*, %struct.Polygon_t** %clone, align 8
  %11 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %11, i32 0, i32 0
  %12 = load i32, i32* %x, align 4
  %13 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %13, i32 0, i32 1
  %14 = load i32, i32* %y, align 4
  call void @polygon_append_point(%struct.Polygon_t* %10, i32 %12, i32 %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 1
  %16 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %16, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.Polygon_t*, %struct.Polygon_t** %clone, align 8
  %obj2 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %17, i32 0, i32 0
  ret %struct.Object_t* %obj2
}

; Function Attrs: nounwind uwtable
define internal void @polygon_assign(%struct.Object_t* %obj, %struct.Object_t* %des) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %des.addr = alloca %struct.Object_t*, align 8
  %src_polygon = alloca %struct.Polygon_t*, align 8
  %des_polygon = alloca %struct.Polygon_t*, align 8
  %p = alloca %struct._GList*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store %struct.Object_t* %des, %struct.Object_t** %des.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Polygon_t*
  store %struct.Polygon_t* %1, %struct.Polygon_t** %src_polygon, align 8
  %2 = load %struct.Object_t*, %struct.Object_t** %des.addr, align 8
  %3 = bitcast %struct.Object_t* %2 to %struct.Polygon_t*
  store %struct.Polygon_t* %3, %struct.Polygon_t** %des_polygon, align 8
  %4 = load %struct.Polygon_t*, %struct.Polygon_t** %des_polygon, align 8
  call void @polygon_free_list(%struct.Polygon_t* %4)
  %5 = load %struct.Polygon_t*, %struct.Polygon_t** %src_polygon, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %5, i32 0, i32 1
  %6 = load %struct._GList*, %struct._GList** %points, align 8
  store %struct._GList* %6, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = bitcast i8* %9 to %struct._GdkPoint*
  store %struct._GdkPoint* %10, %struct._GdkPoint** %point, align 8
  %11 = load %struct.Polygon_t*, %struct.Polygon_t** %des_polygon, align 8
  %12 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %12, i32 0, i32 0
  %13 = load i32, i32* %x, align 4
  %14 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %14, i32 0, i32 1
  %15 = load i32, i32* %y, align 4
  call void @polygon_append_point(%struct.Polygon_t* %11, i32 %13, i32 %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 1
  %17 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %17, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @polygon_draw(%struct.Object_t* %obj, %struct._cairo* %cr) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %polygon = alloca %struct.Polygon_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Polygon_t*
  store %struct.Polygon_t* %1, %struct.Polygon_t** %polygon, align 8
  %2 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %3 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %points, align 8
  call void @draw_polygon(%struct._cairo* %2, %struct._GList* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @polygon_draw_sashes(%struct.Object_t* %obj, %struct._cairo* %cr) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %polygon = alloca %struct.Polygon_t*, align 8
  %p = alloca %struct._GList*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Polygon_t*
  store %struct.Polygon_t* %1, %struct.Polygon_t** %polygon, align 8
  %2 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %2, i32 0, i32 1
  %3 = load %struct._GList*, %struct._GList** %points, align 8
  store %struct._GList* %3, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GdkPoint*
  store %struct._GdkPoint* %7, %struct._GdkPoint** %point, align 8
  %8 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %9 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %9, i32 0, i32 0
  %10 = load i32, i32* %x, align 4
  %11 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %11, i32 0, i32 1
  %12 = load i32, i32* %y, align 4
  call void @draw_sash(%struct._cairo* %8, i32 %10, i32 %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %14, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void (%struct.Object_t*, i32, i32)* @polygon_near_sash(%struct.Object_t* %obj, i32 %x, i32 %y) #0 {
entry:
  %retval = alloca void (%struct.Object_t*, i32, i32)*, align 8
  %obj.addr = alloca %struct.Object_t*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %polygon = alloca %struct.Polygon_t*, align 8
  %p = alloca %struct._GList*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Polygon_t*
  store %struct.Polygon_t* %1, %struct.Polygon_t** %polygon, align 8
  store i32 0, i32* @_sash_index, align 4
  %2 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %2, i32 0, i32 1
  %3 = load %struct._GList*, %struct._GList** %points, align 8
  store %struct._GList* %3, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GdkPoint*
  store %struct._GdkPoint* %7, %struct._GdkPoint** %point, align 8
  %8 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x1 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %8, i32 0, i32 0
  %9 = load i32, i32* %x1, align 4
  %10 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y2 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %10, i32 0, i32 1
  %11 = load i32, i32* %y2, align 4
  %12 = load i32, i32* %x.addr, align 4
  %13 = load i32, i32* %y.addr, align 4
  %call = call i32 @near_sash(i32 %9, i32 %11, i32 %12, i32 %13)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %14 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  store %struct._GdkPoint* %14, %struct._GdkPoint** @_sash_point, align 8
  store void (%struct.Object_t*, i32, i32)* @move_sash, void (%struct.Object_t*, i32, i32)** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 1
  %16 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %16, %struct._GList** %p, align 8
  %17 = load i32, i32* @_sash_index, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* @_sash_index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store void (%struct.Object_t*, i32, i32)* null, void (%struct.Object_t*, i32, i32)** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %18 = load void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)** %retval
  ret void (%struct.Object_t*, i32, i32)* %18
}

; Function Attrs: nounwind uwtable
define internal i32 @polygon_point_is_on(%struct.Object_t* %obj, i32 %x, i32 %y) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %polygon = alloca %struct.Polygon_t*, align 8
  %p = alloca %struct._GList*, align 8
  %count = alloca i32, align 4
  %first = alloca %struct._GdkPoint*, align 8
  %prev = alloca %struct._GdkPoint*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Polygon_t*
  store %struct.Polygon_t* %1, %struct.Polygon_t** %polygon, align 8
  store i32 0, i32* %count, align 4
  %2 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %2, i32 0, i32 1
  %3 = load %struct._GList*, %struct._GList** %points, align 8
  store %struct._GList* %3, %struct._GList** %p, align 8
  %4 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GdkPoint*
  store %struct._GdkPoint* %6, %struct._GdkPoint** %prev, align 8
  store %struct._GdkPoint* %6, %struct._GdkPoint** %first, align 8
  %7 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 1
  %8 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %8, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %9, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GList*, %struct._GList** %p, align 8
  %data1 = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 0
  %11 = load i8*, i8** %data1, align 8
  %12 = bitcast i8* %11 to %struct._GdkPoint*
  store %struct._GdkPoint* %12, %struct._GdkPoint** %point, align 8
  %13 = load %struct._GdkPoint*, %struct._GdkPoint** %prev, align 8
  %14 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %15 = load i32, i32* %x.addr, align 4
  %16 = load i32, i32* %y.addr, align 4
  %call = call i32 @right_intersect(%struct._GdkPoint* %13, %struct._GdkPoint* %14, i32 %15, i32 %16)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %17 = load i32, i32* %count, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %18 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  store %struct._GdkPoint* %18, %struct._GdkPoint** %prev, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct._GList*, %struct._GList** %p, align 8
  %next3 = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 1
  %20 = load %struct._GList*, %struct._GList** %next3, align 8
  store %struct._GList* %20, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._GdkPoint*, %struct._GdkPoint** %prev, align 8
  %22 = load %struct._GdkPoint*, %struct._GdkPoint** %first, align 8
  %23 = load i32, i32* %x.addr, align 4
  %24 = load i32, i32* %y.addr, align 4
  %call4 = call i32 @right_intersect(%struct._GdkPoint* %21, %struct._GdkPoint* %22, i32 %23, i32 %24)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %for.end
  %25 = load i32, i32* %count, align 4
  %inc7 = add nsw i32 %25, 1
  store i32 %inc7, i32* %count, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %for.end
  %26 = load i32, i32* %count, align 4
  %rem = srem i32 %26, 2
  ret i32 %rem
}

; Function Attrs: nounwind uwtable
define internal void @polygon_get_dimensions(%struct.Object_t* %obj, i32* %x, i32* %y, i32* %width, i32* %height) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %polygon = alloca %struct.Polygon_t*, align 8
  %min_x = alloca i32, align 4
  %min_y = alloca i32, align 4
  %max_x = alloca i32, align 4
  %max_y = alloca i32, align 4
  %p = alloca %struct._GList*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Polygon_t*
  store %struct.Polygon_t* %1, %struct.Polygon_t** %polygon, align 8
  store i32 2147483647, i32* %min_x, align 4
  store i32 2147483647, i32* %min_y, align 4
  store i32 -2147483648, i32* %max_x, align 4
  store i32 -2147483648, i32* %max_y, align 4
  %2 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %2, i32 0, i32 1
  %3 = load %struct._GList*, %struct._GList** %points, align 8
  store %struct._GList* %3, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GdkPoint*
  store %struct._GdkPoint* %7, %struct._GdkPoint** %point, align 8
  %8 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x1 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %8, i32 0, i32 0
  %9 = load i32, i32* %x1, align 4
  %10 = load i32, i32* %min_x, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x2 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %11, i32 0, i32 0
  %12 = load i32, i32* %x2, align 4
  store i32 %12, i32* %min_x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x3 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %13, i32 0, i32 0
  %14 = load i32, i32* %x3, align 4
  %15 = load i32, i32* %max_x, align 4
  %cmp4 = icmp sgt i32 %14, %15
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %16 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x6 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %16, i32 0, i32 0
  %17 = load i32, i32* %x6, align 4
  store i32 %17, i32* %max_x, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %18 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y8 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %18, i32 0, i32 1
  %19 = load i32, i32* %y8, align 4
  %20 = load i32, i32* %min_y, align 4
  %cmp9 = icmp slt i32 %19, %20
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.7
  %21 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y11 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %21, i32 0, i32 1
  %22 = load i32, i32* %y11, align 4
  store i32 %22, i32* %min_y, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.7
  %23 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y13 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %23, i32 0, i32 1
  %24 = load i32, i32* %y13, align 4
  %25 = load i32, i32* %max_y, align 4
  %cmp14 = icmp sgt i32 %24, %25
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.12
  %26 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y16 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %26, i32 0, i32 1
  %27 = load i32, i32* %y16, align 4
  store i32 %27, i32* %max_y, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.12
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %28 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 1
  %29 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %29, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %min_x, align 4
  %31 = load i32*, i32** %x.addr, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %min_y, align 4
  %33 = load i32*, i32** %y.addr, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %max_x, align 4
  %35 = load i32, i32* %min_x, align 4
  %sub = sub nsw i32 %34, %35
  %36 = load i32*, i32** %width.addr, align 8
  store i32 %sub, i32* %36, align 4
  %37 = load i32, i32* %max_y, align 4
  %38 = load i32, i32* %min_y, align 4
  %sub18 = sub nsw i32 %37, %38
  %39 = load i32*, i32** %height.addr, align 8
  store i32 %sub18, i32* %39, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @polygon_resize(%struct.Object_t* %obj, i32 %percentage_x, i32 %percentage_y) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %percentage_x.addr = alloca i32, align 4
  %percentage_y.addr = alloca i32, align 4
  %polygon = alloca %struct.Polygon_t*, align 8
  %p = alloca %struct._GList*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %percentage_x, i32* %percentage_x.addr, align 4
  store i32 %percentage_y, i32* %percentage_y.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Polygon_t*
  store %struct.Polygon_t* %1, %struct.Polygon_t** %polygon, align 8
  %2 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %2, i32 0, i32 1
  %3 = load %struct._GList*, %struct._GList** %points, align 8
  store %struct._GList* %3, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GdkPoint*
  store %struct._GdkPoint* %7, %struct._GdkPoint** %point, align 8
  %8 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %8, i32 0, i32 0
  %9 = load i32, i32* %x, align 4
  %10 = load i32, i32* %percentage_x.addr, align 4
  %mul = mul nsw i32 %9, %10
  %div = sdiv i32 %mul, 100
  %11 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x1 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %11, i32 0, i32 0
  store i32 %div, i32* %x1, align 4
  %12 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %12, i32 0, i32 1
  %13 = load i32, i32* %y, align 4
  %14 = load i32, i32* %percentage_y.addr, align 4
  %mul2 = mul nsw i32 %13, %14
  %div3 = sdiv i32 %mul2, 100
  %15 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y4 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %15, i32 0, i32 1
  store i32 %div3, i32* %y4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 1
  %17 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %17, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @polygon_move(%struct.Object_t* %obj, i32 %dx, i32 %dy) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %polygon = alloca %struct.Polygon_t*, align 8
  %p = alloca %struct._GList*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Polygon_t*
  store %struct.Polygon_t* %1, %struct.Polygon_t** %polygon, align 8
  %2 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %2, i32 0, i32 1
  %3 = load %struct._GList*, %struct._GList** %points, align 8
  store %struct._GList* %3, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GdkPoint*
  store %struct._GdkPoint* %7, %struct._GdkPoint** %point, align 8
  %8 = load i32, i32* %dx.addr, align 4
  %9 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %9, i32 0, i32 0
  %10 = load i32, i32* %x, align 4
  %add = add nsw i32 %10, %8
  store i32 %add, i32* %x, align 4
  %11 = load i32, i32* %dy.addr, align 4
  %12 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %12, i32 0, i32 1
  %13 = load i32, i32* %y, align 4
  %add1 = add nsw i32 %13, %11
  store i32 %add1, i32* %y, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %15, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @polygon_create_info_widget(%struct._GtkWidget* %frame) #0 {
entry:
  %frame.addr = alloca %struct._GtkWidget*, align 8
  %props = alloca %struct.PolygonProperties_t*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %swin = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %max_width = alloca i32, align 4
  %max_height = alloca i32, align 4
  %renderer = alloca %struct._GtkCellRenderer*, align 8
  %column = alloca %struct._GtkTreeViewColumn*, align 8
  store %struct._GtkWidget* %frame, %struct._GtkWidget** %frame.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 80)
  %0 = bitcast i8* %call to %struct.PolygonProperties_t*
  store %struct.PolygonProperties_t* %0, %struct.PolygonProperties_t** %props, align 8
  %call1 = call i32 @get_image_width()
  store i32 %call1, i32* %max_width, align 4
  %call2 = call i32 @get_image_height()
  store i32 %call2, i32* %max_height, align 4
  %call3 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %hbox, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %frame.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call4)
  %3 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %3, %struct._GtkWidget* %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %5)
  %call6 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %swin, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_scrolled_window_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %8, i32 2, i32 1)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_scrolled_window_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %11, i32 1)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %14, %struct._GtkWidget* %15, i32 0, i32 0, i32 0)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %call13 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 1, i64 68)
  %17 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %store = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %17, i32 0, i32 1
  store %struct._GtkListStore* %call13, %struct._GtkListStore** %store, align 8
  %18 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %store14 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %18, i32 0, i32 1
  %19 = load %struct._GtkListStore*, %struct._GtkListStore** %store14, align 8
  %20 = bitcast %struct._GtkListStore* %19 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_tree_model_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call15)
  %21 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTreeModel*
  %call17 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %21)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %view, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_tree_view_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call18)
  %24 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkTreeView*
  call void @gtk_tree_view_set_rules_hint(%struct._GtkTreeView* %24, i32 1)
  %25 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %store20 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %25, i32 0, i32 1
  %26 = load %struct._GtkListStore*, %struct._GtkListStore** %store20, align 8
  %27 = bitcast %struct._GtkListStore* %26 to i8*
  call void @g_object_unref(i8* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %call21 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call21, %struct._GtkCellRenderer** %renderer, align 8
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0)) #5
  %29 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %call23 = call %struct._GtkTreeViewColumn* (i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_new_with_attributes(i8* %call22, %struct._GtkCellRenderer* %29, i8* null)
  store %struct._GtkTreeViewColumn* %call23, %struct._GtkTreeViewColumn** %column, align 8
  %30 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %31 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %32 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %33 = bitcast %struct.PolygonProperties_t* %32 to i8*
  call void @gtk_tree_view_column_set_cell_data_func(%struct._GtkTreeViewColumn* %30, %struct._GtkCellRenderer* %31, void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)* @render_x, i8* %33, void (i8*)* null)
  %34 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_alignment(%struct._GtkTreeViewColumn* %34, float 5.000000e-01)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_tree_view_get_type() #4
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call24)
  %37 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTreeView*
  %38 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call26 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %37, %struct._GtkTreeViewColumn* %38)
  %call27 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call27, %struct._GtkCellRenderer** %renderer, align 8
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)) #5
  %39 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %call29 = call %struct._GtkTreeViewColumn* (i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_new_with_attributes(i8* %call28, %struct._GtkCellRenderer* %39, i8* null)
  store %struct._GtkTreeViewColumn* %call29, %struct._GtkTreeViewColumn** %column, align 8
  %40 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %41 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %42 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %43 = bitcast %struct.PolygonProperties_t* %42 to i8*
  call void @gtk_tree_view_column_set_cell_data_func(%struct._GtkTreeViewColumn* %40, %struct._GtkCellRenderer* %41, void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)* @render_y, i8* %43, void (i8*)* null)
  %44 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_alignment(%struct._GtkTreeViewColumn* %44, float 5.000000e-01)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_tree_view_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call30)
  %47 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTreeView*
  %48 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call32 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %47, %struct._GtkTreeViewColumn* %48)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_container_get_type() #4
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call33)
  %51 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkContainer*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %51, %struct._GtkWidget* %52)
  %call35 = call %struct._GtkWidget* @gtk_table_new(i32 6, i32 3, i32 0)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %table, align 8
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_table_get_type() #4
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call36)
  %55 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %55, i32 6)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_table_get_type() #4
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call38)
  %58 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %58, i32 6)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_box_get_type() #4
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call40)
  %61 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkBox*
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %61, %struct._GtkWidget* %62, i32 0, i32 0, i32 0)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %63)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call42 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %64, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %label, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %67 = load i32, i32* %max_width, align 4
  %sub = sub nsw i32 %67, 1
  %call43 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %65, %struct._GtkWidget* %66, i32 0, i32 1, i32 1, i32 0, i32 %sub)
  %68 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %x = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %68, i32 0, i32 3
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %x, align 8
  %69 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %x44 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %69, i32 0, i32 3
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %x44, align 8
  %71 = bitcast %struct._GtkWidget* %70 to i8*
  %72 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %73 = bitcast %struct.PolygonProperties_t* %72 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @x_changed_cb to void ()*), i8* %73, void (i8*, %struct._GClosure*)* null, i32 0)
  %74 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %x46 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %74, i32 0, i32 3
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %x46, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %75, i32 64, i32 -1)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)) #5
  %call48 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %76, i32 0, i32 2, i8* %call47)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call49 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %77, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkWidget* %call49, %struct._GtkWidget** %label, align 8
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %80 = load i32, i32* %max_height, align 4
  %sub50 = sub nsw i32 %80, 1
  %call51 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %78, %struct._GtkWidget* %79, i32 1, i32 1, i32 1, i32 0, i32 %sub50)
  %81 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %y = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %81, i32 0, i32 4
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %y, align 8
  %82 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %y52 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %82, i32 0, i32 4
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %y52, align 8
  %84 = bitcast %struct._GtkWidget* %83 to i8*
  %85 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %86 = bitcast %struct.PolygonProperties_t* %85 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @y_changed_cb to void ()*), i8* %86, void (i8*, %struct._GClosure*)* null, i32 0)
  %87 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %y54 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %87, i32 0, i32 4
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %y54, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %88, i32 64, i32 -1)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)) #5
  %call56 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %89, i32 1, i32 2, i8* %call55)
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)) #5
  %call58 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call57)
  %90 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %update = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %90, i32 0, i32 5
  store %struct._GtkWidget* %call58, %struct._GtkWidget** %update, align 8
  %91 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %update59 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %91, i32 0, i32 5
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %update59, align 8
  %93 = bitcast %struct._GtkWidget* %92 to i8*
  %94 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %95 = bitcast %struct.PolygonProperties_t* %94 to i8*
  %call60 = call i64 @g_signal_connect_data(i8* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.PolygonProperties_t*)* @update_button_clicked to void ()*), i8* %95, void (i8*, %struct._GClosure*)* null, i32 0)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_table_get_type() #4
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call61)
  %98 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkTable*
  %99 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %update63 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %99, i32 0, i32 5
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %update63, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %98, %struct._GtkWidget* %100, i32 1, i32 2, i32 2, i32 3)
  %101 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %update64 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %101, i32 0, i32 5
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %update64, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %102)
  %call65 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #5
  %call66 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call65)
  %103 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %insert = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %103, i32 0, i32 6
  store %struct._GtkWidget* %call66, %struct._GtkWidget** %insert, align 8
  %104 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %insert67 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %104, i32 0, i32 6
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %insert67, align 8
  %106 = bitcast %struct._GtkWidget* %105 to i8*
  %107 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %108 = bitcast %struct.PolygonProperties_t* %107 to i8*
  %call68 = call i64 @g_signal_connect_data(i8* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.PolygonProperties_t*)* @insert_button_clicked to void ()*), i8* %108, void (i8*, %struct._GClosure*)* null, i32 0)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_table_get_type() #4
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call69)
  %111 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkTable*
  %112 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %insert71 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %112, i32 0, i32 6
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %insert71, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %111, %struct._GtkWidget* %113, i32 1, i32 2, i32 3, i32 4)
  %114 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %insert72 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %114, i32 0, i32 6
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %insert72, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %115)
  %call73 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0)) #5
  %call74 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call73)
  %116 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %append = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %116, i32 0, i32 7
  store %struct._GtkWidget* %call74, %struct._GtkWidget** %append, align 8
  %117 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %append75 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %117, i32 0, i32 7
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %append75, align 8
  %119 = bitcast %struct._GtkWidget* %118 to i8*
  %120 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %121 = bitcast %struct.PolygonProperties_t* %120 to i8*
  %call76 = call i64 @g_signal_connect_data(i8* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.PolygonProperties_t*)* @append_button_clicked to void ()*), i8* %121, void (i8*, %struct._GClosure*)* null, i32 0)
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_table_get_type() #4
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call77)
  %124 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkTable*
  %125 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %append79 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %125, i32 0, i32 7
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %append79, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %124, %struct._GtkWidget* %126, i32 1, i32 2, i32 4, i32 5)
  %127 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %append80 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %127, i32 0, i32 7
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %append80, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %128)
  %call81 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #5
  %call82 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call81)
  %129 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %remove = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %129, i32 0, i32 8
  store %struct._GtkWidget* %call82, %struct._GtkWidget** %remove, align 8
  %130 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %remove83 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %130, i32 0, i32 8
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %remove83, align 8
  %132 = bitcast %struct._GtkWidget* %131 to i8*
  %133 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %134 = bitcast %struct.PolygonProperties_t* %133 to i8*
  %call84 = call i64 @g_signal_connect_data(i8* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.PolygonProperties_t*)* @remove_button_clicked to void ()*), i8* %134, void (i8*, %struct._GClosure*)* null, i32 0)
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %136 = bitcast %struct._GtkWidget* %135 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_table_get_type() #4
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call85)
  %137 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkTable*
  %138 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %remove87 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %138, i32 0, i32 8
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %remove87, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %137, %struct._GtkWidget* %139, i32 1, i32 2, i32 5, i32 6)
  %140 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %remove88 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %140, i32 0, i32 8
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %remove88, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %141)
  %142 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %timeout = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %142, i32 0, i32 10
  store i32 0, i32* %timeout, align 4
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_tree_view_get_type() #4
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call89)
  %145 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkTreeView*
  %call91 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %145)
  %146 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %selection = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %146, i32 0, i32 2
  store %struct._GtkTreeSelection* %call91, %struct._GtkTreeSelection** %selection, align 8
  %147 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %selection92 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %147, i32 0, i32 2
  %148 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection92, align 8
  call void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection* %148, i32 1)
  %149 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %selection93 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %149, i32 0, i32 2
  %150 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection93, align 8
  %151 = bitcast %struct._GtkTreeSelection* %150 to i8*
  %152 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %153 = bitcast %struct.PolygonProperties_t* %152 to i8*
  %call94 = call i64 @g_signal_connect_data(i8* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*, %struct.PolygonProperties_t*)* @select_row_cb to void ()*), i8* %153, void (i8*, %struct._GClosure*)* null, i32 0)
  %154 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %155 = bitcast %struct.PolygonProperties_t* %154 to i8*
  ret i8* %155
}

; Function Attrs: nounwind uwtable
define internal void @polygon_update_info_widget(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  %props = alloca %struct.PolygonProperties_t*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.PolygonProperties_t*
  store %struct.PolygonProperties_t* %1, %struct.PolygonProperties_t** %props, align 8
  %2 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %x = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %2, i32 0, i32 3
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %x, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkSpinButton*
  %6 = load %struct._GdkPoint*, %struct._GdkPoint** @_sash_point, align 8
  %x2 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %6, i32 0, i32 0
  %7 = load i32, i32* %x2, align 4
  %conv = sitofp i32 %7 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %5, double %conv)
  %8 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %y = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %8, i32 0, i32 4
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %y, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_spin_button_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkSpinButton*
  %12 = load %struct._GdkPoint*, %struct._GdkPoint** @_sash_point, align 8
  %y5 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %12, i32 0, i32 1
  %13 = load i32, i32* %y5, align 4
  %conv6 = sitofp i32 %13 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %11, double %conv6)
  %14 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %store = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %14, i32 0, i32 1
  %15 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %16 = bitcast %struct._GtkListStore* %15 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_tree_model_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call7)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTreeModel*
  %18 = load i32, i32* @_sash_index, align 4
  %call9 = call i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel* %17, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* null, i32 %18)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %selection = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %19, i32 0, i32 2
  %20 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %20, %struct._GtkTreeIter* %iter)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %timeout = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %21, i32 0, i32 10
  %22 = load i32, i32* %timeout, align 4
  %tobool10 = icmp ne i32 %22, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end
  %23 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %timeout12 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %23, i32 0, i32 10
  %24 = load i32, i32* %timeout12, align 4
  %call13 = call i32 @g_source_remove(i32 %24)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end
  %25 = load i8*, i8** %data.addr, align 8
  %call15 = call i32 @g_timeout_add(i32 1000, i32 (i8*)* @update_timeout, i8* %25)
  %26 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %timeout16 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %26, i32 0, i32 10
  store i32 %call15, i32* %timeout16, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @polygon_fill_info_tab(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  %polygon = alloca %struct.Polygon_t*, align 8
  %props = alloca %struct.PolygonProperties_t*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %p = alloca %struct._GList*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Polygon_t*
  store %struct.Polygon_t* %1, %struct.Polygon_t** %polygon, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = bitcast i8* %2 to %struct.PolygonProperties_t*
  store %struct.PolygonProperties_t* %3, %struct.PolygonProperties_t** %props, align 8
  %4 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %5 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %obj1 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %5, i32 0, i32 0
  store %struct.Object_t* %4, %struct.Object_t** %obj1, align 8
  %6 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %store = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %6, i32 0, i32 1
  %7 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  call void @gtk_list_store_clear(%struct._GtkListStore* %7)
  %8 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %points, align 8
  store %struct._GList* %9, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %store2 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %11, i32 0, i32 1
  %12 = load %struct._GtkListStore*, %struct._GtkListStore** %store2, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %12, %struct._GtkTreeIter* %iter)
  %13 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %store3 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %13, i32 0, i32 1
  %14 = load %struct._GtkListStore*, %struct._GtkListStore** %store3, align 8
  %15 = load %struct._GList*, %struct._GList** %p, align 8
  %data4 = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 0
  %16 = load i8*, i8** %data4, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %14, %struct._GtkTreeIter* %iter, i32 0, i8* %16, i32 -1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %18, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %store5 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %19, i32 0, i32 1
  %20 = load %struct._GtkListStore*, %struct._GtkListStore** %store5, align 8
  %21 = bitcast %struct._GtkListStore* %20 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_model_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call)
  %22 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkTreeModel*
  %23 = load i32, i32* @_sash_index, align 4
  %call7 = call i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel* %22, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* null, i32 %23)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %24 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %selection = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %24, i32 0, i32 2
  %25 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %25, %struct._GtkTreeIter* %iter)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %26 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  call void @set_buttons_sensitivity(%struct.PolygonProperties_t* %26)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @polygon_set_initial_focus(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  %props = alloca %struct.PolygonProperties_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.PolygonProperties_t*
  store %struct.PolygonProperties_t* %1, %struct.PolygonProperties_t** %props, align 8
  %2 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %x = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %2, i32 0, i32 3
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %x, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @polygon_update(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @polygon_write_csim(%struct.Object_t* %obj, i8* %param, void (i8*, i8*, ...)* %output) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %param.addr = alloca i8*, align 8
  %output.addr = alloca void (i8*, i8*, ...)*, align 8
  %polygon = alloca %struct.Polygon_t*, align 8
  %p = alloca %struct._GList*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %param, i8** %param.addr, align 8
  store void (i8*, i8*, ...)* %output, void (i8*, i8*, ...)** %output.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Polygon_t*
  store %struct.Polygon_t* %1, %struct.Polygon_t** %polygon, align 8
  %2 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %3 = load i8*, i8** %param.addr, align 8
  call void (i8*, i8*, ...) %2(i8* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0))
  %4 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %4, i32 0, i32 1
  %5 = load %struct._GList*, %struct._GList** %points, align 8
  store %struct._GList* %5, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct._GdkPoint*
  store %struct._GdkPoint* %9, %struct._GdkPoint** %point, align 8
  %10 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %11 = load i8*, i8** %param.addr, align 8
  %12 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %12, i32 0, i32 0
  %13 = load i32, i32* %x, align 4
  %14 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %14, i32 0, i32 1
  %15 = load i32, i32* %y, align 4
  call void (i8*, i8*, ...) %10(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %13, i32 %15)
  %16 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %17 = load i8*, i8** %param.addr, align 8
  %18 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool1 = icmp ne %struct._GList* %19, null
  %cond = select i1 %tobool1, i32 44, i32 34
  call void (i8*, i8*, ...) %16(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 %cond)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load %struct._GList*, %struct._GList** %p, align 8
  %next2 = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 1
  %21 = load %struct._GList*, %struct._GList** %next2, align 8
  store %struct._GList* %21, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @polygon_write_cern(%struct.Object_t* %obj, i8* %param, void (i8*, i8*, ...)* %output) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %param.addr = alloca i8*, align 8
  %output.addr = alloca void (i8*, i8*, ...)*, align 8
  %polygon = alloca %struct.Polygon_t*, align 8
  %p = alloca %struct._GList*, align 8
  %first = alloca %struct._GdkPoint*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %param, i8** %param.addr, align 8
  store void (i8*, i8*, ...)* %output, void (i8*, i8*, ...)** %output.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Polygon_t*
  store %struct.Polygon_t* %1, %struct.Polygon_t** %polygon, align 8
  %2 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %2, i32 0, i32 1
  %3 = load %struct._GList*, %struct._GList** %points, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GdkPoint*
  store %struct._GdkPoint* %5, %struct._GdkPoint** %first, align 8
  %6 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %7 = load i8*, i8** %param.addr, align 8
  call void (i8*, i8*, ...) %6(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0))
  %8 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points1 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %points1, align 8
  store %struct._GList* %9, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._GList*, %struct._GList** %p, align 8
  %data2 = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 0
  %12 = load i8*, i8** %data2, align 8
  %13 = bitcast i8* %12 to %struct._GdkPoint*
  store %struct._GdkPoint* %13, %struct._GdkPoint** %point, align 8
  %14 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %15 = load i8*, i8** %param.addr, align 8
  %16 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %16, i32 0, i32 0
  %17 = load i32, i32* %x, align 4
  %18 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %18, i32 0, i32 1
  %19 = load i32, i32* %y, align 4
  call void (i8*, i8*, ...) %14(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %17, i32 %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 1
  %21 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %21, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %23 = load i8*, i8** %param.addr, align 8
  %24 = load %struct._GdkPoint*, %struct._GdkPoint** %first, align 8
  %x3 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %24, i32 0, i32 0
  %25 = load i32, i32* %x3, align 4
  %26 = load %struct._GdkPoint*, %struct._GdkPoint** %first, align 8
  %y4 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %26, i32 0, i32 1
  %27 = load i32, i32* %y4, align 4
  call void (i8*, i8*, ...) %22(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 %25, i32 %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @polygon_write_ncsa(%struct.Object_t* %obj, i8* %param, void (i8*, i8*, ...)* %output) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %param.addr = alloca i8*, align 8
  %output.addr = alloca void (i8*, i8*, ...)*, align 8
  %polygon = alloca %struct.Polygon_t*, align 8
  %p = alloca %struct._GList*, align 8
  %first = alloca %struct._GdkPoint*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %param, i8** %param.addr, align 8
  store void (i8*, i8*, ...)* %output, void (i8*, i8*, ...)** %output.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Polygon_t*
  store %struct.Polygon_t* %1, %struct.Polygon_t** %polygon, align 8
  %2 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %2, i32 0, i32 1
  %3 = load %struct._GList*, %struct._GList** %points, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GdkPoint*
  store %struct._GdkPoint* %5, %struct._GdkPoint** %first, align 8
  %6 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %7 = load i8*, i8** %param.addr, align 8
  %8 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %url = getelementptr inbounds %struct.Object_t, %struct.Object_t* %8, i32 0, i32 5
  %9 = load i8*, i8** %url, align 8
  call void (i8*, i8*, ...) %6(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* %9)
  %10 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points1 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %points1, align 8
  store %struct._GList* %11, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %12, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._GList*, %struct._GList** %p, align 8
  %data2 = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data2, align 8
  %15 = bitcast i8* %14 to %struct._GdkPoint*
  store %struct._GdkPoint* %15, %struct._GdkPoint** %point, align 8
  %16 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %17 = load i8*, i8** %param.addr, align 8
  %18 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %18, i32 0, i32 0
  %19 = load i32, i32* %x, align 4
  %20 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %20, i32 0, i32 1
  %21 = load i32, i32* %y, align 4
  call void (i8*, i8*, ...) %16(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 %19, i32 %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 1
  %23 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %23, %struct._GList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %25 = load i8*, i8** %param.addr, align 8
  %26 = load %struct._GdkPoint*, %struct._GdkPoint** %first, align 8
  %x3 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %26, i32 0, i32 0
  %27 = load i32, i32* %x3, align 4
  %28 = load %struct._GdkPoint*, %struct._GdkPoint** %first, align 8
  %y4 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %28, i32 0, i32 1
  %29 = load i32, i32* %y4, align 4
  call void (i8*, i8*, ...) %24(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 %27, i32 %29)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @polygon_do_popup(%struct.Object_t* %obj, %struct._GdkEventButton* %event) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x1 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %0, i32 0, i32 4
  %1 = load double, double* %x1, align 8
  %conv = fptosi double %1 to i32
  %call = call i32 @get_real_coord(i32 %conv)
  store i32 %call, i32* %x, align 4
  %2 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y2 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %2, i32 0, i32 5
  %3 = load double, double* %y2, align 8
  %conv3 = fptosi double %3 to i32
  %call4 = call i32 @get_real_coord(i32 %conv3)
  store i32 %call4, i32* %y, align 4
  %4 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  store %struct.Object_t* %4, %struct.Object_t** @_current_obj, align 8
  %5 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %6 = load i32, i32* %x, align 4
  %7 = load i32, i32* %y, align 4
  %call5 = call void (%struct.Object_t*, i32, i32)* @polygon_near_sash(%struct.Object_t* %5, i32 %6, i32 %7)
  %tobool = icmp ne void (%struct.Object_t*, i32, i32)* %call5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  call void @polygon_handle_popup(%struct._GdkEventButton* %8, i32 1, i32 0)
  br label %if.end.10

if.else:                                          ; preds = %entry
  %9 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %10 = load i32, i32* %x, align 4
  %11 = load i32, i32* %y, align 4
  %call6 = call i32 @polygon_near_edge(%struct.Object_t* %9, i32 %10, i32 %11)
  store i32 %call6, i32* @_insert_edge, align 4
  %12 = load i32, i32* @_insert_edge, align 4
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else
  %13 = load i32, i32* %x, align 4
  store i32 %13, i32* @_insert_x, align 4
  %14 = load i32, i32* %y, align 4
  store i32 %14, i32* @_insert_y, align 4
  %15 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  call void @polygon_handle_popup(%struct._GdkEventButton* %15, i32 0, i32 1)
  br label %if.end

if.else.9:                                        ; preds = %if.else
  %16 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %17 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  call void @object_do_popup(%struct.Object_t* %16, %struct._GdkEventButton* %17)
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.8
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @polygon_get_stock_icon_name() #0 {
entry:
  ret i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0)
}

declare i32 @g_list_length(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define internal void @polygon_free_list(%struct.Polygon_t* %polygon) #0 {
entry:
  %polygon.addr = alloca %struct.Polygon_t*, align 8
  store %struct.Polygon_t* %polygon, %struct.Polygon_t** %polygon.addr, align 8
  %0 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon.addr, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %0, i32 0, i32 1
  %1 = load %struct._GList*, %struct._GList** %points, align 8
  call void @g_list_free_full(%struct._GList* %1, void (i8*)* @g_free)
  %2 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon.addr, align 8
  %points1 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %2, i32 0, i32 1
  store %struct._GList* null, %struct._GList** %points1, align 8
  ret void
}

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @draw_polygon(%struct._cairo*, %struct._GList*) #1

declare void @draw_sash(%struct._cairo*, i32, i32) #1

declare i32 @near_sash(i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @move_sash(%struct.Object_t* %obj, i32 %dx, i32 %dy) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  %0 = load i32, i32* %dx.addr, align 4
  %1 = load %struct._GdkPoint*, %struct._GdkPoint** @_sash_point, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %1, i32 0, i32 0
  %2 = load i32, i32* %x, align 4
  %add = add nsw i32 %2, %0
  store i32 %add, i32* %x, align 4
  %3 = load i32, i32* %dy.addr, align 4
  %4 = load %struct._GdkPoint*, %struct._GdkPoint** @_sash_point, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %4, i32 0, i32 1
  %5 = load i32, i32* %y, align 4
  %add1 = add nsw i32 %5, %3
  store i32 %add1, i32* %y, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @right_intersect(%struct._GdkPoint* %p1, %struct._GdkPoint* %p2, i32 %x, i32 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %p1.addr = alloca %struct._GdkPoint*, align 8
  %p2.addr = alloca %struct._GdkPoint*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %sx = alloca i32, align 4
  store %struct._GdkPoint* %p1, %struct._GdkPoint** %p1.addr, align 8
  store %struct._GdkPoint* %p2, %struct._GdkPoint** %p2.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct._GdkPoint*, %struct._GdkPoint** %p2.addr, align 8
  %x1 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %0, i32 0, i32 0
  %1 = load i32, i32* %x1, align 4
  %2 = load %struct._GdkPoint*, %struct._GdkPoint** %p1.addr, align 8
  %x2 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %2, i32 0, i32 0
  %3 = load i32, i32* %x2, align 4
  %sub = sub nsw i32 %1, %3
  store i32 %sub, i32* %dx, align 4
  %4 = load %struct._GdkPoint*, %struct._GdkPoint** %p2.addr, align 8
  %y3 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %4, i32 0, i32 1
  %5 = load i32, i32* %y3, align 4
  %6 = load %struct._GdkPoint*, %struct._GdkPoint** %p1.addr, align 8
  %y4 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %6, i32 0, i32 1
  %7 = load i32, i32* %y4, align 4
  %sub5 = sub nsw i32 %5, %7
  store i32 %sub5, i32* %dy, align 4
  %8 = load i32, i32* %dy, align 4
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %9 = load i32, i32* %y.addr, align 4
  %10 = load %struct._GdkPoint*, %struct._GdkPoint** %p1.addr, align 8
  %y6 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %10, i32 0, i32 1
  %11 = load i32, i32* %y6, align 4
  %cmp7 = icmp sgt i32 %9, %11
  br i1 %cmp7, label %land.lhs.true.8, label %lor.lhs.false

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %12 = load i32, i32* %y.addr, align 4
  %13 = load %struct._GdkPoint*, %struct._GdkPoint** %p2.addr, align 8
  %y9 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %13, i32 0, i32 1
  %14 = load i32, i32* %y9, align 4
  %cmp10 = icmp slt i32 %12, %14
  br i1 %cmp10, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.8, %land.lhs.true, %entry
  %15 = load i32, i32* %dy, align 4
  %16 = load i32, i32* %y.addr, align 4
  %cmp11 = icmp slt i32 %15, %16
  br i1 %cmp11, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %lor.lhs.false
  %17 = load i32, i32* %y.addr, align 4
  %18 = load %struct._GdkPoint*, %struct._GdkPoint** %p2.addr, align 8
  %y13 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %18, i32 0, i32 1
  %19 = load i32, i32* %y13, align 4
  %cmp14 = icmp sgt i32 %17, %19
  br i1 %cmp14, label %land.lhs.true.15, label %if.end

land.lhs.true.15:                                 ; preds = %land.lhs.true.12
  %20 = load i32, i32* %y.addr, align 4
  %21 = load %struct._GdkPoint*, %struct._GdkPoint** %p1.addr, align 8
  %y16 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %21, i32 0, i32 1
  %22 = load i32, i32* %y16, align 4
  %cmp17 = icmp slt i32 %20, %22
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.15, %land.lhs.true.8
  %23 = load %struct._GdkPoint*, %struct._GdkPoint** %p1.addr, align 8
  %x18 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %23, i32 0, i32 0
  %24 = load i32, i32* %x18, align 4
  %25 = load i32, i32* %y.addr, align 4
  %26 = load %struct._GdkPoint*, %struct._GdkPoint** %p1.addr, align 8
  %y19 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %26, i32 0, i32 1
  %27 = load i32, i32* %y19, align 4
  %sub20 = sub nsw i32 %25, %27
  %28 = load i32, i32* %dx, align 4
  %mul = mul nsw i32 %sub20, %28
  %29 = load i32, i32* %dy, align 4
  %div = sdiv i32 %mul, %29
  %add = add nsw i32 %24, %div
  store i32 %add, i32* %sx, align 4
  %30 = load i32, i32* %sx, align 4
  %31 = load i32, i32* %x.addr, align 4
  %cmp21 = icmp sgt i32 %30, %31
  %conv = zext i1 %cmp21 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.15, %land.lhs.true.12, %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i32 @get_image_width() #1

declare i32 @get_image_height() #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

declare %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare void @gtk_tree_view_set_rules_hint(%struct._GtkTreeView*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #2

declare void @g_object_unref(i8*) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new_with_attributes(i8*, %struct._GtkCellRenderer*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @gtk_tree_view_column_set_cell_data_func(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @render_x(%struct._GtkTreeViewColumn* %column, %struct._GtkCellRenderer* %cell, %struct._GtkTreeModel* %tree_model, %struct._GtkTreeIter* %iter, i8* %data) #0 {
entry:
  %column.addr = alloca %struct._GtkTreeViewColumn*, align 8
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %data.addr = alloca i8*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  %scratch = alloca [16 x i8], align 16
  store %struct._GtkTreeViewColumn* %column, %struct._GtkTreeViewColumn** %column.addr, align 8
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %tree_model.addr, align 8
  %1 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %0, %struct._GtkTreeIter* %1, i32 0, %struct._GdkPoint** %point, i32 -1)
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %scratch, i32 0, i32 0
  %2 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %2, i32 0, i32 0
  %3 = load i32, i32* %x, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 %3) #5
  %4 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %5 = bitcast %struct._GtkCellRenderer* %4 to i8*
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %scratch, i32 0, i32 0
  call void (i8*, i8*, ...) @g_object_set(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), double 1.000000e+00, i8* null)
  ret void
}

declare void @gtk_tree_view_column_set_alignment(%struct._GtkTreeViewColumn*, float) #1

declare i32 @gtk_tree_view_append_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*) #1

; Function Attrs: nounwind uwtable
define internal void @render_y(%struct._GtkTreeViewColumn* %column, %struct._GtkCellRenderer* %cell, %struct._GtkTreeModel* %tree_model, %struct._GtkTreeIter* %iter, i8* %data) #0 {
entry:
  %column.addr = alloca %struct._GtkTreeViewColumn*, align 8
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %data.addr = alloca i8*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  %scratch = alloca [16 x i8], align 16
  store %struct._GtkTreeViewColumn* %column, %struct._GtkTreeViewColumn** %column.addr, align 8
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %tree_model.addr, align 8
  %1 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %0, %struct._GtkTreeIter* %1, i32 0, %struct._GdkPoint** %point, i32 -1)
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %scratch, i32 0, i32 0
  %2 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %2, i32 0, i32 1
  %3 = load i32, i32* %y, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 %3) #5
  %4 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %5 = bitcast %struct._GtkCellRenderer* %4 to i8*
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %scratch, i32 0, i32 0
  call void (i8*, i8*, ...) @g_object_set(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), double 1.000000e+00, i8* null)
  ret void
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget*, i32, i32, i8*) #1

declare %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i32, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @x_changed_cb(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %obj = alloca %struct.Object_t*, align 8
  %x = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.PolygonProperties_t*
  %obj1 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %1, i32 0, i32 0
  %2 = load %struct.Object_t*, %struct.Object_t** %obj1, align 8
  store %struct.Object_t* %2, %struct.Object_t** %obj, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkSpinButton*
  %call3 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %5)
  store i32 %call3, i32* %x, align 4
  %6 = load i32, i32* %x, align 4
  %7 = load %struct._GdkPoint*, %struct._GdkPoint** @_sash_point, align 8
  %x4 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %7, i32 0, i32 0
  store i32 %6, i32* %x4, align 4
  %8 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %8, i32 0, i32 0
  %9 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %info_dialog = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %9, i32 0, i32 1
  %10 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %info_dialog, align 8
  call void @edit_area_info_dialog_emit_geometry_signal(%struct.AreaInfoDialog_t* %10)
  ret void
}

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @y_changed_cb(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %obj = alloca %struct.Object_t*, align 8
  %y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.PolygonProperties_t*
  %obj1 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %1, i32 0, i32 0
  %2 = load %struct.Object_t*, %struct.Object_t** %obj1, align 8
  store %struct.Object_t* %2, %struct.Object_t** %obj, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkSpinButton*
  %call3 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %5)
  store i32 %call3, i32* %y, align 4
  %6 = load i32, i32* %y, align 4
  %7 = load %struct._GdkPoint*, %struct._GdkPoint** @_sash_point, align 8
  %y4 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %7, i32 0, i32 1
  store i32 %6, i32* %y4, align 4
  %8 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %8, i32 0, i32 0
  %9 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %info_dialog = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %9, i32 0, i32 1
  %10 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %info_dialog, align 8
  call void @edit_area_info_dialog_emit_geometry_signal(%struct.AreaInfoDialog_t* %10)
  ret void
}

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @update_button_clicked(%struct._GtkWidget* %widget, %struct.PolygonProperties_t* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca %struct.PolygonProperties_t*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.PolygonProperties_t* %data, %struct.PolygonProperties_t** %data.addr, align 8
  %0 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %store = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %0, i32 0, i32 1
  %1 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %2 = bitcast %struct._GtkListStore* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_model_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %3, %struct._GtkTreeModel** %model, align 8
  %4 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %selection = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %4, i32 0, i32 2
  %5 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %call2 = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %5, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %x3 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %6, i32 0, i32 3
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %x3, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_spin_button_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkSpinButton*
  %call6 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %9)
  store i32 %call6, i32* %x, align 4
  %10 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %y7 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %10, i32 0, i32 4
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %y7, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_spin_button_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkSpinButton*
  %call10 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %13)
  store i32 %call10, i32* %y, align 4
  %14 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %14, %struct._GtkTreeIter* %iter, i32 0, %struct._GdkPoint** %point, i32 -1)
  %15 = load i32, i32* %x, align 4
  %16 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x11 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %16, i32 0, i32 0
  store i32 %15, i32* %x11, align 4
  %17 = load i32, i32* %y, align 4
  %18 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y12 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %18, i32 0, i32 1
  store i32 %17, i32* %y12, align 4
  %19 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %store13 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %19, i32 0, i32 1
  %20 = load %struct._GtkListStore*, %struct._GtkListStore** %store13, align 8
  %21 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %20, %struct._GtkTreeIter* %iter, i32 0, %struct._GdkPoint* %21, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @insert_button_clicked(%struct._GtkWidget* %widget, %struct.PolygonProperties_t* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca %struct.PolygonProperties_t*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %polygon = alloca %struct.Polygon_t*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  %here = alloca %struct._GList*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.PolygonProperties_t* %data, %struct.PolygonProperties_t** %data.addr, align 8
  %0 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %store = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %0, i32 0, i32 1
  %1 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %2 = bitcast %struct._GtkListStore* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_model_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %3, %struct._GtkTreeModel** %model, align 8
  %4 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %selection = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %4, i32 0, i32 2
  %5 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %call2 = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %5, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %obj = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %6, i32 0, i32 0
  %7 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %8 = bitcast %struct.Object_t* %7 to %struct.Polygon_t*
  store %struct.Polygon_t* %8, %struct.Polygon_t** %polygon, align 8
  %9 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %x3 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %9, i32 0, i32 3
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %x3, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_spin_button_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkSpinButton*
  %call6 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %12)
  store i32 %call6, i32* %x, align 4
  %13 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %y7 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %13, i32 0, i32 4
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %y7, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_spin_button_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call8)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkSpinButton*
  %call10 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %16)
  store i32 %call10, i32* %y, align 4
  %17 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %17, %struct._GtkTreeIter* %iter, i32 0, %struct._GdkPoint** %point, i32 -1)
  %18 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %points, align 8
  %20 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %21 = bitcast %struct._GdkPoint* %20 to i8*
  %call11 = call %struct._GList* @g_list_find(%struct._GList* %19, i8* %21)
  store %struct._GList* %call11, %struct._GList** %here, align 8
  %22 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points12 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %22, i32 0, i32 1
  %23 = load %struct._GList*, %struct._GList** %points12, align 8
  %24 = load %struct._GList*, %struct._GList** %here, align 8
  %25 = load i32, i32* %x, align 4
  %26 = load i32, i32* %y, align 4
  %call13 = call %struct._GdkPoint* @new_point(i32 %25, i32 %26)
  %27 = bitcast %struct._GdkPoint* %call13 to i8*
  %call14 = call %struct._GList* @g_list_insert_before(%struct._GList* %23, %struct._GList* %24, i8* %27)
  %28 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points15 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %28, i32 0, i32 1
  store %struct._GList* %call14, %struct._GList** %points15, align 8
  %29 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %obj16 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %29, i32 0, i32 0
  %30 = load %struct.Object_t*, %struct.Object_t** %obj16, align 8
  %31 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %32 = bitcast %struct.PolygonProperties_t* %31 to i8*
  call void @polygon_fill_info_tab(%struct.Object_t* %30, i8* %32)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @append_button_clicked(%struct._GtkWidget* %widget, %struct.PolygonProperties_t* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca %struct.PolygonProperties_t*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.PolygonProperties_t* %data, %struct.PolygonProperties_t** %data.addr, align 8
  %0 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %x1 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %0, i32 0, i32 3
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %x1, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkSpinButton*
  %call3 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %3)
  store i32 %call3, i32* %x, align 4
  %4 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %y4 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %4, i32 0, i32 4
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %y4, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_spin_button_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkSpinButton*
  %call7 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %7)
  store i32 %call7, i32* %y, align 4
  %8 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %obj = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %8, i32 0, i32 0
  %9 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %10 = bitcast %struct.Object_t* %9 to %struct.Polygon_t*
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* %y, align 4
  call void @polygon_append_point(%struct.Polygon_t* %10, i32 %11, i32 %12)
  %13 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %obj8 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %13, i32 0, i32 0
  %14 = load %struct.Object_t*, %struct.Object_t** %obj8, align 8
  %15 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %16 = bitcast %struct.PolygonProperties_t* %15 to i8*
  call void @polygon_fill_info_tab(%struct.Object_t* %14, i8* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @remove_button_clicked(%struct._GtkWidget* %widget, %struct.PolygonProperties_t* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca %struct.PolygonProperties_t*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %polygon = alloca %struct.Polygon_t*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.PolygonProperties_t* %data, %struct.PolygonProperties_t** %data.addr, align 8
  %0 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %store = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %0, i32 0, i32 1
  %1 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %2 = bitcast %struct._GtkListStore* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_model_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %3, %struct._GtkTreeModel** %model, align 8
  %4 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %selection = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %4, i32 0, i32 2
  %5 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %call2 = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %5, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %obj = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %6, i32 0, i32 0
  %7 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %8 = bitcast %struct.Object_t* %7 to %struct.Polygon_t*
  store %struct.Polygon_t* %8, %struct.Polygon_t** %polygon, align 8
  %9 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %9, %struct._GtkTreeIter* %iter, i32 0, %struct._GdkPoint** %point, i32 -1)
  %10 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %points, align 8
  %12 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %13 = bitcast %struct._GdkPoint* %12 to i8*
  %call3 = call %struct._GList* @g_list_remove(%struct._GList* %11, i8* %13)
  %14 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points4 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %14, i32 0, i32 1
  store %struct._GList* %call3, %struct._GList** %points4, align 8
  %15 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %16 = bitcast %struct._GdkPoint* %15 to i8*
  call void @g_free(i8* %16)
  %17 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %obj5 = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %17, i32 0, i32 0
  %18 = load %struct.Object_t*, %struct.Object_t** %obj5, align 8
  %19 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %20 = bitcast %struct.PolygonProperties_t* %19 to i8*
  call void @polygon_fill_info_tab(%struct.Object_t* %18, i8* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

declare void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @select_row_cb(%struct._GtkTreeSelection* %selection, %struct.PolygonProperties_t* %data) #0 {
entry:
  %selection.addr = alloca %struct._GtkTreeSelection*, align 8
  %data.addr = alloca %struct.PolygonProperties_t*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  store %struct._GtkTreeSelection* %selection, %struct._GtkTreeSelection** %selection.addr, align 8
  store %struct.PolygonProperties_t* %data, %struct.PolygonProperties_t** %data.addr, align 8
  %0 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection.addr, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %0, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %1, %struct._GtkTreeIter* %iter, i32 0, %struct._GdkPoint** %point, i32 -1)
  %2 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  store %struct._GdkPoint* %2, %struct._GdkPoint** @_sash_point, align 8
  %3 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %x = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %3, i32 0, i32 3
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %x, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_spin_button_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkSpinButton*
  %7 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x3 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %7, i32 0, i32 0
  %8 = load i32, i32* %x3, align 4
  %conv = sitofp i32 %8 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %6, double %conv)
  %9 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %y = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %9, i32 0, i32 4
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %y, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_spin_button_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkSpinButton*
  %13 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y6 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %13, i32 0, i32 1
  %14 = load i32, i32* %y6, align 4
  %conv7 = sitofp i32 %14 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %12, double %conv7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare void @g_object_set(i8*, i8*, ...) #1

declare i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #2

declare void @edit_area_info_dialog_emit_geometry_signal(%struct.AreaInfoDialog_t*) #1

declare i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection*, %struct._GtkTreeModel**, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_insert_before(%struct._GList*, %struct._GList*, i8*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare void @gtk_spin_button_set_value(%struct._GtkSpinButton*, double) #1

declare i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i32) #1

declare void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #1

declare i32 @g_source_remove(i32) #1

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @update_timeout(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %props = alloca %struct.PolygonProperties_t*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.PolygonProperties_t*
  store %struct.PolygonProperties_t* %1, %struct.PolygonProperties_t** %props, align 8
  %2 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %props, align 8
  %obj = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %2, i32 0, i32 0
  %3 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %4 = load i8*, i8** %data.addr, align 8
  call void @polygon_fill_info_tab(%struct.Object_t* %3, i8* %4)
  ret i32 0
}

declare void @gtk_list_store_clear(%struct._GtkListStore*) #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind uwtable
define internal void @set_buttons_sensitivity(%struct.PolygonProperties_t* %data) #0 {
entry:
  %data.addr = alloca %struct.PolygonProperties_t*, align 8
  %rows = alloca i32, align 4
  store %struct.PolygonProperties_t* %data, %struct.PolygonProperties_t** %data.addr, align 8
  %0 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %store = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %0, i32 0, i32 1
  %1 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %2 = bitcast %struct._GtkListStore* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_model_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeModel*
  %call2 = call i32 @gtk_tree_model_iter_n_children(%struct._GtkTreeModel* %3, %struct._GtkTreeIter* null)
  store i32 %call2, i32* %rows, align 4
  %4 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %insert = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %4, i32 0, i32 6
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %insert, align 8
  %6 = load i32, i32* %rows, align 4
  %cmp = icmp ne i32 %6, 99
  %conv = zext i1 %cmp to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %5, i32 %conv)
  %7 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %append = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %7, i32 0, i32 7
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %append, align 8
  %9 = load i32, i32* %rows, align 4
  %cmp3 = icmp ne i32 %9, 99
  %conv4 = zext i1 %cmp3 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %8, i32 %conv4)
  %10 = load %struct.PolygonProperties_t*, %struct.PolygonProperties_t** %data.addr, align 8
  %remove = getelementptr inbounds %struct.PolygonProperties_t, %struct.PolygonProperties_t* %10, i32 0, i32 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %remove, align 8
  %12 = load i32, i32* %rows, align 4
  %cmp5 = icmp sgt i32 %12, 2
  %conv6 = zext i1 %cmp5 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %11, i32 %conv6)
  ret void
}

declare i32 @gtk_tree_model_iter_n_children(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare i32 @get_real_coord(i32) #1

; Function Attrs: nounwind uwtable
define internal void @polygon_handle_popup(%struct._GdkEventButton* %event, i32 %near_sash, i32 %near_edge) #0 {
entry:
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %near_sash.addr = alloca i32, align 4
  %near_edge.addr = alloca i32, align 4
  %popup = alloca %struct._GtkWidget*, align 8
  %delete = alloca %struct._GtkWidget*, align 8
  %insert = alloca %struct._GtkWidget*, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store i32 %near_sash, i32* %near_sash.addr, align 4
  store i32 %near_edge, i32* %near_edge.addr, align 4
  %call = call %struct._GtkWidget* @menu_get_widget(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0))
  store %struct._GtkWidget* %call, %struct._GtkWidget** %popup, align 8
  %call1 = call %struct._GtkWidget* @menu_get_widget(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i32 0, i32 0))
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %delete, align 8
  %call2 = call %struct._GtkWidget* @menu_get_widget(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %insert, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %delete, align 8
  %1 = load i32, i32* %near_sash.addr, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %0, i32 %1)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %insert, align 8
  %3 = load i32, i32* %near_edge.addr, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %2, i32 %3)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %popup, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_menu_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkMenu*
  %7 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %7, i32 0, i32 8
  %8 = load i32, i32* %button, align 4
  %9 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %time = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %9, i32 0, i32 3
  %10 = load i32, i32* %time, align 4
  call void @gtk_menu_popup(%struct._GtkMenu* %6, %struct._GtkWidget* null, %struct._GtkWidget* null, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)* null, i8* null, i32 %8, i32 %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @polygon_near_edge(%struct.Object_t* %obj, i32 %x, i32 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct.Object_t*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %polygon = alloca %struct.Polygon_t*, align 8
  %p = alloca %struct._GList*, align 8
  %first = alloca %struct._GdkPoint*, align 8
  %prev = alloca %struct._GdkPoint*, align 8
  %n = alloca i32, align 4
  %next1 = alloca %struct._GdkPoint*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Polygon_t*
  store %struct.Polygon_t* %1, %struct.Polygon_t** %polygon, align 8
  %2 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %2, i32 0, i32 1
  %3 = load %struct._GList*, %struct._GList** %points, align 8
  store %struct._GList* %3, %struct._GList** %p, align 8
  %4 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GdkPoint*
  store %struct._GdkPoint* %6, %struct._GdkPoint** %first, align 8
  %7 = load %struct._GdkPoint*, %struct._GdkPoint** %first, align 8
  store %struct._GdkPoint* %7, %struct._GdkPoint** %prev, align 8
  store i32 1, i32* %n, align 4
  %8 = load %struct._GList*, %struct._GList** %p, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %9, %struct._GList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load %struct._GList*, %struct._GList** %p, align 8
  %tobool = icmp ne %struct._GList* %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._GList*, %struct._GList** %p, align 8
  %data2 = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 0
  %12 = load i8*, i8** %data2, align 8
  %13 = bitcast i8* %12 to %struct._GdkPoint*
  store %struct._GdkPoint* %13, %struct._GdkPoint** %next1, align 8
  %14 = load %struct._GdkPoint*, %struct._GdkPoint** %prev, align 8
  %15 = load %struct._GdkPoint*, %struct._GdkPoint** %next1, align 8
  %16 = load i32, i32* %x.addr, align 4
  %17 = load i32, i32* %y.addr, align 4
  %call = call i32 @point_near_edge(%struct._GdkPoint* %14, %struct._GdkPoint* %15, i32 %16, i32 %17)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %18 = load i32, i32* %n, align 4
  store i32 %18, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %19 = load %struct._GdkPoint*, %struct._GdkPoint** %next1, align 8
  store %struct._GdkPoint* %19, %struct._GdkPoint** %prev, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load %struct._GList*, %struct._GList** %p, align 8
  %next4 = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 1
  %21 = load %struct._GList*, %struct._GList** %next4, align 8
  store %struct._GList* %21, %struct._GList** %p, align 8
  %22 = load i32, i32* %n, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._GdkPoint*, %struct._GdkPoint** %prev, align 8
  %24 = load %struct._GdkPoint*, %struct._GdkPoint** %first, align 8
  %25 = load i32, i32* %x.addr, align 4
  %26 = load i32, i32* %y.addr, align 4
  %call5 = call i32 @point_near_edge(%struct._GdkPoint* %23, %struct._GdkPoint* %24, i32 %25, i32 %26)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %27 = load i32, i32* %n, align 4
  %add = add nsw i32 %27, 1
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare void @object_do_popup(%struct.Object_t*, %struct._GdkEventButton*) #1

declare %struct._GtkWidget* @menu_get_widget(i8*) #1

declare void @gtk_menu_popup(%struct._GtkMenu*, %struct._GtkWidget*, %struct._GtkWidget*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @point_near_edge(%struct._GdkPoint* %first, %struct._GdkPoint* %second, i32 %x, i32 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %first.addr = alloca %struct._GdkPoint*, align 8
  %second.addr = alloca %struct._GdkPoint*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %den = alloca i32, align 4
  %nom = alloca i32, align 4
  %u = alloca double, align 8
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  store %struct._GdkPoint* %first, %struct._GdkPoint** %first.addr, align 8
  store %struct._GdkPoint* %second, %struct._GdkPoint** %second.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct._GdkPoint*, %struct._GdkPoint** %first.addr, align 8
  %x1 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %0, i32 0, i32 0
  %1 = load i32, i32* %x1, align 4
  %2 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %1, %2
  %3 = load %struct._GdkPoint*, %struct._GdkPoint** %first.addr, align 8
  %x2 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %3, i32 0, i32 0
  %4 = load i32, i32* %x2, align 4
  %5 = load %struct._GdkPoint*, %struct._GdkPoint** %second.addr, align 8
  %x3 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %5, i32 0, i32 0
  %6 = load i32, i32* %x3, align 4
  %sub4 = sub nsw i32 %4, %6
  %mul = mul nsw i32 %sub, %sub4
  %7 = load %struct._GdkPoint*, %struct._GdkPoint** %first.addr, align 8
  %y5 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %7, i32 0, i32 1
  %8 = load i32, i32* %y5, align 4
  %9 = load i32, i32* %y.addr, align 4
  %sub6 = sub nsw i32 %8, %9
  %10 = load %struct._GdkPoint*, %struct._GdkPoint** %first.addr, align 8
  %y7 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %10, i32 0, i32 1
  %11 = load i32, i32* %y7, align 4
  %12 = load %struct._GdkPoint*, %struct._GdkPoint** %second.addr, align 8
  %y8 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %12, i32 0, i32 1
  %13 = load i32, i32* %y8, align 4
  %sub9 = sub nsw i32 %11, %13
  %mul10 = mul nsw i32 %sub6, %sub9
  %add = add nsw i32 %mul, %mul10
  store i32 %add, i32* %den, align 4
  %14 = load %struct._GdkPoint*, %struct._GdkPoint** %second.addr, align 8
  %x11 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %14, i32 0, i32 0
  %15 = load i32, i32* %x11, align 4
  %16 = load %struct._GdkPoint*, %struct._GdkPoint** %first.addr, align 8
  %x12 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %16, i32 0, i32 0
  %17 = load i32, i32* %x12, align 4
  %sub13 = sub nsw i32 %15, %17
  %18 = load %struct._GdkPoint*, %struct._GdkPoint** %second.addr, align 8
  %x14 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %18, i32 0, i32 0
  %19 = load i32, i32* %x14, align 4
  %20 = load %struct._GdkPoint*, %struct._GdkPoint** %first.addr, align 8
  %x15 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %20, i32 0, i32 0
  %21 = load i32, i32* %x15, align 4
  %sub16 = sub nsw i32 %19, %21
  %mul17 = mul nsw i32 %sub13, %sub16
  %22 = load %struct._GdkPoint*, %struct._GdkPoint** %second.addr, align 8
  %y18 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %22, i32 0, i32 1
  %23 = load i32, i32* %y18, align 4
  %24 = load %struct._GdkPoint*, %struct._GdkPoint** %first.addr, align 8
  %y19 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %24, i32 0, i32 1
  %25 = load i32, i32* %y19, align 4
  %sub20 = sub nsw i32 %23, %25
  %26 = load %struct._GdkPoint*, %struct._GdkPoint** %second.addr, align 8
  %y21 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %26, i32 0, i32 1
  %27 = load i32, i32* %y21, align 4
  %28 = load %struct._GdkPoint*, %struct._GdkPoint** %first.addr, align 8
  %y22 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %28, i32 0, i32 1
  %29 = load i32, i32* %y22, align 4
  %sub23 = sub nsw i32 %27, %29
  %mul24 = mul nsw i32 %sub20, %sub23
  %add25 = add nsw i32 %mul17, %mul24
  store i32 %add25, i32* %nom, align 4
  %30 = load i32, i32* %den, align 4
  %conv = sitofp i32 %30 to double
  %31 = load i32, i32* %nom, align 4
  %conv26 = sitofp i32 %31 to double
  %div = fdiv double %conv, %conv26
  store double %div, double* %u, align 8
  %32 = load double, double* %u, align 8
  %cmp = fcmp oge double %32, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %33 = load double, double* %u, align 8
  %cmp28 = fcmp ole double %33, 1.000000e+00
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %34 = load %struct._GdkPoint*, %struct._GdkPoint** %first.addr, align 8
  %x30 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %34, i32 0, i32 0
  %35 = load i32, i32* %x30, align 4
  %36 = load double, double* %u, align 8
  %37 = load %struct._GdkPoint*, %struct._GdkPoint** %second.addr, align 8
  %x31 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %37, i32 0, i32 0
  %38 = load i32, i32* %x31, align 4
  %39 = load %struct._GdkPoint*, %struct._GdkPoint** %first.addr, align 8
  %x32 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %39, i32 0, i32 0
  %40 = load i32, i32* %x32, align 4
  %sub33 = sub nsw i32 %38, %40
  %conv34 = sitofp i32 %sub33 to double
  %mul35 = fmul double %36, %conv34
  %conv36 = fptosi double %mul35 to i32
  %add37 = add nsw i32 %35, %conv36
  %41 = load i32, i32* %x.addr, align 4
  %sub38 = sub nsw i32 %add37, %41
  store i32 %sub38, i32* %sx, align 4
  %42 = load %struct._GdkPoint*, %struct._GdkPoint** %first.addr, align 8
  %y39 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %42, i32 0, i32 1
  %43 = load i32, i32* %y39, align 4
  %44 = load double, double* %u, align 8
  %45 = load %struct._GdkPoint*, %struct._GdkPoint** %second.addr, align 8
  %y40 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %45, i32 0, i32 1
  %46 = load i32, i32* %y40, align 4
  %47 = load %struct._GdkPoint*, %struct._GdkPoint** %first.addr, align 8
  %y41 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %47, i32 0, i32 1
  %48 = load i32, i32* %y41, align 4
  %sub42 = sub nsw i32 %46, %48
  %conv43 = sitofp i32 %sub42 to double
  %mul44 = fmul double %44, %conv43
  %conv45 = fptosi double %mul44 to i32
  %add46 = add nsw i32 %43, %conv45
  %49 = load i32, i32* %y.addr, align 4
  %sub47 = sub nsw i32 %add46, %49
  store i32 %sub47, i32* %sy, align 4
  %50 = load i32, i32* %sx, align 4
  %51 = load i32, i32* %sx, align 4
  %mul48 = mul nsw i32 %50, %51
  %52 = load i32, i32* %sy, align 4
  %53 = load i32, i32* %sy, align 4
  %mul49 = mul nsw i32 %52, %53
  %add50 = add nsw i32 %mul48, %mul49
  %cmp51 = icmp sle i32 %add50, 25
  %conv52 = zext i1 %cmp51 to i32
  store i32 %conv52, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define internal i32 @polygon_factory_finish(%struct.Object_t* %obj, i32 %x, i32 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct.Object_t*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %polygon = alloca %struct.Polygon_t*, align 8
  %prev_point = alloca %struct._GdkPoint*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Polygon_t*
  store %struct.Polygon_t* %1, %struct.Polygon_t** %polygon, align 8
  %2 = load %struct._GList*, %struct._GList** @_prev_link, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GdkPoint*
  store %struct._GdkPoint* %4, %struct._GdkPoint** %prev_point, align 8
  %5 = load i32, i32* %x.addr, align 4
  %6 = load %struct._GdkPoint*, %struct._GdkPoint** %prev_point, align 8
  %x1 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %6, i32 0, i32 0
  %7 = load i32, i32* %x1, align 4
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %8 = load i32, i32* %y.addr, align 4
  %9 = load %struct._GdkPoint*, %struct._GdkPoint** %prev_point, align 8
  %y2 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %9, i32 0, i32 1
  %10 = load i32, i32* %y2, align 4
  %cmp3 = icmp eq i32 %8, %10
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  call void @polygon_remove_last_point(%struct.Polygon_t* %11)
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %12 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %13 = load i32, i32* %x.addr, align 4
  %14 = load i32, i32* %y.addr, align 4
  call void @polygon_append_point(%struct.Polygon_t* %12, i32 %13, i32 %14)
  %15 = load %struct._GList*, %struct._GList** @_prev_link, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 1
  %16 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %16, %struct._GList** @_prev_link, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @polygon_factory_cancel(%struct._GdkEventButton* %event, %struct.Object_t* %obj) #0 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %obj.addr = alloca %struct.Object_t*, align 8
  %polygon = alloca %struct.Polygon_t*, align 8
  %link = alloca %struct._GList*, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %0, i32 0, i32 7
  %1 = load i32, i32* %state, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %3 = bitcast %struct.Object_t* %2 to %struct.Polygon_t*
  store %struct.Polygon_t* %3, %struct.Polygon_t** %polygon, align 8
  %4 = load %struct._GList*, %struct._GList** @_prev_link, align 8
  store %struct._GList* %4, %struct._GList** %link, align 8
  %5 = load %struct._GList*, %struct._GList** @_prev_link, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 2
  %6 = load %struct._GList*, %struct._GList** %prev, align 8
  store %struct._GList* %6, %struct._GList** @_prev_link, align 8
  %7 = load %struct._GList*, %struct._GList** %link, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct._GdkPoint*
  %10 = bitcast %struct._GdkPoint* %9 to i8*
  call void @g_free(i8* %10)
  %11 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %points, align 8
  %13 = load %struct._GList*, %struct._GList** %link, align 8
  %call = call %struct._GList* @g_list_remove_link(%struct._GList* %12, %struct._GList* %13)
  %14 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points1 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %14, i32 0, i32 1
  store %struct._GList* %call, %struct._GList** %points1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  %15 = load %struct._GList*, %struct._GList** @_prev_link, align 8
  %cmp = icmp eq %struct._GList* %15, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal %struct.Object_t* @polygon_factory_create_object(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %points = alloca %struct._GList*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %call = call %struct._GdkPoint* @new_point(i32 %0, i32 %1)
  %2 = bitcast %struct._GdkPoint* %call to i8*
  %call1 = call %struct._GList* @g_list_append(%struct._GList* null, i8* %2)
  store %struct._GList* %call1, %struct._GList** @_prev_link, align 8
  store %struct._GList* %call1, %struct._GList** %points, align 8
  %3 = load %struct._GList*, %struct._GList** %points, align 8
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %y.addr, align 4
  %call2 = call %struct._GdkPoint* @new_point(i32 %4, i32 %5)
  %6 = bitcast %struct._GdkPoint* %call2 to i8*
  %call3 = call %struct._GList* @g_list_append(%struct._GList* %3, i8* %6)
  store %struct._GList* %call3, %struct._GList** %points, align 8
  %7 = load %struct._GList*, %struct._GList** %points, align 8
  %call4 = call %struct.Object_t* @create_polygon(%struct._GList* %7)
  ret %struct.Object_t* %call4
}

; Function Attrs: nounwind uwtable
define internal void @polygon_factory_set_xy(%struct.Object_t* %obj, i32 %state, i32 %x, i32 %y) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %state.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %polygon = alloca %struct.Polygon_t*, align 8
  %last = alloca %struct._GList*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  %prev = alloca %struct._GdkPoint*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Polygon_t*
  store %struct.Polygon_t* %1, %struct.Polygon_t** %polygon, align 8
  %2 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %2, i32 0, i32 1
  %3 = load %struct._GList*, %struct._GList** %points, align 8
  %call = call %struct._GList* @g_list_last(%struct._GList* %3)
  store %struct._GList* %call, %struct._GList** %last, align 8
  %4 = load %struct._GList*, %struct._GList** %last, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GdkPoint*
  store %struct._GdkPoint* %6, %struct._GdkPoint** %point, align 8
  %7 = load %struct._GList*, %struct._GList** %last, align 8
  %prev1 = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 2
  %8 = load %struct._GList*, %struct._GList** %prev1, align 8
  %data2 = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data2, align 8
  %10 = bitcast i8* %9 to %struct._GdkPoint*
  store %struct._GdkPoint* %10, %struct._GdkPoint** %prev, align 8
  %11 = load i32, i32* %x.addr, align 4
  %12 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %x3 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %12, i32 0, i32 0
  store i32 %11, i32* %x3, align 4
  %13 = load i32, i32* %y.addr, align 4
  %14 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %y4 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %14, i32 0, i32 1
  store i32 %13, i32* %y4, align 4
  %15 = load i32, i32* %x.addr, align 4
  %16 = load %struct._GdkPoint*, %struct._GdkPoint** %prev, align 8
  %x5 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %16, i32 0, i32 0
  %17 = load i32, i32* %x5, align 4
  %sub = sub nsw i32 %15, %17
  %18 = load i32, i32* %y.addr, align 4
  %19 = load %struct._GdkPoint*, %struct._GdkPoint** %prev, align 8
  %y6 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %19, i32 0, i32 1
  %20 = load i32, i32* %y6, align 4
  %sub7 = sub nsw i32 %18, %20
  call void @main_set_dimension(i32 %sub, i32 %sub7)
  ret void
}

declare void @main_set_dimension(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
