; ModuleID = './app/dialogs/fade-dialog.bc'
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
%struct.FadeDialog = type { %struct._GimpImage*, %struct._GimpDrawable*, %struct._GimpContext*, i32, i32, double }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
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
%struct._GimpDrawableUndo = type { %struct._GimpItemUndo, %struct._TileManager*, i32, i32, i32, i32, i32, %struct._TileManager*, i32, double }
%struct._GimpItemUndo = type { %struct._GimpUndo, %struct._GimpItem* }
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._TempBuf = type opaque
%struct._TileManager = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.fade_dialog_new = private unnamed_addr constant [16 x i8] c"fade_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (parent)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"fade-dialog\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"paint-mode\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Fade %s\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"gimp-edit-fade\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"gtk-undo\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"_Fade\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"_Mode:\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"_Opacity:\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"paint-mode-changed\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"opacity-changed\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @fade_dialog_new(%struct._GimpImage* %image, %struct._GtkWidget* %parent) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %private = alloca %struct.FadeDialog*, align 8
  %undo = alloca %struct._GimpDrawableUndo*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %menu = alloca %struct._GtkWidget*, align 8
  %title = alloca i8*, align 8
  %table_row = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store i32 0, i32* %table_row, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.fade_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.fade_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call39 = call %struct._GimpUndo* @gimp_image_undo_get_fadeable(%struct._GimpImage* %26)
  %27 = bitcast %struct._GimpUndo* %call39 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_drawable_undo_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpDrawableUndo*
  store %struct._GimpDrawableUndo* %28, %struct._GimpDrawableUndo** %undo, align 8
  %29 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %tobool42 = icmp ne %struct._GimpDrawableUndo* %29, null
  br i1 %tobool42, label %land.lhs.true.43, label %if.then.45

land.lhs.true.43:                                 ; preds = %do.end.38
  %30 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %src2_tiles = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %30, i32 0, i32 7
  %31 = load %struct._TileManager*, %struct._TileManager** %src2_tiles, align 8
  %tobool44 = icmp ne %struct._TileManager* %31, null
  br i1 %tobool44, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true.43, %do.end.38
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.46:                                        ; preds = %land.lhs.true.43
  %32 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %33 = bitcast %struct._GimpDrawableUndo* %32 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_item_undo_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call47)
  %34 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpItemUndo*
  %item49 = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %34, i32 0, i32 1
  %35 = load %struct._GimpItem*, %struct._GimpItem** %item49, align 8
  store %struct._GimpItem* %35, %struct._GimpItem** %item, align 8
  %36 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %37 = bitcast %struct._GimpItem* %36 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_drawable_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call50)
  %38 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %38, %struct._GimpDrawable** %drawable, align 8
  %call52 = call noalias i8* @g_slice_alloc0(i64 40)
  %39 = bitcast i8* %call52 to %struct.FadeDialog*
  store %struct.FadeDialog* %39, %struct.FadeDialog** %private, align 8
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %41 = load %struct.FadeDialog*, %struct.FadeDialog** %private, align 8
  %image53 = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %41, i32 0, i32 0
  store %struct._GimpImage* %40, %struct._GimpImage** %image53, align 8
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %43 = load %struct.FadeDialog*, %struct.FadeDialog** %private, align 8
  %drawable54 = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %43, i32 0, i32 1
  store %struct._GimpDrawable* %42, %struct._GimpDrawable** %drawable54, align 8
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %44, i32 0, i32 1
  %45 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call55 = call %struct._GimpContext* @gimp_context_new(%struct._Gimp* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), %struct._GimpContext* null)
  %46 = load %struct.FadeDialog*, %struct.FadeDialog** %private, align 8
  %context = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %46, i32 0, i32 2
  store %struct._GimpContext* %call55, %struct._GimpContext** %context, align 8
  %47 = load %struct.FadeDialog*, %struct.FadeDialog** %private, align 8
  %applied = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %47, i32 0, i32 3
  store i32 0, i32* %applied, align 4
  %48 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %paint_mode = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %48, i32 0, i32 8
  %49 = load i32, i32* %paint_mode, align 4
  %50 = load %struct.FadeDialog*, %struct.FadeDialog** %private, align 8
  %orig_paint_mode = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %50, i32 0, i32 4
  store i32 %49, i32* %orig_paint_mode, align 4
  %51 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %opacity = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %51, i32 0, i32 9
  %52 = load double, double* %opacity, align 8
  %53 = load %struct.FadeDialog*, %struct.FadeDialog** %private, align 8
  %orig_opacity = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %53, i32 0, i32 5
  store double %52, double* %orig_opacity, align 8
  %54 = load %struct.FadeDialog*, %struct.FadeDialog** %private, align 8
  %context56 = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %54, i32 0, i32 2
  %55 = load %struct._GimpContext*, %struct._GimpContext** %context56, align 8
  %56 = bitcast %struct._GimpContext* %55 to i8*
  %57 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %paint_mode57 = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %57, i32 0, i32 8
  %58 = load i32, i32* %paint_mode57, align 4
  %59 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %opacity58 = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %59, i32 0, i32 9
  %60 = load double, double* %opacity58, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double %60, i8* null)
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)) #7
  %61 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %62 = bitcast %struct._GimpDrawableUndo* %61 to i8*
  %call60 = call i8* @gimp_object_get_name(i8* %62)
  %call61 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call59, i8* %call60)
  store i8* %call61, i8** %title, align 8
  %63 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %64 = bitcast %struct._GimpDrawable* %63 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_viewable_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call62)
  %65 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpViewable*
  %66 = load %struct.FadeDialog*, %struct.FadeDialog** %private, align 8
  %context64 = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %66, i32 0, i32 2
  %67 = load %struct._GimpContext*, %struct._GimpContext** %context64, align 8
  %68 = load i8*, i8** %title, align 8
  %69 = load i8*, i8** %title, align 8
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call65 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)) #7
  %call66 = call %struct._GtkWidget* (%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) @gimp_viewable_dialog_new(%struct._GimpViewable* %65, %struct._GimpContext* %67, i8* %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* %69, %struct._GtkWidget* %70, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 -6, i8* %call65, i32 -5, i8* null)
  store %struct._GtkWidget* %call66, %struct._GtkWidget** %dialog, align 8
  %71 = load i8*, i8** %title, align 8
  call void @g_free(i8* %71)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_window_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call67)
  %74 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkWindow*
  call void @gtk_window_set_modal(%struct._GtkWindow* %74, i32 1)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_dialog_get_type() #5
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call69)
  %77 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %77, i32 -5, i32 -6, i32 -1)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 80)
  %80 = bitcast %struct._GTypeInstance* %call71 to %struct._GObject*
  %81 = load %struct.FadeDialog*, %struct.FadeDialog** %private, align 8
  %82 = bitcast %struct.FadeDialog* %81 to i8*
  call void @g_object_weak_ref(%struct._GObject* %80, void (i8*, %struct._GObject*)* bitcast (void (%struct.FadeDialog*)* @fade_dialog_free to void (i8*, %struct._GObject*)*), i8* %82)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %84 = bitcast %struct._GtkWidget* %83 to i8*
  %85 = load %struct.FadeDialog*, %struct.FadeDialog** %private, align 8
  %86 = bitcast %struct.FadeDialog* %85 to i8*
  %call72 = call i64 @g_signal_connect_data(i8* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.FadeDialog*)* @fade_dialog_response to void ()*), i8* %86, void (i8*, %struct._GClosure*)* null, i32 0)
  %call73 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %main_vbox, align 8
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_container_get_type() #5
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call74)
  %89 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %89, i32 12)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_dialog_get_type() #5
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call76)
  %92 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkDialog*
  %call78 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %92)
  %93 = bitcast %struct._GtkWidget* %call78 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_box_get_type() #5
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call79)
  %94 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkBox*
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %94, %struct._GtkWidget* %95, i32 1, i32 1, i32 0)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %96)
  %call81 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call81, %struct._GtkWidget** %table, align 8
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_table_get_type() #5
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call82)
  %99 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %99, i32 2)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_table_get_type() #5
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call84)
  %102 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %102, i32 2)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_box_get_type() #5
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call86)
  %105 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkBox*
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %105, %struct._GtkWidget* %106, i32 0, i32 0, i32 0)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %107)
  %108 = load %struct.FadeDialog*, %struct.FadeDialog** %private, align 8
  %context88 = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %108, i32 0, i32 2
  %109 = load %struct._GimpContext*, %struct._GimpContext** %context88, align 8
  %110 = bitcast %struct._GimpContext* %109 to %struct._GTypeInstance*
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 80)
  %111 = bitcast %struct._GTypeInstance* %call89 to %struct._GObject*
  %call90 = call %struct._GtkWidget* @gimp_prop_paint_mode_menu_new(%struct._GObject* %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 1, i32 1)
  store %struct._GtkWidget* %call90, %struct._GtkWidget** %menu, align 8
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_table_get_type() #5
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call91)
  %114 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkTable*
  %115 = load i32, i32* %table_row, align 4
  %inc = add nsw i32 %115, 1
  store i32 %inc, i32* %table_row, align 4
  %call93 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)) #7
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %call94 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %114, i32 0, i32 %115, i8* %call93, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %116, i32 2, i32 0)
  %117 = load %struct.FadeDialog*, %struct.FadeDialog** %private, align 8
  %context95 = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %117, i32 0, i32 2
  %118 = load %struct._GimpContext*, %struct._GimpContext** %context95, align 8
  %119 = bitcast %struct._GimpContext* %118 to %struct._GTypeInstance*
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 80)
  %120 = bitcast %struct._GTypeInstance* %call96 to %struct._GObject*
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %122 = bitcast %struct._GtkWidget* %121 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_table_get_type() #5
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %122, i64 %call97)
  %123 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkTable*
  %124 = load i32, i32* %table_row, align 4
  %inc99 = add nsw i32 %124, 1
  store i32 %inc99, i32* %table_row, align 4
  %call100 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0)) #7
  %call101 = call %struct._GtkObject* @gimp_prop_opacity_entry_new(%struct._GObject* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), %struct._GtkTable* %123, i32 0, i32 %124, i8* %call100)
  %125 = load %struct.FadeDialog*, %struct.FadeDialog** %private, align 8
  %context102 = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %125, i32 0, i32 2
  %126 = load %struct._GimpContext*, %struct._GimpContext** %context102, align 8
  %127 = bitcast %struct._GimpContext* %126 to i8*
  %128 = load %struct.FadeDialog*, %struct.FadeDialog** %private, align 8
  %129 = bitcast %struct.FadeDialog* %128 to i8*
  %call103 = call i64 @g_signal_connect_data(i8* %127, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct.FadeDialog*)* @fade_dialog_context_changed to void ()*), i8* %129, void (i8*, %struct._GClosure*)* null, i32 2)
  %130 = load %struct.FadeDialog*, %struct.FadeDialog** %private, align 8
  %context104 = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %130, i32 0, i32 2
  %131 = load %struct._GimpContext*, %struct._GimpContext** %context104, align 8
  %132 = bitcast %struct._GimpContext* %131 to i8*
  %133 = load %struct.FadeDialog*, %struct.FadeDialog** %private, align 8
  %134 = bitcast %struct.FadeDialog* %133 to i8*
  %call105 = call i64 @g_signal_connect_data(i8* %132, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct.FadeDialog*)* @fade_dialog_context_changed to void ()*), i8* %134, void (i8*, %struct._GClosure*)* null, i32 2)
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* %135, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.45, %if.else.36, %if.else.9
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %136
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare %struct._GimpUndo* @gimp_image_undo_get_fadeable(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_undo_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_undo_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

declare noalias i8* @g_slice_alloc0(i64) #3

declare %struct._GimpContext* @gimp_context_new(%struct._Gimp*, i8*, %struct._GimpContext*) #3

declare void @g_object_set(i8*, i8*, ...) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @gimp_object_get_name(i8*) #3

declare %struct._GtkWidget* @gimp_viewable_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare void @gimp_standard_help_func(i8*, i8*) #3

declare void @g_free(i8*) #3

declare void @gtk_window_set_modal(%struct._GtkWindow*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @fade_dialog_free(%struct.FadeDialog* %private) #0 {
entry:
  %private.addr = alloca %struct.FadeDialog*, align 8
  store %struct.FadeDialog* %private, %struct.FadeDialog** %private.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.FadeDialog*, %struct.FadeDialog** %private.addr, align 8
  %1 = bitcast %struct.FadeDialog* %0 to i8*
  call void @g_slice_free1(i64 40, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @fade_dialog_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct.FadeDialog* %private) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %private.addr = alloca %struct.FadeDialog*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.FadeDialog* %private, %struct.FadeDialog** %private.addr, align 8
  %0 = load %struct.FadeDialog*, %struct.FadeDialog** %private.addr, align 8
  %context = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %0, i32 0, i32 2
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %2 = bitcast %struct._GimpContext* %1 to i8*
  %3 = load %struct.FadeDialog*, %struct.FadeDialog** %private.addr, align 8
  %4 = bitcast %struct.FadeDialog* %3 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %2, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct.FadeDialog*)* @fade_dialog_context_changed to i8*), i8* %4)
  %5 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp ne i32 %5, -5
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.FadeDialog*, %struct.FadeDialog** %private.addr, align 8
  %applied = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %6, i32 0, i32 3
  %7 = load i32, i32* %applied, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.FadeDialog*, %struct.FadeDialog** %private.addr, align 8
  %context1 = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %8, i32 0, i32 2
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context1, align 8
  %10 = bitcast %struct._GimpContext* %9 to i8*
  %11 = load %struct.FadeDialog*, %struct.FadeDialog** %private.addr, align 8
  %orig_paint_mode = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %11, i32 0, i32 4
  %12 = load i32, i32* %orig_paint_mode, align 4
  %13 = load %struct.FadeDialog*, %struct.FadeDialog** %private.addr, align 8
  %orig_opacity = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %13, i32 0, i32 5
  %14 = load double, double* %orig_opacity, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double %14, i8* null)
  %15 = load %struct.FadeDialog*, %struct.FadeDialog** %private.addr, align 8
  call void @fade_dialog_context_changed(%struct.FadeDialog* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %16 = load %struct.FadeDialog*, %struct.FadeDialog** %private.addr, align 8
  %context2 = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %16, i32 0, i32 2
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context2, align 8
  %18 = bitcast %struct._GimpContext* %17 to i8*
  call void @g_object_unref(i8* %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %19)
  ret void
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #3

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #3

declare %struct._GtkWidget* @gimp_prop_paint_mode_menu_new(%struct._GObject*, i8*, i32, i32) #3

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #3

declare %struct._GtkObject* @gimp_prop_opacity_entry_new(%struct._GObject*, i8*, %struct._GtkTable*, i32, i32, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @fade_dialog_context_changed(%struct.FadeDialog* %private) #0 {
entry:
  %private.addr = alloca %struct.FadeDialog*, align 8
  store %struct.FadeDialog* %private, %struct.FadeDialog** %private.addr, align 8
  %0 = load %struct.FadeDialog*, %struct.FadeDialog** %private.addr, align 8
  %image = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %0, i32 0, i32 0
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %2 = load %struct.FadeDialog*, %struct.FadeDialog** %private.addr, align 8
  %context = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %2, i32 0, i32 2
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call = call i32 @gimp_edit_fade(%struct._GimpImage* %1, %struct._GimpContext* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.FadeDialog*, %struct.FadeDialog** %private.addr, align 8
  %applied = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %4, i32 0, i32 3
  store i32 1, i32* %applied, align 4
  %5 = load %struct.FadeDialog*, %struct.FadeDialog** %private.addr, align 8
  %image1 = getelementptr inbounds %struct.FadeDialog, %struct.FadeDialog* %5, i32 0, i32 0
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image1, align 8
  call void @gimp_image_flush(%struct._GimpImage* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare void @g_object_unref(i8*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare i32 @gimp_edit_fade(%struct._GimpImage*, %struct._GimpContext*) #3

declare void @gimp_image_flush(%struct._GimpImage*) #3

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
