; ModuleID = './app/dialogs/image-merge-layers-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ImageMergeLayersDialog = type { %struct._GtkWidget*, %struct._GimpImage*, %struct._GimpContext*, i32, i32, i32 }
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
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpItemStack = type { %struct._GimpList }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.image_merge_layers_dialog_new = private unnamed_addr constant [30 x i8] c"image_merge_layers_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Merge Layers\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"gimp-image-merge-layers\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"gimp-merge-down\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Layers Merge Options\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"_Merge\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Final, Merged Layer should be:\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Expanded as necessary\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Clipped to image\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Clipped to bottom layer\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Merge within active _group only\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"_Discard invisible layers\00", align 1

; Function Attrs: nounwind uwtable
define %struct._ImageMergeLayersDialog* @image_merge_layers_dialog_new(%struct._GimpImage* %image, %struct._GimpContext* %context, %struct._GtkWidget* %parent, i32 %merge_type, i32 %merge_active_group, i32 %discard_invisible) #0 {
entry:
  %retval = alloca %struct._ImageMergeLayersDialog*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %merge_type.addr = alloca i32, align 4
  %merge_active_group.addr = alloca i32, align 4
  %discard_invisible.addr = alloca i32, align 4
  %dialog = alloca %struct._ImageMergeLayersDialog*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store i32 %merge_type, i32* %merge_type.addr, align 4
  store i32 %merge_active_group, i32* %merge_active_group.addr, align 4
  store i32 %discard_invisible, i32* %discard_invisible.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.image_merge_layers_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._ImageMergeLayersDialog* null, %struct._ImageMergeLayersDialog** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.image_merge_layers_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._ImageMergeLayersDialog* null, %struct._ImageMergeLayersDialog** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %call39 = call noalias i8* @g_slice_alloc0(i64 40)
  %26 = bitcast i8* %call39 to %struct._ImageMergeLayersDialog*
  store %struct._ImageMergeLayersDialog* %26, %struct._ImageMergeLayersDialog** %dialog, align 8
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %28 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog, align 8
  %image40 = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %28, i32 0, i32 1
  store %struct._GimpImage* %27, %struct._GimpImage** %image40, align 8
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %30 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog, align 8
  %context41 = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %30, i32 0, i32 2
  store %struct._GimpContext* %29, %struct._GimpContext** %context41, align 8
  %31 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog, align 8
  %merge_type42 = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %31, i32 0, i32 3
  store i32 0, i32* %merge_type42, align 4
  %32 = load i32, i32* %merge_active_group.addr, align 4
  %33 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog, align 8
  %merge_active_group43 = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %33, i32 0, i32 4
  store i32 %32, i32* %merge_active_group43, align 4
  %34 = load i32, i32* %discard_invisible.addr, align 4
  %35 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog, align 8
  %discard_invisible44 = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %35, i32 0, i32 5
  store i32 %34, i32* %discard_invisible44, align 4
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %37 = bitcast %struct._GimpImage* %36 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_viewable_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call45)
  %38 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpViewable*
  %39 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)) #7
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)) #7
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)) #7
  %call50 = call %struct._GtkWidget* (%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) @gimp_viewable_dialog_new(%struct._GimpViewable* %38, %struct._GimpContext* %39, i8* %call47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* %call48, %struct._GtkWidget* %40, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 -6, i8* %call49, i32 -5, i8* null)
  %41 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog, align 8
  %dialog51 = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %41, i32 0, i32 0
  store %struct._GtkWidget* %call50, %struct._GtkWidget** %dialog51, align 8
  %42 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog, align 8
  %dialog52 = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %42, i32 0, i32 0
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog52, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_window_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call53)
  %45 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %45, i32 0)
  %46 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog, align 8
  %dialog55 = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %46, i32 0, i32 0
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog55, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 80)
  %49 = bitcast %struct._GTypeInstance* %call56 to %struct._GObject*
  %50 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog, align 8
  %51 = bitcast %struct._ImageMergeLayersDialog* %50 to i8*
  call void @g_object_weak_ref(%struct._GObject* %49, void (i8*, %struct._GObject*)* bitcast (void (%struct._ImageMergeLayersDialog*)* @image_merge_layers_dialog_free to void (i8*, %struct._GObject*)*), i8* %51)
  %52 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog, align 8
  %dialog57 = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %52, i32 0, i32 0
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog57, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_dialog_get_type() #5
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call58)
  %55 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %55, i32 -5, i32 -6, i32 -1)
  %call60 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %vbox, align 8
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_container_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call61)
  %58 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %58, i32 12)
  %59 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog, align 8
  %dialog63 = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %59, i32 0, i32 0
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog63, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_dialog_get_type() #5
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call64)
  %62 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkDialog*
  %call66 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %62)
  %63 = bitcast %struct._GtkWidget* %call66 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_box_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call67)
  %64 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkBox*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %64, %struct._GtkWidget* %65, i32 1, i32 1, i32 0)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0)) #7
  %67 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog, align 8
  %merge_type70 = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %67, i32 0, i32 3
  %68 = bitcast i32* %merge_type70 to i8*
  %69 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog, align 8
  %merge_type71 = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %69, i32 0, i32 3
  %70 = load i32, i32* %merge_type71, align 4
  %call72 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0)) #7
  %call73 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0)) #7
  %call74 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0)) #7
  %call75 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call69, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* %68, i32 %70, i8* %call72, i32 0, i8* null, i8* %call73, i32 1, i8* null, i8* %call74, i32 2, i8* null, i8* null)
  store %struct._GtkWidget* %call75, %struct._GtkWidget** %frame, align 8
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_box_get_type() #5
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call76)
  %73 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkBox*
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %73, %struct._GtkWidget* %74, i32 0, i32 0, i32 0)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %75)
  %call78 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i32 0, i32 0)) #7
  %call79 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call78)
  store %struct._GtkWidget* %call79, %struct._GtkWidget** %button, align 8
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_toggle_button_get_type() #5
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call80)
  %78 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkToggleButton*
  %79 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog, align 8
  %merge_active_group82 = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %79, i32 0, i32 4
  %80 = load i32, i32* %merge_active_group82, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %78, i32 %80)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_box_get_type() #5
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call83)
  %83 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkBox*
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %83, %struct._GtkWidget* %84, i32 0, i32 0, i32 0)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %85)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %87 = bitcast %struct._GtkWidget* %86 to i8*
  %88 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog, align 8
  %merge_active_group85 = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %88, i32 0, i32 4
  %89 = bitcast i32* %merge_active_group85 to i8*
  %call86 = call i64 @g_signal_connect_data(i8* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %89, void (i8*, %struct._GClosure*)* null, i32 0)
  %90 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call87 = call %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage* %90)
  %91 = bitcast %struct._GimpContainer* %call87 to %struct._GTypeInstance*
  %call88 = call i64 @gimp_item_stack_get_type() #5
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call88)
  %92 = bitcast %struct._GTypeInstance* %call89 to %struct._GimpItemStack*
  %call90 = call i32 @gimp_item_stack_is_flat(%struct._GimpItemStack* %92)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %do.end.38
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %93, i32 0)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %do.end.38
  %call94 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0)) #7
  %call95 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call94)
  store %struct._GtkWidget* %call95, %struct._GtkWidget** %button, align 8
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_toggle_button_get_type() #5
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call96)
  %96 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkToggleButton*
  %97 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog, align 8
  %discard_invisible98 = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %97, i32 0, i32 5
  %98 = load i32, i32* %discard_invisible98, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %96, i32 %98)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_box_get_type() #5
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call99)
  %101 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkBox*
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %101, %struct._GtkWidget* %102, i32 0, i32 0, i32 0)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %103)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %105 = bitcast %struct._GtkWidget* %104 to i8*
  %106 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog, align 8
  %discard_invisible101 = getelementptr inbounds %struct._ImageMergeLayersDialog, %struct._ImageMergeLayersDialog* %106, i32 0, i32 5
  %107 = bitcast i32* %discard_invisible101 to i8*
  %call102 = call i64 @g_signal_connect_data(i8* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %107, void (i8*, %struct._GClosure*)* null, i32 0)
  %108 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog, align 8
  store %struct._ImageMergeLayersDialog* %108, %struct._ImageMergeLayersDialog** %retval
  br label %return

return:                                           ; preds = %if.end.93, %if.else.36, %if.else.9
  %109 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %retval
  ret %struct._ImageMergeLayersDialog* %109
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

declare noalias i8* @g_slice_alloc0(i64) #3

declare %struct._GtkWidget* @gimp_viewable_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_standard_help_func(i8*, i8*) #3

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @image_merge_layers_dialog_free(%struct._ImageMergeLayersDialog* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct._ImageMergeLayersDialog*, align 8
  store %struct._ImageMergeLayersDialog* %dialog, %struct._ImageMergeLayersDialog** %dialog.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._ImageMergeLayersDialog*, %struct._ImageMergeLayersDialog** %dialog.addr, align 8
  %1 = bitcast %struct._ImageMergeLayersDialog* %0 to i8*
  call void @g_slice_free1(i64 40, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #3

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #3

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #3

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #3

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #3

declare i32 @gimp_item_stack_is_flat(%struct._GimpItemStack*) #3

declare %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_stack_get_type() #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #3

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
