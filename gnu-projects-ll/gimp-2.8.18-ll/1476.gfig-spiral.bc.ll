; ModuleID = './plug-ins/gfig/gfig-spiral.bc'
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
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }

@.str = private unnamed_addr constant [23 x i8] c"Spiral Number of Turns\00", align 1
@spiral_num_turns = internal global i32 4, align 4
@spiral_toggle = internal global i32 0, align 4
@dobj_class = external global [10 x %struct.GfigObjectClass], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"SPIRAL\00", align 1
@obj_creating = external global %struct._GfigObject*, align 8
@gfig_context = external global %struct.GFigContext*, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"gfig-spiral.c\00", align 1
@__func__.d_paint_spiral = private unnamed_addr constant [15 x i8] c"d_paint_spiral\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"obj != NULL\00", align 1
@selvals = external global %struct.SelectItVals, align 8
@__func__.d_copy_spiral = private unnamed_addr constant [14 x i8] c"d_copy_spiral\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"obj->type == SPIRAL\00", align 1

; Function Attrs: nounwind uwtable
define void @tool_options_spiral(%struct._GtkWidget* %notebook) #0 {
entry:
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %sides = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* @num_sides_widget(i8* %call, i32* @spiral_num_turns, i32* @spiral_toggle, i32 1, i32 20)
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
define void @d_spiral_object_class_init() #0 {
entry:
  %class = alloca %struct.GfigObjectClass*, align 8
  store %struct.GfigObjectClass* getelementptr inbounds ([10 x %struct.GfigObjectClass], [10 x %struct.GfigObjectClass]* @dobj_class, i32 0, i64 8), %struct.GfigObjectClass** %class, align 8
  %0 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %type = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %0, i32 0, i32 0
  store i32 8, i32* %type, align 4
  %1 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %name = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8** %name, align 8
  %2 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %drawfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %2, i32 0, i32 2
  store void (%struct._GfigObject*, %struct._cairo*)* @d_draw_spiral, void (%struct._GfigObject*, %struct._cairo*)** %drawfunc, align 8
  %3 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %paintfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %3, i32 0, i32 3
  store void (%struct._GfigObject*)* @d_paint_spiral, void (%struct._GfigObject*)** %paintfunc, align 8
  %4 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %copyfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %4, i32 0, i32 4
  store %struct._GfigObject* (%struct._GfigObject*)* @d_copy_spiral, %struct._GfigObject* (%struct._GfigObject*)** %copyfunc, align 8
  %5 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %update = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %5, i32 0, i32 5
  store void (%struct._GdkPoint*)* @d_update_spiral, void (%struct._GdkPoint*)** %update, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @d_draw_spiral(%struct._GfigObject* %obj, %struct._cairo* %cr) #0 {
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
  %sp_cons = alloca double, align 8
  %loop = alloca i32, align 4
  %start_pnt = alloca %struct._GdkPoint, align 4
  %do_line = alloca i32, align 4
  %clock_wise = alloca i32, align 4
  %lx = alloca double, align 8
  %ly = alloca double, align 8
  %calc_pnt = alloca %struct._GdkPoint, align 4
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = bitcast %struct._GdkPoint* %start_pnt to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 8, i32 4, i1 false)
  store i32 0, i32* %do_line, align 4
  store i32 1, i32* %clock_wise, align 4
  %1 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %1, i32 0, i32 3
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %2, %struct.DobjPoints** %center_pnt, align 8
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %4, i32 0, i32 1
  %5 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %6 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %6, i32 0, i32 5
  %7 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj, align 8
  %cmp = icmp eq %struct._GfigObject* %5, %7
  %conv = zext i1 %cmp to i32
  %8 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_sqr(%struct._GdkPoint* %pnt, i32 %conv, %struct._cairo* %8)
  %9 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %9, i32 0, i32 0
  %10 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %10, %struct.DobjPoints** %radius_pnt, align 8
  %11 = load %struct.DobjPoints*, %struct.DobjPoints** %radius_pnt, align 8
  %tobool1 = icmp ne %struct.DobjPoints* %11, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %for.end

if.end.3:                                         ; preds = %if.end
  %12 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %13 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %cmp4 = icmp eq %struct._GfigObject* %12, %13
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.3
  %14 = load %struct.DobjPoints*, %struct.DobjPoints** %radius_pnt, align 8
  %pnt7 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %14, i32 0, i32 1
  %15 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_circle(%struct._GdkPoint* %pnt7, i32 1, %struct._cairo* %15)
  br label %if.end.12

if.else:                                          ; preds = %if.end.3
  %16 = load %struct.DobjPoints*, %struct.DobjPoints** %radius_pnt, align 8
  %pnt8 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %16, i32 0, i32 1
  %17 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %18 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj9 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %18, i32 0, i32 5
  %19 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj9, align 8
  %cmp10 = icmp eq %struct._GfigObject* %17, %19
  %conv11 = zext i1 %cmp10 to i32
  %20 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_sqr(%struct._GdkPoint* %pnt8, i32 %conv11, %struct._cairo* %20)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.6
  %21 = load %struct.DobjPoints*, %struct.DobjPoints** %radius_pnt, align 8
  %pnt13 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %21, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt13, i32 0, i32 0
  %22 = load i32, i32* %x, align 4
  %23 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt14 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %23, i32 0, i32 1
  %x15 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt14, i32 0, i32 0
  %24 = load i32, i32* %x15, align 4
  %sub = sub nsw i32 %22, %24
  %conv16 = trunc i32 %sub to i16
  store i16 %conv16, i16* %shift_x, align 2
  %25 = load %struct.DobjPoints*, %struct.DobjPoints** %radius_pnt, align 8
  %pnt17 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %25, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt17, i32 0, i32 1
  %26 = load i32, i32* %y, align 4
  %27 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt18 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %27, i32 0, i32 1
  %y19 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt18, i32 0, i32 1
  %28 = load i32, i32* %y19, align 4
  %sub20 = sub nsw i32 %26, %28
  %conv21 = trunc i32 %sub20 to i16
  store i16 %conv21, i16* %shift_y, align 2
  %29 = load i16, i16* %shift_x, align 2
  %conv22 = sext i16 %29 to i32
  %30 = load i16, i16* %shift_x, align 2
  %conv23 = sext i16 %30 to i32
  %mul = mul nsw i32 %conv22, %conv23
  %31 = load i16, i16* %shift_y, align 2
  %conv24 = sext i16 %31 to i32
  %32 = load i16, i16* %shift_y, align 2
  %conv25 = sext i16 %32 to i32
  %mul26 = mul nsw i32 %conv24, %conv25
  %add = add nsw i32 %mul, %mul26
  %conv27 = sitofp i32 %add to double
  %call = call double @sqrt(double %conv27) #4
  store double %call, double* %radius, align 8
  %33 = load i16, i16* %shift_y, align 2
  %conv28 = sitofp i16 %33 to double
  %34 = load i16, i16* %shift_x, align 2
  %conv29 = sitofp i16 %34 to double
  %call30 = call double @atan2(double %conv28, double %conv29) #4
  store double %call30, double* %offset_angle, align 8
  %35 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %35, i32 0, i32 2
  %36 = load i32, i32* %type_data, align 4
  %37 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data31 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %37, i32 0, i32 2
  %38 = load i32, i32* %type_data31, align 4
  %call32 = call i32 @abs(i32 %38) #6
  %div = sdiv i32 %36, %call32
  store i32 %div, i32* %clock_wise, align 4
  %39 = load double, double* %offset_angle, align 8
  %cmp33 = fcmp olt double %39, 0.000000e+00
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.12
  %40 = load double, double* %offset_angle, align 8
  %add36 = fadd double %40, 0x401921FB54442D18
  store double %add36, double* %offset_angle, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.12
  %41 = load double, double* %radius, align 8
  %42 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data38 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %42, i32 0, i32 2
  %43 = load i32, i32* %type_data38, align 4
  %mul39 = mul nsw i32 %43, 2
  %conv40 = sitofp i32 %mul39 to double
  %mul41 = fmul double %conv40, 0x400921FB54442D18
  %44 = load double, double* %offset_angle, align 8
  %add42 = fadd double %mul41, %44
  %div43 = fdiv double %41, %add42
  store double %div43, double* %sp_cons, align 8
  store double 0x3FA1DF46A2529D39, double* %ang_grid, align 8
  store i32 0, i32* %loop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.37
  %45 = load i32, i32* %loop, align 4
  %46 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data44 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %46, i32 0, i32 2
  %47 = load i32, i32* %type_data44, align 4
  %mul45 = mul nsw i32 %47, 180
  %call46 = call i32 @abs(i32 %mul45) #6
  %48 = load i32, i32* %clock_wise, align 4
  %49 = load double, double* %offset_angle, align 8
  %50 = load double, double* %ang_grid, align 8
  %div47 = fdiv double %49, %50
  %call48 = call double @rint(double %div47) #6
  %conv49 = fptosi double %call48 to i32
  %mul50 = mul nsw i32 %48, %conv49
  %add51 = add nsw i32 %call46, %mul50
  %cmp52 = icmp sle i32 %45, %add51
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i32, i32* %loop, align 4
  %conv54 = sitofp i32 %51 to double
  %52 = load double, double* %ang_grid, align 8
  %mul55 = fmul double %conv54, %52
  store double %mul55, double* %ang_loop, align 8
  %53 = load double, double* %sp_cons, align 8
  %54 = load double, double* %ang_loop, align 8
  %mul56 = fmul double %53, %54
  %55 = load double, double* %ang_loop, align 8
  %call57 = call double @cos(double %55) #4
  %mul58 = fmul double %mul56, %call57
  %56 = load i32, i32* %clock_wise, align 4
  %conv59 = sitofp i32 %56 to double
  %mul60 = fmul double %mul58, %conv59
  store double %mul60, double* %lx, align 8
  %57 = load double, double* %sp_cons, align 8
  %58 = load double, double* %ang_loop, align 8
  %mul61 = fmul double %57, %58
  %59 = load double, double* %ang_loop, align 8
  %call62 = call double @sin(double %59) #4
  %mul63 = fmul double %mul61, %call62
  store double %mul63, double* %ly, align 8
  %60 = load double, double* %lx, align 8
  %61 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt64 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %61, i32 0, i32 1
  %x65 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt64, i32 0, i32 0
  %62 = load i32, i32* %x65, align 4
  %conv66 = sitofp i32 %62 to double
  %add67 = fadd double %60, %conv66
  %call68 = call double @rint(double %add67) #6
  %conv69 = fptosi double %call68 to i32
  %x70 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  store i32 %conv69, i32* %x70, align 4
  %63 = load double, double* %ly, align 8
  %64 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt71 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %64, i32 0, i32 1
  %y72 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt71, i32 0, i32 1
  %65 = load i32, i32* %y72, align 4
  %conv73 = sitofp i32 %65 to double
  %add74 = fadd double %63, %conv73
  %call75 = call double @rint(double %add74) #6
  %conv76 = fptosi double %call75 to i32
  %y77 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  store i32 %conv76, i32* %y77, align 4
  %66 = load i32, i32* %do_line, align 4
  %tobool78 = icmp ne i32 %66, 0
  br i1 %tobool78, label %if.then.79, label %if.else.94

if.then.79:                                       ; preds = %for.body
  %x80 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %67 = load i32, i32* %x80, align 4
  %x81 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %start_pnt, i32 0, i32 0
  %68 = load i32, i32* %x81, align 4
  %cmp82 = icmp eq i32 %67, %68
  br i1 %cmp82, label %land.lhs.true, label %if.end.89

land.lhs.true:                                    ; preds = %if.then.79
  %y84 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %69 = load i32, i32* %y84, align 4
  %y85 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %start_pnt, i32 0, i32 1
  %70 = load i32, i32* %y85, align 4
  %cmp86 = icmp eq i32 %69, %70
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %land.lhs.true
  br label %for.inc

if.end.89:                                        ; preds = %land.lhs.true, %if.then.79
  %x90 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %71 = load i32, i32* %x90, align 4
  %y91 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %72 = load i32, i32* %y91, align 4
  %x92 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %start_pnt, i32 0, i32 0
  %73 = load i32, i32* %x92, align 4
  %y93 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %start_pnt, i32 0, i32 1
  %74 = load i32, i32* %y93, align 4
  %75 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gfig_draw_line(i32 %71, i32 %72, i32 %73, i32 %74, %struct._cairo* %75)
  br label %if.end.95

if.else.94:                                       ; preds = %for.body
  store i32 1, i32* %do_line, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.94, %if.end.89
  %76 = bitcast %struct._GdkPoint* %start_pnt to i8*
  %77 = bitcast %struct._GdkPoint* %calc_pnt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 8, i32 4, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %if.end.95, %if.then.88
  %78 = load i32, i32* %loop, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %loop, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %if.then.2, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @d_paint_spiral(%struct._GfigObject* %obj) #0 {
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
  %sp_cons = alloca double, align 8
  %loop = alloca i32, align 4
  %last_pnt = alloca %struct._GdkPoint, align 4
  %clock_wise = alloca i32, align 4
  %lx = alloca double, align 8
  %ly = alloca double, align 8
  %calc_pnt = alloca %struct._GdkPoint, align 4
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store i32 0, i32* %seg_count, align 4
  store i32 0, i32* %i, align 4
  %0 = bitcast %struct._GdkPoint* %last_pnt to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 8, i32 4, i1 false)
  store i32 1, i32* %clock_wise, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %cmp = icmp ne %struct._GfigObject* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 175, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.d_paint_spiral, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %2, i32 0, i32 3
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %3, %struct.DobjPoints** %center_pnt, align 8
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %4, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.2

lor.lhs.false:                                    ; preds = %do.end
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %5, i32 0, i32 0
  %6 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  %tobool1 = icmp ne %struct.DobjPoints* %6, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %lor.lhs.false, %do.end
  br label %return

if.end.3:                                         ; preds = %lor.lhs.false
  %7 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %next4 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %7, i32 0, i32 0
  %8 = load %struct.DobjPoints*, %struct.DobjPoints** %next4, align 8
  store %struct.DobjPoints* %8, %struct.DobjPoints** %radius_pnt, align 8
  %9 = load %struct.DobjPoints*, %struct.DobjPoints** %radius_pnt, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %9, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt, i32 0, i32 0
  %10 = load i32, i32* %x, align 4
  %11 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt5 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %11, i32 0, i32 1
  %x6 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt5, i32 0, i32 0
  %12 = load i32, i32* %x6, align 4
  %sub = sub nsw i32 %10, %12
  %conv = trunc i32 %sub to i16
  store i16 %conv, i16* %shift_x, align 2
  %13 = load %struct.DobjPoints*, %struct.DobjPoints** %radius_pnt, align 8
  %pnt7 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %13, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt7, i32 0, i32 1
  %14 = load i32, i32* %y, align 4
  %15 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt8 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %15, i32 0, i32 1
  %y9 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt8, i32 0, i32 1
  %16 = load i32, i32* %y9, align 4
  %sub10 = sub nsw i32 %14, %16
  %conv11 = trunc i32 %sub10 to i16
  store i16 %conv11, i16* %shift_y, align 2
  %17 = load i16, i16* %shift_x, align 2
  %conv12 = sext i16 %17 to i32
  %18 = load i16, i16* %shift_x, align 2
  %conv13 = sext i16 %18 to i32
  %mul = mul nsw i32 %conv12, %conv13
  %19 = load i16, i16* %shift_y, align 2
  %conv14 = sext i16 %19 to i32
  %20 = load i16, i16* %shift_y, align 2
  %conv15 = sext i16 %20 to i32
  %mul16 = mul nsw i32 %conv14, %conv15
  %add = add nsw i32 %mul, %mul16
  %conv17 = sitofp i32 %add to double
  %call = call double @sqrt(double %conv17) #4
  store double %call, double* %radius, align 8
  %21 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %21, i32 0, i32 2
  %22 = load i32, i32* %type_data, align 4
  %23 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data18 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %23, i32 0, i32 2
  %24 = load i32, i32* %type_data18, align 4
  %call19 = call i32 @abs(i32 %24) #6
  %div = sdiv i32 %22, %call19
  store i32 %div, i32* %clock_wise, align 4
  %25 = load i16, i16* %shift_y, align 2
  %conv20 = sitofp i16 %25 to double
  %26 = load i16, i16* %shift_x, align 2
  %conv21 = sitofp i16 %26 to double
  %call22 = call double @atan2(double %conv20, double %conv21) #4
  store double %call22, double* %offset_angle, align 8
  %27 = load double, double* %offset_angle, align 8
  %cmp23 = fcmp olt double %27, 0.000000e+00
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.3
  %28 = load double, double* %offset_angle, align 8
  %add26 = fadd double %28, 0x401921FB54442D18
  store double %add26, double* %offset_angle, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.3
  %29 = load double, double* %radius, align 8
  %30 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data28 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %30, i32 0, i32 2
  %31 = load i32, i32* %type_data28, align 4
  %conv29 = sitofp i32 %31 to double
  %mul30 = fmul double %conv29, 2.000000e+00
  %mul31 = fmul double %mul30, 0x400921FB54442D18
  %32 = load double, double* %offset_angle, align 8
  %add32 = fadd double %mul31, %32
  %div33 = fdiv double %29, %add32
  store double %div33, double* %sp_cons, align 8
  store double 0x3FA1DF46A2529D39, double* %ang_grid, align 8
  %33 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data34 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %33, i32 0, i32 2
  %34 = load i32, i32* %type_data34, align 4
  %conv35 = sitofp i32 %34 to double
  %mul36 = fmul double %conv35, 1.800000e+02
  %conv37 = fptosi double %mul36 to i32
  %call38 = call i32 @abs(i32 %conv37) #6
  %35 = load i32, i32* %clock_wise, align 4
  %36 = load double, double* %offset_angle, align 8
  %37 = load double, double* %ang_grid, align 8
  %div39 = fdiv double %36, %37
  %call40 = call double @rint(double %div39) #6
  %conv41 = fptosi double %call40 to i32
  %mul42 = mul nsw i32 %35, %conv41
  %add43 = add nsw i32 %call38, %mul42
  store i32 %add43, i32* %seg_count, align 4
  %38 = load i32, i32* %seg_count, align 4
  %mul44 = mul nsw i32 2, %38
  %add45 = add nsw i32 %mul44, 3
  %conv46 = sext i32 %add45 to i64
  %call47 = call noalias i8* @g_malloc0_n(i64 %conv46, i64 8)
  %39 = bitcast i8* %call47 to double*
  store double* %39, double** %line_pnts, align 8
  store i32 0, i32* %loop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.27
  %40 = load i32, i32* %loop, align 4
  %41 = load i32, i32* %seg_count, align 4
  %cmp48 = icmp sle i32 %40, %41
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i32, i32* %loop, align 4
  %conv50 = sitofp i32 %42 to double
  %43 = load double, double* %ang_grid, align 8
  %mul51 = fmul double %conv50, %43
  store double %mul51, double* %ang_loop, align 8
  %44 = load double, double* %sp_cons, align 8
  %45 = load double, double* %ang_loop, align 8
  %mul52 = fmul double %44, %45
  %46 = load double, double* %ang_loop, align 8
  %call53 = call double @cos(double %46) #4
  %mul54 = fmul double %mul52, %call53
  %47 = load i32, i32* %clock_wise, align 4
  %conv55 = sitofp i32 %47 to double
  %mul56 = fmul double %mul54, %conv55
  store double %mul56, double* %lx, align 8
  %48 = load double, double* %sp_cons, align 8
  %49 = load double, double* %ang_loop, align 8
  %mul57 = fmul double %48, %49
  %50 = load double, double* %ang_loop, align 8
  %call58 = call double @sin(double %50) #4
  %mul59 = fmul double %mul57, %call58
  store double %mul59, double* %ly, align 8
  %51 = load double, double* %lx, align 8
  %52 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt60 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %52, i32 0, i32 1
  %x61 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt60, i32 0, i32 0
  %53 = load i32, i32* %x61, align 4
  %conv62 = sitofp i32 %53 to double
  %add63 = fadd double %51, %conv62
  %call64 = call double @rint(double %add63) #6
  %conv65 = fptosi double %call64 to i32
  %x66 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  store i32 %conv65, i32* %x66, align 4
  %54 = load double, double* %ly, align 8
  %55 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt67 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %55, i32 0, i32 1
  %y68 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt67, i32 0, i32 1
  %56 = load i32, i32* %y68, align 4
  %conv69 = sitofp i32 %56 to double
  %add70 = fadd double %54, %conv69
  %call71 = call double @rint(double %add70) #6
  %conv72 = fptosi double %call71 to i32
  %y73 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  store i32 %conv72, i32* %y73, align 4
  %57 = load i32, i32* %loop, align 4
  %tobool74 = icmp ne i32 %57, 0
  br i1 %tobool74, label %if.end.86, label %if.then.75

if.then.75:                                       ; preds = %for.body
  %x76 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %58 = load i32, i32* %x76, align 4
  %x77 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %last_pnt, i32 0, i32 0
  %59 = load i32, i32* %x77, align 4
  %cmp78 = icmp eq i32 %58, %59
  br i1 %cmp78, label %land.lhs.true, label %if.end.85

land.lhs.true:                                    ; preds = %if.then.75
  %y80 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %60 = load i32, i32* %y80, align 4
  %y81 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %last_pnt, i32 0, i32 1
  %61 = load i32, i32* %y81, align 4
  %cmp82 = icmp eq i32 %60, %61
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %land.lhs.true
  br label %for.inc

if.end.85:                                        ; preds = %land.lhs.true, %if.then.75
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %for.body
  %x87 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %62 = load i32, i32* %x87, align 4
  %conv88 = sitofp i32 %62 to double
  %63 = load i32, i32* %i, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %63 to i64
  %64 = load double*, double** %line_pnts, align 8
  %arrayidx = getelementptr inbounds double, double* %64, i64 %idxprom
  store double %conv88, double* %arrayidx, align 8
  %y89 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %65 = load i32, i32* %y89, align 4
  %conv90 = sitofp i32 %65 to double
  %66 = load i32, i32* %i, align 4
  %inc91 = add nsw i32 %66, 1
  store i32 %inc91, i32* %i, align 4
  %idxprom92 = sext i32 %66 to i64
  %67 = load double*, double** %line_pnts, align 8
  %arrayidx93 = getelementptr inbounds double, double* %67, i64 %idxprom92
  store double %conv90, double* %arrayidx93, align 8
  %68 = bitcast %struct._GdkPoint* %last_pnt to i8*
  %69 = bitcast %struct._GdkPoint* %calc_pnt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 8, i32 4, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %if.end.86, %if.then.84
  %70 = load i32, i32* %loop, align 4
  %inc94 = add nsw i32 %70, 1
  store i32 %inc94, i32* %loop, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %71 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 11), align 4
  %tobool95 = icmp ne i32 %71, 0
  br i1 %tobool95, label %if.then.96, label %if.else.99

if.then.96:                                       ; preds = %for.end
  %72 = load double*, double** %line_pnts, align 8
  %arrayidx97 = getelementptr inbounds double, double* %72, i64 0
  %73 = load i32, i32* %i, align 4
  %div98 = sdiv i32 %73, 2
  call void @scale_to_original_xy(double* %arrayidx97, i32 %div98)
  br label %if.end.102

if.else.99:                                       ; preds = %for.end
  %74 = load double*, double** %line_pnts, align 8
  %arrayidx100 = getelementptr inbounds double, double* %74, i64 0
  %75 = load i32, i32* %i, align 4
  %div101 = sdiv i32 %75, 2
  call void @scale_to_xy(double* %arrayidx100, i32 %div101)
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.99, %if.then.96
  %76 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %style = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %76, i32 0, i32 4
  %paint_type = getelementptr inbounds %struct._Style, %struct._Style* %style, i32 0, i32 13
  %77 = load i32, i32* %paint_type, align 4
  %cmp103 = icmp eq i32 %77, 1
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.end.102
  %78 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 13), align 4
  %79 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %79, i32 0, i32 3
  %80 = load i32, i32* %drawable_id, align 4
  %81 = load i32, i32* %i, align 4
  %82 = load double*, double** %line_pnts, align 8
  call void @gfig_paint(i32 %78, i32 %80, i32 %81, double* %82)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %if.end.102
  %83 = load double*, double** %line_pnts, align 8
  %84 = bitcast double* %83 to i8*
  call void @g_free(i8* %84)
  br label %return

return:                                           ; preds = %if.end.106, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GfigObject* @d_copy_spiral(%struct._GfigObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %np = alloca %struct._GfigObject*, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 257, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.d_copy_spiral, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)) #7
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
  %call = call %struct._GfigObject* @d_new_object(i32 8, i32 %4, i32 %7)
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
define internal void @d_update_spiral(%struct._GdkPoint* %pnt) #0 {
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
define void @d_spiral_start(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
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
  %call = call %struct._GfigObject* @d_new_object(i32 8, i32 %1, i32 %3)
  store %struct._GfigObject* %call, %struct._GfigObject** @obj_creating, align 8
  %4 = load i32, i32* @spiral_num_turns, align 4
  %5 = load i32, i32* @spiral_toggle, align 4
  %cmp = icmp eq i32 %5, 0
  %cond = select i1 %cmp, i32 1, i32 -1
  %mul = mul nsw i32 %4, %cond
  %6 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %type_data = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %6, i32 0, i32 2
  store i32 %mul, i32* %type_data, align 4
  ret void
}

declare %struct._GfigObject* @d_new_object(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @d_spiral_end(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
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

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @draw_sqr(%struct._GdkPoint*, i32, %struct._cairo*) #1

declare void @draw_circle(%struct._GdkPoint*, i32, %struct._cairo*) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @atan2(double, double) #2

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

; Function Attrs: nounwind readnone
declare double @rint(double) #3

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

declare void @gfig_draw_line(i32, i32, i32, i32, %struct._cairo*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare void @scale_to_original_xy(double*, i32) #1

declare void @scale_to_xy(double*, i32) #1

declare void @gfig_paint(i32, i32, i32, double*) #1

declare void @g_free(i8*) #1

declare %struct.DobjPoints* @d_copy_dobjpoints(%struct.DobjPoints*) #1

declare void @d_pnt_add_line(%struct._GfigObject*, i32, i32, i32) #1

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
