; ModuleID = './app/dialogs/print-size-dialog.bc'
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
%struct._Gimp = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
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
%struct.PrintSizeDialog = type { %struct._GimpImage*, %struct._GimpSizeEntry*, %struct._GimpSizeEntry*, %struct._GimpChainButton*, double, double, void (%struct._GtkWidget*, %struct._GimpImage*, double, double, i32, i8*)*, i8* }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpChainButton = type { %struct._GtkTable, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.print_size_dialog_new = private unnamed_addr constant [22 x i8] c"print_size_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"callback != NULL\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"gimp-print-resolution\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Print Size\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"_Width:\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"H_eight:\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"_X resolution:\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"_Y resolution:\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"pixels/%a\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @print_size_dialog_new(%struct._GimpImage* %image, %struct._GimpContext* %context, i8* %title, i8* %role, %struct._GtkWidget* %parent, void (i8*, i8*)* %help_func, i8* %help_id, void (%struct._GtkWidget*, %struct._GimpImage*, double, double, i32, i8*)* %callback, i8* %user_data) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %title.addr = alloca i8*, align 8
  %role.addr = alloca i8*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %help_func.addr = alloca void (i8*, i8*)*, align 8
  %help_id.addr = alloca i8*, align 8
  %callback.addr = alloca void (%struct._GtkWidget*, %struct._GimpImage*, double, double, i32, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  %private = alloca %struct.PrintSizeDialog*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %width = alloca %struct._GtkWidget*, align 8
  %height = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %chain = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %focus_chain = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %role, i8** %role.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store void (i8*, i8*)* %help_func, void (i8*, i8*)** %help_func.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store void (%struct._GtkWidget*, %struct._GimpImage*, double, double, i32, i8*)* %callback, void (%struct._GtkWidget*, %struct._GimpImage*, double, double, i32, i8*)** %callback.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GList* null, %struct._GList** %focus_chain, align 8
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
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.print_size_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type27, align 8
  %21 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %20, %21
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %23 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %24 = load i32, i32* %__r19, align 4
  store i32 %24, i32* %tmp34
  %25 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %25, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.print_size_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %26 = load void (%struct._GtkWidget*, %struct._GimpImage*, double, double, i32, i8*)*, void (%struct._GtkWidget*, %struct._GimpImage*, double, double, i32, i8*)** %callback.addr, align 8
  %cmp41 = icmp ne void (%struct._GtkWidget*, %struct._GimpImage*, double, double, i32, i8*)* %26, null
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.40
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.print_size_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %28 = bitcast %struct._GimpImage* %27 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_viewable_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call46)
  %29 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpViewable*
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %31 = load i8*, i8** %title.addr, align 8
  %32 = load i8*, i8** %role.addr, align 8
  %33 = load i8*, i8** %title.addr, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %35 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func.addr, align 8
  %36 = load i8*, i8** %help_id.addr, align 8
  %call48 = call %struct._GtkWidget* (%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) @gimp_viewable_dialog_new(%struct._GimpViewable* %29, %struct._GimpContext* %30, i8* %31, i8* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8* %33, %struct._GtkWidget* %34, void (i8*, i8*)* %35, i8* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %dialog, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_window_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call49)
  %39 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %39, i32 0)
  %call51 = call noalias i8* @g_slice_alloc0(i64 64)
  %40 = bitcast i8* %call51 to %struct.PrintSizeDialog*
  store %struct.PrintSizeDialog* %40, %struct.PrintSizeDialog** %private, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 80)
  %43 = bitcast %struct._GTypeInstance* %call52 to %struct._GObject*
  %44 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %45 = bitcast %struct.PrintSizeDialog* %44 to i8*
  call void @g_object_weak_ref(%struct._GObject* %43, void (i8*, %struct._GObject*)* bitcast (void (%struct.PrintSizeDialog*)* @print_size_dialog_free to void (i8*, %struct._GObject*)*), i8* %45)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %47 = bitcast %struct._GtkWidget* %46 to i8*
  %48 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %49 = bitcast %struct.PrintSizeDialog* %48 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.PrintSizeDialog*)* @print_size_dialog_response to void ()*), i8* %49, void (i8*, %struct._GClosure*)* null, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_dialog_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call54)
  %52 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %52, i32 1, i32 -5, i32 -6, i32 -1)
  %53 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %54 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %image56 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %54, i32 0, i32 0
  store %struct._GimpImage* %53, %struct._GimpImage** %image56, align 8
  %55 = load void (%struct._GtkWidget*, %struct._GimpImage*, double, double, i32, i8*)*, void (%struct._GtkWidget*, %struct._GimpImage*, double, double, i32, i8*)** %callback.addr, align 8
  %56 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %callback57 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %56, i32 0, i32 6
  store void (%struct._GtkWidget*, %struct._GimpImage*, double, double, i32, i8*)* %55, void (%struct._GtkWidget*, %struct._GimpImage*, double, double, i32, i8*)** %callback57, align 8
  %57 = load i8*, i8** %user_data.addr, align 8
  %58 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %user_data58 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %58, i32 0, i32 7
  store i8* %57, i8** %user_data58, align 8
  %59 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %60 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %xres = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %60, i32 0, i32 4
  %61 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %yres = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %61, i32 0, i32 5
  call void @gimp_image_get_resolution(%struct._GimpImage* %59, double* %xres, double* %yres)
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0)) #7
  %call60 = call %struct._GtkWidget* @gimp_frame_new(i8* %call59)
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %frame, align 8
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_container_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call61)
  %64 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %64, i32 12)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_dialog_get_type() #5
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call63)
  %67 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkDialog*
  %call65 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %67)
  %68 = bitcast %struct._GtkWidget* %call65 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_box_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call66)
  %69 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkBox*
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %69, %struct._GtkWidget* %70, i32 0, i32 0, i32 0)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %71)
  %call68 = call %struct._GtkWidget* @gtk_table_new(i32 4, i32 3, i32 0)
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %table, align 8
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_table_get_type() #5
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call69)
  %74 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %74, i32 0, i32 6)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_table_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call71)
  %77 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %77, i32 12)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_table_get_type() #5
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call73)
  %80 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %80, i32 0, i32 2)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_table_get_type() #5
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call75)
  %83 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %83, i32 2, i32 2)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_container_get_type() #5
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call77)
  %86 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkContainer*
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %86, %struct._GtkWidget* %87)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %88)
  %call79 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call79, %struct._GtkWidget** %width, align 8
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_entry_get_type() #5
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call80)
  %91 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %91, i32 8)
  %call82 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call82, %struct._GtkWidget** %height, align 8
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_entry_get_type() #5
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call83)
  %94 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %94, i32 8)
  %call85 = call i32 @gimp_get_default_unit()
  %call86 = call %struct._GtkWidget* @gimp_size_entry_new(i32 0, i32 %call85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 0, i32 0, i32 8, i32 1)
  store %struct._GtkWidget* %call86, %struct._GtkWidget** %entry1, align 8
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call87 = call i64 @gimp_size_entry_get_type() #5
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call87)
  %97 = bitcast %struct._GTypeInstance* %call88 to %struct._GimpSizeEntry*
  %98 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %size_entry = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %98, i32 0, i32 1
  store %struct._GimpSizeEntry* %97, %struct._GimpSizeEntry** %size_entry, align 8
  %call89 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #7
  %call90 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call89)
  store %struct._GtkWidget* %call90, %struct._GtkWidget** %label, align 8
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_misc_get_type() #5
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call91)
  %101 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %101, float 0.000000e+00, float 5.000000e-01)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_label_get_type() #5
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call93)
  %104 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkLabel*
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %104, %struct._GtkWidget* %105)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_table_get_type() #5
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call95)
  %108 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkTable*
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %108, %struct._GtkWidget* %109, i32 0, i32 1, i32 0, i32 1, i32 6, i32 6, i32 0, i32 0)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %110)
  %call97 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0)) #7
  %call98 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call97)
  store %struct._GtkWidget* %call98, %struct._GtkWidget** %label, align 8
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_misc_get_type() #5
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call99)
  %113 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %113, float 0.000000e+00, float 5.000000e-01)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_label_get_type() #5
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call101)
  %116 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkLabel*
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %116, %struct._GtkWidget* %117)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %119 = bitcast %struct._GtkWidget* %118 to %struct._GTypeInstance*
  %call103 = call i64 @gtk_table_get_type() #5
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call103)
  %120 = bitcast %struct._GTypeInstance* %call104 to %struct._GtkTable*
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %120, %struct._GtkWidget* %121, i32 0, i32 1, i32 1, i32 2, i32 6, i32 6, i32 0, i32 0)
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %122)
  %call105 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call105, %struct._GtkWidget** %hbox, align 8
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_table_get_type() #5
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call106)
  %125 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkTable*
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %125, %struct._GtkWidget* %126, i32 1, i32 2, i32 0, i32 2)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %127)
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %129 = bitcast %struct._GtkWidget* %128 to %struct._GTypeInstance*
  %call108 = call i64 @gtk_table_get_type() #5
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call108)
  %130 = bitcast %struct._GTypeInstance* %call109 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %130, i32 0, i32 2)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %132 = bitcast %struct._GtkWidget* %131 to %struct._GTypeInstance*
  %call110 = call i64 @gtk_table_get_type() #5
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call110)
  %133 = bitcast %struct._GTypeInstance* %call111 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %133, i32 1, i32 6)
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %135 = bitcast %struct._GtkWidget* %134 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_box_get_type() #5
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call112)
  %136 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkBox*
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %136, %struct._GtkWidget* %137, i32 0, i32 0, i32 0)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %138)
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %140 = bitcast %struct._GtkWidget* %139 to %struct._GTypeInstance*
  %call114 = call i64 @gimp_size_entry_get_type() #5
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %140, i64 %call114)
  %141 = bitcast %struct._GTypeInstance* %call115 to %struct._GimpSizeEntry*
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  %143 = bitcast %struct._GtkWidget* %142 to %struct._GTypeInstance*
  %call116 = call i64 @gtk_spin_button_get_type() #5
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %143, i64 %call116)
  %144 = bitcast %struct._GTypeInstance* %call117 to %struct._GtkSpinButton*
  call void @gimp_size_entry_add_field(%struct._GimpSizeEntry* %141, %struct._GtkSpinButton* %144, %struct._GtkSpinButton* null)
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %146 = bitcast %struct._GtkWidget* %145 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_table_get_type() #5
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %146, i64 %call118)
  %147 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkTable*
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %147, %struct._GtkWidget* %148, i32 0, i32 1, i32 1, i32 2)
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %149)
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %151 = bitcast %struct._GtkWidget* %150 to %struct._GTypeInstance*
  %call120 = call i64 @gimp_size_entry_get_type() #5
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %151, i64 %call120)
  %152 = bitcast %struct._GTypeInstance* %call121 to %struct._GimpSizeEntry*
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %154 = bitcast %struct._GtkWidget* %153 to %struct._GTypeInstance*
  %call122 = call i64 @gtk_spin_button_get_type() #5
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %154, i64 %call122)
  %155 = bitcast %struct._GTypeInstance* %call123 to %struct._GtkSpinButton*
  call void @gimp_size_entry_add_field(%struct._GimpSizeEntry* %152, %struct._GtkSpinButton* %155, %struct._GtkSpinButton* null)
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %157 = bitcast %struct._GtkWidget* %156 to %struct._GTypeInstance*
  %call124 = call i64 @gtk_table_get_type() #5
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %157, i64 %call124)
  %158 = bitcast %struct._GTypeInstance* %call125 to %struct._GtkTable*
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %158, %struct._GtkWidget* %159, i32 0, i32 1, i32 0, i32 1)
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %160)
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %162 = bitcast %struct._GtkWidget* %161 to %struct._GTypeInstance*
  %call126 = call i64 @gimp_size_entry_get_type() #5
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %162, i64 %call126)
  %163 = bitcast %struct._GTypeInstance* %call127 to %struct._GimpSizeEntry*
  %164 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %xres128 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %164, i32 0, i32 4
  %165 = load double, double* %xres128, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %163, i32 0, double %165, i32 0)
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %167 = bitcast %struct._GtkWidget* %166 to %struct._GTypeInstance*
  %call129 = call i64 @gimp_size_entry_get_type() #5
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %167, i64 %call129)
  %168 = bitcast %struct._GTypeInstance* %call130 to %struct._GimpSizeEntry*
  %169 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %yres131 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %169, i32 0, i32 5
  %170 = load double, double* %yres131, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %168, i32 1, double %170, i32 0)
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %172 = bitcast %struct._GtkWidget* %171 to %struct._GTypeInstance*
  %call132 = call i64 @gimp_size_entry_get_type() #5
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %172, i64 %call132)
  %173 = bitcast %struct._GTypeInstance* %call133 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %173, i32 0, double 1.000000e+00, double 2.621440e+05)
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %175 = bitcast %struct._GtkWidget* %174 to %struct._GTypeInstance*
  %call134 = call i64 @gimp_size_entry_get_type() #5
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %175, i64 %call134)
  %176 = bitcast %struct._GTypeInstance* %call135 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %176, i32 1, double 1.000000e+00, double 2.621440e+05)
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %178 = bitcast %struct._GtkWidget* %177 to %struct._GTypeInstance*
  %call136 = call i64 @gimp_size_entry_get_type() #5
  %call137 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %178, i64 %call136)
  %179 = bitcast %struct._GTypeInstance* %call137 to %struct._GimpSizeEntry*
  %180 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call138 = call i32 @gimp_image_get_width(%struct._GimpImage* %180)
  %conv = sitofp i32 %call138 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %179, i32 0, double %conv)
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %182 = bitcast %struct._GtkWidget* %181 to %struct._GTypeInstance*
  %call139 = call i64 @gimp_size_entry_get_type() #5
  %call140 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %182, i64 %call139)
  %183 = bitcast %struct._GTypeInstance* %call140 to %struct._GimpSizeEntry*
  %184 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call141 = call i32 @gimp_image_get_height(%struct._GimpImage* %184)
  %conv142 = sitofp i32 %call141 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %183, i32 1, double %conv142)
  %call143 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call143, %struct._GtkWidget** %width, align 8
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %186 = bitcast %struct._GtkWidget* %185 to %struct._GTypeInstance*
  %call144 = call i64 @gtk_entry_get_type() #5
  %call145 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %186, i64 %call144)
  %187 = bitcast %struct._GTypeInstance* %call145 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %187, i32 8)
  %call146 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call146, %struct._GtkWidget** %height, align 8
  %188 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  %189 = bitcast %struct._GtkWidget* %188 to %struct._GTypeInstance*
  %call147 = call i64 @gtk_entry_get_type() #5
  %call148 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %189, i64 %call147)
  %190 = bitcast %struct._GTypeInstance* %call148 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %190, i32 8)
  %call149 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0)) #7
  %call150 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call149)
  store %struct._GtkWidget* %call150, %struct._GtkWidget** %label, align 8
  %191 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %192 = bitcast %struct._GtkWidget* %191 to %struct._GTypeInstance*
  %call151 = call i64 @gtk_misc_get_type() #5
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %192, i64 %call151)
  %193 = bitcast %struct._GTypeInstance* %call152 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %193, float 0.000000e+00, float 5.000000e-01)
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %195 = bitcast %struct._GtkWidget* %194 to %struct._GTypeInstance*
  %call153 = call i64 @gtk_label_get_type() #5
  %call154 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %195, i64 %call153)
  %196 = bitcast %struct._GTypeInstance* %call154 to %struct._GtkLabel*
  %197 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %196, %struct._GtkWidget* %197)
  %198 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %199 = bitcast %struct._GtkWidget* %198 to %struct._GTypeInstance*
  %call155 = call i64 @gtk_table_get_type() #5
  %call156 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %199, i64 %call155)
  %200 = bitcast %struct._GTypeInstance* %call156 to %struct._GtkTable*
  %201 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %200, %struct._GtkWidget* %201, i32 0, i32 1, i32 2, i32 3, i32 6, i32 6, i32 0, i32 0)
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %202)
  %call157 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0)) #7
  %call158 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call157)
  store %struct._GtkWidget* %call158, %struct._GtkWidget** %label, align 8
  %203 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %204 = bitcast %struct._GtkWidget* %203 to %struct._GTypeInstance*
  %call159 = call i64 @gtk_misc_get_type() #5
  %call160 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %204, i64 %call159)
  %205 = bitcast %struct._GTypeInstance* %call160 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %205, float 0.000000e+00, float 5.000000e-01)
  %206 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %207 = bitcast %struct._GtkWidget* %206 to %struct._GTypeInstance*
  %call161 = call i64 @gtk_label_get_type() #5
  %call162 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %207, i64 %call161)
  %208 = bitcast %struct._GTypeInstance* %call162 to %struct._GtkLabel*
  %209 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %208, %struct._GtkWidget* %209)
  %210 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %211 = bitcast %struct._GtkWidget* %210 to %struct._GTypeInstance*
  %call163 = call i64 @gtk_table_get_type() #5
  %call164 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %211, i64 %call163)
  %212 = bitcast %struct._GTypeInstance* %call164 to %struct._GtkTable*
  %213 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %212, %struct._GtkWidget* %213, i32 0, i32 1, i32 3, i32 4, i32 6, i32 6, i32 0, i32 0)
  %214 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %214)
  %call165 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call165, %struct._GtkWidget** %hbox, align 8
  %215 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %216 = bitcast %struct._GtkWidget* %215 to %struct._GTypeInstance*
  %call166 = call i64 @gtk_table_get_type() #5
  %call167 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %216, i64 %call166)
  %217 = bitcast %struct._GTypeInstance* %call167 to %struct._GtkTable*
  %218 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %217, %struct._GtkWidget* %218, i32 1, i32 2, i32 2, i32 4)
  %219 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %219)
  %220 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call168 = call i32 @gimp_image_get_unit(%struct._GimpImage* %220)
  %call169 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0)) #7
  %call170 = call %struct._GtkWidget* @gimp_size_entry_new(i32 0, i32 %call168, i8* %call169, i32 0, i32 0, i32 0, i32 8, i32 2)
  store %struct._GtkWidget* %call170, %struct._GtkWidget** %entry1, align 8
  %221 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %222 = bitcast %struct._GtkWidget* %221 to %struct._GTypeInstance*
  %call171 = call i64 @gimp_size_entry_get_type() #5
  %call172 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %222, i64 %call171)
  %223 = bitcast %struct._GTypeInstance* %call172 to %struct._GimpSizeEntry*
  %224 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %resolution_entry = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %224, i32 0, i32 2
  store %struct._GimpSizeEntry* %223, %struct._GimpSizeEntry** %resolution_entry, align 8
  %225 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %226 = bitcast %struct._GtkWidget* %225 to %struct._GTypeInstance*
  %call173 = call i64 @gtk_table_get_type() #5
  %call174 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %226, i64 %call173)
  %227 = bitcast %struct._GTypeInstance* %call174 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %227, i32 0, i32 2)
  %228 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %229 = bitcast %struct._GtkWidget* %228 to %struct._GTypeInstance*
  %call175 = call i64 @gtk_table_get_type() #5
  %call176 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %229, i64 %call175)
  %230 = bitcast %struct._GTypeInstance* %call176 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %230, i32 1, i32 2)
  %231 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %232 = bitcast %struct._GtkWidget* %231 to %struct._GTypeInstance*
  %call177 = call i64 @gtk_table_get_type() #5
  %call178 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %232, i64 %call177)
  %233 = bitcast %struct._GTypeInstance* %call178 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %233, i32 2, i32 2)
  %234 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %235 = bitcast %struct._GtkWidget* %234 to %struct._GTypeInstance*
  %call179 = call i64 @gtk_box_get_type() #5
  %call180 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %235, i64 %call179)
  %236 = bitcast %struct._GTypeInstance* %call180 to %struct._GtkBox*
  %237 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %236, %struct._GtkWidget* %237, i32 0, i32 0, i32 0)
  %238 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %238)
  %239 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %240 = bitcast %struct._GtkWidget* %239 to %struct._GTypeInstance*
  %call181 = call i64 @gimp_size_entry_get_type() #5
  %call182 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %240, i64 %call181)
  %241 = bitcast %struct._GTypeInstance* %call182 to %struct._GimpSizeEntry*
  %242 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  %243 = bitcast %struct._GtkWidget* %242 to %struct._GTypeInstance*
  %call183 = call i64 @gtk_spin_button_get_type() #5
  %call184 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %243, i64 %call183)
  %244 = bitcast %struct._GTypeInstance* %call184 to %struct._GtkSpinButton*
  call void @gimp_size_entry_add_field(%struct._GimpSizeEntry* %241, %struct._GtkSpinButton* %244, %struct._GtkSpinButton* null)
  %245 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %246 = bitcast %struct._GtkWidget* %245 to %struct._GTypeInstance*
  %call185 = call i64 @gtk_table_get_type() #5
  %call186 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %246, i64 %call185)
  %247 = bitcast %struct._GTypeInstance* %call186 to %struct._GtkTable*
  %248 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %247, %struct._GtkWidget* %248, i32 0, i32 1, i32 1, i32 2)
  %249 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %249)
  %250 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %251 = bitcast %struct._GtkWidget* %250 to %struct._GTypeInstance*
  %call187 = call i64 @gimp_size_entry_get_type() #5
  %call188 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %251, i64 %call187)
  %252 = bitcast %struct._GTypeInstance* %call188 to %struct._GimpSizeEntry*
  %253 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %254 = bitcast %struct._GtkWidget* %253 to %struct._GTypeInstance*
  %call189 = call i64 @gtk_spin_button_get_type() #5
  %call190 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %254, i64 %call189)
  %255 = bitcast %struct._GTypeInstance* %call190 to %struct._GtkSpinButton*
  call void @gimp_size_entry_add_field(%struct._GimpSizeEntry* %252, %struct._GtkSpinButton* %255, %struct._GtkSpinButton* null)
  %256 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %257 = bitcast %struct._GtkWidget* %256 to %struct._GTypeInstance*
  %call191 = call i64 @gtk_table_get_type() #5
  %call192 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %257, i64 %call191)
  %258 = bitcast %struct._GTypeInstance* %call192 to %struct._GtkTable*
  %259 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %258, %struct._GtkWidget* %259, i32 0, i32 1, i32 0, i32 1)
  %260 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %260)
  %261 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %262 = bitcast %struct._GtkWidget* %261 to %struct._GTypeInstance*
  %call193 = call i64 @gimp_size_entry_get_type() #5
  %call194 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %262, i64 %call193)
  %263 = bitcast %struct._GTypeInstance* %call194 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %263, i32 0, double 5.000000e-03, double 6.553600e+04)
  %264 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %265 = bitcast %struct._GtkWidget* %264 to %struct._GTypeInstance*
  %call195 = call i64 @gimp_size_entry_get_type() #5
  %call196 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %265, i64 %call195)
  %266 = bitcast %struct._GTypeInstance* %call196 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %266, i32 1, double 5.000000e-03, double 6.553600e+04)
  %267 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %268 = bitcast %struct._GtkWidget* %267 to %struct._GTypeInstance*
  %call197 = call i64 @gimp_size_entry_get_type() #5
  %call198 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %268, i64 %call197)
  %269 = bitcast %struct._GTypeInstance* %call198 to %struct._GimpSizeEntry*
  %270 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %xres199 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %270, i32 0, i32 4
  %271 = load double, double* %xres199, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %269, i32 0, double %271)
  %272 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %273 = bitcast %struct._GtkWidget* %272 to %struct._GTypeInstance*
  %call200 = call i64 @gimp_size_entry_get_type() #5
  %call201 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %273, i64 %call200)
  %274 = bitcast %struct._GTypeInstance* %call201 to %struct._GimpSizeEntry*
  %275 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %yres202 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %275, i32 0, i32 5
  %276 = load double, double* %yres202, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %274, i32 1, double %276)
  %call203 = call %struct._GtkWidget* @gimp_chain_button_new(i32 3)
  store %struct._GtkWidget* %call203, %struct._GtkWidget** %chain, align 8
  %277 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %xres204 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %277, i32 0, i32 4
  %278 = load double, double* %xres204, align 8
  %279 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %yres205 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %279, i32 0, i32 5
  %280 = load double, double* %yres205, align 8
  %sub = fsub double %278, %280
  %cmp206 = fcmp olt double %sub, 0.000000e+00
  br i1 %cmp206, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.45
  %281 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %xres208 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %281, i32 0, i32 4
  %282 = load double, double* %xres208, align 8
  %283 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %yres209 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %283, i32 0, i32 5
  %284 = load double, double* %yres209, align 8
  %sub210 = fsub double %282, %284
  %sub211 = fsub double -0.000000e+00, %sub210
  br label %cond.end

cond.false:                                       ; preds = %do.end.45
  %285 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %xres212 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %285, i32 0, i32 4
  %286 = load double, double* %xres212, align 8
  %287 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %yres213 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %287, i32 0, i32 5
  %288 = load double, double* %yres213, align 8
  %sub214 = fsub double %286, %288
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub211, %cond.true ], [ %sub214, %cond.false ]
  %cmp215 = fcmp olt double %cond, 5.000000e-03
  br i1 %cmp215, label %if.then.217, label %if.end.220

if.then.217:                                      ; preds = %cond.end
  %289 = load %struct._GtkWidget*, %struct._GtkWidget** %chain, align 8
  %290 = bitcast %struct._GtkWidget* %289 to %struct._GTypeInstance*
  %call218 = call i64 @gimp_chain_button_get_type() #5
  %call219 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %290, i64 %call218)
  %291 = bitcast %struct._GTypeInstance* %call219 to %struct._GimpChainButton*
  call void @gimp_chain_button_set_active(%struct._GimpChainButton* %291, i32 1)
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.217, %cond.end
  %292 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %293 = bitcast %struct._GtkWidget* %292 to %struct._GTypeInstance*
  %call221 = call i64 @gtk_table_get_type() #5
  %call222 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %293, i64 %call221)
  %294 = bitcast %struct._GTypeInstance* %call222 to %struct._GtkTable*
  %295 = load %struct._GtkWidget*, %struct._GtkWidget** %chain, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %294, %struct._GtkWidget* %295, i32 1, i32 2, i32 0, i32 2)
  %296 = load %struct._GtkWidget*, %struct._GtkWidget** %chain, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %296)
  %297 = load %struct._GtkWidget*, %struct._GtkWidget** %chain, align 8
  %298 = bitcast %struct._GtkWidget* %297 to %struct._GTypeInstance*
  %call223 = call i64 @gimp_chain_button_get_type() #5
  %call224 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %298, i64 %call223)
  %299 = bitcast %struct._GTypeInstance* %call224 to %struct._GimpChainButton*
  %300 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %chain225 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %300, i32 0, i32 3
  store %struct._GimpChainButton* %299, %struct._GimpChainButton** %chain225, align 8
  %301 = load %struct._GList*, %struct._GList** %focus_chain, align 8
  %302 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %303 = bitcast %struct._GtkWidget* %302 to %struct._GTypeInstance*
  %call226 = call i64 @gimp_size_entry_get_type() #5
  %call227 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %303, i64 %call226)
  %304 = bitcast %struct._GTypeInstance* %call227 to %struct._GimpSizeEntry*
  %unitmenu = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %304, i32 0, i32 3
  %305 = load %struct._GtkWidget*, %struct._GtkWidget** %unitmenu, align 8
  %306 = bitcast %struct._GtkWidget* %305 to i8*
  %call228 = call %struct._GList* @g_list_prepend(%struct._GList* %301, i8* %306)
  store %struct._GList* %call228, %struct._GList** %focus_chain, align 8
  %307 = load %struct._GList*, %struct._GList** %focus_chain, align 8
  %308 = load %struct._GtkWidget*, %struct._GtkWidget** %chain, align 8
  %309 = bitcast %struct._GtkWidget* %308 to i8*
  %call229 = call %struct._GList* @g_list_prepend(%struct._GList* %307, i8* %309)
  store %struct._GList* %call229, %struct._GList** %focus_chain, align 8
  %310 = load %struct._GList*, %struct._GList** %focus_chain, align 8
  %311 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  %312 = bitcast %struct._GtkWidget* %311 to i8*
  %call230 = call %struct._GList* @g_list_prepend(%struct._GList* %310, i8* %312)
  store %struct._GList* %call230, %struct._GList** %focus_chain, align 8
  %313 = load %struct._GList*, %struct._GList** %focus_chain, align 8
  %314 = load %struct._GtkWidget*, %struct._GtkWidget** %width, align 8
  %315 = bitcast %struct._GtkWidget* %314 to i8*
  %call231 = call %struct._GList* @g_list_prepend(%struct._GList* %313, i8* %315)
  store %struct._GList* %call231, %struct._GList** %focus_chain, align 8
  %316 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %317 = bitcast %struct._GtkWidget* %316 to %struct._GTypeInstance*
  %call232 = call i64 @gtk_container_get_type() #5
  %call233 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %317, i64 %call232)
  %318 = bitcast %struct._GTypeInstance* %call233 to %struct._GtkContainer*
  %319 = load %struct._GList*, %struct._GList** %focus_chain, align 8
  call void @gtk_container_set_focus_chain(%struct._GtkContainer* %318, %struct._GList* %319)
  %320 = load %struct._GList*, %struct._GList** %focus_chain, align 8
  call void @g_list_free(%struct._GList* %320)
  %321 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %size_entry234 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %321, i32 0, i32 1
  %322 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry234, align 8
  %323 = bitcast %struct._GimpSizeEntry* %322 to i8*
  %324 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %325 = bitcast %struct.PrintSizeDialog* %324 to i8*
  %call235 = call i64 @g_signal_connect_data(i8* %323, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.PrintSizeDialog*)* @print_size_dialog_size_changed to void ()*), i8* %325, void (i8*, %struct._GClosure*)* null, i32 0)
  %326 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %resolution_entry236 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %326, i32 0, i32 2
  %327 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %resolution_entry236, align 8
  %328 = bitcast %struct._GimpSizeEntry* %327 to i8*
  %329 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private, align 8
  %330 = bitcast %struct.PrintSizeDialog* %329 to i8*
  %call237 = call i64 @g_signal_connect_data(i8* %328, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.PrintSizeDialog*)* @print_size_dialog_resolution_changed to void ()*), i8* %330, void (i8*, %struct._GClosure*)* null, i32 0)
  %331 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* %331, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.220, %if.else.43, %if.else.37, %if.else.10
  %332 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %332
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

declare %struct._GtkWidget* @gimp_viewable_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare noalias i8* @g_slice_alloc0(i64) #3

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @print_size_dialog_free(%struct.PrintSizeDialog* %private) #0 {
entry:
  %private.addr = alloca %struct.PrintSizeDialog*, align 8
  store %struct.PrintSizeDialog* %private, %struct.PrintSizeDialog** %private.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %1 = bitcast %struct.PrintSizeDialog* %0 to i8*
  call void @g_slice_free1(i64 64, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @print_size_dialog_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct.PrintSizeDialog* %private) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %private.addr = alloca %struct.PrintSizeDialog*, align 8
  %entry1 = alloca %struct._GimpSizeEntry*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.PrintSizeDialog* %private, %struct.PrintSizeDialog** %private.addr, align 8
  %0 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %resolution_entry = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %0, i32 0, i32 2
  %1 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %resolution_entry, align 8
  store %struct._GimpSizeEntry* %1, %struct._GimpSizeEntry** %entry1, align 8
  %2 = load i32, i32* %response_id.addr, align 4
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  call void @print_size_dialog_reset(%struct.PrintSizeDialog* %3)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %callback = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %4, i32 0, i32 6
  %5 = load void (%struct._GtkWidget*, %struct._GimpImage*, double, double, i32, i8*)*, void (%struct._GtkWidget*, %struct._GimpImage*, double, double, i32, i8*)** %callback, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %7 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %image = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %7, i32 0, i32 0
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %9 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry1, align 8
  %call = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %9, i32 0)
  %10 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry1, align 8
  %call3 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %10, i32 1)
  %11 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry1, align 8
  %call4 = call i32 @gimp_size_entry_get_unit(%struct._GimpSizeEntry* %11)
  %12 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %user_data = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %12, i32 0, i32 7
  %13 = load i8*, i8** %user_data, align 8
  call void %5(%struct._GtkWidget* %6, %struct._GimpImage* %8, double %call, double %call3, i32 %call4, i8* %13)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %14)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb
  ret void
}

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #3

declare %struct._GtkWidget* @gimp_frame_new(i8*) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #3

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #3

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #3

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #3

declare void @gtk_entry_set_width_chars(%struct._GtkEntry*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #1

declare %struct._GtkWidget* @gimp_size_entry_new(i32, i32, i8*, i32, i32, i32, i32, i32) #3

declare i32 @gimp_get_default_unit() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #3

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #3

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #3

declare void @gimp_size_entry_add_field(%struct._GimpSizeEntry*, %struct._GtkSpinButton*, %struct._GtkSpinButton*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #1

declare void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry*, i32, double, i32) #3

declare void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry*, i32, double, double) #3

declare void @gimp_size_entry_set_refval(%struct._GimpSizeEntry*, i32, double) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare i32 @gimp_image_get_unit(%struct._GimpImage*) #3

declare %struct._GtkWidget* @gimp_chain_button_new(i32) #3

declare void @gimp_chain_button_set_active(%struct._GimpChainButton*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_chain_button_get_type() #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #3

declare void @gtk_container_set_focus_chain(%struct._GtkContainer*, %struct._GList*) #3

declare void @g_list_free(%struct._GList*) #3

; Function Attrs: nounwind uwtable
define internal void @print_size_dialog_size_changed(%struct._GtkWidget* %widget, %struct.PrintSizeDialog* %private) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %private.addr = alloca %struct.PrintSizeDialog*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %scale = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.PrintSizeDialog* %private, %struct.PrintSizeDialog** %private.addr, align 8
  %0 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %image1 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %0, i32 0, i32 0
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image1, align 8
  store %struct._GimpImage* %1, %struct._GimpImage** %image, align 8
  %2 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %size_entry = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %2, i32 0, i32 1
  %3 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry, align 8
  %call = call i32 @gimp_size_entry_get_unit(%struct._GimpSizeEntry* %3)
  %call2 = call double @gimp_unit_get_factor(i32 %call)
  store double %call2, double* %scale, align 8
  %4 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %size_entry3 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %4, i32 0, i32 1
  %5 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry3, align 8
  %call4 = call double @gimp_size_entry_get_value(%struct._GimpSizeEntry* %5, i32 0)
  store double %call4, double* %width, align 8
  %6 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %size_entry5 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %6, i32 0, i32 1
  %7 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry5, align 8
  %call6 = call double @gimp_size_entry_get_value(%struct._GimpSizeEntry* %7, i32 1)
  store double %call6, double* %height, align 8
  %8 = load double, double* %scale, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call7 = call i32 @gimp_image_get_width(%struct._GimpImage* %9)
  %conv = sitofp i32 %call7 to double
  %mul = fmul double %8, %conv
  %10 = load double, double* %width, align 8
  %cmp = fcmp ogt double 1.000000e-03, %10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load double, double* %width, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.000000e-03, %cond.true ], [ %11, %cond.false ]
  %div = fdiv double %mul, %cond
  store double %div, double* %xres, align 8
  %12 = load double, double* %scale, align 8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call9 = call i32 @gimp_image_get_height(%struct._GimpImage* %13)
  %conv10 = sitofp i32 %call9 to double
  %mul11 = fmul double %12, %conv10
  %14 = load double, double* %height, align 8
  %cmp12 = fcmp ogt double 1.000000e-03, %14
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.end
  br label %cond.end.16

cond.false.15:                                    ; preds = %cond.end
  %15 = load double, double* %height, align 8
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.14
  %cond17 = phi double [ 1.000000e-03, %cond.true.14 ], [ %15, %cond.false.15 ]
  %div18 = fdiv double %mul11, %cond17
  store double %div18, double* %yres, align 8
  %16 = load double, double* %xres, align 8
  %cmp19 = fcmp ogt double %16, 6.553600e+04
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end.16
  br label %cond.end.29

cond.false.22:                                    ; preds = %cond.end.16
  %17 = load double, double* %xres, align 8
  %cmp23 = fcmp olt double %17, 5.000000e-03
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.false.22
  br label %cond.end.27

cond.false.26:                                    ; preds = %cond.false.22
  %18 = load double, double* %xres, align 8
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.25
  %cond28 = phi double [ 5.000000e-03, %cond.true.25 ], [ %18, %cond.false.26 ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end.27, %cond.true.21
  %cond30 = phi double [ 6.553600e+04, %cond.true.21 ], [ %cond28, %cond.end.27 ]
  store double %cond30, double* %xres, align 8
  %19 = load double, double* %yres, align 8
  %cmp31 = fcmp ogt double %19, 6.553600e+04
  br i1 %cmp31, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.end.29
  br label %cond.end.41

cond.false.34:                                    ; preds = %cond.end.29
  %20 = load double, double* %yres, align 8
  %cmp35 = fcmp olt double %20, 5.000000e-03
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.false.34
  br label %cond.end.39

cond.false.38:                                    ; preds = %cond.false.34
  %21 = load double, double* %yres, align 8
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.37
  %cond40 = phi double [ 5.000000e-03, %cond.true.37 ], [ %21, %cond.false.38 ]
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.end.39, %cond.true.33
  %cond42 = phi double [ 6.553600e+04, %cond.true.33 ], [ %cond40, %cond.end.39 ]
  store double %cond42, double* %yres, align 8
  %22 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %23 = load double, double* %xres, align 8
  %24 = load double, double* %yres, align 8
  call void @print_size_dialog_set_resolution(%struct.PrintSizeDialog* %22, double %23, double %24)
  %25 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call43 = call i32 @gimp_image_get_width(%struct._GimpImage* %26)
  %conv44 = sitofp i32 %call43 to double
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call45 = call i32 @gimp_image_get_height(%struct._GimpImage* %27)
  %conv46 = sitofp i32 %call45 to double
  call void @print_size_dialog_set_size(%struct.PrintSizeDialog* %25, double %conv44, double %conv46)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_size_dialog_resolution_changed(%struct._GtkWidget* %widget, %struct.PrintSizeDialog* %private) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %private.addr = alloca %struct.PrintSizeDialog*, align 8
  %entry1 = alloca %struct._GimpSizeEntry*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.PrintSizeDialog* %private, %struct.PrintSizeDialog** %private.addr, align 8
  %0 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %resolution_entry = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %0, i32 0, i32 2
  %1 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %resolution_entry, align 8
  store %struct._GimpSizeEntry* %1, %struct._GimpSizeEntry** %entry1, align 8
  %2 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry1, align 8
  %call = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %2, i32 0)
  store double %call, double* %xres, align 8
  %3 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry1, align 8
  %call2 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %3, i32 1)
  store double %call2, double* %yres, align 8
  %4 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %5 = load double, double* %xres, align 8
  %6 = load double, double* %yres, align 8
  call void @print_size_dialog_set_resolution(%struct.PrintSizeDialog* %4, double %5, double %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_size_dialog_reset(%struct.PrintSizeDialog* %private) #0 {
entry:
  %private.addr = alloca %struct.PrintSizeDialog*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct.PrintSizeDialog* %private, %struct.PrintSizeDialog** %private.addr, align 8
  %0 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %resolution_entry = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %0, i32 0, i32 2
  %1 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %resolution_entry, align 8
  %call = call i32 @gimp_get_default_unit()
  call void @gimp_size_entry_set_unit(%struct._GimpSizeEntry* %1, i32 %call)
  %2 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %image = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %2, i32 0, i32 0
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %3, double* %xres, double* %yres)
  %4 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %5 = load double, double* %xres, align 8
  %6 = load double, double* %yres, align 8
  call void @print_size_dialog_set_resolution(%struct.PrintSizeDialog* %4, double %5, double %6)
  ret void
}

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #3

declare i32 @gimp_size_entry_get_unit(%struct._GimpSizeEntry*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare void @gimp_size_entry_set_unit(%struct._GimpSizeEntry*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @print_size_dialog_set_resolution(%struct.PrintSizeDialog* %private, double %xres, double %yres) #0 {
entry:
  %private.addr = alloca %struct.PrintSizeDialog*, align 8
  %xres.addr = alloca double, align 8
  %yres.addr = alloca double, align 8
  store %struct.PrintSizeDialog* %private, %struct.PrintSizeDialog** %private.addr, align 8
  store double %xres, double* %xres.addr, align 8
  store double %yres, double* %yres.addr, align 8
  %0 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %chain = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %0, i32 0, i32 3
  %1 = load %struct._GimpChainButton*, %struct._GimpChainButton** %chain, align 8
  %tobool = icmp ne %struct._GimpChainButton* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %chain1 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %2, i32 0, i32 3
  %3 = load %struct._GimpChainButton*, %struct._GimpChainButton** %chain1, align 8
  %call = call i32 @gimp_chain_button_get_active(%struct._GimpChainButton* %3)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then, label %if.end.5

if.then:                                          ; preds = %land.lhs.true
  %4 = load double, double* %xres.addr, align 8
  %5 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %xres3 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %5, i32 0, i32 4
  %6 = load double, double* %xres3, align 8
  %cmp = fcmp une double %4, %6
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %7 = load double, double* %xres.addr, align 8
  store double %7, double* %yres.addr, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load double, double* %yres.addr, align 8
  store double %8, double* %xres.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %land.lhs.true, %entry
  %9 = load double, double* %xres.addr, align 8
  %10 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %xres6 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %10, i32 0, i32 4
  store double %9, double* %xres6, align 8
  %11 = load double, double* %yres.addr, align 8
  %12 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %yres7 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %12, i32 0, i32 5
  store double %11, double* %yres7, align 8
  %13 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %resolution_entry = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %13, i32 0, i32 2
  %14 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %resolution_entry, align 8
  %15 = bitcast %struct._GimpSizeEntry* %14 to i8*
  %16 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %17 = bitcast %struct.PrintSizeDialog* %16 to i8*
  %call8 = call i32 @g_signal_handlers_block_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct.PrintSizeDialog*)* @print_size_dialog_resolution_changed to i8*), i8* %17)
  %18 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %resolution_entry9 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %18, i32 0, i32 2
  %19 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %resolution_entry9, align 8
  %20 = load double, double* %xres.addr, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %19, i32 0, double %20)
  %21 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %resolution_entry10 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %21, i32 0, i32 2
  %22 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %resolution_entry10, align 8
  %23 = load double, double* %yres.addr, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %22, i32 1, double %23)
  %24 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %resolution_entry11 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %24, i32 0, i32 2
  %25 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %resolution_entry11, align 8
  %26 = bitcast %struct._GimpSizeEntry* %25 to i8*
  %27 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %28 = bitcast %struct.PrintSizeDialog* %27 to i8*
  %call12 = call i32 @g_signal_handlers_unblock_matched(i8* %26, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct.PrintSizeDialog*)* @print_size_dialog_resolution_changed to i8*), i8* %28)
  %29 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %size_entry = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %29, i32 0, i32 1
  %30 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry, align 8
  %31 = bitcast %struct._GimpSizeEntry* %30 to i8*
  %32 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %33 = bitcast %struct.PrintSizeDialog* %32 to i8*
  %call13 = call i32 @g_signal_handlers_block_matched(i8* %31, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct.PrintSizeDialog*)* @print_size_dialog_size_changed to i8*), i8* %33)
  %34 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %size_entry14 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %34, i32 0, i32 1
  %35 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry14, align 8
  %36 = load double, double* %xres.addr, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %35, i32 0, double %36, i32 1)
  %37 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %size_entry15 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %37, i32 0, i32 1
  %38 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry15, align 8
  %39 = load double, double* %yres.addr, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %38, i32 1, double %39, i32 1)
  %40 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %size_entry16 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %40, i32 0, i32 1
  %41 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry16, align 8
  %42 = bitcast %struct._GimpSizeEntry* %41 to i8*
  %43 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %44 = bitcast %struct.PrintSizeDialog* %43 to i8*
  %call17 = call i32 @g_signal_handlers_unblock_matched(i8* %42, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct.PrintSizeDialog*)* @print_size_dialog_size_changed to i8*), i8* %44)
  ret void
}

declare i32 @gimp_chain_button_get_active(%struct._GimpChainButton*) #3

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare double @gimp_unit_get_factor(i32) #3

declare double @gimp_size_entry_get_value(%struct._GimpSizeEntry*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @print_size_dialog_set_size(%struct.PrintSizeDialog* %private, double %width, double %height) #0 {
entry:
  %private.addr = alloca %struct.PrintSizeDialog*, align 8
  %width.addr = alloca double, align 8
  %height.addr = alloca double, align 8
  store %struct.PrintSizeDialog* %private, %struct.PrintSizeDialog** %private.addr, align 8
  store double %width, double* %width.addr, align 8
  store double %height, double* %height.addr, align 8
  %0 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %size_entry = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %0, i32 0, i32 1
  %1 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry, align 8
  %2 = bitcast %struct._GimpSizeEntry* %1 to i8*
  %3 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %4 = bitcast %struct.PrintSizeDialog* %3 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %2, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct.PrintSizeDialog*)* @print_size_dialog_size_changed to i8*), i8* %4)
  %5 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %size_entry1 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %5, i32 0, i32 1
  %6 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry1, align 8
  %7 = load double, double* %width.addr, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %6, i32 0, double %7)
  %8 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %size_entry2 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %8, i32 0, i32 1
  %9 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry2, align 8
  %10 = load double, double* %height.addr, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %9, i32 1, double %10)
  %11 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %size_entry3 = getelementptr inbounds %struct.PrintSizeDialog, %struct.PrintSizeDialog* %11, i32 0, i32 1
  %12 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry3, align 8
  %13 = bitcast %struct._GimpSizeEntry* %12 to i8*
  %14 = load %struct.PrintSizeDialog*, %struct.PrintSizeDialog** %private.addr, align 8
  %15 = bitcast %struct.PrintSizeDialog* %14 to i8*
  %call4 = call i32 @g_signal_handlers_unblock_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct.PrintSizeDialog*)* @print_size_dialog_size_changed to i8*), i8* %15)
  ret void
}

declare void @g_slice_free1(i64, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
