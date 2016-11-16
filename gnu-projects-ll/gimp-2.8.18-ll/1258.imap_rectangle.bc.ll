; ModuleID = './plug-ins/imagemap/imap_rectangle.bc'
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
%struct.Rectangle_t = type { %struct.Object_t, i32, i32, i32, i32 }
%struct.RectangleProperties_t = type { %struct.Object_t*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
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
%struct._GimpChainButton = type { %struct._GtkTable, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }

@rectangle_class = internal global %struct.ObjectClass_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %struct.AreaInfoDialog_t* null, %struct._GdkDrawable* null, %struct._GdkDrawable* null, i32 (%struct.Object_t*)* @rectangle_is_valid, void (%struct.Object_t*)* null, %struct.Object_t* (%struct.Object_t*)* @rectangle_clone, void (%struct.Object_t*, %struct.Object_t*)* @rectangle_assign, void (%struct.Object_t*)* @rectangle_normalize, void (%struct.Object_t*, %struct._cairo*)* @rectangle_draw, void (%struct.Object_t*, %struct._cairo*)* @rectangle_draw_sashes, void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)* @rectangle_near_sash, i32 (%struct.Object_t*, i32, i32)* @rectangle_point_is_on, void (%struct.Object_t*, i32*, i32*, i32*, i32*)* @rectangle_get_dimensions, void (%struct.Object_t*, i32, i32)* @rectangle_resize, void (%struct.Object_t*, i32, i32)* @rectangle_move, i8* (%struct._GtkWidget*)* @rectangle_create_info_widget, void (%struct.Object_t*, i8*)* @rectangle_fill_info_tab, void (%struct.Object_t*, i8*)* @rectangle_fill_info_tab, void (%struct.Object_t*, i8*)* @rectangle_set_initial_focus, void (%struct.Object_t*, i8*)* @rectangle_update, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)* @rectangle_write_csim, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)* @rectangle_write_cern, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)* @rectangle_write_ncsa, void (%struct.Object_t*, %struct._GdkEventButton*)* @object_do_popup, i8* ()* @rectangle_get_stock_icon_name }, align 8
@rectangle_factory = internal global %struct.ObjectFactory_t { %struct.Object_t* null, i32 (%struct.Object_t*, i32, i32)* @rectangle_factory_finish, i32 (%struct._GdkEventButton*, %struct.Object_t*)* null, %struct.Object_t* (i32, i32)* @rectangle_factory_create_object, void (%struct.Object_t*, i32, i32, i32)* @rectangle_factory_set_xy }, align 8
@.str = private unnamed_addr constant [11 x i8] c"_Rectangle\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Upper left _x:\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"pixels\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Upper left _y:\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"_Width:\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"_Height:\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"\22rect\22 coords=\22%d,%d,%d,%d\22\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"rect (%d,%d) (%d,%d)\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"rect %s %d,%d %d,%d\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"imap-rectangle\00", align 1

; Function Attrs: nounwind uwtable
define %struct.Object_t* @create_rectangle(i32 %x, i32 %y, i32 %width, i32 %height) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %call = call noalias i8* @g_malloc_n(i64 1, i64 104)
  %0 = bitcast i8* %call to %struct.Rectangle_t*
  store %struct.Rectangle_t* %0, %struct.Rectangle_t** %rectangle, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x1 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %2, i32 0, i32 1
  store i32 %1, i32* %x1, align 4
  %3 = load i32, i32* %y.addr, align 4
  %4 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y2 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %4, i32 0, i32 2
  store i32 %3, i32* %y2, align 4
  %5 = load i32, i32* %width.addr, align 4
  %6 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width3 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %6, i32 0, i32 3
  store i32 %5, i32* %width3, align 4
  %7 = load i32, i32* %height.addr, align 4
  %8 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height4 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %8, i32 0, i32 4
  store i32 %7, i32* %height4, align 4
  %9 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %obj = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %9, i32 0, i32 0
  %call5 = call %struct.Object_t* @object_init(%struct.Object_t* %obj, %struct.ObjectClass_t* @rectangle_class)
  ret %struct.Object_t* %call5
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct.Object_t* @object_init(%struct.Object_t*, %struct.ObjectClass_t*) #1

; Function Attrs: nounwind uwtable
define %struct.ObjectFactory_t* @get_rectangle_factory(i32 %state) #0 {
entry:
  %state.addr = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  ret %struct.ObjectFactory_t* @rectangle_factory
}

; Function Attrs: nounwind uwtable
define internal i32 @rectangle_is_valid(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %2, i32 0, i32 3
  %3 = load i32, i32* %width, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %4, i32 0, i32 4
  %5 = load i32, i32* %height, align 4
  %tobool1 = icmp ne i32 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal %struct.Object_t* @rectangle_clone(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %rectangle = alloca %struct.Rectangle_t*, align 8
  %clone = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 104)
  %2 = bitcast i8* %call to %struct.Rectangle_t*
  store %struct.Rectangle_t* %2, %struct.Rectangle_t** %clone, align 8
  %3 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %3, i32 0, i32 1
  %4 = load i32, i32* %x, align 4
  %5 = load %struct.Rectangle_t*, %struct.Rectangle_t** %clone, align 8
  %x1 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %5, i32 0, i32 1
  store i32 %4, i32* %x1, align 4
  %6 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %6, i32 0, i32 2
  %7 = load i32, i32* %y, align 4
  %8 = load %struct.Rectangle_t*, %struct.Rectangle_t** %clone, align 8
  %y2 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %8, i32 0, i32 2
  store i32 %7, i32* %y2, align 4
  %9 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %9, i32 0, i32 3
  %10 = load i32, i32* %width, align 4
  %11 = load %struct.Rectangle_t*, %struct.Rectangle_t** %clone, align 8
  %width3 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %11, i32 0, i32 3
  store i32 %10, i32* %width3, align 4
  %12 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %12, i32 0, i32 4
  %13 = load i32, i32* %height, align 4
  %14 = load %struct.Rectangle_t*, %struct.Rectangle_t** %clone, align 8
  %height4 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %14, i32 0, i32 4
  store i32 %13, i32* %height4, align 4
  %15 = load %struct.Rectangle_t*, %struct.Rectangle_t** %clone, align 8
  %obj5 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %15, i32 0, i32 0
  ret %struct.Object_t* %obj5
}

; Function Attrs: nounwind uwtable
define internal void @rectangle_assign(%struct.Object_t* %obj, %struct.Object_t* %des) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %des.addr = alloca %struct.Object_t*, align 8
  %src_rectangle = alloca %struct.Rectangle_t*, align 8
  %des_rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store %struct.Object_t* %des, %struct.Object_t** %des.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %src_rectangle, align 8
  %2 = load %struct.Object_t*, %struct.Object_t** %des.addr, align 8
  %3 = bitcast %struct.Object_t* %2 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %3, %struct.Rectangle_t** %des_rectangle, align 8
  %4 = load %struct.Rectangle_t*, %struct.Rectangle_t** %src_rectangle, align 8
  %x = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %4, i32 0, i32 1
  %5 = load i32, i32* %x, align 4
  %6 = load %struct.Rectangle_t*, %struct.Rectangle_t** %des_rectangle, align 8
  %x1 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %6, i32 0, i32 1
  store i32 %5, i32* %x1, align 4
  %7 = load %struct.Rectangle_t*, %struct.Rectangle_t** %src_rectangle, align 8
  %y = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %7, i32 0, i32 2
  %8 = load i32, i32* %y, align 4
  %9 = load %struct.Rectangle_t*, %struct.Rectangle_t** %des_rectangle, align 8
  %y2 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %9, i32 0, i32 2
  store i32 %8, i32* %y2, align 4
  %10 = load %struct.Rectangle_t*, %struct.Rectangle_t** %src_rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %10, i32 0, i32 3
  %11 = load i32, i32* %width, align 4
  %12 = load %struct.Rectangle_t*, %struct.Rectangle_t** %des_rectangle, align 8
  %width3 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %12, i32 0, i32 3
  store i32 %11, i32* %width3, align 4
  %13 = load %struct.Rectangle_t*, %struct.Rectangle_t** %src_rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %13, i32 0, i32 4
  %14 = load i32, i32* %height, align 4
  %15 = load %struct.Rectangle_t*, %struct.Rectangle_t** %des_rectangle, align 8
  %height4 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %15, i32 0, i32 4
  store i32 %14, i32* %height4, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rectangle_normalize(%struct.Object_t* %obj) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %2, i32 0, i32 3
  %3 = load i32, i32* %width, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width1 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %4, i32 0, i32 3
  %5 = load i32, i32* %width1, align 4
  %6 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %6, i32 0, i32 1
  %7 = load i32, i32* %x, align 4
  %add = add nsw i32 %7, %5
  store i32 %add, i32* %x, align 4
  %8 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width2 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %8, i32 0, i32 3
  %9 = load i32, i32* %width2, align 4
  %sub = sub nsw i32 0, %9
  %10 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width3 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %10, i32 0, i32 3
  store i32 %sub, i32* %width3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %11, i32 0, i32 4
  %12 = load i32, i32* %height, align 4
  %cmp4 = icmp slt i32 %12, 0
  br i1 %cmp4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %if.end
  %13 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height6 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %13, i32 0, i32 4
  %14 = load i32, i32* %height6, align 4
  %15 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %15, i32 0, i32 2
  %16 = load i32, i32* %y, align 4
  %add7 = add nsw i32 %16, %14
  store i32 %add7, i32* %y, align 4
  %17 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height8 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %17, i32 0, i32 4
  %18 = load i32, i32* %height8, align 4
  %sub9 = sub nsw i32 0, %18
  %19 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height10 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %19, i32 0, i32 4
  store i32 %sub9, i32* %height10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.5, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rectangle_draw(%struct.Object_t* %obj, %struct._cairo* %cr) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %3 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %3, i32 0, i32 1
  %4 = load i32, i32* %x, align 4
  %5 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %5, i32 0, i32 2
  %6 = load i32, i32* %y, align 4
  %7 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %7, i32 0, i32 3
  %8 = load i32, i32* %width, align 4
  %9 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %9, i32 0, i32 4
  %10 = load i32, i32* %height, align 4
  call void @draw_any_rectangle(%struct._cairo* %2, i32 %4, i32 %6, i32 %8, i32 %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rectangle_draw_sashes(%struct.Object_t* %obj, %struct._cairo* %cr) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %3 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %3, i32 0, i32 1
  %4 = load i32, i32* %x, align 4
  %5 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %5, i32 0, i32 2
  %6 = load i32, i32* %y, align 4
  call void @draw_sash(%struct._cairo* %2, i32 %4, i32 %6)
  %7 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %8 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x1 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %8, i32 0, i32 1
  %9 = load i32, i32* %x1, align 4
  %10 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %10, i32 0, i32 3
  %11 = load i32, i32* %width, align 4
  %div = sdiv i32 %11, 2
  %add = add nsw i32 %9, %div
  %12 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y2 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %12, i32 0, i32 2
  %13 = load i32, i32* %y2, align 4
  call void @draw_sash(%struct._cairo* %7, i32 %add, i32 %13)
  %14 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %15 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x3 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %15, i32 0, i32 1
  %16 = load i32, i32* %x3, align 4
  %17 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width4 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %17, i32 0, i32 3
  %18 = load i32, i32* %width4, align 4
  %add5 = add nsw i32 %16, %18
  %19 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y6 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %19, i32 0, i32 2
  %20 = load i32, i32* %y6, align 4
  call void @draw_sash(%struct._cairo* %14, i32 %add5, i32 %20)
  %21 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %22 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x7 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %22, i32 0, i32 1
  %23 = load i32, i32* %x7, align 4
  %24 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y8 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %24, i32 0, i32 2
  %25 = load i32, i32* %y8, align 4
  %26 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %26, i32 0, i32 4
  %27 = load i32, i32* %height, align 4
  %div9 = sdiv i32 %27, 2
  %add10 = add nsw i32 %25, %div9
  call void @draw_sash(%struct._cairo* %21, i32 %23, i32 %add10)
  %28 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %29 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x11 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %29, i32 0, i32 1
  %30 = load i32, i32* %x11, align 4
  %31 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width12 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %31, i32 0, i32 3
  %32 = load i32, i32* %width12, align 4
  %add13 = add nsw i32 %30, %32
  %33 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y14 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %33, i32 0, i32 2
  %34 = load i32, i32* %y14, align 4
  %35 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height15 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %35, i32 0, i32 4
  %36 = load i32, i32* %height15, align 4
  %div16 = sdiv i32 %36, 2
  %add17 = add nsw i32 %34, %div16
  call void @draw_sash(%struct._cairo* %28, i32 %add13, i32 %add17)
  %37 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %38 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x18 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %38, i32 0, i32 1
  %39 = load i32, i32* %x18, align 4
  %40 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y19 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %40, i32 0, i32 2
  %41 = load i32, i32* %y19, align 4
  %42 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height20 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %42, i32 0, i32 4
  %43 = load i32, i32* %height20, align 4
  %add21 = add nsw i32 %41, %43
  call void @draw_sash(%struct._cairo* %37, i32 %39, i32 %add21)
  %44 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %45 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x22 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %45, i32 0, i32 1
  %46 = load i32, i32* %x22, align 4
  %47 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width23 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %47, i32 0, i32 3
  %48 = load i32, i32* %width23, align 4
  %div24 = sdiv i32 %48, 2
  %add25 = add nsw i32 %46, %div24
  %49 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y26 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %49, i32 0, i32 2
  %50 = load i32, i32* %y26, align 4
  %51 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height27 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %51, i32 0, i32 4
  %52 = load i32, i32* %height27, align 4
  %add28 = add nsw i32 %50, %52
  call void @draw_sash(%struct._cairo* %44, i32 %add25, i32 %add28)
  %53 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %54 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x29 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %54, i32 0, i32 1
  %55 = load i32, i32* %x29, align 4
  %56 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width30 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %56, i32 0, i32 3
  %57 = load i32, i32* %width30, align 4
  %add31 = add nsw i32 %55, %57
  %58 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y32 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %58, i32 0, i32 2
  %59 = load i32, i32* %y32, align 4
  %60 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height33 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %60, i32 0, i32 4
  %61 = load i32, i32* %height33, align 4
  %add34 = add nsw i32 %59, %61
  call void @draw_sash(%struct._cairo* %53, i32 %add31, i32 %add34)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void (%struct.Object_t*, i32, i32)* @rectangle_near_sash(%struct.Object_t* %obj, i32 %x, i32 %y) #0 {
entry:
  %retval = alloca void (%struct.Object_t*, i32, i32)*, align 8
  %obj.addr = alloca %struct.Object_t*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x1 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %2, i32 0, i32 1
  %3 = load i32, i32* %x1, align 4
  %4 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y2 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %4, i32 0, i32 2
  %5 = load i32, i32* %y2, align 4
  %6 = load i32, i32* %x.addr, align 4
  %7 = load i32, i32* %y.addr, align 4
  %call = call i32 @near_sash(i32 %3, i32 %5, i32 %6, i32 %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store void (%struct.Object_t*, i32, i32)* @MoveUpperLeftSash, void (%struct.Object_t*, i32, i32)** %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x3 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %8, i32 0, i32 1
  %9 = load i32, i32* %x3, align 4
  %10 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %10, i32 0, i32 3
  %11 = load i32, i32* %width, align 4
  %div = sdiv i32 %11, 2
  %add = add nsw i32 %9, %div
  %12 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y4 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %12, i32 0, i32 2
  %13 = load i32, i32* %y4, align 4
  %14 = load i32, i32* %x.addr, align 4
  %15 = load i32, i32* %y.addr, align 4
  %call5 = call i32 @near_sash(i32 %add, i32 %13, i32 %14, i32 %15)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else
  store void (%struct.Object_t*, i32, i32)* @MoveUpperSash, void (%struct.Object_t*, i32, i32)** %retval
  br label %return

if.else.8:                                        ; preds = %if.else
  %16 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x9 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %16, i32 0, i32 1
  %17 = load i32, i32* %x9, align 4
  %18 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width10 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %18, i32 0, i32 3
  %19 = load i32, i32* %width10, align 4
  %add11 = add nsw i32 %17, %19
  %20 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y12 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %20, i32 0, i32 2
  %21 = load i32, i32* %y12, align 4
  %22 = load i32, i32* %x.addr, align 4
  %23 = load i32, i32* %y.addr, align 4
  %call13 = call i32 @near_sash(i32 %add11, i32 %21, i32 %22, i32 %23)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.8
  store void (%struct.Object_t*, i32, i32)* @MoveUpperRightSash, void (%struct.Object_t*, i32, i32)** %retval
  br label %return

if.else.16:                                       ; preds = %if.else.8
  %24 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x17 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %24, i32 0, i32 1
  %25 = load i32, i32* %x17, align 4
  %26 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y18 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %26, i32 0, i32 2
  %27 = load i32, i32* %y18, align 4
  %28 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %28, i32 0, i32 4
  %29 = load i32, i32* %height, align 4
  %div19 = sdiv i32 %29, 2
  %add20 = add nsw i32 %27, %div19
  %30 = load i32, i32* %x.addr, align 4
  %31 = load i32, i32* %y.addr, align 4
  %call21 = call i32 @near_sash(i32 %25, i32 %add20, i32 %30, i32 %31)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else.16
  store void (%struct.Object_t*, i32, i32)* @MoveLeftSash, void (%struct.Object_t*, i32, i32)** %retval
  br label %return

if.else.24:                                       ; preds = %if.else.16
  %32 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x25 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %32, i32 0, i32 1
  %33 = load i32, i32* %x25, align 4
  %34 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width26 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %34, i32 0, i32 3
  %35 = load i32, i32* %width26, align 4
  %add27 = add nsw i32 %33, %35
  %36 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y28 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %36, i32 0, i32 2
  %37 = load i32, i32* %y28, align 4
  %38 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height29 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %38, i32 0, i32 4
  %39 = load i32, i32* %height29, align 4
  %div30 = sdiv i32 %39, 2
  %add31 = add nsw i32 %37, %div30
  %40 = load i32, i32* %x.addr, align 4
  %41 = load i32, i32* %y.addr, align 4
  %call32 = call i32 @near_sash(i32 %add27, i32 %add31, i32 %40, i32 %41)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.else.24
  store void (%struct.Object_t*, i32, i32)* @MoveRightSash, void (%struct.Object_t*, i32, i32)** %retval
  br label %return

if.else.35:                                       ; preds = %if.else.24
  %42 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x36 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %42, i32 0, i32 1
  %43 = load i32, i32* %x36, align 4
  %44 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y37 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %44, i32 0, i32 2
  %45 = load i32, i32* %y37, align 4
  %46 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height38 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %46, i32 0, i32 4
  %47 = load i32, i32* %height38, align 4
  %add39 = add nsw i32 %45, %47
  %48 = load i32, i32* %x.addr, align 4
  %49 = load i32, i32* %y.addr, align 4
  %call40 = call i32 @near_sash(i32 %43, i32 %add39, i32 %48, i32 %49)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.else.35
  store void (%struct.Object_t*, i32, i32)* @MoveLowerLeftSash, void (%struct.Object_t*, i32, i32)** %retval
  br label %return

if.else.43:                                       ; preds = %if.else.35
  %50 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x44 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %50, i32 0, i32 1
  %51 = load i32, i32* %x44, align 4
  %52 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width45 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %52, i32 0, i32 3
  %53 = load i32, i32* %width45, align 4
  %div46 = sdiv i32 %53, 2
  %add47 = add nsw i32 %51, %div46
  %54 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y48 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %54, i32 0, i32 2
  %55 = load i32, i32* %y48, align 4
  %56 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height49 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %56, i32 0, i32 4
  %57 = load i32, i32* %height49, align 4
  %add50 = add nsw i32 %55, %57
  %58 = load i32, i32* %x.addr, align 4
  %59 = load i32, i32* %y.addr, align 4
  %call51 = call i32 @near_sash(i32 %add47, i32 %add50, i32 %58, i32 %59)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %if.else.43
  store void (%struct.Object_t*, i32, i32)* @MoveLowerSash, void (%struct.Object_t*, i32, i32)** %retval
  br label %return

if.else.54:                                       ; preds = %if.else.43
  %60 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x55 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %60, i32 0, i32 1
  %61 = load i32, i32* %x55, align 4
  %62 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width56 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %62, i32 0, i32 3
  %63 = load i32, i32* %width56, align 4
  %add57 = add nsw i32 %61, %63
  %64 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y58 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %64, i32 0, i32 2
  %65 = load i32, i32* %y58, align 4
  %66 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height59 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %66, i32 0, i32 4
  %67 = load i32, i32* %height59, align 4
  %add60 = add nsw i32 %65, %67
  %68 = load i32, i32* %x.addr, align 4
  %69 = load i32, i32* %y.addr, align 4
  %call61 = call i32 @near_sash(i32 %add57, i32 %add60, i32 %68, i32 %69)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.end

if.then.63:                                       ; preds = %if.else.54
  store void (%struct.Object_t*, i32, i32)* @MoveLowerRightSash, void (%struct.Object_t*, i32, i32)** %retval
  br label %return

if.end:                                           ; preds = %if.else.54
  br label %if.end.64

if.end.64:                                        ; preds = %if.end
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69
  store void (%struct.Object_t*, i32, i32)* null, void (%struct.Object_t*, i32, i32)** %retval
  br label %return

return:                                           ; preds = %if.end.70, %if.then.63, %if.then.53, %if.then.42, %if.then.34, %if.then.23, %if.then.15, %if.then.7, %if.then
  %70 = load void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)** %retval
  ret void (%struct.Object_t*, i32, i32)* %70
}

; Function Attrs: nounwind uwtable
define internal i32 @rectangle_point_is_on(%struct.Object_t* %obj, i32 %x, i32 %y) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load i32, i32* %x.addr, align 4
  %3 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x1 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %3, i32 0, i32 1
  %4 = load i32, i32* %x1, align 4
  %cmp = icmp sge i32 %2, %4
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %x.addr, align 4
  %6 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x2 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %6, i32 0, i32 1
  %7 = load i32, i32* %x2, align 4
  %8 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %8, i32 0, i32 3
  %9 = load i32, i32* %width, align 4
  %add = add nsw i32 %7, %9
  %cmp3 = icmp sle i32 %5, %add
  br i1 %cmp3, label %land.lhs.true.4, label %land.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %10 = load i32, i32* %y.addr, align 4
  %11 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y5 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %11, i32 0, i32 2
  %12 = load i32, i32* %y5, align 4
  %cmp6 = icmp sge i32 %10, %12
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.4
  %13 = load i32, i32* %y.addr, align 4
  %14 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y7 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %14, i32 0, i32 2
  %15 = load i32, i32* %y7, align 4
  %16 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %16, i32 0, i32 4
  %17 = load i32, i32* %height, align 4
  %add8 = add nsw i32 %15, %17
  %cmp9 = icmp sle i32 %13, %add8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.4, %land.lhs.true, %entry
  %18 = phi i1 [ false, %land.lhs.true.4 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp9, %land.rhs ]
  %land.ext = zext i1 %18 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal void @rectangle_get_dimensions(%struct.Object_t* %obj, i32* %x, i32* %y, i32* %width, i32* %height) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x1 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %2, i32 0, i32 1
  %3 = load i32, i32* %x1, align 4
  %4 = load i32*, i32** %x.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y2 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %5, i32 0, i32 2
  %6 = load i32, i32* %y2, align 4
  %7 = load i32*, i32** %y.addr, align 8
  store i32 %6, i32* %7, align 4
  %8 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width3 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %8, i32 0, i32 3
  %9 = load i32, i32* %width3, align 4
  %10 = load i32*, i32** %width.addr, align 8
  store i32 %9, i32* %10, align 4
  %11 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height4 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %11, i32 0, i32 4
  %12 = load i32, i32* %height4, align 4
  %13 = load i32*, i32** %height.addr, align 8
  store i32 %12, i32* %13, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rectangle_resize(%struct.Object_t* %obj, i32 %percentage_x, i32 %percentage_y) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %percentage_x.addr = alloca i32, align 4
  %percentage_y.addr = alloca i32, align 4
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %percentage_x, i32* %percentage_x.addr, align 4
  store i32 %percentage_y, i32* %percentage_y.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %2, i32 0, i32 1
  %3 = load i32, i32* %x, align 4
  %4 = load i32, i32* %percentage_x.addr, align 4
  %mul = mul nsw i32 %3, %4
  %div = sdiv i32 %mul, 100
  %5 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x1 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %5, i32 0, i32 1
  store i32 %div, i32* %x1, align 4
  %6 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %6, i32 0, i32 2
  %7 = load i32, i32* %y, align 4
  %8 = load i32, i32* %percentage_y.addr, align 4
  %mul2 = mul nsw i32 %7, %8
  %div3 = sdiv i32 %mul2, 100
  %9 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y4 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %9, i32 0, i32 2
  store i32 %div3, i32* %y4, align 4
  %10 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %10, i32 0, i32 3
  %11 = load i32, i32* %width, align 4
  %12 = load i32, i32* %percentage_x.addr, align 4
  %mul5 = mul nsw i32 %11, %12
  %div6 = sdiv i32 %mul5, 100
  %13 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width7 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %13, i32 0, i32 3
  store i32 %div6, i32* %width7, align 4
  %14 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %14, i32 0, i32 4
  %15 = load i32, i32* %height, align 4
  %16 = load i32, i32* %percentage_y.addr, align 4
  %mul8 = mul nsw i32 %15, %16
  %div9 = sdiv i32 %mul8, 100
  %17 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height10 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %17, i32 0, i32 4
  store i32 %div9, i32* %height10, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rectangle_move(%struct.Object_t* %obj, i32 %dx, i32 %dy) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load i32, i32* %dx.addr, align 4
  %3 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %3, i32 0, i32 1
  %4 = load i32, i32* %x, align 4
  %add = add nsw i32 %4, %2
  store i32 %add, i32* %x, align 4
  %5 = load i32, i32* %dy.addr, align 4
  %6 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %6, i32 0, i32 2
  %7 = load i32, i32* %y, align 4
  %add1 = add nsw i32 %7, %5
  store i32 %add1, i32* %y, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @rectangle_create_info_widget(%struct._GtkWidget* %frame) #0 {
entry:
  %frame.addr = alloca %struct._GtkWidget*, align 8
  %props = alloca %struct.RectangleProperties_t*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %chain_button = alloca %struct._GtkWidget*, align 8
  %max_width = alloca i32, align 4
  %max_height = alloca i32, align 4
  store %struct._GtkWidget* %frame, %struct._GtkWidget** %frame.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 48)
  %0 = bitcast i8* %call to %struct.RectangleProperties_t*
  store %struct.RectangleProperties_t* %0, %struct.RectangleProperties_t** %props, align 8
  %call1 = call i32 @get_image_width()
  store i32 %call1, i32* %max_width, align 4
  %call2 = call i32 @get_image_height()
  store i32 %call2, i32* %max_height, align 4
  %call3 = call %struct._GtkWidget* @gtk_table_new(i32 4, i32 4, i32 0)
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
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #5
  %call11 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %12, i32 0, i32 0, i8* %call10)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %label, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %15 = load i32, i32* %max_width, align 4
  %sub = sub nsw i32 %15, 1
  %call12 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %13, %struct._GtkWidget* %14, i32 0, i32 1, i32 1, i32 0, i32 %sub)
  %16 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %x = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %16, i32 0, i32 1
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %x, align 8
  %17 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %x13 = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %17, i32 0, i32 1
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %x13, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %20 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %21 = bitcast %struct.RectangleProperties_t* %20 to i8*
  %call14 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @x_changed_cb to void ()*), i8* %21, void (i8*, %struct._GClosure*)* null, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #5
  %call16 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %22, i32 0, i32 3, i8* %call15)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)) #5
  %call18 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %23, i32 1, i32 0, i8* %call17)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %label, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %26 = load i32, i32* %max_height, align 4
  %sub19 = sub nsw i32 %26, 1
  %call20 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %24, %struct._GtkWidget* %25, i32 1, i32 1, i32 1, i32 0, i32 %sub19)
  %27 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %y = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %27, i32 0, i32 2
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %y, align 8
  %28 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %y21 = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %28, i32 0, i32 2
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %y21, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %31 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %32 = bitcast %struct.RectangleProperties_t* %31 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @y_changed_cb to void ()*), i8* %32, void (i8*, %struct._GClosure*)* null, i32 0)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #5
  %call24 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %33, i32 1, i32 3, i8* %call23)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)) #5
  %call26 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %34, i32 2, i32 0, i8* %call25)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %label, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %37 = load i32, i32* %max_width, align 4
  %call27 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %35, %struct._GtkWidget* %36, i32 2, i32 1, i32 1, i32 1, i32 %37)
  %38 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %width = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %38, i32 0, i32 3
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %width, align 8
  %39 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %width28 = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %39, i32 0, i32 3
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %width28, align 8
  %41 = bitcast %struct._GtkWidget* %40 to i8*
  %42 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %43 = bitcast %struct.RectangleProperties_t* %42 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @width_changed_cb to void ()*), i8* %43, void (i8*, %struct._GClosure*)* null, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #5
  %call31 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %44, i32 2, i32 3, i8* %call30)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)) #5
  %call33 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %45, i32 3, i32 0, i8* %call32)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %label, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %48 = load i32, i32* %max_height, align 4
  %call34 = call %struct._GtkWidget* @create_spin_button_in_table(%struct._GtkWidget* %46, %struct._GtkWidget* %47, i32 3, i32 1, i32 1, i32 1, i32 %48)
  %49 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %height = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %49, i32 0, i32 4
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %height, align 8
  %50 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %height35 = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %50, i32 0, i32 4
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %height35, align 8
  %52 = bitcast %struct._GtkWidget* %51 to i8*
  %53 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %54 = bitcast %struct.RectangleProperties_t* %53 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @height_changed_cb to void ()*), i8* %54, void (i8*, %struct._GClosure*)* null, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #5
  %call38 = call %struct._GtkWidget* @create_label_in_table(%struct._GtkWidget* %55, i32 3, i32 3, i8* %call37)
  %call39 = call %struct._GtkWidget* @gimp_chain_button_new(i32 3)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %chain_button, align 8
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  %57 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %chain_button40 = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %57, i32 0, i32 5
  store %struct._GtkWidget* %56, %struct._GtkWidget** %chain_button40, align 8
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_table_get_type() #4
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call41)
  %60 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTable*
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %60, %struct._GtkWidget* %61, i32 2, i32 3, i32 2, i32 4)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %62)
  %63 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %64 = bitcast %struct.RectangleProperties_t* %63 to i8*
  ret i8* %64
}

; Function Attrs: nounwind uwtable
define internal void @rectangle_fill_info_tab(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  %rectangle = alloca %struct.Rectangle_t*, align 8
  %props = alloca %struct.RectangleProperties_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = bitcast i8* %2 to %struct.RectangleProperties_t*
  store %struct.RectangleProperties_t* %3, %struct.RectangleProperties_t** %props, align 8
  %4 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %5 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %obj1 = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %5, i32 0, i32 0
  store %struct.Object_t* %4, %struct.Object_t** %obj1, align 8
  %6 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %x = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %6, i32 0, i32 1
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %x, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call)
  %9 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkSpinButton*
  %10 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x3 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %10, i32 0, i32 1
  %11 = load i32, i32* %x3, align 4
  %conv = sitofp i32 %11 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %9, double %conv)
  %12 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %y = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %12, i32 0, i32 2
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %y, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_spin_button_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call4)
  %15 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkSpinButton*
  %16 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y6 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %16, i32 0, i32 2
  %17 = load i32, i32* %y6, align 4
  %conv7 = sitofp i32 %17 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %15, double %conv7)
  %18 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %width = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %18, i32 0, i32 3
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_spin_button_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call8)
  %21 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkSpinButton*
  %22 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width10 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %22, i32 0, i32 3
  %23 = load i32, i32* %width10, align 4
  %conv11 = sitofp i32 %23 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %21, double %conv11)
  %24 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %height = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %24, i32 0, i32 4
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_spin_button_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call12)
  %27 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkSpinButton*
  %28 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height14 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %28, i32 0, i32 4
  %29 = load i32, i32* %height14, align 4
  %conv15 = sitofp i32 %29 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %27, double %conv15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rectangle_set_initial_focus(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  %props = alloca %struct.RectangleProperties_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.RectangleProperties_t*
  store %struct.RectangleProperties_t* %1, %struct.RectangleProperties_t** %props, align 8
  %2 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %x = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %2, i32 0, i32 1
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %x, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rectangle_update(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  %rectangle = alloca %struct.Rectangle_t*, align 8
  %props = alloca %struct.RectangleProperties_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = bitcast i8* %2 to %struct.RectangleProperties_t*
  store %struct.RectangleProperties_t* %3, %struct.RectangleProperties_t** %props, align 8
  %4 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %x = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %4, i32 0, i32 1
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %x, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkSpinButton*
  %call2 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %7)
  %8 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x3 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %8, i32 0, i32 1
  store i32 %call2, i32* %x3, align 4
  %9 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %y = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %9, i32 0, i32 2
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %y, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_spin_button_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkSpinButton*
  %call6 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %12)
  %13 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y7 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %13, i32 0, i32 2
  store i32 %call6, i32* %y7, align 4
  %14 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %width = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %14, i32 0, i32 3
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_spin_button_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkSpinButton*
  %call10 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %17)
  %18 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width11 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %18, i32 0, i32 3
  store i32 %call10, i32* %width11, align 4
  %19 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %height = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %19, i32 0, i32 4
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_spin_button_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call12)
  %22 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkSpinButton*
  %call14 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %22)
  %23 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height15 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %23, i32 0, i32 4
  store i32 %call14, i32* %height15, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rectangle_write_csim(%struct.Object_t* %obj, i8* %param, void (i8*, i8*, ...)* %output) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %param.addr = alloca i8*, align 8
  %output.addr = alloca void (i8*, i8*, ...)*, align 8
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %param, i8** %param.addr, align 8
  store void (i8*, i8*, ...)* %output, void (i8*, i8*, ...)** %output.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %3 = load i8*, i8** %param.addr, align 8
  %4 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %4, i32 0, i32 1
  %5 = load i32, i32* %x, align 4
  %6 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %6, i32 0, i32 2
  %7 = load i32, i32* %y, align 4
  %8 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x1 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %8, i32 0, i32 1
  %9 = load i32, i32* %x1, align 4
  %10 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %10, i32 0, i32 3
  %11 = load i32, i32* %width, align 4
  %add = add nsw i32 %9, %11
  %12 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y2 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %12, i32 0, i32 2
  %13 = load i32, i32* %y2, align 4
  %14 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %14, i32 0, i32 4
  %15 = load i32, i32* %height, align 4
  %add3 = add nsw i32 %13, %15
  call void (i8*, i8*, ...) %2(i8* %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i32 %5, i32 %7, i32 %add, i32 %add3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rectangle_write_cern(%struct.Object_t* %obj, i8* %param, void (i8*, i8*, ...)* %output) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %param.addr = alloca i8*, align 8
  %output.addr = alloca void (i8*, i8*, ...)*, align 8
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %param, i8** %param.addr, align 8
  store void (i8*, i8*, ...)* %output, void (i8*, i8*, ...)** %output.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %3 = load i8*, i8** %param.addr, align 8
  %4 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %4, i32 0, i32 1
  %5 = load i32, i32* %x, align 4
  %6 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %6, i32 0, i32 2
  %7 = load i32, i32* %y, align 4
  %8 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x1 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %8, i32 0, i32 1
  %9 = load i32, i32* %x1, align 4
  %10 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %10, i32 0, i32 3
  %11 = load i32, i32* %width, align 4
  %add = add nsw i32 %9, %11
  %12 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y2 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %12, i32 0, i32 2
  %13 = load i32, i32* %y2, align 4
  %14 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %14, i32 0, i32 4
  %15 = load i32, i32* %height, align 4
  %add3 = add nsw i32 %13, %15
  call void (i8*, i8*, ...) %2(i8* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i32 %5, i32 %7, i32 %add, i32 %add3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rectangle_write_ncsa(%struct.Object_t* %obj, i8* %param, void (i8*, i8*, ...)* %output) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %param.addr = alloca i8*, align 8
  %output.addr = alloca void (i8*, i8*, ...)*, align 8
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %param, i8** %param.addr, align 8
  store void (i8*, i8*, ...)* %output, void (i8*, i8*, ...)** %output.addr, align 8
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load void (i8*, i8*, ...)*, void (i8*, i8*, ...)** %output.addr, align 8
  %3 = load i8*, i8** %param.addr, align 8
  %4 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %url = getelementptr inbounds %struct.Object_t, %struct.Object_t* %4, i32 0, i32 5
  %5 = load i8*, i8** %url, align 8
  %6 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %6, i32 0, i32 1
  %7 = load i32, i32* %x, align 4
  %8 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %8, i32 0, i32 2
  %9 = load i32, i32* %y, align 4
  %10 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x1 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %10, i32 0, i32 1
  %11 = load i32, i32* %x1, align 4
  %12 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %12, i32 0, i32 3
  %13 = load i32, i32* %width, align 4
  %add = add nsw i32 %11, %13
  %14 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y2 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %14, i32 0, i32 2
  %15 = load i32, i32* %y2, align 4
  %16 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %16, i32 0, i32 4
  %17 = load i32, i32* %height, align 4
  %add3 = add nsw i32 %15, %17
  call void (i8*, i8*, ...) %2(i8* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* %5, i32 %7, i32 %9, i32 %add, i32 %add3)
  ret void
}

declare void @object_do_popup(%struct.Object_t*, %struct._GdkEventButton*) #1

; Function Attrs: nounwind uwtable
define internal i8* @rectangle_get_stock_icon_name() #0 {
entry:
  ret i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define internal void @draw_any_rectangle(%struct._cairo* %cr, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load i32, i32* %w.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %w.addr, align 4
  %2 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, i32* %x.addr, align 4
  %3 = load i32, i32* %w.addr, align 4
  %sub = sub nsw i32 0, %3
  store i32 %sub, i32* %w.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %h.addr, align 4
  %cmp1 = icmp slt i32 %4, 0
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %5 = load i32, i32* %h.addr, align 4
  %6 = load i32, i32* %y.addr, align 4
  %add3 = add nsw i32 %6, %5
  store i32 %add3, i32* %y.addr, align 4
  %7 = load i32, i32* %h.addr, align 4
  %sub4 = sub nsw i32 0, %7
  store i32 %sub4, i32* %h.addr, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %8 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %9 = load i32, i32* %x.addr, align 4
  %10 = load i32, i32* %y.addr, align 4
  %11 = load i32, i32* %w.addr, align 4
  %12 = load i32, i32* %h.addr, align 4
  call void @draw_rectangle(%struct._cairo* %8, i32 0, i32 %9, i32 %10, i32 %11, i32 %12)
  ret void
}

declare void @draw_rectangle(%struct._cairo*, i32, i32, i32, i32, i32) #1

declare void @draw_sash(%struct._cairo*, i32, i32) #1

declare i32 @near_sash(i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @MoveUpperLeftSash(%struct.Object_t* %obj, i32 %dx, i32 %dy) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load i32, i32* %dx.addr, align 4
  %3 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %3, i32 0, i32 1
  %4 = load i32, i32* %x, align 4
  %add = add nsw i32 %4, %2
  store i32 %add, i32* %x, align 4
  %5 = load i32, i32* %dy.addr, align 4
  %6 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %6, i32 0, i32 2
  %7 = load i32, i32* %y, align 4
  %add1 = add nsw i32 %7, %5
  store i32 %add1, i32* %y, align 4
  %8 = load i32, i32* %dx.addr, align 4
  %9 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %9, i32 0, i32 3
  %10 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %10, %8
  store i32 %sub, i32* %width, align 4
  %11 = load i32, i32* %dy.addr, align 4
  %12 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %12, i32 0, i32 4
  %13 = load i32, i32* %height, align 4
  %sub2 = sub nsw i32 %13, %11
  store i32 %sub2, i32* %height, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MoveUpperSash(%struct.Object_t* %obj, i32 %dx, i32 %dy) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load i32, i32* %dy.addr, align 4
  %3 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %3, i32 0, i32 2
  %4 = load i32, i32* %y, align 4
  %add = add nsw i32 %4, %2
  store i32 %add, i32* %y, align 4
  %5 = load i32, i32* %dy.addr, align 4
  %6 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %6, i32 0, i32 4
  %7 = load i32, i32* %height, align 4
  %sub = sub nsw i32 %7, %5
  store i32 %sub, i32* %height, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MoveUpperRightSash(%struct.Object_t* %obj, i32 %dx, i32 %dy) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load i32, i32* %dy.addr, align 4
  %3 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %3, i32 0, i32 2
  %4 = load i32, i32* %y, align 4
  %add = add nsw i32 %4, %2
  store i32 %add, i32* %y, align 4
  %5 = load i32, i32* %dx.addr, align 4
  %6 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %6, i32 0, i32 3
  %7 = load i32, i32* %width, align 4
  %add1 = add nsw i32 %7, %5
  store i32 %add1, i32* %width, align 4
  %8 = load i32, i32* %dy.addr, align 4
  %9 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %9, i32 0, i32 4
  %10 = load i32, i32* %height, align 4
  %sub = sub nsw i32 %10, %8
  store i32 %sub, i32* %height, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MoveLeftSash(%struct.Object_t* %obj, i32 %dx, i32 %dy) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load i32, i32* %dx.addr, align 4
  %3 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %3, i32 0, i32 1
  %4 = load i32, i32* %x, align 4
  %add = add nsw i32 %4, %2
  store i32 %add, i32* %x, align 4
  %5 = load i32, i32* %dx.addr, align 4
  %6 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %6, i32 0, i32 3
  %7 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %7, %5
  store i32 %sub, i32* %width, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MoveRightSash(%struct.Object_t* %obj, i32 %dx, i32 %dy) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load i32, i32* %dx.addr, align 4
  %3 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %3, i32 0, i32 3
  %4 = load i32, i32* %width, align 4
  %add = add nsw i32 %4, %2
  store i32 %add, i32* %width, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MoveLowerLeftSash(%struct.Object_t* %obj, i32 %dx, i32 %dy) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load i32, i32* %dx.addr, align 4
  %3 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %3, i32 0, i32 1
  %4 = load i32, i32* %x, align 4
  %add = add nsw i32 %4, %2
  store i32 %add, i32* %x, align 4
  %5 = load i32, i32* %dx.addr, align 4
  %6 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %6, i32 0, i32 3
  %7 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %7, %5
  store i32 %sub, i32* %width, align 4
  %8 = load i32, i32* %dy.addr, align 4
  %9 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %9, i32 0, i32 4
  %10 = load i32, i32* %height, align 4
  %add1 = add nsw i32 %10, %8
  store i32 %add1, i32* %height, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MoveLowerSash(%struct.Object_t* %obj, i32 %dx, i32 %dy) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load i32, i32* %dy.addr, align 4
  %3 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %3, i32 0, i32 4
  %4 = load i32, i32* %height, align 4
  %add = add nsw i32 %4, %2
  store i32 %add, i32* %height, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MoveLowerRightSash(%struct.Object_t* %obj, i32 %dx, i32 %dy) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load i32, i32* %dx.addr, align 4
  %3 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %3, i32 0, i32 3
  %4 = load i32, i32* %width, align 4
  %add = add nsw i32 %4, %2
  store i32 %add, i32* %width, align 4
  %5 = load i32, i32* %dy.addr, align 4
  %6 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %6, i32 0, i32 4
  %7 = load i32, i32* %height, align 4
  %add1 = add nsw i32 %7, %5
  store i32 %add1, i32* %height, align 4
  ret void
}

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
  %props = alloca %struct.RectangleProperties_t*, align 8
  %obj = alloca %struct.Object_t*, align 8
  %x = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.RectangleProperties_t*
  store %struct.RectangleProperties_t* %1, %struct.RectangleProperties_t** %props, align 8
  %2 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %obj1 = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %2, i32 0, i32 0
  %3 = load %struct.Object_t*, %struct.Object_t** %obj1, align 8
  store %struct.Object_t* %3, %struct.Object_t** %obj, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkSpinButton*
  %call3 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %6)
  store i32 %call3, i32* %x, align 4
  %7 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %chain_button = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %7, i32 0, i32 5
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_chain_button_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpChainButton*
  %call6 = call i32 @gimp_chain_button_get_active(%struct._GimpChainButton* %10)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.RectangleProperties_t*, %struct.RectangleProperties_t** %props, align 8
  %y = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %11, i32 0, i32 2
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %y, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_spin_button_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkSpinButton*
  %15 = load i32, i32* %x, align 4
  %conv = sitofp i32 %15 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %14, double %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, i32* %x, align 4
  %17 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %18 = bitcast %struct.Object_t* %17 to %struct.Rectangle_t*
  %x9 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %18, i32 0, i32 1
  store i32 %16, i32* %x9, align 4
  %19 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %19, i32 0, i32 0
  %20 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %info_dialog = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %20, i32 0, i32 1
  %21 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %info_dialog, align 8
  call void @edit_area_info_dialog_emit_geometry_signal(%struct.AreaInfoDialog_t* %21)
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
  %1 = bitcast i8* %0 to %struct.RectangleProperties_t*
  %obj1 = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %1, i32 0, i32 0
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
  %8 = bitcast %struct.Object_t* %7 to %struct.Rectangle_t*
  %y4 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %8, i32 0, i32 2
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
define internal void @width_changed_cb(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %obj = alloca %struct.Object_t*, align 8
  %width = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.RectangleProperties_t*
  %obj1 = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %1, i32 0, i32 0
  %2 = load %struct.Object_t*, %struct.Object_t** %obj1, align 8
  store %struct.Object_t* %2, %struct.Object_t** %obj, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkSpinButton*
  %call3 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %5)
  store i32 %call3, i32* %width, align 4
  %6 = load i32, i32* %width, align 4
  %7 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %8 = bitcast %struct.Object_t* %7 to %struct.Rectangle_t*
  %width4 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %8, i32 0, i32 3
  store i32 %6, i32* %width4, align 4
  %9 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %9, i32 0, i32 0
  %10 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %info_dialog = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %10, i32 0, i32 1
  %11 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %info_dialog, align 8
  call void @edit_area_info_dialog_emit_geometry_signal(%struct.AreaInfoDialog_t* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @height_changed_cb(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %obj = alloca %struct.Object_t*, align 8
  %height = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.RectangleProperties_t*
  %obj1 = getelementptr inbounds %struct.RectangleProperties_t, %struct.RectangleProperties_t* %1, i32 0, i32 0
  %2 = load %struct.Object_t*, %struct.Object_t** %obj1, align 8
  store %struct.Object_t* %2, %struct.Object_t** %obj, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkSpinButton*
  %call3 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %5)
  store i32 %call3, i32* %height, align 4
  %6 = load i32, i32* %height, align 4
  %7 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %8 = bitcast %struct.Object_t* %7 to %struct.Rectangle_t*
  %height4 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %8, i32 0, i32 4
  store i32 %6, i32* %height4, align 4
  %9 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %9, i32 0, i32 0
  %10 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %info_dialog = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %10, i32 0, i32 1
  %11 = load %struct.AreaInfoDialog_t*, %struct.AreaInfoDialog_t** %info_dialog, align 8
  call void @edit_area_info_dialog_emit_geometry_signal(%struct.AreaInfoDialog_t* %11)
  ret void
}

declare %struct._GtkWidget* @gimp_chain_button_new(i32) #1

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

declare i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #2

declare i32 @gimp_chain_button_get_active(%struct._GimpChainButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_chain_button_get_type() #2

declare void @gtk_spin_button_set_value(%struct._GtkSpinButton*, double) #1

declare void @edit_area_info_dialog_emit_geometry_signal(%struct.AreaInfoDialog_t*) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal i32 @rectangle_factory_finish(%struct.Object_t* %obj, i32 %x, i32 %y) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %rectangle = alloca %struct.Rectangle_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load i32, i32* %x.addr, align 4
  %3 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x1 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %3, i32 0, i32 1
  %4 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %2, %4
  %5 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %5, i32 0, i32 3
  store i32 %sub, i32* %width, align 4
  %6 = load i32, i32* %y.addr, align 4
  %7 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y2 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %7, i32 0, i32 2
  %8 = load i32, i32* %y2, align 4
  %sub3 = sub nsw i32 %6, %8
  %9 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %9, i32 0, i32 4
  store i32 %sub3, i32* %height, align 4
  %10 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  call void @rectangle_normalize(%struct.Object_t* %10)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal %struct.Object_t* @rectangle_factory_create_object(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %call = call %struct.Object_t* @create_rectangle(i32 %0, i32 %1, i32 0, i32 0)
  ret %struct.Object_t* %call
}

; Function Attrs: nounwind uwtable
define internal void @rectangle_factory_set_xy(%struct.Object_t* %obj, i32 %state, i32 %x, i32 %y) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %state.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %rectangle = alloca %struct.Rectangle_t*, align 8
  %width4 = alloca i32, align 4
  %height6 = alloca i32, align 4
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %1 = bitcast %struct.Object_t* %0 to %struct.Rectangle_t*
  store %struct.Rectangle_t* %1, %struct.Rectangle_t** %rectangle, align 8
  %2 = load i32, i32* %x.addr, align 4
  %3 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %x1 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %3, i32 0, i32 1
  %4 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %2, %4
  %5 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %5, i32 0, i32 3
  store i32 %sub, i32* %width, align 4
  %6 = load i32, i32* %y.addr, align 4
  %7 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %y2 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %7, i32 0, i32 2
  %8 = load i32, i32* %y2, align 4
  %sub3 = sub nsw i32 %6, %8
  %9 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %9, i32 0, i32 4
  store i32 %sub3, i32* %height, align 4
  %10 = load i32, i32* %state.addr, align 4
  %and = and i32 %10, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %11 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width5 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %11, i32 0, i32 3
  %12 = load i32, i32* %width5, align 4
  %call = call i32 @abs(i32 %12) #4
  store i32 %call, i32* %width4, align 4
  %13 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height7 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %13, i32 0, i32 4
  %14 = load i32, i32* %height7, align 4
  %call8 = call i32 @abs(i32 %14) #4
  store i32 %call8, i32* %height6, align 4
  %15 = load i32, i32* %width4, align 4
  %16 = load i32, i32* %height6, align 4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %17 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height10 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %17, i32 0, i32 4
  %18 = load i32, i32* %height10, align 4
  %cmp11 = icmp slt i32 %18, 0
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.9
  %19 = load i32, i32* %width4, align 4
  %sub12 = sub nsw i32 0, %19
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  %20 = load i32, i32* %width4, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub12, %cond.true ], [ %20, %cond.false ]
  %21 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height13 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %21, i32 0, i32 4
  store i32 %cond, i32* %height13, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %22 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width14 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %22, i32 0, i32 3
  %23 = load i32, i32* %width14, align 4
  %cmp15 = icmp slt i32 %23, 0
  br i1 %cmp15, label %cond.true.16, label %cond.false.18

cond.true.16:                                     ; preds = %if.else
  %24 = load i32, i32* %height6, align 4
  %sub17 = sub nsw i32 0, %24
  br label %cond.end.19

cond.false.18:                                    ; preds = %if.else
  %25 = load i32, i32* %height6, align 4
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.true.16
  %cond20 = phi i32 [ %sub17, %cond.true.16 ], [ %25, %cond.false.18 ]
  %26 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width21 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %26, i32 0, i32 3
  store i32 %cond20, i32* %width21, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.19, %cond.end
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %entry
  %27 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %width23 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %27, i32 0, i32 3
  %28 = load i32, i32* %width23, align 4
  %29 = load %struct.Rectangle_t*, %struct.Rectangle_t** %rectangle, align 8
  %height24 = getelementptr inbounds %struct.Rectangle_t, %struct.Rectangle_t* %29, i32 0, i32 4
  %30 = load i32, i32* %height24, align 4
  call void @main_set_dimension(i32 %28, i32 %30)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #2

declare void @main_set_dimension(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
