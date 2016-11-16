; ModuleID = './plug-ins/imagemap/imap_circle.bc'
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
%struct.ObjectFactory_t = type { %struct.Object_t*, i32 (%struct.Object_t*, i32, i32)*, i32 (%struct._GdkEventButton*, %struct.Object_t*)*, %struct.Object_t* (i32, i32)*, void (%struct.Object_t*, i32, i32, i32)* }
%struct.Circle_t = type { %struct.Object_t, i32, i32, i32 }
%struct.CircleProperties_t = type { %struct.Object_t*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@circle_class = internal global %struct.ObjectClass_t { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.AreaInfoDialog_t* null, %struct._GdkDrawable* null, %struct._GdkDrawable* null, i32 (%struct.Object_t*)* @circle_is_valid, void (%struct.Object_t*)* null, %struct.Object_t* (%struct.Object_t*)* @circle_clone, void (%struct.Object_t*, %struct.Object_t*)* @circle_assign, void (%struct.Object_t*)* null, void (%struct.Object_t*, %struct._cairo*)* @circle_draw, void (%struct.Object_t*, %struct._cairo*)* @circle_draw_sashes, void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)* @circle_near_sash, i32 (%struct.Object_t*, i32, i32)* @circle_point_is_on, void (%struct.Object_t*, i32*, i32*, i32*, i32*)* @circle_get_dimensions, void (%struct.Object_t*, i32, i32)* @circle_resize, void (%struct.Object_t*, i32, i32)* @circle_move, i8* (%struct._GtkWidget*)* @circle_create_info_widget, void (%struct.Object_t*, i8*)* @circle_fill_info_tab, void (%struct.Object_t*, i8*)* @circle_fill_info_tab, void (%struct.Object_t*, i8*)* @circle_set_initial_focus, void (%struct.Object_t*, i8*)* @circle_update, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)* @circle_write_csim, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)* @circle_write_cern, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)* @circle_write_ncsa, void (%struct.Object_t*, %struct._GdkEventButton*)* @object_do_popup, i8* ()* @circle_get_stock_icon_name }, align 8
@circle_factory1 = internal global %struct.ObjectFactory_t { %struct.Object_t* null, i32 (%struct.Object_t*, i32, i32)* null, i32 (%struct._GdkEventButton*, %struct.Object_t*)* null, %struct.Object_t* (i32, i32)* @circle_factory_create_object1, void (%struct.Object_t*, i32, i32, i32)* @circle_factory_set_xy1 }, align 8
@circle_factory2 = internal global %struct.ObjectFactory_t { %struct.Object_t* null, i32 (%struct.Object_t*, i32, i32)* null, i32 (%struct._GdkEventButton*, %struct.Object_t*)* null, %struct.Object_t* (i32, i32)* @circle_factory_create_object2, void (%struct.Object_t*, i32, i32, i32)* @circle_factory_set_xy2 }, align 8
@.str = private unnamed_addr constant [8 x i8] c"C_ircle\00", align 1
@sash_x = internal global i32 0, align 4
@sash_y = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Center _x:\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"pixels\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Center _y:\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"_Radius:\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"\22circle\22 coords=\22%d,%d,%d\22\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"circ (%d,%d) %d\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"circle %s %d,%d %d,%d\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"imap-circle\00", align 1
@_start_x = internal global i32 0, align 4
@_start_y = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define %struct.Object_t* @create_circle(i32 %x, i32 %y, i32 %r) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %circle = alloca %struct.Circle_t*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  %call = call noalias i8* @g_malloc_n(i64 1, i64 104)
  %0 = bitcast i8* %call to %struct.Circle_t*
  store %struct.Circle_t* %0, %struct.Circle_t** %circle, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x1 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %2, i32 0, i32 1
  store i32 %1, i32* %x1, align 4
  %3 = load i32, i32* %y.addr, align 4
  %4 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y2 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %4, i32 0, i32 2
  store i32 %3, i32* %y2, align 4
  %5 = load i32, i32* %r.addr, align 4
  %6 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r3 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %6, i32 0, i32 3
  store i32 %5, i32* %r3, align 4
  %7 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %obj = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %7, i32 0, i32 0
  %call4 = call %struct.Object_t* @object_init(%struct.Object_t* %obj, %struct.ObjectClass_t* @circle_class)
  ret %struct.Object_t* %call4
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct.Object_t* @object_init(%struct.Object_t*, %struct.ObjectClass_t*) #1

; Function Attrs: nounwind uwtable
define %struct.ObjectFactory_t* @get_circle_factory(i32 %state) #0 {
entry:
  %state.addr = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  %0 = load i32, i32* %state.addr, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, %struct.ObjectFactory_t* @circle_factory1, %struct.ObjectFactory_t* @circle_factory2
  ret %struct.ObjectFactory_t* %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @circle_is_valid(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Circle_t*
  %r = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %1, i32 0, i32 3
  %2 = load i32, i32* %r, align 4
  %cmp = icmp sgt i32 %2, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal %struct.Object_t* @circle_clone(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %circle = alloca %struct.Circle_t*, align 8
  %clone = alloca %struct.Circle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Circle_t*
  store %struct.Circle_t* %1, %struct.Circle_t** %circle, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 104)
  %2 = bitcast i8* %call to %struct.Circle_t*
  store %struct.Circle_t* %2, %struct.Circle_t** %clone, align 8
  %3 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %3, i32 0, i32 1
  %4 = load i32, i32* %x, align 4
  %5 = load %struct.Circle_t*, %struct.Circle_t** %clone, align 8
  %x1 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %5, i32 0, i32 1
  store i32 %4, i32* %x1, align 4
  %6 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %6, i32 0, i32 2
  %7 = load i32, i32* %y, align 4
  %8 = load %struct.Circle_t*, %struct.Circle_t** %clone, align 8
  %y2 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %8, i32 0, i32 2
  store i32 %7, i32* %y2, align 4
  %9 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %9, i32 0, i32 3
  %10 = load i32, i32* %r, align 4
  %11 = load %struct.Circle_t*, %struct.Circle_t** %clone, align 8
  %r3 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %11, i32 0, i32 3
  store i32 %10, i32* %r3, align 4
  %12 = load %struct.Circle_t*, %struct.Circle_t** %clone, align 8
  %obj4 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %12, i32 0, i32 0
  ret %struct.Object_t* %obj4
}

; Function Attrs: nounwind uwtable
define internal void @circle_assign(%struct.Object_t* %obj, %struct.Object_t* %des) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %des.addr = alloca %struct.Object_t*, align 8
  %src_circle = alloca %struct.Circle_t*, align 8
  %des_circle = alloca %struct.Circle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store %struct.Object_t* %des, %struct.Object_t** %des.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Circle_t*
  store %struct.Circle_t* %1, %struct.Circle_t** %src_circle, align 8
  %2 = load %struct.Object_t*, %struct.Object_t** %des.addr, align 8
  %3 = bitcast %struct.Object_t* %2 to %struct.Circle_t*
  store %struct.Circle_t* %3, %struct.Circle_t** %des_circle, align 8
  %4 = load %struct.Circle_t*, %struct.Circle_t** %src_circle, align 8
  %x = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %4, i32 0, i32 1
  %5 = load i32, i32* %x, align 4
  %6 = load %struct.Circle_t*, %struct.Circle_t** %des_circle, align 8
  %x1 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %6, i32 0, i32 1
  store i32 %5, i32* %x1, align 4
  %7 = load %struct.Circle_t*, %struct.Circle_t** %src_circle, align 8
  %y = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %7, i32 0, i32 2
  %8 = load i32, i32* %y, align 4
  %9 = load %struct.Circle_t*, %struct.Circle_t** %des_circle, align 8
  %y2 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %9, i32 0, i32 2
  store i32 %8, i32* %y2, align 4
  %10 = load %struct.Circle_t*, %struct.Circle_t** %src_circle, align 8
  %r = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %10, i32 0, i32 3
  %11 = load i32, i32* %r, align 4
  %12 = load %struct.Circle_t*, %struct.Circle_t** %des_circle, align 8
  %r3 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %12, i32 0, i32 3
  store i32 %11, i32* %r3, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @circle_draw(%struct.Object_t* %obj, %struct._cairo* %cr) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %circle = alloca %struct.Circle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Circle_t*
  store %struct.Circle_t* %1, %struct.Circle_t** %circle, align 8
  %2 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %3 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %3, i32 0, i32 1
  %4 = load i32, i32* %x, align 4
  %5 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %5, i32 0, i32 2
  %6 = load i32, i32* %y, align 4
  %7 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %7, i32 0, i32 3
  %8 = load i32, i32* %r, align 4
  call void @draw_circle(%struct._cairo* %2, i32 %4, i32 %6, i32 %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @circle_draw_sashes(%struct.Object_t* %obj, %struct._cairo* %cr) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %circle = alloca %struct.Circle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Circle_t*
  store %struct.Circle_t* %1, %struct.Circle_t** %circle, align 8
  %2 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %3 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %3, i32 0, i32 1
  %4 = load i32, i32* %x, align 4
  %5 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %5, i32 0, i32 3
  %6 = load i32, i32* %r, align 4
  %sub = sub nsw i32 %4, %6
  %7 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %7, i32 0, i32 2
  %8 = load i32, i32* %y, align 4
  %9 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r1 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %9, i32 0, i32 3
  %10 = load i32, i32* %r1, align 4
  %sub2 = sub nsw i32 %8, %10
  call void @draw_sash(%struct._cairo* %2, i32 %sub, i32 %sub2)
  %11 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %12 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x3 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %12, i32 0, i32 1
  %13 = load i32, i32* %x3, align 4
  %14 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r4 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %14, i32 0, i32 3
  %15 = load i32, i32* %r4, align 4
  %add = add nsw i32 %13, %15
  %16 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y5 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %16, i32 0, i32 2
  %17 = load i32, i32* %y5, align 4
  %18 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r6 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %18, i32 0, i32 3
  %19 = load i32, i32* %r6, align 4
  %sub7 = sub nsw i32 %17, %19
  call void @draw_sash(%struct._cairo* %11, i32 %add, i32 %sub7)
  %20 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %21 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x8 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %21, i32 0, i32 1
  %22 = load i32, i32* %x8, align 4
  %23 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r9 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %23, i32 0, i32 3
  %24 = load i32, i32* %r9, align 4
  %sub10 = sub nsw i32 %22, %24
  %25 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y11 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %25, i32 0, i32 2
  %26 = load i32, i32* %y11, align 4
  %27 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r12 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %27, i32 0, i32 3
  %28 = load i32, i32* %r12, align 4
  %add13 = add nsw i32 %26, %28
  call void @draw_sash(%struct._cairo* %20, i32 %sub10, i32 %add13)
  %29 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %30 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x14 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %30, i32 0, i32 1
  %31 = load i32, i32* %x14, align 4
  %32 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r15 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %32, i32 0, i32 3
  %33 = load i32, i32* %r15, align 4
  %add16 = add nsw i32 %31, %33
  %34 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y17 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %34, i32 0, i32 2
  %35 = load i32, i32* %y17, align 4
  %36 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r18 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %36, i32 0, i32 3
  %37 = load i32, i32* %r18, align 4
  %add19 = add nsw i32 %35, %37
  call void @draw_sash(%struct._cairo* %29, i32 %add16, i32 %add19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void (%struct.Object_t*, i32, i32)* @circle_near_sash(%struct.Object_t* %obj, i32 %x, i32 %y) #0 {
entry:
  %retval = alloca void (%struct.Object_t*, i32, i32)*, align 8
  %obj.addr = alloca %struct.Object_t*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %circle = alloca %struct.Circle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Circle_t*
  store %struct.Circle_t* %1, %struct.Circle_t** %circle, align 8
  %2 = load i32, i32* %x.addr, align 4
  store i32 %2, i32* @sash_x, align 4
  %3 = load i32, i32* %y.addr, align 4
  store i32 %3, i32* @sash_y, align 4
  %4 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x1 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %4, i32 0, i32 1
  %5 = load i32, i32* %x1, align 4
  %6 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %6, i32 0, i32 3
  %7 = load i32, i32* %r, align 4
  %sub = sub nsw i32 %5, %7
  %8 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y2 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %8, i32 0, i32 2
  %9 = load i32, i32* %y2, align 4
  %10 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r3 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %10, i32 0, i32 3
  %11 = load i32, i32* %r3, align 4
  %sub4 = sub nsw i32 %9, %11
  %12 = load i32, i32* %x.addr, align 4
  %13 = load i32, i32* %y.addr, align 4
  %call = call i32 @near_sash(i32 %sub, i32 %sub4, i32 %12, i32 %13)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %14 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x5 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %14, i32 0, i32 1
  %15 = load i32, i32* %x5, align 4
  %16 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r6 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %16, i32 0, i32 3
  %17 = load i32, i32* %r6, align 4
  %add = add nsw i32 %15, %17
  %18 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y7 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %18, i32 0, i32 2
  %19 = load i32, i32* %y7, align 4
  %20 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r8 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %20, i32 0, i32 3
  %21 = load i32, i32* %r8, align 4
  %sub9 = sub nsw i32 %19, %21
  %22 = load i32, i32* %x.addr, align 4
  %23 = load i32, i32* %y.addr, align 4
  %call10 = call i32 @near_sash(i32 %add, i32 %sub9, i32 %22, i32 %23)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %24 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x13 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %24, i32 0, i32 1
  %25 = load i32, i32* %x13, align 4
  %26 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r14 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %26, i32 0, i32 3
  %27 = load i32, i32* %r14, align 4
  %sub15 = sub nsw i32 %25, %27
  %28 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y16 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %28, i32 0, i32 2
  %29 = load i32, i32* %y16, align 4
  %30 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r17 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %30, i32 0, i32 3
  %31 = load i32, i32* %r17, align 4
  %add18 = add nsw i32 %29, %31
  %32 = load i32, i32* %x.addr, align 4
  %33 = load i32, i32* %y.addr, align 4
  %call19 = call i32 @near_sash(i32 %sub15, i32 %add18, i32 %32, i32 %33)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.12
  %34 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x22 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %34, i32 0, i32 1
  %35 = load i32, i32* %x22, align 4
  %36 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r23 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %36, i32 0, i32 3
  %37 = load i32, i32* %r23, align 4
  %add24 = add nsw i32 %35, %37
  %38 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y25 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %38, i32 0, i32 2
  %39 = load i32, i32* %y25, align 4
  %40 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r26 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %40, i32 0, i32 3
  %41 = load i32, i32* %r26, align 4
  %add27 = add nsw i32 %39, %41
  %42 = load i32, i32* %x.addr, align 4
  %43 = load i32, i32* %y.addr, align 4
  %call28 = call i32 @near_sash(i32 %add24, i32 %add27, i32 %42, i32 %43)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.21, %lor.lhs.false.12, %lor.lhs.false, %entry
  store void (%struct.Object_t*, i32, i32)* @move_sash, void (%struct.Object_t*, i32, i32)** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.21
  store void (%struct.Object_t*, i32, i32)* null, void (%struct.Object_t*, i32, i32)** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %44 = load void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)** %retval
  ret void (%struct.Object_t*, i32, i32)* %44
}

; Function Attrs: nounwind uwtable
define internal i32 @circle_point_is_on(%struct.Object_t* %obj, i32 %x, i32 %y) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %circle = alloca %struct.Circle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Circle_t*
  store %struct.Circle_t* %1, %struct.Circle_t** %circle, align 8
  %2 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x1 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %2, i32 0, i32 1
  %3 = load i32, i32* %x1, align 4
  %4 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %4, %3
  store i32 %sub, i32* %x.addr, align 4
  %5 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y2 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %5, i32 0, i32 2
  %6 = load i32, i32* %y2, align 4
  %7 = load i32, i32* %y.addr, align 4
  %sub3 = sub nsw i32 %7, %6
  store i32 %sub3, i32* %y.addr, align 4
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %x.addr, align 4
  %mul = mul nsw i32 %8, %9
  %10 = load i32, i32* %y.addr, align 4
  %11 = load i32, i32* %y.addr, align 4
  %mul4 = mul nsw i32 %10, %11
  %add = add nsw i32 %mul, %mul4
  %12 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %12, i32 0, i32 3
  %13 = load i32, i32* %r, align 4
  %14 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r5 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %14, i32 0, i32 3
  %15 = load i32, i32* %r5, align 4
  %mul6 = mul nsw i32 %13, %15
  %cmp = icmp sle i32 %add, %mul6
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @circle_get_dimensions(%struct.Object_t* %obj, i32* %x, i32* %y, i32* %width, i32* %height) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %circle = alloca %struct.Circle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Circle_t*
  store %struct.Circle_t* %1, %struct.Circle_t** %circle, align 8
  %2 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x1 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %2, i32 0, i32 1
  %3 = load i32, i32* %x1, align 4
  %4 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %4, i32 0, i32 3
  %5 = load i32, i32* %r, align 4
  %sub = sub nsw i32 %3, %5
  %6 = load i32*, i32** %x.addr, align 8
  store i32 %sub, i32* %6, align 4
  %7 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y2 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %7, i32 0, i32 2
  %8 = load i32, i32* %y2, align 4
  %9 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r3 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %9, i32 0, i32 3
  %10 = load i32, i32* %r3, align 4
  %sub4 = sub nsw i32 %8, %10
  %11 = load i32*, i32** %y.addr, align 8
  store i32 %sub4, i32* %11, align 4
  %12 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r5 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %12, i32 0, i32 3
  %13 = load i32, i32* %r5, align 4
  %mul = mul nsw i32 2, %13
  %14 = load i32*, i32** %height.addr, align 8
  store i32 %mul, i32* %14, align 4
  %15 = load i32*, i32** %width.addr, align 8
  store i32 %mul, i32* %15, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @circle_resize(%struct.Object_t* %obj, i32 %percentage_x, i32 %percentage_y) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %percentage_x.addr = alloca i32, align 4
  %percentage_y.addr = alloca i32, align 4
  %circle = alloca %struct.Circle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %percentage_x, i32* %percentage_x.addr, align 4
  store i32 %percentage_y, i32* %percentage_y.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Circle_t*
  store %struct.Circle_t* %1, %struct.Circle_t** %circle, align 8
  %2 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %2, i32 0, i32 1
  %3 = load i32, i32* %x, align 4
  %4 = load i32, i32* %percentage_x.addr, align 4
  %mul = mul nsw i32 %3, %4
  %div = sdiv i32 %mul, 100
  %5 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x1 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %5, i32 0, i32 1
  store i32 %div, i32* %x1, align 4
  %6 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %6, i32 0, i32 2
  %7 = load i32, i32* %y, align 4
  %8 = load i32, i32* %percentage_y.addr, align 4
  %mul2 = mul nsw i32 %7, %8
  %div3 = sdiv i32 %mul2, 100
  %9 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y4 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %9, i32 0, i32 2
  store i32 %div3, i32* %y4, align 4
  %10 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %10, i32 0, i32 3
  %11 = load i32, i32* %r, align 4
  %12 = load i32, i32* %percentage_x.addr, align 4
  %13 = load i32, i32* %percentage_y.addr, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %14 = load i32, i32* %percentage_x.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %percentage_y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ]
  %mul5 = mul nsw i32 %11, %cond
  %div6 = sdiv i32 %mul5, 100
  %16 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r7 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %16, i32 0, i32 3
  store i32 %div6, i32* %r7, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @circle_move(%struct.Object_t* %obj, i32 %dx, i32 %dy) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %circle = alloca %struct.Circle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Circle_t*
  store %struct.Circle_t* %1, %struct.Circle_t** %circle, align 8
  %2 = load i32, i32* %dx.addr, align 4
  %3 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %3, i32 0, i32 1
  %4 = load i32, i32* %x, align 4
  %add = add nsw i32 %4, %2
  store i32 %add, i32* %x, align 4
  %5 = load i32, i32* %dy.addr, align 4
  %6 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %6, i32 0, i32 2
  %7 = load i32, i32* %y, align 4
  %add1 = add nsw i32 %7, %5
  store i32 %add1, i32* %y, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @circle_create_info_widget(%struct._GtkWidget* %frame) #0 {
entry:
  %frame.addr = alloca %struct._GtkWidget*, align 8
  %props = alloca %struct.CircleProperties_t*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %max_width = alloca i32, align 4
  %max_height = alloca i32, align 4
  store %struct._GtkWidget* %frame, %struct._GtkWidget** %frame.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 32)
  %0 = bitcast i8* %call to %struct.CircleProperties_t*
  store %struct.CircleProperties_t* %0, %struct.CircleProperties_t** %props, align 8
  %call1 = call i32 @get_image_width()
  store i32 %call1, i32* %max_width, align 4
  %call2 = call i32 @get_image_height()
  store i32 %call2, i32* %max_height, align 4
  %call3 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %table, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %frame.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call4)
  %3 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %3, %struct._GtkWidget* %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_table_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call6)
  %7 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %7, i32 6)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_table_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %10, i32 6)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0)) #5
  %call11 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %12, i32 0, i32 0, i8* %call10)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %label, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %15 = load i32, i32* %max_width, align 4
  %sub = sub nsw i32 %15, 1
  %call12 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %13, %struct._GtkWidget* %14, i32 0, i32 1, i32 1, i32 0, i32 %sub)
  %16 = load %struct.CircleProperties_t*, %struct.CircleProperties_t** %props, align 8
  %x = getelementptr inbounds %struct.CircleProperties_t, %struct.CircleProperties_t* %16, i32 0, i32 1
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %x, align 8
  %17 = load %struct.CircleProperties_t*, %struct.CircleProperties_t** %props, align 8
  %x13 = getelementptr inbounds %struct.CircleProperties_t, %struct.CircleProperties_t* %17, i32 0, i32 1
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %x13, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %20 = load %struct.CircleProperties_t*, %struct.CircleProperties_t** %props, align 8
  %21 = bitcast %struct.CircleProperties_t* %20 to i8*
  %call14 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @x_changed_cb to void ()*), i8* %21, void (i8*, %struct._GClosure*)* null, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #5
  %call16 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %22, i32 0, i32 2, i8* %call15)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0)) #5
  %call18 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %23, i32 1, i32 0, i8* %call17)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %label, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %26 = load i32, i32* %max_height, align 4
  %sub19 = sub nsw i32 %26, 1
  %call20 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %24, %struct._GtkWidget* %25, i32 1, i32 1, i32 1, i32 0, i32 %sub19)
  %27 = load %struct.CircleProperties_t*, %struct.CircleProperties_t** %props, align 8
  %y = getelementptr inbounds %struct.CircleProperties_t, %struct.CircleProperties_t* %27, i32 0, i32 2
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %y, align 8
  %28 = load %struct.CircleProperties_t*, %struct.CircleProperties_t** %props, align 8
  %y21 = getelementptr inbounds %struct.CircleProperties_t, %struct.CircleProperties_t* %28, i32 0, i32 2
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %y21, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %31 = load %struct.CircleProperties_t*, %struct.CircleProperties_t** %props, align 8
  %32 = bitcast %struct.CircleProperties_t* %31 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @y_changed_cb to void ()*), i8* %32, void (i8*, %struct._GClosure*)* null, i32 0)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #5
  %call24 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %33, i32 1, i32 2, i8* %call23)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0)) #5
  %call26 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %34, i32 2, i32 0, i8* %call25)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %label, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call27 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %35, %struct._GtkWidget* %36, i32 2, i32 1, i32 1, i32 1, i32 2147483647)
  %37 = load %struct.CircleProperties_t*, %struct.CircleProperties_t** %props, align 8
  %r = getelementptr inbounds %struct.CircleProperties_t, %struct.CircleProperties_t* %37, i32 0, i32 3
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %r, align 8
  %38 = load %struct.CircleProperties_t*, %struct.CircleProperties_t** %props, align 8
  %r28 = getelementptr inbounds %struct.CircleProperties_t, %struct.CircleProperties_t* %38, i32 0, i32 3
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %r28, align 8
  %40 = bitcast %struct._GtkWidget* %39 to i8*
  %41 = load %struct.CircleProperties_t*, %struct.CircleProperties_t** %props, align 8
  %42 = bitcast %struct.CircleProperties_t* %41 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @r_changed_cb to void ()*), i8* %42, void (i8*, %struct._GClosure*)* null, i32 0)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #5
  %call31 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %43, i32 2, i32 2, i8* %call30)
  %44 = load %struct.CircleProperties_t*, %struct.CircleProperties_t** %props, align 8
  %45 = bitcast %struct.CircleProperties_t* %44 to i8*
  ret i8* %45
}

; Function Attrs: nounwind uwtable
define internal void @circle_fill_info_tab(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  %circle = alloca %struct.Circle_t*, align 8
  %props = alloca %struct.CircleProperties_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Circle_t*
  store %struct.Circle_t* %1, %struct.Circle_t** %circle, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = bitcast i8* %2 to %struct.CircleProperties_t*
  store %struct.CircleProperties_t* %3, %struct.CircleProperties_t** %props, align 8
  %4 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %5 = load %struct.CircleProperties_t*, %struct.CircleProperties_t** %props, align 8
  %obj1 = getelementptr inbounds %struct.CircleProperties_t, %struct.CircleProperties_t* %5, i32 0, i32 0
  store %struct.Object_t* %4, %struct.Object_t** %obj1, align 8
  %6 = load %struct.CircleProperties_t*, %struct.CircleProperties_t** %props, align 8
  %x = getelementptr inbounds %struct.CircleProperties_t, %struct.CircleProperties_t* %6, i32 0, i32 1
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %x, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call)
  %9 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkSpinButton*
  %10 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x3 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %10, i32 0, i32 1
  %11 = load i32, i32* %x3, align 4
  %conv = sitofp i32 %11 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %9, double %conv)
  %12 = load %struct.CircleProperties_t*, %struct.CircleProperties_t** %props, align 8
  %y = getelementptr inbounds %struct.CircleProperties_t, %struct.CircleProperties_t* %12, i32 0, i32 2
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %y, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_spin_button_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call4)
  %15 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkSpinButton*
  %16 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y6 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %16, i32 0, i32 2
  %17 = load i32, i32* %y6, align 4
  %conv7 = sitofp i32 %17 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %15, double %conv7)
  %18 = load %struct.CircleProperties_t*, %struct.CircleProperties_t** %props, align 8
  %r = getelementptr inbounds %struct.CircleProperties_t, %struct.CircleProperties_t* %18, i32 0, i32 3
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %r, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_spin_button_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call8)
  %21 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkSpinButton*
  %22 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r10 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %22, i32 0, i32 3
  %23 = load i32, i32* %r10, align 4
  %conv11 = sitofp i32 %23 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %21, double %conv11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @circle_set_initial_focus(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  %props = alloca %struct.CircleProperties_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.CircleProperties_t*
  store %struct.CircleProperties_t* %1, %struct.CircleProperties_t** %props, align 8
  %2 = load %struct.CircleProperties_t*, %struct.CircleProperties_t** %props, align 8
  %x = getelementptr inbounds %struct.CircleProperties_t, %struct.CircleProperties_t* %2, i32 0, i32 1
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %x, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @circle_update(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  %circle = alloca %struct.Circle_t*, align 8
  %props = alloca %struct.CircleProperties_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Circle_t*
  store %struct.Circle_t* %1, %struct.Circle_t** %circle, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = bitcast i8* %2 to %struct.CircleProperties_t*
  store %struct.CircleProperties_t* %3, %struct.CircleProperties_t** %props, align 8
  %4 = load %struct.CircleProperties_t*, %struct.CircleProperties_t** %props, align 8
  %x = getelementptr inbounds %struct.CircleProperties_t, %struct.CircleProperties_t* %4, i32 0, i32 1
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %x, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkSpinButton*
  %call2 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %7)
  %8 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x3 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %8, i32 0, i32 1
  store i32 %call2, i32* %x3, align 4
  %9 = load %struct.CircleProperties_t*, %struct.CircleProperties_t** %props, align 8
  %y = getelementptr inbounds %struct.CircleProperties_t, %struct.CircleProperties_t* %9, i32 0, i32 2
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %y, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_spin_button_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkSpinButton*
  %call6 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %12)
  %13 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y7 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %13, i32 0, i32 2
  store i32 %call6, i32* %y7, align 4
  %14 = load %struct.CircleProperties_t*, %struct.CircleProperties_t** %props, align 8
  %r = getelementptr inbounds %struct.CircleProperties_t, %struct.CircleProperties_t* %14, i32 0, i32 3
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %r, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_spin_button_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkSpinButton*
  %call10 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %17)
  %18 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r11 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %18, i32 0, i32 3
  store i32 %call10, i32* %r11, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @circle_write_csim(%struct.Object_t* %obj, i8* %param, void (i8*, i8*, ...)* %output) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %param.addr = alloca i8*, align 8
  %output.addr = alloca void (i8*, i8*, ...)*, align 8
  %circle = alloca %struct.Circle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %param, i8** %param.addr, align 8
  store void (i8*, i8*, ...)* %output, void (i8*, i8*, ...)** %output.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Circle_t*
  store %struct.Circle_t* %1, %struct.Circle_t** %circle, align 8
  %2 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %3 = load i8*, i8** %param.addr, align 8
  %4 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %4, i32 0, i32 1
  %5 = load i32, i32* %x, align 4
  %6 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %6, i32 0, i32 2
  %7 = load i32, i32* %y, align 4
  %8 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %8, i32 0, i32 3
  %9 = load i32, i32* %r, align 4
  call void (i8*, i8*, ...) %2(i8* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i32 %5, i32 %7, i32 %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @circle_write_cern(%struct.Object_t* %obj, i8* %param, void (i8*, i8*, ...)* %output) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %param.addr = alloca i8*, align 8
  %output.addr = alloca void (i8*, i8*, ...)*, align 8
  %circle = alloca %struct.Circle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %param, i8** %param.addr, align 8
  store void (i8*, i8*, ...)* %output, void (i8*, i8*, ...)** %output.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Circle_t*
  store %struct.Circle_t* %1, %struct.Circle_t** %circle, align 8
  %2 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %3 = load i8*, i8** %param.addr, align 8
  %4 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %4, i32 0, i32 1
  %5 = load i32, i32* %x, align 4
  %6 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %6, i32 0, i32 2
  %7 = load i32, i32* %y, align 4
  %8 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %8, i32 0, i32 3
  %9 = load i32, i32* %r, align 4
  call void (i8*, i8*, ...) %2(i8* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 %5, i32 %7, i32 %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @circle_write_ncsa(%struct.Object_t* %obj, i8* %param, void (i8*, i8*, ...)* %output) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %param.addr = alloca i8*, align 8
  %output.addr = alloca void (i8*, i8*, ...)*, align 8
  %circle = alloca %struct.Circle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %param, i8** %param.addr, align 8
  store void (i8*, i8*, ...)* %output, void (i8*, i8*, ...)** %output.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Circle_t*
  store %struct.Circle_t* %1, %struct.Circle_t** %circle, align 8
  %2 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %3 = load i8*, i8** %param.addr, align 8
  %4 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %url = getelementptr inbounds %struct.Object_t, %struct.Object_t* %4, i32 0, i32 5
  %5 = load i8*, i8** %url, align 8
  %6 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %6, i32 0, i32 1
  %7 = load i32, i32* %x, align 4
  %8 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %8, i32 0, i32 2
  %9 = load i32, i32* %y, align 4
  %10 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x1 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %10, i32 0, i32 1
  %11 = load i32, i32* %x1, align 4
  %12 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y2 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %12, i32 0, i32 2
  %13 = load i32, i32* %y2, align 4
  %14 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %14, i32 0, i32 3
  %15 = load i32, i32* %r, align 4
  %add = add nsw i32 %13, %15
  call void (i8*, i8*, ...) %2(i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* %5, i32 %7, i32 %9, i32 %11, i32 %add)
  ret void
}

declare void @object_do_popup(%struct.Object_t*, %struct._GdkEventButton*) #1

; Function Attrs: nounwind uwtable
define internal i8* @circle_get_stock_icon_name() #0 {
entry:
  ret i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0)
}

declare void @draw_circle(%struct._cairo*, i32, i32, i32) #1

declare void @draw_sash(%struct._cairo*, i32, i32) #1

declare i32 @near_sash(i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @move_sash(%struct.Object_t* %obj, i32 %dx, i32 %dy) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %circle = alloca %struct.Circle_t*, align 8
  %rx = alloca i32, align 4
  %ry = alloca i32, align 4
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Circle_t*
  store %struct.Circle_t* %1, %struct.Circle_t** %circle, align 8
  %2 = load i32, i32* %dx.addr, align 4
  %3 = load i32, i32* @sash_x, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, i32* @sash_x, align 4
  %4 = load i32, i32* %dy.addr, align 4
  %5 = load i32, i32* @sash_y, align 4
  %add1 = add nsw i32 %5, %4
  store i32 %add1, i32* @sash_y, align 4
  %6 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %6, i32 0, i32 1
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* @sash_x, align 4
  %sub = sub nsw i32 %7, %8
  %call = call i32 @abs(i32 %sub) #4
  store i32 %call, i32* %rx, align 4
  %9 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %9, i32 0, i32 2
  %10 = load i32, i32* %y, align 4
  %11 = load i32, i32* @sash_y, align 4
  %sub2 = sub nsw i32 %10, %11
  %call3 = call i32 @abs(i32 %sub2) #4
  store i32 %call3, i32* %ry, align 4
  %12 = load i32, i32* %rx, align 4
  %13 = load i32, i32* %ry, align 4
  %cmp = icmp sgt i32 %12, %13
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %14 = load i32, i32* %rx, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %ry, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ]
  %16 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %16, i32 0, i32 3
  store i32 %cond, i32* %r, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #2

declare i32 @get_image_width() #1

declare i32 @get_image_height() #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget*, i32, i32, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

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
  %1 = bitcast i8* %0 to %struct.CircleProperties_t*
  %obj1 = getelementptr inbounds %struct.CircleProperties_t, %struct.CircleProperties_t* %1, i32 0, i32 0
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
  %7 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %8 = bitcast %struct.Object_t* %7 to %struct.Circle_t*
  %x4 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %8, i32 0, i32 1
  store i32 %6, i32* %x4, align 4
  %9 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %9, i32 0, i32 0
  %10 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %info_dialog = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %10, i32 0, i32 1
  %11 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %info_dialog, align 8
  call void @edit_area_info_dialog_emit_geometry_signal(%struct.AreaInfoDialog_t* %11)
  ret void
}

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
  %1 = bitcast i8* %0 to %struct.CircleProperties_t*
  %obj1 = getelementptr inbounds %struct.CircleProperties_t, %struct.CircleProperties_t* %1, i32 0, i32 0
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
  %7 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %8 = bitcast %struct.Object_t* %7 to %struct.Circle_t*
  %y4 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %8, i32 0, i32 2
  store i32 %6, i32* %y4, align 4
  %9 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %9, i32 0, i32 0
  %10 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %info_dialog = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %10, i32 0, i32 1
  %11 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %info_dialog, align 8
  call void @edit_area_info_dialog_emit_geometry_signal(%struct.AreaInfoDialog_t* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @r_changed_cb(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %obj = alloca %struct.Object_t*, align 8
  %r = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.CircleProperties_t*
  %obj1 = getelementptr inbounds %struct.CircleProperties_t, %struct.CircleProperties_t* %1, i32 0, i32 0
  %2 = load %struct.Object_t*, %struct.Object_t** %obj1, align 8
  store %struct.Object_t* %2, %struct.Object_t** %obj, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkSpinButton*
  %call3 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %5)
  store i32 %call3, i32* %r, align 4
  %6 = load i32, i32* %r, align 4
  %7 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %8 = bitcast %struct.Object_t* %7 to %struct.Circle_t*
  %r4 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %8, i32 0, i32 3
  store i32 %6, i32* %r4, align 4
  %9 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %9, i32 0, i32 0
  %10 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %info_dialog = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %10, i32 0, i32 1
  %11 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %info_dialog, align 8
  call void @edit_area_info_dialog_emit_geometry_signal(%struct.AreaInfoDialog_t* %11)
  ret void
}

declare i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #2

declare void @edit_area_info_dialog_emit_geometry_signal(%struct.AreaInfoDialog_t*) #1

declare void @gtk_spin_button_set_value(%struct._GtkSpinButton*, double) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal %struct.Object_t* @circle_factory_create_object1(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  store i32 %0, i32* @_start_x, align 4
  %1 = load i32, i32* %y.addr, align 4
  store i32 %1, i32* @_start_y, align 4
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %call = call %struct.Object_t* @create_circle(i32 %2, i32 %3, i32 0)
  ret %struct.Object_t* %call
}

; Function Attrs: nounwind uwtable
define internal void @circle_factory_set_xy1(%struct.Object_t* %obj, i32 %state, i32 %x, i32 %y) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %state.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %circle = alloca %struct.Circle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Circle_t*
  store %struct.Circle_t* %1, %struct.Circle_t** %circle, align 8
  %2 = load i32, i32* @_start_x, align 4
  %3 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %2, %3
  %div = sdiv i32 %add, 2
  %4 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x1 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %4, i32 0, i32 1
  store i32 %div, i32* %x1, align 4
  %5 = load i32, i32* @_start_y, align 4
  %6 = load i32, i32* %y.addr, align 4
  %add2 = add nsw i32 %5, %6
  %div3 = sdiv i32 %add2, 2
  %7 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y4 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %7, i32 0, i32 2
  store i32 %div3, i32* %y4, align 4
  %8 = load i32, i32* @_start_x, align 4
  %9 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %9, %8
  store i32 %sub, i32* %x.addr, align 4
  %10 = load i32, i32* @_start_y, align 4
  %11 = load i32, i32* %y.addr, align 4
  %sub5 = sub nsw i32 %11, %10
  store i32 %sub5, i32* %y.addr, align 4
  %12 = load i32, i32* %x.addr, align 4
  %13 = load i32, i32* %x.addr, align 4
  %mul = mul nsw i32 %12, %13
  %14 = load i32, i32* %y.addr, align 4
  %15 = load i32, i32* %y.addr, align 4
  %mul6 = mul nsw i32 %14, %15
  %add7 = add nsw i32 %mul, %mul6
  %conv = sitofp i32 %add7 to double
  %call = call double @sqrt(double %conv) #5
  %conv8 = fptosi double %call to i32
  %div9 = sdiv i32 %conv8, 2
  %16 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %16, i32 0, i32 3
  store i32 %div9, i32* %r, align 4
  %17 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r10 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %17, i32 0, i32 3
  %18 = load i32, i32* %r10, align 4
  %19 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r11 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %19, i32 0, i32 3
  %20 = load i32, i32* %r11, align 4
  call void @main_set_dimension(i32 %18, i32 %20)
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #3

declare void @main_set_dimension(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.Object_t* @circle_factory_create_object2(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %call = call %struct.Object_t* @create_circle(i32 %0, i32 %1, i32 0)
  ret %struct.Object_t* %call
}

; Function Attrs: nounwind uwtable
define internal void @circle_factory_set_xy2(%struct.Object_t* %obj, i32 %state, i32 %x, i32 %y) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %state.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %circle = alloca %struct.Circle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Circle_t*
  store %struct.Circle_t* %1, %struct.Circle_t** %circle, align 8
  %2 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %x1 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %2, i32 0, i32 1
  %3 = load i32, i32* %x1, align 4
  %4 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %4, %3
  store i32 %sub, i32* %x.addr, align 4
  %5 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %y2 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %5, i32 0, i32 2
  %6 = load i32, i32* %y2, align 4
  %7 = load i32, i32* %y.addr, align 4
  %sub3 = sub nsw i32 %7, %6
  store i32 %sub3, i32* %y.addr, align 4
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %x.addr, align 4
  %mul = mul nsw i32 %8, %9
  %10 = load i32, i32* %y.addr, align 4
  %11 = load i32, i32* %y.addr, align 4
  %mul4 = mul nsw i32 %10, %11
  %add = add nsw i32 %mul, %mul4
  %conv = sitofp i32 %add to double
  %call = call double @sqrt(double %conv) #5
  %conv5 = fptosi double %call to i32
  %12 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %12, i32 0, i32 3
  store i32 %conv5, i32* %r, align 4
  %13 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r6 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %13, i32 0, i32 3
  %14 = load i32, i32* %r6, align 4
  %15 = load %struct.Circle_t*, %struct.Circle_t** %circle, align 8
  %r7 = getelementptr inbounds %struct.Circle_t, %struct.Circle_t* %15, i32 0, i32 3
  %16 = load i32, i32* %r7, align 4
  call void @main_set_dimension(i32 %14, i32 %16)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
