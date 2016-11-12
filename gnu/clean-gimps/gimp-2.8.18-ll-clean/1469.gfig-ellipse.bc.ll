; ModuleID = './plug-ins/gfig/gfig-ellipse.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GfigObjectClass = type { i32, i8*, void (%struct._GfigObject*, %struct._cairo*)*, void (%struct._GfigObject*)*, %struct._GfigObject* (%struct._GfigObject*)*, void (%struct._GdkPoint*)* }
%struct._GfigObject = type { i32, %struct.GfigObjectClass*, i32, %struct.DobjPoints*, %struct._Style, i32 }
%struct.DobjPoints = type { %struct.DobjPoints*, %struct._GdkPoint, i32 }
%struct._GdkPoint = type { i32, i32 }
%struct._Style = type { i8*, i8*, i32, i32, i32, i32, double, double, double, i32, double, i8*, i8*, i32, %struct._GimpRGB, %struct._GimpRGB, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._cairo = type opaque
%struct.GFigContext = type { i32, i32, i32, i32, %struct._GFigObj*, %struct._GfigObject*, %struct._GtkWidget*, %struct._Style, %struct.BrushDesc, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpRGB*, %struct._GimpRGB*, i32, i32 }
%struct._GFigObj = type { i8*, i8*, i8*, float, %struct.GfigOpts, %struct._GList*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct.GfigOpts = type { i32, i32, i32, i32, i32, i32, double, double, double, double, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.BrushDesc = type { i8*, double, i32, i32, i32, i32, i8*, i16, i16, i8* }
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
%struct.SelectItVals = type { %struct.GfigOpts, i32, i32, i32, double, double, double, i32, i32, i32, i32, i32, double, i32, i32 }
%struct.selection_option = type { i32, i32, i32, double, i32, i32, double }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@dobj_class = external global [10 x %struct.GfigObjectClass], align 16
@.str = private unnamed_addr constant [8 x i8] c"ELLIPSE\00", align 1
@obj_creating = external global %struct._GfigObject*, align 8
@gfig_context = external global %struct.GFigContext*, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"gfig-ellipse.c\00", align 1
@__func__.d_paint_ellipse = private unnamed_addr constant [16 x i8] c"d_paint_ellipse\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"obj != NULL\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Internal error - ellipse no edge pnt\00", align 1
@selvals = external global %struct.SelectItVals, align 8
@selopt = external global %struct.selection_option, align 8
@d_paint_ellipse.step = internal constant double 0x3FA1DF46A2529D39, align 8
@__func__.d_copy_ellipse = private unnamed_addr constant [15 x i8] c"d_copy_ellipse\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"obj->type == ELLIPSE\00", align 1

; Function Attrs: nounwind uwtable
define void @d_ellipse_object_class_init() #0 {
entry:
  %class = alloca %struct.GfigObjectClass*, align 8
  store %struct.GfigObjectClass* getelementptr inbounds ([10 x %struct.GfigObjectClass], [10 x %struct.GfigObjectClass]* @dobj_class, i32 0, i64 4), %struct.GfigObjectClass** %class, align 8
  %0 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %type = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %0, i32 0, i32 0
  store i32 4, i32* %type, align 4
  %1 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %name = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8** %name, align 8
  %2 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %drawfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %2, i32 0, i32 2
  store void (%struct._GfigObject*, %struct._cairo*)* @d_draw_ellipse, void (%struct._GfigObject*, %struct._cairo*)** %drawfunc, align 8
  %3 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %paintfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %3, i32 0, i32 3
  store void (%struct._GfigObject*)* @d_paint_ellipse, void (%struct._GfigObject*)** %paintfunc, align 8
  %4 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %copyfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %4, i32 0, i32 4
  store %struct._GfigObject* (%struct._GfigObject*)* @d_copy_ellipse, %struct._GfigObject* (%struct._GfigObject*)** %copyfunc, align 8
  %5 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %update = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %5, i32 0, i32 5
  store void (%struct._GdkPoint*)* @d_update_ellipse, void (%struct._GdkPoint*)** %update, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @d_draw_ellipse(%struct._GfigObject* %obj, %struct._cairo* %cr) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %center_pnt = alloca %struct.DobjPoints*, align 8
  %edge_pnt = alloca %struct.DobjPoints*, align 8
  %bound_wx = alloca i32, align 4
  %bound_wy = alloca i32, align 4
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 3
  %1 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %1, %struct.DobjPoints** %center_pnt, align 8
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %3, i32 0, i32 1
  %4 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %5 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %5, i32 0, i32 5
  %6 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj, align 8
  %cmp = icmp eq %struct._GfigObject* %4, %6
  %conv = zext i1 %cmp to i32
  %7 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_sqr(%struct._GdkPoint* %pnt, i32 %conv, %struct._cairo* %7)
  %8 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %8, i32 0, i32 0
  %9 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %9, %struct.DobjPoints** %edge_pnt, align 8
  %10 = load %struct.DobjPoints*, %struct.DobjPoints** %edge_pnt, align 8
  %tobool1 = icmp ne %struct.DobjPoints* %10, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %11 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %12 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %cmp4 = icmp eq %struct._GfigObject* %11, %12
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.3
  %13 = load %struct.DobjPoints*, %struct.DobjPoints** %edge_pnt, align 8
  %pnt7 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %13, i32 0, i32 1
  %14 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_circle(%struct._GdkPoint* %pnt7, i32 1, %struct._cairo* %14)
  br label %if.end.12

if.else:                                          ; preds = %if.end.3
  %15 = load %struct.DobjPoints*, %struct.DobjPoints** %edge_pnt, align 8
  %pnt8 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %15, i32 0, i32 1
  %16 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %17 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj9 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %17, i32 0, i32 5
  %18 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj9, align 8
  %cmp10 = icmp eq %struct._GfigObject* %16, %18
  %conv11 = zext i1 %cmp10 to i32
  %19 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_sqr(%struct._GdkPoint* %pnt8, i32 %conv11, %struct._cairo* %19)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.6
  %20 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt13 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %20, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt13, i32 0, i32 0
  %21 = load i32, i32* %x, align 4
  %22 = load %struct.DobjPoints*, %struct.DobjPoints** %edge_pnt, align 8
  %pnt14 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %22, i32 0, i32 1
  %x15 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt14, i32 0, i32 0
  %23 = load i32, i32* %x15, align 4
  %sub = sub nsw i32 %21, %23
  %call = call i32 @abs(i32 %sub) #6
  store i32 %call, i32* %bound_wx, align 4
  %24 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt16 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %24, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt16, i32 0, i32 1
  %25 = load i32, i32* %y, align 4
  %26 = load %struct.DobjPoints*, %struct.DobjPoints** %edge_pnt, align 8
  %pnt17 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %26, i32 0, i32 1
  %y18 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt17, i32 0, i32 1
  %27 = load i32, i32* %y18, align 4
  %sub19 = sub nsw i32 %25, %27
  %call20 = call i32 @abs(i32 %sub19) #6
  store i32 %call20, i32* %bound_wy, align 4
  %28 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt21 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %28, i32 0, i32 1
  %x22 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt21, i32 0, i32 0
  %29 = load i32, i32* %x22, align 4
  %30 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt23 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %30, i32 0, i32 1
  %y24 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt23, i32 0, i32 1
  %31 = load i32, i32* %y24, align 4
  %32 = load i32, i32* %bound_wx, align 4
  %33 = load i32, i32* %bound_wy, align 4
  %34 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gfig_draw_arc(i32 %29, i32 %31, i32 %32, i32 %33, i32 0, i32 360, %struct._cairo* %34)
  br label %return

return:                                           ; preds = %if.end.12, %if.then.2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @d_paint_ellipse(%struct._GfigObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %center_pnt = alloca %struct.DobjPoints*, align 8
  %edge_pnt = alloca %struct.DobjPoints*, align 8
  %bound_wx = alloca i32, align 4
  %bound_wy = alloca i32, align 4
  %top_x = alloca i32, align 4
  %top_y = alloca i32, align 4
  %dpnts = alloca [4 x double], align 16
  %rx = alloca double, align 8
  %ry = alloca double, align 8
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  %line_pnts = alloca [362 x double], align 16
  %angle = alloca double, align 8
  %i = alloca i32, align 4
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %cmp = icmp ne %struct._GfigObject* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.d_paint_ellipse, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %1, i32 0, i32 3
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %2, %struct.DobjPoints** %center_pnt, align 8
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %3, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  br label %if.end.103

if.end.2:                                         ; preds = %do.end
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %4, i32 0, i32 0
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %5, %struct.DobjPoints** %edge_pnt, align 8
  %6 = load %struct.DobjPoints*, %struct.DobjPoints** %edge_pnt, align 8
  %tobool3 = icmp ne %struct.DobjPoints* %6, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %7 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %7, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt, i32 0, i32 0
  %8 = load i32, i32* %x, align 4
  %9 = load %struct.DobjPoints*, %struct.DobjPoints** %edge_pnt, align 8
  %pnt6 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %9, i32 0, i32 1
  %x7 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt6, i32 0, i32 0
  %10 = load i32, i32* %x7, align 4
  %sub = sub nsw i32 %8, %10
  %call = call i32 @abs(i32 %sub) #6
  %mul = mul nsw i32 %call, 2
  store i32 %mul, i32* %bound_wx, align 4
  %11 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt8 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %11, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt8, i32 0, i32 1
  %12 = load i32, i32* %y, align 4
  %13 = load %struct.DobjPoints*, %struct.DobjPoints** %edge_pnt, align 8
  %pnt9 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %13, i32 0, i32 1
  %y10 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt9, i32 0, i32 1
  %14 = load i32, i32* %y10, align 4
  %sub11 = sub nsw i32 %12, %14
  %call12 = call i32 @abs(i32 %sub11) #6
  %mul13 = mul nsw i32 %call12, 2
  store i32 %mul13, i32* %bound_wy, align 4
  %15 = load %struct.DobjPoints*, %struct.DobjPoints** %edge_pnt, align 8
  %pnt14 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %15, i32 0, i32 1
  %x15 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt14, i32 0, i32 0
  %16 = load i32, i32* %x15, align 4
  %17 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt16 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %17, i32 0, i32 1
  %x17 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt16, i32 0, i32 0
  %18 = load i32, i32* %x17, align 4
  %cmp18 = icmp sgt i32 %16, %18
  br i1 %cmp18, label %if.then.19, label %if.else.26

if.then.19:                                       ; preds = %if.end.5
  %19 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt20 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %19, i32 0, i32 1
  %x21 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt20, i32 0, i32 0
  %20 = load i32, i32* %x21, align 4
  %mul22 = mul nsw i32 2, %20
  %21 = load %struct.DobjPoints*, %struct.DobjPoints** %edge_pnt, align 8
  %pnt23 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %21, i32 0, i32 1
  %x24 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt23, i32 0, i32 0
  %22 = load i32, i32* %x24, align 4
  %sub25 = sub nsw i32 %mul22, %22
  store i32 %sub25, i32* %top_x, align 4
  br label %if.end.29

if.else.26:                                       ; preds = %if.end.5
  %23 = load %struct.DobjPoints*, %struct.DobjPoints** %edge_pnt, align 8
  %pnt27 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %23, i32 0, i32 1
  %x28 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt27, i32 0, i32 0
  %24 = load i32, i32* %x28, align 4
  store i32 %24, i32* %top_x, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.19
  %25 = load %struct.DobjPoints*, %struct.DobjPoints** %edge_pnt, align 8
  %pnt30 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %25, i32 0, i32 1
  %y31 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt30, i32 0, i32 1
  %26 = load i32, i32* %y31, align 4
  %27 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt32 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %27, i32 0, i32 1
  %y33 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt32, i32 0, i32 1
  %28 = load i32, i32* %y33, align 4
  %cmp34 = icmp sgt i32 %26, %28
  br i1 %cmp34, label %if.then.35, label %if.else.42

if.then.35:                                       ; preds = %if.end.29
  %29 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt36 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %29, i32 0, i32 1
  %y37 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt36, i32 0, i32 1
  %30 = load i32, i32* %y37, align 4
  %mul38 = mul nsw i32 2, %30
  %31 = load %struct.DobjPoints*, %struct.DobjPoints** %edge_pnt, align 8
  %pnt39 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %31, i32 0, i32 1
  %y40 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt39, i32 0, i32 1
  %32 = load i32, i32* %y40, align 4
  %sub41 = sub nsw i32 %mul38, %32
  store i32 %sub41, i32* %top_y, align 4
  br label %if.end.45

if.else.42:                                       ; preds = %if.end.29
  %33 = load %struct.DobjPoints*, %struct.DobjPoints** %edge_pnt, align 8
  %pnt43 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %33, i32 0, i32 1
  %y44 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt43, i32 0, i32 1
  %34 = load i32, i32* %y44, align 4
  store i32 %34, i32* %top_y, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.35
  %35 = load i32, i32* %top_x, align 4
  %conv = sitofp i32 %35 to double
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 0
  store double %conv, double* %arrayidx, align 8
  %36 = load i32, i32* %top_y, align 4
  %conv46 = sitofp i32 %36 to double
  %arrayidx47 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 1
  store double %conv46, double* %arrayidx47, align 8
  %37 = load i32, i32* %bound_wx, align 4
  %conv48 = sitofp i32 %37 to double
  %arrayidx49 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 2
  store double %conv48, double* %arrayidx49, align 8
  %38 = load i32, i32* %bound_wy, align 4
  %conv50 = sitofp i32 %38 to double
  %arrayidx51 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 3
  store double %conv50, double* %arrayidx51, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 11), align 4
  %tobool52 = icmp ne i32 %39, 0
  br i1 %tobool52, label %if.then.53, label %if.else.55

if.then.53:                                       ; preds = %if.end.45
  %arrayidx54 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 0
  call void @scale_to_original_xy(double* %arrayidx54, i32 2)
  br label %if.end.57

if.else.55:                                       ; preds = %if.end.45
  %arrayidx56 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 0
  call void @scale_to_xy(double* %arrayidx56, i32 2)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.55, %if.then.53
  %call58 = call %struct._Style* @gfig_context_get_current_style()
  %fill_type = getelementptr inbounds %struct._Style, %struct._Style* %call58, i32 0, i32 9
  %40 = load i32, i32* %fill_type, align 4
  %cmp59 = icmp ne i32 %40, 0
  br i1 %cmp59, label %if.then.61, label %if.end.79

if.then.61:                                       ; preds = %if.end.57
  %call62 = call i32 @gimp_context_push()
  %41 = load i32, i32* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 1), align 4
  %call63 = call i32 @gimp_context_set_antialias(i32 %41)
  %42 = load i32, i32* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 2), align 4
  %call64 = call i32 @gimp_context_set_feather(i32 %42)
  %43 = load double, double* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 3), align 8
  %44 = load double, double* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 3), align 8
  %call65 = call i32 @gimp_context_set_feather_radius(double %43, double %44)
  %45 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %image_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %45, i32 0, i32 2
  %46 = load i32, i32* %image_id, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 0), align 4
  %arrayidx66 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 0
  %48 = load double, double* %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 1
  %49 = load double, double* %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 2
  %50 = load double, double* %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 3
  %51 = load double, double* %arrayidx69, align 8
  %call70 = call i32 @gimp_image_select_ellipse(i32 %46, i32 %47, double %48, double %49, double %50, double %51)
  %call71 = call i32 @gimp_context_pop()
  %52 = load i32, i32* %top_x, align 4
  %conv72 = sitofp i32 %52 to double
  %53 = load i32, i32* %top_y, align 4
  %conv73 = sitofp i32 %53 to double
  %54 = load i32, i32* %top_x, align 4
  %55 = load i32, i32* %bound_wx, align 4
  %add = add nsw i32 %54, %55
  %conv74 = sitofp i32 %add to double
  %56 = load i32, i32* %top_y, align 4
  %57 = load i32, i32* %bound_wy, align 4
  %add75 = add nsw i32 %56, %57
  %conv76 = sitofp i32 %add75 to double
  call void @paint_layer_fill(double %conv72, double %conv73, double %conv74, double %conv76)
  %58 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %image_id77 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %58, i32 0, i32 2
  %59 = load i32, i32* %image_id77, align 4
  %call78 = call i32 @gimp_selection_none(i32 %59)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.61, %if.end.57
  %60 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %style = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %60, i32 0, i32 4
  %paint_type = getelementptr inbounds %struct._Style, %struct._Style* %style, i32 0, i32 13
  %61 = load i32, i32* %paint_type, align 4
  %cmp80 = icmp eq i32 %61, 1
  br i1 %cmp80, label %if.then.82, label %if.end.103

if.then.82:                                       ; preds = %if.end.79
  %arrayidx83 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 2
  %62 = load double, double* %arrayidx83, align 8
  %div = fdiv double %62, 2.000000e+00
  store double %div, double* %rx, align 8
  %arrayidx84 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 3
  %63 = load double, double* %arrayidx84, align 8
  %div85 = fdiv double %63, 2.000000e+00
  store double %div85, double* %ry, align 8
  %arrayidx86 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 0
  %64 = load double, double* %arrayidx86, align 8
  %65 = load double, double* %rx, align 8
  %add87 = fadd double %64, %65
  store double %add87, double* %cx, align 8
  %arrayidx88 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 1
  %66 = load double, double* %arrayidx88, align 8
  %67 = load double, double* %ry, align 8
  %add89 = fadd double %66, %67
  store double %add89, double* %cy, align 8
  store double 0.000000e+00, double* %angle, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.82
  %68 = load i32, i32* %i, align 4
  %cmp90 = icmp slt i32 %68, 362
  br i1 %cmp90, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %69 = load double, double* %cx, align 8
  %70 = load double, double* %rx, align 8
  %71 = load double, double* %angle, align 8
  %call92 = call double @cos(double %71) #5
  %mul93 = fmul double %70, %call92
  %add94 = fadd double %69, %mul93
  %72 = load i32, i32* %i, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %72 to i64
  %arrayidx95 = getelementptr inbounds [362 x double], [362 x double]* %line_pnts, i32 0, i64 %idxprom
  store double %add94, double* %arrayidx95, align 8
  %73 = load double, double* %cy, align 8
  %74 = load double, double* %ry, align 8
  %75 = load double, double* %angle, align 8
  %call96 = call double @sin(double %75) #5
  %mul97 = fmul double %74, %call96
  %add98 = fadd double %73, %mul97
  %76 = load i32, i32* %i, align 4
  %inc99 = add nsw i32 %76, 1
  store i32 %inc99, i32* %i, align 4
  %idxprom100 = sext i32 %76 to i64
  %arrayidx101 = getelementptr inbounds [362 x double], [362 x double]* %line_pnts, i32 0, i64 %idxprom100
  store double %add98, double* %arrayidx101, align 8
  %77 = load double, double* %angle, align 8
  %add102 = fadd double %77, 0x3FA1DF46A2529D39
  store double %add102, double* %angle, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %78 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 13), align 4
  %79 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %79, i32 0, i32 3
  %80 = load i32, i32* %drawable_id, align 4
  %81 = load i32, i32* %i, align 4
  %arraydecay = getelementptr inbounds [362 x double], [362 x double]* %line_pnts, i32 0, i32 0
  call void @gfig_paint(i32 %78, i32 %80, i32 %81, double* %arraydecay)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.1, %while.end, %if.end.79
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GfigObject* @d_copy_ellipse(%struct._GfigObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %nc = alloca %struct._GfigObject*, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 169, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.d_copy_ellipse, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %2, i32 0, i32 3
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %3, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt, i32 0, i32 0
  %4 = load i32, i32* %x, align 4
  %5 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points1 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %5, i32 0, i32 3
  %6 = load %struct.DobjPoints*, %struct.DobjPoints** %points1, align 8
  %pnt2 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %6, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt2, i32 0, i32 1
  %7 = load i32, i32* %y, align 4
  %call = call %struct._GfigObject* @d_new_object(i32 4, i32 %4, i32 %7)
  store %struct._GfigObject* %call, %struct._GfigObject** %nc, align 8
  %8 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points3 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %8, i32 0, i32 3
  %9 = load %struct.DobjPoints*, %struct.DobjPoints** %points3, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %9, i32 0, i32 0
  %10 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  %call4 = call %struct.DobjPoints* @d_copy_dobjpoints(%struct.DobjPoints* %10)
  %11 = load %struct._GfigObject*, %struct._GfigObject** %nc, align 8
  %points5 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %11, i32 0, i32 3
  %12 = load %struct.DobjPoints*, %struct.DobjPoints** %points5, align 8
  %next6 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %12, i32 0, i32 0
  store %struct.DobjPoints* %call4, %struct.DobjPoints** %next6, align 8
  %13 = load %struct._GfigObject*, %struct._GfigObject** %nc, align 8
  ret %struct._GfigObject* %13
}

; Function Attrs: nounwind uwtable
define internal void @d_update_ellipse(%struct._GdkPoint* %pnt) #0 {
entry:
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  %center_pnt = alloca %struct.DobjPoints*, align 8
  %edge_pnt = alloca %struct.DobjPoints*, align 8
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  %0 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 3
  %1 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %1, %struct.DobjPoints** %center_pnt, align 8
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.5

if.end:                                           ; preds = %entry
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %3, i32 0, i32 0
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %4, %struct.DobjPoints** %edge_pnt, align 8
  %tobool1 = icmp ne %struct.DobjPoints* %4, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %edge_pnt, align 8
  %pnt3 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %5, i32 0, i32 1
  %6 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %7 = bitcast %struct._GdkPoint* %pnt3 to i8*
  %8 = bitcast %struct._GdkPoint* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 4, i1 false)
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %9 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %9, i32 0, i32 0
  %10 = load i32, i32* %x, align 4
  %11 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %11, i32 0, i32 1
  %12 = load i32, i32* %y, align 4
  %call = call %struct.DobjPoints* @new_dobjpoint(i32 %10, i32 %12)
  store %struct.DobjPoints* %call, %struct.DobjPoints** %edge_pnt, align 8
  %13 = load %struct.DobjPoints*, %struct.DobjPoints** %edge_pnt, align 8
  %14 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %next4 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %14, i32 0, i32 0
  store %struct.DobjPoints* %13, %struct.DobjPoints** %next4, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then, %if.else, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define void @d_ellipse_start(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
entry:
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  %shift_down.addr = alloca i32, align 4
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  store i32 %shift_down, i32* %shift_down.addr, align 4
  %0 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %0, i32 0, i32 0
  %1 = load i32, i32* %x, align 4
  %2 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %2, i32 0, i32 1
  %3 = load i32, i32* %y, align 4
  %call = call %struct._GfigObject* @d_new_object(i32 4, i32 %1, i32 %3)
  store %struct._GfigObject* %call, %struct._GfigObject** @obj_creating, align 8
  ret void
}

declare %struct._GfigObject* @d_new_object(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @d_ellipse_end(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
entry:
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  %shift_down.addr = alloca i32, align 4
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  store i32 %shift_down, i32* %shift_down.addr, align 4
  %0 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 3
  %1 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %1, i32 0, i32 0
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  %tobool = icmp ne %struct.DobjPoints* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  call void @free_one_obj(%struct._GfigObject* %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %4, i32 0, i32 4
  %5 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %6 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  call void @add_to_all_obj(%struct._GFigObj* %5, %struct._GfigObject* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store %struct._GfigObject* null, %struct._GfigObject** @obj_creating, align 8
  ret void
}

declare void @free_one_obj(%struct._GfigObject*) #1

declare void @add_to_all_obj(%struct._GFigObj*, %struct._GfigObject*) #1

declare void @draw_sqr(%struct._GdkPoint*, i32, %struct._cairo*) #1

declare void @draw_circle(%struct._GdkPoint*, i32, %struct._cairo*) #1

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #2

declare void @gfig_draw_arc(i32, i32, i32, i32, i32, i32, %struct._cairo*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @g_error(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 4, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond

return:                                           ; No predecessors!
  ret void
}

declare void @scale_to_original_xy(double*, i32) #1

declare void @scale_to_xy(double*, i32) #1

declare %struct._Style* @gfig_context_get_current_style() #1

declare i32 @gimp_context_push() #1

declare i32 @gimp_context_set_antialias(i32) #1

declare i32 @gimp_context_set_feather(i32) #1

declare i32 @gimp_context_set_feather_radius(double, double) #1

declare i32 @gimp_image_select_ellipse(i32, i32, double, double, double, double) #1

declare i32 @gimp_context_pop() #1

declare void @paint_layer_fill(double, double, double, double) #1

declare i32 @gimp_selection_none(i32) #1

; Function Attrs: nounwind
declare double @cos(double) #4

; Function Attrs: nounwind
declare double @sin(double) #4

declare void @gfig_paint(i32, i32, i32, double*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare %struct.DobjPoints* @d_copy_dobjpoints(%struct.DobjPoints*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare %struct.DobjPoints* @new_dobjpoint(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
