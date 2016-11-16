; ModuleID = './plug-ins/gfig/gfig-circle.bc'
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
@.str = private unnamed_addr constant [7 x i8] c"CIRCLE\00", align 1
@obj_creating = external global %struct._GfigObject*, align 8
@gfig_context = external global %struct.GFigContext*, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"gfig-circle.c\00", align 1
@__func__.d_paint_circle = private unnamed_addr constant [15 x i8] c"d_paint_circle\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"obj != NULL\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Internal error - circle no edge pnt\00", align 1
@selvals = external global %struct.SelectItVals, align 8
@selopt = external global %struct.selection_option, align 8
@d_paint_circle.step = internal constant double 0x3FA1DF46A2529D39, align 8
@__func__.d_copy_circle = private unnamed_addr constant [14 x i8] c"d_copy_circle\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"obj->type == CIRCLE\00", align 1

; Function Attrs: nounwind uwtable
define void @d_circle_object_class_init() #0 {
entry:
  %class = alloca %struct.GfigObjectClass*, align 8
  store %struct.GfigObjectClass* getelementptr inbounds ([10 x %struct.GfigObjectClass], [10 x %struct.GfigObjectClass]* @dobj_class, i32 0, i64 3), %struct.GfigObjectClass** %class, align 8
  %0 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %type = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %0, i32 0, i32 0
  store i32 3, i32* %type, align 4
  %1 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %name = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8** %name, align 8
  %2 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %drawfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %2, i32 0, i32 2
  store void (%struct._GfigObject*, %struct._cairo*)* @d_draw_circle, void (%struct._GfigObject*, %struct._cairo*)** %drawfunc, align 8
  %3 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %paintfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %3, i32 0, i32 3
  store void (%struct._GfigObject*)* @d_paint_circle, void (%struct._GfigObject*)** %paintfunc, align 8
  %4 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %copyfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %4, i32 0, i32 4
  store %struct._GfigObject* (%struct._GfigObject*)* @d_copy_circle, %struct._GfigObject* (%struct._GfigObject*)** %copyfunc, align 8
  %5 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %update = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %5, i32 0, i32 5
  store void (%struct._GdkPoint*)* @d_update_circle, void (%struct._GdkPoint*)** %update, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @d_draw_circle(%struct._GfigObject* %obj, %struct._cairo* %cr) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %center_pnt = alloca %struct.DobjPoints*, align 8
  %edge_pnt = alloca %struct.DobjPoints*, align 8
  %radius = alloca i32, align 4
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
  %11 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt4 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %11, i32 0, i32 1
  %12 = load %struct.DobjPoints*, %struct.DobjPoints** %edge_pnt, align 8
  %pnt5 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %12, i32 0, i32 1
  %call = call i32 @calc_radius(%struct._GdkPoint* %pnt4, %struct._GdkPoint* %pnt5)
  store i32 %call, i32* %radius, align 4
  %13 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %14 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %cmp6 = icmp eq %struct._GfigObject* %13, %14
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.3
  %15 = load %struct.DobjPoints*, %struct.DobjPoints** %edge_pnt, align 8
  %pnt9 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %15, i32 0, i32 1
  %16 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_circle(%struct._GdkPoint* %pnt9, i32 1, %struct._cairo* %16)
  br label %if.end.14

if.else:                                          ; preds = %if.end.3
  %17 = load %struct.DobjPoints*, %struct.DobjPoints** %edge_pnt, align 8
  %pnt10 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %17, i32 0, i32 1
  %18 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %19 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj11 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %19, i32 0, i32 5
  %20 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj11, align 8
  %cmp12 = icmp eq %struct._GfigObject* %18, %20
  %conv13 = zext i1 %cmp12 to i32
  %21 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_sqr(%struct._GdkPoint* %pnt10, i32 %conv13, %struct._cairo* %21)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.8
  %22 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt15 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %22, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt15, i32 0, i32 0
  %23 = load i32, i32* %x, align 4
  %24 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt16 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %24, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt16, i32 0, i32 1
  %25 = load i32, i32* %y, align 4
  %26 = load i32, i32* %radius, align 4
  %27 = load i32, i32* %radius, align 4
  %28 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gfig_draw_arc(i32 %23, i32 %25, i32 %26, i32 %27, i32 0, i32 360, %struct._cairo* %28)
  br label %return

return:                                           ; preds = %if.end.14, %if.then.2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @d_paint_circle(%struct._GfigObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %center_pnt = alloca %struct.DobjPoints*, align 8
  %edge_pnt = alloca %struct.DobjPoints*, align 8
  %radius = alloca i32, align 4
  %dpnts = alloca [4 x double], align 16
  %r = alloca double, align 8
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
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.d_paint_circle, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #5
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
  br label %if.end.76

if.end.2:                                         ; preds = %do.end
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %4, i32 0, i32 0
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %5, %struct.DobjPoints** %edge_pnt, align 8
  %6 = load %struct.DobjPoints*, %struct.DobjPoints** %edge_pnt, align 8
  %tobool3 = icmp ne %struct.DobjPoints* %6, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %7 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %7, i32 0, i32 1
  %8 = load %struct.DobjPoints*, %struct.DobjPoints** %edge_pnt, align 8
  %pnt6 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %8, i32 0, i32 1
  %call = call i32 @calc_radius(%struct._GdkPoint* %pnt, %struct._GdkPoint* %pnt6)
  store i32 %call, i32* %radius, align 4
  %9 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt7 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %9, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt7, i32 0, i32 0
  %10 = load i32, i32* %x, align 4
  %conv = sitofp i32 %10 to double
  %11 = load i32, i32* %radius, align 4
  %conv8 = sitofp i32 %11 to double
  %sub = fsub double %conv, %conv8
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 0
  store double %sub, double* %arrayidx, align 8
  %12 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt9 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %12, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt9, i32 0, i32 1
  %13 = load i32, i32* %y, align 4
  %conv10 = sitofp i32 %13 to double
  %14 = load i32, i32* %radius, align 4
  %conv11 = sitofp i32 %14 to double
  %sub12 = fsub double %conv10, %conv11
  %arrayidx13 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 1
  store double %sub12, double* %arrayidx13, align 8
  %15 = load i32, i32* %radius, align 4
  %conv14 = sitofp i32 %15 to double
  %mul = fmul double %conv14, 2.000000e+00
  %arrayidx15 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 2
  store double %mul, double* %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 3
  store double %mul, double* %arrayidx16, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 11), align 4
  %tobool17 = icmp ne i32 %16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.end.5
  %arrayidx19 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 0
  call void @scale_to_original_xy(double* %arrayidx19, i32 2)
  br label %if.end.22

if.else.20:                                       ; preds = %if.end.5
  %arrayidx21 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 0
  call void @scale_to_xy(double* %arrayidx21, i32 2)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.then.18
  %call23 = call %struct._Style* @gfig_context_get_current_style()
  %fill_type = getelementptr inbounds %struct._Style, %struct._Style* %call23, i32 0, i32 9
  %17 = load i32, i32* %fill_type, align 4
  %cmp24 = icmp ne i32 %17, 0
  br i1 %cmp24, label %if.then.26, label %if.end.54

if.then.26:                                       ; preds = %if.end.22
  %call27 = call i32 @gimp_context_push()
  %18 = load i32, i32* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 1), align 4
  %call28 = call i32 @gimp_context_set_antialias(i32 %18)
  %19 = load i32, i32* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 2), align 4
  %call29 = call i32 @gimp_context_set_feather(i32 %19)
  %20 = load double, double* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 3), align 8
  %21 = load double, double* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 3), align 8
  %call30 = call i32 @gimp_context_set_feather_radius(double %20, double %21)
  %22 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %image_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %22, i32 0, i32 2
  %23 = load i32, i32* %image_id, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 0), align 4
  %arrayidx31 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 0
  %25 = load double, double* %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 1
  %26 = load double, double* %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 2
  %27 = load double, double* %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 3
  %28 = load double, double* %arrayidx34, align 8
  %call35 = call i32 @gimp_image_select_ellipse(i32 %23, i32 %24, double %25, double %26, double %27, double %28)
  %call36 = call i32 @gimp_context_pop()
  %29 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt37 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %29, i32 0, i32 1
  %x38 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt37, i32 0, i32 0
  %30 = load i32, i32* %x38, align 4
  %31 = load i32, i32* %radius, align 4
  %sub39 = sub nsw i32 %30, %31
  %conv40 = sitofp i32 %sub39 to double
  %32 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt41 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %32, i32 0, i32 1
  %y42 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt41, i32 0, i32 1
  %33 = load i32, i32* %y42, align 4
  %34 = load i32, i32* %radius, align 4
  %sub43 = sub nsw i32 %33, %34
  %conv44 = sitofp i32 %sub43 to double
  %35 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt45 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %35, i32 0, i32 1
  %x46 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt45, i32 0, i32 0
  %36 = load i32, i32* %x46, align 4
  %37 = load i32, i32* %radius, align 4
  %add = add nsw i32 %36, %37
  %conv47 = sitofp i32 %add to double
  %38 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt48 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %38, i32 0, i32 1
  %y49 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt48, i32 0, i32 1
  %39 = load i32, i32* %y49, align 4
  %40 = load i32, i32* %radius, align 4
  %add50 = add nsw i32 %39, %40
  %conv51 = sitofp i32 %add50 to double
  call void @paint_layer_fill(double %conv40, double %conv44, double %conv47, double %conv51)
  %41 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %image_id52 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %41, i32 0, i32 2
  %42 = load i32, i32* %image_id52, align 4
  %call53 = call i32 @gimp_selection_none(i32 %42)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.26, %if.end.22
  %43 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %style = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %43, i32 0, i32 4
  %paint_type = getelementptr inbounds %struct._Style, %struct._Style* %style, i32 0, i32 13
  %44 = load i32, i32* %paint_type, align 4
  %cmp55 = icmp eq i32 %44, 1
  br i1 %cmp55, label %if.then.57, label %if.end.76

if.then.57:                                       ; preds = %if.end.54
  %arrayidx58 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 2
  %45 = load double, double* %arrayidx58, align 8
  %div = fdiv double %45, 2.000000e+00
  store double %div, double* %r, align 8
  %arrayidx59 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 0
  %46 = load double, double* %arrayidx59, align 8
  %47 = load double, double* %r, align 8
  %add60 = fadd double %46, %47
  store double %add60, double* %cx, align 8
  %arrayidx61 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 1
  %48 = load double, double* %arrayidx61, align 8
  %49 = load double, double* %r, align 8
  %add62 = fadd double %48, %49
  store double %add62, double* %cy, align 8
  store double 0.000000e+00, double* %angle, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.57
  %50 = load i32, i32* %i, align 4
  %cmp63 = icmp slt i32 %50, 362
  br i1 %cmp63, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %51 = load double, double* %cx, align 8
  %52 = load double, double* %r, align 8
  %53 = load double, double* %angle, align 8
  %call65 = call double @cos(double %53) #4
  %mul66 = fmul double %52, %call65
  %add67 = fadd double %51, %mul66
  %54 = load i32, i32* %i, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %54 to i64
  %arrayidx68 = getelementptr inbounds [362 x double], [362 x double]* %line_pnts, i32 0, i64 %idxprom
  store double %add67, double* %arrayidx68, align 8
  %55 = load double, double* %cy, align 8
  %56 = load double, double* %r, align 8
  %57 = load double, double* %angle, align 8
  %call69 = call double @sin(double %57) #4
  %mul70 = fmul double %56, %call69
  %add71 = fadd double %55, %mul70
  %58 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %58, 1
  store i32 %inc72, i32* %i, align 4
  %idxprom73 = sext i32 %58 to i64
  %arrayidx74 = getelementptr inbounds [362 x double], [362 x double]* %line_pnts, i32 0, i64 %idxprom73
  store double %add71, double* %arrayidx74, align 8
  %59 = load double, double* %angle, align 8
  %add75 = fadd double %59, 0x3FA1DF46A2529D39
  store double %add75, double* %angle, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %60 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 13), align 4
  %61 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %61, i32 0, i32 3
  %62 = load i32, i32* %drawable_id, align 4
  %63 = load i32, i32* %i, align 4
  %arraydecay = getelementptr inbounds [362 x double], [362 x double]* %line_pnts, i32 0, i32 0
  call void @gfig_paint(i32 %60, i32 %62, i32 %63, double* %arraydecay)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.1, %while.end, %if.end.54
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GfigObject* @d_copy_circle(%struct._GfigObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %nc = alloca %struct._GfigObject*, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 168, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.d_copy_circle, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)) #5
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
  %call = call %struct._GfigObject* @d_new_object(i32 3, i32 %4, i32 %7)
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
define internal void @d_update_circle(%struct._GdkPoint* %pnt) #0 {
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
define void @d_circle_start(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
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
  %call = call %struct._GfigObject* @d_new_object(i32 3, i32 %1, i32 %3)
  store %struct._GfigObject* %call, %struct._GfigObject** @obj_creating, align 8
  ret void
}

declare %struct._GfigObject* @d_new_object(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @d_circle_end(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
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

; Function Attrs: nounwind uwtable
define internal i32 @calc_radius(%struct._GdkPoint* %center, %struct._GdkPoint* %edge) #0 {
entry:
  %center.addr = alloca %struct._GdkPoint*, align 8
  %edge.addr = alloca %struct._GdkPoint*, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  store %struct._GdkPoint* %center, %struct._GdkPoint** %center.addr, align 8
  store %struct._GdkPoint* %edge, %struct._GdkPoint** %edge.addr, align 8
  %0 = load %struct._GdkPoint*, %struct._GdkPoint** %center.addr, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %0, i32 0, i32 0
  %1 = load i32, i32* %x, align 4
  %2 = load %struct._GdkPoint*, %struct._GdkPoint** %edge.addr, align 8
  %x1 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %2, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %1, %3
  store i32 %sub, i32* %dx, align 4
  %4 = load %struct._GdkPoint*, %struct._GdkPoint** %center.addr, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %4, i32 0, i32 1
  %5 = load i32, i32* %y, align 4
  %6 = load %struct._GdkPoint*, %struct._GdkPoint** %edge.addr, align 8
  %y2 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %6, i32 0, i32 1
  %7 = load i32, i32* %y2, align 4
  %sub3 = sub nsw i32 %5, %7
  store i32 %sub3, i32* %dy, align 4
  %8 = load i32, i32* %dx, align 4
  %9 = load i32, i32* %dx, align 4
  %mul = mul nsw i32 %8, %9
  %10 = load i32, i32* %dy, align 4
  %11 = load i32, i32* %dy, align 4
  %mul4 = mul nsw i32 %10, %11
  %add = add nsw i32 %mul, %mul4
  %conv = sitofp i32 %add to double
  %call = call double @sqrt(double %conv) #4
  %conv5 = fptosi double %call to i32
  ret i32 %conv5
}

declare void @draw_circle(%struct._GdkPoint*, i32, %struct._cairo*) #1

declare void @gfig_draw_arc(i32, i32, i32, i32, i32, i32, %struct._cairo*) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

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
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

declare void @gfig_paint(i32, i32, i32, double*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare %struct.DobjPoints* @d_copy_dobjpoints(%struct.DobjPoints*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare %struct.DobjPoints* @new_dobjpoint(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
