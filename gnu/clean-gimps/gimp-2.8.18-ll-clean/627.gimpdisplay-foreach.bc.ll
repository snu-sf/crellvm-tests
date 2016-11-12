; ModuleID = './app/display/gimpdisplay-foreach.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
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
%struct._GimpUIManager = type opaque
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type opaque
%struct._Selection = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type opaque
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type opaque
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_displays_dirty = private unnamed_addr constant [20 x i8] c"gimp_displays_dirty\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@__func__.gimp_displays_get_dirty_images = private unnamed_addr constant [31 x i8] c"gimp_displays_get_dirty_images\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"clean\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"clean-handler\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"dirty-handler\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@__func__.gimp_displays_close = private unnamed_addr constant [20 x i8] c"gimp_displays_close\00", align 1
@__func__.gimp_displays_reconnect = private unnamed_addr constant [24 x i8] c"gimp_displays_reconnect\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"GIMP_IS_IMAGE (old)\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"GIMP_IS_IMAGE (new)\00", align 1
@__func__.gimp_displays_get_num_visible = private unnamed_addr constant [30 x i8] c"gimp_displays_get_num_visible\00", align 1
@__func__.gimp_displays_set_busy = private unnamed_addr constant [23 x i8] c"gimp_displays_set_busy\00", align 1
@__func__.gimp_displays_unset_busy = private unnamed_addr constant [25 x i8] c"gimp_displays_unset_busy\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_displays_dirty(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_displays_dirty, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GList* @gimp_get_display_iter(%struct._Gimp* %13)
  store %struct._GList* %call11, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool12 = icmp ne %struct._GList* %14, null
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8
  %17 = bitcast i8* %16 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %17, %struct._GimpDisplay** %display, align 8
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call15 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %18)
  store %struct._GimpImage* %call15, %struct._GimpImage** %image, align 8
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool16 = icmp ne %struct._GimpImage* %19, null
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.21

land.lhs.true.17:                                 ; preds = %for.body
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call18 = call i32 @gimp_image_is_dirty(%struct._GimpImage* %20)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.17
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true.17, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool22 = icmp ne %struct._GList* %21, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 1
  %23 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %23, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.20, %if.else.9
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GList* @gimp_get_display_iter(%struct._Gimp*) #3

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #3

declare i32 @gimp_image_is_dirty(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpContainer* @gimp_displays_get_dirty_images(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpContainer*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %container = alloca %struct._GimpContainer*, align 8
  %list = alloca %struct._GList*, align 8
  %handler = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_displays_get_dirty_images, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call i32 @gimp_displays_dirty(%struct._Gimp* %13)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.45

if.then.13:                                       ; preds = %do.end
  %call15 = call i64 @gimp_image_get_type() #4
  %call16 = call %struct._GimpContainer* @gimp_list_new_weak(i64 %call15, i32 0)
  store %struct._GimpContainer* %call16, %struct._GimpContainer** %container, align 8
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %images = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 26
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %images, align 8
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %17 = bitcast %struct._GimpContainer* %16 to i8*
  %call19 = call i32 @gimp_container_add_handler(%struct._GimpContainer* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, i32, %struct._GimpContainer*)* @gimp_displays_image_dirty_callback to void ()*), i8* %17)
  store i32 %call19, i32* %handler, align 4
  %18 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %19 = bitcast %struct._GimpContainer* %18 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 80)
  %20 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  %21 = load i32, i32* %handler, align 4
  %conv = zext i32 %21 to i64
  %22 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* %22)
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %images21 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %23, i32 0, i32 26
  %24 = load %struct._GimpContainer*, %struct._GimpContainer** %images21, align 8
  %25 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %26 = bitcast %struct._GimpContainer* %25 to i8*
  %call22 = call i32 @gimp_container_add_handler(%struct._GimpContainer* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, i32, %struct._GimpContainer*)* @gimp_displays_image_dirty_callback to void ()*), i8* %26)
  store i32 %call22, i32* %handler, align 4
  %27 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %28 = bitcast %struct._GimpContainer* %27 to %struct._GTypeInstance*
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 80)
  %29 = bitcast %struct._GTypeInstance* %call23 to %struct._GObject*
  %30 = load i32, i32* %handler, align 4
  %conv24 = zext i32 %30 to i64
  %31 = inttoptr i64 %conv24 to i8*
  call void @g_object_set_data(%struct._GObject* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* %31)
  %32 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %33 = bitcast %struct._GimpContainer* %32 to i8*
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %images25 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %34, i32 0, i32 26
  %35 = load %struct._GimpContainer*, %struct._GimpContainer** %images25, align 8
  %36 = bitcast %struct._GimpContainer* %35 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 80)
  %37 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  %38 = bitcast %struct._GObject* %37 to i8*
  %call27 = call i64 @g_signal_connect_object(i8* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpContainer*)* @gimp_displays_dirty_images_disconnect to void ()*), i8* %38, i32 0)
  %39 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %40 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %41 = bitcast %struct._GimpContainer* %40 to i8*
  %call28 = call i32 @gimp_container_add_handler(%struct._GimpContainer* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, i32, %struct._GimpContainer*)* @gimp_displays_image_clean_callback to void ()*), i8* %41)
  %42 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %43 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %44 = bitcast %struct._GimpContainer* %43 to i8*
  %call29 = call i32 @gimp_container_add_handler(%struct._GimpContainer* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, i32, %struct._GimpContainer*)* @gimp_displays_image_clean_callback to void ()*), i8* %44)
  %45 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call30 = call %struct._GList* @gimp_get_image_iter(%struct._Gimp* %45)
  store %struct._GList* %call30, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.13
  %46 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool31 = icmp ne %struct._GList* %46, null
  br i1 %tobool31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %47, i32 0, i32 0
  %48 = load i8*, i8** %data, align 8
  %49 = bitcast i8* %48 to %struct._GimpImage*
  store %struct._GimpImage* %49, %struct._GimpImage** %image, align 8
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call33 = call i32 @gimp_image_is_dirty(%struct._GimpImage* %50)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %land.lhs.true.35, label %if.end.43

land.lhs.true.35:                                 ; preds = %for.body
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call36 = call i32 @gimp_image_get_display_count(%struct._GimpImage* %51)
  %cmp37 = icmp sgt i32 %call36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %land.lhs.true.35
  %52 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %53 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %54 = bitcast %struct._GimpImage* %53 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_object_get_type() #4
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call40)
  %55 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpObject*
  %call42 = call i32 @gimp_container_add(%struct._GimpContainer* %52, %struct._GimpObject* %55)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %land.lhs.true.35, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %56 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool44 = icmp ne %struct._GList* %56, null
  br i1 %tobool44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %57 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %57, i32 0, i32 1
  %58 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %58, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  store %struct._GimpContainer* %59, %struct._GimpContainer** %retval
  br label %return

if.end.45:                                        ; preds = %do.end
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

return:                                           ; preds = %if.end.45, %for.end, %if.else.9
  %60 = load %struct._GimpContainer*, %struct._GimpContainer** %retval
  ret %struct._GimpContainer* %60
}

declare %struct._GimpContainer* @gimp_list_new_weak(i64, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

declare i32 @gimp_container_add_handler(%struct._GimpContainer*, i8*, void ()*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_displays_image_dirty_callback(%struct._GimpImage* %image, i32 %dirty_mask, %struct._GimpContainer* %container) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %dirty_mask.addr = alloca i32, align 4
  %container.addr = alloca %struct._GimpContainer*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %dirty_mask, i32* %dirty_mask.addr, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call i32 @gimp_image_is_dirty(%struct._GimpImage* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call1 = call i32 @gimp_image_get_display_count(%struct._GimpImage* %1)
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %4 = bitcast %struct._GimpImage* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_object_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpObject*
  %call5 = call i32 @gimp_container_have(%struct._GimpContainer* %2, %struct._GimpObject* %5)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.2
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %8 = bitcast %struct._GimpImage* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_object_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpObject*
  %call9 = call i32 @gimp_container_add(%struct._GimpContainer* %6, %struct._GimpObject* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.2, %land.lhs.true, %entry
  ret void
}

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_displays_dirty_images_disconnect(%struct._GimpContainer* %dirty_container, %struct._GimpContainer* %global_container) #0 {
entry:
  %dirty_container.addr = alloca %struct._GimpContainer*, align 8
  %global_container.addr = alloca %struct._GimpContainer*, align 8
  %handler = alloca i32, align 4
  store %struct._GimpContainer* %dirty_container, %struct._GimpContainer** %dirty_container.addr, align 8
  store %struct._GimpContainer* %global_container, %struct._GimpContainer** %global_container.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %dirty_container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  %3 = ptrtoint i8* %call1 to i64
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %handler, align 4
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %global_container.addr, align 8
  %5 = load i32, i32* %handler, align 4
  call void @gimp_container_remove_handler(%struct._GimpContainer* %4, i32 %5)
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %dirty_container.addr, align 8
  %7 = bitcast %struct._GimpContainer* %6 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  %9 = ptrtoint i8* %call3 to i64
  %conv4 = trunc i64 %9 to i32
  store i32 %conv4, i32* %handler, align 4
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %global_container.addr, align 8
  %11 = load i32, i32* %handler, align 4
  call void @gimp_container_remove_handler(%struct._GimpContainer* %10, i32 %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_displays_image_clean_callback(%struct._GimpImage* %image, i32 %dirty_mask, %struct._GimpContainer* %container) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %dirty_mask.addr = alloca i32, align 4
  %container.addr = alloca %struct._GimpContainer*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %dirty_mask, i32* %dirty_mask.addr, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call i32 @gimp_image_is_dirty(%struct._GimpImage* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %3 = bitcast %struct._GimpImage* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  %call3 = call i32 @gimp_container_remove(%struct._GimpContainer* %1, %struct._GimpObject* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GList* @gimp_get_image_iter(%struct._Gimp*) #3

declare i32 @gimp_image_get_display_count(%struct._GimpImage*) #3

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

; Function Attrs: nounwind uwtable
define void @gimp_displays_delete(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %displays = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 31
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %displays, align 8
  %call = call i32 @gimp_container_is_empty(%struct._GimpContainer* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call1 = call %struct._GList* @gimp_get_display_iter(%struct._Gimp* %2)
  %data = getelementptr inbounds %struct._GList, %struct._GList* %call1, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %4, %struct._GimpDisplay** %display, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @gimp_display_delete(%struct._GimpDisplay* %5)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @gimp_container_is_empty(%struct._GimpContainer*) #3

declare void @gimp_display_delete(%struct._GimpDisplay*) #3

; Function Attrs: nounwind uwtable
define void @gimp_displays_close(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %list = alloca %struct._GList*, align 8
  %iter = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %display = alloca %struct._GimpDisplay*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_displays_close, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GList* @gimp_get_display_iter(%struct._Gimp* %13)
  %call12 = call %struct._GList* @g_list_copy(%struct._GList* %call11)
  store %struct._GList* %call12, %struct._GList** %list, align 8
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  store %struct._GList* %14, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %15 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool13 = icmp ne %struct._GList* %15, null
  br i1 %tobool13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._GList*, %struct._GList** %iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = bitcast i8* %17 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %18, %struct._GimpDisplay** %display, align 8
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @gimp_display_close(%struct._GimpDisplay* %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool15 = icmp ne %struct._GList* %20, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %21 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 1
  %22 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %22, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  call void @g_list_free(%struct._GList* %23)
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  ret void
}

declare %struct._GList* @g_list_copy(%struct._GList*) #3

declare void @gimp_display_close(%struct._GimpDisplay*) #3

declare void @g_list_free(%struct._GList*) #3

; Function Attrs: nounwind uwtable
define void @gimp_displays_reconnect(%struct._Gimp* %gimp, %struct._GimpImage* %old, %struct._GimpImage* %new) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %old.addr = alloca %struct._GimpImage*, align 8
  %new.addr = alloca %struct._GimpImage*, align 8
  %contexts = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %context = alloca %struct._GimpContext*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpImage* %old, %struct._GimpImage** %old.addr, align 8
  store %struct._GimpImage* %new, %struct._GimpImage** %new.addr, align 8
  store %struct._GList* null, %struct._GList** %contexts, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_displays_reconnect, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %old.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_image_get_type() #4
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #5
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_displays_reconnect, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpImage*, %struct._GimpImage** %new.addr, align 8
  %27 = bitcast %struct._GimpImage* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_image_get_type() #4
  store i64 %call44, i64* %__t43, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %do.body.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %do.body.39
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type54, align 8
  %34 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %33, %34
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %36 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #5
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %37 = load i32, i32* %__r46, align 4
  store i32 %37, i32* %tmp61
  %38 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %38, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.60
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_displays_reconnect, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %context_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %39, i32 0, i32 50
  %40 = load %struct._GList*, %struct._GList** %context_list, align 8
  store %struct._GList* %40, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.66
  %41 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool67 = icmp ne %struct._GList* %41, null
  br i1 %tobool67, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %42, i32 0, i32 0
  %43 = load i8*, i8** %data, align 8
  %44 = bitcast i8* %43 to %struct._GimpContext*
  store %struct._GimpContext* %44, %struct._GimpContext** %context, align 8
  %45 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call69 = call %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext* %45)
  %46 = load %struct._GimpImage*, %struct._GimpImage** %old.addr, align 8
  %cmp70 = icmp eq %struct._GimpImage* %call69, %46
  br i1 %cmp70, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %for.body
  %47 = load %struct._GList*, %struct._GList** %contexts, align 8
  %48 = load %struct._GList*, %struct._GList** %list, align 8
  %data72 = getelementptr inbounds %struct._GList, %struct._GList* %48, i32 0, i32 0
  %49 = load i8*, i8** %data72, align 8
  %call73 = call %struct._GList* @g_list_prepend(%struct._GList* %47, i8* %49)
  store %struct._GList* %call73, %struct._GList** %contexts, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.71, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.74
  %50 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool75 = icmp ne %struct._GList* %50, null
  br i1 %tobool75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %51 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %51, i32 0, i32 1
  %52 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %52, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call76 = call %struct._GList* @gimp_get_display_iter(%struct._Gimp* %53)
  store %struct._GList* %call76, %struct._GList** %list, align 8
  br label %for.cond.77

for.cond.77:                                      ; preds = %cond.end.91, %for.end
  %54 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool78 = icmp ne %struct._GList* %54, null
  br i1 %tobool78, label %for.body.79, label %for.end.93

for.body.79:                                      ; preds = %for.cond.77
  %55 = load %struct._GList*, %struct._GList** %list, align 8
  %data81 = getelementptr inbounds %struct._GList, %struct._GList* %55, i32 0, i32 0
  %56 = load i8*, i8** %data81, align 8
  %57 = bitcast i8* %56 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %57, %struct._GimpDisplay** %display, align 8
  %58 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call82 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %58)
  %59 = load %struct._GimpImage*, %struct._GimpImage** %old.addr, align 8
  %cmp83 = icmp eq %struct._GimpImage* %call82, %59
  br i1 %cmp83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %for.body.79
  %60 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %61 = load %struct._GimpImage*, %struct._GimpImage** %new.addr, align 8
  call void @gimp_display_set_image(%struct._GimpDisplay* %60, %struct._GimpImage* %61)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %for.body.79
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %62 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool87 = icmp ne %struct._GList* %62, null
  br i1 %tobool87, label %cond.true.88, label %cond.false.90

cond.true.88:                                     ; preds = %for.inc.86
  %63 = load %struct._GList*, %struct._GList** %list, align 8
  %next89 = getelementptr inbounds %struct._GList, %struct._GList* %63, i32 0, i32 1
  %64 = load %struct._GList*, %struct._GList** %next89, align 8
  br label %cond.end.91

cond.false.90:                                    ; preds = %for.inc.86
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.90, %cond.true.88
  %cond92 = phi %struct._GList* [ %64, %cond.true.88 ], [ null, %cond.false.90 ]
  store %struct._GList* %cond92, %struct._GList** %list, align 8
  br label %for.cond.77

for.end.93:                                       ; preds = %for.cond.77
  %65 = load %struct._GList*, %struct._GList** %contexts, align 8
  %66 = load %struct._GimpImage*, %struct._GimpImage** %new.addr, align 8
  %67 = bitcast %struct._GimpImage* %66 to i8*
  call void @g_list_foreach(%struct._GList* %65, void (i8*, i8*)* bitcast (void (%struct._GimpContext*, %struct._GimpImage*)* @gimp_context_set_image to void (i8*, i8*)*), i8* %67)
  %68 = load %struct._GList*, %struct._GList** %contexts, align 8
  call void @g_list_free(%struct._GList* %68)
  br label %return

return:                                           ; preds = %for.end.93, %if.else.64, %if.else.36, %if.else.9
  ret void
}

declare %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext*) #3

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #3

declare void @gimp_display_set_image(%struct._GimpDisplay*, %struct._GimpImage*) #3

declare void @g_list_foreach(%struct._GList*, void (i8*, i8*)*, i8*) #3

declare void @gimp_context_set_image(%struct._GimpContext*, %struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_displays_get_num_visible(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %list = alloca %struct._GList*, align 8
  %visible = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %display = alloca %struct._GimpDisplay*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %toplevel = alloca %struct._GtkWidget*, align 8
  %__inst26 = alloca %struct._GTypeInstance*, align 8
  %__t28 = alloca i64, align 8
  %__r31 = alloca i32, align 4
  %tmp46 = alloca i32, align 4
  %window = alloca %struct._GdkDrawable*, align 8
  %state = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 0, i32* %visible, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_displays_get_num_visible, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GList* @gimp_get_display_iter(%struct._Gimp* %13)
  store %struct._GList* %call11, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool12 = icmp ne %struct._GList* %14, null
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8
  %17 = bitcast i8* %16 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %17, %struct._GimpDisplay** %display, align 8
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call15 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %18)
  store %struct._GimpDisplayShell* %call15, %struct._GimpDisplayShell** %shell, align 8
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %20 = bitcast %struct._GimpDisplayShell* %19 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_widget_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWidget*
  %call18 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %21)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.57

if.then.20:                                       ; preds = %for.body
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %23 = bitcast %struct._GimpDisplayShell* %22 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_widget_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call22)
  %24 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkWidget*
  %call24 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %24)
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %toplevel, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %26, %struct._GTypeInstance** %__inst26, align 8
  %call29 = call i64 @gtk_window_get_type() #4
  store i64 %call29, i64* %__t28, align 8
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst26, align 8
  %tobool32 = icmp ne %struct._GTypeInstance* %27, null
  br i1 %tobool32, label %if.else.34, label %if.then.33

if.then.33:                                       ; preds = %if.then.20
  store i32 0, i32* %__r31, align 4
  br label %if.end.45

if.else.34:                                       ; preds = %if.then.20
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst26, align 8
  %g_class35 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class35, align 8
  %tobool36 = icmp ne %struct._GTypeClass* %29, null
  br i1 %tobool36, label %land.lhs.true.37, label %if.else.42

land.lhs.true.37:                                 ; preds = %if.else.34
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst26, align 8
  %g_class38 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class38, align 8
  %g_type39 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %31, i32 0, i32 0
  %32 = load i64, i64* %g_type39, align 8
  %33 = load i64, i64* %__t28, align 8
  %cmp40 = icmp eq i64 %32, %33
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %land.lhs.true.37
  store i32 1, i32* %__r31, align 4
  br label %if.end.44

if.else.42:                                       ; preds = %land.lhs.true.37, %if.else.34
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst26, align 8
  %35 = load i64, i64* %__t28, align 8
  %call43 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %34, i64 %35) #5
  store i32 %call43, i32* %__r31, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.41
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.33
  %36 = load i32, i32* %__r31, align 4
  store i32 %36, i32* %tmp46
  %37 = load i32, i32* %tmp46
  %tobool47 = icmp ne i32 %37, 0
  br i1 %tobool47, label %if.then.48, label %if.end.56

if.then.48:                                       ; preds = %if.end.45
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %call50 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %38)
  store %struct._GdkDrawable* %call50, %struct._GdkDrawable** %window, align 8
  %39 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call52 = call i32 @gdk_window_get_state(%struct._GdkDrawable* %39)
  store i32 %call52, i32* %state, align 4
  %40 = load i32, i32* %state, align 4
  %and = and i32 %40, 3
  %cmp53 = icmp eq i32 %and, 0
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.48
  %41 = load i32, i32* %visible, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %visible, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.then.48
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.45
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.57
  %42 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool58 = icmp ne %struct._GList* %42, null
  br i1 %tobool58, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %43 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %43, i32 0, i32 1
  %44 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %44, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load i32, i32* %visible, align 4
  store i32 %45, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  %46 = load i32, i32* %retval
  ret i32 %46
}

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #3

declare i32 @gtk_widget_is_drawable(%struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #3

declare i32 @gdk_window_get_state(%struct._GdkDrawable*) #3

; Function Attrs: nounwind uwtable
define void @gimp_displays_set_busy(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_displays_set_busy, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GList* @gimp_get_display_iter(%struct._Gimp* %13)
  store %struct._GList* %call11, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool12 = icmp ne %struct._GList* %14, null
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8
  %17 = bitcast i8* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_display_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpDisplay*
  %call16 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %18)
  store %struct._GimpDisplayShell* %call16, %struct._GimpDisplayShell** %shell, align 8
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_set_override_cursor(%struct._GimpDisplayShell* %19, i32 150)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool17 = icmp ne %struct._GList* %20, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 1
  %22 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %22, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %for.cond
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_get_type() #1

declare void @gimp_display_shell_set_override_cursor(%struct._GimpDisplayShell*, i32) #3

; Function Attrs: nounwind uwtable
define void @gimp_displays_unset_busy(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_displays_unset_busy, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GList* @gimp_get_display_iter(%struct._Gimp* %13)
  store %struct._GList* %call11, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool12 = icmp ne %struct._GList* %14, null
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8
  %17 = bitcast i8* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_display_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpDisplay*
  %call16 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %18)
  store %struct._GimpDisplayShell* %call16, %struct._GimpDisplayShell** %shell, align 8
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_unset_override_cursor(%struct._GimpDisplayShell* %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool17 = icmp ne %struct._GList* %20, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 1
  %22 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %22, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %for.cond
  ret void
}

declare void @gimp_display_shell_unset_override_cursor(%struct._GimpDisplayShell*) #3

declare i32 @gimp_container_have(%struct._GimpContainer*, %struct._GimpObject*) #3

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare void @gimp_container_remove_handler(%struct._GimpContainer*, i32) #3

declare i32 @gimp_container_remove(%struct._GimpContainer*, %struct._GimpObject*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
