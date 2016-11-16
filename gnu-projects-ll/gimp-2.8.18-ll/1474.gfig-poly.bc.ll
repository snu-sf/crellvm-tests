; ModuleID = './plug-ins/gfig/gfig-poly.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SelectItVals = type { %struct.GfigOpts, i32, i32, i32, double, double, double, i32, i32, i32, i32, i32, double, i32, i32 }
%struct.GfigOpts = type { i32, i32, i32, i32, i32, i32, double, double, double, double, i32 }
%struct.selection_option = type { i32, i32, i32, double, i32, i32, double }
%struct.GFigContext = type { i32, i32, i32, i32, %struct._GFigObj*, %struct._GfigObject*, %struct._GtkWidget*, %struct._Style, %struct.BrushDesc, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpRGB*, %struct._GimpRGB*, i32, i32 }
%struct._GFigObj = type { i8*, i8*, i8*, float, %struct.GfigOpts, %struct._GList*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GfigObject = type { i32, %struct.GfigObjectClass*, i32, %struct.DobjPoints*, %struct._Style, i32 }
%struct.GfigObjectClass = type { i32, i8*, void (%struct._GfigObject*, %struct._cairo*)*, {}*, %struct._GfigObject* (%struct._GfigObject*)*, void (%struct._GdkPoint*)* }
%struct._cairo = type opaque
%struct._GdkPoint = type { i32, i32 }
%struct.DobjPoints = type { %struct.DobjPoints*, %struct._GdkPoint, i32 }
%struct._Style = type { i8*, i8*, i32, i32, i32, i32, double, double, double, i32, double, i8*, i8*, i32, %struct._GimpRGB, %struct._GimpRGB, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
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
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }

@.str = private unnamed_addr constant [32 x i8] c"Regular Polygon Number of Sides\00", align 1
@poly_num_sides = internal global i32 3, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"gfig-poly.c\00", align 1
@__func__.d_paint_poly = private unnamed_addr constant [13 x i8] c"d_paint_poly\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"obj != NULL\00", align 1
@selvals = external global %struct.SelectItVals, align 8
@selopt = external global %struct.selection_option, align 8
@gfig_context = external global %struct.GFigContext*, align 8
@__func__.d_poly2lines = private unnamed_addr constant [13 x i8] c"d_poly2lines\00", align 1
@dobj_class = external global [10 x %struct.GfigObjectClass], align 16
@__func__.d_star2lines = private unnamed_addr constant [13 x i8] c"d_star2lines\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"POLY\00", align 1
@obj_creating = external global %struct._GfigObject*, align 8
@__func__.d_copy_poly = private unnamed_addr constant [12 x i8] c"d_copy_poly\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"obj->type == POLY\00", align 1

; Function Attrs: nounwind uwtable
define void @tool_options_poly(%struct._GtkWidget* %notebook) #0 {
entry:
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %sides = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* @num_sides_widget(i8* %call, i32* @poly_num_sides, i32* null, i32 3, i32 200)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %sides, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_notebook_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkNotebook*
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %sides, align 8
  %call4 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %2, %struct._GtkWidget* %3, %struct._GtkWidget* null)
  ret void
}

declare %struct._GtkWidget* @num_sides_widget(i8*, i32*, i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #3

; Function Attrs: nounwind uwtable
define void @d_paint_poly(%struct._GfigObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %line_pnts = alloca double*, align 8
  %seg_count = alloca i32, align 4
  %i = alloca i32, align 4
  %center_pnt = alloca %struct.DobjPoints*, align 8
  %radius_pnt = alloca %struct.DobjPoints*, align 8
  %shift_x = alloca i16, align 2
  %shift_y = alloca i16, align 2
  %ang_grid = alloca double, align 8
  %ang_loop = alloca double, align 8
  %radius = alloca double, align 8
  %offset_angle = alloca double, align 8
  %loop = alloca i32, align 4
  %first_pnt = alloca %struct._GdkPoint, align 4
  %last_pnt = alloca %struct._GdkPoint, align 4
  %first = alloca i32, align 4
  %min_max = alloca double*, align 8
  %lx = alloca double, align 8
  %ly = alloca double, align 8
  %calc_pnt = alloca %struct._GdkPoint, align 4
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = bitcast %struct._GdkPoint* %first_pnt to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 8, i32 4, i1 false)
  %1 = bitcast %struct._GdkPoint* %last_pnt to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 8, i32 4, i1 false)
  store i32 1, i32* %first, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %cmp = icmp ne %struct._GfigObject* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 166, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.d_paint_poly, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %3, i32 0, i32 2
  %4 = load i32, i32* %type_data, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* %seg_count, align 4
  %5 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %5, i32 0, i32 3
  %6 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %6, %struct.DobjPoints** %center_pnt, align 8
  %7 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %7, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.4

lor.lhs.false:                                    ; preds = %do.end
  %8 = load i32, i32* %seg_count, align 4
  %tobool1 = icmp ne i32 %8, 0
  br i1 %tobool1, label %lor.lhs.false.2, label %if.then.4

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %9 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %9, i32 0, i32 0
  %10 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  %tobool3 = icmp ne %struct.DobjPoints* %10, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %lor.lhs.false.2, %lor.lhs.false, %do.end
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false.2
  %11 = load i32, i32* %seg_count, align 4
  %mul = mul nsw i32 2, %11
  %add6 = add nsw i32 %mul, 1
  %conv = sext i32 %add6 to i64
  %call = call noalias i8* @g_malloc0_n(i64 %conv, i64 8)
  %12 = bitcast i8* %call to double*
  store double* %12, double** %line_pnts, align 8
  %call7 = call noalias i8* @g_malloc_n(i64 4, i64 8)
  %13 = bitcast i8* %call7 to double*
  store double* %13, double** %min_max, align 8
  %14 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %next8 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %14, i32 0, i32 0
  %15 = load %struct.DobjPoints*, %struct.DobjPoints** %next8, align 8
  store %struct.DobjPoints* %15, %struct.DobjPoints** %radius_pnt, align 8
  %16 = load %struct.DobjPoints*, %struct.DobjPoints** %radius_pnt, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %16, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt, i32 0, i32 0
  %17 = load i32, i32* %x, align 4
  %18 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt9 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %18, i32 0, i32 1
  %x10 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt9, i32 0, i32 0
  %19 = load i32, i32* %x10, align 4
  %sub = sub nsw i32 %17, %19
  %conv11 = trunc i32 %sub to i16
  store i16 %conv11, i16* %shift_x, align 2
  %20 = load %struct.DobjPoints*, %struct.DobjPoints** %radius_pnt, align 8
  %pnt12 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %20, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt12, i32 0, i32 1
  %21 = load i32, i32* %y, align 4
  %22 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt13 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %22, i32 0, i32 1
  %y14 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt13, i32 0, i32 1
  %23 = load i32, i32* %y14, align 4
  %sub15 = sub nsw i32 %21, %23
  %conv16 = trunc i32 %sub15 to i16
  store i16 %conv16, i16* %shift_y, align 2
  %24 = load i16, i16* %shift_x, align 2
  %conv17 = sext i16 %24 to i32
  %25 = load i16, i16* %shift_x, align 2
  %conv18 = sext i16 %25 to i32
  %mul19 = mul nsw i32 %conv17, %conv18
  %26 = load i16, i16* %shift_y, align 2
  %conv20 = sext i16 %26 to i32
  %27 = load i16, i16* %shift_y, align 2
  %conv21 = sext i16 %27 to i32
  %mul22 = mul nsw i32 %conv20, %conv21
  %add23 = add nsw i32 %mul19, %mul22
  %conv24 = sitofp i32 %add23 to double
  %call25 = call double @sqrt(double %conv24) #4
  store double %call25, double* %radius, align 8
  %28 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data26 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %28, i32 0, i32 2
  %29 = load i32, i32* %type_data26, align 4
  %conv27 = sitofp i32 %29 to double
  %div = fdiv double 0x401921FB54442D18, %conv27
  store double %div, double* %ang_grid, align 8
  %30 = load i16, i16* %shift_y, align 2
  %conv28 = sitofp i16 %30 to double
  %31 = load i16, i16* %shift_x, align 2
  %conv29 = sitofp i16 %31 to double
  %call30 = call double @atan2(double %conv28, double %conv29) #4
  store double %call30, double* %offset_angle, align 8
  store i32 0, i32* %loop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %32 = load i32, i32* %loop, align 4
  %33 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data31 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %33, i32 0, i32 2
  %34 = load i32, i32* %type_data31, align 4
  %cmp32 = icmp slt i32 %32, %34
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %loop, align 4
  %conv34 = sitofp i32 %35 to double
  %36 = load double, double* %ang_grid, align 8
  %mul35 = fmul double %conv34, %36
  %37 = load double, double* %offset_angle, align 8
  %add36 = fadd double %mul35, %37
  store double %add36, double* %ang_loop, align 8
  %38 = load double, double* %radius, align 8
  %39 = load double, double* %ang_loop, align 8
  %call37 = call double @cos(double %39) #4
  %mul38 = fmul double %38, %call37
  store double %mul38, double* %lx, align 8
  %40 = load double, double* %radius, align 8
  %41 = load double, double* %ang_loop, align 8
  %call39 = call double @sin(double %41) #4
  %mul40 = fmul double %40, %call39
  store double %mul40, double* %ly, align 8
  %42 = load double, double* %lx, align 8
  %43 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt41 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %43, i32 0, i32 1
  %x42 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt41, i32 0, i32 0
  %44 = load i32, i32* %x42, align 4
  %conv43 = sitofp i32 %44 to double
  %add44 = fadd double %42, %conv43
  %call45 = call double @rint(double %add44) #6
  %conv46 = fptosi double %call45 to i32
  %x47 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  store i32 %conv46, i32* %x47, align 4
  %45 = load double, double* %ly, align 8
  %46 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt48 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %46, i32 0, i32 1
  %y49 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt48, i32 0, i32 1
  %47 = load i32, i32* %y49, align 4
  %conv50 = sitofp i32 %47 to double
  %add51 = fadd double %45, %conv50
  %call52 = call double @rint(double %add51) #6
  %conv53 = fptosi double %call52 to i32
  %y54 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  store i32 %conv53, i32* %y54, align 4
  %48 = load i32, i32* %first, align 4
  %tobool55 = icmp ne i32 %48, 0
  br i1 %tobool55, label %if.end.67, label %if.then.56

if.then.56:                                       ; preds = %for.body
  %x57 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %49 = load i32, i32* %x57, align 4
  %x58 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %last_pnt, i32 0, i32 0
  %50 = load i32, i32* %x58, align 4
  %cmp59 = icmp eq i32 %49, %50
  br i1 %cmp59, label %land.lhs.true, label %if.end.66

land.lhs.true:                                    ; preds = %if.then.56
  %y61 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %51 = load i32, i32* %y61, align 4
  %y62 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %last_pnt, i32 0, i32 1
  %52 = load i32, i32* %y62, align 4
  %cmp63 = icmp eq i32 %51, %52
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %land.lhs.true
  br label %for.inc

if.end.66:                                        ; preds = %land.lhs.true, %if.then.56
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %for.body
  %x68 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %53 = load i32, i32* %x68, align 4
  %conv69 = sitofp i32 %53 to double
  %54 = load i32, i32* %i, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %54 to i64
  %55 = load double*, double** %line_pnts, align 8
  %arrayidx = getelementptr inbounds double, double* %55, i64 %idxprom
  store double %conv69, double* %arrayidx, align 8
  %y70 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %56 = load i32, i32* %y70, align 4
  %conv71 = sitofp i32 %56 to double
  %57 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %57, 1
  store i32 %inc72, i32* %i, align 4
  %idxprom73 = sext i32 %57 to i64
  %58 = load double*, double** %line_pnts, align 8
  %arrayidx74 = getelementptr inbounds double, double* %58, i64 %idxprom73
  store double %conv71, double* %arrayidx74, align 8
  %59 = bitcast %struct._GdkPoint* %last_pnt to i8*
  %60 = bitcast %struct._GdkPoint* %calc_pnt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 8, i32 4, i1 false)
  %61 = load i32, i32* %first, align 4
  %tobool75 = icmp ne i32 %61, 0
  br i1 %tobool75, label %if.then.76, label %if.else.85

if.then.76:                                       ; preds = %if.end.67
  %62 = bitcast %struct._GdkPoint* %first_pnt to i8*
  %63 = bitcast %struct._GdkPoint* %calc_pnt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 8, i32 4, i1 false)
  store i32 0, i32* %first, align 4
  %x77 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %64 = load i32, i32* %x77, align 4
  %conv78 = sitofp i32 %64 to double
  %65 = load double*, double** %min_max, align 8
  %arrayidx79 = getelementptr inbounds double, double* %65, i64 2
  store double %conv78, double* %arrayidx79, align 8
  %66 = load double*, double** %min_max, align 8
  %arrayidx80 = getelementptr inbounds double, double* %66, i64 0
  store double %conv78, double* %arrayidx80, align 8
  %y81 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %67 = load i32, i32* %y81, align 4
  %conv82 = sitofp i32 %67 to double
  %68 = load double*, double** %min_max, align 8
  %arrayidx83 = getelementptr inbounds double, double* %68, i64 3
  store double %conv82, double* %arrayidx83, align 8
  %69 = load double*, double** %min_max, align 8
  %arrayidx84 = getelementptr inbounds double, double* %69, i64 1
  store double %conv82, double* %arrayidx84, align 8
  br label %if.end.134

if.else.85:                                       ; preds = %if.end.67
  %70 = load double*, double** %min_max, align 8
  %arrayidx86 = getelementptr inbounds double, double* %70, i64 0
  %71 = load double, double* %arrayidx86, align 8
  %x87 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %72 = load i32, i32* %x87, align 4
  %conv88 = sitofp i32 %72 to double
  %cmp89 = fcmp olt double %71, %conv88
  br i1 %cmp89, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.85
  %73 = load double*, double** %min_max, align 8
  %arrayidx91 = getelementptr inbounds double, double* %73, i64 0
  %74 = load double, double* %arrayidx91, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else.85
  %x92 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %75 = load i32, i32* %x92, align 4
  %conv93 = sitofp i32 %75 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %74, %cond.true ], [ %conv93, %cond.false ]
  %76 = load double*, double** %min_max, align 8
  %arrayidx94 = getelementptr inbounds double, double* %76, i64 0
  store double %cond, double* %arrayidx94, align 8
  %77 = load double*, double** %min_max, align 8
  %arrayidx95 = getelementptr inbounds double, double* %77, i64 1
  %78 = load double, double* %arrayidx95, align 8
  %y96 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %79 = load i32, i32* %y96, align 4
  %conv97 = sitofp i32 %79 to double
  %cmp98 = fcmp olt double %78, %conv97
  br i1 %cmp98, label %cond.true.100, label %cond.false.102

cond.true.100:                                    ; preds = %cond.end
  %80 = load double*, double** %min_max, align 8
  %arrayidx101 = getelementptr inbounds double, double* %80, i64 1
  %81 = load double, double* %arrayidx101, align 8
  br label %cond.end.105

cond.false.102:                                   ; preds = %cond.end
  %y103 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %82 = load i32, i32* %y103, align 4
  %conv104 = sitofp i32 %82 to double
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.false.102, %cond.true.100
  %cond106 = phi double [ %81, %cond.true.100 ], [ %conv104, %cond.false.102 ]
  %83 = load double*, double** %min_max, align 8
  %arrayidx107 = getelementptr inbounds double, double* %83, i64 1
  store double %cond106, double* %arrayidx107, align 8
  %84 = load double*, double** %min_max, align 8
  %arrayidx108 = getelementptr inbounds double, double* %84, i64 2
  %85 = load double, double* %arrayidx108, align 8
  %x109 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %86 = load i32, i32* %x109, align 4
  %conv110 = sitofp i32 %86 to double
  %cmp111 = fcmp ogt double %85, %conv110
  br i1 %cmp111, label %cond.true.113, label %cond.false.115

cond.true.113:                                    ; preds = %cond.end.105
  %87 = load double*, double** %min_max, align 8
  %arrayidx114 = getelementptr inbounds double, double* %87, i64 2
  %88 = load double, double* %arrayidx114, align 8
  br label %cond.end.118

cond.false.115:                                   ; preds = %cond.end.105
  %x116 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %89 = load i32, i32* %x116, align 4
  %conv117 = sitofp i32 %89 to double
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.115, %cond.true.113
  %cond119 = phi double [ %88, %cond.true.113 ], [ %conv117, %cond.false.115 ]
  %90 = load double*, double** %min_max, align 8
  %arrayidx120 = getelementptr inbounds double, double* %90, i64 2
  store double %cond119, double* %arrayidx120, align 8
  %91 = load double*, double** %min_max, align 8
  %arrayidx121 = getelementptr inbounds double, double* %91, i64 3
  %92 = load double, double* %arrayidx121, align 8
  %y122 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %93 = load i32, i32* %y122, align 4
  %conv123 = sitofp i32 %93 to double
  %cmp124 = fcmp ogt double %92, %conv123
  br i1 %cmp124, label %cond.true.126, label %cond.false.128

cond.true.126:                                    ; preds = %cond.end.118
  %94 = load double*, double** %min_max, align 8
  %arrayidx127 = getelementptr inbounds double, double* %94, i64 3
  %95 = load double, double* %arrayidx127, align 8
  br label %cond.end.131

cond.false.128:                                   ; preds = %cond.end.118
  %y129 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %96 = load i32, i32* %y129, align 4
  %conv130 = sitofp i32 %96 to double
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.128, %cond.true.126
  %cond132 = phi double [ %95, %cond.true.126 ], [ %conv130, %cond.false.128 ]
  %97 = load double*, double** %min_max, align 8
  %arrayidx133 = getelementptr inbounds double, double* %97, i64 3
  store double %cond132, double* %arrayidx133, align 8
  br label %if.end.134

if.end.134:                                       ; preds = %cond.end.131, %if.then.76
  br label %for.inc

for.inc:                                          ; preds = %if.end.134, %if.then.65
  %98 = load i32, i32* %loop, align 4
  %inc135 = add nsw i32 %98, 1
  store i32 %inc135, i32* %loop, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %x136 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %first_pnt, i32 0, i32 0
  %99 = load i32, i32* %x136, align 4
  %conv137 = sitofp i32 %99 to double
  %100 = load i32, i32* %i, align 4
  %inc138 = add nsw i32 %100, 1
  store i32 %inc138, i32* %i, align 4
  %idxprom139 = sext i32 %100 to i64
  %101 = load double*, double** %line_pnts, align 8
  %arrayidx140 = getelementptr inbounds double, double* %101, i64 %idxprom139
  store double %conv137, double* %arrayidx140, align 8
  %y141 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %first_pnt, i32 0, i32 1
  %102 = load i32, i32* %y141, align 4
  %conv142 = sitofp i32 %102 to double
  %103 = load i32, i32* %i, align 4
  %inc143 = add nsw i32 %103, 1
  store i32 %inc143, i32* %i, align 4
  %idxprom144 = sext i32 %103 to i64
  %104 = load double*, double** %line_pnts, align 8
  %arrayidx145 = getelementptr inbounds double, double* %104, i64 %idxprom144
  store double %conv142, double* %arrayidx145, align 8
  %105 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 11), align 4
  %tobool146 = icmp ne i32 %105, 0
  br i1 %tobool146, label %if.then.147, label %if.else.150

if.then.147:                                      ; preds = %for.end
  %106 = load double*, double** %line_pnts, align 8
  %arrayidx148 = getelementptr inbounds double, double* %106, i64 0
  %107 = load i32, i32* %i, align 4
  %div149 = sdiv i32 %107, 2
  call void @scale_to_original_xy(double* %arrayidx148, i32 %div149)
  %108 = load double*, double** %min_max, align 8
  call void @scale_to_original_xy(double* %108, i32 2)
  br label %if.end.153

if.else.150:                                      ; preds = %for.end
  %109 = load double*, double** %line_pnts, align 8
  %arrayidx151 = getelementptr inbounds double, double* %109, i64 0
  %110 = load i32, i32* %i, align 4
  %div152 = sdiv i32 %110, 2
  call void @scale_to_xy(double* %arrayidx151, i32 %div152)
  %111 = load double*, double** %min_max, align 8
  call void @scale_to_xy(double* %111, i32 2)
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.150, %if.then.147
  %call154 = call %struct._Style* @gfig_context_get_current_style()
  %fill_type = getelementptr inbounds %struct._Style, %struct._Style* %call154, i32 0, i32 9
  %112 = load i32, i32* %fill_type, align 4
  %cmp155 = icmp ne i32 %112, 0
  br i1 %cmp155, label %if.then.157, label %if.end.170

if.then.157:                                      ; preds = %if.end.153
  %call158 = call i32 @gimp_context_push()
  %113 = load i32, i32* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 1), align 4
  %call159 = call i32 @gimp_context_set_antialias(i32 %113)
  %114 = load i32, i32* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 2), align 4
  %call160 = call i32 @gimp_context_set_feather(i32 %114)
  %115 = load double, double* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 3), align 8
  %116 = load double, double* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 3), align 8
  %call161 = call i32 @gimp_context_set_feather_radius(double %115, double %116)
  %117 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %image_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %117, i32 0, i32 2
  %118 = load i32, i32* %image_id, align 4
  %119 = load i32, i32* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 0), align 4
  %120 = load i32, i32* %i, align 4
  %121 = load double*, double** %line_pnts, align 8
  %call162 = call i32 @gimp_image_select_polygon(i32 %118, i32 %119, i32 %120, double* %121)
  %call163 = call i32 @gimp_context_pop()
  %122 = load double*, double** %min_max, align 8
  %arrayidx164 = getelementptr inbounds double, double* %122, i64 0
  %123 = load double, double* %arrayidx164, align 8
  %124 = load double*, double** %min_max, align 8
  %arrayidx165 = getelementptr inbounds double, double* %124, i64 1
  %125 = load double, double* %arrayidx165, align 8
  %126 = load double*, double** %min_max, align 8
  %arrayidx166 = getelementptr inbounds double, double* %126, i64 2
  %127 = load double, double* %arrayidx166, align 8
  %128 = load double*, double** %min_max, align 8
  %arrayidx167 = getelementptr inbounds double, double* %128, i64 3
  %129 = load double, double* %arrayidx167, align 8
  call void @paint_layer_fill(double %123, double %125, double %127, double %129)
  %130 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %image_id168 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %130, i32 0, i32 2
  %131 = load i32, i32* %image_id168, align 4
  %call169 = call i32 @gimp_selection_none(i32 %131)
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.157, %if.end.153
  %132 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %style = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %132, i32 0, i32 4
  %paint_type = getelementptr inbounds %struct._Style, %struct._Style* %style, i32 0, i32 13
  %133 = load i32, i32* %paint_type, align 4
  %cmp171 = icmp eq i32 %133, 1
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %if.end.170
  %134 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 13), align 4
  %135 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %135, i32 0, i32 3
  %136 = load i32, i32* %drawable_id, align 4
  %137 = load i32, i32* %i, align 4
  %138 = load double*, double** %line_pnts, align 8
  call void @gfig_paint(i32 %134, i32 %136, i32 %137, double* %138)
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.173, %if.end.170
  %139 = load double*, double** %line_pnts, align 8
  %140 = bitcast double* %139 to i8*
  call void @g_free(i8* %140)
  %141 = load double*, double** %min_max, align 8
  %142 = bitcast double* %141 to i8*
  call void @g_free(i8* %142)
  br label %return

return:                                           ; preds = %if.end.174, %if.then.4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @atan2(double, double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind readnone
declare double @rint(double) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @scale_to_original_xy(double*, i32) #1

declare void @scale_to_xy(double*, i32) #1

declare %struct._Style* @gfig_context_get_current_style() #1

declare i32 @gimp_context_push() #1

declare i32 @gimp_context_set_antialias(i32) #1

declare i32 @gimp_context_set_feather(i32) #1

declare i32 @gimp_context_set_feather_radius(double, double) #1

declare i32 @gimp_image_select_polygon(i32, i32, i32, double*) #1

declare i32 @gimp_context_pop() #1

declare void @paint_layer_fill(double, double, double, double) #1

declare i32 @gimp_selection_none(i32) #1

declare void @gfig_paint(i32, i32, i32, double*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @d_poly2lines(%struct._GfigObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %center_pnt = alloca %struct.DobjPoints*, align 8
  %radius_pnt = alloca %struct.DobjPoints*, align 8
  %shift_x = alloca i16, align 2
  %shift_y = alloca i16, align 2
  %ang_grid = alloca double, align 8
  %ang_loop = alloca double, align 8
  %radius = alloca double, align 8
  %offset_angle = alloca double, align 8
  %loop = alloca i32, align 4
  %first_pnt = alloca %struct._GdkPoint, align 4
  %last_pnt = alloca %struct._GdkPoint, align 4
  %first = alloca i32, align 4
  %lx = alloca double, align 8
  %ly = alloca double, align 8
  %calc_pnt = alloca %struct._GdkPoint, align 4
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  %0 = bitcast %struct._GdkPoint* %first_pnt to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 8, i32 4, i1 false)
  %1 = bitcast %struct._GdkPoint* %last_pnt to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 8, i32 4, i1 false)
  store i32 1, i32* %first, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %cmp = icmp ne %struct._GfigObject* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 291, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.d_poly2lines, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %3, i32 0, i32 3
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %4, %struct.DobjPoints** %center_pnt, align 8
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %5, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  br label %return

if.end.2:                                         ; preds = %do.end
  %6 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points3 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %6, i32 0, i32 3
  store %struct.DobjPoints* null, %struct.DobjPoints** %points3, align 8
  %7 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %7, i32 0, i32 0
  %8 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %8, %struct.DobjPoints** %radius_pnt, align 8
  %9 = load %struct.DobjPoints*, %struct.DobjPoints** %radius_pnt, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %9, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt, i32 0, i32 0
  %10 = load i32, i32* %x, align 4
  %11 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt4 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %11, i32 0, i32 1
  %x5 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt4, i32 0, i32 0
  %12 = load i32, i32* %x5, align 4
  %sub = sub nsw i32 %10, %12
  %conv = trunc i32 %sub to i16
  store i16 %conv, i16* %shift_x, align 2
  %13 = load %struct.DobjPoints*, %struct.DobjPoints** %radius_pnt, align 8
  %pnt6 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %13, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt6, i32 0, i32 1
  %14 = load i32, i32* %y, align 4
  %15 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt7 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %15, i32 0, i32 1
  %y8 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt7, i32 0, i32 1
  %16 = load i32, i32* %y8, align 4
  %sub9 = sub nsw i32 %14, %16
  %conv10 = trunc i32 %sub9 to i16
  store i16 %conv10, i16* %shift_y, align 2
  %17 = load i16, i16* %shift_x, align 2
  %conv11 = sext i16 %17 to i32
  %18 = load i16, i16* %shift_x, align 2
  %conv12 = sext i16 %18 to i32
  %mul = mul nsw i32 %conv11, %conv12
  %19 = load i16, i16* %shift_y, align 2
  %conv13 = sext i16 %19 to i32
  %20 = load i16, i16* %shift_y, align 2
  %conv14 = sext i16 %20 to i32
  %mul15 = mul nsw i32 %conv13, %conv14
  %add = add nsw i32 %mul, %mul15
  %conv16 = sitofp i32 %add to double
  %call = call double @sqrt(double %conv16) #4
  store double %call, double* %radius, align 8
  %21 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %21, i32 0, i32 2
  %22 = load i32, i32* %type_data, align 4
  %conv17 = sitofp i32 %22 to double
  %div = fdiv double 0x401921FB54442D18, %conv17
  store double %div, double* %ang_grid, align 8
  %23 = load i16, i16* %shift_y, align 2
  %conv18 = sitofp i16 %23 to double
  %24 = load i16, i16* %shift_x, align 2
  %conv19 = sitofp i16 %24 to double
  %call20 = call double @atan2(double %conv18, double %conv19) #4
  store double %call20, double* %offset_angle, align 8
  store i32 0, i32* %loop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.2
  %25 = load i32, i32* %loop, align 4
  %26 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data21 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %26, i32 0, i32 2
  %27 = load i32, i32* %type_data21, align 4
  %cmp22 = icmp slt i32 %25, %27
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %loop, align 4
  %conv24 = sitofp i32 %28 to double
  %29 = load double, double* %ang_grid, align 8
  %mul25 = fmul double %conv24, %29
  %30 = load double, double* %offset_angle, align 8
  %add26 = fadd double %mul25, %30
  store double %add26, double* %ang_loop, align 8
  %31 = load double, double* %radius, align 8
  %32 = load double, double* %ang_loop, align 8
  %call27 = call double @cos(double %32) #4
  %mul28 = fmul double %31, %call27
  store double %mul28, double* %lx, align 8
  %33 = load double, double* %radius, align 8
  %34 = load double, double* %ang_loop, align 8
  %call29 = call double @sin(double %34) #4
  %mul30 = fmul double %33, %call29
  store double %mul30, double* %ly, align 8
  %35 = load double, double* %lx, align 8
  %36 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt31 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %36, i32 0, i32 1
  %x32 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt31, i32 0, i32 0
  %37 = load i32, i32* %x32, align 4
  %conv33 = sitofp i32 %37 to double
  %add34 = fadd double %35, %conv33
  %call35 = call double @rint(double %add34) #6
  %conv36 = fptosi double %call35 to i32
  %x37 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  store i32 %conv36, i32* %x37, align 4
  %38 = load double, double* %ly, align 8
  %39 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt38 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %39, i32 0, i32 1
  %y39 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt38, i32 0, i32 1
  %40 = load i32, i32* %y39, align 4
  %conv40 = sitofp i32 %40 to double
  %add41 = fadd double %38, %conv40
  %call42 = call double @rint(double %add41) #6
  %conv43 = fptosi double %call42 to i32
  %y44 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  store i32 %conv43, i32* %y44, align 4
  %41 = load i32, i32* %first, align 4
  %tobool45 = icmp ne i32 %41, 0
  br i1 %tobool45, label %if.end.57, label %if.then.46

if.then.46:                                       ; preds = %for.body
  %x47 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %42 = load i32, i32* %x47, align 4
  %x48 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %last_pnt, i32 0, i32 0
  %43 = load i32, i32* %x48, align 4
  %cmp49 = icmp eq i32 %42, %43
  br i1 %cmp49, label %land.lhs.true, label %if.end.56

land.lhs.true:                                    ; preds = %if.then.46
  %y51 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %44 = load i32, i32* %y51, align 4
  %y52 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %last_pnt, i32 0, i32 1
  %45 = load i32, i32* %y52, align 4
  %cmp53 = icmp eq i32 %44, %45
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %land.lhs.true
  br label %for.inc

if.end.56:                                        ; preds = %land.lhs.true, %if.then.46
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %for.body
  %46 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %x58 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %47 = load i32, i32* %x58, align 4
  %y59 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %48 = load i32, i32* %y59, align 4
  call void @d_pnt_add_line(%struct._GfigObject* %46, i32 %47, i32 %48, i32 0)
  %49 = bitcast %struct._GdkPoint* %last_pnt to i8*
  %50 = bitcast %struct._GdkPoint* %calc_pnt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 8, i32 4, i1 false)
  %51 = load i32, i32* %first, align 4
  %tobool60 = icmp ne i32 %51, 0
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.57
  %52 = bitcast %struct._GdkPoint* %first_pnt to i8*
  %53 = bitcast %struct._GdkPoint* %calc_pnt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 8, i32 4, i1 false)
  store i32 0, i32* %first, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.end.57
  br label %for.inc

for.inc:                                          ; preds = %if.end.62, %if.then.55
  %54 = load i32, i32* %loop, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %loop, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %x63 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %first_pnt, i32 0, i32 0
  %56 = load i32, i32* %x63, align 4
  %y64 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %first_pnt, i32 0, i32 1
  %57 = load i32, i32* %y64, align 4
  call void @d_pnt_add_line(%struct._GfigObject* %55, i32 %56, i32 %57, i32 0)
  %58 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  call void @d_delete_dobjpoints(%struct.DobjPoints* %58)
  %59 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %59, i32 0, i32 0
  store i32 1, i32* %type, align 4
  %60 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %class = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %60, i32 0, i32 1
  store %struct.GfigObjectClass* getelementptr inbounds ([10 x %struct.GfigObjectClass], [10 x %struct.GfigObjectClass]* @dobj_class, i32 0, i64 1), %struct.GfigObjectClass** %class, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then.1
  ret void
}

declare void @d_pnt_add_line(%struct._GfigObject*, i32, i32, i32) #1

declare void @d_delete_dobjpoints(%struct.DobjPoints*) #1

; Function Attrs: nounwind uwtable
define void @d_star2lines(%struct._GfigObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %center_pnt = alloca %struct.DobjPoints*, align 8
  %outer_radius_pnt = alloca %struct.DobjPoints*, align 8
  %inner_radius_pnt = alloca %struct.DobjPoints*, align 8
  %shift_x = alloca i16, align 2
  %shift_y = alloca i16, align 2
  %ang_grid = alloca double, align 8
  %ang_loop = alloca double, align 8
  %outer_radius = alloca double, align 8
  %inner_radius = alloca double, align 8
  %offset_angle = alloca double, align 8
  %loop = alloca i32, align 4
  %first_pnt = alloca %struct._GdkPoint, align 4
  %last_pnt = alloca %struct._GdkPoint, align 4
  %first = alloca i32, align 4
  %lx = alloca double, align 8
  %ly = alloca double, align 8
  %calc_pnt = alloca %struct._GdkPoint, align 4
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  %0 = bitcast %struct._GdkPoint* %first_pnt to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 8, i32 4, i1 false)
  %1 = bitcast %struct._GdkPoint* %last_pnt to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 8, i32 4, i1 false)
  store i32 1, i32* %first, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %cmp = icmp ne %struct._GfigObject* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 376, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.d_star2lines, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %3, i32 0, i32 3
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %4, %struct.DobjPoints** %center_pnt, align 8
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %5, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  br label %return

if.end.2:                                         ; preds = %do.end
  %6 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points3 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %6, i32 0, i32 3
  store %struct.DobjPoints* null, %struct.DobjPoints** %points3, align 8
  %7 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %7, i32 0, i32 0
  %8 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %8, %struct.DobjPoints** %outer_radius_pnt, align 8
  %9 = load %struct.DobjPoints*, %struct.DobjPoints** %outer_radius_pnt, align 8
  %tobool4 = icmp ne %struct.DobjPoints* %9, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.2
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %10 = load %struct.DobjPoints*, %struct.DobjPoints** %outer_radius_pnt, align 8
  %next7 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %10, i32 0, i32 0
  %11 = load %struct.DobjPoints*, %struct.DobjPoints** %next7, align 8
  store %struct.DobjPoints* %11, %struct.DobjPoints** %inner_radius_pnt, align 8
  %12 = load %struct.DobjPoints*, %struct.DobjPoints** %inner_radius_pnt, align 8
  %tobool8 = icmp ne %struct.DobjPoints* %12, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %13 = load %struct.DobjPoints*, %struct.DobjPoints** %outer_radius_pnt, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %13, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt, i32 0, i32 0
  %14 = load i32, i32* %x, align 4
  %15 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt11 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %15, i32 0, i32 1
  %x12 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt11, i32 0, i32 0
  %16 = load i32, i32* %x12, align 4
  %sub = sub nsw i32 %14, %16
  %conv = trunc i32 %sub to i16
  store i16 %conv, i16* %shift_x, align 2
  %17 = load %struct.DobjPoints*, %struct.DobjPoints** %outer_radius_pnt, align 8
  %pnt13 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %17, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt13, i32 0, i32 1
  %18 = load i32, i32* %y, align 4
  %19 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt14 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %19, i32 0, i32 1
  %y15 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt14, i32 0, i32 1
  %20 = load i32, i32* %y15, align 4
  %sub16 = sub nsw i32 %18, %20
  %conv17 = trunc i32 %sub16 to i16
  store i16 %conv17, i16* %shift_y, align 2
  %21 = load i16, i16* %shift_x, align 2
  %conv18 = sext i16 %21 to i32
  %22 = load i16, i16* %shift_x, align 2
  %conv19 = sext i16 %22 to i32
  %mul = mul nsw i32 %conv18, %conv19
  %23 = load i16, i16* %shift_y, align 2
  %conv20 = sext i16 %23 to i32
  %24 = load i16, i16* %shift_y, align 2
  %conv21 = sext i16 %24 to i32
  %mul22 = mul nsw i32 %conv20, %conv21
  %add = add nsw i32 %mul, %mul22
  %conv23 = sitofp i32 %add to double
  %call = call double @sqrt(double %conv23) #4
  store double %call, double* %outer_radius, align 8
  %25 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %25, i32 0, i32 2
  %26 = load i32, i32* %type_data, align 4
  %conv24 = sitofp i32 %26 to double
  %mul25 = fmul double 2.000000e+00, %conv24
  %div = fdiv double 0x401921FB54442D18, %mul25
  store double %div, double* %ang_grid, align 8
  %27 = load i16, i16* %shift_y, align 2
  %conv26 = sitofp i16 %27 to double
  %28 = load i16, i16* %shift_x, align 2
  %conv27 = sitofp i16 %28 to double
  %call28 = call double @atan2(double %conv26, double %conv27) #4
  store double %call28, double* %offset_angle, align 8
  %29 = load %struct.DobjPoints*, %struct.DobjPoints** %inner_radius_pnt, align 8
  %pnt29 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %29, i32 0, i32 1
  %x30 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt29, i32 0, i32 0
  %30 = load i32, i32* %x30, align 4
  %31 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt31 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %31, i32 0, i32 1
  %x32 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt31, i32 0, i32 0
  %32 = load i32, i32* %x32, align 4
  %sub33 = sub nsw i32 %30, %32
  %conv34 = trunc i32 %sub33 to i16
  store i16 %conv34, i16* %shift_x, align 2
  %33 = load %struct.DobjPoints*, %struct.DobjPoints** %inner_radius_pnt, align 8
  %pnt35 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %33, i32 0, i32 1
  %y36 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt35, i32 0, i32 1
  %34 = load i32, i32* %y36, align 4
  %35 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt37 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %35, i32 0, i32 1
  %y38 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt37, i32 0, i32 1
  %36 = load i32, i32* %y38, align 4
  %sub39 = sub nsw i32 %34, %36
  %conv40 = trunc i32 %sub39 to i16
  store i16 %conv40, i16* %shift_y, align 2
  %37 = load i16, i16* %shift_x, align 2
  %conv41 = sext i16 %37 to i32
  %38 = load i16, i16* %shift_x, align 2
  %conv42 = sext i16 %38 to i32
  %mul43 = mul nsw i32 %conv41, %conv42
  %39 = load i16, i16* %shift_y, align 2
  %conv44 = sext i16 %39 to i32
  %40 = load i16, i16* %shift_y, align 2
  %conv45 = sext i16 %40 to i32
  %mul46 = mul nsw i32 %conv44, %conv45
  %add47 = add nsw i32 %mul43, %mul46
  %conv48 = sitofp i32 %add47 to double
  %call49 = call double @sqrt(double %conv48) #4
  store double %call49, double* %inner_radius, align 8
  store i32 0, i32* %loop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %41 = load i32, i32* %loop, align 4
  %42 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data50 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %42, i32 0, i32 2
  %43 = load i32, i32* %type_data50, align 4
  %mul51 = mul nsw i32 2, %43
  %cmp52 = icmp slt i32 %41, %mul51
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i32, i32* %loop, align 4
  %conv54 = sitofp i32 %44 to double
  %45 = load double, double* %ang_grid, align 8
  %mul55 = fmul double %conv54, %45
  %46 = load double, double* %offset_angle, align 8
  %add56 = fadd double %mul55, %46
  store double %add56, double* %ang_loop, align 8
  %47 = load i32, i32* %loop, align 4
  %rem = srem i32 %47, 2
  %tobool57 = icmp ne i32 %rem, 0
  br i1 %tobool57, label %if.then.58, label %if.else.63

if.then.58:                                       ; preds = %for.body
  %48 = load double, double* %inner_radius, align 8
  %49 = load double, double* %ang_loop, align 8
  %call59 = call double @cos(double %49) #4
  %mul60 = fmul double %48, %call59
  store double %mul60, double* %lx, align 8
  %50 = load double, double* %inner_radius, align 8
  %51 = load double, double* %ang_loop, align 8
  %call61 = call double @sin(double %51) #4
  %mul62 = fmul double %50, %call61
  store double %mul62, double* %ly, align 8
  br label %if.end.68

if.else.63:                                       ; preds = %for.body
  %52 = load double, double* %outer_radius, align 8
  %53 = load double, double* %ang_loop, align 8
  %call64 = call double @cos(double %53) #4
  %mul65 = fmul double %52, %call64
  store double %mul65, double* %lx, align 8
  %54 = load double, double* %outer_radius, align 8
  %55 = load double, double* %ang_loop, align 8
  %call66 = call double @sin(double %55) #4
  %mul67 = fmul double %54, %call66
  store double %mul67, double* %ly, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.63, %if.then.58
  %56 = load double, double* %lx, align 8
  %57 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt69 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %57, i32 0, i32 1
  %x70 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt69, i32 0, i32 0
  %58 = load i32, i32* %x70, align 4
  %conv71 = sitofp i32 %58 to double
  %add72 = fadd double %56, %conv71
  %call73 = call double @rint(double %add72) #6
  %conv74 = fptosi double %call73 to i32
  %x75 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  store i32 %conv74, i32* %x75, align 4
  %59 = load double, double* %ly, align 8
  %60 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt76 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %60, i32 0, i32 1
  %y77 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt76, i32 0, i32 1
  %61 = load i32, i32* %y77, align 4
  %conv78 = sitofp i32 %61 to double
  %add79 = fadd double %59, %conv78
  %call80 = call double @rint(double %add79) #6
  %conv81 = fptosi double %call80 to i32
  %y82 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  store i32 %conv81, i32* %y82, align 4
  %62 = load i32, i32* %first, align 4
  %tobool83 = icmp ne i32 %62, 0
  br i1 %tobool83, label %if.end.95, label %if.then.84

if.then.84:                                       ; preds = %if.end.68
  %x85 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %63 = load i32, i32* %x85, align 4
  %x86 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %last_pnt, i32 0, i32 0
  %64 = load i32, i32* %x86, align 4
  %cmp87 = icmp eq i32 %63, %64
  br i1 %cmp87, label %land.lhs.true, label %if.end.94

land.lhs.true:                                    ; preds = %if.then.84
  %y89 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %65 = load i32, i32* %y89, align 4
  %y90 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %last_pnt, i32 0, i32 1
  %66 = load i32, i32* %y90, align 4
  %cmp91 = icmp eq i32 %65, %66
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %land.lhs.true
  br label %for.inc

if.end.94:                                        ; preds = %land.lhs.true, %if.then.84
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.68
  %67 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %x96 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %68 = load i32, i32* %x96, align 4
  %y97 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %69 = load i32, i32* %y97, align 4
  call void @d_pnt_add_line(%struct._GfigObject* %67, i32 %68, i32 %69, i32 0)
  %70 = bitcast %struct._GdkPoint* %last_pnt to i8*
  %71 = bitcast %struct._GdkPoint* %calc_pnt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 8, i32 4, i1 false)
  %72 = load i32, i32* %first, align 4
  %tobool98 = icmp ne i32 %72, 0
  br i1 %tobool98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.95
  %73 = bitcast %struct._GdkPoint* %first_pnt to i8*
  %74 = bitcast %struct._GdkPoint* %calc_pnt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 8, i32 4, i1 false)
  store i32 0, i32* %first, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %if.end.95
  br label %for.inc

for.inc:                                          ; preds = %if.end.100, %if.then.93
  %75 = load i32, i32* %loop, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %loop, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %76 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %x101 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %first_pnt, i32 0, i32 0
  %77 = load i32, i32* %x101, align 4
  %y102 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %first_pnt, i32 0, i32 1
  %78 = load i32, i32* %y102, align 4
  call void @d_pnt_add_line(%struct._GfigObject* %76, i32 %77, i32 %78, i32 0)
  %79 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  call void @d_delete_dobjpoints(%struct.DobjPoints* %79)
  %80 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %80, i32 0, i32 0
  store i32 1, i32* %type, align 4
  %81 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %class = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %81, i32 0, i32 1
  store %struct.GfigObjectClass* getelementptr inbounds ([10 x %struct.GfigObjectClass], [10 x %struct.GfigObjectClass]* @dobj_class, i32 0, i64 1), %struct.GfigObjectClass** %class, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then.9, %if.then.5, %if.then.1
  ret void
}

; Function Attrs: nounwind uwtable
define void @d_poly_object_class_init() #0 {
entry:
  %class = alloca %struct.GfigObjectClass*, align 8
  store %struct.GfigObjectClass* getelementptr inbounds ([10 x %struct.GfigObjectClass], [10 x %struct.GfigObjectClass]* @dobj_class, i32 0, i64 6), %struct.GfigObjectClass** %class, align 8
  %0 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %type = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %0, i32 0, i32 0
  store i32 6, i32* %type, align 4
  %1 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %name = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8** %name, align 8
  %2 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %drawfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %2, i32 0, i32 2
  store void (%struct._GfigObject*, %struct._cairo*)* @d_draw_poly, void (%struct._GfigObject*, %struct._cairo*)** %drawfunc, align 8
  %3 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %paintfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %3, i32 0, i32 3
  %paintfunc1 = bitcast {}** %paintfunc to void (%struct._GfigObject*)**
  store void (%struct._GfigObject*)* @d_paint_poly, void (%struct._GfigObject*)** %paintfunc1, align 8
  %4 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %copyfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %4, i32 0, i32 4
  store %struct._GfigObject* (%struct._GfigObject*)* @d_copy_poly, %struct._GfigObject* (%struct._GfigObject*)** %copyfunc, align 8
  %5 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %update = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %5, i32 0, i32 5
  store void (%struct._GdkPoint*)* @d_update_poly, void (%struct._GdkPoint*)** %update, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @d_draw_poly(%struct._GfigObject* %obj, %struct._cairo* %cr) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %center_pnt = alloca %struct.DobjPoints*, align 8
  %radius_pnt = alloca %struct.DobjPoints*, align 8
  %shift_x = alloca i16, align 2
  %shift_y = alloca i16, align 2
  %ang_grid = alloca double, align 8
  %ang_loop = alloca double, align 8
  %radius = alloca double, align 8
  %offset_angle = alloca double, align 8
  %loop = alloca i32, align 4
  %start_pnt = alloca %struct._GdkPoint, align 4
  %first_pnt = alloca %struct._GdkPoint, align 4
  %do_line = alloca i32, align 4
  %lx = alloca double, align 8
  %ly = alloca double, align 8
  %calc_pnt = alloca %struct._GdkPoint, align 4
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = bitcast %struct._GdkPoint* %start_pnt to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 8, i32 4, i1 false)
  %1 = bitcast %struct._GdkPoint* %first_pnt to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 8, i32 4, i1 false)
  store i32 0, i32* %do_line, align 4
  %2 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %2, i32 0, i32 3
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %3, %struct.DobjPoints** %center_pnt, align 8
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %5, i32 0, i32 1
  %6 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %7 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %7, i32 0, i32 5
  %8 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj, align 8
  %cmp = icmp eq %struct._GfigObject* %6, %8
  %conv = zext i1 %cmp to i32
  %9 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_sqr(%struct._GdkPoint* %pnt, i32 %conv, %struct._cairo* %9)
  %10 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %10, i32 0, i32 0
  %11 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %11, %struct.DobjPoints** %radius_pnt, align 8
  %12 = load %struct.DobjPoints*, %struct.DobjPoints** %radius_pnt, align 8
  %tobool1 = icmp ne %struct.DobjPoints* %12, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %13 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %14 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %cmp4 = icmp eq %struct._GfigObject* %13, %14
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.3
  %15 = load %struct.DobjPoints*, %struct.DobjPoints** %radius_pnt, align 8
  %pnt7 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %15, i32 0, i32 1
  %16 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_circle(%struct._GdkPoint* %pnt7, i32 1, %struct._cairo* %16)
  br label %if.end.12

if.else:                                          ; preds = %if.end.3
  %17 = load %struct.DobjPoints*, %struct.DobjPoints** %radius_pnt, align 8
  %pnt8 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %17, i32 0, i32 1
  %18 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %19 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj9 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %19, i32 0, i32 5
  %20 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj9, align 8
  %cmp10 = icmp eq %struct._GfigObject* %18, %20
  %conv11 = zext i1 %cmp10 to i32
  %21 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_sqr(%struct._GdkPoint* %pnt8, i32 %conv11, %struct._cairo* %21)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.6
  %22 = load %struct.DobjPoints*, %struct.DobjPoints** %radius_pnt, align 8
  %pnt13 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %22, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt13, i32 0, i32 0
  %23 = load i32, i32* %x, align 4
  %24 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt14 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %24, i32 0, i32 1
  %x15 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt14, i32 0, i32 0
  %25 = load i32, i32* %x15, align 4
  %sub = sub nsw i32 %23, %25
  %conv16 = trunc i32 %sub to i16
  store i16 %conv16, i16* %shift_x, align 2
  %26 = load %struct.DobjPoints*, %struct.DobjPoints** %radius_pnt, align 8
  %pnt17 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %26, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt17, i32 0, i32 1
  %27 = load i32, i32* %y, align 4
  %28 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt18 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %28, i32 0, i32 1
  %y19 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt18, i32 0, i32 1
  %29 = load i32, i32* %y19, align 4
  %sub20 = sub nsw i32 %27, %29
  %conv21 = trunc i32 %sub20 to i16
  store i16 %conv21, i16* %shift_y, align 2
  %30 = load i16, i16* %shift_x, align 2
  %conv22 = sext i16 %30 to i32
  %31 = load i16, i16* %shift_x, align 2
  %conv23 = sext i16 %31 to i32
  %mul = mul nsw i32 %conv22, %conv23
  %32 = load i16, i16* %shift_y, align 2
  %conv24 = sext i16 %32 to i32
  %33 = load i16, i16* %shift_y, align 2
  %conv25 = sext i16 %33 to i32
  %mul26 = mul nsw i32 %conv24, %conv25
  %add = add nsw i32 %mul, %mul26
  %conv27 = sitofp i32 %add to double
  %call = call double @sqrt(double %conv27) #4
  store double %call, double* %radius, align 8
  %34 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %34, i32 0, i32 2
  %35 = load i32, i32* %type_data, align 4
  %conv28 = sitofp i32 %35 to double
  %div = fdiv double 0x401921FB54442D18, %conv28
  store double %div, double* %ang_grid, align 8
  %36 = load i16, i16* %shift_y, align 2
  %conv29 = sitofp i16 %36 to double
  %37 = load i16, i16* %shift_x, align 2
  %conv30 = sitofp i16 %37 to double
  %call31 = call double @atan2(double %conv29, double %conv30) #4
  store double %call31, double* %offset_angle, align 8
  store i32 0, i32* %loop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %38 = load i32, i32* %loop, align 4
  %39 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data32 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %39, i32 0, i32 2
  %40 = load i32, i32* %type_data32, align 4
  %cmp33 = icmp slt i32 %38, %40
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i32, i32* %loop, align 4
  %conv35 = sitofp i32 %41 to double
  %42 = load double, double* %ang_grid, align 8
  %mul36 = fmul double %conv35, %42
  %43 = load double, double* %offset_angle, align 8
  %add37 = fadd double %mul36, %43
  store double %add37, double* %ang_loop, align 8
  %44 = load double, double* %radius, align 8
  %45 = load double, double* %ang_loop, align 8
  %call38 = call double @cos(double %45) #4
  %mul39 = fmul double %44, %call38
  store double %mul39, double* %lx, align 8
  %46 = load double, double* %radius, align 8
  %47 = load double, double* %ang_loop, align 8
  %call40 = call double @sin(double %47) #4
  %mul41 = fmul double %46, %call40
  store double %mul41, double* %ly, align 8
  %48 = load double, double* %lx, align 8
  %49 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt42 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %49, i32 0, i32 1
  %x43 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt42, i32 0, i32 0
  %50 = load i32, i32* %x43, align 4
  %conv44 = sitofp i32 %50 to double
  %add45 = fadd double %48, %conv44
  %call46 = call double @rint(double %add45) #6
  %conv47 = fptosi double %call46 to i32
  %x48 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  store i32 %conv47, i32* %x48, align 4
  %51 = load double, double* %ly, align 8
  %52 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt49 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %52, i32 0, i32 1
  %y50 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt49, i32 0, i32 1
  %53 = load i32, i32* %y50, align 4
  %conv51 = sitofp i32 %53 to double
  %add52 = fadd double %51, %conv51
  %call53 = call double @rint(double %add52) #6
  %conv54 = fptosi double %call53 to i32
  %y55 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  store i32 %conv54, i32* %y55, align 4
  %54 = load i32, i32* %do_line, align 4
  %tobool56 = icmp ne i32 %54, 0
  br i1 %tobool56, label %if.then.57, label %if.else.72

if.then.57:                                       ; preds = %for.body
  %x58 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %55 = load i32, i32* %x58, align 4
  %x59 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %start_pnt, i32 0, i32 0
  %56 = load i32, i32* %x59, align 4
  %cmp60 = icmp eq i32 %55, %56
  br i1 %cmp60, label %land.lhs.true, label %if.end.67

land.lhs.true:                                    ; preds = %if.then.57
  %y62 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %57 = load i32, i32* %y62, align 4
  %y63 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %start_pnt, i32 0, i32 1
  %58 = load i32, i32* %y63, align 4
  %cmp64 = icmp eq i32 %57, %58
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %land.lhs.true
  br label %for.inc

if.end.67:                                        ; preds = %land.lhs.true, %if.then.57
  %x68 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %59 = load i32, i32* %x68, align 4
  %y69 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %60 = load i32, i32* %y69, align 4
  %x70 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %start_pnt, i32 0, i32 0
  %61 = load i32, i32* %x70, align 4
  %y71 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %start_pnt, i32 0, i32 1
  %62 = load i32, i32* %y71, align 4
  %63 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gfig_draw_line(i32 %59, i32 %60, i32 %61, i32 %62, %struct._cairo* %63)
  br label %if.end.73

if.else.72:                                       ; preds = %for.body
  store i32 1, i32* %do_line, align 4
  %64 = bitcast %struct._GdkPoint* %first_pnt to i8*
  %65 = bitcast %struct._GdkPoint* %calc_pnt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 8, i32 4, i1 false)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.72, %if.end.67
  %66 = bitcast %struct._GdkPoint* %start_pnt to i8*
  %67 = bitcast %struct._GdkPoint* %calc_pnt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 8, i32 4, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %if.end.73, %if.then.66
  %68 = load i32, i32* %loop, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %loop, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %x74 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %first_pnt, i32 0, i32 0
  %69 = load i32, i32* %x74, align 4
  %y75 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %first_pnt, i32 0, i32 1
  %70 = load i32, i32* %y75, align 4
  %x76 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %start_pnt, i32 0, i32 0
  %71 = load i32, i32* %x76, align 4
  %y77 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %start_pnt, i32 0, i32 1
  %72 = load i32, i32* %y77, align 4
  %73 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gfig_draw_line(i32 %69, i32 %70, i32 %71, i32 %72, %struct._cairo* %73)
  br label %return

return:                                           ; preds = %for.end, %if.then.2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GfigObject* @d_copy_poly(%struct._GfigObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %np = alloca %struct._GfigObject*, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 476, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.d_copy_poly, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)) #7
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
  %call = call %struct._GfigObject* @d_new_object(i32 6, i32 %4, i32 %7)
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
define internal void @d_update_poly(%struct._GdkPoint* %pnt) #0 {
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
  br label %if.end.4

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
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %9 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %10 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %10, i32 0, i32 0
  %11 = load i32, i32* %x, align 4
  %12 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %12, i32 0, i32 1
  %13 = load i32, i32* %y, align 4
  call void @d_pnt_add_line(%struct._GfigObject* %9, i32 %11, i32 %13, i32 -1)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then, %if.else, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define void @d_poly_start(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
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
  %call = call %struct._GfigObject* @d_new_object(i32 6, i32 %1, i32 %3)
  store %struct._GfigObject* %call, %struct._GfigObject** @obj_creating, align 8
  %4 = load i32, i32* @poly_num_sides, align 4
  %5 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %type_data = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %5, i32 0, i32 2
  store i32 %4, i32* %type_data, align 4
  ret void
}

declare %struct._GfigObject* @d_new_object(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @d_poly_end(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
entry:
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  %shift_down.addr = alloca i32, align 4
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  store i32 %shift_down, i32* %shift_down.addr, align 4
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 4
  %1 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %2 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  call void @add_to_all_obj(%struct._GFigObj* %1, %struct._GfigObject* %2)
  store %struct._GfigObject* null, %struct._GfigObject** @obj_creating, align 8
  ret void
}

declare void @add_to_all_obj(%struct._GFigObj*, %struct._GfigObject*) #1

declare void @draw_sqr(%struct._GdkPoint*, i32, %struct._cairo*) #1

declare void @draw_circle(%struct._GdkPoint*, i32, %struct._cairo*) #1

declare void @gfig_draw_line(i32, i32, i32, i32, %struct._cairo*) #1

declare %struct.DobjPoints* @d_copy_dobjpoints(%struct.DobjPoints*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
