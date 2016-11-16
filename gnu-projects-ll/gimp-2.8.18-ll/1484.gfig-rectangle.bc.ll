; ModuleID = './plug-ins/gfig/gfig-rectangle.bc'
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
@.str = private unnamed_addr constant [10 x i8] c"RECTANGLE\00", align 1
@obj_creating = external global %struct._GfigObject*, align 8
@gfig_context = external global %struct.GFigContext*, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"gfig-rectangle.c\00", align 1
@__func__.d_paint_rectangle = private unnamed_addr constant [18 x i8] c"d_paint_rectangle\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"obj != NULL\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Internal error - rectangle no second pnt\00", align 1
@selvals = external global %struct.SelectItVals, align 8
@selopt = external global %struct.selection_option, align 8
@__func__.d_copy_rectangle = private unnamed_addr constant [17 x i8] c"d_copy_rectangle\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"obj->type == RECTANGLE\00", align 1

; Function Attrs: nounwind uwtable
define void @d_rectangle_object_class_init() #0 {
entry:
  %class = alloca %struct.GfigObjectClass*, align 8
  store %struct.GfigObjectClass* getelementptr inbounds ([10 x %struct.GfigObjectClass], [10 x %struct.GfigObjectClass]* @dobj_class, i32 0, i64 2), %struct.GfigObjectClass** %class, align 8
  %0 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %type = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %0, i32 0, i32 0
  store i32 2, i32* %type, align 4
  %1 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %name = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8** %name, align 8
  %2 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %drawfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %2, i32 0, i32 2
  store void (%struct._GfigObject*, %struct._cairo*)* @d_draw_rectangle, void (%struct._GfigObject*, %struct._cairo*)** %drawfunc, align 8
  %3 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %paintfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %3, i32 0, i32 3
  store void (%struct._GfigObject*)* @d_paint_rectangle, void (%struct._GfigObject*)** %paintfunc, align 8
  %4 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %copyfunc = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %4, i32 0, i32 4
  store %struct._GfigObject* (%struct._GfigObject*)* @d_copy_rectangle, %struct._GfigObject* (%struct._GfigObject*)** %copyfunc, align 8
  %5 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %update = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %5, i32 0, i32 5
  store void (%struct._GdkPoint*)* @d_update_rectangle, void (%struct._GdkPoint*)** %update, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @d_draw_rectangle(%struct._GfigObject* %obj, %struct._cairo* %cr) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %first_pnt = alloca %struct.DobjPoints*, align 8
  %second_pnt = alloca %struct.DobjPoints*, align 8
  %xmin = alloca i32, align 4
  %ymin = alloca i32, align 4
  %xmax = alloca i32, align 4
  %ymax = alloca i32, align 4
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 3
  %1 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %1, %struct.DobjPoints** %first_pnt, align 8
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %3, i32 0, i32 1
  %4 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %5 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %5, i32 0, i32 5
  %6 = load %struct._GfigObject*, %struct._GfigObject** %selected_obj, align 8
  %cmp = icmp eq %struct._GfigObject* %4, %6
  %conv = zext i1 %cmp to i32
  %7 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_sqr(%struct._GdkPoint* %pnt, i32 %conv, %struct._cairo* %7)
  %8 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %8, i32 0, i32 0
  %9 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %9, %struct.DobjPoints** %second_pnt, align 8
  %10 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
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
  %13 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
  %pnt7 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %13, i32 0, i32 1
  %14 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_circle(%struct._GdkPoint* %pnt7, i32 1, %struct._cairo* %14)
  br label %if.end.12

if.else:                                          ; preds = %if.end.3
  %15 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
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
  %20 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %pnt13 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %20, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt13, i32 0, i32 0
  %21 = load i32, i32* %x, align 4
  %call = call i32 @gfig_scale_x(i32 %21)
  %22 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
  %pnt14 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %22, i32 0, i32 1
  %x15 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt14, i32 0, i32 0
  %23 = load i32, i32* %x15, align 4
  %call16 = call i32 @gfig_scale_x(i32 %23)
  %cmp17 = icmp slt i32 %call, %call16
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %24 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %pnt19 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %24, i32 0, i32 1
  %x20 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt19, i32 0, i32 0
  %25 = load i32, i32* %x20, align 4
  %call21 = call i32 @gfig_scale_x(i32 %25)
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  %26 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
  %pnt22 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %26, i32 0, i32 1
  %x23 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt22, i32 0, i32 0
  %27 = load i32, i32* %x23, align 4
  %call24 = call i32 @gfig_scale_x(i32 %27)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call21, %cond.true ], [ %call24, %cond.false ]
  store i32 %cond, i32* %xmin, align 4
  %28 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %pnt25 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %28, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt25, i32 0, i32 1
  %29 = load i32, i32* %y, align 4
  %call26 = call i32 @gfig_scale_y(i32 %29)
  %30 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
  %pnt27 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %30, i32 0, i32 1
  %y28 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt27, i32 0, i32 1
  %31 = load i32, i32* %y28, align 4
  %call29 = call i32 @gfig_scale_y(i32 %31)
  %cmp30 = icmp slt i32 %call26, %call29
  br i1 %cmp30, label %cond.true.32, label %cond.false.36

cond.true.32:                                     ; preds = %cond.end
  %32 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %pnt33 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %32, i32 0, i32 1
  %y34 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt33, i32 0, i32 1
  %33 = load i32, i32* %y34, align 4
  %call35 = call i32 @gfig_scale_y(i32 %33)
  br label %cond.end.40

cond.false.36:                                    ; preds = %cond.end
  %34 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
  %pnt37 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %34, i32 0, i32 1
  %y38 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt37, i32 0, i32 1
  %35 = load i32, i32* %y38, align 4
  %call39 = call i32 @gfig_scale_y(i32 %35)
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.36, %cond.true.32
  %cond41 = phi i32 [ %call35, %cond.true.32 ], [ %call39, %cond.false.36 ]
  store i32 %cond41, i32* %ymin, align 4
  %36 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %pnt42 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %36, i32 0, i32 1
  %x43 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt42, i32 0, i32 0
  %37 = load i32, i32* %x43, align 4
  %call44 = call i32 @gfig_scale_x(i32 %37)
  %38 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
  %pnt45 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %38, i32 0, i32 1
  %x46 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt45, i32 0, i32 0
  %39 = load i32, i32* %x46, align 4
  %call47 = call i32 @gfig_scale_x(i32 %39)
  %cmp48 = icmp sgt i32 %call44, %call47
  br i1 %cmp48, label %cond.true.50, label %cond.false.54

cond.true.50:                                     ; preds = %cond.end.40
  %40 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %pnt51 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %40, i32 0, i32 1
  %x52 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt51, i32 0, i32 0
  %41 = load i32, i32* %x52, align 4
  %call53 = call i32 @gfig_scale_x(i32 %41)
  br label %cond.end.58

cond.false.54:                                    ; preds = %cond.end.40
  %42 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
  %pnt55 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %42, i32 0, i32 1
  %x56 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt55, i32 0, i32 0
  %43 = load i32, i32* %x56, align 4
  %call57 = call i32 @gfig_scale_x(i32 %43)
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.54, %cond.true.50
  %cond59 = phi i32 [ %call53, %cond.true.50 ], [ %call57, %cond.false.54 ]
  store i32 %cond59, i32* %xmax, align 4
  %44 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %pnt60 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %44, i32 0, i32 1
  %y61 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt60, i32 0, i32 1
  %45 = load i32, i32* %y61, align 4
  %call62 = call i32 @gfig_scale_y(i32 %45)
  %46 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
  %pnt63 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %46, i32 0, i32 1
  %y64 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt63, i32 0, i32 1
  %47 = load i32, i32* %y64, align 4
  %call65 = call i32 @gfig_scale_y(i32 %47)
  %cmp66 = icmp sgt i32 %call62, %call65
  br i1 %cmp66, label %cond.true.68, label %cond.false.72

cond.true.68:                                     ; preds = %cond.end.58
  %48 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %pnt69 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %48, i32 0, i32 1
  %y70 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt69, i32 0, i32 1
  %49 = load i32, i32* %y70, align 4
  %call71 = call i32 @gfig_scale_y(i32 %49)
  br label %cond.end.76

cond.false.72:                                    ; preds = %cond.end.58
  %50 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
  %pnt73 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %50, i32 0, i32 1
  %y74 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt73, i32 0, i32 1
  %51 = load i32, i32* %y74, align 4
  %call75 = call i32 @gfig_scale_y(i32 %51)
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.72, %cond.true.68
  %cond77 = phi i32 [ %call71, %cond.true.68 ], [ %call75, %cond.false.72 ]
  store i32 %cond77, i32* %ymax, align 4
  %52 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %53 = load i32, i32* %xmin, align 4
  %conv78 = sitofp i32 %53 to double
  %add = fadd double %conv78, 5.000000e-01
  %54 = load i32, i32* %ymin, align 4
  %conv79 = sitofp i32 %54 to double
  %add80 = fadd double %conv79, 5.000000e-01
  %55 = load i32, i32* %xmax, align 4
  %56 = load i32, i32* %xmin, align 4
  %sub = sub nsw i32 %55, %56
  %conv81 = sitofp i32 %sub to double
  %57 = load i32, i32* %ymax, align 4
  %58 = load i32, i32* %ymin, align 4
  %sub82 = sub nsw i32 %57, %58
  %conv83 = sitofp i32 %sub82 to double
  call void @cairo_rectangle(%struct._cairo* %52, double %add, double %add80, double %conv81, double %conv83)
  %59 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_item(%struct._cairo* %59, i32 0)
  br label %return

return:                                           ; preds = %cond.end.76, %if.then.2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @d_paint_rectangle(%struct._GfigObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %first_pnt = alloca %struct.DobjPoints*, align 8
  %second_pnt = alloca %struct.DobjPoints*, align 8
  %dpnts = alloca [4 x double], align 16
  %line_pnts = alloca [10 x double], align 16
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %cmp = icmp ne %struct._GfigObject* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.d_paint_rectangle, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %1, i32 0, i32 3
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %2, %struct.DobjPoints** %first_pnt, align 8
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %3, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  br label %if.end.109

if.end.2:                                         ; preds = %do.end
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %4, i32 0, i32 0
  %5 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %5, %struct.DobjPoints** %second_pnt, align 8
  %6 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
  %tobool3 = icmp ne %struct.DobjPoints* %6, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %7 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %pnt = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %7, i32 0, i32 1
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt, i32 0, i32 0
  %8 = load i32, i32* %x, align 4
  %9 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
  %pnt6 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %9, i32 0, i32 1
  %x7 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt6, i32 0, i32 0
  %10 = load i32, i32* %x7, align 4
  %cmp8 = icmp slt i32 %8, %10
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %11 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %pnt9 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %11, i32 0, i32 1
  %x10 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt9, i32 0, i32 0
  %12 = load i32, i32* %x10, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  %13 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
  %pnt11 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %13, i32 0, i32 1
  %x12 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt11, i32 0, i32 0
  %14 = load i32, i32* %x12, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %14, %cond.false ]
  %conv = sitofp i32 %cond to double
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 0
  store double %conv, double* %arrayidx, align 8
  %15 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %pnt13 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %15, i32 0, i32 1
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt13, i32 0, i32 1
  %16 = load i32, i32* %y, align 4
  %17 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
  %pnt14 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %17, i32 0, i32 1
  %y15 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt14, i32 0, i32 1
  %18 = load i32, i32* %y15, align 4
  %cmp16 = icmp slt i32 %16, %18
  br i1 %cmp16, label %cond.true.18, label %cond.false.21

cond.true.18:                                     ; preds = %cond.end
  %19 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %pnt19 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %19, i32 0, i32 1
  %y20 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt19, i32 0, i32 1
  %20 = load i32, i32* %y20, align 4
  br label %cond.end.24

cond.false.21:                                    ; preds = %cond.end
  %21 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
  %pnt22 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %21, i32 0, i32 1
  %y23 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt22, i32 0, i32 1
  %22 = load i32, i32* %y23, align 4
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.21, %cond.true.18
  %cond25 = phi i32 [ %20, %cond.true.18 ], [ %22, %cond.false.21 ]
  %conv26 = sitofp i32 %cond25 to double
  %arrayidx27 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 1
  store double %conv26, double* %arrayidx27, align 8
  %23 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %pnt28 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %23, i32 0, i32 1
  %x29 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt28, i32 0, i32 0
  %24 = load i32, i32* %x29, align 4
  %25 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
  %pnt30 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %25, i32 0, i32 1
  %x31 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt30, i32 0, i32 0
  %26 = load i32, i32* %x31, align 4
  %cmp32 = icmp sgt i32 %24, %26
  br i1 %cmp32, label %cond.true.34, label %cond.false.37

cond.true.34:                                     ; preds = %cond.end.24
  %27 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %pnt35 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %27, i32 0, i32 1
  %x36 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt35, i32 0, i32 0
  %28 = load i32, i32* %x36, align 4
  br label %cond.end.40

cond.false.37:                                    ; preds = %cond.end.24
  %29 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
  %pnt38 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %29, i32 0, i32 1
  %x39 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt38, i32 0, i32 0
  %30 = load i32, i32* %x39, align 4
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.37, %cond.true.34
  %cond41 = phi i32 [ %28, %cond.true.34 ], [ %30, %cond.false.37 ]
  %conv42 = sitofp i32 %cond41 to double
  %arrayidx43 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 2
  store double %conv42, double* %arrayidx43, align 8
  %31 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %pnt44 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %31, i32 0, i32 1
  %y45 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt44, i32 0, i32 1
  %32 = load i32, i32* %y45, align 4
  %33 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
  %pnt46 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %33, i32 0, i32 1
  %y47 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt46, i32 0, i32 1
  %34 = load i32, i32* %y47, align 4
  %cmp48 = icmp sgt i32 %32, %34
  br i1 %cmp48, label %cond.true.50, label %cond.false.53

cond.true.50:                                     ; preds = %cond.end.40
  %35 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %pnt51 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %35, i32 0, i32 1
  %y52 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt51, i32 0, i32 1
  %36 = load i32, i32* %y52, align 4
  br label %cond.end.56

cond.false.53:                                    ; preds = %cond.end.40
  %37 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
  %pnt54 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %37, i32 0, i32 1
  %y55 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt54, i32 0, i32 1
  %38 = load i32, i32* %y55, align 4
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.53, %cond.true.50
  %cond57 = phi i32 [ %36, %cond.true.50 ], [ %38, %cond.false.53 ]
  %conv58 = sitofp i32 %cond57 to double
  %arrayidx59 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 3
  store double %conv58, double* %arrayidx59, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 11), align 4
  %tobool60 = icmp ne i32 %39, 0
  br i1 %tobool60, label %if.then.61, label %if.else.63

if.then.61:                                       ; preds = %cond.end.56
  %arrayidx62 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 0
  call void @scale_to_original_xy(double* %arrayidx62, i32 2)
  br label %if.end.65

if.else.63:                                       ; preds = %cond.end.56
  %arrayidx64 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 0
  call void @scale_to_xy(double* %arrayidx64, i32 2)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.63, %if.then.61
  %call = call %struct._Style* @gfig_context_get_current_style()
  %fill_type = getelementptr inbounds %struct._Style, %struct._Style* %call, i32 0, i32 9
  %40 = load i32, i32* %fill_type, align 4
  %cmp66 = icmp ne i32 %40, 0
  br i1 %cmp66, label %if.then.68, label %if.end.87

if.then.68:                                       ; preds = %if.end.65
  %call69 = call i32 @gimp_context_push()
  %41 = load i32, i32* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 2), align 4
  %call70 = call i32 @gimp_context_set_feather(i32 %41)
  %42 = load double, double* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 3), align 8
  %43 = load double, double* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 3), align 8
  %call71 = call i32 @gimp_context_set_feather_radius(double %42, double %43)
  %44 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %image_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %44, i32 0, i32 2
  %45 = load i32, i32* %image_id, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.selection_option, %struct.selection_option* @selopt, i32 0, i32 0), align 4
  %arrayidx72 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 0
  %47 = load double, double* %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 1
  %48 = load double, double* %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 2
  %49 = load double, double* %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 0
  %50 = load double, double* %arrayidx75, align 8
  %sub = fsub double %49, %50
  %arrayidx76 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 3
  %51 = load double, double* %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 1
  %52 = load double, double* %arrayidx77, align 8
  %sub78 = fsub double %51, %52
  %call79 = call i32 @gimp_image_select_rectangle(i32 %45, i32 %46, double %47, double %48, double %sub, double %sub78)
  %call80 = call i32 @gimp_context_pop()
  %arrayidx81 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 0
  %53 = load double, double* %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 1
  %54 = load double, double* %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 2
  %55 = load double, double* %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 3
  %56 = load double, double* %arrayidx84, align 8
  call void @paint_layer_fill(double %53, double %54, double %55, double %56)
  %57 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %image_id85 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %57, i32 0, i32 2
  %58 = load i32, i32* %image_id85, align 4
  %call86 = call i32 @gimp_selection_none(i32 %58)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.68, %if.end.65
  %59 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %style = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %59, i32 0, i32 4
  %paint_type = getelementptr inbounds %struct._Style, %struct._Style* %style, i32 0, i32 13
  %60 = load i32, i32* %paint_type, align 4
  %cmp88 = icmp eq i32 %60, 1
  br i1 %cmp88, label %if.then.90, label %if.end.109

if.then.90:                                       ; preds = %if.end.87
  %arrayinit.begin = getelementptr inbounds [10 x double], [10 x double]* %line_pnts, i64 0, i64 0
  %arrayidx91 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 0
  %61 = load double, double* %arrayidx91, align 8
  store double %61, double* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds double, double* %arrayinit.begin, i64 1
  %arrayidx92 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 1
  %62 = load double, double* %arrayidx92, align 8
  store double %62, double* %arrayinit.element
  %arrayinit.element93 = getelementptr inbounds double, double* %arrayinit.element, i64 1
  %arrayidx94 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 2
  %63 = load double, double* %arrayidx94, align 8
  store double %63, double* %arrayinit.element93
  %arrayinit.element95 = getelementptr inbounds double, double* %arrayinit.element93, i64 1
  %arrayidx96 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 1
  %64 = load double, double* %arrayidx96, align 8
  store double %64, double* %arrayinit.element95
  %arrayinit.element97 = getelementptr inbounds double, double* %arrayinit.element95, i64 1
  %arrayidx98 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 2
  %65 = load double, double* %arrayidx98, align 8
  store double %65, double* %arrayinit.element97
  %arrayinit.element99 = getelementptr inbounds double, double* %arrayinit.element97, i64 1
  %arrayidx100 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 3
  %66 = load double, double* %arrayidx100, align 8
  store double %66, double* %arrayinit.element99
  %arrayinit.element101 = getelementptr inbounds double, double* %arrayinit.element99, i64 1
  %arrayidx102 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 0
  %67 = load double, double* %arrayidx102, align 8
  store double %67, double* %arrayinit.element101
  %arrayinit.element103 = getelementptr inbounds double, double* %arrayinit.element101, i64 1
  %arrayidx104 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 3
  %68 = load double, double* %arrayidx104, align 8
  store double %68, double* %arrayinit.element103
  %arrayinit.element105 = getelementptr inbounds double, double* %arrayinit.element103, i64 1
  %arrayidx106 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 0
  %69 = load double, double* %arrayidx106, align 8
  store double %69, double* %arrayinit.element105
  %arrayinit.element107 = getelementptr inbounds double, double* %arrayinit.element105, i64 1
  %arrayidx108 = getelementptr inbounds [4 x double], [4 x double]* %dpnts, i32 0, i64 1
  %70 = load double, double* %arrayidx108, align 8
  store double %70, double* %arrayinit.element107
  %71 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 13), align 4
  %72 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %72, i32 0, i32 3
  %73 = load i32, i32* %drawable_id, align 4
  %arraydecay = getelementptr inbounds [10 x double], [10 x double]* %line_pnts, i32 0, i32 0
  call void @gfig_paint(i32 %71, i32 %73, i32 10, double* %arraydecay)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.1, %if.then.90, %if.end.87
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GfigObject* @d_copy_rectangle(%struct._GfigObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %new_rectangle = alloca %struct._GfigObject*, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %type = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 149, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.d_copy_rectangle, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #4
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
  %call = call %struct._GfigObject* @d_new_object(i32 2, i32 %4, i32 %7)
  store %struct._GfigObject* %call, %struct._GfigObject** %new_rectangle, align 8
  %8 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %points3 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %8, i32 0, i32 3
  %9 = load %struct.DobjPoints*, %struct.DobjPoints** %points3, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %9, i32 0, i32 0
  %10 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  %call4 = call %struct.DobjPoints* @d_copy_dobjpoints(%struct.DobjPoints* %10)
  %11 = load %struct._GfigObject*, %struct._GfigObject** %new_rectangle, align 8
  %points5 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %11, i32 0, i32 3
  %12 = load %struct.DobjPoints*, %struct.DobjPoints** %points5, align 8
  %next6 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %12, i32 0, i32 0
  store %struct.DobjPoints* %call4, %struct.DobjPoints** %next6, align 8
  %13 = load %struct._GfigObject*, %struct._GfigObject** %new_rectangle, align 8
  ret %struct._GfigObject* %13
}

; Function Attrs: nounwind uwtable
define internal void @d_update_rectangle(%struct._GdkPoint* %pnt) #0 {
entry:
  %pnt.addr = alloca %struct._GdkPoint*, align 8
  %first_pnt = alloca %struct.DobjPoints*, align 8
  %second_pnt = alloca %struct.DobjPoints*, align 8
  store %struct._GdkPoint* %pnt, %struct._GdkPoint** %pnt.addr, align 8
  %0 = load %struct._GfigObject*, %struct._GfigObject** @obj_creating, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %0, i32 0, i32 3
  %1 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  store %struct.DobjPoints* %1, %struct.DobjPoints** %first_pnt, align 8
  %2 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %tobool = icmp ne %struct.DobjPoints* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.10

if.end:                                           ; preds = %entry
  %3 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %next = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %3, i32 0, i32 0
  %4 = load %struct.DobjPoints*, %struct.DobjPoints** %next, align 8
  store %struct.DobjPoints* %4, %struct.DobjPoints** %second_pnt, align 8
  %tobool1 = icmp ne %struct.DobjPoints* %4, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %5, i32 0, i32 0
  %6 = load i32, i32* %x, align 4
  %7 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
  %pnt3 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %7, i32 0, i32 1
  %x4 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt3, i32 0, i32 0
  store i32 %6, i32* %x4, align 4
  %8 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %8, i32 0, i32 1
  %9 = load i32, i32* %y, align 4
  %10 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
  %pnt5 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %10, i32 0, i32 1
  %y6 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %pnt5, i32 0, i32 1
  store i32 %9, i32* %y6, align 4
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %11 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %x7 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %11, i32 0, i32 0
  %12 = load i32, i32* %x7, align 4
  %13 = load %struct._GdkPoint*, %struct._GdkPoint** %pnt.addr, align 8
  %y8 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %13, i32 0, i32 1
  %14 = load i32, i32* %y8, align 4
  %call = call %struct.DobjPoints* @new_dobjpoint(i32 %12, i32 %14)
  store %struct.DobjPoints* %call, %struct.DobjPoints** %second_pnt, align 8
  %15 = load %struct.DobjPoints*, %struct.DobjPoints** %second_pnt, align 8
  %16 = load %struct.DobjPoints*, %struct.DobjPoints** %first_pnt, align 8
  %next9 = getelementptr inbounds %struct.DobjPoints, %struct.DobjPoints* %16, i32 0, i32 0
  store %struct.DobjPoints* %15, %struct.DobjPoints** %next9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then, %if.else, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define void @d_rectangle_start(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
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
  %call = call %struct._GfigObject* @d_new_object(i32 2, i32 %1, i32 %3)
  store %struct._GfigObject* %call, %struct._GfigObject** @obj_creating, align 8
  ret void
}

declare %struct._GfigObject* @d_new_object(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @d_rectangle_end(%struct._GdkPoint* %pnt, i32 %shift_down) #0 {
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

declare i32 @gfig_scale_x(i32) #1

declare i32 @gfig_scale_y(i32) #1

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @draw_item(%struct._cairo*, i32) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #2

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

declare i32 @gimp_context_set_feather(i32) #1

declare i32 @gimp_context_set_feather_radius(double, double) #1

declare i32 @gimp_image_select_rectangle(i32, i32, double, double, double, double) #1

declare i32 @gimp_context_pop() #1

declare void @paint_layer_fill(double, double, double, double) #1

declare i32 @gimp_selection_none(i32) #1

declare void @gfig_paint(i32, i32, i32, double*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

declare %struct.DobjPoints* @d_copy_dobjpoints(%struct.DobjPoints*) #1

declare %struct.DobjPoints* @new_dobjpoint(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
