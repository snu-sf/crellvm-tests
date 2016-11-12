; ModuleID = './app/core/gimpimage-snap.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpGuide = type { %struct._GObject, i32, i32, i32 }
%struct._GimpGrid = type { %struct._GimpObject, i32, %struct._GimpRGB, %struct._GimpRGB, double, double, i32, double, double, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, i8**, i32, i32, double, double, double, double }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpStroke = type { %struct._GimpObject, i32, %struct._GList*, i32 }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpAnchor = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_image_snap_x = private unnamed_addr constant [18 x i8] c"gimp_image_snap_x\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"tx != NULL\00", align 1
@__func__.gimp_image_snap_y = private unnamed_addr constant [18 x i8] c"gimp_image_snap_y\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ty != NULL\00", align 1
@__func__.gimp_image_snap_point = private unnamed_addr constant [22 x i8] c"gimp_image_snap_point\00", align 1
@__func__.gimp_image_snap_rectangle = private unnamed_addr constant [26 x i8] c"gimp_image_snap_rectangle\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"tx1 != NULL\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ty1 != NULL\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_snap_x(%struct._GimpImage* %image, double %x, double* %tx, double %epsilon_x, i32 %snap_to_guides, i32 %snap_to_grid, i32 %snap_to_canvas) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %x.addr = alloca double, align 8
  %tx.addr = alloca double*, align 8
  %epsilon_x.addr = alloca double, align 8
  %snap_to_guides.addr = alloca i32, align 4
  %snap_to_grid.addr = alloca i32, align 4
  %snap_to_canvas.addr = alloca i32, align 4
  %mindist = alloca double, align 8
  %snapped = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %guide = alloca %struct._GimpGuide*, align 8
  %position = alloca i32, align 4
  %grid = alloca %struct._GimpGrid*, align 8
  %xspacing = alloca double, align 8
  %xoffset = alloca double, align 8
  %i = alloca double, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store double %x, double* %x.addr, align 8
  store double* %tx, double** %tx.addr, align 8
  store double %epsilon_x, double* %epsilon_x.addr, align 8
  store i32 %snap_to_guides, i32* %snap_to_guides.addr, align 4
  store i32 %snap_to_grid, i32* %snap_to_grid.addr, align 4
  store i32 %snap_to_canvas, i32* %snap_to_canvas.addr, align 4
  store double 0x7FEFFFFFFFFFFFFF, double* %mindist, align 8
  store i32 0, i32* %snapped, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_image_snap_x, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load double*, double** %tx.addr, align 8
  %cmp12 = icmp ne double* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_image_snap_x, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load double, double* %x.addr, align 8
  %15 = load double*, double** %tx.addr, align 8
  store double %14, double* %15, align 8
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call17 = call %struct._GList* @gimp_image_get_guides(%struct._GimpImage* %16)
  %tobool18 = icmp ne %struct._GList* %call17, null
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %do.end.16
  store i32 0, i32* %snap_to_guides.addr, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %do.end.16
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call21 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %17)
  %tobool22 = icmp ne %struct._GimpGrid* %call21, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.20
  store i32 0, i32* %snap_to_grid.addr, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.20
  %18 = load i32, i32* %snap_to_guides.addr, align 4
  %tobool25 = icmp ne i32 %18, 0
  br i1 %tobool25, label %if.end.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.24
  %19 = load i32, i32* %snap_to_grid.addr, align 4
  %tobool26 = icmp ne i32 %19, 0
  br i1 %tobool26, label %if.end.30, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false
  %20 = load i32, i32* %snap_to_canvas.addr, align 4
  %tobool28 = icmp ne i32 %20, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %lor.lhs.false.27
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %lor.lhs.false.27, %lor.lhs.false, %if.end.24
  %21 = load double, double* %x.addr, align 8
  %22 = load double, double* %epsilon_x.addr, align 8
  %sub = fsub double -0.000000e+00, %22
  %cmp31 = fcmp olt double %21, %sub
  br i1 %cmp31, label %if.then.36, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %if.end.30
  %23 = load double, double* %x.addr, align 8
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call33 = call i32 @gimp_image_get_width(%struct._GimpImage* %24)
  %conv = sitofp i32 %call33 to double
  %25 = load double, double* %epsilon_x.addr, align 8
  %add = fadd double %conv, %25
  %cmp34 = fcmp oge double %23, %add
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false.32, %if.end.30
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %lor.lhs.false.32
  %26 = load i32, i32* %snap_to_guides.addr, align 4
  %tobool38 = icmp ne i32 %26, 0
  br i1 %tobool38, label %if.then.39, label %if.end.58

if.then.39:                                       ; preds = %if.end.37
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call41 = call %struct._GList* @gimp_image_get_guides(%struct._GimpImage* %27)
  store %struct._GList* %call41, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.39
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool42 = icmp ne %struct._GList* %28, null
  br i1 %tobool42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 0
  %30 = load i8*, i8** %data, align 8
  %31 = bitcast i8* %30 to %struct._GimpGuide*
  store %struct._GimpGuide* %31, %struct._GimpGuide** %guide, align 8
  %32 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call45 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %32)
  store i32 %call45, i32* %position, align 4
  %33 = load i32, i32* %position, align 4
  %cmp46 = icmp slt i32 %33, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.body
  br label %for.inc

if.end.49:                                        ; preds = %for.body
  %34 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call50 = call i32 @gimp_guide_get_orientation(%struct._GimpGuide* %34)
  %cmp51 = icmp eq i32 %call50, 1
  br i1 %cmp51, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.49
  %35 = load double, double* %x.addr, align 8
  %36 = load i32, i32* %position, align 4
  %conv54 = sitofp i32 %36 to double
  %37 = load double, double* %epsilon_x.addr, align 8
  %38 = load double*, double** %tx.addr, align 8
  %call55 = call i32 @gimp_image_snap_distance(double %35, double %conv54, double %37, double* %mindist, double* %38)
  %39 = load i32, i32* %snapped, align 4
  %or = or i32 %39, %call55
  store i32 %or, i32* %snapped, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.49
  br label %for.inc

for.inc:                                          ; preds = %if.end.56, %if.then.48
  %40 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool57 = icmp ne %struct._GList* %40, null
  br i1 %tobool57, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %41 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %41, i32 0, i32 1
  %42 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %42, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.58

if.end.58:                                        ; preds = %for.end, %if.end.37
  %43 = load i32, i32* %snap_to_grid.addr, align 4
  %tobool59 = icmp ne i32 %43, 0
  br i1 %tobool59, label %if.then.60, label %if.end.84

if.then.60:                                       ; preds = %if.end.58
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call62 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %44)
  store %struct._GimpGrid* %call62, %struct._GimpGrid** %grid, align 8
  %45 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  call void @gimp_grid_get_spacing(%struct._GimpGrid* %45, double* %xspacing, double* null)
  %46 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  call void @gimp_grid_get_offset(%struct._GimpGrid* %46, double* %xoffset, double* null)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.60
  %47 = load double, double* %xoffset, align 8
  %48 = load double, double* %xspacing, align 8
  %cmp66 = fcmp ogt double %47, %48
  br i1 %cmp66, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %49 = load double, double* %xspacing, align 8
  %50 = load double, double* %xoffset, align 8
  %sub68 = fsub double %50, %49
  store double %sub68, double* %xoffset, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %51 = load double, double* %xoffset, align 8
  store double %51, double* %i, align 8
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.81, %while.end
  %52 = load double, double* %i, align 8
  %53 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call70 = call i32 @gimp_image_get_width(%struct._GimpImage* %53)
  %conv71 = sitofp i32 %call70 to double
  %cmp72 = fcmp ole double %52, %conv71
  br i1 %cmp72, label %for.body.74, label %for.end.83

for.body.74:                                      ; preds = %for.cond.69
  %54 = load double, double* %i, align 8
  %cmp75 = fcmp olt double %54, 0.000000e+00
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %for.body.74
  br label %for.inc.81

if.end.78:                                        ; preds = %for.body.74
  %55 = load double, double* %x.addr, align 8
  %56 = load double, double* %i, align 8
  %57 = load double, double* %epsilon_x.addr, align 8
  %58 = load double*, double** %tx.addr, align 8
  %call79 = call i32 @gimp_image_snap_distance(double %55, double %56, double %57, double* %mindist, double* %58)
  %59 = load i32, i32* %snapped, align 4
  %or80 = or i32 %59, %call79
  store i32 %or80, i32* %snapped, align 4
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.78, %if.then.77
  %60 = load double, double* %xspacing, align 8
  %61 = load double, double* %i, align 8
  %add82 = fadd double %61, %60
  store double %add82, double* %i, align 8
  br label %for.cond.69

for.end.83:                                       ; preds = %for.cond.69
  br label %if.end.84

if.end.84:                                        ; preds = %for.end.83, %if.end.58
  %62 = load i32, i32* %snap_to_canvas.addr, align 4
  %tobool85 = icmp ne i32 %62, 0
  br i1 %tobool85, label %if.then.86, label %if.end.93

if.then.86:                                       ; preds = %if.end.84
  %63 = load double, double* %x.addr, align 8
  %64 = load double, double* %epsilon_x.addr, align 8
  %65 = load double*, double** %tx.addr, align 8
  %call87 = call i32 @gimp_image_snap_distance(double %63, double 0.000000e+00, double %64, double* %mindist, double* %65)
  %66 = load i32, i32* %snapped, align 4
  %or88 = or i32 %66, %call87
  store i32 %or88, i32* %snapped, align 4
  %67 = load double, double* %x.addr, align 8
  %68 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call89 = call i32 @gimp_image_get_width(%struct._GimpImage* %68)
  %conv90 = sitofp i32 %call89 to double
  %69 = load double, double* %epsilon_x.addr, align 8
  %70 = load double*, double** %tx.addr, align 8
  %call91 = call i32 @gimp_image_snap_distance(double %67, double %conv90, double %69, double* %mindist, double* %70)
  %71 = load i32, i32* %snapped, align 4
  %or92 = or i32 %71, %call91
  store i32 %or92, i32* %snapped, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.86, %if.end.84
  %72 = load i32, i32* %snapped, align 4
  store i32 %72, i32* %retval
  br label %return

return:                                           ; preds = %if.end.93, %if.then.36, %if.then.29, %if.else.14, %if.else.9
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GList* @gimp_image_get_guides(%struct._GimpImage*) #3

declare %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage*) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_guide_get_position(%struct._GimpGuide*) #3

declare i32 @gimp_guide_get_orientation(%struct._GimpGuide*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_image_snap_distance(double %unsnapped, double %nearest, double %epsilon, double* %mindist, double* %target) #0 {
entry:
  %retval = alloca i32, align 4
  %unsnapped.addr = alloca double, align 8
  %nearest.addr = alloca double, align 8
  %epsilon.addr = alloca double, align 8
  %mindist.addr = alloca double*, align 8
  %target.addr = alloca double*, align 8
  %dist = alloca double, align 8
  store double %unsnapped, double* %unsnapped.addr, align 8
  store double %nearest, double* %nearest.addr, align 8
  store double %epsilon, double* %epsilon.addr, align 8
  store double* %mindist, double** %mindist.addr, align 8
  store double* %target, double** %target.addr, align 8
  %0 = load double, double* %nearest.addr, align 8
  %1 = load double, double* %unsnapped.addr, align 8
  %sub = fsub double %0, %1
  %cmp = fcmp olt double %sub, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load double, double* %nearest.addr, align 8
  %3 = load double, double* %unsnapped.addr, align 8
  %sub1 = fsub double %2, %3
  %sub2 = fsub double -0.000000e+00, %sub1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load double, double* %nearest.addr, align 8
  %5 = load double, double* %unsnapped.addr, align 8
  %sub3 = fsub double %4, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub2, %cond.true ], [ %sub3, %cond.false ]
  store double %cond, double* %dist, align 8
  %6 = load double, double* %dist, align 8
  %7 = load double, double* %epsilon.addr, align 8
  %8 = load double*, double** %mindist.addr, align 8
  %9 = load double, double* %8, align 8
  %cmp4 = fcmp olt double %7, %9
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  %10 = load double, double* %epsilon.addr, align 8
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.end
  %11 = load double*, double** %mindist.addr, align 8
  %12 = load double, double* %11, align 8
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.5
  %cond8 = phi double [ %10, %cond.true.5 ], [ %12, %cond.false.6 ]
  %cmp9 = fcmp olt double %6, %cond8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.7
  %13 = load double, double* %dist, align 8
  %14 = load double*, double** %mindist.addr, align 8
  store double %13, double* %14, align 8
  %15 = load double, double* %nearest.addr, align 8
  %16 = load double*, double** %target.addr, align 8
  store double %15, double* %16, align 8
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.7
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare void @gimp_grid_get_spacing(%struct._GimpGrid*, double*, double*) #3

declare void @gimp_grid_get_offset(%struct._GimpGrid*, double*, double*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_image_snap_y(%struct._GimpImage* %image, double %y, double* %ty, double %epsilon_y, i32 %snap_to_guides, i32 %snap_to_grid, i32 %snap_to_canvas) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %y.addr = alloca double, align 8
  %ty.addr = alloca double*, align 8
  %epsilon_y.addr = alloca double, align 8
  %snap_to_guides.addr = alloca i32, align 4
  %snap_to_grid.addr = alloca i32, align 4
  %snap_to_canvas.addr = alloca i32, align 4
  %mindist = alloca double, align 8
  %snapped = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %guide = alloca %struct._GimpGuide*, align 8
  %position = alloca i32, align 4
  %grid = alloca %struct._GimpGrid*, align 8
  %yspacing = alloca double, align 8
  %yoffset = alloca double, align 8
  %i = alloca double, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store double %y, double* %y.addr, align 8
  store double* %ty, double** %ty.addr, align 8
  store double %epsilon_y, double* %epsilon_y.addr, align 8
  store i32 %snap_to_guides, i32* %snap_to_guides.addr, align 4
  store i32 %snap_to_grid, i32* %snap_to_grid.addr, align 4
  store i32 %snap_to_canvas, i32* %snap_to_canvas.addr, align 4
  store double 0x7FEFFFFFFFFFFFFF, double* %mindist, align 8
  store i32 0, i32* %snapped, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_image_snap_y, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load double*, double** %ty.addr, align 8
  %cmp12 = icmp ne double* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_image_snap_y, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load double, double* %y.addr, align 8
  %15 = load double*, double** %ty.addr, align 8
  store double %14, double* %15, align 8
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call17 = call %struct._GList* @gimp_image_get_guides(%struct._GimpImage* %16)
  %tobool18 = icmp ne %struct._GList* %call17, null
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %do.end.16
  store i32 0, i32* %snap_to_guides.addr, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %do.end.16
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call21 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %17)
  %tobool22 = icmp ne %struct._GimpGrid* %call21, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.20
  store i32 0, i32* %snap_to_grid.addr, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.20
  %18 = load i32, i32* %snap_to_guides.addr, align 4
  %tobool25 = icmp ne i32 %18, 0
  br i1 %tobool25, label %if.end.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.24
  %19 = load i32, i32* %snap_to_grid.addr, align 4
  %tobool26 = icmp ne i32 %19, 0
  br i1 %tobool26, label %if.end.30, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false
  %20 = load i32, i32* %snap_to_canvas.addr, align 4
  %tobool28 = icmp ne i32 %20, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %lor.lhs.false.27
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %lor.lhs.false.27, %lor.lhs.false, %if.end.24
  %21 = load double, double* %y.addr, align 8
  %22 = load double, double* %epsilon_y.addr, align 8
  %sub = fsub double -0.000000e+00, %22
  %cmp31 = fcmp olt double %21, %sub
  br i1 %cmp31, label %if.then.36, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %if.end.30
  %23 = load double, double* %y.addr, align 8
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call33 = call i32 @gimp_image_get_height(%struct._GimpImage* %24)
  %conv = sitofp i32 %call33 to double
  %25 = load double, double* %epsilon_y.addr, align 8
  %add = fadd double %conv, %25
  %cmp34 = fcmp oge double %23, %add
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false.32, %if.end.30
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %lor.lhs.false.32
  %26 = load i32, i32* %snap_to_guides.addr, align 4
  %tobool38 = icmp ne i32 %26, 0
  br i1 %tobool38, label %if.then.39, label %if.end.58

if.then.39:                                       ; preds = %if.end.37
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call41 = call %struct._GList* @gimp_image_get_guides(%struct._GimpImage* %27)
  store %struct._GList* %call41, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.39
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool42 = icmp ne %struct._GList* %28, null
  br i1 %tobool42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 0
  %30 = load i8*, i8** %data, align 8
  %31 = bitcast i8* %30 to %struct._GimpGuide*
  store %struct._GimpGuide* %31, %struct._GimpGuide** %guide, align 8
  %32 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call45 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %32)
  store i32 %call45, i32* %position, align 4
  %33 = load i32, i32* %position, align 4
  %cmp46 = icmp slt i32 %33, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.body
  br label %for.inc

if.end.49:                                        ; preds = %for.body
  %34 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call50 = call i32 @gimp_guide_get_orientation(%struct._GimpGuide* %34)
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.49
  %35 = load double, double* %y.addr, align 8
  %36 = load i32, i32* %position, align 4
  %conv54 = sitofp i32 %36 to double
  %37 = load double, double* %epsilon_y.addr, align 8
  %38 = load double*, double** %ty.addr, align 8
  %call55 = call i32 @gimp_image_snap_distance(double %35, double %conv54, double %37, double* %mindist, double* %38)
  %39 = load i32, i32* %snapped, align 4
  %or = or i32 %39, %call55
  store i32 %or, i32* %snapped, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.49
  br label %for.inc

for.inc:                                          ; preds = %if.end.56, %if.then.48
  %40 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool57 = icmp ne %struct._GList* %40, null
  br i1 %tobool57, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %41 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %41, i32 0, i32 1
  %42 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %42, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.58

if.end.58:                                        ; preds = %for.end, %if.end.37
  %43 = load i32, i32* %snap_to_grid.addr, align 4
  %tobool59 = icmp ne i32 %43, 0
  br i1 %tobool59, label %if.then.60, label %if.end.84

if.then.60:                                       ; preds = %if.end.58
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call62 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %44)
  store %struct._GimpGrid* %call62, %struct._GimpGrid** %grid, align 8
  %45 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  call void @gimp_grid_get_spacing(%struct._GimpGrid* %45, double* null, double* %yspacing)
  %46 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  call void @gimp_grid_get_offset(%struct._GimpGrid* %46, double* null, double* %yoffset)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.60
  %47 = load double, double* %yoffset, align 8
  %48 = load double, double* %yspacing, align 8
  %cmp66 = fcmp ogt double %47, %48
  br i1 %cmp66, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %49 = load double, double* %yspacing, align 8
  %50 = load double, double* %yoffset, align 8
  %sub68 = fsub double %50, %49
  store double %sub68, double* %yoffset, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %51 = load double, double* %yoffset, align 8
  store double %51, double* %i, align 8
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.81, %while.end
  %52 = load double, double* %i, align 8
  %53 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call70 = call i32 @gimp_image_get_height(%struct._GimpImage* %53)
  %conv71 = sitofp i32 %call70 to double
  %cmp72 = fcmp ole double %52, %conv71
  br i1 %cmp72, label %for.body.74, label %for.end.83

for.body.74:                                      ; preds = %for.cond.69
  %54 = load double, double* %i, align 8
  %cmp75 = fcmp olt double %54, 0.000000e+00
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %for.body.74
  br label %for.inc.81

if.end.78:                                        ; preds = %for.body.74
  %55 = load double, double* %y.addr, align 8
  %56 = load double, double* %i, align 8
  %57 = load double, double* %epsilon_y.addr, align 8
  %58 = load double*, double** %ty.addr, align 8
  %call79 = call i32 @gimp_image_snap_distance(double %55, double %56, double %57, double* %mindist, double* %58)
  %59 = load i32, i32* %snapped, align 4
  %or80 = or i32 %59, %call79
  store i32 %or80, i32* %snapped, align 4
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.78, %if.then.77
  %60 = load double, double* %yspacing, align 8
  %61 = load double, double* %i, align 8
  %add82 = fadd double %61, %60
  store double %add82, double* %i, align 8
  br label %for.cond.69

for.end.83:                                       ; preds = %for.cond.69
  br label %if.end.84

if.end.84:                                        ; preds = %for.end.83, %if.end.58
  %62 = load i32, i32* %snap_to_canvas.addr, align 4
  %tobool85 = icmp ne i32 %62, 0
  br i1 %tobool85, label %if.then.86, label %if.end.93

if.then.86:                                       ; preds = %if.end.84
  %63 = load double, double* %y.addr, align 8
  %64 = load double, double* %epsilon_y.addr, align 8
  %65 = load double*, double** %ty.addr, align 8
  %call87 = call i32 @gimp_image_snap_distance(double %63, double 0.000000e+00, double %64, double* %mindist, double* %65)
  %66 = load i32, i32* %snapped, align 4
  %or88 = or i32 %66, %call87
  store i32 %or88, i32* %snapped, align 4
  %67 = load double, double* %y.addr, align 8
  %68 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call89 = call i32 @gimp_image_get_height(%struct._GimpImage* %68)
  %conv90 = sitofp i32 %call89 to double
  %69 = load double, double* %epsilon_y.addr, align 8
  %70 = load double*, double** %ty.addr, align 8
  %call91 = call i32 @gimp_image_snap_distance(double %67, double %conv90, double %69, double* %mindist, double* %70)
  %71 = load i32, i32* %snapped, align 4
  %or92 = or i32 %71, %call91
  store i32 %or92, i32* %snapped, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.86, %if.end.84
  %72 = load i32, i32* %snapped, align 4
  store i32 %72, i32* %retval
  br label %return

return:                                           ; preds = %if.end.93, %if.then.36, %if.then.29, %if.else.14, %if.else.9
  %73 = load i32, i32* %retval
  ret i32 %73
}

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_image_snap_point(%struct._GimpImage* %image, double %x, double %y, double* %tx, double* %ty, double %epsilon_x, double %epsilon_y, i32 %snap_to_guides, i32 %snap_to_grid, i32 %snap_to_canvas, i32 %snap_to_vectors) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %tx.addr = alloca double*, align 8
  %ty.addr = alloca double*, align 8
  %epsilon_x.addr = alloca double, align 8
  %epsilon_y.addr = alloca double, align 8
  %snap_to_guides.addr = alloca i32, align 4
  %snap_to_grid.addr = alloca i32, align 4
  %snap_to_canvas.addr = alloca i32, align 4
  %snap_to_vectors.addr = alloca i32, align 4
  %mindist_x = alloca double, align 8
  %mindist_y = alloca double, align 8
  %snapped = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %guide = alloca %struct._GimpGuide*, align 8
  %position = alloca i32, align 4
  %grid = alloca %struct._GimpGrid*, align 8
  %xspacing = alloca double, align 8
  %yspacing = alloca double, align 8
  %xoffset = alloca double, align 8
  %yoffset = alloca double, align 8
  %i = alloca double, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %coords = alloca %struct._GimpCoords, align 8
  %nearest = alloca %struct._GimpCoords, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double* %tx, double** %tx.addr, align 8
  store double* %ty, double** %ty.addr, align 8
  store double %epsilon_x, double* %epsilon_x.addr, align 8
  store double %epsilon_y, double* %epsilon_y.addr, align 8
  store i32 %snap_to_guides, i32* %snap_to_guides.addr, align 4
  store i32 %snap_to_grid, i32* %snap_to_grid.addr, align 4
  store i32 %snap_to_canvas, i32* %snap_to_canvas.addr, align 4
  store i32 %snap_to_vectors, i32* %snap_to_vectors.addr, align 4
  store double 0x7FEFFFFFFFFFFFFF, double* %mindist_x, align 8
  store double 0x7FEFFFFFFFFFFFFF, double* %mindist_y, align 8
  store i32 0, i32* %snapped, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_snap_point, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load double*, double** %tx.addr, align 8
  %cmp12 = icmp ne double* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_snap_point, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load double*, double** %ty.addr, align 8
  %cmp18 = icmp ne double* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_snap_point, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load double, double* %x.addr, align 8
  %16 = load double*, double** %tx.addr, align 8
  store double %15, double* %16, align 8
  %17 = load double, double* %y.addr, align 8
  %18 = load double*, double** %ty.addr, align 8
  store double %17, double* %18, align 8
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call23 = call %struct._GList* @gimp_image_get_guides(%struct._GimpImage* %19)
  %tobool24 = icmp ne %struct._GList* %call23, null
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %do.end.22
  store i32 0, i32* %snap_to_guides.addr, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %do.end.22
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call27 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %20)
  %tobool28 = icmp ne %struct._GimpGrid* %call27, null
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.end.26
  store i32 0, i32* %snap_to_grid.addr, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.26
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call31 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %21)
  %tobool32 = icmp ne %struct._GimpVectors* %call31, null
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.end.30
  store i32 0, i32* %snap_to_vectors.addr, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.30
  %22 = load i32, i32* %snap_to_guides.addr, align 4
  %tobool35 = icmp ne i32 %22, 0
  br i1 %tobool35, label %if.end.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.34
  %23 = load i32, i32* %snap_to_grid.addr, align 4
  %tobool36 = icmp ne i32 %23, 0
  br i1 %tobool36, label %if.end.42, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false
  %24 = load i32, i32* %snap_to_canvas.addr, align 4
  %tobool38 = icmp ne i32 %24, 0
  br i1 %tobool38, label %if.end.42, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.37
  %25 = load i32, i32* %snap_to_vectors.addr, align 4
  %tobool40 = icmp ne i32 %25, 0
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %lor.lhs.false.39
  store i32 0, i32* %retval
  br label %return

if.end.42:                                        ; preds = %lor.lhs.false.39, %lor.lhs.false.37, %lor.lhs.false, %if.end.34
  %26 = load double, double* %x.addr, align 8
  %27 = load double, double* %epsilon_x.addr, align 8
  %sub = fsub double -0.000000e+00, %27
  %cmp43 = fcmp olt double %26, %sub
  br i1 %cmp43, label %if.then.58, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.end.42
  %28 = load double, double* %x.addr, align 8
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call45 = call i32 @gimp_image_get_width(%struct._GimpImage* %29)
  %conv = sitofp i32 %call45 to double
  %30 = load double, double* %epsilon_x.addr, align 8
  %add = fadd double %conv, %30
  %cmp46 = fcmp oge double %28, %add
  br i1 %cmp46, label %if.then.58, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.44
  %31 = load double, double* %y.addr, align 8
  %32 = load double, double* %epsilon_y.addr, align 8
  %sub49 = fsub double -0.000000e+00, %32
  %cmp50 = fcmp olt double %31, %sub49
  br i1 %cmp50, label %if.then.58, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %lor.lhs.false.48
  %33 = load double, double* %y.addr, align 8
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call53 = call i32 @gimp_image_get_height(%struct._GimpImage* %34)
  %conv54 = sitofp i32 %call53 to double
  %35 = load double, double* %epsilon_y.addr, align 8
  %add55 = fadd double %conv54, %35
  %cmp56 = fcmp oge double %33, %add55
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %lor.lhs.false.52, %lor.lhs.false.48, %lor.lhs.false.44, %if.end.42
  store i32 0, i32* %retval
  br label %return

if.end.59:                                        ; preds = %lor.lhs.false.52
  %36 = load i32, i32* %snap_to_guides.addr, align 4
  %tobool60 = icmp ne i32 %36, 0
  br i1 %tobool60, label %if.then.61, label %if.end.80

if.then.61:                                       ; preds = %if.end.59
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call63 = call %struct._GList* @gimp_image_get_guides(%struct._GimpImage* %37)
  store %struct._GList* %call63, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.61
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool64 = icmp ne %struct._GList* %38, null
  br i1 %tobool64, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %39, i32 0, i32 0
  %40 = load i8*, i8** %data, align 8
  %41 = bitcast i8* %40 to %struct._GimpGuide*
  store %struct._GimpGuide* %41, %struct._GimpGuide** %guide, align 8
  %42 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call67 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %42)
  store i32 %call67, i32* %position, align 4
  %43 = load i32, i32* %position, align 4
  %cmp68 = icmp slt i32 %43, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %for.body
  br label %for.inc

if.end.71:                                        ; preds = %for.body
  %44 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call72 = call i32 @gimp_guide_get_orientation(%struct._GimpGuide* %44)
  switch i32 %call72, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.75
  ]

sw.bb:                                            ; preds = %if.end.71
  %45 = load double, double* %y.addr, align 8
  %46 = load i32, i32* %position, align 4
  %conv73 = sitofp i32 %46 to double
  %47 = load double, double* %epsilon_y.addr, align 8
  %48 = load double*, double** %ty.addr, align 8
  %call74 = call i32 @gimp_image_snap_distance(double %45, double %conv73, double %47, double* %mindist_y, double* %48)
  %49 = load i32, i32* %snapped, align 4
  %or = or i32 %49, %call74
  store i32 %or, i32* %snapped, align 4
  br label %sw.epilog

sw.bb.75:                                         ; preds = %if.end.71
  %50 = load double, double* %x.addr, align 8
  %51 = load i32, i32* %position, align 4
  %conv76 = sitofp i32 %51 to double
  %52 = load double, double* %epsilon_x.addr, align 8
  %53 = load double*, double** %tx.addr, align 8
  %call77 = call i32 @gimp_image_snap_distance(double %50, double %conv76, double %52, double* %mindist_x, double* %53)
  %54 = load i32, i32* %snapped, align 4
  %or78 = or i32 %54, %call77
  store i32 %or78, i32* %snapped, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.71
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.75, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %if.then.70
  %55 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool79 = icmp ne %struct._GList* %55, null
  br i1 %tobool79, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %56 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %56, i32 0, i32 1
  %57 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %57, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.80

if.end.80:                                        ; preds = %for.end, %if.end.59
  %58 = load i32, i32* %snap_to_grid.addr, align 4
  %tobool81 = icmp ne i32 %58, 0
  br i1 %tobool81, label %if.then.82, label %if.end.129

if.then.82:                                       ; preds = %if.end.80
  %59 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call84 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %59)
  store %struct._GimpGrid* %call84, %struct._GimpGrid** %grid, align 8
  %60 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  call void @gimp_grid_get_spacing(%struct._GimpGrid* %60, double* %xspacing, double* %yspacing)
  %61 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  call void @gimp_grid_get_offset(%struct._GimpGrid* %61, double* %xoffset, double* %yoffset)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.82
  %62 = load double, double* %xoffset, align 8
  %63 = load double, double* %xspacing, align 8
  %cmp90 = fcmp ogt double %62, %63
  br i1 %cmp90, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %64 = load double, double* %xspacing, align 8
  %65 = load double, double* %xoffset, align 8
  %sub92 = fsub double %65, %64
  store double %sub92, double* %xoffset, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.93

while.cond.93:                                    ; preds = %while.body.96, %while.end
  %66 = load double, double* %yoffset, align 8
  %67 = load double, double* %yspacing, align 8
  %cmp94 = fcmp ogt double %66, %67
  br i1 %cmp94, label %while.body.96, label %while.end.98

while.body.96:                                    ; preds = %while.cond.93
  %68 = load double, double* %yspacing, align 8
  %69 = load double, double* %yoffset, align 8
  %sub97 = fsub double %69, %68
  store double %sub97, double* %yoffset, align 8
  br label %while.cond.93

while.end.98:                                     ; preds = %while.cond.93
  %70 = load double, double* %xoffset, align 8
  store double %70, double* %i, align 8
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.111, %while.end.98
  %71 = load double, double* %i, align 8
  %72 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call100 = call i32 @gimp_image_get_width(%struct._GimpImage* %72)
  %conv101 = sitofp i32 %call100 to double
  %cmp102 = fcmp ole double %71, %conv101
  br i1 %cmp102, label %for.body.104, label %for.end.113

for.body.104:                                     ; preds = %for.cond.99
  %73 = load double, double* %i, align 8
  %cmp105 = fcmp olt double %73, 0.000000e+00
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %for.body.104
  br label %for.inc.111

if.end.108:                                       ; preds = %for.body.104
  %74 = load double, double* %x.addr, align 8
  %75 = load double, double* %i, align 8
  %76 = load double, double* %epsilon_x.addr, align 8
  %77 = load double*, double** %tx.addr, align 8
  %call109 = call i32 @gimp_image_snap_distance(double %74, double %75, double %76, double* %mindist_x, double* %77)
  %78 = load i32, i32* %snapped, align 4
  %or110 = or i32 %78, %call109
  store i32 %or110, i32* %snapped, align 4
  br label %for.inc.111

for.inc.111:                                      ; preds = %if.end.108, %if.then.107
  %79 = load double, double* %xspacing, align 8
  %80 = load double, double* %i, align 8
  %add112 = fadd double %80, %79
  store double %add112, double* %i, align 8
  br label %for.cond.99

for.end.113:                                      ; preds = %for.cond.99
  %81 = load double, double* %yoffset, align 8
  store double %81, double* %i, align 8
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.126, %for.end.113
  %82 = load double, double* %i, align 8
  %83 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call115 = call i32 @gimp_image_get_height(%struct._GimpImage* %83)
  %conv116 = sitofp i32 %call115 to double
  %cmp117 = fcmp ole double %82, %conv116
  br i1 %cmp117, label %for.body.119, label %for.end.128

for.body.119:                                     ; preds = %for.cond.114
  %84 = load double, double* %i, align 8
  %cmp120 = fcmp olt double %84, 0.000000e+00
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %for.body.119
  br label %for.inc.126

if.end.123:                                       ; preds = %for.body.119
  %85 = load double, double* %y.addr, align 8
  %86 = load double, double* %i, align 8
  %87 = load double, double* %epsilon_y.addr, align 8
  %88 = load double*, double** %ty.addr, align 8
  %call124 = call i32 @gimp_image_snap_distance(double %85, double %86, double %87, double* %mindist_y, double* %88)
  %89 = load i32, i32* %snapped, align 4
  %or125 = or i32 %89, %call124
  store i32 %or125, i32* %snapped, align 4
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.123, %if.then.122
  %90 = load double, double* %yspacing, align 8
  %91 = load double, double* %i, align 8
  %add127 = fadd double %91, %90
  store double %add127, double* %i, align 8
  br label %for.cond.114

for.end.128:                                      ; preds = %for.cond.114
  br label %if.end.129

if.end.129:                                       ; preds = %for.end.128, %if.end.80
  %92 = load i32, i32* %snap_to_canvas.addr, align 4
  %tobool130 = icmp ne i32 %92, 0
  br i1 %tobool130, label %if.then.131, label %if.end.144

if.then.131:                                      ; preds = %if.end.129
  %93 = load double, double* %x.addr, align 8
  %94 = load double, double* %epsilon_x.addr, align 8
  %95 = load double*, double** %tx.addr, align 8
  %call132 = call i32 @gimp_image_snap_distance(double %93, double 0.000000e+00, double %94, double* %mindist_x, double* %95)
  %96 = load i32, i32* %snapped, align 4
  %or133 = or i32 %96, %call132
  store i32 %or133, i32* %snapped, align 4
  %97 = load double, double* %x.addr, align 8
  %98 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call134 = call i32 @gimp_image_get_width(%struct._GimpImage* %98)
  %conv135 = sitofp i32 %call134 to double
  %99 = load double, double* %epsilon_x.addr, align 8
  %100 = load double*, double** %tx.addr, align 8
  %call136 = call i32 @gimp_image_snap_distance(double %97, double %conv135, double %99, double* %mindist_x, double* %100)
  %101 = load i32, i32* %snapped, align 4
  %or137 = or i32 %101, %call136
  store i32 %or137, i32* %snapped, align 4
  %102 = load double, double* %y.addr, align 8
  %103 = load double, double* %epsilon_y.addr, align 8
  %104 = load double*, double** %ty.addr, align 8
  %call138 = call i32 @gimp_image_snap_distance(double %102, double 0.000000e+00, double %103, double* %mindist_y, double* %104)
  %105 = load i32, i32* %snapped, align 4
  %or139 = or i32 %105, %call138
  store i32 %or139, i32* %snapped, align 4
  %106 = load double, double* %y.addr, align 8
  %107 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call140 = call i32 @gimp_image_get_height(%struct._GimpImage* %107)
  %conv141 = sitofp i32 %call140 to double
  %108 = load double, double* %epsilon_y.addr, align 8
  %109 = load double*, double** %ty.addr, align 8
  %call142 = call i32 @gimp_image_snap_distance(double %106, double %conv141, double %108, double* %mindist_y, double* %109)
  %110 = load i32, i32* %snapped, align 4
  %or143 = or i32 %110, %call142
  store i32 %or143, i32* %snapped, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.131, %if.end.129
  %111 = load i32, i32* %snap_to_vectors.addr, align 4
  %tobool145 = icmp ne i32 %111, 0
  br i1 %tobool145, label %if.then.146, label %if.end.170

if.then.146:                                      ; preds = %if.end.144
  %112 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call148 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %112)
  store %struct._GimpVectors* %call148, %struct._GimpVectors** %vectors, align 8
  store %struct._GimpStroke* null, %struct._GimpStroke** %stroke, align 8
  %113 = bitcast %struct._GimpCoords* %coords to i8*
  call void @llvm.memset.p0i8.i64(i8* %113, i8 0, i64 64, i32 8, i1 false)
  %114 = load double, double* %x.addr, align 8
  %x151 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 0
  store double %114, double* %x151, align 8
  %115 = load double, double* %y.addr, align 8
  %y152 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 1
  store double %115, double* %y152, align 8
  br label %while.cond.153

while.cond.153:                                   ; preds = %if.end.168, %if.then.146
  %116 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %117 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call154 = call %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %116, %struct._GimpStroke* %117)
  store %struct._GimpStroke* %call154, %struct._GimpStroke** %stroke, align 8
  %tobool155 = icmp ne %struct._GimpStroke* %call154, null
  br i1 %tobool155, label %while.body.156, label %while.end.169

while.body.156:                                   ; preds = %while.cond.153
  %118 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call158 = call double @gimp_stroke_nearest_point_get(%struct._GimpStroke* %118, %struct._GimpCoords* %coords, double 1.000000e+00, %struct._GimpCoords* %nearest, %struct._GimpAnchor** null, %struct._GimpAnchor** null, double* null)
  %cmp159 = fcmp oge double %call158, 0.000000e+00
  br i1 %cmp159, label %if.then.161, label %if.end.168

if.then.161:                                      ; preds = %while.body.156
  %119 = load double, double* %x.addr, align 8
  %x162 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 0
  %120 = load double, double* %x162, align 8
  %121 = load double, double* %epsilon_x.addr, align 8
  %122 = load double*, double** %tx.addr, align 8
  %call163 = call i32 @gimp_image_snap_distance(double %119, double %120, double %121, double* %mindist_x, double* %122)
  %123 = load i32, i32* %snapped, align 4
  %or164 = or i32 %123, %call163
  store i32 %or164, i32* %snapped, align 4
  %124 = load double, double* %y.addr, align 8
  %y165 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 1
  %125 = load double, double* %y165, align 8
  %126 = load double, double* %epsilon_y.addr, align 8
  %127 = load double*, double** %ty.addr, align 8
  %call166 = call i32 @gimp_image_snap_distance(double %124, double %125, double %126, double* %mindist_y, double* %127)
  %128 = load i32, i32* %snapped, align 4
  %or167 = or i32 %128, %call166
  store i32 %or167, i32* %snapped, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.161, %while.body.156
  br label %while.cond.153

while.end.169:                                    ; preds = %while.cond.153
  br label %if.end.170

if.end.170:                                       ; preds = %while.end.169, %if.end.144
  %129 = load i32, i32* %snapped, align 4
  store i32 %129, i32* %retval
  br label %return

return:                                           ; preds = %if.end.170, %if.then.58, %if.then.41, %if.else.20, %if.else.14, %if.else.9
  %130 = load i32, i32* %retval
  ret i32 %130
}

declare %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors*, %struct._GimpStroke*) #3

declare double @gimp_stroke_nearest_point_get(%struct._GimpStroke*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_image_snap_rectangle(%struct._GimpImage* %image, double %x1, double %y1, double %x2, double %y2, double* %tx1, double* %ty1, double %epsilon_x, double %epsilon_y, i32 %snap_to_guides, i32 %snap_to_grid, i32 %snap_to_canvas, i32 %snap_to_vectors) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %tx1.addr = alloca double*, align 8
  %ty1.addr = alloca double*, align 8
  %epsilon_x.addr = alloca double, align 8
  %epsilon_y.addr = alloca double, align 8
  %snap_to_guides.addr = alloca i32, align 4
  %snap_to_grid.addr = alloca i32, align 4
  %snap_to_canvas.addr = alloca i32, align 4
  %snap_to_vectors.addr = alloca i32, align 4
  %nx = alloca double, align 8
  %ny = alloca double, align 8
  %mindist_x = alloca double, align 8
  %mindist_y = alloca double, align 8
  %x_center = alloca double, align 8
  %y_center = alloca double, align 8
  %snapped = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %coords1 = alloca %struct._GimpCoords, align 8
  %coords2 = alloca %struct._GimpCoords, align 8
  %nearest = alloca %struct._GimpCoords, align 8
  %dist = alloca double, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  store double* %tx1, double** %tx1.addr, align 8
  store double* %ty1, double** %ty1.addr, align 8
  store double %epsilon_x, double* %epsilon_x.addr, align 8
  store double %epsilon_y, double* %epsilon_y.addr, align 8
  store i32 %snap_to_guides, i32* %snap_to_guides.addr, align 4
  store i32 %snap_to_grid, i32* %snap_to_grid.addr, align 4
  store i32 %snap_to_canvas, i32* %snap_to_canvas.addr, align 4
  store i32 %snap_to_vectors, i32* %snap_to_vectors.addr, align 4
  store double 0x7FEFFFFFFFFFFFFF, double* %mindist_x, align 8
  store double 0x7FEFFFFFFFFFFFFF, double* %mindist_y, align 8
  %0 = load double, double* %x1.addr, align 8
  %1 = load double, double* %x2.addr, align 8
  %add = fadd double %0, %1
  %div = fdiv double %add, 2.000000e+00
  store double %div, double* %x_center, align 8
  %2 = load double, double* %y1.addr, align 8
  %3 = load double, double* %y2.addr, align 8
  %add1 = fadd double %2, %3
  %div2 = fdiv double %add1, 2.000000e+00
  store double %div2, double* %y_center, align 8
  store i32 0, i32* %snapped, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %5 = bitcast %struct._GimpImage* %4 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %5, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
  store i64 %call, i64* %__t, align 8
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool3 = icmp ne %struct._GTypeClass* %8, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %12 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %11, %12
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %14 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %13, i64 %14) #6
  store i32 %call7, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %15 = load i32, i32* %__r, align 4
  store i32 %15, i32* %tmp
  %16 = load i32, i32* %tmp
  %tobool9 = icmp ne i32 %16, 0
  br i1 %tobool9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end.8
  br label %if.end.12

if.else.11:                                       ; preds = %if.end.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_image_snap_rectangle, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.12
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %17 = load double*, double** %tx1.addr, align 8
  %cmp14 = icmp ne double* %17, null
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_image_snap_rectangle, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %18 = load double*, double** %ty1.addr, align 8
  %cmp20 = icmp ne double* %18, null
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.19
  br label %if.end.23

if.else.22:                                       ; preds = %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_image_snap_rectangle, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %19 = load double, double* %x1.addr, align 8
  %20 = load double*, double** %tx1.addr, align 8
  store double %19, double* %20, align 8
  %21 = load double, double* %y1.addr, align 8
  %22 = load double*, double** %ty1.addr, align 8
  store double %21, double* %22, align 8
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call25 = call %struct._GList* @gimp_image_get_guides(%struct._GimpImage* %23)
  %tobool26 = icmp ne %struct._GList* %call25, null
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %do.end.24
  store i32 0, i32* %snap_to_guides.addr, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %do.end.24
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call29 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %24)
  %tobool30 = icmp ne %struct._GimpGrid* %call29, null
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.end.28
  store i32 0, i32* %snap_to_grid.addr, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.28
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call33 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %25)
  %tobool34 = icmp ne %struct._GimpVectors* %call33, null
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.end.32
  store i32 0, i32* %snap_to_vectors.addr, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.32
  %26 = load i32, i32* %snap_to_guides.addr, align 4
  %tobool37 = icmp ne i32 %26, 0
  br i1 %tobool37, label %if.end.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.36
  %27 = load i32, i32* %snap_to_grid.addr, align 4
  %tobool38 = icmp ne i32 %27, 0
  br i1 %tobool38, label %if.end.44, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false
  %28 = load i32, i32* %snap_to_canvas.addr, align 4
  %tobool40 = icmp ne i32 %28, 0
  br i1 %tobool40, label %if.end.44, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false.39
  %29 = load i32, i32* %snap_to_vectors.addr, align 4
  %tobool42 = icmp ne i32 %29, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %lor.lhs.false.41
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %lor.lhs.false.41, %lor.lhs.false.39, %lor.lhs.false, %if.end.36
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %31 = load double, double* %x1.addr, align 8
  %32 = load double, double* %epsilon_x.addr, align 8
  %33 = load double, double* %mindist_x, align 8
  %cmp45 = fcmp olt double %32, %33
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.44
  %34 = load double, double* %epsilon_x.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.44
  %35 = load double, double* %mindist_x, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %34, %cond.true ], [ %35, %cond.false ]
  %36 = load i32, i32* %snap_to_guides.addr, align 4
  %37 = load i32, i32* %snap_to_grid.addr, align 4
  %38 = load i32, i32* %snap_to_canvas.addr, align 4
  %call46 = call i32 @gimp_image_snap_x(%struct._GimpImage* %30, double %31, double* %nx, double %cond, i32 %36, i32 %37, i32 %38)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.57

if.then.48:                                       ; preds = %cond.end
  %39 = load double, double* %nx, align 8
  %40 = load double, double* %x1.addr, align 8
  %sub = fsub double %39, %40
  %cmp49 = fcmp olt double %sub, 0.000000e+00
  br i1 %cmp49, label %cond.true.50, label %cond.false.53

cond.true.50:                                     ; preds = %if.then.48
  %41 = load double, double* %nx, align 8
  %42 = load double, double* %x1.addr, align 8
  %sub51 = fsub double %41, %42
  %sub52 = fsub double -0.000000e+00, %sub51
  br label %cond.end.55

cond.false.53:                                    ; preds = %if.then.48
  %43 = load double, double* %nx, align 8
  %44 = load double, double* %x1.addr, align 8
  %sub54 = fsub double %43, %44
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.53, %cond.true.50
  %cond56 = phi double [ %sub52, %cond.true.50 ], [ %sub54, %cond.false.53 ]
  store double %cond56, double* %mindist_x, align 8
  %45 = load double, double* %nx, align 8
  %46 = load double*, double** %tx1.addr, align 8
  store double %45, double* %46, align 8
  store i32 1, i32* %snapped, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %cond.end.55, %cond.end
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %48 = load double, double* %x2.addr, align 8
  %49 = load double, double* %epsilon_x.addr, align 8
  %50 = load double, double* %mindist_x, align 8
  %cmp58 = fcmp olt double %49, %50
  br i1 %cmp58, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %if.end.57
  %51 = load double, double* %epsilon_x.addr, align 8
  br label %cond.end.61

cond.false.60:                                    ; preds = %if.end.57
  %52 = load double, double* %mindist_x, align 8
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.60, %cond.true.59
  %cond62 = phi double [ %51, %cond.true.59 ], [ %52, %cond.false.60 ]
  %53 = load i32, i32* %snap_to_guides.addr, align 4
  %54 = load i32, i32* %snap_to_grid.addr, align 4
  %55 = load i32, i32* %snap_to_canvas.addr, align 4
  %call63 = call i32 @gimp_image_snap_x(%struct._GimpImage* %47, double %48, double* %nx, double %cond62, i32 %53, i32 %54, i32 %55)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.78

if.then.65:                                       ; preds = %cond.end.61
  %56 = load double, double* %nx, align 8
  %57 = load double, double* %x2.addr, align 8
  %sub66 = fsub double %56, %57
  %cmp67 = fcmp olt double %sub66, 0.000000e+00
  br i1 %cmp67, label %cond.true.68, label %cond.false.71

cond.true.68:                                     ; preds = %if.then.65
  %58 = load double, double* %nx, align 8
  %59 = load double, double* %x2.addr, align 8
  %sub69 = fsub double %58, %59
  %sub70 = fsub double -0.000000e+00, %sub69
  br label %cond.end.73

cond.false.71:                                    ; preds = %if.then.65
  %60 = load double, double* %nx, align 8
  %61 = load double, double* %x2.addr, align 8
  %sub72 = fsub double %60, %61
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.71, %cond.true.68
  %cond74 = phi double [ %sub70, %cond.true.68 ], [ %sub72, %cond.false.71 ]
  store double %cond74, double* %mindist_x, align 8
  %62 = load double, double* %x1.addr, align 8
  %63 = load double, double* %nx, align 8
  %64 = load double, double* %x2.addr, align 8
  %sub75 = fsub double %63, %64
  %add76 = fadd double %62, %sub75
  %call77 = call double @rint(double %add76) #5
  %65 = load double*, double** %tx1.addr, align 8
  store double %call77, double* %65, align 8
  store i32 1, i32* %snapped, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %cond.end.73, %cond.end.61
  %66 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %67 = load double, double* %x_center, align 8
  %68 = load double, double* %epsilon_x.addr, align 8
  %69 = load double, double* %mindist_x, align 8
  %cmp79 = fcmp olt double %68, %69
  br i1 %cmp79, label %cond.true.80, label %cond.false.81

cond.true.80:                                     ; preds = %if.end.78
  %70 = load double, double* %epsilon_x.addr, align 8
  br label %cond.end.82

cond.false.81:                                    ; preds = %if.end.78
  %71 = load double, double* %mindist_x, align 8
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.81, %cond.true.80
  %cond83 = phi double [ %70, %cond.true.80 ], [ %71, %cond.false.81 ]
  %72 = load i32, i32* %snap_to_guides.addr, align 4
  %73 = load i32, i32* %snap_to_grid.addr, align 4
  %74 = load i32, i32* %snap_to_canvas.addr, align 4
  %call84 = call i32 @gimp_image_snap_x(%struct._GimpImage* %66, double %67, double* %nx, double %cond83, i32 %72, i32 %73, i32 %74)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.99

if.then.86:                                       ; preds = %cond.end.82
  %75 = load double, double* %nx, align 8
  %76 = load double, double* %x_center, align 8
  %sub87 = fsub double %75, %76
  %cmp88 = fcmp olt double %sub87, 0.000000e+00
  br i1 %cmp88, label %cond.true.89, label %cond.false.92

cond.true.89:                                     ; preds = %if.then.86
  %77 = load double, double* %nx, align 8
  %78 = load double, double* %x_center, align 8
  %sub90 = fsub double %77, %78
  %sub91 = fsub double -0.000000e+00, %sub90
  br label %cond.end.94

cond.false.92:                                    ; preds = %if.then.86
  %79 = load double, double* %nx, align 8
  %80 = load double, double* %x_center, align 8
  %sub93 = fsub double %79, %80
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.92, %cond.true.89
  %cond95 = phi double [ %sub91, %cond.true.89 ], [ %sub93, %cond.false.92 ]
  store double %cond95, double* %mindist_x, align 8
  %81 = load double, double* %x1.addr, align 8
  %82 = load double, double* %nx, align 8
  %83 = load double, double* %x_center, align 8
  %sub96 = fsub double %82, %83
  %add97 = fadd double %81, %sub96
  %call98 = call double @rint(double %add97) #5
  %84 = load double*, double** %tx1.addr, align 8
  store double %call98, double* %84, align 8
  store i32 1, i32* %snapped, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %cond.end.94, %cond.end.82
  %85 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %86 = load double, double* %y1.addr, align 8
  %87 = load double, double* %epsilon_y.addr, align 8
  %88 = load double, double* %mindist_y, align 8
  %cmp100 = fcmp olt double %87, %88
  br i1 %cmp100, label %cond.true.101, label %cond.false.102

cond.true.101:                                    ; preds = %if.end.99
  %89 = load double, double* %epsilon_y.addr, align 8
  br label %cond.end.103

cond.false.102:                                   ; preds = %if.end.99
  %90 = load double, double* %mindist_y, align 8
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.102, %cond.true.101
  %cond104 = phi double [ %89, %cond.true.101 ], [ %90, %cond.false.102 ]
  %91 = load i32, i32* %snap_to_guides.addr, align 4
  %92 = load i32, i32* %snap_to_grid.addr, align 4
  %93 = load i32, i32* %snap_to_canvas.addr, align 4
  %call105 = call i32 @gimp_image_snap_y(%struct._GimpImage* %85, double %86, double* %ny, double %cond104, i32 %91, i32 %92, i32 %93)
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.then.107, label %if.end.117

if.then.107:                                      ; preds = %cond.end.103
  %94 = load double, double* %ny, align 8
  %95 = load double, double* %y1.addr, align 8
  %sub108 = fsub double %94, %95
  %cmp109 = fcmp olt double %sub108, 0.000000e+00
  br i1 %cmp109, label %cond.true.110, label %cond.false.113

cond.true.110:                                    ; preds = %if.then.107
  %96 = load double, double* %ny, align 8
  %97 = load double, double* %y1.addr, align 8
  %sub111 = fsub double %96, %97
  %sub112 = fsub double -0.000000e+00, %sub111
  br label %cond.end.115

cond.false.113:                                   ; preds = %if.then.107
  %98 = load double, double* %ny, align 8
  %99 = load double, double* %y1.addr, align 8
  %sub114 = fsub double %98, %99
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.113, %cond.true.110
  %cond116 = phi double [ %sub112, %cond.true.110 ], [ %sub114, %cond.false.113 ]
  store double %cond116, double* %mindist_y, align 8
  %100 = load double, double* %ny, align 8
  %101 = load double*, double** %ty1.addr, align 8
  store double %100, double* %101, align 8
  store i32 1, i32* %snapped, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %cond.end.115, %cond.end.103
  %102 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %103 = load double, double* %y2.addr, align 8
  %104 = load double, double* %epsilon_y.addr, align 8
  %105 = load double, double* %mindist_y, align 8
  %cmp118 = fcmp olt double %104, %105
  br i1 %cmp118, label %cond.true.119, label %cond.false.120

cond.true.119:                                    ; preds = %if.end.117
  %106 = load double, double* %epsilon_y.addr, align 8
  br label %cond.end.121

cond.false.120:                                   ; preds = %if.end.117
  %107 = load double, double* %mindist_y, align 8
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.120, %cond.true.119
  %cond122 = phi double [ %106, %cond.true.119 ], [ %107, %cond.false.120 ]
  %108 = load i32, i32* %snap_to_guides.addr, align 4
  %109 = load i32, i32* %snap_to_grid.addr, align 4
  %110 = load i32, i32* %snap_to_canvas.addr, align 4
  %call123 = call i32 @gimp_image_snap_y(%struct._GimpImage* %102, double %103, double* %ny, double %cond122, i32 %108, i32 %109, i32 %110)
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.then.125, label %if.end.138

if.then.125:                                      ; preds = %cond.end.121
  %111 = load double, double* %ny, align 8
  %112 = load double, double* %y2.addr, align 8
  %sub126 = fsub double %111, %112
  %cmp127 = fcmp olt double %sub126, 0.000000e+00
  br i1 %cmp127, label %cond.true.128, label %cond.false.131

cond.true.128:                                    ; preds = %if.then.125
  %113 = load double, double* %ny, align 8
  %114 = load double, double* %y2.addr, align 8
  %sub129 = fsub double %113, %114
  %sub130 = fsub double -0.000000e+00, %sub129
  br label %cond.end.133

cond.false.131:                                   ; preds = %if.then.125
  %115 = load double, double* %ny, align 8
  %116 = load double, double* %y2.addr, align 8
  %sub132 = fsub double %115, %116
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.131, %cond.true.128
  %cond134 = phi double [ %sub130, %cond.true.128 ], [ %sub132, %cond.false.131 ]
  store double %cond134, double* %mindist_y, align 8
  %117 = load double, double* %y1.addr, align 8
  %118 = load double, double* %ny, align 8
  %119 = load double, double* %y2.addr, align 8
  %sub135 = fsub double %118, %119
  %add136 = fadd double %117, %sub135
  %call137 = call double @rint(double %add136) #5
  %120 = load double*, double** %ty1.addr, align 8
  store double %call137, double* %120, align 8
  store i32 1, i32* %snapped, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %cond.end.133, %cond.end.121
  %121 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %122 = load double, double* %y_center, align 8
  %123 = load double, double* %epsilon_y.addr, align 8
  %124 = load double, double* %mindist_y, align 8
  %cmp139 = fcmp olt double %123, %124
  br i1 %cmp139, label %cond.true.140, label %cond.false.141

cond.true.140:                                    ; preds = %if.end.138
  %125 = load double, double* %epsilon_y.addr, align 8
  br label %cond.end.142

cond.false.141:                                   ; preds = %if.end.138
  %126 = load double, double* %mindist_y, align 8
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.141, %cond.true.140
  %cond143 = phi double [ %125, %cond.true.140 ], [ %126, %cond.false.141 ]
  %127 = load i32, i32* %snap_to_guides.addr, align 4
  %128 = load i32, i32* %snap_to_grid.addr, align 4
  %129 = load i32, i32* %snap_to_canvas.addr, align 4
  %call144 = call i32 @gimp_image_snap_y(%struct._GimpImage* %121, double %122, double* %ny, double %cond143, i32 %127, i32 %128, i32 %129)
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %if.then.146, label %if.end.159

if.then.146:                                      ; preds = %cond.end.142
  %130 = load double, double* %ny, align 8
  %131 = load double, double* %y_center, align 8
  %sub147 = fsub double %130, %131
  %cmp148 = fcmp olt double %sub147, 0.000000e+00
  br i1 %cmp148, label %cond.true.149, label %cond.false.152

cond.true.149:                                    ; preds = %if.then.146
  %132 = load double, double* %ny, align 8
  %133 = load double, double* %y_center, align 8
  %sub150 = fsub double %132, %133
  %sub151 = fsub double -0.000000e+00, %sub150
  br label %cond.end.154

cond.false.152:                                   ; preds = %if.then.146
  %134 = load double, double* %ny, align 8
  %135 = load double, double* %y_center, align 8
  %sub153 = fsub double %134, %135
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.false.152, %cond.true.149
  %cond155 = phi double [ %sub151, %cond.true.149 ], [ %sub153, %cond.false.152 ]
  store double %cond155, double* %mindist_y, align 8
  %136 = load double, double* %y1.addr, align 8
  %137 = load double, double* %ny, align 8
  %138 = load double, double* %y_center, align 8
  %sub156 = fsub double %137, %138
  %add157 = fadd double %136, %sub156
  %call158 = call double @rint(double %add157) #5
  %139 = load double*, double** %ty1.addr, align 8
  store double %call158, double* %139, align 8
  store i32 1, i32* %snapped, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %cond.end.154, %cond.end.142
  %140 = load i32, i32* %snap_to_vectors.addr, align 4
  %tobool160 = icmp ne i32 %140, 0
  br i1 %tobool160, label %if.then.161, label %if.end.434

if.then.161:                                      ; preds = %if.end.159
  %141 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call163 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %141)
  store %struct._GimpVectors* %call163, %struct._GimpVectors** %vectors, align 8
  store %struct._GimpStroke* null, %struct._GimpStroke** %stroke, align 8
  %142 = bitcast %struct._GimpCoords* %coords1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %142, i8 0, i64 64, i32 8, i1 false)
  %143 = bitcast i8* %142 to %struct._GimpCoords*
  %144 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %143, i32 0, i32 2
  store double 1.000000e+00, double* %144
  %145 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %143, i32 0, i32 5
  store double 5.000000e-01, double* %145
  %146 = bitcast %struct._GimpCoords* %coords2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %146, i8 0, i64 64, i32 8, i1 false)
  %147 = bitcast i8* %146 to %struct._GimpCoords*
  %148 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %147, i32 0, i32 2
  store double 1.000000e+00, double* %148
  %149 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %147, i32 0, i32 5
  store double 5.000000e-01, double* %149
  br label %while.cond

while.cond:                                       ; preds = %if.end.433, %if.then.161
  %150 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %151 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call167 = call %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %150, %struct._GimpStroke* %151)
  store %struct._GimpStroke* %call167, %struct._GimpStroke** %stroke, align 8
  %tobool168 = icmp ne %struct._GimpStroke* %call167, null
  br i1 %tobool168, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %152 = load double, double* %x1.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords1, i32 0, i32 0
  store double %152, double* %x, align 8
  %153 = load double, double* %y1.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords1, i32 0, i32 1
  store double %153, double* %y, align 8
  %154 = load double, double* %x2.addr, align 8
  %x171 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords2, i32 0, i32 0
  store double %154, double* %x171, align 8
  %155 = load double, double* %y1.addr, align 8
  %y172 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords2, i32 0, i32 1
  store double %155, double* %y172, align 8
  %156 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call173 = call double @gimp_stroke_nearest_tangent_get(%struct._GimpStroke* %156, %struct._GimpCoords* %coords1, %struct._GimpCoords* %coords2, double 1.000000e+00, %struct._GimpCoords* %nearest, %struct._GimpAnchor** null, %struct._GimpAnchor** null, double* null)
  %cmp174 = fcmp oge double %call173, 0.000000e+00
  br i1 %cmp174, label %if.then.175, label %if.end.178

if.then.175:                                      ; preds = %while.body
  %157 = load double, double* %y1.addr, align 8
  %y176 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 1
  %158 = load double, double* %y176, align 8
  %159 = load double, double* %epsilon_y.addr, align 8
  %160 = load double*, double** %ty1.addr, align 8
  %call177 = call i32 @gimp_image_snap_distance(double %157, double %158, double %159, double* %mindist_y, double* %160)
  %161 = load i32, i32* %snapped, align 4
  %or = or i32 %161, %call177
  store i32 %or, i32* %snapped, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.175, %while.body
  %162 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call179 = call double @gimp_stroke_nearest_intersection_get(%struct._GimpStroke* %162, %struct._GimpCoords* %coords1, %struct._GimpCoords* %coords2, double 1.000000e+00, %struct._GimpCoords* %nearest, %struct._GimpAnchor** null, %struct._GimpAnchor** null, double* null)
  %cmp180 = fcmp oge double %call179, 0.000000e+00
  br i1 %cmp180, label %if.then.181, label %if.end.185

if.then.181:                                      ; preds = %if.end.178
  %163 = load double, double* %x1.addr, align 8
  %x182 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 0
  %164 = load double, double* %x182, align 8
  %165 = load double, double* %epsilon_x.addr, align 8
  %166 = load double*, double** %tx1.addr, align 8
  %call183 = call i32 @gimp_image_snap_distance(double %163, double %164, double %165, double* %mindist_x, double* %166)
  %167 = load i32, i32* %snapped, align 4
  %or184 = or i32 %167, %call183
  store i32 %or184, i32* %snapped, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.181, %if.end.178
  %168 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call186 = call double @gimp_stroke_nearest_intersection_get(%struct._GimpStroke* %168, %struct._GimpCoords* %coords2, %struct._GimpCoords* %coords1, double 1.000000e+00, %struct._GimpCoords* %nearest, %struct._GimpAnchor** null, %struct._GimpAnchor** null, double* null)
  %cmp187 = fcmp oge double %call186, 0.000000e+00
  br i1 %cmp187, label %if.then.188, label %if.end.213

if.then.188:                                      ; preds = %if.end.185
  %x189 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 0
  %169 = load double, double* %x189, align 8
  %170 = load double, double* %x2.addr, align 8
  %sub190 = fsub double %169, %170
  %cmp191 = fcmp olt double %sub190, 0.000000e+00
  br i1 %cmp191, label %cond.true.192, label %cond.false.196

cond.true.192:                                    ; preds = %if.then.188
  %x193 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 0
  %171 = load double, double* %x193, align 8
  %172 = load double, double* %x2.addr, align 8
  %sub194 = fsub double %171, %172
  %sub195 = fsub double -0.000000e+00, %sub194
  br label %cond.end.199

cond.false.196:                                   ; preds = %if.then.188
  %x197 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 0
  %173 = load double, double* %x197, align 8
  %174 = load double, double* %x2.addr, align 8
  %sub198 = fsub double %173, %174
  br label %cond.end.199

cond.end.199:                                     ; preds = %cond.false.196, %cond.true.192
  %cond200 = phi double [ %sub195, %cond.true.192 ], [ %sub198, %cond.false.196 ]
  store double %cond200, double* %dist, align 8
  %175 = load double, double* %dist, align 8
  %176 = load double, double* %epsilon_x.addr, align 8
  %177 = load double, double* %mindist_x, align 8
  %cmp201 = fcmp olt double %176, %177
  br i1 %cmp201, label %cond.true.202, label %cond.false.203

cond.true.202:                                    ; preds = %cond.end.199
  %178 = load double, double* %epsilon_x.addr, align 8
  br label %cond.end.204

cond.false.203:                                   ; preds = %cond.end.199
  %179 = load double, double* %mindist_x, align 8
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.203, %cond.true.202
  %cond205 = phi double [ %178, %cond.true.202 ], [ %179, %cond.false.203 ]
  %cmp206 = fcmp olt double %175, %cond205
  br i1 %cmp206, label %if.then.207, label %if.end.212

if.then.207:                                      ; preds = %cond.end.204
  %180 = load double, double* %dist, align 8
  store double %180, double* %mindist_x, align 8
  %181 = load double, double* %x1.addr, align 8
  %x208 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 0
  %182 = load double, double* %x208, align 8
  %183 = load double, double* %x2.addr, align 8
  %sub209 = fsub double %182, %183
  %add210 = fadd double %181, %sub209
  %call211 = call double @rint(double %add210) #5
  %184 = load double*, double** %tx1.addr, align 8
  store double %call211, double* %184, align 8
  store i32 1, i32* %snapped, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.207, %cond.end.204
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.end.185
  %185 = load double, double* %x1.addr, align 8
  %x214 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords1, i32 0, i32 0
  store double %185, double* %x214, align 8
  %186 = load double, double* %y2.addr, align 8
  %y215 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords1, i32 0, i32 1
  store double %186, double* %y215, align 8
  %187 = load double, double* %x2.addr, align 8
  %x216 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords2, i32 0, i32 0
  store double %187, double* %x216, align 8
  %188 = load double, double* %y2.addr, align 8
  %y217 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords2, i32 0, i32 1
  store double %188, double* %y217, align 8
  %189 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call218 = call double @gimp_stroke_nearest_tangent_get(%struct._GimpStroke* %189, %struct._GimpCoords* %coords1, %struct._GimpCoords* %coords2, double 1.000000e+00, %struct._GimpCoords* %nearest, %struct._GimpAnchor** null, %struct._GimpAnchor** null, double* null)
  %cmp219 = fcmp oge double %call218, 0.000000e+00
  br i1 %cmp219, label %if.then.220, label %if.end.245

if.then.220:                                      ; preds = %if.end.213
  %y221 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 1
  %190 = load double, double* %y221, align 8
  %191 = load double, double* %y2.addr, align 8
  %sub222 = fsub double %190, %191
  %cmp223 = fcmp olt double %sub222, 0.000000e+00
  br i1 %cmp223, label %cond.true.224, label %cond.false.228

cond.true.224:                                    ; preds = %if.then.220
  %y225 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 1
  %192 = load double, double* %y225, align 8
  %193 = load double, double* %y2.addr, align 8
  %sub226 = fsub double %192, %193
  %sub227 = fsub double -0.000000e+00, %sub226
  br label %cond.end.231

cond.false.228:                                   ; preds = %if.then.220
  %y229 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 1
  %194 = load double, double* %y229, align 8
  %195 = load double, double* %y2.addr, align 8
  %sub230 = fsub double %194, %195
  br label %cond.end.231

cond.end.231:                                     ; preds = %cond.false.228, %cond.true.224
  %cond232 = phi double [ %sub227, %cond.true.224 ], [ %sub230, %cond.false.228 ]
  store double %cond232, double* %dist, align 8
  %196 = load double, double* %dist, align 8
  %197 = load double, double* %epsilon_y.addr, align 8
  %198 = load double, double* %mindist_y, align 8
  %cmp233 = fcmp olt double %197, %198
  br i1 %cmp233, label %cond.true.234, label %cond.false.235

cond.true.234:                                    ; preds = %cond.end.231
  %199 = load double, double* %epsilon_y.addr, align 8
  br label %cond.end.236

cond.false.235:                                   ; preds = %cond.end.231
  %200 = load double, double* %mindist_y, align 8
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.false.235, %cond.true.234
  %cond237 = phi double [ %199, %cond.true.234 ], [ %200, %cond.false.235 ]
  %cmp238 = fcmp olt double %196, %cond237
  br i1 %cmp238, label %if.then.239, label %if.end.244

if.then.239:                                      ; preds = %cond.end.236
  %201 = load double, double* %dist, align 8
  store double %201, double* %mindist_y, align 8
  %202 = load double, double* %y1.addr, align 8
  %y240 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 1
  %203 = load double, double* %y240, align 8
  %204 = load double, double* %y2.addr, align 8
  %sub241 = fsub double %203, %204
  %add242 = fadd double %202, %sub241
  %call243 = call double @rint(double %add242) #5
  %205 = load double*, double** %ty1.addr, align 8
  store double %call243, double* %205, align 8
  store i32 1, i32* %snapped, align 4
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.239, %cond.end.236
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %if.end.213
  %206 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call246 = call double @gimp_stroke_nearest_intersection_get(%struct._GimpStroke* %206, %struct._GimpCoords* %coords1, %struct._GimpCoords* %coords2, double 1.000000e+00, %struct._GimpCoords* %nearest, %struct._GimpAnchor** null, %struct._GimpAnchor** null, double* null)
  %cmp247 = fcmp oge double %call246, 0.000000e+00
  br i1 %cmp247, label %if.then.248, label %if.end.252

if.then.248:                                      ; preds = %if.end.245
  %207 = load double, double* %x1.addr, align 8
  %x249 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 0
  %208 = load double, double* %x249, align 8
  %209 = load double, double* %epsilon_x.addr, align 8
  %210 = load double*, double** %tx1.addr, align 8
  %call250 = call i32 @gimp_image_snap_distance(double %207, double %208, double %209, double* %mindist_x, double* %210)
  %211 = load i32, i32* %snapped, align 4
  %or251 = or i32 %211, %call250
  store i32 %or251, i32* %snapped, align 4
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.248, %if.end.245
  %212 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call253 = call double @gimp_stroke_nearest_intersection_get(%struct._GimpStroke* %212, %struct._GimpCoords* %coords2, %struct._GimpCoords* %coords1, double 1.000000e+00, %struct._GimpCoords* %nearest, %struct._GimpAnchor** null, %struct._GimpAnchor** null, double* null)
  %cmp254 = fcmp oge double %call253, 0.000000e+00
  br i1 %cmp254, label %if.then.255, label %if.end.280

if.then.255:                                      ; preds = %if.end.252
  %x256 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 0
  %213 = load double, double* %x256, align 8
  %214 = load double, double* %x2.addr, align 8
  %sub257 = fsub double %213, %214
  %cmp258 = fcmp olt double %sub257, 0.000000e+00
  br i1 %cmp258, label %cond.true.259, label %cond.false.263

cond.true.259:                                    ; preds = %if.then.255
  %x260 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 0
  %215 = load double, double* %x260, align 8
  %216 = load double, double* %x2.addr, align 8
  %sub261 = fsub double %215, %216
  %sub262 = fsub double -0.000000e+00, %sub261
  br label %cond.end.266

cond.false.263:                                   ; preds = %if.then.255
  %x264 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 0
  %217 = load double, double* %x264, align 8
  %218 = load double, double* %x2.addr, align 8
  %sub265 = fsub double %217, %218
  br label %cond.end.266

cond.end.266:                                     ; preds = %cond.false.263, %cond.true.259
  %cond267 = phi double [ %sub262, %cond.true.259 ], [ %sub265, %cond.false.263 ]
  store double %cond267, double* %dist, align 8
  %219 = load double, double* %dist, align 8
  %220 = load double, double* %epsilon_x.addr, align 8
  %221 = load double, double* %mindist_x, align 8
  %cmp268 = fcmp olt double %220, %221
  br i1 %cmp268, label %cond.true.269, label %cond.false.270

cond.true.269:                                    ; preds = %cond.end.266
  %222 = load double, double* %epsilon_x.addr, align 8
  br label %cond.end.271

cond.false.270:                                   ; preds = %cond.end.266
  %223 = load double, double* %mindist_x, align 8
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.false.270, %cond.true.269
  %cond272 = phi double [ %222, %cond.true.269 ], [ %223, %cond.false.270 ]
  %cmp273 = fcmp olt double %219, %cond272
  br i1 %cmp273, label %if.then.274, label %if.end.279

if.then.274:                                      ; preds = %cond.end.271
  %224 = load double, double* %dist, align 8
  store double %224, double* %mindist_x, align 8
  %225 = load double, double* %x1.addr, align 8
  %x275 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 0
  %226 = load double, double* %x275, align 8
  %227 = load double, double* %x2.addr, align 8
  %sub276 = fsub double %226, %227
  %add277 = fadd double %225, %sub276
  %call278 = call double @rint(double %add277) #5
  %228 = load double*, double** %tx1.addr, align 8
  store double %call278, double* %228, align 8
  store i32 1, i32* %snapped, align 4
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.274, %cond.end.271
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %if.end.252
  %229 = load double, double* %x1.addr, align 8
  %x281 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords1, i32 0, i32 0
  store double %229, double* %x281, align 8
  %230 = load double, double* %y1.addr, align 8
  %y282 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords1, i32 0, i32 1
  store double %230, double* %y282, align 8
  %231 = load double, double* %x1.addr, align 8
  %x283 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords2, i32 0, i32 0
  store double %231, double* %x283, align 8
  %232 = load double, double* %y2.addr, align 8
  %y284 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords2, i32 0, i32 1
  store double %232, double* %y284, align 8
  %233 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call285 = call double @gimp_stroke_nearest_tangent_get(%struct._GimpStroke* %233, %struct._GimpCoords* %coords1, %struct._GimpCoords* %coords2, double 1.000000e+00, %struct._GimpCoords* %nearest, %struct._GimpAnchor** null, %struct._GimpAnchor** null, double* null)
  %cmp286 = fcmp oge double %call285, 0.000000e+00
  br i1 %cmp286, label %if.then.287, label %if.end.291

if.then.287:                                      ; preds = %if.end.280
  %234 = load double, double* %x1.addr, align 8
  %x288 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 0
  %235 = load double, double* %x288, align 8
  %236 = load double, double* %epsilon_x.addr, align 8
  %237 = load double*, double** %tx1.addr, align 8
  %call289 = call i32 @gimp_image_snap_distance(double %234, double %235, double %236, double* %mindist_x, double* %237)
  %238 = load i32, i32* %snapped, align 4
  %or290 = or i32 %238, %call289
  store i32 %or290, i32* %snapped, align 4
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.287, %if.end.280
  %239 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call292 = call double @gimp_stroke_nearest_intersection_get(%struct._GimpStroke* %239, %struct._GimpCoords* %coords1, %struct._GimpCoords* %coords2, double 1.000000e+00, %struct._GimpCoords* %nearest, %struct._GimpAnchor** null, %struct._GimpAnchor** null, double* null)
  %cmp293 = fcmp oge double %call292, 0.000000e+00
  br i1 %cmp293, label %if.then.294, label %if.end.298

if.then.294:                                      ; preds = %if.end.291
  %240 = load double, double* %y1.addr, align 8
  %y295 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 1
  %241 = load double, double* %y295, align 8
  %242 = load double, double* %epsilon_y.addr, align 8
  %243 = load double*, double** %ty1.addr, align 8
  %call296 = call i32 @gimp_image_snap_distance(double %240, double %241, double %242, double* %mindist_y, double* %243)
  %244 = load i32, i32* %snapped, align 4
  %or297 = or i32 %244, %call296
  store i32 %or297, i32* %snapped, align 4
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.294, %if.end.291
  %245 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call299 = call double @gimp_stroke_nearest_intersection_get(%struct._GimpStroke* %245, %struct._GimpCoords* %coords2, %struct._GimpCoords* %coords1, double 1.000000e+00, %struct._GimpCoords* %nearest, %struct._GimpAnchor** null, %struct._GimpAnchor** null, double* null)
  %cmp300 = fcmp oge double %call299, 0.000000e+00
  br i1 %cmp300, label %if.then.301, label %if.end.326

if.then.301:                                      ; preds = %if.end.298
  %y302 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 1
  %246 = load double, double* %y302, align 8
  %247 = load double, double* %y2.addr, align 8
  %sub303 = fsub double %246, %247
  %cmp304 = fcmp olt double %sub303, 0.000000e+00
  br i1 %cmp304, label %cond.true.305, label %cond.false.309

cond.true.305:                                    ; preds = %if.then.301
  %y306 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 1
  %248 = load double, double* %y306, align 8
  %249 = load double, double* %y2.addr, align 8
  %sub307 = fsub double %248, %249
  %sub308 = fsub double -0.000000e+00, %sub307
  br label %cond.end.312

cond.false.309:                                   ; preds = %if.then.301
  %y310 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 1
  %250 = load double, double* %y310, align 8
  %251 = load double, double* %y2.addr, align 8
  %sub311 = fsub double %250, %251
  br label %cond.end.312

cond.end.312:                                     ; preds = %cond.false.309, %cond.true.305
  %cond313 = phi double [ %sub308, %cond.true.305 ], [ %sub311, %cond.false.309 ]
  store double %cond313, double* %dist, align 8
  %252 = load double, double* %dist, align 8
  %253 = load double, double* %epsilon_y.addr, align 8
  %254 = load double, double* %mindist_y, align 8
  %cmp314 = fcmp olt double %253, %254
  br i1 %cmp314, label %cond.true.315, label %cond.false.316

cond.true.315:                                    ; preds = %cond.end.312
  %255 = load double, double* %epsilon_y.addr, align 8
  br label %cond.end.317

cond.false.316:                                   ; preds = %cond.end.312
  %256 = load double, double* %mindist_y, align 8
  br label %cond.end.317

cond.end.317:                                     ; preds = %cond.false.316, %cond.true.315
  %cond318 = phi double [ %255, %cond.true.315 ], [ %256, %cond.false.316 ]
  %cmp319 = fcmp olt double %252, %cond318
  br i1 %cmp319, label %if.then.320, label %if.end.325

if.then.320:                                      ; preds = %cond.end.317
  %257 = load double, double* %dist, align 8
  store double %257, double* %mindist_y, align 8
  %258 = load double, double* %y1.addr, align 8
  %y321 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 1
  %259 = load double, double* %y321, align 8
  %260 = load double, double* %y2.addr, align 8
  %sub322 = fsub double %259, %260
  %add323 = fadd double %258, %sub322
  %call324 = call double @rint(double %add323) #5
  %261 = load double*, double** %ty1.addr, align 8
  store double %call324, double* %261, align 8
  store i32 1, i32* %snapped, align 4
  br label %if.end.325

if.end.325:                                       ; preds = %if.then.320, %cond.end.317
  br label %if.end.326

if.end.326:                                       ; preds = %if.end.325, %if.end.298
  %262 = load double, double* %x2.addr, align 8
  %x327 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords1, i32 0, i32 0
  store double %262, double* %x327, align 8
  %263 = load double, double* %y1.addr, align 8
  %y328 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords1, i32 0, i32 1
  store double %263, double* %y328, align 8
  %264 = load double, double* %x2.addr, align 8
  %x329 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords2, i32 0, i32 0
  store double %264, double* %x329, align 8
  %265 = load double, double* %y2.addr, align 8
  %y330 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords2, i32 0, i32 1
  store double %265, double* %y330, align 8
  %266 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call331 = call double @gimp_stroke_nearest_tangent_get(%struct._GimpStroke* %266, %struct._GimpCoords* %coords1, %struct._GimpCoords* %coords2, double 1.000000e+00, %struct._GimpCoords* %nearest, %struct._GimpAnchor** null, %struct._GimpAnchor** null, double* null)
  %cmp332 = fcmp oge double %call331, 0.000000e+00
  br i1 %cmp332, label %if.then.333, label %if.end.358

if.then.333:                                      ; preds = %if.end.326
  %x334 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 0
  %267 = load double, double* %x334, align 8
  %268 = load double, double* %x2.addr, align 8
  %sub335 = fsub double %267, %268
  %cmp336 = fcmp olt double %sub335, 0.000000e+00
  br i1 %cmp336, label %cond.true.337, label %cond.false.341

cond.true.337:                                    ; preds = %if.then.333
  %x338 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 0
  %269 = load double, double* %x338, align 8
  %270 = load double, double* %x2.addr, align 8
  %sub339 = fsub double %269, %270
  %sub340 = fsub double -0.000000e+00, %sub339
  br label %cond.end.344

cond.false.341:                                   ; preds = %if.then.333
  %x342 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 0
  %271 = load double, double* %x342, align 8
  %272 = load double, double* %x2.addr, align 8
  %sub343 = fsub double %271, %272
  br label %cond.end.344

cond.end.344:                                     ; preds = %cond.false.341, %cond.true.337
  %cond345 = phi double [ %sub340, %cond.true.337 ], [ %sub343, %cond.false.341 ]
  store double %cond345, double* %dist, align 8
  %273 = load double, double* %dist, align 8
  %274 = load double, double* %epsilon_x.addr, align 8
  %275 = load double, double* %mindist_x, align 8
  %cmp346 = fcmp olt double %274, %275
  br i1 %cmp346, label %cond.true.347, label %cond.false.348

cond.true.347:                                    ; preds = %cond.end.344
  %276 = load double, double* %epsilon_x.addr, align 8
  br label %cond.end.349

cond.false.348:                                   ; preds = %cond.end.344
  %277 = load double, double* %mindist_x, align 8
  br label %cond.end.349

cond.end.349:                                     ; preds = %cond.false.348, %cond.true.347
  %cond350 = phi double [ %276, %cond.true.347 ], [ %277, %cond.false.348 ]
  %cmp351 = fcmp olt double %273, %cond350
  br i1 %cmp351, label %if.then.352, label %if.end.357

if.then.352:                                      ; preds = %cond.end.349
  %278 = load double, double* %dist, align 8
  store double %278, double* %mindist_x, align 8
  %279 = load double, double* %x1.addr, align 8
  %x353 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 0
  %280 = load double, double* %x353, align 8
  %281 = load double, double* %x2.addr, align 8
  %sub354 = fsub double %280, %281
  %add355 = fadd double %279, %sub354
  %call356 = call double @rint(double %add355) #5
  %282 = load double*, double** %tx1.addr, align 8
  store double %call356, double* %282, align 8
  store i32 1, i32* %snapped, align 4
  br label %if.end.357

if.end.357:                                       ; preds = %if.then.352, %cond.end.349
  br label %if.end.358

if.end.358:                                       ; preds = %if.end.357, %if.end.326
  %283 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call359 = call double @gimp_stroke_nearest_intersection_get(%struct._GimpStroke* %283, %struct._GimpCoords* %coords1, %struct._GimpCoords* %coords2, double 1.000000e+00, %struct._GimpCoords* %nearest, %struct._GimpAnchor** null, %struct._GimpAnchor** null, double* null)
  %cmp360 = fcmp oge double %call359, 0.000000e+00
  br i1 %cmp360, label %if.then.361, label %if.end.365

if.then.361:                                      ; preds = %if.end.358
  %284 = load double, double* %y1.addr, align 8
  %y362 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 1
  %285 = load double, double* %y362, align 8
  %286 = load double, double* %epsilon_y.addr, align 8
  %287 = load double*, double** %ty1.addr, align 8
  %call363 = call i32 @gimp_image_snap_distance(double %284, double %285, double %286, double* %mindist_y, double* %287)
  %288 = load i32, i32* %snapped, align 4
  %or364 = or i32 %288, %call363
  store i32 %or364, i32* %snapped, align 4
  br label %if.end.365

if.end.365:                                       ; preds = %if.then.361, %if.end.358
  %289 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call366 = call double @gimp_stroke_nearest_intersection_get(%struct._GimpStroke* %289, %struct._GimpCoords* %coords2, %struct._GimpCoords* %coords1, double 1.000000e+00, %struct._GimpCoords* %nearest, %struct._GimpAnchor** null, %struct._GimpAnchor** null, double* null)
  %cmp367 = fcmp oge double %call366, 0.000000e+00
  br i1 %cmp367, label %if.then.368, label %if.end.393

if.then.368:                                      ; preds = %if.end.365
  %y369 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 1
  %290 = load double, double* %y369, align 8
  %291 = load double, double* %y2.addr, align 8
  %sub370 = fsub double %290, %291
  %cmp371 = fcmp olt double %sub370, 0.000000e+00
  br i1 %cmp371, label %cond.true.372, label %cond.false.376

cond.true.372:                                    ; preds = %if.then.368
  %y373 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 1
  %292 = load double, double* %y373, align 8
  %293 = load double, double* %y2.addr, align 8
  %sub374 = fsub double %292, %293
  %sub375 = fsub double -0.000000e+00, %sub374
  br label %cond.end.379

cond.false.376:                                   ; preds = %if.then.368
  %y377 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 1
  %294 = load double, double* %y377, align 8
  %295 = load double, double* %y2.addr, align 8
  %sub378 = fsub double %294, %295
  br label %cond.end.379

cond.end.379:                                     ; preds = %cond.false.376, %cond.true.372
  %cond380 = phi double [ %sub375, %cond.true.372 ], [ %sub378, %cond.false.376 ]
  store double %cond380, double* %dist, align 8
  %296 = load double, double* %dist, align 8
  %297 = load double, double* %epsilon_y.addr, align 8
  %298 = load double, double* %mindist_y, align 8
  %cmp381 = fcmp olt double %297, %298
  br i1 %cmp381, label %cond.true.382, label %cond.false.383

cond.true.382:                                    ; preds = %cond.end.379
  %299 = load double, double* %epsilon_y.addr, align 8
  br label %cond.end.384

cond.false.383:                                   ; preds = %cond.end.379
  %300 = load double, double* %mindist_y, align 8
  br label %cond.end.384

cond.end.384:                                     ; preds = %cond.false.383, %cond.true.382
  %cond385 = phi double [ %299, %cond.true.382 ], [ %300, %cond.false.383 ]
  %cmp386 = fcmp olt double %296, %cond385
  br i1 %cmp386, label %if.then.387, label %if.end.392

if.then.387:                                      ; preds = %cond.end.384
  %301 = load double, double* %dist, align 8
  store double %301, double* %mindist_y, align 8
  %302 = load double, double* %y1.addr, align 8
  %y388 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 1
  %303 = load double, double* %y388, align 8
  %304 = load double, double* %y2.addr, align 8
  %sub389 = fsub double %303, %304
  %add390 = fadd double %302, %sub389
  %call391 = call double @rint(double %add390) #5
  %305 = load double*, double** %ty1.addr, align 8
  store double %call391, double* %305, align 8
  store i32 1, i32* %snapped, align 4
  br label %if.end.392

if.end.392:                                       ; preds = %if.then.387, %cond.end.384
  br label %if.end.393

if.end.393:                                       ; preds = %if.end.392, %if.end.365
  %306 = load double, double* %x_center, align 8
  %x394 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords1, i32 0, i32 0
  store double %306, double* %x394, align 8
  %307 = load double, double* %y_center, align 8
  %y395 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords1, i32 0, i32 1
  store double %307, double* %y395, align 8
  %308 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call396 = call double @gimp_stroke_nearest_point_get(%struct._GimpStroke* %308, %struct._GimpCoords* %coords1, double 1.000000e+00, %struct._GimpCoords* %nearest, %struct._GimpAnchor** null, %struct._GimpAnchor** null, double* null)
  %cmp397 = fcmp oge double %call396, 0.000000e+00
  br i1 %cmp397, label %if.then.398, label %if.end.433

if.then.398:                                      ; preds = %if.end.393
  %309 = load double, double* %x_center, align 8
  %x399 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 0
  %310 = load double, double* %x399, align 8
  %311 = load double, double* %epsilon_x.addr, align 8
  %call400 = call i32 @gimp_image_snap_distance(double %309, double %310, double %311, double* %mindist_x, double* %nx)
  %tobool401 = icmp ne i32 %call400, 0
  br i1 %tobool401, label %if.then.402, label %if.end.415

if.then.402:                                      ; preds = %if.then.398
  %312 = load double, double* %nx, align 8
  %313 = load double, double* %x_center, align 8
  %sub403 = fsub double %312, %313
  %cmp404 = fcmp olt double %sub403, 0.000000e+00
  br i1 %cmp404, label %cond.true.405, label %cond.false.408

cond.true.405:                                    ; preds = %if.then.402
  %314 = load double, double* %nx, align 8
  %315 = load double, double* %x_center, align 8
  %sub406 = fsub double %314, %315
  %sub407 = fsub double -0.000000e+00, %sub406
  br label %cond.end.410

cond.false.408:                                   ; preds = %if.then.402
  %316 = load double, double* %nx, align 8
  %317 = load double, double* %x_center, align 8
  %sub409 = fsub double %316, %317
  br label %cond.end.410

cond.end.410:                                     ; preds = %cond.false.408, %cond.true.405
  %cond411 = phi double [ %sub407, %cond.true.405 ], [ %sub409, %cond.false.408 ]
  store double %cond411, double* %mindist_x, align 8
  %318 = load double, double* %x1.addr, align 8
  %319 = load double, double* %nx, align 8
  %320 = load double, double* %x_center, align 8
  %sub412 = fsub double %319, %320
  %add413 = fadd double %318, %sub412
  %call414 = call double @rint(double %add413) #5
  %321 = load double*, double** %tx1.addr, align 8
  store double %call414, double* %321, align 8
  store i32 1, i32* %snapped, align 4
  br label %if.end.415

if.end.415:                                       ; preds = %cond.end.410, %if.then.398
  %322 = load double, double* %y_center, align 8
  %y416 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %nearest, i32 0, i32 1
  %323 = load double, double* %y416, align 8
  %324 = load double, double* %epsilon_y.addr, align 8
  %call417 = call i32 @gimp_image_snap_distance(double %322, double %323, double %324, double* %mindist_y, double* %ny)
  %tobool418 = icmp ne i32 %call417, 0
  br i1 %tobool418, label %if.then.419, label %if.end.432

if.then.419:                                      ; preds = %if.end.415
  %325 = load double, double* %ny, align 8
  %326 = load double, double* %y_center, align 8
  %sub420 = fsub double %325, %326
  %cmp421 = fcmp olt double %sub420, 0.000000e+00
  br i1 %cmp421, label %cond.true.422, label %cond.false.425

cond.true.422:                                    ; preds = %if.then.419
  %327 = load double, double* %ny, align 8
  %328 = load double, double* %y_center, align 8
  %sub423 = fsub double %327, %328
  %sub424 = fsub double -0.000000e+00, %sub423
  br label %cond.end.427

cond.false.425:                                   ; preds = %if.then.419
  %329 = load double, double* %ny, align 8
  %330 = load double, double* %y_center, align 8
  %sub426 = fsub double %329, %330
  br label %cond.end.427

cond.end.427:                                     ; preds = %cond.false.425, %cond.true.422
  %cond428 = phi double [ %sub424, %cond.true.422 ], [ %sub426, %cond.false.425 ]
  store double %cond428, double* %mindist_y, align 8
  %331 = load double, double* %y1.addr, align 8
  %332 = load double, double* %ny, align 8
  %333 = load double, double* %y_center, align 8
  %sub429 = fsub double %332, %333
  %add430 = fadd double %331, %sub429
  %call431 = call double @rint(double %add430) #5
  %334 = load double*, double** %ty1.addr, align 8
  store double %call431, double* %334, align 8
  store i32 1, i32* %snapped, align 4
  br label %if.end.432

if.end.432:                                       ; preds = %cond.end.427, %if.end.415
  br label %if.end.433

if.end.433:                                       ; preds = %if.end.432, %if.end.393
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.434

if.end.434:                                       ; preds = %while.end, %if.end.159
  %335 = load i32, i32* %snapped, align 4
  store i32 %335, i32* %retval
  br label %return

return:                                           ; preds = %if.end.434, %if.then.43, %if.else.22, %if.else.16, %if.else.11
  %336 = load i32, i32* %retval
  ret i32 %336
}

; Function Attrs: nounwind readnone
declare double @rint(double) #1

declare double @gimp_stroke_nearest_tangent_get(%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*) #3

declare double @gimp_stroke_nearest_intersection_get(%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
