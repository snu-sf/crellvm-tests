; ModuleID = './plug-ins/gfig/gfig-arc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GfigObjectClass = type { i32, i8*, void (%struct._GfigObject*, %struct._cairo*)*, void (%struct._GfigObject*)*, %struct._GfigObject* (%struct._GfigObject*)*, void (%struct._GdkPoint*)* }
%struct._GfigObject = type { i32, %struct.GfigObjectClass*, i32, %struct.DobjPoints*, %struct._Style, i32 }
%struct.DobjPoints = type { %struct.DobjPoints*, %struct._GdkPoint, i32 }
%struct._GdkPoint = type { i32, i32 }
%struct._Style = type { i8*, i8*, i32, i32, i32, i32, double, double, double, i32, double, i8*, i8*, i32, %struct._GimpRGB, %struct._GimpRGB, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._cairo = type opaque
%struct.SelectItVals = type { %struct.GfigOpts, i32, i32, i32, double, double, double, i32, i32, i32, i32, i32, double, i32, i32 }
%struct.GfigOpts = type { i32, i32, i32, i32, i32, i32, double, double, double, double, i32 }
%struct.GFigContext = type { i32, i32, i32, i32, %struct._GFigObj*, %struct._GfigObject*, %struct._GtkWidget*, %struct._Style, %struct.BrushDesc, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpRGB*, %struct._GimpRGB*, i32, i32 }
%struct._GFigObj = type { i8*, i8*, i8*, float, %struct.GfigOpts, %struct._GList*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
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

@dobj_class = external global [10 x %struct.GfigObjectClass], align 16
@.str = private unnamed_addr constant [4 x i8] c"ARC\00", align 1
@tmp_line = external global %struct._GfigObject*, align 8
@need_to_scale = external global i32, align 4
@selvals = external global %struct.SelectItVals, align 8
@gfig_context = external global %struct.GFigContext*, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"gfig-arc.c\00", align 1
@__func__.d_draw_arc = private unnamed_addr constant [11 x i8] c"d_draw_arc\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"obj != NULL\00", align 1
@__func__.d_paint_arc = private unnamed_addr constant [12 x i8] c"d_paint_arc\00", align 1
@__func__.d_copy_arc = private unnamed_addr constant [11 x i8] c"d_copy_arc\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"obj->type == ARC\00", align 1
@obj_creating = external global %struct._GfigObject*, align 8
@scale_x_factor = external global double, align 8
@scale_y_factor = external global double, align 8

; Function Attrs: nounwind uwtable
define void @d_arc_object_class_init() #0 {
entry:
  %class = alloca %struct.GfigObjectClass*, align 8
  store %struct.GfigObjectClass* getelementptr inbounds ([10 x %struct.GfigObjectClass], [10 x %struct.GfigObjectClass]* @dobj_class, i32 0, i64 5), %struct.GfigObjectClass** %class, align 8
  %0 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %type = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %0, i32 0, i32 0
  store i32 5, i32* %type, align 4
  %1 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %name = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8** %name, align 8
  %2 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %drawfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %2, i32 0, i32 2
  store void (%struct._GfigObject*, %struct._cairo*)* @d_draw_arc, void (%struct._GfigObject*, %struct._cairo*)** %drawfunc, align 8
  %3 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %paintfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %3, i32 0, i32 3
  store void (%struct._GfigObject*)* @d_paint_arc, void (%struct._GfigObject*)** %paintfunc, align 8
  %4 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %copyfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %4, i32 0, i32 4
  store %struct._GfigObject* (%struct._GfigObject*)* @d_copy_arc, %struct._GfigObject* (%struct._GfigObject*)** %copyfunc, align 8
  %5 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %update = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %5, i32 0, i32 5
  store void (%struct._GdkPoint*)* @d_update_arc, void (%struct._GdkPoint*)** %update, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @d_draw_arc(%struct._GfigObject* %obj, %struct._cairo* %cr) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %pnt1 = alloca %struct.DobjPoints*, align 8
  %pnt2 = alloca %struct.DobjPoints*, align 8
  %pnt3 = alloca %struct.DobjPoints*, align 8
  %center_pnt = alloca %struct._GdkPoint, align 4
  %radius = alloca double, align 8
  %minang = alloca double, align 8
  %arcang = alloca double, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %cmp = icmp ne %struct._GfigObject* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 444, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.d_draw_arc, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %tobool = icmp ne %struct._GfigObject* %1, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  br label %return

if.end.2:                                         ; preds = %do.end
  %2 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %2, i32 0, i32 3
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %3, %struct.DobjPoints** %pnt1, align 8
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt1, align 8
  %tobool3 = icmp ne %struct.DobjPoints* %4, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.2
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt1, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %5, i32 0, i32 0
  %6 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.DobjPoints* [ %6, %cond.true ], [ null, %cond.false ]
  store %struct.DobjPoints* %cond, %struct.DobjPoints** %pnt2, align 8
  %7 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt2, align 8
  %tobool4 = icmp ne %struct.DobjPoints* %7, null
  br i1 %tobool4, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %8 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt2, align 8
  %next6 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %8, i32 0, i32 0
  %9 = load %struct.DobjPoints*, %struct.DobjPoints** %next6, align 8
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.5
  %cond9 = phi %struct.DobjPoints* [ %9, %cond.true.5 ], [ null, %cond.false.7 ]
  store %struct.DobjPoints* %cond9, %struct.DobjPoints** %pnt3, align 8
  %10 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt3, align 8
  %tobool10 = icmp ne %struct.DobjPoints* %10, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %cond.end.8
  br label %return

if.end.12:                                        ; preds = %cond.end.8
  %11 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt1, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %11, i32 0, i32 1
  %12 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %13 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %13, i32 0, i32 5
  %14 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj, align 8
  %cmp13 = icmp eq %struct._GfigObject* %12, %14
  %conv = zext i1 %cmp13 to i32
  %15 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_sqr(%struct._GdkPoint* %pnt, i32 %conv, %struct._cairo* %15)
  %16 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt2, align 8
  %pnt14 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %16, i32 0, i32 1
  %17 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %18 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj15 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %18, i32 0, i32 5
  %19 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj15, align 8
  %cmp16 = icmp eq %struct._GfigObject* %17, %19
  %conv17 = zext i1 %cmp16 to i32
  %20 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_sqr(%struct._GdkPoint* %pnt14, i32 %conv17, %struct._cairo* %20)
  %21 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt3, align 8
  %pnt18 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %21, i32 0, i32 1
  %22 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %23 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj19 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %23, i32 0, i32 5
  %24 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj19, align 8
  %cmp20 = icmp eq %struct._GfigObject* %22, %24
  %conv21 = zext i1 %cmp20 to i32
  %25 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_sqr(%struct._GdkPoint* %pnt18, i32 %conv21, %struct._cairo* %25)
  %26 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  call void @arc_drawing_details(%struct._GfigObject* %26, double* %minang, %struct._GdkPoint* %center_pnt, double* %arcang, double* %radius, i32 1, i32 0)
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %center_pnt, i32 0, i32 0
  %27 = load i32, i32* %x, align 4
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %center_pnt, i32 0, i32 1
  %28 = load i32, i32* %y, align 4
  %29 = load double, double* %radius, align 8
  %conv22 = fptosi double %29 to i32
  %30 = load double, double* %radius, align 8
  %conv23 = fptosi double %30 to i32
  %31 = load double, double* %minang, align 8
  %sub = fsub double -0.000000e+00, %31
  %conv24 = fptosi double %sub to i32
  %32 = load double, double* %minang, align 8
  %33 = load double, double* %arcang, align 8
  %add = fadd double %32, %33
  %sub25 = fsub double -0.000000e+00, %add
  %conv26 = fptosi double %sub25 to i32
  %34 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gfig_draw_arc(i32 %27, i32 %28, i32 %conv22, i32 %conv23, i32 %conv24, i32 %conv26, %struct._cairo* %34)
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then.1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @d_paint_arc(%struct._GfigObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %line_pnts = alloca double*, align 8
  %seg_count = alloca i32, align 4
  %i = alloca i32, align 4
  %ang_grid = alloca double, align 8
  %ang_loop = alloca double, align 8
  %radius = alloca double, align 8
  %loop = alloca i32, align 4
  %last_pnt = alloca %struct._GdkPoint, align 4
  %first = alloca i32, align 4
  %center_pnt = alloca %struct._GdkPoint, align 4
  %minang = alloca double, align 8
  %arcang = alloca double, align 8
  %lx = alloca double, align 8
  %ly = alloca double, align 8
  %calc_pnt = alloca %struct._GdkPoint, align 4
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store i32 0, i32* %seg_count, align 4
  store i32 0, i32* %i, align 4
  %0 = bitcast %struct._GdkPoint* %last_pnt to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 8, i32 4, i1 false)
  store i32 1, i32* %first, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %cmp = icmp ne %struct._GfigObject* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 482, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.d_paint_arc, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %tobool = icmp ne %struct._GfigObject* %2, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  br label %return

if.end.2:                                         ; preds = %do.end
  %3 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  call void @arc_drawing_details(%struct._GfigObject* %3, double* %minang, %struct._GdkPoint* %center_pnt, double* %arcang, double* %radius, i32 0, i32 1)
  store i32 360, i32* %seg_count, align 4
  %4 = load i32, i32* %seg_count, align 4
  %mul = mul nsw i32 2, %4
  %add = add nsw i32 %mul, 3
  %conv = sext i32 %add to i64
  %call = call noalias i8* @g_malloc0_n(i64 %conv, i64 8)
  %5 = bitcast i8* %call to double*
  store double* %5, double** %line_pnts, align 8
  store double 0x3F91DF46A2529D39, double* %ang_grid, align 8
  %6 = load double, double* %arcang, align 8
  %cmp3 = fcmp olt double %6, 0.000000e+00
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.2
  %7 = load double, double* %arcang, align 8
  %8 = load double, double* %minang, align 8
  %add6 = fadd double %8, %7
  store double %add6, double* %minang, align 8
  %9 = load double, double* %arcang, align 8
  %sub = fsub double -0.000000e+00, %9
  store double %sub, double* %arcang, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.2
  %10 = load double, double* %minang, align 8
  %mul8 = fmul double %10, 0x3F91DF46A2529D39
  store double %mul8, double* %minang, align 8
  store i32 0, i32* %loop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %11 = load i32, i32* %loop, align 4
  %12 = load double, double* %arcang, align 8
  %conv9 = fptosi double %12 to i32
  %call10 = call i32 @abs(i32 %conv9) #7
  %cmp11 = icmp slt i32 %11, %call10
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %loop, align 4
  %conv13 = sitofp i32 %13 to double
  %14 = load double, double* %ang_grid, align 8
  %mul14 = fmul double %conv13, %14
  %15 = load double, double* %minang, align 8
  %add15 = fadd double %mul14, %15
  store double %add15, double* %ang_loop, align 8
  %16 = load double, double* %radius, align 8
  %17 = load double, double* %ang_loop, align 8
  %call16 = call double @cos(double %17) #3
  %mul17 = fmul double %16, %call16
  store double %mul17, double* %lx, align 8
  %18 = load double, double* %radius, align 8
  %sub18 = fsub double -0.000000e+00, %18
  %19 = load double, double* %ang_loop, align 8
  %call19 = call double @sin(double %19) #3
  %mul20 = fmul double %sub18, %call19
  store double %mul20, double* %ly, align 8
  %20 = load double, double* %lx, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %center_pnt, i32 0, i32 0
  %21 = load i32, i32* %x, align 4
  %conv21 = sitofp i32 %21 to double
  %add22 = fadd double %20, %conv21
  %call23 = call double @rint(double %add22) #7
  %conv24 = fptosi double %call23 to i32
  %x25 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  store i32 %conv24, i32* %x25, align 4
  %22 = load double, double* %ly, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %center_pnt, i32 0, i32 1
  %23 = load i32, i32* %y, align 4
  %conv26 = sitofp i32 %23 to double
  %add27 = fadd double %22, %conv26
  %call28 = call double @rint(double %add27) #7
  %conv29 = fptosi double %call28 to i32
  %y30 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  store i32 %conv29, i32* %y30, align 4
  %24 = load i32, i32* %first, align 4
  %tobool31 = icmp ne i32 %24, 0
  br i1 %tobool31, label %if.end.43, label %if.then.32

if.then.32:                                       ; preds = %for.body
  %x33 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %25 = load i32, i32* %x33, align 4
  %x34 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %last_pnt, i32 0, i32 0
  %26 = load i32, i32* %x34, align 4
  %cmp35 = icmp eq i32 %25, %26
  br i1 %cmp35, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %if.then.32
  %y37 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %27 = load i32, i32* %y37, align 4
  %y38 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %last_pnt, i32 0, i32 1
  %28 = load i32, i32* %y38, align 4
  %cmp39 = icmp eq i32 %27, %28
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true
  br label %for.inc

if.end.42:                                        ; preds = %land.lhs.true, %if.then.32
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %for.body
  %x44 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %29 = load i32, i32* %x44, align 4
  %conv45 = sitofp i32 %29 to double
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load double*, double** %line_pnts, align 8
  %arrayidx = getelementptr inbounds double, double* %31, i64 %idxprom
  store double %conv45, double* %arrayidx, align 8
  %y46 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %32 = load i32, i32* %y46, align 4
  %conv47 = sitofp i32 %32 to double
  %33 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %33, 1
  store i32 %inc48, i32* %i, align 4
  %idxprom49 = sext i32 %33 to i64
  %34 = load double*, double** %line_pnts, align 8
  %arrayidx50 = getelementptr inbounds double, double* %34, i64 %idxprom49
  store double %conv47, double* %arrayidx50, align 8
  %35 = bitcast %struct._GdkPoint* %last_pnt to i8*
  %36 = bitcast %struct._GdkPoint* %calc_pnt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 8, i32 4, i1 false)
  %37 = load i32, i32* %first, align 4
  %tobool51 = icmp ne i32 %37, 0
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.43
  store i32 0, i32* %first, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.43
  br label %for.inc

for.inc:                                          ; preds = %if.end.53, %if.then.41
  %38 = load i32, i32* %loop, align 4
  %inc54 = add nsw i32 %38, 1
  store i32 %inc54, i32* %loop, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %style = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %39, i32 0, i32 4
  %paint_type = getelementptr inbounds %struct._Style, %struct._Style* %style, i32 0, i32 13
  %40 = load i32, i32* %paint_type, align 4
  %cmp55 = icmp eq i32 %40, 1
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %for.end
  %41 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 13), align 4
  %42 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %42, i32 0, i32 3
  %43 = load i32, i32* %drawable_id, align 4
  %44 = load i32, i32* %i, align 4
  %45 = load double*, double** %line_pnts, align 8
  call void @gfig_paint(i32 %41, i32 %43, i32 %44, double* %45)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %for.end
  %46 = load double*, double** %line_pnts, align 8
  %47 = bitcast double* %46 to i8*
  call void @g_free(i8* %47)
  br label %return

return:                                           ; preds = %if.end.58, %if.then.1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GfigObject* @d_copy_arc(%struct._GfigObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %nc = alloca %struct._GfigObject*, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 556, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.d_copy_arc, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)) #6
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
  %call = call %struct._GfigObject* @d_new_object(i32 5, i32 %4, i32 %7)
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
define internal void @d_update_arc(%struct._GdkPoint* %pnt) #0 {
entry:
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  %pnt1 = alloca %struct.DobjPoints*, align 8
  %pnt2 = alloca %struct.DobjPoints*, align 8
  %pnt3 = alloca %struct.DobjPoints*, align 8
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  store %struct.DobjPoints* null, %struct.DobjPoints** %pnt1, align 8
  store %struct.DobjPoints* null, %struct.DobjPoints** %pnt2, align 8
  store %struct.DobjPoints* null, %struct.DobjPoints** %pnt3, align 8
  %0 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 3
  %1 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %1, %struct.DobjPoints** %pnt1, align 8
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt1, align 8
  %tobool = icmp ne %struct.DobjPoints* %2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt1, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %3, i32 0, i32 0
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %4, %struct.DobjPoints** %pnt2, align 8
  %tobool1 = icmp ne %struct.DobjPoints* %4, null
  br i1 %tobool1, label %lor.lhs.false.2, label %if.then

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt2, align 8
  %next3 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %5, i32 0, i32 0
  %6 = load %struct.DobjPoints*, %struct.DobjPoints** %next3, align 8
  store %struct.DobjPoints* %6, %struct.DobjPoints** %pnt3, align 8
  %tobool4 = icmp ne %struct.DobjPoints* %6, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %7 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  call void @d_update_arc_line(%struct._GdkPoint* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.2
  ret void
}

; Function Attrs: nounwind uwtable
define void @d_arc_start(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
entry:
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  %shift_down.addr = alloca i32, align 4
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  store i32 %shift_down, i32* %shift_down.addr, align 4
  %0 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  call void @d_arc_line_start(%struct._GdkPoint* %0, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @d_arc_line_start(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
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
  call void @d_update_arc_line(%struct._GdkPoint* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @d_arc_end(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
entry:
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  %shift_down.addr = alloca i32, align 4
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  store i32 %shift_down, i32* %shift_down.addr, align 4
  %0 = load %struct._GfigObject*, %struct._GfigObject** @tmp_line, align 8
  %tobool = icmp ne %struct._GfigObject* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._GfigObject*, %struct._GfigObject** @tmp_line, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %1, i32 0, i32 3
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  %tobool1 = icmp ne %struct.DobjPoints* %2, null
  br i1 %tobool1, label %lor.lhs.false.2, label %if.then

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %3 = load %struct._GfigObject*, %struct._GfigObject** @tmp_line, align 8
  %points3 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %3, i32 0, i32 3
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %points3, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %4, i32 0, i32 0
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  %tobool4 = icmp ne %struct.DobjPoints* %5, null
  br i1 %tobool4, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %6 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  call void @d_arc_line_end(%struct._GdkPoint* %6, i32 1)
  br label %if.end.10

if.else:                                          ; preds = %lor.lhs.false.2
  %7 = load %struct._GfigObject*, %struct._GfigObject** @tmp_line, align 8
  %type = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %7, i32 0, i32 0
  store i32 5, i32* %type, align 4
  %8 = load %struct._GfigObject*, %struct._GfigObject** @tmp_line, align 8
  %class = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %8, i32 0, i32 1
  store %struct.GfigObjectClass* getelementptr inbounds ([10 x %struct.GfigObjectClass], [10 x %struct.GfigObjectClass]* @dobj_class, i32 0, i64 5), %struct.GfigObjectClass** %class, align 8
  %9 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  call void @d_arc_line_end(%struct._GdkPoint* %9, i32 0)
  %10 = load i32, i32* @need_to_scale, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  store i32 0, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 11), align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  %11 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %11, i32 0, i32 6
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %12)
  %13 = load i32, i32* @need_to_scale, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 1, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 11), align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @d_arc_line_end(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
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

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #2

declare void @draw_sqr(%struct._GdkPoint*, i32, %struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal void @arc_drawing_details(%struct._GfigObject* %obj, double* %minang, %struct._GdkPoint* %center_pnt, double* %arcang, double* %radius, i32 %draw_cnts, i32 %do_scale) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %minang.addr = alloca double*, align 8
  %center_pnt.addr = alloca %struct._GdkPoint*, align 8
  %arcang.addr = alloca double*, align 8
  %radius.addr = alloca double*, align 8
  %draw_cnts.addr = alloca i32, align 4
  %do_scale.addr = alloca i32, align 4
  %pnt1 = alloca %struct.DobjPoints*, align 8
  %pnt2 = alloca %struct.DobjPoints*, align 8
  %pnt3 = alloca %struct.DobjPoints*, align 8
  %dpnts = alloca [3 x %struct.DobjPoints], align 16
  %ang1 = alloca double, align 8
  %ang2 = alloca double, align 8
  %ang3 = alloca double, align 8
  %maxang = alloca double, align 8
  %xy = alloca [2 x double], align 16
  %j = alloca i32, align 4
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store double* %minang, double** %minang.addr, align 8
  store %struct._GdkPoint* %center_pnt, %struct._GdkPoint** %center_pnt.addr, align 8
  store double* %arcang, double** %arcang.addr, align 8
  store double* %radius, double** %radius.addr, align 8
  store i32 %draw_cnts, i32* %draw_cnts.addr, align 4
  store i32 %do_scale, i32* %do_scale.addr, align 4
  store %struct.DobjPoints* null, %struct.DobjPoints** %pnt1, align 8
  store %struct.DobjPoints* null, %struct.DobjPoints** %pnt2, align 8
  store %struct.DobjPoints* null, %struct.DobjPoints** %pnt3, align 8
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 3
  %1 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %1, %struct.DobjPoints** %pnt1, align 8
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt1, align 8
  %tobool = icmp ne %struct.DobjPoints* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.64

if.end:                                           ; preds = %entry
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt1, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %3, i32 0, i32 0
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %4, %struct.DobjPoints** %pnt2, align 8
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt2, align 8
  %tobool1 = icmp ne %struct.DobjPoints* %5, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %if.end.64

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt2, align 8
  %next4 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %6, i32 0, i32 0
  %7 = load %struct.DobjPoints*, %struct.DobjPoints** %next4, align 8
  store %struct.DobjPoints* %7, %struct.DobjPoints** %pnt3, align 8
  %8 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt3, align 8
  %tobool5 = icmp ne %struct.DobjPoints* %8, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  br label %if.end.64

if.end.7:                                         ; preds = %if.end.3
  %9 = load i32, i32* %do_scale.addr, align 4
  %tobool8 = icmp ne i32 %9, 0
  br i1 %tobool8, label %if.then.9, label %if.end.39

if.then.9:                                        ; preds = %if.end.7
  %arrayidx = getelementptr inbounds [3 x %struct.DobjPoints], [3 x %struct.DobjPoints]* %dpnts, i32 0, i64 0
  %10 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt1, align 8
  %11 = bitcast %struct.DobjPoints* %arrayidx to i8*
  %12 = bitcast %struct.DobjPoints* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 24, i32 8, i1 false)
  %arrayidx10 = getelementptr inbounds [3 x %struct.DobjPoints], [3 x %struct.DobjPoints]* %dpnts, i32 0, i64 1
  %13 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt2, align 8
  %14 = bitcast %struct.DobjPoints* %arrayidx10 to i8*
  %15 = bitcast %struct.DobjPoints* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 24, i32 8, i1 false)
  %arrayidx11 = getelementptr inbounds [3 x %struct.DobjPoints], [3 x %struct.DobjPoints]* %dpnts, i32 0, i64 2
  %16 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt3, align 8
  %17 = bitcast %struct.DobjPoints* %arrayidx11 to i8*
  %18 = bitcast %struct.DobjPoints* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 24, i32 8, i1 false)
  %arrayidx12 = getelementptr inbounds [3 x %struct.DobjPoints], [3 x %struct.DobjPoints]* %dpnts, i32 0, i64 0
  store %struct.DobjPoints* %arrayidx12, %struct.DobjPoints** %pnt1, align 8
  %arrayidx13 = getelementptr inbounds [3 x %struct.DobjPoints], [3 x %struct.DobjPoints]* %dpnts, i32 0, i64 1
  store %struct.DobjPoints* %arrayidx13, %struct.DobjPoints** %pnt2, align 8
  %arrayidx14 = getelementptr inbounds [3 x %struct.DobjPoints], [3 x %struct.DobjPoints]* %dpnts, i32 0, i64 2
  store %struct.DobjPoints* %arrayidx14, %struct.DobjPoints** %pnt3, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %19 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %19, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %j, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds [3 x %struct.DobjPoints], [3 x %struct.DobjPoints]* %dpnts, i32 0, i64 %idxprom
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %arrayidx15, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt, i32 0, i32 0
  %21 = load i32, i32* %x, align 4
  %conv = sitofp i32 %21 to double
  %arrayidx16 = getelementptr inbounds [2 x double], [2 x double]* %xy, i32 0, i64 0
  store double %conv, double* %arrayidx16, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds [3 x %struct.DobjPoints], [3 x %struct.DobjPoints]* %dpnts, i32 0, i64 %idxprom17
  %pnt19 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %arrayidx18, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt19, i32 0, i32 1
  %23 = load i32, i32* %y, align 4
  %conv20 = sitofp i32 %23 to double
  %arrayidx21 = getelementptr inbounds [2 x double], [2 x double]* %xy, i32 0, i64 1
  store double %conv20, double* %arrayidx21, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 11), align 4
  %tobool22 = icmp ne i32 %24, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %for.body
  %arrayidx24 = getelementptr inbounds [2 x double], [2 x double]* %xy, i32 0, i64 0
  call void @scale_to_original_xy(double* %arrayidx24, i32 1)
  br label %if.end.26

if.else:                                          ; preds = %for.body
  %arrayidx25 = getelementptr inbounds [2 x double], [2 x double]* %xy, i32 0, i64 0
  call void @scale_to_xy(double* %arrayidx25, i32 1)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.23
  %arrayidx27 = getelementptr inbounds [2 x double], [2 x double]* %xy, i32 0, i64 0
  %25 = load double, double* %arrayidx27, align 8
  %conv28 = fptosi double %25 to i32
  %26 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %26 to i64
  %arrayidx30 = getelementptr inbounds [3 x %struct.DobjPoints], [3 x %struct.DobjPoints]* %dpnts, i32 0, i64 %idxprom29
  %pnt31 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %arrayidx30, i32 0, i32 1
  %x32 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt31, i32 0, i32 0
  store i32 %conv28, i32* %x32, align 4
  %arrayidx33 = getelementptr inbounds [2 x double], [2 x double]* %xy, i32 0, i64 1
  %27 = load double, double* %arrayidx33, align 8
  %conv34 = fptosi double %27 to i32
  %28 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %28 to i64
  %arrayidx36 = getelementptr inbounds [3 x %struct.DobjPoints], [3 x %struct.DobjPoints]* %dpnts, i32 0, i64 %idxprom35
  %pnt37 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %arrayidx36, i32 0, i32 1
  %y38 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt37, i32 0, i32 1
  store i32 %conv34, i32* %y38, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %29 = load i32, i32* %j, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.39

if.end.39:                                        ; preds = %for.end, %if.end.7
  %30 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt1, align 8
  %pnt40 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %30, i32 0, i32 1
  %31 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt2, align 8
  %pnt41 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %31, i32 0, i32 1
  %32 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt3, align 8
  %pnt42 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %32, i32 0, i32 1
  %33 = load %struct._GdkPoint*, %struct._GdkPoint** %center_pnt.addr, align 8
  %34 = load double*, double** %radius.addr, align 8
  call void @arc_details(%struct._GdkPoint* %pnt40, %struct._GdkPoint* %pnt41, %struct._GdkPoint* %pnt42, %struct._GdkPoint* %33, double* %34)
  %35 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt1, align 8
  %pnt43 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %35, i32 0, i32 1
  %36 = load %struct._GdkPoint*, %struct._GdkPoint** %center_pnt.addr, align 8
  %call = call double @arc_angle(%struct._GdkPoint* %pnt43, %struct._GdkPoint* %36)
  store double %call, double* %ang1, align 8
  %37 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt2, align 8
  %pnt44 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %37, i32 0, i32 1
  %38 = load %struct._GdkPoint*, %struct._GdkPoint** %center_pnt.addr, align 8
  %call45 = call double @arc_angle(%struct._GdkPoint* %pnt44, %struct._GdkPoint* %38)
  store double %call45, double* %ang2, align 8
  %39 = load %struct.DobjPoints*, %struct.DobjPoints** %pnt3, align 8
  %pnt46 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %39, i32 0, i32 1
  %40 = load %struct._GdkPoint*, %struct._GdkPoint** %center_pnt.addr, align 8
  %call47 = call double @arc_angle(%struct._GdkPoint* %pnt46, %struct._GdkPoint* %40)
  store double %call47, double* %ang3, align 8
  %41 = load double, double* %ang1, align 8
  store double %41, double* %maxang, align 8
  %42 = load double, double* %ang3, align 8
  %43 = load double, double* %maxang, align 8
  %cmp48 = fcmp ogt double %42, %43
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.39
  %44 = load double, double* %ang3, align 8
  store double %44, double* %maxang, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.39
  %45 = load double, double* %ang1, align 8
  %46 = load double*, double** %minang.addr, align 8
  store double %45, double* %46, align 8
  %47 = load double, double* %ang3, align 8
  %48 = load double*, double** %minang.addr, align 8
  %49 = load double, double* %48, align 8
  %cmp52 = fcmp olt double %47, %49
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.51
  %50 = load double, double* %ang3, align 8
  %51 = load double*, double** %minang.addr, align 8
  store double %50, double* %51, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.51
  %52 = load double, double* %ang2, align 8
  %53 = load double*, double** %minang.addr, align 8
  %54 = load double, double* %53, align 8
  %cmp56 = fcmp ogt double %52, %54
  br i1 %cmp56, label %land.lhs.true, label %if.else.61

land.lhs.true:                                    ; preds = %if.end.55
  %55 = load double, double* %ang2, align 8
  %56 = load double, double* %maxang, align 8
  %cmp58 = fcmp olt double %55, %56
  br i1 %cmp58, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %land.lhs.true
  %57 = load double, double* %maxang, align 8
  %58 = load double*, double** %minang.addr, align 8
  %59 = load double, double* %58, align 8
  %sub = fsub double %57, %59
  %60 = load double*, double** %arcang.addr, align 8
  store double %sub, double* %60, align 8
  br label %if.end.64

if.else.61:                                       ; preds = %land.lhs.true, %if.end.55
  %61 = load double, double* %maxang, align 8
  %62 = load double*, double** %minang.addr, align 8
  %63 = load double, double* %62, align 8
  %sub62 = fsub double %61, %63
  %sub63 = fsub double %sub62, 3.600000e+02
  %64 = load double*, double** %arcang.addr, align 8
  store double %sub63, double* %64, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then, %if.then.2, %if.then.6, %if.else.61, %if.then.60
  ret void
}

declare void @gfig_draw_arc(i32, i32, i32, i32, i32, i32, %struct._cairo*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @scale_to_original_xy(double*, i32) #1

declare void @scale_to_xy(double*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @arc_details(%struct._GdkPoint* %vert_a, %struct._GdkPoint* %vert_b, %struct._GdkPoint* %vert_c, %struct._GdkPoint* %center_pnt, double* %radius) #0 {
entry:
  %vert_a.addr = alloca %struct._GdkPoint*, align 8
  %vert_b.addr = alloca %struct._GdkPoint*, align 8
  %vert_c.addr = alloca %struct._GdkPoint*, align 8
  %center_pnt.addr = alloca %struct._GdkPoint*, align 8
  %radius.addr = alloca double*, align 8
  %ax = alloca double, align 8
  %ay = alloca double, align 8
  %bx = alloca double, align 8
  %by = alloca double, align 8
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  %len_a = alloca double, align 8
  %len_b = alloca double, align 8
  %len_c = alloca double, align 8
  %sum_sides2 = alloca double, align 8
  %area = alloca double, align 8
  %circumcircle_R = alloca double, align 8
  %line1_grad = alloca double, align 8
  %line1_const = alloca double, align 8
  %line2_grad = alloca double, align 8
  %line2_const = alloca double, align 8
  %inter_x = alloca double, align 8
  %inter_y = alloca double, align 8
  %got_x = alloca i32, align 4
  %got_y = alloca i32, align 4
  %miny = alloca double, align 8
  %maxy = alloca double, align 8
  %minx = alloca double, align 8
  %maxx = alloca double, align 8
  store %struct._GdkPoint* %vert_a, %struct._GdkPoint** %vert_a.addr, align 8
  store %struct._GdkPoint* %vert_b, %struct._GdkPoint** %vert_b.addr, align 8
  store %struct._GdkPoint* %vert_c, %struct._GdkPoint** %vert_c.addr, align 8
  store %struct._GdkPoint* %center_pnt, %struct._GdkPoint** %center_pnt.addr, align 8
  store double* %radius, double** %radius.addr, align 8
  store double 0.000000e+00, double* %line1_grad, align 8
  store double 0.000000e+00, double* %line1_const, align 8
  store double 0.000000e+00, double* %line2_grad, align 8
  store double 0.000000e+00, double* %line2_const, align 8
  store double 0.000000e+00, double* %inter_x, align 8
  store double 0.000000e+00, double* %inter_y, align 8
  store i32 0, i32* %got_x, align 4
  store i32 0, i32* %got_y, align 4
  %0 = load %struct._GdkPoint*, %struct._GdkPoint** %vert_a.addr, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %0, i32 0, i32 0
  %1 = load i32, i32* %x, align 4
  %conv = sitofp i32 %1 to double
  store double %conv, double* %ax, align 8
  %2 = load %struct._GdkPoint*, %struct._GdkPoint** %vert_a.addr, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %2, i32 0, i32 1
  %3 = load i32, i32* %y, align 4
  %conv1 = sitofp i32 %3 to double
  store double %conv1, double* %ay, align 8
  %4 = load %struct._GdkPoint*, %struct._GdkPoint** %vert_b.addr, align 8
  %x2 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %4, i32 0, i32 0
  %5 = load i32, i32* %x2, align 4
  %conv3 = sitofp i32 %5 to double
  store double %conv3, double* %bx, align 8
  %6 = load %struct._GdkPoint*, %struct._GdkPoint** %vert_b.addr, align 8
  %y4 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %6, i32 0, i32 1
  %7 = load i32, i32* %y4, align 4
  %conv5 = sitofp i32 %7 to double
  store double %conv5, double* %by, align 8
  %8 = load %struct._GdkPoint*, %struct._GdkPoint** %vert_c.addr, align 8
  %x6 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %8, i32 0, i32 0
  %9 = load i32, i32* %x6, align 4
  %conv7 = sitofp i32 %9 to double
  store double %conv7, double* %cx, align 8
  %10 = load %struct._GdkPoint*, %struct._GdkPoint** %vert_c.addr, align 8
  %y8 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %10, i32 0, i32 1
  %11 = load i32, i32* %y8, align 4
  %conv9 = sitofp i32 %11 to double
  store double %conv9, double* %cy, align 8
  %12 = load double, double* %ax, align 8
  %13 = load double, double* %ay, align 8
  %14 = load double, double* %bx, align 8
  %15 = load double, double* %by, align 8
  %call = call double @dist(double %12, double %13, double %14, double %15)
  store double %call, double* %len_a, align 8
  %16 = load double, double* %bx, align 8
  %17 = load double, double* %by, align 8
  %18 = load double, double* %cx, align 8
  %19 = load double, double* %cy, align 8
  %call10 = call double @dist(double %16, double %17, double %18, double %19)
  store double %call10, double* %len_b, align 8
  %20 = load double, double* %cx, align 8
  %21 = load double, double* %cy, align 8
  %22 = load double, double* %ax, align 8
  %23 = load double, double* %ay, align 8
  %call11 = call double @dist(double %20, double %21, double %22, double %23)
  store double %call11, double* %len_c, align 8
  %24 = load double, double* %len_a, align 8
  %call12 = call double @fabs(double %24) #7
  %25 = load double, double* %len_b, align 8
  %call13 = call double @fabs(double %25) #7
  %add = fadd double %call12, %call13
  %26 = load double, double* %len_c, align 8
  %call14 = call double @fabs(double %26) #7
  %add15 = fadd double %add, %call14
  %div = fdiv double %add15, 2.000000e+00
  store double %div, double* %sum_sides2, align 8
  %27 = load double, double* %sum_sides2, align 8
  %28 = load double, double* %sum_sides2, align 8
  %29 = load double, double* %len_a, align 8
  %sub = fsub double %28, %29
  %mul = fmul double %27, %sub
  %30 = load double, double* %sum_sides2, align 8
  %31 = load double, double* %len_b, align 8
  %sub16 = fsub double %30, %31
  %mul17 = fmul double %mul, %sub16
  %32 = load double, double* %sum_sides2, align 8
  %33 = load double, double* %len_c, align 8
  %sub18 = fsub double %32, %33
  %mul19 = fmul double %mul17, %sub18
  %call20 = call double @sqrt(double %mul19) #3
  store double %call20, double* %area, align 8
  %34 = load double, double* %len_a, align 8
  %35 = load double, double* %len_b, align 8
  %mul21 = fmul double %34, %35
  %36 = load double, double* %len_c, align 8
  %mul22 = fmul double %mul21, %36
  %37 = load double, double* %area, align 8
  %mul23 = fmul double 4.000000e+00, %37
  %div24 = fdiv double %mul22, %mul23
  store double %div24, double* %circumcircle_R, align 8
  %38 = load double, double* %circumcircle_R, align 8
  %39 = load double*, double** %radius.addr, align 8
  store double %38, double* %39, align 8
  %40 = load double, double* %ax, align 8
  %41 = load double, double* %bx, align 8
  %cmp = fcmp oeq double %40, %41
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %42 = load double, double* %ax, align 8
  %43 = load double, double* %cx, align 8
  %cmp26 = fcmp oeq double %42, %43
  br i1 %cmp26, label %if.then, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false
  %44 = load double, double* %cx, align 8
  %45 = load double, double* %bx, align 8
  %cmp29 = fcmp oeq double %44, %45
  br i1 %cmp29, label %if.then, label %if.end.74

if.then:                                          ; preds = %lor.lhs.false.28, %lor.lhs.false, %entry
  %46 = load double, double* %ax, align 8
  %47 = load double, double* %bx, align 8
  %cmp31 = fcmp oeq double %46, %47
  br i1 %cmp31, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %48 = load double, double* %bx, align 8
  %49 = load double, double* %cx, align 8
  %cmp33 = fcmp oeq double %48, %49
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %land.lhs.true
  %50 = load double, double* %ay, align 8
  store double %50, double* %miny, align 8
  %51 = load double, double* %ay, align 8
  store double %51, double* %maxy, align 8
  %52 = load double, double* %by, align 8
  %53 = load double, double* %maxy, align 8
  %cmp36 = fcmp ogt double %52, %53
  br i1 %cmp36, label %if.then.38, label %if.end

if.then.38:                                       ; preds = %if.then.35
  %54 = load double, double* %by, align 8
  store double %54, double* %maxy, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.38, %if.then.35
  %55 = load double, double* %by, align 8
  %56 = load double, double* %miny, align 8
  %cmp39 = fcmp olt double %55, %56
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end
  %57 = load double, double* %by, align 8
  store double %57, double* %miny, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end
  %58 = load double, double* %cy, align 8
  %59 = load double, double* %maxy, align 8
  %cmp43 = fcmp ogt double %58, %59
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  %60 = load double, double* %cy, align 8
  store double %60, double* %maxy, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.42
  %61 = load double, double* %cy, align 8
  %62 = load double, double* %miny, align 8
  %cmp47 = fcmp olt double %61, %62
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.46
  %63 = load double, double* %cy, align 8
  store double %63, double* %miny, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.end.46
  %64 = load double, double* %maxy, align 8
  %65 = load double, double* %miny, align 8
  %sub51 = fsub double %64, %65
  %div52 = fdiv double %sub51, 2.000000e+00
  %66 = load double, double* %miny, align 8
  %add53 = fadd double %div52, %66
  store double %add53, double* %inter_y, align 8
  br label %if.end.73

if.else:                                          ; preds = %land.lhs.true, %if.then
  %67 = load double, double* %ax, align 8
  %68 = load double, double* %bx, align 8
  %cmp54 = fcmp oeq double %67, %68
  br i1 %cmp54, label %if.then.56, label %if.else.60

if.then.56:                                       ; preds = %if.else
  %69 = load double, double* %ay, align 8
  %70 = load double, double* %by, align 8
  %sub57 = fsub double %69, %70
  %div58 = fdiv double %sub57, 2.000000e+00
  %71 = load double, double* %by, align 8
  %add59 = fadd double %div58, %71
  store double %add59, double* %inter_y, align 8
  br label %if.end.72

if.else.60:                                       ; preds = %if.else
  %72 = load double, double* %bx, align 8
  %73 = load double, double* %cx, align 8
  %cmp61 = fcmp oeq double %72, %73
  br i1 %cmp61, label %if.then.63, label %if.else.67

if.then.63:                                       ; preds = %if.else.60
  %74 = load double, double* %by, align 8
  %75 = load double, double* %cy, align 8
  %sub64 = fsub double %74, %75
  %div65 = fdiv double %sub64, 2.000000e+00
  %76 = load double, double* %cy, align 8
  %add66 = fadd double %div65, %76
  store double %add66, double* %inter_y, align 8
  br label %if.end.71

if.else.67:                                       ; preds = %if.else.60
  %77 = load double, double* %cy, align 8
  %78 = load double, double* %ay, align 8
  %sub68 = fsub double %77, %78
  %div69 = fdiv double %sub68, 2.000000e+00
  %79 = load double, double* %ay, align 8
  %add70 = fadd double %div69, %79
  store double %add70, double* %inter_y, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.67, %if.then.63
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.56
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.50
  store i32 1, i32* %got_y, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %lor.lhs.false.28
  %80 = load double, double* %ay, align 8
  %81 = load double, double* %by, align 8
  %cmp75 = fcmp oeq double %80, %81
  br i1 %cmp75, label %if.then.83, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %if.end.74
  %82 = load double, double* %by, align 8
  %83 = load double, double* %cy, align 8
  %cmp78 = fcmp oeq double %82, %83
  br i1 %cmp78, label %if.then.83, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %lor.lhs.false.77
  %84 = load double, double* %ay, align 8
  %85 = load double, double* %cy, align 8
  %cmp81 = fcmp oeq double %84, %85
  br i1 %cmp81, label %if.then.83, label %if.end.130

if.then.83:                                       ; preds = %lor.lhs.false.80, %lor.lhs.false.77, %if.end.74
  %86 = load double, double* %ax, align 8
  %87 = load double, double* %bx, align 8
  %cmp84 = fcmp oeq double %86, %87
  br i1 %cmp84, label %land.lhs.true.86, label %if.else.109

land.lhs.true.86:                                 ; preds = %if.then.83
  %88 = load double, double* %bx, align 8
  %89 = load double, double* %cx, align 8
  %cmp87 = fcmp oeq double %88, %89
  br i1 %cmp87, label %if.then.89, label %if.else.109

if.then.89:                                       ; preds = %land.lhs.true.86
  %90 = load double, double* %ax, align 8
  store double %90, double* %minx, align 8
  %91 = load double, double* %ax, align 8
  store double %91, double* %maxx, align 8
  %92 = load double, double* %bx, align 8
  %93 = load double, double* %maxx, align 8
  %cmp90 = fcmp ogt double %92, %93
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.then.89
  %94 = load double, double* %bx, align 8
  store double %94, double* %maxx, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.then.89
  %95 = load double, double* %bx, align 8
  %96 = load double, double* %minx, align 8
  %cmp94 = fcmp olt double %95, %96
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.93
  %97 = load double, double* %bx, align 8
  store double %97, double* %minx, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %if.end.93
  %98 = load double, double* %cx, align 8
  %99 = load double, double* %maxx, align 8
  %cmp98 = fcmp ogt double %98, %99
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.97
  %100 = load double, double* %cx, align 8
  store double %100, double* %maxx, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %if.end.97
  %101 = load double, double* %cx, align 8
  %102 = load double, double* %minx, align 8
  %cmp102 = fcmp olt double %101, %102
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.101
  %103 = load double, double* %cx, align 8
  store double %103, double* %minx, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %if.end.101
  %104 = load double, double* %maxx, align 8
  %105 = load double, double* %minx, align 8
  %sub106 = fsub double %104, %105
  %div107 = fdiv double %sub106, 2.000000e+00
  %106 = load double, double* %minx, align 8
  %add108 = fadd double %div107, %106
  store double %add108, double* %inter_x, align 8
  br label %if.end.129

if.else.109:                                      ; preds = %land.lhs.true.86, %if.then.83
  %107 = load double, double* %ay, align 8
  %108 = load double, double* %by, align 8
  %cmp110 = fcmp oeq double %107, %108
  br i1 %cmp110, label %if.then.112, label %if.else.116

if.then.112:                                      ; preds = %if.else.109
  %109 = load double, double* %ax, align 8
  %110 = load double, double* %bx, align 8
  %sub113 = fsub double %109, %110
  %div114 = fdiv double %sub113, 2.000000e+00
  %111 = load double, double* %bx, align 8
  %add115 = fadd double %div114, %111
  store double %add115, double* %inter_x, align 8
  br label %if.end.128

if.else.116:                                      ; preds = %if.else.109
  %112 = load double, double* %by, align 8
  %113 = load double, double* %cy, align 8
  %cmp117 = fcmp oeq double %112, %113
  br i1 %cmp117, label %if.then.119, label %if.else.123

if.then.119:                                      ; preds = %if.else.116
  %114 = load double, double* %bx, align 8
  %115 = load double, double* %cx, align 8
  %sub120 = fsub double %114, %115
  %div121 = fdiv double %sub120, 2.000000e+00
  %116 = load double, double* %cx, align 8
  %add122 = fadd double %div121, %116
  store double %add122, double* %inter_x, align 8
  br label %if.end.127

if.else.123:                                      ; preds = %if.else.116
  %117 = load double, double* %cx, align 8
  %118 = load double, double* %ax, align 8
  %sub124 = fsub double %117, %118
  %div125 = fdiv double %sub124, 2.000000e+00
  %119 = load double, double* %ax, align 8
  %add126 = fadd double %div125, %119
  store double %add126, double* %inter_x, align 8
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.123, %if.then.119
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.112
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.end.105
  store i32 1, i32* %got_x, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %lor.lhs.false.80
  %120 = load i32, i32* %got_x, align 4
  %tobool = icmp ne i32 %120, 0
  br i1 %tobool, label %lor.lhs.false.131, label %if.then.133

lor.lhs.false.131:                                ; preds = %if.end.130
  %121 = load i32, i32* %got_y, align 4
  %tobool132 = icmp ne i32 %121, 0
  br i1 %tobool132, label %if.end.150, label %if.then.133

if.then.133:                                      ; preds = %lor.lhs.false.131, %if.end.130
  %122 = load double, double* %ax, align 8
  %123 = load double, double* %bx, align 8
  %cmp134 = fcmp une double %122, %123
  br i1 %cmp134, label %land.lhs.true.136, label %if.else.140

land.lhs.true.136:                                ; preds = %if.then.133
  %124 = load double, double* %ay, align 8
  %125 = load double, double* %by, align 8
  %cmp137 = fcmp une double %124, %125
  br i1 %cmp137, label %if.then.139, label %if.else.140

if.then.139:                                      ; preds = %land.lhs.true.136
  %126 = load double, double* %ax, align 8
  %127 = load double, double* %ay, align 8
  %128 = load double, double* %bx, align 8
  %129 = load double, double* %by, align 8
  call void @line_definition(double %126, double %127, double %128, double %129, double* %line1_grad, double* %line1_const)
  br label %if.end.141

if.else.140:                                      ; preds = %land.lhs.true.136, %if.then.133
  %130 = load double, double* %ax, align 8
  %131 = load double, double* %ay, align 8
  %132 = load double, double* %cx, align 8
  %133 = load double, double* %cy, align 8
  call void @line_definition(double %130, double %131, double %132, double %133, double* %line1_grad, double* %line1_const)
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.140, %if.then.139
  %134 = load double, double* %bx, align 8
  %135 = load double, double* %cx, align 8
  %cmp142 = fcmp une double %134, %135
  br i1 %cmp142, label %land.lhs.true.144, label %if.else.148

land.lhs.true.144:                                ; preds = %if.end.141
  %136 = load double, double* %by, align 8
  %137 = load double, double* %cy, align 8
  %cmp145 = fcmp une double %136, %137
  br i1 %cmp145, label %if.then.147, label %if.else.148

if.then.147:                                      ; preds = %land.lhs.true.144
  %138 = load double, double* %bx, align 8
  %139 = load double, double* %by, align 8
  %140 = load double, double* %cx, align 8
  %141 = load double, double* %cy, align 8
  call void @line_definition(double %138, double %139, double %140, double %141, double* %line2_grad, double* %line2_const)
  br label %if.end.149

if.else.148:                                      ; preds = %land.lhs.true.144, %if.end.141
  %142 = load double, double* %ax, align 8
  %143 = load double, double* %ay, align 8
  %144 = load double, double* %cx, align 8
  %145 = load double, double* %cy, align 8
  call void @line_definition(double %142, double %143, double %144, double %145, double* %line2_grad, double* %line2_const)
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.148, %if.then.147
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %lor.lhs.false.131
  %146 = load i32, i32* %got_x, align 4
  %tobool151 = icmp ne i32 %146, 0
  br i1 %tobool151, label %if.end.156, label %if.then.152

if.then.152:                                      ; preds = %if.end.150
  %147 = load double, double* %line2_const, align 8
  %148 = load double, double* %line1_const, align 8
  %sub153 = fsub double %147, %148
  %149 = load double, double* %line1_grad, align 8
  %150 = load double, double* %line2_grad, align 8
  %sub154 = fsub double %149, %150
  %div155 = fdiv double %sub153, %sub154
  store double %div155, double* %inter_x, align 8
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.152, %if.end.150
  %151 = load i32, i32* %got_y, align 4
  %tobool157 = icmp ne i32 %151, 0
  br i1 %tobool157, label %if.end.161, label %if.then.158

if.then.158:                                      ; preds = %if.end.156
  %152 = load double, double* %line1_grad, align 8
  %153 = load double, double* %inter_x, align 8
  %mul159 = fmul double %152, %153
  %154 = load double, double* %line1_const, align 8
  %add160 = fadd double %mul159, %154
  store double %add160, double* %inter_y, align 8
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.158, %if.end.156
  %155 = load double, double* %inter_x, align 8
  %conv162 = fptosi double %155 to i32
  %156 = load %struct._GdkPoint*, %struct._GdkPoint** %center_pnt.addr, align 8
  %x163 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %156, i32 0, i32 0
  store i32 %conv162, i32* %x163, align 4
  %157 = load double, double* %inter_y, align 8
  %conv164 = fptosi double %157 to i32
  %158 = load %struct._GdkPoint*, %struct._GdkPoint** %center_pnt.addr, align 8
  %y165 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %158, i32 0, i32 1
  store i32 %conv164, i32* %y165, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @arc_angle(%struct._GdkPoint* %pnt, %struct._GdkPoint* %center) #0 {
entry:
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  %center.addr = alloca %struct._GdkPoint*, align 8
  %shift_x = alloca i16, align 2
  %shift_y = alloca i16, align 2
  %offset_angle = alloca double, align 8
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  store %struct._GdkPoint* %center, %struct._GdkPoint** %center.addr, align 8
  %0 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %0, i32 0, i32 0
  %1 = load i32, i32* %x, align 4
  %2 = load %struct._GdkPoint*, %struct._GdkPoint** %center.addr, align 8
  %x1 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %2, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %1, %3
  %conv = trunc i32 %sub to i16
  store i16 %conv, i16* %shift_x, align 2
  %4 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %4, i32 0, i32 1
  %5 = load i32, i32* %y, align 4
  %sub2 = sub nsw i32 0, %5
  %6 = load %struct._GdkPoint*, %struct._GdkPoint** %center.addr, align 8
  %y3 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %6, i32 0, i32 1
  %7 = load i32, i32* %y3, align 4
  %add = add nsw i32 %sub2, %7
  %conv4 = trunc i32 %add to i16
  store i16 %conv4, i16* %shift_y, align 2
  %8 = load i16, i16* %shift_y, align 2
  %conv5 = sitofp i16 %8 to double
  %9 = load i16, i16* %shift_x, align 2
  %conv6 = sitofp i16 %9 to double
  %call = call double @atan2(double %conv5, double %conv6) #3
  store double %call, double* %offset_angle, align 8
  %10 = load double, double* %offset_angle, align 8
  %cmp = fcmp olt double %10, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load double, double* %offset_angle, align 8
  %add8 = fadd double %11, 0x401921FB54442D18
  store double %add8, double* %offset_angle, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load double, double* %offset_angle, align 8
  %mul = fmul double %12, 3.600000e+02
  %div = fdiv double %mul, 0x401921FB54442D18
  ret double %div
}

; Function Attrs: nounwind uwtable
define internal double @dist(double %x1, double %y1, double %x2, double %y2) #0 {
entry:
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %s1 = alloca double, align 8
  %s2 = alloca double, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  %0 = load double, double* %x1.addr, align 8
  %1 = load double, double* %x2.addr, align 8
  %sub = fsub double %0, %1
  store double %sub, double* %s1, align 8
  %2 = load double, double* %y1.addr, align 8
  %3 = load double, double* %y2.addr, align 8
  %sub1 = fsub double %2, %3
  store double %sub1, double* %s2, align 8
  %4 = load double, double* %s1, align 8
  %5 = load double, double* %s1, align 8
  %mul = fmul double %4, %5
  %6 = load double, double* %s2, align 8
  %7 = load double, double* %s2, align 8
  %mul2 = fmul double %6, %7
  %add = fadd double %mul, %mul2
  %call = call double @sqrt(double %add) #3
  ret double %call
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind
declare double @sqrt(double) #5

; Function Attrs: nounwind uwtable
define internal void @line_definition(double %x1, double %y1, double %x2, double %y2, double* %lgrad, double* %lconst) #0 {
entry:
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %lgrad.addr = alloca double*, align 8
  %lconst.addr = alloca double*, align 8
  %grad1 = alloca double, align 8
  %midx = alloca double, align 8
  %midy = alloca double, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  store double* %lgrad, double** %lgrad.addr, align 8
  store double* %lconst, double** %lconst.addr, align 8
  %0 = load double, double* %x1.addr, align 8
  %1 = load double, double* %y1.addr, align 8
  %2 = load double, double* %x2.addr, align 8
  %3 = load double, double* %y2.addr, align 8
  %call = call double @line_grad(double %0, double %1, double %2, double %3)
  store double %call, double* %grad1, align 8
  %4 = load double, double* %grad1, align 8
  %cmp = fcmp oeq double %4, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load double, double* %x1.addr, align 8
  %6 = load double, double* %y1.addr, align 8
  %7 = load double, double* %x2.addr, align 8
  %8 = load double, double* %y2.addr, align 8
  call void @mid_point(double %5, double %6, double %7, double %8, double* %midx, double* %midy)
  %9 = load double, double* %grad1, align 8
  %div = fdiv double -1.000000e+00, %9
  %10 = load double*, double** %lgrad.addr, align 8
  store double %div, double* %10, align 8
  %11 = load double, double* %midx, align 8
  %12 = load double, double* %midy, align 8
  %13 = load double*, double** %lgrad.addr, align 8
  %14 = load double, double* %13, align 8
  %call1 = call double @line_cons(double %11, double %12, double %14)
  %15 = load double*, double** %lconst.addr, align 8
  store double %call1, double* %15, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @line_grad(double %x1, double %y1, double %x2, double %y2) #0 {
entry:
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  %0 = load double, double* %x1.addr, align 8
  %1 = load double, double* %x2.addr, align 8
  %sub = fsub double %0, %1
  store double %sub, double* %dx, align 8
  %2 = load double, double* %y1.addr, align 8
  %3 = load double, double* %y2.addr, align 8
  %sub1 = fsub double %2, %3
  store double %sub1, double* %dy, align 8
  %4 = load double, double* %dx, align 8
  %cmp = fcmp oeq double %4, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load double, double* %dy, align 8
  %6 = load double, double* %dx, align 8
  %div = fdiv double %5, %6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %div, %cond.false ]
  ret double %cond
}

; Function Attrs: nounwind uwtable
define internal void @mid_point(double %x1, double %y1, double %x2, double %y2, double* %mx, double* %my) #0 {
entry:
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %mx.addr = alloca double*, align 8
  %my.addr = alloca double*, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  store double* %mx, double** %mx.addr, align 8
  store double* %my, double** %my.addr, align 8
  %0 = load double, double* %x1.addr, align 8
  %1 = load double, double* %x2.addr, align 8
  %add = fadd double %0, %1
  %div = fdiv double %add, 2.000000e+00
  %2 = load double*, double** %mx.addr, align 8
  store double %div, double* %2, align 8
  %3 = load double, double* %y1.addr, align 8
  %4 = load double, double* %y2.addr, align 8
  %add1 = fadd double %3, %4
  %div2 = fdiv double %add1, 2.000000e+00
  %5 = load double*, double** %my.addr, align 8
  store double %div2, double* %5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @line_cons(double %x, double %y, double %lgrad) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %lgrad.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %lgrad, double* %lgrad.addr, align 8
  %0 = load double, double* %y.addr, align 8
  %1 = load double, double* %lgrad.addr, align 8
  %2 = load double, double* %x.addr, align 8
  %mul = fmul double %1, %2
  %sub = fsub double %0, %mul
  ret double %sub
}

; Function Attrs: nounwind
declare double @atan2(double, double) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #4

; Function Attrs: nounwind
declare double @cos(double) #5

; Function Attrs: nounwind
declare double @sin(double) #5

; Function Attrs: nounwind readnone
declare double @rint(double) #4

declare void @gfig_paint(i32, i32, i32, double*) #1

declare void @g_free(i8*) #1

declare %struct._GfigObject* @d_new_object(i32, i32, i32) #1

declare %struct.DobjPoints* @d_copy_dobjpoints(%struct.DobjPoints*) #1

; Function Attrs: nounwind uwtable
define internal void @d_update_arc_line(%struct._GdkPoint* %pnt) #0 {
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

declare %struct.DobjPoints* @new_dobjpoint(i32, i32) #1

declare void @d_pnt_add_line(%struct._GfigObject*, i32, i32, i32) #1

declare void @free_one_obj(%struct._GfigObject*) #1

declare void @add_to_all_obj(%struct._GFigObj*, %struct._GfigObject*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
