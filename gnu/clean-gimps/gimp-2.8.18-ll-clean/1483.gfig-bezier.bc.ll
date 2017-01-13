; ModuleID = './plug-ins/gfig/gfig-bezier.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GfigObject = type { i32, %struct.GfigObjectClass*, i32, %struct.DobjPoints*, %struct._Style, i32 }
%struct.GfigObjectClass = type { i32, i8*, {}*, void (%struct._GfigObject*)*, %struct._GfigObject* (%struct._GfigObject*)*, void (%struct._GdkPoint*)* }
%struct._GdkPoint = type { i32, i32 }
%struct.DobjPoints = type { %struct.DobjPoints*, %struct._GdkPoint, i32 }
%struct._Style = type { i8*, i8*, i32, i32, i32, i32, double, double, double, i32, double, i8*, i8*, i32, %struct._GimpRGB, %struct._GimpRGB, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
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
%struct._cairo = type opaque
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }

@obj_creating = external global %struct._GfigObject*, align 8
@gfig_context = external global %struct.GFigContext*, align 8
@bezier_line_frame = internal global i32 0, align 4
@tmp_bezier = global %struct._GfigObject* null, align 8
@dobj_class = external global [10 x %struct.GfigObjectClass], align 16
@.str = private unnamed_addr constant [7 x i8] c"BEZIER\00", align 1
@bezier_closed = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Closed\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Close curve on completion\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Show Line Frame\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"Draws lines between the control points. Only during curve creation\00", align 1
@fp_pnt_cnt = internal global i32 0, align 4
@fp_pnt_pnts = internal global double* null, align 8
@fp_pnt_chunk = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"gfig-bezier.c\00", align 1
@__func__.d_bz_line = private unnamed_addr constant [10 x i8] c"d_bz_line\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"(fp_pnt_cnt % 4) == 0\00", align 1
@selvals = external global %struct.SelectItVals, align 8
@__func__.d_copy_bezier = private unnamed_addr constant [14 x i8] c"d_copy_bezier\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"obj->type == BEZIER\00", align 1
@__func__.d_update_bezier = private unnamed_addr constant [16 x i8] c"d_update_bezier\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"tmp_bezier != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @d_draw_bezier(%struct._GfigObject* %obj, %struct._cairo* %cr) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %spnt = alloca %struct.DobjPoints*, align 8
  %seg_count = alloca i32, align 4
  %i = alloca i32, align 4
  %line_pnts = alloca [2 x double]*, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 0, i32* %seg_count, align 4
  store i32 0, i32* %i, align 4
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 3
  %1 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %1, %struct.DobjPoints** %spnt, align 8
  %2 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points1 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %2, i32 0, i32 3
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %points1, align 8
  store %struct.DobjPoints* %3, %struct.DobjPoints** %spnt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %seg_count, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %seg_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %6, i32 0, i32 0
  %7 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %7, %struct.DobjPoints** %spnt, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %seg_count, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  br label %return

if.end:                                           ; preds = %for.end
  %9 = load i32, i32* %seg_count, align 4
  %mul = mul nsw i32 2, %9
  %add = add nsw i32 %mul, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @g_malloc0_n(i64 %conv, i64 8)
  %10 = bitcast i8* %call to double*
  %11 = bitcast double* %10 to [2 x double]*
  store [2 x double]* %11, [2 x double]** %line_pnts, align 8
  %12 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points3 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %12, i32 0, i32 3
  %13 = load %struct.DobjPoints*, %struct.DobjPoints** %points3, align 8
  store %struct.DobjPoints* %13, %struct.DobjPoints** %spnt, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.24, %if.end
  %14 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %tobool5 = icmp ne %struct.DobjPoints* %14, null
  br i1 %tobool5, label %for.body.6, label %for.end.26

for.body.6:                                       ; preds = %for.cond.4
  %15 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %next7 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %15, i32 0, i32 0
  %16 = load %struct.DobjPoints*, %struct.DobjPoints** %next7, align 8
  %tobool8 = icmp ne %struct.DobjPoints* %16, null
  br i1 %tobool8, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.6
  %17 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %18 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %cmp = icmp eq %struct._GfigObject* %17, %18
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %land.lhs.true
  %19 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %19, i32 0, i32 1
  %20 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_circle(%struct._GdkPoint* %pnt, i32 1, %struct._cairo* %20)
  br label %if.end.14

if.else:                                          ; preds = %land.lhs.true, %for.body.6
  %21 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt11 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %21, i32 0, i32 1
  %22 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %23 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %23, i32 0, i32 5
  %24 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj, align 8
  %cmp12 = icmp eq %struct._GfigObject* %22, %24
  %conv13 = zext i1 %cmp12 to i32
  %25 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_sqr(%struct._GdkPoint* %pnt11, i32 %conv13, %struct._cairo* %25)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.10
  %26 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt15 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %26, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt15, i32 0, i32 0
  %27 = load i32, i32* %x, align 4
  %conv16 = sitofp i32 %27 to double
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load [2 x double]*, [2 x double]** %line_pnts, align 8
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %29, i64 %idxprom
  %arrayidx17 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx, i32 0, i64 0
  store double %conv16, double* %arrayidx17, align 8
  %30 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt18 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %30, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt18, i32 0, i32 1
  %31 = load i32, i32* %y, align 4
  %conv19 = sitofp i32 %31 to double
  %32 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %32 to i64
  %33 = load [2 x double]*, [2 x double]** %line_pnts, align 8
  %arrayidx21 = getelementptr inbounds [2 x double], [2 x double]* %33, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx21, i32 0, i64 1
  store double %conv19, double* %arrayidx22, align 8
  %34 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %34, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end.14
  %35 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %next25 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %35, i32 0, i32 0
  %36 = load %struct.DobjPoints*, %struct.DobjPoints** %next25, align 8
  store %struct.DobjPoints* %36, %struct.DobjPoints** %spnt, align 8
  br label %for.cond.4

for.end.26:                                       ; preds = %for.cond.4
  %37 = load i32, i32* @bezier_line_frame, align 4
  %tobool27 = icmp ne i32 %37, 0
  br i1 %tobool27, label %land.lhs.true.28, label %if.end.31

land.lhs.true.28:                                 ; preds = %for.end.26
  %38 = load %struct._GfigObject*, %struct._GfigObject** @tmp_bezier, align 8
  %tobool29 = icmp ne %struct._GfigObject* %38, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.28
  call void @fp_pnt_start()
  %39 = load [2 x double]*, [2 x double]** %line_pnts, align 8
  %40 = load i32, i32* %seg_count, align 4
  call void @DrawBezier([2 x double]* %39, i32 %40, double 5.000000e-01, i32 0)
  %41 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @d_bz_line(%struct._cairo* %41)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %land.lhs.true.28, %for.end.26
  call void @fp_pnt_start()
  %42 = load [2 x double]*, [2 x double]** %line_pnts, align 8
  %43 = load i32, i32* %seg_count, align 4
  call void @DrawBezier([2 x double]* %42, i32 %43, double 5.000000e-01, i32 3)
  %44 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @d_bz_line(%struct._cairo* %44)
  %45 = load [2 x double]*, [2 x double]** %line_pnts, align 8
  %46 = bitcast [2 x double]* %45 to i8*
  call void @g_free(i8* %46)
  br label %return

return:                                           ; preds = %if.end.31, %if.then
  ret void
}

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare void @draw_circle(%struct._GdkPoint*, i32, %struct._cairo*) #1

declare void @draw_sqr(%struct._GdkPoint*, i32, %struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal void @fp_pnt_start() #0 {
entry:
  store i32 0, i32* @fp_pnt_cnt, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DrawBezier([2 x double]* %points, i32 %np, double %mid, i32 %depth) #0 {
entry:
  %points.addr = alloca [2 x double]*, align 8
  %np.addr = alloca i32, align 4
  %mid.addr = alloca double, align 8
  %depth.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %left = alloca [2 x double]*, align 8
  %right = alloca [2 x double]*, align 8
  store [2 x double]* %points, [2 x double]** %points.addr, align 8
  store i32 %np, i32* %np.addr, align 4
  store double %mid, double* %mid.addr, align 8
  store i32 %depth, i32* %depth.addr, align 4
  store i32 0, i32* %x0, align 4
  store i32 0, i32* %y0, align 4
  %0 = load i32, i32* %depth.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %np.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load [2 x double]*, [2 x double]** %points.addr, align 8
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %4, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx, i32 0, i64 0
  %5 = load double, double* %arrayidx2, align 8
  %conv = fptosi double %5 to i32
  store i32 %conv, i32* %x1, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load [2 x double]*, [2 x double]** %points.addr, align 8
  %arrayidx4 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 %idxprom3
  %arrayidx5 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx4, i32 0, i64 1
  %8 = load double, double* %arrayidx5, align 8
  %conv6 = fptosi double %8 to i32
  store i32 %conv6, i32* %y1, align 4
  %9 = load i32, i32* %i, align 4
  %cmp7 = icmp sgt i32 %9, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, i32* %x1, align 4
  %11 = load i32, i32* %x0, align 4
  %cmp9 = icmp ne i32 %10, %11
  br i1 %cmp9, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load i32, i32* %y1, align 4
  %13 = load i32, i32* %y0, align 4
  %cmp11 = icmp ne i32 %12, %13
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %14 = load i32, i32* %x0, align 4
  %conv14 = sitofp i32 %14 to double
  %15 = load i32, i32* %y0, align 4
  %conv15 = sitofp i32 %15 to double
  %16 = load i32, i32* %x1, align 4
  %conv16 = sitofp i32 %16 to double
  %17 = load i32, i32* %y1, align 4
  %conv17 = sitofp i32 %17 to double
  call void @fp_pnt_add(double %conv14, double %conv15, double %conv16, double %conv17)
  br label %if.end

if.end:                                           ; preds = %if.then.13, %lor.lhs.false, %for.body
  %18 = load i32, i32* %x1, align 4
  store i32 %18, i32* %x0, align 4
  %19 = load i32, i32* %y1, align 4
  store i32 %19, i32* %y0, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.107

if.else:                                          ; preds = %entry
  %21 = load i32, i32* %np.addr, align 4
  %mul = mul nsw i32 %21, 2
  %conv18 = sext i32 %mul to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv18, i64 8)
  %22 = bitcast i8* %call to double*
  %23 = bitcast double* %22 to [2 x double]*
  store [2 x double]* %23, [2 x double]** %left, align 8
  %24 = load i32, i32* %np.addr, align 4
  %mul19 = mul nsw i32 %24, 2
  %conv20 = sext i32 %mul19 to i64
  %call21 = call noalias i8* @g_malloc_n(i64 %conv20, i64 8)
  %25 = bitcast i8* %call21 to double*
  %26 = bitcast double* %25 to [2 x double]*
  store [2 x double]* %26, [2 x double]** %right, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.38, %if.else
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %np.addr, align 4
  %cmp23 = icmp slt i32 %27, %28
  br i1 %cmp23, label %for.body.25, label %for.end.40

for.body.25:                                      ; preds = %for.cond.22
  %29 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %29 to i64
  %30 = load [2 x double]*, [2 x double]** %points.addr, align 8
  %arrayidx27 = getelementptr inbounds [2 x double], [2 x double]* %30, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx27, i32 0, i64 0
  %31 = load double, double* %arrayidx28, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %32 to i64
  %33 = load [2 x double]*, [2 x double]** %right, align 8
  %arrayidx30 = getelementptr inbounds [2 x double], [2 x double]* %33, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx30, i32 0, i64 0
  store double %31, double* %arrayidx31, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %34 to i64
  %35 = load [2 x double]*, [2 x double]** %points.addr, align 8
  %arrayidx33 = getelementptr inbounds [2 x double], [2 x double]* %35, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx33, i32 0, i64 1
  %36 = load double, double* %arrayidx34, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %37 to i64
  %38 = load [2 x double]*, [2 x double]** %right, align 8
  %arrayidx36 = getelementptr inbounds [2 x double], [2 x double]* %38, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx36, i32 0, i64 1
  store double %36, double* %arrayidx37, align 8
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.25
  %39 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %39, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond.22

for.end.40:                                       ; preds = %for.cond.22
  %40 = load [2 x double]*, [2 x double]** %right, align 8
  %arrayidx41 = getelementptr inbounds [2 x double], [2 x double]* %40, i64 0
  %arrayidx42 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx41, i32 0, i64 0
  %41 = load double, double* %arrayidx42, align 8
  %42 = load [2 x double]*, [2 x double]** %left, align 8
  %arrayidx43 = getelementptr inbounds [2 x double], [2 x double]* %42, i64 0
  %arrayidx44 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx43, i32 0, i64 0
  store double %41, double* %arrayidx44, align 8
  %43 = load [2 x double]*, [2 x double]** %right, align 8
  %arrayidx45 = getelementptr inbounds [2 x double], [2 x double]* %43, i64 0
  %arrayidx46 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx45, i32 0, i64 1
  %44 = load double, double* %arrayidx46, align 8
  %45 = load [2 x double]*, [2 x double]** %left, align 8
  %arrayidx47 = getelementptr inbounds [2 x double], [2 x double]* %45, i64 0
  %arrayidx48 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx47, i32 0, i64 1
  store double %44, double* %arrayidx48, align 8
  %46 = load i32, i32* %np.addr, align 4
  %sub = sub nsw i32 %46, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.99, %for.end.40
  %47 = load i32, i32* %j, align 4
  %cmp50 = icmp sge i32 %47, 1
  br i1 %cmp50, label %for.body.52, label %for.end.100

for.body.52:                                      ; preds = %for.cond.49
  store i32 0, i32* %i, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.84, %for.body.52
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %j, align 4
  %cmp54 = icmp slt i32 %48, %49
  br i1 %cmp54, label %for.body.56, label %for.end.86

for.body.56:                                      ; preds = %for.cond.53
  %50 = load double, double* %mid.addr, align 8
  %sub57 = fsub double 1.000000e+00, %50
  %51 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %51 to i64
  %52 = load [2 x double]*, [2 x double]** %right, align 8
  %arrayidx59 = getelementptr inbounds [2 x double], [2 x double]* %52, i64 %idxprom58
  %arrayidx60 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx59, i32 0, i64 0
  %53 = load double, double* %arrayidx60, align 8
  %mul61 = fmul double %sub57, %53
  %54 = load double, double* %mid.addr, align 8
  %55 = load i32, i32* %i, align 4
  %add = add nsw i32 %55, 1
  %idxprom62 = sext i32 %add to i64
  %56 = load [2 x double]*, [2 x double]** %right, align 8
  %arrayidx63 = getelementptr inbounds [2 x double], [2 x double]* %56, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx63, i32 0, i64 0
  %57 = load double, double* %arrayidx64, align 8
  %mul65 = fmul double %54, %57
  %add66 = fadd double %mul61, %mul65
  %58 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %58 to i64
  %59 = load [2 x double]*, [2 x double]** %right, align 8
  %arrayidx68 = getelementptr inbounds [2 x double], [2 x double]* %59, i64 %idxprom67
  %arrayidx69 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx68, i32 0, i64 0
  store double %add66, double* %arrayidx69, align 8
  %60 = load double, double* %mid.addr, align 8
  %sub70 = fsub double 1.000000e+00, %60
  %61 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %61 to i64
  %62 = load [2 x double]*, [2 x double]** %right, align 8
  %arrayidx72 = getelementptr inbounds [2 x double], [2 x double]* %62, i64 %idxprom71
  %arrayidx73 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx72, i32 0, i64 1
  %63 = load double, double* %arrayidx73, align 8
  %mul74 = fmul double %sub70, %63
  %64 = load double, double* %mid.addr, align 8
  %65 = load i32, i32* %i, align 4
  %add75 = add nsw i32 %65, 1
  %idxprom76 = sext i32 %add75 to i64
  %66 = load [2 x double]*, [2 x double]** %right, align 8
  %arrayidx77 = getelementptr inbounds [2 x double], [2 x double]* %66, i64 %idxprom76
  %arrayidx78 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx77, i32 0, i64 1
  %67 = load double, double* %arrayidx78, align 8
  %mul79 = fmul double %64, %67
  %add80 = fadd double %mul74, %mul79
  %68 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %68 to i64
  %69 = load [2 x double]*, [2 x double]** %right, align 8
  %arrayidx82 = getelementptr inbounds [2 x double], [2 x double]* %69, i64 %idxprom81
  %arrayidx83 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx82, i32 0, i64 1
  store double %add80, double* %arrayidx83, align 8
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.body.56
  %70 = load i32, i32* %i, align 4
  %inc85 = add nsw i32 %70, 1
  store i32 %inc85, i32* %i, align 4
  br label %for.cond.53

for.end.86:                                       ; preds = %for.cond.53
  %71 = load [2 x double]*, [2 x double]** %right, align 8
  %arrayidx87 = getelementptr inbounds [2 x double], [2 x double]* %71, i64 0
  %arrayidx88 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx87, i32 0, i64 0
  %72 = load double, double* %arrayidx88, align 8
  %73 = load i32, i32* %np.addr, align 4
  %74 = load i32, i32* %j, align 4
  %sub89 = sub nsw i32 %73, %74
  %idxprom90 = sext i32 %sub89 to i64
  %75 = load [2 x double]*, [2 x double]** %left, align 8
  %arrayidx91 = getelementptr inbounds [2 x double], [2 x double]* %75, i64 %idxprom90
  %arrayidx92 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx91, i32 0, i64 0
  store double %72, double* %arrayidx92, align 8
  %76 = load [2 x double]*, [2 x double]** %right, align 8
  %arrayidx93 = getelementptr inbounds [2 x double], [2 x double]* %76, i64 0
  %arrayidx94 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx93, i32 0, i64 1
  %77 = load double, double* %arrayidx94, align 8
  %78 = load i32, i32* %np.addr, align 4
  %79 = load i32, i32* %j, align 4
  %sub95 = sub nsw i32 %78, %79
  %idxprom96 = sext i32 %sub95 to i64
  %80 = load [2 x double]*, [2 x double]** %left, align 8
  %arrayidx97 = getelementptr inbounds [2 x double], [2 x double]* %80, i64 %idxprom96
  %arrayidx98 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx97, i32 0, i64 1
  store double %77, double* %arrayidx98, align 8
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.end.86
  %81 = load i32, i32* %j, align 4
  %dec = add nsw i32 %81, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.49

for.end.100:                                      ; preds = %for.cond.49
  %82 = load i32, i32* %depth.addr, align 4
  %cmp101 = icmp sgt i32 %82, 0
  br i1 %cmp101, label %if.then.103, label %if.end.106

if.then.103:                                      ; preds = %for.end.100
  %83 = load [2 x double]*, [2 x double]** %left, align 8
  %84 = load i32, i32* %np.addr, align 4
  %85 = load double, double* %mid.addr, align 8
  %86 = load i32, i32* %depth.addr, align 4
  %sub104 = sub nsw i32 %86, 1
  call void @DrawBezier([2 x double]* %83, i32 %84, double %85, i32 %sub104)
  %87 = load [2 x double]*, [2 x double]** %right, align 8
  %88 = load i32, i32* %np.addr, align 4
  %89 = load double, double* %mid.addr, align 8
  %90 = load i32, i32* %depth.addr, align 4
  %sub105 = sub nsw i32 %90, 1
  call void @DrawBezier([2 x double]* %87, i32 %88, double %89, i32 %sub105)
  %91 = load [2 x double]*, [2 x double]** %left, align 8
  %92 = bitcast [2 x double]* %91 to i8*
  call void @g_free(i8* %92)
  %93 = load [2 x double]*, [2 x double]** %right, align 8
  %94 = bitcast [2 x double]* %93 to i8*
  call void @g_free(i8* %94)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.103, %for.end.100
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @d_bz_line(%struct._cairo* %cr) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %i = alloca i32, align 4
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @fp_pnt_cnt, align 4
  %rem = srem i32 %0, 4
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.d_bz_line, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @fp_pnt_cnt, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double*, double** @fp_pnt_pnts, align 8
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  %conv = fptosi double %5 to i32
  store i32 %conv, i32* %x0, align 4
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %6, 1
  %idxprom2 = sext i32 %add to i64
  %7 = load double*, double** @fp_pnt_pnts, align 8
  %arrayidx3 = getelementptr inbounds double, double* %7, i64 %idxprom2
  %8 = load double, double* %arrayidx3, align 8
  %conv4 = fptosi double %8 to i32
  store i32 %conv4, i32* %y0, align 4
  %9 = load i32, i32* %i, align 4
  %add5 = add nsw i32 %9, 2
  %idxprom6 = sext i32 %add5 to i64
  %10 = load double*, double** @fp_pnt_pnts, align 8
  %arrayidx7 = getelementptr inbounds double, double* %10, i64 %idxprom6
  %11 = load double, double* %arrayidx7, align 8
  %conv8 = fptosi double %11 to i32
  store i32 %conv8, i32* %x1, align 4
  %12 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %12, 3
  %idxprom10 = sext i32 %add9 to i64
  %13 = load double*, double** @fp_pnt_pnts, align 8
  %arrayidx11 = getelementptr inbounds double, double* %13, i64 %idxprom10
  %14 = load double, double* %arrayidx11, align 8
  %conv12 = fptosi double %14 to i32
  store i32 %conv12, i32* %y1, align 4
  %15 = load i32, i32* %x0, align 4
  %16 = load i32, i32* %y0, align 4
  %17 = load i32, i32* %x1, align 4
  %18 = load i32, i32* %y1, align 4
  %19 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gfig_draw_line(i32 %15, i32 %16, i32 %17, i32 %18, %struct._cairo* %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %20, 4
  store i32 %add13, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @d_bezier_object_class_init() #0 {
entry:
  %class = alloca %struct.GfigObjectClass*, align 8
  store %struct.GfigObjectClass* getelementptr inbounds ([10 x %struct.GfigObjectClass], [10 x %struct.GfigObjectClass]* @dobj_class, i32 0, i64 9), %struct.GfigObjectClass** %class, align 8
  %0 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %type = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %0, i32 0, i32 0
  store i32 9, i32* %type, align 4
  %1 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %name = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8** %name, align 8
  %2 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %drawfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %2, i32 0, i32 2
  %drawfunc1 = bitcast {}** %drawfunc to void (%struct._GfigObject*, %struct._cairo*)**
  store void (%struct._GfigObject*, %struct._cairo*)* @d_draw_bezier, void (%struct._GfigObject*, %struct._cairo*)** %drawfunc1, align 8
  %3 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %paintfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %3, i32 0, i32 3
  store void (%struct._GfigObject*)* @d_paint_bezier, void (%struct._GfigObject*)** %paintfunc, align 8
  %4 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %copyfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %4, i32 0, i32 4
  store %struct._GfigObject* (%struct._GfigObject*)* @d_copy_bezier, %struct._GfigObject* (%struct._GfigObject*)** %copyfunc, align 8
  %5 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %update = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %5, i32 0, i32 5
  store void (%struct._GdkPoint*)* @d_update_bezier, void (%struct._GdkPoint*)** %update, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @d_paint_bezier(%struct._GfigObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %line_pnts = alloca double*, align 8
  %bz_line_pnts = alloca [2 x double]*, align 8
  %spnt = alloca %struct.DobjPoints*, align 8
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
  %9 = bitcast double* %8 to [2 x double]*
  store [2 x double]* %9, [2 x double]** %bz_line_pnts, align 8
  %10 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points2 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %10, i32 0, i32 3
  %11 = load %struct.DobjPoints*, %struct.DobjPoints** %points2, align 8
  store %struct.DobjPoints* %11, %struct.DobjPoints** %spnt, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.14, %if.end
  %12 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %tobool4 = icmp ne %struct.DobjPoints* %12, null
  br i1 %tobool4, label %for.body.5, label %for.end.16

for.body.5:                                       ; preds = %for.cond.3
  %13 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %13, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt, i32 0, i32 0
  %14 = load i32, i32* %x, align 4
  %conv6 = sitofp i32 %14 to double
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load [2 x double]*, [2 x double]** %bz_line_pnts, align 8
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %16, i64 %idxprom
  %arrayidx7 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx, i32 0, i64 0
  store double %conv6, double* %arrayidx7, align 8
  %17 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %pnt8 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %17, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt8, i32 0, i32 1
  %18 = load i32, i32* %y, align 4
  %conv9 = sitofp i32 %18 to double
  %19 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %19 to i64
  %20 = load [2 x double]*, [2 x double]** %bz_line_pnts, align 8
  %arrayidx11 = getelementptr inbounds [2 x double], [2 x double]* %20, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx11, i32 0, i64 1
  store double %conv9, double* %arrayidx12, align 8
  %21 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %21, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.5
  %22 = load %struct.DobjPoints*, %struct.DobjPoints** %spnt, align 8
  %next15 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %22, i32 0, i32 0
  %23 = load %struct.DobjPoints*, %struct.DobjPoints** %next15, align 8
  store %struct.DobjPoints* %23, %struct.DobjPoints** %spnt, align 8
  br label %for.cond.3

for.end.16:                                       ; preds = %for.cond.3
  call void @fp_pnt_start()
  %24 = load [2 x double]*, [2 x double]** %bz_line_pnts, align 8
  %25 = load i32, i32* %seg_count, align 4
  call void @DrawBezier([2 x double]* %24, i32 %25, double 5.000000e-01, i32 5)
  %call17 = call double* @d_bz_get_array(i32* %i)
  store double* %call17, double** %line_pnts, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 11), align 4
  %tobool18 = icmp ne i32 %26, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %for.end.16
  %27 = load double*, double** %line_pnts, align 8
  %arrayidx20 = getelementptr inbounds double, double* %27, i64 0
  %28 = load i32, i32* %i, align 4
  %div = sdiv i32 %28, 2
  call void @scale_to_original_xy(double* %arrayidx20, i32 %div)
  br label %if.end.23

if.else:                                          ; preds = %for.end.16
  %29 = load double*, double** %line_pnts, align 8
  %arrayidx21 = getelementptr inbounds double, double* %29, i64 0
  %30 = load i32, i32* %i, align 4
  %div22 = sdiv i32 %30, 2
  call void @scale_to_xy(double* %arrayidx21, i32 %div22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.19
  %31 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %style = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %31, i32 0, i32 4
  %paint_type = getelementptr inbounds %struct._Style, %struct._Style* %style, i32 0, i32 13
  %32 = load i32, i32* %paint_type, align 4
  %cmp = icmp eq i32 %32, 1
  br i1 %cmp, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  %33 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 13), align 4
  %34 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %34, i32 0, i32 3
  %35 = load i32, i32* %drawable_id, align 4
  %36 = load i32, i32* %i, align 4
  %37 = load double*, double** %line_pnts, align 8
  call void @gfig_paint(i32 %33, i32 %35, i32 %36, double* %37)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.23
  %38 = load [2 x double]*, [2 x double]** %bz_line_pnts, align 8
  %39 = bitcast [2 x double]* %38 to i8*
  call void @g_free(i8* %39)
  br label %return

return:                                           ; preds = %if.end.26, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GfigObject* @d_copy_bezier(%struct._GfigObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %np = alloca %struct._GfigObject*, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 282, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.d_copy_bezier, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0)) #6
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
  %call = call %struct._GfigObject* @d_new_object(i32 9, i32 %4, i32 %7)
  store %struct._GfigObject* %call, %struct._GfigObject** %np, align 8
  %8 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points3 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %8, i32 0, i32 3
  %9 = load %struct.DobjPoints*, %struct.DobjPoints** %points3, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %9, i32 0, i32 0
  %10 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  %call4 = call %struct.DobjPoints* @d_copy_dobjpoints(%struct.DobjPoints* %10)
  %11 = load %struct._GfigObject*, %struct._GfigObject** %np, align 8
  %points5 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %11, i32 0, i32 3
  %12 = load %struct.DobjPoints*, %struct.DobjPoints** %points5, align 8
  %next6 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %12, i32 0, i32 0
  store %struct.DobjPoints* %call4, %struct.DobjPoints** %next6, align 8
  %13 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %13, i32 0, i32 2
  %14 = load i32, i32* %type_data, align 4
  %15 = load %struct._GfigObject*, %struct._GfigObject** %np, align 8
  %type_data7 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %15, i32 0, i32 2
  store i32 %14, i32* %type_data7, align 4
  %16 = load %struct._GfigObject*, %struct._GfigObject** %np, align 8
  ret %struct._GfigObject* %16
}

; Function Attrs: nounwind uwtable
define internal void @d_update_bezier(%struct._GdkPoint* %pnt) #0 {
entry:
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  %s_pnt = alloca %struct.DobjPoints*, align 8
  %l_pnt = alloca %struct.DobjPoints*, align 8
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GfigObject*, %struct._GfigObject** @tmp_bezier, align 8
  %cmp = icmp ne %struct._GfigObject* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 309, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.d_update_bezier, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GfigObject*, %struct._GfigObject** @tmp_bezier, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %1, i32 0, i32 3
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %2, %struct.DobjPoints** %s_pnt, align 8
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %s_pnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %3, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  br label %if.end.10

if.end.2:                                         ; preds = %do.end
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %s_pnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %4, i32 0, i32 0
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %5, %struct.DobjPoints** %l_pnt, align 8
  %tobool3 = icmp ne %struct.DobjPoints* %5, null
  br i1 %tobool3, label %if.then.4, label %if.else.9

if.then.4:                                        ; preds = %if.end.2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.4
  %6 = load %struct.DobjPoints*, %struct.DobjPoints** %l_pnt, align 8
  %next5 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %6, i32 0, i32 0
  %7 = load %struct.DobjPoints*, %struct.DobjPoints** %next5, align 8
  %tobool6 = icmp ne %struct.DobjPoints* %7, null
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.DobjPoints*, %struct.DobjPoints** %l_pnt, align 8
  %next7 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %8, i32 0, i32 0
  %9 = load %struct.DobjPoints*, %struct.DobjPoints** %next7, align 8
  store %struct.DobjPoints* %9, %struct.DobjPoints** %l_pnt, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct.DobjPoints*, %struct.DobjPoints** %l_pnt, align 8
  %pnt8 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %10, i32 0, i32 1
  %11 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %12 = bitcast %struct._GdkPoint* %pnt8 to i8*
  %13 = bitcast %struct._GdkPoint* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 4, i1 false)
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.2
  %14 = load %struct._GfigObject*, %struct._GfigObject** @tmp_bezier, align 8
  %15 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %15, i32 0, i32 0
  %16 = load i32, i32* %x, align 4
  %17 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %17, i32 0, i32 1
  %18 = load i32, i32* %y, align 4
  call void @d_pnt_add_line(%struct._GfigObject* %14, i32 %16, i32 %18, i32 -1)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.1, %if.else.9, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @d_bezier_start(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
entry:
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  %shift_down.addr = alloca i32, align 4
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  store i32 %shift_down, i32* %shift_down.addr, align 4
  %0 = load %struct._GfigObject*, %struct._GfigObject** @tmp_bezier, align 8
  %tobool = icmp ne %struct._GfigObject* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %1, i32 0, i32 0
  %2 = load i32, i32* %x, align 4
  %3 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %3, i32 0, i32 1
  %4 = load i32, i32* %y, align 4
  %call = call %struct._GfigObject* @d_new_object(i32 9, i32 %2, i32 %4)
  store %struct._GfigObject* %call, %struct._GfigObject** @obj_creating, align 8
  store %struct._GfigObject* %call, %struct._GfigObject** @tmp_bezier, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GfigObject* @d_new_object(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @d_bezier_end(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
entry:
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  %shift_down.addr = alloca i32, align 4
  %l_pnt = alloca %struct.DobjPoints*, align 8
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  store i32 %shift_down, i32* %shift_down.addr, align 4
  %0 = load %struct._GfigObject*, %struct._GfigObject** @tmp_bezier, align 8
  %tobool = icmp ne %struct._GfigObject* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  store %struct._GfigObject* %1, %struct._GfigObject** @tmp_bezier, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GfigObject*, %struct._GfigObject** @tmp_bezier, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %2, i32 0, i32 3
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %3, i32 0, i32 0
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %4, %struct.DobjPoints** %l_pnt, align 8
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %l_pnt, align 8
  %tobool1 = icmp ne %struct.DobjPoints* %5, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %if.end.21

if.end.3:                                         ; preds = %if.end
  %6 = load i32, i32* %shift_down.addr, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.5
  %7 = load %struct.DobjPoints*, %struct.DobjPoints** %l_pnt, align 8
  %next6 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %7, i32 0, i32 0
  %8 = load %struct.DobjPoints*, %struct.DobjPoints** %next6, align 8
  %tobool7 = icmp ne %struct.DobjPoints* %8, null
  br i1 %tobool7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.DobjPoints*, %struct.DobjPoints** %l_pnt, align 8
  %next8 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %9, i32 0, i32 0
  %10 = load %struct.DobjPoints*, %struct.DobjPoints** %next8, align 8
  store %struct.DobjPoints* %10, %struct.DobjPoints** %l_pnt, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load %struct.DobjPoints*, %struct.DobjPoints** %l_pnt, align 8
  %tobool9 = icmp ne %struct.DobjPoints* %11, null
  br i1 %tobool9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %while.end
  %12 = load i32, i32* @bezier_closed, align 4
  %tobool11 = icmp ne i32 %12, 0
  br i1 %tobool11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.then.10
  %13 = load %struct._GfigObject*, %struct._GfigObject** @tmp_bezier, align 8
  %14 = load %struct._GfigObject*, %struct._GfigObject** @tmp_bezier, align 8
  %points13 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %14, i32 0, i32 3
  %15 = load %struct.DobjPoints*, %struct.DobjPoints** %points13, align 8
  %pnt14 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %15, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt14, i32 0, i32 0
  %16 = load i32, i32* %x, align 4
  %17 = load %struct._GfigObject*, %struct._GfigObject** @tmp_bezier, align 8
  %points15 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %17, i32 0, i32 3
  %18 = load %struct.DobjPoints*, %struct.DobjPoints** %points15, align 8
  %pnt16 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %18, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt16, i32 0, i32 1
  %19 = load i32, i32* %y, align 4
  call void @d_pnt_add_line(%struct._GfigObject* %13, i32 %16, i32 %19, i32 -1)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.12, %if.then.10
  %20 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %20, i32 0, i32 4
  %21 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %22 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  call void @add_to_all_obj(%struct._GFigObj* %21, %struct._GfigObject* %22)
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %while.end
  store %struct._GfigObject* null, %struct._GfigObject** @tmp_bezier, align 8
  store %struct._GfigObject* null, %struct._GfigObject** @obj_creating, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.end.3
  %23 = load %struct._GfigObject*, %struct._GfigObject** @tmp_bezier, align 8
  %24 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %x19 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %24, i32 0, i32 0
  %25 = load i32, i32* %x19, align 4
  %26 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %y20 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %26, i32 0, i32 1
  %27 = load i32, i32* %y20, align 4
  call void @d_pnt_add_line(%struct._GfigObject* %23, i32 %25, i32 %27, i32 -1)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.2, %if.else, %if.end.18
  ret void
}

declare void @d_pnt_add_line(%struct._GfigObject*, i32, i32, i32) #1

declare void @add_to_all_obj(%struct._GFigObj*, %struct._GfigObject*) #1

; Function Attrs: nounwind uwtable
define void @tool_options_bezier(%struct._GtkWidget* %notebook) #0 {
entry:
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_notebook_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkNotebook*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %call5 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %5, %struct._GtkWidget* %6, %struct._GtkWidget* null)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)) #5
  %call7 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call6)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %toggle, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* @bezier_closed to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %10, i8* %call9, i8* null)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_toggle_button_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call10)
  %13 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkToggleButton*
  %14 = load i32, i32* @bezier_closed, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %13, i32 %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %18, i32 0, i32 0, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)) #5
  %call15 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call14)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %toggle, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %21 = bitcast %struct._GtkWidget* %20 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* @bezier_line_frame to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %22, i8* %call17, i8* null)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_toggle_button_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call18)
  %25 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkToggleButton*
  %26 = load i32, i32* @bezier_line_frame, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %25, i32 %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call20)
  %29 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %29, %struct._GtkWidget* %30, i32 0, i32 0, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  ret void
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_label(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @fp_pnt_add(double %p1, double %p2, double %p3, double %p4) #0 {
entry:
  %p1.addr = alloca double, align 8
  %p2.addr = alloca double, align 8
  %p3.addr = alloca double, align 8
  %p4.addr = alloca double, align 8
  store double %p1, double* %p1.addr, align 8
  store double %p2, double* %p2.addr, align 8
  store double %p3, double* %p3.addr, align 8
  store double %p4, double* %p4.addr, align 8
  %0 = load double*, double** @fp_pnt_pnts, align 8
  %tobool = icmp ne double* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call noalias i8* @g_malloc0_n(i64 10, i64 8)
  %1 = bitcast i8* %call to double*
  store double* %1, double** @fp_pnt_pnts, align 8
  store i32 1, i32* @fp_pnt_chunk, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @fp_pnt_cnt, align 4
  %add = add nsw i32 %2, 4
  %div = sdiv i32 %add, 10
  %3 = load i32, i32* @fp_pnt_chunk, align 4
  %cmp = icmp sge i32 %div, %3
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %4 = load i32, i32* @fp_pnt_chunk, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @fp_pnt_chunk, align 4
  %5 = load double*, double** @fp_pnt_pnts, align 8
  %6 = bitcast double* %5 to i8*
  %7 = load i32, i32* @fp_pnt_chunk, align 4
  %mul = mul nsw i32 %7, 10
  %conv = sext i32 %mul to i64
  %call2 = call i8* @g_realloc_n(i8* %6, i64 %conv, i64 8)
  %8 = bitcast i8* %call2 to double*
  store double* %8, double** @fp_pnt_pnts, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %9 = load double, double* %p1.addr, align 8
  %10 = load i32, i32* @fp_pnt_cnt, align 4
  %inc4 = add nsw i32 %10, 1
  store i32 %inc4, i32* @fp_pnt_cnt, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load double*, double** @fp_pnt_pnts, align 8
  %arrayidx = getelementptr inbounds double, double* %11, i64 %idxprom
  store double %9, double* %arrayidx, align 8
  %12 = load double, double* %p2.addr, align 8
  %13 = load i32, i32* @fp_pnt_cnt, align 4
  %inc5 = add nsw i32 %13, 1
  store i32 %inc5, i32* @fp_pnt_cnt, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load double*, double** @fp_pnt_pnts, align 8
  %arrayidx7 = getelementptr inbounds double, double* %14, i64 %idxprom6
  store double %12, double* %arrayidx7, align 8
  %15 = load double, double* %p3.addr, align 8
  %16 = load i32, i32* @fp_pnt_cnt, align 4
  %inc8 = add nsw i32 %16, 1
  store i32 %inc8, i32* @fp_pnt_cnt, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load double*, double** @fp_pnt_pnts, align 8
  %arrayidx10 = getelementptr inbounds double, double* %17, i64 %idxprom9
  store double %15, double* %arrayidx10, align 8
  %18 = load double, double* %p4.addr, align 8
  %19 = load i32, i32* @fp_pnt_cnt, align 4
  %inc11 = add nsw i32 %19, 1
  store i32 %inc11, i32* @fp_pnt_cnt, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load double*, double** @fp_pnt_pnts, align 8
  %arrayidx13 = getelementptr inbounds double, double* %20, i64 %idxprom12
  store double %18, double* %arrayidx13, align 8
  ret void
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i8* @g_realloc_n(i8*, i64, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #4

declare void @gfig_draw_line(i32, i32, i32, i32, %struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal double* @d_bz_get_array(i32* %sz) #0 {
entry:
  %sz.addr = alloca i32*, align 8
  store i32* %sz, i32** %sz.addr, align 8
  %0 = load i32, i32* @fp_pnt_cnt, align 4
  %1 = load i32*, i32** %sz.addr, align 8
  store i32 %0, i32* %1, align 4
  %2 = load double*, double** @fp_pnt_pnts, align 8
  ret double* %2
}

declare void @scale_to_original_xy(double*, i32) #1

declare void @scale_to_xy(double*, i32) #1

declare void @gfig_paint(i32, i32, i32, double*) #1

declare %struct.DobjPoints* @d_copy_dobjpoints(%struct.DobjPoints*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
