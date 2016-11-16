; ModuleID = './plug-ins/gfig/gfig-star.bc'
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
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }

@.str = private unnamed_addr constant [22 x i8] c"Star Number of Points\00", align 1
@star_num_sides = internal global i32 3, align 4
@dobj_class = external global [10 x %struct.GfigObjectClass], align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"STAR\00", align 1
@obj_creating = external global %struct._GfigObject*, align 8
@gfig_context = external global %struct.GFigContext*, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"gfig-star.c\00", align 1
@__func__.d_paint_star = private unnamed_addr constant [13 x i8] c"d_paint_star\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"obj != NULL\00", align 1
@selvals = external global %struct.SelectItVals, align 8
@selopt = external global %struct.selection_option, align 8
@__func__.d_copy_star = private unnamed_addr constant [12 x i8] c"d_copy_star\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"obj->type == STAR\00", align 1

; Function Attrs: nounwind uwtable
define void @tool_options_star(%struct._GtkWidget* %notebook) #0 {
entry:
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %sides = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* @num_sides_widget(i8* %call, i32* @star_num_sides, i32* null, i32 3, i32 200)
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
define void @d_star_object_class_init() #0 {
entry:
  %class = alloca %struct.GfigObjectClass*, align 8
  store %struct.GfigObjectClass* getelementptr inbounds ([10 x %struct.GfigObjectClass], [10 x %struct.GfigObjectClass]* @dobj_class, i32 0, i64 7), %struct.GfigObjectClass** %class, align 8
  %0 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %type = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %0, i32 0, i32 0
  store i32 7, i32* %type, align 4
  %1 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %name = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8** %name, align 8
  %2 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %drawfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %2, i32 0, i32 2
  store void (%struct._GfigObject*, %struct._cairo*)* @d_draw_star, void (%struct._GfigObject*, %struct._cairo*)** %drawfunc, align 8
  %3 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %paintfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %3, i32 0, i32 3
  store void (%struct._GfigObject*)* @d_paint_star, void (%struct._GfigObject*)** %paintfunc, align 8
  %4 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %copyfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %4, i32 0, i32 4
  store %struct._GfigObject* (%struct._GfigObject*)* @d_copy_star, %struct._GfigObject* (%struct._GfigObject*)** %copyfunc, align 8
  %5 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %update = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %5, i32 0, i32 5
  store void (%struct._GdkPoint*)* @d_update_star, void (%struct._GdkPoint*)** %update, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @d_draw_star(%struct._GfigObject* %obj, %struct._cairo* %cr) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
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
  store %struct.DobjPoints* %11, %struct.DobjPoints** %outer_radius_pnt, align 8
  %12 = load %struct.DobjPoints*, %struct.DobjPoints** %outer_radius_pnt, align 8
  %tobool1 = icmp ne %struct.DobjPoints* %12, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %13 = load %struct.DobjPoints*, %struct.DobjPoints** %outer_radius_pnt, align 8
  %next4 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %13, i32 0, i32 0
  %14 = load %struct.DobjPoints*, %struct.DobjPoints** %next4, align 8
  store %struct.DobjPoints* %14, %struct.DobjPoints** %inner_radius_pnt, align 8
  %15 = load %struct.DobjPoints*, %struct.DobjPoints** %inner_radius_pnt, align 8
  %tobool5 = icmp ne %struct.DobjPoints* %15, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %16 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %17 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %cmp8 = icmp eq %struct._GfigObject* %16, %17
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.7
  %18 = load %struct.DobjPoints*, %struct.DobjPoints** %outer_radius_pnt, align 8
  %pnt11 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %18, i32 0, i32 1
  %19 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_circle(%struct._GdkPoint* %pnt11, i32 1, %struct._cairo* %19)
  %20 = load %struct.DobjPoints*, %struct.DobjPoints** %inner_radius_pnt, align 8
  %pnt12 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %20, i32 0, i32 1
  %21 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_circle(%struct._GdkPoint* %pnt12, i32 1, %struct._cairo* %21)
  br label %if.end.21

if.else:                                          ; preds = %if.end.7
  %22 = load %struct.DobjPoints*, %struct.DobjPoints** %outer_radius_pnt, align 8
  %pnt13 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %22, i32 0, i32 1
  %23 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %24 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj14 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %24, i32 0, i32 5
  %25 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj14, align 8
  %cmp15 = icmp eq %struct._GfigObject* %23, %25
  %conv16 = zext i1 %cmp15 to i32
  %26 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_sqr(%struct._GdkPoint* %pnt13, i32 %conv16, %struct._cairo* %26)
  %27 = load %struct.DobjPoints*, %struct.DobjPoints** %inner_radius_pnt, align 8
  %pnt17 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %27, i32 0, i32 1
  %28 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %29 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj18 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %29, i32 0, i32 5
  %30 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj18, align 8
  %cmp19 = icmp eq %struct._GfigObject* %28, %30
  %conv20 = zext i1 %cmp19 to i32
  %31 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_sqr(%struct._GdkPoint* %pnt17, i32 %conv20, %struct._cairo* %31)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.10
  %32 = load %struct.DobjPoints*, %struct.DobjPoints** %outer_radius_pnt, align 8
  %pnt22 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %32, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt22, i32 0, i32 0
  %33 = load i32, i32* %x, align 4
  %34 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt23 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %34, i32 0, i32 1
  %x24 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt23, i32 0, i32 0
  %35 = load i32, i32* %x24, align 4
  %sub = sub nsw i32 %33, %35
  %conv25 = trunc i32 %sub to i16
  store i16 %conv25, i16* %shift_x, align 2
  %36 = load %struct.DobjPoints*, %struct.DobjPoints** %outer_radius_pnt, align 8
  %pnt26 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %36, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt26, i32 0, i32 1
  %37 = load i32, i32* %y, align 4
  %38 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt27 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %38, i32 0, i32 1
  %y28 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt27, i32 0, i32 1
  %39 = load i32, i32* %y28, align 4
  %sub29 = sub nsw i32 %37, %39
  %conv30 = trunc i32 %sub29 to i16
  store i16 %conv30, i16* %shift_y, align 2
  %40 = load i16, i16* %shift_x, align 2
  %conv31 = sext i16 %40 to i32
  %41 = load i16, i16* %shift_x, align 2
  %conv32 = sext i16 %41 to i32
  %mul = mul nsw i32 %conv31, %conv32
  %42 = load i16, i16* %shift_y, align 2
  %conv33 = sext i16 %42 to i32
  %43 = load i16, i16* %shift_y, align 2
  %conv34 = sext i16 %43 to i32
  %mul35 = mul nsw i32 %conv33, %conv34
  %add = add nsw i32 %mul, %mul35
  %conv36 = sitofp i32 %add to double
  %call = call double @sqrt(double %conv36) #4
  store double %call, double* %outer_radius, align 8
  %44 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %44, i32 0, i32 2
  %45 = load i32, i32* %type_data, align 4
  %conv37 = sitofp i32 %45 to double
  %mul38 = fmul double 2.000000e+00, %conv37
  %div = fdiv double 0x401921FB54442D18, %mul38
  store double %div, double* %ang_grid, align 8
  %46 = load i16, i16* %shift_y, align 2
  %conv39 = sitofp i16 %46 to double
  %47 = load i16, i16* %shift_x, align 2
  %conv40 = sitofp i16 %47 to double
  %call41 = call double @atan2(double %conv39, double %conv40) #4
  store double %call41, double* %offset_angle, align 8
  %48 = load %struct.DobjPoints*, %struct.DobjPoints** %inner_radius_pnt, align 8
  %pnt42 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %48, i32 0, i32 1
  %x43 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt42, i32 0, i32 0
  %49 = load i32, i32* %x43, align 4
  %50 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt44 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %50, i32 0, i32 1
  %x45 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt44, i32 0, i32 0
  %51 = load i32, i32* %x45, align 4
  %sub46 = sub nsw i32 %49, %51
  %conv47 = trunc i32 %sub46 to i16
  store i16 %conv47, i16* %shift_x, align 2
  %52 = load %struct.DobjPoints*, %struct.DobjPoints** %inner_radius_pnt, align 8
  %pnt48 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %52, i32 0, i32 1
  %y49 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt48, i32 0, i32 1
  %53 = load i32, i32* %y49, align 4
  %54 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt50 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %54, i32 0, i32 1
  %y51 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt50, i32 0, i32 1
  %55 = load i32, i32* %y51, align 4
  %sub52 = sub nsw i32 %53, %55
  %conv53 = trunc i32 %sub52 to i16
  store i16 %conv53, i16* %shift_y, align 2
  %56 = load i16, i16* %shift_x, align 2
  %conv54 = sext i16 %56 to i32
  %57 = load i16, i16* %shift_x, align 2
  %conv55 = sext i16 %57 to i32
  %mul56 = mul nsw i32 %conv54, %conv55
  %58 = load i16, i16* %shift_y, align 2
  %conv57 = sext i16 %58 to i32
  %59 = load i16, i16* %shift_y, align 2
  %conv58 = sext i16 %59 to i32
  %mul59 = mul nsw i32 %conv57, %conv58
  %add60 = add nsw i32 %mul56, %mul59
  %conv61 = sitofp i32 %add60 to double
  %call62 = call double @sqrt(double %conv61) #4
  store double %call62, double* %inner_radius, align 8
  store i32 0, i32* %loop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.21
  %60 = load i32, i32* %loop, align 4
  %61 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data63 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %61, i32 0, i32 2
  %62 = load i32, i32* %type_data63, align 4
  %mul64 = mul nsw i32 2, %62
  %cmp65 = icmp slt i32 %60, %mul64
  br i1 %cmp65, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %63 = load i32, i32* %loop, align 4
  %conv67 = sitofp i32 %63 to double
  %64 = load double, double* %ang_grid, align 8
  %mul68 = fmul double %conv67, %64
  %65 = load double, double* %offset_angle, align 8
  %add69 = fadd double %mul68, %65
  store double %add69, double* %ang_loop, align 8
  %66 = load i32, i32* %loop, align 4
  %rem = srem i32 %66, 2
  %tobool70 = icmp ne i32 %rem, 0
  br i1 %tobool70, label %if.then.71, label %if.else.76

if.then.71:                                       ; preds = %for.body
  %67 = load double, double* %inner_radius, align 8
  %68 = load double, double* %ang_loop, align 8
  %call72 = call double @cos(double %68) #4
  %mul73 = fmul double %67, %call72
  store double %mul73, double* %lx, align 8
  %69 = load double, double* %inner_radius, align 8
  %70 = load double, double* %ang_loop, align 8
  %call74 = call double @sin(double %70) #4
  %mul75 = fmul double %69, %call74
  store double %mul75, double* %ly, align 8
  br label %if.end.81

if.else.76:                                       ; preds = %for.body
  %71 = load double, double* %outer_radius, align 8
  %72 = load double, double* %ang_loop, align 8
  %call77 = call double @cos(double %72) #4
  %mul78 = fmul double %71, %call77
  store double %mul78, double* %lx, align 8
  %73 = load double, double* %outer_radius, align 8
  %74 = load double, double* %ang_loop, align 8
  %call79 = call double @sin(double %74) #4
  %mul80 = fmul double %73, %call79
  store double %mul80, double* %ly, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.76, %if.then.71
  %75 = load double, double* %lx, align 8
  %76 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt82 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %76, i32 0, i32 1
  %x83 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt82, i32 0, i32 0
  %77 = load i32, i32* %x83, align 4
  %conv84 = sitofp i32 %77 to double
  %add85 = fadd double %75, %conv84
  %call86 = call double @rint(double %add85) #6
  %conv87 = fptosi double %call86 to i32
  %x88 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  store i32 %conv87, i32* %x88, align 4
  %78 = load double, double* %ly, align 8
  %79 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt89 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %79, i32 0, i32 1
  %y90 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt89, i32 0, i32 1
  %80 = load i32, i32* %y90, align 4
  %conv91 = sitofp i32 %80 to double
  %add92 = fadd double %78, %conv91
  %call93 = call double @rint(double %add92) #6
  %conv94 = fptosi double %call93 to i32
  %y95 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  store i32 %conv94, i32* %y95, align 4
  %81 = load i32, i32* %do_line, align 4
  %tobool96 = icmp ne i32 %81, 0
  br i1 %tobool96, label %if.then.97, label %if.else.112

if.then.97:                                       ; preds = %if.end.81
  %x98 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %82 = load i32, i32* %x98, align 4
  %x99 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %start_pnt, i32 0, i32 0
  %83 = load i32, i32* %x99, align 4
  %cmp100 = icmp eq i32 %82, %83
  br i1 %cmp100, label %land.lhs.true, label %if.end.107

land.lhs.true:                                    ; preds = %if.then.97
  %y102 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %84 = load i32, i32* %y102, align 4
  %y103 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %start_pnt, i32 0, i32 1
  %85 = load i32, i32* %y103, align 4
  %cmp104 = icmp eq i32 %84, %85
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %land.lhs.true
  br label %for.inc

if.end.107:                                       ; preds = %land.lhs.true, %if.then.97
  %x108 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %86 = load i32, i32* %x108, align 4
  %y109 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %87 = load i32, i32* %y109, align 4
  %x110 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %start_pnt, i32 0, i32 0
  %88 = load i32, i32* %x110, align 4
  %y111 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %start_pnt, i32 0, i32 1
  %89 = load i32, i32* %y111, align 4
  %90 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gfig_draw_line(i32 %86, i32 %87, i32 %88, i32 %89, %struct._cairo* %90)
  br label %if.end.113

if.else.112:                                      ; preds = %if.end.81
  store i32 1, i32* %do_line, align 4
  %91 = bitcast %struct._GdkPoint* %first_pnt to i8*
  %92 = bitcast %struct._GdkPoint* %calc_pnt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %92, i64 8, i32 4, i1 false)
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.112, %if.end.107
  %93 = bitcast %struct._GdkPoint* %start_pnt to i8*
  %94 = bitcast %struct._GdkPoint* %calc_pnt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* %94, i64 8, i32 4, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %if.end.113, %if.then.106
  %95 = load i32, i32* %loop, align 4
  %inc = add nsw i32 %95, 1
  store i32 %inc, i32* %loop, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %x114 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %first_pnt, i32 0, i32 0
  %96 = load i32, i32* %x114, align 4
  %y115 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %first_pnt, i32 0, i32 1
  %97 = load i32, i32* %y115, align 4
  %x116 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %start_pnt, i32 0, i32 0
  %98 = load i32, i32* %x116, align 4
  %y117 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %start_pnt, i32 0, i32 1
  %99 = load i32, i32* %y117, align 4
  %100 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gfig_draw_line(i32 %96, i32 %97, i32 %98, i32 %99, %struct._cairo* %100)
  br label %return

return:                                           ; preds = %for.end, %if.then.6, %if.then.2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @d_paint_star(%struct._GfigObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %line_pnts = alloca double*, align 8
  %seg_count = alloca i32, align 4
  %i = alloca i32, align 4
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
  %min_max = alloca double*, align 8
  %lx = alloca double, align 8
  %ly = alloca double, align 8
  %calc_pnt = alloca %struct._GdkPoint, align 4
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store i32 0, i32* %seg_count, align 4
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
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 194, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.d_paint_star, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %3, i32 0, i32 2
  %4 = load i32, i32* %type_data, align 4
  %mul = mul nsw i32 2, %4
  %add = add nsw i32 %mul, 1
  store i32 %add, i32* %seg_count, align 4
  %5 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %5, i32 0, i32 3
  %6 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %6, %struct.DobjPoints** %center_pnt, align 8
  %7 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %7, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.2

lor.lhs.false:                                    ; preds = %do.end
  %8 = load i32, i32* %seg_count, align 4
  %tobool1 = icmp ne i32 %8, 0
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %lor.lhs.false, %do.end
  br label %return

if.end.3:                                         ; preds = %lor.lhs.false
  %9 = load i32, i32* %seg_count, align 4
  %mul4 = mul nsw i32 2, %9
  %add5 = add nsw i32 %mul4, 1
  %conv = sext i32 %add5 to i64
  %call = call noalias i8* @g_malloc0_n(i64 %conv, i64 8)
  %10 = bitcast i8* %call to double*
  store double* %10, double** %line_pnts, align 8
  %call6 = call noalias i8* @g_malloc_n(i64 4, i64 8)
  %11 = bitcast i8* %call6 to double*
  store double* %11, double** %min_max, align 8
  %12 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %12, i32 0, i32 0
  %13 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %13, %struct.DobjPoints** %outer_radius_pnt, align 8
  %14 = load %struct.DobjPoints*, %struct.DobjPoints** %outer_radius_pnt, align 8
  %tobool7 = icmp ne %struct.DobjPoints* %14, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.3
  %15 = load double*, double** %line_pnts, align 8
  %16 = bitcast double* %15 to i8*
  call void @g_free(i8* %16)
  %17 = load double*, double** %min_max, align 8
  %18 = bitcast double* %17 to i8*
  call void @g_free(i8* %18)
  br label %return

if.end.9:                                         ; preds = %if.end.3
  %19 = load %struct.DobjPoints*, %struct.DobjPoints** %outer_radius_pnt, align 8
  %next10 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %19, i32 0, i32 0
  %20 = load %struct.DobjPoints*, %struct.DobjPoints** %next10, align 8
  store %struct.DobjPoints* %20, %struct.DobjPoints** %inner_radius_pnt, align 8
  %21 = load %struct.DobjPoints*, %struct.DobjPoints** %inner_radius_pnt, align 8
  %tobool11 = icmp ne %struct.DobjPoints* %21, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  %22 = load double*, double** %line_pnts, align 8
  %23 = bitcast double* %22 to i8*
  call void @g_free(i8* %23)
  %24 = load double*, double** %min_max, align 8
  %25 = bitcast double* %24 to i8*
  call void @g_free(i8* %25)
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %26 = load %struct.DobjPoints*, %struct.DobjPoints** %outer_radius_pnt, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %26, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt, i32 0, i32 0
  %27 = load i32, i32* %x, align 4
  %28 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt14 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %28, i32 0, i32 1
  %x15 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt14, i32 0, i32 0
  %29 = load i32, i32* %x15, align 4
  %sub = sub nsw i32 %27, %29
  %conv16 = trunc i32 %sub to i16
  store i16 %conv16, i16* %shift_x, align 2
  %30 = load %struct.DobjPoints*, %struct.DobjPoints** %outer_radius_pnt, align 8
  %pnt17 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %30, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt17, i32 0, i32 1
  %31 = load i32, i32* %y, align 4
  %32 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt18 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %32, i32 0, i32 1
  %y19 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt18, i32 0, i32 1
  %33 = load i32, i32* %y19, align 4
  %sub20 = sub nsw i32 %31, %33
  %conv21 = trunc i32 %sub20 to i16
  store i16 %conv21, i16* %shift_y, align 2
  %34 = load i16, i16* %shift_x, align 2
  %conv22 = sext i16 %34 to i32
  %35 = load i16, i16* %shift_x, align 2
  %conv23 = sext i16 %35 to i32
  %mul24 = mul nsw i32 %conv22, %conv23
  %36 = load i16, i16* %shift_y, align 2
  %conv25 = sext i16 %36 to i32
  %37 = load i16, i16* %shift_y, align 2
  %conv26 = sext i16 %37 to i32
  %mul27 = mul nsw i32 %conv25, %conv26
  %add28 = add nsw i32 %mul24, %mul27
  %conv29 = sitofp i32 %add28 to double
  %call30 = call double @sqrt(double %conv29) #4
  store double %call30, double* %outer_radius, align 8
  %38 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data31 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %38, i32 0, i32 2
  %39 = load i32, i32* %type_data31, align 4
  %conv32 = sitofp i32 %39 to double
  %mul33 = fmul double 2.000000e+00, %conv32
  %div = fdiv double 0x401921FB54442D18, %mul33
  store double %div, double* %ang_grid, align 8
  %40 = load i16, i16* %shift_y, align 2
  %conv34 = sitofp i16 %40 to double
  %41 = load i16, i16* %shift_x, align 2
  %conv35 = sitofp i16 %41 to double
  %call36 = call double @atan2(double %conv34, double %conv35) #4
  store double %call36, double* %offset_angle, align 8
  %42 = load %struct.DobjPoints*, %struct.DobjPoints** %inner_radius_pnt, align 8
  %pnt37 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %42, i32 0, i32 1
  %x38 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt37, i32 0, i32 0
  %43 = load i32, i32* %x38, align 4
  %44 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt39 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %44, i32 0, i32 1
  %x40 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt39, i32 0, i32 0
  %45 = load i32, i32* %x40, align 4
  %sub41 = sub nsw i32 %43, %45
  %conv42 = trunc i32 %sub41 to i16
  store i16 %conv42, i16* %shift_x, align 2
  %46 = load %struct.DobjPoints*, %struct.DobjPoints** %inner_radius_pnt, align 8
  %pnt43 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %46, i32 0, i32 1
  %y44 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt43, i32 0, i32 1
  %47 = load i32, i32* %y44, align 4
  %48 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt45 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %48, i32 0, i32 1
  %y46 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt45, i32 0, i32 1
  %49 = load i32, i32* %y46, align 4
  %sub47 = sub nsw i32 %47, %49
  %conv48 = trunc i32 %sub47 to i16
  store i16 %conv48, i16* %shift_y, align 2
  %50 = load i16, i16* %shift_x, align 2
  %conv49 = sext i16 %50 to i32
  %51 = load i16, i16* %shift_x, align 2
  %conv50 = sext i16 %51 to i32
  %mul51 = mul nsw i32 %conv49, %conv50
  %52 = load i16, i16* %shift_y, align 2
  %conv52 = sext i16 %52 to i32
  %53 = load i16, i16* %shift_y, align 2
  %conv53 = sext i16 %53 to i32
  %mul54 = mul nsw i32 %conv52, %conv53
  %add55 = add nsw i32 %mul51, %mul54
  %conv56 = sitofp i32 %add55 to double
  %call57 = call double @sqrt(double %conv56) #4
  store double %call57, double* %inner_radius, align 8
  store i32 0, i32* %loop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %54 = load i32, i32* %loop, align 4
  %55 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type_data58 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %55, i32 0, i32 2
  %56 = load i32, i32* %type_data58, align 4
  %mul59 = mul nsw i32 2, %56
  %cmp60 = icmp slt i32 %54, %mul59
  br i1 %cmp60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load i32, i32* %loop, align 4
  %conv62 = sitofp i32 %57 to double
  %58 = load double, double* %ang_grid, align 8
  %mul63 = fmul double %conv62, %58
  %59 = load double, double* %offset_angle, align 8
  %add64 = fadd double %mul63, %59
  store double %add64, double* %ang_loop, align 8
  %60 = load i32, i32* %loop, align 4
  %rem = srem i32 %60, 2
  %tobool65 = icmp ne i32 %rem, 0
  br i1 %tobool65, label %if.then.66, label %if.else.71

if.then.66:                                       ; preds = %for.body
  %61 = load double, double* %inner_radius, align 8
  %62 = load double, double* %ang_loop, align 8
  %call67 = call double @cos(double %62) #4
  %mul68 = fmul double %61, %call67
  store double %mul68, double* %lx, align 8
  %63 = load double, double* %inner_radius, align 8
  %64 = load double, double* %ang_loop, align 8
  %call69 = call double @sin(double %64) #4
  %mul70 = fmul double %63, %call69
  store double %mul70, double* %ly, align 8
  br label %if.end.76

if.else.71:                                       ; preds = %for.body
  %65 = load double, double* %outer_radius, align 8
  %66 = load double, double* %ang_loop, align 8
  %call72 = call double @cos(double %66) #4
  %mul73 = fmul double %65, %call72
  store double %mul73, double* %lx, align 8
  %67 = load double, double* %outer_radius, align 8
  %68 = load double, double* %ang_loop, align 8
  %call74 = call double @sin(double %68) #4
  %mul75 = fmul double %67, %call74
  store double %mul75, double* %ly, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.71, %if.then.66
  %69 = load double, double* %lx, align 8
  %70 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt77 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %70, i32 0, i32 1
  %x78 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt77, i32 0, i32 0
  %71 = load i32, i32* %x78, align 4
  %conv79 = sitofp i32 %71 to double
  %add80 = fadd double %69, %conv79
  %call81 = call double @rint(double %add80) #6
  %conv82 = fptosi double %call81 to i32
  %x83 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  store i32 %conv82, i32* %x83, align 4
  %72 = load double, double* %ly, align 8
  %73 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt84 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %73, i32 0, i32 1
  %y85 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt84, i32 0, i32 1
  %74 = load i32, i32* %y85, align 4
  %conv86 = sitofp i32 %74 to double
  %add87 = fadd double %72, %conv86
  %call88 = call double @rint(double %add87) #6
  %conv89 = fptosi double %call88 to i32
  %y90 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  store i32 %conv89, i32* %y90, align 4
  %75 = load i32, i32* %first, align 4
  %tobool91 = icmp ne i32 %75, 0
  br i1 %tobool91, label %if.end.103, label %if.then.92

if.then.92:                                       ; preds = %if.end.76
  %x93 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %76 = load i32, i32* %x93, align 4
  %x94 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %last_pnt, i32 0, i32 0
  %77 = load i32, i32* %x94, align 4
  %cmp95 = icmp eq i32 %76, %77
  br i1 %cmp95, label %land.lhs.true, label %if.end.102

land.lhs.true:                                    ; preds = %if.then.92
  %y97 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %78 = load i32, i32* %y97, align 4
  %y98 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %last_pnt, i32 0, i32 1
  %79 = load i32, i32* %y98, align 4
  %cmp99 = icmp eq i32 %78, %79
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %land.lhs.true
  br label %for.inc

if.end.102:                                       ; preds = %land.lhs.true, %if.then.92
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.76
  %x104 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %80 = load i32, i32* %x104, align 4
  %conv105 = sitofp i32 %80 to double
  %81 = load i32, i32* %i, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %81 to i64
  %82 = load double*, double** %line_pnts, align 8
  %arrayidx = getelementptr inbounds double, double* %82, i64 %idxprom
  store double %conv105, double* %arrayidx, align 8
  %y106 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %83 = load i32, i32* %y106, align 4
  %conv107 = sitofp i32 %83 to double
  %84 = load i32, i32* %i, align 4
  %inc108 = add nsw i32 %84, 1
  store i32 %inc108, i32* %i, align 4
  %idxprom109 = sext i32 %84 to i64
  %85 = load double*, double** %line_pnts, align 8
  %arrayidx110 = getelementptr inbounds double, double* %85, i64 %idxprom109
  store double %conv107, double* %arrayidx110, align 8
  %86 = bitcast %struct._GdkPoint* %last_pnt to i8*
  %87 = bitcast %struct._GdkPoint* %calc_pnt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 8, i32 4, i1 false)
  %88 = load i32, i32* %first, align 4
  %tobool111 = icmp ne i32 %88, 0
  br i1 %tobool111, label %if.then.112, label %if.else.121

if.then.112:                                      ; preds = %if.end.103
  %89 = bitcast %struct._GdkPoint* %first_pnt to i8*
  %90 = bitcast %struct._GdkPoint* %calc_pnt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %90, i64 8, i32 4, i1 false)
  store i32 0, i32* %first, align 4
  %x113 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %91 = load i32, i32* %x113, align 4
  %conv114 = sitofp i32 %91 to double
  %92 = load double*, double** %min_max, align 8
  %arrayidx115 = getelementptr inbounds double, double* %92, i64 2
  store double %conv114, double* %arrayidx115, align 8
  %93 = load double*, double** %min_max, align 8
  %arrayidx116 = getelementptr inbounds double, double* %93, i64 0
  store double %conv114, double* %arrayidx116, align 8
  %y117 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %94 = load i32, i32* %y117, align 4
  %conv118 = sitofp i32 %94 to double
  %95 = load double*, double** %min_max, align 8
  %arrayidx119 = getelementptr inbounds double, double* %95, i64 3
  store double %conv118, double* %arrayidx119, align 8
  %96 = load double*, double** %min_max, align 8
  %arrayidx120 = getelementptr inbounds double, double* %96, i64 1
  store double %conv118, double* %arrayidx120, align 8
  br label %if.end.170

if.else.121:                                      ; preds = %if.end.103
  %97 = load double*, double** %min_max, align 8
  %arrayidx122 = getelementptr inbounds double, double* %97, i64 0
  %98 = load double, double* %arrayidx122, align 8
  %x123 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %99 = load i32, i32* %x123, align 4
  %conv124 = sitofp i32 %99 to double
  %cmp125 = fcmp olt double %98, %conv124
  br i1 %cmp125, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.121
  %100 = load double*, double** %min_max, align 8
  %arrayidx127 = getelementptr inbounds double, double* %100, i64 0
  %101 = load double, double* %arrayidx127, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else.121
  %x128 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %102 = load i32, i32* %x128, align 4
  %conv129 = sitofp i32 %102 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %101, %cond.true ], [ %conv129, %cond.false ]
  %103 = load double*, double** %min_max, align 8
  %arrayidx130 = getelementptr inbounds double, double* %103, i64 0
  store double %cond, double* %arrayidx130, align 8
  %104 = load double*, double** %min_max, align 8
  %arrayidx131 = getelementptr inbounds double, double* %104, i64 1
  %105 = load double, double* %arrayidx131, align 8
  %y132 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %106 = load i32, i32* %y132, align 4
  %conv133 = sitofp i32 %106 to double
  %cmp134 = fcmp olt double %105, %conv133
  br i1 %cmp134, label %cond.true.136, label %cond.false.138

cond.true.136:                                    ; preds = %cond.end
  %107 = load double*, double** %min_max, align 8
  %arrayidx137 = getelementptr inbounds double, double* %107, i64 1
  %108 = load double, double* %arrayidx137, align 8
  br label %cond.end.141

cond.false.138:                                   ; preds = %cond.end
  %y139 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %109 = load i32, i32* %y139, align 4
  %conv140 = sitofp i32 %109 to double
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.138, %cond.true.136
  %cond142 = phi double [ %108, %cond.true.136 ], [ %conv140, %cond.false.138 ]
  %110 = load double*, double** %min_max, align 8
  %arrayidx143 = getelementptr inbounds double, double* %110, i64 1
  store double %cond142, double* %arrayidx143, align 8
  %111 = load double*, double** %min_max, align 8
  %arrayidx144 = getelementptr inbounds double, double* %111, i64 2
  %112 = load double, double* %arrayidx144, align 8
  %x145 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %113 = load i32, i32* %x145, align 4
  %conv146 = sitofp i32 %113 to double
  %cmp147 = fcmp ogt double %112, %conv146
  br i1 %cmp147, label %cond.true.149, label %cond.false.151

cond.true.149:                                    ; preds = %cond.end.141
  %114 = load double*, double** %min_max, align 8
  %arrayidx150 = getelementptr inbounds double, double* %114, i64 2
  %115 = load double, double* %arrayidx150, align 8
  br label %cond.end.154

cond.false.151:                                   ; preds = %cond.end.141
  %x152 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 0
  %116 = load i32, i32* %x152, align 4
  %conv153 = sitofp i32 %116 to double
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.false.151, %cond.true.149
  %cond155 = phi double [ %115, %cond.true.149 ], [ %conv153, %cond.false.151 ]
  %117 = load double*, double** %min_max, align 8
  %arrayidx156 = getelementptr inbounds double, double* %117, i64 2
  store double %cond155, double* %arrayidx156, align 8
  %118 = load double*, double** %min_max, align 8
  %arrayidx157 = getelementptr inbounds double, double* %118, i64 3
  %119 = load double, double* %arrayidx157, align 8
  %y158 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %120 = load i32, i32* %y158, align 4
  %conv159 = sitofp i32 %120 to double
  %cmp160 = fcmp ogt double %119, %conv159
  br i1 %cmp160, label %cond.true.162, label %cond.false.164

cond.true.162:                                    ; preds = %cond.end.154
  %121 = load double*, double** %min_max, align 8
  %arrayidx163 = getelementptr inbounds double, double* %121, i64 3
  %122 = load double, double* %arrayidx163, align 8
  br label %cond.end.167

cond.false.164:                                   ; preds = %cond.end.154
  %y165 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %calc_pnt, i32 0, i32 1
  %123 = load i32, i32* %y165, align 4
  %conv166 = sitofp i32 %123 to double
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.false.164, %cond.true.162
  %cond168 = phi double [ %122, %cond.true.162 ], [ %conv166, %cond.false.164 ]
  %124 = load double*, double** %min_max, align 8
  %arrayidx169 = getelementptr inbounds double, double* %124, i64 3
  store double %cond168, double* %arrayidx169, align 8
  br label %if.end.170

if.end.170:                                       ; preds = %cond.end.167, %if.then.112
  br label %for.inc

for.inc:                                          ; preds = %if.end.170, %if.then.101
  %125 = load i32, i32* %loop, align 4
  %inc171 = add nsw i32 %125, 1
  store i32 %inc171, i32* %loop, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %x172 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %first_pnt, i32 0, i32 0
  %126 = load i32, i32* %x172, align 4
  %conv173 = sitofp i32 %126 to double
  %127 = load i32, i32* %i, align 4
  %inc174 = add nsw i32 %127, 1
  store i32 %inc174, i32* %i, align 4
  %idxprom175 = sext i32 %127 to i64
  %128 = load double*, double** %line_pnts, align 8
  %arrayidx176 = getelementptr inbounds double, double* %128, i64 %idxprom175
  store double %conv173, double* %arrayidx176, align 8
  %y177 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %first_pnt, i32 0, i32 1
  %129 = load i32, i32* %y177, align 4
  %conv178 = sitofp i32 %129 to double
  %130 = load i32, i32* %i, align 4
  %inc179 = add nsw i32 %130, 1
  store i32 %inc179, i32* %i, align 4
  %idxprom180 = sext i32 %130 to i64
  %131 = load double*, double** %line_pnts, align 8
  %arrayidx181 = getelementptr inbounds double, double* %131, i64 %idxprom180
  store double %conv178, double* %arrayidx181, align 8
  %132 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 11), align 4
  %tobool182 = icmp ne i32 %132, 0
  br i1 %tobool182, label %if.then.183, label %if.else.186

if.then.183:                                      ; preds = %for.end
  %133 = load double*, double** %line_pnts, align 8
  %arrayidx184 = getelementptr inbounds double, double* %133, i64 0
  %134 = load i32, i32* %i, align 4
  %div185 = sdiv i32 %134, 2
  call void @scale_to_original_xy(double* %arrayidx184, i32 %div185)
  %135 = load double*, double** %min_max, align 8
  call void @scale_to_original_xy(double* %135, i32 2)
  br label %if.end.189

if.else.186:                                      ; preds = %for.end
  %136 = load double*, double** %line_pnts, align 8
  %arrayidx187 = getelementptr inbounds double, double* %136, i64 0
  %137 = load i32, i32* %i, align 4
  %div188 = sdiv i32 %137, 2
  call void @scale_to_xy(double* %arrayidx187, i32 %div188)
  %138 = load double*, double** %min_max, align 8
  call void @scale_to_xy(double* %138, i32 2)
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.186, %if.then.183
  %call190 = call %struct._Style* @gfig_context_get_current_style()
  %fill_type = getelementptr inbounds %struct._Style, %struct._Style* %call190, i32 0, i32 9
  %139 = load i32, i32* %fill_type, align 4
  %cmp191 = icmp ne i32 %139, 0
  br i1 %cmp191, label %if.then.193, label %if.end.206

if.then.193:                                      ; preds = %if.end.189
  %call194 = call i32 @gimp_context_push()
  %140 = load i32, i32* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 1), align 4
  %call195 = call i32 @gimp_context_set_antialias(i32 %140)
  %141 = load i32, i32* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 2), align 4
  %call196 = call i32 @gimp_context_set_feather(i32 %141)
  %142 = load double, double* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 3), align 8
  %143 = load double, double* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 3), align 8
  %call197 = call i32 @gimp_context_set_feather_radius(double %142, double %143)
  %144 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %image_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %144, i32 0, i32 2
  %145 = load i32, i32* %image_id, align 4
  %146 = load i32, i32* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 0), align 4
  %147 = load i32, i32* %i, align 4
  %148 = load double*, double** %line_pnts, align 8
  %call198 = call i32 @gimp_image_select_polygon(i32 %145, i32 %146, i32 %147, double* %148)
  %call199 = call i32 @gimp_context_pop()
  %149 = load double*, double** %min_max, align 8
  %arrayidx200 = getelementptr inbounds double, double* %149, i64 0
  %150 = load double, double* %arrayidx200, align 8
  %151 = load double*, double** %min_max, align 8
  %arrayidx201 = getelementptr inbounds double, double* %151, i64 1
  %152 = load double, double* %arrayidx201, align 8
  %153 = load double*, double** %min_max, align 8
  %arrayidx202 = getelementptr inbounds double, double* %153, i64 2
  %154 = load double, double* %arrayidx202, align 8
  %155 = load double*, double** %min_max, align 8
  %arrayidx203 = getelementptr inbounds double, double* %155, i64 3
  %156 = load double, double* %arrayidx203, align 8
  call void @paint_layer_fill(double %150, double %152, double %154, double %156)
  %157 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %image_id204 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %157, i32 0, i32 2
  %158 = load i32, i32* %image_id204, align 4
  %call205 = call i32 @gimp_selection_none(i32 %158)
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.193, %if.end.189
  %159 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %style = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %159, i32 0, i32 4
  %paint_type = getelementptr inbounds %struct._Style, %struct._Style* %style, i32 0, i32 13
  %160 = load i32, i32* %paint_type, align 4
  %cmp207 = icmp eq i32 %160, 1
  br i1 %cmp207, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %if.end.206
  %161 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 13), align 4
  %162 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %162, i32 0, i32 3
  %163 = load i32, i32* %drawable_id, align 4
  %164 = load i32, i32* %i, align 4
  %165 = load double*, double** %line_pnts, align 8
  call void @gfig_paint(i32 %161, i32 %163, i32 %164, double* %165)
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.209, %if.end.206
  %166 = load double*, double** %line_pnts, align 8
  %167 = bitcast double* %166 to i8*
  call void @g_free(i8* %167)
  %168 = load double*, double** %min_max, align 8
  %169 = bitcast double* %168 to i8*
  call void @g_free(i8* %169)
  br label %return

return:                                           ; preds = %if.end.210, %if.then.12, %if.then.8, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GfigObject* @d_copy_star(%struct._GfigObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %np = alloca %struct._GfigObject*, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 339, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.d_copy_star, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)) #7
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
  %call = call %struct._GfigObject* @d_new_object(i32 7, i32 %4, i32 %7)
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
define internal void @d_update_star(%struct._GdkPoint* %pnt) #0 {
entry:
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  %center_pnt = alloca %struct.DobjPoints*, align 8
  %inner_pnt = alloca %struct.DobjPoints*, align 8
  %outer_pnt = alloca %struct.DobjPoints*, align 8
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  %0 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 3
  %1 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %1, %struct.DobjPoints** %center_pnt, align 8
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.37

if.end:                                           ; preds = %entry
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %3, i32 0, i32 0
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %4, %struct.DobjPoints** %outer_pnt, align 8
  %tobool1 = icmp ne %struct.DobjPoints* %4, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %outer_pnt, align 8
  %next3 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %5, i32 0, i32 0
  %6 = load %struct.DobjPoints*, %struct.DobjPoints** %next3, align 8
  store %struct.DobjPoints* %6, %struct.DobjPoints** %inner_pnt, align 8
  %7 = load %struct.DobjPoints*, %struct.DobjPoints** %outer_pnt, align 8
  %pnt4 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %7, i32 0, i32 1
  %8 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %9 = bitcast %struct._GdkPoint* %pnt4 to i8*
  %10 = bitcast %struct._GdkPoint* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 4, i1 false)
  %11 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %11, i32 0, i32 0
  %12 = load i32, i32* %x, align 4
  %13 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt5 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %13, i32 0, i32 1
  %x6 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt5, i32 0, i32 0
  %14 = load i32, i32* %x6, align 4
  %15 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %x7 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %15, i32 0, i32 0
  %16 = load i32, i32* %x7, align 4
  %sub = sub nsw i32 %14, %16
  %mul = mul nsw i32 2, %sub
  %div = sdiv i32 %mul, 3
  %add = add nsw i32 %12, %div
  %17 = load %struct.DobjPoints*, %struct.DobjPoints** %inner_pnt, align 8
  %pnt8 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %17, i32 0, i32 1
  %x9 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt8, i32 0, i32 0
  store i32 %add, i32* %x9, align 4
  %18 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %18, i32 0, i32 1
  %19 = load i32, i32* %y, align 4
  %20 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt10 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %20, i32 0, i32 1
  %y11 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt10, i32 0, i32 1
  %21 = load i32, i32* %y11, align 4
  %22 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %y12 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %22, i32 0, i32 1
  %23 = load i32, i32* %y12, align 4
  %sub13 = sub nsw i32 %21, %23
  %mul14 = mul nsw i32 2, %sub13
  %div15 = sdiv i32 %mul14, 3
  %add16 = add nsw i32 %19, %div15
  %24 = load %struct.DobjPoints*, %struct.DobjPoints** %inner_pnt, align 8
  %pnt17 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %24, i32 0, i32 1
  %y18 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt17, i32 0, i32 1
  store i32 %add16, i32* %y18, align 4
  br label %if.end.37

if.else:                                          ; preds = %if.end
  %25 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %26 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %x19 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %26, i32 0, i32 0
  %27 = load i32, i32* %x19, align 4
  %28 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %y20 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %28, i32 0, i32 1
  %29 = load i32, i32* %y20, align 4
  call void @d_pnt_add_line(%struct._GfigObject* %25, i32 %27, i32 %29, i32 -1)
  %30 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %31 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %x21 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %31, i32 0, i32 0
  %32 = load i32, i32* %x21, align 4
  %33 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt22 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %33, i32 0, i32 1
  %x23 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt22, i32 0, i32 0
  %34 = load i32, i32* %x23, align 4
  %35 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %x24 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %35, i32 0, i32 0
  %36 = load i32, i32* %x24, align 4
  %sub25 = sub nsw i32 %34, %36
  %mul26 = mul nsw i32 2, %sub25
  %div27 = sdiv i32 %mul26, 3
  %add28 = add nsw i32 %32, %div27
  %37 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %y29 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %37, i32 0, i32 1
  %38 = load i32, i32* %y29, align 4
  %39 = load %struct.DobjPoints*, %struct.DobjPoints** %center_pnt, align 8
  %pnt30 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %39, i32 0, i32 1
  %y31 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt30, i32 0, i32 1
  %40 = load i32, i32* %y31, align 4
  %41 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %y32 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %41, i32 0, i32 1
  %42 = load i32, i32* %y32, align 4
  %sub33 = sub nsw i32 %40, %42
  %mul34 = mul nsw i32 2, %sub33
  %div35 = sdiv i32 %mul34, 3
  %add36 = add nsw i32 %38, %div35
  call void @d_pnt_add_line(%struct._GfigObject* %30, i32 %add28, i32 %add36, i32 -1)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then, %if.else, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define void @d_star_start(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
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
  %call = call %struct._GfigObject* @d_new_object(i32 7, i32 %1, i32 %3)
  store %struct._GfigObject* %call, %struct._GfigObject** @obj_creating, align 8
  %4 = load i32, i32* @star_num_sides, align 4
  %5 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %type_data = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %5, i32 0, i32 2
  store i32 %4, i32* %type_data, align 4
  ret void
}

declare %struct._GfigObject* @d_new_object(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @d_star_end(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
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

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind readnone
declare double @rint(double) #3

declare void @gfig_draw_line(i32, i32, i32, i32, %struct._cairo*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @g_free(i8*) #1

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
