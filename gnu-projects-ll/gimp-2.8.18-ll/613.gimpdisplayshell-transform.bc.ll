; ModuleID = './app/display/gimpdisplayshell-transform.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpDisplayConfig = type opaque
%struct._GimpUIManager = type opaque
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type opaque
%struct._Selection = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type opaque
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._BoundSeg = type { i32, i32, i32, i32, i8 }
%struct._GimpSegment = type { i32, i32, i32, i32 }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_display_shell_transform_coords = private unnamed_addr constant [36 x i8] c"gimp_display_shell_transform_coords\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"image_coords != NULL\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"display_coords != NULL\00", align 1
@__func__.gimp_display_shell_untransform_coords = private unnamed_addr constant [38 x i8] c"gimp_display_shell_untransform_coords\00", align 1
@__func__.gimp_display_shell_transform_xy = private unnamed_addr constant [32 x i8] c"gimp_display_shell_transform_xy\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"nx != NULL\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ny != NULL\00", align 1
@__func__.gimp_display_shell_untransform_xy = private unnamed_addr constant [34 x i8] c"gimp_display_shell_untransform_xy\00", align 1
@__func__.gimp_display_shell_transform_xy_f = private unnamed_addr constant [34 x i8] c"gimp_display_shell_transform_xy_f\00", align 1
@__func__.gimp_display_shell_untransform_xy_f = private unnamed_addr constant [36 x i8] c"gimp_display_shell_untransform_xy_f\00", align 1
@__func__.gimp_display_shell_transform_segments = private unnamed_addr constant [38 x i8] c"gimp_display_shell_transform_segments\00", align 1
@__func__.gimp_display_shell_untransform_viewport = private unnamed_addr constant [40 x i8] c"gimp_display_shell_untransform_viewport\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_transform_coords(%struct._GimpDisplayShell* %shell, %struct._GimpCoords* %image_coords, %struct._GimpCoords* %display_coords) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %image_coords.addr = alloca %struct._GimpCoords*, align 8
  %display_coords.addr = alloca %struct._GimpCoords*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpCoords* %image_coords, %struct._GimpCoords** %image_coords.addr, align 8
  store %struct._GimpCoords* %display_coords, %struct._GimpCoords** %display_coords.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_display_shell_transform_coords, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %image_coords.addr, align 8
  %cmp12 = icmp ne %struct._GimpCoords* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_display_shell_transform_coords, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %display_coords.addr, align 8
  %cmp18 = icmp ne %struct._GimpCoords* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_display_shell_transform_coords, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %display_coords.addr, align 8
  %16 = load %struct._GimpCoords*, %struct._GimpCoords** %image_coords.addr, align 8
  %17 = bitcast %struct._GimpCoords* %15 to i8*
  %18 = bitcast %struct._GimpCoords* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 64, i32 8, i1 false)
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %image_coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %19, i32 0, i32 0
  %20 = load double, double* %x, align 8
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 13
  %22 = load double, double* %scale_x, align 8
  %mul = fmul double %20, %22
  %call23 = call double @rint(double %mul) #5
  %conv = fptosi double %call23 to i32
  %conv24 = sitofp i32 %conv to double
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %display_coords.addr, align 8
  %x25 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 0
  store double %conv24, double* %x25, align 8
  %24 = load %struct._GimpCoords*, %struct._GimpCoords** %image_coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %24, i32 0, i32 1
  %25 = load double, double* %y, align 8
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %26, i32 0, i32 14
  %27 = load double, double* %scale_y, align 8
  %mul26 = fmul double %25, %27
  %call27 = call double @rint(double %mul26) #5
  %conv28 = fptosi double %call27 to i32
  %conv29 = sitofp i32 %conv28 to double
  %28 = load %struct._GimpCoords*, %struct._GimpCoords** %display_coords.addr, align 8
  %y30 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %28, i32 0, i32 1
  store double %conv29, double* %y30, align 8
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 11
  %30 = load i32, i32* %offset_x, align 4
  %conv31 = sitofp i32 %30 to double
  %31 = load %struct._GimpCoords*, %struct._GimpCoords** %display_coords.addr, align 8
  %x32 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %31, i32 0, i32 0
  %32 = load double, double* %x32, align 8
  %sub = fsub double %32, %conv31
  store double %sub, double* %x32, align 8
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %33, i32 0, i32 12
  %34 = load i32, i32* %offset_y, align 4
  %conv33 = sitofp i32 %34 to double
  %35 = load %struct._GimpCoords*, %struct._GimpCoords** %display_coords.addr, align 8
  %y34 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %35, i32 0, i32 1
  %36 = load double, double* %y34, align 8
  %sub35 = fsub double %36, %conv33
  store double %sub35, double* %y34, align 8
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind readnone
declare double @rint(double) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_untransform_coords(%struct._GimpDisplayShell* %shell, %struct._GimpCoords* %display_coords, %struct._GimpCoords* %image_coords) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %display_coords.addr = alloca %struct._GimpCoords*, align 8
  %image_coords.addr = alloca %struct._GimpCoords*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpCoords* %display_coords, %struct._GimpCoords** %display_coords.addr, align 8
  store %struct._GimpCoords* %image_coords, %struct._GimpCoords** %image_coords.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_display_shell_untransform_coords, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %display_coords.addr, align 8
  %cmp12 = icmp ne %struct._GimpCoords* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_display_shell_untransform_coords, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %image_coords.addr, align 8
  %cmp18 = icmp ne %struct._GimpCoords* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_display_shell_untransform_coords, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %image_coords.addr, align 8
  %16 = load %struct._GimpCoords*, %struct._GimpCoords** %display_coords.addr, align 8
  %17 = bitcast %struct._GimpCoords* %15 to i8*
  %18 = bitcast %struct._GimpCoords* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 64, i32 8, i1 false)
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %display_coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %19, i32 0, i32 0
  %20 = load double, double* %x, align 8
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 11
  %22 = load i32, i32* %offset_x, align 4
  %conv = sitofp i32 %22 to double
  %add = fadd double %20, %conv
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %image_coords.addr, align 8
  %x23 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 0
  store double %add, double* %x23, align 8
  %24 = load %struct._GimpCoords*, %struct._GimpCoords** %display_coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %24, i32 0, i32 1
  %25 = load double, double* %y, align 8
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %26, i32 0, i32 12
  %27 = load i32, i32* %offset_y, align 4
  %conv24 = sitofp i32 %27 to double
  %add25 = fadd double %25, %conv24
  %28 = load %struct._GimpCoords*, %struct._GimpCoords** %image_coords.addr, align 8
  %y26 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %28, i32 0, i32 1
  store double %add25, double* %y26, align 8
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 13
  %30 = load double, double* %scale_x, align 8
  %31 = load %struct._GimpCoords*, %struct._GimpCoords** %image_coords.addr, align 8
  %x27 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %31, i32 0, i32 0
  %32 = load double, double* %x27, align 8
  %div = fdiv double %32, %30
  store double %div, double* %x27, align 8
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %33, i32 0, i32 14
  %34 = load double, double* %scale_y, align 8
  %35 = load %struct._GimpCoords*, %struct._GimpCoords** %image_coords.addr, align 8
  %y28 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %35, i32 0, i32 1
  %36 = load double, double* %y28, align 8
  %div29 = fdiv double %36, %34
  store double %div29, double* %y28, align 8
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell* %shell, double %x, double %y, i32* %nx, i32* %ny) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %nx.addr = alloca i32*, align 8
  %ny.addr = alloca i32*, align 8
  %tx = alloca i64, align 8
  %ty = alloca i64, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32* %nx, i32** %nx.addr, align 8
  store i32* %ny, i32** %ny.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_display_shell_transform_xy, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32*, i32** %nx.addr, align 8
  %cmp12 = icmp ne i32* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_display_shell_transform_xy, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i32*, i32** %ny.addr, align 8
  %cmp18 = icmp ne i32* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_display_shell_transform_xy, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load double, double* %x.addr, align 8
  %conv = fptosi double %15 to i64
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %x_src_dec = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 18
  %17 = load i32, i32* %x_src_dec, align 4
  %conv23 = sext i32 %17 to i64
  %mul = mul nsw i64 %conv, %conv23
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %x_dest_inc = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 20
  %19 = load i32, i32* %x_dest_inc, align 4
  %conv24 = sext i32 %19 to i64
  %div = sdiv i64 %mul, %conv24
  store i64 %div, i64* %tx, align 8
  %20 = load double, double* %y.addr, align 8
  %conv25 = fptosi double %20 to i64
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %y_src_dec = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 19
  %22 = load i32, i32* %y_src_dec, align 4
  %conv26 = sext i32 %22 to i64
  %mul27 = mul nsw i64 %conv25, %conv26
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %y_dest_inc = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %23, i32 0, i32 21
  %24 = load i32, i32* %y_dest_inc, align 4
  %conv28 = sext i32 %24 to i64
  %div29 = sdiv i64 %mul27, %conv28
  store i64 %div29, i64* %ty, align 8
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %25, i32 0, i32 11
  %26 = load i32, i32* %offset_x, align 4
  %conv30 = sext i32 %26 to i64
  %27 = load i64, i64* %tx, align 8
  %sub = sub nsw i64 %27, %conv30
  store i64 %sub, i64* %tx, align 8
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %28, i32 0, i32 12
  %29 = load i32, i32* %offset_y, align 4
  %conv31 = sext i32 %29 to i64
  %30 = load i64, i64* %ty, align 8
  %sub32 = sub nsw i64 %30, %conv31
  store i64 %sub32, i64* %ty, align 8
  %31 = load i64, i64* %tx, align 8
  %cmp33 = icmp sgt i64 %31, 2147483647
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.22
  br label %cond.end.39

cond.false:                                       ; preds = %do.end.22
  %32 = load i64, i64* %tx, align 8
  %cmp35 = icmp slt i64 %32, -2147483648
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.false
  br label %cond.end

cond.false.38:                                    ; preds = %cond.false
  %33 = load i64, i64* %tx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.38, %cond.true.37
  %cond = phi i64 [ -2147483648, %cond.true.37 ], [ %33, %cond.false.38 ]
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.end, %cond.true
  %cond40 = phi i64 [ 2147483647, %cond.true ], [ %cond, %cond.end ]
  %conv41 = trunc i64 %cond40 to i32
  %34 = load i32*, i32** %nx.addr, align 8
  store i32 %conv41, i32* %34, align 4
  %35 = load i64, i64* %ty, align 8
  %cmp42 = icmp sgt i64 %35, 2147483647
  br i1 %cmp42, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %cond.end.39
  br label %cond.end.52

cond.false.45:                                    ; preds = %cond.end.39
  %36 = load i64, i64* %ty, align 8
  %cmp46 = icmp slt i64 %36, -2147483648
  br i1 %cmp46, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %cond.false.45
  br label %cond.end.50

cond.false.49:                                    ; preds = %cond.false.45
  %37 = load i64, i64* %ty, align 8
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.48
  %cond51 = phi i64 [ -2147483648, %cond.true.48 ], [ %37, %cond.false.49 ]
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.end.50, %cond.true.44
  %cond53 = phi i64 [ 2147483647, %cond.true.44 ], [ %cond51, %cond.end.50 ]
  %conv54 = trunc i64 %cond53 to i32
  %38 = load i32*, i32** %ny.addr, align 8
  store i32 %conv54, i32* %38, align 4
  br label %return

return:                                           ; preds = %cond.end.52, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_untransform_xy(%struct._GimpDisplayShell* %shell, i32 %x, i32 %y, i32* %nx, i32* %ny, i32 %round) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %nx.addr = alloca i32*, align 8
  %ny.addr = alloca i32*, align 8
  %round.addr = alloca i32, align 4
  %tx = alloca i64, align 8
  %ty = alloca i64, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32* %nx, i32** %nx.addr, align 8
  store i32* %ny, i32** %ny.addr, align 8
  store i32 %round, i32* %round.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_display_shell_untransform_xy, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32*, i32** %nx.addr, align 8
  %cmp12 = icmp ne i32* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_display_shell_untransform_xy, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i32*, i32** %ny.addr, align 8
  %cmp18 = icmp ne i32* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_display_shell_untransform_xy, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load i32, i32* %x.addr, align 4
  %conv = sext i32 %15 to i64
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 11
  %17 = load i32, i32* %offset_x, align 4
  %conv23 = sext i32 %17 to i64
  %add = add nsw i64 %conv, %conv23
  store i64 %add, i64* %tx, align 8
  %18 = load i32, i32* %y.addr, align 4
  %conv24 = sext i32 %18 to i64
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 12
  %20 = load i32, i32* %offset_y, align 4
  %conv25 = sext i32 %20 to i64
  %add26 = add nsw i64 %conv24, %conv25
  store i64 %add26, i64* %ty, align 8
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %x_dest_inc = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 20
  %22 = load i32, i32* %x_dest_inc, align 4
  %conv27 = sext i32 %22 to i64
  %23 = load i64, i64* %tx, align 8
  %mul = mul nsw i64 %23, %conv27
  store i64 %mul, i64* %tx, align 8
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %y_dest_inc = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 21
  %25 = load i32, i32* %y_dest_inc, align 4
  %conv28 = sext i32 %25 to i64
  %26 = load i64, i64* %ty, align 8
  %mul29 = mul nsw i64 %26, %conv28
  store i64 %mul29, i64* %ty, align 8
  %27 = load i32, i32* %round.addr, align 4
  %tobool30 = icmp ne i32 %27, 0
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.22
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %x_dest_inc31 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %28, i32 0, i32 20
  %29 = load i32, i32* %x_dest_inc31, align 4
  br label %cond.end

cond.false:                                       ; preds = %do.end.22
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %x_dest_inc32 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %30, i32 0, i32 20
  %31 = load i32, i32* %x_dest_inc32, align 4
  %shr = ashr i32 %31, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ %shr, %cond.false ]
  %conv33 = sext i32 %cond to i64
  %32 = load i64, i64* %tx, align 8
  %add34 = add nsw i64 %32, %conv33
  store i64 %add34, i64* %tx, align 8
  %33 = load i32, i32* %round.addr, align 4
  %tobool35 = icmp ne i32 %33, 0
  br i1 %tobool35, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %cond.end
  %34 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %y_dest_inc37 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %34, i32 0, i32 21
  %35 = load i32, i32* %y_dest_inc37, align 4
  br label %cond.end.41

cond.false.38:                                    ; preds = %cond.end
  %36 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %y_dest_inc39 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %36, i32 0, i32 21
  %37 = load i32, i32* %y_dest_inc39, align 4
  %shr40 = ashr i32 %37, 1
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.38, %cond.true.36
  %cond42 = phi i32 [ %35, %cond.true.36 ], [ %shr40, %cond.false.38 ]
  %conv43 = sext i32 %cond42 to i64
  %38 = load i64, i64* %ty, align 8
  %add44 = add nsw i64 %38, %conv43
  store i64 %add44, i64* %ty, align 8
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %x_src_dec = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %39, i32 0, i32 18
  %40 = load i32, i32* %x_src_dec, align 4
  %conv45 = sext i32 %40 to i64
  %41 = load i64, i64* %tx, align 8
  %div = sdiv i64 %41, %conv45
  store i64 %div, i64* %tx, align 8
  %42 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %y_src_dec = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %42, i32 0, i32 19
  %43 = load i32, i32* %y_src_dec, align 4
  %conv46 = sext i32 %43 to i64
  %44 = load i64, i64* %ty, align 8
  %div47 = sdiv i64 %44, %conv46
  store i64 %div47, i64* %ty, align 8
  %45 = load i64, i64* %tx, align 8
  %cmp48 = icmp sgt i64 %45, 2147483647
  br i1 %cmp48, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.end.41
  br label %cond.end.58

cond.false.51:                                    ; preds = %cond.end.41
  %46 = load i64, i64* %tx, align 8
  %cmp52 = icmp slt i64 %46, -2147483648
  br i1 %cmp52, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %cond.false.51
  br label %cond.end.56

cond.false.55:                                    ; preds = %cond.false.51
  %47 = load i64, i64* %tx, align 8
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.54
  %cond57 = phi i64 [ -2147483648, %cond.true.54 ], [ %47, %cond.false.55 ]
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.end.56, %cond.true.50
  %cond59 = phi i64 [ 2147483647, %cond.true.50 ], [ %cond57, %cond.end.56 ]
  %conv60 = trunc i64 %cond59 to i32
  %48 = load i32*, i32** %nx.addr, align 8
  store i32 %conv60, i32* %48, align 4
  %49 = load i64, i64* %ty, align 8
  %cmp61 = icmp sgt i64 %49, 2147483647
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.end.58
  br label %cond.end.71

cond.false.64:                                    ; preds = %cond.end.58
  %50 = load i64, i64* %ty, align 8
  %cmp65 = icmp slt i64 %50, -2147483648
  br i1 %cmp65, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %cond.false.64
  br label %cond.end.69

cond.false.68:                                    ; preds = %cond.false.64
  %51 = load i64, i64* %ty, align 8
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.68, %cond.true.67
  %cond70 = phi i64 [ -2147483648, %cond.true.67 ], [ %51, %cond.false.68 ]
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.end.69, %cond.true.63
  %cond72 = phi i64 [ 2147483647, %cond.true.63 ], [ %cond70, %cond.end.69 ]
  %conv73 = trunc i64 %cond72 to i32
  %52 = load i32*, i32** %ny.addr, align 8
  store i32 %conv73, i32* %52, align 4
  br label %return

return:                                           ; preds = %cond.end.71, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %shell, double %x, double %y, double* %nx, double* %ny) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %nx.addr = alloca double*, align 8
  %ny.addr = alloca double*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double* %nx, double** %nx.addr, align 8
  store double* %ny, double** %ny.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_display_shell_transform_xy_f, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load double*, double** %nx.addr, align 8
  %cmp12 = icmp ne double* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_display_shell_transform_xy_f, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load double*, double** %ny.addr, align 8
  %cmp18 = icmp ne double* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_display_shell_transform_xy_f, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load double, double* %x.addr, align 8
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 13
  %17 = load double, double* %scale_x, align 8
  %mul = fmul double %15, %17
  %call23 = call double @rint(double %mul) #5
  %conv = fptosi double %call23 to i32
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 11
  %19 = load i32, i32* %offset_x, align 4
  %sub = sub nsw i32 %conv, %19
  %conv24 = sitofp i32 %sub to double
  %20 = load double*, double** %nx.addr, align 8
  store double %conv24, double* %20, align 8
  %21 = load double, double* %y.addr, align 8
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 14
  %23 = load double, double* %scale_y, align 8
  %mul25 = fmul double %21, %23
  %call26 = call double @rint(double %mul25) #5
  %conv27 = fptosi double %call26 to i32
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 12
  %25 = load i32, i32* %offset_y, align 4
  %sub28 = sub nsw i32 %conv27, %25
  %conv29 = sitofp i32 %sub28 to double
  %26 = load double*, double** %ny.addr, align 8
  store double %conv29, double* %26, align 8
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_untransform_xy_f(%struct._GimpDisplayShell* %shell, double %x, double %y, double* %nx, double* %ny) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %nx.addr = alloca double*, align 8
  %ny.addr = alloca double*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double* %nx, double** %nx.addr, align 8
  store double* %ny, double** %ny.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_display_shell_untransform_xy_f, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load double*, double** %nx.addr, align 8
  %cmp12 = icmp ne double* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_display_shell_untransform_xy_f, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load double*, double** %ny.addr, align 8
  %cmp18 = icmp ne double* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_display_shell_untransform_xy_f, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load double, double* %x.addr, align 8
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 11
  %17 = load i32, i32* %offset_x, align 4
  %conv = sitofp i32 %17 to double
  %add = fadd double %15, %conv
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 13
  %19 = load double, double* %scale_x, align 8
  %div = fdiv double %add, %19
  %20 = load double*, double** %nx.addr, align 8
  store double %div, double* %20, align 8
  %21 = load double, double* %y.addr, align 8
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 12
  %23 = load i32, i32* %offset_y, align 4
  %conv23 = sitofp i32 %23 to double
  %add24 = fadd double %21, %conv23
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 14
  %25 = load double, double* %scale_y, align 8
  %div25 = fdiv double %add24, %25
  %26 = load double*, double** %ny.addr, align 8
  store double %div25, double* %26, align 8
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_transform_segments(%struct._GimpDisplayShell* %shell, %struct._BoundSeg* %src_segs, %struct._GimpSegment* %dest_segs, i32 %n_segs, double %offset_x, double %offset_y) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %src_segs.addr = alloca %struct._BoundSeg*, align 8
  %dest_segs.addr = alloca %struct._GimpSegment*, align 8
  %n_segs.addr = alloca i32, align 4
  %offset_x.addr = alloca double, align 8
  %offset_y.addr = alloca double, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y1 = alloca double, align 8
  %y2 = alloca double, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._BoundSeg* %src_segs, %struct._BoundSeg** %src_segs.addr, align 8
  store %struct._GimpSegment* %dest_segs, %struct._GimpSegment** %dest_segs.addr, align 8
  store i32 %n_segs, i32* %n_segs.addr, align 4
  store double %offset_x, double* %offset_x.addr, align 8
  store double %offset_y, double* %offset_y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_display_shell_transform_segments, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %n_segs.addr, align 4
  %cmp11 = icmp slt i32 %13, %14
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct._BoundSeg*, %struct._BoundSeg** %src_segs.addr, align 8
  %arrayidx = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %16, i64 %idxprom
  %x116 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx, i32 0, i32 0
  %17 = load i32, i32* %x116, align 4
  %conv = sitofp i32 %17 to double
  %18 = load double, double* %offset_x.addr, align 8
  %add = fadd double %conv, %18
  store double %add, double* %x1, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load %struct._BoundSeg*, %struct._BoundSeg** %src_segs.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %20, i64 %idxprom17
  %x219 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx18, i32 0, i32 2
  %21 = load i32, i32* %x219, align 4
  %conv20 = sitofp i32 %21 to double
  %22 = load double, double* %offset_x.addr, align 8
  %add21 = fadd double %conv20, %22
  store double %add21, double* %x2, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %23 to i64
  %24 = load %struct._BoundSeg*, %struct._BoundSeg** %src_segs.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %24, i64 %idxprom22
  %y124 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx23, i32 0, i32 1
  %25 = load i32, i32* %y124, align 4
  %conv25 = sitofp i32 %25 to double
  %26 = load double, double* %offset_y.addr, align 8
  %add26 = fadd double %conv25, %26
  store double %add26, double* %y1, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %27 to i64
  %28 = load %struct._BoundSeg*, %struct._BoundSeg** %src_segs.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %28, i64 %idxprom27
  %y229 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx28, i32 0, i32 3
  %29 = load i32, i32* %y229, align 4
  %conv30 = sitofp i32 %29 to double
  %30 = load double, double* %offset_y.addr, align 8
  %add31 = fadd double %conv30, %30
  store double %add31, double* %y2, align 8
  %31 = load double, double* %x1, align 8
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %32, i32 0, i32 13
  %33 = load double, double* %scale_x, align 8
  %mul = fmul double %31, %33
  %call32 = call double @rint(double %mul) #5
  %conv33 = fptosi double %call32 to i32
  %34 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x34 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %34, i32 0, i32 11
  %35 = load i32, i32* %offset_x34, align 4
  %sub = sub nsw i32 %conv33, %35
  %36 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %36 to i64
  %37 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %37, i64 %idxprom35
  %x137 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx36, i32 0, i32 0
  store i32 %sub, i32* %x137, align 4
  %38 = load double, double* %x2, align 8
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x38 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %39, i32 0, i32 13
  %40 = load double, double* %scale_x38, align 8
  %mul39 = fmul double %38, %40
  %call40 = call double @rint(double %mul39) #5
  %conv41 = fptosi double %call40 to i32
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_x42 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %41, i32 0, i32 11
  %42 = load i32, i32* %offset_x42, align 4
  %sub43 = sub nsw i32 %conv41, %42
  %43 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %43 to i64
  %44 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %44, i64 %idxprom44
  %x246 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx45, i32 0, i32 2
  store i32 %sub43, i32* %x246, align 4
  %45 = load double, double* %y1, align 8
  %46 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %46, i32 0, i32 14
  %47 = load double, double* %scale_y, align 8
  %mul47 = fmul double %45, %47
  %call48 = call double @rint(double %mul47) #5
  %conv49 = fptosi double %call48 to i32
  %48 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y50 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %48, i32 0, i32 12
  %49 = load i32, i32* %offset_y50, align 4
  %sub51 = sub nsw i32 %conv49, %49
  %50 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %50 to i64
  %51 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %51, i64 %idxprom52
  %y154 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx53, i32 0, i32 1
  store i32 %sub51, i32* %y154, align 4
  %52 = load double, double* %y2, align 8
  %53 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y55 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %53, i32 0, i32 14
  %54 = load double, double* %scale_y55, align 8
  %mul56 = fmul double %52, %54
  %call57 = call double @rint(double %mul56) #5
  %conv58 = fptosi double %call57 to i32
  %55 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %offset_y59 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %55, i32 0, i32 12
  %56 = load i32, i32* %offset_y59, align 4
  %sub60 = sub nsw i32 %conv58, %56
  %57 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %57 to i64
  %58 = load %struct._GimpSegment*, %struct._GimpSegment** %dest_segs.addr, align 8
  %arrayidx62 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %58, i64 %idxprom61
  %y263 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx62, i32 0, i32 3
  store i32 %sub60, i32* %y263, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %59 = load i32, i32* %i, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_untransform_viewport(%struct._GimpDisplayShell* %shell, i32* %x, i32* %y, i32* %width, i32* %height) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_display_shell_untransform_viewport, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.40

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_untransform_xy(%struct._GimpDisplayShell* %13, i32 0, i32 0, i32* %x1, i32* %y1, i32 0)
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 28
  %16 = load i32, i32* %disp_width, align 4
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 29
  %18 = load i32, i32* %disp_height, align 4
  call void @gimp_display_shell_untransform_xy(%struct._GimpDisplayShell* %14, i32 %16, i32 %18, i32* %x2, i32* %y2, i32 0)
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 1
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %20)
  store %struct._GimpImage* %call11, %struct._GimpImage** %image, align 8
  %21 = load i32, i32* %x1, align 4
  %cmp12 = icmp slt i32 %21, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  store i32 0, i32* %x1, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %do.end
  %22 = load i32, i32* %y1, align 4
  %cmp15 = icmp slt i32 %22, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  store i32 0, i32* %y1, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  %23 = load i32, i32* %x2, align 4
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call18 = call i32 @gimp_image_get_width(%struct._GimpImage* %24)
  %cmp19 = icmp sgt i32 %23, %call18
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.17
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call21 = call i32 @gimp_image_get_width(%struct._GimpImage* %25)
  store i32 %call21, i32* %x2, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.17
  %26 = load i32, i32* %y2, align 4
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call23 = call i32 @gimp_image_get_height(%struct._GimpImage* %27)
  %cmp24 = icmp sgt i32 %26, %call23
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.22
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call26 = call i32 @gimp_image_get_height(%struct._GimpImage* %28)
  store i32 %call26, i32* %y2, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.22
  %29 = load i32*, i32** %x.addr, align 8
  %tobool28 = icmp ne i32* %29, null
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.27
  %30 = load i32, i32* %x1, align 4
  %31 = load i32*, i32** %x.addr, align 8
  store i32 %30, i32* %31, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.27
  %32 = load i32*, i32** %y.addr, align 8
  %tobool31 = icmp ne i32* %32, null
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.30
  %33 = load i32, i32* %y1, align 4
  %34 = load i32*, i32** %y.addr, align 8
  store i32 %33, i32* %34, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.30
  %35 = load i32*, i32** %width.addr, align 8
  %tobool34 = icmp ne i32* %35, null
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.33
  %36 = load i32, i32* %x2, align 4
  %37 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %36, %37
  %38 = load i32*, i32** %width.addr, align 8
  store i32 %sub, i32* %38, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.33
  %39 = load i32*, i32** %height.addr, align 8
  %tobool37 = icmp ne i32* %39, null
  br i1 %tobool37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.36
  %40 = load i32, i32* %y2, align 4
  %41 = load i32, i32* %y1, align 4
  %sub39 = sub nsw i32 %40, %41
  %42 = load i32*, i32** %height.addr, align 8
  store i32 %sub39, i32* %42, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.9, %if.then.38, %if.end.36
  ret void
}

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
