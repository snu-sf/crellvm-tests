; ModuleID = './plug-ins/gfig/gfig-line.bc'
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

@dobj_class = external global [10 x %struct.GfigObjectClass], align 16
@.str = private unnamed_addr constant [5 x i8] c"LINE\00", align 1
@obj_creating = external global %struct._GfigObject*, align 8
@tmp_line = external global %struct._GfigObject*, align 8
@need_to_scale = external global i32, align 4
@scale_x_factor = external global double, align 8
@scale_y_factor = external global double, align 8
@gfig_context = external global %struct.GFigContext*, align 8
@selvals = external global %struct.SelectItVals, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"gfig-line.c\00", align 1
@__func__.d_copy_line = private unnamed_addr constant [12 x i8] c"d_copy_line\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"obj->type == LINE\00", align 1

; Function Attrs: nounwind uwtable
define void @d_line_object_class_init() #0 {
entry:
  %class = alloca %struct.GfigObjectClass*, align 8
  store %struct.GfigObjectClass* getelementptr inbounds ([10 x %struct.GfigObjectClass], [10 x %struct.GfigObjectClass]* @dobj_class, i32 0, i64 1), %struct.GfigObjectClass** %class, align 8
  %0 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %type = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %0, i32 0, i32 0
  store i32 1, i32* %type, align 4
  %1 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %name = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %name, align 8
  %2 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %drawfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %2, i32 0, i32 2
  store void (%struct._GfigObject*, %struct._cairo*)* @d_draw_line, void (%struct._GfigObject*, %struct._cairo*)** %drawfunc, align 8
  %3 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %paintfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %3, i32 0, i32 3
  store void (%struct._GfigObject*)* @d_paint_line, void (%struct._GfigObject*)** %paintfunc, align 8
  %4 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %copyfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %4, i32 0, i32 4
  store %struct._GfigObject* (%struct._GfigObject*)* @d_copy_line, %struct._GfigObject* (%struct._GfigObject*)** %copyfunc, align 8
  %5 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %update = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %5, i32 0, i32 5
  store void (%struct._GdkPoint*)* @d_update_line, void (%struct._GdkPoint*)** %update, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @d_draw_line(%struct._GfigObject* %obj, %struct._cairo* %cr) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %spnt = alloca %struct.DobjPoints*, align 8
  %epnt = alloca %struct.DobjPoints*, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 3
  %1 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %1, %struct.DobjPoints** %spnt, align 8
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.18

if.end:                                           ; preds = %entry
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %3, i32 0, i32 0
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %4, %struct.DobjPoints** %epnt, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %tobool1 = icmp ne %struct.DobjPoints* %5, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load %struct.DobjPoints*, %struct.DobjPoints** %epnt, align 8
  %tobool2 = icmp ne %struct.DobjPoints* %6, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool2, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %8, i32 0, i32 1
  %9 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %10 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %10, i32 0, i32 5
  %11 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj, align 8
  %cmp = icmp eq %struct._GfigObject* %9, %11
  %conv = zext i1 %cmp to i32
  %12 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_sqr(%struct._GdkPoint* %pnt, i32 %conv, %struct._cairo* %12)
  %13 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt3 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %13, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt3, i32 0, i32 0
  %14 = load i32, i32* %x, align 4
  %15 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt4 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %15, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt4, i32 0, i32 1
  %16 = load i32, i32* %y, align 4
  %17 = load %struct.DobjPoints*, %struct.DobjPoints** %epnt, align 8
  %pnt5 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %17, i32 0, i32 1
  %x6 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt5, i32 0, i32 0
  %18 = load i32, i32* %x6, align 4
  %19 = load %struct.DobjPoints*, %struct.DobjPoints** %epnt, align 8
  %pnt7 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %19, i32 0, i32 1
  %y8 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt7, i32 0, i32 1
  %20 = load i32, i32* %y8, align 4
  %21 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gfig_draw_line(i32 %14, i32 %16, i32 %18, i32 %20, %struct._cairo* %21)
  %22 = load %struct.DobjPoints*, %struct.DobjPoints** %epnt, align 8
  store %struct.DobjPoints* %22, %struct.DobjPoints** %spnt, align 8
  %23 = load %struct.DobjPoints*, %struct.DobjPoints** %epnt, align 8
  %next9 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %23, i32 0, i32 0
  %24 = load %struct.DobjPoints*, %struct.DobjPoints** %next9, align 8
  store %struct.DobjPoints* %24, %struct.DobjPoints** %epnt, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %25 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %26 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %cmp10 = icmp eq %struct._GfigObject* %25, %26
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %while.end
  %27 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt13 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %27, i32 0, i32 1
  %28 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_circle(%struct._GdkPoint* %pnt13, i32 1, %struct._cairo* %28)
  br label %if.end.18

if.else:                                          ; preds = %while.end
  %29 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt14 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %29, i32 0, i32 1
  %30 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %31 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj15 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %31, i32 0, i32 5
  %32 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj15, align 8
  %cmp16 = icmp eq %struct._GfigObject* %30, %32
  %conv17 = zext i1 %cmp16 to i32
  %33 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_sqr(%struct._GdkPoint* %pnt14, i32 %conv17, %struct._cairo* %33)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then, %if.else, %if.then.12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @d_paint_line(%struct._GfigObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %spnt = alloca %struct.DobjPoints*, align 8
  %line_pnts = alloca double*, align 8
  %seg_count = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store i32 0, i32* %seg_count, align 4
  store i32 0, i32* %i, align 4
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 3
  %1 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %1, %struct.DobjPoints** %spnt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %seg_count, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %seg_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %4, i32 0, i32 0
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %5, %struct.DobjPoints** %spnt, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %seg_count, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  br label %return

if.end:                                           ; preds = %for.end
  %7 = load i32, i32* %seg_count, align 4
  %mul = mul nsw i32 2, %7
  %add = add nsw i32 %mul, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @g_malloc0_n(i64 %conv, i64 8)
  %8 = bitcast i8* %call to double*
  store double* %8, double** %line_pnts, align 8
  %9 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points2 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %9, i32 0, i32 3
  %10 = load %struct.DobjPoints*, %struct.DobjPoints** %points2, align 8
  store %struct.DobjPoints* %10, %struct.DobjPoints** %spnt, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.13, %if.end
  %11 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %tobool4 = icmp ne %struct.DobjPoints* %11, null
  br i1 %tobool4, label %for.body.5, label %for.end.15

for.body.5:                                       ; preds = %for.cond.3
  %12 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %12, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt, i32 0, i32 0
  %13 = load i32, i32* %x, align 4
  %conv6 = sitofp i32 %13 to double
  %14 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %14, 1
  store i32 %inc7, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load double*, double** %line_pnts, align 8
  %arrayidx = getelementptr inbounds double, double* %15, i64 %idxprom
  store double %conv6, double* %arrayidx, align 8
  %16 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt8 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %16, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt8, i32 0, i32 1
  %17 = load i32, i32* %y, align 4
  %conv9 = sitofp i32 %17 to double
  %18 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %18, 1
  store i32 %inc10, i32* %i, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load double*, double** %line_pnts, align 8
  %arrayidx12 = getelementptr inbounds double, double* %19, i64 %idxprom11
  store double %conv9, double* %arrayidx12, align 8
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.5
  %20 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %next14 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %20, i32 0, i32 0
  %21 = load %struct.DobjPoints*, %struct.DobjPoints** %next14, align 8
  store %struct.DobjPoints* %21, %struct.DobjPoints** %spnt, align 8
  br label %for.cond.3

for.end.15:                                       ; preds = %for.cond.3
  %22 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 11), align 4
  %tobool16 = icmp ne i32 %22, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %for.end.15
  %23 = load double*, double** %line_pnts, align 8
  %arrayidx18 = getelementptr inbounds double, double* %23, i64 0
  %24 = load i32, i32* %i, align 4
  %div = sdiv i32 %24, 2
  call void @scale_to_original_xy(double* %arrayidx18, i32 %div)
  br label %if.end.21

if.else:                                          ; preds = %for.end.15
  %25 = load double*, double** %line_pnts, align 8
  %arrayidx19 = getelementptr inbounds double, double* %25, i64 0
  %26 = load i32, i32* %i, align 4
  %div20 = sdiv i32 %26, 2
  call void @scale_to_xy(double* %arrayidx19, i32 %div20)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.17
  %27 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %style = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %27, i32 0, i32 4
  %paint_type = getelementptr inbounds %struct._Style, %struct._Style* %style, i32 0, i32 13
  %28 = load i32, i32* %paint_type, align 4
  %cmp = icmp eq i32 %28, 1
  br i1 %cmp, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.21
  %29 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 13), align 4
  %30 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %30, i32 0, i32 3
  %31 = load i32, i32* %drawable_id, align 4
  %32 = load i32, i32* %seg_count, align 4
  %mul24 = mul nsw i32 %32, 2
  %33 = load double*, double** %line_pnts, align 8
  call void @gfig_paint(i32 %29, i32 %31, i32 %mul24, double* %33)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.21
  %34 = load double*, double** %line_pnts, align 8
  %35 = bitcast double* %34 to i8*
  call void @g_free(i8* %35)
  br label %return

return:                                           ; preds = %if.end.25, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GfigObject* @d_copy_line(%struct._GfigObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %nl = alloca %struct._GfigObject*, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.d_copy_line, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0)) #4
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
  %call = call %struct._GfigObject* @d_new_object(i32 1, i32 %4, i32 %7)
  store %struct._GfigObject* %call, %struct._GfigObject** %nl, align 8
  %8 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points3 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %8, i32 0, i32 3
  %9 = load %struct.DobjPoints*, %struct.DobjPoints** %points3, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %9, i32 0, i32 0
  %10 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  %call4 = call %struct.DobjPoints* @d_copy_dobjpoints(%struct.DobjPoints* %10)
  %11 = load %struct._GfigObject*, %struct._GfigObject** %nl, align 8
  %points5 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %11, i32 0, i32 3
  %12 = load %struct.DobjPoints*, %struct.DobjPoints** %points5, align 8
  %next6 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %12, i32 0, i32 0
  store %struct.DobjPoints* %call4, %struct.DobjPoints** %next6, align 8
  %13 = load %struct._GfigObject*, %struct._GfigObject** %nl, align 8
  ret %struct._GfigObject* %13
}

; Function Attrs: nounwind uwtable
define internal void @d_update_line(%struct._GdkPoint* %pnt) #0 {
entry:
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  %spnt = alloca %struct.DobjPoints*, align 8
  %epnt = alloca %struct.DobjPoints*, align 8
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  %0 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 3
  %1 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %1, %struct.DobjPoints** %spnt, align 8
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %3, i32 0, i32 0
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %4, %struct.DobjPoints** %epnt, align 8
  %tobool1 = icmp ne %struct.DobjPoints* %4, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %epnt, align 8
  %6 = bitcast %struct.DobjPoints* %5 to i8*
  call void @g_free(i8* %6)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %7 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %7, i32 0, i32 0
  %8 = load i32, i32* %x, align 4
  %9 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %9, i32 0, i32 1
  %10 = load i32, i32* %y, align 4
  %call = call %struct.DobjPoints* @new_dobjpoint(i32 %8, i32 %10)
  store %struct.DobjPoints* %call, %struct.DobjPoints** %epnt, align 8
  %11 = load %struct.DobjPoints*, %struct.DobjPoints** %epnt, align 8
  %12 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %next4 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %12, i32 0, i32 0
  store %struct.DobjPoints* %11, %struct.DobjPoints** %next4, align 8
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @d_line_start(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
entry:
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  %shift_down.addr = alloca i32, align 4
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  store i32 %shift_down, i32* %shift_down.addr, align 4
  %0 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %tobool = icmp ne %struct._GfigObject* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %shift_down.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %2, i32 0, i32 0
  %3 = load i32, i32* %x, align 4
  %4 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %4, i32 0, i32 1
  %5 = load i32, i32* %y, align 4
  %call = call %struct._GfigObject* @d_new_object(i32 1, i32 %3, i32 %5)
  store %struct._GfigObject* %call, %struct._GfigObject** @obj_creating, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %6 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  call void @d_update_line(%struct._GdkPoint* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct._GfigObject* @d_new_object(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @d_line_end(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
entry:
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  %shift_down.addr = alloca i32, align 4
  %tmp_pnt = alloca %struct._GdkPoint, align 4
  %tmp_pnt19 = alloca %struct._GdkPoint, align 4
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  store i32 %shift_down, i32* %shift_down.addr, align 4
  %0 = load i32, i32* %shift_down.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else.16

if.then:                                          ; preds = %entry
  %1 = load %struct._GfigObject*, %struct._GfigObject** @tmp_line, align 8
  %tobool1 = icmp ne %struct._GfigObject* %1, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %3 = bitcast %struct._GdkPoint* %tmp_pnt to i8*
  %4 = bitcast %struct._GdkPoint* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 4, i1 false)
  %5 = load i32, i32* @need_to_scale, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  %6 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %6, i32 0, i32 0
  %7 = load i32, i32* %x, align 4
  %conv = sitofp i32 %7 to double
  %8 = load double, double* @scale_x_factor, align 8
  %mul = fmul double %conv, %8
  %conv5 = fptosi double %mul to i32
  %x6 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %tmp_pnt, i32 0, i32 0
  store i32 %conv5, i32* %x6, align 4
  %9 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %9, i32 0, i32 1
  %10 = load i32, i32* %y, align 4
  %conv7 = sitofp i32 %10 to double
  %11 = load double, double* @scale_y_factor, align 8
  %mul8 = fmul double %conv7, %11
  %conv9 = fptosi double %mul8 to i32
  %y10 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %tmp_pnt, i32 0, i32 1
  store i32 %conv9, i32* %y10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then.2
  %12 = load %struct._GfigObject*, %struct._GfigObject** @tmp_line, align 8
  %x11 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %tmp_pnt, i32 0, i32 0
  %13 = load i32, i32* %x11, align 4
  %y12 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %tmp_pnt, i32 0, i32 1
  %14 = load i32, i32* %y12, align 4
  call void @d_pnt_add_line(%struct._GfigObject* %12, i32 %13, i32 %14, i32 -1)
  %15 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  call void @free_one_obj(%struct._GfigObject* %15)
  br label %if.end.13

if.else:                                          ; preds = %if.then
  %16 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  store %struct._GfigObject* %16, %struct._GfigObject** @tmp_line, align 8
  %17 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %17, i32 0, i32 4
  %18 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %19 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  call void @add_to_all_obj(%struct._GFigObj* %18, %struct._GfigObject* %19)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.end
  %20 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %x14 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %20, i32 0, i32 0
  %21 = load i32, i32* %x14, align 4
  %22 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %y15 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %22, i32 0, i32 1
  %23 = load i32, i32* %y15, align 4
  %call = call %struct._GfigObject* @d_new_object(i32 1, i32 %21, i32 %23)
  store %struct._GfigObject* %call, %struct._GfigObject** @obj_creating, align 8
  br label %if.end.38

if.else.16:                                       ; preds = %entry
  %24 = load %struct._GfigObject*, %struct._GfigObject** @tmp_line, align 8
  %tobool17 = icmp ne %struct._GfigObject* %24, null
  br i1 %tobool17, label %if.then.18, label %if.else.35

if.then.18:                                       ; preds = %if.else.16
  %25 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %26 = bitcast %struct._GdkPoint* %tmp_pnt19 to i8*
  %27 = bitcast %struct._GdkPoint* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 8, i32 4, i1 false)
  %28 = load i32, i32* @need_to_scale, align 4
  %tobool20 = icmp ne i32 %28, 0
  br i1 %tobool20, label %if.then.21, label %if.end.32

if.then.21:                                       ; preds = %if.then.18
  %29 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %x22 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %29, i32 0, i32 0
  %30 = load i32, i32* %x22, align 4
  %conv23 = sitofp i32 %30 to double
  %31 = load double, double* @scale_x_factor, align 8
  %mul24 = fmul double %conv23, %31
  %conv25 = fptosi double %mul24 to i32
  %x26 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %tmp_pnt19, i32 0, i32 0
  store i32 %conv25, i32* %x26, align 4
  %32 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %y27 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %32, i32 0, i32 1
  %33 = load i32, i32* %y27, align 4
  %conv28 = sitofp i32 %33 to double
  %34 = load double, double* @scale_y_factor, align 8
  %mul29 = fmul double %conv28, %34
  %conv30 = fptosi double %mul29 to i32
  %y31 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %tmp_pnt19, i32 0, i32 1
  store i32 %conv30, i32* %y31, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.21, %if.then.18
  %35 = load %struct._GfigObject*, %struct._GfigObject** @tmp_line, align 8
  %x33 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %tmp_pnt19, i32 0, i32 0
  %36 = load i32, i32* %x33, align 4
  %y34 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %tmp_pnt19, i32 0, i32 1
  %37 = load i32, i32* %y34, align 4
  call void @d_pnt_add_line(%struct._GfigObject* %35, i32 %36, i32 %37, i32 -1)
  %38 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  call void @free_one_obj(%struct._GfigObject* %38)
  br label %if.end.37

if.else.35:                                       ; preds = %if.else.16
  %39 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj36 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %39, i32 0, i32 4
  %40 = load %struct._GFigObj*, %struct._GFigObj** %current_obj36, align 8
  %41 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  call void @add_to_all_obj(%struct._GFigObj* %40, %struct._GfigObject* %41)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.end.32
  store %struct._GfigObject* null, %struct._GfigObject** @obj_creating, align 8
  store %struct._GfigObject* null, %struct._GfigObject** @tmp_line, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.13
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @d_pnt_add_line(%struct._GfigObject*, i32, i32, i32) #1

declare void @free_one_obj(%struct._GfigObject*) #1

declare void @add_to_all_obj(%struct._GFigObj*, %struct._GfigObject*) #1

declare void @draw_sqr(%struct._GdkPoint*, i32, %struct._cairo*) #1

declare void @gfig_draw_line(i32, i32, i32, i32, %struct._cairo*) #1

declare void @draw_circle(%struct._GdkPoint*, i32, %struct._cairo*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare void @scale_to_original_xy(double*, i32) #1

declare void @scale_to_xy(double*, i32) #1

declare void @gfig_paint(i32, i32, i32, double*) #1

declare void @g_free(i8*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #3

declare %struct.DobjPoints* @d_copy_dobjpoints(%struct.DobjPoints*) #1

declare %struct.DobjPoints* @new_dobjpoint(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
